@interface HFIncrementalStateControlItem
+ (id)na_identity;
+ (id)optionsForPrimaryStateControlItem:(id)a3 incrementalCharacteristicType:(id)a4;
- (BOOL)canCopyWithCharacteristicOptions:(id)a3;
- (HFIncrementalStateControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFIncrementalStateControlItem)initWithValueSource:(id)a3 incrementalAndPrimaryCharacteristicType:(id)a4 displayResults:(id)a5;
- (HFIncrementalStateControlItem)initWithValueSource:(id)a3 primaryStateControlItem:(id)a4 incrementalCharacteristicType:(id)a5 displayResults:(id)a6;
- (NSNumber)stepValue;
- (id)characteristicValuesForValue:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)toggleValue;
- (id)updateWithOptions:(id)a3;
- (id)valueForCharacteristicType:(id)a3 inBatchReadResponse:(id)a4;
- (id)valueForCharacteristicValues:(id)a3;
- (id)writeValue:(id)a3;
@end

@implementation HFIncrementalStateControlItem

- (HFIncrementalStateControlItem)initWithValueSource:(id)a3 primaryStateControlItem:(id)a4 incrementalCharacteristicType:(id)a5 displayResults:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [objc_opt_class() optionsForPrimaryStateControlItem:v11 incrementalCharacteristicType:v12];
  v21.receiver = self;
  v21.super_class = HFIncrementalStateControlItem;
  v15 = [(HFControlItem *)&v21 initWithValueSource:v10 characteristicOptions:v14 displayResults:v13];

  if (v15)
  {
    v16 = [v11 copyWithValueSource:v10];
    primaryStateControlItem = v15->_primaryStateControlItem;
    v15->_primaryStateControlItem = v16;

    v18 = [v12 copy];
    incrementalCharacteristicType = v15->_incrementalCharacteristicType;
    v15->_incrementalCharacteristicType = v18;

    v15->_allowsToggle = 1;
  }

  return v15;
}

- (HFIncrementalStateControlItem)initWithValueSource:(id)a3 incrementalAndPrimaryCharacteristicType:(id)a4 displayResults:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 metadataForCharacteristicType:v9];
  v12 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__HFIncrementalStateControlItem_initWithValueSource_incrementalAndPrimaryCharacteristicType_displayResults___block_invoke_3;
  v18[3] = &unk_277DF5910;
  v19 = v11;
  v13 = v11;
  v14 = [HFValueTransformer transformerForValueClass:v12 transformBlock:&__block_literal_global_40 reverseTransformBlock:v18];
  v15 = [[HFPrimaryStateControlItem alloc] initWithValueSource:v10 characteristicType:v9 valueTransformer:v14 displayResults:0];
  v16 = [(HFIncrementalStateControlItem *)self initWithValueSource:v10 primaryStateControlItem:v15 incrementalCharacteristicType:v9 displayResults:v8];

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

