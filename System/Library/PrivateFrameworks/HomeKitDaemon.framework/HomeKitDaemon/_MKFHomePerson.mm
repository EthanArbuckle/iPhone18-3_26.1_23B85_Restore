@interface _MKFHomePerson
+ (NSPredicate)homeRelation;
- (MKFHomePersonDatabaseID)databaseID;
- (id)createHMPerson;
- (id)photosPersonForPersonLink:(id)a3;
- (void)updateWithHMPerson:(id)a3;
@end

@implementation _MKFHomePerson

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_162625 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_162625, &__block_literal_global_162626);
  }

  v3 = homeRelation__hmf_once_v1_162627;

  return v3;
}

- (MKFHomePersonDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomePersonDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)photosPersonForPersonLink:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(_MKFHomePerson *)self home];
  v6 = [v5 users];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = MEMORY[0x277CD1CF8];
        v11 = [*(*(&v18 + 1) + 8 * i) modelID];
        v12 = [v10 personManagerUUIDFromUserUUID:v11];

        v13 = [v4 personManagerUUID];
        v14 = [v13 isEqual:v12];

        if (v14)
        {
          v15 = [v4 personUUID];
          v7 = [HMCContext findPhotosPersonWithModelID:v15];

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createHMPerson
{
  v3 = objc_alloc(MEMORY[0x277CD1C70]);
  v4 = [(_MKFHomePerson *)self modelID];
  v5 = [v3 initWithUUID:v4];

  v6 = [(_MKFHomePerson *)self name];
  [v5 setName:v6];

  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(_MKFHomePerson *)self linkedPhotosPerson];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277CD1CF8];
    v11 = [v8 user];
    v12 = [v11 modelID];
    v13 = [v10 personManagerUUIDFromUserUUID:v12];

    v14 = objc_alloc(MEMORY[0x277CD1CE0]);
    v15 = [v9 modelID];
    v16 = [v14 initWithPersonUUID:v15 personManagerUUID:v13];

    [v7 addObject:v16];
  }

  [v5 setPersonLinks:v7];
  v17 = [v5 copy];

  return v17;
}

- (void)updateWithHMPerson:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_MKFHomePerson *)self name];
  v6 = [v4 name];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    v8 = [v4 name];
    [(_MKFHomePerson *)self setName:v8];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v4 personLinks];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(_MKFHomePerson *)self photosPersonForPersonLink:*(*(&v16 + 1) + 8 * v13)];
        if (v14)
        {
          [(_MKFHomePerson *)self setLinkedPhotosPerson:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end