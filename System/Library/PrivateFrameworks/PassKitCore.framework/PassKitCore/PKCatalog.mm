@interface PKCatalog
+ (id)catalogWithContentsOfURL:(id)l nonUbiquitousCatalogURL:(id)rL directoryCoordinator:(id)coordinator;
+ (id)catalogWithLocalCatalog:(id)catalog ubiquitousCatalog:(id)ubiquitousCatalog;
- (BOOL)isEquivalentToCatalog:(id)catalog;
- (BOOL)isNewerThanCatalog:(id)catalog;
- (NSMutableArray)groups;
- (PKCatalog)init;
- (PKCatalog)initWithCloudStoreCoder:(id)coder;
- (PKCatalog)initWithCoder:(id)coder;
- (id)allGroupIDs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)recordTypesAndNamesForCodingType:(unint64_t)type;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)shuffle:(int)shuffle;
- (void)writeToURL:(id)l nonUbiquitousCatalogURL:(id)rL atomically:(BOOL)atomically;
@end

@implementation PKCatalog

- (PKCatalog)init
{
  v6.receiver = self;
  v6.super_class = PKCatalog;
  v2 = [(PKCatalog *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    timestamp = v2->_timestamp;
    v2->_timestamp = date;
  }

  return v2;
}

- (NSMutableArray)groups
{
  groups = self->_groups;
  if (!groups)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_groups;
    self->_groups = v4;

    groups = self->_groups;
  }

  return groups;
}

- (id)allGroupIDs
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableArray count](self->_groups, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_groups;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        groupID = [*(*(&v11 + 1) + 8 * i) groupID];
        if (groupID)
        {
          [v3 addObject:groupID];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)catalogWithContentsOfURL:(id)l nonUbiquitousCatalogURL:(id)rL directoryCoordinator:(id)coordinator
{
  lCopy = l;
  rLCopy = rL;
  coordinatorCopy = coordinator;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__68;
  v33 = __Block_byref_object_dispose__68;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__68;
  v27 = __Block_byref_object_dispose__68;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKCatalog_catalogWithContentsOfURL_nonUbiquitousCatalogURL_directoryCoordinator___block_invoke;
  aBlock[3] = &unk_1E79DF5C8;
  v21 = &v29;
  v10 = lCopy;
  v19 = v10;
  v22 = &v23;
  v11 = rLCopy;
  v20 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (coordinatorCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__PKCatalog_catalogWithContentsOfURL_nonUbiquitousCatalogURL_directoryCoordinator___block_invoke_2;
    v16[3] = &unk_1E79DA550;
    v17 = v12;
    [coordinatorCopy performCoordinatedAction:v16];
  }

  else
  {
    v12[2](v12);
  }

  v14 = _CatalogFromDictionaries(v30[5], v24[5]);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v14;
}

void __83__PKCatalog_catalogWithContentsOfURL_nonUbiquitousCatalogURL_directoryCoordinator___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:a1[4]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:a1[5]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __83__PKCatalog_catalogWithContentsOfURL_nonUbiquitousCatalogURL_directoryCoordinator___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)writeToURL:(id)l nonUbiquitousCatalogURL:(id)rL atomically:(BOOL)atomically
{
  atomicallyCopy = atomically;
  rLCopy = rL;
  lCopy = l;
  v11 = _DictionaryFromCatalogForUbiquity(self, 1);
  v10 = _DictionaryFromCatalogForUbiquity(self, 0);
  [v11 writeToURL:lCopy atomically:atomicallyCopy];

  [v10 writeToURL:rLCopy atomically:atomicallyCopy];
}

