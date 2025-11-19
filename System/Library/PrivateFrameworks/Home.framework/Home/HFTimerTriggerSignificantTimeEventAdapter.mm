@interface HFTimerTriggerSignificantTimeEventAdapter
- (id)createTriggerWithName:(id)a3 timeZone:(id)a4 recurrences:(id)a5;
- (id)updateTrigger:(id)a3;
- (void)updateTriggerBuilder:(id)a3 recurrences:(id)a4 inHome:(id)a5;
@end

@implementation HFTimerTriggerSignificantTimeEventAdapter

- (id)createTriggerWithName:(id)a3 timeZone:(id)a4 recurrences:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(HFTimerTriggerTimeEventAdapter *)self eventBuilder];
  v10 = [v9 performValidation];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __88__HFTimerTriggerSignificantTimeEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke;
  v29[3] = &unk_277DF9400;
  v11 = v7;
  v30 = v11;
  v31 = self;
  v12 = v8;
  v32 = v12;
  v13 = [v10 flatMap:v29];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__HFTimerTriggerSignificantTimeEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke_2;
  v25[3] = &unk_277DF7010;
  v14 = v11;
  v26 = v14;
  v27 = self;
  v15 = v12;
  v28 = v15;
  v16 = [v13 addSuccessBlock:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__HFTimerTriggerSignificantTimeEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke_36;
  v21[3] = &unk_277DF6FE8;
  v22 = v14;
  v23 = self;
  v24 = v15;
  v17 = v15;
  v18 = v14;
  v19 = [v13 addFailureBlock:v21];

  return v13;
}

id __88__HFTimerTriggerSignificantTimeEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CD1EB0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) eventBuilder];
  v5 = [v4 significantEvent];
  v6 = [*(a1 + 40) eventBuilder];
  v7 = [v6 significantEventOffset];
  v8 = [v2 initWithName:v3 significantEvent:v5 significantEventOffset:v7 recurrences:*(a1 + 48)];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v8];

  return v9;
}

void __88__HFTimerTriggerSignificantTimeEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) eventBuilder];
    v5 = [v4 significantEvent];
    v6 = *(a1 + 48);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Created significant event trigger with name:%@ significant eventBuilder:%@ recurrence:%@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __88__HFTimerTriggerSignificantTimeEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke_36(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) eventBuilder];
    v8 = [v7 significantEvent];
    v9 = *(a1 + 48);
    v10 = 138413058;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to create significant event trigger with name:%@ significant eventBuilder:%@ recurrence:%@. Error: %@", &v10, 0x2Au);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateTriggerBuilder:(id)a3 recurrences:(id)a4 inHome:(id)a5
{
  v7 = a4;
  v12 = a3;
  v8 = [(HFTimerTriggerTimeEventAdapter *)self eventBuilder];
  v9 = [v8 significantEvent];
  [v12 setSignificantEvent:v9];

  v10 = [(HFTimerTriggerTimeEventAdapter *)self eventBuilder];
  v11 = [v10 significantEventOffset];
  [v12 setSignificantEventOffset:v11];

  [v12 setRecurrences:v7];
}

- (id)updateTrigger:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke;
  v22[3] = &unk_277DF4150;
  v6 = v4;
  v23 = v6;
  v24 = self;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke_2;
  v19[3] = &unk_277DFA5C0;
  v8 = v6;
  v20 = v8;
  v21 = self;
  v9 = [v7 flatMap:v19];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke_4;
  v17[3] = &unk_277DF7060;
  v17[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = [v9 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke_39;
  v15[3] = &unk_277DF2748;
  v15[4] = self;
  v16 = v10;
  v12 = v10;
  v13 = [v9 addFailureBlock:v15];

  return v9;
}

void __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 eventBuilder];
  v5 = [v6 significantEvent];
  [v2 updateSignificantEvent:v5 completionHandler:v4];
}

id __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke_3;
  v7[3] = &unk_277DF4150;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = [v2 futureWithErrorOnlyHandlerAdapterBlock:v7];

  return v5;
}

void __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 eventBuilder];
  v5 = [v6 significantEventOffset];
  [v2 updateSignificantEventOffset:v5 completionHandler:v4];
}

void __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) eventBuilder];
    v4 = [v3 significantEvent];
    v5 = [*(a1 + 40) name];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Updated significant event: %@ for trigger with name: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __59__HFTimerTriggerSignificantTimeEventAdapter_updateTrigger___block_invoke_39(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) eventBuilder];
    v7 = [v6 significantEvent];
    v8 = [*(a1 + 40) name];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to update significant event: %@ for trigger with name: %@. Error: %@", &v9, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end