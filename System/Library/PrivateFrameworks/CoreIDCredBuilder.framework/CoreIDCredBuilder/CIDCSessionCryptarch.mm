@interface CIDCSessionCryptarch
- (BOOL)deriveSessionKeysFromSessionTranscript:(id)a3 error:(id *)a4;
- (BOOL)deriveSessionKeysFromSessionTranscript:(id)a3 intermediateKeyMaterial:(id)a4 error:(id *)a5;
- (BOOL)setRemoteKey:(id)a3 error:(id *)a4;
- (CIDCSessionCryptarch)init;
- (CIDCSessionCryptarch)initWithRole:(unint64_t)a3 curve:(unint64_t)a4 variant:(unint64_t)a5 localKey:(id)a6 error:(id *)a7;
- (NSData)privateKey;
- (NSData)publicKey;
- (unint64_t)curve;
- (unint64_t)role;
- (unint64_t)variant;
@end

@implementation CIDCSessionCryptarch

- (CIDCSessionCryptarch)initWithRole:(unint64_t)a3 curve:(unint64_t)a4 variant:(unint64_t)a5 localKey:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = sub_245681B1C();
  v13 = v12;

  return CIDCSessionCryptarch.init(role:curve:variant:localKey:)(a3, a4, a5, v11, v13);
}

- (BOOL)setRemoteKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_245681B1C();
  v9 = v8;

  v10 = *(&v6->super.isa + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681C5C();

  sub_24567E548(v7, v9);
  return 1;
}

- (BOOL)deriveSessionKeysFromSessionTranscript:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_245681B1C();
  v9 = v8;

  v10 = *(&v6->super.isa + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681C2C();

  sub_24567E548(v7, v9);
  return 1;
}

- (BOOL)deriveSessionKeysFromSessionTranscript:(id)a3 intermediateKeyMaterial:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_245681B1C();
  v12 = v11;

  v13 = sub_245681B1C();
  v15 = v14;

  v16 = *(&v9->super.isa + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681C2C();

  sub_24567E548(v13, v15);
  sub_24567E548(v10, v12);
  return 1;
}

- (unint64_t)curve
{
  v2 = self;
  v3 = CIDCSessionCryptarch.curve.getter();

  return v3;
}

- (unint64_t)role
{
  v3 = sub_245681C6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *(&self->super.isa + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  v12 = self;
  sub_245681C9C();
  (*(v4 + 16))(v8, v10, v3);
  v13 = (*(v4 + 88))(v8, v3);
  v14 = 0;
  if (v13 == *MEMORY[0x277CFF4C8])
  {
    goto LABEL_4;
  }

  if (v13 == *MEMORY[0x277CFF4C0])
  {
    v14 = 1;
LABEL_4:

    (*(v4 + 8))(v10, v3);
    return v14;
  }

  result = sub_245681FBC();
  __break(1u);
  return result;
}

- (unint64_t)variant
{
  v2 = self;
  v3 = CIDCSessionCryptarch.variant.getter();

  return v3;
}

- (NSData)privateKey
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE209B8, &qword_245682C98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(&self->super.isa + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  v8 = self;
  sub_245681CEC();
  v9 = sub_245681C4C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {

    sub_24567F348(v6, &qword_27EE209B8, &qword_245682C98);
    v11 = 0;
  }

  else
  {
    v12 = sub_245681C3C();
    v14 = v13;

    (*(v10 + 8))(v6, v9);
    v15 = sub_245681B0C();
    sub_24567E548(v12, v14);
    v11 = v15;
  }

  return v11;
}

- (NSData)publicKey
{
  v2 = *(&self->super.isa + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  v3 = self;
  v4 = sub_245681CFC();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = sub_245681B0C();
    sub_245681A34(v4, v6);
    v7 = v8;
  }

  return v7;
}

- (CIDCSessionCryptarch)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end