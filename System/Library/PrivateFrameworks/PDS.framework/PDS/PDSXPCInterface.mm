@interface PDSXPCInterface
+ (id)_standardInterfaceFromVendor:(id)a3;
+ (id)handShakeInterfaceFromVendor:(id)a3;
@end

@implementation PDSXPCInterface

+ (id)handShakeInterfaceFromVendor:(id)a3
{
  v4 = a3;
  v5 = [v4 interfaceWithProtocol:&unk_286FB7C18];
  v6 = [a1 _standardInterfaceFromVendor:v4];
  [v5 setInterface:v6 forSelector:sel_connectWithClientID_completion_ argumentIndex:0 ofReply:1];

  v7 = [a1 _internalInterfaceFromVendor:v4];

  [v5 setInterface:v7 forSelector:sel_connectInternalWithCompletion_ argumentIndex:0 ofReply:1];

  return v5;
}

+ (id)_standardInterfaceFromVendor:(id)a3
{
  v3 = [a3 interfaceWithProtocol:&unk_286FB7C78];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_activeUsersWithClientID_withCompletion_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v3 setClasses:v9 forSelector:sel_usersWithClientID_withCompletion_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v3 setClasses:v12 forSelector:sel_entriesForUser_clientID_withCompletion_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v3 setClasses:v15 forSelector:sel_entriesForClientID_withCompletion_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [v3 setClasses:v18 forSelector:sel_storeEntries_deleteEntries_withCompletion_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v3 setClasses:v21 forSelector:sel_storeEntries_deleteEntries_withCompletion_ argumentIndex:1 ofReply:0];

  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v3 setClasses:v24 forSelector:sel_batchUpdateEntries_forClientID_withCompletion_ argumentIndex:0 ofReply:0];

  return v3;
}

@end