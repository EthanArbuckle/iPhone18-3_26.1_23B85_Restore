@interface HKMedicationUserDomainConcept
+ (id)_truncateStringValueIfNeeded:(unint64_t)needed limit:;
- (HKMedicationUserDomainConcept)init;
- (HKMedicationUserDomainConcept)initWithCoder:(id)coder;
- (HKMedicationUserDomainConcept)initWithCodingCollection:(id)collection linkCollection:(id)linkCollection propertyCollection:(id)propertyCollection;
- (HKMedicationUserDomainConcept)initWithCodingCollection:(id)collection supplementalPropertyCollection:(id)propertyCollection;
- (HKMedicationUserDomainConcept)initWithConceptIdentifier:(id)identifier userSpecifiedName:(id)name userSpecifiedNotes:(id)notes;
- (HKMedicationUserDomainConcept)initWithOntologyCoding:(id)coding userSpecifiedName:(id)name userSpecifiedNotes:(id)notes medicationVisualizationConfig:(id)config freeTextProperties:(id)properties;
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
- (id)_computedPropertyLock_generateListOfLocalizedNamesWithPropertyType:(os_unfair_lock *)type;
- (id)_computedPropertyLock_generateLocalizedNamesWithPropertyType:(const os_unfair_lock *)type;
- (id)_dataDescriptionAllowedForPublic:(BOOL)public;
- (id)_deepCopy;
- (id)_generateDisplayNameComponents;
- (id)_generateLoggingUnit;
- (id)_generateMedicationConcept;
- (id)canonicalDoseUnitString;
- (id)copyMedicationByUpdatingUserSpecifiedName:(id)name userSpecifiedNotes:(id)notes userVisualizationConfigJSONString:(id)string;
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
- (void)encodeWithCoder:(id)coder;
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

- (HKMedicationUserDomainConcept)initWithCodingCollection:(id)collection linkCollection:(id)linkCollection propertyCollection:(id)propertyCollection
{
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE660];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The -%@ method is not available on %@", v8, objc_opt_class()}];

  return 0;
}

- (HKMedicationUserDomainConcept)initWithOntologyCoding:(id)coding userSpecifiedName:(id)name userSpecifiedNotes:(id)notes medicationVisualizationConfig:(id)config freeTextProperties:(id)properties
{
  codingCopy = coding;
  v13 = MEMORY[0x277CCDB28];
  propertiesCopy = properties;
  configCopy = config;
  notesCopy = notes;
  v17 = [HKMedicationUserDomainConcept _truncateStringValueIfNeeded:name limit:0x64uLL];
  v18 = [HKMedicationUserDomainConcept _truncateStringValueIfNeeded:notesCopy limit:0x3E8uLL];

  v19 = [v13 propertyCollectionWithUserSpecifiedName:v17 userSpecifiedNotes:v18 medicationVisualizationConfig:configCopy freeTextProperties:propertiesCopy];

  if (codingCopy)
  {
    v20 = [MEMORY[0x277CCD5C8] collectionWithCoding:codingCopy];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(HKMedicationUserDomainConcept *)self initWithCodingCollection:v20 supplementalPropertyCollection:v19];

  return v21;
}

+ (id)_truncateStringValueIfNeeded:(unint64_t)needed limit:
{
  v4 = a2;
  objc_opt_self();
  if ([v4 length] <= needed)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v4 substringToIndex:needed];
  }

  v6 = v5;

  return v6;
}

- (HKMedicationUserDomainConcept)initWithConceptIdentifier:(id)identifier userSpecifiedName:(id)name userSpecifiedNotes:(id)notes
{
  v8 = MEMORY[0x277CCD5C0];
  notesCopy = notes;
  nameCopy = name;
  v11 = [v8 appleOntologyCodingWithIdentifier:identifier];
  v12 = [(HKMedicationUserDomainConcept *)self initWithOntologyCoding:v11 userSpecifiedName:nameCopy userSpecifiedNotes:notesCopy];

  return v12;
}

