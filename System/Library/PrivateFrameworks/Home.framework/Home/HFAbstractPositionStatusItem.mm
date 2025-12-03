@interface HFAbstractPositionStatusItem
- (id)_characteristicsToReadForCharacteristicTypes:(id)types inServices:(id)services;
- (id)_subclass_updateWithOptions:(id)options;
- (id)defaultTitleForRepresentedHomeKitObjects:(id)objects;
- (id)multipleClosedServicesDescriptionString;
- (id)multipleClosingServicesDescriptionString;
- (id)multipleObstructedServicesDescriptionString;
- (id)multipleOpenServicesDescriptionString;
- (id)multipleOpeningServicesDescriptionString;
- (id)multipleServiceTitleFormatString;
- (id)oneClosedServiceDescriptionString;
- (id)oneClosingServiceDescriptionString;
- (id)oneObstructedServiceDescriptionString;
- (id)oneOpenServiceDescriptionString;
- (id)oneOpeningServiceDescriptionString;
- (id)oneServiceTitleString;
@end

@implementation HFAbstractPositionStatusItem

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_opt_class();
  serviceTypes = [objc_opt_class() serviceTypes];
  anyObject = [serviceTypes anyObject];
  v8 = [v5 characteristicTypesForServiceType:anyObject includingAssociatedTypes:1];

  serviceTypes2 = [objc_opt_class() serviceTypes];
  allObjects = [serviceTypes2 allObjects];
  allObjects2 = [v8 allObjects];
  v12 = [(HFStatusItem *)self filteredServicesOfTypes:allObjects containingCharacteristicTypes:allObjects2];

  v13 = [(HFAbstractPositionStatusItem *)self _characteristicsToReadForCharacteristicTypes:v8 inServices:v12];
  objc_initWeak(&location, self);
  valueSource = [(HFStatusItem *)self valueSource];
  v15 = [valueSource readValuesForCharacteristics:v13];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__HFAbstractPositionStatusItem__subclass_updateWithOptions___block_invoke;
  v18[3] = &unk_277DF78B0;
  objc_copyWeak(&v19, &location);
  v16 = [v15 flatMap:v18];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);

  return v16;
}

