@interface DSDTOManager
+ (BOOL)shouldShowPlatterForRatchetState:(id)state;
+ (void)isRatchetActiveWithCompletion:(id)completion;
+ (void)protectUserLocationOnWebDuringDTO;
@end

@implementation DSDTOManager

+ (void)protectUserLocationOnWebDuringDTO
{
  v2 = os_log_create("com.apple.DigitalSeparation", "DSSafetyCheck");
  v3 = DSLog_1;
  DSLog_1 = v2;

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getFMDFMIPManagerClass_softClass;
  v12 = getFMDFMIPManagerClass_softClass;
  if (!getFMDFMIPManagerClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getFMDFMIPManagerClass_block_invoke;
    v8[3] = &unk_278F75430;
    v8[4] = &v9;
    __getFMDFMIPManagerClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  sharedInstance = [v4 sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    [sharedInstance disableLocationDisplayWithCompletion:&__block_literal_global_5];
  }

  else
  {
    v7 = DSLog_1;
    if (os_log_type_enabled(DSLog_1, OS_LOG_TYPE_ERROR))
    {
      +[(DSDTOManager *)v7];
    }
  }
}

void __49__DSDTOManager_protectUserLocationOnWebDuringDTO__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DSLog_1;
  if (v2)
  {
    if (os_log_type_enabled(DSLog_1, OS_LOG_TYPE_ERROR))
    {
      __49__DSDTOManager_protectUserLocationOnWebDuringDTO__block_invoke_cold_1(v2, v3);
    }
  }

  else if (os_log_type_enabled(DSLog_1, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_248C7E000, v3, OS_LOG_TYPE_INFO, "DTO Location Protection: disableLocationDisplay succeeded", v4, 2u);
  }
}

+ (void)isRatchetActiveWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277CD47B0] = [MEMORY[0x277CD47B0] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__DSDTOManager_isRatchetActiveWithCompletion___block_invoke;
  v6[3] = &unk_278F755E8;
  v7 = completionCopy;
  v5 = completionCopy;
  [mEMORY[0x277CD47B0] stateWithCompletion:v6];
}

void __46__DSDTOManager_isRatchetActiveWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if ([v3 rawValue])
  {
    v5 = [v6 rawValue] != 4;
  }

  else
  {
    v5 = 0;
  }

  (*(v4 + 16))(v4, v5);
}

+ (BOOL)shouldShowPlatterForRatchetState:(id)state
{
  stateCopy = state;
  if ([stateCopy rawValue])
  {
    v4 = [stateCopy rawValue] == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __49__DSDTOManager_protectUserLocationOnWebDuringDTO__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "DTO Location Protection: disableLocationDisplay failed with error - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end