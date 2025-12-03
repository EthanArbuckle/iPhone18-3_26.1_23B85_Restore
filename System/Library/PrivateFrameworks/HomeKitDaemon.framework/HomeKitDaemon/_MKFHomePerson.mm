@interface _MKFHomePerson
+ (NSPredicate)homeRelation;
- (MKFHomePersonDatabaseID)databaseID;
- (id)createHMPerson;
- (id)photosPersonForPersonLink:(id)link;
- (void)updateWithHMPerson:(id)person;
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

- (id)photosPersonForPersonLink:(id)link
{
  v23 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  home = [(_MKFHomePerson *)self home];
  users = [home users];

  v7 = [users countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(users);
        }

        v10 = MEMORY[0x277CD1CF8];
        modelID = [*(*(&v18 + 1) + 8 * i) modelID];
        v12 = [v10 personManagerUUIDFromUserUUID:modelID];

        personManagerUUID = [linkCopy personManagerUUID];
        v14 = [personManagerUUID isEqual:v12];

        if (v14)
        {
          personUUID = [linkCopy personUUID];
          v7 = [HMCContext findPhotosPersonWithModelID:personUUID];

          goto LABEL_11;
        }
      }

      v7 = [users countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  modelID = [(_MKFHomePerson *)self modelID];
  v5 = [v3 initWithUUID:modelID];

  name = [(_MKFHomePerson *)self name];
  [v5 setName:name];

  v7 = [MEMORY[0x277CBEB58] set];
  linkedPhotosPerson = [(_MKFHomePerson *)self linkedPhotosPerson];
  v9 = linkedPhotosPerson;
  if (linkedPhotosPerson)
  {
    v10 = MEMORY[0x277CD1CF8];
    user = [linkedPhotosPerson user];
    modelID2 = [user modelID];
    v13 = [v10 personManagerUUIDFromUserUUID:modelID2];

    v14 = objc_alloc(MEMORY[0x277CD1CE0]);
    modelID3 = [v9 modelID];
    v16 = [v14 initWithPersonUUID:modelID3 personManagerUUID:v13];

    [v7 addObject:v16];
  }

  [v5 setPersonLinks:v7];
  v17 = [v5 copy];

  return v17;
}

- (void)updateWithHMPerson:(id)person
{
  v21 = *MEMORY[0x277D85DE8];
  personCopy = person;
  name = [(_MKFHomePerson *)self name];
  name2 = [personCopy name];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    name3 = [personCopy name];
    [(_MKFHomePerson *)self setName:name3];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  personLinks = [personCopy personLinks];
  v10 = [personLinks countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(personLinks);
        }

        v14 = [(_MKFHomePerson *)self photosPersonForPersonLink:*(*(&v16 + 1) + 8 * v13)];
        if (v14)
        {
          [(_MKFHomePerson *)self setLinkedPhotosPerson:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [personLinks countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end