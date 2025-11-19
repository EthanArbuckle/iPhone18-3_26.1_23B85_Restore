@interface PKCloudStoreRecord
- (NSArray)records;
- (PKCloudStoreRecord)initWithRecords:(id)a3;
- (id)description;
- (void)addRecord:(id)a3;
@end

@implementation PKCloudStoreRecord

- (PKCloudStoreRecord)initWithRecords:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKCloudStoreRecord;
  v5 = [(PKCloudStoreRecord *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    records = v5->_records;
    v5->_records = v6;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(PKCloudStoreRecord *)v5 addRecord:*(*(&v14 + 1) + 8 * v12++), v14];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (NSArray)records
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_records;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_records objectForKey:*(*(&v12 + 1) + 8 * i), v12];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)addRecord:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [(NSMutableDictionary *)self->_records objectForKey:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_records setObject:v6 forKey:v5];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 recordID];
        v14 = [v4 recordID];
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {

          if (v13 == v15)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v17 = [v13 isEqual:v14];

          if (v17)
          {
LABEL_19:
            [v7 removeObject:v12];
            goto LABEL_20;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  [v7 addObject:v4];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"records: '%@'; ", self->_records];
  [v3 appendFormat:@">"];

  return v3;
}

@end