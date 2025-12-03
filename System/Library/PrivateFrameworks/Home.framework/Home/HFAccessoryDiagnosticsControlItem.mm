@interface HFAccessoryDiagnosticsControlItem
- (HFAccessoryDiagnosticsControlItem)initWithValueSource:(id)source displayResults:(id)results;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)resultsForBatchReadResponse:(id)response;
- (id)valueForCharacteristicValues:(id)values;
@end

@implementation HFAccessoryDiagnosticsControlItem

- (HFAccessoryDiagnosticsControlItem)initWithValueSource:(id)source displayResults:(id)results
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCFAD0];
  v7 = *MEMORY[0x277CCFA48];
  v8 = MEMORY[0x277CBEB98];
  resultsCopy = results;
  sourceCopy = source;
  v11 = [v8 setWithObject:v6];
  v12 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v13 = [HFControlItemCharacteristicOptions alloc];
  v20[0] = &unk_282523820;
  v20[1] = &unk_282523838;
  v21[0] = v12;
  v21[1] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v15 = [(HFControlItemCharacteristicOptions *)v13 initWithCharacteristicTypesByUsage:v14];

  v19.receiver = self;
  v19.super_class = HFAccessoryDiagnosticsControlItem;
  v16 = [(HFControlItem *)&v19 initWithValueSource:sourceCopy characteristicOptions:v15 displayResults:resultsCopy];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  if ([(HFControlItem *)self canCopyWithCharacteristicOptions:options])
  {
    v7 = objc_alloc(objc_opt_class());
    displayResults = [(HFControlItem *)self displayResults];
    v9 = [v7 initWithValueSource:sourceCopy displayResults:displayResults];

    [v9 copyLatestResultsFromItem:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)valueForCharacteristicValues:(id)values
{
  valuesCopy = values;
  latestResults = [(HFItem *)self latestResults];
  v6 = [latestResults objectForKeyedSubscript:@"characteristicValuesByType"];
  v7 = v6;
  if (!v6)
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v8 = [v6 mutableCopy];

  [v8 addEntriesFromDictionary:valuesCopy];
  v9 = [valuesCopy objectForKeyedSubscript:*MEMORY[0x277CCFA48]];

  return v9;
}

- (id)characteristicValuesForValue:(id)value
{
  v16[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = objc_opt_class();
  v6 = valueCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v6;
    if (v7)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:

  v15 = *MEMORY[0x277CCFA48];
  v16[0] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)resultsForBatchReadResponse:(id)response
{
  v8.receiver = self;
  v8.super_class = HFAccessoryDiagnosticsControlItem;
  v3 = [(HFControlItem *)&v8 resultsForBatchReadResponse:response];
  v4 = [v3 mutableCopy];

  v5 = [v4 objectForKeyedSubscript:@"characteristicValuesByType"];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCFAD0]];
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"secondaryValue"];
  }

  return v4;
}

@end