- (HKMedicationUserDomainConcept)initWithCodingCollection:(id)collection supplementalPropertyCollection:(id)propertyCollection
{
  collectionCopy = collection;
  propertyCollectionCopy = propertyCollection;
  codings = [collectionCopy codings];
  if (([codings hk_containsObjectPassingTest:&__block_literal_global_4] & 1) == 0)
  {
    properties = [propertyCollectionCopy properties];
    v11 = [properties hk_containsObjectPassingTest:&__block_literal_global_303];

    if (v11)
    {
      goto LABEL_5;
    }

    codings = [MEMORY[0x277CCA890] currentHandler];
    [codings handleFailureInMethod:a2 object:self file:@"HKMedicationUserDomainConcept.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"[codingCollection.codings hk_containsObjectPassingTest:^BOOL(HKMedicalCoding *coding) { return coding.codingSystem == [HKMedicalCodingSystem appleOntologySystem]; }] || [supplementalPropertyCollection.properties hk_containsObjectPassingTest:^BOOL(HKUserDomainConceptProperty *property) { return property.type == HKUserDomainConceptPropertyTypeFreeTextMedicationName; }]"}];
  }

LABEL_5:
  v15.receiver = self;
  v15.super_class = HKMedicationUserDomainConcept;
  v12 = [(HKMedicationUserDomainConcept *)&v15 initWithCodingCollection:collectionCopy linkCollection:0 propertyCollection:propertyCollectionCopy];
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

- (id)copyMedicationByUpdatingUserSpecifiedName:(id)name userSpecifiedNotes:(id)notes userVisualizationConfigJSONString:(id)string
{
  nameCopy = name;
  notesCopy = notes;
  stringCopy = string;
  selfCopy = self;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  userSpecifiedName = [(HKMedicationUserDomainConcept *)selfCopy userSpecifiedName];
  if (userSpecifiedName == nameCopy)
  {
    goto LABEL_8;
  }

  userSpecifiedName2 = [(HKMedicationUserDomainConcept *)selfCopy userSpecifiedName];
  if (userSpecifiedName2)
  {
    v15 = userSpecifiedName2;
    userSpecifiedName3 = [(HKMedicationUserDomainConcept *)selfCopy userSpecifiedName];
    v17 = [nameCopy isEqualToString:userSpecifiedName3];

    if (v17)
    {
      goto LABEL_9;
    }

    if (nameCopy)
    {
      goto LABEL_5;
    }

LABEL_7:
    userSpecifiedName = [MEMORY[0x277CCDAF8] nullPropertyWithType:160000 version:1];
    [v12 addObject:userSpecifiedName];
    goto LABEL_8;
  }

  if (!nameCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  userSpecifiedName = [HKMedicationUserDomainConcept _truncateStringValueIfNeeded:nameCopy limit:0x64uLL];
  v18 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160000 version:1 stringValue:userSpecifiedName];
  [v12 addObject:v18];

LABEL_8:
LABEL_9:
  userSpecifiedNotes = [(HKMedicationUserDomainConcept *)selfCopy userSpecifiedNotes];
  if (userSpecifiedNotes != notesCopy)
  {
    userSpecifiedNotes2 = [(HKMedicationUserDomainConcept *)selfCopy userSpecifiedNotes];
    if (userSpecifiedNotes2)
    {
      v21 = userSpecifiedNotes2;
      userSpecifiedNotes3 = [(HKMedicationUserDomainConcept *)selfCopy userSpecifiedNotes];
      v23 = [notesCopy isEqualToString:userSpecifiedNotes3];

      if (v23)
      {
        goto LABEL_17;
      }

      if (notesCopy)
      {
        goto LABEL_13;
      }
    }

    else
    {

      if (notesCopy)
      {
LABEL_13:
        userSpecifiedNotes = [HKMedicationUserDomainConcept _truncateStringValueIfNeeded:notesCopy limit:0x3E8uLL];
        v24 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160001 version:1 stringValue:userSpecifiedNotes];
        [v12 addObject:v24];

        goto LABEL_16;
      }
    }

    userSpecifiedNotes = [MEMORY[0x277CCDAF8] nullPropertyWithType:160001 version:1];
    [v12 addObject:userSpecifiedNotes];
  }

LABEL_16:

LABEL_17:
  userVisualizationConfigJSONString = [(HKMedicationUserDomainConcept *)selfCopy userVisualizationConfigJSONString];
  if (userVisualizationConfigJSONString == stringCopy)
  {
LABEL_26:

    goto LABEL_27;
  }

  userVisualizationConfigJSONString2 = [(HKMedicationUserDomainConcept *)selfCopy userVisualizationConfigJSONString];
  if (!userVisualizationConfigJSONString2)
  {

    goto LABEL_22;
  }

  v27 = userVisualizationConfigJSONString2;
  userVisualizationConfigJSONString3 = [(HKMedicationUserDomainConcept *)selfCopy userVisualizationConfigJSONString];
  v29 = [stringCopy isEqualToString:userVisualizationConfigJSONString3];

  if ((v29 & 1) == 0)
  {
LABEL_22:
    if (stringCopy)
    {
      v30 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:160008 version:1 stringValue:stringCopy];
    }

    else
    {
      v30 = [MEMORY[0x277CCDAF8] nullPropertyWithType:160008 version:1];
    }

    userVisualizationConfigJSONString = v30;
    [v12 addObject:v30];
    goto LABEL_26;
  }

LABEL_27:
  if ([v12 count])
  {
    v31 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v12];
    v32 = [(HKMedicationUserDomainConcept *)selfCopy copyUserDomainConceptByMergingInPropertyCollection:v31];
  }

  else
  {
    v32 = selfCopy;
  }

  return v32;
}

