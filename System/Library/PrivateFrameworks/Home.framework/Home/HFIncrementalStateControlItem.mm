@interface HFIncrementalStateControlItem
+ (id)na_identity;
+ (id)optionsForPrimaryStateControlItem:(id)item incrementalCharacteristicType:(id)type;
- (BOOL)canCopyWithCharacteristicOptions:(id)options;
- (HFIncrementalStateControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFIncrementalStateControlItem)initWithValueSource:(id)source incrementalAndPrimaryCharacteristicType:(id)type displayResults:(id)results;
- (HFIncrementalStateControlItem)initWithValueSource:(id)source primaryStateControlItem:(id)item incrementalCharacteristicType:(id)type displayResults:(id)results;
- (NSNumber)stepValue;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)toggleValue;
- (id)updateWithOptions:(id)options;
- (id)valueForCharacteristicType:(id)type inBatchReadResponse:(id)response;
- (id)valueForCharacteristicValues:(id)values;
- (id)writeValue:(id)value;
@end

@implementation HFIncrementalStateControlItem

- (HFIncrementalStateControlItem)initWithValueSource:(id)source primaryStateControlItem:(id)item incrementalCharacteristicType:(id)type displayResults:(id)results
{
  sourceCopy = source;
  itemCopy = item;
  typeCopy = type;
  resultsCopy = results;
  v14 = [objc_opt_class() optionsForPrimaryStateControlItem:itemCopy incrementalCharacteristicType:typeCopy];
  v21.receiver = self;
  v21.super_class = HFIncrementalStateControlItem;
  v15 = [(HFControlItem *)&v21 initWithValueSource:sourceCopy characteristicOptions:v14 displayResults:resultsCopy];

  if (v15)
  {
    v16 = [itemCopy copyWithValueSource:sourceCopy];
    primaryStateControlItem = v15->_primaryStateControlItem;
    v15->_primaryStateControlItem = v16;

    v18 = [typeCopy copy];
    incrementalCharacteristicType = v15->_incrementalCharacteristicType;
    v15->_incrementalCharacteristicType = v18;

    v15->_allowsToggle = 1;
  }

  return v15;
}

- (HFIncrementalStateControlItem)initWithValueSource:(id)source incrementalAndPrimaryCharacteristicType:(id)type displayResults:(id)results
{
  resultsCopy = results;
  typeCopy = type;
  sourceCopy = source;
  v11 = [sourceCopy metadataForCharacteristicType:typeCopy];
  v12 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__HFIncrementalStateControlItem_initWithValueSource_incrementalAndPrimaryCharacteristicType_displayResults___block_invoke_3;
  v18[3] = &unk_277DF5910;
  v19 = v11;
  v13 = v11;
  v14 = [HFValueTransformer transformerForValueClass:v12 transformBlock:&__block_literal_global_40 reverseTransformBlock:v18];
  v15 = [[HFPrimaryStateControlItem alloc] initWithValueSource:sourceCopy characteristicType:typeCopy valueTransformer:v14 displayResults:0];
  v16 = [(HFIncrementalStateControlItem *)self initWithValueSource:sourceCopy primaryStateControlItem:v15 incrementalCharacteristicType:typeCopy displayResults:resultsCopy];

  return v16;
}

id __108__HFIncrementalStateControlItem_initWithValueSource_incrementalAndPrimaryCharacteristicType_displayResults___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCABB0];
    if ([a2 integerValue] < 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = [v3 numberWithInteger:v4];
  }

  else
  {
    v5 = &unk_282523730;
  }

  return v5;
}

void *__108__HFIncrementalStateControlItem_initWithValueSource_incrementalAndPrimaryCharacteristicType_displayResults___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);
  if (v3 == 2)
  {
    v5 = [v4 maximumValue];
    v6 = v5;
    v7 = &unk_282525540;
  }

  else
  {
    v5 = [v4 minimumValue];
    v6 = v5;
    v7 = &unk_282525550;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v8;
}

