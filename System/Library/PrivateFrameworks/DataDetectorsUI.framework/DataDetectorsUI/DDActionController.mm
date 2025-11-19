@interface DDActionController
+ (BOOL)presentingBaseView:(id)a3 isLargeEnoughForAction:(id)a4;
- (BOOL)actionIsCancellable;
- (BOOL)facetimeAvailable;
- (BOOL)isPresentingInPopover;
- (DDActionController)init;
- (id)actionsForURL:(id)a3 result:(__DDResult *)a4 enclosingResult:(__DDResult *)a5 context:(id)a6;
- (id)defaultActionForURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (void)_cleanup;
- (void)_complete;
- (void)_didDismissActionViewController;
- (void)_dismissCurrentViewControllerOurselves;
- (void)_presentController:(id)a3;
- (void)_presentCurrentViewControllerOurselves;
- (void)_willPresentViewController;
- (void)action:(id)a3 viewControllerReady:(id)a4;
- (void)actionDidFinish:(id)a3 shouldDismiss:(BOOL)a4;
- (void)cancelAction;
- (void)cleanupNoDismiss;
- (void)dealloc;
- (void)dismissCurrentController;
- (void)failedToPrepareViewControllerForAction:(id)a3;
- (void)performAction:(id)a3;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setAlertController:(id)a3;
- (void)tellDelegateActionDidFinishShouldDismiss:(BOOL)a3;
@end

@implementation DDActionController

- (DDActionController)init
{
  v7.receiver = self;
  v7.super_class = DDActionController;
  v2 = [(DDActionController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    presentedViewController = v2->_presentedViewController;
    v2->_presentedViewController = 0;

    currentBaseViewController = v3->_currentBaseViewController;
    v3->_currentBaseViewController = 0;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_idsListenerID)
  {
    Helper_x8__OBJC_CLASS___IDSServiceAvailabilityController = gotLoadHelper_x8__OBJC_CLASS___IDSServiceAvailabilityController(v2);
    v6 = [*(v5 + 1920) sharedInstance];
    idsListenerID = self->_idsListenerID;
    Helper_x8__IDSServiceNameFaceTime = gotLoadHelper_x8__IDSServiceNameFaceTime(v8);
    v11 = **(v10 + 1688);
    [v12 removeListenerID:Helper_x8__IDSServiceNameFaceTime forService:?];
  }

  v13.receiver = self;
  v13.super_class = DDActionController;
  [(DDActionController *)&v13 dealloc];
}

- (void)_complete
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, a2);
    v4 = self->_completion;
    self->_completion = 0;
  }
}

- (void)_cleanup
{
  [(DDActionController *)self _complete];
  presentedViewController = self->_presentedViewController;
  self->_presentedViewController = 0;

  currentBaseViewController = self->_currentBaseViewController;
  self->_currentBaseViewController = 0;

  alertController = self->_alertController;
  self->_alertController = 0;

  [(DDActionController *)self setCurrentAction:0];
  [(DDActionController *)self setBaseView:0];
  [(DDActionController *)self setInteractionDelegate:0];
  originalWindow = self->_originalWindow;
  self->_originalWindow = 0;
}

- (BOOL)facetimeAvailable
{
  idsListenerID = self->_idsListenerID;
  gotLoadHelper_x22__OBJC_CLASS___IDSServiceAvailabilityController(v3);
  if (v7)
  {
    Helper_x8__IDSServiceNameFaceTime = gotLoadHelper_x8__IDSServiceNameFaceTime(v6);
    v10 = **(v9 + 1688);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = facetimeAvailable_i++;
    v13 = [v11 initWithFormat:@"com.apple.datadetectors.%d", v12];
    v14 = self->_idsListenerID;
    self->_idsListenerID = v13;

    v15 = [*(v2 + 1920) sharedInstance];
    v16 = self->_idsListenerID;
    v18 = gotLoadHelper_x8__IDSServiceNameFaceTime(v17);
    v10 = **(v19 + 1688);
    [v20 addListenerID:v18 forService:?];
  }

  v21 = [*(v2 + 1920) sharedInstance];
  v22 = [v21 availabilityForListenerID:self->_idsListenerID forService:v10] == 1;

  return v22;
}

