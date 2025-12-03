@interface DDPersonAction
+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result;
- (BOOL)menuHasHeaderView;
- (CGSize)suggestedContentSize;
- (DDPersonAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (_BYTE)_appendActionsForPhoneNumbers:(void *)numbers emailAddresses:(void *)addresses class:(void *)class filter:(void *)filter scheme:;
- (id)_menuActionsForBusinessWithNumber:(void *)number;
- (id)_menuActionsForPersonWithNumber:(void *)number email:;
- (id)_menuHeaderBizViewController;
- (id)_trackAppleSupportAnalytics:(id)analytics;
- (id)handleString;
- (id)menuActions;
- (id)menuHeaderView;
- (uint64_t)_menuHasBizHeaderView;
- (uint64_t)_phoneNumberIsBusiness:(uint64_t)business;
- (void)dealloc;
@end

@implementation DDPersonAction

+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result
{
  urlCopy = url;
  if (!result)
  {
    goto LABEL_11;
  }

  v6 = *MEMORY[0x277D04170];
  if ((DDResultHasType() & 1) == 0)
  {
    v8 = *MEMORY[0x277D040C8];
    if (DDResultHasType())
    {
      v9 = [MEMORY[0x277D04218] resultFromCoreResult:result];
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

          urlCopy = v12;
        }
      }

LABEL_11:
      if (urlCopy)
      {
        scheme = [urlCopy scheme];
        lowercaseString = [scheme lowercaseString];

        if (lowercaseString)
        {
          v15 = DDPersonActionsSupportedSchemes();
          v16 = [v15 containsObject:lowercaseString];

          if (v16)
          {
            LODWORD(v7) = ![DDTextMessageAction isShowMessageURL:urlCopy];

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

- (DDPersonAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  lCopy = l;
  contextCopy = context;
  if (lCopy)
  {
    v10 = lCopy;
  }

  else
  {
    v10 = _DDURLFromResult(result);
  }

  v11 = v10;
  v17.receiver = self;
  v17.super_class = DDPersonAction;
  v12 = [(DDAction *)&v17 initWithURL:v10 result:result context:contextCopy];
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
      v14 = DDContactFromResult(result, lCopy, v13->super.super.super._associatedVisualResults, &v13->_fromCNContact + 5);
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

- (id)_trackAppleSupportAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__DDPersonAction__trackAppleSupportAnalytics___block_invoke;
  v13[3] = &unk_278290CF8;
  v15 = &v16;
  v6 = array;
  v14 = v6;
  [(DDActionGroup *)analyticsCopy enumerateActionsUsingBlock:v13];
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
    [(DDActionGroup *)analyticsCopy enumerateActionsUsingBlock:v11];
  }

  _Block_object_dispose(&v16, 8);

  return analyticsCopy;
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
    makeBrandedHeaderViewController = [(BCSBusinessItem *)self->_bizItem makeBrandedHeaderViewController];
    v9 = self->_menuHeaderBizViewController;
    self->_menuHeaderBizViewController = makeBrandedHeaderViewController;

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
      _menuHeaderBizViewController = [(DDPersonAction *)self _menuHeaderBizViewController];
      view = [_menuHeaderBizViewController view];

      if (!view)
      {
        goto LABEL_20;
      }

      v7 = objc_alloc_init(MEMORY[0x277D75D18]);
      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v7 addSubview:view];
      v8 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:-16.0];
      [v8 setActive:1];

      v9 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:4 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:16.0];
      [v9 setActive:1];

      v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:1 relatedBy:0 toItem:view attribute:1 multiplier:1.0 constant:-16.0];
      [v10 setActive:1];

      v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:2 relatedBy:0 toItem:view attribute:2 multiplier:1.0 constant:16.0];
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
  handleString = [(DDTelephoneNumberAction *)v2 handleString];

  return handleString;
}

