@interface PKGroupsController
- (BOOL)containsExpiredPassWithUniqueID:(id)a3;
- (BOOL)filteringEnabled;
- (PKCatalog)_copyRemoteCatalog;
- (PKGroupsController)init;
- (PKGroupsController)initWithPassLibrary:(id)a3;
- (PKGroupsController)initWithPassTypeMask:(unint64_t)a3 passFilters:(unint64_t)a4 allowedPassUniqueIDs:(id)a5;
- (PKGroupsControllerDelegate)delegate;
- (PKGroupsControllerSnapshotFetchOptions)snapshotFetchOptions;
- (id)groupAtIndex:(unint64_t)a3;
- (id)groups;
- (id)initLimited;
- (id)passWithUniqueID:(id)a3;
- (id)passes;
- (uint64_t)_indexOfGroupID:(uint64_t)a1;
- (unint64_t)_fixIndicesFrom:(void *)a1;
- (unint64_t)groupIndexForPassUniqueID:(id)a3;
- (unint64_t)indexOfGroup:(id)a3;
- (unint64_t)indexOfSeparationGroup;
- (void)_fixIndex:(uint64_t)a1;
- (void)_insertGroup:(unint64_t)a3 atIndex:(int)a4 notify:;
- (void)_moveGroup:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5 notify:(BOOL)a6;
- (void)_placeGroup:(unint64_t)a3 atIndex:(uint64_t)a4 notify:;
- (void)_removeGroup:(int)a3 notify:;
- (void)_updateStateWithCatalog:(void *)a3 passes:(void *)a4 states:(void *)a5 annotations:(unsigned int)a6 notify:;
- (void)addLocalPasses:(id)a3;
- (void)dealloc;
- (void)enableRemoteUpdates;
- (void)handleUserPassArchive:(id)a3;
- (void)handleUserPassDelete:(id)a3;
- (void)handleUserPassRecover:(id)a3;
- (void)handleUserPassesDelete:(id)a3;
- (void)loadGroupsSynchronously;
- (void)loadGroupsWithCompletion:(id)a3;
- (void)moveGroupAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)movePass:(id)a3 inGroup:(id)a4 toIndex:(unint64_t)a5;
- (void)objectSettingsDidChangeNotification:(id)a3;
- (void)passLibrary:(id)a3 receivedUpdatedCatalog:(id)a4 passes:(id)a5 states:(id)a6;
- (void)processFetchedSnapshot:(void *)a3 withOptions:(int)a4 synchronously:(unsigned int)a5 notify:(void *)a6 completion:;
- (void)reloadGroupsWithCompletion:(id)a3;
- (void)suppressRemoteUpdates:(BOOL)a3;
- (void)updateStateWithSnapshot:(uint64_t)a1 options:(void *)a2 notify:(unsigned int)a3;
@end

@implementation PKGroupsController

- (PKGroupsController)init
{
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [(PKGroupsController *)self initWithPassLibrary:v3];

  return v4;
}

- (void)loadGroupsSynchronously
{
  v3 = [(PKGroupsController *)self snapshotFetchOptions];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PKGroupsController_loadGroupsSynchronously__block_invoke;
  v6[3] = &unk_1E79E2398;
  v6[4] = self;
  v4 = v3;
  v7 = v4;
  v5 = v4;
  if (self)
  {
    [(PKPassLibrary *)self->_passLibrary getGroupsControllerSnapshotWithOptions:v4 synchronously:1 handler:v6];
    v5 = v7;
  }
}

- (PKGroupsControllerSnapshotFetchOptions)snapshotFetchOptions
{
  if (a1)
  {
    v2 = objc_alloc_init(PKGroupsControllerSnapshotFetchOptions);
    [(PKGroupsControllerSnapshotFetchOptions *)v2 setLimitResults:*(a1 + 128)];
    [(PKGroupsControllerSnapshotFetchOptions *)v2 setIncludeAnnotations:PKExpiredPassesRefreshEnabled()];
    [(PKGroupsControllerSnapshotFetchOptions *)v2 setAllowedPassType:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unint64_t)indexOfSeparationGroup
{
  if (!self->_shouldSeparatePaymentPasses)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(NSMutableArray *)self->_groups count];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    v6 = [(PKGroupsController *)self groupAtIndex:v5];
    v7 = [v6 passAtIndex:{objc_msgSend(v6, "frontmostPassIndex")}];
    v8 = [v7 passType];
    v9 = [v7 style];

    if (!v7 || v8 != 1 || v9 != 6)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return v4 - 1;
    }
  }

  if (v5)
  {
    return v5 - 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (PKGroupsController)initWithPassLibrary:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = PKGroupsController;
  v6 = [(PKGroupsController *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passLibrary, a3);
    [(PKPassLibrary *)v7->_passLibrary addDelegate:v7];
    v8 = +[PKPaymentService paymentService];
    paymentService = v7->_paymentService;
    v7->_paymentService = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    groups = v7->_groups;
    v7->_groups = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    groupsByGroupID = v7->_groupsByGroupID;
    v7->_groupsByGroupID = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indicesByGroupID = v7->_indicesByGroupID;
    v7->_indicesByGroupID = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    groupIDsByPassUniqueID = v7->_groupIDsByPassUniqueID;
    v7->_groupIDsByPassUniqueID = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    groupIDsByExpiredPassUniqueID = v7->_groupIDsByExpiredPassUniqueID;
    v7->_groupIDsByExpiredPassUniqueID = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    enqueuedUpdates = v7->_enqueuedUpdates;
    v7->_enqueuedUpdates = v20;

    v7->_reorderingEnabled = 1;
    v7->_expressPassesInformationToken = -1;
    PKObservePassSettingsChanged(v7, sel_objectSettingsDidChangeNotification_, 0);
  }

  return v7;
}