- (id)actionsForURL:(id)a3 result:(__DDResult *)a4 enclosingResult:(__DDResult *)a5 context:(id)a6
{
  v143[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [v11 objectForKeyedSubscript:@"defaultActionOnly"];

  if (!(v10 | a4))
  {
    v13 = [v11 objectForKeyedSubscript:@"Contact"];
    if (v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([DDAddToAddressBookAction actionAvailableForContact:v13])
      {
        v15 = [(DDAction *)[DDAddToAddressBookAction alloc] initWithURL:0 result:0 context:v11];
        [v14 addObject:v15];

        if (v12)
        {
          goto LABEL_37;
        }
      }

      if ([(DDOpenMapsAction *)DDDirectionsAction actionAvailableForContact:v13])
      {
        v16 = [(DDAction *)[DDDirectionsAction alloc] initWithURL:0 result:0 context:v11];
        [v14 addObject:v16];

        if (v12)
        {
          goto LABEL_37;
        }
      }

      if ([DDOpenMapsAction actionAvailableForContact:v13])
      {
        v17 = [(DDAction *)[DDOpenMapsAction alloc] initWithURL:0 result:0 context:v11];
        [v14 addObject:v17];
      }

      if ([v14 count])
      {
        goto LABEL_37;
      }
    }

    v18 = [v11 objectForKeyedSubscript:@"ICS"];
    if ([v18 length])
    {
      v19 = [DDAddEventAction cachedEventForICSString:v18];
      if (v19)
      {
        v20 = [DDAction contextByAddingValue:v19 toKey:0x282C1E0C8 inContext:v11];

        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (!+[DDAddEventAction isAvailable](DDAddEventAction, "isAvailable") || (v21 = -[DDAction initWithURL:result:context:]([DDAddEventAction alloc], "initWithURL:result:context:", 0, 0, v20), [v14 addObject:v21], v21, !v12))
        {
          if (!+[DDOpenMapsAction actionAvailableForCachedEvent:](DDDirectionsAction, "actionAvailableForCachedEvent:", v19) || (v22 = -[DDAction initWithURL:result:context:]([DDDirectionsAction alloc], "initWithURL:result:context:", 0, 0, v20), [v14 addObject:v22], v22, !v12))
          {
            if (!+[DDOpenMapsAction actionAvailableForCachedEvent:](DDOpenMapsAction, "actionAvailableForCachedEvent:", v19) || (v23 = -[DDAction initWithURL:result:context:]([DDOpenMapsAction alloc], "initWithURL:result:context:", 0, 0, v20), [v14 addObject:v23], v23, !v12))
            {
              if (![v14 count])
              {

                v14 = 0;
              }
            }
          }
        }

        v11 = v20;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_37:
    goto LABEL_136;
  }

  if (![DDMessagesCustomAction handlesUrl:v10 result:a4])
  {
    if ([DDChatBotAction handlesUrl:v10 result:a4])
    {
      v25 = [(DDAction *)[DDChatBotAction alloc] initWithURL:v10 result:a4 context:v11];
      v14 = [(DDChatBotAction *)v25 sheetActions];
      goto LABEL_135;
    }

    v26 = [v10 scheme];
    v25 = [v26 lowercaseString];

    if (a4)
    {
      Category = DDResultGetCategory();
      if (!v25)
      {
        goto LABEL_44;
      }

      if (Category == 2)
      {
LABEL_40:
        v30 = [DDTextMessageAction supportsURL:v10];
        v31 = [MEMORY[0x277CBEB18] array];
        if (v30)
        {
          if (v12)
          {
            v32 = [[DDTextMessageAction alloc] initWithURL:v10 result:a4 context:v11];
            v143[0] = v32;
            v33 = MEMORY[0x277CBEA60];
            v34 = v143;
LABEL_43:
            v14 = [v33 arrayWithObjects:v34 count:1];

LABEL_134:
            goto LABEL_135;
          }

          v47 = [DDTextMessageAction actionsWithURL:v10 result:a4 context:v11];
          [v31 addObjectsFromArray:v47];
        }

        else
        {
          if (dd_phoneNumberResultCanBeRdarLink(a4))
          {
            v42 = [(NSURL *)v10 dd_rdarLinkFromTelScheme];
            if (v42)
            {
              [(DDAction *)DDOpenURLAction actionWithURL:v42 result:0 context:v11];
              v44 = v43 = v10;
              [v31 addObject:v44];

              v10 = v43;
              if (v12)
              {

                goto LABEL_131;
              }
            }
          }

          if (v12)
          {
            v48 = [DDCallKitAudioAction defaultActionWithURL:v10 result:a4 context:v11];
            if (v48 || ([(DDCallKitAudioAction *)DDCallKitVideoAction defaultActionWithURL:v10 result:a4 context:v11], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              *(v48 + 85) = 1;
LABEL_130:
              v72 = v48;
              [v31 addObject:v48];

              goto LABEL_131;
            }

            goto LABEL_109;
          }
        }

        v129 = v10;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v49 = [DDCallKitAudioAction actionsWithURL:v10 result:a4 context:v11 defaultAppsOnly:1];
        v50 = [v49 countByEnumeratingWithState:&v134 objects:v142 count:16];
        v128 = v30;
        if (v50)
        {
          v51 = v50;
          v52 = *v135;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v135 != v52)
              {
                objc_enumerationMutation(v49);
              }

              *(*(*(&v134 + 1) + 8 * i) + 85) = 1;
              [v31 addObject:?];
            }

            v51 = [v49 countByEnumeratingWithState:&v134 objects:v142 count:16];
          }

          while (v51);

          v10 = v129;
        }

        else
        {
        }

        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v57 = [(DDCallKitAudioAction *)DDCallKitVideoAction actionsWithURL:v10 result:a4 context:v11 defaultAppsOnly:1];
        v58 = [v57 countByEnumeratingWithState:&v130 objects:v141 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v131;
          do
          {
            for (j = 0; j != v59; ++j)
            {
              if (*v131 != v60)
              {
                objc_enumerationMutation(v57);
              }

              *(*(*(&v130 + 1) + 8 * j) + 85) = 1;
              [v31 addObject:?];
            }

            v59 = [v57 countByEnumeratingWithState:&v130 objects:v141 count:16];
          }

          while (v59);
        }

        v10 = v129;
        LOBYTE(v30) = v128;
LABEL_109:
        if (!v30)
        {
          v62 = +[DDDetectionController sharedController];
          v63 = [v62 shouldIgnoreMessageActionForURL:v10];

          if ((v63 & 1) == 0)
          {
            if (v12)
            {
              v32 = [[DDTextMessageAction alloc] initWithURL:v10 result:a4 context:v11];
              v140 = v32;
              v33 = MEMORY[0x277CBEA60];
              v34 = &v140;
              goto LABEL_43;
            }

            v70 = [DDTextMessageAction actionsWithURL:v10 result:a4 context:v11];
            [v31 addObjectsFromArray:v70];
          }
        }

        if (!+[DDAddToAddressBookAction isAvailable](DDAddToAddressBookAction, "isAvailable") || (+[DDAddressAction actionWithURL:result:enclosingResult:context:](DDAddToAddressBookAction, "actionWithURL:result:enclosingResult:context:", v10, a4, a5, v11), v71 = objc_claimAutoreleasedReturnValue(), [v31 addObject:v71], v71, !v12))
        {
          v48 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
          goto LABEL_130;
        }

LABEL_131:
        v73 = [MEMORY[0x277CCA8D8] mainBundle];
        v74 = [v73 bundleIdentifier];
        v75 = [v74 isEqualToString:@"com.apple.MobileSMS"];

        if (v75)
        {
          v76 = [v31 objectAtIndex:0];
          [v76 addToRecents];
        }

        v14 = v31;
        goto LABEL_134;
      }
    }

    else if (!v25)
    {
      goto LABEL_44;
    }

    if (dd_isAnySimpleTelephonyScheme(v10))
    {
      goto LABEL_40;
    }

LABEL_44:
    if ((([v10 isFaceTimeURL] & 1) != 0 || objc_msgSend(v10, "isFaceTimePromptURL")) && -[DDActionController facetimeAvailable](self, "facetimeAvailable") || ((objc_msgSend(v10, "isFaceTimeAudioURL") & 1) != 0 || objc_msgSend(v10, "isFaceTimeAudioPromptURL")) && -[DDActionController facetimeAvailable](self, "facetimeAvailable"))
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (+[DDFaceTimeAction isAvailable])
      {
        v35 = [(DDAction *)DDFaceTimeAction actionWithURL:v10 result:a4 context:v11];
        [v14 addObject:v35];

        if (v12)
        {
          goto LABEL_54;
        }
      }

      if (+[DDFaceTimeAudioAction isAvailable](DDFaceTimeAudioAction, "isAvailable") && (+[DDAction actionWithURL:result:context:](DDFaceTimeAudioAction, "actionWithURL:result:context:", v10, a4, v11), v36 = objc_claimAutoreleasedReturnValue(), [v14 addObject:v36], v36, v12))
      {
LABEL_54:
        v37 = v14;
      }

      else
      {
        v45 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
        if (v45)
        {
          [v14 addObject:v45];
        }

        v46 = v14;
      }

      goto LABEL_135;
    }

    if ([(DDChatBotAction *)v25 isEqualToString:@"mailto"])
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([DDTextMessageAction supportsURL:v10])
      {
        v38 = [[DDTextMessageAction alloc] initWithURL:v10 result:a4 context:v11];
        if (v38)
        {
          [v14 addObject:v38];
        }
      }

      v31 = [(DDAction *)DDSendMailAction actionWithURL:v10 result:a4 context:v11];
      if (v31)
      {
        [v14 addObject:v31];
      }

      v39 = [DDCallKitAudioAction actionsWithURL:v10 result:a4 context:v11 defaultAppsOnly:1];
      if (v39)
      {
        [v14 addObjectsFromArray:v39];
      }

      if (!v12 && +[DDAddToAddressBookAction isAvailable])
      {
        v40 = [(DDAddressAction *)DDAddToAddressBookAction actionWithURL:v10 result:a4 enclosingResult:a5 context:v11];
        if (v40)
        {
          [v14 addObject:v40];
        }
      }

      v41 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
      if (v41)
      {
        [v14 addObject:v41];
      }

      goto LABEL_134;
    }

    if ([(DDChatBotAction *)v25 isEqualToString:@"upi"])
    {
LABEL_80:
      v14 = [DDUPIAction actionsWithURL:v10 result:a4 context:v11];
      goto LABEL_135;
    }

    if ([v10 dd_isMaps:0] && DDExtractMapLocationInformationFromURL(v10, 0, 0))
    {
      v54 = MEMORY[0x277CBEA60];
      v55 = [(DDAction *)DDDirectionsAction actionWithURL:v10 result:a4 context:v11];
      if (v12)
      {
        v56 = 0;
      }

      else
      {
        v56 = [(DDAction *)DDOpenMapsAction actionWithURL:v10 result:a4 context:v11];
      }

      v82 = DDCopyAction;
      goto LABEL_149;
    }

    if ([DDClientPreviewAction clientCanPerformActionWithUrl:v10])
    {
      v28 = [(DDAction *)DDClientPreviewAction actionWithURL:v10 result:0 context:v11];
      v139 = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
      goto LABEL_32;
    }

    if (a4)
    {
      v64 = DDResultGetCategory();
      Type = DDResultGetType();
      if (v64 <= 3)
      {
        if (v64 != 1)
        {
          if (v64 == 3)
          {
            v79 = +[DDAddToAddressBookAction isAvailable];
            v80 = MEMORY[0x277CBEA60];
            v31 = [(DDAction *)DDDirectionsAction actionWithURL:v10 result:a4 context:v11];
            if (v79)
            {
              if (v12)
              {
                v81 = 0;
              }

              else
              {
                v81 = [(DDAction *)DDOpenMapsAction actionWithURL:v10 result:a4 context:v11];
              }

              v108 = [(DDAddressAction *)DDAddToAddressBookAction actionWithURL:v10 result:a4 enclosingResult:a5 context:v11];
              v109 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
              v14 = [v80 arrayWithObjects:{v31, v81, v108, v109, 0}];

              if (!v12)
              {
              }

              goto LABEL_135;
            }

            if (v12)
            {
              v97 = 0;
            }

            else
            {
              v97 = [(DDAction *)DDOpenMapsAction actionWithURL:v10 result:a4 context:v11];
            }

            v110 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
            v14 = [v80 arrayWithObjects:{v31, v97, v110, 0}];

            if (!v12)
            {
            }

            goto LABEL_134;
          }

LABEL_177:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [DDActionController actionsForURL:a4 result:v10 enclosingResult:? context:?];
          }

          v14 = [MEMORY[0x277CBEA60] array];
          goto LABEL_135;
        }

        if (!v10)
        {
          v10 = _DDURLFromResult(a4);
        }

        if (![DDNewsPreviewAction handlesUrl:v10 result:a4]&& ![DDURLPreviewAction handlesUrl:v10 result:a4])
        {
          v100 = [v10 scheme];
          v101 = [v100 lowercaseString];
          v102 = [v101 isEqualToString:@"upi"];

          if (v102)
          {
            goto LABEL_80;
          }

          v103 = MEMORY[0x277CBEA60];
          v104 = DDOpenURLAction;
          goto LABEL_196;
        }

        v95 = +[DDAddToReadingListAction isAvailable];
        v54 = MEMORY[0x277CBEA60];
        if (v95)
        {
          v55 = [(DDAction *)DDAddToReadingListAction actionWithURL:v10 result:a4 context:v11];
          if (v12)
          {
            v56 = 0;
          }

          else
          {
            v56 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
          }

          v82 = DDShareAction;
LABEL_149:
          v83 = [(__objc2_class *)v82 actionWithURL:v10 result:a4 context:v11];
          v14 = [v54 arrayWithObjects:{v55, v56, v83, 0}];

          if (!v12)
          {
          }

          goto LABEL_151;
        }

        v98 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
        if (!v12)
        {
          v99 = DDShareAction;
          goto LABEL_213;
        }
      }

      else
      {
        if (v64 == 4)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (+[(DDAddEventAction *)DDCreateEventAction])
          {
            v84 = [(DDAction *)DDCreateEventAction actionWithURL:v10 result:a4 context:v11];
            [v14 addObject:v84];

            if (v12)
            {
              goto LABEL_135;
            }
          }

          if (+[DDCreateReminderAction isAvailable])
          {
            v85 = [(DDAction *)DDCreateReminderAction actionWithURL:v10 result:a4 context:v11];
            [v14 addObject:v85];

            if (v12)
            {
              goto LABEL_135;
            }
          }

          if (+[DDEventsAction isAvailable])
          {
            v86 = [(DDAction *)DDEventsAction actionWithURL:v10 result:a4 context:v11];
            [v14 addObject:v86];

            if (v12)
            {
              goto LABEL_135;
            }

            v87 = [(DDAction *)DDShowCalendarAction actionWithURL:v10 result:a4 context:v11];
            [v14 addObject:v87];
          }

          else
          {
            v105 = [(DDAction *)DDShowCalendarAction actionWithURL:v10 result:a4 context:v11];
            [v14 addObject:v105];

            if (v12)
            {
              goto LABEL_135;
            }
          }

          if ([DDTimeZoneConversionAction actionAvailableForResult:a4])
          {
            v106 = [(DDAction *)DDTimeZoneConversionAction actionWithURL:0 result:a4 context:v11];
            [v14 addObject:v106];
          }

          v107 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
          [v14 addObject:v107];

          goto LABEL_135;
        }

        if (v64 != 5)
        {
          if (v64 == 6)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if ([DDMoneyPreviewAction actionAvailableForResult:a4 url:0 context:v11])
            {
              v66 = [(DDAction *)DDMoneyPreviewAction actionWithURL:v10 result:a4 context:v11];
              [v14 addObject:v66];
            }

            if ([DDConversionAction actionAvailableForResult:a4])
            {
              v67 = [(DDAction *)DDConversionAction actionWithURL:v10 result:a4 context:v11];
              [v14 addObject:v67];
              v68 = [v67 specialCaseActions];
              v69 = [(DDActionGroup *)v68 flattenedActions:?];

              if ([v69 count])
              {
                [v14 addObjectsFromArray:v69];
              }
            }

            else
            {
              v96 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
              if (v96)
              {
                [v14 addObject:v96];
              }
            }

            goto LABEL_135;
          }

          goto LABEL_177;
        }

        v88 = Type;
        if (CFStringCompare(Type, *MEMORY[0x277D041B0], 0))
        {
          if (CFStringCompare(v88, *MEMORY[0x277D04108], 0))
          {
            v89 = v10;
            if (CFStringCompare(v88, *MEMORY[0x277D04158], 0))
            {
              if (CFStringCompare(v88, *MEMORY[0x277D04168], 0) == kCFCompareEqualTo)
              {
                v120 = [DDConversionAction allActionsForResult:a4 context:v11];
LABEL_216:
                v14 = v120;
LABEL_227:
                v10 = v89;
                goto LABEL_135;
              }

              if (CFStringCompare(v88, *MEMORY[0x277D040D0], 0))
              {
                if (CFStringCompare(v88, *MEMORY[0x277D04048], 0) == kCFCompareEqualTo)
                {
                  v123 = MEMORY[0x277CBEA60];
                  v93 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
                  v94 = [v123 arrayWithObjects:{v93, 0}];
                  goto LABEL_222;
                }

                if (CFStringCompare(v88, *MEMORY[0x277D041B8], 0))
                {
                  if (CFStringCompare(v88, @"evts", 0))
                  {
                    if (CFStringCompare(v88, *MEMORY[0x277D040B8], 0) == kCFCompareEqualTo)
                    {
                      v90 = [MEMORY[0x277CCA8D8] mainBundle];
                      v91 = [v90 bundleIdentifier];
                      v92 = [v91 isEqualToString:@"com.apple.MobileSMS"];

                      if (v92)
                      {
                        v93 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
                        v138 = v93;
                        v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
LABEL_222:
                        v14 = v94;

                        goto LABEL_135;
                      }
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      [DDActionController actionsForURL:v88 result:v10 enclosingResult:? context:?];
                    }

                    v120 = [MEMORY[0x277CBEA60] array];
                    goto LABEL_216;
                  }

                  v125 = DDEventsAction;
                }

                else
                {
                  v125 = DDUPIAction;
                }

                v14 = [(__objc2_class *)v125 actionsWithURL:v10 result:a4 context:v11];
                goto LABEL_135;
              }

              v121 = MEMORY[0x277CBEA60];
              v113 = [(DDAction *)DDFlightAction actionWithURL:v10 result:a4 context:v11];
              if (v12)
              {
                v14 = [v121 arrayWithObjects:{v113, 0, 0}];
              }

              else
              {
                v126 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
                v14 = [v121 arrayWithObjects:{v113, v126, 0}];
              }
            }

            else
            {
              ShouldKeepParsecScoresBelowThreshold = DDScannerShouldKeepParsecScoresBelowThreshold();
              v112 = MEMORY[0x277CBEA60];
              if (ShouldKeepParsecScoresBelowThreshold)
              {
                v113 = [(DDAction *)DDSearchWebAction actionWithURL:v10 result:a4 context:v11];
                v114 = [(DDAction *)DDParsecYeaAction actionWithURL:v10 result:a4 context:v11];
                v115 = [(DDAction *)DDParsecNayAction actionWithURL:v10 result:a4 context:v11];
                v116 = [(DDAction *)DDParsecAction actionWithURL:v10 result:a4 context:v11];
                v117 = v116;
                if (v12)
                {
                  v14 = [v112 arrayWithObjects:{v113, v114, v115, v116, 0, 0}];
                }

                else
                {
                  v124 = [DDCopyAction actionWithURL:v89 result:a4 context:v11];
                  v14 = [v112 arrayWithObjects:{v113, v114, v115, v117, v124, 0}];
                }
              }

              else
              {
                v113 = [(DDAction *)DDParsecAction actionWithURL:v10 result:a4 context:v11];
                v122 = [(DDAction *)DDSearchWebAction actionWithURL:v10 result:a4 context:v11];
                v114 = v122;
                if (v12)
                {
                  v14 = [v112 arrayWithObjects:{v113, v122, 0, 0}];
                }

                else
                {
                  v127 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
                  v14 = [v112 arrayWithObjects:{v113, v114, v127, 0}];
                }
              }
            }

            goto LABEL_227;
          }

          v103 = MEMORY[0x277CBEA60];
          v104 = DDShowItemAction;
LABEL_196:
          v55 = [(__objc2_class *)v104 actionWithURL:v10 result:a4 context:v11];
          if (v12)
          {
            v14 = [v103 arrayWithObjects:{v55, 0, 0}];
          }

          else
          {
            v119 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
            v14 = [v103 arrayWithObjects:{v55, v119, 0}];
          }

LABEL_151:

          goto LABEL_135;
        }

        v54 = MEMORY[0x277CBEA60];
        v98 = [(DDAction *)DDTrackShipmentAction actionWithURL:v10 result:a4 context:v11];
        if (!v12)
        {
          v99 = DDCopyAction;
LABEL_213:
          v118 = [(__objc2_class *)v99 actionWithURL:v10 result:a4 context:v11];
          v14 = [v54 arrayWithObjects:{v98, v118, 0}];

          goto LABEL_135;
        }
      }

      v14 = [v54 arrayWithObjects:{v98, 0, 0}];

      goto LABEL_135;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDActionController actionsForURL:result:enclosingResult:context:];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_141;
      }
    }

    else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_141:
      v14 = 0;
      goto LABEL_135;
    }

    [DDActionController actionsForURL:v10 result:? enclosingResult:? context:?];
    goto LABEL_141;
  }

  v24 = MEMORY[0x277CBEA60];
  v25 = [(DDAction *)DDMessagesCustomAction actionWithURL:v10 result:a4 context:v11];
  if (!v12)
  {
    v28 = [DDCopyAction actionWithURL:v10 result:a4 context:v11];
    v29 = [v24 arrayWithObjects:{v25, v28, 0}];
LABEL_32:
    v14 = v29;

    goto LABEL_135;
  }

  v14 = [v24 arrayWithObjects:{v25, 0, 0}];
