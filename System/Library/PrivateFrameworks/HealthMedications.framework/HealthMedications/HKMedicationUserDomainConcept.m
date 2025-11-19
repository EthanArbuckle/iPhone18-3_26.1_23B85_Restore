@interface HKMedicationUserDomainConcept
+ (id)_truncateStringValueIfNeeded:(unint64_t)a3 limit:;
- (HKMedicationUserDomainConcept)init;
- (HKMedicationUserDomainConcept)initWithCoder:(id)a3;
- (HKMedicationUserDomainConcept)initWithCodingCollection:(id)a3 linkCollection:(id)a4 propertyCollection:(id)a5;
- (HKMedicationUserDomainConcept)initWithCodingCollection:(id)a3 supplementalPropertyCollection:(id)a4;
- (HKMedicationUserDomainConcept)initWithConceptIdentifier:(id)a3 userSpecifiedName:(id)a4 userSpecifiedNotes:(id)a5;
- (HKMedicationUserDomainConcept)initWithOntologyCoding:(id)a3 userSpecifiedName:(id)a4 userSpecifiedNotes:(id)a5 medicationVisualizationConfig:(id)a6 freeTextProperties:(id)a7;
- (HKMedicationUserDomainConceptSemanticIdentifier)_computedPropertyLock_generateSemanticIdentifier;
- (HKOntologyLocalizedEducationContent)localizedOntologyEducationContent;
- (HKQuantity)freeTextMedicationStrengthQuantity;
- (NSArray)freeTextMedicationIngredientNamedStrengthQuantities;
- (NSDictionary)localizedOntologyBasicDoseForms;
- (NSDictionary)localizedOntologyBrandNames;
- (NSDictionary)localizedOntologyComponentNames;
- (NSDictionary)localizedOntologyGenericNames;
- (NSDictionary)localizedOntologyLoggingUnitPlural;
- (NSDictionary)localizedOntologyLoggingUnitSingular;
- (NSDictionary)localizedOntologyManufacturedDoseForms;
- (NSDictionary)localizedOntologyPreferredNames;
- (NSDictionary)localizedOntologyPregnancyTrimesterLactationRatings;
- (NSNumber)freeTextMedicationFormCode;
- (NSNumber)freeTextMedicationLoggingUnitCode;
- (NSSet)rxNormCodings;
- (NSString)freeTextMedicationName;
- (NSString)unlocalizedQuantifiedUnitStrengthPreferredDisplayString;
- (NSString)userSpecifiedName;
- (NSString)userSpecifiedNotes;
- (NSString)userVisualizationConfigJSONString;
- (id)_computedPropertyLock_generateListOfLocalizedNamesWithPropertyType:(os_unfair_lock *)a1;
- (id)_computedPropertyLock_generateLocalizedNamesWithPropertyType:(const os_unfair_lock *)a1;
- (id)_dataDescriptionAllowedForPublic:(BOOL)a3;
- (id)_deepCopy;
- (id)_generateDisplayNameComponents;
- (id)_generateLoggingUnit;
- (id)_generateMedicationConcept;
- (id)canonicalDoseUnitString;
- (id)copyMedicationByUpdatingUserSpecifiedName:(id)a3 userSpecifiedNotes:(id)a4 userVisualizationConfigJSONString:(id)a5;
- (id)semanticIdentifier;
- (uint64_t)localizedOntologyBasicDoseForms;
- (uint64_t)localizedOntologyBrandNames;
- (uint64_t)localizedOntologyComponentNames;
- (uint64_t)localizedOntologyGenericNames;
- (uint64_t)localizedOntologyLoggingUnitPlural;
- (uint64_t)localizedOntologyLoggingUnitSingular;
- (uint64_t)localizedOntologyManufacturedDoseForms;
- (uint64_t)localizedOntologyPreferredNames;
- (uint64_t)localizedOntologyPregnancyTrimesterLactationRatings;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationUserDomainConcept

- (HKMedicationUserDomainConcept)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationUserDomainConcept)initWithCodingCollection:(id)a3 linkCollection:(id)a4 propertyCollection:(id)a5
{
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE660];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The -%@ method is not available on %@", v8, objc_opt_class()}];

  return 0;
}

