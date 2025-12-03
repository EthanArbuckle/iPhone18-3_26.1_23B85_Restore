@interface CKPATKeyBlinding
+ (__SecKey)blindPublicKey:(__SecKey *)key withPrivateKey:(__SecKey *)privateKey context:(id)context error:(id *)error;
+ (__SecKey)secKeyFromCompressedRepresentation:(id)representation;
+ (__SecKey)unblindPublicKey:(__SecKey *)key withPrivateKey:(__SecKey *)privateKey context:(id)context error:(id *)error;
@end

@implementation CKPATKeyBlinding

+ (__SecKey)secKeyFromCompressedRepresentation:(id)representation
{
  v3 = [_TtC16CryptoKitPrivate18CKPIETFKeyBlinding secKeyFromCompressedRepresentation:representation];
  CFRetain(v3);
  return v3;
}

+ (__SecKey)blindPublicKey:(__SecKey *)key withPrivateKey:(__SecKey *)privateKey context:(id)context error:(id *)error
{
  v6 = [_TtC16CryptoKitPrivate18CKPIETFKeyBlinding blindPublicKeyWithPublicKey:key with:privateKey context:context error:error];
  CFRetain(v6);
  return v6;
}

+ (__SecKey)unblindPublicKey:(__SecKey *)key withPrivateKey:(__SecKey *)privateKey context:(id)context error:(id *)error
{
  v6 = [_TtC16CryptoKitPrivate18CKPIETFKeyBlinding unblindPublicKey:key with:privateKey context:context error:error];
  CFRetain(v6);
  return v6;
}

@end