LABEL_135:

LABEL_136:
  v77 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)defaultActionForURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([DDMessagesCustomAction handlesUrl:v8 result:a4])
  {
    v10 = [(DDAction *)DDMessagesCustomAction actionWithURL:v8 result:a4 context:v9];
    goto LABEL_18;
  }

  v11 = [v8 scheme];
  v12 = [v11 lowercaseString];

  if (![v12 isEqualToString:@"mailto"])
  {
    if (dd_isAnySimpleTelephonyScheme(v8))
    {
      v16 = [v9 mutableCopy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v20 = v18;

      [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"defaultActionOnly"];
      v21 = [(DDActionController *)self actionsForURL:v8 result:a4 enclosingResult:0 context:v20];
      v22 = [v21 firstObject];

      v10 = [v22 defaultAction];

      goto LABEL_17;
    }

    if ([DDClientPreviewAction clientCanPerformActionWithUrl:v8])
    {
      v13 = DDClientPreviewAction;
      v14 = v8;
      v15 = 0;
      goto LABEL_6;
    }

    if (![v8 isSpringboardHandledURL])
    {
      if (!a4)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [DDActionController actionsForURL:result:enclosingResult:context:];
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }
        }

        else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_44;
        }

        [DDActionController actionsForURL:v8 result:? enclosingResult:? context:?];
        goto LABEL_44;
      }

      Category = DDResultGetCategory();
      Type = DDResultGetType();
      if (Category > 4)
      {
        if (Category == 5)
        {
          v27 = Type;
          if (CFEqual(Type, *MEMORY[0x277D041B0]))
          {
            v13 = DDTrackShipmentAction;
            goto LABEL_5;
          }

          if (CFEqual(v27, *MEMORY[0x277D04108]))
          {
            v13 = DDShowItemAction;
            goto LABEL_5;
          }

          if (CFEqual(v27, *MEMORY[0x277D04158]))
          {
            v13 = DDParsecAction;
            goto LABEL_5;
          }

          if ([DDEventsAction actionAvailableForResult:a4 url:v8 context:v9])
          {
            v13 = DDEventsAction;
            goto LABEL_5;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [DDActionController defaultActionForURL:v27 result:v8 context:?];
          }

LABEL_44:
          v10 = 0;
          goto LABEL_17;
        }

        if (Category == 6)
        {
          v13 = DDMoneyPreviewAction;
          goto LABEL_5;
        }
      }

      else
      {
        if (Category == 3)
        {
          v13 = DDOpenMapsAction;
          goto LABEL_5;
        }

        if (Category == 4)
        {
          v13 = DDShowCalendarAction;
          goto LABEL_5;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [DDActionController actionsForURL:a4 result:v8 enclosingResult:? context:?];
      }

      goto LABEL_44;
    }

    if (![v8 hasTelephonyScheme])
    {
      if (([v8 isFaceTimeURL] & 1) != 0 || (objc_msgSend(v8, "isFaceTimeAudioURL") & 1) != 0 || (objc_msgSend(v8, "isFaceTimePromptURL") & 1) != 0 || objc_msgSend(v8, "isFaceTimeAudioPromptURL"))
      {
        v26 = [objc_alloc(MEMORY[0x277D6EED0]) initWithURL:v8];
        [v26 setShowUIPrompt:1];
        [v26 setPerformDialAssist:1];
        [v26 setPreferDefaultApp:0];
        [v26 setAllowProviderFallback:0];
        v19 = [v26 URL];
        if (!v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [DDActionController defaultActionForURL:v8 result:? context:?];
        }

LABEL_34:
        if (v19)
        {
          v10 = [(DDAction *)DDOpenURLAction defaultActionWithURL:v19 result:a4 context:v9];

          goto LABEL_17;
        }

        goto LABEL_44;
      }

      if (!dd_schemeIsHttp(v12))
      {
        goto LABEL_44;
      }

      v28 = [v9 objectForKeyedSubscript:@"defaultHttpActionRequested"];

      if (!v28)
      {
        goto LABEL_44;
      }
    }

    v19 = v8;
    goto LABEL_34;
  }

  v13 = DDSendMailAction;
