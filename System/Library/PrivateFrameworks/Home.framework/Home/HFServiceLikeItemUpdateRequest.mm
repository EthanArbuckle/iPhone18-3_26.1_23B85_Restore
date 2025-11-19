@interface HFServiceLikeItemUpdateRequest
- (HFServiceLikeItemUpdateRequest)init;
- (HFServiceLikeItemUpdateRequest)initWithAccessory:(id)a3 valueSource:(id)a4 characteristics:(id)a5;
- (HFServiceLikeItemUpdateRequest)initWithService:(id)a3 valueSource:(id)a4 characteristics:(id)a5;
- (HMAccessory)accessory;
- (id)_displayMetadataForReadResponse:(id)a3;
- (id)_standardResultsForReadResponse:(id)a3 displayMetadata:(id)a4 batteryLevelResults:(id)a5 updateOptions:(id)a6;
- (id)updateWithOptions:(id)a3;
@end

@implementation HFServiceLikeItemUpdateRequest

- (HFServiceLikeItemUpdateRequest)initWithService:(id)a3 valueSource:(id)a4 characteristics:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && v10)
  {
    v18.receiver = self;
    v18.super_class = HFServiceLikeItemUpdateRequest;
    v12 = [(HFServiceLikeItemUpdateRequest *)&v18 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_service, a3);
      objc_storeStrong(p_isa + 3, a4);
      objc_storeStrong(p_isa + 4, a5);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    v15 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "HFServiceLikeItemUpdateRequest cannot init with nil service %@ or nil valueSource %@", buf, 0x16u);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HFServiceLikeItemUpdateRequest)initWithAccessory:(id)a3 valueSource:(id)a4 characteristics:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && v10)
  {
    v20.receiver = self;
    v20.super_class = HFServiceLikeItemUpdateRequest;
    v12 = [(HFServiceLikeItemUpdateRequest *)&v20 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_accessory, a3);
      objc_storeStrong(&v13->_valueSource, a4);
      if (v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = [MEMORY[0x277CBEB98] set];
      }

      characteristics = v13->_characteristics;
      v13->_characteristics = v14;
    }

    self = v13;
    v16 = self;
  }

  else
  {
    v15 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "HFServiceLikeItemUpdateRequest cannot init with nil accessory %@ or nil valueSource %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (HFServiceLikeItemUpdateRequest)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithService_valueSource_characteristics_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFServiceLikeItem.m" lineNumber:105 description:{@"%s is unavailable; use %@ instead", "-[HFServiceLikeItemUpdateRequest init]", v5}];

  return 0;
}

- (HMAccessory)accessory
{
  accessory = self->_accessory;
  if (accessory)
  {
    v3 = accessory;
  }

  else
  {
    v4 = [(HFServiceLikeItemUpdateRequest *)self service];
    v3 = [v4 accessory];
  }

  return v3;
}

- (id)updateWithOptions:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFServiceLikeItemUpdateRequest *)self characteristics];
  v6 = [v5 mutableCopy];

  v7 = [(HFServiceLikeItemUpdateRequest *)self service];

  if (v7)
  {
    v8 = [(HFServiceLikeItemUpdateRequest *)self service];
    v9 = [v8 hf_requiredCharacteristicTypesForDisplayMetadata];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke;
    v29[3] = &unk_277DFD7C8;
    v29[4] = self;
    v10 = [v9 na_map:v29];
    [v6 unionSet:v10];
  }

  v11 = [HFAccessoryBatteryLevelItem alloc];
  v12 = [(HFServiceLikeItemUpdateRequest *)self accessory];
  v13 = [(HFServiceLikeItemUpdateRequest *)self valueSource];
  v14 = [(HFAccessoryBatteryLevelItem *)v11 initWithAccessory:v12 valueSource:v13];

  v15 = [v4 mutableCopy];
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{@"batteryLow", @"batteryPercentage", 0}];
  [v15 setObject:v16 forKeyedSubscript:@"accessoryBatteryDesiredKeys"];

  v17 = [(HFItem *)v14 updateWithOptions:v15];
  v18 = [v17 recover:&__block_literal_global_140];

  v19 = [(HFServiceLikeItemUpdateRequest *)self valueSource];
  v20 = [v19 readValuesForCharacteristics:v6];
  v30[0] = v20;
  v30[1] = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

  v22 = [MEMORY[0x277D2C900] combineAllFutures:v21];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke_3;
  v27[3] = &unk_277DFCDF8;
  v27[4] = self;
  v28 = v4;
  v23 = v4;
  v24 = [v22 flatMap:v27];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

id __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 service];
  v5 = [v4 hf_characteristicOfType:v3];

  return v5;
}

id __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = [*(a1 + 32) _displayMetadataForReadResponse:v4];
  v7 = [*(a1 + 32) _standardResultsForReadResponse:v4 displayMetadata:v6 batteryLevelResults:v5 updateOptions:*(a1 + 40)];
  v8 = [[HFServiceLikeItemUpdateResponse alloc] initWithDisplayMetadata:v6 readResponse:v4 standardResults:v7];
  v9 = [MEMORY[0x277D2C900] futureWithResult:v8];

  return v9;
}

- (id)_displayMetadataForReadResponse:(id)a3
{
  v4 = a3;
  v5 = [(HFServiceLikeItemUpdateRequest *)self service];

  if (v5)
  {
    v6 = [(HFServiceLikeItemUpdateRequest *)self service];
    v7 = [HFCharacteristicValueDisplayMetadata displayMetadataForService:v6 characteristicReadResponse:v4];
  }

  else
  {
    v8 = [(HFServiceLikeItemUpdateRequest *)self accessory];

    if (v8)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __66__HFServiceLikeItemUpdateRequest__displayMetadataForReadResponse___block_invoke;
      v12[3] = &unk_277DFD7F0;
      v12[4] = self;
      v9 = __66__HFServiceLikeItemUpdateRequest__displayMetadataForReadResponse___block_invoke(v12);
      v10 = [(HFServiceLikeItemUpdateRequest *)self accessory];
      v7 = [HFCharacteristicValueDisplayMetadata displayMetadataForAccessory:v10 withContextProvider:v9];
    }

    else
    {
      NSLog(&cfstr_NoAccessoryOrS.isa, self);
      v7 = 0;
    }
  }

  return v7;
}

id __66__HFServiceLikeItemUpdateRequest__displayMetadataForReadResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueSource];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 valueSource];
    [v5 contextProvider];
  }

  else
  {
    v5 = [v4 accessory];
    [v5 home];
  }
  v6 = ;

  return v6;
}

- (id)_standardResultsForReadResponse:(id)a3 displayMetadata:(id)a4 batteryLevelResults:(id)a5 updateOptions:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HFServiceLikeItemUpdateRequest *)self service];
  v15 = v14;
  if (!v14)
  {
    v15 = [(HFServiceLikeItemUpdateRequest *)self accessory];
  }

  v16 = [(HFServiceLikeItemUpdateRequest *)self accessory];
  v17 = [(HFServiceLikeItemUpdateRequest *)self valueSource];
  v18 = [HFServiceLikeItemResultFactory populateStandardResultsForHomeKitObject:v15 withBackingAccessory:v16 displayMetadata:v12 readResponse:v13 batteryLevelResults:v11 valueSource:v17 updateOptions:v10];

  if (!v14)
  {
  }

  return v18;
}

@end