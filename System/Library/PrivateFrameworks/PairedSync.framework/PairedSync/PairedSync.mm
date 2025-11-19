id psy_log()
{
  if (psy_log_onceToken != -1)
  {
    psy_log_cold_1();
  }

  v1 = psy_log___logger;

  return v1;
}

uint64_t __psy_log_block_invoke()
{
  psy_log___logger = os_log_create("com.apple.pairedsync", "framework");

  return MEMORY[0x2821F96F8]();
}

void sub_25DF2658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_25DF26918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25DF26AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PSYSyncSessionProviderXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FC8710];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_requestActiveSyncSessionWithCompletion_ argumentIndex:1 ofReply:1];

  return v0;
}

id PSYSyncStateProviderXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FC8650];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [v1 setWithObjects:{v2, v3, objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_requestDeviceSyncStateEntriesForPairingIDs_completion_ argumentIndex:0 ofReply:0];

  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_requestDeviceSyncStateEntriesForPairingIDs_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_25DF27C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25DF291E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringfromPSYSyncSessionType(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_286FBD918;
  }

  else
  {
    return off_2799FB758[a1];
  }
}

void sub_25DF2AFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25DF2D034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id PSYToolInterfaceXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FC86B0];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_getOrderedActivityInfosWithCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

id PSYErrorForCode(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = a1 - 1;
  if (a1 - 1) <= 5 && ((0x3Bu >> v2))
  {
    v3 = off_2799FB8E0[v2];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.pairedsync" code:a1 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

__CFString *NSStringFromPSYSyncSessionState(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_286FBD918;
  }

  else
  {
    return off_2799FBA08[a1];
  }
}

__CFString *NSStringFromPSYSyncSessionActivityState(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_286FBD918;
  }

  else
  {
    return off_2799FBA08[a1];
  }
}

__CFString *NSStringFromPSYDeviceSyncState(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2799FBAC0[a1];
  }
}

id PSYGetClientListDirectory()
{
  v0 = [@"/" stringByAppendingPathComponent:@"System/Library/PairedSyncServices"];
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:v0 isDirectory:1];

  return v1;
}

id PSYGetPreferredActivityOrdering()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 pathForResource:@"job_ordering" ofType:@"plist"];

  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v1];
  v3 = [MEMORY[0x277CCAC58] propertyListWithData:v2 options:0 format:0 error:0];

  return v3;
}

id PSYProgressServerXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FC87D0];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [v1 setWithObjects:{v2, v3, objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_getCurrentStateWithCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

id psd_log()
{
  if (psd_log_onceToken != -1)
  {
    psd_log_cold_1();
  }

  v1 = psd_log___logger;

  return v1;
}

uint64_t __psd_log_block_invoke()
{
  v0 = os_log_create("com.apple.pairedsync", "daemon");
  v1 = psd_log___logger;
  psd_log___logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id psylink_log()
{
  if (psylink_log_onceToken != -1)
  {
    psylink_log_cold_1();
  }

  v1 = psylink_log___logger;

  return v1;
}

uint64_t __psylink_log_block_invoke()
{
  v0 = os_log_create("com.apple.pairedsync", "link");
  v1 = psylink_log___logger;
  psylink_log___logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}