@interface HUCameraStreamAndRecordStateInfoProvider
- (HUCameraStreamAndRecordStateInfoProvider)initWithDisplayStyle:(unint64_t)style;
@end

@implementation HUCameraStreamAndRecordStateInfoProvider

- (HUCameraStreamAndRecordStateInfoProvider)initWithDisplayStyle:(unint64_t)style
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HUCameraStreamAndRecordStateInfoProvider_initWithDisplayStyle___block_invoke;
  aBlock[3] = &__block_descriptor_40_e38___NSAttributedString_16__0__NSNumber_8l;
  aBlock[4] = style;
  v5 = _Block_copy(aBlock);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [&unk_282492B40 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v9 = 1;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(&unk_282492B40);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x277D14B38]);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __65__HUCameraStreamAndRecordStateInfoProvider_initWithDisplayStyle___block_invoke_2;
        v19[3] = &unk_277DBBC38;
        v21 = v9;
        v13 = v5;
        v19[4] = v11;
        v20 = v13;
        v14 = [v12 initWithResultsBlock:v19];
        ++v9;
        [v4 addObject:v14];

        ++v10;
      }

      while (v7 != v10);
      v7 = [&unk_282492B40 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v18.receiver = self;
  v18.super_class = HUCameraStreamAndRecordStateInfoProvider;
  v15 = [(HFStaticItemProvider *)&v18 initWithItems:v4, self];

  return v15;
}

id __65__HUCameraStreamAndRecordStateInfoProvider_initWithDisplayStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = HUImageIdentifierForStreamingOption([a2 unsignedIntegerValue]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUCameraStreamingSettingsHeaderDisplayStyleServiceDetails_%@_Title", v3];
  v5 = _HULocalizedStringWithDefaultValue(v4, v4, 1);

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUCameraStreamingSettingsHeaderDisplayStyleServiceDetails_%@_Body", v3];
  v7 = _HULocalizedStringWithDefaultValue(v6, v6, 1);

  v8 = HUCameraBuildFeatureDescriptionAttributedString(*(a1 + 32), v5, v7);

  return v8;
}

id __65__HUCameraStreamAndRecordStateInfoProvider_initWithDisplayStyle___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13FF0]];

  v4 = (*(*(a1 + 40) + 16))();
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v5 = objc_alloc(MEMORY[0x277D14728]);
  v6 = HUImageIdentifierForStreamingOption([*(a1 + 32) unsignedIntegerValue]);
  v7 = [v5 initWithImageIdentifier:v6];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13E88]];

  v8 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v8;
}

@end