LABEL_5:
  v14 = v8;
  v15 = a4;
LABEL_6:
  v10 = [(__objc2_class *)v13 defaultActionWithURL:v14 result:v15 context:v9];
LABEL_17:

LABEL_18:

  return v10;
}

- (void)_presentController:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (self->_presentedViewController || self->_currentBaseViewController || self->_originalWindow)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(DDActionController *)v5 _presentController:?];
      }

      presentedViewController = self->_presentedViewController;
      self->_presentedViewController = 0;

      currentBaseViewController = self->_currentBaseViewController;
      self->_currentBaseViewController = 0;

      originalWindow = self->_originalWindow;
      self->_originalWindow = 0;
    }

    [(DDActionController *)self _willPresentViewController];
    if (self->_interactionDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(DDDetectionControllerInteractionDelegate *)self->_interactionDelegate actionWillStart:self->_currentAction];
    }

    objc_storeStrong(&self->_presentedViewController, a3);
    v9 = [(DDActionController *)self isPresentingInPopover];
    alertController = self->_alertController;
    if (alertController)
    {
      v11 = [(UIAlertController *)alertController presentingViewController];
      v12 = self->_currentBaseViewController;
      self->_currentBaseViewController = v11;

      if ([(DDAction *)self->_currentAction interactionType]== 1 || [(DDAction *)self->_currentAction interactionType]== 3)
      {
        v13 = [(UIAlertController *)self->_alertController popoverPresentationController];
        if (v13)
        {

          v14 = 7;
        }

        else
        {
          v22 = [MEMORY[0x277CCA8D8] mainBundle];
          v23 = [v22 bundleIdentifier];
          v24 = [v23 isEqualToString:@"com.apple.mobilesafari"];

          if (v24)
          {
            v14 = 2;
          }

          else
          {
            v14 = 7;
          }
        }

        [(UIViewController *)self->_presentedViewController setModalPresentationStyle:v14];
        v25 = [(UIViewController *)self->_presentedViewController popoverPresentationController];
        v26 = [(UIAlertController *)self->_alertController popoverPresentationController];
        v27 = [v26 sourceView];
        [v25 setSourceView:v27];

        v28 = [(UIAlertController *)self->_alertController popoverPresentationController];
        [v28 sourceRect];
        [v25 setSourceRect:?];

        [v25 setDelegate:self];
      }

      if (v9)
      {
        [(UIAlertController *)self->_alertController setModalTransitionStyle:2];
      }

      v29 = self->_alertController;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __41__DDActionController__presentController___block_invoke;
      v30[3] = &unk_278290B50;
      v30[4] = self;
      [(UIAlertController *)v29 dismissViewControllerAnimated:1 completion:v30];
    }

    else if (v9)
    {
      v15 = [(UIViewController *)self->_presentedViewController popoverPresentationController];
      [(DDAction *)self->_currentAction setupPopoverPresentationController:v15 view:self->_baseView];
      [v15 setDelegate:self];
      v16 = self->_currentBaseViewController;
      if (v16)
      {
        v17 = [(UIView *)self->_baseView window];
        if (!v17)
        {
          goto LABEL_33;
        }

        v18 = v17;
        v19 = [(UIViewController *)self->_currentBaseViewController view];
        v20 = [v19 window];
        v21 = [(UIView *)self->_baseView window];

        if (v20 == v21)
        {
LABEL_33:
          [(UIViewController *)self->_currentBaseViewController presentViewController:self->_presentedViewController animated:1 completion:0];

          goto LABEL_32;
        }

        v16 = self->_currentBaseViewController;
      }

      self->_currentBaseViewController = 0;

      [(DDActionController *)self _presentCurrentViewControllerOurselves];
    }

    else
    {
      [(DDActionController *)self _presentCurrentViewControllerOurselves];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [DDActionController _presentController:];
  }

