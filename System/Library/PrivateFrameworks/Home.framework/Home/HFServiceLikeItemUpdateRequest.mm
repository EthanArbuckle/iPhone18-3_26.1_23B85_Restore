@interface HFServiceLikeItemUpdateRequest
- (HFServiceLikeItemUpdateRequest)init;
- (HFServiceLikeItemUpdateRequest)initWithAccessory:(id)accessory valueSource:(id)source characteristics:(id)characteristics;
- (HFServiceLikeItemUpdateRequest)initWithService:(id)service valueSource:(id)source characteristics:(id)characteristics;
- (HMAccessory)accessory;
- (id)_displayMetadataForReadResponse:(id)response;
- (id)_standardResultsForReadResponse:(id)response displayMetadata:(id)metadata batteryLevelResults:(id)results updateOptions:(id)options;
- (id)updateWithOptions:(id)options;
@end

@implementation HFServiceLikeItemUpdateRequest

- (HFServiceLikeItemUpdateRequest)initWithService:(id)service valueSource:(id)source characteristics:(id)characteristics
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sourceCopy = source;
  characteristicsCopy = characteristics;
  if (serviceCopy && sourceCopy)
  {
    v18.receiver = self;
    v18.super_class = HFServiceLikeItemUpdateRequest;
    v12 = [(HFServiceLikeItemUpdateRequest *)&v18 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_service, service);
      objc_storeStrong(p_isa + 3, source);
      objc_storeStrong(p_isa + 4, characteristics);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v15 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = serviceCopy;
      v21 = 2112;
      v22 = sourceCopy;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "HFServiceLikeItemUpdateRequest cannot init with nil service %@ or nil valueSource %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HFServiceLikeItemUpdateRequest)initWithAccessory:(id)accessory valueSource:(id)source characteristics:(id)characteristics
{
  v25 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  sourceCopy = source;
  characteristicsCopy = characteristics;
  if (accessoryCopy && sourceCopy)
  {
    v20.receiver = self;
    v20.super_class = HFServiceLikeItemUpdateRequest;
    v12 = [(HFServiceLikeItemUpdateRequest *)&v20 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_accessory, accessory);
      objc_storeStrong(&v13->_valueSource, source);
      if (characteristicsCopy)
      {
        v14 = characteristicsCopy;
      }

      else
      {
        v14 = [MEMORY[0x277CBEB98] set];
      }

      characteristics = v13->_characteristics;
      v13->_characteristics = v14;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v15 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = accessoryCopy;
      v23 = 2112;
      v24 = sourceCopy;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "HFServiceLikeItemUpdateRequest cannot init with nil accessory %@ or nil valueSource %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HFServiceLikeItemUpdateRequest)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithService_valueSource_characteristics_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceLikeItem.m" lineNumber:105 description:{@"%s is unavailable; use %@ instead", "-[HFServiceLikeItemUpdateRequest init]", v5}];

  return 0;
}

- (HMAccessory)accessory
{
  accessory = self->_accessory;
  if (accessory)
  {
    accessory = accessory;
  }

  else
  {
    service = [(HFServiceLikeItemUpdateRequest *)self service];
    accessory = [service accessory];
  }

  return accessory;
}

- (id)updateWithOptions:(id)options
{
  v30[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  characteristics = [(HFServiceLikeItemUpdateRequest *)self characteristics];
  v6 = [characteristics mutableCopy];

  service = [(HFServiceLikeItemUpdateRequest *)self service];

  if (service)
  {
    service2 = [(HFServiceLikeItemUpdateRequest *)self service];
    hf_requiredCharacteristicTypesForDisplayMetadata = [service2 hf_requiredCharacteristicTypesForDisplayMetadata];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke;
    v29[3] = &unk_277DFD7C8;
    v29[4] = self;
    v10 = [hf_requiredCharacteristicTypesForDisplayMetadata na_map:v29];
    [v6 unionSet:v10];
  }

  v11 = [HFAccessoryBatteryLevelItem alloc];
  accessory = [(HFServiceLikeItemUpdateRequest *)self accessory];
  valueSource = [(HFServiceLikeItemUpdateRequest *)self valueSource];
  v14 = [(HFAccessoryBatteryLevelItem *)v11 initWithAccessory:accessory valueSource:valueSource];

  v15 = [optionsCopy mutableCopy];
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{@"batteryLow", @"batteryPercentage", 0}];
  [v15 setObject:v16 forKeyedSubscript:@"accessoryBatteryDesiredKeys"];

  v17 = [(HFItem *)v14 updateWithOptions:v15];
  v18 = [v17 recover:&__block_literal_global_140];

  valueSource2 = [(HFServiceLikeItemUpdateRequest *)self valueSource];
  v20 = [valueSource2 readValuesForCharacteristics:v6];
  v30[0] = v20;
  v30[1] = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

  v22 = [MEMORY[0x277D2C900] combineAllFutures:v21];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke_3;
  v27[3] = &unk_277DFCDF8;
  v27[4] = self;
  v28 = optionsCopy;
  v23 = optionsCopy;
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

- (id)_displayMetadataForReadResponse:(id)response
{
  responseCopy = response;
  service = [(HFServiceLikeItemUpdateRequest *)self service];

  if (service)
  {
    service2 = [(HFServiceLikeItemUpdateRequest *)self service];
    v7 = [HFCharacteristicValueDisplayMetadata displayMetadataForService:service2 characteristicReadResponse:responseCopy];
  }

  else
  {
    accessory = [(HFServiceLikeItemUpdateRequest *)self accessory];

    if (accessory)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __66__HFServiceLikeItemUpdateRequest__displayMetadataForReadResponse___block_invoke;
      v12[3] = &unk_277DFD7F0;
      v12[4] = self;
      v9 = __66__HFServiceLikeItemUpdateRequest__displayMetadataForReadResponse___block_invoke(v12);
      accessory2 = [(HFServiceLikeItemUpdateRequest *)self accessory];
      v7 = [HFCharacteristicValueDisplayMetadata displayMetadataForAccessory:accessory2 withContextProvider:v9];
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

- (id)_standardResultsForReadResponse:(id)response displayMetadata:(id)metadata batteryLevelResults:(id)results updateOptions:(id)options
{
  optionsCopy = options;
  resultsCopy = results;
  metadataCopy = metadata;
  responseCopy = response;
  service = [(HFServiceLikeItemUpdateRequest *)self service];
  accessory = service;
  if (!service)
  {
    accessory = [(HFServiceLikeItemUpdateRequest *)self accessory];
  }

  accessory2 = [(HFServiceLikeItemUpdateRequest *)self accessory];
  valueSource = [(HFServiceLikeItemUpdateRequest *)self valueSource];
  v18 = [HFServiceLikeItemResultFactory populateStandardResultsForHomeKitObject:accessory withBackingAccessory:accessory2 displayMetadata:metadataCopy readResponse:responseCopy batteryLevelResults:resultsCopy valueSource:valueSource updateOptions:optionsCopy];

  if (!service)
  {
  }

  return v18;
}

@end