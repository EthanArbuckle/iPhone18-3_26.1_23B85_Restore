@interface PKSharingChannelServiceInterface
@end

@implementation PKSharingChannelServiceInterface

void __PKSharingChannelServiceInterface_Client_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2440C58];
  v1 = qword_1ED6D1848;
  qword_1ED6D1848 = v0;

  v13 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
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
  v14 = [v13 setWithObjects:{v12, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [qword_1ED6D1848 setClasses:v14 forSelector:sel_didReceiveMessages_reply_ argumentIndex:0 ofReply:0];
}

@end