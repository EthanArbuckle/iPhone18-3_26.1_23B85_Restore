@interface NTKBundleComplicationMigrationTypeLookup
- (NTKBundleComplicationMigrationTypeLookup)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKBundleComplicationMigrationTypeLookup

- (void)encodeWithCoder:(id)a3
{
  buildVersion = self->_buildVersion;
  v5 = a3;
  [v5 encodeObject:buildVersion forKey:@"buildVersion"];
  [v5 encodeObject:self->_dictionary forKey:@"dictionary"];
}

- (NTKBundleComplicationMigrationTypeLookup)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NTKBundleComplicationMigrationTypeLookup;
  v5 = [(NTKBundleComplicationMigrationTypeLookup *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v6;

    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v9;
  }

  return v5;
}

@end