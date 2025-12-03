@interface CKAppMenuDataSource
+ (BOOL)_shouldDisplayPluginInMenu:(id)menu;
+ (id)_sortedMenuItemsFromItems:(id)items;
+ (id)appMenuWithTarget:(id)target traitCollection:(id)collection conversation:(id)conversation;
+ (id)orderedItemsForTraitCollection:(id)collection conversation:(id)conversation;
@end

@implementation CKAppMenuDataSource

+ (id)orderedItemsForTraitCollection:(id)collection conversation:(id)conversation
{
  v62 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  conversationCopy = conversation;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sendingService = [conversationCopy sendingService];
  iMessageLiteService = [MEMORY[0x1E69A5CA0] iMessageLiteService];
  v11 = iMessageLiteService;
  v53 = conversationCopy;
  if (sendingService == iMessageLiteService)
  {
  }

  else
  {
    chat = [conversationCopy chat];
    shouldDisplayOffGridModeStatus = [chat shouldDisplayOffGridModeStatus];

    if (!shouldDisplayOffGridModeStatus)
    {
      goto LABEL_7;
    }
  }

  chat2 = [conversationCopy chat];
  v15 = [chat2 supportsCapabilities:0x20000];

  if (v15)
  {
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"EFFECT_MENU_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v18 = [CKAppMenuItem imageForIdentifier:@"kAppMenuEffectsItemIdentifier" traitCollection:collectionCopy];
    v19 = [CKAppMenuItem itemWithDisplayName:v17 identifier:@"kAppMenuEffectsItemIdentifier" accessibilityIdentifier:@"Effects" image:v18];
    [v8 addObject:v19];

    v20 = v8;
    goto LABEL_21;
  }

LABEL_7:
  v54 = v8;
  if ([conversationCopy supportsPolls])
  {
    v21 = CKFrameworkBundle();
    v22 = [v21 localizedStringForKey:@"POLLS_MENU_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v23 = IMBalloonExtensionIDWithSuffix();
    selfCopy = self;
    v25 = IMBalloonExtensionIDWithSuffix();
    v26 = [CKAppMenuItem imageForIdentifier:v25 traitCollection:collectionCopy];
    v27 = [CKAppMenuItem itemWithDisplayName:v22 identifier:v23 accessibilityIdentifier:@"Polls" image:v26];
    [v54 addObject:v27];

    self = selfCopy;
    v8 = v54;
  }

  v55 = collectionCopy;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v28 = +[CKBalloonPluginManager sharedInstance];
  visibleSwitcherPlugins = [v28 visibleSwitcherPlugins];

  obj = visibleSwitcherPlugins;
  v30 = [visibleSwitcherPlugins countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v58;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v57 + 1) + 8 * i);
        if ([self _shouldDisplayPluginInMenu:v34])
        {
          browserDisplayName = [v34 browserDisplayName];
          [v34 identifier];
          v37 = v36 = self;
          identifier = [v34 identifier];
          identifier2 = [v34 identifier];
          v40 = [CKAppMenuItem imageForIdentifier:identifier2 traitCollection:v55];
          v41 = [CKAppMenuItem itemWithDisplayName:browserDisplayName identifier:v37 accessibilityIdentifier:identifier image:v40];

          self = v36;
          v8 = v54;
          [v54 addObject:v41];
        }
      }

      v31 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v31);
  }

  collectionCopy = v55;
  if ([v53 supportsSendLater])
  {
    v42 = CKFrameworkBundle();
    v43 = [v42 localizedStringForKey:@"SEND_MENU_ITEM_TITLE_SEND_LATER" value:&stru_1F04268F8 table:@"ChatKit"];
    v44 = *MEMORY[0x1E69A6A28];
    v45 = [CKAppMenuItem imageForIdentifier:*MEMORY[0x1E69A6A28] traitCollection:v55];
    v46 = [CKAppMenuItem itemWithDisplayName:v43 identifier:v44 accessibilityIdentifier:@"SendLater" image:v45];
    [v8 addObject:v46];
  }

  v47 = CKFrameworkBundle();
  v48 = [v47 localizedStringForKey:@"EFFECT_MENU_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v49 = [CKAppMenuItem imageForIdentifier:@"kAppMenuEffectsItemIdentifier" traitCollection:v55];
  v50 = [CKAppMenuItem itemWithDisplayName:v48 identifier:@"kAppMenuEffectsItemIdentifier" accessibilityIdentifier:@"Effects" image:v49];
  [v8 addObject:v50];

  v20 = [self _sortedMenuItemsFromItems:v8];
LABEL_21:
  v51 = v20;

  return v51;
}

