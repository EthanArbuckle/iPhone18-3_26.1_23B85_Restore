@interface FPDFilePresenter
+ (id)presenter:(id)a3 withItemID:(id)a4 auditToken:(id *)a5 urlHint:(id)a6 domain:(id)a7;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (FPDFilePresenter)initWithIdentifier:(id)a3 itemID:(id)a4 auditToken:(id *)a5 urlHint:(id)a6 domain:(id)a7;
- (NSString)description;
- (NSString)prettyDescription;
- (id)_newCoordinator;
- (id)_presentedItemDescription:(BOOL)a3;
- (id)enumerator;
- (int)requestEffectivePID;
- (void)_destroyEnumerator;
- (void)_enumeratorRequestDidFailWithXPCError:(id)a3;
- (void)_fetchChangeToken;
- (void)_fetchUpdates;
- (void)didUpdateItem:(id)a3;
- (void)dumpStateTo:(id)a3;
- (void)enumerationResultsDidChange;
- (void)receiveUpdatedItems:(id)a3 deletedItemsIdentifiers:(id)a4;
- (void)setAuditToken:(id *)a3;
- (void)start;
- (void)stop;
@end

@implementation FPDFilePresenter

- (NSString)prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FPDFilePresenter *)self _presentedItemDescription:0];
  v5 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v5;
  v6 = FPExecutableNameForAuditToken();
  v7 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v7;
  v8 = [v3 stringWithFormat:@"presenter for %@ by %@[%u]", v4, v6, audit_token_to_pid(&atoken)];

  return v8;
}

- (FPDFilePresenter)initWithIdentifier:(id)a3 itemID:(id)a4 auditToken:(id *)a5 urlHint:(id)a6 domain:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = FPDFilePresenter;
  v17 = [(FPDFilePresenter *)&v30 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_observedItemID, a4);
    objc_storeStrong(&v18->_domain, a7);
    objc_storeStrong(&v18->_presentedItemURL, a6);
    objc_storeStrong(&v18->_filePresenterID, a3);
    v19 = *&a5->var0[4];
    *v18->_auditToken.val = *a5->var0;
    *&v18->_auditToken.val[4] = v19;
    v20 = [MEMORY[0x1E696ABF8] _observedUbiquityAttributesForPresenterWithID:v13];
    v21 = v20;
    if (v20)
    {
      v22 = [(__CFString *)v20 count];
      v18->_presenterWantsUbiqitousAttributes = v22 != 0;
      if (!v22)
      {
        v23 = *MEMORY[0x1E6967110];
        v24 = *&v18->_auditToken.val[4];
        *buf = *v18->_auditToken.val;
        *&buf[16] = v24;
        v25 = FPEntitlementValueForAuditToken();
        if (v25)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18->_passivePresenterRequested = [v25 BOOLValue];
          }
        }
      }
    }

    else
    {
      v18->_presenterWantsUbiqitousAttributes = 1;
    }

    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v29 = @"all";
      *buf = 138412802;
      if (v21)
      {
        v29 = v21;
      }

      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      *&buf[24] = v29;
      _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] new presenter %@ for %@, watching attributes: %@", buf, 0x20u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v18;
}

- (int)requestEffectivePID
{
  v2 = *&self->_auditToken.val[4];
  *v4.val = *self->_auditToken.val;
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

+ (id)presenter:(id)a3 withItemID:(id)a4 auditToken:(id *)a5 urlHint:(id)a6 domain:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [a1 alloc];
  v17 = *&a5->var0[4];
  v20[0] = *a5->var0;
  v20[1] = v17;
  v18 = [v16 initWithIdentifier:v15 itemID:v14 auditToken:v20 urlHint:v13 domain:v12];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 itemID];
    if ([v5 isEqual:self->_observedItemID])
    {
      v6 = [v4 filePresenterID];
      v7 = [v6 isEqual:self->_filePresenterID];
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

- (id)_presentedItemDescription:(BOOL)a3
{
  v4 = MEMORY[0x1E696AEC0];
  presentedItemURL = self->_presentedItemURL;
  if (a3)
  {
    v6 = [(NSURL *)presentedItemURL fp_shortDescription];
    v7 = [v4 stringWithFormat:@"%@ (%@)", v6, self->_observedItemID];
  }

  else
  {
    v6 = [(NSURL *)presentedItemURL lastPathComponent];
    v8 = [v6 fp_obfuscatedFilename];
    v9 = [(FPItemID *)self->_observedItemID identifier];
    v7 = [v4 stringWithFormat:@"%@ (%@)", v8, v9];
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPDFilePresenter *)self _presentedItemDescription:0];
  v6 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v6;
  v7 = FPExecutableNameForAuditToken();
  v8 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v8;
  v9 = audit_token_to_pid(&atoken);
  if (self->_isEnumeratorActive)
  {
    v10 = "";
  }

  else
  {
    v10 = " (passive)";
  }

  v11 = [v3 stringWithFormat:@"<%@ %p %@ presented by %@[%i]%s>", v4, self, v5, v7, v9, v10];

  return v11;
}

