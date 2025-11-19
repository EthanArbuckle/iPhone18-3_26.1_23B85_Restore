@interface HKGenericMedicationSearchResult
- (BOOL)isEqual:(id)a3;
- (HKGenericMedicationSearchResult)initWithGenericMedicationId:(id)a3 genericMedicationName:(id)a4 brandName:(id)a5 ingredients:(id)a6;
- (id)copyByReplacingWithIngredients:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation HKGenericMedicationSearchResult

- (HKGenericMedicationSearchResult)initWithGenericMedicationId:(id)a3 genericMedicationName:(id)a4 brandName:(id)a5 ingredients:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    [HKGenericMedicationSearchResult initWithGenericMedicationId:a2 genericMedicationName:self brandName:? ingredients:?];
  }

  v19.receiver = self;
  v19.super_class = HKGenericMedicationSearchResult;
  v16 = [(HKGenericMedicationSearchResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_genericMedicationId, a3);
    objc_storeStrong(&v17->_genericMedicationName, a4);
    objc_storeStrong(&v17->_brandName, a5);
    objc_storeStrong(&v17->_ingredients, a6);
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 genericMedicationId];
    v6 = [(HKGenericMedicationSearchResult *)self genericMedicationId];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HKGenericMedicationSearchResult *)self genericMedicationId];
  v3 = [v2 hash];

  return v3;
}

- (id)copyByReplacingWithIngredients:(id)a3
{
  v4 = a3;
  v5 = [HKGenericMedicationSearchResult alloc];
  v6 = [(HKGenericMedicationSearchResult *)self genericMedicationId];
  v7 = [(HKGenericMedicationSearchResult *)self genericMedicationName];
  v8 = [(HKGenericMedicationSearchResult *)self brandName];
  v9 = [(HKGenericMedicationSearchResult *)v5 initWithGenericMedicationId:v6 genericMedicationName:v7 brandName:v8 ingredients:v4];

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
  v4 = [(HKGenericMedicationSearchResult *)self ingredients];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

  v26[0] = @"genericMedicationId";
  v10 = [(HKGenericMedicationSearchResult *)self genericMedicationId];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"(null)";
  }

  v27[0] = v12;
  v26[1] = @"genericMedicationName";
  v13 = [(HKGenericMedicationSearchResult *)self genericMedicationName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"(null)";
  }

  v27[1] = v15;
  v26[2] = @"brandName";
  v16 = [(HKGenericMedicationSearchResult *)self brandName];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
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