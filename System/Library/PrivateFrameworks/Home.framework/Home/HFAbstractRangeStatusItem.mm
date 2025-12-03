@interface HFAbstractRangeStatusItem
+ (BOOL)shouldShowAverageForRange:(id)range;
+ (NSSet)serviceTypes;
+ (id)_defaultValueFormatter;
+ (id)controllableServiceTypes;
+ (id)currentModeCharacteristicTypes;
+ (id)currentValueCharacteristicType;
+ (id)descriptionStringForCharacteristicType:(id)type withResponses:(id)responses;
+ (id)displayValueComparator;
+ (id)formatValue:(id)value forCharacteristic:(id)characteristic;
+ (id)maximumTargetValueCharacteristicType;
+ (id)minimumTargetValueCharacteristicType;
+ (id)sensorServiceTypes;
+ (id)targetModeCharacteristicTypes;
+ (id)targetValueCharacteristicType;
+ (id)unknownValueDescriptionString;
+ (id)valueRangeForCharacteristicType:(id)type withResponses:(id)responses;
+ (unint64_t)abstractCurrentModeInResponse:(id)response;
+ (unint64_t)abstractTargetModeInResponse:(id)response;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFAbstractRangeStatusItem

+ (NSSet)serviceTypes
{
  controllableServiceTypes = [self controllableServiceTypes];
  sensorServiceTypes = [self sensorServiceTypes];
  v5 = [controllableServiceTypes setByAddingObjectsFromSet:sensorServiceTypes];

  return v5;
}

+ (id)controllableServiceTypes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:55 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem controllableServiceTypes]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

+ (id)sensorServiceTypes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:62 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem sensorServiceTypes]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

+ (id)currentValueCharacteristicType
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:69 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem currentValueCharacteristicType]", objc_opt_class()}];

  return 0;
}

+ (id)targetValueCharacteristicType
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:76 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem targetValueCharacteristicType]", objc_opt_class()}];

  return 0;
}

+ (id)minimumTargetValueCharacteristicType
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:83 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem minimumTargetValueCharacteristicType]", objc_opt_class()}];

  return 0;
}

+ (id)maximumTargetValueCharacteristicType
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:90 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem maximumTargetValueCharacteristicType]", objc_opt_class()}];

  return 0;
}

+ (id)currentModeCharacteristicTypes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:97 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem currentModeCharacteristicTypes]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

+ (id)targetModeCharacteristicTypes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:104 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem targetModeCharacteristicTypes]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

+ (id)unknownValueDescriptionString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:111 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem unknownValueDescriptionString]", objc_opt_class()}];

  return 0;
}

+ (id)displayValueComparator
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:124 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem displayValueComparator]", objc_opt_class()}];

  return 0;
}

+ (unint64_t)abstractTargetModeInResponse:(id)response
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:136 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem abstractTargetModeInResponse:]", objc_opt_class()}];

  return 0;
}

+ (unint64_t)abstractCurrentModeInResponse:(id)response
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:142 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem abstractCurrentModeInResponse:]", objc_opt_class()}];

  return 0;
}

+ (BOOL)shouldShowAverageForRange:(id)range
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractRangeStatusItem.m" lineNumber:155 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractRangeStatusItem shouldShowAverageForRange:]", objc_opt_class()}];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v41[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controllableServiceTypes = [objc_opt_class() controllableServiceTypes];
  sensorServiceTypes = [objc_opt_class() sensorServiceTypes];
  v7 = [controllableServiceTypes setByAddingObjectsFromSet:sensorServiceTypes];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __57__HFAbstractRangeStatusItem__subclass_updateWithOptions___block_invoke;
  v39[3] = &unk_277DF2DD8;
  v39[4] = self;
  v8 = [v7 na_flatMap:v39];
  v9 = [v8 mutableCopy];

  currentValueCharacteristicType = [objc_opt_class() currentValueCharacteristicType];
  [v9 addObject:currentValueCharacteristicType];

  targetValueCharacteristicType = [objc_opt_class() targetValueCharacteristicType];
  [v9 na_safeAddObject:targetValueCharacteristicType];

  minimumTargetValueCharacteristicType = [objc_opt_class() minimumTargetValueCharacteristicType];
  [v9 addObject:minimumTargetValueCharacteristicType];

  maximumTargetValueCharacteristicType = [objc_opt_class() maximumTargetValueCharacteristicType];
  [v9 addObject:maximumTargetValueCharacteristicType];

  currentModeCharacteristicTypes = [objc_opt_class() currentModeCharacteristicTypes];
  [v9 unionSet:currentModeCharacteristicTypes];

  targetModeCharacteristicTypes = [objc_opt_class() targetModeCharacteristicTypes];
  [v9 unionSet:targetModeCharacteristicTypes];

  controllableServiceTypes2 = [objc_opt_class() controllableServiceTypes];
  allObjects = [controllableServiceTypes2 allObjects];
  currentValueCharacteristicType2 = [objc_opt_class() currentValueCharacteristicType];
  v41[0] = currentValueCharacteristicType2;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v20 = [(HFStatusItem *)self filteredServicesOfTypes:allObjects containingCharacteristicTypes:v19];

  sensorServiceTypes2 = [objc_opt_class() sensorServiceTypes];
  allObjects2 = [sensorServiceTypes2 allObjects];
  currentValueCharacteristicType3 = [objc_opt_class() currentValueCharacteristicType];
  v40 = currentValueCharacteristicType3;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v25 = [(HFStatusItem *)self filteredServicesOfTypes:allObjects2 containingCharacteristicTypes:v24];

  v26 = [v20 setByAddingObjectsFromSet:v25];
  objc_initWeak(&location, self);
  valueSource = [(HFStatusItem *)self valueSource];
  v28 = [valueSource readValuesForCharacteristicTypes:v9 inServices:v26];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __57__HFAbstractRangeStatusItem__subclass_updateWithOptions___block_invoke_2;
  v34[3] = &unk_277DF7B80;
  objc_copyWeak(&v37, &location);
  v29 = v7;
  v35 = v29;
  v30 = v26;
  v36 = v30;
  v31 = [v28 flatMap:v34];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

id __57__HFAbstractRangeStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() characteristicTypesForServiceType:v3 includingAssociatedTypes:1];

  return v4;
}

