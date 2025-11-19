@interface DDPersonAction
+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4;
- (BOOL)menuHasHeaderView;
- (CGSize)suggestedContentSize;
- (DDPersonAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (_BYTE)_appendActionsForPhoneNumbers:(void *)a3 emailAddresses:(void *)a4 class:(void *)a5 filter:(void *)a6 scheme:;
- (id)_menuActionsForBusinessWithNumber:(void *)a1;
- (id)_menuActionsForPersonWithNumber:(void *)a3 email:;
- (id)_menuHeaderBizViewController;
- (id)_trackAppleSupportAnalytics:(id)a3;
- (id)handleString;
- (id)menuActions;
- (id)menuHeaderView;
- (uint64_t)_menuHasBizHeaderView;
- (uint64_t)_phoneNumberIsBusiness:(uint64_t)a1;
- (void)dealloc;
@end

@implementation DDPersonAction

+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4
{
  v5 = a3;
  if (!a4)
  {
    goto LABEL_11;
  }

  v6 = *MEMORY[0x277D04170];
  if ((DDResultHasType() & 1) == 0)
  {
    v8 = *MEMORY[0x277D040C8];
    if (DDResultHasType())
    {
      v9 = [MEMORY[0x277D04218] resultFromCoreResult:a4];
      v18 = 0;
      [v9 getMailValue:&v18 label:0];
      v7 = v18;

      LOBYTE(v9) = dd_handleIsChatBot(v7);
      LOBYTE(v7) = v9 ^ 1;
      goto LABEL_17;
    }

    Category = DDResultGetCategory();
    if (Category != 2)
    {
      if (Category == 1)
      {
        v11 = DDResultCopyExtractedURLWithOptions();
        if (v11)
        {
          v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];

          v5 = v12;
        }
      }

LABEL_11:
      if (v5)
      {
        v13 = [v5 scheme];
        v14 = [v13 lowercaseString];

        if (v14)
        {
          v15 = DDPersonActionsSupportedSchemes();
          v16 = [v15 containsObject:v14];

          if (v16)
          {
            LODWORD(v7) = ![DDTextMessageAction isShowMessageURL:v5];

            goto LABEL_17;
          }
        }
      }

      LOBYTE(v7) = 0;
      goto LABEL_17;
    }
  }

  LOBYTE(v7) = 1;
LABEL_17:

  return v7;
}

- (DDPersonAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = _DDURLFromResult(a4);
  }

  v11 = v10;
  v17.receiver = self;
  v17.super_class = DDPersonAction;
  v12 = [(DDAction *)&v17 initWithURL:v10 result:a4 context:v9];
  v13 = v12;
  if (v12)
  {
    if (v12->super.super.super._contact)
    {
      *(&v12->_fromCNContact + 6) = 1;
    }

    else
    {
      [(DDAction *)v12 associatedResults];
      v14 = DDContactFromResult(a4, v8, v13->super.super.super._associatedVisualResults, &v13->_fromCNContact + 5);
      contact = v13->super.super.super._contact;
      v13->super.super.super._contact = v14;
    }
  }

  return v13;
}

- (void)dealloc
{
  analyticsReporter = self->_analyticsReporter;
  if (analyticsReporter && [(DDDataDetectorInterceptReporter *)analyticsReporter selectedOption]== 5)
  {
    [(DDDataDetectorInterceptReporter *)self->_analyticsReporter setSelectedOption:2];
    [(DDDataDetectorInterceptReporter *)self->_analyticsReporter log];
  }

  v4.receiver = self;
  v4.super_class = DDPersonAction;
  [(DDPreviewAction *)&v4 dealloc];
}

