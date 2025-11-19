@interface HKIngredientSearchResult
- (HKIngredientSearchResult)initWithIngredientId:(id)a3 ingredientName:(id)a4 strengthQuantity:(id)a5 strengthUnit:(id)a6;
- (id)dictionaryRepresentation;
@end

@implementation HKIngredientSearchResult

- (HKIngredientSearchResult)initWithIngredientId:(id)a3 ingredientName:(id)a4 strengthQuantity:(id)a5 strengthUnit:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    [HKIngredientSearchResult initWithIngredientId:a2 ingredientName:self strengthQuantity:? strengthUnit:?];
  }

  v19.receiver = self;
  v19.super_class = HKIngredientSearchResult;
  v16 = [(HKIngredientSearchResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_ingredientId, a3);
    objc_storeStrong(&v17->_ingredientName, a4);
    objc_storeStrong(&v17->_strengthQuantity, a5);
    objc_storeStrong(&v17->_strengthUnit, a6);
  }

  return v17;
}

- (id)dictionaryRepresentation
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"ingredientId";
  v3 = [(HKIngredientSearchResult *)self ingredientId];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"(null)";
  }

  v19[0] = v5;
  v18[1] = @"ingredientName";
  v6 = [(HKIngredientSearchResult *)self ingredientName];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"(null)";
  }

  v19[1] = v8;
  v18[2] = @"strengthQuantity";
  v9 = [(HKIngredientSearchResult *)self strengthQuantity];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"(null)";
  }

  v19[2] = v11;
  v18[3] = @"strengthUnit";
  v12 = [(HKIngredientSearchResult *)self strengthUnit];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"(null)";
  }

  v19[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)initWithIngredientId:(uint64_t)a1 ingredientName:(uint64_t)a2 strengthQuantity:strengthUnit:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationsSearchResult.m" lineNumber:24 description:@"ingredientId cannot be nil"];
}

@end