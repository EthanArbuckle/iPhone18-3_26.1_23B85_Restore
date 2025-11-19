@interface CKPIETFKeyBlinding
+ (BOOL)isValidWithSignature:(id)a3 for:(id)a4 with:(__SecKey *)a5 context:(id)a6;
+ (__SecKey)secKeyFromCompressedRepresentation:(id)a3;
+ (id)blindSign:(id)a3 blindedBy:(__SecKey *)a4 with:(__SecKey *)a5 context:(id)a6 error:(id *)a7;
+ (id)compressedRepresentationFromSecKey:(__SecKey *)a3;
+ (id)privateScalarFromSecKey:(__SecKey *)a3;
- (_TtC16CryptoKitPrivate18CKPIETFKeyBlinding)init;
@end

@implementation CKPIETFKeyBlinding

+ (id)privateScalarFromSecKey:(__SecKey *)a3
{
  v3 = a3;
  _s16CryptoKitPrivate18CKPIETFKeyBlindingC23privateScalarFromSecKeyy10Foundation4DataVSgSo0iJ3RefaFZ_0(v3);
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

+ (BOOL)isValidWithSignature:(id)a3 for:(id)a4 with:(__SecKey *)a5 context:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_1C0D7832C();
  v15 = v14;

  v16 = sub_1C0D7832C();
  v18 = v17;

  LOBYTE(v10) = _s16CryptoKitPrivate18CKPIETFKeyBlindingC7isValid9signature3for4with7contextSb10Foundation4DataV_AKSo9SecKeyRefaSo6NSDataCtFZ_0(v13, v15, v16, v18, v11);
  sub_1C0CF448C(v16, v18);
  sub_1C0CF448C(v13, v15);

  return v10 & 1;
}

+ (id)blindSign:(id)a3 blindedBy:(__SecKey *)a4 with:(__SecKey *)a5 context:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_1C0D7832C();
  v16 = v15;

  v17 = sub_1C0D16244(v14, v16, v11, v12, v13);
  sub_1C0CF448C(v14, v16);

  return v17;
}

+ (id)compressedRepresentationFromSecKey:(__SecKey *)a3
{
  v3 = a3;
  v4 = _s16CryptoKitPrivate18CKPIETFKeyBlindingC28compressedRepresentationFrom6secKeySo6NSDataCSgSo03SecJ3Refa_tFZ_0(v3);

  return v4;
}

+ (__SecKey)secKeyFromCompressedRepresentation:(id)a3
{
  v3 = a3;
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