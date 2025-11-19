@interface HealthAppLinkBuilder
- (HealthAppLinkBuilder)init;
- (HealthAppLinkBuilder)initWithHealthStore:(id)a3;
- (HealthAppLinkBuilder)initWithProfileIdentifier:(id)a3 source:(id)a4 useExternalURLScheme:(BOOL)a5;
@end

@implementation HealthAppLinkBuilder

- (HealthAppLinkBuilder)init
{
  v3 = [MEMORY[0x277CCD7C8] primaryProfile];
  v4 = [(HealthAppLinkBuilder *)self initWithProfileIdentifier:v3];

  return v4;
}

- (HealthAppLinkBuilder)initWithProfileIdentifier:(id)a3 source:(id)a4 useExternalURLScheme:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HealthAppLinkBuilder;
  v11 = [(HealthAppLinkBuilder *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_profileIdentifier, a3);
    objc_storeStrong(&v12->_source, a4);
    v12->_useExternalURLScheme = a5;
  }

  return v12;
}

- (HealthAppLinkBuilder)initWithHealthStore:(id)a3
{
  v4 = [a3 profileIdentifier];
  v5 = [(HealthAppLinkBuilder *)self initWithProfileIdentifier:v4 source:0 useExternalURLScheme:0];

  return v5;
}

@end