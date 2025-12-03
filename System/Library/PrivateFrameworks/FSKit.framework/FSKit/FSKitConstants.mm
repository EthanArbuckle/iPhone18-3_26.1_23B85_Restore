@interface FSKitConstants
+ (NSSet)errorTypes;
+ (NSSet)extensionItemTypes;
+ (NSSet)plistAndValueTypes;
+ (NSSet)plistTypes;
+ (NSXPCInterface)FSAgentXPCProtocol;
+ (NSXPCInterface)FSAllClientXPCProtocols;
+ (NSXPCInterface)FSClientXPCProtocol;
+ (NSXPCInterface)FSModuleExtensionXPCProtocol;
+ (void)setArgumentsForFSClientXPC:(id)c;
@end

@implementation FSKitConstants

+ (NSXPCInterface)FSModuleExtensionXPCProtocol
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285DFC010];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = objc_opt_class();
    v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
    [v2 setClasses:v5 forSelector:sel_loadResource_options_replyHandler_ argumentIndex:0 ofReply:1];

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    [v2 setClasses:v10 forSelector:sel_activateVolume_resource_options_replyHandler_ argumentIndex:0 ofReply:1];
  }

  return v2;
}

+ (void)setArgumentsForFSClientXPC:(id)c
{
  v3 = MEMORY[0x277CBEB98];
  cCopy = c;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [cCopy setClasses:v6 forSelector:sel_installedExtensions_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [cCopy setClasses:v9 forSelector:sel_currentTasks_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [cCopy setClasses:v12 forSelector:sel_currentResourceIDs_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [cCopy setClasses:v15 forSelector:sel_loadResource_usingBundle_options_replyHandler_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [cCopy setClasses:v18 forSelector:sel_loadResource_shortName_options_replyHandler_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [cCopy setClasses:v21 forSelector:sel_loadResource_shortName_options_auditToken_replyHandler_ argumentIndex:0 ofReply:1];

  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = [v22 setWithObjects:{v23, v24, v25, v26, v27, v28, objc_opt_class(), 0}];
  [cCopy setClasses:v29 forSelector:sel_currentContainers_ argumentIndex:0 ofReply:1];
}

+ (NSXPCInterface)FSClientXPCProtocol
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285E03850];
  if (v3)
  {
    [self setArgumentsForFSClientXPC:v3];
  }

  return v3;
}

+ (NSXPCInterface)FSAllClientXPCProtocols
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285E05C48];
  if (v3)
  {
    [self setArgumentsForFSClientXPC:v3];
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
    [v3 setClasses:v6 forSelector:sel_installedExtensionsForAuditToken_replyHandler_ argumentIndex:0 ofReply:1];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v3 setClasses:v9 forSelector:sel_currentTasksForAuditToken_replyHandler_ argumentIndex:0 ofReply:1];

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    [v3 setClasses:v12 forSelector:sel_currentResourceIDsForAuditToken_replyHandler_ argumentIndex:0 ofReply:1];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v13 setWithObjects:{v14, v15, v16, v17, v18, objc_opt_class(), 0}];
    [v3 setClasses:v19 forSelector:sel_currentContainersForAuditToken_replyHandler_ argumentIndex:0 ofReply:1];

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    [v3 setClasses:v22 forSelector:sel_loadResource_usingBundle_options_auditToken_replyHandler_ argumentIndex:0 ofReply:1];
  }

  return v3;
}

+ (NSXPCInterface)FSAgentXPCProtocol
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285E05D08];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
    [v2 setClasses:v6 forSelector:sel_installedExtensions_ argumentIndex:0 ofReply:1];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v2 setClasses:v9 forSelector:sel_installedExtensions_ argumentIndex:1 ofReply:1];
  }

  return v2;
}

+ (NSSet)errorTypes
{
  if (errorTypes_onceToken != -1)
  {
    +[FSKitConstants(project) errorTypes];
  }

  v3 = errorTypes_errorTypes;

  return v3;
}

void __37__FSKitConstants_project__errorTypes__block_invoke()
{
  v5[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = errorTypes_errorTypes;
  errorTypes_errorTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (NSSet)plistTypes
{
  if (plistTypes_onceToken != -1)
  {
    +[FSKitConstants(project) plistTypes];
  }

  v3 = plistTypes_plistTypes;

  return v3;
}

void __37__FSKitConstants_project__plistTypes__block_invoke()
{
  v5[10] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:10];
  v2 = [v0 setWithArray:v1];
  v3 = plistTypes_plistTypes;
  plistTypes_plistTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (NSSet)plistAndValueTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FSKitConstants_project__plistAndValueTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (plistAndValueTypes_onceToken != -1)
  {
    dispatch_once(&plistAndValueTypes_onceToken, block);
  }

  v2 = plistAndValueTypes_types;

  return v2;
}

void __45__FSKitConstants_project__plistAndValueTypes__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) plistTypes];
  v1 = [v3 setByAddingObject:objc_opt_class()];
  v2 = plistAndValueTypes_types;
  plistAndValueTypes_types = v1;
}

+ (NSSet)extensionItemTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FSKitConstants_project__extensionItemTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (extensionItemTypes_onceToken != -1)
  {
    dispatch_once(&extensionItemTypes_onceToken, block);
  }

  v2 = extensionItemTypes_types;

  return v2;
}

void __45__FSKitConstants_project__extensionItemTypes__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v3 = [*(a1 + 32) plistTypes];
  v4 = [v2 setWithSet:v3];

  v5 = [*(a1 + 32) errorTypes];
  [v4 unionSet:v5];

  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:5];
  [v4 addObjectsFromArray:{v6, v10, v11, v12, v13}];

  v7 = [v4 copy];
  v8 = extensionItemTypes_types;
  extensionItemTypes_types = v7;

  v9 = *MEMORY[0x277D85DE8];
}

@end