- (id)enumerator
{
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  if (!self->_isRunning)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: enumerator requested on non-running presenter %@", self];
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDFilePresenter enumerator]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDFilePresenter.m", 129, [v12 UTF8String]);
  }

  if (self->_isEnumeratorActive)
  {
    enumerator = self->_enumerator;
    if (!enumerator)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ we should have an enumerator if it's active"];
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("-[FPDFilePresenter enumerator]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDFilePresenter.m", 140, [v14 UTF8String]);
    }

    v4 = enumerator;
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setEnumeratedItemID:self->_observedItemID];
    [v5 setPresenterEnumeration:1];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"enumerator for %@", self->_observedItemID];
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v8 = [(FPDDomain *)self->_domain defaultBackend];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __30__FPDFilePresenter_enumerator__block_invoke;
    v16[3] = &unk_1E83C0BF8;
    v16[4] = self;
    v19 = &v20;
    v9 = v6;
    v17 = v9;
    v10 = v7;
    v18 = v10;
    [v8 enumerateWithSettings:v5 lifetimeExtender:self observer:self completionHandler:v16];

    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v21[5];
  }

  _Block_object_dispose(&v20, 8);

  return v4;
}

void __30__FPDFilePresenter_enumerator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  if (!v11 || v6)
  {
    if (!v6)
    {
      v7 = *(*(a1 + 32) + 88);
      v6 = FPProviderNotFoundErrorForURL();
    }

    v8 = [objc_alloc(MEMORY[0x1E69674B0]) initWithConnection:0 protocol:&unk_1F4C7FA50 orError:v6 name:*(a1 + 40) requestPid:{objc_msgSend(*(a1 + 32), "requestEffectivePID")}];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    [*(a1 + 32) setIsEnumeratorActive:1];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    dispatch_group_leave(*(a1 + 48));
  }
}

- (void)start
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(FPDDomain *)self->_domain provider];
  v4 = [v3 presentersQueue];
  queue = self->_queue;
  self->_queue = v4;

  if (self->_queue)
  {
    if (self->_passivePresenterRequested)
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        observedItemID = self->_observedItemID;
        *buf = 138412290;
        v18 = observedItemID;
        v8 = "[INFO] ignoring presenter for item %@ because process requested passive presenters";
LABEL_7:
        _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
      }
    }

    else
    {
      v10 = [(FPDDomain *)self->_domain provider];
      v11 = [v10 identifier];
      v12 = [v11 fp_isiCloudDriveIdentifier];

      if (!v12 || self->_presenterWantsUbiqitousAttributes)
      {
        v13 = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __25__FPDFilePresenter_start__block_invoke;
        block[3] = &unk_1E83BE068;
        block[4] = self;
        dispatch_async(v13, block);
        goto LABEL_12;
      }

      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v15 = self->_observedItemID;
        *buf = 138412290;
        v18 = v15;
        v8 = "[INFO] ignoring presenter for item %@ for ubiquity attributes";
        goto LABEL_7;
      }
    }
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = self->_observedItemID;
      *buf = 138412290;
      v18 = v9;
      v8 = "[INFO] cannot start presenter for %@, provider has been discarded";
      goto LABEL_7;
    }
  }

LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
}

