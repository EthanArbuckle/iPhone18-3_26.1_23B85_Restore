@interface HFAbstractBinaryStatusItem
- (id)_shortTitleForTitle:(id)title;
- (id)_subclass_updateWithOptions:(id)options;
- (id)defaultTitleForRepresentedHomeKitObjects:(id)objects;
- (id)multipleAbnormalServicesDescriptionString;
- (id)multipleAbnormalServicesFormatString;
- (id)multipleNormalServicesDescriptionString;
- (id)multipleNormalServicesFormatString;
- (id)oneAbnormalServiceDescriptionString;
- (id)oneAbnormalServiceFormatString;
- (id)oneNormalServiceDescriptionString;
- (id)oneNormalServiceFormatString;
@end

@implementation HFAbstractBinaryStatusItem

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  serviceTypes = [objc_opt_class() serviceTypes];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__HFAbstractBinaryStatusItem__subclass_updateWithOptions___block_invoke;
  v19[3] = &unk_277DF2DD8;
  v19[4] = self;
  v6 = [serviceTypes na_flatMap:v19];
  allObjects = [serviceTypes allObjects];
  allObjects2 = [v6 allObjects];
  v9 = [(HFStatusItem *)self filteredServicesOfTypes:allObjects containingCharacteristicTypes:allObjects2];

  objc_initWeak(&location, self);
  valueSource = [(HFStatusItem *)self valueSource];
  v11 = [valueSource readValuesForCharacteristicTypes:v6 inServices:v9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__HFAbstractBinaryStatusItem__subclass_updateWithOptions___block_invoke_2;
  v15[3] = &unk_277DF61A0;
  objc_copyWeak(&v17, &location);
  v12 = serviceTypes;
  v16 = v12;
  v13 = [v11 flatMap:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

id __58__HFAbstractBinaryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() characteristicTypesForServiceType:v3 includingAssociatedTypes:1];

  return v4;
}

id __58__HFAbstractBinaryStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v13 = MEMORY[0x277D2C900];
    v29 = @"hidden";
    v30[0] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v15 = [HFItemUpdateOutcome outcomeWithResults:v14];
    v12 = [v13 futureWithResult:v15];

    goto LABEL_20;
  }

  v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:*(a1 + 32)];
  v7 = [v6 mutableCopy];

  v8 = [v7 objectForKeyedSubscript:@"hidden"];
  v9 = [v8 BOOLValue];

  if (!v9)
  {
    v11 = [v7 objectForKeyedSubscript:@"representedHomeKitObjects"];
    v16 = [v7 objectForKeyedSubscript:@"state"];
    v17 = [v16 integerValue];

    if (v17 == 1)
    {
      if ([v11 count] == 1)
      {
        v18 = [v5 oneNormalServiceFormatString];
        [v5 oneNormalServiceDescriptionString];
      }

      else
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = [v5 multipleNormalServicesFormatString];
        v18 = [v23 stringWithValidatedFormat:v24 validFormatSpecifiers:@"%lu" error:0, objc_msgSend(v11, "count")];

        [v5 multipleNormalServicesDescriptionString];
      }
    }

    else
    {
      if (v17 != 2)
      {
        v20 = 0;
        goto LABEL_17;
      }

      if ([v11 count] == 1)
      {
        v18 = [v5 oneAbnormalServiceFormatString];
        [v5 oneAbnormalServiceDescriptionString];
      }

      else
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = [v5 multipleAbnormalServicesFormatString];
        v18 = [v21 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%lu" error:0, objc_msgSend(v11, "count")];

        [v5 multipleAbnormalServicesDescriptionString];
      }
    }
    v19 = ;
    v20 = v19;
    if (v18)
    {
      [v7 setObject:v18 forKeyedSubscript:@"title"];
      [v7 setObject:v20 forKeyedSubscript:@"description"];

LABEL_18:
      v25 = MEMORY[0x277D2C900];
      v26 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v12 = [v25 futureWithResult:v26];

      goto LABEL_19;
    }

LABEL_17:
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    goto LABEL_18;
  }

  v10 = MEMORY[0x277D2C900];
  v11 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v12 = [v10 futureWithResult:v11];
LABEL_19:

LABEL_20:
  v27 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)oneAbnormalServiceFormatString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:95 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem oneAbnormalServiceFormatString]", objc_opt_class()}];

  return 0;
}

- (id)oneNormalServiceFormatString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:101 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem oneNormalServiceFormatString]", objc_opt_class()}];

  return 0;
}

- (id)multipleAbnormalServicesFormatString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:107 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem multipleAbnormalServicesFormatString]", objc_opt_class()}];

  return 0;
}

- (id)multipleNormalServicesFormatString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:113 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem multipleNormalServicesFormatString]", objc_opt_class()}];

  return 0;
}

- (id)oneAbnormalServiceDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:120 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem oneAbnormalServiceDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)oneNormalServiceDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:126 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem oneNormalServiceDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)multipleAbnormalServicesDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:132 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem multipleAbnormalServicesDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)multipleNormalServicesDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:138 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem multipleNormalServicesDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)defaultTitleForRepresentedHomeKitObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count] == 1)
  {
    oneUnknownServiceFormatString = [(HFAbstractBinaryStatusItem *)self oneUnknownServiceFormatString];
  }

  else if ([objectsCopy count] >= 2 && (-[HFAbstractBinaryStatusItem multipleUnknownServicesFormatString](self, "multipleUnknownServicesFormatString"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v11 = 0;
    oneUnknownServiceFormatString = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%lu" error:&v11, objc_msgSend(objectsCopy, "count")];
    v8 = v11;
    v9 = v8;
    if (!oneUnknownServiceFormatString)
    {
      NSLog(&cfstr_CouldnTLocaliz_1.isa, v8);
    }
  }

  else
  {
    oneUnknownServiceFormatString = 0;
  }

  return oneUnknownServiceFormatString;
}

- (id)_shortTitleForTitle:(id)title
{
  v3 = [title componentsSeparatedByString:@" "];
  lastObject = [v3 lastObject];

  return lastObject;
}

@end