@interface HMDKeyPaths
- (BOOL)containsKey:(id)a3;
- (BOOL)popKey;
- (BOOL)pushKey:(id)a3;
- (HMDKeyPaths)init;
- (id)initFor:(id)a3;
@end

@implementation HMDKeyPaths

- (id)initFor:(id)a3
{
  v4 = sub_22A4DD83C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22A576190;
  type metadata accessor for KeyPaths.KeyPathsSet();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 32) = v6;
  *(&self->super.isa + OBJC_IVAR___HMDKeyPaths_keyPathsStack) = v5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for KeyPaths();
  return [(HMDKeyPaths *)&v8 init];
}

- (BOOL)pushKey:(id)a3
{
  v4 = sub_22A4DD5EC();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = KeyPaths.push(key:)(v8);

  return v4 & 1;
}

- (BOOL)popKey
{
  v2 = self;
  v3 = KeyPaths.popKey()();

  return v3;
}

- (BOOL)containsKey:(id)a3
{
  v5 = sub_22A4DD5EC();
  v7 = v6;
  v8 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v9 = *(&self->super.isa + v8);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = sub_22A4DE0EC();
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v14 = self;

    MEMORY[0x22AAD13F0](v3, v9);

    goto LABEL_8;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return v10;
  }

  v11 = *(v9 + 8 * v3 + 32);
  v12 = self;

LABEL_8:
  v13 = sub_2295AF2AC(v5, v7);

  LOBYTE(v10) = v13 & 1;
  return v10;
}

- (HMDKeyPaths)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end