@interface FIIntervalDefinition
+ (id)definitionFromDictionary:(id)dictionary error:(id *)error;
+ (id)intervalDefinitionWithTypeIdentifier:(int64_t)identifier quantity:(id)quantity;
- (FIIntervalDefinition)initWithTypeIdentifier:(int64_t)identifier quantity:(id)quantity;
- (id)byChangingType:(int64_t)type quantity:(id)quantity;
- (id)dictionaryRepresentation;
@end

@implementation FIIntervalDefinition

- (FIIntervalDefinition)initWithTypeIdentifier:(int64_t)identifier quantity:(id)quantity
{
  quantityCopy = quantity;
  v11.receiver = self;
  v11.super_class = FIIntervalDefinition;
  v8 = [(FIIntervalDefinition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = identifier;
    objc_storeStrong(&v8->_quantity, quantity);
  }

  return v9;
}

+ (id)intervalDefinitionWithTypeIdentifier:(int64_t)identifier quantity:(id)quantity
{
  quantityCopy = quantity;
  v6 = [objc_opt_class() intervalDefinitionWithTypeIdentifier:identifier quantity:quantityCopy];

  return v6;
}

+ (id)definitionFromDictionary:(id)dictionary error:(id *)error
{
  v23[5] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [FIValidation validationWithName:@"Key 'type' exists" test:&__block_literal_global_3];
  v7 = [FIValidation validationWithName:@"Key 'quantity' exists" test:&__block_literal_global_43, v6];
  v23[1] = v7;
  v8 = [FIValidation validationWithName:@"'quantity' is number" test:&__block_literal_global_48];
  v23[2] = v8;
  v9 = [FIValidation validationWithName:@"'type' is number" test:&__block_literal_global_53];
  v23[3] = v9;
  v10 = [FIValidation validationWithName:@"'type' is a valid identifier" test:&__block_literal_global_58];
  v23[4] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];

  LODWORD(error) = [FIValidation performValidations:v11 withObject:dictionaryCopy error:error];
  if (error)
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    integerValue = [v12 integerValue];

    v14 = MEMORY[0x277CCD7E8];
    v15 = FICanonicalQuantityUnitForIntervalType(integerValue);
    v16 = [dictionaryCopy objectForKeyedSubscript:@"quantity"];
    [v16 doubleValue];
    v17 = [v14 quantityWithUnit:v15 doubleValue:?];

    v18 = [FIIntervalDefinition alloc];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v20 = -[FIIntervalDefinition initWithTypeIdentifier:quantity:](v18, "initWithTypeIdentifier:quantity:", [v19 integerValue], v17);
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)dictionaryRepresentation
{
  v13[2] = *MEMORY[0x277D85DE8];
  quantity = [(FIIntervalDefinition *)self quantity];
  v4 = FICanonicalQuantityUnitForIntervalType([(FIIntervalDefinition *)self type]);
  [quantity doubleValueForUnit:v4];
  v6 = v5;

  v12[0] = @"type";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FIIntervalDefinition type](self, "type")}];
  v12[1] = @"quantity";
  v13[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)byChangingType:(int64_t)type quantity:(id)quantity
{
  quantityCopy = quantity;
  v6 = [[FIIntervalDefinition alloc] initWithTypeIdentifier:type quantity:quantityCopy];

  return v6;
}

@end