@interface ActionPanel
- (ActionPanel)initWithTabDocument:(id)document activityDelegate:(id)delegate menuStyle:(int64_t)style;
- (id)downloadsViewController;
- (id)excludedActivityTypes;
- (void)_executeActivity;
- (void)_performActivity:(id)activity;
- (void)_prepareActivity:(id)activity completion:(id)completion;
- (void)_prepareMail:(id)mail completion:(id)completion;
- (void)_preparePostToSocialNetwork:(id)network;
- (void)_reload;
- (void)activityDidComplete:(id)complete withReturnedItems:(id)items success:(BOOL)success;
- (void)setSharingURL:(id)l;
- (void)updateReloadActivity;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ActionPanel

- (ActionPanel)initWithTabDocument:(id)document activityDelegate:(id)delegate menuStyle:(int64_t)style
{
  v34 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  delegateCopy = delegate;
  v11 = customActivities(documentCopy, style, delegateCopy, 0);
  if (([documentCopy isBlank] & 1) != 0 || objc_msgSend(documentCopy, "isShowingStartPageOverriddenByExtension"))
  {
    style = 1;
  }

  v12 = itemProviderCollection(documentCopy, style);
  cachedCanonicalURLOrURLForSharing = [documentCopy cachedCanonicalURLOrURLForSharing];
  urlForSharing = [documentCopy urlForSharing];
  v32.receiver = self;
  v32.super_class = ActionPanel;
  v15 = [(_SFActivityViewController *)&v32 initWithActivityItemProviderCollection:v12 applicationActivities:v11 sharingURL:cachedCanonicalURLOrURLForSharing sourceURL:urlForSharing];

  if (v15)
  {
    objc_storeStrong(&v15->_tabDocument, document);
    objc_storeStrong(&v15->_activityDelegate, delegate);
    sharingExtensionController = [documentCopy sharingExtensionController];
    [(_SFActivityViewController *)v15 setSharingExtensionController:sharingExtensionController];

    customizationController = [(_SFActivityViewController *)v15 customizationController];
    [customizationController setDelegate:v15];

    v15->_menuStyle = style;
    if (style == 1)
    {
      [(ActionPanel *)v15 setSharingStyle:2];
      [(ActionPanel *)v15 setHideHeaderView:1];
    }

    [(ActionPanel *)v15 _primeExtensionDiscovery];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = v11;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 setParentViewController:v15];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 setParentActivityViewController:v15];
            [v23 setBrowserDocument:documentCopy];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 setParentViewController:v15];
            v15->_containsDownloadsActivity = 1;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v15->_reloadActivity, v23);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 setDelegate:v15];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v20);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__reload name:*MEMORY[0x277D4A9A8] object:0];

    v25 = v15;
    v11 = v27;
  }

  return v15;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ActionPanel;
  [(ActionPanel *)&v5 viewDidAppear:appear];
  if (self->_containsDownloadsActivity)
  {
    mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
    [mEMORY[0x277CDB7A8] didBeginViewingDownloads];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ActionPanel;
  [(ActionPanel *)&v5 viewWillDisappear:disappear];
  if (self->_containsDownloadsActivity)
  {
    mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
    [mEMORY[0x277CDB7A8] didEndViewingDownloads];
  }
}

- (void)setSharingURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  sharingURL = [(_SFActivityViewController *)self sharingURL];
  if (([lCopy isEqual:sharingURL] & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    activityItemProviders = [(_SFActivityViewController *)self activityItemProviders];
    v7 = [activityItemProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(activityItemProviders);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 url];
          v13 = [v12 isEqual:sharingURL];

          if (v13)
          {
            [v11 setUrl:lCopy];
          }
        }

        v8 = [activityItemProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v14.receiver = self;
    v14.super_class = ActionPanel;
    [(_SFActivityViewController *)&v14 setSharingURL:lCopy];
  }
}

- (void)activityDidComplete:(id)complete withReturnedItems:(id)items success:(BOOL)success
{
  successCopy = success;
  completeCopy = complete;
  v10.receiver = self;
  v10.super_class = ActionPanel;
  [(_SFActivityViewController *)&v10 activityDidComplete:completeCopy withReturnedItems:items success:successCopy];
  if (successCopy && [completeCopy isEqualToString:*MEMORY[0x277D54778]])
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didPrintPage];
  }
}

- (void)_executeActivity
{
  activity = [(ActionPanel *)self activity];
  activityType = [activity activityType];
  if ([activityType isEqualToString:*MEMORY[0x277D54708]])
  {
    delegate = [(_SFActivityViewController *)self delegate];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__ActionPanel__executeActivity__block_invoke;
    v7[3] = &unk_2781D4B18;
    v8 = activity;
    [delegate actionPanelAddTabDocumentToReadingList:self activityDidFinish:v7];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ActionPanel;
    [(_SFActivityViewController *)&v6 _executeActivity];
  }
}

