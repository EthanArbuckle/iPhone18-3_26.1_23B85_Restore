@interface CKPATKeyBlinding
+ (__SecKey)blindPublicKey:(__SecKey *)a3 withPrivateKey:(__SecKey *)a4 context:(id)a5 error:(id *)a6;
+ (__SecKey)secKeyFromCompressedRepresentation:(id)a3;
+ (__SecKey)unblindPublicKey:(__SecKey *)a3 withPrivateKey:(__SecKey *)a4 context:(id)a5 error:(id *)a6;
@end

@implementation CKPATKeyBlinding

+ (__SecKey)secKeyFromCompressedRepresentation:(id)a3
{
  v3 = [_TtC16CryptoKitPrivate18CKPIETFKeyBlinding secKeyFromCompressedRepresentation:a3];
  CFRetain(v3);
  return v3;
}

+ (__SecKey)blindPublicKey:(__SecKey *)a3 withPrivateKey:(__SecKey *)a4 context:(id)a5 error:(id *)a6
{
  v6 = [_TtC16CryptoKitPrivate18CKPIETFKeyBlinding blindPublicKeyWithPublicKey:a3 with:a4 context:a5 error:a6];
  CFRetain(v6);
  return v6;
}

+ (__SecKey)unblindPublicKey:(__SecKey *)a3 withPrivateKey:(__SecKey *)a4 context:(id)a5 error:(id *)a6
{
  v6 = [_TtC16CryptoKitPrivate18CKPIETFKeyBlinding unblindPublicKey:a3 with:a4 context:a5 error:a6];
  CFRetain(v6);
  return v6;
}

@end