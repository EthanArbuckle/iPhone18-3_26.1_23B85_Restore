@interface DKDaemonInterface
@end

@implementation DKDaemonInterface

void ___DKDaemonInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0624828];
  v1 = _DKDaemonInterface_interface;
  _DKDaemonInterface_interface = v0;

  v25 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v26 = [v25 setWithObjects:{v24, v23, v22, v21, v20, v19, v18, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [_DKDaemonInterface_interface setClasses:v26 forSelector:sel_saveObjects_reply_ argumentIndex:0 ofReply:0];
  [_DKDaemonInterface_interface setClasses:v26 forSelector:sel_deleteObjects_reply_ argumentIndex:0 ofReply:0];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
  [_DKDaemonInterface_interface setClasses:v16 forSelector:sel_executeQuery_reply_ argumentIndex:0 ofReply:0];
  [_DKDaemonInterface_interface setClasses:v26 forSelector:sel_executeQuery_reply_ argumentIndex:0 ofReply:1];
  [_DKDaemonInterface_interface setClasses:v26 forSelector:sel_sourceDeviceIdentityWithReply_ argumentIndex:0 ofReply:1];
  [_DKDaemonInterface_interface setClasses:v26 forSelector:sel_deviceUUIDWithReply_ argumentIndex:0 ofReply:1];
  v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [_DKDaemonInterface_interface setClasses:v17 forSelector:sel_requestBiomeEndpoint_reply_ argumentIndex:0 ofReply:1];
}

@end