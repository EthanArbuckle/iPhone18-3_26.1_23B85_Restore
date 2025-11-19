@interface MTAlarmIntentDonor
- (MTAlarmIntentDonor)initWithStorage:(id)a3;
- (void)prepareAlarms;
- (void)source:(id)a3 didAddAlarms:(id)a4;
- (void)source:(id)a3 didRemoveAlarms:(id)a4;
- (void)source:(id)a3 didUpdateAlarms:(id)a4;
@end

@implementation MTAlarmIntentDonor

- (MTAlarmIntentDonor)initWithStorage:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", &v11, 0xCu);
    }

    objc_storeStrong(&self->_storage, a3);
    [(MTAlarmStorage *)self->_storage registerObserver:self];
    v7 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTAlarmIntentDonor.access-queue", +[MTScheduler defaultPriority]);
    serializer = self->_serializer;
    self->_serializer = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)prepareAlarms
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__MTAlarmIntentDonor_prepareAlarms__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

void __35__MTAlarmIntentDonor_prepareAlarms__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [*(*(a1 + 32) + 8) allAlarms];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = *(*(a1 + 32) + 16);
        v12 = [v10 copy];
        v13 = [v10 alarmID];
        [v11 setObject:v12 forKey:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didAddAlarms:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  serializer = self->_serializer;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke;
  v27[3] = &unk_1E7B0C928;
  v9 = v7;
  v28 = v9;
  v29 = self;
  [(NAScheduler *)serializer performBlock:v27];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 donatesIntent])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v9;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [MEMORY[0x1E696E880] mt_intentForAlarmCreate:*(*(&v23 + 1) + 8 * i)];
          v15 = MTLogForCategory(3);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v31 = self;
            v32 = 2114;
            v33 = v14;
            _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm added - Donating intent: %{public}@", buf, 0x16u);
          }

          v16 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v14 response:0];
          [v16 mtSetIntentDonorFromSource:v6];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke_5;
          v21[3] = &unk_1E7B0D658;
          v22 = v14;
          v17 = v14;
          [v16 donateInteractionWithCompletion:v21];
        }

        v11 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v11);
    }

    v9 = v19;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 16);
        v9 = [v7 copy];
        v10 = [v7 alarmID];
        [v8 setObject:v9 forKey:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke_5(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke_5_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%@ donated successfully", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didUpdateAlarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 donatesIntent])
  {
    serializer = self->_serializer;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke;
    v9[3] = &unk_1E7B0C9A0;
    v10 = v7;
    v11 = self;
    v12 = v6;
    [(NAScheduler *)serializer performBlock:v9];
  }
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v38;
    v29 = @"MTAlarmSleepScheduleKey";
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v7 = *(*(a1 + 40) + 16);
        v8 = [v6 alarmID];
        v9 = [v7 objectForKey:v8];

        if (v9)
        {
          v10 = [MTChangeSet changeSetWithChangesFromObject:v9 toObject:v6];
          if ([v10 hasChangeForProperty:@"MTAlarmLastModifiedDate"])
          {
            v11 = [v10 changes];
            if ([v11 count] == 2 && (objc_msgSend(v10, "hasChangeForProperty:", @"MTAlarmEnabled") & 1) != 0)
            {
              v12 = 1;
            }

            else
            {
              v13 = [v10 changes];
              if ([v13 count] == 3 && objc_msgSend(v10, "hasChangeForProperty:", @"MTAlarmEnabled"))
              {
                v12 = [v10 hasChangeForProperty:v29];
              }

              else
              {
                v12 = 0;
              }
            }

            if (([v10 hasChangeForProperty:@"MTAlarmHour"] & 1) != 0 || (objc_msgSend(v10, "hasChangeForProperty:", @"MTAlarmMinute") & 1) != 0 || objc_msgSend(v10, "hasChangeForProperty:", @"MTAlarmTitle"))
            {

              v14 = MEMORY[0x1E696E880];
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v35[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_2;
              v35[3] = &unk_1E7B0DD70;
              v15 = *(a1 + 48);
              v35[4] = *(a1 + 40);
              v35[5] = v6;
              v36 = v15;
              [v14 mt_deleteDonationsForAlarm:v6 completion:v35];

              if (v12)
              {
                goto LABEL_21;
              }
            }

            else
            {

              if (v12)
              {
LABEL_21:
                if ([v6 isEnabled])
                {
                  [MEMORY[0x1E696E880] mt_intentForAlarmEnable:v6];
                }

                else
                {
                  [MEMORY[0x1E696E880] mt_intentForAlarmDisable:v6];
                }
                v16 = ;
                v17 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v16 response:0];
                [v17 mtSetIntentDonorFromSource:*(a1 + 48)];
                v18 = [v6 alarmIDString];
                [v17 setGroupIdentifier:v18];

                v33[0] = MEMORY[0x1E69E9820];
                v33[1] = 3221225472;
                v33[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_9;
                v33[3] = &unk_1E7B0D658;
                v34 = v16;
                v19 = v16;
                [v17 donateInteractionWithCompletion:v33];
                v20 = &v34;
                goto LABEL_29;
              }
            }
          }

          else
          {
          }
        }

        v21 = [MEMORY[0x1E696E880] mt_intentForAlarmUpdate:v6];
        v22 = MTLogForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 40);
          *buf = 138543618;
          v42 = v23;
          v43 = 2114;
          v44 = v21;
          _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm updated - Donating intent: %{public}@", buf, 0x16u);
        }

        v17 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v21 response:0];
        [v17 mtSetIntentDonorFromSource:*(a1 + 48)];
        v24 = [v6 alarmIDString];
        [v17 setGroupIdentifier:v24];

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_10;
        v31[3] = &unk_1E7B0D658;
        v32 = v21;
        v19 = v21;
        [v17 donateInteractionWithCompletion:v31];
        v20 = &v32;
LABEL_29:

        v25 = *(*(a1 + 40) + 16);
        v26 = [v6 copy];
        v27 = [v6 alarmID];
        [v25 setObject:v26 forKey:v27];
      }

      v3 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v3);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) alarmIDString];
      *buf = 138543618;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Interactions for updated alarm %@ deleted successfully", buf, 0x16u);
    }

    v8 = [MEMORY[0x1E696E880] mt_intentForAlarmCreate:*(a1 + 40)];
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated alarm - Donating intent: %{public}@", buf, 0x16u);
    }

    v5 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v8 response:0];
    [v5 mtSetIntentDonorFromSource:*(a1 + 48)];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_8;
    v13[3] = &unk_1E7B0D148;
    v13[4] = *(a1 + 32);
    v14 = v8;
    v11 = v8;
    [v5 donateInteractionWithCompletion:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke_5_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated Alarm %@ donated successfully", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_9(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_9_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%@ donated successfully", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_10(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_10_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%@ donated successfully", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didRemoveAlarms:(id)a4
{
  v5 = a4;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(NAScheduler *)serializer performBlock:v8];
}

void __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = *(*(a1 + 40) + 16);
        v8 = [v6 alarmID];
        [v7 removeObjectForKey:v8];

        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke_2;
        v11[3] = &unk_1E7B0D658;
        v11[4] = v6;
        [MEMORY[0x1E696E880] mt_deleteDonationsForAlarm:v6 completion:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) alarmIDString];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "Interactions for %@ deleted successfully", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke_5_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "Error donating alarm create intent: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "Error deleting donations for update: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_9_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "Error donating alarm enable intent: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_10_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "Error donating alarm update intent: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "Error deleting donations: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end