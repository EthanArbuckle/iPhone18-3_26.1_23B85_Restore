@interface HMDCodingConditionSet
+ (void)resolve:(void *)resolve fromSet:;
- (BOOL)isEqual:(id)equal;
- (HMDCodingConditionSet)initWithModel:(id)model;
- (HMDCodingConditionSet)initWithModel:(id)model conditions:(id)conditions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)resolve:(uint64_t)resolve;
@end

@implementation HMDCodingConditionSet

+ (void)resolve:(void *)resolve fromSet:
{
  objc_opt_self();
  if (resolve)
  {
    v5 = [resolve indexOfObject:a2];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      objc_opt_self();
      if (v6 >= 0x40)
      {
        v7 = _HMFPreconditionFailure();
        [(HMDCodingConditionSet *)v7 .cxx_destruct];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_alloc(objc_opt_class()) initWithModel:self->_model];
  *(result + 2) = self->_bitmask;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && *(equal + 1) == self->_model && *(equal + 2) == self->_bitmask;
}

- (id)description
{
  model = self->_model;
  bitmask = self->_bitmask;
  if (model)
  {
    conditions = model->_conditions;
  }

  else
  {
    conditions = 0;
  }

  objc_opt_self();
  if (bitmask)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __55__HMDCodingConditionSet_descriptionForBitmask_withSet___block_invoke;
    v12 = &unk_278675240;
    v13 = v5;
    v14 = bitmask;
    v6 = v5;
    [(NSOrderedSet *)conditions enumerateObjectsUsingBlock:&v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = @"<none>";
  }

  return v7;
}

void __55__HMDCodingConditionSet_descriptionForBitmask_withSet___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  objc_opt_self();
  if (a3 >= 0x40)
  {
    v7 = _HMFPreconditionFailure();
    [(HMDCodingConditionSet *)v7 removeCondition:v8, v9];
  }

  else if ((*(a1 + 40) >> a3))
  {
    if ([*(a1 + 32) length])
    {
      [*(a1 + 32) appendString:@"|"];
    }

    v6 = *(a1 + 32);

    [v6 appendString:a2];
  }
}

- (void)resolve:(uint64_t)resolve
{
  v14 = *MEMORY[0x277D85DE8];
  if (resolve)
  {
    v3 = *(resolve + 8);
    v4 = v3 ? *(v3 + 40) : 0;
    [HMDCodingConditionSet resolve:a2 fromSet:v4];
    if (!v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = HMFGetLogIdentifier();
        v10 = 138543618;
        v11 = v9;
        v12 = 2114;
        v13 = a2;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring coding condition '%{public}@' that is not defined in the coding model", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (HMDCodingConditionSet)initWithModel:(id)model conditions:(id)conditions
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCodingConditionSet *)self initWithModel:model];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    conditionsCopy = conditions;
    v7 = [conditionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(conditionsCopy);
          }

          [(HMDCodingConditionSet *)v5 addCondition:*(*(&v13 + 1) + 8 * v10++), v13];
        }

        while (v8 != v10);
        v8 = [conditionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (HMDCodingConditionSet)initWithModel:(id)model
{
  v7.receiver = self;
  v7.super_class = HMDCodingConditionSet;
  v4 = [(HMDCodingConditionSet *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_model, model);
  }

  return v5;
}

@end