id __60__HFAbstractPositionStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v9 = MEMORY[0x277D2C900];
    v54 = @"hidden";
    v55[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    goto LABEL_5;
  }

  v5 = [objc_opt_class() serviceTypes];
  v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:v5];
  v7 = [v6 mutableCopy];

  v8 = [v7 objectForKeyedSubscript:@"hidden"];
  LODWORD(v6) = [v8 BOOLValue];

  if (v6)
  {
    v9 = MEMORY[0x277D2C900];
LABEL_5:
    v10 = [HFItemUpdateOutcome outcomeWithResults:v7];
    v11 = [v9 futureWithResult:v10];

    goto LABEL_59;
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = [MEMORY[0x277CBEB58] set];
  v18 = [v7 objectForKeyedSubscript:@"representedHomeKitObjects"];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __60__HFAbstractPositionStatusItem__subclass_updateWithOptions___block_invoke_2;
  v46[3] = &unk_277DFECC8;
  v47 = v3;
  v19 = v12;
  v48 = v19;
  v45 = v17;
  v49 = v45;
  v20 = v15;
  v50 = v20;
  v21 = v13;
  v51 = v21;
  v22 = v14;
  v52 = v22;
  v23 = v16;
  v53 = v23;
  v44 = v18;
  [v18 na_each:v46];
  if ([v21 count])
  {
    [v21 unionSet:v22];
    [v21 unionSet:v20];
  }

  if ([v19 count])
  {
    if ([v19 count] == 1)
    {
      [WeakRetained oneServiceTitleString];
    }

    else
    {
      [WeakRetained multipleServiceTitleFormatString];
    }
    v24 = ;
    if ([v19 count] == 1)
    {
      [WeakRetained oneObstructedServiceDescriptionString];
    }

    else
    {
      [WeakRetained multipleObstructedServicesDescriptionString];
    }
    v41 = ;
    v25 = v19;
  }

  else if ([v21 count])
  {
    if ([v21 count] == 1)
    {
      [WeakRetained oneServiceTitleString];
    }

    else
    {
      [WeakRetained multipleServiceTitleFormatString];
    }
    v24 = ;
    if ([v21 count] == 1)
    {
      [WeakRetained oneOpenServiceDescriptionString];
    }

    else
    {
      [WeakRetained multipleOpenServicesDescriptionString];
    }
    v41 = ;
    v25 = v21;
  }

  else if ([v22 count])
  {
    if ([v22 count] == 1)
    {
      [WeakRetained oneServiceTitleString];
    }

    else
    {
      [WeakRetained multipleServiceTitleFormatString];
    }
    v24 = ;
    if ([v22 count] == 1)
    {
      [WeakRetained oneOpeningServiceDescriptionString];
    }

    else
    {
      [WeakRetained multipleOpeningServicesDescriptionString];
    }
    v41 = ;
    v25 = v22;
  }

  else if ([v20 count])
  {
    if ([v20 count] == 1)
    {
      [WeakRetained oneServiceTitleString];
    }

    else
    {
      [WeakRetained multipleServiceTitleFormatString];
    }
    v24 = ;
    if ([v20 count] == 1)
    {
      [WeakRetained oneClosingServiceDescriptionString];
    }

    else
    {
      [WeakRetained multipleClosingServicesDescriptionString];
    }
    v41 = ;
    v25 = v20;
  }

  else
  {
    if (![v23 count])
    {
      v24 = 0;
      v26 = 0;
      v41 = 0;
      goto LABEL_50;
    }

    if ([v23 count] == 1)
    {
      [WeakRetained oneServiceTitleString];
    }

    else
    {
      [WeakRetained multipleServiceTitleFormatString];
    }
    v24 = ;
    if ([v23 count] == 1)
    {
      [WeakRetained oneClosedServiceDescriptionString];
    }

    else
    {
      [WeakRetained multipleClosedServicesDescriptionString];
    }
    v41 = ;
    v25 = v23;
  }

  v26 = v25;
LABEL_50:
  [v7 setObject:v19 forKeyedSubscript:@"obstructedServices"];
  [v7 setObject:v21 forKeyedSubscript:@"openServices"];
  [v7 setObject:v22 forKeyedSubscript:@"openingServices"];
  [v7 setObject:v20 forKeyedSubscript:@"closingServices"];
  [v7 setObject:v23 forKeyedSubscript:@"closedServices"];
  [v7 setObject:v45 forKeyedSubscript:@"unknownServices"];
  v42 = v19;
  v43 = v22;
  v40 = v3;
  if (v24)
  {
    v27 = v23;
    v28 = v20;
    if ([v26 count] == 1)
    {
      [v7 setObject:v24 forKeyedSubscript:@"title"];
    }

    else
    {
      v35 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v24 validFormatSpecifiers:@"%lu" error:0, objc_msgSend(v26, "count")];
      [v7 setObject:v35 forKeyedSubscript:@"title"];
    }

    v34 = @"description";
    v33 = v7;
    v31 = v41;
    v32 = v41;
    goto LABEL_57;
  }

  v27 = v23;
  v28 = v20;
  v29 = [v7 objectForKeyedSubscript:@"statusItemCategory"];
  v30 = [v29 integerValue];

  v31 = v41;
  if (v30 == 3)
  {
    v32 = MEMORY[0x277CBEC38];
    v33 = v7;
    v34 = @"hidden";
LABEL_57:
    [v33 setObject:v32 forKeyedSubscript:v34];
  }

  v36 = MEMORY[0x277D2C900];
  v37 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v11 = [v36 futureWithResult:v37];

  v3 = v40;
LABEL_59:

  v38 = *MEMORY[0x277D85DE8];

  return v11;
}