- (PKGroupsController)initWithPassTypeMask:(unint64_t)a3 passFilters:(unint64_t)a4 allowedPassUniqueIDs:(id)a5
{
  v9 = a5;
  v10 = [(PKGroupsController *)self init];
  v11 = v10;
  if (v10)
  {
    if (a3 == -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a3;
    }

    v10->_passTypeMask = v12;
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10->_filters == 0;
    }

    v10->_reorderingEnabled = v13;
    v10->_filters = a4;
    objc_storeStrong(&v10->_allowedPassUniqueIDs, a5);
    if ((v11->_filters & 0x10) != 0)
    {
      v14 = [(PKPaymentService *)v11->_paymentService expressPassConfigurations];
      expressPassConfigurations = v11->_expressPassConfigurations;
      v11->_expressPassConfigurations = v14;

      objc_initWeak(&location, v11);
      v16 = [@"com.apple.passkit.expresspassesinformation.changed" UTF8String];
      v17 = MEMORY[0x1E69E96A0];
      v18 = MEMORY[0x1E69E96A0];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __76__PKGroupsController_initWithPassTypeMask_passFilters_allowedPassUniqueIDs___block_invoke;
      v20[3] = &unk_1E79D08F0;
      objc_copyWeak(&v21, &location);
      notify_register_dispatch(v16, &v11->_expressPassesInformationToken, v17, v20);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  return v11;
}

void __76__PKGroupsController_initWithPassTypeMask_passFilters_allowedPassUniqueIDs___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[2] expressPassConfigurations];
    v3 = v4[15];
    v4[15] = v2;

    [v4 reloadGroups];
    WeakRetained = v4;
  }
}

- (id)initLimited
{
  result = [(PKGroupsController *)self init];
  if (result)
  {
    *(result + 136) = 0;
    *(result + 128) = 1;
  }

  return result;
}

- (void)dealloc
{
  PKUnregisterPassSettingsChangedObserver(self, 0);
  [(PKPassLibrary *)self->_passLibrary removeDelegate:self];
  expressPassesInformationToken = self->_expressPassesInformationToken;
  if (expressPassesInformationToken != -1)
  {
    notify_cancel(expressPassesInformationToken);
  }

  v4.receiver = self;
  v4.super_class = PKGroupsController;
  [(PKGroupsController *)&v4 dealloc];
}

- (void)loadGroupsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKGroupsController *)self snapshotFetchOptions];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PKGroupsController_loadGroupsWithCompletion___block_invoke;
  v9[3] = &unk_1E79E2370;
  v9[4] = self;
  v6 = v5;
  v10 = v6;
  v7 = v4;
  v11 = v7;
  v8 = v7;
  if (self)
  {
    [(PKPassLibrary *)self->_passLibrary getGroupsControllerSnapshotWithOptions:v6 synchronously:0 handler:v9];
    v8 = v11;
  }
}

- (void)processFetchedSnapshot:(void *)a3 withOptions:(int)a4 synchronously:(unsigned int)a5 notify:(void *)a6 completion:
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if (a1)
  {
    if (a4)
    {
      [PKGroupsController updateStateWithSnapshot:a1 options:v11 notify:a5];
      if (v13)
      {
        v13[2](v13);
      }
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __89__PKGroupsController_processFetchedSnapshot_withOptions_synchronously_notify_completion___block_invoke;
      block[3] = &unk_1E79E23E8;
      block[4] = a1;
      v15 = v11;
      v16 = v12;
      v18 = a5;
      v17 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)reloadGroupsWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(PKGroupsController *)self snapshotFetchOptions];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PKGroupsController_reloadGroupsAndNotify_completion___block_invoke;
    v8[3] = &unk_1E79E23C0;
    v8[4] = self;
    v9 = v5;
    v11 = 1;
    v10 = v4;
    passLibrary = self->_passLibrary;
    v7 = v5;
    [(PKPassLibrary *)passLibrary getGroupsControllerSnapshotWithOptions:v7 synchronously:0 handler:v8];
  }
}

- (void)updateStateWithSnapshot:(uint64_t)a1 options:(void *)a2 notify:(unsigned int)a3
{
  if (a1)
  {
    v5 = a2;
    v9 = [v5 catalog];
    v6 = [v5 passes];
    v7 = [v5 states];
    v8 = [v5 annotations];

    [(PKGroupsController *)a1 _updateStateWithCatalog:v9 passes:v6 states:v7 annotations:v8 notify:a3];
  }
}

