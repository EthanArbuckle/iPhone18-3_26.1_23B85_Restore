@interface _MKFPhotosPerson
+ (NSPredicate)homeRelation;
- (MKFHome)home;
- (MKFPhotosPersonDatabaseID)databaseID;
- (id)createHMPerson;
- (void)updateWithHMPerson:(id)a3;
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
  v2 = [(_MKFPhotosPerson *)self user];
  v3 = [v2 home];

  return v3;
}

- (MKFPhotosPersonDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFPhotosPersonDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)createHMPerson
{
  v3 = objc_alloc(MEMORY[0x277CD1C70]);
  v4 = [(_MKFPhotosPerson *)self modelID];
  v5 = [v3 initWithUUID:v4];

  v6 = [(_MKFPhotosPerson *)self name];
  [v5 setName:v6];

  v7 = [(_MKFPhotosPerson *)self photoLibraryPersonUUID];
  [v5 setExternalPersonUUID:v7];

  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [(_MKFPhotosPerson *)self linkedHomePerson];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CD1AA8];
    v12 = [v9 home];
    v13 = [v12 modelID];
    v14 = [v11 personManagerUUIDFromHomeUUID:v13];

    v15 = objc_alloc(MEMORY[0x277CD1CE0]);
    v16 = [v10 modelID];
    v17 = [v15 initWithPersonUUID:v16 personManagerUUID:v14];

    [v8 addObject:v17];
  }

  [v5 setPersonLinks:v8];
  v18 = [v5 copy];

  return v18;
}

- (void)updateWithHMPerson:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_MKFPhotosPerson *)self name];
  v6 = [v4 name];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    v8 = [v4 name];
    [(_MKFPhotosPerson *)self setName:v8];
  }

  v9 = [(_MKFPhotosPerson *)self photoLibraryPersonUUID];
  v10 = [v4 externalPersonUUID];
  v11 = HMFEqualObjects();

  if ((v11 & 1) == 0)
  {
    v12 = [v4 externalPersonUUID];
    [(_MKFPhotosPerson *)self setPhotoLibraryPersonUUID:v12];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v4 personLinks];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) personUUID];
        v19 = [HMCContext findHomePersonWithModelID:v18];

        if (v19)
        {
          [(_MKFPhotosPerson *)self setLinkedHomePerson:v19];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end