- (HKMedicationUserDomainConcept)initWithOntologyCoding:(id)a3 userSpecifiedName:(id)a4 userSpecifiedNotes:(id)a5 medicationVisualizationConfig:(id)a6 freeTextProperties:(id)a7
{
  v12 = a3;
  v13 = MEMORY[0x277CCDB28];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = [HKMedicationUserDomainConcept _truncateStringValueIfNeeded:a4 limit:0x64uLL];
  v18 = [HKMedicationUserDomainConcept _truncateStringValueIfNeeded:v16 limit:0x3E8uLL];

  v19 = [v13 propertyCollectionWithUserSpecifiedName:v17 userSpecifiedNotes:v18 medicationVisualizationConfig:v15 freeTextProperties:v14];

  if (v12)
  {
    v20 = [MEMORY[0x277CCD5C8] collectionWithCoding:v12];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(HKMedicationUserDomainConcept *)self initWithCodingCollection:v20 supplementalPropertyCollection:v19];

  return v21;
}

+ (id)_truncateStringValueIfNeeded:(unint64_t)a3 limit:
{
  v4 = a2;
  objc_opt_self();
  if ([v4 length] <= a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v4 substringToIndex:a3];
  }

  v6 = v5;

  return v6;
}

- (HKMedicationUserDomainConcept)initWithConceptIdentifier:(id)a3 userSpecifiedName:(id)a4 userSpecifiedNotes:(id)a5
{
  v8 = MEMORY[0x277CCD5C0];
  v9 = a5;
  v10 = a4;
  v11 = [v8 appleOntologyCodingWithIdentifier:a3];
  v12 = [(HKMedicationUserDomainConcept *)self initWithOntologyCoding:v11 userSpecifiedName:v10 userSpecifiedNotes:v9];

  return v12;
}

- (HKMedicationUserDomainConcept)initWithCodingCollection:(id)a3 supplementalPropertyCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 codings];
  if (([v9 hk_containsObjectPassingTest:&__block_literal_global_4] & 1) == 0)
  {
    v10 = [v8 properties];
    v11 = [v10 hk_containsObjectPassingTest:&__block_literal_global_303];

    if (v11)
    {
      goto LABEL_5;
    }

    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HKMedicationUserDomainConcept.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"[codingCollection.codings hk_containsObjectPassingTest:^BOOL(HKMedicalCoding *coding) { return coding.codingSystem == [HKMedicalCodingSystem appleOntologySystem]; }] || [supplementalPropertyCollection.properties hk_containsObjectPassingTest:^BOOL(HKUserDomainConceptProperty *property) { return property.type == HKUserDomainConceptPropertyTypeFreeTextMedicationName; }]"}];
  }

LABEL_5:
  v15.receiver = self;
  v15.super_class = HKMedicationUserDomainConcept;
  v12 = [(HKMedicationUserDomainConcept *)&v15 initWithCodingCollection:v7 linkCollection:0 propertyCollection:v8];
  v13 = v12;
  if (v12)
  {
    v12->_computedPropertyLock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

BOOL __89__HKMedicationUserDomainConcept_initWithCodingCollection_supplementalPropertyCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 codingSystem];
  v3 = [MEMORY[0x277CCD5D0] appleOntologySystem];
  v4 = v2 == v3;

  return v4;
}

- (id)copyMedicationByUpdatingUserSpecifiedName:(id)a3 userSpecifiedNotes:(id)a4 userVisualizationConfigJSONString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [(HKMedicationUserDomainConcept *)v11 userSpecifiedName];
  if (v13 == v8)
  {
    goto LABEL_8;
  }

  v14 = [(HKMedicationUserDomainConcept *)v11 userSpecifiedName];
  if (v14)
  {
    v15 = v14;
    v16 = [(HKMedicationUserDomainConcept *)v11 userSpecifiedName];
    v17 = [v8 isEqualToString:v16];

    if (v17)
    {
      goto LABEL_9;
    }

    if (v8)
    {
      goto LABEL_5;
    }

LABEL_7:
    v13 = [MEMORY[0x277CCDAF8] nullPropertyWithType:160000 version:1];
    [v12 addObject:v13];
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_5:
  v13 = [HKMedicationUserDomainConcept _truncateStringValueIfNeeded:v8 limit:0x64uLL];
  v18 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160000 version:1 stringValue:v13];
  [v12 addObject:v18];