LABEL_32:
}

uint64_t __41__DDActionController__presentController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interactionDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) interactionDelegate];
    [v4 action:*(*(a1 + 32) + 32) didDismissAlertController:*(*(a1 + 32) + 64)];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = 0;

  v7 = [*(*(a1 + 32) + 16) window];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [*(*(a1 + 32) + 24) view];
  v10 = [v9 window];
  v11 = [*(*(a1 + 32) + 16) window];

  if (v10 == v11)
  {
LABEL_8:
    v16 = *(a1 + 32);
    v17 = *(v16 + 24);
    v18 = *(v16 + 8);

    return [v17 presentViewController:v18 animated:1 completion:0];
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    *(v12 + 24) = 0;

    v14 = *(a1 + 32);

    return [v14 _presentCurrentViewControllerOurselves];
  }
}

- (void)tellDelegateActionDidFinishShouldDismiss:(BOOL)a3
{
  if (a3)
  {
    [(DDActionController *)self _didDismissActionViewController];
  }

  if (self->_interactionDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    currentAction = self->_currentAction;
    interactionDelegate = self->_interactionDelegate;

    [(DDDetectionControllerInteractionDelegate *)interactionDelegate actionDidFinish:currentAction];
  }
}

- (void)_willPresentViewController
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"DDDetectionControllerWillPresentActionNotification" object:0 userInfo:0];
}

