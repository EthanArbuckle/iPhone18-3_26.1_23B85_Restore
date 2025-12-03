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
  participants = [self participants];
  v3 = [v1 ic_nonCurrentUserParticipants:participants];

  return v3;
}

- (id)ic_acceptedParticipants
{
  participants = [self participants];
  v2 = [participants ic_objectsPassingTest:&__block_literal_global_45];

  return v2;
}

- (id)ic_nonCurrentUserAcceptedParticipants
{
  participants = [self participants];
  v2 = [participants ic_objectsPassingTest:&__block_literal_global_7];

  return v2;
}

- (id)ic_participantWithUserRecordName:()IC
{
  v4 = a3;
  if ([v4 length])
  {
    allParticipants = [self allParticipants];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__CKShare_IC__ic_participantWithUserRecordName___block_invoke;
    v8[3] = &unk_278197F58;
    v9 = v4;
    v6 = [allParticipants ic_objectPassingTest:v8];
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
    allParticipants = [self allParticipants];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__CKShare_IC__ic_participantWithHandle___block_invoke;
    v6[3] = &unk_278197F58;
    v7 = v2;
    v4 = [allParticipants ic_objectPassingTest:v6];
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
  participants = [self participants];
  v6 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(participants);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        owner = [self owner];
        v13 = owner;
        if (v11 == owner)
        {
        }

        else
        {
          acceptanceStatus = [v11 acceptanceStatus];

          if (acceptanceStatus == a3)
          {
            ++v8;
          }
        }
      }

      v7 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  participants = [self participants];
  v6 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(participants);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        owner = [self owner];
        v13 = owner;
        if (v11 == owner)
        {
        }

        else
        {
          acceptanceStatus = [v11 acceptanceStatus];

          if (acceptanceStatus == a3)
          {
            ++v8;
          }
        }
      }

      v7 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
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