- (id)menuActions
{
  v3 = [(DDAction *)self url];
  if (v3)
  {
    v6 = v3;
    v7 = DDPersonActionsSupportedSchemes();
    v8 = [(NSURL *)v6 dd_phoneNumberFromValidSchemes:v7];
    v9 = v6;
    v10 = [(NSURL *)v6 dd_emailFromValidSchemes:v7];
    v11 = dd_userFriendlyEmail(v10);

    if (v8)
    {
      v4 = [(DDPersonAction *)self _menuActionsForBusinessWithNumber:v8];
      if (![(DDActionGroup *)v4 count])
      {
        v12 = [(DDPersonAction *)self _menuActionsForPersonWithNumber:v8 email:v11];

        v4 = v12;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!*(&self->_fromCNContact + 6))
    {
      v4 = 0;
      goto LABEL_4;
    }

    v9 = 0;
    v7 = DDPersonActionsSupportedSchemes();
    v11 = 0;
  }

  v4 = [(DDPersonAction *)self _menuActionsForPersonWithNumber:v11 email:?];
  v8 = 0;
LABEL_12:

  v3 = v9;
LABEL_4:

  return v4;
}

- (id)_trackAppleSupportAnalytics:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__DDPersonAction__trackAppleSupportAnalytics___block_invoke;
  v13[3] = &unk_278290CF8;
  v15 = &v16;
  v6 = v5;
  v14 = v6;
  [(DDActionGroup *)v4 enumerateActionsUsingBlock:v13];
  if (*(v17 + 24) == 1)
  {
    v7 = objc_alloc_init(DDDataDetectorInterceptReporter);
    [(DDDataDetectorInterceptReporter *)v7 setShownOptions:v6];
    v8 = *(&self->_fromCNContact + 5) || *(&self->_fromCNContact + 6);
    [(DDDataDetectorInterceptReporter *)v7 setContact:v8];
    [(DDDataDetectorInterceptReporter *)v7 setSavedContact:*(&self->_fromCNContact + 5)];
    objc_storeStrong(&self->_analyticsReporter, v7);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__DDPersonAction__trackAppleSupportAnalytics___block_invoke_2;
    v11[3] = &unk_278290D20;
    v9 = v7;
    v12 = v9;
    [(DDActionGroup *)v4 enumerateActionsUsingBlock:v11];
  }

  _Block_object_dispose(&v16, 8);

  return v4;
}

void __46__DDPersonAction__trackAppleSupportAnalytics___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = 3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [v10 url];
          v5 = [v4 absoluteString];
          v6 = [v5 lowercaseString];

          if ([v6 hasPrefix:@"http"])
          {
            v7 = 7;
          }

          else
          {
            v7 = 6;
          }

          v3 = v7;
        }

        else
        {
          v3 = 6;
        }
      }
    }
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  [v8 addObject:v9];
}

