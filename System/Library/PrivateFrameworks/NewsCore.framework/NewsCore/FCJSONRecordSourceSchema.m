@interface FCJSONRecordSourceSchema
- (FCJSONRecordSourceSchema)initWithRecordType:(id)a3 recordIDPrefix:(id)a4 keys:(id)a5 localizableKeys:(id)a6 alwaysLocalizedKeys:(id)a7;
@end

@implementation FCJSONRecordSourceSchema

- (FCJSONRecordSourceSchema)initWithRecordType:(id)a3 recordIDPrefix:(id)a4 keys:(id)a5 localizableKeys:(id)a6 alwaysLocalizedKeys:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32.receiver = self;
  v32.super_class = FCJSONRecordSourceSchema;
  v17 = [(FCJSONRecordSourceSchema *)&v32 init];
  if (v17)
  {
    v18 = [v12 copy];
    recordType = v17->_recordType;
    v17->_recordType = v18;

    v20 = [v13 copy];
    recordIDPrefix = v17->_recordIDPrefix;
    v17->_recordIDPrefix = v20;

    v22 = [v14 copy];
    keys = v17->_keys;
    v17->_keys = v22;

    v24 = [v15 copy];
    localizableKeys = v17->_localizableKeys;
    v17->_localizableKeys = v24;

    v26 = [v16 copy];
    alwaysLocalizedKeys = v17->_alwaysLocalizedKeys;
    v17->_alwaysLocalizedKeys = v26;

    v28 = [v14 arrayByAddingObjectsFromArray:v15];
    v29 = [v28 arrayByAddingObjectsFromArray:v16];
    allKeys = v17->_allKeys;
    v17->_allKeys = v29;
  }

  return v17;
}

@end