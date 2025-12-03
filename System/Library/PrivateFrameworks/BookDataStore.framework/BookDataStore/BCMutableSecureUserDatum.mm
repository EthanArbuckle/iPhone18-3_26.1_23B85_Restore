@interface BCMutableSecureUserDatum
- (BCMutableSecureUserDatum)initWithCloudData:(id)data;
- (BCMutableSecureUserDatum)initWithCoder:(id)coder;
- (BCMutableSecureUserDatum)initWithKey:(id)key;
- (BCMutableSecureUserDatum)initWithRecord:(id)record;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCMutableSecureUserDatum

- (BCMutableSecureUserDatum)initWithKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707718();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableSecureUserDatum;
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

- (BCMutableSecureUserDatum)initWithCloudData:(id)data
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = BCMutableSecureUserDatum;
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
        sub_1E470759C();
      }

      value = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableSecureUserDatum)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    value = BDSCloudKitLog();
    if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
    {
      sub_1E470774C();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = BCMutableSecureUserDatum;
  v5 = [(BCMutableCloudData *)&v11 initWithRecord:recordCopy];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:recordCopy];
    key = v5->_key;
    v5->_key = v6;

    self = [recordCopy objectForKey:@"value"];
    v8 = [(BCMutableSecureUserDatum *)self copy];
    value = v5->_value;
    v5->_value = v8;
LABEL_7:
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCMutableSecureUserDatum *)self key];
  value = [(BCMutableSecureUserDatum *)self value];
  v6 = [v3 stringWithFormat:@"key: %@, value: %@", v4, value];

  return v6;
}

- (id)configuredRecordFromAttributes
{
  v6.receiver = self;
  v6.super_class = BCMutableSecureUserDatum;
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v6 configuredRecordFromAttributes];
  value = [(BCMutableSecureUserDatum *)self value];
  [configuredRecordFromAttributes setObject:value forKey:@"value"];

  return configuredRecordFromAttributes;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BCMutableSecureUserDatum;
  coderCopy = coder;
  [(BCMutableCloudData *)&v6 encodeWithCoder:coderCopy];
  v5 = [(BCMutableSecureUserDatum *)self value:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"value"];
}

- (BCMutableSecureUserDatum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BCMutableSecureUserDatum;
  v5 = [(BCMutableCloudData *)&v12 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    localRecordID = [(BCMutableCloudData *)v5 localRecordID];
    key = v6->_key;
    v6->_key = localRecordID;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v6->_value;
    v6->_value = v9;
  }

  return v6;
}

@end