- (HFIncrementalStateControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_primaryStateControlItem_incrementalCharacteristicType_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFIncrementalStateControlItem.m" lineNumber:80 description:{@"%s is unavailable; use %@ instead", "-[HFIncrementalStateControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (BOOL)canCopyWithCharacteristicOptions:(id)options
{
  optionsCopy = options;
  primaryStateControlItem = [(HFIncrementalStateControlItem *)self primaryStateControlItem];

  if (primaryStateControlItem)
  {
    primaryStateControlItem2 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
    v7 = [primaryStateControlItem2 canCopyWithCharacteristicOptions:optionsCopy];
  }

  else
  {
    v7 = 1;
  }

  v8 = [optionsCopy objectForKeyedSubscript:&unk_282523748];
  incrementalCharacteristicType = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
  v10 = [v8 containsObject:incrementalCharacteristicType];

  return v7 & v10;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  if ([(HFIncrementalStateControlItem *)self canCopyWithCharacteristicOptions:options])
  {
    primaryStateControlItem = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
    primaryStateControlItem2 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
    characteristicOptions = [primaryStateControlItem2 characteristicOptions];
    v10 = [primaryStateControlItem copyWithCharacteristicOptions:characteristicOptions valueSource:sourceCopy];

    v11 = objc_alloc(objc_opt_class());
    incrementalCharacteristicType = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
    displayResults = [(HFControlItem *)self displayResults];
    v14 = [v11 initWithValueSource:sourceCopy primaryStateControlItem:v10 incrementalCharacteristicType:incrementalCharacteristicType displayResults:displayResults];

    [v14 copyLatestResultsFromItem:self];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)toggleValue
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v3 homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];
  v6 = off_277DF0150;
  if (!hasOptedToHH2)
  {
    v6 = off_277DF0158;
  }

  v7 = *v6;
  v8 = objc_opt_new();

  valueSource = [(HFControlItem *)self valueSource];
  [valueSource beginTransactionWithReason:@"HFIncrementalStateControlItem-Toggle" readPolicy:v8 logger:0];

  valueSource2 = [(HFControlItem *)self valueSource];
  v11 = MEMORY[0x277CBEB98];
  incrementalCharacteristicType = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
  v13 = [v11 setWithObject:incrementalCharacteristicType];
  v14 = [valueSource2 readValuesForCharacteristicTypes:v13];
  v24[0] = v14;
  primaryStateControlItem = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
  readValueAndPopulateStandardResults = [primaryStateControlItem readValueAndPopulateStandardResults];
  v24[1] = readValueAndPopulateStandardResults;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

  v18 = [MEMORY[0x277D2C900] combineAllFutures:v17];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__HFIncrementalStateControlItem_toggleValue__block_invoke;
  v23[3] = &unk_277DF5938;
  v23[4] = self;
  v19 = [v18 flatMap:v23];

  valueSource3 = [(HFControlItem *)self valueSource];
  [valueSource3 commitTransactionWithReason:@"HFIncrementalStateControlItem-Toggle"];

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

id __44__HFIncrementalStateControlItem_toggleValue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = [v5 objectForKeyedSubscript:@"value"];
  if (v6)
  {
    v7 = [*(a1 + 32) incrementalCharacteristicType];
    v8 = [v4 responseForCharacteristicType:v7];
    v9 = [v8 value];

    v10 = [*(a1 + 32) primaryStateControlItem];
    v11 = [v10 characteristicOptions];
    v12 = [v11 objectForKeyedSubscript:&unk_282523748];
    v13 = [*(a1 + 32) incrementalCharacteristicType];
    v14 = [v12 containsObject:v13];

    if ((v14 & 1) != 0 || [v6 integerValue] != 1 || !v9 || (objc_msgSend(v9, "floatValue"), v22 >= 0.00000011921))
    {
      v15 = [*(a1 + 32) primaryStateControlItem];
      v16 = [v6 integerValue];
      if (v16 == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2 * (v16 == 1);
      }

      v18 = [v15 writePrimaryState:v17];

      goto LABEL_9;
    }

    v20 = [*(a1 + 32) writeValue:&unk_282525900];
  }

  else
  {
    v19 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    v20 = [v19 futureWithError:v9];
  }

  v18 = v20;
LABEL_9:

  return v18;
}

- (id)writeValue:(id)value
{
  v5.receiver = self;
  v5.super_class = HFIncrementalStateControlItem;
  v3 = [(HFControlItem *)&v5 writeValue:value];

  return v3;
}

- (id)updateWithOptions:(id)options
{
  v15[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  primaryStateControlItem = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
  v6 = [primaryStateControlItem updateWithOptions:optionsCopy];

  v7 = MEMORY[0x277D2C900];
  v14.receiver = self;
  v14.super_class = HFIncrementalStateControlItem;
  v8 = [(HFItem *)&v14 updateWithOptions:optionsCopy];

  v15[0] = v8;
  v15[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v7 combineAllFutures:v9];
  v11 = [v10 flatMap:&__block_literal_global_33_0];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __51__HFIncrementalStateControlItem_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 firstObject];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)valueForCharacteristicType:(id)type inBatchReadResponse:(id)response
{
  typeCopy = type;
  responseCopy = response;
  incrementalCharacteristicType = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
  if (([typeCopy isEqualToString:incrementalCharacteristicType] & 1) == 0)
  {

    goto LABEL_6;
  }

  v9 = [responseCopy allResponsesForCharacteristicType:typeCopy];
  v10 = [v9 count];

  if (!v10)
  {
LABEL_6:
    v26.receiver = self;
    v26.super_class = HFIncrementalStateControlItem;
    value = [(HFControlItem *)&v26 valueForCharacteristicType:typeCopy inBatchReadResponse:responseCopy];
    goto LABEL_11;
  }

  primaryStateControlItem = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
  characteristicOptions = [primaryStateControlItem characteristicOptions];
  allCharacteristicTypes = [characteristicOptions allCharacteristicTypes];
  v14 = [responseCopy allResponsesForCharacteristicTypes:allCharacteristicTypes];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __80__HFIncrementalStateControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke;
  v29[3] = &unk_277DF5960;
  v29[4] = self;
  v15 = [v14 na_filter:v29];
  v16 = [v15 na_map:&__block_literal_global_38];
  v17 = [responseCopy allResponsesForCharacteristicType:typeCopy];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __80__HFIncrementalStateControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke_3;
  v27[3] = &unk_277DF5960;
  v18 = v16;
  v28 = v18;
  v19 = [v17 na_filter:v27];
  if ([v19 count])
  {
    v20 = [HFCharacteristicBatchReadResponse aggregatedReadResponseFromResponses:v19 withAggregationPolicy:0];
    value = [v20 value];
  }

  else
  {
    v20 = [(HFControlItem *)self metadataForCharacteristicType:typeCopy];
    minimumValue = [v20 minimumValue];
    v23 = minimumValue;
    v24 = &unk_282523760;
    if (minimumValue)
    {
      v24 = minimumValue;
    }

    value = v24;
  }

LABEL_11:

  return value;
}

BOOL __80__HFIncrementalStateControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 value];

  if (v4)
  {
    v5 = [*(a1 + 32) primaryStateControlItem];
    v6 = [v3 characteristic];
    v7 = [v6 characteristicType];
    v15 = v7;
    v8 = [v3 value];
    v16[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v5 valueForCharacteristicValues:v9];
    v11 = [v10 integerValue];

    v12 = v11 == 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

id __80__HFIncrementalStateControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = [v2 service];
  v4 = [v3 uniqueIdentifier];

  return v4;
}

