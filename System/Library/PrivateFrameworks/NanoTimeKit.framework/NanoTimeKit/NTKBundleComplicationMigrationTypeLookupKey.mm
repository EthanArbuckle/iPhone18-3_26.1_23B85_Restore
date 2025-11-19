@interface NTKBundleComplicationMigrationTypeLookupKey
- (BOOL)isEqual:(id)a3;
- (NTKBundleComplicationMigrationTypeLookupKey)initWithCoder:(id)a3;
- (NTKBundleComplicationMigrationTypeLookupKey)initWithComplicationType:(unint64_t)a3 family:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKBundleComplicationMigrationTypeLookupKey

- (NTKBundleComplicationMigrationTypeLookupKey)initWithComplicationType:(unint64_t)a3 family:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = NTKBundleComplicationMigrationTypeLookupKey;
  result = [(NTKBundleComplicationMigrationTypeLookupKey *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_family = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == v4[1] && self->_family == v4[2];

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendUnsignedInteger:self->_type];
  v5 = [v3 appendInteger:self->_family];
  v6 = [v3 hash];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeInteger:self->_family forKey:@"family"];
}

- (NTKBundleComplicationMigrationTypeLookupKey)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NTKBundleComplicationMigrationTypeLookupKey;
  v5 = [(NTKBundleComplicationMigrationTypeLookupKey *)&v7 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_family = [v4 decodeIntegerForKey:@"family"];
  }

  return v5;
}

@end