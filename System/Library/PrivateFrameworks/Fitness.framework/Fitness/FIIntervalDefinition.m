@interface FIIntervalDefinition
+ (id)definitionFromDictionary:(id)a3 error:(id *)a4;
+ (id)intervalDefinitionWithTypeIdentifier:(int64_t)a3 quantity:(id)a4;
- (FIIntervalDefinition)initWithTypeIdentifier:(int64_t)a3 quantity:(id)a4;
- (id)byChangingType:(int64_t)a3 quantity:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation FIIntervalDefinition

- (FIIntervalDefinition)initWithTypeIdentifier:(int64_t)a3 quantity:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FIIntervalDefinition;
  v8 = [(FIIntervalDefinition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_quantity, a4);
  }

  return v9;
}

+ (id)intervalDefinitionWithTypeIdentifier:(int64_t)a3 quantity:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() intervalDefinitionWithTypeIdentifier:a3 quantity:v5];

  return v6;
}

+ (id)definitionFromDictionary:(id)a3 error:(id *)a4
{
  v23[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
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

  LODWORD(a4) = [FIValidation performValidations:v11 withObject:v5 error:a4];
  if (a4)
  {
    v12 = [v5 objectForKeyedSubscript:@"type"];
    v13 = [v12 integerValue];

    v14 = MEMORY[0x277CCD7E8];
    v15 = FICanonicalQuantityUnitForIntervalType(v13);
    v16 = [v5 objectForKeyedSubscript:@"quantity"];
    [v16 doubleValue];
    v17 = [v14 quantityWithUnit:v15 doubleValue:?];

    v18 = [FIIntervalDefinition alloc];
    v19 = [v5 objectForKeyedSubscript:@"type"];
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
  v3 = [(FIIntervalDefinition *)self quantity];
  v4 = FICanonicalQuantityUnitForIntervalType([(FIIntervalDefinition *)self type]);
  [v3 doubleValueForUnit:v4];
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

- (id)byChangingType:(int64_t)a3 quantity:(id)a4
{
  v5 = a4;
  v6 = [[FIIntervalDefinition alloc] initWithTypeIdentifier:a3 quantity:v5];

  return v6;
}

@end