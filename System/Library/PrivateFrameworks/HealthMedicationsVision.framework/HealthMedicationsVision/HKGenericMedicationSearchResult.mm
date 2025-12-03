@interface HKGenericMedicationSearchResult
- (BOOL)isEqual:(id)equal;
- (HKGenericMedicationSearchResult)initWithGenericMedicationId:(id)id genericMedicationName:(id)name brandName:(id)brandName ingredients:(id)ingredients;
- (id)copyByReplacingWithIngredients:(id)ingredients;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation HKGenericMedicationSearchResult

- (HKGenericMedicationSearchResult)initWithGenericMedicationId:(id)id genericMedicationName:(id)name brandName:(id)brandName ingredients:(id)ingredients
{
  idCopy = id;
  nameCopy = name;
  brandNameCopy = brandName;
  ingredientsCopy = ingredients;
  if (!idCopy)
  {
    [HKGenericMedicationSearchResult initWithGenericMedicationId:a2 genericMedicationName:self brandName:? ingredients:?];
  }

  v19.receiver = self;
  v19.super_class = HKGenericMedicationSearchResult;
  v16 = [(HKGenericMedicationSearchResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_genericMedicationId, id);
    objc_storeStrong(&v17->_genericMedicationName, name);
    objc_storeStrong(&v17->_brandName, brandName);
    objc_storeStrong(&v17->_ingredients, ingredients);
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    genericMedicationId = [equalCopy genericMedicationId];
    genericMedicationId2 = [(HKGenericMedicationSearchResult *)self genericMedicationId];
    v7 = [genericMedicationId isEqualToString:genericMedicationId2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  genericMedicationId = [(HKGenericMedicationSearchResult *)self genericMedicationId];
  v3 = [genericMedicationId hash];

  return v3;
}

- (id)copyByReplacingWithIngredients:(id)ingredients
{
  ingredientsCopy = ingredients;
  v5 = [HKGenericMedicationSearchResult alloc];
  genericMedicationId = [(HKGenericMedicationSearchResult *)self genericMedicationId];
  genericMedicationName = [(HKGenericMedicationSearchResult *)self genericMedicationName];
  brandName = [(HKGenericMedicationSearchResult *)self brandName];
  v9 = [(HKGenericMedicationSearchResult *)v5 initWithGenericMedicationId:genericMedicationId genericMedicationName:genericMedicationName brandName:brandName ingredients:ingredientsCopy];

  return v9;
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  ingredients = [(HKGenericMedicationSearchResult *)self ingredients];
  v5 = [ingredients countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(ingredients);
        }

        dictionaryRepresentation = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [ingredients countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

  v26[0] = @"genericMedicationId";
  genericMedicationId = [(HKGenericMedicationSearchResult *)self genericMedicationId];
  v11 = genericMedicationId;
  if (genericMedicationId)
  {
    v12 = genericMedicationId;
  }

  else
  {
    v12 = @"(null)";
  }

  v27[0] = v12;
  v26[1] = @"genericMedicationName";
  genericMedicationName = [(HKGenericMedicationSearchResult *)self genericMedicationName];
  v14 = genericMedicationName;
  if (genericMedicationName)
  {
    v15 = genericMedicationName;
  }

  else
  {
    v15 = @"(null)";
  }

  v27[1] = v15;
  v26[2] = @"brandName";
  brandName = [(HKGenericMedicationSearchResult *)self brandName];
  v17 = brandName;
  if (brandName)
  {
    v18 = brandName;
  }

  else
  {
    v18 = @"(null)";
  }

  v26[3] = @"ingredients";
  v27[2] = v18;
  v27[3] = v3;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)initWithGenericMedicationId:(uint64_t)a1 genericMedicationName:(uint64_t)a2 brandName:ingredients:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationsSearchResult.m" lineNumber:55 description:@"genericMedicationId cannot be nil"];
}

@end