LABEL_8:
LABEL_9:
  v19 = [(HKMedicationUserDomainConcept *)v11 userSpecifiedNotes];
  if (v19 != v9)
  {
    v20 = [(HKMedicationUserDomainConcept *)v11 userSpecifiedNotes];
    if (v20)
    {
      v21 = v20;
      v22 = [(HKMedicationUserDomainConcept *)v11 userSpecifiedNotes];
      v23 = [v9 isEqualToString:v22];

      if (v23)
      {
        goto LABEL_17;
      }

      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {

      if (v9)
      {
LABEL_13:
        v19 = [HKMedicationUserDomainConcept _truncateStringValueIfNeeded:v9 limit:0x3E8uLL];
        v24 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160001 version:1 stringValue:v19];
        [v12 addObject:v24];

        goto LABEL_16;
      }
    }

    v19 = [MEMORY[0x277CCDAF8] nullPropertyWithType:160001 version:1];
    [v12 addObject:v19];
  }

LABEL_16:

LABEL_17:
  v25 = [(HKMedicationUserDomainConcept *)v11 userVisualizationConfigJSONString];
  if (v25 == v10)
  {
LABEL_26:

    goto LABEL_27;
  }

  v26 = [(HKMedicationUserDomainConcept *)v11 userVisualizationConfigJSONString];
  if (!v26)
  {

    goto LABEL_22;
  }

  v27 = v26;
  v28 = [(HKMedicationUserDomainConcept *)v11 userVisualizationConfigJSONString];
  v29 = [v10 isEqualToString:v28];

  if ((v29 & 1) == 0)
  {
LABEL_22:
    if (v10)
    {
      v30 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160008 version:1 stringValue:v10];
    }

    else
    {
      v30 = [MEMORY[0x277CCDAF8] nullPropertyWithType:160008 version:1];
    }

    v25 = v30;
    [v12 addObject:v30];
    goto LABEL_26;
  }

LABEL_27:
  if ([v12 count])
  {
    v31 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v12];
    v32 = [(HKMedicationUserDomainConcept *)v11 copyUserDomainConceptByMergingInPropertyCollection:v31];
  }

  else
  {
    v32 = v11;
  }

  return v32;
}

- (id)_deepCopy
{
  v4.receiver = self;
  v4.super_class = HKMedicationUserDomainConcept;
  v2 = [(HKMedicationUserDomainConcept *)&v4 _deepCopy];

  return v2;
}

- (id)_dataDescriptionAllowedForPublic:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCAB68]);
    v6 = [(HKMedicationUserDomainConcept *)self userSpecifiedName];
    v7 = [(HKMedicationUserDomainConcept *)self userSpecifiedNotes];
    v3 = [v5 initWithFormat:@"userSpecifiedName: %@, userSpecifiedNotes: %lu", v6, objc_msgSend(v7, "length")];
  }

  return v3;
}

- (id)semanticIdentifier
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_semanticIdentifier)
  {
    v5 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateSemanticIdentifier];
    semanticIdentifier = self->_semanticIdentifier;
    self->_semanticIdentifier = v5;
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  v3 = self->_semanticIdentifier;

  return v3;
}

void __94__HKMedicationUserDomainConcept__computedPropertyLock_generateLocalizedNamesWithPropertyType___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 locale];
  v7 = [v6 stringValue];

  (a3)[2](v5, v8, v7);
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = HKMedicationUserDomainConcept;
  [(HKMedicationUserDomainConcept *)&v3 encodeWithCoder:a3];
}

- (HKMedicationUserDomainConcept)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKMedicationUserDomainConcept;
  return [(HKMedicationUserDomainConcept *)&v4 initWithCoder:a3];
}

- (NSString)userSpecifiedName
{
  v2 = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstBasicPropertyWithType:160000];
  v4 = [v3 stringValue];

  return v4;
}

- (NSString)userSpecifiedNotes
{
  v2 = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstBasicPropertyWithType:160001];
  v4 = [v3 stringValue];

  return v4;
}

- (NSString)userVisualizationConfigJSONString
{
  v2 = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstBasicPropertyWithType:160008];
  v4 = [v3 stringValue];

  return v4;
}

