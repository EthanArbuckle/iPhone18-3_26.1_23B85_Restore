@interface HAP2AccessoryServerSecureTransportBaseDefaultEncryptedSession
- (id)decryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
- (id)encryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
@end

@implementation HAP2AccessoryServerSecureTransportBaseDefaultEncryptedSession

- (id)decryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"decryptData:additionalAuthenticatedData not supported on HAP2AccessoryServerSecureTransportBase" reason:0 suggestion:0 underlyingError:0 marker:208];
  }

  return 0;
}

- (id)encryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"encryptData:additionalAuthenticatedData not supported on HAP2AccessoryServerSecureTransportBase" reason:0 suggestion:0 underlyingError:0 marker:207];
  }

  return 0;
}

@end