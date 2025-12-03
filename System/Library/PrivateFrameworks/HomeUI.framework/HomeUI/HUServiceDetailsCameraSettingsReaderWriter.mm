@interface HUServiceDetailsCameraSettingsReaderWriter
- (HUServiceDetailsCameraSettingsReaderWriter)initWithConfigurator:(id)configurator;
- (HUServiceDetailsCameraSettingsReaderWriterConfigurator)configurator;
- (id)_fastUpdateResultsForCharacteristic:(id)characteristic withTitle:(id)title;
- (id)readWithOptions:(id)options;
- (id)updateUserSettingsWithValue:(BOOL)value;
@end

@implementation HUServiceDetailsCameraSettingsReaderWriter

- (HUServiceDetailsCameraSettingsReaderWriter)initWithConfigurator:(id)configurator
{
  configuratorCopy = configurator;
  v8.receiver = self;
  v8.super_class = HUServiceDetailsCameraSettingsReaderWriter;
  v5 = [(HUServiceDetailsCameraSettingsReaderWriter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_configurator, configuratorCopy);
  }

  return v6;
}

- (id)readWithOptions:(id)options
{
  v41[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  configurator = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];

  if (!configurator)
  {
    v19 = MEMORY[0x277D2C900];
    v20 = MEMORY[0x277D14780];
    v40 = *MEMORY[0x277D13FB8];
    v41[0] = MEMORY[0x277CBEC38];
    cameraSettings = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v9 = [v20 outcomeWithResults:cameraSettings];
    v18 = [v19 futureWithResult:v9];
    goto LABEL_12;
  }

  configurator2 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
  cameraSettings = [configurator2 cameraSettings];

  configurator3 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
  v9 = [configurator3 characteristicForSettings:cameraSettings];

  if (!v9)
  {
    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      configurator4 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
      *buf = 138412290;
      v39 = configurator4;
      _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "Failed to get characteristic for configurator:%@", buf, 0xCu);
    }

    v23 = MEMORY[0x277D2C900];
    v24 = MEMORY[0x277D14780];
    v36 = *MEMORY[0x277D13FB8];
    v37 = MEMORY[0x277CBEC38];
    itemTitle = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    characteristicValueManager = [v24 outcomeWithResults:itemTitle];
    v18 = [v23 futureWithResult:characteristicValueManager];
    goto LABEL_10;
  }

  configurator5 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
  itemTitle = [configurator5 itemTitle];

  v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  bOOLValue = [v12 BOOLValue];

  if (!bOOLValue)
  {
    v26 = [MEMORY[0x277CBEB98] setWithObject:v9];
    configurator6 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    characteristicValueManager = [configurator6 characteristicValueManager];

    v28 = [characteristicValueManager readValuesForCharacteristics:v26];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __62__HUServiceDetailsCameraSettingsReaderWriter_readWithOptions___block_invoke;
    v31[3] = &unk_277DB97A8;
    itemTitle = itemTitle;
    v32 = itemTitle;
    v33 = v9;
    selfCopy = self;
    v35 = v26;
    v29 = v26;
    v18 = [v28 flatMap:v31];

LABEL_10:
    goto LABEL_11;
  }

  v14 = MEMORY[0x277D2C900];
  v15 = MEMORY[0x277D14780];
  v16 = [(HUServiceDetailsCameraSettingsReaderWriter *)self _fastUpdateResultsForCharacteristic:v9 withTitle:itemTitle];
  v17 = [v15 outcomeWithResults:v16];
  v18 = [v14 futureWithResult:v17];

LABEL_11:
LABEL_12:

  return v18;
}

