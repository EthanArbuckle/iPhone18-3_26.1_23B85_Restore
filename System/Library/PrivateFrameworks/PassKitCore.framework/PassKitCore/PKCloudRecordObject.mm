@interface PKCloudRecordObject
- (NSSet)records;
- (PKCloudRecordObject)initWithCoder:(id)coder;
- (PKCloudRecordObject)initWithRecords:(id)records;
- (id)_descriptionWithDetailedOutput:(BOOL)output;
- (id)primaryIdentifier;
- (void)applyCloudRecordObject:(id)object;
@end

@implementation PKCloudRecordObject

- (PKCloudRecordObject)initWithRecords:(id)records
{
  v23 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
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
    v8 = recordsCopy;
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
          recordID = [v13 recordID];
          [(NSMutableDictionary *)v14 setObject:v13 forKey:recordID];
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
  allValues = [(NSMutableDictionary *)self->_recordIDToRecord allValues];
  v4 = [v2 setWithArray:allValues];

  return v4;
}

- (PKCloudRecordObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKCloudRecordObject;
  v5 = [(PKCloudRecordObject *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"recordIDToRecord"];
    recordIDToRecord = v5->_recordIDToRecord;
    v5->_recordIDToRecord = v10;
  }

  return v5;
}

- (id)_descriptionWithDetailedOutput:(BOOL)output
{
  outputCopy = output;
  v18 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"records: \n"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  records = [(PKCloudRecordObject *)self records];
  v7 = [records countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(records);
        }

        if (outputCopy)
        {
          pk_description = [*(*(&v13 + 1) + 8 * i) pk_description];
          [string appendFormat:@" --> %@\n", pk_description];
        }

        else
        {
          [string appendFormat:@" --> %@\n", *(*(&v13 + 1) + 8 * i)];
        }
      }

      v8 = [records countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return string;
}

- (void)applyCloudRecordObject:(id)object
{
  v21 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    records = [objectCopy records];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [records countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(records);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          recordIDToRecord = self->_recordIDToRecord;
          recordID = [v10 recordID];
          v13 = [(NSMutableDictionary *)recordIDToRecord objectForKey:recordID];

          if (!v13)
          {
            v14 = self->_recordIDToRecord;
            recordID2 = [v10 recordID];
            [(NSMutableDictionary *)v14 setObject:v10 forKey:recordID2];
          }
        }

        v7 = [records countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }
}

- (id)primaryIdentifier
{
  item = [(PKCloudRecordObject *)self item];
  primaryIdentifier = [item primaryIdentifier];

  if (!primaryIdentifier)
  {
    allValues = [(NSMutableDictionary *)self->_recordIDToRecord allValues];
    firstObject = [allValues firstObject];
    recordID = [firstObject recordID];
    primaryIdentifier = [recordID recordName];
  }

  return primaryIdentifier;
}

@end