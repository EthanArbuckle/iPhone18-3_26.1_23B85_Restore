@interface FSModuleInstance
+ (id)instanceWithExtensionIdentity:(id)identity;
- (BOOL)isEqual:(id)equal;
- (FSModuleInstance)initWithExtensionIdentity:(id)identity;
- (NSDictionary)entitlements;
- (NSDictionary)extensionDictionary;
- (NSDictionary)sdkDictionary;
- (NSString)extensionPointIdentifier;
- (NSURL)containingURL;
- (id)entitlementNamed:(id)named ofClass:(Class)class;
@end

@implementation FSModuleInstance

- (FSModuleInstance)initWithExtensionIdentity:(id)identity
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = FSModuleInstance;
  v5 = [(FSModuleInstance *)&v13 init];
  if (v5)
  {
    applicationExtensionRecord = [identityCopy applicationExtensionRecord];
    record = v5->_record;
    v5->_record = applicationExtensionRecord;

    v8 = [FSModuleIdentity alloc];
    identity = v5->_identity;
    v5->_identity = v8;

    v10 = [(FSModuleIdentity *)v5->_identity initWithApplicationExtensionRecord:v5->_record isEnabled:1];
    v11 = v5->_identity;
    v5->_identity = v10;
  }

  return v5;
}

+ (id)instanceWithExtensionIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[self alloc] initWithExtensionIdentity:identityCopy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      identity = [(FSModuleInstance *)self identity];
      attributes = [identity attributes];
      identity2 = [(FSModuleInstance *)equalCopy identity];
      attributes2 = [identity2 attributes];
      v6 = [attributes isEqual:attributes2];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)extensionPointIdentifier
{
  extensionPointRecord = [(LSApplicationExtensionRecord *)self->_record extensionPointRecord];
  identifier = [extensionPointRecord identifier];

  return identifier;
}

- (NSURL)containingURL
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self->_record containingBundleRecord];
  v3 = [containingBundleRecord URL];

  return v3;
}

- (NSDictionary)sdkDictionary
{
  extensionPointRecord = [(LSApplicationExtensionRecord *)self->_record extensionPointRecord];
  sDKDictionary = [extensionPointRecord SDKDictionary];

  if (objc_opt_respondsToSelector())
  {
    _expensiveDictionaryRepresentation = [sDKDictionary _expensiveDictionaryRepresentation];
  }

  else
  {
    _expensiveDictionaryRepresentation = MEMORY[0x277CBEC10];
  }

  return _expensiveDictionaryRepresentation;
}

- (NSDictionary)extensionDictionary
{
  infoDictionary = [(LSApplicationExtensionRecord *)self->_record infoDictionary];
  v3 = [infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];

  return v3;
}

- (NSDictionary)entitlements
{
  entitlements = [(LSApplicationExtensionRecord *)self->_record entitlements];
  if (objc_opt_respondsToSelector())
  {
    _expensiveDictionaryRepresentation = [entitlements _expensiveDictionaryRepresentation];
  }

  else
  {
    _expensiveDictionaryRepresentation = MEMORY[0x277CBEC10];
  }

  return _expensiveDictionaryRepresentation;
}

- (id)entitlementNamed:(id)named ofClass:(Class)class
{
  namedCopy = named;
  record = [(FSModuleInstance *)self record];
  entitlements = [record entitlements];
  v9 = [entitlements objectForKey:namedCopy ofClass:class];

  return v9;
}

@end