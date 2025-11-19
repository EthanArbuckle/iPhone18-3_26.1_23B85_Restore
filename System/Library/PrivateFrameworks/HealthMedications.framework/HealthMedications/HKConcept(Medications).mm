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
  v4 = [a1 relationships];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 type] == 1015)
        {
          v10 = [v9 destination];
          v11 = [v10 identifier];
          v12 = [v11 rawIdentifier];

          if (v12 == a3)
          {
            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v1 = [a1 firstConceptOfRelationshipType:?];
  v2 = [v1 localizedPreferredName];

  return v2;
}

- (id)meds_englishUSName
{
  v1 = [a1 firstAttributeForType:960];
  v2 = [v1 stringValue];

  return v2;
}

@end