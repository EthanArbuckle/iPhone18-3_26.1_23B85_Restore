@interface CRPreflightHelper
+ (id)sharedInstance;
- (void)challengeStrongComponents:(id)components withReply:(id)reply;
- (void)issueRepairCert:(id)cert withReply:(id)reply;
- (void)queryRepairDeltaWithReply:(id)reply;
- (void)sign:(id)sign keyBlob:(id)blob withReply:(id)reply;
- (void)verify:(id)verify signature:(id)signature keyBlob:(id)blob withReply:(id)reply;
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

- (void)queryRepairDeltaWithReply:(id)reply
{
  replyCopy = reply;
  v3 = objc_opt_new();
  v4 = v3;
  if (v3)
  {
    [v3 queryRepairDeltaWithReply:replyCopy];
  }

  else if (replyCopy)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corerepair" code:-81 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, v5);
  }
}

- (void)issueRepairCert:(id)cert withReply:(id)reply
{
  certCopy = cert;
  replyCopy = reply;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    [v6 issueRepairCert:certCopy withReply:replyCopy];
  }

  else if (replyCopy)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corerepair" code:-81 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v8);
  }
}

- (void)challengeStrongComponents:(id)components withReply:(id)reply
{
  componentsCopy = components;
  replyCopy = reply;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    [v6 challengeStrongComponents:componentsCopy withReply:replyCopy];
  }

  else if (replyCopy)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corerepair" code:-81 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, v8);
  }
}

- (void)sign:(id)sign keyBlob:(id)blob withReply:(id)reply
{
  replyCopy = reply;
  blobCopy = blob;
  signCopy = sign;
  v9 = objc_opt_new();
  v10 = [v9 sign:signCopy keyBlob:blobCopy];

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v10);
  }
}

- (void)verify:(id)verify signature:(id)signature keyBlob:(id)blob withReply:(id)reply
{
  replyCopy = reply;
  blobCopy = blob;
  signatureCopy = signature;
  verifyCopy = verify;
  v12 = objc_opt_new();
  v13 = [v12 verify:verifyCopy signature:signatureCopy keyBlob:blobCopy];

  v14 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, v13);
    v14 = replyCopy;
  }
}

@end