- (CGSize)suggestedContentSize
{
  v2 = 414.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_menuHeaderBizViewController
{
  menuHeaderBizViewController = self->_menuHeaderBizViewController;
  if (menuHeaderBizViewController)
  {
  }

  else
  {
    gotLoadHelper_x8__OBJC_CLASS___BCError(v2);
    v7 = *(v6 + 2736);
    objc_opt_class();
    v8 = [(BCSBusinessItem *)self->_bizItem makeBrandedHeaderViewController];
    v9 = self->_menuHeaderBizViewController;
    self->_menuHeaderBizViewController = v8;

    menuHeaderBizViewController = self->_menuHeaderBizViewController;
  }

  return menuHeaderBizViewController;
}

- (BOOL)menuHasHeaderView
{
  if (!dd_isDeviceLocked())
  {
    return 1;
  }

  return [(DDPersonAction *)self _menuHasBizHeaderView];
}

- (id)menuHeaderView
{
  if ([(DDPersonAction *)self menuHasHeaderView])
  {
    menuHeaderView = self->_menuHeaderView;
    if (menuHeaderView)
    {
      v4 = menuHeaderView;
    }

    else
    {
      v5 = [(DDPersonAction *)self _menuHeaderBizViewController];
      v6 = [v5 view];

      if (!v6)
      {
        goto LABEL_20;
      }

      v7 = objc_alloc_init(MEMORY[0x277D75D18]);
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v7 addSubview:v6];
      v8 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:3 relatedBy:0 toItem:v6 attribute:3 multiplier:1.0 constant:-16.0];
      [v8 setActive:1];

      v9 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:4 relatedBy:0 toItem:v6 attribute:4 multiplier:1.0 constant:16.0];
      [v9 setActive:1];

      v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:1 relatedBy:0 toItem:v6 attribute:1 multiplier:1.0 constant:-16.0];
      [v10 setActive:1];

      v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:2 relatedBy:0 toItem:v6 attribute:2 multiplier:1.0 constant:16.0];
      [v11 setActive:1];

      v12 = v7;
      if (!v7)
      {
LABEL_20:
        if ((dd_isDeviceLocked() & 1) != 0 || ([(DDRemoteAction *)self createMenuHeaderView], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v12 = 0;
        }

        else
        {
          v14 = v13;
          if (_UISolariumEnabled())
          {
            v15 = 10.0;
          }

          else
          {
            v15 = 0.0;
          }

          +[DDContactPreviewContainer estimatedHeight];
          v17 = v16;
          v18 = objc_alloc_init(MEMORY[0x277D75D18]);
          [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(UIView *)v18 addSubview:v14];
          v19 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:3 relatedBy:0 toItem:v14 attribute:3 multiplier:1.0 constant:v15];
          [v19 setActive:1];

          v20 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:-v15];
          [v20 setActive:1];

          v21 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:1 relatedBy:0 toItem:v14 attribute:1 multiplier:1.0 constant:0.0];
          [v21 setActive:1];

          v22 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:2 relatedBy:0 toItem:v14 attribute:2 multiplier:1.0 constant:0.0];
          [v22 setActive:1];

          v12 = v18;
          v23 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:v17];
          [v23 setActive:1];
        }
      }

      objc_storeStrong(&self->_menuHeaderView, v12);
      v4 = v12;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)handleString
{
  v2 = [[DDTelephoneNumberAction alloc] initWithURL:self->super.super.super._url result:self->super.super.super._result context:self->super.super.super._context];
  v3 = [(DDTelephoneNumberAction *)v2 handleString];

  return v3;
}