uint64_t __80__HFIncrementalStateControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristic];
  v4 = [v3 service];
  v5 = [v4 uniqueIdentifier];
  v6 = [v2 containsObject:v5];

  return v6;
}

- (id)valueForCharacteristicValues:(id)values
{
  valuesCopy = values;
  primaryStateControlItem = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
  v6 = [primaryStateControlItem valueForCharacteristicValues:valuesCopy];
  integerValue = [v6 integerValue];

  if (integerValue == 2)
  {
    incrementalCharacteristicType = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
    v9 = [valuesCopy objectForKeyedSubscript:incrementalCharacteristicType];

    valueSource = [(HFControlItem *)self valueSource];
    incrementalCharacteristicType2 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
    v12 = [valueSource metadataForCharacteristicType:incrementalCharacteristicType2];

    if (v9)
    {
      v13 = [v12 hf_percentageForCharacteristicValue:v9];
    }

    else
    {
      v13 = &unk_282525560;
    }
  }

  else
  {
    v13 = &unk_282525550;
  }

  return v13;
}

- (id)characteristicValuesForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedDisp.isa, valueCopy);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valueSource = [(HFControlItem *)self valueSource];
    incrementalCharacteristicType = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
    v7 = [valueSource metadataForCharacteristicType:incrementalCharacteristicType];

    [valueCopy floatValue];
    v9 = [v7 hf_characteristicValueForPercentage:v8];
    if (v9)
    {
      v24 = v7;
      [valueCopy floatValue];
      v11 = v10;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      primaryStateControlItem = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
      characteristicOptions = [primaryStateControlItem characteristicOptions];
      v15 = [characteristicOptions objectForKeyedSubscript:&unk_282523748];
      incrementalCharacteristicType2 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
      v17 = [v15 containsObject:incrementalCharacteristicType2];

      if ((v17 & 1) == 0)
      {
        if (v11 <= 0.00000011921)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        primaryStateControlItem2 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
        v21 = [primaryStateControlItem2 characteristicValuesForValue:v20];
        [dictionary addEntriesFromDictionary:v21];
      }

      incrementalCharacteristicType3 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
      [dictionary setObject:v9 forKeyedSubscript:incrementalCharacteristicType3];

      v7 = v24;
    }

    else
    {
      NSLog(&cfstr_CouldNotConver.isa, valueCopy, v7);
      dictionary = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  return dictionary;
}

