@interface IDSNGMFullDeviceIdentity
+ (id)identityWithAccess:(id)access usageIdentifier:(id)identifier error:(id *)error;
+ (id)identityWithDataRepresentation:(id)representation error:(id *)error;
- (BOOL)eraseFromKeyChain:(id *)chain;
- (BOOL)shouldRollEncryptionIdentity;
- (BOOL)updateWithRegisteredTicket:(id)ticket error:(id *)error;
- (id)batchSign:(id)sign forType:(int64_t)type error:(id *)error;
- (id)dataRepresentationWithError:(id *)error;
- (id)keyRollingTicketWithError:(id *)error;
- (id)publicDeviceIdentityWithError:(id *)error;
- (id)sign:(id)sign forType:(int64_t)type error:(id *)error;
- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error;
- (void)openPaddyMessage:(id)message sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
- (void)unsealMessage:(id)message signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
- (void)unsealMessageAndAttributes:(id)attributes authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1 decryptionBlock:(id)self2;
- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
- (void)unsealMessageAndAttributes:(id)attributes signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
@end

@implementation IDSNGMFullDeviceIdentity

+ (id)identityWithAccess:(id)access usageIdentifier:(id)identifier error:(id *)error
{
  accessCopy = access;
  identifierCopy = identifier;
  v9 = NSClassFromString(&cfstr_Ngmfulldevicei.isa);
  if (v9)
  {
    v10 = [(objc_class *)v9 identityWithAccess:accessCopy usageIdentifier:identifierCopy error:error];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1902C();
    }

    v10 = 0;
  }

  return v10;
}

+ (id)identityWithDataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = NSClassFromString(&cfstr_Ngmfulldevicei.isa);
  if (v6)
  {
    v7 = [(objc_class *)v6 identityWithDataRepresentation:representationCopy error:error];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1902C();
    }

    v7 = 0;
  }

  return v7;
}

- (id)dataRepresentationWithError:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19060();
  }

  return 0;
}

- (id)publicDeviceIdentityWithError:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E190EC();
  }

  return 0;
}

- (BOOL)eraseFromKeyChain:(id *)chain
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19178();
  }

  return 0;
}

- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19204();
  }

  return 0;
}

- (void)unsealMessage:(id)message signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19290();
  }
}

- (void)unsealMessageAndAttributes:(id)attributes signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1931C();
  }
}

- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E193A8();
  }
}

- (void)unsealMessageAndAttributes:(id)attributes authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1 decryptionBlock:(id)self2
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19434();
  }
}

- (void)openPaddyMessage:(id)message sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E194C0();
  }
}

- (BOOL)shouldRollEncryptionIdentity
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1954C();
  }

  return 0;
}

- (id)keyRollingTicketWithError:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E195D8();
  }

  return 0;
}

- (BOOL)updateWithRegisteredTicket:(id)ticket error:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E19664();
  }

  return 0;
}

- (id)sign:(id)sign forType:(int64_t)type error:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E196F0();
  }

  return 0;
}

- (id)batchSign:(id)sign forType:(int64_t)type error:(id *)error
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1977C();
  }

  return 0;
}

@end