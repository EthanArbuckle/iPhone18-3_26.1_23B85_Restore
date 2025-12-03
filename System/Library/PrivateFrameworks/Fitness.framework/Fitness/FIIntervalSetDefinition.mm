@interface FIIntervalSetDefinition
+ (id)definitionFromDictionary:(id)dictionary error:(id *)error;
- (FIIntervalSetDefinition)initWithIntervalDefinitions:(id)definitions repeatCount:(int64_t)count setType:(int64_t)type;
- (id)byAddingIntervalDefinition:(id)definition;
- (id)byChangingRepeatCount:(int64_t)count;
- (id)byChangingSetType:(int64_t)type;
- (id)byInsertingIntervalDefinition:(id)definition atIndex:(unint64_t)index;
- (id)byRemovingIntervalDefinitionAtIndex:(unint64_t)index;
- (id)byReplacingIntervalDefinitionAtIndex:(unint64_t)index withIntervalDefinition:(id)definition;
- (id)dictionaryRepresentation;
- (id)intervalAtIndex:(unint64_t)index;
@end

@implementation FIIntervalSetDefinition

- (FIIntervalSetDefinition)initWithIntervalDefinitions:(id)definitions repeatCount:(int64_t)count setType:(int64_t)type
{
  definitionsCopy = definitions;
  v13.receiver = self;
  v13.super_class = FIIntervalSetDefinition;
  v10 = [(FIIntervalSetDefinition *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_intervalDefinitions, definitions);
    v11->_repeatCount = count;
    v11->_setType = type;
  }

  return v11;
}

- (id)intervalAtIndex:(unint64_t)index
{
  intervalDefinitions = self->_intervalDefinitions;
  v4 = index % [(NSArray *)intervalDefinitions count];

  return [(NSArray *)intervalDefinitions objectAtIndexedSubscript:v4];
}

+ (id)definitionFromDictionary:(id)dictionary error:(id *)error
{
  v39[8] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [FIValidation validationWithName:@"Key 'intervalDefinitions' exists" test:&__block_literal_global_59];
  v39[0] = v4;
  v5 = [FIValidation validationWithName:@"Key 'repeatCount' exists" test:&__block_literal_global_64];
  v39[1] = v5;
  v6 = [FIValidation validationWithName:@"Key 'setType' exists" test:&__block_literal_global_69];
  v39[2] = v6;
  v7 = [FIValidation validationWithName:@"'setType' is number" test:&__block_literal_global_74];
  v39[3] = v7;
  v8 = [FIValidation validationWithName:@"'repeatCount' is number" test:&__block_literal_global_79];
  v39[4] = v8;
  v9 = [FIValidation validationWithName:@"'intervalDefinitions' is an array" test:&__block_literal_global_84];
  v39[5] = v9;
  v10 = [FIValidation validationWithName:@"'setType' is a valid identifier" test:&__block_literal_global_90];
  v39[6] = v10;
  v11 = [FIValidation validationWithName:@"'intervalDefinitions' contains dictionaries only" test:&__block_literal_global_95];
  v39[7] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:8];

  v13 = dictionaryCopy;
  LODWORD(v4) = [FIValidation performValidations:v12 withObject:dictionaryCopy error:error];

  if (!v4)
  {
    v25 = 0;
    goto LABEL_19;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [dictionaryCopy objectForKeyedSubscript:@"intervalDefinitions"];
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v15)
  {

    v19 = MEMORY[0x277CBEBF8];
LABEL_17:
    v26 = [FIIntervalSetDefinition alloc];
    v17 = [v13 objectForKeyedSubscript:@"repeatCount"];
    unsignedIntegerValue = [v17 unsignedIntegerValue];
    v28 = [v13 objectForKeyedSubscript:@"setType"];
    v25 = -[FIIntervalSetDefinition initWithIntervalDefinitions:repeatCount:setType:](v26, "initWithIntervalDefinitions:repeatCount:setType:", v19, unsignedIntegerValue, [v28 integerValue]);

    goto LABEL_18;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v35;
  v19 = MEMORY[0x277CBEBF8];
  while (2)
  {
    v20 = 0;
    v21 = v19;
    v22 = v17;
    do
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v23 = *(*(&v34 + 1) + 8 * v20);
      v33 = v22;
      v24 = [FIIntervalDefinition definitionFromDictionary:v23 error:&v33];
      v17 = v33;

      if (!v24)
      {
        v19 = v21;
        goto LABEL_13;
      }

      v19 = [v21 arrayByAddingObject:v24];

      ++v20;
      v21 = v19;
      v22 = v17;
    }

    while (v16 != v20);
    v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_13:

  if (!v17)
  {
    v13 = dictionaryCopy;
    goto LABEL_17;
  }

  FISetOutErrorIfNotNull(error, v17);
  v25 = 0;
  v13 = dictionaryCopy;
LABEL_18:

LABEL_19:
  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)dictionaryRepresentation
{
  v11[3] = *MEMORY[0x277D85DE8];
  intervalDefinitions = [(FIIntervalSetDefinition *)self intervalDefinitions];
  v4 = [intervalDefinitions fi_mapUsingBlock:&__block_literal_global_13];

  v11[0] = v4;
  v10[0] = @"intervalDefinitions";
  v10[1] = @"repeatCount";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FIIntervalSetDefinition repeatCount](self, "repeatCount")}];
  v11[1] = v5;
  v10[2] = @"setType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FIIntervalSetDefinition setType](self, "setType")}];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)byChangingRepeatCount:(int64_t)count
{
  v5 = [FIIntervalSetDefinition alloc];
  intervalDefinitions = [(FIIntervalSetDefinition *)self intervalDefinitions];
  v7 = [(FIIntervalSetDefinition *)v5 initWithIntervalDefinitions:intervalDefinitions repeatCount:count setType:[(FIIntervalSetDefinition *)self setType]];

  return v7;
}