- (NSNumber)stepValue
{
  valueSource = [(HFControlItem *)self valueSource];
  incrementalCharacteristicType = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
  v5 = [valueSource metadataForCharacteristicType:incrementalCharacteristicType];

  stepValue = [v5 stepValue];
  v7 = [v5 hf_percentageForCharacteristicValue:stepValue];

  return v7;
}

+ (id)optionsForPrimaryStateControlItem:(id)item incrementalCharacteristicType:(id)type
{
  v5 = MEMORY[0x277CBEB98];
  itemCopy = item;
  v7 = [v5 setWithObject:type];
  characteristicOptions = [itemCopy characteristicOptions];

  v9 = [characteristicOptions optionsByAddingCharacteristicTypes:v7 forUsage:0];

  return v9;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HFIncrementalStateControlItem_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __44__HFIncrementalStateControlItem_na_identity__block_invoke(v4);

  return v2;
}

id __44__HFIncrementalStateControlItem_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HFIncrementalStateControlItem_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, block);
  }

  v1 = qword_280E02368;

  return v1;
}

void __44__HFIncrementalStateControlItem_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__HFIncrementalStateControlItem_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __44__HFIncrementalStateControlItem_na_identity__block_invoke_3(v3);
  v2 = qword_280E02368;
  qword_280E02368 = v1;
}

id __44__HFIncrementalStateControlItem_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277D2C908];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HFIncrementalStateControlItem;
  v2 = objc_msgSendSuper2(&v9, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_60];
  v5 = [v4 appendCharacteristic:&__block_literal_global_63_0];
  v6 = [v5 appendCharacteristic:&__block_literal_global_66];

  v7 = [v3 build];

  return v7;
}

@end