uint64_t __89__PKGroupsController_processFetchedSnapshot_withOptions_synchronously_notify_completion___block_invoke(uint64_t a1)
{
  [PKGroupsController updateStateWithSnapshot:*(a1 + 40) options:*(a1 + 64) notify:?];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_updateStateWithCatalog:(void *)a3 passes:(void *)a4 states:(void *)a5 annotations:(unsigned int)a6 notify:
{
  v279 = *MEMORY[0x1E69E9840];
  v177 = a2;
  v176 = a3;
  v175 = a4;
  v10 = a5;
  if (a1)
  {
    v173 = v10;
    context = objc_autoreleasePoolPush();
    v196 = a1;
    if (v10)
    {
      v11 = v176;
      v204 = v177;
      v12 = v10;
      v217 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v221 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v213 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*(a1 + 24) && (v13 = objc_loadWeakRetained((a1 + 168)), v14 = objc_opt_respondsToSelector(), v13, (v14 & 1) != 0))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 168));
        v226 = [WeakRetained groupsControllerShouldExcludePassesWithUniqueIDsFromFiltering:a1];
      }

      else
      {
        v226 = 0;
      }

      v16 = _FindAllowedPassUniqueIDs(v204, *(a1 + 40));
      v277 = 0u;
      v276 = 0u;
      v275 = 0u;
      v274 = 0u;
      v17 = v11;
      v18 = [v17 countByEnumeratingWithState:&v274 objects:v278 count:16];
      if (v18)
      {
        v19 = *v275;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v275 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v274 + 1) + 8 * i);
            v22 = [v21 uniqueID];
            v23 = [v12 objectForKeyedSubscript:v22];
            v24 = *(v196 + 32);
            if (!v24 || ((v24 >> [v21 passType]) & 1) != 0)
            {
              if ((!v16 || [v16 containsObject:v22]) && ((objc_msgSend(v226, "containsObject:", v22) & 1) != 0 || _PassMeetsFilterRequirements(v21, *(v196 + 24), *(v196 + 120))))
              {
                if (PKExpiredPassesRefreshEnabled() && v23 && [v23 isArchived])
                {
                  v25 = [*(v196 + 80) objectForKey:v22];
                  v26 = v25 == 0;

                  if (v26)
                  {
                    v27 = [*(v196 + 72) objectForKey:v22];
                    if (v27)
                    {
                      [*(v196 + 80) setObject:v27 forKey:v22];
                    }

                    else
                    {
                      v210 = [v204 groups];
                      v269 = MEMORY[0x1E69E9820];
                      v270 = 3221225472;
                      v271 = __92__PKGroupsController__displayablePassesDictionaryFromPasses_withCatalog_andPassAnnotations___block_invoke;
                      v272 = &unk_1E79E2488;
                      v206 = v22;
                      v273 = v206;
                      v208 = [v210 pk_firstObjectPassingTest:&v269];

                      v30 = v208;
                      if (v208)
                      {
                        v211 = *(v196 + 80);
                        v31 = [v208 groupID];
                        v32 = v211;
                        v212 = v31;
                        [v32 setObject:v31 forKey:v206];

                        v30 = v208;
                      }
                    }
                  }

                  [v221 addObject:v22];
                  [v213 addObject:v21];
                }

                else
                {
                  [v217 setObject:v21 forKey:v22];
                }
              }

              else
              {
                [v221 addObject:v22];
                refreshed = PKExpiredPassesRefreshEnabled();
                if (v23)
                {
                  v29 = refreshed;
                }

                else
                {
                  v29 = 0;
                }

                if (v29 == 1 && [v23 isArchived])
                {
                  [v213 addObject:v21];
                }
              }
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v274 objects:v278 count:16];
        }

        while (v18);
      }

      v33 = *(v196 + 144);
      *(v196 + 144) = v221;
      v34 = v221;

      v35 = *(v196 + 152);
      *(v196 + 152) = v213;
      v36 = v213;

      v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v12];
      v38 = *(v196 + 160);
      *(v196 + 160) = v37;

      v39 = *(v196 + 112);
      *&v265 = MEMORY[0x1E69E9820];
      *(&v265 + 1) = 3221225472;
      *&v266 = __92__PKGroupsController__displayablePassesDictionaryFromPasses_withCatalog_andPassAnnotations___block_invoke_2;
      *(&v266 + 1) = &unk_1E79E2460;
      *&v267 = v217;
      v40 = v217;
      [v39 enumerateObjectsUsingBlock:&v265];
      v41 = [v40 copy];
    }

    else
    {
      v42 = v176;
      v222 = v177;
      v227 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v42, "count")}];
      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*(a1 + 24) && (v44 = objc_loadWeakRetained((a1 + 168)), v45 = objc_opt_respondsToSelector(), v44, (v45 & 1) != 0))
      {
        v46 = objc_loadWeakRetained((a1 + 168));
        v47 = [v46 groupsControllerShouldExcludePassesWithUniqueIDsFromFiltering:a1];
      }

      else
      {
        v47 = 0;
      }

      v48 = _FindAllowedPassUniqueIDs(v222, *(a1 + 40));
      v277 = 0u;
      v276 = 0u;
      v275 = 0u;
      v274 = 0u;
      v49 = v42;
      v50 = [v49 countByEnumeratingWithState:&v274 objects:v278 count:16];
      if (v50)
      {
        v51 = *v275;
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v275 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v53 = *(*(&v274 + 1) + 8 * j);
            v54 = *(v196 + 32);
            if (!v54 || ((v54 >> [*(*(&v274 + 1) + 8 * j) passType]) & 1) != 0)
            {
              v55 = [v53 uniqueID];
              if ((!v48 || [v48 containsObject:v55]) && ((objc_msgSend(v47, "containsObject:", v55, v173, context, v175) & 1) != 0 || _PassMeetsFilterRequirements(v53, *(v196 + 24), *(v196 + 120))))
              {
                [v227 setObject:v53 forKey:v55];
              }

              else
              {
                [v43 addObject:{v55, v173}];
              }
            }
          }

          v50 = [v49 countByEnumeratingWithState:&v274 objects:v278 count:16];
        }

        while (v50);
      }

      v56 = *(v196 + 144);
      *(v196 + 144) = v43;
      v57 = v43;

      v58 = *(v196 + 112);
      v269 = MEMORY[0x1E69E9820];
      v270 = 3221225472;
      v271 = __70__PKGroupsController__displayablePassesDictionaryFromSet_withCatalog___block_invoke;
      v272 = &unk_1E79E2460;
      v273 = v227;
      v59 = v227;
      [v58 enumerateObjectsUsingBlock:&v269];
      v41 = [v59 copy];
    }

    v228 = v41;
    [v177 groups];
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v60 = v262 = 0u;
    v218 = [v60 countByEnumeratingWithState:&v261 objects:&v274 count:16];
    if (v218)
    {
      v61 = 0;
      v214 = *v262;
      while (2)
      {
        v62 = 0;
        v223 = v61;
        v61 += v218;
        do
        {
          if (*v262 != v214)
          {
            objc_enumerationMutation(v60);
          }

          v63 = *(*(&v261 + 1) + 8 * v62);
          v64 = [v63 groupID];
          v65 = [*(v196 + 56) objectForKeyedSubscript:v64];
          v66 = v65;
          if (v65)
          {
            if ([v65 passCount])
            {
              v67 = [v66 passAtIndex:0];
              v68 = [v67 style] == 6;

              if (!v68)
              {
                v172 = v66;
LABEL_84:

                v61 = v223;
                goto LABEL_86;
              }
            }
          }

          else
          {
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            v172 = [v63 uniqueIDs];
            v69 = [v172 countByEnumeratingWithState:&v235 objects:&v269 count:16];
            if (v69)
            {
              v70 = *v236;
              while (2)
              {
                for (k = 0; k != v69; ++k)
                {
                  if (*v236 != v70)
                  {
                    objc_enumerationMutation(v172);
                  }

                  v72 = [v228 objectForKeyedSubscript:*(*(&v235 + 1) + 8 * k)];
                  v73 = v72;
                  if (v72 && [v72 style] != 6)
                  {

                    goto LABEL_84;
                  }
                }

                v69 = [v172 countByEnumeratingWithState:&v235 objects:&v269 count:16];
                if (v69)
                {
                  continue;
                }

                break;
              }
            }
          }

          ++v223;
          ++v62;
        }

        while (v62 != v218);
        v218 = [v60 countByEnumeratingWithState:&v261 objects:&v274 count:16];
        if (v218)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v61 = 0;
    }

LABEL_86:

    v258 = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v74 = [MEMORY[0x1E695DF70] array];
    v268 = 0u;
    v267 = 0u;
    v266 = 0u;
    v265 = 0u;
    v75 = *(v196 + 48);
    v76 = [v75 countByEnumeratingWithState:&v265 objects:v278 count:16];
    if (v76)
    {
      v77 = *v266;
      do
      {
        for (m = 0; m != v76; ++m)
        {
          if (*v266 != v77)
          {
            objc_enumerationMutation(v75);
          }

          v79 = *(*(&v265 + 1) + 8 * m);
          if ([v79 passCount])
          {
            v80 = [v79 passAtIndex:0];
            v81 = v80;
            if (v80 && [v80 passType] != 1)
            {
              [v74 addObject:v79];
            }
          }

          else
          {
            v81 = 0;
          }
        }

        v76 = [v75 countByEnumeratingWithState:&v265 objects:v278 count:16];
      }

      while (v76);
    }

    v82 = [v74 countByEnumeratingWithState:&v256 objects:v278 count:16];
    if (v82)
    {
      v83 = *v257;
      do
      {
        for (n = 0; n != v82; ++n)
        {
          if (*v257 != v83)
          {
            objc_enumerationMutation(v74);
          }

          v85 = *(*(&v256 + 1) + 8 * n);
          if (v85 && *(v85 + 48) == 1)
          {
            v86 = [*(v85 + 24) copy];
            if (v61 >= [v60 count])
            {
              [v60 addObject:v86];
            }

            else
            {
              [v60 insertObject:v86 atIndex:v61];
            }
          }

          ++v61;
        }

        v82 = [v74 countByEnumeratingWithState:&v256 objects:v278 count:16];
      }

      while (v82);
    }

    v181 = v177;
    v184 = v228;
    v182 = v175;
    v185 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v87 = objc_alloc(MEMORY[0x1E695DFA8]);
    v88 = [*(v196 + 72) allKeys];
    v178 = [v87 initWithArray:v88];

    v191 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v89 = *(v196 + 152);
    v90 = [v89 countByEnumeratingWithState:&v244 objects:&v265 count:16];
    if (v90)
    {
      v91 = *v245;
      do
      {
        for (ii = 0; ii != v90; ++ii)
        {
          if (*v245 != v91)
          {
            objc_enumerationMutation(v89);
          }

          v93 = [*(*(&v244 + 1) + 8 * ii) uniqueID];
          [v191 addObject:v93];
        }

        v90 = [v89 countByEnumeratingWithState:&v244 objects:&v265 count:16];
      }

      while (v90);
    }

    v94 = [v181 groups];
    v95 = [v94 copy];

    v242 = 0u;
    v243 = 0u;
    v240 = 0u;
    v241 = 0u;
    obj = v95;
    v183 = [obj countByEnumeratingWithState:&v240 objects:&v261 count:16];
    if (v183)
    {
      v180 = *v241;
      do
      {
        for (jj = 0; jj != v183; ++jj)
        {
          if (*v241 != v180)
          {
            objc_enumerationMutation(obj);
          }

          v187 = *(*(&v240 + 1) + 8 * jj);
          v189 = [v187 groupID];
          v229 = [*(v196 + 56) objectForKey:v189];
          if (!v229)
          {
            v229 = [[PKGroup alloc] initWithCatalogGroup:v187 passes:v184 states:v182];
            [v185 setObject:v229 forKey:v189];
            goto LABEL_194;
          }

          v186 = v187;
          v193 = v184;
          v192 = v182;
          v198 = v191;
          v96 = objc_alloc(MEMORY[0x1E695DFA8]);
          v97 = [v229[4] allKeys];
          v194 = [v96 initWithArray:v97];

          v190 = [v186 uniqueIDs];
          v254 = 0u;
          v255 = 0u;
          v252 = 0u;
          v253 = 0u;
          v195 = [v190 copy];
          v199 = [v195 countByEnumeratingWithState:&v252 objects:&v274 count:16];
          if (!v199)
          {
            goto LABEL_185;
          }

          v219 = 0;
          v197 = *v253;
          do
          {
            v202 = 0;
            do
            {
              if (*v253 != v197)
              {
                objc_enumerationMutation(v195);
              }

              v207 = *(*(&v252 + 1) + 8 * v202);
              if (([v198 containsObject:?] & 1) == 0)
              {
                [v194 removeObject:v207];
                v203 = [v229[4] objectForKey:v207];
                v200 = [v193 objectForKey:v207];
                v205 = [v192 objectForKey:v207];
                if (v203)
                {
                  if (v200)
                  {
                    v98 = v200;
                    v224 = v205;
                    v215 = v98;
                    v99 = [v98 uniqueID];
                    v209 = [v229[4] objectForKey:v99];
                    v100 = [v209 isEqualToPassIncludingMetadata:v215];
                    if ((v100 & 1) == 0)
                    {
                      [v229[4] setObject:v215 forKeyedSubscript:v99];
                    }

                    [v229[5] setObject:v224 forKeyedSubscript:v99];
                    if (a6)
                    {
                      v101 = [(PKGroup *)v229 observers];
                      v258 = 0u;
                      v259 = 0u;
                      v256 = 0u;
                      v257 = 0u;
                      v102 = [v101 countByEnumeratingWithState:&v256 objects:v278 count:16];
                      if (v102)
                      {
                        v103 = *v257;
                        do
                        {
                          for (kk = 0; kk != v102; ++kk)
                          {
                            if (*v257 != v103)
                            {
                              objc_enumerationMutation(v101);
                            }

                            v105 = *(*(&v256 + 1) + 8 * kk);
                            v106 = [(PKGroup *)v229[3] _indexOfUniqueID:v99];
                            if (v100)
                            {
                              if (objc_opt_respondsToSelector())
                              {
                                [v105 group:v229 didUpdatePassState:v224 forPass:v209 atIndex:v106];
                              }
                            }

                            else if (objc_opt_respondsToSelector())
                            {
                              [v105 group:v229 didUpdatePass:v215 withState:v224 atIndex:v106];
                            }

                            else if (objc_opt_respondsToSelector())
                            {
                              [v105 group:v229 didUpdatePass:v215 atIndex:v106];
                            }
                          }

                          v102 = [v101 countByEnumeratingWithState:&v256 objects:v278 count:16];
                        }

                        while (v102);
                      }
                    }
                  }

                  else if (v205)
                  {
                    [v229[5] setObject:v205 forKeyedSubscript:v207];
                    if (a6)
                    {
                      v116 = [(PKGroup *)v229 observers];
                      v250 = 0u;
                      v251 = 0u;
                      v248 = 0u;
                      v249 = 0u;
                      v117 = [v116 countByEnumeratingWithState:&v248 objects:&v269 count:16];
                      if (v117)
                      {
                        v118 = *v249;
                        do
                        {
                          for (mm = 0; mm != v117; ++mm)
                          {
                            if (*v249 != v118)
                            {
                              objc_enumerationMutation(v116);
                            }

                            v120 = *(*(&v248 + 1) + 8 * mm);
                            if (objc_opt_respondsToSelector())
                            {
                              [v120 group:v229 didUpdatePassState:v205 forPass:v203 atIndex:{-[PKGroup _indexOfUniqueID:](v229[3], v207)}];
                            }
                          }

                          v117 = [v116 countByEnumeratingWithState:&v248 objects:&v269 count:16];
                        }

                        while (v117);
                      }
                    }
                  }

                  [(PKGroup *)v229 _moveUniqueID:v207 toIndex:v219 notify:a6];
                  goto LABEL_167;
                }

                if (v200)
                {
                  v107 = v200;
                  v108 = v205;
                  v109 = [v107 uniqueID];
                  v110 = [v229[3] uniqueIDs];
                  [v110 insertObject:v109 atIndex:v219];

                  [v229[4] setObject:v107 forKeyedSubscript:v109];
                  [v229[5] setObject:v108 forKeyedSubscript:v109];
                  if (a6)
                  {
                    v111 = [(PKGroup *)v229 observers];
                    v258 = 0u;
                    v259 = 0u;
                    v256 = 0u;
                    v257 = 0u;
                    v112 = [v111 countByEnumeratingWithState:&v256 objects:v278 count:16];
                    if (v112)
                    {
                      v113 = *v257;
                      do
                      {
                        for (nn = 0; nn != v112; ++nn)
                        {
                          if (*v257 != v113)
                          {
                            objc_enumerationMutation(v111);
                          }

                          v115 = *(*(&v256 + 1) + 8 * nn);
                          if (objc_opt_respondsToSelector())
                          {
                            [v115 group:v229 didInsertPass:v107 withState:v108 atIndex:v219];
                          }

                          else if (objc_opt_respondsToSelector())
                          {
                            [v115 group:v229 didInsertPass:v107 atIndex:v219];
                          }
                        }

                        v112 = [v111 countByEnumeratingWithState:&v256 objects:v278 count:16];
                      }

                      while (v112);
                    }
                  }

LABEL_167:
                  ++v219;
                }

                else
                {
                  [v190 removeObject:v207];
                }
              }

              ++v202;
            }

            while (v202 != v199);
            v121 = [v195 countByEnumeratingWithState:&v252 objects:&v274 count:16];
            v199 = v121;
          }

          while (v121);
LABEL_185:

          v258 = 0u;
          v259 = 0u;
          v256 = 0u;
          v257 = 0u;
          v122 = v194;
          v123 = [v122 countByEnumeratingWithState:&v256 objects:v278 count:16];
          if (v123)
          {
            v124 = *v257;
            do
            {
              for (i1 = 0; i1 != v123; ++i1)
              {
                if (*v257 != v124)
                {
                  objc_enumerationMutation(v122);
                }

                [(PKGroup *)v229 _removeUniqueID:a6 notify:?];
              }

              v123 = [v122 countByEnumeratingWithState:&v256 objects:v278 count:16];
            }

            while (v123);
          }

LABEL_194:
          if (!v229 || ([v229[3] uniqueIDs], v126 = objc_claimAutoreleasedReturnValue(), v127 = objc_msgSend(v126, "count") == 0, v126, v127))
          {
            v137 = [v181 groups];
            [v137 removeObject:v187];

            [v185 removeObjectForKey:v189];
          }

          else
          {
            v269 = 0;
            v270 = &v269;
            v271 = 0x2020000000;
            v272 = 0;
            *&v235 = MEMORY[0x1E69E9820];
            *(&v235 + 1) = 3221225472;
            *&v236 = __77__PKGroupsController__updateAndCreateGroupsWithCatalog_passes_states_notify___block_invoke;
            *(&v236 + 1) = &unk_1E79E24B0;
            v128 = v191;
            v239 = &v269;
            *&v237 = v128;
            *(&v237 + 1) = v196;
            v129 = v189;
            *&v238 = v129;
            *(&v238 + 1) = v178;
            v130 = &v235;
            v276 = 0u;
            v277 = 0u;
            v275 = 0u;
            v274 = 0u;
            v131 = [v229[3] uniqueIDs];
            v132 = [v131 countByEnumeratingWithState:&v274 objects:v278 count:16];
            if (v132)
            {
              v133 = *v275;
              do
              {
                for (i2 = 0; i2 != v132; ++i2)
                {
                  if (*v275 != v133)
                  {
                    objc_enumerationMutation(v131);
                  }

                  (v236)(v130, *(*(&v274 + 1) + 8 * i2));
                }

                v132 = [v131 countByEnumeratingWithState:&v274 objects:v278 count:16];
              }

              while (v132);
            }

            v135 = *(v270 + 24);
            if (v135 == [v229 passCount])
            {
              v136 = [v181 groups];
              [v136 removeObject:v187];

              [v185 removeObjectForKey:v129];
            }

            _Block_object_dispose(&v269, 8);
          }
        }

        v183 = [obj countByEnumeratingWithState:&v240 objects:&v261 count:16];
      }

      while (v183);
    }

    v277 = 0u;
    v276 = 0u;
    v275 = 0u;
    v274 = 0u;
    v138 = v178;
    v139 = [v138 countByEnumeratingWithState:&v274 objects:v278 count:16];
    if (v139)
    {
      v140 = *v275;
      do
      {
        for (i3 = 0; i3 != v139; ++i3)
        {
          if (*v275 != v140)
          {
            objc_enumerationMutation(v138);
          }

          [*(v196 + 72) removeObjectForKey:{*(*(&v274 + 1) + 8 * i3), v173}];
        }

        v139 = [v138 countByEnumeratingWithState:&v274 objects:v278 count:16];
      }

      while (v139);
    }

    v142 = objc_alloc(MEMORY[0x1E695DFA8]);
    v143 = [*(v196 + 56) allKeys];
    v144 = [v142 initWithArray:v143];

    v145 = [v181 allGroupIDs];
    [v144 minusSet:v145];

    v233 = 0u;
    v234 = 0u;
    v231 = 0u;
    v232 = 0u;
    v146 = v144;
    v147 = [v146 countByEnumeratingWithState:&v231 objects:v260 count:16];
    if (v147)
    {
      v148 = *v232;
      do
      {
        for (i4 = 0; i4 != v147; ++i4)
        {
          if (*v232 != v148)
          {
            objc_enumerationMutation(v146);
          }

          v150 = [*(v196 + 56) objectForKey:{*(*(&v231 + 1) + 8 * i4), v173}];
          [(PKGroupsController *)v196 _removeGroup:v150 notify:a6];
        }

        v147 = [v146 countByEnumeratingWithState:&v231 objects:v260 count:16];
      }

      while (v147);
    }

    v225 = [v181 groups];
    v220 = [v225 count];
    if (v220)
    {
      v151 = 0;
      do
      {
        v152 = v151;
        v153 = [v225 objectAtIndex:v173];
        v230 = [v153 groupID];

        v154 = [v196 groupAtIndex:v152];
        v155 = [v154 groupID];

        if (!v155 || ![v230 isEqualToNumber:v155])
        {
          v156 = [*(v196 + 56) objectForKey:v230];
          v157 = v156 == 0;

          if (v157)
          {
            v167 = [v185 objectForKey:v230];
            [(PKGroupsController *)v196 _placeGroup:v167 atIndex:v152 notify:a6];
          }

          else if (v155)
          {
            v216 = [(PKGroupsController *)v196 _indexOfGroupID:v230];
            v158 = v155;
            v159 = v225;
            v160 = [v159 count];
            v161 = v152;
            if (v160 > v152)
            {
              v161 = v152;
              v162 = v152;
              while (1)
              {
                v163 = [v159 objectAtIndex:v162];
                v164 = [v163 groupID];

                if ([v164 isEqualToNumber:v158])
                {
                  break;
                }

                v165 = [*(v196 + 56) objectForKey:v164];
                v166 = v165 != 0;

                v161 += v166;
                if (v160 == ++v162)
                {
                  goto LABEL_237;
                }
              }
            }

LABEL_237:

            v169 = *(v196 + 56);
            if (v216 <= v161)
            {
              v171 = [v169 objectForKey:v158];
              [(PKGroupsController *)v196 _placeGroup:v171 atIndex:v161 notify:a6];

              goto LABEL_240;
            }

            v170 = [v169 objectForKey:v230];
            [(PKGroupsController *)v196 _placeGroup:v170 atIndex:v152 notify:a6];
          }

          else
          {
            v168 = [*(v196 + 56) objectForKey:v230];
            [(PKGroupsController *)v196 _placeGroup:v168 atIndex:v152 notify:a6];
          }
        }

        ++v152;
LABEL_240:

        v151 = v152;
      }

      while (v152 < v220);
    }

    objc_autoreleasePoolPop(context);
    v10 = v173;
  }
}