void __25__FPDFilePresenter_start__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 64) == 1)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] presenter %@ started while already running", &v11, 0xCu);
    }

    goto LABEL_9;
  }

  *(v2 + 64) = 1;
  v5 = [*(*(a1 + 32) + 32) session];
  [v5 registerLifetimeExtensionForObject:*(a1 + 32)];

  v6 = [*(*(a1 + 32) + 32) provider];
  v7 = [v6 supportsEnumeration];

  if (!v7)
  {
LABEL_9:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *(a1 + 32);
  v9 = *MEMORY[0x1E69E9840];

  [v8 _fetchChangeToken];
}

- (void)stop
{
  queue = self->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__FPDFilePresenter_stop__block_invoke;
    block[3] = &unk_1E83BE068;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

void __24__FPDFilePresenter_stop__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 64))
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] stopping presenter %@", &v7, 0xCu);
    }

    *(*(a1 + 32) + 64) = 0;
    [*(a1 + 32) _destroyEnumerator];
    v5 = [*(*(a1 + 32) + 32) session];
    [v5 unregisterLifetimeExtensionForObject:*(a1 + 32)];
  }

  else if (*(v1 + 16))
  {
    __24__FPDFilePresenter_stop__block_invoke_cold_1();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_enumeratorRequestDidFailWithXPCError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPDFilePresenter *)self _enumeratorRequestDidFailWithXPCError:v4, v5];
  }

  [(FPDFilePresenter *)self _destroyEnumerator];
}

- (void)_destroyEnumerator
{
  dispatch_assert_queue_V2(self->_queue);
  self->_isFetchingChanges = 0;
  enumerator = self->_enumerator;
  if (enumerator)
  {
    [(FPXEnumerator *)enumerator invalidate];
    v4 = self->_enumerator;
    self->_enumerator = 0;
  }

  if (self->_isEnumeratorActive)
  {
    self->_isEnumeratorActive = 0;
  }
}