- (void)_prepareActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
  }

  else
  {
    v8 = &__block_literal_global;
  }

  activityType = [activityCopy activityType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ActionPanel *)self _preparePostToSocialNetwork:activityCopy];
    v8[2](v8);
  }

  else if ([activityType isEqualToString:*MEMORY[0x277D54728]])
  {
    [(ActionPanel *)self _prepareMail:activityCopy completion:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ActionPanel;
    [(_SFActivityViewController *)&v10 _prepareActivity:activityCopy completion:v8];
  }
}

- (void)_preparePostToSocialNetwork:(id)network
{
  networkCopy = network;
  activityViewController = [networkCopy activityViewController];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v6 = getSLComposeViewControllerClass_softClass;
  v13 = getSLComposeViewControllerClass_softClass;
  if (!getSLComposeViewControllerClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getSLComposeViewControllerClass_block_invoke;
    v9[3] = &unk_2781D4BD8;
    v9[4] = &v10;
    __getSLComposeViewControllerClass_block_invoke(v9);
    v6 = v11[3];
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    titleForSharing = [(TabDocument *)self->_tabDocument titleForSharing];
    [activityViewController setInitialText:titleForSharing];
  }
}

- (void)_prepareMail:(id)mail completion:(id)completion
{
  completionCopy = completion;
  activityViewController = [mail activityViewController];
  if ([activityViewController _sf_isMFMailComposeViewController])
  {
    v7 = activityViewController;
    [v7 setKeyboardVisible:1];
    titleForSharing = [(TabDocument *)self->_tabDocument titleForSharing];
    [v7 setSubject:titleForSharing];

    delegate = [(_SFActivityViewController *)self delegate];
    [delegate actionPanel:self prepareForMailActivityWithMailController:v7 completionHandler:completionCopy];
  }

  else
  {
    completionCopy[2]();
  }
}

- (void)_performActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [activityType isEqualToString:@"SafariActivityTypeWebExtension"];

  if (v6)
  {
    browserController = [(TabDocument *)self->_tabDocument browserController];
    activityViewController = [activityCopy activityViewController];
    [browserController presentModalViewController:activityViewController completion:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ActionPanel;
    [(_SFActivityViewController *)&v9 _performActivity:activityCopy];
  }
}

- (void)_reload
{
  v26 = *MEMORY[0x277D85DE8];
  printController = [(_SFActivityViewController *)self printController];
  [printController printInteractionControllerDidFinish];

  [(_SFActivityViewController *)self setPrintController:0];
  v4 = itemProviderCollection(self->_tabDocument, self->_menuStyle);
  customizationController = [(_SFActivityViewController *)self customizationController];
  v19 = [v4 activityItemProvidersWithCustomizationController:customizationController];

  activityTypeOrder = [(ActionPanel *)self activityTypeOrder];
  tabDocument = self->_tabDocument;
  menuStyle = self->_menuStyle;
  activityDelegate = self->_activityDelegate;
  v24 = activityTypeOrder;
  v10 = customActivities(tabDocument, menuStyle, activityDelegate, &v24);
  v11 = v24;

  [(ActionPanel *)self setActivityTypeOrder:v11];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v17 setParentViewController:self];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
          [v18 setParentActivityViewController:self];
          [v18 setBrowserDocument:self->_tabDocument];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 setParentViewController:self];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
  }

  [(_SFActivityViewController *)self _updateActivityItems:v19 applicationActivities:v12];
}

- (id)excludedActivityTypes
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = ActionPanel;
  excludedActivityTypes = [(_SFActivityViewController *)&v10 excludedActivityTypes];
  v4 = excludedActivityTypes;
  v5 = MEMORY[0x277CBEBF8];
  if (excludedActivityTypes)
  {
    v5 = excludedActivityTypes;
  }

  v6 = v5;

  if ([(TabDocument *)self->_tabDocument isPDFDocument])
  {
    v11[0] = *MEMORY[0x277D54740];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [v6 safari_arrayByAddingObjectsFromArrayIfNotDuplicates:v7];

    v6 = v8;
  }

  return v6;
}

- (id)downloadsViewController
{
  delegate = [(_SFActivityViewController *)self delegate];
  v4 = [delegate downloadsViewControllerForActionPanel:self];

  return v4;
}

- (void)updateReloadActivity
{
  if (self->_reloadActivity && ([(ActionPanel *)self isBeingDismissed]& 1) == 0)
  {
    reloadActivity = self->_reloadActivity;

    [(ActionPanel *)self _reloadActivity:reloadActivity];
  }
}

@end