id __57__HFAbstractRangeStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:*(a1 + 32)];
    v7 = [v6 mutableCopy];

    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"tempreatureUnitDependency"];
    v8 = [v7 objectForKeyedSubscript:@"hidden"];
    v9 = [v8 BOOLValue];

    if (!v9)
    {
      v13 = *(a1 + 40);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __57__HFAbstractRangeStatusItem__subclass_updateWithOptions___block_invoke_3;
      v35[3] = &unk_277DF7AF8;
      v36 = v3;
      v14 = [v13 na_map:v35];
      v15 = [v14 na_filter:&__block_literal_global_62];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "statusItemCategory")}];
      [v7 setObject:v16 forKeyedSubscript:@"statusItemCategory"];

      v17 = objc_opt_class();
      v18 = [objc_opt_class() currentValueCharacteristicType];
      v19 = [v17 descriptionStringForCharacteristicType:v18 withResponses:v15];
      [v7 setObject:v19 forKeyedSubscript:@"description"];

      v20 = objc_opt_class();
      v21 = [objc_opt_class() currentValueCharacteristicType];
      v22 = [v20 valueRangeForCharacteristicType:v21 withResponses:v15];
      [v7 setObject:v22 forKeyedSubscript:@"statusCurrentValue"];

      v23 = [v15 na_flatMap:&__block_literal_global_18];
      v24 = [HFCharacteristicBatchReadResponse aggregatedMetadataForCharacteristics:v23];
      v25 = [objc_opt_class() overrideValueDisplayRange];
      if (v25)
      {
        [v7 setObject:v25 forKeyedSubscript:@"statusPossibleValues"];
      }

      else
      {
        v33 = v15;
        v26 = [v24 maximumValue];
        [v24 minimumValue];
        v27 = v34 = v14;
        v28 = [HFNumberRange rangeWithMaxValue:v26 minValue:v27];
        [v7 setObject:v28 forKeyedSubscript:@"statusPossibleValues"];

        v15 = v33;
        v14 = v34;
      }

      [v7 setObject:*(a1 + 40) forKeyedSubscript:@"representedHomeKitObjects"];
      v29 = MEMORY[0x277D2C900];
      v30 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v12 = [v29 futureWithResult:v30];

      goto LABEL_10;
    }

    v10 = MEMORY[0x277D2C900];
  }

  else
  {
    v10 = MEMORY[0x277D2C900];
    v37 = @"hidden";
    v38[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  }

  v11 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v12 = [v10 futureWithResult:v11];

LABEL_10:
  v31 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __57__HFAbstractRangeStatusItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 allReadResponses];
  v3 = [v2 na_any:&__block_literal_global_14_0];

  return v3;
}

BOOL __57__HFAbstractRangeStatusItem__subclass_updateWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = v2 != 0;

  return v3;
}

+ (id)valueRangeForCharacteristicType:(id)type withResponses:(id)responses
{
  typeCopy = type;
  responsesCopy = responses;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __75__HFAbstractRangeStatusItem_valueRangeForCharacteristicType_withResponses___block_invoke;
  v32[3] = &unk_277DF7BA8;
  v8 = typeCopy;
  v33 = v8;
  v9 = [responsesCopy na_map:v32];
  if ([v9 count])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__9;
    v30 = __Block_byref_object_dispose__9;
    anyObject = [v9 anyObject];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__9;
    v24 = __Block_byref_object_dispose__9;
    anyObject2 = [v9 anyObject];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__HFAbstractRangeStatusItem_valueRangeForCharacteristicType_withResponses___block_invoke_24;
    v19[3] = &unk_277DF7BD0;
    v19[4] = &v26;
    v19[5] = &v20;
    [v9 na_each:v19];
    v10 = [HFNumberRange rangeWithMaxValue:v21[5] minValue:v27[5]];
    if ([self shouldShowAverageForRange:v10])
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __75__HFAbstractRangeStatusItem_valueRangeForCharacteristicType_withResponses___block_invoke_2;
      v14[3] = &unk_277DF7BF8;
      v14[4] = &v15;
      [v9 na_each:v14];
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:{v16[3] / objc_msgSend(v9, "count")}];
      v12 = [HFNumberRange valueWithValue:v11];

      _Block_object_dispose(&v15, 8);
    }

    else
    {
      v12 = v10;
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v12 = [HFNumberRange valueWithValue:&unk_282523B98];
  }

  return v12;
}

