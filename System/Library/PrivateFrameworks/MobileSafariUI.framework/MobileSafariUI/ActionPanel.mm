@interface ActionPanel
- (ActionPanel)initWithTabDocument:(id)a3 activityDelegate:(id)a4 menuStyle:(int64_t)a5;
- (id)downloadsViewController;
- (id)excludedActivityTypes;
- (void)_executeActivity;
- (void)_performActivity:(id)a3;
- (void)_prepareActivity:(id)a3 completion:(id)a4;
- (void)_prepareMail:(id)a3 completion:(id)a4;
- (void)_preparePostToSocialNetwork:(id)a3;
- (void)_reload;
- (void)activityDidComplete:(id)a3 withReturnedItems:(id)a4 success:(BOOL)a5;
- (void)setSharingURL:(id)a3;
- (void)updateReloadActivity;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ActionPanel

- (ActionPanel)initWithTabDocument:(id)a3 activityDelegate:(id)a4 menuStyle:(int64_t)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = customActivities(v9, a5, v10, 0);
  if (([v9 isBlank] & 1) != 0 || objc_msgSend(v9, "isShowingStartPageOverriddenByExtension"))
  {
    a5 = 1;
  }

  v12 = itemProviderCollection(v9, a5);
  v13 = [v9 cachedCanonicalURLOrURLForSharing];
  v14 = [v9 urlForSharing];
  v32.receiver = self;
  v32.super_class = ActionPanel;
  v15 = [(_SFActivityViewController *)&v32 initWithActivityItemProviderCollection:v12 applicationActivities:v11 sharingURL:v13 sourceURL:v14];

  if (v15)
  {
    objc_storeStrong(&v15->_tabDocument, a3);
    objc_storeStrong(&v15->_activityDelegate, a4);
    v16 = [v9 sharingExtensionController];
    [(_SFActivityViewController *)v15 setSharingExtensionController:v16];

    v17 = [(_SFActivityViewController *)v15 customizationController];
    [v17 setDelegate:v15];

    v15->_menuStyle = a5;
    if (a5 == 1)
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
            [v23 setBrowserDocument:v9];
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

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v15 selector:sel__reload name:*MEMORY[0x277D4A9A8] object:0];

    v25 = v15;
    v11 = v27;
  }

  return v15;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ActionPanel;
  [(ActionPanel *)&v5 viewDidAppear:a3];
  if (self->_containsDownloadsActivity)
  {
    v4 = [MEMORY[0x277CDB7A8] sharedManager];
    [v4 didBeginViewingDownloads];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ActionPanel;
  [(ActionPanel *)&v5 viewWillDisappear:a3];
  if (self->_containsDownloadsActivity)
  {
    v4 = [MEMORY[0x277CDB7A8] sharedManager];
    [v4 didEndViewingDownloads];
  }
}

- (void)setSharingURL:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_SFActivityViewController *)self sharingURL];
  if (([v4 isEqual:v5] & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(_SFActivityViewController *)self activityItemProviders];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 url];
          v13 = [v12 isEqual:v5];

          if (v13)
          {
            [v11 setUrl:v4];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v14.receiver = self;
    v14.super_class = ActionPanel;
    [(_SFActivityViewController *)&v14 setSharingURL:v4];
  }
}

- (void)activityDidComplete:(id)a3 withReturnedItems:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v10.receiver = self;
  v10.super_class = ActionPanel;
  [(_SFActivityViewController *)&v10 activityDidComplete:v8 withReturnedItems:a4 success:v5];
  if (v5 && [v8 isEqualToString:*MEMORY[0x277D54778]])
  {
    v9 = [MEMORY[0x277D499B8] sharedLogger];
    [v9 didPrintPage];
  }
}

- (void)_executeActivity
{
  v3 = [(ActionPanel *)self activity];
  v4 = [v3 activityType];
  if ([v4 isEqualToString:*MEMORY[0x277D54708]])
  {
    v5 = [(_SFActivityViewController *)self delegate];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__ActionPanel__executeActivity__block_invoke;
    v7[3] = &unk_2781D4B18;
    v8 = v3;
    [v5 actionPanelAddTabDocumentToReadingList:self activityDidFinish:v7];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ActionPanel;
    [(_SFActivityViewController *)&v6 _executeActivity];
  }
}

- (void)_prepareActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__block_literal_global;
  }

  v9 = [v6 activityType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ActionPanel *)self _preparePostToSocialNetwork:v6];
    v8[2](v8);
  }

  else if ([v9 isEqualToString:*MEMORY[0x277D54728]])
  {
    [(ActionPanel *)self _prepareMail:v6 completion:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ActionPanel;
    [(_SFActivityViewController *)&v10 _prepareActivity:v6 completion:v8];
  }
}

- (void)_preparePostToSocialNetwork:(id)a3
{
  v4 = a3;
  v5 = [v4 activityViewController];
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
    v8 = [(TabDocument *)self->_tabDocument titleForSharing];
    [v5 setInitialText:v8];
  }
}

- (void)_prepareMail:(id)a3 completion:(id)a4
{
  v10 = a4;
  v6 = [a3 activityViewController];
  if ([v6 _sf_isMFMailComposeViewController])
  {
    v7 = v6;
    [v7 setKeyboardVisible:1];
    v8 = [(TabDocument *)self->_tabDocument titleForSharing];
    [v7 setSubject:v8];

    v9 = [(_SFActivityViewController *)self delegate];
    [v9 actionPanel:self prepareForMailActivityWithMailController:v7 completionHandler:v10];
  }

  else
  {
    v10[2]();
  }
}

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [v5 isEqualToString:@"SafariActivityTypeWebExtension"];

  if (v6)
  {
    v7 = [(TabDocument *)self->_tabDocument browserController];
    v8 = [v4 activityViewController];
    [v7 presentModalViewController:v8 completion:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ActionPanel;
    [(_SFActivityViewController *)&v9 _performActivity:v4];
  }
}

- (void)_reload
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(_SFActivityViewController *)self printController];
  [v3 printInteractionControllerDidFinish];

  [(_SFActivityViewController *)self setPrintController:0];
  v4 = itemProviderCollection(self->_tabDocument, self->_menuStyle);
  v5 = [(_SFActivityViewController *)self customizationController];
  v19 = [v4 activityItemProvidersWithCustomizationController:v5];

  v6 = [(ActionPanel *)self activityTypeOrder];
  tabDocument = self->_tabDocument;
  menuStyle = self->_menuStyle;
  activityDelegate = self->_activityDelegate;
  v24 = v6;
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
  v3 = [(_SFActivityViewController *)&v10 excludedActivityTypes];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
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
  v3 = [(_SFActivityViewController *)self delegate];
  v4 = [v3 downloadsViewControllerForActionPanel:self];

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