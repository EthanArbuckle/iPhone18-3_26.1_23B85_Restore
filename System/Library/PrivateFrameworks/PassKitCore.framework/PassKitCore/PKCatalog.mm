@interface PKCatalog
+ (id)catalogWithContentsOfURL:(id)a3 nonUbiquitousCatalogURL:(id)a4 directoryCoordinator:(id)a5;
+ (id)catalogWithLocalCatalog:(id)a3 ubiquitousCatalog:(id)a4;
- (BOOL)isEquivalentToCatalog:(id)a3;
- (BOOL)isNewerThanCatalog:(id)a3;
- (NSMutableArray)groups;
- (PKCatalog)init;
- (PKCatalog)initWithCloudStoreCoder:(id)a3;
- (PKCatalog)initWithCoder:(id)a3;
- (id)allGroupIDs;
- (id)copyWithZone:(_NSZone *)a3;
- (id)recordTypesAndNamesForCodingType:(unint64_t)a3;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)shuffle:(int)a3;
- (void)writeToURL:(id)a3 nonUbiquitousCatalogURL:(id)a4 atomically:(BOOL)a5;
@end

@implementation PKCatalog

- (PKCatalog)init
{
  v6.receiver = self;
  v6.super_class = PKCatalog;
  v2 = [(PKCatalog *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    timestamp = v2->_timestamp;
    v2->_timestamp = v3;
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

        v9 = [*(*(&v11 + 1) + 8 * i) groupID];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)catalogWithContentsOfURL:(id)a3 nonUbiquitousCatalogURL:(id)a4 directoryCoordinator:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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
  v10 = v7;
  v19 = v10;
  v22 = &v23;
  v11 = v8;
  v20 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v9)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__PKCatalog_catalogWithContentsOfURL_nonUbiquitousCatalogURL_directoryCoordinator___block_invoke_2;
    v16[3] = &unk_1E79DA550;
    v17 = v12;
    [v9 performCoordinatedAction:v16];
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

- (void)writeToURL:(id)a3 nonUbiquitousCatalogURL:(id)a4 atomically:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v11 = _DictionaryFromCatalogForUbiquity(self, 1);
  v10 = _DictionaryFromCatalogForUbiquity(self, 0);
  [v11 writeToURL:v9 atomically:v5];

  [v10 writeToURL:v8 atomically:v5];
}

- (BOOL)isEquivalentToCatalog:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_groups count];
  if (v5 == [v4[1] count])
  {
    if (v5)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        v8 = [(NSMutableArray *)self->_groups objectAtIndex:v6];
        v9 = [v4[1] objectAtIndex:v6];
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

- (BOOL)isNewerThanCatalog:(id)a3
{
  v4 = a3;
  v5 = [(PKCatalog *)self timestamp];
  v6 = [v4 timestamp];

  [v5 timeIntervalSinceDate:v6];
  LOBYTE(v4) = v7 > 0.0;

  return v4;
}

- (PKCatalog)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKCatalog;
  v5 = [(PKCatalog *)&v15 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"groups"];
    groups = v5->_groups;
    v5->_groups = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [+[PKCatalog allocWithZone:](PKCatalog init];
  v6 = [(NSDate *)self->_timestamp copyWithZone:a3];
  timestamp = v5->_timestamp;
  v5->_timestamp = v6;

  if (self->_groups)
  {
    v8 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{a3), "initWithCapacity:", -[NSMutableArray count](self->_groups, "count")}];
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
          v16 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
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

- (void)encodeWithCoder:(id)a3
{
  groups = self->_groups;
  v5 = a3;
  [v5 encodeObject:groups forKey:@"groups"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
}

- (void)shuffle:(int)a3
{
  v5 = [(PKCatalog *)self groups];
  v6 = [v5 count];

  if (a3 >= 1)
  {
    do
    {
      v7 = arc4random_uniform(v6);
      v8 = arc4random_uniform(v6);
      v9 = [(PKCatalog *)self groups];
      v10 = [v9 objectAtIndex:v7];

      v11 = [(PKCatalog *)self groups];
      [v11 removeObjectAtIndex:v7];

      v12 = [(PKCatalog *)self groups];
      [v12 insertObject:v10 atIndex:v8];

      --a3;
    }

    while (a3);
  }
}

- (PKCatalog)initWithCloudStoreCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a3 recordsWithRecordType:@"PassCatalog"];
  v5 = [v4 firstObject];

  v6 = [v5 encryptedValues];
  v7 = [v6 objectForKeyedSubscript:@"manifest"];

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

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  v5 = [a3 recordsWithRecordType:{@"PassCatalog", a4}];
  v6 = [v5 firstObject];

  v7 = _DictionaryFromCatalogForUbiquity(self, 1);
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  if (v8)
  {
    v9 = [v6 encryptedValues];
    [v9 setObject:v8 forKeyedSubscript:@"manifest"];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Cannot set data for Catalog record because it is nil.", v10, 2u);
    }
  }
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() recordNamePrefix];
  v5 = [v3 stringWithFormat:@"%@%@", v4, @"manifest", @"PassCatalog"];
  v10 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v7;
}

+ (id)catalogWithLocalCatalog:(id)a3 ubiquitousCatalog:(id)a4
{
  v5 = a3;
  v6 = _DictionaryFromCatalogForUbiquity(a4, 1);
  v7 = _DictionaryFromCatalogForUbiquity(v5, 0);

  v8 = _CatalogFromDictionaries(v6, v7);

  return v8;
}

@end