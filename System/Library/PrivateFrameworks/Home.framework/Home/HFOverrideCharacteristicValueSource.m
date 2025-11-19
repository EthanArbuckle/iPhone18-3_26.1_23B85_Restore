@interface HFOverrideCharacteristicValueSource
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNaturalLightingEnabledForProfile:(id)a3;
- (BOOL)isNaturalLightingSupportedForProfile:(id)a3;
- (HFCharacteristicOperationContextProviding)contextProvider;
- (HFOverrideCharacteristicValueProvider)overrideValueProvider;
- (HFOverrideCharacteristicValueSource)initWithOriginalValueSource:(id)a3 overrideValueProvider:(id)a4;
- (id)cachedErrorForWriteToCharacteristic:(id)a3;
- (id)cachedValueForCharacteristic:(id)a3;
- (id)readValuesForCharacteristicTypes:(id)a3 inServices:(id)a4;
- (id)readValuesForCharacteristics:(id)a3;
- (id)writeValuesForCharacteristics:(id)a3;
- (unint64_t)hash;
- (void)beginTransactionWithReason:(id)a3 readPolicy:(id)a4 logger:(id)a5;
- (void)commitTransactionWithReason:(id)a3;
- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)a3 lightProfile:(id)a4 completion:(id)a5;
@end

@implementation HFOverrideCharacteristicValueSource

- (BOOL)isNaturalLightingSupportedForProfile:(id)a3
{
  v4 = a3;
  v5 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  if ([v5 conformsToProtocol:&unk_28253EC38])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isNaturalLightingSupportedForProfile:v4];
  return v8;
}

- (BOOL)isNaturalLightingEnabledForProfile:(id)a3
{
  v4 = a3;
  v5 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  if ([v5 conformsToProtocol:&unk_28253EC38])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isNaturalLightingEnabledForProfile:v4];
  return v8;
}

- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)a3 lightProfile:(id)a4 completion:(id)a5
{
  v8 = a5;
  v12 = a4;
  v9 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  if ([v9 conformsToProtocol:&unk_28253EC38])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 fetchNaturalLightColorTemperatureForBrightness:a3 lightProfile:v12 completion:v8];
}

- (HFOverrideCharacteristicValueSource)initWithOriginalValueSource:(id)a3 overrideValueProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFOverrideCharacteristicValueSource;
  v9 = [(HFOverrideCharacteristicValueSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalValueSource, a3);
    objc_storeWeak(&v10->_overrideValueProvider, v8);
  }

  return v10;
}

- (id)readValuesForCharacteristics:(id)a3
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HFOverrideCharacteristicValueSource_readValuesForCharacteristics___block_invoke;
  v16[3] = &unk_277DF6218;
  v16[4] = self;
  v4 = a3;
  v5 = [v4 na_filter:v16];
  v6 = [v4 na_setByRemovingObjectsFromSet:v5];

  objc_initWeak(&location, self);
  v7 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  v8 = [v7 readValuesForCharacteristics:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HFOverrideCharacteristicValueSource_readValuesForCharacteristics___block_invoke_2;
  v12[3] = &unk_277DF61A0;
  objc_copyWeak(&v14, &location);
  v9 = v5;
  v13 = v9;
  v10 = [v8 flatMap:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

uint64_t __68__HFOverrideCharacteristicValueSource_readValuesForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 overrideValueProvider];
  v6 = [v5 valueSource:*(a1 + 32) shouldOverrideValueForCharacteristic:v4];

  return v6;
}

id __68__HFOverrideCharacteristicValueSource_readValuesForCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v23 = v3;
  v5 = [v3 allReadResponses];
  v6 = [v5 mutableCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [WeakRetained overrideValueProvider];
        v13 = [v12 valueSource:WeakRetained overrideValueForCharacteristic:v11];

        v14 = [HFCharacteristicReadResponse alloc];
        v15 = [MEMORY[0x277CBEB98] setWithObject:@"ValueOverridden"];
        v16 = [(HFCharacteristicReadResponse *)v14 initWithCharacteristic:v11 readTraits:v15 value:v13 error:0];
        [v6 addObject:v16];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v17 = [HFCharacteristicBatchReadResponse alloc];
  v18 = [v23 contextProvider];
  v19 = [(HFCharacteristicBatchReadResponse *)v17 initWithReadResponses:v6 contextProvider:v18];

  v20 = [MEMORY[0x277D2C900] futureWithResult:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)readValuesForCharacteristicTypes:(id)a3 inServices:(id)a4
{
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HFOverrideCharacteristicValueSource_readValuesForCharacteristicTypes_inServices___block_invoke;
  v12[3] = &unk_277DF7AF8;
  v13 = v6;
  v7 = v6;
  v8 = [a4 na_map:v12];
  v9 = [v8 na_setByFlattening];

  v10 = [(HFOverrideCharacteristicValueSource *)self readValuesForCharacteristics:v9];

  return v10;
}

id __83__HFOverrideCharacteristicValueSource_readValuesForCharacteristicTypes_inServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a2 characteristics];
  v5 = [v3 setWithArray:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HFOverrideCharacteristicValueSource_readValuesForCharacteristicTypes_inServices___block_invoke_2;
  v8[3] = &unk_277DF6218;
  v9 = *(a1 + 32);
  v6 = [v5 na_filter:v8];

  return v6;
}

uint64_t __83__HFOverrideCharacteristicValueSource_readValuesForCharacteristicTypes_inServices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)writeValuesForCharacteristics:(id)a3
{
  v4 = a3;
  v5 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  v6 = [v5 writeValuesForCharacteristics:v4];

  return v6;
}

- (id)cachedValueForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  v6 = [v5 cachedValueForCharacteristic:v4];

  return v6;
}

- (id)cachedErrorForWriteToCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HFOverrideCharacteristicValueSource *)self overrideValueProvider];
  if ([v5 valueSource:self shouldOverrideValueForCharacteristic:v4])
  {
    v6 = 0;
LABEL_5:

    goto LABEL_7;
  }

  v7 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v5 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
    v6 = [v5 cachedErrorForWriteToCharacteristic:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (HFCharacteristicOperationContextProviding)contextProvider
{
  v3 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
    v6 = [v5 contextProvider];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)beginTransactionWithReason:(id)a3 readPolicy:(id)a4 logger:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  [v11 beginTransactionWithReason:v10 readPolicy:v9 logger:v8];
}

- (void)commitTransactionWithReason:(id)a3
{
  v4 = a3;
  v5 = [(HFOverrideCharacteristicValueSource *)self originalValueSource];
  [v5 commitTransactionWithReason:v4];
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_299 != -1)
  {
    dispatch_once(&_MergedGlobals_299, &__block_literal_global_11_7);
  }

  v3 = qword_280E03A10;

  return v3;
}

void __50__HFOverrideCharacteristicValueSource_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_18_10];
  v2 = [v0 appendCharacteristic:&__block_literal_global_20_9];
  v3 = [v0 build];

  v4 = qword_280E03A10;
  qword_280E03A10 = v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (HFOverrideCharacteristicValueProvider)overrideValueProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideValueProvider);

  return WeakRetained;
}

@end