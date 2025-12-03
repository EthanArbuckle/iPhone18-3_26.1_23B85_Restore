@interface WFContentComparisonPredicate
+ (id)predicateWithValue:(id)value forProperty:(id)property comparisonType:(unint64_t)type;
+ (id)predicateWithValueBlock:(id)block forProperty:(id)property;
+ (void)initialize;
+ (void)registerValueMapping:(id)mapping;
- (BOOL)evaluateWithValues:(id)values;
- (NSSet)containedProperties;
- (WFContentComparisonPredicate)initWithValue:(id)value valueBlock:(id)block property:(id)property comparisonType:(unint64_t)type;
- (id)comparableValueForValue:(id)value;
- (id)description;
- (void)evaluateWithObject:(id)object propertySubstitutor:(id)substitutor completionHandler:(id)handler;
@end

@implementation WFContentComparisonPredicate

- (NSSet)containedProperties
{
  v2 = MEMORY[0x277CBEB98];
  property = [(WFContentComparisonPredicate *)self property];
  v4 = [v2 setWithObject:property];

  return v4;
}

- (BOOL)evaluateWithValues:(id)values
{
  valuesCopy = values;
  valueBlock = [(WFContentComparisonPredicate *)self valueBlock];
  if (!valueBlock)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__WFContentComparisonPredicate_evaluateWithValues___block_invoke;
    aBlock[3] = &unk_278346F28;
    aBlock[4] = self;
    valueBlock = _Block_copy(aBlock);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__WFContentComparisonPredicate_evaluateWithValues___block_invoke_2;
  v9[3] = &unk_27834A228;
  v9[4] = self;
  v6 = [valuesCopy if_map:v9];
  v7 = (valueBlock)[2](valueBlock, v6);

  return v7;
}

uint64_t __51__WFContentComparisonPredicate_evaluateWithValues___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) property];
  v5 = [v4 multipleValues];

  if (!v5)
  {
    v7 = MEMORY[0x277CCA918];
    v8 = MEMORY[0x277CCA9C0];
    v9 = [v3 firstObject];
    v10 = [v8 expressionForConstantValue:v9];
    v11 = MEMORY[0x277CCA9C0];
    v12 = *(a1 + 32);
    v13 = [v12 value];
    v14 = [v12 comparableValueForValue:v13];
    v15 = [v11 expressionForConstantValue:v14];
    v16 = [*(a1 + 32) comparisonType];
    v17 = [*(a1 + 32) property];
    v18 = [v7 predicateWithLeftExpression:v10 rightExpression:v15 modifier:0 type:v16 options:{objc_msgSend(v17, "caseInsensitive")}];

LABEL_17:
    v6 = [v18 evaluateWithObject:{0, v32}];

    goto LABEL_18;
  }

  if ([v3 count] || objc_msgSend(*(a1 + 32), "comparisonType") != 5)
  {
    v19 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = v3;
    obj = v3;
    v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v35)
    {
      v34 = *v37;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v37 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v21 = MEMORY[0x277CCA918];
          v22 = [MEMORY[0x277CCA9C0] expressionForConstantValue:{*(*(&v36 + 1) + 8 * i), v32}];
          v23 = MEMORY[0x277CCA9C0];
          v24 = *(a1 + 32);
          v25 = [v24 value];
          v26 = [v24 comparableValueForValue:v25];
          v27 = [v23 expressionForConstantValue:v26];
          v28 = [*(a1 + 32) comparisonType];
          v29 = [*(a1 + 32) property];
          v30 = [v21 predicateWithLeftExpression:v22 rightExpression:v27 modifier:0 type:v28 options:{objc_msgSend(v29, "caseInsensitive")}];
          [v19 addObject:v30];
        }

        v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v35);
    }

    if ([*(a1 + 32) comparisonType] == 5)
    {
      [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v19];
    }

    else
    {
      [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v19];
    }
    v18 = ;
    v3 = v32;

    goto LABEL_17;
  }

  v6 = 1;
LABEL_18:

  return v6;
}

