@interface CCDatabaseSetStateVectorBuilder
+ (void)removeSiteIdentifiers:(id)a3 fromStateVector:(id)a4;
- (CCDatabaseSetStateVectorBuilder)init;
- (CCDatabaseSetStateVectorBuilder)initWithDeviceMapping:(id)a3 missingAtomsImplied:(BOOL)a4;
- (id)_indexSetForAtomState:(unsigned __int8)a3 deviceRowId:(id)a4 maxIndex:(unint64_t)a5;
- (id)build;
@end

@implementation CCDatabaseSetStateVectorBuilder

- (id)build
{
  v31 = *MEMORY[0x1E69E9840];
  getCKDistributedTimestampStateVectorClass_1();
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_allDeviceClockValues;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412802;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_allDeviceClockValues objectForKey:v10, v19, v20];
        v12 = [(CCDatabaseDeviceMapping *)self->_deviceMapping siteIdentifierForDeviceRowId:v10];
        if (v12)
        {
          if (self->_missingAtomsImplied)
          {
            [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, objc_msgSend(v11, "max")}];
          }

          else
          {
            [v11 missing];
          }
          v15 = ;
          [v3 addClockValuesInIndexSet:v15 withAtomState:3 forSiteIdentifier:v12];

          v16 = [v11 present];
          [v3 addClockValuesInIndexSet:v16 withAtomState:1 forSiteIdentifier:v12];

          v13 = [v11 tombstoned];
          [v3 addClockValuesInIndexSet:v13 withAtomState:2 forSiteIdentifier:v12];
        }

        else
        {
          v13 = __biome_log_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            deviceMapping = self->_deviceMapping;
            *buf = v19;
            v25 = v10;
            v26 = 2112;
            v27 = deviceMapping;
            v28 = 2112;
            v29 = v11;
            _os_log_error_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_ERROR, "Ignoring provenance row(s) for deviceRowId: %@ without a siteIdentifier mapping: %@ clockValues: %@", buf, 0x20u);
          }
        }
      }

      v7 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CCDatabaseSetStateVectorBuilder)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDatabaseSetStateVectorBuilder)initWithDeviceMapping:(id)a3 missingAtomsImplied:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = CCDatabaseSetStateVectorBuilder;
  v8 = [(CCDatabaseSetStateVectorBuilder *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_deviceMapping, a3);
    v9->_missingAtomsImplied = a4;
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[CCDatabaseDeviceMapping count](v9->_deviceMapping, "count")}];
    allDeviceClockValues = v9->_allDeviceClockValues;
    v9->_allDeviceClockValues = v10;
  }

  return v9;
}

- (id)_indexSetForAtomState:(unsigned __int8)a3 deviceRowId:(id)a4 maxIndex:(unint64_t)a5
{
  v7 = a3;
  v9 = a4;
  if (([v9 isEqual:self->_lastDeviceRowId] & 1) == 0)
  {
    objc_storeStrong(&self->_lastDeviceRowId, a4);
    v10 = [(NSMutableDictionary *)self->_allDeviceClockValues objectForKey:self->_lastDeviceRowId];
    deviceClockValues = self->_deviceClockValues;
    self->_deviceClockValues = v10;

    if (!self->_deviceClockValues)
    {
      v12 = [[CCDatabaseDeviceClockValues alloc] initWithDeviceRowId:self->_lastDeviceRowId missingAtomsImplied:self->_missingAtomsImplied];
      v13 = self->_deviceClockValues;
      self->_deviceClockValues = v12;

      [(NSMutableDictionary *)self->_allDeviceClockValues setObject:self->_deviceClockValues forKey:self->_lastDeviceRowId];
    }
  }

  [(CCDatabaseDeviceClockValues *)self->_deviceClockValues updateMax:a5];
  switch(v7)
  {
    case 3:
      v14 = [(CCDatabaseDeviceClockValues *)self->_deviceClockValues missing];
      goto LABEL_10;
    case 2:
      v14 = [(CCDatabaseDeviceClockValues *)self->_deviceClockValues tombstoned];
      goto LABEL_10;
    case 1:
      v14 = [(CCDatabaseDeviceClockValues *)self->_deviceClockValues present];
LABEL_10:
      v15 = v14;
      goto LABEL_12;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

+ (void)removeSiteIdentifiers:(id)a3 fromStateVector:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  getCKDistributedTimestampStateVectorClass_1();
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        v14 = [v6 clockValuesForSiteIdentifier:{v13, v17}];
        [v7 addClockValuesInIndexSet:v14 forSiteIdentifier:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v7 clockVector];
  [v6 minusVector:v15];

  v16 = *MEMORY[0x1E69E9840];
}

@end