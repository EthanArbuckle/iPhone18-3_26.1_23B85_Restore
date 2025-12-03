@interface HKConcept(Medications)
- (id)meds_englishUSName;
- (id)meds_preferredNameForFirstObjectOfRelationshipType:()Medications;
- (uint64_t)_meds_isA:()Medications;
@end

@implementation HKConcept(Medications)

- (uint64_t)_meds_isA:()Medications
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  relationships = [self relationships];
  v5 = [relationships countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(relationships);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 type] == 1015)
        {
          destination = [v9 destination];
          identifier = [destination identifier];
          rawIdentifier = [identifier rawIdentifier];

          if (rawIdentifier == a3)
          {
            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [relationships countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)meds_preferredNameForFirstObjectOfRelationshipType:()Medications
{
  v1 = [self firstConceptOfRelationshipType:?];
  localizedPreferredName = [v1 localizedPreferredName];

  return localizedPreferredName;
}

- (id)meds_englishUSName
{
  v1 = [self firstAttributeForType:960];
  stringValue = [v1 stringValue];

  return stringValue;
}

@end