- (id)_deepCopy
{
  v4.receiver = self;
  v4.super_class = HKMedicationUserDomainConcept;
  _deepCopy = [(HKMedicationUserDomainConcept *)&v4 _deepCopy];

  return _deepCopy;
}

- (id)_dataDescriptionAllowedForPublic:(BOOL)public
{
  if (public)
  {
    v3 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCAB68]);
    userSpecifiedName = [(HKMedicationUserDomainConcept *)self userSpecifiedName];
    userSpecifiedNotes = [(HKMedicationUserDomainConcept *)self userSpecifiedNotes];
    v3 = [v5 initWithFormat:@"userSpecifiedName: %@, userSpecifiedNotes: %lu", userSpecifiedName, objc_msgSend(userSpecifiedNotes, "length")];
  }

  return v3;
}

- (id)semanticIdentifier
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_semanticIdentifier)
  {
    _computedPropertyLock_generateSemanticIdentifier = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateSemanticIdentifier];
    semanticIdentifier = self->_semanticIdentifier;
    self->_semanticIdentifier = _computedPropertyLock_generateSemanticIdentifier;
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

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = HKMedicationUserDomainConcept;
  [(HKMedicationUserDomainConcept *)&v3 encodeWithCoder:coder];
}

- (HKMedicationUserDomainConcept)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HKMedicationUserDomainConcept;
  return [(HKMedicationUserDomainConcept *)&v4 initWithCoder:coder];
}

- (NSString)userSpecifiedName
{
  propertyCollection = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstBasicPropertyWithType:160000];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (NSString)userSpecifiedNotes
{
  propertyCollection = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstBasicPropertyWithType:160001];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (NSString)userVisualizationConfigJSONString
{
  propertyCollection = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstBasicPropertyWithType:160008];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (NSString)freeTextMedicationName
{
  propertyCollection = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstBasicPropertyWithType:160020];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (NSNumber)freeTextMedicationFormCode
{
  propertyCollection = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstBasicPropertyWithType:160014];
  numberValue = [v3 numberValue];

  return numberValue;
}

- (NSNumber)freeTextMedicationLoggingUnitCode
{
  freeTextMedicationFormCode = [(HKMedicationUserDomainConcept *)self freeTextMedicationFormCode];
  v3 = freeTextMedicationFormCode;
  if (freeTextMedicationFormCode && (v4 = [freeTextMedicationFormCode intValue] - 1, v4 <= 0x10))
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
  freeTextMedicationIngredientNamedStrengthQuantities = [(HKMedicationUserDomainConcept *)self freeTextMedicationIngredientNamedStrengthQuantities];
  firstObject = [freeTextMedicationIngredientNamedStrengthQuantities firstObject];
  quantity = [firstObject quantity];

  return quantity;
}