- (_BYTE)_appendActionsForPhoneNumbers:(void *)a3 emailAddresses:(void *)a4 class:(void *)a5 filter:(void *)a6 scheme:
{
  v111 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v100 = a6;
  if (!a1)
  {
    goto LABEL_65;
  }

  if ([v10 count])
  {
    if (!v100)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v13 = [v11 count];
    v98 = 0;
    if (!v100 || !v13)
    {
      goto LABEL_66;
    }
  }

  if (![a4 isAvailable])
  {
LABEL_65:
    v98 = 0;
    goto LABEL_66;
  }

  v87 = v11;
  v98 = +[DDActionGroup emptyGroup];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v86 = v10;
  obj = v10;
  v15 = [obj countByEnumeratingWithState:&v105 objects:v110 count:16];
  v89 = v12;
  v95 = a1;
  if (v15)
  {
    v16 = v15;
    v17 = *v106;
    v90 = *v106;
    v93 = v14;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v106 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v105 + 1) + 8 * i);
        v20 = [v19 value];
        v21 = [v20 stringValue];

        if (v21)
        {
          if ([v14 containsObject:v21])
          {
            v22 = v21;
          }

          else
          {
            [v14 addObject:v21];
            v23 = [a1 context];
            if (v23)
            {
              v24 = [a1 context];
              v25 = [v24 mutableCopy];
            }

            else
            {
              v25 = [MEMORY[0x277CBEB38] dictionary];
            }

            v26 = [v19 label];

            if (v26)
            {
              [v19 label];
              objc_claimAutoreleasedReturnValue();
              v27 = [OUTLINED_FUNCTION_2() localizedStringForLabel:v19];
              [v25 setObject:v27 forKey:@"ContactLabel"];
            }

            [v25 setObject:v21 forKey:@"ContactValue"];
            v28 = TUUnformattedPhoneNumber();
            v29 = v28;
            if (v28)
            {
              v30 = v28;
            }

            else
            {
              v30 = v21;
            }

            v22 = v30;

            v31 = MEMORY[0x277CBEBC0];
            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@"];
            v33 = [v31 URLWithString:v32];

            if (v12 && [DDContactUtils phoneNumber:v22 isEqualToPhoneNumber:v12])
            {
              v34 = v33;
              v35 = [a1[8] scheme];
              v36 = [v35 lowercaseString];

              if (v36 && ([a4 matchingSchemes], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "containsObject:", v36), v37, v38))
              {
                a1 = v95;
                v39 = v34;
                v34 = v95[8];
              }

              else
              {
                v39 = [a4 patchedSchemeForScheme:v36];
                if (v39)
                {
                  v40 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v95[8] resolvingAgainstBaseURL:0];
                  [v40 setScheme:v39];
                  v88 = [v40 URL];

                  a1 = v95;
                  v34 = v88;
                  v12 = v89;
                }

                else
                {
                  a1 = v95;
                }
              }

              v41 = [a4 actionsWithURL:v34 result:0 context:v25];
              OUTLINED_FUNCTION_5(v41, v42, v43, v44, v45, v46, v47, v48, v100, v22, v85, v86, v87, v88, v89, v90, v93, v95, obj, v98);
            }

            else
            {
              v34 = [a4 actionsWithURL:v33 result:0 context:v25];
              [(DDActionGroup *)v98 appendActions:v34];
            }

            v17 = v90;
            v14 = v93;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v105 objects:v110 count:16];
    }

    while (v16);
  }

  v49 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v87, "count")}];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v50 = v87;
  v51 = [v50 countByEnumeratingWithState:&v101 objects:v109 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v102;
    obja = v49;
    v94 = v50;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v102 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v101 + 1) + 8 * j);
        v56 = [v55 value];
        if (v56)
        {
          if (([v49 containsObject:v56] & 1) == 0)
          {
            [v49 addObject:v56];
            if (![v100 isEqualToString:@"mailto"] || (dd_handleIsChatBot(v56) & 1) == 0)
            {
              v57 = MEMORY[0x277CBEBC0];
              v58 = MEMORY[0x277CCACA8];
              v84 = dd_encodedEmail(v56);
              v59 = [v58 stringWithFormat:@"%@:%@"];
              v60 = [v57 URLWithString:v59];

              v61 = v95;
              v62 = [v95 context];
              if (v62)
              {
                v61 = [v95 context];
                v63 = [v61 mutableCopy];
              }

              else
              {
                v63 = [MEMORY[0x277CBEB38] dictionary];
              }

              v64 = [v55 label];

              if (v64)
              {
                [v55 label];
                objc_claimAutoreleasedReturnValue();
                v65 = [OUTLINED_FUNCTION_2() localizedStringForLabel:v61];
                [v63 setObject:v65 forKey:@"ContactLabel"];
              }

              [v63 setObject:v56 forKey:@"ContactValue"];
              if (v12 && [v56 isEqualToString:v12])
              {
                v66 = v60;
                v67 = [v95[8] scheme];
                v68 = [v67 lowercaseString];

                v91 = v68;
                if (v68 && ([a4 matchingSchemes], v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v69, "containsObject:", v68), v69, v70))
                {
                  v71 = v95;
                  v72 = v66;
                  v66 = v95[8];
                }

                else
                {
                  v72 = [a4 patchedSchemeForScheme:v68];
                  v71 = v95;
                  if (v72)
                  {
                    v73 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v95[8] resolvingAgainstBaseURL:0];
                    [v73 setScheme:v72];
                    v88 = [v73 URL];

                    v66 = v88;
                  }
                }

                v74 = [a4 actionsWithURL:v66 result:objc_msgSend(v71 context:{"result"), v63}];
                OUTLINED_FUNCTION_5(v74, v75, v76, v77, v78, v79, v80, v81, v100, v84, v85, v86, v87, v88, v89, v91, v94, v95, obja, v98);

                v12 = v89;
              }

              else
              {
                v66 = [a4 actionsWithURL:v60 result:0 context:v63];
                [(DDActionGroup *)v98 appendActions:v66];
              }

              v49 = obja;
              v50 = v94;
            }
          }
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v101 objects:v109 count:16];
    }

    while (v52);
  }

  v10 = v86;
  v11 = v87;
