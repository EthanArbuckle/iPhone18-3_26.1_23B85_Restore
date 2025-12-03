@interface DOCFeature
+ (BOOL)_UIPTabInfrastructureEnabled;
+ (BOOL)_docImplementation_uip_isFloatingTabBarEnabled;
+ (BOOL)_docImplementation_uip_isUIPDocumentLandingEnabled;
+ (BOOL)protectedAppsEnabled;
+ (BOOL)shouldUseQuickLookOverrideValueForPPT;
+ (BOOL)supportsQuickLookInSharedWindow;
+ (BOOL)supportsQuickLookInsteadOfOpen:(id)open;
+ (BOOL)typeToFocusIsSupported;
+ (BOOL)useFIOperations;
+ (DOCFeatureState)contextMenuShowsOpenWithApp;
+ (DOCFeatureState)disableIconThumbnails;
+ (DOCFeatureState)doubleTapToOpen;
+ (DOCFeatureState)driveRSA;
+ (DOCFeatureState)dsEnumerationFPv2;
+ (DOCFeatureState)dsEnumerationLocal;
+ (DOCFeatureState)dsEnumerationSMB;
+ (DOCFeatureState)dsEnumerationUSB;
+ (DOCFeatureState)enableOldListToo;
+ (DOCFeatureState)folderCustomization;
+ (DOCFeatureState)folderOverlays;
+ (DOCFeatureState)foldersInDock;
+ (DOCFeatureState)forceUnmount;
+ (DOCFeatureState)modernToolbar;
+ (DOCFeatureState)outlineDisclosure;
+ (DOCFeatureState)outlineView;
+ (DOCFeatureState)protectedApps;
+ (DOCFeatureState)quickLookAllDocumentsInFiles;
+ (DOCFeatureState)quickLookEntireFolderInWindow;
+ (DOCFeatureState)quickLookInWindow;
+ (DOCFeatureState)quickLookInWindowShared;
+ (DOCFeatureState)quickLookRestrictContentTypesThatOpenInWindow;
+ (DOCFeatureState)returnToSender;
+ (DOCFeatureState)semanticSearch;
+ (DOCFeatureState)showTips;
+ (DOCFeatureState)suggestedMoveToFolderInContextMenu;
+ (DOCFeatureState)tabSidebar;
+ (DOCFeatureState)typeToFocus;
+ (DOCFeatureState)usbDiskProperties;
+ (DOCFeatureState)usbEraseDialog;
+ (DOCFeatureState)usbRenameErase;
+ (DOCFeatureState)useBlastDoorThumbnails;
+ (DOCFeatureState)viewOptionsResizableIcon;
+ (DOCFeatureState)viewOptionsResizableList;
+ (DOCFeatureState)viewOptionsSizeSetting;
+ (DOCFeatureState)workaroundFor_113995648;
+ (id)featureRequirementFolderCustomization;
@end

@implementation DOCFeature

uint64_t __27__DOCFeature_protectedApps__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  protectedApps_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"AppProtection" featureID:@"protected_apps" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)tabSidebar
{
  if (tabSidebar_onceToken != -1)
  {
    +[DOCFeature tabSidebar];
  }

  v3 = tabSidebar_cachedValue;

  return v3;
}

+ (DOCFeatureState)protectedApps
{
  if (protectedApps_onceToken != -1)
  {
    +[DOCFeature protectedApps];
  }

  v3 = protectedApps_cachedValue;

  return v3;
}

uint64_t __24__DOCFeature_tabSidebar__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  tabSidebar_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"TabSidebar2" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)protectedAppsEnabled
{
  v2 = +[DOCFeature protectedApps];
  isEnabled = [v2 isEnabled];

  return isEnabled;
}

+ (BOOL)_UIPTabInfrastructureEnabled
{
  v3 = NSClassFromString(&cfstr_Uitabbarcontro.isa);
  if (objc_opt_respondsToSelector())
  {

    return [(objc_class *)v3 _uip_isFloatingTabBarEnabled];
  }

  else
  {

    return [self _docImplementation_uip_isFloatingTabBarEnabled];
  }
}

