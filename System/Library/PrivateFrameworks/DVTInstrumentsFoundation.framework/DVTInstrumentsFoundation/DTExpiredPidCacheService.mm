@interface DTExpiredPidCacheService
+ (id)defaultCache;
+ (void)disableExpiredPidCaching;
- (DTExpiredPidCacheService)init;
- (id)allExpiredSignatures;
- (id)signatureForExpiredPid:(id)a3;
- (void)dealloc;
- (void)enableCaching:(BOOL)a3;
@end

@implementation DTExpiredPidCacheService

- (DTExpiredPidCacheService)init
{
  v5.receiver = self;
  v5.super_class = DTExpiredPidCacheService;
  v2 = [(XRExpiredPidCacheServiceProtected *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(XRExpiredPidCacheServiceProtected *)v2 _performOnCache:&unk_285A17E68];
  }

  return v3;
}

- (void)dealloc
{
  [(XRExpiredPidCacheServiceProtected *)self _performOnCache:&unk_285A17E88];
  v3.receiver = self;
  v3.super_class = DTExpiredPidCacheService;
  [(DTExpiredPidCacheService *)&v3 dealloc];
}

+ (void)disableExpiredPidCaching
{
  byte_27EE841D0 = 1;
  v2 = [a1 defaultCache];

  if (v2)
  {
    NSLog(&cfstr_PossibleRaceCo.isa);
  }
}

+ (id)defaultCache
{
  if (qword_27EE841D8 != -1)
  {
    sub_24802B904();
  }

  v3 = qword_27EE841E0;

  return v3;
}

- (id)signatureForExpiredPid:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_247F6AB9C;
  v15 = sub_247F6ABAC;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247F6AFDC;
  v8[3] = &unk_278EF1000;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(XRExpiredPidCacheServiceProtected *)self _performOnCache:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)allExpiredSignatures
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_247F6AB9C;
  v9 = sub_247F6ABAC;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F6B32C;
  v4[3] = &unk_278EF1028;
  v4[4] = &v5;
  [(XRExpiredPidCacheServiceProtected *)self _performOnCache:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)enableCaching:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247F6B3EC;
  v3[3] = &unk_278EF1048;
  v4 = a3;
  [(XRExpiredPidCacheServiceProtected *)self _performOnCache:v3];
}

@end