- (NSArray)freeTextMedicationIngredientNamedStrengthQuantities
{
  propertyCollection = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection propertiesWithType:160021];

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
  propertyCollection = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstBasicPropertyWithType:160013];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (HKOntologyLocalizedEducationContent)localizedOntologyEducationContent
{
  propertyCollection = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstPropertyWithType:160019];

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
  propertyCollection = [(HKMedicationUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection propertiesWithType:184000];

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
  loggingUnit = [(HKMedicationUserDomainConcept *)self loggingUnit];
  if ([loggingUnit loggingUnitCode])
  {
    v3 = HKDoseUnitStringForLoggingUnitCode();
  }

  else
  {
    fallbackLoggingUnitSingularString = [loggingUnit fallbackLoggingUnitSingularString];
    v5 = fallbackLoggingUnitSingularString;
    if (fallbackLoggingUnitSingularString)
    {
      v6 = fallbackLoggingUnitSingularString;
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
  selfCopy = self;
  if (self)
  {
    freeTextMedicationName = [self freeTextMedicationName];
    if (!freeTextMedicationName)
    {
      localizedOntologyPreferredNames = [selfCopy localizedOntologyPreferredNames];
      freeTextMedicationName = [localizedOntologyPreferredNames objectForKeyedSubscript:@"en_US"];
    }

    v4 = @"No Name";
    if (freeTextMedicationName)
    {
      v4 = freeTextMedicationName;
    }

    v5 = v4;

    localizedOntologyBrandNames = [selfCopy localizedOntologyBrandNames];
    v7 = [localizedOntologyBrandNames objectForKeyedSubscript:@"en_US"];

    if (!v7)
    {
      localizedOntologyGenericNames = [selfCopy localizedOntologyGenericNames];
      v7 = [localizedOntologyGenericNames objectForKeyedSubscript:@"en_US"];
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

    freeTextMedicationIngredientNamedStrengthQuantities = [selfCopy freeTextMedicationIngredientNamedStrengthQuantities];
    firstObject = [freeTextMedicationIngredientNamedStrengthQuantities firstObject];

    if (!firstObject)
    {
      goto LABEL_13;
    }

    v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v13 setNumberStyle:1];
    [v13 setMaximumFractionDigits:2];
    [v13 setRoundingMode:6];
    v14 = MEMORY[0x277CCABB0];
    [firstObject value];
    v15 = [v14 numberWithDouble:?];
    v16 = [v13 stringFromNumber:v15];

    v17 = MEMORY[0x277CCACA8];
    unitString = [firstObject unitString];
    unlocalizedQuantifiedUnitStrengthPreferredDisplayString = [v17 stringWithFormat:@"%@ %@", v16, unitString];

    if (!unlocalizedQuantifiedUnitStrengthPreferredDisplayString)
    {
LABEL_13:
      unlocalizedQuantifiedUnitStrengthPreferredDisplayString = [selfCopy unlocalizedQuantifiedUnitStrengthPreferredDisplayString];
    }

    selfCopy = [objc_alloc(MEMORY[0x277CCD640]) initWithFullDisplayName:v5 medicationDisplayName:v10 displayStrength:unlocalizedQuantifiedUnitStrengthPreferredDisplayString];
  }

  return selfCopy;
}

- (id)_generateLoggingUnit
{
  if (self)
  {
    freeTextMedicationLoggingUnitCode = [self freeTextMedicationLoggingUnitCode];
    if (freeTextMedicationLoggingUnitCode)
    {
      v3 = [objc_alloc(MEMORY[0x277CCD668]) initWithLoggingUnitCode:{objc_msgSend(freeTextMedicationLoggingUnitCode, "integerValue")}];
    }

    else
    {
      localizedOntologyLoggingUnitSingular = [self localizedOntologyLoggingUnitSingular];
      v5 = [localizedOntologyLoggingUnitSingular objectForKeyedSubscript:@"en_US"];

      localizedOntologyLoggingUnitPlural = [self localizedOntologyLoggingUnitPlural];
      v7 = [localizedOntologyLoggingUnitPlural objectForKeyedSubscript:@"en_US"];

      localizedOntologyLoggingUnitSingular2 = [self localizedOntologyLoggingUnitSingular];
      v9 = [localizedOntologyLoggingUnitSingular2 objectForKeyedSubscript:@"en-US"];

      localizedOntologyLoggingUnitPlural2 = [self localizedOntologyLoggingUnitPlural];
      v11 = [localizedOntologyLoggingUnitPlural2 objectForKeyedSubscript:@"en-US"];

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
  selfCopy = self;
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    freeTextMedicationFormCode = [self freeTextMedicationFormCode];
    localizedOntologyBasicDoseForms = [selfCopy localizedOntologyBasicDoseForms];
    v4 = [localizedOntologyBasicDoseForms objectForKeyedSubscript:@"en_US"];

    if (freeTextMedicationFormCode)
    {
      lowercaseString = HKMedicationGeneralFormForMedicationFreeTextFormTypeCode([freeTextMedicationFormCode longLongValue]);
    }

    else if (v4)
    {
      lowercaseString = [v4 lowercaseString];
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

      lowercaseString = *MEMORY[0x277CCC400];
    }

    v7 = lowercaseString;
    v8 = objc_alloc(MEMORY[0x277CCD628]);
    semanticIdentifier = [selfCopy semanticIdentifier];
    healthConceptIdentifier = [semanticIdentifier healthConceptIdentifier];
    displayNameComponents = [selfCopy displayNameComponents];
    fullDisplayName = [displayNameComponents fullDisplayName];
    rxNormCodings = [selfCopy rxNormCodings];
    selfCopy = [v8 initWithHealthConceptIdentifier:healthConceptIdentifier displayText:fullDisplayName generalForm:v7 relatedCodings:rxNormCodings];
  }

  v14 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (HKMedicationUserDomainConceptSemanticIdentifier)_computedPropertyLock_generateSemanticIdentifier
{
  selfCopy = self;
  if (self)
  {
    os_unfair_lock_assert_owner(self + 28);
    firstOntologyCoding = [(HKMedicationUserDomainConceptSemanticIdentifier *)selfCopy firstOntologyCoding];
    v3 = [HKMedicationUserDomainConceptSemanticIdentifier alloc];
    v4 = v3;
    if (firstOntologyCoding)
    {
      selfCopy = [(HKMedicationUserDomainConceptSemanticIdentifier *)v3 initWithUUID:0 medicalCoding:firstOntologyCoding];
    }

    else
    {
      uUID = [(HKMedicationUserDomainConceptSemanticIdentifier *)selfCopy UUID];
      selfCopy = [(HKMedicationUserDomainConceptSemanticIdentifier *)v4 initWithUUID:uUID medicalCoding:0];
    }
  }

  return selfCopy;
}

- (id)_computedPropertyLock_generateLocalizedNamesWithPropertyType:(const os_unfair_lock *)type
{
  typeCopy = type;
  if (type)
  {
    os_unfair_lock_assert_owner(type + 28);
    propertyCollection = [typeCopy propertyCollection];
    v5 = [propertyCollection propertiesWithType:a2];

    if (v5 && [v5 count])
    {
      typeCopy = [v5 hk_mapToDictionary:&__block_literal_global_326];
    }

    else
    {
      typeCopy = MEMORY[0x277CBEC10];
    }
  }

  return typeCopy;
}

- (id)_computedPropertyLock_generateListOfLocalizedNamesWithPropertyType:(os_unfair_lock *)type
{
  v24 = *MEMORY[0x277D85DE8];
  if (type)
  {
    os_unfair_lock_assert_owner(type + 28);
    propertyCollection = [(os_unfair_lock *)type propertyCollection];
    v5 = [propertyCollection propertiesWithType:a2];

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
            locale = [v12 locale];
            stringValue = [v12 stringValue];
            v15 = [v6 objectForKeyedSubscript:locale];
            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v6 setObject:v15 forKeyedSubscript:locale];
            }

            [v15 addObject:stringValue];
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
  v1 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyBrandNames
{
  v1 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyGenericNames
{
  v1 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyManufacturedDoseForms
{
  v1 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyBasicDoseForms
{
  v1 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyLoggingUnitSingular
{
  v1 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyLoggingUnitPlural
{
  v1 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyPregnancyTrimesterLactationRatings
{
  v1 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

- (uint64_t)localizedOntologyComponentNames
{
  v1 = [(HKMedicationUserDomainConcept *)self _computedPropertyLock_generateListOfLocalizedNamesWithPropertyType:?];
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return MEMORY[0x2821F96F8](v2);
}

@end