LABEL_66:

  v82 = *MEMORY[0x277D85DE8];

  return v98;
}

- (uint64_t)_phoneNumberIsBusiness:(uint64_t)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      v6 = *(a1 + 160);
      if (!v6 || ([v6 isEqualToString:v5] & 1) == 0)
      {
        if (dd_isLSTrusted() && ([MEMORY[0x277CC1E80] defaultWorkspace], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "applicationIsInstalled:", @"com.apple.MobileSMS"), v7, !v8))
        {
          v11 = 0;
          v10 = 0;
          v9 = 0;
        }

        else
        {
          v7 = +[DDDetectionController sharedController];
          v16 = 0;
          v9 = [v7 _businessItemForNumber:v5 messageable:a1 + 152 brand:&v16];
          v10 = v16;
          v11 = 1;
        }

        objc_storeStrong((a1 + 136), v9);
        if (v11)
        {
        }

        objc_storeStrong((a1 + 160), a2);
        v14 = *(a1 + 144);
        *(a1 + 144) = v10;
      }
    }

    else
    {
      v12 = *(a1 + 136);
      *(a1 + 136) = 0;

      v13 = *(a1 + 160);
      *(a1 + 160) = 0;

      *(a1 + 152) = 0;
    }

    a1 = *(a1 + 136) != 0;
  }

  return a1;
}

- (id)_menuActionsForBusinessWithNumber:(void *)a1
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 && [(DDPersonAction *)a1 _phoneNumberIsBusiness:v3])
  {
    v43 = v3;
    v4 = +[DDActionGroup emptyGroup];
    v5 = a1[18];
    v6 = a1[17];
    v7 = [a1 context];
    v8 = DDOnDeviceSupportActionWithBrand(v5, v6, v7);

    if (v8)
    {
      [(DDActionGroup *)v4 appendAction:v8];
    }

    v42 = v8;
    v44 = v4;
    v9 = [a1 url];
    v10 = [a1 result];
    v11 = a1;
    v12 = [a1 context];
    v13 = [DDCallKitAudioAction actionsWithURL:v9 result:v10 context:v12 defaultAppsOnly:0];

    v18 = OUTLINED_FUNCTION_6(v14, v15, v16, v17);
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0];
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(8 * i);
          v23 = [v22 callProvider];
          v24 = [v23 identifier];
          v25 = [v24 isEqualToString:@"com.apple.coretelephony"];

          if (v25)
          {
            [v22 setBizItem:v11[17]];
            [(DDActionGroup *)v44 appendAction:v22];
          }
        }

        v19 = OUTLINED_FUNCTION_6(v26, v27, v28, v29);
      }

      while (v19);
    }

    if (*(v11 + 152) == 1 && +[(DDAction *)DDTextMessageAction])
    {
      v30 = [v11[17] messagesOpenURL];
      v31 = [v11 context];
      v32 = [(DDAction *)DDTextMessageAction actionWithURL:v30 result:0 context:v31];

      [v32 setBizItem:v11[17]];
      [(DDActionGroup *)v44 appendAction:v32];
    }

    v33 = [v11 url];
    v34 = [v11 result];
    v35 = [v11 context];
    [DDCopyAction actionWithURL:v33 result:v34 context:v35];
    objc_claimAutoreleasedReturnValue();
    v36 = OUTLINED_FUNCTION_2();
    [(DDActionGroup *)v36 appendAction:?];

    if (*(v11 + 135) == 1)
    {
      v37 = [v11 context];
      [(DDAction *)DDShareAction actionWithURL:0 result:0 context:v37];
      objc_claimAutoreleasedReturnValue();
      v38 = OUTLINED_FUNCTION_2();
      [(DDActionGroup *)v38 appendAction:?];
    }

    v39 = [v11 _trackAppleSupportAnalytics:v44];

    v3 = v43;
  }

  else
  {
    v39 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)_menuActionsForPersonWithNumber:(void *)a3 email:
{
  v87[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v65 = 0;
    goto LABEL_63;
  }

  v73 = +[DDActionGroup emptyGroup];
  [(DDActionGroup *)v73 setInlinedGroup:?];
  v7 = OUTLINED_FUNCTION_3();
  isAnySimpleTelephonyScheme = dd_isAnySimpleTelephonyScheme(v7);
  v9 = [OUTLINED_FUNCTION_3() scheme];
  v72 = [v9 lowercaseString];

  v74 = a1;
  v70 = v6;
  v71 = v5;
  LODWORD(v69) = isAnySimpleTelephonyScheme;
  HIDWORD(v69) = [(DDAction *)a1 calloutFlavor];
  if (!HIDWORD(v69))
  {
    v75 = [OUTLINED_FUNCTION_3() phoneNumbers];
    v76 = [OUTLINED_FUNCTION_3() emailAddresses];
    goto LABEL_9;
  }

  if (!v5)
  {
    v75 = 0;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    v76 = 0;
    goto LABEL_9;
  }

  v10 = MEMORY[0x277CBDB20];
  v11 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v5];
  v12 = [v10 labeledValueWithLabel:0 value:v11];
  v87[0] = v12;
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];

  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  v13 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:{v6, v69}];
  v86 = v13;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];

