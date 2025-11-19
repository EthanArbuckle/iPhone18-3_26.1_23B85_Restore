@interface BCMutableSecureUserDatum
- (BCMutableSecureUserDatum)initWithCloudData:(id)a3;
- (BCMutableSecureUserDatum)initWithCoder:(id)a3;
- (BCMutableSecureUserDatum)initWithKey:(id)a3;
- (BCMutableSecureUserDatum)initWithRecord:(id)a3;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCMutableSecureUserDatum

- (BCMutableSecureUserDatum)initWithKey:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v6 = [v4 copy];
    self = *(v5 + 8);
    *(v5 + 8) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableSecureUserDatum)initWithCloudData:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BCMutableSecureUserDatum;
  v5 = [(BCMutableCloudData *)&v15 initWithCloudData:v4];
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

      v11 = [v7 value];
      v12 = [v11 copy];
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

      v11 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableSecureUserDatum)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v5 = [(BCMutableCloudData *)&v11 initWithRecord:v4];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:v4];
    key = v5->_key;
    v5->_key = v6;

    self = [v4 objectForKey:@"value"];
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
  v5 = [(BCMutableSecureUserDatum *)self value];
  v6 = [v3 stringWithFormat:@"key: %@, value: %@", v4, v5];

  return v6;
}

- (id)configuredRecordFromAttributes
{
  v6.receiver = self;
  v6.super_class = BCMutableSecureUserDatum;
  v3 = [(BCMutableCloudData *)&v6 configuredRecordFromAttributes];
  v4 = [(BCMutableSecureUserDatum *)self value];
  [v3 setObject:v4 forKey:@"value"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BCMutableSecureUserDatum;
  v4 = a3;
  [(BCMutableCloudData *)&v6 encodeWithCoder:v4];
  v5 = [(BCMutableSecureUserDatum *)self value:v6.receiver];
  [v4 encodeObject:v5 forKey:@"value"];
}

- (BCMutableSecureUserDatum)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BCMutableSecureUserDatum;
  v5 = [(BCMutableCloudData *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(BCMutableCloudData *)v5 localRecordID];
    key = v6->_key;
    v6->_key = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v6->_value;
    v6->_value = v9;
  }

  return v6;
}

@end