- (id)byChangingSetType:(int64_t)type
{
  v5 = [FIIntervalSetDefinition alloc];
  intervalDefinitions = [(FIIntervalSetDefinition *)self intervalDefinitions];
  v7 = [(FIIntervalSetDefinition *)v5 initWithIntervalDefinitions:intervalDefinitions repeatCount:[(FIIntervalSetDefinition *)self repeatCount] setType:type];

  return v7;
}

- (id)byAddingIntervalDefinition:(id)definition
{
  definitionCopy = definition;
  intervalDefinitions = [(FIIntervalSetDefinition *)self intervalDefinitions];
  v6 = [intervalDefinitions arrayByAddingObject:definitionCopy];

  v7 = [[FIIntervalSetDefinition alloc] initWithIntervalDefinitions:v6 repeatCount:[(FIIntervalSetDefinition *)self repeatCount] setType:[(FIIntervalSetDefinition *)self setType]];

  return v7;
}

- (id)byInsertingIntervalDefinition:(id)definition atIndex:(unint64_t)index
{
  definitionCopy = definition;
  intervalDefinitions = [(FIIntervalSetDefinition *)self intervalDefinitions];
  v8 = [intervalDefinitions mutableCopy];

  [v8 insertObject:definitionCopy atIndex:index];
  v9 = [FIIntervalSetDefinition alloc];
  v10 = [v8 copy];
  v11 = [(FIIntervalSetDefinition *)v9 initWithIntervalDefinitions:v10 repeatCount:[(FIIntervalSetDefinition *)self repeatCount] setType:[(FIIntervalSetDefinition *)self setType]];

  return v11;
}

- (id)byReplacingIntervalDefinitionAtIndex:(unint64_t)index withIntervalDefinition:(id)definition
{
  definitionCopy = definition;
  intervalDefinitions = [(FIIntervalSetDefinition *)self intervalDefinitions];
  v8 = [intervalDefinitions mutableCopy];

  [v8 replaceObjectAtIndex:index withObject:definitionCopy];
  v9 = [FIIntervalSetDefinition alloc];
  v10 = [v8 copy];
  v11 = [(FIIntervalSetDefinition *)v9 initWithIntervalDefinitions:v10 repeatCount:[(FIIntervalSetDefinition *)self repeatCount] setType:[(FIIntervalSetDefinition *)self setType]];

  return v11;
}

- (id)byRemovingIntervalDefinitionAtIndex:(unint64_t)index
{
  intervalDefinitions = [(FIIntervalSetDefinition *)self intervalDefinitions];
  v6 = [intervalDefinitions mutableCopy];

  [v6 removeObjectAtIndex:index];
  v7 = [FIIntervalSetDefinition alloc];
  v8 = [v6 copy];
  v9 = [(FIIntervalSetDefinition *)v7 initWithIntervalDefinitions:v8 repeatCount:[(FIIntervalSetDefinition *)self repeatCount] setType:[(FIIntervalSetDefinition *)self setType]];

  return v9;
}

@end