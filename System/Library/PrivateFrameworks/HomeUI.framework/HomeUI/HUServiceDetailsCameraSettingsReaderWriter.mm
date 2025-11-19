@interface HUServiceDetailsCameraSettingsReaderWriter
- (HUServiceDetailsCameraSettingsReaderWriter)initWithConfigurator:(id)a3;
- (HUServiceDetailsCameraSettingsReaderWriterConfigurator)configurator;
- (id)_fastUpdateResultsForCharacteristic:(id)a3 withTitle:(id)a4;
- (id)readWithOptions:(id)a3;
- (id)updateUserSettingsWithValue:(BOOL)a3;
@end

@implementation HUServiceDetailsCameraSettingsReaderWriter

- (HUServiceDetailsCameraSettingsReaderWriter)initWithConfigurator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUServiceDetailsCameraSettingsReaderWriter;
  v5 = [(HUServiceDetailsCameraSettingsReaderWriter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_configurator, v4);
  }

  return v6;
}

- (id)readWithOptions:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];

  if (!v5)
  {
    v19 = MEMORY[0x277D2C900];
    v20 = MEMORY[0x277D14780];
    v40 = *MEMORY[0x277D13FB8];
    v41[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v9 = [v20 outcomeWithResults:v7];
    v18 = [v19 futureWithResult:v9];
    goto LABEL_12;
  }

  v6 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
  v7 = [v6 cameraSettings];

  v8 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
  v9 = [v8 characteristicForSettings:v7];

  if (!v9)
  {
    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
      *buf = 138412290;
      v39 = v22;
      _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "Failed to get characteristic for configurator:%@", buf, 0xCu);
    }

    v23 = MEMORY[0x277D2C900];
    v24 = MEMORY[0x277D14780];
    v36 = *MEMORY[0x277D13FB8];
    v37 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v25 = [v24 outcomeWithResults:v11];
    v18 = [v23 futureWithResult:v25];
    goto LABEL_10;
  }

  v10 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
  v11 = [v10 itemTitle];

  v12 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  v13 = [v12 BOOLValue];

  if (!v13)
  {
    v26 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v27 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    v25 = [v27 characteristicValueManager];

    v28 = [v25 readValuesForCharacteristics:v26];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __62__HUServiceDetailsCameraSettingsReaderWriter_readWithOptions___block_invoke;
    v31[3] = &unk_277DB97A8;
    v11 = v11;
    v32 = v11;
    v33 = v9;
    v34 = self;
    v35 = v26;
    v29 = v26;
    v18 = [v28 flatMap:v31];

LABEL_10:
    goto LABEL_11;
  }

  v14 = MEMORY[0x277D2C900];
  v15 = MEMORY[0x277D14780];
  v16 = [(HUServiceDetailsCameraSettingsReaderWriter *)self _fastUpdateResultsForCharacteristic:v9 withTitle:v11];
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

- (id)_fastUpdateResultsForCharacteristic:(id)a3 withTitle:(id)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", v7];
  v10 = [v9 componentsSeparatedByString:@"::"];
  v11 = [v10 lastObject];
  v12 = [v11 componentsSeparatedByString:@":"];
  v13 = [v12 firstObject];
  v14 = [v13 stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
  v15 = [@"AccessoryDetails." stringByAppendingString:v14];
  [v8 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13DC8]];

  objc_opt_class();
  v16 = [v7 value];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = MEMORY[0x277CCABB0];
  [v18 BOOLValue];
  v20 = [v19 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v8 setObject:v20 forKeyedSubscript:*MEMORY[0x277D14068]];

  v21 = [MEMORY[0x277CBEB98] setWithObjects:{v7, 0}];

  [v8 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  return v8;
}

- (id)updateUserSettingsWithValue:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v5 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    v7 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    v8 = [v7 cameraSettings];

    v9 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    v10 = [v9 characteristicForSettings:v8];

    v11 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    v12 = [v11 transactionReason];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v25 = [v13 BOOLValue];
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Attempt to update value allowed %{BOOL}d for characteristic:%@", buf, 0x12u);
    }

    v15 = [(HUServiceDetailsCameraSettingsReaderWriter *)self configurator];
    v16 = [v15 characteristicValueManager];

    [v16 beginTransactionWithReason:v12];
    v17 = objc_alloc_init(MEMORY[0x277D14560]);
    [v17 setValue:v13 forCharacteristic:v10];
    v18 = [v16 writeValuesForCharacteristics:v17];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__HUServiceDetailsCameraSettingsReaderWriter_updateUserSettingsWithValue___block_invoke;
    v22[3] = &unk_277DB7B30;
    v19 = v6;
    v23 = v19;
    v20 = [v18 addCompletionBlock:v22];

    [v16 commitTransactionWithReason:v12];
  }

  else
  {
    v19 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v19;
}

- (HUServiceDetailsCameraSettingsReaderWriterConfigurator)configurator
{
  WeakRetained = objc_loadWeakRetained(&self->_configurator);

  return WeakRetained;
}

@end