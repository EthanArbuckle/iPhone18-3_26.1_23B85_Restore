@interface IDSNGMFullDeviceIdentity
+ (id)identityWithAccess:(id)a3 usageIdentifier:(id)a4 error:(id *)a5;
+ (id)identityWithDataRepresentation:(id)a3 error:(id *)a4;
- (BOOL)eraseFromKeyChain:(id *)a3;
- (BOOL)shouldRollEncryptionIdentity;
- (BOOL)updateWithRegisteredTicket:(id)a3 error:(id *)a4;
- (id)batchSign:(id)a3 forType:(int64_t)a4 error:(id *)a5;
- (id)dataRepresentationWithError:(id *)a3;
- (id)keyRollingTicketWithError:(id *)a3;
- (id)publicDeviceIdentityWithError:(id *)a3;
- (id)sign:(id)a3 forType:(int64_t)a4 error:(id *)a5;
- (id)unsealMessage:(id)a3 signedByPublicIdentity:(id)a4 error:(id *)a5;
- (void)openPaddyMessage:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 signedByPublicIdentity:(id)a8 decryptionBlock:(id)a9;
- (void)unsealMessage:(id)a3 signedByPublicIdentity:(id)a4 decryptionBlock:(id)a5;
- (void)unsealMessageAndAttributes:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 signedByPublicIdentity:(id)a11 decryptionBlock:(id)a12;
- (void)unsealMessageAndAttributes:(id)a3 guid:(id)a4 signedByPublicIdentity:(id)a5 decryptionBlock:(id)a6;
- (void)unsealMessageAndAttributes:(id)a3 signedByPublicIdentity:(id)a4 decryptionBlock:(id)a5;
@end

@implementation IDSNGMFullDeviceIdentity

+ (id)identityWithAccess:(id)a3 usageIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = NSClassFromString(&cfstr_Ngmfulldevicei.isa);
  if (v9)
  {
    v10 = [(objc_class *)v9 identityWithAccess:v7 usageIdentifier:v8 error:a5];
  }

  else
  {
    v11 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1902C();
    }

    v10 = 0;
  }

  return v10;
}

+ (id)identityWithDataRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = NSClassFromString(&cfstr_Ngmfulldevicei.isa);
  if (v6)
  {
    v7 = [(objc_class *)v6 identityWithDataRepresentation:v5 error:a4];
  }

  else
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1902C();
    }

    v7 = 0;
  }

  return v7;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19060();
  }

  return 0;
}

- (id)publicDeviceIdentityWithError:(id *)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E190EC();
  }

  return 0;
}

- (BOOL)eraseFromKeyChain:(id *)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19178();
  }

  return 0;
}

- (id)unsealMessage:(id)a3 signedByPublicIdentity:(id)a4 error:(id *)a5
{
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19204();
  }

  return 0;
}

- (void)unsealMessage:(id)a3 signedByPublicIdentity:(id)a4 decryptionBlock:(id)a5
{
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19290();
  }
}

- (void)unsealMessageAndAttributes:(id)a3 signedByPublicIdentity:(id)a4 decryptionBlock:(id)a5
{
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1931C();
  }
}

- (void)unsealMessageAndAttributes:(id)a3 guid:(id)a4 signedByPublicIdentity:(id)a5 decryptionBlock:(id)a6
{
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E193A8();
  }
}

- (void)unsealMessageAndAttributes:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 signedByPublicIdentity:(id)a11 decryptionBlock:(id)a12
{
  v12 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19434();
  }
}

- (void)openPaddyMessage:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 signedByPublicIdentity:(id)a8 decryptionBlock:(id)a9
{
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E194C0();
  }
}

- (BOOL)shouldRollEncryptionIdentity
{
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1954C();
  }

  return 0;
}

- (id)keyRollingTicketWithError:(id *)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E195D8();
  }

  return 0;
}

- (BOOL)updateWithRegisteredTicket:(id)a3 error:(id *)a4
{
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19664();
  }

  return 0;
}

- (id)sign:(id)a3 forType:(int64_t)a4 error:(id *)a5
{
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E196F0();
  }

  return 0;
}

- (id)batchSign:(id)a3 forType:(int64_t)a4 error:(id *)a5
{
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1977C();
  }

  return 0;
}

@end