- (id)groups
{
  v2 = [(NSMutableArray *)self->_groups copy];

  return v2;
}

- (id)groupAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_groups count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_groups objectAtIndex:a3];
  }

  return v5;
}

- (unint64_t)indexOfGroup:(id)a3
{
  v4 = [a3 groupID];
  v5 = [(PKGroupsController *)self _indexOfGroupID:v4];

  return v5;
}

- (uint64_t)_indexOfGroupID:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 64) objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (unint64_t)groupIndexForPassUniqueID:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_groupIDsByPassUniqueID objectForKey:a3];
  v5 = [(PKGroupsController *)self _indexOfGroupID:v4];

  return v5;
}

- (BOOL)containsExpiredPassWithUniqueID:(id)a3
{
  v4 = a3;
  expiredSectionPasses = self->_expiredSectionPasses;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PKGroupsController_containsExpiredPassWithUniqueID___block_invoke;
  v8[3] = &unk_1E79E2410;
  v9 = v4;
  v6 = v4;
  LOBYTE(expiredSectionPasses) = [(NSArray *)expiredSectionPasses pk_containsObjectPassingTest:v8];

  return expiredSectionPasses;
}

uint64_t __54__PKGroupsController_containsExpiredPassWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (id)passWithUniqueID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PKGroupsController *)self groupAtIndex:[(PKGroupsController *)self groupIndexForPassUniqueID:v4]];
    v6 = v5;
    if (v5)
    {
      v7 = [*(v5 + 32) objectForKey:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleUserPassesDelete:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    expiredSectionPasses = self->_expiredSectionPasses;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __45__PKGroupsController_handleUserPassesDelete___block_invoke;
    v21[3] = &unk_1E79E2410;
    v6 = v4;
    v22 = v6;
    v7 = [(NSArray *)expiredSectionPasses pk_createArrayByRemovingObjectsPassingTest:v21];
    v8 = self->_expiredSectionPasses;
    self->_expiredSectionPasses = v7;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          [(NSMutableDictionary *)self->_passAnnotationsByUniqueId removeObjectForKey:v14, v17];
          v15 = [(NSMutableDictionary *)self->_groupIDsByPassUniqueID objectForKey:v14];
          if (v15)
          {
            [(NSMutableDictionary *)self->_groupIDsByPassUniqueID removeObjectForKey:v14];
            v16 = [(NSMutableDictionary *)self->_groupsByGroupID objectForKey:v15];
            if (([(PKGroup *)v16 containsPassesInAdditionToUniqueID:v14]& 1) != 0)
            {
              if (v16)
              {
                [(PKGroup *)v16 _removeUniqueID:v14 notify:1];
              }
            }

            else
            {
              [(PKGroupsController *)&self->super.isa _removeGroup:v16 notify:1];
            }
          }

          else
          {
            [(NSMutableDictionary *)self->_groupIDsByExpiredPassUniqueID removeObjectForKey:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }

    [(PKPassLibrary *)self->_passLibrary removePassesWithUniqueIDs:v9 diagnosticReason:@"User Deleted Passes"];
  }
}

BOOL __45__PKGroupsController_handleUserPassesDelete___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueID];
  v4 = [v2 indexOfObject:v3] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)_removeGroup:(int)a3 notify:
{
  v5 = a2;
  if (a1)
  {
    v9 = v5;
    v6 = [a1 indexOfGroup:v5];
    [a1[6] removeObjectAtIndex:v6];
    [(PKGroupsController *)a1 _fixIndicesFrom:v6];
    v7 = [v9 groupID];
    [a1[8] removeObjectForKey:v7];
    [a1[7] removeObjectForKey:v7];
    if (a3)
    {
      WeakRetained = objc_loadWeakRetained(a1 + 21);
      [WeakRetained groupsController:a1 didRemoveGroup:v9 atIndex:v6];
    }

    v5 = v9;
  }
}