- (void)evaluateWithObject:(id)object propertySubstitutor:(id)substitutor completionHandler:(id)handler
{
  objectCopy = object;
  substitutorCopy = substitutor;
  handlerCopy = handler;
  if (handlerCopy)
  {
    property = [(WFContentComparisonPredicate *)self property];
    if (substitutorCopy && (substitutorCopy[2](substitutorCopy, objectCopy, property), v12 = objc_claimAutoreleasedReturnValue(), property, (property = v12) == 0))
    {
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __89__WFContentComparisonPredicate_evaluateWithObject_propertySubstitutor_completionHandler___block_invoke;
      v13[3] = &unk_278349A90;
      v13[4] = self;
      v14 = handlerCopy;
      [property getValuesForObject:objectCopy completionHandler:v13];
    }
  }
}

uint64_t __89__WFContentComparisonPredicate_evaluateWithObject_propertySubstitutor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) evaluateWithValues:a2];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (id)comparableValueForValue:(id)value
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = mappings;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      v10 = valueCopy;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v9);
        property = [(WFContentComparisonPredicate *)self property];
        valueCopy = (*(v11 + 16))(v11, property, v10);

        ++v9;
        v10 = valueCopy;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return valueCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  property = [(WFContentComparisonPredicate *)self property];
  value = [(WFContentComparisonPredicate *)self value];
  v8 = [v3 stringWithFormat:@"<%@: %p, property: %@, value: %@, comparison: %lu>", v5, self, property, value, -[WFContentComparisonPredicate comparisonType](self, "comparisonType")];

  return v8;
}

- (WFContentComparisonPredicate)initWithValue:(id)value valueBlock:(id)block property:(id)property comparisonType:(unint64_t)type
{
  valueCopy = value;
  blockCopy = block;
  propertyCopy = property;
  v20.receiver = self;
  v20.super_class = WFContentComparisonPredicate;
  v13 = [(WFContentComparisonPredicate *)&v20 init];
  if (v13)
  {
    if ([valueCopy conformsToProtocol:&unk_282F7EE80])
    {
      v14 = [valueCopy copyWithZone:MEMORY[0x223D55DD0]()];
    }

    else
    {
      v14 = valueCopy;
    }

    value = v13->_value;
    v13->_value = v14;

    v16 = [blockCopy copy];
    valueBlock = v13->_valueBlock;
    v13->_valueBlock = v16;

    objc_storeStrong(&v13->_property, property);
    v13->_comparisonType = type;
    v18 = v13;
  }

  return v13;
}

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WFContentComparisonPredicate_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

uint64_t __42__WFContentComparisonPredicate_initialize__block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerValueMapping:&__block_literal_global_32];
  [*(a1 + 32) registerValueMapping:&__block_literal_global_36];
  [*(a1 + 32) registerValueMapping:&__block_literal_global_40];
  [*(a1 + 32) registerValueMapping:&__block_literal_global_44];
  v2 = *(a1 + 32);

  return [v2 registerValueMapping:&__block_literal_global_48];
}

id __42__WFContentComparisonPredicate_initialize__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 addressString];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

id __42__WFContentComparisonPredicate_initialize__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 string];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

id __42__WFContentComparisonPredicate_initialize__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 address];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

id __42__WFContentComparisonPredicate_initialize__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 normalizedPhoneNumber];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

id __42__WFContentComparisonPredicate_initialize__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 absoluteString];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

+ (void)registerValueMapping:(id)mapping
{
  v3 = registerValueMapping__onceToken;
  mappingCopy = mapping;
  if (v3 != -1)
  {
    dispatch_once(&registerValueMapping__onceToken, &__block_literal_global_11226);
  }

  v5 = mappings;
  v6 = _Block_copy(mappingCopy);

  [v5 addObject:v6];
}

uint64_t __53__WFContentComparisonPredicate_registerValueMapping___block_invoke()
{
  mappings = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)predicateWithValueBlock:(id)block forProperty:(id)property
{
  propertyCopy = property;
  blockCopy = block;
  v8 = [[self alloc] initWithValue:0 valueBlock:blockCopy property:propertyCopy comparisonType:4];

  return v8;
}

+ (id)predicateWithValue:(id)value forProperty:(id)property comparisonType:(unint64_t)type
{
  propertyCopy = property;
  valueCopy = value;
  v10 = [[self alloc] initWithValue:valueCopy valueBlock:0 property:propertyCopy comparisonType:type];

  return v10;
}

@end