- (NSString)freeTextMedicationName
{
  v2 = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstBasicPropertyWithType:160020];
  v4 = [v3 stringValue];

  return v4;
}

- (NSNumber)freeTextMedicationFormCode
{
  v2 = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstBasicPropertyWithType:160014];
  v4 = [v3 numberValue];

  return v4;
}

- (NSNumber)freeTextMedicationLoggingUnitCode
{
  v2 = [(HKMedicationUserDomainConcept *)self freeTextMedicationFormCode];
  v3 = v2;
  if (v2 && (v4 = [v2 intValue] - 1, v4 <= 0x10))
  {
    v5 = qword_2796CA630[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HKQuantity)freeTextMedicationStrengthQuantity
{
  v2 = [(HKMedicationUserDomainConcept *)self freeTextMedicationIngredientNamedStrengthQuantities];
  v3 = [v2 firstObject];
  v4 = [v3 quantity];

  return v4;
}

- (NSArray)freeTextMedicationIngredientNamedStrengthQuantities
{
  v2 = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [v2 propertiesWithType:160021];

  return v3;
}

- (NSDictionary)localizedOntologyPreferredNames
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_localizedOntologyPreferredNames)
  {
    [(HKMedicationUserDomainConcept *)self localizedOntologyPreferredNames];
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  localizedOntologyPreferredNames = self->_localizedOntologyPreferredNames;

  return localizedOntologyPreferredNames;
}

- (NSDictionary)localizedOntologyBrandNames
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_localizedOntologyBrandNames)
  {
    [(HKMedicationUserDomainConcept *)self localizedOntologyBrandNames];
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  localizedOntologyBrandNames = self->_localizedOntologyBrandNames;

  return localizedOntologyBrandNames;
}

- (NSDictionary)localizedOntologyGenericNames
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_localizedOntologyGenericNames)
  {
    [(HKMedicationUserDomainConcept *)self localizedOntologyGenericNames];
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  localizedOntologyGenericNames = self->_localizedOntologyGenericNames;

  return localizedOntologyGenericNames;
}

- (NSDictionary)localizedOntologyManufacturedDoseForms
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_localizedOntologyManufacturedDoseForms)
  {
    [(HKMedicationUserDomainConcept *)self localizedOntologyManufacturedDoseForms];
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  localizedOntologyManufacturedDoseForms = self->_localizedOntologyManufacturedDoseForms;

  return localizedOntologyManufacturedDoseForms;
}

- (NSDictionary)localizedOntologyBasicDoseForms
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_localizedOntologyBasicDoseForms)
  {
    [(HKMedicationUserDomainConcept *)self localizedOntologyBasicDoseForms];
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  localizedOntologyBasicDoseForms = self->_localizedOntologyBasicDoseForms;

  return localizedOntologyBasicDoseForms;
}

- (NSDictionary)localizedOntologyLoggingUnitSingular
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_localizedOntologyLoggingUnitSingular)
  {
    [(HKMedicationUserDomainConcept *)self localizedOntologyLoggingUnitSingular];
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  localizedOntologyLoggingUnitSingular = self->_localizedOntologyLoggingUnitSingular;

  return localizedOntologyLoggingUnitSingular;
}

- (NSDictionary)localizedOntologyLoggingUnitPlural
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_localizedOntologyLoggingUnitPlural)
  {
    [(HKMedicationUserDomainConcept *)self localizedOntologyLoggingUnitPlural];
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  localizedOntologyLoggingUnitPlural = self->_localizedOntologyLoggingUnitPlural;

  return localizedOntologyLoggingUnitPlural;
}

- (NSDictionary)localizedOntologyPregnancyTrimesterLactationRatings
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_localizedOntologyPregnancyTrimesterLactationRatings)
  {
    [(HKMedicationUserDomainConcept *)self localizedOntologyPregnancyTrimesterLactationRatings];
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  localizedOntologyPregnancyTrimesterLactationRatings = self->_localizedOntologyPregnancyTrimesterLactationRatings;

  return localizedOntologyPregnancyTrimesterLactationRatings;
}

- (NSString)unlocalizedQuantifiedUnitStrengthPreferredDisplayString
{
  v2 = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstBasicPropertyWithType:160013];
  v4 = [v3 stringValue];

  return v4;
}

