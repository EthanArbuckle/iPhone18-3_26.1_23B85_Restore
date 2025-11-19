@interface ARCCredentialWrapper
- (_TtC16CryptoKitPrivate20ARCCredentialWrapper)init;
- (_TtC16CryptoKitPrivate20ARCCredentialWrapper)initWithCredentialData:(id)a3 error:(id *)a4;
- (id)getCredentialDataAndReturnError:(id *)a3;
- (id)makePresentationWithPresentationContext:(id)a3 presentationLimit:(int64_t)a4 error:(id *)a5;
- (int64_t)getRemainingPresentationCountWithPresentationContext:(id)a3 presentationLimit:(int64_t)a4;
@end

@implementation ARCCredentialWrapper

- (id)getCredentialDataAndReturnError:(id *)a3
{
  v4 = (self + OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential);
  swift_beginAccess();
  v5 = v4[3];
  v18 = v4[2];
  v19 = v5;
  v6 = v4[5];
  v20 = v4[4];
  v21 = v6;
  v7 = v4[1];
  v17[0] = *v4;
  v17[1] = v7;
  v22[0] = v18;
  v22[1] = v5;
  v8 = *(v4 + 8);
  v23 = v8;
  v9 = *(&v5 + 1);
  v10 = self;
  sub_1C0D13734(v17, v16, &qword_1EBE6D450, &unk_1C0D7BF20);
  sub_1C0D13734(v22, v16, &qword_1EBE6D420, &qword_1C0D7BF10);
  v11 = sub_1C0D11774(v9, v8);
  v13 = v12;
  sub_1C0D13578(v22, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D13578(v17, &qword_1EBE6D450, &unk_1C0D7BF20);

  v14 = sub_1C0D7830C();
  sub_1C0CF448C(v11, v13);

  return v14;
}

- (_TtC16CryptoKitPrivate20ARCCredentialWrapper)initWithCredentialData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1C0D7832C();
  v7 = v6;

  return ARCCredentialWrapper.init(credentialData:)(v5, v7);
}

- (id)makePresentationWithPresentationContext:(id)a3 presentationLimit:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  v9 = sub_1C0D7832C();
  v11 = v10;

  v12 = sub_1C0D0C338(v9, v11, a4);
  sub_1C0CF448C(v9, v11);

  return v12;
}

- (int64_t)getRemainingPresentationCountWithPresentationContext:(id)a3 presentationLimit:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1C0D7832C();
  v10 = v9;

  v11 = sub_1C0D0C7D0(v8, v10, a4);
  sub_1C0CF448C(v8, v10);

  return v11;
}

- (_TtC16CryptoKitPrivate20ARCCredentialWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end