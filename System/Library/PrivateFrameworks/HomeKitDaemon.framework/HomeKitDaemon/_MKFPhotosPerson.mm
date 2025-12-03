@interface _MKFPhotosPerson
+ (NSPredicate)homeRelation;
- (MKFHome)home;
- (MKFPhotosPersonDatabaseID)databaseID;
- (id)createHMPerson;
- (void)updateWithHMPerson:(id)person;
@end

@implementation _MKFPhotosPerson

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_10700 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_10700, &__block_literal_global_10701);
  }

  v3 = homeRelation__hmf_once_v1_10702;

  return v3;
}

- (MKFHome)home
{
  user = [(_MKFPhotosPerson *)self user];
  home = [user home];

  return home;
}

- (MKFPhotosPersonDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFPhotosPersonDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)createHMPerson
{
  v3 = objc_alloc(MEMORY[0x277CD1C70]);
  modelID = [(_MKFPhotosPerson *)self modelID];
  v5 = [v3 initWithUUID:modelID];

  name = [(_MKFPhotosPerson *)self name];
  [v5 setName:name];

  photoLibraryPersonUUID = [(_MKFPhotosPerson *)self photoLibraryPersonUUID];
  [v5 setExternalPersonUUID:photoLibraryPersonUUID];

  v8 = [MEMORY[0x277CBEB58] set];
  linkedHomePerson = [(_MKFPhotosPerson *)self linkedHomePerson];
  v10 = linkedHomePerson;
  if (linkedHomePerson)
  {
    v11 = MEMORY[0x277CD1AA8];
    home = [linkedHomePerson home];
    modelID2 = [home modelID];
    v14 = [v11 personManagerUUIDFromHomeUUID:modelID2];

    v15 = objc_alloc(MEMORY[0x277CD1CE0]);
    modelID3 = [v10 modelID];
    v17 = [v15 initWithPersonUUID:modelID3 personManagerUUID:v14];

    [v8 addObject:v17];
  }

  [v5 setPersonLinks:v8];
  v18 = [v5 copy];

  return v18;
}

- (void)updateWithHMPerson:(id)person
{
  v26 = *MEMORY[0x277D85DE8];
  personCopy = person;
  name = [(_MKFPhotosPerson *)self name];
  name2 = [personCopy name];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    name3 = [personCopy name];
    [(_MKFPhotosPerson *)self setName:name3];
  }

  photoLibraryPersonUUID = [(_MKFPhotosPerson *)self photoLibraryPersonUUID];
  externalPersonUUID = [personCopy externalPersonUUID];
  v11 = HMFEqualObjects();

  if ((v11 & 1) == 0)
  {
    externalPersonUUID2 = [personCopy externalPersonUUID];
    [(_MKFPhotosPerson *)self setPhotoLibraryPersonUUID:externalPersonUUID2];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  personLinks = [personCopy personLinks];
  v14 = [personLinks countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(personLinks);
        }

        personUUID = [*(*(&v21 + 1) + 8 * v17) personUUID];
        v19 = [HMCContext findHomePersonWithModelID:personUUID];

        if (v19)
        {
          [(_MKFPhotosPerson *)self setLinkedHomePerson:v19];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [personLinks countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end