+ (id)_sortedMenuItemsFromItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  _defaultAppOrder = [self _defaultAppOrder];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke;
  v23[3] = &unk_1E72EC738;
  v8 = itemsCopy;
  v24 = v8;
  v9 = v6;
  v25 = v9;
  v10 = v5;
  v26 = v10;
  [_defaultAppOrder enumerateObjectsUsingBlock:v23];

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke_3;
  v19 = &unk_1E72F1368;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  v11 = v8;
  v12 = v9;
  v13 = v10;
  [v11 enumerateObjectsUsingBlock:&v16];
  array = [v12 array];

  return array;
}

void __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke_2;
  v10[3] = &unk_1E72F1340;
  v5 = v3;
  v11 = v5;
  v6 = [v4 indexOfObjectPassingTest:v10];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) objectAtIndex:v6];
    [v8 addObject:v9];

    [*(a1 + 48) addIndex:v7];
  }
}

uint64_t __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hasSuffix:*(a1 + 32)];

  return v4;
}

void __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([*(a1 + 32) containsIndex:?] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) objectAtIndex:a3];
    [v5 addObject:v6];
  }
}

+ (BOOL)_shouldDisplayPluginInMenu:(id)menu
{
  menuCopy = menu;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isClingEnabled])
  {
    v5 = CKIsStickersStripEnabled();
  }

  else
  {
    v5 = 0;
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  showAllInstalledMessageApps = [mEMORY[0x1E69A8070]2 showAllInstalledMessageApps];

  if (showAllInstalledMessageApps)
  {
    goto LABEL_5;
  }

  identifier = [menuCopy identifier];
  v9 = IMBalloonExtensionIDWithSuffix();
  v10 = [identifier isEqualToString:v9];

  if (v10)
  {
    v5 ^= 1u;
    goto LABEL_16;
  }

  identifier2 = [menuCopy identifier];
  v12 = IMBalloonExtensionIDWithSuffix();
  v13 = [identifier2 isEqualToString:v12];

  if (v13)
  {
    goto LABEL_16;
  }

  identifier3 = [menuCopy identifier];
  v15 = IMBalloonExtensionIDWithSuffix();
  v16 = [identifier3 isEqualToString:v15];

  if (v16)
  {
LABEL_5:
    v5 = 1;
  }

  else
  {
    identifier4 = [menuCopy identifier];
    v18 = IMBalloonExtensionIDWithSuffix();
    v19 = [identifier4 isEqualToString:v18];

    if (v19)
    {
      mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      showTapToRadarMessagesApp = [mEMORY[0x1E69A8070]3 showTapToRadarMessagesApp];
    }

    else
    {
      identifier5 = [menuCopy identifier];
      v23 = IMBalloonExtensionIDWithSuffix();
      v24 = [identifier5 isEqualToString:v23];

      if (!v24)
      {
        v5 = 0;
        goto LABEL_16;
      }

      mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      showTapToRadarMessagesApp = [mEMORY[0x1E69A8070]3 isGenPlaygroundEnabled];
    }

    v5 = showTapToRadarMessagesApp;
  }

LABEL_16:

  return v5;
}

+ (id)appMenuWithTarget:(id)target traitCollection:(id)collection conversation:(id)conversation
{
  v34 = *MEMORY[0x1E69E9840];
  val = target;
  collectionCopy = collection;
  conversationCopy = conversation;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = conversationCopy;
  obj = [self orderedItemsForTraitCollection:collectionCopy conversation:conversationCopy];
  v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        objc_initWeak(&location, val);
        v14 = MEMORY[0x1E69DC628];
        displayName = [v13 displayName];
        image = [v13 image];
        identifier = [v13 identifier];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __70__CKAppMenuDataSource_appMenuWithTarget_traitCollection_conversation___block_invoke;
        v26[3] = &unk_1E72EBF48;
        objc_copyWeak(&v27, &location);
        v26[4] = v13;
        v18 = [v14 actionWithTitle:displayName image:image identifier:identifier handler:v26];

        accessibilityIdentifier = [v13 accessibilityIdentifier];
        [v18 setAccessibilityIdentifier:accessibilityIdentifier];

        [v25 addObject:v18];
        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v20 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:16 children:v25];
  [v20 setAccessibilityIdentifier:@"AppsMenu"];

  return v20;
}

void __70__CKAppMenuDataSource_appMenuWithTarget_traitCollection_conversation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained appSelectionInterfaceSelectedItem:*(a1 + 32)];
}

@end