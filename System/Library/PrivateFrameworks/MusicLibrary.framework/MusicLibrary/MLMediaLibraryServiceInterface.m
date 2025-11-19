@interface MLMediaLibraryServiceInterface
+ (id)clientInterface;
+ (id)serviceInterface;
@end

@implementation MLMediaLibraryServiceInterface

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    dispatch_once(&clientInterface_onceToken, &__block_literal_global_161);
  }

  v3 = clientInterface_interface;

  return v3;
}

+ (id)serviceInterface
{
  if (serviceInterface_onceToken != -1)
  {
    dispatch_once(&serviceInterface_onceToken, &__block_literal_global_20184);
  }

  v3 = serviceInterface_interface;

  return v3;
}

void __50__MLMediaLibraryServiceInterface_serviceInterface__block_invoke()
{
  v12[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2840EEED0];
  v1 = serviceInterface_interface;
  serviceInterface_interface = v0;

  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v10 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v3 = MSVPropertyListDataClasses();
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v11 = [v3 setByAddingObjectsFromArray:v4];

  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [serviceInterface_interface setClasses:v10 forSelector:sel_beginTransactionForDatabaseWithContext_completionHandler_ argumentIndex:0 ofReply:1];
  [serviceInterface_interface setClasses:v7 forSelector:sel_beginTransactionForDatabaseWithContext_completionHandler_ argumentIndex:1 ofReply:1];
  [serviceInterface_interface setClasses:v2 forSelector:sel_executeUpdate_withParameters_onTransaction_withCompletionHandler_ argumentIndex:1 ofReply:1];
  [serviceInterface_interface setClasses:v2 forSelector:sel_executeQuery_withParameters_options_onTransaction_withCompletionHandler_ argumentIndex:1 ofReply:1];
  [serviceInterface_interface setClasses:v2 forSelector:sel_endTransaction_shouldCommit_withCompletionHandler_ argumentIndex:1 ofReply:1];
  [serviceInterface_interface setClasses:v2 forSelector:sel_performDatabaseOperation_withAttributes_options_completionHandler_ argumentIndex:1 ofReply:1];
  [serviceInterface_interface setClasses:v2 forSelector:sel_setOptions_withCompletionHandler_ argumentIndex:1 ofReply:1];
  [serviceInterface_interface setClasses:v2 forSelector:sel_performImport_fromSource_withUUID_completionHandler_ argumentIndex:1 ofReply:1];
  [serviceInterface_interface setClasses:v2 forSelector:sel_cancelImportOperation_completionHandler_ argumentIndex:1 ofReply:1];
  [serviceInterface_interface setClasses:v8 forSelector:sel_getLanguageResourcesWithCompletion_ argumentIndex:0 ofReply:1];
  v5 = serviceInterface_interface;
  v6 = MSVPropertyListDataClasses();
  [v5 setClasses:v6 forSelector:sel_executeQuery_withParameters_options_onTransaction_withCompletionHandler_ argumentIndex:0 ofReply:1];

  [serviceInterface_interface setClasses:v11 forSelector:sel_performDatabaseOperation_withAttributes_options_completionHandler_ argumentIndex:1 ofReply:0];
  [serviceInterface_interface setClasses:v11 forSelector:sel_performDatabaseOperation_withAttributes_options_completionHandler_ argumentIndex:2 ofReply:0];
  [serviceInterface_interface setClasses:v9 forSelector:sel_performImport_fromSource_withUUID_completionHandler_ argumentIndex:0 ofReply:0];
}

uint64_t __49__MLMediaLibraryServiceInterface_clientInterface__block_invoke()
{
  clientInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2840E3E68];

  return MEMORY[0x2821F96F8]();
}

@end