id __62__HUServiceDetailsCameraSettingsReaderWriter_readWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D14858];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x277D13F60]];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", *(a1 + 40)];
  v7 = [v6 componentsSeparatedByString:@"::"];
  v8 = [v7 lastObject];
  v9 = [v8 componentsSeparatedByString:@":"];
  v10 = [v9 firstObject];
  v11 = [v10 stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
  v12 = [@"AccessoryDetails." stringByAppendingString:v11];
  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13DC8]];

  v13 = [*(a1 + 48) configurator];
  v14 = [v13 itemTitleLocalizationKey];
  [v5 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13F68]];

  v15 = [v4 responseForCharacteristic:*(a1 + 40)];

  v16 = MEMORY[0x277D14068];
  if (v15)
  {
    v17 = [v15 error];

    if (v17)
    {
      v18 = HFLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 40);
        *buf = 138412290;
        v34 = v19;
        _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Failed attempt to read value for characteristic:%@", buf, 0xCu);
      }
    }

    v20 = [v15 valueWithExpectedClass:objc_opt_class()];
    v21 = v20;
    if (v20)
    {
      v22 = MEMORY[0x277CCABB0];
      [v20 BOOLValue];
      v23 = [v22 numberWithInteger:HFPrimaryStateFromBOOL()];
      [v5 setObject:v23 forKeyedSubscript:*v16];
    }
  }

  v24 = *v16;
  v25 = [v5 objectForKeyedSubscript:*v16];

  if (!v25)
  {
    objc_opt_class();
    v26 = [*(a1 + 40) value];
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    v29 = MEMORY[0x277CCABB0];
    [v28 BOOLValue];
    v30 = [v29 numberWithInteger:HFPrimaryStateFromBOOL()];
    [v5 setObject:v30 forKeyedSubscript:v24];
  }

  [v5 setObject:*(a1 + 56) forKeyedSubscript:*MEMORY[0x277D13DA8]];
  v31 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v31;
}

- (id)_fastUpdateResultsForCharacteristic:(id)characteristic withTitle:(id)title
{
  v5 = MEMORY[0x277CBEB38];
  titleCopy = title;
  characteristicCopy = characteristic;
  dictionary = [v5 dictionary];
  [dictionary setObject:titleCopy forKeyedSubscript:*MEMORY[0x277D13F60]];

  characteristicCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", characteristicCopy];
  v10 = [characteristicCopy componentsSeparatedByString:@"::"];
  lastObject = [v10 lastObject];
  v12 = [lastObject componentsSeparatedByString:@":"];
  firstObject = [v12 firstObject];
  v14 = [firstObject stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
  v15 = [@"AccessoryDetails." stringByAppendingString:v14];
  [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277D13DC8]];

  objc_opt_class();
  value = [characteristicCopy value];
  if (objc_opt_isKindOfClass())
  {
    v17 = value;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = MEMORY[0x277CCABB0];
  [v18 BOOLValue];
  v20 = [v19 numberWithInteger:HFPrimaryStateFromBOOL()];
  [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x277D14068]];

  v21 = [MEMORY[0x277CBEB98] setWithObjects:{characteristicCopy, 0}];

  [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  return dictionary;
}

- (id)updateUserSettingsWithValue:(BOOL)value
{
  valueCopy = value;
  v28 = *MEMORY[0x277D85DE8];
  configurator = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];

  if (configurator)
  {
    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    configurator2 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    cameraSettings = [configurator2 cameraSettings];

    configurator3 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    v10 = [configurator3 characteristicForSettings:cameraSettings];

    configurator4 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    transactionReason = [configurator4 transactionReason];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:valueCopy];
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      bOOLValue = [v13 BOOLValue];
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Attempt to update value allowed %{BOOL}d for characteristic:%@", buf, 0x12u);
    }

    configurator5 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    characteristicValueManager = [configurator5 characteristicValueManager];

    [characteristicValueManager beginTransactionWithReason:transactionReason];
    v17 = objc_alloc_init(MEMORY[0x277D14560]);
    [v17 setValue:v13 forCharacteristic:v10];
    v18 = [characteristicValueManager writeValuesForCharacteristics:v17];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__HUServiceDetailsCameraSettingsReaderWriter_updateUserSettingsWithValue___block_invoke;
    v22[3] = &unk_277DB7B30;
    futureWithNoResult = v6;
    v23 = futureWithNoResult;
    v20 = [v18 addCompletionBlock:v22];

    [characteristicValueManager commitTransactionWithReason:transactionReason];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (HUServiceDetailsCameraSettingsReaderWriterConfigurator)configurator
{
  WeakRetained = objc_loadWeakRetained(&self->_configurator);

  return WeakRetained;
}

@end