- (void)handleUserPassDelete:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_groupIDsByPassUniqueID objectForKey:v4];
    if (v5)
    {
      [(NSMutableDictionary *)self->_groupIDsByPassUniqueID removeObjectForKey:v4];
      v6 = [(NSMutableDictionary *)self->_groupsByGroupID objectForKey:v5];
      if (([(PKGroup *)v6 containsPassesInAdditionToUniqueID:v4]& 1) != 0)
      {
        if (v6)
        {
          [(PKGroup *)v6 _removeUniqueID:v4 notify:1];
        }
      }

      else
      {
        [(PKGroupsController *)&self->super.isa _removeGroup:v6 notify:1];
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_groupIDsByExpiredPassUniqueID removeObjectForKey:v4];
    }

    expiredSectionPasses = self->_expiredSectionPasses;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__PKGroupsController_handleUserPassDelete___block_invoke;
    v12[3] = &unk_1E79E2438;
    v8 = v4;
    v13 = v8;
    v9 = [(NSArray *)expiredSectionPasses indexOfObjectPassingTest:v12];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(NSArray *)self->_expiredSectionPasses pk_createArrayByRemovingObjectAtIndex:v9];
      v11 = self->_expiredSectionPasses;
      self->_expiredSectionPasses = v10;

      [(NSMutableDictionary *)self->_passAnnotationsByUniqueId removeObjectForKey:v8];
    }

    [(PKPassLibrary *)self->_passLibrary removePassWithUniqueID:v8 diagnosticReason:@"User Deleted Pass"];
  }
}

