@interface FSModuleInstance
+ (id)instanceWithExtensionIdentity:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FSModuleInstance)initWithExtensionIdentity:(id)a3;
- (NSDictionary)entitlements;
- (NSDictionary)extensionDictionary;
- (NSDictionary)sdkDictionary;
- (NSString)extensionPointIdentifier;
- (NSURL)containingURL;
- (id)entitlementNamed:(id)a3 ofClass:(Class)a4;
@end

@implementation FSModuleInstance

- (FSModuleInstance)initWithExtensionIdentity:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FSModuleInstance;
  v5 = [(FSModuleInstance *)&v13 init];
  if (v5)
  {
    v6 = [v4 applicationExtensionRecord];
    record = v5->_record;
    v5->_record = v6;

    v8 = [FSModuleIdentity alloc];
    identity = v5->_identity;
    v5->_identity = v8;

    v10 = [(FSModuleIdentity *)v5->_identity initWithApplicationExtensionRecord:v5->_record isEnabled:1];
    v11 = v5->_identity;
    v5->_identity = v10;
  }

  return v5;
}

+ (id)instanceWithExtensionIdentity:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithExtensionIdentity:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(FSModuleInstance *)self identity];
      v8 = [v7 attributes];
      v9 = [(FSModuleInstance *)v4 identity];
      v10 = [v9 attributes];
      v6 = [v8 isEqual:v10];
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
  v2 = [(LSApplicationExtensionRecord *)self->_record extensionPointRecord];
  v3 = [v2 identifier];

  return v3;
}

- (NSURL)containingURL
{
  v2 = [(LSApplicationExtensionRecord *)self->_record containingBundleRecord];
  v3 = [v2 URL];

  return v3;
}

- (NSDictionary)sdkDictionary
{
  v2 = [(LSApplicationExtensionRecord *)self->_record extensionPointRecord];
  v3 = [v2 SDKDictionary];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _expensiveDictionaryRepresentation];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (NSDictionary)extensionDictionary
{
  v2 = [(LSApplicationExtensionRecord *)self->_record infoDictionary];
  v3 = [v2 objectForKey:@"NSExtension" ofClass:objc_opt_class()];

  return v3;
}

- (NSDictionary)entitlements
{
  v2 = [(LSApplicationExtensionRecord *)self->_record entitlements];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 _expensiveDictionaryRepresentation];
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (id)entitlementNamed:(id)a3 ofClass:(Class)a4
{
  v6 = a3;
  v7 = [(FSModuleInstance *)self record];
  v8 = [v7 entitlements];
  v9 = [v8 objectForKey:v6 ofClass:a4];

  return v9;
}

@end