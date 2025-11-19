@interface DCPresentmentResponseEncryptionParameters
+ (DCPresentmentResponseEncryptionParameters)sessionEncryption;
+ (id)appleHPKEWithSessionTranscript:(id)a3 certificateChain:(id)a4;
+ (id)webProposalHPKEWithSessionTranscript:(id)a3 rawEncryptionKey:(id)a4;
- (DCPresentmentResponseEncryptionParameters)init;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCPresentmentResponseEncryptionParameters

+ (DCPresentmentResponseEncryptionParameters)sessionEncryption
{
  v2 = [objc_allocWithZone(DCPresentmentResponseEncryptionParameters) init];
  v3 = &v2[OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage];
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x2000000000000000;
  sub_245650AA0(v4, v5, v6, v7);

  return v2;
}

+ (id)appleHPKEWithSessionTranscript:(id)a3 certificateChain:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_24565BA74();
  v9 = v8;

  v10 = sub_24565BB94();
  v11 = [objc_allocWithZone(DCPresentmentResponseEncryptionParameters) init];
  v12 = &v11[OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  *v12 = v7;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = 0;
  sub_245650AA0(v13, v14, v15, v16);

  return v11;
}

+ (id)webProposalHPKEWithSessionTranscript:(id)a3 rawEncryptionKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_24565BA74();
  v9 = v8;

  v10 = sub_24565BA74();
  v12 = v11;

  v13 = [objc_allocWithZone(DCPresentmentResponseEncryptionParameters) init];
  v14 = v12 | 0x1000000000000000;
  v15 = &v13[OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage];
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  *v15 = v7;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v14;
  sub_245650AA0(v16, v17, v18, v19);

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2456506C0(v4);
}

- (id)copyWithZone:(void *)a3
{
  v4 = objc_allocWithZone(DCPresentmentResponseEncryptionParameters);
  v5 = self;
  v6 = [v4 init];
  v7 = (v5 + OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v11 = v7[2];
  v10 = v7[3];
  sub_245650030(v8, v9, v11, v10);

  v12 = &v6[OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v11;
  v12[3] = v10;
  sub_245650AA0(v13, v14, v15, v16);
  return v6;
}

- (DCPresentmentResponseEncryptionParameters)init
{
  v2 = (&self->super.isa + OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0x2000000000000000;
  v4.receiver = self;
  v4.super_class = DCPresentmentResponseEncryptionParameters;
  return [(DCPresentmentResponseEncryptionParameters *)&v4 init];
}

@end