uint64_t __43__PKGroupsController_handleUserPassDelete___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)handleUserPassRecover:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    expiredSectionPasses = self->_expiredSectionPasses;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __44__PKGroupsController_handleUserPassRecover___block_invoke;
    v16[3] = &unk_1E79E2438;
    v7 = v4;
    v17 = v7;
    v8 = [(NSArray *)expiredSectionPasses indexOfObjectPassingTest:v16];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(NSArray *)self->_expiredSectionPasses pk_createArrayByRemovingObjectAtIndex:v8];
      v10 = self->_expiredSectionPasses;
      self->_expiredSectionPasses = v9;

      v11 = [(NSArray *)self->_filteredPassUniqueIDs pk_arrayByRemovingObject:v7];
      filteredPassUniqueIDs = self->_filteredPassUniqueIDs;
      self->_filteredPassUniqueIDs = v11;

      [(NSMutableDictionary *)self->_groupIDsByExpiredPassUniqueID removeObjectForKey:v7];
      v13 = [(NSMutableDictionary *)self->_passAnnotationsByUniqueId objectForKey:v7];
      v14 = v13;
      if (v13)
      {
        [v13 updateSortingState:2];
      }

      v15 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v7;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Attempting pass recovery with unique id:%@", buf, 0xCu);
      }

      [(PKPassLibrary *)self->_passLibrary recoverPassWithUniqueID:v7];
    }
  }
}