void __60__HFAbstractPositionStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) batchResponseForService:v12 includeChildServices:1];
  v4 = [HFCharacteristicValueDisplayMetadata displayMetadataForService:v12 characteristicReadResponse:v3];
  v5 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF9A0]];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  if ([v6 BOOLValue])
  {
    [*(a1 + 40) addObject:v12];
  }

  v7 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF838]];
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  if (v8)
  {
    if ([v8 integerValue] == 2)
    {
      [*(a1 + 40) addObject:v12];
    }

    else if ([v8 integerValue] == 3)
    {
      v9 = 48;
      goto LABEL_14;
    }
  }

  if ([v4 primaryState] == 2)
  {
    v10 = [v4 transitioningPrimaryState] == 1;
    v9 = 64;
    v11 = 56;
  }

  else
  {
    if ([v4 primaryState] != 1)
    {
      goto LABEL_15;
    }

    v10 = [v4 transitioningPrimaryState] == 2;
    v9 = 80;
    v11 = 72;
  }

  if (v10)
  {
    v9 = v11;
  }

LABEL_14:
  [*(a1 + v9) addObject:v12];
LABEL_15:
}

- (id)oneServiceTitleString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:164 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem oneServiceTitleString]", objc_opt_class()}];

  return 0;
}

- (id)multipleServiceTitleFormatString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:170 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem multipleServiceTitleFormatString]", objc_opt_class()}];

  return 0;
}

- (id)oneObstructedServiceDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:176 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem oneObstructedServiceDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)multipleObstructedServicesDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:182 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem multipleObstructedServicesDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)oneOpenServiceDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:188 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem oneOpenServiceDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)multipleOpenServicesDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:194 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem multipleOpenServicesDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)oneOpeningServiceDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:200 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem oneOpeningServiceDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)multipleOpeningServicesDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:206 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem multipleOpeningServicesDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)oneClosingServiceDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:212 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem oneClosingServiceDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)multipleClosingServicesDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:218 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem multipleClosingServicesDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)oneClosedServiceDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:224 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem oneClosedServiceDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)multipleClosedServicesDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractPositionStatusItem.m" lineNumber:230 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPositionStatusItem multipleClosedServicesDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)defaultTitleForRepresentedHomeKitObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count] == 1)
  {
    anyObject = [objectsCopy anyObject];
    v6 = [(HFStatusItem *)self displayNameForHomeKitObject:anyObject];
LABEL_6:

    goto LABEL_8;
  }

  if ([objectsCopy count] >= 2)
  {
    v7 = MEMORY[0x277CCACA8];
    multipleServiceTitleFormatString = [(HFAbstractPositionStatusItem *)self multipleServiceTitleFormatString];
    v10 = 0;
    v6 = [v7 localizedStringWithValidatedFormat:multipleServiceTitleFormatString validFormatSpecifiers:@"%lu" error:&v10, objc_msgSend(objectsCopy, "count")];
    anyObject = v10;

    if (!v6)
    {
      NSLog(&cfstr_CouldnTLocaliz_1.isa, anyObject);
    }

    goto LABEL_6;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)_characteristicsToReadForCharacteristicTypes:(id)types inServices:(id)services
{
  servicesCopy = services;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__HFAbstractPositionStatusItem__characteristicsToReadForCharacteristicTypes_inServices___block_invoke;
  v9[3] = &unk_277DF2DD8;
  v10 = servicesCopy;
  v6 = servicesCopy;
  v7 = [types na_flatMap:v9];

  return v7;
}

id __88__HFAbstractPositionStatusItem__characteristicsToReadForCharacteristicTypes_inServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__HFAbstractPositionStatusItem__characteristicsToReadForCharacteristicTypes_inServices___block_invoke_2;
  v8[3] = &unk_277DFED18;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_flatMap:v8];

  return v6;
}

id __88__HFAbstractPositionStatusItem__characteristicsToReadForCharacteristicTypes_inServices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [v3 hf_characteristicOfType:*(a1 + 32)];
  [v4 na_safeAddObject:v5];

  if (([*(a1 + 32) isEqualToString:*MEMORY[0x277CCF748]] & 1) == 0)
  {
    v6 = [v3 hf_childServices];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __88__HFAbstractPositionStatusItem__characteristicsToReadForCharacteristicTypes_inServices___block_invoke_3;
    v8[3] = &unk_277DFECF0;
    v9 = v4;
    v10 = *(a1 + 32);
    [v6 na_each:v8];
  }

  return v4;
}

void __88__HFAbstractPositionStatusItem__characteristicsToReadForCharacteristicTypes_inServices___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hf_characteristicOfType:*(a1 + 40)];
  [v2 na_safeAddObject:v3];
}

@end