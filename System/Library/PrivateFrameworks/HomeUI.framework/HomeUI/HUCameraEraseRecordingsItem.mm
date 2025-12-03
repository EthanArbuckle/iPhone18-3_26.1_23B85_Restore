@interface HUCameraEraseRecordingsItem
- (HUCameraEraseRecordingsItem)initWithCameraProfile:(id)profile;
- (id)_subclass_updateWithOptions:(id)options;
- (void)_updateResultsForFuture:(id)future withHiddenStatus:(BOOL)status;
@end

@implementation HUCameraEraseRecordingsItem

- (HUCameraEraseRecordingsItem)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v9.receiver = self;
  v9.super_class = HUCameraEraseRecordingsItem;
  v6 = [(HFStaticItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraProfile, profile);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_initWeak(&location, self);
  cameraProfile = [(HUCameraEraseRecordingsItem *)self cameraProfile];
  clipManager = [cameraProfile clipManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUCameraEraseRecordingsItem__subclass_updateWithOptions___block_invoke;
  v10[3] = &unk_277DC0CD0;
  objc_copyWeak(&v12, &location);
  v8 = v5;
  v11 = v8;
  [clipManager fetchCountOfAllClipsWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __59__HUCameraEraseRecordingsItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = [v3 BOOLValue];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Erase all camera recording control hidden:%{BOOL}d.", v6, 8u);
  }

  [WeakRetained _updateResultsForFuture:*(a1 + 32) withHiddenStatus:{objc_msgSend(v3, "integerValue") < 1}];
}

- (void)_updateResultsForFuture:(id)future withHiddenStatus:(BOOL)status
{
  statusCopy = status;
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D13F60];
  futureCopy = future;
  v7 = _HULocalizedStringWithDefaultValue(@"HUCameraEraseAllRecordings", @"HUCameraEraseAllRecordings", 1);
  v15[0] = v7;
  v14[1] = *MEMORY[0x277D13DA8];
  v8 = MEMORY[0x277CBEB98];
  cameraProfile = [(HUCameraEraseRecordingsItem *)self cameraProfile];
  v10 = [v8 setWithObject:cameraProfile];
  v15[1] = v10;
  v14[2] = *MEMORY[0x277D13FB8];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:statusCopy];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v13 = [MEMORY[0x277D14780] outcomeWithResults:v12];
  [futureCopy finishWithResult:v13];
}

@end