@interface DOCExtensionInterface
+ (id)hostProtocol;
+ (id)vendorProtocol;
@end

@implementation DOCExtensionInterface

+ (id)hostProtocol
{
  if (hostProtocol_onceToken != -1)
  {
    +[DOCExtensionInterface hostProtocol];
  }

  v3 = hostProtocol___interface;

  return v3;
}

uint64_t __37__DOCExtensionInterface_hostProtocol__block_invoke()
{
  hostProtocol___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F54538];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)vendorProtocol
{
  if (vendorProtocol_onceToken != -1)
  {
    +[DOCExtensionInterface vendorProtocol];
  }

  v3 = vendorProtocol___interface;

  return v3;
}

void __39__DOCExtensionInterface_vendorProtocol__block_invoke()
{
  v47 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F80C88];
  v45 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F80CE8];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F80D48];
  v46 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F80DA8];
  [v0 setInterface:v47 forSelector:sel_getTransitionControllerForURL_completionBlock_ argumentIndex:0 ofReply:1];
  [v0 setInterface:v47 forSelector:sel_getTransitionControllerForItem_completionBlock_ argumentIndex:0 ofReply:1];
  v48 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F65CC8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v48 setClasses:v3 forSelector:sel__didTriggerCustomActionWithIdentifier_onItemBookmarks_ argumentIndex:1 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel__setAdditionalLeadingNavigationBarButtonItems_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel__setAdditionalTrailingNavigationBarButtonItems_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0}];
  [v0 setClasses:v19 forSelector:sel__renameDocumentAtURL_newName_completion_ argumentIndex:1 ofReply:1];

  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  [v48 setClasses:v22 forSelector:sel__didPickItemBookmarks_ argumentIndex:0 ofReply:0];

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  [v48 setClasses:v25 forSelector:sel__updateRemoteBarButtonFrames_forUUID_ argumentIndex:0 ofReply:0];

  v26 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  [v48 setClasses:v28 forSelector:sel__updateRemoteBarButtonFrames_forUUID_ argumentIndex:1 ofReply:0];

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  [v48 setClasses:v31 forSelector:sel__presentActivityViewControllerForItemBookmarks_withPopoverTracker_isContentManaged_additionalActivities_activityProxy_ argumentIndex:0 ofReply:0];

  [v48 setInterface:v45 forSelector:sel__presentActivityViewControllerForItemBookmarks_withPopoverTracker_isContentManaged_additionalActivities_activityProxy_ argumentIndex:1 ofReply:0];
  v32 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
  [v48 setClasses:v34 forSelector:sel__presentActivityViewControllerForItemBookmarks_withPopoverTracker_isContentManaged_additionalActivities_activityProxy_ argumentIndex:3 ofReply:0];

  [v48 setInterface:v46 forSelector:sel__presentActivityViewControllerForItemBookmarks_withPopoverTracker_isContentManaged_additionalActivities_activityProxy_ argumentIndex:4 ofReply:0];
  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  [v46 setClasses:v37 forSelector:sel_performAction_withURLs_completionHandler_ argumentIndex:1 ofReply:0];

  v38 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
  [v0 setClasses:v40 forSelector:sel__setCustomActions_ argumentIndex:0 ofReply:0];

  v41 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v41 forSelector:sel__setSceneIdentifier_ argumentIndex:0 ofReply:0];

  v42 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F80E08];
  v43 = vendorProtocol___interface;
  vendorProtocol___interface = v42;

  [vendorProtocol___interface setInterface:v0 forSelector:sel_configureAsDocumentBrowserWithHostProxy_configuration_initialUIPBrowserState_completionBlock_ argumentIndex:0 ofReply:1];
  [vendorProtocol___interface setInterface:v48 forSelector:sel_configureAsDocumentBrowserWithHostProxy_configuration_initialUIPBrowserState_completionBlock_ argumentIndex:0 ofReply:0];
  v44 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v44 forSelector:sel__setBrowserHostedCreateDocumentsMenu_ argumentIndex:0 ofReply:0];
}

@end