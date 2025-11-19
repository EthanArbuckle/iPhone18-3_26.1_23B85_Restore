@interface IDSNGMPublicDeviceIdentity
+ (BOOL)shouldMarkForStateReset:(id)a3;
+ (IDSNGMPublicDeviceIdentity)identityWithDataRepresentation:(id)a3 error:(id *)a4;
+ (IDSNGMPublicDeviceIdentity)identityWithIdentityData:(id)a3 prekeyData:(id)a4 error:(id *)a5;
- (BOOL)isIdenticalIdentityTo:(id)a3;
- (BOOL)isValidSignature:(id)a3 forMessage:(id)a4 forType:(int64_t)a5 error:(id *)a6;
- (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 ourSigningIdentity:(id)a5 theirURI:(id)a6 theirPushToken:(id)a7;
- (id)dataRepresentationWithError:(id *)a3;
- (id)identityData;
- (id)prekeyData;
- (id)sealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 forceSizeOptimizations:(BOOL)a11 resetState:(BOOL)a12 encryptedAttributes:(id)a13 signedByFullIdentity:(id)a14 errors:(id *)a15;
- (id)sealMessage:(id)a3 forceSizeOptimizations:(BOOL)a4 resetState:(BOOL)a5 encryptedAttributes:(id)a6 signedByFullIdentity:(id)a7 errors:(id *)a8;
- (id)sealMessage:(id)a3 signedByFullIdentity:(id)a4 error:(id *)a5;
- (id)sealMessage:(id)a3 withEncryptedAttributes:(id)a4 signedByFullIdentity:(id)a5 error:(id *)a6;
- (id)sealPaddyMessage:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 signedByFullIdentity:(id)a8 error:(id *)a9;
@end

@implementation IDSNGMPublicDeviceIdentity

+ (IDSNGMPublicDeviceIdentity)identityWithDataRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = NSClassFromString(&cfstr_Ngmpublicdevic.isa);
  if (v6)
  {
    v7 = [(objc_class *)v6 identityWithDataRepresentation:v5 error:a4];
  }

  else
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19808();
    }

    v7 = 0;
  }

  return v7;
}

+ (IDSNGMPublicDeviceIdentity)identityWithIdentityData:(id)a3 prekeyData:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = NSClassFromString(&cfstr_Ngmpublicdevic.isa);
  if (v9)
  {
    v10 = [(objc_class *)v9 identityWithIdentityData:v7 prekeyData:v8 error:a5];
  }

  else
  {
    v11 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19808();
    }

    v10 = 0;
  }

  return v10;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1983C();
  }

  return 0;
}

- (id)identityData
{
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E198C8();
  }

  return 0;
}

- (BOOL)isIdenticalIdentityTo:(id)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19954();
  }

  return 0;
}

- (id)prekeyData
{
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E199E0();
  }

  return 0;
}

- (id)sealMessage:(id)a3 signedByFullIdentity:(id)a4 error:(id *)a5
{
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19A6C();
  }

  return 0;
}

- (id)sealMessage:(id)a3 withEncryptedAttributes:(id)a4 signedByFullIdentity:(id)a5 error:(id *)a6
{
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19AF8();
  }

  return 0;
}

- (id)sealMessage:(id)a3 forceSizeOptimizations:(BOOL)a4 resetState:(BOOL)a5 encryptedAttributes:(id)a6 signedByFullIdentity:(id)a7 errors:(id *)a8
{
  v8 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19B84();
  }

  return 0;
}

- (id)sealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 forceSizeOptimizations:(BOOL)a11 resetState:(BOOL)a12 encryptedAttributes:(id)a13 signedByFullIdentity:(id)a14 errors:(id *)a15
{
  v15 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19C10();
  }

  return 0;
}

- (id)sealPaddyMessage:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 signedByFullIdentity:(id)a8 error:(id *)a9
{
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19C9C();
  }

  return 0;
}

- (BOOL)isValidSignature:(id)a3 forMessage:(id)a4 forType:(int64_t)a5 error:(id *)a6
{
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19D28();
  }

  return 0;
}

- (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 ourSigningIdentity:(id)a5 theirURI:(id)a6 theirPushToken:(id)a7
{
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19DB4();
  }

  return 0;
}

+ (BOOL)shouldMarkForStateReset:(id)a3
{
  v3 = a3;
  v4 = NSClassFromString(&cfstr_Ngmpublicdevic.isa);
  if (v4)
  {
    v5 = [(objc_class *)v4 shouldMarkForStateReset:v3];
  }

  else
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19808();
    }

    v5 = 0;
  }

  return v5;
}

@end