- (BOOL)isEquivalentToCatalog:(id)catalog
{
  catalogCopy = catalog;
  v5 = [(NSMutableArray *)self->_groups count];
  if (v5 == [catalogCopy[1] count])
  {
    if (v5)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        v8 = [(NSMutableArray *)self->_groups objectAtIndex:v6];
        v9 = [catalogCopy[1] objectAtIndex:v6];
        v10 = [v8 isEqualToGroup:v9];

        if (v10)
        {
          v11 = v7 == v6;
        }

        else
        {
          v11 = 1;
        }

        ++v6;
      }

      while (!v11);
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)isNewerThanCatalog:(id)catalog
{
  catalogCopy = catalog;
  timestamp = [(PKCatalog *)self timestamp];
  timestamp2 = [catalogCopy timestamp];

  [timestamp timeIntervalSinceDate:timestamp2];
  LOBYTE(catalogCopy) = v7 > 0.0;

  return catalogCopy;
}

- (PKCatalog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKCatalog;
  v5 = [(PKCatalog *)&v15 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"groups"];
    groups = v5->_groups;
    v5->_groups = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [+[PKCatalog allocWithZone:](PKCatalog init];
  v6 = [(NSDate *)self->_timestamp copyWithZone:zone];
  timestamp = v5->_timestamp;
  v5->_timestamp = v6;

  if (self->_groups)
  {
    v8 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{zone), "initWithCapacity:", -[NSMutableArray count](self->_groups, "count")}];
    groups = v5->_groups;
    v5->_groups = v8;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = self->_groups;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = v5->_groups;
          v16 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{zone, v18}];
          [(NSMutableArray *)v15 addObject:v16];

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  groups = self->_groups;
  coderCopy = coder;
  [coderCopy encodeObject:groups forKey:@"groups"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
}

- (void)shuffle:(int)shuffle
{
  groups = [(PKCatalog *)self groups];
  v6 = [groups count];

  if (shuffle >= 1)
  {
    do
    {
      v7 = arc4random_uniform(v6);
      v8 = arc4random_uniform(v6);
      groups2 = [(PKCatalog *)self groups];
      v10 = [groups2 objectAtIndex:v7];

      groups3 = [(PKCatalog *)self groups];
      [groups3 removeObjectAtIndex:v7];

      groups4 = [(PKCatalog *)self groups];
      [groups4 insertObject:v10 atIndex:v8];

      --shuffle;
    }

    while (shuffle);
  }
}

- (PKCatalog)initWithCloudStoreCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [coder recordsWithRecordType:@"PassCatalog"];
  firstObject = [v4 firstObject];

  encryptedValues = [firstObject encryptedValues];
  v7 = [encryptedValues objectForKeyedSubscript:@"manifest"];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 initWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v18 = 0;
    v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v12 fromData:v7 error:&v18];
    v14 = v18;
    if (v14)
    {
      v15 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v14;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Error trying to read contact PKCatalog manifest data from CloudKit. %{public}@", buf, 0xCu);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = _CatalogFromDictionaries(v13, 0);
LABEL_10:

        goto LABEL_11;
      }
    }

    v16 = 0;
    goto LABEL_10;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  v5 = [coder recordsWithRecordType:{@"PassCatalog", type}];
  firstObject = [v5 firstObject];

  v7 = _DictionaryFromCatalogForUbiquity(self, 1);
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  if (v8)
  {
    encryptedValues = [firstObject encryptedValues];
    [encryptedValues setObject:v8 forKeyedSubscript:@"manifest"];
  }

  else
  {
    encryptedValues = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(encryptedValues, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, encryptedValues, OS_LOG_TYPE_DEFAULT, "Cannot set data for Catalog record because it is nil.", v10, 2u);
    }
  }
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)type
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  recordNamePrefix = [objc_opt_class() recordNamePrefix];
  v5 = [v3 stringWithFormat:@"%@%@", recordNamePrefix, @"manifest", @"PassCatalog"];
  v10 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v7;
}

+ (id)catalogWithLocalCatalog:(id)catalog ubiquitousCatalog:(id)ubiquitousCatalog
{
  catalogCopy = catalog;
  v6 = _DictionaryFromCatalogForUbiquity(ubiquitousCatalog, 1);
  v7 = _DictionaryFromCatalogForUbiquity(catalogCopy, 0);

  v8 = _CatalogFromDictionaries(v6, v7);

  return v8;
}

@end