- (HFIncrementalStateControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_primaryStateControlItem_incrementalCharacteristicType_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFIncrementalStateControlItem.m" lineNumber:80 description:{@"%s is unavailable; use %@ instead", "-[HFIncrementalStateControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (BOOL)canCopyWithCharacteristicOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];

  if (v5)
  {
    v6 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
    v7 = [v6 canCopyWithCharacteristicOptions:v4];
  }

  else
  {
    v7 = 1;
  }

  v8 = [v4 objectForKeyedSubscript:&unk_282523748];
  v9 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
  v10 = [v8 containsObject:v9];

  return v7 & v10;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  if ([(HFIncrementalStateControlItem *)self canCopyWithCharacteristicOptions:a3])
  {
    v7 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
    v8 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
    v9 = [v8 characteristicOptions];
    v10 = [v7 copyWithCharacteristicOptions:v9 valueSource:v6];

    v11 = objc_alloc(objc_opt_class());
    v12 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
    v13 = [(HFControlItem *)self displayResults];
    v14 = [v11 initWithValueSource:v6 primaryStateControlItem:v10 incrementalCharacteristicType:v12 displayResults:v13];

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
  v4 = [v3 homeManager];
  v5 = [v4 hasOptedToHH2];
  v6 = off_277DF0150;
  if (!v5)
  {
    v6 = off_277DF0158;
  }

  v7 = *v6;
  v8 = objc_opt_new();

  v9 = [(HFControlItem *)self valueSource];
  [v9 beginTransactionWithReason:@"HFIncrementalStateControlItem-Toggle" readPolicy:v8 logger:0];

  v10 = [(HFControlItem *)self valueSource];
  v11 = MEMORY[0x277CBEB98];
  v12 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
  v13 = [v11 setWithObject:v12];
  v14 = [v10 readValuesForCharacteristicTypes:v13];
  v24[0] = v14;
  v15 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
  v16 = [v15 readValueAndPopulateStandardResults];
  v24[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

  v18 = [MEMORY[0x277D2C900] combineAllFutures:v17];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__HFIncrementalStateControlItem_toggleValue__block_invoke;
  v23[3] = &unk_277DF5938;
  v23[4] = self;
  v19 = [v18 flatMap:v23];

  v20 = [(HFControlItem *)self valueSource];
  [v20 commitTransactionWithReason:@"HFIncrementalStateControlItem-Toggle"];

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

- (id)writeValue:(id)a3
{
  v5.receiver = self;
  v5.super_class = HFIncrementalStateControlItem;
  v3 = [(HFControlItem *)&v5 writeValue:a3];

  return v3;
}

- (id)updateWithOptions:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
  v6 = [v5 updateWithOptions:v4];

  v7 = MEMORY[0x277D2C900];
  v14.receiver = self;
  v14.super_class = HFIncrementalStateControlItem;
  v8 = [(HFItem *)&v14 updateWithOptions:v4];

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

- (id)valueForCharacteristicType:(id)a3 inBatchReadResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
  if (([v6 isEqualToString:v8] & 1) == 0)
  {

    goto LABEL_6;
  }

  v9 = [v7 allResponsesForCharacteristicType:v6];
  v10 = [v9 count];

  if (!v10)
  {
LABEL_6:
    v26.receiver = self;
    v26.super_class = HFIncrementalStateControlItem;
    v21 = [(HFControlItem *)&v26 valueForCharacteristicType:v6 inBatchReadResponse:v7];
    goto LABEL_11;
  }

  v11 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
  v12 = [v11 characteristicOptions];
  v13 = [v12 allCharacteristicTypes];
  v14 = [v7 allResponsesForCharacteristicTypes:v13];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __80__HFIncrementalStateControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke;
  v29[3] = &unk_277DF5960;
  v29[4] = self;
  v15 = [v14 na_filter:v29];
  v16 = [v15 na_map:&__block_literal_global_38];
  v17 = [v7 allResponsesForCharacteristicType:v6];
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
    v21 = [v20 value];
  }

  else
  {
    v20 = [(HFControlItem *)self metadataForCharacteristicType:v6];
    v22 = [v20 minimumValue];
    v23 = v22;
    v24 = &unk_282523760;
    if (v22)
    {
      v24 = v22;
    }

    v21 = v24;
  }

LABEL_11:

  return v21;
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

- (id)valueForCharacteristicValues:(id)a3
{
  v4 = a3;
  v5 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
  v6 = [v5 valueForCharacteristicValues:v4];
  v7 = [v6 integerValue];

  if (v7 == 2)
  {
    v8 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
    v9 = [v4 objectForKeyedSubscript:v8];

    v10 = [(HFControlItem *)self valueSource];
    v11 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
    v12 = [v10 metadataForCharacteristicType:v11];

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

- (id)characteristicValuesForValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedDisp.isa, v4);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HFControlItem *)self valueSource];
    v6 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
    v7 = [v5 metadataForCharacteristicType:v6];

    [v4 floatValue];
    v9 = [v7 hf_characteristicValueForPercentage:v8];
    if (v9)
    {
      v24 = v7;
      [v4 floatValue];
      v11 = v10;
      v12 = [MEMORY[0x277CBEB38] dictionary];
      v13 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
      v14 = [v13 characteristicOptions];
      v15 = [v14 objectForKeyedSubscript:&unk_282523748];
      v16 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
      v17 = [v15 containsObject:v16];

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

        v19 = [(HFIncrementalStateControlItem *)self primaryStateControlItem];
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
        v21 = [v19 characteristicValuesForValue:v20];
        [v12 addEntriesFromDictionary:v21];
      }

      v22 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
      [v12 setObject:v9 forKeyedSubscript:v22];

      v7 = v24;
    }

    else
    {
      NSLog(&cfstr_CouldNotConver.isa, v4, v7);
      v12 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

- (NSNumber)stepValue
{
  v3 = [(HFControlItem *)self valueSource];
  v4 = [(HFIncrementalStateControlItem *)self incrementalCharacteristicType];
  v5 = [v3 metadataForCharacteristicType:v4];

  v6 = [v5 stepValue];
  v7 = [v5 hf_percentageForCharacteristicValue:v6];

  return v7;
}

+ (id)optionsForPrimaryStateControlItem:(id)a3 incrementalCharacteristicType:(id)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = [v5 setWithObject:a4];
  v8 = [v6 characteristicOptions];

  v9 = [v8 optionsByAddingCharacteristicTypes:v7 forUsage:0];

  return v9;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HFIncrementalStateControlItem_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
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