- (void)_didDismissActionViewController
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"DDDetectionControllerDidDismissActionNotification" object:0 userInfo:0];
}

- (void)dismissCurrentController
{
  currentBaseViewController = self->_currentBaseViewController;
  if (currentBaseViewController)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__DDActionController_dismissCurrentController__block_invoke;
    v14[3] = &unk_278290B50;
    v14[4] = self;
    [(UIViewController *)currentBaseViewController dismissViewControllerAnimated:1 completion:v14];
  }

  else
  {
    p_alertController = &self->_alertController;
    if (self->_alertController)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46__DDActionController_dismissCurrentController__block_invoke_2;
      v13[3] = &unk_278290B50;
      v13[4] = self;
      v5 = _Block_copy(v13);
      presentedViewController = self->_presentedViewController;
      p_presentedViewController = &self->_presentedViewController;
      v6 = presentedViewController;
      if (!presentedViewController || ([(UIViewController *)v6 presentingViewController], v9 = objc_claimAutoreleasedReturnValue(), v10 = *p_alertController, v9, v11 = p_presentedViewController, v9 == v10))
      {
        v11 = p_alertController;
      }

      v12 = [*v11 presentingViewController];
      [v12 dismissViewControllerAnimated:1 completion:v5];
    }

    else
    {

      [(DDActionController *)self _dismissCurrentViewControllerOurselves];
    }
  }
}

