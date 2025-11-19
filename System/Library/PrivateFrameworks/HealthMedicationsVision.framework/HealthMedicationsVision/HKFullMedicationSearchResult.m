@interface HKFullMedicationSearchResult
- (HKFullMedicationSearchResult)initWithProductId:(id)a3 packagingName:(id)a4 packagingNDC:(id)a5 productBrandName:(id)a6 productGenericName:(id)a7 route:(id)a8 doseForm:(id)a9;
- (id)dictionaryRepresentation;
@end

@implementation HKFullMedicationSearchResult

- (HKFullMedicationSearchResult)initWithProductId:(id)a3 packagingName:(id)a4 packagingNDC:(id)a5 productBrandName:(id)a6 productGenericName:(id)a7 route:(id)a8 doseForm:(id)a9
{
  v16 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  if (!v16)
  {
    [HKFullMedicationSearchResult initWithProductId:a2 packagingName:self packagingNDC:? productBrandName:? productGenericName:? route:? doseForm:?];
  }

  v27.receiver = self;
  v27.super_class = HKFullMedicationSearchResult;
  v18 = [(HKFullMedicationSearchResult *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_productId, a3);
    objc_storeStrong(&v19->_packagingName, a4);
    objc_storeStrong(&v19->_packagingNDC, a5);
    objc_storeStrong(&v19->_productGenericName, a7);
    objc_storeStrong(&v19->_productBrandName, a6);
    objc_storeStrong(&v19->_route, a8);
    objc_storeStrong(&v19->_doseForm, a9);
  }

  return v19;
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [(HKFullMedicationSearchResult *)self ingredients];
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  v38[0] = @"productId";
  v10 = [(HKFullMedicationSearchResult *)self productId];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"(null)";
  }

  v39[0] = v12;
  v38[1] = @"packagingNDC";
  v13 = [(HKFullMedicationSearchResult *)self packagingNDC];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"(null)";
  }

  v39[1] = v15;
  v38[2] = @"productGenericName";
  v16 = [(HKFullMedicationSearchResult *)self productGenericName];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"(null)";
  }

  v39[2] = v18;
  v38[3] = @"productBrandName";
  v19 = [(HKFullMedicationSearchResult *)self productBrandName];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"(null)";
  }

  v39[3] = v21;
  v38[4] = @"packagingName";
  v22 = [(HKFullMedicationSearchResult *)self packagingName];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"(null)";
  }

  v39[4] = v24;
  v38[5] = @"route";
  v25 = [(HKFullMedicationSearchResult *)self route];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"(null)";
  }

  v39[5] = v27;
  v38[6] = @"doseForm";
  v28 = [(HKFullMedicationSearchResult *)self doseForm];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = @"(null)";
  }

  v38[7] = @"ingredients";
  v39[6] = v30;
  v39[7] = v3;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:8];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)initWithProductId:(uint64_t)a1 packagingName:(uint64_t)a2 packagingNDC:productBrandName:productGenericName:route:doseForm:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationsSearchResult.m" lineNumber:113 description:@"productId cannot be nil"];
}

@end