+ (DOCFeatureState)modernToolbar
{
  if (modernToolbar_onceToken != -1)
  {
    +[DOCFeature modernToolbar];
  }

  v3 = modernToolbar_cachedValue;

  return v3;
}

uint64_t __27__DOCFeature_modernToolbar__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  modernToolbar_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"modernToolbar" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)outlineView
{
  if (outlineView_onceToken != -1)
  {
    +[DOCFeature outlineView];
  }

  v3 = outlineView_cachedValue;

  return v3;
}

uint64_t __25__DOCFeature_outlineView__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  outlineView_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"OutlineView" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)enableOldListToo
{
  if (enableOldListToo_onceToken != -1)
  {
    +[DOCFeature enableOldListToo];
  }

  v3 = enableOldListToo_cachedValue;

  return v3;
}

uint64_t __30__DOCFeature_enableOldListToo__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  enableOldListToo_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"EnableOldListToo" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)showTips
{
  if (showTips_onceToken != -1)
  {
    +[DOCFeature showTips];
  }

  v3 = showTips_cachedValue;

  return v3;
}

uint64_t __22__DOCFeature_showTips__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  showTips_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"ShowTips" overrideKey:0 valueMode:1 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)viewOptionsSizeSetting
{
  if (viewOptionsSizeSetting_onceToken != -1)
  {
    +[DOCFeature viewOptionsSizeSetting];
  }

  v3 = viewOptionsSizeSetting_cachedValue;

  return v3;
}

uint64_t __36__DOCFeature_viewOptionsSizeSetting__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  viewOptionsSizeSetting_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"ViewOptionsSizeSetting" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)viewOptionsResizableIcon
{
  if (viewOptionsResizableIcon_onceToken != -1)
  {
    +[DOCFeature viewOptionsResizableIcon];
  }

  v3 = viewOptionsResizableIcon_cachedValue;

  return v3;
}

uint64_t __38__DOCFeature_viewOptionsResizableIcon__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  viewOptionsResizableIcon_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"ViewOptionsResizableIcon" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)viewOptionsResizableList
{
  if (viewOptionsResizableList_onceToken != -1)
  {
    +[DOCFeature viewOptionsResizableList];
  }

  v3 = viewOptionsResizableList_cachedValue;

  return v3;
}

uint64_t __38__DOCFeature_viewOptionsResizableList__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  viewOptionsResizableList_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"ViewOptionsResizableList" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)typeToFocus
{
  if (typeToFocus_onceToken != -1)
  {
    +[DOCFeature typeToFocus];
  }

  v3 = typeToFocus_cachedValue;

  return v3;
}

uint64_t __25__DOCFeature_typeToFocus__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  typeToFocus_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"typeToFocus" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)returnToSender
{
  if (returnToSender_onceToken != -1)
  {
    +[DOCFeature returnToSender];
  }

  v3 = returnToSender_cachedValue;

  return v3;
}

uint64_t __28__DOCFeature_returnToSender__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  returnToSender_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"Synapse" featureID:@"ReturnToSender" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)useBlastDoorThumbnails
{
  if (useBlastDoorThumbnails_onceToken != -1)
  {
    +[DOCFeature useBlastDoorThumbnails];
  }

  v3 = useBlastDoorThumbnails_cachedValue;

  return v3;
}

uint64_t __36__DOCFeature_useBlastDoorThumbnails__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  useBlastDoorThumbnails_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"UseBlastDoorThumbnails" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)dsEnumerationLocal
{
  if (dsEnumerationLocal_onceToken != -1)
  {
    +[DOCFeature dsEnumerationLocal];
  }

  v3 = dsEnumerationLocal_cachedValue;

  return v3;
}

uint64_t __32__DOCFeature_dsEnumerationLocal__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  dsEnumerationLocal_cachedValue = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"DSEnumeration_Local" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

