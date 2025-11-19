@interface HDOntologyBasicPropertyProvider
+ (id)_basicUserDomainConceptPropertyForAttribute:(id)a3;
+ (id)basicAttributesForConcept:(id)a3 ofTypes:(id)a4;
+ (int64_t)_basicPropertyTypeForConceptAttributeType:(int64_t)a3;
@end

@implementation HDOntologyBasicPropertyProvider

+ (id)basicAttributesForConcept:(id)a3 ofTypes:(id)a4
{
  v6 = a4;
  v7 = [a3 attributes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HDOntologyBasicPropertyProvider_basicAttributesForConcept_ofTypes___block_invoke;
  v11[3] = &unk_278630110;
  v12 = v6;
  v13 = a1;
  v8 = v6;
  v9 = [v7 hk_map:v11];

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

+ (id)_basicUserDomainConceptPropertyForAttribute:(id)a3
{
  v4 = a3;
  v5 = [a1 _basicPropertyTypeForConceptAttributeType:{objc_msgSend(v4, "type")}];
  v6 = [v4 version];
  if (v5)
  {
    v7 = v6;
    if ([v4 isDeleted])
    {
      v5 = [MEMORY[0x277CCDAF8] nullPropertyWithType:v5 version:v7];
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CCDAF8]);
      v9 = [v4 stringValue];
      v5 = [v8 initWithType:v5 version:v7 stringValue:v9];
    }
  }

  return v5;
}

+ (int64_t)_basicPropertyTypeForConceptAttributeType:(int64_t)a3
{
  v3 = 184000;
  if (a3 != 1008)
  {
    v3 = 0;
  }

  if (a3 == 984)
  {
    return 160013;
  }

  else
  {
    return v3;
  }
}

@end