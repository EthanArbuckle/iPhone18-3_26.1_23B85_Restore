@interface HealthAppLinkBuilder
- (HealthAppLinkBuilder)init;
- (HealthAppLinkBuilder)initWithHealthStore:(id)store;
- (HealthAppLinkBuilder)initWithProfileIdentifier:(id)identifier source:(id)source useExternalURLScheme:(BOOL)scheme;
@end

@implementation HealthAppLinkBuilder

- (HealthAppLinkBuilder)init
{
  primaryProfile = [MEMORY[0x277CCD7C8] primaryProfile];
  v4 = [(HealthAppLinkBuilder *)self initWithProfileIdentifier:primaryProfile];

  return v4;
}

- (HealthAppLinkBuilder)initWithProfileIdentifier:(id)identifier source:(id)source useExternalURLScheme:(BOOL)scheme
{
  identifierCopy = identifier;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HealthAppLinkBuilder;
  v11 = [(HealthAppLinkBuilder *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_profileIdentifier, identifier);
    objc_storeStrong(&v12->_source, source);
    v12->_useExternalURLScheme = scheme;
  }

  return v12;
}

- (HealthAppLinkBuilder)initWithHealthStore:(id)store
{
  profileIdentifier = [store profileIdentifier];
  v5 = [(HealthAppLinkBuilder *)self initWithProfileIdentifier:profileIdentifier source:0 useExternalURLScheme:0];

  return v5;
}

@end