@interface CRPreflightHelper
+ (id)sharedInstance;
- (void)challengeStrongComponents:(id)a3 withReply:(id)a4;
- (void)issueRepairCert:(id)a3 withReply:(id)a4;
- (void)queryRepairDeltaWithReply:(id)a3;
- (void)sign:(id)a3 keyBlob:(id)a4 withReply:(id)a5;
- (void)verify:(id)a3 signature:(id)a4 keyBlob:(id)a5 withReply:(id)a6;
@end

@implementation CRPreflightHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CRPreflightHelper sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __35__CRPreflightHelper_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(CRPreflightHelper);

  return MEMORY[0x1EEE66BB8]();
}

- (void)queryRepairDeltaWithReply:(id)a3
{
  v6 = a3;
  v3 = objc_opt_new();
  v4 = v3;
  if (v3)
  {
    [v3 queryRepairDeltaWithReply:v6];
  }

  else if (v6)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corerepair" code:-81 userInfo:0];
    (*(v6 + 2))(v6, 0, 0, v5);
  }
}

- (void)issueRepairCert:(id)a3 withReply:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    [v6 issueRepairCert:v9 withReply:v5];
  }

  else if (v5)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corerepair" code:-81 userInfo:0];
    (*(v5 + 2))(v5, 0, 0, 0, v8);
  }
}

- (void)challengeStrongComponents:(id)a3 withReply:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    [v6 challengeStrongComponents:v9 withReply:v5];
  }

  else if (v5)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corerepair" code:-81 userInfo:0];
    (*(v5 + 2))(v5, 0, 0, v8);
  }
}

- (void)sign:(id)a3 keyBlob:(id)a4 withReply:(id)a5
{
  v11 = a5;
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [v9 sign:v8 keyBlob:v7];

  if (v11)
  {
    v11[2](v11, v10);
  }
}

- (void)verify:(id)a3 signature:(id)a4 keyBlob:(id)a5 withReply:(id)a6
{
  v15 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_opt_new();
  v13 = [v12 verify:v11 signature:v10 keyBlob:v9];

  v14 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v13);
    v14 = v15;
  }
}

@end