- (void)receiveUpdatedItems:(id)a3 deletedItemsIdentifiers:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v49 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_enumerator)
  {
    section = __fp_create_section();
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPDFilePresenter receiveUpdatedItems:? deletedItemsIdentifiers:?];
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v50;
    v7 = [obj countByEnumeratingWithState:&v61 objects:v71 count:{16, v49}];
    if (v7)
    {
      v55 = *v62;
      v54 = *MEMORY[0x1E695DA88];
      v52 = *MEMORY[0x1E695DCC8];
      v51 = *MEMORY[0x1E695DD10];
      do
      {
        v56 = v7;
        for (i = 0; i != v56; ++i)
        {
          if (*v62 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v61 + 1) + 8 * i);
          if (self->_observedItemID)
          {
            v10 = [*(*(&v61 + 1) + 8 * i) itemID];
            if ([v10 isEqual:self->_observedItemID])
            {
              v11 = 1;
            }

            else
            {
              v12 = [v9 formerItemID];
              v11 = [v12 isEqual:self->_observedItemID];
            }
          }

          else
          {
            v11 = 0;
          }

          v13 = self->_presentedItemURL;
          v14 = [v9 fileURL];
          if (!v14)
          {
            v57 = 0;
            v58 = 0;
            goto LABEL_24;
          }

          v15 = [v9 fileURL];
          v60 = 0;
          v16 = [v15 getResourceValue:&v60 forKey:v54 error:0];
          v58 = v60;
          if (v16)
          {
            presentedItemURL = self->_presentedItemURL;
            v59 = 0;
            v18 = [(NSURL *)presentedItemURL getResourceValue:&v59 forKey:v54 error:0];
            v19 = v59;
            v57 = v19;
            if (v18)
            {
              v20 = [v58 isEqualToString:v19];

              if (v20)
              {
                goto LABEL_24;
              }

              [v9 fileURL];
              v13 = v14 = v13;
              goto LABEL_23;
            }
          }

          else
          {
            v57 = 0;
          }

LABEL_23:
LABEL_24:
          if (v11)
          {
            currentItem = self->_currentItem;
            if (currentItem)
            {
              [(FPItem *)currentItem ubiquitousResourceKeysDiffAgainstItem:v9];
            }

            else
            {
              [MEMORY[0x1E6967388] allUbiquitousResourceKeys];
            }
            v26 = ;
            v28 = [(FPItem *)self->_currentItem capabilities];
            if (v28 == [v9 capabilities])
            {
              v29 = MEMORY[0x1E695DFD8];
              v66[0] = v52;
              v66[1] = v51;
              v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
              v31 = [v29 setWithArray:v30];
              v32 = [v26 intersectsSet:v31];
            }

            else
            {
              v32 = 1;
            }

            objc_storeStrong(&self->_currentItem, v9);
            v33 = [MEMORY[0x1E696ABF8] _observedUbiquityAttributesForPresenterWithID:self->_filePresenterID];
            v34 = [v33 mutableCopy];
            v35 = v34;
            if (v34)
            {
              v27 = v34;
            }

            else
            {
              v36 = [MEMORY[0x1E6967388] allUbiquitousResourceKeys];
              v27 = [v36 mutableCopy];
            }

            [(FPDFilePresenter *)v27 intersectSet:v26];
            if ([(FPDFilePresenter *)v27 count])
            {
              v37 = [(FPDFilePresenter *)self _newCoordinator];
              v38 = fp_current_or_default_log();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v39 = [v9 fileURL];
                v40 = [v39 fp_shortDescription];
                *buf = 138412546;
                v68 = v27;
                v69 = 2112;
                v70 = v40;
                _os_log_impl(&dword_1CEFC7000, v38, OS_LOG_TYPE_INFO, "[INFO] 🎖 posting did change ubiquity attributes (%@) for updated file %@", buf, 0x16u);
              }

              [v37 itemAtURL:v13 didChangeUbiquityAttributes:v27];
              if (v32)
              {
                if (!v37)
                {
                  goto LABEL_46;
                }

LABEL_47:
                v46 = fp_current_or_default_log();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  v47 = [(NSURL *)v13 fp_shortDescription];
                  *buf = 138412290;
                  v68 = v47;
                  _os_log_impl(&dword_1CEFC7000, v46, OS_LOG_TYPE_INFO, "[INFO] 🎖 posting sharing did change for updated file %@", buf, 0xCu);
                }

                [v37 sharingDidChangeForItemAtURL:v13];
              }
            }

            else
            {
              v41 = fp_current_or_default_log();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = [(NSURL *)v13 fp_shortDescription];
                *buf = 138412290;
                v68 = v42;
                _os_log_impl(&dword_1CEFC7000, v41, OS_LOG_TYPE_INFO, "[INFO] 🎖 posting did change ubiquity for updated file %@", buf, 0xCu);
              }

              v43 = MEMORY[0x1E696ABF8];
              v44 = [(FPDDomain *)self->_domain provider];
              v45 = [v44 purposeIdentifier];
              [v43 __itemAtURL:v13 didChangeUbiquityWithPurposeID:v45];

              if (v32)
              {
LABEL_46:
                v37 = [(FPDFilePresenter *)self _newCoordinator];
                goto LABEL_47;
              }

              v37 = 0;
            }

            goto LABEL_52;
          }

          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = [v9 fileURL];
            v24 = [v23 fp_shortDescription];
            *buf = 138412546;
            v68 = self;
            v69 = 2112;
            v70 = v24;
            _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: 🎖 posting did change ubiquity for updated file %@", buf, 0x16u);
          }

          v25 = MEMORY[0x1E696ABF8];
          v26 = [(FPDDomain *)self->_domain provider];
          v27 = [v26 purposeIdentifier];
          [v25 __itemAtURL:v13 didChangeUbiquityWithPurposeID:v27];
