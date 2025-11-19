@interface HFAbstractBinaryStatusItem
- (id)_shortTitleForTitle:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)defaultTitleForRepresentedHomeKitObjects:(id)a3;
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

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() serviceTypes];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__HFAbstractBinaryStatusItem__subclass_updateWithOptions___block_invoke;
  v19[3] = &unk_277DF2DD8;
  v19[4] = self;
  v6 = [v5 na_flatMap:v19];
  v7 = [v5 allObjects];
  v8 = [v6 allObjects];
  v9 = [(HFStatusItem *)self filteredServicesOfTypes:v7 containingCharacteristicTypes:v8];

  objc_initWeak(&location, self);
  v10 = [(HFStatusItem *)self valueSource];
  v11 = [v10 readValuesForCharacteristicTypes:v6 inServices:v9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__HFAbstractBinaryStatusItem__subclass_updateWithOptions___block_invoke_2;
  v15[3] = &unk_277DF61A0;
  objc_copyWeak(&v17, &location);
  v12 = v5;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:95 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem oneAbnormalServiceFormatString]", objc_opt_class()}];

  return 0;
}

- (id)oneNormalServiceFormatString
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:101 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem oneNormalServiceFormatString]", objc_opt_class()}];

  return 0;
}

- (id)multipleAbnormalServicesFormatString
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:107 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem multipleAbnormalServicesFormatString]", objc_opt_class()}];

  return 0;
}

- (id)multipleNormalServicesFormatString
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:113 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem multipleNormalServicesFormatString]", objc_opt_class()}];

  return 0;
}

- (id)oneAbnormalServiceDescriptionString
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:120 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem oneAbnormalServiceDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)oneNormalServiceDescriptionString
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:126 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem oneNormalServiceDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)multipleAbnormalServicesDescriptionString
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:132 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem multipleAbnormalServicesDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)multipleNormalServicesDescriptionString
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAbstractBinaryStatusItem.m" lineNumber:138 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBinaryStatusItem multipleNormalServicesDescriptionString]", objc_opt_class()}];

  return 0;
}

- (id)defaultTitleForRepresentedHomeKitObjects:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [(HFAbstractBinaryStatusItem *)self oneUnknownServiceFormatString];
  }

  else if ([v4 count] >= 2 && (-[HFAbstractBinaryStatusItem multipleUnknownServicesFormatString](self, "multipleUnknownServicesFormatString"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v11 = 0;
    v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%lu" error:&v11, objc_msgSend(v4, "count")];
    v8 = v11;
    v9 = v8;
    if (!v5)
    {
      NSLog(&cfstr_CouldnTLocaliz_1.isa, v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_shortTitleForTitle:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@" "];
  v4 = [v3 lastObject];

  return v4;
}

@end