@interface HAP2AccessoryServerSecureTransportBaseDefaultEncryptedSession
- (id)decryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5;
- (id)encryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5;
@end

@implementation HAP2AccessoryServerSecureTransportBaseDefaultEncryptedSession

- (id)decryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"decryptData:additionalAuthenticatedData not supported on HAP2AccessoryServerSecureTransportBase" reason:0 suggestion:0 underlyingError:0 marker:208];
  }

  return 0;
}

- (id)encryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"encryptData:additionalAuthenticatedData not supported on HAP2AccessoryServerSecureTransportBase" reason:0 suggestion:0 underlyingError:0 marker:207];
  }

  return 0;
}

@end