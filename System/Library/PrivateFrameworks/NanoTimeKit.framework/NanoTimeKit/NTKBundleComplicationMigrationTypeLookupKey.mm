@interface NTKBundleComplicationMigrationTypeLookupKey
- (BOOL)isEqual:(id)equal;
- (NTKBundleComplicationMigrationTypeLookupKey)initWithCoder:(id)coder;
- (NTKBundleComplicationMigrationTypeLookupKey)initWithComplicationType:(unint64_t)type family:(int64_t)family;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKBundleComplicationMigrationTypeLookupKey

- (NTKBundleComplicationMigrationTypeLookupKey)initWithComplicationType:(unint64_t)type family:(int64_t)family
{
  v7.receiver = self;
  v7.super_class = NTKBundleComplicationMigrationTypeLookupKey;
  result = [(NTKBundleComplicationMigrationTypeLookupKey *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_family = family;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy[1] && self->_family == equalCopy[2];

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendUnsignedInteger:self->_type];
  v5 = [builder appendInteger:self->_family];
  v6 = [builder hash];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_family forKey:@"family"];
}

- (NTKBundleComplicationMigrationTypeLookupKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NTKBundleComplicationMigrationTypeLookupKey;
  v5 = [(NTKBundleComplicationMigrationTypeLookupKey *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_family = [coderCopy decodeIntegerForKey:@"family"];
  }

  return v5;
}

@end