uint64_t __46__DDActionController_dismissCurrentController__block_invoke(uint64_t a1)
{
  [*(a1 + 32) tellDelegateActionDidFinish];
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

uint64_t __46__DDActionController_dismissCurrentController__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 40) action:*(*(a1 + 32) + 32) didDismissAlertController:*(*(a1 + 32) + 64)];
  }

  [*(a1 + 32) tellDelegateActionDidFinish];
  v3 = *(a1 + 32);

  return [v3 _cleanup];
}

- (void)cleanupNoDismiss
{
  if (self->_presentedViewController || self->_currentBaseViewController || self->_originalWindow)
  {
    [(DDActionController *)self tellDelegateActionDidFinishShouldDismiss:0];

    [(DDActionController *)self _cleanup];
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  [(DDAction *)self->_currentAction invalidate];
  if (self->_interactionDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(DDDetectionControllerInteractionDelegate *)self->_interactionDelegate action:self->_currentAction didDismissAlertController:self->_alertController];
    }

    [(DDActionController *)self tellDelegateActionDidFinish];
  }

  [(DDActionController *)self _cleanup];
}

- (void)prepareForPopoverPresentation:(id)a3
{
  [a3 _setCentersPopoverIfSourceViewNotSet:1];
  currentAction = self->_currentAction;

  [(DDAction *)currentAction adaptForPresentationInPopover:1];
}

- (void)_presentCurrentViewControllerOurselves
{
  baseView = self->_baseView;
  if (!baseView)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 keyWindow];
    v6 = self->_baseView;
    self->_baseView = v5;

    baseView = self->_baseView;
  }

  v20 = [MEMORY[0x277D75D28] _viewControllerForFullScreenPresentationFromView:baseView];
  v7 = [(DDFallbackController *)v20 view];
  v8 = [v7 window];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(UIView *)self->_baseView window];
  }

  originalWindow = self->_originalWindow;
  self->_originalWindow = v10;

  if (self->_originalWindow)
  {
    v19 = v20;
    if (v20)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [(DDActionController *)&self->_baseView _presentCurrentViewControllerOurselves:v12];
  v19 = v20;
  if (!v20)
  {
LABEL_8:
    v19 = [[DDFallbackController alloc] initWithWindow:self->_originalWindow interactionDelegate:self];
  }

LABEL_9:
  v21 = v19;
  [(DDFallbackController *)v19 presentViewController:self->_presentedViewController animated:1 completion:0];
}

- (void)_dismissCurrentViewControllerOurselves
{
  v3 = [(UIViewController *)self->_presentedViewController presentingViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__DDActionController__dismissCurrentViewControllerOurselves__block_invoke;
  v4[3] = &unk_278290B50;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __60__DDActionController__dismissCurrentViewControllerOurselves__block_invoke(uint64_t a1)
{
  [*(a1 + 32) tellDelegateActionDidFinish];
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

+ (BOOL)presentingBaseView:(id)a3 isLargeEnoughForAction:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 interactionType] != 1 || !_UIApplicationIsExtension())
  {
    v13 = 1;
    goto LABEL_17;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v7 = [v5 window];
  v21 = [v7 screen];

  if (v17[5])
  {
    goto LABEL_6;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__DDActionController_presentingBaseView_isLargeEnoughForAction___block_invoke;
  aBlock[3] = &unk_2782910D8;
  aBlock[4] = &v16;
  v8 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v8[2](v8);

    if (v17[5])
    {
LABEL_6:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = 375.0;
      }

      else
      {
        v9 = 320.0;
      }

      [v17[5] bounds];
      v13 = v10 >= v9 && v11 >= 667.0 || v10 >= 667.0 && v11 >= v9;
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], v8);

    if (v17[5])
    {
      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_15:
  _Block_object_dispose(&v16, 8);

LABEL_17:
  return v13;
}

void __64__DDActionController_presentingBaseView_isLargeEnoughForAction___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [v7 windows];
  v3 = [v2 firstObject];
  v4 = [v3 screen];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)performAction:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

