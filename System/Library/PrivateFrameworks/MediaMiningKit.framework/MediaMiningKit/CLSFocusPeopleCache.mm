@interface CLSFocusPeopleCache
+ (id)_personSortDescriptors;
- (CLSFocusPeopleCache)initWithPhotoLibrary:(id)a3 maximumNumberOfPeople:(unint64_t)a4;
- (PHPhotoLibrary)photoLibrary;
- (id)_collectValidPersonLocalIdentifiers;
- (void)invalidate;
@end

@implementation CLSFocusPeopleCache

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (id)_collectValidPersonLocalIdentifiers
{
  v24 = *MEMORY[0x277D85DE8];
  maximumNumberOfPeople = self->_maximumNumberOfPeople;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  v4 = [WeakRetained librarySpecificFetchOptions];

  [v4 setPersonContext:1];
  v5 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:v4];
  v6 = v5;
  if (maximumNumberOfPeople && [v5 count] > maximumNumberOfPeople)
  {
    v7 = [v6 fetchedObjects];
    v8 = [objc_opt_class() _personSortDescriptors];
    v9 = [v7 sortedArrayUsingDescriptors:v8];

    v10 = [v9 subarrayWithRange:{0, maximumNumberOfPeople}];
  }

  else
  {
    maximumNumberOfPeople = [v6 count];
    v10 = v6;
  }

  v11 = [MEMORY[0x277CBEB58] setWithCapacity:maximumNumberOfPeople];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) localIdentifier];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  personLocalIdentifiers = obj->_personLocalIdentifiers;
  obj->_personLocalIdentifiers = 0;

  objc_sync_exit(obj);
}

- (CLSFocusPeopleCache)initWithPhotoLibrary:(id)a3 maximumNumberOfPeople:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CLSFocusPeopleCache;
  v7 = [(CLSFocusPeopleCache *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_photoLibrary, v6);
    v8->_maximumNumberOfPeople = a4;
    v9 = [(CLSFocusPeopleCache *)v8 _collectValidPersonLocalIdentifiers];
    personLocalIdentifiers = v8->_personLocalIdentifiers;
    v8->_personLocalIdentifiers = v9;
  }

  return v8;
}

+ (id)_personSortDescriptors
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceCount" ascending:0];
  v6[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localIdentifier" ascending:0];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

@end