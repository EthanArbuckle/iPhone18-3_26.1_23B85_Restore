@interface HREActionMap
+ (id)actionMapWithChildMaps:(id)maps;
+ (id)emptyMap;
- (BOOL)conditionSatisfiedByObject:(id)object;
- (HREActionMap)initWithCondition:(id)condition childMaps:(id)maps;
- (id)copyWithZone:(_NSZone *)zone;
- (id)flattenedMapEvaluatedForObject:(id)object;
- (id)mergeWithActionMaps:(id)maps;
@end

@implementation HREActionMap

- (HREActionMap)initWithCondition:(id)condition childMaps:(id)maps
{
  conditionCopy = condition;
  mapsCopy = maps;
  v16.receiver = self;
  v16.super_class = HREActionMap;
  v9 = [(HREActionMap *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_condition, condition);
    v11 = [mapsCopy mutableCopy];
    v12 = v11;
    if (v11)
    {
      array = v11;
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    childMaps = v10->_childMaps;
    v10->_childMaps = array;
  }

  return v10;
}

+ (id)emptyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HREActionMap_emptyMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (id)actionMapWithChildMaps:(id)maps
{
  mapsCopy = maps;
  v5 = [[self alloc] initWithCondition:0 childMaps:mapsCopy];

  return v5;
}

- (BOOL)conditionSatisfiedByObject:(id)object
{
  objectCopy = object;
  condition = [(HREActionMap *)self condition];
  if (condition)
  {
    condition2 = [(HREActionMap *)self condition];
    v7 = [condition2 evaluateWithObject:objectCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)flattenedMapEvaluatedForObject:(id)object
{
  objectCopy = object;
  if ([(HREActionMap *)self conditionSatisfiedByObject:objectCopy]|| [(HREActionMap *)self visitedByFlatten])
  {
    [(HREActionMap *)self setVisitedByFlatten:1];
    childMaps = [(HREActionMap *)self childMaps];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__HREActionMap_flattenedMapEvaluatedForObject___block_invoke;
    v11[3] = &unk_2797764C8;
    v12 = objectCopy;
    v6 = [childMaps na_map:v11];

    v7 = [(HREActionMap *)self mergeWithActionMaps:v6];
    v8 = v7;
    if (v7 != self)
    {
      childMaps2 = [(HREActionMap *)v7 childMaps];
      [childMaps2 removeAllObjects];
    }

    [(HREActionMap *)self setVisitedByFlatten:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mergeWithActionMaps:(id)maps
{
  mapsCopy = maps;
  emptyMap = [objc_opt_class() emptyMap];
  v7 = [(HREActionMap *)self isEqual:emptyMap];

  if (v7)
  {
    firstObject = [mapsCopy firstObject];
    v9 = [firstObject mergeWithActionMaps:mapsCopy];
  }

  else
  {
    firstObject = [MEMORY[0x277CCA890] currentHandler];
    [firstObject handleFailureInMethod:a2 object:self file:@"HREActionMap.m" lineNumber:84 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HREActionMap mergeWithActionMaps:]", objc_opt_class()}];
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  childMaps = self->_childMaps;
  condition = self->_condition;

  return [v4 initWithCondition:condition childMaps:childMaps];
}

@end