LABEL_52:
        }

        v7 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v7);
    }

    __fp_leave_section_Debug();
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (id)_newCoordinator
{
  v2 = [(FPDDomain *)self->_domain provider];
  v3 = [v2 purposeIdentifier];

  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setPurposeIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enumerationResultsDidChange
{
  v3 = [(FPDDomain *)self->_domain provider];
  v4 = [v3 identifier];
  v5 = [v4 fp_isiCloudDriveIdentifier];

  if (self->_presenterWantsUbiqitousAttributes || !v5)
  {
    queue = self->_queue;
    if (queue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__FPDFilePresenter_enumerationResultsDidChange__block_invoke;
      block[3] = &unk_1E83BE068;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

uint64_t __47__FPDFilePresenter_enumerationResultsDidChange__block_invoke(uint64_t a1)
{
  __fp_create_section();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47__FPDFilePresenter_enumerationResultsDidChange__block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 65) == 1)
  {
    *(v3 + 66) = 1;
  }

  else if (*(v3 + 40))
  {
    [v3 _fetchUpdates];
  }

  else
  {
    [v3 _fetchChangeToken];
  }

  return __fp_leave_section_Debug();
}

- (void)didUpdateItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__FPDFilePresenter_didUpdateItem___block_invoke;
    v7[3] = &unk_1E83BE158;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __34__FPDFilePresenter_didUpdateItem___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 receiveUpdatedItems:v2 deletedItemsIdentifiers:MEMORY[0x1E695E0F0]];

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_fetchChangeToken
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __37__FPDFilePresenter__fetchChangeToken__block_invoke(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a4;
  v11 = a6;
  v12 = a1[4];
  v13 = *(v12 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__FPDFilePresenter__fetchChangeToken__block_invoke_2;
  block[3] = &unk_1E83BE648;
  v14 = a1[5];
  v23 = a1[6];
  block[4] = v12;
  v19 = v14;
  v20 = v11;
  v24 = a1[7];
  v21 = v9;
  v22 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  dispatch_async(v13, block);
}

uint64_t __37__FPDFilePresenter__fetchChangeToken__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 72);
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_1(&v18);
  }

  v3 = (a1 + 32);
  if (*(*(a1 + 32) + 16) != *(a1 + 40))
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_2((a1 + 40));
    }

LABEL_12:

    goto LABEL_13;
  }

  v5 = [*(a1 + 48) fp_isRemoteCrashError];
  v6 = *v3;
  if (v5)
  {
    [v6 _enumeratorRequestDidFailWithXPCError:*(a1 + 48)];
  }

  else
  {
    if ((v6[64] & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ received changes on active enumerator for stopped presenter %@", *v3, v18];
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      v17 = v15;
      __assert_rtn("-[FPDFilePresenter _fetchChangeToken]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDFilePresenter.m", 411, [v15 UTF8String]);
    }

    v6[65] = 0;
    if (*(a1 + 48))
    {
      v4 = fp_current_or_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v12 = [*(*v3 + 32) fp_prettyDescription];
        v13 = *(a1 + 48);
        v14 = *(*(a1 + 32) + 48);
        *buf = 138412802;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_error_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_ERROR, "[ERROR] no change token returned for %@: %@\n on url: %@", buf, 0x20u);
      }

      goto LABEL_12;
    }

    [*(a1 + 32) receiveUpdatedItems:*(a1 + 56) deletedItemsIdentifiers:MEMORY[0x1E695E0F0]];
    v10 = *(a1 + 64);
    v9 = (a1 + 64);
    objc_storeStrong((*(v9 - 4) + 40), v10);
    v11 = *(v9 - 4);
    if (*v9)
    {
      [v11 _fetchUpdates];
    }

    else if (v11[66] == 1)
    {
      [v11 _fetchChangeToken];
    }
  }

