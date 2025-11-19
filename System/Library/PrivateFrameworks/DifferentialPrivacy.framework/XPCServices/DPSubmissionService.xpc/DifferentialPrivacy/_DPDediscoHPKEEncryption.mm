@interface _DPDediscoHPKEEncryption
+ (id)encryptWithPublicKey:(id)a3 info:(id)a4 inputShare:(id)a5 additionalData:(id)a6 error:(id *)a7;
+ (id)generatePublicKey;
- (_DPDediscoHPKEEncryption)init;
@end

@implementation _DPDediscoHPKEEncryption

+ (id)encryptWithPublicKey:(id)a3 info:(id)a4 inputShare:(id)a5 additionalData:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100050300();
  v16 = v15;

  v17 = sub_100050300();
  v19 = v18;

  v20 = sub_100050300();
  v22 = v21;

  v23 = sub_100050300();
  v25 = v24;

  sub_10003EFA0(v14, v16, v17, v19, v20, v22, v23, v25);
  sub_100013E20(v23, v25);
  sub_100013E20(v20, v22);
  sub_100013E20(v17, v19);
  sub_100013E20(v14, v16);
  v26.super.isa = sub_100050790().super.isa;

  return v26.super.isa;
}

+ (id)generatePublicKey
{
  v2 = sub_1000506A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000506D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000506C0();
  sub_1000506B0();
  (*(v8 + 8))(v11, v7);
  v12 = sub_100050680();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v15.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v12, v14);

  return v15.super.isa;
}

- (_DPDediscoHPKEEncryption)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _DPDediscoHPKEEncryption();
  return [(_DPDediscoHPKEEncryption *)&v3 init];
}

@end