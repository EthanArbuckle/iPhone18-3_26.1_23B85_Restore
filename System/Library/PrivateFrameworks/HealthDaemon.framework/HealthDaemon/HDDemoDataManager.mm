@interface HDDemoDataManager
- (HDDemoDataManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (void)_queue_generateDemoDataIfNeeded;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDDemoDataManager

- (HDDemoDataManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDDemoDataManager;
  v5 = [(HDDemoDataManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialUtilityDispatchQueue();
    demoDataQueue = v6->_demoDataQueue;
    v6->_demoDataQueue = v7;

    [profileCopy registerProfileReadyObserver:v6 queue:v6->_demoDataQueue];
  }

  return v6;
}

- (void)_queue_generateDemoDataIfNeeded
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    if ([MEMORY[0x277CCDD68] shouldGenerateDemoData])
    {
      if (!*(self + 24))
      {
        v2 = [HDDemoDataGenerator alloc];
        WeakRetained = objc_loadWeakRetained((self + 16));
        v4 = [(HDDemoDataGenerator *)v2 initWithProfile:WeakRetained queue:*(self + 8)];
        v5 = *(self + 24);
        *(self + 24) = v4;

        configuration = [*(self + 24) configuration];
        v7 = +[HDDemoDataPerson defaultPersonWithBiologicalSex:](HDDemoDataPerson, "defaultPersonWithBiologicalSex:", [configuration biologicalSex]);
        gregorianCalendar = [*(self + 24) gregorianCalendar];
        birthDateComponents = [v7 birthDateComponents];
        v10 = [gregorianCalendar dateFromComponents:birthDateComponents];
        [v7 setBirthDate:v10];

        [v7 setNutritionTrackingType:{objc_msgSend(configuration, "nutritionTrackingType")}];
        [v7 setResultsTrackingType:{objc_msgSend(configuration, "resultsTrackingType")}];
        [v7 applyProfileType:{objc_msgSend(configuration, "profileType")}];
        [v7 setHighFidelityGeneration:{objc_msgSend(configuration, "highFidelityGeneration")}];
        [*(self + 24) setDemoPerson:v7];
      }

      date = [MEMORY[0x277CBEAA8] date];
      if ([MEMORY[0x277CCDD30] runningInStoreDemoModeF201])
      {
        currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
        v13 = [currentCalendar hk_startOfDateByAddingDays:1 toDate:date];

        date = v13;
      }

      Current = CFAbsoluteTimeGetCurrent();
      v15 = *(self + 24);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52__HDDemoDataManager__queue_generateDemoDataIfNeeded__block_invoke;
      v17[3] = &unk_278629E78;
      *&v17[5] = Current;
      v17[4] = self;
      [v15 generateThroughEndDate:date completion:v17];
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Not generating demo data", buf, 2u);
      }
    }
  }
}

void __52__HDDemoDataManager__queue_generateDemoDataIfNeeded__block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  location[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  if (a2)
  {
    v9 = Current;
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCDD30] sharedBehavior];
    v12 = [v11 isAppleWatch];

    if ((v12 & 1) == 0)
    {
      objc_initWeak(location, *(a1 + 32));
      v13 = dispatch_time(0, 3600000000000);
      v14 = *(*(a1 + 32) + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__HDDemoDataManager__queue_generateDemoDataIfNeeded__block_invoke_297;
      block[3] = &unk_278616F38;
      objc_copyWeak(&v23, location);
      dispatch_after(v13, v14, block);
      objc_destroyWeak(&v23);
      objc_destroyWeak(location);
    }

    v15 = [*(*(a1 + 32) + 24) configuration];
    v16 = [v15 shouldPresentNotifications];

    if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && v16)
    {
      v17 = v9 - v10;
      v18 = objc_alloc_init(MEMORY[0x277D10BC0]);
      [v18 setTitle:@"Health Demo Data"];
      if (v17 <= 10.0)
      {
        if (v17 <= 1.0)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Generation of demo data complete\n %ld ms elapsed\n %ld samples written", (v17 * 1000.0), a3];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Generation of demo data complete\n %.1f s elapsed\n %ld samples written", *&v17, a3];
        }
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Generation of demo data complete\n %ld s elapsed\n %ld samples written", v17, a3];
      }
      v20 = ;
      [v18 setMessage:v20];
      [v18 setDefaultButton:@"Ok"];
      [v18 presentWithResponseHandler:&__block_literal_global_199];
    }
  }

  else
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v7;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Failed to generate demo data: %{public}@", location, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __52__HDDemoDataManager__queue_generateDemoDataIfNeeded__block_invoke_297(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [HDDemoDataManager _queue_generateDemoDataIfNeeded];
}

- (void)profileDidBecomeReady:(id)ready
{
  dispatch_assert_queue_V2(self->_demoDataQueue);

  [(HDDemoDataManager *)self _queue_generateDemoDataIfNeeded];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end