@interface DCPresentmentRequest
- (BOOL)isEqual:(id)equal;
- (DCPresentmentRequest)init;
- (DCPresentmentRequest)initWithSessionEstablishment:(id)establishment sessionTranscript:(id)transcript;
- (NSData)requiredPublicKeyIdentifier;
- (NSData)sessionEncryptionIntermediateKeyMaterial;
- (NSData)sessionEstablishment;
- (NSData)sessionTranscript;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setRequiredPublicKeyIdentifier:(id)identifier;
- (void)setSessionEncryptionIntermediateKeyMaterial:(id)material;
- (void)setSessionEstablishment:(id)establishment;
- (void)setSessionTranscript:(id)transcript;
@end

@implementation DCPresentmentRequest

- (NSData)sessionEstablishment
{
  v3 = *(&self->super.isa + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();
  selfCopy = self;

  os_unfair_lock_lock((v3 + 96));
  sub_24563ADF0((v3 + 16), v9);
  os_unfair_lock_unlock((v3 + 96));

  v5 = v9[0];
  v6 = v9[1];
  v7 = sub_24565BA64();
  sub_245636B1C(v5, v6);

  return v7;
}

- (void)setSessionEstablishment:(id)establishment
{
  establishmentCopy = establishment;
  selfCopy = self;
  v6 = sub_24565BA74();
  v8 = v7;

  v9 = *(&selfCopy->super.isa + OBJC_IVAR___DCPresentmentRequest_state);
  os_unfair_lock_lock((v9 + 96));
  sub_24563ADD8((v9 + 16));
  os_unfair_lock_unlock((v9 + 96));
  sub_245636B1C(v6, v8);
}

- (NSData)sessionTranscript
{
  v3 = *(&self->super.isa + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();
  selfCopy = self;

  os_unfair_lock_lock((v3 + 96));
  sub_24563AD30((v3 + 16), &v10);
  os_unfair_lock_unlock((v3 + 96));

  v5 = 0;
  v6 = v11;
  if (v11 >> 60 != 15)
  {
    v7 = v10;
    v8 = sub_24565BA64();
    sub_245637BC8(v7, v6);
    v5 = v8;
  }

  return v5;
}

- (void)setSessionTranscript:(id)transcript
{
  if (transcript)
  {
    selfCopy = self;
    transcriptCopy = transcript;
    v7 = sub_24565BA74();
    v9 = v8;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v12 = *(&self->super.isa + OBJC_IVAR___DCPresentmentRequest_state);
  MEMORY[0x28223BE20](selfCopy2, v11);
  os_unfair_lock_lock(v12 + 24);
  sub_24563ADC0(&v12[4]);
  os_unfair_lock_unlock(v12 + 24);
  sub_245637BC8(v7, v9);
}

- (NSData)sessionEncryptionIntermediateKeyMaterial
{
  v3 = *(&self->super.isa + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();
  selfCopy = self;

  os_unfair_lock_lock((v3 + 96));
  sub_24563AD30((v3 + 16), &v10);
  os_unfair_lock_unlock((v3 + 96));

  v5 = 0;
  v6 = v11;
  if (v11 >> 60 != 15)
  {
    v7 = v10;
    v8 = sub_24565BA64();
    sub_245637BC8(v7, v6);
    v5 = v8;
  }

  return v5;
}

- (void)setSessionEncryptionIntermediateKeyMaterial:(id)material
{
  if (material)
  {
    selfCopy = self;
    materialCopy = material;
    v7 = sub_24565BA74();
    v9 = v8;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v12 = *(&self->super.isa + OBJC_IVAR___DCPresentmentRequest_state);
  MEMORY[0x28223BE20](selfCopy2, v11);
  os_unfair_lock_lock(v12 + 24);
  sub_24563ADA8(&v12[4]);
  os_unfair_lock_unlock(v12 + 24);
  sub_245637BC8(v7, v9);
}

- (NSData)requiredPublicKeyIdentifier
{
  v3 = *(&self->super.isa + OBJC_IVAR___DCPresentmentRequest_state);
  swift_getKeyPath();
  selfCopy = self;

  os_unfair_lock_lock((v3 + 96));
  sub_24563AD30((v3 + 16), &v10);
  os_unfair_lock_unlock((v3 + 96));

  v5 = 0;
  v6 = v11;
  if (v11 >> 60 != 15)
  {
    v7 = v10;
    v8 = sub_24565BA64();
    sub_245637BC8(v7, v6);
    v5 = v8;
  }

  return v5;
}

- (void)setRequiredPublicKeyIdentifier:(id)identifier
{
  if (identifier)
  {
    selfCopy = self;
    identifierCopy = identifier;
    v7 = sub_24565BA74();
    v9 = v8;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v12 = *(&self->super.isa + OBJC_IVAR___DCPresentmentRequest_state);
  MEMORY[0x28223BE20](selfCopy2, v11);
  os_unfair_lock_lock(v12 + 24);
  sub_24563AD90(&v12[4]);
  os_unfair_lock_unlock(v12 + 24);
  sub_245637BC8(v7, v9);
}

- (DCPresentmentRequest)initWithSessionEstablishment:(id)establishment sessionTranscript:(id)transcript
{
  establishmentCopy = establishment;
  transcriptCopy = transcript;
  v8 = sub_24565BA74();
  v10 = v9;

  if (transcriptCopy)
  {
    v11 = sub_24565BA74();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A898, &unk_245660800);
  v14 = swift_allocObject();
  *(v14 + 96) = 0;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  *(v14 + 48) = xmmword_245660750;
  *(v14 + 64) = xmmword_245660750;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(&self->super.isa + OBJC_IVAR___DCPresentmentRequest_state) = v14;
  v16.receiver = self;
  v16.super_class = DCPresentmentRequest;
  return [(DCPresentmentRequest *)&v16 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24565BCF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = DCPresentmentRequest.isEqual(_:)(v8);

  sub_245638A1C(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = DCPresentmentRequest.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DCPresentmentRequest.encode(with:)(coderCopy);
}

- (DCPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end