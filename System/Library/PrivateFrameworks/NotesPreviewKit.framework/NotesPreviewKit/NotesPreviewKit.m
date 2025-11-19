void *sub_25C7649F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25C764A5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25C771808();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25C764B08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25C771808();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25C764BAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25C771808();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25C764C58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25C771808();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

BOOL ICCurrentAppearanceType()
{
  v0 = [MEMORY[0x277D75C80] _currentTraitCollection];
  v1 = [v0 userInterfaceStyle];

  return v1 == 2;
}

uint64_t ThumbnailKey.accountId.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_accountId);
  v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_accountId + 8);

  return v1;
}

id sub_25C764FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_25C7718A8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t ThumbnailKey.objectId.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_objectId);
  v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_objectId + 8);

  return v1;
}

uint64_t ThumbnailKey.thumbnailId.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);

  return v1;
}

id ThumbnailKey.__allocating_init(accountId:objectId:thumbnailId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___ICThumbnailKey_accountId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR___ICThumbnailKey_objectId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR___ICThumbnailKey_thumbnailId];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id ThumbnailKey.init(accountId:objectId:thumbnailId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR___ICThumbnailKey_accountId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR___ICThumbnailKey_objectId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR___ICThumbnailKey_thumbnailId];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id ThumbnailKey.init(accountId:objectId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_25C7718A8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_25C7718A8();

LABEL_6:
  v8 = sub_25C7718A8();
  v9 = [v4 initWithAccountId:v6 objectId:v7 thumbnailId:v8];

  return v9;
}

