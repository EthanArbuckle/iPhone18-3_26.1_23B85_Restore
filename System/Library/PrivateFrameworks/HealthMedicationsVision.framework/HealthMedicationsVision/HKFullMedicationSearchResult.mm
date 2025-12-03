@interface HKFullMedicationSearchResult
- (HKFullMedicationSearchResult)initWithProductId:(id)id packagingName:(id)name packagingNDC:(id)c productBrandName:(id)brandName productGenericName:(id)genericName route:(id)route doseForm:(id)form;
- (id)dictionaryRepresentation;
@end

@implementation HKFullMedicationSearchResult

- (HKFullMedicationSearchResult)initWithProductId:(id)id packagingName:(id)name packagingNDC:(id)c productBrandName:(id)brandName productGenericName:(id)genericName route:(id)route doseForm:(id)form
{
  idCopy = id;
  nameCopy = name;
  cCopy = c;
  brandNameCopy = brandName;
  genericNameCopy = genericName;
  routeCopy = route;
  formCopy = form;
  if (!idCopy)
  {
    [HKFullMedicationSearchResult initWithProductId:a2 packagingName:self packagingNDC:? productBrandName:? productGenericName:? route:? doseForm:?];
  }

  v27.receiver = self;
  v27.super_class = HKFullMedicationSearchResult;
  v18 = [(HKFullMedicationSearchResult *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_productId, id);
    objc_storeStrong(&v19->_packagingName, name);
    objc_storeStrong(&v19->_packagingNDC, c);
    objc_storeStrong(&v19->_productGenericName, genericName);
    objc_storeStrong(&v19->_productBrandName, brandName);
    objc_storeStrong(&v19->_route, route);
    objc_storeStrong(&v19->_doseForm, form);
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
  ingredients = [(HKFullMedicationSearchResult *)self ingredients];
  v5 = [ingredients countByEnumeratingWithState:&v34 objects:v40 count:16];
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
          objc_enumerationMutation(ingredients);
        }

        dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [ingredients countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  v38[0] = @"productId";
  productId = [(HKFullMedicationSearchResult *)self productId];
  v11 = productId;
  if (productId)
  {
    v12 = productId;
  }

  else
  {
    v12 = @"(null)";
  }

  v39[0] = v12;
  v38[1] = @"packagingNDC";
  packagingNDC = [(HKFullMedicationSearchResult *)self packagingNDC];
  v14 = packagingNDC;
  if (packagingNDC)
  {
    v15 = packagingNDC;
  }

  else
  {
    v15 = @"(null)";
  }

  v39[1] = v15;
  v38[2] = @"productGenericName";
  productGenericName = [(HKFullMedicationSearchResult *)self productGenericName];
  v17 = productGenericName;
  if (productGenericName)
  {
    v18 = productGenericName;
  }

  else
  {
    v18 = @"(null)";
  }

  v39[2] = v18;
  v38[3] = @"productBrandName";
  productBrandName = [(HKFullMedicationSearchResult *)self productBrandName];
  v20 = productBrandName;
  if (productBrandName)
  {
    v21 = productBrandName;
  }

  else
  {
    v21 = @"(null)";
  }

  v39[3] = v21;
  v38[4] = @"packagingName";
  packagingName = [(HKFullMedicationSearchResult *)self packagingName];
  v23 = packagingName;
  if (packagingName)
  {
    v24 = packagingName;
  }

  else
  {
    v24 = @"(null)";
  }

  v39[4] = v24;
  v38[5] = @"route";
  route = [(HKFullMedicationSearchResult *)self route];
  v26 = route;
  if (route)
  {
    v27 = route;
  }

  else
  {
    v27 = @"(null)";
  }

  v39[5] = v27;
  v38[6] = @"doseForm";
  doseForm = [(HKFullMedicationSearchResult *)self doseForm];
  v29 = doseForm;
  if (doseForm)
  {
    v30 = doseForm;
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