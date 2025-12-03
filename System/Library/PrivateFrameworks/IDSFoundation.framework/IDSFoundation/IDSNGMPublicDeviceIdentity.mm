@interface IDSNGMPublicDeviceIdentity
+ (BOOL)shouldMarkForStateReset:(id)reset;
+ (IDSNGMPublicDeviceIdentity)identityWithDataRepresentation:(id)representation error:(id *)error;
+ (IDSNGMPublicDeviceIdentity)identityWithIdentityData:(id)data prekeyData:(id)prekeyData error:(id *)error;
- (BOOL)isIdenticalIdentityTo:(id)to;
- (BOOL)isValidSignature:(id)signature forMessage:(id)message forType:(int64_t)type error:(id *)error;
- (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token ourSigningIdentity:(id)identity theirURI:(id)rI theirPushToken:(id)pushToken;
- (id)dataRepresentationWithError:(id *)error;
- (id)identityData;
- (id)prekeyData;
- (id)sealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 forceSizeOptimizations:(BOOL)self1 resetState:(BOOL)self2 encryptedAttributes:(id)self3 signedByFullIdentity:(id)self4 errors:(id *)self5;
- (id)sealMessage:(id)message forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state encryptedAttributes:(id)attributes signedByFullIdentity:(id)identity errors:(id *)errors;
- (id)sealMessage:(id)message signedByFullIdentity:(id)identity error:(id *)error;
- (id)sealMessage:(id)message withEncryptedAttributes:(id)attributes signedByFullIdentity:(id)identity error:(id *)error;
- (id)sealPaddyMessage:(id)message sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByFullIdentity:(id)identity error:(id *)error;
@end

@implementation IDSNGMPublicDeviceIdentity

+ (IDSNGMPublicDeviceIdentity)identityWithDataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = NSClassFromString(&cfstr_Ngmpublicdevic.isa);
  if (v6)
  {
    v7 = [(objc_class *)v6 identityWithDataRepresentation:representationCopy error:error];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19808();
    }

    v7 = 0;
  }

  return v7;
}

+ (IDSNGMPublicDeviceIdentity)identityWithIdentityData:(id)data prekeyData:(id)prekeyData error:(id *)error
{
  dataCopy = data;
  prekeyDataCopy = prekeyData;
  v9 = NSClassFromString(&cfstr_Ngmpublicdevic.isa);
  if (v9)
  {
    v10 = [(objc_class *)v9 identityWithIdentityData:dataCopy prekeyData:prekeyDataCopy error:error];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19808();
    }

    v10 = 0;
  }

  return v10;
}

- (id)dataRepresentationWithError:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1983C();
  }

  return 0;
}

- (id)identityData
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E198C8();
  }

  return 0;
}

- (BOOL)isIdenticalIdentityTo:(id)to
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19954();
  }

  return 0;
}

- (id)prekeyData
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E199E0();
  }

  return 0;
}

- (id)sealMessage:(id)message signedByFullIdentity:(id)identity error:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19A6C();
  }

  return 0;
}

- (id)sealMessage:(id)message withEncryptedAttributes:(id)attributes signedByFullIdentity:(id)identity error:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19AF8();
  }

  return 0;
}

- (id)sealMessage:(id)message forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state encryptedAttributes:(id)attributes signedByFullIdentity:(id)identity errors:(id *)errors
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19B84();
  }

  return 0;
}

- (id)sealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 forceSizeOptimizations:(BOOL)self1 resetState:(BOOL)self2 encryptedAttributes:(id)self3 signedByFullIdentity:(id)self4 errors:(id *)self5
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19C10();
  }

  return 0;
}

- (id)sealPaddyMessage:(id)message sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByFullIdentity:(id)identity error:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19C9C();
  }

  return 0;
}

- (BOOL)isValidSignature:(id)signature forMessage:(id)message forType:(int64_t)type error:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19D28();
  }

  return 0;
}

- (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token ourSigningIdentity:(id)identity theirURI:(id)rI theirPushToken:(id)pushToken
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19DB4();
  }

  return 0;
}

+ (BOOL)shouldMarkForStateReset:(id)reset
{
  resetCopy = reset;
  v4 = NSClassFromString(&cfstr_Ngmpublicdevic.isa);
  if (v4)
  {
    v5 = [(objc_class *)v4 shouldMarkForStateReset:resetCopy];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19808();
    }

    v5 = 0;
  }

  return v5;
}

@end