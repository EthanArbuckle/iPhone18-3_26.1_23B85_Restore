@interface HDOntologyBasicPropertyProvider
+ (id)_basicUserDomainConceptPropertyForAttribute:(id)attribute;
+ (id)basicAttributesForConcept:(id)concept ofTypes:(id)types;
+ (int64_t)_basicPropertyTypeForConceptAttributeType:(int64_t)type;
@end

@implementation HDOntologyBasicPropertyProvider

+ (id)basicAttributesForConcept:(id)concept ofTypes:(id)types
{
  typesCopy = types;
  attributes = [concept attributes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HDOntologyBasicPropertyProvider_basicAttributesForConcept_ofTypes___block_invoke;
  v11[3] = &unk_278630110;
  v12 = typesCopy;
  selfCopy = self;
  v8 = typesCopy;
  v9 = [attributes hk_map:v11];

  return v9;
}

id __69__HDOntologyBasicPropertyProvider_basicAttributesForConcept_ofTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "type")}];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [*(a1 + 40) _basicUserDomainConceptPropertyForAttribute:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_basicUserDomainConceptPropertyForAttribute:(id)attribute
{
  attributeCopy = attribute;
  v5 = [self _basicPropertyTypeForConceptAttributeType:{objc_msgSend(attributeCopy, "type")}];
  version = [attributeCopy version];
  if (v5)
  {
    v7 = version;
    if ([attributeCopy isDeleted])
    {
      v5 = [MEMORY[0x277CCDAF8] nullPropertyWithType:v5 version:v7];
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CCDAF8]);
      stringValue = [attributeCopy stringValue];
      v5 = [v8 initWithType:v5 version:v7 stringValue:stringValue];
    }
  }

  return v5;
}

+ (int64_t)_basicPropertyTypeForConceptAttributeType:(int64_t)type
{
  v3 = 184000;
  if (type != 1008)
  {
    v3 = 0;
  }

  if (type == 984)
  {
    return 160013;
  }

  else
  {
    return v3;
  }
}

@end