@interface GridIDDictionaryTransformer
+ (BOOL)allowsReverseTransformation;
+ (Class)transformedValueClass;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation GridIDDictionaryTransformer

+ (Class)transformedValueClass
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_1D2057A80();
  return swift_getObjCClassFromMetadata();
}

+ (BOOL)allowsReverseTransformation
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_1D2057AEC();
  return sub_1D208C18C() & 1;
}

- (id)transformedValue:(id)a3
{
  v24 = a3;
  v23 = self;
  v22 = a3;
  swift_unknownObjectRetain();
  v3 = v23;
  if (v24)
  {
    v21 = v22;
    v20 = v22;
    v19 = v25;
    sub_1D208C94C();
    sub_1D20553D8(v25, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v26, 0, sizeof(v26));
  }

  v18 = v26;
  sub_1D2057B50(v26, v27);
  sub_1D205539C(v26);

  if (v28)
  {
    v12 = v28;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v10 = *(v12 - 8);
    v11 = v10;
    v4 = *(v10 + 64);
    v14 = &v9;
    v5 = MEMORY[0x1EEE9AC00](&v9);
    v13 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v5);
    v16 = sub_1D208CB3C();
    (*(v11 + 8))(v13, v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v7 = v17;

  return v7;
}

- (id)reverseTransformedValue:(id)a3
{
  v24 = a3;
  v23 = self;
  v22 = a3;
  swift_unknownObjectRetain();
  v3 = v23;
  if (v24)
  {
    v21 = v22;
    v20 = v22;
    v19 = v25;
    sub_1D208C94C();
    sub_1D20553D8(v25, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v26, 0, sizeof(v26));
  }

  v18 = v26;
  sub_1D20583F0(v26, v27);
  sub_1D205539C(v26);

  if (v28)
  {
    v12 = v28;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v10 = *(v12 - 8);
    v11 = v10;
    v4 = *(v10 + 64);
    v14 = &v9;
    v5 = MEMORY[0x1EEE9AC00](&v9);
    v13 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v5);
    v16 = sub_1D208CB3C();
    (*(v11 + 8))(v13, v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v7 = v17;

  return v7;
}

@end