@interface PKCloudRecordObject
- (NSSet)records;
- (PKCloudRecordObject)initWithCoder:(id)a3;
- (PKCloudRecordObject)initWithRecords:(id)a3;
- (id)_descriptionWithDetailedOutput:(BOOL)a3;
- (id)primaryIdentifier;
- (void)applyCloudRecordObject:(id)a3;
@end

@implementation PKCloudRecordObject

- (PKCloudRecordObject)initWithRecords:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKCloudRecordObject;
  v5 = [(PKCloudRecordObject *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    recordIDToRecord = v5->_recordIDToRecord;
    v5->_recordIDToRecord = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = v5->_recordIDToRecord;
          v15 = [v13 recordID];
          [(NSMutableDictionary *)v14 setObject:v13 forKey:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (NSSet)records
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSMutableDictionary *)self->_recordIDToRecord allValues];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (PKCloudRecordObject)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKCloudRecordObject;
  v5 = [(PKCloudRecordObject *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"recordIDToRecord"];
    recordIDToRecord = v5->_recordIDToRecord;
    v5->_recordIDToRecord = v10;
  }

  return v5;
}

- (id)_descriptionWithDetailedOutput:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD60] string];
  [v5 appendFormat:@"records: \n"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PKCloudRecordObject *)self records];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v3)
        {
          v11 = [*(*(&v13 + 1) + 8 * i) pk_description];
          [v5 appendFormat:@" --> %@\n", v11];
        }

        else
        {
          [v5 appendFormat:@" --> %@\n", *(*(&v13 + 1) + 8 * i)];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)applyCloudRecordObject:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 records];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          recordIDToRecord = self->_recordIDToRecord;
          v12 = [v10 recordID];
          v13 = [(NSMutableDictionary *)recordIDToRecord objectForKey:v12];

          if (!v13)
          {
            v14 = self->_recordIDToRecord;
            v15 = [v10 recordID];
            [(NSMutableDictionary *)v14 setObject:v10 forKey:v15];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }
}

- (id)primaryIdentifier
{
  v3 = [(PKCloudRecordObject *)self item];
  v4 = [v3 primaryIdentifier];

  if (!v4)
  {
    v5 = [(NSMutableDictionary *)self->_recordIDToRecord allValues];
    v6 = [v5 firstObject];
    v7 = [v6 recordID];
    v4 = [v7 recordName];
  }

  return v4;
}

@end