- (_BYTE)_appendActionsForPhoneNumbers:(void *)numbers emailAddresses:(void *)addresses class:(void *)class filter:(void *)filter scheme:
{
  v111 = *MEMORY[0x277D85DE8];
  v10 = a2;
  numbersCopy = numbers;
  classCopy = class;
  filterCopy = filter;
  if (!self)
  {
    goto LABEL_65;
  }

  if ([v10 count])
  {
    if (!filterCopy)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v13 = [numbersCopy count];
    v98 = 0;
    if (!filterCopy || !v13)
    {
      goto LABEL_66;
    }
  }

  if (![addresses isAvailable])
  {
LABEL_65:
    v98 = 0;
    goto LABEL_66;
  }

  v87 = numbersCopy;
  v98 = +[DDActionGroup emptyGroup];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v86 = v10;
  obj = v10;
  v15 = [obj countByEnumeratingWithState:&v105 objects:v110 count:16];
  v89 = classCopy;
  selfCopy = self;
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
        value = [v19 value];
        stringValue = [value stringValue];

        if (stringValue)
        {
          if ([v14 containsObject:stringValue])
          {
            v22 = stringValue;
          }

          else
          {
            [v14 addObject:stringValue];
            context = [self context];
            if (context)
            {
              context2 = [self context];
              dictionary = [context2 mutableCopy];
            }

            else
            {
              dictionary = [MEMORY[0x277CBEB38] dictionary];
            }

            label = [v19 label];

            if (label)
            {
              [v19 label];
              objc_claimAutoreleasedReturnValue();
              v27 = [OUTLINED_FUNCTION_2() localizedStringForLabel:v19];
              [dictionary setObject:v27 forKey:@"ContactLabel"];
            }

            [dictionary setObject:stringValue forKey:@"ContactValue"];
            v28 = TUUnformattedPhoneNumber();
            v29 = v28;
            if (v28)
            {
              v30 = v28;
            }

            else
            {
              v30 = stringValue;
            }

            v22 = v30;

            v31 = MEMORY[0x277CBEBC0];
            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@"];
            v33 = [v31 URLWithString:v32];

            if (classCopy && [DDContactUtils phoneNumber:v22 isEqualToPhoneNumber:classCopy])
            {
              v34 = v33;
              scheme = [self[8] scheme];
              lowercaseString = [scheme lowercaseString];

              if (lowercaseString && ([addresses matchingSchemes], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "containsObject:", lowercaseString), v37, v38))
              {
                self = selfCopy;
                v39 = v34;
                v34 = selfCopy[8];
              }

              else
              {
                v39 = [addresses patchedSchemeForScheme:lowercaseString];
                if (v39)
                {
                  v40 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:selfCopy[8] resolvingAgainstBaseURL:0];
                  [v40 setScheme:v39];
                  v88 = [v40 URL];

                  self = selfCopy;
                  v34 = v88;
                  classCopy = v89;
                }

                else
                {
                  self = selfCopy;
                }
              }

              v41 = [addresses actionsWithURL:v34 result:0 context:dictionary];
              OUTLINED_FUNCTION_5(v41, v42, v43, v44, v45, v46, v47, v48, filterCopy, v22, v85, v86, v87, v88, v89, v90, v93, selfCopy, obj, v98);
            }

            else
            {
              v34 = [addresses actionsWithURL:v33 result:0 context:dictionary];
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
        value2 = [v55 value];
        if (value2)
        {
          if (([v49 containsObject:value2] & 1) == 0)
          {
            [v49 addObject:value2];
            if (![filterCopy isEqualToString:@"mailto"] || (dd_handleIsChatBot(value2) & 1) == 0)
            {
              v57 = MEMORY[0x277CBEBC0];
              v58 = MEMORY[0x277CCACA8];
              v84 = dd_encodedEmail(value2);
              v59 = [v58 stringWithFormat:@"%@:%@"];
              v60 = [v57 URLWithString:v59];

              context4 = selfCopy;
              context3 = [selfCopy context];
              if (context3)
              {
                context4 = [selfCopy context];
                dictionary2 = [context4 mutableCopy];
              }

              else
              {
                dictionary2 = [MEMORY[0x277CBEB38] dictionary];
              }

              label2 = [v55 label];

              if (label2)
              {
                [v55 label];
                objc_claimAutoreleasedReturnValue();
                v65 = [OUTLINED_FUNCTION_2() localizedStringForLabel:context4];
                [dictionary2 setObject:v65 forKey:@"ContactLabel"];
              }

              [dictionary2 setObject:value2 forKey:@"ContactValue"];
              if (classCopy && [value2 isEqualToString:classCopy])
              {
                v66 = v60;
                scheme2 = [selfCopy[8] scheme];
                lowercaseString2 = [scheme2 lowercaseString];

                v91 = lowercaseString2;
                if (lowercaseString2 && ([addresses matchingSchemes], v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v69, "containsObject:", lowercaseString2), v69, v70))
                {
                  v71 = selfCopy;
                  v72 = v66;
                  v66 = selfCopy[8];
                }

                else
                {
                  v72 = [addresses patchedSchemeForScheme:lowercaseString2];
                  v71 = selfCopy;
                  if (v72)
                  {
                    v73 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:selfCopy[8] resolvingAgainstBaseURL:0];
                    [v73 setScheme:v72];
                    v88 = [v73 URL];

                    v66 = v88;
                  }
                }

                v74 = [addresses actionsWithURL:v66 result:objc_msgSend(v71 context:{"result"), dictionary2}];
                OUTLINED_FUNCTION_5(v74, v75, v76, v77, v78, v79, v80, v81, filterCopy, v84, v85, v86, v87, v88, v89, v91, v94, selfCopy, obja, v98);

                classCopy = v89;
              }

              else
              {
                v66 = [addresses actionsWithURL:v60 result:0 context:dictionary2];
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
  numbersCopy = v87;
LABEL_66:

  v82 = *MEMORY[0x277D85DE8];

  return v98;
}

- (uint64_t)_phoneNumberIsBusiness:(uint64_t)business
{
  v4 = a2;
  v5 = v4;
  if (business)
  {
    if (v4)
    {
      v6 = *(business + 160);
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
          v9 = [v7 _businessItemForNumber:v5 messageable:business + 152 brand:&v16];
          v10 = v16;
          v11 = 1;
        }

        objc_storeStrong((business + 136), v9);
        if (v11)
        {
        }

        objc_storeStrong((business + 160), a2);
        v14 = *(business + 144);
        *(business + 144) = v10;
      }
    }

    else
    {
      v12 = *(business + 136);
      *(business + 136) = 0;

      v13 = *(business + 160);
      *(business + 160) = 0;

      *(business + 152) = 0;
    }

    business = *(business + 136) != 0;
  }

  return business;
}

- (id)_menuActionsForBusinessWithNumber:(void *)number
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (number && [(DDPersonAction *)number _phoneNumberIsBusiness:v3])
  {
    v43 = v3;
    v4 = +[DDActionGroup emptyGroup];
    v5 = number[18];
    v6 = number[17];
    context = [number context];
    v8 = DDOnDeviceSupportActionWithBrand(v5, v6, context);

    if (v8)
    {
      [(DDActionGroup *)v4 appendAction:v8];
    }

    v42 = v8;
    v44 = v4;
    v9 = [number url];
    result = [number result];
    numberCopy = number;
    context2 = [number context];
    v13 = [DDCallKitAudioAction actionsWithURL:v9 result:result context:context2 defaultAppsOnly:0];

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
          callProvider = [v22 callProvider];
          identifier = [callProvider identifier];
          v25 = [identifier isEqualToString:@"com.apple.coretelephony"];

          if (v25)
          {
            [v22 setBizItem:numberCopy[17]];
            [(DDActionGroup *)v44 appendAction:v22];
          }
        }

        v19 = OUTLINED_FUNCTION_6(v26, v27, v28, v29);
      }

      while (v19);
    }

    if (*(numberCopy + 152) == 1 && +[(DDAction *)DDTextMessageAction])
    {
      messagesOpenURL = [numberCopy[17] messagesOpenURL];
      context3 = [numberCopy context];
      v32 = [(DDAction *)DDTextMessageAction actionWithURL:messagesOpenURL result:0 context:context3];

      [v32 setBizItem:numberCopy[17]];
      [(DDActionGroup *)v44 appendAction:v32];
    }

    v33 = [numberCopy url];
    result2 = [numberCopy result];
    context4 = [numberCopy context];
    [DDCopyAction actionWithURL:v33 result:result2 context:context4];
    objc_claimAutoreleasedReturnValue();
    v36 = OUTLINED_FUNCTION_2();
    [(DDActionGroup *)v36 appendAction:?];

    if (*(numberCopy + 135) == 1)
    {
      context5 = [numberCopy context];
      [(DDAction *)DDShareAction actionWithURL:0 result:0 context:context5];
      objc_claimAutoreleasedReturnValue();
      v38 = OUTLINED_FUNCTION_2();
      [(DDActionGroup *)v38 appendAction:?];
    }

    v39 = [numberCopy _trackAppleSupportAnalytics:v44];

    v3 = v43;
  }

  else
  {
    v39 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)_menuActionsForPersonWithNumber:(void *)number email:
{
  v87[1] = *MEMORY[0x277D85DE8];
  context = a2;
  numberCopy = number;
  if (!self)
  {
    v65 = 0;
    goto LABEL_63;
  }

  v73 = +[DDActionGroup emptyGroup];
  [(DDActionGroup *)v73 setInlinedGroup:?];
  v7 = OUTLINED_FUNCTION_3();
  isAnySimpleTelephonyScheme = dd_isAnySimpleTelephonyScheme(v7);
  scheme = [OUTLINED_FUNCTION_3() scheme];
  lowercaseString = [scheme lowercaseString];

  selfCopy = self;
  v70 = numberCopy;
  v71 = context;
  LODWORD(v69) = isAnySimpleTelephonyScheme;
  HIDWORD(v69) = [(DDAction *)self calloutFlavor];
  if (!HIDWORD(v69))
  {
    phoneNumbers = [OUTLINED_FUNCTION_3() phoneNumbers];
    emailAddresses = [OUTLINED_FUNCTION_3() emailAddresses];
    goto LABEL_9;
  }

  if (!context)
  {
    phoneNumbers = 0;
    if (numberCopy)
    {
      goto LABEL_5;
    }

LABEL_8:
    emailAddresses = 0;
    goto LABEL_9;
  }

  v10 = MEMORY[0x277CBDB20];
  v11 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:context];
  v12 = [v10 labeledValueWithLabel:0 value:v11];
  v87[0] = v12;
  phoneNumbers = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];

  if (!numberCopy)
  {
    goto LABEL_8;
  }

