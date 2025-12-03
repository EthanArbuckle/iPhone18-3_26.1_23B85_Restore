@interface _DPBitValueDataRecordMOConverter
- (id)insertRecord:(id)record inManagedObjectContext:(id)context;
- (id)insertRecords:(id)records inManagedObjectContext:(id)context;
- (id)updateRecords:(id)records inManagedObjectContext:(id)context;
@end

@implementation _DPBitValueDataRecordMOConverter

- (id)insertRecord:(id)record inManagedObjectContext:(id)context
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBE408];
  contextCopy = context;
  recordCopy = record;
  entityName = [objc_opt_class() entityName];
  v10 = [v6 insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [contextCopy obtainPermanentIDsForObjects:v11 error:0];

  [(_DPBitValueDataRecordMOConverter *)self copyRecord:recordCopy intoManagedObject:v10];
  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)insertRecords:(id)records inManagedObjectContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  contextCopy = context;
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = recordsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(_DPBitValueDataRecordMOConverter *)self insertRecord:v14 inManagedObjectContext:contextCopy, v18];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)updateRecords:(id)records inManagedObjectContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  contextCopy = context;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = recordsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objectId = [v13 objectId];
          v15 = [contextCopy objectWithID:objectId];

          if (v15)
          {
            [(_DPBitValueDataRecordMOConverter *)self copyRecord:v13 intoManagedObject:v15];
            [v7 addObject:v15];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

@end