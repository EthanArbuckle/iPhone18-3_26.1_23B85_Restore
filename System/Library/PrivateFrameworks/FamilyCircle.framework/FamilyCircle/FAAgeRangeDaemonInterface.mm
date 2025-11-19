@interface FAAgeRangeDaemonInterface
+ (id)XPCInterface;
@end

@implementation FAAgeRangeDaemonInterface

+ (id)XPCInterface
{
  if (XPCInterface_onceToken != -1)
  {
    +[FAAgeRangeDaemonInterface XPCInterface];
  }

  v3 = XPCInterface_interface;

  return v3;
}

void __41__FAAgeRangeDaemonInterface_XPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2F4BFD0];
  v1 = XPCInterface_interface;
  XPCInterface_interface = v0;

  v2 = XPCInterface_interface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v3 setWithObjects:{v4, v5, v6, v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_fetchAgeRangesWith_completion_ argumentIndex:0 ofReply:1];

  v9 = XPCInterface_interface;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v9 setClasses:v12 forSelector:sel_deleteAgeRangesWith_completion_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v48 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v15 = XPCInterface_interface;
  v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v15 setClasses:v16 forSelector:sel_saveAgeRangeWith_completion_ argumentIndex:0 ofReply:0];

  [XPCInterface_interface setClasses:v48 forSelector:sel_saveAgeRangeWith_completion_ argumentIndex:0 ofReply:1];
  v17 = XPCInterface_interface;
  v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v17 setClasses:v18 forSelector:sel_updateAgeRangeWith_completion_ argumentIndex:0 ofReply:0];

  [XPCInterface_interface setClasses:v48 forSelector:sel_updateAgeRangeWith_completion_ argumentIndex:0 ofReply:1];
  v19 = XPCInterface_interface;
  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
  [v19 setClasses:v23 forSelector:sel_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion_ argumentIndex:0 ofReply:0];

  v24 = XPCInterface_interface;
  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
  [v24 setClasses:v28 forSelector:sel_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion_ argumentIndex:0 ofReply:1];

  v29 = XPCInterface_interface;
  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v30 setWithObjects:{v31, v32, objc_opt_class(), 0}];
  [v29 setClasses:v33 forSelector:sel_fetchFamilyCircleWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v34 = XPCInterface_interface;
  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
  [v34 setClasses:v38 forSelector:sel_fetchAltDSIDWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v39 = XPCInterface_interface;
  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  [v39 setClasses:v42 forSelector:sel_fetchAgeWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v43 = XPCInterface_interface;
  v44 = MEMORY[0x1E695DFD8];
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = [v44 setWithObjects:{v45, v46, objc_opt_class(), 0}];
  [v43 setClasses:v47 forSelector:sel_fetchPrivacyVersionForAltDSID_completion_ argumentIndex:0 ofReply:1];
}

@end