LABEL_5:
  v13 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:{numberCopy, v69}];
  v86 = v13;
  emailAddresses = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];

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
    if (context)
    {
      v18 = context;
    }

    else
    {
      v18 = numberCopy;
    }

    if (lowercaseString)
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

          context = *(*(&v77 + 1) + 8 * v21);
          isAvailable = [context isAvailable];
          if (isAvailable)
          {
            v30 = [(DDPersonAction *)selfCopy _appendActionsForPhoneNumbers:phoneNumbers emailAddresses:emailAddresses class:context filter:v18 scheme:@"tel"];
            if ([(DDActionGroup *)v30 count])
            {
              matchingSchemes = [context matchingSchemes];
              v32 = [matchingSchemes containsObject:lowercaseString];

              context = (v20 + (v32 & 1));
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
        v34 = OUTLINED_FUNCTION_4(isAvailable, v23, v24, v25, v26, v27, v28, v29, v69, v70, v71, lowercaseString, v73, selfCopy, phoneNumbers, emailAddresses, v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, v83, v84, v85[0]);
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

          context = *(*(&v77 + 1) + 8 * v36);
          isAvailable2 = [context isAvailable];
          if (isAvailable2)
          {
            context = [(DDPersonAction *)selfCopy _appendActionsForPhoneNumbers:phoneNumbers emailAddresses:emailAddresses class:context filter:v18 scheme:@"tel"];
            if ([(DDActionGroup *)context count])
            {
              [(DDActionGroup *)v73 insertGroup:context atIndex:v35++];
            }
          }

          ++v36;
        }

        while (v16 != v36);
        v45 = OUTLINED_FUNCTION_4(isAvailable2, v38, v39, v40, v41, v42, v43, v44, v69, v70, v71, lowercaseString, v73, selfCopy, phoneNumbers, emailAddresses, v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, v83, v84, v85[0]);
        v16 = v45;
      }

      while (v45);
    }
  }

  v46 = 0x280B11000;
  numberCopy = v70;
  if (+[(DDAction *)DDSendMailAction])
  {
    v68 = objc_opt_class();
    v46 = [(DDPersonAction *)selfCopy _appendActionsForPhoneNumbers:emailAddresses emailAddresses:v68 class:v70 filter:@"mailto" scheme:?];
    if ([(DDActionGroup *)v46 count])
    {
      if ((v69 & 1) != 0 || ![lowercaseString isEqualToString:@"mailto"])
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
  v48 = *(selfCopy + 144);
  if (v48)
  {
    v46 = DDOnDeviceSupportActionWithBrand(v48, *(selfCopy + 136), *(selfCopy + 56));
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
  if ((*(selfCopy + 134) & 1) == 0 && +[DDAddToAddressBookAction isAvailable])
  {
    v51 = [selfCopy url];
    [selfCopy result];
    [selfCopy context];
    objc_claimAutoreleasedReturnValue();
    v52 = [OUTLINED_FUNCTION_1() actionWithURL:? result:? context:?];

    if (*(selfCopy + 135) == 1)
    {
      [(DDActionGroup *)v47 insertAction:v52 atIndex:0];
    }

    else
    {
      [(DDActionGroup *)v47 appendAction:v52];
    }
  }

  if (dd_phoneNumberResultCanBeRdarLink([selfCopy result]))
  {
    v53 = [selfCopy url];
    v54 = v53;
    if (v53)
    {
      v55 = v53;
    }

    else
    {
      v56 = [MEMORY[0x277D04218] resultFromCoreResult:{objc_msgSend(selfCopy, "result")}];
      v55 = [v56 url];
    }

    dd_rdarLinkFromTelScheme = [(NSURL *)v55 dd_rdarLinkFromTelScheme];
    if (dd_rdarLinkFromTelScheme)
    {
      context = [selfCopy context];
      v58 = [(DDAction *)DDOpenURLAction actionWithURL:dd_rdarLinkFromTelScheme result:0 context:context];
      [(DDActionGroup *)v47 appendAction:v58];
    }
  }

  v59 = [selfCopy url];
  [selfCopy result];
  [selfCopy context];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() actionWithURL:? result:? context:?];
  objc_claimAutoreleasedReturnValue();
  v60 = OUTLINED_FUNCTION_0();
  [(DDActionGroup *)v60 appendAction:v61];

  if (*(selfCopy + 135) == 1)
  {
    context2 = [selfCopy context];
    [(DDAction *)DDShareAction actionWithURL:0 result:0 context:context2];
    objc_claimAutoreleasedReturnValue();
    v63 = OUTLINED_FUNCTION_0();
    [(DDActionGroup *)v63 appendAction:v64];
  }

  v65 = [selfCopy _trackAppleSupportAnalytics:v47];

  context = v71;
LABEL_63:

  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

- (uint64_t)_menuHasBizHeaderView
{
  selfCopy = self;
  if (self)
  {
    v2 = [self url];
    if (v2)
    {
      v4 = DDPersonActionsSupportedSchemes();
      v3 = [(NSURL *)v2 dd_phoneNumberFromValidSchemes:v4];
    }

    else
    {
      v3 = 0;
    }

    if ([(DDPersonAction *)selfCopy _phoneNumberIsBusiness:v3]&& *(selfCopy + 136) && *(selfCopy + 152) == 1)
    {
      if (dd_isDeviceLocked())
      {
        _menuHeaderBizViewController = [selfCopy _menuHeaderBizViewController];
        selfCopy = [_menuHeaderBizViewController _canShowWhileLocked];
      }

      else
      {
        selfCopy = 1;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end