+ (DOCFeatureState)outlineDisclosure
{
  if (outlineDisclosure_onceToken != -1)
  {
    +[DOCFeature outlineDisclosure];
  }

  v3 = outlineDisclosure_cachedValue;

  return v3;
}

uint64_t __31__DOCFeature_outlineDisclosure__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"OutlineDisclosure" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = outlineDisclosure_cachedValue;
  outlineDisclosure_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)quickLookInWindow
{
  if (quickLookInWindow_onceToken != -1)
  {
    +[DOCFeature quickLookInWindow];
  }

  v3 = quickLookInWindow_cachedValue;

  return v3;
}

uint64_t __31__DOCFeature_quickLookInWindow__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"QuickLookInSeparateWindow" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = quickLookInWindow_cachedValue;
  quickLookInWindow_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)quickLookEntireFolderInWindow
{
  if (quickLookEntireFolderInWindow_onceToken != -1)
  {
    +[DOCFeature quickLookEntireFolderInWindow];
  }

  v3 = quickLookEntireFolderInWindow_cachedValue;

  return v3;
}

uint64_t __43__DOCFeature_quickLookEntireFolderInWindow__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"QuickLookEntireFolderInWindow" overrideKey:0 valueMode:2 requirements:MEMORY[0x277CBEBF8]];
  v2 = quickLookEntireFolderInWindow_cachedValue;
  quickLookEntireFolderInWindow_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)quickLookRestrictContentTypesThatOpenInWindow
{
  if (quickLookRestrictContentTypesThatOpenInWindow_onceToken != -1)
  {
    +[DOCFeature quickLookRestrictContentTypesThatOpenInWindow];
  }

  v3 = quickLookRestrictContentTypesThatOpenInWindow_cachedValue;

  return v3;
}

uint64_t __59__DOCFeature_quickLookRestrictContentTypesThatOpenInWindow__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"QuickLookRestrictContentTypesThatOpenInSeparateWindow" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = quickLookRestrictContentTypesThatOpenInWindow_cachedValue;
  quickLookRestrictContentTypesThatOpenInWindow_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)quickLookInWindowShared
{
  if (quickLookInWindowShared_onceToken != -1)
  {
    +[DOCFeature quickLookInWindowShared];
  }

  v3 = quickLookInWindowShared_cachedValue;

  return v3;
}

uint64_t __37__DOCFeature_quickLookInWindowShared__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"QuickLookInSeparateSharedWindow" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = quickLookInWindowShared_cachedValue;
  quickLookInWindowShared_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)quickLookAllDocumentsInFiles
{
  if (quickLookAllDocumentsInFiles_onceToken != -1)
  {
    +[DOCFeature quickLookAllDocumentsInFiles];
  }

  v3 = quickLookAllDocumentsInFiles_cachedValue;

  return v3;
}

uint64_t __42__DOCFeature_quickLookAllDocumentsInFiles__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"QuickLookAllDocumentsInFilesFirst" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = quickLookAllDocumentsInFiles_cachedValue;
  quickLookAllDocumentsInFiles_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)suggestedMoveToFolderInContextMenu
{
  if (suggestedMoveToFolderInContextMenu_onceToken != -1)
  {
    +[DOCFeature suggestedMoveToFolderInContextMenu];
  }

  v3 = suggestedMoveToFolderInContextMenu_cachedValue;

  return v3;
}

uint64_t __48__DOCFeature_suggestedMoveToFolderInContextMenu__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"SuggestedMoveToFolderInContextMenu" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = suggestedMoveToFolderInContextMenu_cachedValue;
  suggestedMoveToFolderInContextMenu_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)usbRenameErase
{
  if (usbRenameErase_onceToken != -1)
  {
    +[DOCFeature usbRenameErase];
  }

  v3 = usbRenameErase_cachedValue;

  return v3;
}

uint64_t __28__DOCFeature_usbRenameErase__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"USBRenameReformat" overrideKey:0 valueMode:1 requirements:MEMORY[0x277CBEBF8]];
  v2 = usbRenameErase_cachedValue;
  usbRenameErase_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)usbEraseDialog
{
  if (usbEraseDialog_onceToken != -1)
  {
    +[DOCFeature usbEraseDialog];
  }

  v3 = usbEraseDialog_cachedValue;

  return v3;
}

