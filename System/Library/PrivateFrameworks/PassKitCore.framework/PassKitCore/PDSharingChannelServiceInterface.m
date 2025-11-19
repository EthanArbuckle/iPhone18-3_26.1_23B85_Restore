@interface PDSharingChannelServiceInterface
@end

@implementation PDSharingChannelServiceInterface

void __PDSharingChannelServiceInterface_Server_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247C848];
  v1 = _MergedGlobals_197;
  _MergedGlobals_197 = v0;

  v19 = MEMORY[0x1E695DFD8];
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
  v20 = [v19 setWithObjects:{v18, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [_MergedGlobals_197 setClasses:v20 forSelector:sel_sendMessage_completion_ argumentIndex:0 ofReply:0];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
  [_MergedGlobals_197 setClasses:v17 forSelector:sel_descriptorsForAccountDevices_ argumentIndex:0 ofReply:1];
}

@end