@interface CKPIETFKeyBlinding
+ (BOOL)isValidWithSignature:(id)signature for:(id)for with:(__SecKey *)with context:(id)context;
+ (__SecKey)secKeyFromCompressedRepresentation:(id)representation;
+ (id)blindSign:(id)sign blindedBy:(__SecKey *)by with:(__SecKey *)with context:(id)context error:(id *)error;
+ (id)compressedRepresentationFromSecKey:(__SecKey *)key;
+ (id)privateScalarFromSecKey:(__SecKey *)key;
- (_TtC16CryptoKitPrivate18CKPIETFKeyBlinding)init;
@end

@implementation CKPIETFKeyBlinding

+ (id)privateScalarFromSecKey:(__SecKey *)key
{
  keyCopy = key;
  _s16CryptoKitPrivate18CKPIETFKeyBlindingC23privateScalarFromSecKeyy10Foundation4DataVSgSo0iJ3RefaFZ_0(keyCopy);
  v5 = v4;
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1C0D7830C();
    sub_1C0D13830(v5, v7);
    v8 = v9;
  }

  return v8;
}

+ (BOOL)isValidWithSignature:(id)signature for:(id)for with:(__SecKey *)with context:(id)context
{
  signatureCopy = signature;
  forCopy = for;
  withCopy = with;
  contextCopy = context;
  v13 = sub_1C0D7832C();
  v15 = v14;

  v16 = sub_1C0D7832C();
  v18 = v17;

  LOBYTE(forCopy) = _s16CryptoKitPrivate18CKPIETFKeyBlindingC7isValid9signature3for4with7contextSb10Foundation4DataV_AKSo9SecKeyRefaSo6NSDataCtFZ_0(v13, v15, v16, v18, withCopy);
  sub_1C0CF448C(v16, v18);
  sub_1C0CF448C(v13, v15);

  return forCopy & 1;
}

+ (id)blindSign:(id)sign blindedBy:(__SecKey *)by with:(__SecKey *)with context:(id)context error:(id *)error
{
  signCopy = sign;
  byCopy = by;
  withCopy = with;
  contextCopy = context;
  v14 = sub_1C0D7832C();
  v16 = v15;

  v17 = sub_1C0D16244(v14, v16, byCopy, withCopy, contextCopy);
  sub_1C0CF448C(v14, v16);

  return v17;
}

+ (id)compressedRepresentationFromSecKey:(__SecKey *)key
{
  keyCopy = key;
  v4 = _s16CryptoKitPrivate18CKPIETFKeyBlindingC28compressedRepresentationFrom6secKeySo6NSDataCSgSo03SecJ3Refa_tFZ_0(keyCopy);

  return v4;
}

+ (__SecKey)secKeyFromCompressedRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = _s16CryptoKitPrivate18CKPIETFKeyBlindingC10secKeyFrom24compressedRepresentationSo03SecG3RefaSgSo6NSDataC_tFZ_0();

  return v4;
}

- (_TtC16CryptoKitPrivate18CKPIETFKeyBlinding)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKPIETFKeyBlinding();
  return [(CKPIETFKeyBlinding *)&v3 init];
}

@end