id ThumbnailKey.__allocating_init(type:accountId:objectId:preferredSize:scale:appearance:)(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v18 = objc_allocWithZone(v10);
  if (!a6)
  {
    v19 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v19 = sub_25C7718A8();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = sub_25C7718A8();

LABEL_6:
  LODWORD(v23) = 0;
  v21 = [v18 initWithType:a1 accountId:v19 objectId:v20 preferredSize:a9 scale:0 appearance:0 isRTL:a2 contentSizeCategory:a3 hasBoldText:a4 hasButtonShapes:v23 hasDarkerSystemColors:? hasBorder:?];

  return v21;
}

id ThumbnailKey.init(type:accountId:objectId:preferredSize:scale:appearance:)(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a6)
  {
    v16 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = sub_25C7718A8();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = sub_25C7718A8();

LABEL_6:
  LODWORD(v20) = 0;
  v18 = [v9 initWithType:a1 accountId:v16 objectId:v17 preferredSize:a9 scale:0 appearance:0 isRTL:a2 contentSizeCategory:a3 hasBoldText:a4 hasButtonShapes:v20 hasDarkerSystemColors:? hasBorder:?];

  return v18;
}

id ThumbnailKey.__allocating_init(type:accountId:objectId:preferredSize:traitCollection:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v16 = objc_allocWithZone(v9);
  if (!a5)
  {
    v17 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v17 = sub_25C7718A8();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = sub_25C7718A8();

LABEL_6:
  [a8 displayScale];
  v20 = v19;
  v21 = [a8 userInterfaceStyle] == 2;
  v22 = [a8 layoutDirection] == 1;
  v23 = [a8 preferredContentSizeCategory];
  v24 = [a8 legibilityWeight] == 1;
  BYTE3(v27) = 0;
  BYTE2(v27) = [a8 accessibilityContrast] == 1;
  LOWORD(v27) = v24;
  v25 = [v16 initWithType:a1 accountId:v17 objectId:v18 preferredSize:v21 scale:v22 appearance:v23 isRTL:a2 contentSizeCategory:a3 hasBoldText:v20 hasButtonShapes:v27 hasDarkerSystemColors:? hasBorder:?];

  return v25;
}

id ThumbnailKey.init(type:accountId:objectId:preferredSize:traitCollection:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  if (!a5)
  {
    v15 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_25C7718A8();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_25C7718A8();

LABEL_6:
  [a8 displayScale];
  v18 = v17;
  v19 = [a8 userInterfaceStyle] == 2;
  v20 = [a8 layoutDirection] == 1;
  v21 = [a8 preferredContentSizeCategory];
  v22 = [a8 legibilityWeight] == 1;
  BYTE3(v25) = 0;
  BYTE2(v25) = [a8 accessibilityContrast] == 1;
  LOWORD(v25) = v22;
  v23 = [v9 initWithType:a1 accountId:v15 objectId:v16 preferredSize:v19 scale:v20 appearance:v21 isRTL:a2 contentSizeCategory:a3 hasBoldText:v18 hasButtonShapes:v25 hasDarkerSystemColors:? hasBorder:?];

  return v23;
}

uint64_t ThumbnailKey.description.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_objectId);
  v17 = *(v0 + OBJC_IVAR___ICThumbnailKey_accountId);
  v18 = v1;
  v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  v19 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v20 = v2;

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  if (v4 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 + 1;
  v8 = 16 * v4 + 40;
  while (1)
  {
    if (v4 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12958, &qword_25C772360);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12960, &qword_25C772368);
      sub_25C767DD4();
      v15 = sub_25C771898();

      return v15;
    }

    if (v7 == ++v4)
    {
      break;
    }

    v9 = v8 + 16;
    v10 = *&v16[v8];
    v8 += 16;
    if (v10)
    {
      v11 = *&v16[v9 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25C767C80(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_25C767C80((v12 > 1), v13 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t ThumbnailKey.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12970, &qword_25C772370);
  v4 = sub_25C771978();
  swift_unknownObjectRelease();
  if (v4 == v2)
  {
    v8 = 1;
    return v8 & 1;
  }

  sub_25C767E80(a1, v13);
  if (!v14)
  {
    sub_25C767EF0(v13);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v8 = 0;
    return v8 & 1;
  }

  v5 = *(v2 + OBJC_IVAR___ICThumbnailKey_accountId + 8);
  v6 = *&v12[OBJC_IVAR___ICThumbnailKey_accountId + 8];
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = *(v2 + OBJC_IVAR___ICThumbnailKey_accountId) == *&v12[OBJC_IVAR___ICThumbnailKey_accountId] && v5 == v6;
    if (!v7 && (sub_25C771AF8() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v6)
  {
    goto LABEL_24;
  }

  v9 = *(v2 + OBJC_IVAR___ICThumbnailKey_objectId + 8);
  v10 = *&v12[OBJC_IVAR___ICThumbnailKey_objectId + 8];
  if (v9)
  {
    if (v10 && (*(v2 + OBJC_IVAR___ICThumbnailKey_objectId) == *&v12[OBJC_IVAR___ICThumbnailKey_objectId] && v9 == v10 || (sub_25C771AF8() & 1) != 0))
    {
      goto LABEL_20;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v10)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (*(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId) == *&v12[OBJC_IVAR___ICThumbnailKey_thumbnailId] && *(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8) == *&v12[OBJC_IVAR___ICThumbnailKey_thumbnailId + 8])
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_25C771AF8();
  }

  return v8 & 1;
}

uint64_t ThumbnailKey.hash.getter()
{
  sub_25C771BC8();
  if (*(v0 + OBJC_IVAR___ICThumbnailKey_accountId + 8))
  {
    v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_accountId);
    sub_25C771B98();
    sub_25C7718F8();
  }

  else
  {
    sub_25C771B98();
  }

  if (*(v0 + OBJC_IVAR___ICThumbnailKey_objectId + 8))
  {
    v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_objectId);
    sub_25C771B98();
    sub_25C7718F8();
  }

  else
  {
    sub_25C771B98();
  }

  v3 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v4 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  sub_25C7718F8();
  return sub_25C771BA8();
}

id ThumbnailKey.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR___ICThumbnailKey_accountId);
  v4 = *(v1 + OBJC_IVAR___ICThumbnailKey_accountId + 8);
  v7 = *(v1 + OBJC_IVAR___ICThumbnailKey_objectId);
  v6 = *(v1 + OBJC_IVAR___ICThumbnailKey_objectId + 8);
  v9 = *(v1 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v8 = *(v1 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  v10 = objc_allocWithZone(ObjectType);
  v11 = &v10[OBJC_IVAR___ICThumbnailKey_accountId];
  *v11 = v5;
  *(v11 + 1) = v4;
  v12 = &v10[OBJC_IVAR___ICThumbnailKey_objectId];
  *v12 = v7;
  *(v12 + 1) = v6;
  v13 = &v10[OBJC_IVAR___ICThumbnailKey_thumbnailId];
  *v13 = v9;
  *(v13 + 1) = v8;
  v15.receiver = v10;
  v15.super_class = ObjectType;

  result = objc_msgSendSuper2(&v15, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t ThumbnailKey.containerUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_25C7717C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v37 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v37 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  if (*(v2 + OBJC_IVAR___ICThumbnailKey_accountId + 8))
  {
    v37[1] = *(v2 + OBJC_IVAR___ICThumbnailKey_accountId);
    v20 = [objc_opt_self() sharedInstance];
    v21 = sub_25C7718A8();
    v22 = [v20 applicationDocumentsURLForAccountIdentifier_];
    v38 = v2;
    v23 = v22;

    sub_25C7717B8();
    v24 = *MEMORY[0x277D360F0];
    sub_25C7718D8();
    sub_25C771798();

    v25 = *(v4 + 8);
    v25(v11, v3);
    sub_25C771798();
    v25(v14, v3);
    v26 = *MEMORY[0x277D360E8];
    sub_25C7718D8();
    sub_25C771798();

    v25(v17, v3);
    if (*(v38 + OBJC_IVAR___ICThumbnailKey_objectId + 8))
    {
      v27 = *(v38 + OBJC_IVAR___ICThumbnailKey_objectId);
      v28 = sub_25C7718A8();
      v29 = [v28 ic_sanitizedFilenameString];

      sub_25C7718D8();
    }

    sub_25C771798();

    return (v25)(v19, v3);
  }

  else
  {
    v30 = [objc_opt_self() applicationDocumentsURL];
    sub_25C7717B8();

    v31 = *MEMORY[0x277D360E8];
    sub_25C7718D8();
    sub_25C771798();

    v32 = *(v4 + 8);
    v32(v17, v3);
    if (*(v2 + OBJC_IVAR___ICThumbnailKey_objectId + 8))
    {
      v33 = *(v2 + OBJC_IVAR___ICThumbnailKey_objectId);
      v34 = sub_25C7718A8();
      v35 = [v34 ic_sanitizedFilenameString];

      sub_25C7718D8();
    }

    sub_25C771798();

    return (v32)(v8, v3);
  }
}

id sub_25C766868(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_25C7717C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  sub_25C7669B0(a3, v9);

  v11 = sub_25C771788();
  (*(v6 + 8))(v9, v5);

  return v11;
}

uint64_t sub_25C7669B0@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v23[0] = sub_25C771828();
  v4 = *(v23[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v23[0]);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C7717C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  ThumbnailKey.containerUrl.getter(v13);
  v16 = *(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v17 = *(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  v18 = sub_25C7718A8();
  v19 = [v18 ic_sanitizedFilenameString];

  sub_25C7718D8();
  sub_25C771798();

  v20 = *(v9 + 8);
  v21 = v20(v13, v8);
  a1(v21);
  sub_25C771818();
  (*(v4 + 8))(v7, v23[0]);
  sub_25C7717A8();

  return v20(v15, v8);
}

id ThumbnailKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25C766CA0()
{
  v1 = *v0;
  sub_25C771B78();
  MEMORY[0x25F88BE90](v1);
  return sub_25C771BB8();
}

uint64_t sub_25C766D14()
{
  v1 = *v0;
  sub_25C771B78();
  MEMORY[0x25F88BE90](v1);
  return sub_25C771BB8();
}

uint64_t sub_25C766D58()
{
  v1 = 0x64497463656A626FLL;
  if (*v0 != 1)
  {
    v1 = 0x69616E626D756874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_25C766DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25C769AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25C766E00(uint64_t a1)
{
  v2 = sub_25C767F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25C766E3C(uint64_t a1)
{
  v2 = sub_25C767F58();

  return MEMORY[0x2821FE720](a1, v2);
}

id ThumbnailKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ThumbnailKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12978, &qword_25C772378);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C767F58();
  sub_25C771BE8();
  v11 = *(v3 + OBJC_IVAR___ICThumbnailKey_accountId);
  v12 = *(v3 + OBJC_IVAR___ICThumbnailKey_accountId + 8);
  v18[15] = 0;
  sub_25C771A98();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR___ICThumbnailKey_objectId);
  v14 = *(v3 + OBJC_IVAR___ICThumbnailKey_objectId + 8);
  v18[14] = 1;
  sub_25C771A98();
  v16 = *(v3 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v17 = *(v3 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  v18[13] = 2;
  sub_25C771AA8();
  return (*(v6 + 8))(v9, v5);
}

id ThumbnailKey.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12988, &qword_25C772380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C767F58();
  sub_25C771BD8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = 0;
    v11 = sub_25C771A58();
    v13 = &v1[OBJC_IVAR___ICThumbnailKey_accountId];
    *v13 = v11;
    v13[1] = v14;
    v24 = 1;
    v15 = sub_25C771A58();
    v16 = &v1[OBJC_IVAR___ICThumbnailKey_objectId];
    *v16 = v15;
    v16[1] = v17;
    v24 = 2;
    v18 = sub_25C771A68();
    v19 = &v1[OBJC_IVAR___ICThumbnailKey_thumbnailId];
    *v19 = v18;
    v19[1] = v20;
    v23.receiver = v1;
    v23.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

id sub_25C7673B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ThumbnailKey.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25C767430(uint64_t a1)
{
  v2 = sub_25C768260(&qword_27FC12A18, type metadata accessor for NotePreviewProviderErrors);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25C76749C(uint64_t a1)
{
  v2 = sub_25C768260(&qword_27FC12A18, type metadata accessor for NotePreviewProviderErrors);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_25C76750C(uint64_t a1)
{
  v2 = sub_25C768260(&qword_27FC12A50, type metadata accessor for NotePreviewProviderErrors);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_25C767578(uint64_t a1, id *a2)
{
  result = sub_25C7718B8();
  *a2 = 0;
  return result;
}

uint64_t sub_25C7675F0(uint64_t a1, id *a2)
{
  v3 = sub_25C7718C8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25C767670@<X0>(uint64_t *a1@<X8>)
{
  sub_25C7718D8();
  v2 = sub_25C7718A8();

  *a1 = v2;
  return result;
}

uint64_t sub_25C7676B4()
{
  v1 = *v0;
  v2 = sub_25C7718D8();
  v3 = MEMORY[0x25F88BC30](v2);

  return v3;
}

uint64_t sub_25C7676F0()
{
  v1 = *v0;
  sub_25C7718D8();
  sub_25C7718F8();
}

uint64_t sub_25C767744()
{
  v1 = *v0;
  sub_25C7718D8();
  sub_25C771B78();
  sub_25C7718F8();
  v2 = sub_25C771BB8();

  return v2;
}

uint64_t sub_25C7677C8(uint64_t a1)
{
  v2 = sub_25C768260(&qword_27FC12A50, type metadata accessor for NotePreviewProviderErrors);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_25C767834(uint64_t a1)
{
  v2 = sub_25C768260(&qword_27FC12A50, type metadata accessor for NotePreviewProviderErrors);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_25C7678A0(void *a1, uint64_t a2)
{
  v4 = sub_25C768260(&qword_27FC12A50, type metadata accessor for NotePreviewProviderErrors);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_25C767954(uint64_t a1, uint64_t a2)
{
  v4 = sub_25C768260(&qword_27FC12A50, type metadata accessor for NotePreviewProviderErrors);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_25C7679D0()
{
  v2 = *v0;
  sub_25C771B78();
  sub_25C771888();
  return sub_25C771BB8();
}

uint64_t sub_25C767A30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25C7718D8();
  v6 = v5;
  if (v4 == sub_25C7718D8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25C771AF8();
  }

  return v9 & 1;
}

uint64_t sub_25C767AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25C768260(&qword_27FC12A50, type metadata accessor for NotePreviewProviderErrors);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_25C767B50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25C7718A8();

  *a2 = v5;
  return result;
}

uint64_t sub_25C767B98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25C7718D8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25C767BC4(uint64_t a1)
{
  v2 = sub_25C768260(&qword_27FC12A98, type metadata accessor for __NPNotePreviewKey);
  v3 = sub_25C768260(&qword_27FC12AA0, type metadata accessor for __NPNotePreviewKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_25C767C80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12A68, &qword_25C772840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25C767DD4()
{
  result = qword_27FC12968;
  if (!qword_27FC12968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC12960, &qword_25C772368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12968);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25C767E80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12970, &qword_25C772370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C767EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12970, &qword_25C772370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25C767F58()
{
  result = qword_27FC12980;
  if (!qword_27FC12980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThumbnailKey.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ThumbnailKey.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25C7681C4()
{
  result = qword_27FC12A00;
  if (!qword_27FC12A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12A00);
  }

  return result;
}

uint64_t sub_25C768260(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25C768428()
{
  result = qword_27FC12A40;
  if (!qword_27FC12A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12A40);
  }

  return result;
}

unint64_t sub_25C768510()
{
  result = qword_27FC12A58;
  if (!qword_27FC12A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12A58);
  }

  return result;
}

unint64_t sub_25C768568()
{
  result = qword_27FC12A60;
  if (!qword_27FC12A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12A60);
  }

  return result;
}

char *sub_25C7685BC(char *a1, int64_t a2, char a3)
{
  result = sub_25C7685DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25C7685DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12A68, &qword_25C772840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25C7686E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v30 = result;
    v10 = 0;
    v11 = a5 + 40;
    v12 = MEMORY[0x277D84F90];
LABEL_3:
    v13 = (v11 + 16 * v10);
    while (1)
    {
      if (v5 == v10)
      {

        v32 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12960, &qword_25C772368);
        sub_25C767DD4();
        v21 = sub_25C771898();
        v23 = v22;

        v24 = type metadata accessor for ThumbnailKey();
        v25 = objc_allocWithZone(v24);
        v26 = &v25[OBJC_IVAR___ICThumbnailKey_accountId];
        *v26 = v30;
        *(v26 + 1) = a2;
        v27 = &v25[OBJC_IVAR___ICThumbnailKey_objectId];
        *v27 = a3;
        *(v27 + 1) = a4;
        v28 = &v25[OBJC_IVAR___ICThumbnailKey_thumbnailId];
        *v28 = v21;
        v28[1] = v23;
        v31.receiver = v25;
        v31.super_class = v24;
        return objc_msgSendSuper2(&v31, sel_init);
      }

      if (v10 >= *(a5 + 16))
      {
        break;
      }

      ++v10;
      v14 = *(v13 - 1);
      v15 = *v13;
      v13 += 2;
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v32 = v12;
        v29 = a3;
        v17 = a4;
        if ((result & 1) == 0)
        {
          result = sub_25C7685BC(0, *(v12 + 16) + 1, 1);
          v12 = v32;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_25C7685BC((v18 > 1), v19 + 1, 1);
          v12 = v32;
        }

        *(v12 + 16) = v19 + 1;
        v20 = v12 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v15;
        a4 = v17;
        a3 = v29;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C7688D0(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD000000000000013;
      }

      if (a1 == 6)
      {
        return 0xD000000000000012;
      }

      return 0x6572507265706150;
    }

    if (a1 == 8)
    {
      return 0x726174617641;
    }

    if (a1 == 10 || a1 == 11)
    {
      return 0xD000000000000014;
    }

LABEL_24:
    result = sub_25C771A28();
    __break(1u);
    return result;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x656D686361747441;
    }

    if (a1 == 1)
    {
      return 1702129486;
    }

    goto LABEL_24;
  }

  if (a1 == 2)
  {
    return 0x6174744165746F4ELL;
  }

  if (a1 == 3)
  {
    return 0xD000000000000013;
  }

  return 0x7268437265706150;
}

void sub_25C768ABC(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25C771AD8();
  MEMORY[0x25F88BC10](120, 0xE100000000000000);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 < 9.22337204e18)
  {
    v3 = sub_25C771AD8();
    MEMORY[0x25F88BC10](v3);

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_25C768BE0(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    v1 = sub_25C771AD8();
    MEMORY[0x25F88BC10](v1);

    MEMORY[0x25F88BC10](120, 0xE100000000000000);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_25C768C9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_25C7718A8();
  }

  else
  {
    v2 = *MEMORY[0x277D76860];
  }

  v3 = v2;
  v4 = *MEMORY[0x277D76830];
  v5 = sub_25C7718D8();
  v7 = v6;
  if (v5 == sub_25C7718D8() && v7 == v8)
  {

    return 21336;
  }

  v10 = sub_25C771AF8();

  if (v10)
  {

    return 21336;
  }

  v12 = *MEMORY[0x277D76858];
  v13 = sub_25C7718D8();
  v15 = v14;
  if (v13 == sub_25C7718D8() && v15 == v16)
  {

    return 83;
  }

  v18 = sub_25C771AF8();

  if (v18)
  {

    return 83;
  }

  v19 = *MEMORY[0x277D76840];
  v20 = sub_25C7718D8();
  v22 = v21;
  if (v20 == sub_25C7718D8() && v22 == v23)
  {
    goto LABEL_22;
  }

  v24 = sub_25C771AF8();

  if (v24)
  {
    goto LABEL_24;
  }

  v25 = *MEMORY[0x277D76860];
  v26 = sub_25C7718D8();
  v28 = v27;
  if (v26 == sub_25C7718D8() && v28 == v29)
  {
LABEL_22:

    return 77;
  }

  v30 = sub_25C771AF8();

  if (v30)
  {
LABEL_24:

    return 77;
  }

  v31 = *MEMORY[0x277D76838];
  v32 = sub_25C7718D8();
  v34 = v33;
  if (v32 == sub_25C7718D8() && v34 == v35)
  {

    return 76;
  }

  v36 = sub_25C771AF8();

  if (v36)
  {

    return 76;
  }

  v37 = *MEMORY[0x277D76828];
  v38 = sub_25C7718D8();
  v40 = v39;
  if (v38 == sub_25C7718D8() && v40 == v41)
  {

    return 19544;
  }

  v42 = sub_25C771AF8();

  if (v42)
  {

    return 19544;
  }

  v43 = *MEMORY[0x277D76820];
  v44 = sub_25C7718D8();
  v46 = v45;
  if (v44 == sub_25C7718D8() && v46 == v47)
  {
    goto LABEL_43;
  }

  v48 = sub_25C771AF8();

  if (v48)
  {
    goto LABEL_45;
  }

  v49 = *MEMORY[0x277D76818];
  v50 = sub_25C7718D8();
  v52 = v51;
  if (v50 == sub_25C7718D8() && v52 == v53)
  {
LABEL_43:

    return 5003314;
  }

  v54 = sub_25C771AF8();

  if (v54)
  {
LABEL_45:

    return 5003314;
  }

  v55 = *MEMORY[0x277D76808];
  v56 = sub_25C7718D8();
  v58 = v57;
  if (v56 == sub_25C7718D8() && v58 == v59)
  {

    return 19777;
  }

  v60 = sub_25C771AF8();

  if (v60)
  {

    return 19777;
  }

  v61 = *MEMORY[0x277D76800];
  v62 = sub_25C7718D8();
  v64 = v63;
  if (v62 == sub_25C7718D8() && v64 == v65)
  {

    return 19521;
  }

  v66 = sub_25C771AF8();

  if (v66)
  {

    return 19521;
  }

  v67 = *MEMORY[0x277D767F8];
  v68 = sub_25C7718D8();
  v70 = v69;
  if (v68 == sub_25C7718D8() && v70 == v71)
  {

    return 5003329;
  }

  v72 = sub_25C771AF8();

  if (v72)
  {

    return 5003329;
  }

  v73 = *MEMORY[0x277D767F0];
  v74 = sub_25C7718D8();
  v76 = v75;
  if (v74 == sub_25C7718D8() && v76 == v77)
  {

    return 1280848449;
  }

  v78 = sub_25C771AF8();

  if (v78)
  {

    return 1280848449;
  }

  v79 = *MEMORY[0x277D767E8];
  v80 = sub_25C7718D8();
  v82 = v81;
  if (v80 == sub_25C7718D8() && v82 == v83)
  {

    return 1280848705;
  }

  else
  {
    v84 = sub_25C771AF8();

    if (v84)
    {
      return 1280848705;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25C7693D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  if (a1 <= 4)
  {
    if ((a1 - 1) < 3)
    {

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12A68, &qword_25C772840);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25C772350;
      *(inited + 32) = sub_25C7688D0(a1);
      *(inited + 40) = v29;
      sub_25C768ABC(a9, a10);
      *(inited + 48) = v30;
      *(inited + 56) = v31;
      if (a6)
      {
        if (a6 != 1)
        {
          goto LABEL_60;
        }

        v34 = a11;
        v32 = 0xE400000000000000;
        v33 = 1802658116;
      }

      else
      {
        v32 = 0xE500000000000000;
        v33 = 0x746867694CLL;
        v34 = a11;
      }

      *(inited + 64) = v33;
      *(inited + 72) = v32;
      sub_25C768BE0(v34);
      *(inited + 80) = v54;
      *(inited + 88) = v55;
      v51 = a2;
      v52 = a3;
      v53 = a4;
      v56 = a5;
      v57 = inited;
LABEL_59:
      v85 = sub_25C7686E8(v51, v52, v53, v56, v57);
      swift_deallocPartialClassInstance();
      return v85;
    }

    if (a1)
    {
      v89 = a2;
      v91 = a4;
      v58 = a7;
      if (a1 != 4)
      {
        goto LABEL_60;
      }

      goto LABEL_27;
    }

    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12A68, &qword_25C772840);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_25C772330;
    *(v46 + 32) = 0x656D686361747441;
    *(v46 + 40) = 0xEA0000000000746ELL;
    sub_25C768ABC(a9, a10);
    *(v46 + 48) = v47;
    *(v46 + 56) = v48;
    sub_25C768BE0(a11);
    *(v46 + 64) = v49;
    *(v46 + 72) = v50;
    v51 = a2;
    v52 = a3;
    v53 = a4;
LABEL_25:
    v56 = a5;
    v57 = v46;
    goto LABEL_59;
  }

  if (a1 > 7)
  {
    if ((a1 - 10) < 2)
    {
      v87 = a5;
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12A68, &qword_25C772840);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_25C772340;
      *(v36 + 32) = sub_25C7688D0(a1);
      *(v36 + 40) = v37;
      if (a6)
      {
        if (a6 != 1)
        {
          goto LABEL_60;
        }

        v40 = a7;
        v38 = 0xE400000000000000;
        v39 = 1802658116;
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x746867694CLL;
        v40 = a7;
      }

      *(v36 + 48) = v39;
      *(v36 + 56) = v38;
      v71 = sub_25C768C9C(v40, a8);
      v73 = v72;

      *(v36 + 64) = v71;
      *(v36 + 72) = v73;
      v74 = 0x5472616C75676552;
      if (a12)
      {
        v74 = 0x74786554646C6F42;
      }

      v75 = 0xEB00000000747865;
      if (a12)
      {
        v75 = 0xE800000000000000;
      }

      *(v36 + 80) = v74;
      *(v36 + 88) = v75;
      v76 = 0x4372616C75676552;
      if (a13)
      {
        v76 = 0x6F4372656B726144;
      }

      v77 = 0xED000073726F6C6FLL;
      if (a13)
      {
        v77 = 0xEC00000073726F6CLL;
      }

      *(v36 + 96) = v76;
      *(v36 + 104) = v77;
      v51 = a2;
      v53 = a4;
      v52 = a3;
      goto LABEL_58;
    }

    if (a1 != 8)
    {
      goto LABEL_60;
    }

    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12A68, &qword_25C772840);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_25C772330;
    *(v46 + 32) = 0x726174617641;
    *(v46 + 40) = 0xE600000000000000;
    sub_25C768ABC(a9, a10);
    *(v46 + 48) = v61;
    *(v46 + 56) = v62;
    v63 = 0x726564726F426F4ELL;
    if (a14)
    {
      v63 = 0x726564726F42;
    }

    v64 = 0xE800000000000000;
    if (a14)
    {
      v64 = 0xE600000000000000;
    }

    *(v46 + 64) = v63;
    *(v46 + 72) = v64;
    v51 = a2;
    v53 = a4;
    v52 = a3;
    goto LABEL_25;
  }

  if ((a1 - 5) >= 2)
  {
    v89 = a2;
    v91 = a4;
    v58 = a7;
    if (a1 != 7)
    {
      goto LABEL_60;
    }

LABEL_27:
    v87 = a5;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12A68, &qword_25C772840);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_25C772340;
    *(v36 + 32) = sub_25C7688D0(a1);
    *(v36 + 40) = v65;
    if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_60;
      }

      v68 = v58;
      v66 = 0xE400000000000000;
      v67 = 1802658116;
    }

    else
    {
      v66 = 0xE500000000000000;
      v67 = 0x746867694CLL;
      v68 = v58;
    }

    *(v36 + 48) = v67;
    *(v36 + 56) = v66;
    v78 = sub_25C768C9C(v68, a8);
    v80 = v79;

    *(v36 + 64) = v78;
    *(v36 + 72) = v80;
    v81 = 0x5472616C75676552;
    if (a12)
    {
      v81 = 0x74786554646C6F42;
    }

    v82 = 0xEB00000000747865;
    if (a12)
    {
      v82 = 0xE800000000000000;
    }

    *(v36 + 80) = v81;
    *(v36 + 88) = v82;
    v83 = 0x4372616C75676552;
    if (a13)
    {
      v83 = 0x6F4372656B726144;
    }

    v84 = 0xED000073726F6C6FLL;
    if (a13)
    {
      v84 = 0xEC00000073726F6CLL;
    }

    *(v36 + 96) = v83;
    *(v36 + 104) = v84;
    v51 = v89;
    v52 = a3;
    v53 = v91;
LABEL_58:
    v56 = v87;
    v57 = v36;
    goto LABEL_59;
  }

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12A68, &qword_25C772840);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_25C772330;
  *(v19 + 32) = sub_25C7688D0(a1);
  *(v19 + 40) = v20;
  if (!a6)
  {
    v21 = 0xE500000000000000;
    v22 = 0x746867694CLL;
LABEL_31:
    *(v19 + 48) = v22;
    *(v19 + 56) = v21;
    v69 = 0x4372616C75676552;
    if (a13)
    {
      v69 = 0x6F4372656B726144;
    }

    v70 = 0xED000073726F6C6FLL;
    if (a13)
    {
      v70 = 0xEC00000073726F6CLL;
    }

    *(v19 + 64) = v69;
    *(v19 + 72) = v70;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v56 = 0;
    v57 = v19;
    goto LABEL_59;
  }

  if (a6 == 1)
  {
    v21 = 0xE400000000000000;
    v22 = 1802658116;
    goto LABEL_31;
  }

LABEL_60:
  result = sub_25C771A28();
  __break(1u);
  return result;
}

uint64_t sub_25C769AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_25C771AF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64497463656A626FLL && a2 == 0xE800000000000000 || (sub_25C771AF8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEB0000000064496CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_25C771AF8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_25C769CAC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for PersistedThumbnail()
{
  result = qword_27FC12AA8;
  if (!qword_27FC12AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25C769E54()
{
  type metadata accessor for ThumbnailKey();
  if (v0 <= 0x3F)
  {
    sub_25C771808();
    if (v1 <= 0x3F)
    {
      sub_25C769F20();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Appearances(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25C769F20()
{
  if (!qword_27FC12AB8)
  {
    v0 = sub_25C771988();
    if (!v1)
    {
      atomic_store(v0, &qword_27FC12AB8);
    }
  }
}

unint64_t sub_25C769F74()
{
  result = qword_27FC12AC0;
  if (!qword_27FC12AC0)
  {
    type metadata accessor for ThumbnailKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12AC0);
  }

  return result;
}

uint64_t sub_25C769FCC()
{
  v0 = sub_25C7716C8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_25C7716B8();
  qword_27FC13F30 = result;
  return result;
}

id sub_25C76A010@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_25C76A01C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_25C7716D8();
    if (v10)
    {
      v11 = sub_25C7716F8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_25C7716E8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_25C7716D8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_25C7716F8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_25C7716E8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25C76A24C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_25C76A3DC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_25C76A7C4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_25C76A01C(v14, a3, a4, &v13);
  v10 = v4;
  sub_25C76A7C4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_25C76A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_25C7716D8();
  v11 = result;
  if (result)
  {
    result = sub_25C7716F8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_25C7716E8();
  sub_25C76A01C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_25C76A494(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_25C76A770(a3, a4);
          return sub_25C76A24C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25C76A5FC(uint64_t *a1, uint64_t *a2)
{
  sub_25C76A724();
  v4 = *a1;
  v5 = *a2;
  if ((sub_25C771958() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for PersistedThumbnail();
  v7 = v6[5];
  if ((sub_25C7717F8() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *v9 == *v11 && v10 == v12;
    if (!v13 && (sub_25C771AF8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (*(a1 + v6[7]) != *(a2 + v6[7]) || *(a1 + v6[8]) != *(a2 + v6[8]) || (sub_25C76A494(*(a1 + v6[9]), *(a1 + v6[9] + 8), *(a2 + v6[9]), *(a2 + v6[9] + 8)) & 1) == 0)
  {
    return 0;
  }

  v14 = v6[10];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = *v17;
  v19 = v17[1];

  return sub_25C76A494(v15, v16, v18, v19);
}

unint64_t sub_25C76A724()
{
  result = qword_27FC12AC8;
  if (!qword_27FC12AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC12AC8);
  }

  return result;
}

uint64_t sub_25C76A770(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25C76A7C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25C76A818()
{
  v0 = sub_25C771858();
  __swift_allocate_value_buffer(v0, qword_27FC12AD0);
  __swift_project_value_buffer(v0, qword_27FC12AD0);
  type metadata accessor for PersistedThumbnailCache();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12B00, &unk_25C772AF0);
  sub_25C7718E8();
  return sub_25C771848();
}

uint64_t sub_25C76A8B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12B48, &qword_25C772B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C76BBD4();
  sub_25C771BE8();
  v19 = *v3;
  HIBYTE(v18) = 0;
  type metadata accessor for ThumbnailKey();
  sub_25C76BCE0(&qword_27FC12B50, type metadata accessor for ThumbnailKey);
  sub_25C771AC8();
  if (!v2)
  {
    v11 = type metadata accessor for PersistedThumbnailCache.ThumbnailDescription();
    v12 = v11[5];
    LOBYTE(v19) = 1;
    sub_25C771808();
    sub_25C76BCE0(&qword_27FC12B58, MEMORY[0x277CC9578]);
    sub_25C771AC8();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v19) = 2;
    sub_25C771A98();
    v19 = *(v3 + v11[7]);
    HIBYTE(v18) = 3;
    sub_25C76BD28();
    sub_25C771AC8();
    v16 = *(v3 + v11[8]);
    LOBYTE(v19) = 4;
    sub_25C771AB8();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_25C76AB64(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_25C771808();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12B20, &qword_25C772B88);
  v31 = *(v33 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = v27 - v8;
  v10 = type metadata accessor for PersistedThumbnailCache.ThumbnailDescription();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C76BBD4();
  v32 = v9;
  v15 = v34;
  sub_25C771BD8();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v34 = a1;
    v16 = v31;
    type metadata accessor for ThumbnailKey();
    v35 = 0;
    sub_25C76BCE0(&qword_27FC12B30, type metadata accessor for ThumbnailKey);
    v17 = v32;
    sub_25C771A88();
    v18 = v36;
    v28 = v13;
    *v13 = v36;
    LOBYTE(v36) = 1;
    sub_25C76BCE0(&qword_27FC12B38, MEMORY[0x277CC9578]);
    sub_25C771A88();
    v27[1] = v18;
    (*(v30 + 32))(&v28[v10[5]], v6, v3);
    LOBYTE(v36) = 2;
    v19 = sub_25C771A58();
    v20 = v28;
    v21 = &v28[v10[6]];
    *v21 = v19;
    v21[1] = v22;
    v35 = 3;
    sub_25C76BC28();
    sub_25C771A88();
    *(v20 + v10[7]) = v36;
    LOBYTE(v36) = 4;
    v23 = sub_25C771A78();
    v24 = v20;
    v25 = v34;
    v26 = v23;
    (*(v16 + 8))(v17, v33);
    *(v24 + v10[8]) = v26;
    sub_25C76BC7C(v24, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    sub_25C76B9B4(v24);
  }
}

uint64_t sub_25C76B03C()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x656C746974;
  v4 = 0x656C616373;
  if (v1 != 3)
  {
    v4 = 0x6E61726165707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461657263;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25C76B0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25C76BFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25C76B108(uint64_t a1)
{
  v2 = sub_25C76BBD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25C76B144(uint64_t a1)
{
  v2 = sub_25C76BBD4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25C76B1B0(void *a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v4 = sub_25C771698();
  v5 = *(v4 - 8);
  v67 = v4;
  v68 = v5;
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistedThumbnailCache.ThumbnailDescription();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_25C7717C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  v66 = a1;
  sub_25C766968(&v60 - v19);
  v21 = sub_25C7717D8();
  if (v2)
  {
    (*(v14 + 8))(v20, v13);
    v27 = v2;
    sub_25C771688();
    sub_25C76BCE0(&qword_27FC12AE8, MEMORY[0x277CC8608]);
    v28 = v67;
    v29 = sub_25C771708();

    (v68[1])(v8, v28);
    if (v29)
    {
      v30 = type metadata accessor for PersistedThumbnail();
      (*(*(v30 - 8) + 56))(v65, 1, 1, v30);
    }

    else
    {
      if (qword_27FC12920 != -1)
      {
        swift_once();
      }

      v31 = sub_25C771858();
      __swift_project_value_buffer(v31, qword_27FC12AD0);
      v32 = v2;
      v33 = v66;
      v34 = sub_25C771838();
      v35 = sub_25C771948();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v68;
        *v36 = 138412546;
        *(v36 + 4) = v33;
        *v37 = v33;
        *(v36 + 12) = 2080;
        swift_getErrorValue();
        v38 = v33;
        v39 = sub_25C771B28();
        v41 = sub_25C76F5E4(v39, v40, &v69);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25C763000, v34, v35, "Cannot retrieve persisted thumbnail {key: %@, error: %s}", v36, 0x16u);
        sub_25C76B94C(v37);
        MEMORY[0x25F88C3E0](v37, -1, -1);
        v42 = v68;
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x25F88C3E0](v42, -1, -1);
        MEMORY[0x25F88C3E0](v36, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    v62 = v18;
    v63 = v21;
    v64 = v22;
    v61 = *(v14 + 8);
    v61(v20, v13);
    if (qword_27FC12918 != -1)
    {
      swift_once();
    }

    sub_25C76BCE0(&qword_27FC12AF8, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
    v23 = v12;
    v24 = v9;
    sub_25C7716A8();
    v60 = *(v23 + *(v9 + 32));
    v25 = v62;
    sub_25C766998(v62);
    v26 = sub_25C7717D8();
    v44 = v43;
    v68 = v26;
    v61(v25, v13);
    v45 = *v23;
    v46 = v24[5];
    v47 = type metadata accessor for PersistedThumbnail();
    v48 = v47[5];
    v49 = sub_25C771808();
    v50 = v65;
    (*(*(v49 - 8) + 16))(v65 + v48, v23 + v46, v49);
    v51 = (v23 + v24[6]);
    v53 = *v51;
    v52 = v51[1];
    v54 = *(v23 + v24[7]);

    v55 = v45;
    sub_25C76B9B4(v23);
    *v50 = v55;
    v56 = (v50 + v47[6]);
    *v56 = v53;
    v56[1] = v52;
    *(v50 + v47[7]) = v54;
    *(v50 + v47[8]) = v60;
    v57 = (v50 + v47[9]);
    v58 = v64;
    *v57 = v63;
    v57[1] = v58;
    v59 = (v50 + v47[10]);
    *v59 = v68;
    v59[1] = v44;
    (*(*(v47 - 1) + 56))(v50, 0, 1, v47);
  }
}

uint64_t sub_25C76B86C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for PersistedThumbnailCache.ThumbnailDescription()
{
  result = qword_27FC12B08;
  if (!qword_27FC12B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25C76B94C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12AF0, &qword_25C772AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C76B9B4(uint64_t a1)
{
  v2 = type metadata accessor for PersistedThumbnailCache.ThumbnailDescription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_25C76BA9C()
{
  type metadata accessor for ThumbnailKey();
  if (v0 <= 0x3F)
  {
    sub_25C771808();
    if (v1 <= 0x3F)
    {
      sub_25C769F20();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25C76BB50(uint64_t a1)
{
  *(a1 + 8) = sub_25C76BCE0(&qword_27FC12AF8, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
  result = sub_25C76BCE0(&qword_27FC12B18, type metadata accessor for PersistedThumbnailCache.ThumbnailDescription);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25C76BBD4()
{
  result = qword_27FC12B28;
  if (!qword_27FC12B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12B28);
  }

  return result;
}

unint64_t sub_25C76BC28()
{
  result = qword_27FC12B40;
  if (!qword_27FC12B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12B40);
  }

  return result;
}

uint64_t sub_25C76BC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedThumbnailCache.ThumbnailDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C76BCE0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25C76BD28()
{
  result = qword_27FC12B60;
  if (!qword_27FC12B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12B60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistedThumbnailCache.ThumbnailDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistedThumbnailCache.ThumbnailDescription.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25C76BED0()
{
  result = qword_27FC12B68;
  if (!qword_27FC12B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12B68);
  }

  return result;
}

unint64_t sub_25C76BF28()
{
  result = qword_27FC12B70;
  if (!qword_27FC12B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12B70);
  }

  return result;
}

unint64_t sub_25C76BF80()
{
  result = qword_27FC12B78;
  if (!qword_27FC12B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12B78);
  }

  return result;
}

uint64_t sub_25C76BFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_25C771AF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_25C771AF8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_25C771AF8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_25C771AF8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563)
  {

    return 4;
  }

  else
  {
    v6 = sub_25C771AF8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25C76C188()
{
  v0 = sub_25C771858();
  __swift_allocate_value_buffer(v0, qword_27FC12B80);
  __swift_project_value_buffer(v0, qword_27FC12B80);
  type metadata accessor for NotePreviewProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BF0, &qword_25C772E38);
  sub_25C7718E8();
  return sub_25C771848();
}

id sub_25C76C228()
{
  result = [objc_allocWithZone(type metadata accessor for NotePreviewProvider()) init];
  qword_281558AA0 = result;
  return result;
}

id NotePreviewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static NotePreviewProvider.shared.getter()
{
  if (qword_281558A98 != -1)
  {
    swift_once();
  }

  v1 = qword_281558AA0;

  return v1;
}

void sub_25C76C344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BD8, &qword_25C772E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25C772CB0;
  v1 = *MEMORY[0x277CCA460];
  *(inited + 32) = sub_25C7718D8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000025C7733C0;
  v3 = @"NPNotePreviewProviderError";
  sub_25C77133C(inited);
  swift_setDeallocating();
  sub_25C770528(inited + 32, &qword_27FC12BE0, &qword_25C772E28);
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v5 = sub_25C771868();

  v6 = [v4 initWithDomain:v3 code:1 userInfo:v5];

  qword_27FC12B98 = v6;
}

void sub_25C76C494(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BA8, &qword_25C772CF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v17 - v10);
  LODWORD(v16) = 0;
  v12 = [objc_allocWithZone(type metadata accessor for ThumbnailKey()) initWithType:a2 accountId:0 objectId:0 preferredSize:a1 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v16 hasDarkerSystemColors:? hasBorder:?];
  v13 = *(v3 + OBJC_IVAR___NPNotePreviewProviderInternal_cache);
  sub_25C76B1B0(v12, v11);
  if (v4)
  {
LABEL_6:

    return;
  }

  v14 = type metadata accessor for PersistedThumbnail();
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) == 1)
  {
    sub_25C770528(v11, &qword_27FC12BA8, &qword_25C772CF0);
    if (qword_27FC12930 != -1)
    {
      swift_once();
    }

    v15 = qword_27FC12B98;
    swift_willThrow();
    v15;
    goto LABEL_6;
  }

  sub_25C770280(v11, a3);
}

void sub_25C76C648(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v6 = v4;
  v35 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BA8, &qword_25C772CF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v32 - v10);
  v12 = type metadata accessor for PersistedThumbnail();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for ThumbnailKey());
  v17 = sub_25C7718A8();
  LODWORD(v31) = 0;
  v18 = a2;
  v19 = [v16 initWithType:a2 accountId:0 objectId:v17 preferredSize:a1 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v31 hasDarkerSystemColors:? hasBorder:?];

  v20 = v19;
  v21 = *(v6 + OBJC_IVAR___NPNotePreviewProviderInternal_cache);
  v22 = v36;
  sub_25C76B1B0(v20, v11);
  if (v22)
  {
  }

  else
  {
    v36 = v20;
    v32 = a1;
    v23 = v35;
    if ((*(v34 + 48))(v11, 1, v12) == 1)
    {
      sub_25C770528(v11, &qword_27FC12BA8, &qword_25C772CF0);
      if (qword_27FC12928 != -1)
      {
        swift_once();
      }

      v24 = sub_25C771858();
      __swift_project_value_buffer(v24, qword_27FC12B80);
      v25 = sub_25C771838();
      v26 = sub_25C771938();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v32;
      v29 = v33;
      if (v27)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_25C763000, v25, v26, v29, v30, 2u);
        MEMORY[0x25F88C3E0](v30, -1, -1);
      }

      sub_25C76C494(v28, v18, v23);
    }

    else
    {

      sub_25C770280(v11, v15);
      sub_25C770280(v15, v23);
    }
  }
}

void sub_25C76C964(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a7;
  v49 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BA8, &qword_25C772CF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v40 - v16);
  v18 = type metadata accessor for PersistedThumbnail();
  v46 = *(v18 - 8);
  v47 = v18;
  v19 = *(v46 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(type metadata accessor for ThumbnailKey());
  v42 = a1;
  v48 = a2;
  v23 = sub_25C7718A8();
  v43 = a3;
  v44 = a4;
  v24 = sub_25C7718A8();
  LODWORD(v39) = 0;
  v25 = a6;
  v26 = [v22 initWithType:a6 accountId:v23 objectId:v24 preferredSize:a5 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v39 hasDarkerSystemColors:? hasBorder:?];

  v27 = v51;
  v28 = *(v27 + OBJC_IVAR___NPNotePreviewProviderInternal_cache);
  v29 = v50;
  sub_25C76B1B0(v26, v17);
  if (v29)
  {
LABEL_8:

    return;
  }

  v50 = v26;
  v30 = v48;
  v40 = v25;
  v41 = a5;
  if ((*(v46 + 48))(v17, 1, v47) == 1)
  {
    sub_25C770528(v17, &qword_27FC12BA8, &qword_25C772CF0);
    if (qword_27FC12928 != -1)
    {
      swift_once();
    }

    v31 = sub_25C771858();
    __swift_project_value_buffer(v31, qword_27FC12B80);

    v32 = v44;

    v33 = sub_25C771838();
    v34 = sub_25C771938();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v45;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_25C76F5E4(v42, v30, &v52);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_25C76F5E4(v43, v32, &v52);
      _os_log_impl(&dword_25C763000, v33, v34, v36, v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F88C3E0](v38, -1, -1);
      MEMORY[0x25F88C3E0](v37, -1, -1);
    }

    v26 = v50;
    sub_25C76C494(v41, v40, v49);
    goto LABEL_8;
  }

  sub_25C770280(v17, v21);
  sub_25C770280(v21, v49);
}

void NotePreviewProvider.defaultPreview()(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for PersistedThumbnail();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BA8, &qword_25C772CF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  sub_25C76C494(0, 4, &v30 - v16);
  if (v1)
  {
    v31 = v1;
    v19 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BB0, &qword_25C772CF8);
    type metadata accessor for NotePreviewProviderErrors(0);
    if (swift_dynamicCast())
    {

      swift_willThrow();
      v20 = v31;
    }

    else
    {

      if (qword_27FC12928 != -1)
      {
        swift_once();
      }

      v21 = sub_25C771858();
      __swift_project_value_buffer(v21, qword_27FC12B80);
      v22 = v1;
      v23 = sub_25C771838();
      v24 = sub_25C771948();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v27 = sub_25C771B28();
        v29 = sub_25C76F5E4(v27, v28, &v31);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_25C763000, v23, v24, "Cannot retrieve default note preview {error: %s}", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x25F88C3E0](v26, -1, -1);
        MEMORY[0x25F88C3E0](v25, -1, -1);
      }

      sub_25C76FF60();
      swift_willThrow();
      v20 = v1;
    }
  }

  else
  {
    v30 = a1;
    v18 = *(v4 + 56);
    v18(v17, 0, 1, v3);
    sub_25C76C494(1, 4, v15);
    v18(v15, 0, 1, v3);
    sub_25C76C494(0, 7, v7);
    sub_25C76C494(1, 7, v12);
    v18(v12, 0, 1, v3);
    sub_25C7705EC(v17, v15, v7, v12, v30);
  }
}

void NotePreviewProvider.recentPreview()(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for PersistedThumbnail();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BA8, &qword_25C772CF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  sub_25C76C648(0, 4, "Cannot retrieve recent chrome thumbnail — falling back to default chrome thumbnail", &v30 - v16);
  if (v1)
  {
    v31 = v1;
    v19 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BB0, &qword_25C772CF8);
    type metadata accessor for NotePreviewProviderErrors(0);
    if (swift_dynamicCast())
    {

      swift_willThrow();
      v20 = v31;
    }

    else
    {

      if (qword_27FC12928 != -1)
      {
        swift_once();
      }

      v21 = sub_25C771858();
      __swift_project_value_buffer(v21, qword_27FC12B80);
      v22 = v1;
      v23 = sub_25C771838();
      v24 = sub_25C771948();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v27 = sub_25C771B28();
        v29 = sub_25C76F5E4(v27, v28, &v31);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_25C763000, v23, v24, "Cannot retrieve recent note preview {error: %s}", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x25F88C3E0](v26, -1, -1);
        MEMORY[0x25F88C3E0](v25, -1, -1);
      }

      sub_25C76FF60();
      swift_willThrow();
      v20 = v1;
    }
  }

  else
  {
    v30 = a1;
    v18 = *(v4 + 56);
    v18(v17, 0, 1, v3);
    sub_25C76C648(1, 4, "Cannot retrieve recent chrome thumbnail — falling back to default chrome thumbnail", v15);
    v18(v15, 0, 1, v3);
    sub_25C76C648(0, 7, "Cannot retrieve recent preview thumbnail — falling back to default preview thumbnail", v7);
    sub_25C76C648(1, 7, "Cannot retrieve recent preview thumbnail — falling back to default preview thumbnail", v12);
    v18(v12, 0, 1, v3);
    sub_25C7705EC(v17, v15, v7, v12, v30);
  }
}

void NotePreviewProvider.preview(accountId:noteId:prefersDefaultFallback:)(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, char a4@<W4>, _OWORD *a5@<X8>)
{
  v90 = a2;
  v91 = a1;
  v86 = a5;
  v7 = type metadata accessor for PersistedThumbnail();
  v8 = *(v7 - 8);
  v84 = v7;
  v85 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v83 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v83 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BA8, &qword_25C772CF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v83 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v83 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v83 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v83 - v29;
  MEMORY[0x28223BE20](v28);
  v33 = &v83 - v32;
  v87 = v31;
  v88 = a3;
  if (!v31)
  {
    goto LABEL_12;
  }

  v34 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v34 = v91 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34 || !a3)
  {
    goto LABEL_12;
  }

  v35 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v35 = v90 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
LABEL_12:
    if (qword_27FC12928 != -1)
    {
      swift_once();
    }

    v45 = sub_25C771858();
    __swift_project_value_buffer(v45, qword_27FC12B80);
    v46 = sub_25C771838();
    v47 = sub_25C771938();
    v48 = os_log_type_enabled(v46, v47);
    v39 = v90;
    v49 = v91;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      *(v50 + 4) = a4 & 1;
      _os_log_impl(&dword_25C763000, v46, v47, "Cannot retrieve identifier — falling back to recent or default preview {prefersDefaultFallback: %{BOOL}d}", v50, 8u);
      MEMORY[0x25F88C3E0](v50, -1, -1);
    }

    if (a4)
    {
      v51 = v89;
      NotePreviewProvider.defaultPreview()(v92);
      v52 = v51;
      if (v51)
      {
LABEL_18:
        v43 = v52;
        goto LABEL_19;
      }
    }

    else
    {
      v55 = v89;
      NotePreviewProvider.recentPreview()(v92);
      v52 = v55;
      if (v55)
      {
        goto LABEL_18;
      }
    }

    v56 = v92[1];
    v57 = v93;
    v58 = v94;
    v59 = v86;
    *v86 = v92[0];
    v59[1] = v56;
    *(v59 + 4) = v57;
    *(v59 + 5) = v58;
    return;
  }

  v36 = [objc_opt_self() currentDevice];
  v37 = [v36 userInterfaceIdiom];

  if (v37)
  {
    v39 = v90;
    v38 = v91;
    v41 = v87;
    v40 = v88;
    v42 = v89;
    sub_25C76C964(v91, v87, v90, v88, 0, 4, "Cannot retrieve chrome thumbnail — falling back to default chrome thumbnail {accountId: %s, noteId: %s}", v24);
    v43 = v42;
    if (!v42)
    {
      v44 = *(v85 + 56);
      v85 += 56;
      v89 = v44;
      v44(v24, 0, 1, v84);
      sub_25C76C964(v38, v41, v39, v40, 1, 4, "Cannot retrieve chrome thumbnail — falling back to default chrome thumbnail {accountId: %s, noteId: %s}", v21);
      v89(v21, 0, 1, v84);
      sub_25C76C964(v38, v41, v39, v40, 0, 7, "Cannot retrieve preview thumbnail — falling back to default preview thumbnail {accountId: %s, noteId: %s}", v83);
      sub_25C76C964(v38, v41, v39, v40, 1, 7, "Cannot retrieve preview thumbnail — falling back to default preview thumbnail {accountId: %s, noteId: %s}", v18);
      v89(v18, 0, 1, v84);
      sub_25C7705EC(v24, v21, v83, v18, v86);
      return;
    }

    v49 = v38;
  }

  else
  {
    v79 = v84;
    v80 = *(v85 + 56);
    v80(v33, 1, 1, v84);
    v80(v30, 1, 1, v79);
    v81 = v87;
    v82 = v89;
    sub_25C76C964(v91, v87, v90, v88, 0, 7, "Cannot retrieve preview thumbnail — falling back to default preview thumbnail {accountId: %s, noteId: %s}", v13);
    v43 = v82;
    if (!v82)
    {
      sub_25C76C964(v91, v81, v90, v88, 1, 7, "Cannot retrieve preview thumbnail — falling back to default preview thumbnail {accountId: %s, noteId: %s}", v27);
      v80(v27, 0, 1, v84);
      sub_25C7705EC(v33, v30, v13, v27, v86);
      return;
    }

    sub_25C770528(v30, &qword_27FC12BA8, &qword_25C772CF0);
    sub_25C770528(v33, &qword_27FC12BA8, &qword_25C772CF0);
    v39 = v90;
    v49 = v91;
  }

LABEL_19:
  *&v92[0] = v43;
  v53 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BB0, &qword_25C772CF8);
  type metadata accessor for NotePreviewProviderErrors(0);
  if (swift_dynamicCast())
  {

    swift_willThrow();
    v54 = *&v92[0];
  }

  else
  {

    if (qword_27FC12928 != -1)
    {
      swift_once();
    }

    v60 = sub_25C771858();
    __swift_project_value_buffer(v60, qword_27FC12B80);
    v61 = v43;
    v62 = v88;

    v63 = v87;

    v64 = v62;
    v65 = sub_25C771838();
    v66 = sub_25C771948();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v92[0] = v91;
      *v67 = 136315650;
      if (v63)
      {
        v68 = v49;
      }

      else
      {
        v68 = 9732322;
      }

      v69 = 0xA300000000000000;
      v70 = v39;
      if (v63)
      {
        v71 = v63;
      }

      else
      {
        v71 = 0xA300000000000000;
      }

      v72 = sub_25C76F5E4(v68, v71, v92);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      if (v64)
      {
        v73 = v70;
      }

      else
      {
        v73 = 9732322;
      }

      if (v64)
      {
        v69 = v64;
      }

      v74 = sub_25C76F5E4(v73, v69, v92);

      *(v67 + 14) = v74;
      *(v67 + 22) = 2080;
      swift_getErrorValue();
      v75 = sub_25C771B28();
      v77 = sub_25C76F5E4(v75, v76, v92);

      *(v67 + 24) = v77;
      _os_log_impl(&dword_25C763000, v65, v66, "Cannot retrieve note preview {accountId: %s, noteId: %s, error: %s}", v67, 0x20u);
      v78 = v91;
      swift_arrayDestroy();
      MEMORY[0x25F88C3E0](v78, -1, -1);
      MEMORY[0x25F88C3E0](v67, -1, -1);
    }

    sub_25C76FF60();
    swift_willThrow();
    v54 = v43;
  }
}

void NotePreviewProvider.preview(for:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_25C771878();

  v6 = *MEMORY[0x277D6B818];
  *&v52 = sub_25C7718D8();
  *(&v52 + 1) = v7;
  sub_25C7719C8();
  if (!*(v5 + 16) || (v8 = sub_25C76FC04(v49), (v9 & 1) == 0))
  {

    sub_25C77017C(v49);
LABEL_12:
    v52 = 0u;
    v53 = 0u;
    goto LABEL_13;
  }

  sub_25C7701D0(*(v5 + 56) + 32 * v8, &v52);
  sub_25C77017C(v49);

  if (!*(&v53 + 1))
  {
LABEL_13:
    sub_25C770528(&v52, &qword_27FC12970, &qword_25C772370);
    v11 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v10 = swift_dynamicCast();
  if (v10)
  {
    v11 = v49[0];
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v49[1];
  }

  else
  {
    v12 = 0;
  }

LABEL_14:
  v13 = [a1 userInfo];
  if (!v13)
  {
LABEL_22:
    v52 = 0u;
    v53 = 0u;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = sub_25C771878();

  v16 = *MEMORY[0x277D6B810];
  *&v52 = sub_25C7718D8();
  *(&v52 + 1) = v17;
  sub_25C7719C8();
  if (!*(v15 + 16) || (v18 = sub_25C76FC04(v49), (v19 & 1) == 0))
  {

    sub_25C77017C(v49);
    goto LABEL_22;
  }

  sub_25C7701D0(*(v15 + 56) + 32 * v18, &v52);
  sub_25C77017C(v49);

  if (!*(&v53 + 1))
  {
LABEL_23:
    sub_25C770528(&v52, &qword_27FC12970, &qword_25C772370);
    v20 = 0;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v20 = v49[0];
  }

  else
  {
    v20 = 0;
  }

LABEL_24:
  v21 = [a1 userInfo];
  if (!v21)
  {
LABEL_31:
    v52 = 0u;
    v53 = 0u;
    goto LABEL_32;
  }

  v22 = v21;
  v23 = sub_25C771878();

  v24 = *MEMORY[0x277D6B820];
  *&v52 = sub_25C7718D8();
  *(&v52 + 1) = v25;
  sub_25C7719C8();
  if (!*(v23 + 16) || (v26 = sub_25C76FC04(v49), (v27 & 1) == 0))
  {

    sub_25C77017C(v49);
    goto LABEL_31;
  }

  sub_25C7701D0(*(v23 + 56) + 32 * v26, &v52);
  sub_25C77017C(v49);

  if (!*(&v53 + 1))
  {
LABEL_32:
    sub_25C770528(&v52, &qword_27FC12970, &qword_25C772370);
    goto LABEL_33;
  }

  if (swift_dynamicCast())
  {
    v28 = v49[0];
    goto LABEL_34;
  }

LABEL_33:
  v28 = 0;
LABEL_34:
  v29 = objc_opt_self();
  v30 = sub_25C7718A8();
  v31 = [v29 objectForKey_];

  if (v31)
  {
    sub_25C771998();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  *v49 = v52;
  v50 = v53;
  if (*(&v53 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v28)
      {
        v32 = 1;
        goto LABEL_46;
      }

      v32 = v51;
      goto LABEL_45;
    }
  }

  else
  {
    sub_25C770528(v49, &qword_27FC12970, &qword_25C772370);
  }

  v32 = 1;
  if ((v28 & 1) == 0)
  {
LABEL_45:
    v32 ^= 1u;
  }

LABEL_46:
  NotePreviewProvider.preview(accountId:noteId:prefersDefaultFallback:)(v20, v11, v12, v32, a2);
  v33 = v47;
  if (v47)
  {

    v49[0] = v47;
    v34 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BB0, &qword_25C772CF8);
    type metadata accessor for NotePreviewProviderErrors(0);
    if (swift_dynamicCast())
    {

      swift_willThrow();
    }

    else
    {

      if (qword_27FC12928 != -1)
      {
        swift_once();
      }

      v35 = sub_25C771858();
      __swift_project_value_buffer(v35, qword_27FC12B80);
      v36 = v47;
      v37 = a1;
      v38 = sub_25C771838();
      v39 = sub_25C771948();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49[0] = v48;
        *v40 = 138412546;
        *(v40 + 4) = v37;
        *v41 = v37;
        *(v40 + 12) = 2080;
        swift_getErrorValue();
        v42 = v37;
        v43 = sub_25C771B28();
        v45 = sub_25C76F5E4(v43, v44, v49);

        *(v40 + 14) = v45;
        _os_log_impl(&dword_25C763000, v38, v39, "Cannot retrieve note preview {userActivity: %@, error: %s}", v40, 0x16u);
        sub_25C770528(v41, &qword_27FC12AF0, &qword_25C772AE8);
        MEMORY[0x25F88C3E0](v41, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x25F88C3E0](v48, -1, -1);
        MEMORY[0x25F88C3E0](v40, -1, -1);
      }

      sub_25C76FF60();
      swift_willThrow();
    }
  }

  else
  {
  }
}

unint64_t NotePreviewProvider.__previewDictionary(for:)(void *a1)
{
  NotePreviewProvider.preview(for:)(a1, &v6);
  if (!v2)
  {
    v3 = v7;
    v4 = v8;
    v1 = sub_25C770D14();
  }

  return v1;
}

id NotePreviewProvider.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NPNotePreviewProviderInternal_cache;
  v3 = [objc_opt_self() defaultManager];
  type metadata accessor for PersistedThumbnailCache();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *&v0[v2] = v4;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id NotePreviewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25C76E95C()
{
  type metadata accessor for WidgetNotePreviewProvider();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() defaultManager];
  type metadata accessor for PersistedThumbnailCache();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(v0 + 16) = result;
  qword_27FC12BA0 = v0;
  return result;
}

uint64_t static WidgetNotePreviewProvider.shared.getter()
{
  if (qword_27FC12938 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25C76EA38()
{
  sub_25C771B78();
  MEMORY[0x25F88BE90](0);
  return sub_25C771BB8();
}

uint64_t sub_25C76EAA4()
{
  sub_25C771B78();
  MEMORY[0x25F88BE90](0);
  return sub_25C771BB8();
}

uint64_t WidgetNotePreviewProvider.preview(accountId:noteId:type:)@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, void *a3@<X4>, _OWORD *a4@<X8>)
{
  v109 = a3;
  v110 = a1;
  v105 = a4;
  v6 = sub_25C7717C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v106 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PersistedThumbnail();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v107 = (&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BA8, &qword_25C772CF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = (&v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v93 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v93 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v93 - v26;
  MEMORY[0x28223BE20](v25);
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31 || !a2)
  {
    goto LABEL_18;
  }

  v32 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v32 = v110 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v94 = v21;
    v96 = v7;
    v97 = v6;
    v100 = v11;
    v34 = v11[7];
    v33 = v11 + 7;
    v103 = v4;
    v104 = &v93 - v28;
    v35 = v29;
    v36 = v30;
    v34(&v93 - v28, 1, 1, v10);
    v95 = v34;
    v34(v27, 1, 1, v10);
    v98 = type metadata accessor for ThumbnailKey();
    v37 = objc_allocWithZone(v98);
    v99 = v35;
    v101 = v36;
    v38 = sub_25C7718A8();
    v102 = a2;
    v39 = v27;
    v40 = sub_25C7718A8();
    LODWORD(v91) = 0;
    v41 = [v37 initWithType:v109 accountId:v38 objectId:v40 preferredSize:0 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v91 hasDarkerSystemColors:? hasBorder:?];

    v42 = v39;
    v43 = v104;

    v44 = v103[2];
    v45 = v108;
    sub_25C76B1B0(v41, v24);
    if (v45)
    {
LABEL_16:

      sub_25C770528(v42, &qword_27FC12BA8, &qword_25C772CF0);
      v63 = v43;
      return sub_25C770528(v63, &qword_27FC12BA8, &qword_25C772CF0);
    }

    v103 = v33;
    v108 = v42;
    v46 = v100[6];
    if ((v46)(v24, 1, v10) == 1)
    {
      sub_25C770528(v24, &qword_27FC12BA8, &qword_25C772CF0);
      if (qword_27FC12928 != -1)
      {
        swift_once();
      }

      v47 = sub_25C771858();
      __swift_project_value_buffer(v47, qword_27FC12B80);
      v48 = v101;

      v49 = v102;

      v109 = v41;
      v50 = v41;
      v51 = sub_25C771838();
      v52 = sub_25C771948();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v110;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v111 = v56;
        *v55 = 136315650;
        *(v55 + 4) = sub_25C76F5E4(v99, v48, &v111);
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_25C76F5E4(v54, v49, &v111);
        *(v55 + 22) = 2080;
        v57 = v106;
        sub_25C766998(v106);
        sub_25C770484(&qword_27FC12BC8, MEMORY[0x277CC9260]);
        v58 = v97;
        v59 = sub_25C771AD8();
        v61 = v60;
        (*(v96 + 8))(v57, v58);
        v62 = sub_25C76F5E4(v59, v61, &v111);

        *(v55 + 24) = v62;
        _os_log_impl(&dword_25C763000, v51, v52, "Cannot retrieve widget thumbnail {accountId: %s, noteId: %s, url: %s}", v55, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F88C3E0](v56, -1, -1);
        MEMORY[0x25F88C3E0](v55, -1, -1);
      }

      sub_25C77022C();
      swift_allocError();
      swift_willThrow();
      v43 = v104;
      v42 = v108;
      v41 = v109;
      goto LABEL_16;
    }

    v100 = v46;

    sub_25C770280(v24, v107);
    v69 = objc_allocWithZone(v98);
    v70 = sub_25C7718A8();
    v71 = sub_25C7718A8();
    LODWORD(v92) = 0;
    v72 = [v69 initWithType:v109 accountId:v70 objectId:v71 preferredSize:1 scale:0 appearance:0 isRTL:0.0 contentSizeCategory:0.0 hasBoldText:1.0 hasButtonShapes:v92 hasDarkerSystemColors:? hasBorder:?];

    sub_25C76B1B0(v72, v18);
    if ((v100)(v18, 1, v10) == 1)
    {
      sub_25C770528(v18, &qword_27FC12BA8, &qword_25C772CF0);
      if (qword_27FC12928 != -1)
      {
        swift_once();
      }

      v73 = sub_25C771858();
      __swift_project_value_buffer(v73, qword_27FC12B80);
      v74 = v101;

      v75 = v102;

      v109 = v72;
      v76 = v72;
      v77 = sub_25C771838();
      v78 = sub_25C771948();

      v79 = os_log_type_enabled(v77, v78);
      v80 = v110;
      if (v79)
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v111 = v82;
        *v81 = 136315650;
        *(v81 + 4) = sub_25C76F5E4(v99, v74, &v111);
        *(v81 + 12) = 2080;
        *(v81 + 14) = sub_25C76F5E4(v80, v75, &v111);
        *(v81 + 22) = 2080;
        v83 = v106;
        sub_25C766998(v106);
        sub_25C770484(&qword_27FC12BC8, MEMORY[0x277CC9260]);
        v84 = v97;
        v85 = sub_25C771AD8();
        v87 = v86;
        (*(v96 + 8))(v83, v84);
        v88 = sub_25C76F5E4(v85, v87, &v111);

        *(v81 + 24) = v88;
        _os_log_impl(&dword_25C763000, v77, v78, "Cannot retrieve widget thumbnail {accountId: %s, noteId: %s, url: %s}", v81, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F88C3E0](v82, -1, -1);
        MEMORY[0x25F88C3E0](v81, -1, -1);
      }

      sub_25C77022C();
      swift_allocError();
      swift_willThrow();
      v89 = v107;

      sub_25C770120(v89);
      sub_25C770528(v108, &qword_27FC12BA8, &qword_25C772CF0);
      v63 = v104;
      return sub_25C770528(v63, &qword_27FC12BA8, &qword_25C772CF0);
    }

    v90 = v94;
    sub_25C770280(v18, v94);
    v95(v90, 0, 1, v10);
    return sub_25C7705EC(v104, v108, v107, v90, v105);
  }

  else
  {
LABEL_18:
    if (qword_27FC12928 != -1)
    {
      swift_once();
    }

    v65 = sub_25C771858();
    __swift_project_value_buffer(v65, qword_27FC12B80);
    v66 = sub_25C771838();
    v67 = sub_25C771948();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_25C763000, v66, v67, "Cannot retrieve identifier", v68, 2u);
      MEMORY[0x25F88C3E0](v68, -1, -1);
    }

    sub_25C77022C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t WidgetNotePreviewProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WidgetNotePreviewProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25C76F5E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25C76F6B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25C7701D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25C76F6B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25C76F7BC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25C771A18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25C76F7BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_25C76F808(a1, a2);
  sub_25C76F938(&unk_286E64400);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25C76F808(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25C76FA24(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25C771A18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25C771918();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25C76FA24(v10, 0);
        result = sub_25C7719D8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25C76F938(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25C76FA98(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25C76FA24(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BE8, &qword_25C772E30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25C76FA98(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BE8, &qword_25C772E30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_25C76FB8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25C771B78();
  sub_25C7718F8();
  v6 = sub_25C771BB8();

  return sub_25C76FCDC(a1, a2, v6);
}

unint64_t sub_25C76FC04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25C7719A8();

  return sub_25C76FD94(a1, v5);
}

unint64_t sub_25C76FC48(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25C7718D8();
  sub_25C771B78();
  sub_25C7718F8();
  v4 = sub_25C771BB8();

  return sub_25C76FE5C(a1, v4);
}

unint64_t sub_25C76FCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25C771AF8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25C76FD94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25C7704CC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F88BCC0](v9, a1);
      sub_25C77017C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25C76FE5C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25C7718D8();
      v9 = v8;
      if (v7 == sub_25C7718D8() && v9 == v10)
      {
        break;
      }

      v12 = sub_25C771AF8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_25C76FF60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BD8, &qword_25C772E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25C772CC0;
  v1 = *MEMORY[0x277CCA460];
  *(inited + 32) = sub_25C7718D8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x800000025C7733E0;
  v3 = *MEMORY[0x277CCA7E8];
  *(inited + 80) = sub_25C7718D8();
  *(inited + 88) = v4;
  swift_getErrorValue();
  *(inited + 120) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
  v6 = @"NPNotePreviewProviderError";
  sub_25C77133C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BE0, &qword_25C772E28);
  swift_arrayDestroy();
  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v8 = sub_25C771868();

  v9 = [v7 initWithDomain:v6 code:0 userInfo:v8];

  return v9;
}

uint64_t sub_25C770120(uint64_t a1)
{
  v2 = type metadata accessor for PersistedThumbnail();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C7701D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25C77022C()
{
  result = qword_27FC12BC0;
  if (!qword_27FC12BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12BC0);
  }

  return result;
}

uint64_t sub_25C770280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedThumbnail();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for WidgetNotePreviewProvider.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WidgetNotePreviewProvider.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25C770430()
{
  result = qword_27FC12BD0;
  if (!qword_27FC12BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12BD0);
  }

  return result;
}

uint64_t sub_25C770484(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25C770528(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25C7705EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v80 = a5;
  v94 = a4;
  v92 = a2;
  v7 = sub_25C7719F8();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BA8, &qword_25C772CF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v78 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v78 - v17;
  v93 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v87 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v19 = (*a3 + OBJC_IVAR___ICThumbnailKey_objectId);
  v20 = v19[1];
  v79 = *v19;
  v21 = type metadata accessor for PersistedThumbnail();
  v22 = v21[6];
  v90 = a3;
  v91 = a1;
  v23 = (a3 + v22);
  v24 = v23[1];
  v78 = *v23;
  sub_25C77160C(a1, v18, &qword_27FC12BA8, &qword_25C772CF0);
  v25 = *(v21 - 1);
  v26 = *(v25 + 48);
  v85 = v25 + 48;
  v86 = v26;
  v27 = v26(v18, 1, v21);
  v88 = v24;
  v89 = v20;
  if (v27 == 1)
  {

    sub_25C7715A4(v18);
    v28 = v90;
    v29 = 0x277D75000uLL;
    goto LABEL_12;
  }

  v30 = &v18[v21[10]];
  v31 = *v30;
  v32 = *(v30 + 1);
  v33 = *&v18[v21[7]];
  v34 = objc_allocWithZone(MEMORY[0x277D755B8]);

  v35 = sub_25C7717E8();
  v36 = [v34 initWithData:v35 scale:v33];

  sub_25C770120(v18);
  if (!v36)
  {
    goto LABEL_6;
  }

  v37 = v36;

  sub_25C77160C(v92, v16, &qword_27FC12BA8, &qword_25C772CF0);
  if (v86(v16, 1, v21) == 1)
  {

    sub_25C7715A4(v16);
    v93 = v37;
LABEL_6:
    v28 = v90;
    v29 = 0x277D75000;
    goto LABEL_12;
  }

  v38 = &v16[v21[10]];
  v39 = *v38;
  v40 = *(v38 + 1);
  v41 = *&v16[v21[7]];
  v29 = 0x277D75000uLL;
  v42 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v43 = sub_25C7717E8();
  v44 = [v42 initWithData:v43 scale:v41];

  sub_25C770120(v16);
  if (v44)
  {
    v45 = [v37 imageAsset];

    v28 = v90;
    if (v45)
    {
      v46 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      [v45 registerImage:v44 withTraitCollection:v46];
    }

    v93 = v37;
  }

  else
  {

    v93 = v37;
    v28 = v90;
  }

LABEL_12:
  v47 = (v28 + v21[10]);
  v48 = *v47;
  v49 = v47[1];
  v50 = *(v28 + v21[7]);
  v51 = objc_allocWithZone(*(v29 + 1464));
  v52 = sub_25C7717E8();
  v53 = [v51 initWithData:v52 scale:v50];

  if (!v53)
  {
    v56 = v87;
LABEL_22:
    v72 = v82;
    sub_25C7719E8();
    v73 = sub_25C771A08();
    swift_allocError();
    v75 = v74;
    v77 = v83;
    v76 = v84;
    (*(v83 + 16))(v74, v72, v84);
    (*(*(v73 - 8) + 104))(v75, *MEMORY[0x277D84168], v73);
    swift_willThrow();
    sub_25C7715A4(v94);
    sub_25C7715A4(v92);
    sub_25C7715A4(v91);
    (*(v77 + 8))(v72, v76);
    sub_25C770120(v28);
  }

  v54 = v53;

  v55 = v81;
  sub_25C77160C(v94, v81, &qword_27FC12BA8, &qword_25C772CF0);
  if (v86(v55, 1, v21) == 1)
  {

    sub_25C7715A4(v55);
LABEL_21:
    v56 = v54;
    goto LABEL_22;
  }

  v57 = (v55 + v21[10]);
  v58 = v55;
  v59 = *v57;
  v60 = v57[1];
  v61 = *(v58 + v21[7]);
  v62 = objc_allocWithZone(*(v29 + 1464));
  v63 = sub_25C7717E8();
  v64 = [v62 initWithData:v63 scale:v61];

  sub_25C770120(v58);
  if (!v64)
  {

    goto LABEL_21;
  }

  v65 = [v54 imageAsset];

  v66 = v89;
  if (v65)
  {
    v67 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    [v65 registerImage:v64 withTraitCollection:v67];
  }

  sub_25C7715A4(v94);
  sub_25C7715A4(v92);
  sub_25C7715A4(v91);
  result = sub_25C770120(v28);
  *&v70 = v78;
  *&v69 = v79;
  *(&v69 + 1) = v66;
  *(&v70 + 1) = v88;
  v71 = v80;
  *v80 = v69;
  v71[1] = v70;
  *(v71 + 4) = v93;
  *(v71 + 5) = v54;
  return result;
}

unint64_t sub_25C770D14()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12C08, "D\b");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25C772350;
  *(inited + 32) = @"NPNotePreviewKeyID";
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12958, &qword_25C772360);
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  *(inited + 64) = v8;
  *(inited + 72) = @"NPNotePreviewKeyTitle";
  *(inited + 80) = v4;
  *(inited + 88) = v3;
  *(inited + 104) = v8;
  *(inited + 112) = @"NPNotePreviewKeyChrome";
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12C10, &qword_25C772F08);
  *(inited + 120) = v6;
  *(inited + 144) = v9;
  *(inited + 152) = @"NPNotePreviewKeyPreview";
  *(inited + 184) = sub_25C7712F4(0, &qword_27FC12C00, 0x277D755B8);
  *(inited + 160) = v5;
  v10 = v6;
  v11 = v5;
  v12 = @"NPNotePreviewKeyID";
  v13 = @"NPNotePreviewKeyTitle";
  v14 = @"NPNotePreviewKeyChrome";
  v15 = @"NPNotePreviewKeyPreview";

  v16 = sub_25C77146C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12C18, &qword_25C772F10);
  swift_arrayDestroy();
  return v16;
}

uint64_t NotePreview.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NotePreview.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NotePreview.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NotePreview.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *NotePreview.chrome.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_25C77106C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t _s15NotesPreviewKit04NoteB0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_25C771AF8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v4 != v9 || v5 != v10) && (sub_25C771AF8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (v11)
    {
      sub_25C7712F4(0, &qword_27FC12C00, 0x277D755B8);
      v13 = v11;
      v14 = v6;
      v15 = sub_25C771958();

      if (v15)
      {
        goto LABEL_18;
      }
    }
  }

  else if (!v11)
  {
LABEL_18:
    sub_25C7712F4(0, &qword_27FC12AC8, 0x277D82BB8);
    return sub_25C771958() & 1;
  }

  return 0;
}

unint64_t sub_25C7711C0()
{
  result = qword_27FC12BF8;
  if (!qword_27FC12BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC12958, &qword_25C772360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC12BF8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25C771250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25C771298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25C7712F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_25C77133C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12C28, &unk_25C772F20);
    v3 = sub_25C771A38();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C77160C(v4, &v13, &qword_27FC12BE0, &qword_25C772E28);
      v5 = v13;
      v6 = v14;
      result = sub_25C76FB8C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25C771594(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25C77146C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12C20, &qword_25C772F18);
    v3 = sub_25C771A38();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C77160C(v4, &v11, &qword_27FC12C18, &qword_25C772F10);
      v5 = v11;
      result = sub_25C76FC48(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25C771594(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_25C771594(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25C7715A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC12BA8, &qword_25C772CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C77160C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}