id __75__HFAbstractRangeStatusItem_valueRangeForCharacteristicType_withResponses___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 responseForCharacteristicType:*(a1 + 32)];
  v3 = [v2 valueWithExpectedClass:objc_opt_class()];

  return v3;
}

void __75__HFAbstractRangeStatusItem_valueRangeForCharacteristicType_withResponses___block_invoke_24(uint64_t a1, void *a2)
{
  v10 = a2;
  [v10 doubleValue];
  v5 = v4;
  [*(*(*(a1 + 32) + 8) + 40) doubleValue];
  if (v5 < v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  [v10 doubleValue];
  v8 = v7;
  [*(*(*(a1 + 40) + 8) + 40) doubleValue];
  if (v8 > v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

double __75__HFAbstractRangeStatusItem_valueRangeForCharacteristicType_withResponses___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

+ (id)descriptionStringForCharacteristicType:(id)type withResponses:(id)responses
{
  responsesCopy = responses;
  typeCopy = type;
  anyObject = [responsesCopy anyObject];
  v9 = [anyObject responseForCharacteristicType:typeCopy];
  characteristic = [v9 characteristic];

  v11 = [objc_opt_class() valueRangeForCharacteristicType:typeCopy withResponses:responsesCopy];

  midValue = [v11 midValue];
  integerValue = [midValue integerValue];

  if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
  {
    unknownValueDescriptionString = [objc_opt_class() unknownValueDescriptionString];
    goto LABEL_12;
  }

  if ([self shouldShowAverageForRange:v11])
  {
    midValue2 = [v11 midValue];
    unknownValueDescriptionString = [self formatValue:midValue2 forCharacteristic:characteristic];

    goto LABEL_12;
  }

  customValueFormatter = [objc_opt_class() customValueFormatter];
  v17 = customValueFormatter;
  if (customValueFormatter)
  {
    _defaultValueFormatter = customValueFormatter;
LABEL_10:
    percentFormatter = _defaultValueFormatter;
    goto LABEL_11;
  }

  if (([objc_opt_class() isPercentRange] & 1) == 0)
  {
    _defaultValueFormatter = [objc_opt_class() _defaultValueFormatter];
    goto LABEL_10;
  }

  v19 = +[HFFormatterManager sharedInstance];
  percentFormatter = [v19 percentFormatter];

LABEL_11:
  v21 = [[HFNumberRangeFormatter alloc] initWithNumberFormatter:percentFormatter];
  [(HFNumberRangeFormatter *)v21 setConsolidatesUnit:1];
  [(HFNumberRangeFormatter *)v21 setSimplifiesEqualValues:1];
  unknownValueDescriptionString = [(HFNumberRangeFormatter *)v21 stringForNumberRange:v11];

LABEL_12:

  return unknownValueDescriptionString;
}

+ (id)formatValue:(id)value forCharacteristic:(id)characteristic
{
  valueCopy = value;
  characteristicCopy = characteristic;
  customValueFormatter = [objc_opt_class() customValueFormatter];
  if (customValueFormatter)
  {

LABEL_5:
    customValueFormatter2 = [objc_opt_class() customValueFormatter];
    v13 = customValueFormatter2;
    if (customValueFormatter2)
    {
      _defaultValueFormatter = customValueFormatter2;
    }

    else
    {
      _defaultValueFormatter = [objc_opt_class() _defaultValueFormatter];
    }

    percentFormatter = _defaultValueFormatter;

    v11 = [percentFormatter stringForObjectValue:valueCopy];
    goto LABEL_9;
  }

  if (![objc_opt_class() isPercentRange])
  {
    goto LABEL_5;
  }

  v8 = +[HFFormatterManager sharedInstance];
  percentFormatter = [v8 percentFormatter];

  v10 = [[HFRelativePercentValue alloc] initWithValue:valueCopy forCharacteristic:characteristicCopy];
  v11 = [percentFormatter stringForRelativePercentValue:v10];

LABEL_9:

  return v11;
}

+ (id)_defaultValueFormatter
{
  if ([objc_opt_class() isPercentRange])
  {
    v2 = +[HFFormatterManager sharedInstance];
    percentFormatter = [v2 percentFormatter];
  }

  else
  {
    percentFormatter = objc_alloc_init(MEMORY[0x277CCABB8]);
  }

  return percentFormatter;
}

@end