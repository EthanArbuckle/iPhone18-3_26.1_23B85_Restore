id CRNavigationClientInterface()
{
  if (CRNavigationClientInterface_onceToken != -1)
  {
    CRNavigationClientInterface_cold_1();
  }

  v1 = CRNavigationClientInterface_interface;

  return v1;
}

void __CRNavigationClientInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838250D8];
  v1 = CRNavigationClientInterface_interface;
  CRNavigationClientInterface_interface = v0;

  v2 = CRNavigationClientInterface_interface;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_didUpdateActiveComponents_ argumentIndex:0 ofReply:0];
}

id CRNavigationServiceInterface()
{
  if (CRNavigationServiceInterface_onceToken != -1)
  {
    CRNavigationServiceInterface_cold_1();
  }

  v1 = CRNavigationServiceInterface_interface;

  return v1;
}

void __CRNavigationServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283825078];
  v1 = CRNavigationServiceInterface_interface;
  CRNavigationServiceInterface_interface = v0;

  v2 = CRNavigationServiceInterface_interface;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_sendInfo_toComponentUID_ argumentIndex:0 ofReply:0];

  v10 = CRNavigationServiceInterface_interface;
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_sendInfo_toComponentUID_ argumentIndex:1 ofReply:0];
}

id CarNavLogging()
{
  if (CarNavLogging_onceToken != -1)
  {
    CarNavLogging_cold_1();
  }

  v1 = CarNavLogging_facility;

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x34u);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

__CFString *NSStringFromCRAccNavRole(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"Supports";
  }

  if (a1 == 2)
  {
    return @"Controls";
  }

  else
  {
    return v1;
  }
}

uint64_t __CarNavLogging_block_invoke()
{
  CarNavLogging_facility = os_log_create("com.apple.carkit.nav", "ACCNav");

  return MEMORY[0x2821F96F8]();
}