@interface IDSIDQueryController
@end

@implementation IDSIDQueryController

void __123__IDSIDQueryController_HomeKitDaemon__hmdIDInfoForDestinations_service_infoTypes_options_listenerID_queue_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = MEMORY[0x277CBEB38];
    v6 = a2;
    v7 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    a2 = [v6 na_reduceWithInitialValue:v7 reducer:&__block_literal_global_152722];
  }

  (*(*(a1 + 32) + 16))();
}

id __123__IDSIDQueryController_HomeKitDaemon__hmdIDInfoForDestinations_service_infoTypes_options_listenerID_queue_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v7;
  if ([v11 conformsToProtocol:&unk_283FCBC48])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v10)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    [v8 setObject:v13 forKeyedSubscript:v10];
  }

  return v8;
}

@end