- (HKOntologyLocalizedEducationContent)localizedOntologyEducationContent
{
  v2 = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstPropertyWithType:160019];

  return v3;
}

- (NSDictionary)localizedOntologyComponentNames
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_localizedComponentNames)
  {
    [(HKMedicationUserDomainConcept *)self localizedOntologyComponentNames];
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  localizedComponentNames = self->_localizedComponentNames;

  return localizedComponentNames;
}

- (NSSet)rxNormCodings
{
  v2 = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [v2 propertiesWithType:184000];

  if (v3)
  {
    v4 = [v3 hk_map:&__block_literal_global_376];
    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  return v5;
}

id __46__HKMedicationUserDomainConcept_rxNormCodings__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 stringValue];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCD0E8]) initWithSystem:@"http://www.nlm.nih.gov/research/umls/rxnorm" version:0 code:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)canonicalDoseUnitString
{
  v2 = [(HKMedicationUserDomainConcept *)self loggingUnit];
  if ([v2 loggingUnitCode])
  {
    v3 = HKDoseUnitStringForLoggingUnitCode();
  }

  else
  {
    v4 = [v2 fallbackLoggingUnitSingularString];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = HKDoseUnitStringForLoggingUnitCode();
    }

    v3 = v6;
  }

  return v3;
}

- (id)_generateDisplayNameComponents
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 freeTextMedicationName];
    if (!v2)
    {
      v3 = [v1 localizedOntologyPreferredNames];
      v2 = [v3 objectForKeyedSubscript:@"en_US"];
    }

    v4 = @"No Name";
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;

    v6 = [v1 localizedOntologyBrandNames];
    v7 = [v6 objectForKeyedSubscript:@"en_US"];

    if (!v7)
    {
      v8 = [v1 localizedOntologyGenericNames];
      v7 = [v8 objectForKeyedSubscript:@"en_US"];
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    v10 = v9;

    v11 = [v1 freeTextMedicationIngredientNamedStrengthQuantities];
    v12 = [v11 firstObject];

    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v13 setNumberStyle:1];
    [v13 setMaximumFractionDigits:2];
    [v13 setRoundingMode:6];
    v14 = MEMORY[0x277CCABB0];
    [v12 value];
    v15 = [v14 numberWithDouble:?];
    v16 = [v13 stringFromNumber:v15];

    v17 = MEMORY[0x277CCACA8];
    v18 = [v12 unitString];
    v19 = [v17 stringWithFormat:@"%@ %@", v16, v18];

    if (!v19)
    {
LABEL_13:
      v19 = [v1 unlocalizedQuantifiedUnitStrengthPreferredDisplayString];
    }

    v1 = [objc_alloc(MEMORY[0x277CCD640]) initWithFullDisplayName:v5 medicationDisplayName:v10 displayStrength:v19];
  }

  return v1;
}

- (id)_generateLoggingUnit
{
  if (a1)
  {
    v2 = [a1 freeTextMedicationLoggingUnitCode];
    if (v2)
    {
      v3 = [objc_alloc(MEMORY[0x277CCD668]) initWithLoggingUnitCode:{objc_msgSend(v2, "integerValue")}];
    }

    else
    {
      v4 = [a1 localizedOntologyLoggingUnitSingular];
      v5 = [v4 objectForKeyedSubscript:@"en_US"];

      v6 = [a1 localizedOntologyLoggingUnitPlural];
      v7 = [v6 objectForKeyedSubscript:@"en_US"];

      v8 = [a1 localizedOntologyLoggingUnitSingular];
      v9 = [v8 objectForKeyedSubscript:@"en-US"];

      v10 = [a1 localizedOntologyLoggingUnitPlural];
      v11 = [v10 objectForKeyedSubscript:@"en-US"];

      if (v5)
      {
        v12 = v5;
      }

      else
      {
        v12 = v9;
      }

      if (v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = v11;
      }

      if (v12 && v13)
      {
        v14 = [MEMORY[0x277CCD668] loggingUnitByResolvingSingularLoggingUnitString:? fallbackPluralLoggingUnitString:?];
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x277CCD668]) initWithLoggingUnitCode:12];
      }

      v3 = v14;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_generateMedicationConcept
{
  v1 = a1;
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 freeTextMedicationFormCode];
    v3 = [v1 localizedOntologyBasicDoseForms];
    v4 = [v3 objectForKeyedSubscript:@"en_US"];

    if (v2)
    {
      v5 = HKMedicationGeneralFormForMedicationFreeTextFormTypeCode([v2 longLongValue]);
    }

    else if (v4)
    {
      v5 = [v4 lowercaseString];
    }

    else
    {
      _HKInitializeLogging();
      v6 = HKLogHealthOntology();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = objc_opt_class();
        _os_log_error_impl(&dword_2517E7000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Unable to resolve a general form for this medication, its likely this medicaiton has not been refreshed yet.", &v16, 0xCu);
      }

      v5 = *MEMORY[0x277CCC400];
    }

    v7 = v5;
    v8 = objc_alloc(MEMORY[0x277CCD628]);
    v9 = [v1 semanticIdentifier];
    v10 = [v9 healthConceptIdentifier];
    v11 = [v1 displayNameComponents];
    v12 = [v11 fullDisplayName];
    v13 = [v1 rxNormCodings];
    v1 = [v8 initWithHealthConceptIdentifier:v10 displayText:v12 generalForm:v7 relatedCodings:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v1;
}