uint64_t __28__DOCFeature_usbEraseDialog__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"USBReformatDialog" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = usbEraseDialog_cachedValue;
  usbEraseDialog_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)usbDiskProperties
{
  if (usbDiskProperties_onceToken != -1)
  {
    +[DOCFeature usbDiskProperties];
  }

  v3 = usbDiskProperties_cachedValue;

  return v3;
}

uint64_t __31__DOCFeature_usbDiskProperties__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"USBDiskProperties" overrideKey:0 valueMode:1 requirements:MEMORY[0x277CBEBF8]];
  v2 = usbDiskProperties_cachedValue;
  usbDiskProperties_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)forceUnmount
{
  if (forceUnmount_onceToken != -1)
  {
    +[DOCFeature forceUnmount];
  }

  v3 = forceUnmount_cachedValue;

  return v3;
}

uint64_t __26__DOCFeature_forceUnmount__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"USBForceUnmount" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = forceUnmount_cachedValue;
  forceUnmount_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)semanticSearch
{
  if (semanticSearch_onceToken != -1)
  {
    +[DOCFeature semanticSearch];
  }

  v3 = semanticSearch_cachedValue;

  return v3;
}

uint64_t __28__DOCFeature_semanticSearch__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"SemanticSearch" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = semanticSearch_cachedValue;
  semanticSearch_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)workaroundFor_113995648
{
  if (workaroundFor_113995648_onceToken != -1)
  {
    +[DOCFeature workaroundFor_113995648];
  }

  v3 = workaroundFor_113995648_cachedValue;

  return v3;
}

uint64_t __37__DOCFeature_workaroundFor_113995648__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"WorkaroundFor_113995648" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = workaroundFor_113995648_cachedValue;
  workaroundFor_113995648_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)dsEnumerationUSB
{
  if (dsEnumerationUSB_onceToken != -1)
  {
    +[DOCFeature dsEnumerationUSB];
  }

  v3 = dsEnumerationUSB_cachedValue;

  return v3;
}

uint64_t __30__DOCFeature_dsEnumerationUSB__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"DSEnumeration_USB" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = dsEnumerationUSB_cachedValue;
  dsEnumerationUSB_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)dsEnumerationFPv2
{
  if (dsEnumerationFPv2_onceToken != -1)
  {
    +[DOCFeature dsEnumerationFPv2];
  }

  v3 = dsEnumerationFPv2_cachedValue;

  return v3;
}

uint64_t __31__DOCFeature_dsEnumerationFPv2__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"DSEnumeration_FPv2" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = dsEnumerationFPv2_cachedValue;
  dsEnumerationFPv2_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)dsEnumerationSMB
{
  if (dsEnumerationSMB_onceToken != -1)
  {
    +[DOCFeature dsEnumerationSMB];
  }

  v3 = dsEnumerationSMB_cachedValue;

  return v3;
}

uint64_t __30__DOCFeature_dsEnumerationSMB__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"DSEnumeration_SMB" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = dsEnumerationSMB_cachedValue;
  dsEnumerationSMB_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)contextMenuShowsOpenWithApp
{
  if (contextMenuShowsOpenWithApp_onceToken != -1)
  {
    +[DOCFeature contextMenuShowsOpenWithApp];
  }

  v3 = contextMenuShowsOpenWithApp_cachedValue;

  return v3;
}

uint64_t __41__DOCFeature_contextMenuShowsOpenWithApp__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"ContextMenuShowsOpenWithApp" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = contextMenuShowsOpenWithApp_cachedValue;
  contextMenuShowsOpenWithApp_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)doubleTapToOpen
{
  if (doubleTapToOpen_onceToken != -1)
  {
    +[DOCFeature doubleTapToOpen];
  }

  v3 = doubleTapToOpen_cachedValue;

  return v3;
}

