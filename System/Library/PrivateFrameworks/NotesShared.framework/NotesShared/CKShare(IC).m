@interface CKShare(IC)
+ (CKShareSystemFieldsTransformer)ic_systemFieldsValueTransformer;
- (id)ic_acceptedParticipants;
- (id)ic_nonCurrentUserAcceptedParticipants;
- (id)ic_nonCurrentUserParticipants;
- (id)ic_participantWithHandle:()IC;
- (id)ic_participantWithUserRecordName:()IC;
- (uint64_t)_nonCurrentUserParticipantsCountWithAcceptanceStatus:()IC;
- (uint64_t)_nonOwnerParticipantsCountWithAcceptanceStatus:()IC;
@end

@implementation CKShare(IC)

+ (CKShareSystemFieldsTransformer)ic_systemFieldsValueTransformer
{
  v0 = objc_opt_class();
  if (v0 != objc_opt_class())
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[self class] == [CKShare class]" functionName:"+[CKShare(IC) ic_systemFieldsValueTransformer]" simulateCrash:1 showAlert:0 format:{@"-ic_systemFieldsValueTransformer must be overridden, and must not call super: %@", objc_opt_class()}];
  }

  v1 = objc_alloc_init(CKShareSystemFieldsTransformer);

  return v1;
}

- (id)ic_nonCurrentUserParticipants
{
  v1 = MEMORY[0x277CBC6A0];
  v2 = [a1 participants];
  v3 = [v1 ic_nonCurrentUserParticipants:v2];

  return v3;
}

- (id)ic_acceptedParticipants
{
  v1 = [a1 participants];
  v2 = [v1 ic_objectsPassingTest:&__block_literal_global_45];

  return v2;
}

- (id)ic_nonCurrentUserAcceptedParticipants
{
  v1 = [a1 participants];
  v2 = [v1 ic_objectsPassingTest:&__block_literal_global_7];

  return v2;
}

- (id)ic_participantWithUserRecordName:()IC
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 allParticipants];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__CKShare_IC__ic_participantWithUserRecordName___block_invoke;
    v8[3] = &unk_278197F58;
    v9 = v4;
    v6 = [v5 ic_objectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)ic_participantWithHandle:()IC
{
  v2 = [MEMORY[0x277D6EEE8] normalizedHandleWithDestinationID:?];
  if (v2)
  {
    v3 = [a1 allParticipants];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__CKShare_IC__ic_participantWithHandle___block_invoke;
    v6[3] = &unk_278197F58;
    v7 = v2;
    v4 = [v3 ic_objectPassingTest:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)_nonCurrentUserParticipantsCountWithAcceptanceStatus:()IC
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a1 participants];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [a1 owner];
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          v14 = [v11 acceptanceStatus];

          if (v14 == a3)
          {
            ++v8;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)_nonOwnerParticipantsCountWithAcceptanceStatus:()IC
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a1 participants];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [a1 owner];
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          v14 = [v11 acceptanceStatus];

          if (v14 == a3)
          {
            ++v8;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end