LABEL_9:
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v82 = objc_opt_class();
  v83 = objc_opt_class();
  v84 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:3];
  v15 = [v14 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v78;
    if (v5)
    {
      v18 = v5;
    }

    else
    {
      v18 = v6;
    }

    if (v72)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = 0;
        do
        {
          if (*v78 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v5 = *(*(&v77 + 1) + 8 * v21);
          v22 = [v5 isAvailable];
          if (v22)
          {
            v30 = [(DDPersonAction *)v74 _appendActionsForPhoneNumbers:v75 emailAddresses:v76 class:v5 filter:v18 scheme:@"tel"];
            if ([(DDActionGroup *)v30 count])
            {
              v31 = [v5 matchingSchemes];
              v32 = [v31 containsObject:v72];

              v5 = (v20 + (v32 & 1));
              if (v32)
              {
                v33 = v20;
              }

              else
              {
                v33 = v19;
              }

              [(DDActionGroup *)v73 insertGroup:v30 atIndex:v33];
              ++v19;
              v20 += v32 & 1;
            }
          }

          ++v21;
        }

        while (v16 != v21);
        v34 = OUTLINED_FUNCTION_4(v22, v23, v24, v25, v26, v27, v28, v29, v69, v70, v71, v72, v73, v74, v75, v76, v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, v83, v84, v85[0]);
        v16 = v34;
      }

      while (v34);
    }

    else
    {
      v35 = 0;
      do
      {
        v36 = 0;
        do
        {
          if (*v78 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v5 = *(*(&v77 + 1) + 8 * v36);
          v37 = [v5 isAvailable];
          if (v37)
          {
            v5 = [(DDPersonAction *)v74 _appendActionsForPhoneNumbers:v75 emailAddresses:v76 class:v5 filter:v18 scheme:@"tel"];
            if ([(DDActionGroup *)v5 count])
            {
              [(DDActionGroup *)v73 insertGroup:v5 atIndex:v35++];
            }
          }

          ++v36;
        }

        while (v16 != v36);
        v45 = OUTLINED_FUNCTION_4(v37, v38, v39, v40, v41, v42, v43, v44, v69, v70, v71, v72, v73, v74, v75, v76, v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, v83, v84, v85[0]);
        v16 = v45;
      }

      while (v45);
    }
  }

  v46 = 0x280B11000;
  v6 = v70;
  if (+[(DDAction *)DDSendMailAction])
  {
    v68 = objc_opt_class();
    v46 = [(DDPersonAction *)v74 _appendActionsForPhoneNumbers:v76 emailAddresses:v68 class:v70 filter:@"mailto" scheme:?];
    if ([(DDActionGroup *)v46 count])
    {
      if ((v69 & 1) != 0 || ![v72 isEqualToString:@"mailto"])
      {
        [(DDActionGroup *)v73 appendGroup:v46];
      }

      else
      {
        [(DDActionGroup *)v73 insertGroup:v46 atIndex:0];
      }
    }
  }

  [(DDActionGroup *)v73 regroupByService];
  v47 = +[DDActionGroup emptyGroup];
  v48 = *(v74 + 144);
  if (v48)
  {
    v46 = DDOnDeviceSupportActionWithBrand(v48, *(v74 + 136), *(v74 + 56));
    if (v46)
    {
      [(DDActionGroup *)v47 appendAction:v46];
    }
  }

  if ((v69 & 0x100000000) == 0)
  {
    [(DDActionGroup *)v73 extractDefaultActions];
    objc_claimAutoreleasedReturnValue();
    v49 = OUTLINED_FUNCTION_0();
    [(DDActionGroup *)v49 appendGroup:v50];
  }

  [(DDActionGroup *)v47 appendGroup:v73];
  if ((*(v74 + 134) & 1) == 0 && +[DDAddToAddressBookAction isAvailable])
  {
    v51 = [v74 url];
    [v74 result];
    [v74 context];
    objc_claimAutoreleasedReturnValue();
    v52 = [OUTLINED_FUNCTION_1() actionWithURL:? result:? context:?];

    if (*(v74 + 135) == 1)
    {
      [(DDActionGroup *)v47 insertAction:v52 atIndex:0];
    }

    else
    {
      [(DDActionGroup *)v47 appendAction:v52];
    }
  }

  if (dd_phoneNumberResultCanBeRdarLink([v74 result]))
  {
    v53 = [v74 url];
    v54 = v53;
    if (v53)
    {
      v55 = v53;
    }

    else
    {
      v56 = [MEMORY[0x277D04218] resultFromCoreResult:{objc_msgSend(v74, "result")}];
      v55 = [v56 url];
    }

    v57 = [(NSURL *)v55 dd_rdarLinkFromTelScheme];
    if (v57)
    {
      v5 = [v74 context];
      v58 = [(DDAction *)DDOpenURLAction actionWithURL:v57 result:0 context:v5];
      [(DDActionGroup *)v47 appendAction:v58];
    }
  }

  v59 = [v74 url];
  [v74 result];
  [v74 context];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() actionWithURL:? result:? context:?];
  objc_claimAutoreleasedReturnValue();
  v60 = OUTLINED_FUNCTION_0();
  [(DDActionGroup *)v60 appendAction:v61];

  if (*(v74 + 135) == 1)
  {
    v62 = [v74 context];
    [(DDAction *)DDShareAction actionWithURL:0 result:0 context:v62];
    objc_claimAutoreleasedReturnValue();
    v63 = OUTLINED_FUNCTION_0();
    [(DDActionGroup *)v63 appendAction:v64];
  }

  v65 = [v74 _trackAppleSupportAnalytics:v47];

  v5 = v71;
LABEL_63:

  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

- (uint64_t)_menuHasBizHeaderView
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 url];
    if (v2)
    {
      v4 = DDPersonActionsSupportedSchemes();
      v3 = [(NSURL *)v2 dd_phoneNumberFromValidSchemes:v4];
    }

    else
    {
      v3 = 0;
    }

    if ([(DDPersonAction *)v1 _phoneNumberIsBusiness:v3]&& *(v1 + 136) && *(v1 + 152) == 1)
    {
      if (dd_isDeviceLocked())
      {
        v5 = [v1 _menuHeaderBizViewController];
        v1 = [v5 _canShowWhileLocked];
      }

      else
      {
        v1 = 1;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

@end