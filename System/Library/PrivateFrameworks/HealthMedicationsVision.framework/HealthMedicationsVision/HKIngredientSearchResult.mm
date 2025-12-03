@interface HKIngredientSearchResult
- (HKIngredientSearchResult)initWithIngredientId:(id)id ingredientName:(id)name strengthQuantity:(id)quantity strengthUnit:(id)unit;
- (id)dictionaryRepresentation;
@end

@implementation HKIngredientSearchResult

- (HKIngredientSearchResult)initWithIngredientId:(id)id ingredientName:(id)name strengthQuantity:(id)quantity strengthUnit:(id)unit
{
  idCopy = id;
  nameCopy = name;
  quantityCopy = quantity;
  unitCopy = unit;
  if (!idCopy)
  {
    [HKIngredientSearchResult initWithIngredientId:a2 ingredientName:self strengthQuantity:? strengthUnit:?];
  }

  v19.receiver = self;
  v19.super_class = HKIngredientSearchResult;
  v16 = [(HKIngredientSearchResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_ingredientId, id);
    objc_storeStrong(&v17->_ingredientName, name);
    objc_storeStrong(&v17->_strengthQuantity, quantity);
    objc_storeStrong(&v17->_strengthUnit, unit);
  }

  return v17;
}

- (id)dictionaryRepresentation
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"ingredientId";
  ingredientId = [(HKIngredientSearchResult *)self ingredientId];
  v4 = ingredientId;
  if (ingredientId)
  {
    v5 = ingredientId;
  }

  else
  {
    v5 = @"(null)";
  }

  v19[0] = v5;
  v18[1] = @"ingredientName";
  ingredientName = [(HKIngredientSearchResult *)self ingredientName];
  v7 = ingredientName;
  if (ingredientName)
  {
    v8 = ingredientName;
  }

  else
  {
    v8 = @"(null)";
  }

  v19[1] = v8;
  v18[2] = @"strengthQuantity";
  strengthQuantity = [(HKIngredientSearchResult *)self strengthQuantity];
  v10 = strengthQuantity;
  if (strengthQuantity)
  {
    v11 = strengthQuantity;
  }

  else
  {
    v11 = @"(null)";
  }

  v19[2] = v11;
  v18[3] = @"strengthUnit";
  strengthUnit = [(HKIngredientSearchResult *)self strengthUnit];
  v13 = strengthUnit;
  if (strengthUnit)
  {
    v14 = strengthUnit;
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