uint64_t __44__PKGroupsController_handleUserPassRecover___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)handleUserPassArchive:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKManualArchiveEnabled();
  if (v4 && v5)
  {
    v6 = [(PKPassLibrary *)self->_passLibrary passWithUniqueID:v4];
    v7 = [(NSMutableDictionary *)self->_groupIDsByPassUniqueID objectForKey:v4];
    v8 = [(NSArray *)self->_expiredSectionPasses arrayByAddingObject:v6];
    expiredSectionPasses = self->_expiredSectionPasses;
    self->_expiredSectionPasses = v8;

    v10 = [(NSArray *)self->_filteredPassUniqueIDs arrayByAddingObject:v4];
    filteredPassUniqueIDs = self->_filteredPassUniqueIDs;
    self->_filteredPassUniqueIDs = v10;

    if (v7)
    {
      [(NSMutableDictionary *)self->_groupIDsByExpiredPassUniqueID setObject:v7 forKey:v4];
    }

    v12 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Attempting pass archival with unique id:%@", &v13, 0xCu);
    }

    [(PKPassLibrary *)self->_passLibrary archivePassWithUniqueID:v4];
  }
}

- (BOOL)filteringEnabled
{
  if (self->_filters)
  {
    LOBYTE(refreshed) = 1;
  }

  else
  {
    refreshed = PKExpiredPassesRefreshEnabled();
    if (refreshed)
    {
      LOBYTE(refreshed) = [(NSArray *)self->_expiredSectionPasses count]!= 0;
    }
  }

  return refreshed;
}

- (void)suppressRemoteUpdates:(BOOL)a3
{
  self->_suppressRemoteUpdates = 1;
  self->_enqueueRemoteUpdates = a3;
  v4 = [(PKGroupsController *)self _copyRemoteCatalog];
  catalogBeforeReordering = self->_catalogBeforeReordering;
  self->_catalogBeforeReordering = v4;
}

- (PKCatalog)_copyRemoteCatalog
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(PKCatalog);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = *v14;
  do
  {
    v7 = 0;
    do
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if (v8)
      {
        if (*(v8 + 48))
        {
          goto LABEL_11;
        }

        v9 = [*(v8 + 24) copy];
      }

      else
      {
        v9 = 0;
      }

      v10 = [(PKCatalog *)v2 groups];
      [v10 addObject:v9];

LABEL_11:
      ++v7;
    }

    while (v5 != v7);
    v11 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    v5 = v11;
  }

  while (v11);
LABEL_15:

  return v2;
}

- (void)moveGroupAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v7 = [(PKGroupsController *)self groupAtIndex:?];
  [(PKGroupsController *)self _moveGroup:v7 fromIndex:a3 toIndex:a4 notify:0];
}

- (void)movePass:(id)a3 inGroup:(id)a4 toIndex:(unint64_t)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_groups;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v21 = a5;
    v13 = *v23;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v22 + 1) + 8 * v14);
      v16 = [v15 groupID];
      v17 = [v9 groupID];
      v18 = [v16 isEqualToNumber:v17];

      if (v18)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v19 = v15;

    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = [v8 uniqueID];
    [(PKGroup *)v19 _moveUniqueID:v20 toIndex:v21 notify:0];

    v10 = v19;
  }

LABEL_12:

LABEL_13:
}