uint64_t __29__DOCFeature_doubleTapToOpen__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"DoubleTapToOpen" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = doubleTapToOpen_cachedValue;
  doubleTapToOpen_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)foldersInDock
{
  if (foldersInDock_onceToken != -1)
  {
    +[DOCFeature foldersInDock];
  }

  v3 = foldersInDock_cachedValue;

  return v3;
}

uint64_t __27__DOCFeature_foldersInDock__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"SpringBoard" featureID:@"EvolvingiPadFileStackIconInDock" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = foldersInDock_cachedValue;
  foldersInDock_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)disableIconThumbnails
{
  if (disableIconThumbnails_onceToken != -1)
  {
    +[DOCFeature disableIconThumbnails];
  }

  v3 = disableIconThumbnails_cachedValue;

  return v3;
}

uint64_t __35__DOCFeature_disableIconThumbnails__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"DisableIconThumbnails" overrideKey:0 valueMode:0 requirements:MEMORY[0x277CBEBF8]];
  v2 = disableIconThumbnails_cachedValue;
  disableIconThumbnails_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)driveRSA
{
  if (driveRSA_onceToken != -1)
  {
    +[DOCFeature driveRSA];
  }

  v3 = driveRSA_cachedValue;

  return v3;
}

uint64_t __22__DOCFeature_driveRSA__block_invoke()
{
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"DocumentManager" featureID:@"DriveRSA" overrideKey:0 valueMode:2 requirements:MEMORY[0x277CBEBF8]];
  v2 = driveRSA_cachedValue;
  driveRSA_cachedValue = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (DOCFeatureState)folderCustomization
{
  if (folderCustomization_onceToken != -1)
  {
    +[DOCFeature folderCustomization];
  }

  v3 = folderCustomization_cachedValue;

  return v3;
}

void __33__DOCFeature_folderCustomization__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [DOCFeatureStateFFSetting alloc];
  v1 = +[DOCFeature featureRequirementFolderCustomization];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [(DOCFeatureStateFFSetting *)v0 initWithDomainID:@"SwiftUI" featureID:@"Solarium" overrideKey:0 valueMode:1 requirements:v2];
  v4 = folderCustomization_cachedValue;
  folderCustomization_cachedValue = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_docImplementation_uip_isUIPDocumentLandingEnabled
{
  if (_docImplementation_uip_isUIPDocumentLandingEnabled_onceToken != -1)
  {
    +[DOCFeature _docImplementation_uip_isUIPDocumentLandingEnabled];
  }

  return _docImplementation_uip_isUIPDocumentLandingEnabled_enabled;
}

void __64__DOCFeature__docImplementation_uip_isUIPDocumentLandingEnabled__block_invoke()
{
  _docImplementation_uip_isUIPDocumentLandingEnabled_enabled = (MGGetSInt32Answer() & 0xFFFFFFFD) == 1;
  v0 = dyld_program_sdk_at_least();
  if (v0)
  {
    LOBYTE(v0) = _os_feature_enabled_impl();
  }

  _docImplementation_uip_isUIPDocumentLandingEnabled_enabled = v0;
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];
  v1 = [v2 BOOLForKey:@"ForceDocumentViewControllerDocumentLanding"];
  _docImplementation_uip_isUIPDocumentLandingEnabled_enabled |= v1;
}

+ (BOOL)_docImplementation_uip_isFloatingTabBarEnabled
{
  if (_docImplementation_uip_isFloatingTabBarEnabled_onceToken != -1)
  {
    +[DOCFeature _docImplementation_uip_isFloatingTabBarEnabled];
  }

  return _docImplementation_uip_isFloatingTabBarEnabled_wantsFloatingTabBar;
}

void __60__DOCFeature__docImplementation_uip_isFloatingTabBarEnabled__block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];
    v2 = [v0 objectForKey:@"UseFloatingTabBar"];

    if (v2)
    {
      v1 = [v2 BOOLValue];
    }

    else
    {
      v1 = _os_feature_enabled_impl();
    }

    _docImplementation_uip_isFloatingTabBarEnabled_wantsFloatingTabBar = v1;
  }
}