LABEL_7:
    [DDActionController performAction:v4];
    v9 = [v4 analyticsReporter];

    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *buf = 138412290;
  v13 = objc_opt_class();
  _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Performing action %@", buf, 0xCu);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = [v4 analyticsReporter];

  if (v5)
  {
LABEL_4:
    v6 = [v4 analyticsReporter];
    [v6 logForAction:v4];
  }

LABEL_5:
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__DDActionController_performAction___block_invoke;
  v10[3] = &unk_278290BC8;
  v10[4] = self;
  v11 = v4;
  v7 = v4;
  _os_activity_initiate(&dword_21AB70000, "performing Data Detectors action", OS_ACTIVITY_FLAG_DEFAULT, v10);

  v8 = *MEMORY[0x277D85DE8];
}

void __36__DDActionController_performAction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentAction:*(a1 + 40)];
  v2 = [*(a1 + 40) canBePerformedWhenDeviceIsLocked] ^ 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__DDActionController_performAction___block_invoke_2;
  v4[3] = &unk_278291100;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = v2;
  dd_requireDeviceUnlockAndPerformBlock(v2, v4);
}

void __36__DDActionController_performAction___block_invoke_2(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) baseView];
  v5 = [DDActionController presentingBaseView:v4 isLargeEnoughForAction:*(a1 + 40)];

  v6 = [*(a1 + 40) interactionType] != 0 && v5;
  if (a2 || (*(a1 + 48) & 1) == 0)
  {
    if (!v6)
    {
      if (v5 || [*(a1 + 40) canBePerformedByOpeningURL])
      {
        v11 = *(a1 + 40);
        v12 = [*(a1 + 32) baseView];
        [v11 performFromView:v12];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __36__DDActionController_performAction___block_invoke_2_cold_1((a1 + 40));
        [*(a1 + 32) _cleanup];
        return;
      }

      goto LABEL_15;
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    if (v8)
    {
      v9 = [v8 view];
      [v9 setUserInteractionEnabled:0];

      v7 = *(a1 + 32);
    }

    v10 = *(a1 + 40);

    [v10 prepareViewControllerForActionController:v7];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        return;
      }

LABEL_15:
      [*(a1 + 32) _cleanup];
      return;
    }

    __36__DDActionController_performAction___block_invoke_2_cold_2((a1 + 40));
    if (!v6)
    {
      goto LABEL_15;
    }
  }
}

- (void)setAlertController:(id)a3
{
  objc_storeStrong(&self->_alertController, a3);

  [(DDActionController *)self viewControllerRequiresModalInPopover:0];
}

- (void)action:(id)a3 viewControllerReady:(id)a4
{
  v6 = a4;
  [a3 setDelegate:self];
  [(DDActionController *)self _presentController:v6];
}

- (void)failedToPrepareViewControllerForAction:(id)a3
{
  alertController = self->_alertController;
  if (alertController)
  {
    v5 = [(UIAlertController *)alertController view];
    [v5 setUserInteractionEnabled:1];
  }

  [(DDActionController *)self _complete];

  [(DDActionController *)self setCurrentAction:0];
}

- (void)actionDidFinish:(id)a3 shouldDismiss:(BOOL)a4
{
  if (a4)
  {
    [(DDActionController *)self dismissCurrentController];
  }

  else
  {
    [(DDActionController *)self cleanupNoDismiss];
  }

  [(DDActionController *)self _complete];
  v5 = [(DDActionController *)self currentAction];
  [v5 setDelegate:0];

  [(DDActionController *)self setCurrentAction:0];
}

- (BOOL)actionIsCancellable
{
  alertController = self->_alertController;
  if (alertController)
  {
    v3 = alertController;
  }

  else
  {
    v3 = [(DDAction *)self->_currentAction viewController];
  }

  v4 = v3;
  v5 = [(UIAlertController *)v3 isModalInPresentation];

  return v5 ^ 1;
}

- (void)cancelAction
{
  v3 = [(DDActionController *)self currentAction];
  [(DDActionController *)self actionDidFinish:v3];
}

- (BOOL)isPresentingInPopover
{
  alertController = self->_alertController;
  if (!alertController)
  {
    alertController = self->_presentedViewController;
  }

  v4 = alertController;
  v5 = [(UIAlertController *)v4 presentationController];
  v6 = [v5 presentationStyle];
  if ([v5 _isAdapted] && -[DDAction interactionType](self->_currentAction, "interactionType") != 1)
  {
    v6 = [v5 adaptivePresentationStyle];
  }

  return v6 == 7;
}

- (void)actionsForURL:(uint64_t)a1 result:(uint64_t)a2 enclosingResult:context:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_4_1(a1 a2)];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)actionsForURL:(uint64_t)a1 result:(uint64_t)a2 enclosingResult:context:.cold.2(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_4_1(a1 a2)];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)actionsForURL:(void *)a1 result:enclosingResult:context:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)defaultActionForURL:(uint64_t)a1 result:(uint64_t)a2 context:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_4_1(a1 a2)];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)defaultActionForURL:(void *)a1 result:context:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_presentController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)performAction:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Performing action %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __36__DDActionController_performAction___block_invoke_2_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  objc_opt_class();
  [*a1 canBePerformedByOpeningURL];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Eu);
  v8 = *MEMORY[0x277D85DE8];
}

void __36__DDActionController_performAction___block_invoke_2_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

@end