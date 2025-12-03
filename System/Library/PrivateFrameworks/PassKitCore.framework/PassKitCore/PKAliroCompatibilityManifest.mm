@interface PKAliroCompatibilityManifest
- (PKAliroCompatibilityManifest)initWithCoder:(id)coder;
- (PKAliroCompatibilityManifest)initWithSupportedBLEAdvertisingVersions:(id)versions supportedBLEUWBProtocolVersions:(id)protocolVersions supportedExpeditedTransactionProtocolVersions:(id)transactionProtocolVersions;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAliroCompatibilityManifest

- (PKAliroCompatibilityManifest)initWithSupportedBLEAdvertisingVersions:(id)versions supportedBLEUWBProtocolVersions:(id)protocolVersions supportedExpeditedTransactionProtocolVersions:(id)transactionProtocolVersions
{
  versionsCopy = versions;
  protocolVersionsCopy = protocolVersions;
  transactionProtocolVersionsCopy = transactionProtocolVersions;
  v15.receiver = self;
  v15.super_class = PKAliroCompatibilityManifest;
  v12 = [(PKAliroCompatibilityManifest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_supportedBLEAdvertisingVersions, versions);
    objc_storeStrong(&v13->_supportedBLEUWBProtocolVersions, protocolVersions);
    objc_storeStrong(&v13->_supportedExpeditedTransactionProtocolVersions, transactionProtocolVersions);
  }

  return v13;
}

- (PKAliroCompatibilityManifest)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedBLEAdvertisingVersions"];
  v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedBLEUWBProtocolVersions"];
  v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedExpeditedTransactionProtocolVersions"];

  v12 = [(PKAliroCompatibilityManifest *)self initWithSupportedBLEAdvertisingVersions:v9 supportedBLEUWBProtocolVersions:v10 supportedExpeditedTransactionProtocolVersions:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  supportedBLEAdvertisingVersions = self->_supportedBLEAdvertisingVersions;
  coderCopy = coder;
  [coderCopy encodeObject:supportedBLEAdvertisingVersions forKey:@"supportedBLEAdvertisingVersions"];
  [coderCopy encodeObject:self->_supportedBLEUWBProtocolVersions forKey:@"supportedBLEUWBProtocolVersions"];
  [coderCopy encodeObject:self->_supportedExpeditedTransactionProtocolVersions forKey:@"supportedExpeditedTransactionProtocolVersions"];
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