+ (BOOL)supportsQuickLookInSharedWindow
{
  quickLookInWindow = [self quickLookInWindow];
  if ([quickLookInWindow isEnabled])
  {
    quickLookInWindowShared = [self quickLookInWindowShared];
    isEnabled = [quickLookInWindowShared isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  return isEnabled;
}

+ (BOOL)shouldUseQuickLookOverrideValueForPPT
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DocumentManager.defaults"];
  v3 = [v2 BOOLForKey:@"QuickLookAllDocumentsInFilesFirstForPPT"];

  return v3;
}

+ (BOOL)supportsQuickLookInsteadOfOpen:(id)open
{
  openCopy = open;
  if ([self shouldUseQuickLookOverrideValueForPPT])
  {
    v5 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v5 = docLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_249340000, v5, OS_LOG_TYPE_DEFAULT, "ShouldUseQuickLookOverrideValueForPPT enabled!", v9, 2u);
    }

    isFilesApp = 1;
  }

  else
  {
    quickLookAllDocumentsInFiles = [self quickLookAllDocumentsInFiles];
    if ([quickLookAllDocumentsInFiles isEnabled])
    {
      isFilesApp = [openCopy isFilesApp];
    }

    else
    {
      isFilesApp = 0;
    }
  }

  return isFilesApp;
}

+ (BOOL)useFIOperations
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Disable_%@", @"FIOperations"];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults valueForKey:v2];

  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DocumentManager.defaults"];
    v4 = [v5 valueForKey:v2];

    if (v4)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v23 = v2;
      v24[0] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [standardUserDefaults2 registerDefaults:v7];
    }
  }

  objc_sync_enter(@"FIOperations");
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  bOOLValue = [useFIOperations_previousEnabledState BOOLValue];
  if ([v4 BOOLValue])
  {
    *(v20 + 24) = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__DOCFeature_useFIOperations__block_invoke;
    block[3] = &unk_278F9B7D8;
    block[4] = &v19;
    if (useFIOperations_onceToken != -1)
    {
      dispatch_once(&useFIOperations_onceToken, block);
    }
  }

  if (!useFIOperations_previousEnabledState || (v8 = [useFIOperations_previousEnabledState BOOLValue], v9 = *(v20 + 24), v9 != v8))
  {
    bOOLValue2 = [v4 BOOLValue];
    v11 = &stru_285C6EEF8;
    if (bOOLValue2)
    {
      v11 = @" FORCED";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@ / %@'%@", @"DocumentManager", @"FIOperations", v11];
    _FFInitLog(v12, *(v20 + 24));

    LOBYTE(v9) = *(v20 + 24);
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:v9 & 1];
  v14 = useFIOperations_previousEnabledState;
  useFIOperations_previousEnabledState = v13;

  v15 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  objc_sync_exit(@"FIOperations");

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t __29__DOCFeature_useFIOperations__block_invoke(uint64_t a1)
{
  [@"DocumentManager" UTF8String];
  [@"FIOperations" UTF8String];
  result = _os_feature_enabled_impl();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)featureRequirementFolderCustomization
{
  v2 = [[DOCFeatureRequirement alloc] initWithName:@"ValidDSAndIconServices" requirementValidationBlock:&__block_literal_global_239];

  return v2;
}

+ (DOCFeatureState)folderOverlays
{
  v2 = objc_opt_new();
  [v2 setIsEnabled:_os_feature_enabled_impl()];

  return v2;
}

+ (BOOL)typeToFocusIsSupported
{
  if (typeToFocusIsSupported_onceToken != -1)
  {
    +[DOCFeature typeToFocusIsSupported];
  }

  return typeToFocusIsSupported_isSupported;
}

void __36__DOCFeature_typeToFocusIsSupported__block_invoke()
{
  v1 = +[DOCFeature typeToFocus];
  v0 = [v1 isEnabled];
  if (v0)
  {
    LOBYTE(v0) = _os_feature_enabled_impl();
  }

  typeToFocusIsSupported_isSupported = v0;
}

@end