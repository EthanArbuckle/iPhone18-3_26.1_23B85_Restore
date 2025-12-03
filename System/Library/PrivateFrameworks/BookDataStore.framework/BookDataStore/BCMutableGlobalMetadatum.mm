@interface BCMutableGlobalMetadatum
- (BCMutableGlobalMetadatum)initWithCloudData:(id)data;
- (BCMutableGlobalMetadatum)initWithKey:(id)key;
- (BCMutableGlobalMetadatum)initWithRecord:(id)record;
- (NSString)description;
- (id)configuredRecordFromAttributes;
@end

@implementation BCMutableGlobalMetadatum

- (BCMutableGlobalMetadatum)initWithKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4709150();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableGlobalMetadatum;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [keyCopy copy];
    self = *(v5 + 8);
    *(v5 + 8) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableGlobalMetadatum)initWithCloudData:(id)data
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = BCMutableGlobalMetadatum;
  v5 = [(BCMutableCloudData *)&v15 initWithCloudData:dataCopy];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 key];
      v9 = [v8 copy];
      key = v5->_key;
      v5->_key = v9;

      value = [v7 value];
      v12 = [value copy];
      value = v5->_value;
      v5->_value = v12;
    }

    else
    {
      value = BDSCloudKitLog();
      if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
      {
        sub_1E4708FD4();
      }

      value = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableGlobalMetadatum)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    value = BDSCloudKitLog();
    if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
    {
      sub_1E4709184();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = BCMutableGlobalMetadatum;
  v5 = [(BCMutableCloudData *)&v11 initWithRecord:recordCopy];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:recordCopy];
    key = v5->_key;
    v5->_key = v6;

    self = [recordCopy objectForKey:@"value"];
    v8 = [(BCMutableGlobalMetadatum *)self copy];
    value = v5->_value;
    v5->_value = v8;
LABEL_7:
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCMutableGlobalMetadatum *)self key];
  value = [(BCMutableGlobalMetadatum *)self value];
  v6 = [v3 stringWithFormat:@"key: %@, value: %@", v4, value];

  return v6;
}

- (id)configuredRecordFromAttributes
{
  v6.receiver = self;
  v6.super_class = BCMutableGlobalMetadatum;
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v6 configuredRecordFromAttributes];
  value = [(BCMutableGlobalMetadatum *)self value];
  [configuredRecordFromAttributes setObject:value forKey:@"value"];

  return configuredRecordFromAttributes;
}

@end