- (HKMedicationUserDomainConceptSemanticIdentifier)_computedPropertyLock_generateSemanticIdentifier
{
  v1 = a1;
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 28);
    v2 = [(HKMedicationUserDomainConceptSemanticIdentifier *)v1 firstOntologyCoding];
    v3 = [HKMedicationUserDomainConceptSemanticIdentifier alloc];
    v4 = v3;
    if (v2)
    {
      v1 = [(HKMedicationUserDomainConceptSemanticIdentifier *)v3 initWithUUID:0 medicalCoding:v2];
    }

    else
    {
      v5 = [(HKMedicationUserDomainConceptSemanticIdentifier *)v1 UUID];
      v1 = [(HKMedicationUserDomainConceptSemanticIdentifier *)v4 initWithUUID:v5 medicalCoding:0];
    }
  }

  return v1;
}

- (id)_computedPropertyLock_generateLocalizedNamesWithPropertyType:(const os_unfair_lock *)a1
{
  v2 = a1;
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 28);
    v4 = [v2 propertyCollection];
    v5 = [v4 propertiesWithType:a2];

    if (v5 && [v5 count])
    {
      v2 = [v5 hk_mapToDictionary:&__block_literal_global_326];
    }

    else
    {
      v2 = MEMORY[0x277CBEC10];
    }
  }

  return v2;
}

- (id)_computedPropertyLock_generateListOfLocalizedNamesWithPropertyType:(os_unfair_lock *)a1
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 28);
    v4 = [(os_unfair_lock *)a1 propertyCollection];
    v5 = [v4 propertiesWithType:a2];

    if (v5 && [v5 count])
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = [v12 locale];
            v14 = [v12 stringValue];
            v15 = [v6 objectForKeyedSubscript:v13];
            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v6 setObject:v15 forKeyedSubscript:v13];
            }

            [v15 addObject:v14];
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      v16 = [v6 copy];
    }

    else
    {
      v16 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (uint64_t)localizedOntologyPreferredNames
{
  v1 = [(HKMedicationUserDomainConcept *)a1 _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyBrandNames
{
  v1 = [(HKMedicationUserDomainConcept *)a1 _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyGenericNames
{
  v1 = [(HKMedicationUserDomainConcept *)a1 _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyManufacturedDoseForms
{
  v1 = [(HKMedicationUserDomainConcept *)a1 _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyBasicDoseForms
{
  v1 = [(HKMedicationUserDomainConcept *)a1 _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyLoggingUnitSingular
{
  v1 = [(HKMedicationUserDomainConcept *)a1 _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyLoggingUnitPlural
{
  v1 = [(HKMedicationUserDomainConcept *)a1 _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyPregnancyTrimesterLactationRatings
{
  v1 = [(HKMedicationUserDomainConcept *)a1 _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyComponentNames
{
  v1 = [(HKMedicationUserDomainConcept *)a1 _computedPropertyLock_generateListOfLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

@end