LABEL_13:
  result = __fp_leave_section_Debug();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_fetchUpdates
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __33__FPDFilePresenter__fetchUpdates__block_invoke(void *a1, void *a2, void *a3, char a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v16 = a1[4];
  v17 = *(v16 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPDFilePresenter__fetchUpdates__block_invoke_2;
  block[3] = &unk_1E83C0C48;
  v18 = a1[5];
  v30 = a1[6];
  block[4] = v16;
  v25 = v18;
  v26 = v15;
  v19 = a1[7];
  v32 = a4;
  v27 = v14;
  v28 = v13;
  v31 = v19;
  v29 = v12;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  dispatch_async(v17, block);
}

uint64_t __33__FPDFilePresenter__fetchUpdates__block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = *(a1 + 80);
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_1(&v23);
  }

  v3 = (a1 + 32);
  v4 = (a1 + 40);
  if (*(*(a1 + 32) + 16) != *(a1 + 40))
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_2(v4);
    }

    goto LABEL_35;
  }

  v6 = [*(a1 + 48) fp_isRemoteCrashError];
  v7 = *v3;
  if (v6)
  {
    [v7 _enumeratorRequestDidFailWithXPCError:*(a1 + 48)];
    goto LABEL_35;
  }

  if ((v7[64] & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ received changes on active enumerator for stopped presenter %@", *v3, v23];
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v22 = v20;
    __assert_rtn("-[FPDFilePresenter _fetchUpdates]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDFilePresenter.m", 480, [v20 UTF8String]);
  }

  v7[65] = 0;
  v8 = (a1 + 56);
  if ([*(a1 + 56) isEqualToData:*(*(a1 + 32) + 40)] && !*(a1 + 48))
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_4((a1 + 32));
    }

    if (*(a1 + 96) == 1)
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_5(v10);
      }
    }

    if ([*(a1 + 64) count] || objc_msgSend(*(a1 + 72), "count"))
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_6(v11);
      }
    }
  }

  if ([*(a1 + 48) fp_isFileProviderError:-1002])
  {
    v12 = 1;
  }

  else
  {
    v12 = [*(a1 + 48) fp_isFileProviderError:-1002];
  }

  objc_storeStrong(*v3 + 5, *v8);
  if (((*v8 == 0) & v12) == 1)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_7(v13);
    }

    goto LABEL_34;
  }

  [*(a1 + 32) receiveUpdatedItems:*(a1 + 72) deletedItemsIdentifiers:*(a1 + 64)];
  if (*(a1 + 48))
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(*v3 + 4) fp_prettyDescription];
      v18 = *(a1 + 48);
      v19 = *(*(a1 + 32) + 48);
      *buf = 138412802;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_error_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_ERROR, "[ERROR] error when getting changes for %@: %@\n on url: %@", buf, 0x20u);
    }

    if (*(*v3 + 66) == 1)
    {
      *(*v3 + 66) = 0;
      v13 = *(*v3 + 5);
      *(*v3 + 5) = 0;
LABEL_34:

      [*v3 _fetchChangeToken];
    }
  }

  else if ((*(*v3 + 66) & 1) != 0 || *(a1 + 96) == 1)
  {
    [*v3 _fetchUpdates];
  }

LABEL_35:
  result = __fp_leave_section_Debug();
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dumpStateTo:(id)a3
{
  v4 = a3;
  v5 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v5;
  v6 = audit_token_to_pid(&atoken);
  [v4 write:@"  presenter: "];
  if (v6 == -1)
  {
    [v4 startFgColor:1];
    [v4 write:@"unknown process"];
  }

  else
  {
    if ([(FPDFilePresenter *)self isEnumeratorActive])
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    [v4 startFgColor:v7];
    v8 = *&self->_auditToken.val[4];
    *atoken.val = *self->_auditToken.val;
    *&atoken.val[4] = v8;
    v9 = FPExecutableNameForAuditToken();
    [v4 write:{@"%@[%d]", v9, v6}];
  }

  if (!self->_presenterWantsUbiqitousAttributes)
  {
    v10 = @" (ignored)";
    goto LABEL_11;
  }

  if (![(FPDFilePresenter *)self isEnumeratorActive])
  {
    v10 = @" (passive)";
LABEL_11:
    [v4 write:v10];
  }

  [v4 reset];
  v11 = [(FPDFilePresenter *)self _presentedItemDescription:1];
  [v4 write:{@" presenting %@ (%@)\n", v11, self->_filePresenterID}];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[3].var0[4];
  *retstr->var0 = *self[3].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *self->_auditToken.val = *a3->var0;
  *&self->_auditToken.val[4] = v3;
}

- (void)_enumeratorRequestDidFailWithXPCError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = a1;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: received error from the enumerator: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)receiveUpdatedItems:(uint64_t *)a1 deletedItemsIdentifiers:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__FPDFilePresenter_enumerationResultsDidChange__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x1E69E9840];
}

void __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  v2 = *(*v1 + 16);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] ┳%llx received changes", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x1E69E9840];
}

void __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  v4 = *v3;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
  v10 = *MEMORY[0x1E69E9840];
}

@end