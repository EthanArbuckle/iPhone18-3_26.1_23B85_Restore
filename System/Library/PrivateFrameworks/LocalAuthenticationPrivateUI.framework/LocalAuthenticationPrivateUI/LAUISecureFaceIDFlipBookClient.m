@interface LAUISecureFaceIDFlipBookClient
+ (void)registerElementForRecording;
@end

@implementation LAUISecureFaceIDFlipBookClient

+ (void)registerElementForRecording
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = LACLogFaceIDUI();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2560E6000, v2, OS_LOG_TYPE_DEFAULT, "Registering element for Secure UI capture", buf, 2u);
  }

  v3 = objc_opt_new();
  v9 = &unk_28682F948;
  v10[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__LAUISecureFaceIDFlipBookClient_registerElementForRecording__block_invoke;
  v6[3] = &unk_2798217F8;
  v7 = v3;
  v5 = v3;
  [v5 evaluatePolicy:1 options:v4 reply:v6];
}

void __61__LAUISecureFaceIDFlipBookClient_registerElementForRecording__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = LACLogFaceIDUI();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2560E6000, v7, OS_LOG_TYPE_DEFAULT, "Secure UI capture complete", v8, 2u);
    }

    [*(a1 + 32) invalidate];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__LAUISecureFaceIDFlipBookClient_registerElementForRecording__block_invoke_cold_1(v5, v7);
    }
  }
}

void __61__LAUISecureFaceIDFlipBookClient_registerElementForRecording__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_2560E6000, a2, OS_LOG_TYPE_ERROR, "Secure UI capture failed: %{public}@", &v2, 0xCu);
}

@end