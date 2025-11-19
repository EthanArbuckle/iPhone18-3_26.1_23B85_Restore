@interface FCUIFocusSelectionFooterView
@end

@implementation FCUIFocusSelectionFooterView

void __42___FCUIFocusSelectionFooterView__openURL___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = *MEMORY[0x277D0AC70];
  v14[0] = *MEMORY[0x277D0AC58];
  v14[1] = v5;
  v15[0] = MEMORY[0x277CBEC38];
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D0AC28];
  v15[2] = @"FCUIAppLaunchOriginFocusSelectionViewController";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v11 = 0;
  v7 = [v2 openSensitiveURL:v4 withOptions:v6 error:&v11];
  v8 = v11;

  v9 = FCUILogSelection;
  if (v7)
  {
    if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v3;
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_24BB26000, v9, OS_LOG_TYPE_DEFAULT, "Launched URL %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_ERROR))
  {
    __42___FCUIFocusSelectionFooterView__openURL___block_invoke_cold_1(v3, v8, v9);
  }
}

void __42___FCUIFocusSelectionFooterView__openURL___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_24BB26000, log, OS_LOG_TYPE_ERROR, "Failed to launch URL %{public}@: %{public}@", &v4, 0x16u);
}

@end