- (void)enableRemoteUpdates
{
  v8 = [(PKGroupsController *)self _copyRemoteCatalog];
  if ([(PKCatalog *)self->_catalogBeforeReordering isEquivalentToCatalog:?])
  {
    v3 = [(NSMutableArray *)self->_enqueuedUpdates count];
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = [(NSMutableArray *)self->_enqueuedUpdates objectAtIndex:i];
        v6[2]();
      }
    }
  }

  else
  {
    [(PKPassLibrary *)self->_passLibrary sendUserEditedCatalog:v8];
  }

  [(NSMutableArray *)self->_enqueuedUpdates removeAllObjects];
  catalogBeforeReordering = self->_catalogBeforeReordering;
  self->_catalogBeforeReordering = 0;

  self->_suppressRemoteUpdates = 0;
}

- (void)addLocalPasses:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self;
  objc_storeStrong(&self->_localPasses, a3);
  v7 = objc_alloc_init(PKCatalogGroup);
  v8 = PKUniqueNumber();
  [(PKCatalogGroup *)v7 setGroupID:v8];

  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v15 uniqueID];
        v17 = [(PKCatalogGroup *)v7 uniqueIDs];
        [v17 addObject:v16];

        [v9 setObject:v15 forKey:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v18 = [PKGroup alloc];
  v30 = v7;
  v19 = [(PKGroup *)&v18->super.isa initWithCatalogGroup:v7 passes:v9 states:MEMORY[0x1E695E0F8]];
  v20 = v19;
  if (v19)
  {
    *(v19 + 48) = 1;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = [v9 allKeys];
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * j);
        groupIDsByPassUniqueID = v6->_groupIDsByPassUniqueID;
        v28 = [v20 groupID];
        [(NSMutableDictionary *)groupIDsByPassUniqueID setObject:v28 forKey:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v23);
  }

  [(PKGroupsController *)v6 _insertGroup:v20 atIndex:0 notify:1];
}

- (void)_insertGroup:(unint64_t)a3 atIndex:(int)a4 notify:
{
  v10 = a2;
  if (a1)
  {
    v7 = *(a1 + 56);
    v8 = [v10 groupID];
    [v7 setObject:v10 forKey:v8];

    [*(a1 + 48) insertObject:v10 atIndex:a3];
    [(PKGroupsController *)a1 _fixIndicesFrom:a3];
    if (a4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 168));
      [WeakRetained groupsController:a1 didInsertGroup:v10 atIndex:a3];
    }
  }
}

- (id)passes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_groups;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) passes];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)passLibrary:(id)a3 receivedUpdatedCatalog:(id)a4 passes:(id)a5 states:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (!self->_limitedMode)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__PKGroupsController_passLibrary_receivedUpdatedCatalog_passes_states___block_invoke;
    v12[3] = &unk_1E79C9668;
    v12[4] = self;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

void __71__PKGroupsController_passLibrary_receivedUpdatedCatalog_passes_states___block_invoke(uint64_t a1)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __71__PKGroupsController_passLibrary_receivedUpdatedCatalog_passes_states___block_invoke_2;
  v14 = &unk_1E79C9668;
  v11 = *(a1 + 32);
  v2 = *(&v11 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v15 = v11;
  v16 = v5;
  v6 = v12;
  v7 = v6;
  if (v11)
  {
    if (*(v11 + 88) == 1)
    {
      if (*(v11 + 89) == 1)
      {
        v8 = *(v11 + 104);
        v9 = [v6 copy];
        v10 = _Block_copy(v9);
        [v8 addObject:v10];
      }
    }

    else
    {
      v13(v6);
    }
  }
}

- (void)objectSettingsDidChangeNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKGroupsController_objectSettingsDidChangeNotification___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __58__PKGroupsController_objectSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) userInfo];
  v2 = [v5 objectForKeyedSubscript:@"PKPassLibraryUniqueIDUserInfo"];
  v3 = [*(a1 + 40) passWithUniqueID:v2];
  v4 = [v5 objectForKeyedSubscript:@"PKPassLibrarySettingsUserInfo"];
  [v3 setSettingsWithoutUpdatingDataAccessor:{objc_msgSend(v4, "unsignedIntegerValue")}];
}

void __70__PKGroupsController__displayablePassesDictionaryFromSet_withCatalog___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueID];
  [v2 removeObjectForKey:v3];
}

uint64_t __92__PKGroupsController__displayablePassesDictionaryFromPasses_withCatalog_andPassAnnotations___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIDs];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void __92__PKGroupsController__displayablePassesDictionaryFromPasses_withCatalog_andPassAnnotations___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueID];
  [v2 removeObjectForKey:v3];
}

- (void)_fixIndex:(uint64_t)a1
{
  if (a1)
  {
    v7 = [*(a1 + 48) objectAtIndex:a2];
    v4 = *(a1 + 64);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v6 = [v7 groupID];
    [v4 setObject:v5 forKey:v6];
  }
}

- (unint64_t)_fixIndicesFrom:(void *)a1
{
  for (result = [a1 groupCount]; a2 < result; result = objc_msgSend(a1, "groupCount"))
  {
    [(PKGroupsController *)a1 _fixIndex:?];
  }

  return result;
}

- (void)_placeGroup:(unint64_t)a3 atIndex:(uint64_t)a4 notify:
{
  v8 = a2;
  if ([a1[6] count] <= a3)
  {
    a3 = [a1[6] count];
  }

  v7 = [a1 indexOfGroup:v8];
  if (v7 != a3)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PKGroupsController *)a1 _insertGroup:v8 atIndex:a3 notify:a4];
    }

    else
    {
      [a1 _moveGroup:v8 fromIndex:v7 toIndex:a3 notify:a4];
    }
  }
}

void __77__PKGroupsController__updateAndCreateGroupsWithCatalog_passes_states_notify___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    [*(*(a1 + 40) + 72) setObject:*(a1 + 48) forKey:v3];
    [*(a1 + 56) removeObject:v3];
  }
}

- (void)_moveGroup:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5 notify:(BOOL)a6
{
  v6 = a6;
  v13 = a3;
  [(NSMutableArray *)self->_groups removeObjectAtIndex:a4];
  [(NSMutableArray *)self->_groups insertObject:v13 atIndex:a5];
  if (a4 >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = a4;
  }

  if (a4 <= a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = a4;
  }

  do
  {
    [(PKGroupsController *)self _fixIndex:?];
  }

  while (v10 <= v11);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained groupsController:self didMoveGroup:v13 fromIndex:a4 toIndex:a5];
  }
}

- (PKGroupsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end