@interface NTKBundleComplicationMigrationTypeLookup
- (NTKBundleComplicationMigrationTypeLookup)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKBundleComplicationMigrationTypeLookup

- (void)encodeWithCoder:(id)coder
{
  buildVersion = self->_buildVersion;
  coderCopy = coder;
  [coderCopy encodeObject:buildVersion forKey:@"buildVersion"];
  [coderCopy encodeObject:self->_dictionary forKey:@"dictionary"];
}

- (NTKBundleComplicationMigrationTypeLookup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NTKBundleComplicationMigrationTypeLookup;
  v5 = [(NTKBundleComplicationMigrationTypeLookup *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v9;
  }

  return v5;
}

@end