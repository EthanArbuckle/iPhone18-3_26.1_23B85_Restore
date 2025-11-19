@interface ML3DatabasePrivacyContext
+ (id)sharedContext;
+ (void)logDatabasePrivacyAccessWithAuditToken:(id *)a3;
- (ML3DatabasePrivacyContext)initWithAuditToken:(id *)a3;
- (ML3DatabasePrivacyContext)initWithClientIdentity:(id)a3;
- (ML3DatabasePrivacyContext)initWithCoder:(id)a3;
- (id)_initWithPAApplication:(id)a3;
- (void)logDatabasePrivacyAccess;
@end

@implementation ML3DatabasePrivacyContext

- (void)logDatabasePrivacyAccess
{
  if (self->_clientApplication)
  {
    v3 = [MEMORY[0x277D41260] sharedInstance];
    if ([v3 loggingEnabled])
    {
      v4 = objc_alloc(MEMORY[0x277D41288]);
      v5 = [v4 initWithAccessor:self->_clientApplication forService:*MEMORY[0x277D6C1A0]];
      [v3 log:v5];
    }
  }

  greenTeaLogger = self->_greenTeaLogger;

  [(ML3GreenTeaLogger *)greenTeaLogger logAccess];
}

- (ML3DatabasePrivacyContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ML3DatabasePrivacyContextClientApplicationsKey"];

  v6 = [(ML3DatabasePrivacyContext *)self _initWithPAApplication:v5];
  return v6;
}

- (id)_initWithPAApplication:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ML3DatabasePrivacyContext;
  v5 = [(ML3DatabasePrivacyContext *)&v17 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
      clientApplication = v5->_clientApplication;
      v5->_clientApplication = v6;
    }

    else
    {
      v8 = MEMORY[0x277D41270];
      clientApplication = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [clientApplication bundleIdentifier];
      v10 = [v8 applicationWithBundleID:v9];
      v11 = v5->_clientApplication;
      v5->_clientApplication = v10;
    }

    v12 = [ML3GreenTeaLogger alloc];
    v13 = [(PAApplication *)v5->_clientApplication bundleID];
    v14 = [(ML3GreenTeaLogger *)v12 initWithAccessorName:v13];
    greenTeaLogger = v5->_greenTeaLogger;
    v5->_greenTeaLogger = v14;
  }

  return v5;
}

- (ML3DatabasePrivacyContext)initWithAuditToken:(id *)a3
{
  v5 = objc_alloc(MEMORY[0x277D41270]);
  v6 = *&a3->var0[4];
  v10[0] = *a3->var0;
  v10[1] = v6;
  v7 = [v5 initWithAuditToken:v10];
  v8 = [(ML3DatabasePrivacyContext *)self _initWithPAApplication:v7];

  return v8;
}

- (ML3DatabasePrivacyContext)initWithClientIdentity:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277D41270];
    v5 = a3;
    v6 = [[v4 alloc] initWithTCCIdentity:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ML3DatabasePrivacyContext *)self _initWithPAApplication:v6];

  return v7;
}

+ (id)sharedContext
{
  if (sharedContext_onceToken != -1)
  {
    dispatch_once(&sharedContext_onceToken, &__block_literal_global_1447);
  }

  v3 = sharedContext___sharedContext;

  return v3;
}

uint64_t __42__ML3DatabasePrivacyContext_sharedContext__block_invoke()
{
  sharedContext___sharedContext = objc_alloc_init(ML3DatabasePrivacyContext);

  return MEMORY[0x2821F96F8]();
}

+ (void)logDatabasePrivacyAccessWithAuditToken:(id *)a3
{
  v4 = *&a3->var0[4];
  v10 = *a3->var0;
  v11 = v4;
  v5 = MSVBundleIDForAuditToken();
  [ML3GreenTeaLogger logOnceForAccessor:v5, v10, v11];
  v6 = [MEMORY[0x277D41260] sharedInstance];
  if ([v6 loggingEnabled])
  {
    v7 = *MEMORY[0x277D6C1A0];
    v8 = *&a3->var0[4];
    v10 = *a3->var0;
    v11 = v8;
    v9 = [MEMORY[0x277D41288] accessWithAuditToken:&v10 forService:v7];
    [v6 log:v9];
  }
}

@end