@interface HREActionMap
+ (id)actionMapWithChildMaps:(id)a3;
+ (id)emptyMap;
- (BOOL)conditionSatisfiedByObject:(id)a3;
- (HREActionMap)initWithCondition:(id)a3 childMaps:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)flattenedMapEvaluatedForObject:(id)a3;
- (id)mergeWithActionMaps:(id)a3;
@end

@implementation HREActionMap

- (HREActionMap)initWithCondition:(id)a3 childMaps:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HREActionMap;
  v9 = [(HREActionMap *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_condition, a3);
    v11 = [v8 mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CBEB18] array];
    }

    childMaps = v10->_childMaps;
    v10->_childMaps = v13;
  }

  return v10;
}

+ (id)emptyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HREActionMap_emptyMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_27F5F9740 != -1)
  {
    dispatch_once(&qword_27F5F9740, block);
  }

  v2 = _MergedGlobals_16;

  return v2;
}

uint64_t __24__HREActionMap_emptyMap__block_invoke(uint64_t a1)
{
  _MergedGlobals_16 = [objc_alloc(*(a1 + 32)) initWithCondition:0 childMaps:0];

  return MEMORY[0x2821F96F8]();
}

+ (id)actionMapWithChildMaps:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCondition:0 childMaps:v4];

  return v5;
}

- (BOOL)conditionSatisfiedByObject:(id)a3
{
  v4 = a3;
  v5 = [(HREActionMap *)self condition];
  if (v5)
  {
    v6 = [(HREActionMap *)self condition];
    v7 = [v6 evaluateWithObject:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)flattenedMapEvaluatedForObject:(id)a3
{
  v4 = a3;
  if ([(HREActionMap *)self conditionSatisfiedByObject:v4]|| [(HREActionMap *)self visitedByFlatten])
  {
    [(HREActionMap *)self setVisitedByFlatten:1];
    v5 = [(HREActionMap *)self childMaps];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__HREActionMap_flattenedMapEvaluatedForObject___block_invoke;
    v11[3] = &unk_2797764C8;
    v12 = v4;
    v6 = [v5 na_map:v11];

    v7 = [(HREActionMap *)self mergeWithActionMaps:v6];
    v8 = v7;
    if (v7 != self)
    {
      v9 = [(HREActionMap *)v7 childMaps];
      [v9 removeAllObjects];
    }

    [(HREActionMap *)self setVisitedByFlatten:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mergeWithActionMaps:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() emptyMap];
  v7 = [(HREActionMap *)self isEqual:v6];

  if (v7)
  {
    v8 = [v5 firstObject];
    v9 = [v8 mergeWithActionMaps:v5];
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HREActionMap.m" lineNumber:84 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HREActionMap mergeWithActionMaps:]", objc_opt_class()}];
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  childMaps = self->_childMaps;
  condition = self->_condition;

  return [v4 initWithCondition:condition childMaps:childMaps];
}

@end