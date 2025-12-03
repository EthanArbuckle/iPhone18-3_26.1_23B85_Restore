@interface FCJSONRecordSourceSchema
- (FCJSONRecordSourceSchema)initWithRecordType:(id)type recordIDPrefix:(id)prefix keys:(id)keys localizableKeys:(id)localizableKeys alwaysLocalizedKeys:(id)localizedKeys;
@end

@implementation FCJSONRecordSourceSchema

- (FCJSONRecordSourceSchema)initWithRecordType:(id)type recordIDPrefix:(id)prefix keys:(id)keys localizableKeys:(id)localizableKeys alwaysLocalizedKeys:(id)localizedKeys
{
  typeCopy = type;
  prefixCopy = prefix;
  keysCopy = keys;
  localizableKeysCopy = localizableKeys;
  localizedKeysCopy = localizedKeys;
  v32.receiver = self;
  v32.super_class = FCJSONRecordSourceSchema;
  v17 = [(FCJSONRecordSourceSchema *)&v32 init];
  if (v17)
  {
    v18 = [typeCopy copy];
    recordType = v17->_recordType;
    v17->_recordType = v18;

    v20 = [prefixCopy copy];
    recordIDPrefix = v17->_recordIDPrefix;
    v17->_recordIDPrefix = v20;

    v22 = [keysCopy copy];
    keys = v17->_keys;
    v17->_keys = v22;

    v24 = [localizableKeysCopy copy];
    localizableKeys = v17->_localizableKeys;
    v17->_localizableKeys = v24;

    v26 = [localizedKeysCopy copy];
    alwaysLocalizedKeys = v17->_alwaysLocalizedKeys;
    v17->_alwaysLocalizedKeys = v26;

    v28 = [keysCopy arrayByAddingObjectsFromArray:localizableKeysCopy];
    v29 = [v28 arrayByAddingObjectsFromArray:localizedKeysCopy];
    allKeys = v17->_allKeys;
    v17->_allKeys = v29;
  }

  return v17;
}

@end