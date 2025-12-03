@interface HFComparisonResult
+ (HFComparisonResult)resultWithDifference:(id)difference priority:(unint64_t)priority;
- (BOOL)containsCriticalDifference;
- (BOOL)hasNoDifferencesHigherThanPriority:(unint64_t)priority;
- (HFComparisonResult)initWithObjectA:(id)a objectB:(id)b;
- (NSArray)realDifferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionBuilder;
- (id)filteredIgnoringKeys:(id)keys;
- (id)highestPriorityDifference;
- (id)newDifferenceWithKey:(id)key priority:(unint64_t)priority block:(id)block;
- (id)objectA;
- (id)objectB;
- (void)add:(id)add;
- (void)addAll:(id)all;
@end

@implementation HFComparisonResult

- (HFComparisonResult)initWithObjectA:(id)a objectB:(id)b
{
  aCopy = a;
  bCopy = b;
  v20.receiver = self;
  v20.super_class = HFComparisonResult;
  v8 = [(HFComparisonResult *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_objectA, aCopy);
    objc_storeWeak(&v9->_objectB, bCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(HFComparisonResult *)v9 setMutableDifferences:dictionary];

    objc_opt_class();
    v11 = aCopy;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    objc_opt_class();
    v14 = bCopy;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v13 && v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((v13 != 0) != (v16 != 0))
    {
LABEL_12:
      v17 = HFComparisonResultClassesKey;
      goto LABEL_16;
    }

    if ((v11 != 0) != (v14 == 0))
    {
LABEL_17:

      goto LABEL_18;
    }

    v17 = HFComparisonResultCompareToNilKey;
LABEL_16:
    v18 = [HFDifference difference:*v17 priority:4];
    [(HFComparisonResult *)v9 add:v18];

    goto LABEL_17;
  }

LABEL_18:

  return v9;
}

+ (HFComparisonResult)resultWithDifference:(id)difference priority:(unint64_t)priority
{
  differenceCopy = difference;
  v6 = [objc_alloc(objc_opt_class()) initWithObjectA:0 objectB:0];
  v7 = [HFDifference difference:differenceCopy priority:priority];

  [v6 add:v7];

  return v6;
}

- (id)filteredIgnoringKeys:(id)keys
{
  keysCopy = keys;
  v5 = [(HFComparisonResult *)self copy];
  mutableDifferences = [v5 mutableDifferences];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__HFComparisonResult_filteredIgnoringKeys___block_invoke;
  v11[3] = &unk_277E000A8;
  v12 = keysCopy;
  v7 = keysCopy;
  v8 = [mutableDifferences na_filter:v11];
  v9 = [v8 mutableCopy];
  [v5 setMutableDifferences:v9];

  return v5;
}

- (void)add:(id)add
{
  if (add)
  {
    addCopy = add;
    mutableDifferences = [(HFComparisonResult *)self mutableDifferences];
    v6 = [addCopy key];
    [mutableDifferences setObject:addCopy forKey:v6];

    realDifferences = self->_realDifferences;
    self->_realDifferences = 0;
  }
}

- (id)newDifferenceWithKey:(id)key priority:(unint64_t)priority block:(id)block
{
  v6 = [HFDifference difference:key priority:priority withBlock:block];
  [(HFComparisonResult *)self add:v6];
  return v6;
}

- (void)addAll:(id)all
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__HFComparisonResult_addAll___block_invoke;
  v3[3] = &unk_277E000D0;
  v3[4] = self;
  [all na_each:v3];
}

- (NSArray)realDifferences
{
  realDifferences = self->_realDifferences;
  if (!realDifferences)
  {
    differences = [(HFComparisonResult *)self differences];
    allValues = [differences allValues];
    v6 = [allValues na_filter:&__block_literal_global_192];
    v7 = self->_realDifferences;
    self->_realDifferences = v6;

    realDifferences = self->_realDifferences;
  }

  return realDifferences;
}

- (BOOL)containsCriticalDifference
{
  realDifferences = [(HFComparisonResult *)self realDifferences];
  v3 = [realDifferences na_any:&__block_literal_global_6_8];

  return v3;
}

- (id)highestPriorityDifference
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  differences = [(HFComparisonResult *)self differences];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HFComparisonResult_highestPriorityDifference__block_invoke;
  v5[3] = &unk_277E00118;
  v5[4] = &v6;
  [differences na_each:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__HFComparisonResult_highestPriorityDifference__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 priority])
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 40))
    {
      v6 = [v7 priority];
      if (v6 <= [*(*(*(a1 + 32) + 8) + 40) priority])
      {
        goto LABEL_6;
      }

      v5 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v5 + 40), a3);
  }

LABEL_6:
}

- (BOOL)hasNoDifferencesHigherThanPriority:(unint64_t)priority
{
  highestPriorityDifference = [(HFComparisonResult *)self highestPriorityDifference];
  v5 = highestPriorityDifference;
  if (highestPriorityDifference)
  {
    v6 = [highestPriorityDifference priority] <= priority;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)descriptionBuilder
{
  v3 = [objc_alloc(MEMORY[0x277D2C8F8]) initWithObject:self];
  objectA = [(HFComparisonResult *)self objectA];
  v5 = [v3 appendObject:objectA withName:@"objectA" skipIfNil:1];

  objectB = [(HFComparisonResult *)self objectB];
  v7 = [v3 appendObject:objectB withName:@"objectB" skipIfNil:1];

  realDifferences = [(HFComparisonResult *)self realDifferences];
  [v3 appendArraySection:realDifferences withName:@"differences" skipIfEmpty:0];

  return v3;
}

- (id)description
{
  descriptionBuilder = [(HFComparisonResult *)self descriptionBuilder];
  build = [descriptionBuilder build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objectA = [(HFComparisonResult *)self objectA];
  [v4 setObjectA:objectA];

  objectB = [(HFComparisonResult *)self objectB];
  [v4 setObjectB:objectB];

  v7 = [(NSMutableDictionary *)self->_mutableDifferences copy];
  [v4 setMutableDifferences:v7];

  return v4;
}

- (id)objectA
{
  WeakRetained = objc_loadWeakRetained(&self->_objectA);

  return WeakRetained;
}

- (id)objectB
{
  WeakRetained = objc_loadWeakRetained(&self->_objectB);

  return WeakRetained;
}

@end