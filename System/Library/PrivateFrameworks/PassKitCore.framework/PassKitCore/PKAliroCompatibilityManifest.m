@interface PKAliroCompatibilityManifest
- (PKAliroCompatibilityManifest)initWithCoder:(id)a3;
- (PKAliroCompatibilityManifest)initWithSupportedBLEAdvertisingVersions:(id)a3 supportedBLEUWBProtocolVersions:(id)a4 supportedExpeditedTransactionProtocolVersions:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAliroCompatibilityManifest

- (PKAliroCompatibilityManifest)initWithSupportedBLEAdvertisingVersions:(id)a3 supportedBLEUWBProtocolVersions:(id)a4 supportedExpeditedTransactionProtocolVersions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKAliroCompatibilityManifest;
  v12 = [(PKAliroCompatibilityManifest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_supportedBLEAdvertisingVersions, a3);
    objc_storeStrong(&v13->_supportedBLEUWBProtocolVersions, a4);
    objc_storeStrong(&v13->_supportedExpeditedTransactionProtocolVersions, a5);
  }

  return v13;
}

- (PKAliroCompatibilityManifest)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"supportedBLEAdvertisingVersions"];
  v10 = [v5 decodeObjectOfClasses:v8 forKey:@"supportedBLEUWBProtocolVersions"];
  v11 = [v5 decodeObjectOfClasses:v8 forKey:@"supportedExpeditedTransactionProtocolVersions"];

  v12 = [(PKAliroCompatibilityManifest *)self initWithSupportedBLEAdvertisingVersions:v9 supportedBLEUWBProtocolVersions:v10 supportedExpeditedTransactionProtocolVersions:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  supportedBLEAdvertisingVersions = self->_supportedBLEAdvertisingVersions;
  v5 = a3;
  [v5 encodeObject:supportedBLEAdvertisingVersions forKey:@"supportedBLEAdvertisingVersions"];
  [v5 encodeObject:self->_supportedBLEUWBProtocolVersions forKey:@"supportedBLEUWBProtocolVersions"];
  [v5 encodeObject:self->_supportedExpeditedTransactionProtocolVersions forKey:@"supportedExpeditedTransactionProtocolVersions"];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<PKAliroCompatibilityManifest: %p; ", self];
  [v3 appendFormat:@"supportedBLEAdvertisingVersions: '%@'", self->_supportedBLEAdvertisingVersions];
  [v3 appendFormat:@"supportedBLEUWBProtocolVersions: '%@'", self->_supportedBLEUWBProtocolVersions];
  [v3 appendFormat:@"supportedExpeditedTransactionProtocolVersions: '%@'", self->_supportedExpeditedTransactionProtocolVersions];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

@end