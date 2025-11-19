@interface HKUserDomainConceptPropertyCollection(Medications)
+ (id)_userDomainConceptPropertyListWithFreeTextMedicationName:()Medications freeTextFormCode:namedQuantities:;
+ (id)propertyCollectionWithUserSpecifiedName:()Medications userSpecifiedNotes:medicationVisualizationConfig:freeTextProperties:;
+ (id)userDomainConceptPropertyListWithFreeTextMedicationName:()Medications freeTextFormCode:freeTextStrengthQuantity:;
@end

@implementation HKUserDomainConceptPropertyCollection(Medications)

+ (id)propertyCollectionWithUserSpecifiedName:()Medications userSpecifiedNotes:medicationVisualizationConfig:freeTextProperties:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v9)
  {
    v14 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160000 version:1 stringValue:v9];
    [v13 addObject:v14];
  }

  if (v10)
  {
    v15 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160001 version:1 stringValue:v10];
    [v13 addObject:v15];
  }

  if (v11 && [v11 length])
  {
    v16 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160008 version:1 stringValue:v11];
    [v13 addObject:v16];
  }

  if (v12)
  {
    [v13 addObjectsFromArray:v12];
  }

  v17 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v13];

  return v17;
}

+ (id)userDomainConceptPropertyListWithFreeTextMedicationName:()Medications freeTextFormCode:freeTextStrengthQuantity:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a5)
  {
    v9 = MEMORY[0x277CCDB18];
    v10 = a5;
    v11 = [[v9 alloc] initWithName:0 quantity:v10 type:160021];

    v16[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = [a1 _userDomainConceptPropertyListWithFreeTextMedicationName:v8 freeTextFormCode:a4 namedQuantities:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_userDomainConceptPropertyListWithFreeTextMedicationName:()Medications freeTextFormCode:namedQuantities:
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEB18];
  v8 = a5;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160020 version:1 stringValue:v9];

  v17[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v13 = [v10 initWithArray:v12];

  v14 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160014 version:1 integerValue:a4];
  [v13 addObject:v14];

  [v13 addObjectsFromArray:v8];
  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

@end