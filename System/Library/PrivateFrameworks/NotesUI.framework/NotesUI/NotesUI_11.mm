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

  v17 = sub_1D4419C14();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = sub_1D4419C14();

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

  v15 = sub_1D4419C14();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_1D4419C14();

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
  v5 = MEMORY[0x1E69E7CC0];
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B60);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
      sub_1D418BC58();
      v15 = sub_1D4419BB4();

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
        result = sub_1D438D2B4(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1D438D2B4((v12 > 1), v13 + 1, 1, v5);
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

id sub_1D43A7BBC(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_1D4417234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_1D43A6744(a3, v8);

  v10 = sub_1D44171C4();
  (*(v6 + 8))(v8, v5);

  return v10;
}

id ThumbnailKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D43A7D68()
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

uint64_t sub_1D43A7DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D43A8F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D43A7E04(uint64_t a1)
{
  v2 = sub_1D43A83C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D43A7E40(uint64_t a1)
{
  v2 = sub_1D43A83C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ThumbnailKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ThumbnailKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D43A83C4();
  sub_1D441AF94();
  v8[15] = 0;
  sub_1D441ACC4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D441ACC4();
  v8[13] = 2;
  sub_1D441ACE4();
  return (*(v4 + 8))(v6, v3);
}

id ThumbnailKey.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBA88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D43A83C4();
  sub_1D441AF84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = 0;
    v9 = sub_1D441AC54();
    v11 = &v1[OBJC_IVAR___ICThumbnailKey_accountId];
    *v11 = v9;
    v11[1] = v12;
    v22 = 1;
    v13 = sub_1D441AC54();
    v14 = &v1[OBJC_IVAR___ICThumbnailKey_objectId];
    *v14 = v13;
    v14[1] = v15;
    v22 = 2;
    v16 = sub_1D441AC74();
    v17 = &v1[OBJC_IVAR___ICThumbnailKey_thumbnailId];
    *v17 = v16;
    v17[1] = v18;
    v21.receiver = v1;
    v21.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v21, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id sub_1D43A8350@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ThumbnailKey.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D43A83C4()
{
  result = qword_1EDE33558;
  if (!qword_1EDE33558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE33558);
  }

  return result;
}

unint64_t sub_1D43A8480()
{
  result = qword_1EC7CBA90;
  if (!qword_1EC7CBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBA90);
  }

  return result;
}

unint64_t sub_1D43A84D8()
{
  result = qword_1EDE33548;
  if (!qword_1EDE33548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE33548);
  }

  return result;
}

unint64_t sub_1D43A8530()
{
  result = qword_1EDE33550;
  if (!qword_1EDE33550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE33550);
  }

  return result;
}

uint64_t sub_1D43A8584(uint64_t a1)
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
    result = sub_1D441ABC4();
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

void sub_1D43A8770(double a1)
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
    v1 = sub_1D441AD44();
    MEMORY[0x1DA6D5730](v1);

    MEMORY[0x1DA6D5730](120, 0xE100000000000000);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1D43A882C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1D4419C14();
  }

  else
  {
    v2 = *MEMORY[0x1E69DDC90];
  }

  v3 = v2;
  v4 = sub_1D4419C54();
  v6 = v5;
  if (v4 == sub_1D4419C54() && v6 == v7)
  {

    return 21336;
  }

  v9 = sub_1D441AD84();

  if (v9)
  {

    return 21336;
  }

  v11 = sub_1D4419C54();
  v13 = v12;
  if (v11 == sub_1D4419C54() && v13 == v14)
  {

    return 83;
  }

  v16 = sub_1D441AD84();

  if (v16)
  {

    return 83;
  }

  v17 = sub_1D4419C54();
  v19 = v18;
  if (v17 == sub_1D4419C54() && v19 == v20)
  {
    goto LABEL_22;
  }

  v21 = sub_1D441AD84();

  if (v21)
  {
    goto LABEL_24;
  }

  v22 = sub_1D4419C54();
  v24 = v23;
  if (v22 == sub_1D4419C54() && v24 == v25)
  {
LABEL_22:

    return 77;
  }

  v26 = sub_1D441AD84();

  if (v26)
  {
LABEL_24:

    return 77;
  }

  v27 = sub_1D4419C54();
  v29 = v28;
  if (v27 == sub_1D4419C54() && v29 == v30)
  {

    return 76;
  }

  v31 = sub_1D441AD84();

  if (v31)
  {

    return 76;
  }

  v32 = sub_1D4419C54();
  v34 = v33;
  if (v32 == sub_1D4419C54() && v34 == v35)
  {

    return 19544;
  }

  v36 = sub_1D441AD84();

  if (v36)
  {

    return 19544;
  }

  v37 = sub_1D4419C54();
  v39 = v38;
  if (v37 == sub_1D4419C54() && v39 == v40)
  {
    goto LABEL_43;
  }

  v41 = sub_1D441AD84();

  if (v41)
  {
    goto LABEL_45;
  }

  v42 = sub_1D4419C54();
  v44 = v43;
  if (v42 == sub_1D4419C54() && v44 == v45)
  {
LABEL_43:

    return 5003314;
  }

  v46 = sub_1D441AD84();

  if (v46)
  {
LABEL_45:

    return 5003314;
  }

  v47 = sub_1D4419C54();
  v49 = v48;
  if (v47 == sub_1D4419C54() && v49 == v50)
  {

    return 19777;
  }

  v51 = sub_1D441AD84();

  if (v51)
  {

    return 19777;
  }

  v52 = sub_1D4419C54();
  v54 = v53;
  if (v52 == sub_1D4419C54() && v54 == v55)
  {

    return 19521;
  }

  v56 = sub_1D441AD84();

  if (v56)
  {

    return 19521;
  }

  v57 = sub_1D4419C54();
  v59 = v58;
  if (v57 == sub_1D4419C54() && v59 == v60)
  {

    return 5003329;
  }

  v61 = sub_1D441AD84();

  if (v61)
  {

    return 5003329;
  }

  v62 = sub_1D4419C54();
  v64 = v63;
  if (v62 == sub_1D4419C54() && v64 == v65)
  {

    return 1280848449;
  }

  v66 = sub_1D441AD84();

  if (v66)
  {

    return 1280848449;
  }

  v67 = sub_1D4419C54();
  v69 = v68;
  if (v67 == sub_1D4419C54() && v69 == v70)
  {

    return 1280848705;
  }

  else
  {
    v71 = sub_1D441AD84();

    if (v71)
    {
      return 1280848705;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D43A8F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D441AD84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64497463656A626FLL && a2 == 0xE800000000000000 || (sub_1D441AD84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEB0000000064496CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D441AD84();

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

uint64_t (*sub_1D43A90D8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D43A917C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43A931C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43A9454(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

uint64_t (*sub_1D43A9614(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D43A96B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43A9858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43A9990(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__showResults;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

uint64_t (*sub_1D43A9B50(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D43A9BF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43A9D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43A9ECC(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__selectedSuggestion;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

uint64_t (*sub_1D43AA08C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D43AA130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43AA2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43AA408(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__useNoteTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

uint64_t sub_1D43AA58C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D43AA61C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

uint64_t sub_1D43AA6B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  return v1;
}

uint64_t sub_1D43AA730()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

uint64_t (*sub_1D43AA7A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D43AA84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43AA9EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43AAB24(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

uint64_t sub_1D43AACE4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

uint64_t (*sub_1D43AAD50(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D42FA480;
}

uint64_t sub_1D43AADF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43AAF94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43AB0CC(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__editingExistingLink;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D42FA8CC;
}

uint64_t (*sub_1D43AB28C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D43AB330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43AB4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43AB608(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSuggestions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

uint64_t sub_1D43AB7A0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

uint64_t sub_1D43AB840()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

uint64_t (*sub_1D43AB8AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D43AB950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43ABAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43ABC28(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__urlSuggestions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

uint64_t sub_1D43ABD98@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  *a1 = v3;
  return result;
}

uint64_t sub_1D43ABE18(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1D4418374();
}

uint64_t sub_1D43ABE90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  return v1;
}

uint64_t sub_1D43ABF04()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

uint64_t (*sub_1D43ABF74(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D43AC018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB08);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB00);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43AC1B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB00);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43AC2F0(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB08);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSelection;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB00);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

double sub_1D43AC460@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D43AC4E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

double sub_1D43AC574@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D43AC5F8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

uint64_t (*sub_1D43AC674(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D43AC718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB20);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB18);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D43AC8B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB18);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D43AC9F0(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB20);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkTextFrame;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB18);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

uint64_t sub_1D43ACB60@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v6 = v15[0];
  v5 = v15[1];

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = objc_opt_self();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    v9 = sub_1D4419C14();

    v10 = [v8 URLWithSchemeForString_];

    if (v10)
    {
      sub_1D4417214();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v14 = sub_1D4417234();
    (*(*(v14 - 8) + 56))(v4, v11, 1, v14);
    return sub_1D42DA6E8(v4, a1);
  }

  else
  {
    v12 = sub_1D4417234();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_1D43ACD8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  if (v7)
  {

    return 1;
  }

  else
  {
    sub_1D43ACB60(v2);
    v4 = sub_1D4417234();
    v3 = (*(*(v4 - 8) + 48))(v2, 1, v4) != 1;
    sub_1D4309374(v2);
  }

  return v3;
}

uint64_t LinkEditorViewModel.__allocating_init(linkText:showResults:selectedSuggestion:useNoteTitle:linkName:editingExistingLink:noteSuggestions:urlSuggestions:noteSelection:linkTextFrame:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, void *a12, __int128 *a13)
{
  *&v60 = a7;
  *(&v60 + 1) = a8;
  v59 = a6;
  *&v58 = a4;
  *(&v58 + 1) = a5;
  v57 = a3;
  *&v56 = a1;
  *(&v56 + 1) = a2;
  v64 = a12;
  v65 = a13;
  v62 = a10;
  v63 = a11;
  v61 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB18);
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v47 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB00);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v47 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkText;
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  sub_1D4418324();
  v27 = *(v22 + 32);
  v27(v25 + v26, v24, v21);
  v28 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__showResults;
  LOBYTE(v66) = 0;
  sub_1D4418324();
  v29 = *(v18 + 32);
  v29(v25 + v28, v20, v17);
  v30 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__selectedSuggestion;
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  sub_1D4418324();
  v27(v25 + v30, v24, v21);
  v31 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__useNoteTitle;
  LOBYTE(v66) = 1;
  sub_1D4418324();
  v29(v25 + v31, v20, v17);
  v32 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkName;
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  sub_1D4418324();
  v27(v25 + v32, v24, v21);
  v33 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__editingExistingLink;
  LOBYTE(v66) = 0;
  sub_1D4418324();
  v29(v25 + v33, v20, v17);
  v34 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSuggestions;
  v35 = MEMORY[0x1E69E7CC0];
  *&v66 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA798);
  v36 = v47;
  sub_1D4418324();
  v37 = *(v48 + 32);
  v38 = v49;
  v37(v25 + v34, v36, v49);
  v39 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__urlSuggestions;
  *&v66 = v35;
  sub_1D4418324();
  v37(v25 + v39, v36, v38);
  v40 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSelection;
  *&v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB28);
  v41 = v50;
  sub_1D4418324();
  (*(v51 + 32))(v25 + v40, v41, v52);
  v42 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkTextFrame;
  v66 = 0u;
  v67 = 0u;
  v68 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB30);
  v43 = v53;
  sub_1D4418324();
  (*(v54 + 32))(v25 + v42, v43, v55);
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v56;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v57;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v58;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v59;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v60;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v61;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v62;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v63;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v64;
  v44 = v64;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v65[1];
  v66 = *v65;
  v67 = v45;
  v68 = *(v65 + 32);

  sub_1D4418374();

  return v25;
}

uint64_t LinkEditorViewModel.init(linkText:showResults:selectedSuggestion:useNoteTitle:linkName:editingExistingLink:noteSuggestions:urlSuggestions:noteSelection:linkTextFrame:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, void *a12, __int128 *a13)
{
  *&v60 = a7;
  *(&v60 + 1) = a8;
  v59 = a6;
  *&v58 = a4;
  *(&v58 + 1) = a5;
  v57 = a3;
  *&v56 = a1;
  *(&v56 + 1) = a2;
  v64 = a12;
  v65 = a13;
  v62 = a10;
  v63 = a11;
  v61 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB18);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v47 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB00);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v47 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v47 - v24;
  v26 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkText;
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  sub_1D4418324();
  v27 = *(v23 + 32);
  v27(v13 + v26, v25, v22);
  v28 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__showResults;
  LOBYTE(v66) = 0;
  sub_1D4418324();
  v29 = *(v19 + 32);
  v29(v13 + v28, v21, v18);
  v30 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__selectedSuggestion;
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  sub_1D4418324();
  v27(v13 + v30, v25, v22);
  v31 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__useNoteTitle;
  LOBYTE(v66) = 1;
  sub_1D4418324();
  v29(v13 + v31, v21, v18);
  v32 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkName;
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  sub_1D4418324();
  v27(v13 + v32, v25, v22);
  v33 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__editingExistingLink;
  LOBYTE(v66) = 0;
  sub_1D4418324();
  v29(v13 + v33, v21, v18);
  v34 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSuggestions;
  v35 = MEMORY[0x1E69E7CC0];
  *&v66 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA798);
  v36 = v47;
  sub_1D4418324();
  v37 = *(v48 + 32);
  v38 = v49;
  v37(v13 + v34, v36, v49);
  v39 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__urlSuggestions;
  *&v66 = v35;
  sub_1D4418324();
  v37(v13 + v39, v36, v38);
  v40 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSelection;
  *&v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB28);
  v41 = v50;
  sub_1D4418324();
  (*(v51 + 32))(v13 + v40, v41, v52);
  v42 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkTextFrame;
  v66 = 0u;
  v67 = 0u;
  v68 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB30);
  v43 = v53;
  sub_1D4418324();
  (*(v54 + 32))(v13 + v42, v43, v55);
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v56;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v57;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v58;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v59;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v60;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v61;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v62;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v63;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v64;
  v44 = v64;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v65[1];
  v66 = *v65;
  v67 = v45;
  v68 = *(v65 + 32);

  sub_1D4418374();

  return v13;
}

uint64_t LinkEditorViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__showResults;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__selectedSuggestion, v2);
  v6(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__useNoteTitle, v5);
  v3(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkName, v2);
  v6(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__editingExistingLink, v5);
  v7 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSuggestions;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__urlSuggestions, v8);
  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSelection;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB00);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkTextFrame;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB18);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t LinkEditorViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__showResults;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__selectedSuggestion, v2);
  v6(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__useNoteTitle, v5);
  v3(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkName, v2);
  v6(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__editingExistingLink, v5);
  v7 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSuggestions;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__urlSuggestions, v8);
  v10 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSelection;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB00);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkTextFrame;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB18);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  return swift_deallocClassInstance();
}

uint64_t sub_1D43AE4D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LinkEditorViewModel();
  result = sub_1D44182E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D43AE590(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1D43AE604(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1D43AE664(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id NoteSelection.__allocating_init(noteID:noteTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC7NotesUI13NoteSelection_noteID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC7NotesUI13NoteSelection_noteTitle];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id NoteSelection.init(noteID:noteTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC7NotesUI13NoteSelection_noteID];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC7NotesUI13NoteSelection_noteTitle];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for NoteSelection();
  return objc_msgSendSuper2(&v8, sel_init);
}

id NoteSelection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NoteSelection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoteSelection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s7NotesUI19LinkEditorViewModelCACycfC_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB18);
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v41 = &v34 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB00);
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAE0);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBAA0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  type metadata accessor for LinkEditorViewModel();
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkText;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_1D4418324();
  v16 = *(v11 + 32);
  v16(v14 + v15, v13, v10);
  v17 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__showResults;
  LOBYTE(v44) = 0;
  sub_1D4418324();
  v18 = *(v7 + 32);
  v18(v14 + v17, v9, v6);
  v19 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__selectedSuggestion;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_1D4418324();
  v16(v14 + v19, v13, v10);
  v20 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__useNoteTitle;
  LOBYTE(v44) = 1;
  sub_1D4418324();
  v18(v14 + v20, v9, v6);
  v21 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkName;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_1D4418324();
  v16(v14 + v21, v13, v10);
  v22 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__editingExistingLink;
  LOBYTE(v44) = 0;
  sub_1D4418324();
  v18(v14 + v22, v9, v6);
  v23 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSuggestions;
  v24 = MEMORY[0x1E69E7CC0];
  *&v44 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA798);
  v25 = v35;
  sub_1D4418324();
  v26 = v37;
  v27 = *(v36 + 32);
  v27(v14 + v23, v25, v37);
  v28 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__urlSuggestions;
  *&v44 = v24;
  sub_1D4418324();
  v27(v14 + v28, v25, v26);
  v29 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__noteSelection;
  *&v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB28);
  v30 = v38;
  sub_1D4418324();
  (*(v39 + 32))(v14 + v29, v30, v40);
  v31 = OBJC_IVAR____TtC7NotesUI19LinkEditorViewModel__linkTextFrame;
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB30);
  v32 = v41;
  sub_1D4418324();
  (*(v42 + 32))(v14 + v31, v32, v43);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v44) = 0;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v44) = 1;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v44) = 0;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v44 = v24;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v44 = v24;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v44 = 0;

  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v46 = 1;

  sub_1D4418374();
  return v14;
}

uint64_t keypath_get_88Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t type metadata accessor for LinkEditorViewModel()
{
  result = qword_1EC7CBB48;
  if (!qword_1EC7CBB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D43AF1F0()
{
  sub_1D43AFEC8(319, &qword_1EC7CBB58);
  if (v0 <= 0x3F)
  {
    sub_1D43AFEC8(319, &qword_1EC7CAF00);
    if (v1 <= 0x3F)
    {
      sub_1D4306168(319, &qword_1EC7CBB60, &qword_1EC7CA798);
      if (v2 <= 0x3F)
      {
        sub_1D4306168(319, &qword_1EC7CBB68, &qword_1EC7CBB28);
        if (v3 <= 0x3F)
        {
          sub_1D4306168(319, &qword_1EC7CBB70, &qword_1EC7CBB30);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of LinkEditorViewModel.linkTextFrame.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 600);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

void sub_1D43AFEC8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D4418384();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t WidgetTimelineReloader.__allocating_init(debounceInterval:on:object:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  WidgetTimelineReloader.init(debounceInterval:on:object:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1D43B00D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + *(*v3 + 120)) = MEMORY[0x1E69E7CC0];
  *(v3 + *(*v3 + 128)) = 0;
  v7 = *(*v3 + 136);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBA8);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = *(*v3 + 144);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB80);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = *(*v3 + 152);
  v12 = sub_1D441A4A4();
  v13 = *(*(v12 - 8) + 56);
  v13(v3 + v11, 1, 1, v12);
  v13(v3 + *(*v3 + 160), 1, 1, v12);
  *(v3 + *(*v3 + 168)) = 0;
  v14 = *(*v3 + 96);
  v15 = sub_1D441A754();
  (*(*(v15 - 8) + 32))(v3 + v14, a1, v15);
  *(v3 + *(*v3 + 104)) = a2;
  *(v3 + *(*v3 + 112)) = a3;
  return v3;
}

uint64_t *WidgetTimelineReloader.init(debounceInterval:on:object:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  *(v3 + *(*v3 + 120)) = MEMORY[0x1E69E7CC0];
  *(v3 + *(*v3 + 128)) = 0;
  v8 = *(*v3 + 136);
  v16 = sub_1D441A4A4();
  v17 = *(v7 + 80);
  sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  v9 = sub_1D4418284();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = *(*v3 + 144);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB80);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = *(*(v16 - 8) + 56);
  v12(v3 + *(*v3 + 152), 1, 1, v16);
  v12(v3 + *(*v3 + 160), 1, 1, v16);
  *(v3 + *(*v3 + 168)) = 0;
  v13 = *(*v3 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v3 + v13, a1, AssociatedTypeWitness);
  (*(*(v17 - 8) + 32))(v3 + *(*v3 + 104), a2, v17);
  *(v3 + *(*v3 + 112)) = a3;
  return v3;
}

uint64_t sub_1D43B0684()
{
  v1 = v0;
  v2 = sub_1D441A4A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D4438D80;
  sub_1D43B0D2C(v5);
  swift_allocObject();
  swift_weakInit();
  sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  v7 = sub_1D4418474();

  v8 = *(v3 + 8);
  v8(v5, v2);
  *(v6 + 32) = v7;
  sub_1D43B0FB4(v5);
  swift_allocObject();
  swift_weakInit();
  v9 = sub_1D4418474();

  v8(v5, v2);
  *(v6 + 40) = v9;
  v14[1] = sub_1D43B130C();
  sub_1D4419B44();
  v10 = sub_1D4419B34();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D43B3DEC;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA6D0);
  sub_1D417645C(&qword_1EDE336D8, &qword_1EC7CA6D0);
  v12 = sub_1D4418474();

  *(v6 + 48) = v12;
  *(v1 + *(*v1 + 120)) = v6;
}

Swift::Void __swiftcall WidgetTimelineReloader.observe()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D441A4A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D4438D80;
  sub_1D43B0D2C(v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v10 = *(v2 + 80);
  v9[2] = v10;
  v11 = *(v2 + 88);
  v9[3] = v11;
  v9[4] = v8;
  sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  v12 = sub_1D4418474();

  v13 = *(v4 + 8);
  v20[0] = v4 + 8;
  v13(v6, v3);
  *(v7 + 32) = v12;
  sub_1D43B0FB4(v6);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v14;
  v16 = sub_1D4418474();

  v13(v6, v3);
  *(v7 + 40) = v16;
  v20[1] = WidgetTimelineReloader.reloadPublisher.getter();
  sub_1D4419B44();
  v17 = sub_1D4419B34();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D43B2028;
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA6D0);
  sub_1D417645C(&qword_1EDE336D8, &qword_1EC7CA6D0);
  v19 = sub_1D4418474();

  *(v7 + 48) = v19;
  *(v1 + *(*v1 + 120)) = v7;
}

uint64_t sub_1D43B0D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB98);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-v7];
  v9 = *(*v1 + 152);
  swift_beginAccess();
  sub_1D417CF94(v1 + v9, v8, &qword_1EC7CBB98);
  v10 = sub_1D441A4A4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1D41769C4(v8, &qword_1EC7CBB98);
  v12 = [objc_opt_self() defaultCenter];
  sub_1D441A4B4();

  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1D43B3D78(v6, v1 + v9, &qword_1EC7CBB98);
  return swift_endAccess();
}

uint64_t sub_1D43B0FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB98);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-v7];
  v9 = *(*v1 + 160);
  swift_beginAccess();
  sub_1D417CF94(v1 + v9, v8, &qword_1EC7CBB98);
  v10 = sub_1D441A4A4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1D41769C4(v8, &qword_1EC7CBB98);
  v12 = [objc_opt_self() defaultCenter];
  sub_1D441A4B4();

  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1D43B3D78(v6, v1 + v9, &qword_1EC7CBB98);
  return swift_endAccess();
}

uint64_t sub_1D43B1218(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + *(*result + 128)) = a3;
  }

  return result;
}

uint64_t sub_1D43B1280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + *(*result + 128)) = a5;
  }

  return result;
}

uint64_t sub_1D43B130C()
{
  v1 = sub_1D441A4A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB80);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBA8);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB88);
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBB0);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBB8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v20 = *(*v0 + 168);
  if (*(v0 + v20))
  {
    v21 = *(v0 + v20);
  }

  else
  {
    v34 = v16;
    v35 = v17;
    v36 = v20;
    v32 = v19;
    sub_1D4416E94();
    sub_1D4418314();
    v33 = v0;
    sub_1D43B207C(v9);
    sub_1D43B29F8(v7);
    sub_1D43B0FB4(v4);
    v30 = sub_1D417645C(&qword_1EDE336D0, &qword_1EC7CBB88);
    sub_1D417645C(&qword_1EDE33708, &qword_1EC7CBBA8);
    sub_1D417645C(&qword_1EDE33730, &qword_1EC7CBB80);
    sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
    v31 = v14;
    v22 = v9;
    v23 = v38;
    v24 = v43;
    sub_1D4418404();
    (*(v2 + 8))(v4, v1);
    (*(v42 + 8))(v7, v24);
    (*(v40 + 8))(v22, v23);
    (*(v37 + 8))(v12, v10);
    sub_1D417645C(&qword_1EDE33720, &qword_1EC7CBBB0);
    v26 = v31;
    v25 = v32;
    v27 = v41;
    sub_1D44183C4();
    (*(v39 + 8))(v26, v27);
    sub_1D417645C(&qword_1EDE33798, &qword_1EC7CBBB8);
    v28 = v34;
    v21 = sub_1D4418394();
    (*(v35 + 8))(v25, v28);
    *(v33 + v36) = v21;
  }

  return v21;
}

uint64_t WidgetTimelineReloader.reloadPublisher.getter()
{
  v1 = *v0;
  v2 = sub_1D441A4A4();
  v54 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v53 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB80);
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = v37 - v5;
  v6 = v1[10];
  v7 = sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  v8 = v1[11];
  v57 = v2;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v9 = sub_1D4418284();
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB88);
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = v37 - v12;
  v13 = sub_1D417645C(&qword_1EDE336D0, &qword_1EC7CBB88);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1D417645C(&qword_1EDE33730, &qword_1EC7CBB80);
  v47 = v11;
  v57 = v11;
  v58 = v9;
  v52 = v4;
  v59 = v4;
  v60 = v2;
  v55 = v2;
  v61 = v13;
  v62 = WitnessTable;
  v45 = WitnessTable;
  v63 = v15;
  v64 = v7;
  v16 = sub_1D4418274();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v37 - v18;
  v44 = swift_getWitnessTable();
  v20 = sub_1D4418254();
  MEMORY[0x1EEE9AC00](v20);
  v24 = v37 - v23;
  v25 = v1[21];
  if (*(v0 + v25))
  {
    v26 = *(v0 + v25);
  }

  else
  {
    v41 = v21;
    v42 = v22;
    v43 = v25;
    sub_1D4416E94();
    sub_1D4418314();
    v37[1] = v13;
    v27 = v48;
    v40 = v0;
    sub_1D43B2500(v48);
    v39 = v17;
    v28 = v50;
    sub_1D43B2D90(v50);
    v38 = v19;
    v29 = v53;
    sub_1D43B0FB4(v53);
    v30 = v47;
    v31 = v52;
    v32 = v55;
    v33 = v56;
    sub_1D4418404();
    (*(v54 + 8))(v29, v32);
    (*(v51 + 8))(v28, v31);
    (*(v49 + 8))(v27, v9);
    (*(v46 + 8))(v33, v30);
    v34 = v38;
    sub_1D44183C4();
    (*(v39 + 8))(v34, v16);
    v35 = v41;
    swift_getWitnessTable();
    v26 = sub_1D4418394();
    (*(v42 + 8))(v24, v35);
    *(v40 + v43) = v26;
  }

  return v26;
}

uint64_t sub_1D43B207C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - v4;
  v6 = sub_1D441A4A4();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBC8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  v15 = *(*v1 + 136);
  swift_beginAccess();
  sub_1D417CF94(v1 + v15, v14, &qword_1EC7CBBC8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBA8);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v14, v16);
  }

  sub_1D41769C4(v14, &qword_1EC7CBBC8);
  v18 = [objc_opt_self() defaultCenter];
  v26 = v6;
  v19 = v1;
  sub_1D441A4B4();

  v25[1] = *(*v1 + 104);
  v20 = sub_1D441A734();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v25[0] = sub_1D43B3CE4();
  sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  sub_1D43B3D30(&qword_1EDE323B8, sub_1D43B3CE4);
  v21 = v8;
  v22 = a1;
  v23 = v26;
  sub_1D4418444();
  sub_1D41769C4(v5, &qword_1EC7CBBC0);
  (*(v27 + 8))(v21, v23);
  (*(v17 + 16))(v12, v22, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  swift_beginAccess();
  sub_1D43B3D78(v12, v19 + v15, &qword_1EC7CBBC8);
  return swift_endAccess();
}

uint64_t sub_1D43B2500@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1D441A784();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  v8 = sub_1D441A4A4();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  v30 = v8;
  v37 = v8;
  v38 = v4;
  v34 = v4;
  v35 = v3;
  v27[1] = v11;
  v39 = v11;
  v40 = v3;
  v12 = sub_1D4418284();
  v13 = sub_1D441A784();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v28 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v27 - v17;
  v19 = *(v2 + 136);
  swift_beginAccess();
  (*(v14 + 16))(v18, v1 + v19, v13);
  v20 = *(v12 - 8);
  if ((*(v20 + 48))(v18, 1, v12) != 1)
  {
    return (*(v20 + 32))(v36, v18, v12);
  }

  (*(v14 + 8))(v18, v13);
  v21 = [objc_opt_self() defaultCenter];
  v22 = v1;
  sub_1D441A4B4();

  (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1);
  v23 = v36;
  AssociatedTypeWitness = v13;
  v24 = v30;
  sub_1D4418444();
  (*(v32 + 8))(v7, v33);
  (*(v29 + 8))(v10, v24);
  v25 = v28;
  (*(v20 + 16))(v28, v23, v12);
  (*(v20 + 56))(v25, 0, 1, v12);
  swift_beginAccess();
  (*(v14 + 40))(v22 + v19, v25, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_1D43B29F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D441A4A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB90);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = *(*v1 + 144);
  swift_beginAccess();
  sub_1D417CF94(v1 + v13, v12, &qword_1EC7CBB90);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB80);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_1D41769C4(v12, &qword_1EC7CBB90);
  v16 = [objc_opt_self() defaultCenter];
  v23 = v10;
  v17 = a1;
  v18 = v16;
  v19 = v1;
  sub_1D441A4B4();

  swift_allocObject();
  swift_weakInit();
  sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  sub_1D4418414();

  (*(v4 + 8))(v6, v3);
  v20 = v23;
  (*(v15 + 16))(v23, v17, v14);
  (*(v15 + 56))(v20, 0, 1, v14);
  swift_beginAccess();
  sub_1D43B3D78(v20, v19 + v13, &qword_1EC7CBB90);
  return swift_endAccess();
}

uint64_t sub_1D43B2D90@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = sub_1D441A4A4();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB90);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = *(v2 + 144);
  swift_beginAccess();
  sub_1D417CF94(v1 + v13, v12, &qword_1EC7CBB90);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBB80);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(v27, v12, v14);
  }

  sub_1D41769C4(v12, &qword_1EC7CBB90);
  v16 = [objc_opt_self() defaultCenter];
  v25 = v1;
  sub_1D441A4B4();

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = *(v3 + 80);
  v18[3] = *(v3 + 88);
  v18[4] = v17;
  sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  v19 = v10;
  v20 = v26;
  v21 = v27;
  sub_1D4418414();

  (*(v20 + 8))(v6, v4);
  (*(v15 + 16))(v19, v21, v14);
  (*(v15 + 56))(v19, 0, 1, v14);
  v22 = v25;
  swift_beginAccess();
  sub_1D43B3D78(v19, v22 + v13, &qword_1EC7CBB90);
  return swift_endAccess();
}

uint64_t sub_1D43B3180()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + *(*Strong + 128));

    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t WidgetTimelineReloader.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 104), v2);
  swift_unknownObjectRelease();

  v4 = *(*v0 + 136);
  sub_1D441A4A4();
  sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
  sub_1D4418284();
  v5 = sub_1D441A784();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1D41769C4(v0 + *(*v0 + 144), &qword_1EC7CBB90);
  sub_1D41769C4(v0 + *(*v0 + 152), &qword_1EC7CBB98);
  sub_1D41769C4(v0 + *(*v0 + 160), &qword_1EC7CBB98);

  return v0;
}

uint64_t WidgetTimelineReloader.__deallocating_deinit()
{
  WidgetTimelineReloader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D43B3560()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EC7CBB78);
  swift_endAccess();
  if (v1)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBA0);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D41769C4(v6, &qword_1EC7C9720);
    return 0;
  }
}

BOOL sub_1D43B3654(void *a1)
{
  v1 = a1;
  v2 = sub_1D43B3560();

  if (v2)
  {
  }

  return v2 != 0;
}

BOOL ICWidget.reloadsTimelinesAutomatically.getter()
{
  v0 = sub_1D43B3560();
  if (v0)
  {
  }

  return v0 != 0;
}

void sub_1D43B36D0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  ICWidget.reloadsTimelinesAutomatically.setter(a3);
}

uint64_t ICWidget.reloadsTimelinesAutomatically.setter(char a1)
{
  v2 = v1;
  v4 = sub_1D441A754();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = [objc_opt_self() mainRunLoop];
    sub_1D43B3D30(&qword_1EDE323C0, MEMORY[0x1E696A008]);
    sub_1D44182F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBA0);
    swift_allocObject();
    v8 = sub_1D43B00D0(v6, v7, 0);
    swift_beginAccess();
    objc_setAssociatedObject(v2, &unk_1EC7CBB78, v8, 1);
    swift_endAccess();

    result = sub_1D43B3560();
    if (result)
    {
      sub_1D43B0684();
    }
  }

  else
  {
    v10 = sub_1D43B3560();
    if (v10)
    {
      *(v10 + *(*v10 + 120)) = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    objc_setAssociatedObject(v1, &unk_1EC7CBB78, 0, 1);
    return swift_endAccess();
  }

  return result;
}

void sub_1D43B392C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1D441A4A4();
      sub_1D43B3D30(&qword_1EDE326E0, MEMORY[0x1E6969F20]);
      sub_1D4418284();
      sub_1D441A784();
      if (v2 <= 0x3F)
      {
        sub_1D43B3BE0();
        if (v3 <= 0x3F)
        {
          sub_1D43B3C44();
          if (v4 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1D43B3BE0()
{
  if (!qword_1EDE33728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBB80);
    v0 = sub_1D441A784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE33728);
    }
  }
}

void sub_1D43B3C44()
{
  if (!qword_1EDE326D0)
  {
    sub_1D441A4A4();
    v0 = sub_1D441A784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE326D0);
    }
  }
}

unint64_t sub_1D43B3CE4()
{
  result = qword_1EDE323B0;
  if (!qword_1EDE323B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE323B0);
  }

  return result;
}

uint64_t sub_1D43B3D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D43B3D78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t LockedNotesLearnMoreView.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_1D43A5804(v10, &v9);
}

__n128 LockedNotesLearnMoreView.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t LockedNotesLearnMoreView.body.getter()
{
  sub_1D4418CE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBD0);
  sub_1D43B3FD8();
  return sub_1D44184B4();
}

uint64_t sub_1D43B3F18@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1D4418A34();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC20);
  sub_1D43B4090(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_1D4418CF4();
  sub_1D4418494();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBD0);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

unint64_t sub_1D43B3FD8()
{
  result = qword_1EC7CBBD8;
  if (!qword_1EC7CBBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBBD0);
    sub_1D417645C(&qword_1EC7CBBE0, &qword_1EC7CBBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBBD8);
  }

  return result;
}

uint64_t sub_1D43B4090@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC28);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = sub_1D4418A34();
  v17[16] = 0;
  v17[8] = 0;
  v17[0] = 0;
  *v9 = sub_1D4418A44();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC30);
  sub_1D43B42DC(a1, &v9[*(v11 + 44)]);
  sub_1D417CF94(v9, v7, &qword_1EC7CBC28);
  v18 = v10;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = 0x4020000000000000;
  LOBYTE(v20) = 0;
  *(&v20 + 1) = 0xD000000000000010;
  *v21 = 0x80000001D444DD30;
  *&v21[8] = 0x4054000000000000;
  *&v21[16] = 0x4039000000000000;
  v21[24] = 0;
  v12 = *v21;
  a2[2] = v20;
  a2[3] = v12;
  *(a2 + 57) = *&v21[9];
  v13 = v19;
  *a2 = v18;
  a2[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC38);
  sub_1D417CF94(v7, a2 + *(v14 + 48), &qword_1EC7CBC28);
  v15 = a2 + *(v14 + 64);
  *v15 = 0x4040000000000000;
  v15[8] = 0;
  *(v15 + 2) = 0x3FF0000000000000;
  sub_1D417CF94(&v18, v22, &qword_1EC7CBC40);
  sub_1D41769C4(v9, &qword_1EC7CBC28);
  sub_1D41769C4(v7, &qword_1EC7CBC28);
  v22[0] = v10;
  v22[1] = 0;
  v23 = 0;
  v24 = 0x4020000000000000;
  v25 = 0;
  v26 = 0xD000000000000010;
  v27 = 0x80000001D444DD30;
  v28 = 0x4054000000000000;
  v29 = 0x4039000000000000;
  v30 = 0;
  return sub_1D41769C4(v22, &qword_1EC7CBC40);
}

uint64_t sub_1D43B42DC@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC48);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC50);
  v41 = *(v37 - 8);
  v12 = MEMORY[0x1EEE9AC00](v37);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = a1[5];
  v43[4] = a1[4];
  v43[5] = v16;
  v43[6] = a1[6];
  v17 = a1[1];
  v43[0] = *a1;
  v43[1] = v17;
  v18 = a1[3];
  v43[2] = a1[2];
  v43[3] = v18;
  v42 = sub_1D43B4754();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC58);
  sub_1D417645C(&qword_1EC7CBC60, &qword_1EC7CBC58);
  sub_1D43B5BC0();
  sub_1D43B5C14();
  sub_1D4419314();
  v19 = [objc_opt_self() lockedNotesSupportURL];
  sub_1D4417214();

  v20 = sub_1D4417234();
  v21 = *(*(v20 - 8) + 56);
  v21(v5, 0, 1, v20);
  v22 = swift_allocObject();
  v23 = a1[5];
  *(v22 + 5) = a1[4];
  *(v22 + 6) = v23;
  *(v22 + 7) = a1[6];
  v24 = a1[1];
  *(v22 + 1) = *a1;
  *(v22 + 2) = v24;
  v25 = a1[3];
  *(v22 + 3) = a1[2];
  *(v22 + 4) = v25;
  v21(v11, 1, 1, v20);
  sub_1D43B5C70(a1, v43);
  sub_1D4308E54(v5, v11);
  v26 = &v11[*(v7 + 44)];
  *v26 = sub_1D43B5C68;
  v26[1] = v22;
  v27 = *(v41 + 16);
  v28 = v38;
  v29 = v15;
  v30 = v15;
  v31 = v37;
  v27(v38, v30, v37);
  v32 = v39;
  sub_1D417CF94(v11, v39, &qword_1EC7CBC48);
  v33 = v40;
  v27(v40, v28, v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC78);
  sub_1D417CF94(v32, &v33[*(v34 + 48)], &qword_1EC7CBC48);
  sub_1D41769C4(v11, &qword_1EC7CBC48);
  v35 = *(v41 + 8);
  v35(v29, v31);
  sub_1D41769C4(v32, &qword_1EC7CBC48);
  return (v35)(v28, v31);
}

uint64_t sub_1D43B4754()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[10];
  v5 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D4435D30;

  v8 = sub_1D43B56B0();
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v8;
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_1D43B58B0();
  *(v7 + 72) = v10;
  *(v7 + 80) = v4;
  *(v7 + 88) = v3;

  v11 = sub_1D43B5974();
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  *(v7 + 112) = v11;
  *(v7 + 120) = v12;
  return v7;
}

uint64_t sub_1D43B4890@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1D43B48D8@<X0>(uint64_t a1@<X8>)
{
  sub_1D42CC920();

  v2 = sub_1D4418F84();
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() tintColor];
  _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
  v8 = sub_1D4418EF4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1D430E564(v2, v4, v6 & 1);

  result = swift_getKeyPath();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1D43B49E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v58 = a3;
  v59 = a4;
  v65 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC10);
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v62 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = v57 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAAA0);
  v68 = *(v61 - 8);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v60 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = v57 - v13;
  v69 = a1;
  v70 = a2;
  v57[1] = sub_1D42CC920();

  v14 = sub_1D4418F84();
  v16 = v15;
  v18 = v17;
  sub_1D4418E24();
  v19 = sub_1D4418F44();
  v21 = v20;
  v23 = v22;

  sub_1D430E564(v14, v16, v18 & 1);

  v24 = sub_1D4418F34();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;
  sub_1D430E564(v19, v21, v23 & 1);

  v69 = v24;
  v70 = v26;
  v71 = v14 & 1;
  v72 = v29;
  sub_1D4419084();
  sub_1D430E564(v24, v26, v14 & 1);

  v69 = v58;
  v70 = v59;

  v30 = sub_1D4418F84();
  v32 = v31;
  LOBYTE(v24) = v33;
  sub_1D44191C4();
  v34 = sub_1D4418EF4();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_1D430E564(v30, v32, v24 & 1);

  v69 = v34;
  v70 = v36;
  v71 = v38 & 1;
  v72 = v40;
  v73 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2E0);
  sub_1D431FFD0();
  v41 = v67;
  sub_1D4419084();
  sub_1D430E564(v34, v36, v38 & 1);

  v42 = *(v68 + 16);
  v44 = v60;
  v43 = v61;
  v42(v60, v66, v61);
  v45 = v62;
  v46 = v63;
  v47 = *(v63 + 16);
  v48 = v41;
  v49 = v64;
  v47(v62, v48, v64);
  v50 = v65;
  v42(v65, v44, v43);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC18);
  v52 = &v50[v51[12]];
  *v52 = 0x4010000000000000;
  v52[8] = 0;
  v47(&v50[v51[16]], v45, v49);
  v53 = &v50[v51[20]];
  *v53 = 0x4038000000000000;
  v53[8] = 0;
  v54 = *(v46 + 8);
  v54(v67, v49);
  v55 = *(v68 + 8);
  v55(v66, v43);
  v54(v45, v49);
  return (v55)(v44, v43);
}

uint64_t sub_1D43B4EAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_1D4418A44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBC08);
  return sub_1D43B49E8(v3, v4, v6, v5, (a1 + *(v7 + 44)));
}

__n128 sub_1D43B4F20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1D43B4F44()
{
  sub_1D4418CE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBBD0);
  sub_1D43B3FD8();
  return sub_1D44184B4();
}

uint64_t static LockedNotesLearnMoreView.Configuration.Paragraph.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D441AD84(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D441AD84();
    }
  }

  return result;
}

uint64_t LockedNotesLearnMoreView.Configuration.Paragraph.hash(into:)()
{
  sub_1D4419CD4();

  return sub_1D4419CD4();
}

uint64_t LockedNotesLearnMoreView.Configuration.Paragraph.hashValue.getter()
{
  sub_1D441AEB4();
  sub_1D4419CD4();
  sub_1D4419CD4();
  return sub_1D441AF04();
}

uint64_t sub_1D43B514C()
{
  sub_1D441AEB4();
  sub_1D4419CD4();
  sub_1D4419CD4();
  return sub_1D441AF04();
}

uint64_t sub_1D43B51B4()
{
  sub_1D4419CD4();

  return sub_1D4419CD4();
}

uint64_t sub_1D43B5204()
{
  sub_1D441AEB4();
  sub_1D4419CD4();
  sub_1D4419CD4();
  return sub_1D441AF04();
}

uint64_t sub_1D43B5268(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D441AD84(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D441AD84();
    }
  }

  return result;
}

uint64_t LockedNotesLearnMoreView.Configuration.account.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 42);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 42) = v7;
}

__n128 LockedNotesLearnMoreView.Configuration.account.setter(int *a1)
{
  v2 = *a1;
  v8 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a1 + 42);

  *v1 = v2;
  result = v8;
  *(v1 + 8) = v8;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 42) = v6;
  return result;
}

__n128 LockedNotesLearnMoreView.Configuration.init(account:)@<Q0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *a1;
  v29 = *(a1 + 2);
  v3 = *(a1 + 4);
  v28 = *(a1 + 3);
  v4 = *(a1 + 20);
  v5 = *(a1 + 42);
  v6 = objc_opt_self();
  v7 = sub_1D4419C14();
  v8 = [v6 localizedFrameworkStringForKey:v7 value:0 table:0 allowSiri:1];

  v9 = sub_1D4419C54();
  v11 = v10;

  *(a2 + 48) = v9;
  *(a2 + 56) = v11;
  v12 = sub_1D4419C14();
  v13 = [v6 localizedFrameworkStringForKey:v12 value:0 table:0 allowSiri:1];

  v14 = sub_1D4419C54();
  v16 = v15;

  *(a2 + 64) = v14;
  *(a2 + 72) = v16;
  v17 = sub_1D4419C14();
  v18 = [v6 localizedFrameworkStringForKey:v17 value:0 table:0 allowSiri:1];

  v19 = sub_1D4419C54();
  v21 = v20;

  *(a2 + 80) = v19;
  *(a2 + 88) = v21;
  v22 = sub_1D4419C14();
  v23 = [v6 localizedFrameworkStringForKey:v22 value:0 table:0 allowSiri:1];

  v24 = sub_1D4419C54();
  v26 = v25;

  *(a2 + 96) = v24;
  *(a2 + 104) = v26;
  *a2 = v30;
  result = v29;
  *(a2 + 8) = v29;
  *(a2 + 24) = v28;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 42) = v5;
  return result;
}

unint64_t sub_1D43B565C()
{
  result = qword_1EC7CBBF0;
  if (!qword_1EC7CBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBBF0);
  }

  return result;
}

uint64_t sub_1D43B56B0()
{
  if (*v0 == 3)
  {
    v2 = *(v0 + 8);
    v1 = *(v0 + 16);
    v3 = objc_opt_self();
    v4 = sub_1D4419C14();
    v5 = [v3 localizedFrameworkStringForKey:v4 value:0 table:0 allowSiri:1];

    sub_1D4419C54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D4435D40;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D4320054();
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;

    v7 = sub_1D4419C24();

    return v7;
  }

  else
  {
    ICInternalSettingsIsAppleAccountBrandingEnabled();
    v9 = objc_opt_self();
    v10 = sub_1D4419C14();
    v11 = [v9 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

    v12 = sub_1D4419C54();
    return v12;
  }
}

uint64_t sub_1D43B58B0()
{
  v0 = objc_opt_self();
  v1 = sub_1D4419C14();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_1D4419C54();
  return v3;
}

uint64_t sub_1D43B5974()
{
  v0 = objc_opt_self();
  v1 = sub_1D4419C14();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_1D4419C54();
  return v3;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D43B5A58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D43B5AA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D43B5B0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D43B5B54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D43B5BC0()
{
  result = qword_1EC7CBC68;
  if (!qword_1EC7CBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBC68);
  }

  return result;
}

unint64_t sub_1D43B5C14()
{
  result = qword_1EC7CBC70;
  if (!qword_1EC7CBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CBC70);
  }

  return result;
}

size_t sub_1D43B5CBC(uint64_t a1, uint64_t a2)
{
  v38[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD60);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30[0] = v30 - v7;
  v35 = sub_1D4417C84();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v31 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v38[0] = MEMORY[0x1E69E7CC0];
  v11 = v38;
  result = sub_1D43CF360(0, v10, 0);
  v13 = v38[0];
  if (v10)
  {
    v14 = 0;
    v15 = *(a1 + 16);
    v33 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v34 = v15;
    v32 = v8 + 16;
    while (v34 != v14)
    {
      if (v14 >= *(a1 + 16))
      {
        goto LABEL_26;
      }

      v16 = a1;
      v11 = *(v37 + 48);
      (*(v8 + 16))(&v6[v11], v33 + *(v8 + 72) * v14, v35);
      swift_getAtKeyPath();
      v38[0] = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        v11 = v38;
        sub_1D43CF360(v17 > 1, v18 + 1, 1);
        v13 = v38[0];
      }

      ++v14;
      *(v13 + 16) = v18 + 1;
      result = sub_1D43C3FE4(v6, v13 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v18);
      a1 = v16;
      if (v10 == v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_8:
  v19 = *(a1 + 16);
  if (v10 != v19)
  {
    v34 = v8 + 16;
    v21 = v30[0];
    while (v10 < v19)
    {
      v22 = v31;
      v11 = v35;
      (*(v8 + 16))(v31, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v10, v35);
      v23 = *(v37 + 48);
      swift_getAtKeyPath();
      (*(v8 + 32))(v21 + v23, v22, v11);
      v38[0] = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        v11 = v38;
        sub_1D43CF360(v24 > 1, v25 + 1, 1);
        v13 = v38[0];
      }

      ++v10;
      *(v13 + 16) = v25 + 1;
      result = sub_1D43C3FE4(v21, v13 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v25);
      v19 = *(a1 + 16);
      if (v10 == v19)
      {
        goto LABEL_9;
      }
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_9:

  if (*(v13 + 16))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97A8);
    v20 = sub_1D441AC24();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC8];
  }

  v26 = v30[1];
  v38[0] = v20;
  sub_1D43C369C(v13, 1, v38);
  if (v26)
  {

    return v11;
  }

  v27 = v38[0];
  v28 = *(v38[0] + 16);
  if (!v28)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1D438DB7C(*(v38[0] + 16), 0);
  v29 = sub_1D43C1A08(v38, (v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80))), v28, v27);
  result = sub_1D419FA48();
  if (v29 == v28)
  {

    return v11;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D43B6158()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CBC98);
  __swift_project_value_buffer(v0, qword_1EC7CBC98);
  return sub_1D4418124();
}

uint64_t PersistedActivityEvent.activityItemIdParts.getter()
{
  v0 = sub_1D4417C84();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D4417964();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417434();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D4435D30;
  sub_1D4417BC4();
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  MEMORY[0x1DA6D5730](0x2865746144, 0xE500000000000000);
  sub_1D44173D4();
  sub_1D441A044();
  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v11 = v24[0];
  v12 = v24[1];
  (*(v7 + 8))(v9, v6);
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1D4417BA4();
  strcpy(v24, "Object(");
  v24[1] = 0xE700000000000000;
  v13 = sub_1D4417914();
  MEMORY[0x1DA6D5730](v13);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v14 = v24[0];
  v15 = v24[1];
  (*(v3 + 8))(v5, v21);
  *(v10 + 48) = v14;
  *(v10 + 56) = v15;
  sub_1D4417B94();
  strcpy(v24, "Participant(");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  v16 = sub_1D4417C04();
  MEMORY[0x1DA6D5730](v16);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v17 = v24[0];
  v18 = v24[1];
  (*(v22 + 8))(v2, v23);
  *(v10 + 64) = v17;
  *(v10 + 72) = v18;
  return v10;
}

uint64_t PersistedActivityEvent.activityItemGroupIdParts.getter()
{
  v1 = sub_1D4417C84();
  v126 = *(v1 - 8);
  v127 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v124 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v121 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v125 = &v121 - v7;
  v8 = sub_1D4417954();
  v129 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4417964();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D4417B74();
  v133 = *(v13 - 8);
  v134 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v121 - v16;
  v18 = sub_1D4417B84();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v130 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v121 - v22;
  v24 = v0;
  sub_1D4417BB4();
  v25 = (*(v19 + 88))(v23, v18);
  if (v25 == *MEMORY[0x1E69B7270])
  {
    (*(v19 + 96))(v23, v18);
    (*(v11 + 8))(v23, v10);
    return PersistedActivityEvent.activityItemIdParts.getter();
  }

  v122 = v10;
  v123 = v11;
  if (v25 == *MEMORY[0x1E69B7268])
  {
    (*(v19 + 96))(v23, v18);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC0) + 48);
    sub_1D417CF94(&v23[v28], v17, &qword_1EC7CBCB0);
    v29 = v18;
    v31 = v122;
    v30 = v123;
    if ((*(v123 + 48))(v17, 1, v122) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
      v32 = swift_allocObject();
      v127 = v8;
      v33 = v32;
      *(v32 + 16) = xmmword_1D44364A0;
      v34 = v130;
      v121 = v24;
      v126 = v28;
      v35 = v30;
      sub_1D4417BB4();
      v36 = v29;
      v37 = v132;
      sub_1D4417B54();
      (*(v19 + 8))(v34, v36);
      v38 = sub_1D4417B64();
      v39 = v31;
      v41 = v40;
      v42 = v37;
      v26 = v33;
      (*(v133 + 8))(v42, v134);
      v33[4] = v38;
      v33[5] = v41;
      v43 = v131;
      sub_1D4417BA4();
      v44 = v128;
      sub_1D4417934();
      (*(v35 + 8))(v43, v39);
      v45 = sub_1D4417944();
      v47 = v46;
      (*(v129 + 8))(v44, v127);
      v26[6] = v45;
      v26[7] = v47;
      sub_1D41769C4(v17, &qword_1EC7CBCB0);
      sub_1D41769C4(&v23[v126], &qword_1EC7CBCB0);
      sub_1D41769C4(v23, &qword_1EC7CBCB0);
      return v26;
    }

    sub_1D41769C4(v17, &qword_1EC7CBCB0);
    sub_1D41769C4(&v23[v28], &qword_1EC7CBCB0);
    sub_1D41769C4(v23, &qword_1EC7CBCB0);
    return PersistedActivityEvent.activityItemIdParts.getter();
  }

  if (v25 == *MEMORY[0x1E69B7260])
  {
    (*(v19 + 96))(v23, v18);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB8);
    v49 = *(v48 + 48);
    sub_1D41769C4(&v23[*(v48 + 64)], &qword_1EC7CBCB0);
    sub_1D41769C4(&v23[v49], &qword_1EC7CBCB0);
    (*(v123 + 8))(v23, v122);
    return PersistedActivityEvent.activityItemIdParts.getter();
  }

  if (v25 == *MEMORY[0x1E69B7278])
  {
    (*(v19 + 96))(v23, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
    v50 = swift_allocObject();
    v127 = v8;
    v26 = v50;
    *(v50 + 16) = xmmword_1D44364A0;
    v51 = v130;
    sub_1D4417BB4();
    v52 = v132;
    sub_1D4417B54();
    (*(v19 + 8))(v51, v18);
    v53 = sub_1D4417B64();
    v55 = v54;
    (*(v133 + 8))(v52, v134);
    v26[4] = v53;
    v26[5] = v55;
    v56 = v131;
    sub_1D4417BA4();
    v57 = v128;
    sub_1D4417934();
    v58 = v122;
    v59 = *(v123 + 8);
    v59(v56, v122);
    v60 = sub_1D4417944();
    v62 = v61;
    (*(v129 + 8))(v57, v127);
    v26[6] = v60;
    v26[7] = v62;
    v59(v23, v58);
    return v26;
  }

  if (v25 == *MEMORY[0x1E69B7248])
  {
    (*(v19 + 96))(v23, v18);
    v129 = v18;
    v64 = v125;
    v63 = v126;
    v65 = v127;
    (*(v126 + 16))(v125, v23, v127);
    v66 = v63;
    sub_1D4417B94();
    LOBYTE(v63) = sub_1D4417C34();
    v67 = *(v66 + 8);
    v67(v6, v65);
    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1D4435D30;
      v69 = v131;
      sub_1D4417BA4();
      v135 = 0x287463656A624FLL;
      v136 = 0xE700000000000000;
      v70 = sub_1D4417914();
      MEMORY[0x1DA6D5730](v70);

      MEMORY[0x1DA6D5730](41, 0xE100000000000000);
      v71 = v135;
      v72 = v136;
      (*(v123 + 8))(v69, v122);
      *(v68 + 32) = v71;
      *(v68 + 40) = v72;
      v73 = v130;
      sub_1D4417BB4();
      v74 = v132;
      sub_1D4417B54();
      (*(v19 + 8))(v73, v129);
      v75 = sub_1D4417B64();
      v77 = v76;
      v78 = v74;
      v26 = v68;
      (*(v133 + 8))(v78, v134);
      *(v68 + 48) = v75;
      *(v68 + 56) = v77;
      *(v68 + 64) = 0x657669746361;
      *(v68 + 72) = 0xE600000000000000;
      v67(v125, v65);
      v67(v23, v65);
    }

    else
    {
      v67(v64, v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1D4435D30;
      v97 = v131;
      sub_1D4417BA4();
      v135 = 0x287463656A624FLL;
      v136 = 0xE700000000000000;
      v98 = sub_1D4417914();
      v99 = v65;
      MEMORY[0x1DA6D5730](v98);

      MEMORY[0x1DA6D5730](41, 0xE100000000000000);
      v100 = v135;
      v101 = v136;
      (*(v123 + 8))(v97, v122);
      *(v96 + 32) = v100;
      *(v96 + 40) = v101;
      v102 = v130;
      sub_1D4417BB4();
      v103 = v132;
      sub_1D4417B54();
      (*(v19 + 8))(v102, v129);
      v104 = sub_1D4417B64();
      v106 = v105;
      v107 = v103;
      v26 = v96;
      (*(v133 + 8))(v107, v134);
      *(v96 + 48) = v104;
      *(v96 + 56) = v106;
      *(v96 + 64) = 0x65766973736170;
      *(v96 + 72) = 0xE700000000000000;
      v67(v23, v99);
    }

    return v26;
  }

  v79 = v127;
  if (v25 == *MEMORY[0x1E69B7250])
  {
    v80 = *(v19 + 96);
    v129 = v18;
    v80(v23, v18);
    v81 = v126;
    v82 = v124;
    (*(v126 + 16))(v124, v23, v79);
    sub_1D4417B94();
    v83 = sub_1D4417C34();
    v84 = *(v81 + 8);
    v84(v6, v79);
    if (v83)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1D4435D30;
      v86 = v131;
      sub_1D4417BA4();
      v135 = 0x287463656A624FLL;
      v136 = 0xE700000000000000;
      v87 = sub_1D4417914();
      MEMORY[0x1DA6D5730](v87);

      MEMORY[0x1DA6D5730](41, 0xE100000000000000);
      v88 = v135;
      v89 = v136;
      (*(v123 + 8))(v86, v122);
      *(v85 + 32) = v88;
      *(v85 + 40) = v89;
      v90 = v130;
      sub_1D4417BB4();
      v91 = v132;
      sub_1D4417B54();
      (*(v19 + 8))(v90, v129);
      v92 = sub_1D4417B64();
      v94 = v93;
      v95 = v91;
      v26 = v85;
      (*(v133 + 8))(v95, v134);
      *(v85 + 48) = v92;
      *(v85 + 56) = v94;
      *(v85 + 64) = 0x657669746361;
      *(v85 + 72) = 0xE600000000000000;
      v84(v124, v79);
      v84(v23, v79);
    }

    else
    {
      v84(v82, v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_1D4435D30;
      v110 = v131;
      sub_1D4417BA4();
      v135 = 0x287463656A624FLL;
      v136 = 0xE700000000000000;
      v111 = sub_1D4417914();
      v112 = v79;
      MEMORY[0x1DA6D5730](v111);

      MEMORY[0x1DA6D5730](41, 0xE100000000000000);
      v113 = v135;
      v114 = v136;
      (*(v123 + 8))(v110, v122);
      *(v109 + 32) = v113;
      *(v109 + 40) = v114;
      v115 = v130;
      sub_1D4417BB4();
      v116 = v132;
      sub_1D4417B54();
      (*(v19 + 8))(v115, v129);
      v117 = sub_1D4417B64();
      v119 = v118;
      v120 = v116;
      v26 = v109;
      (*(v133 + 8))(v120, v134);
      *(v109 + 48) = v117;
      *(v109 + 56) = v119;
      *(v109 + 64) = 0x65766973736170;
      *(v109 + 72) = 0xE700000000000000;
      v84(v23, v112);
    }

    return v26;
  }

  if (v25 == *MEMORY[0x1E69B7258])
  {
    (*(v19 + 96))(v23, v18);
    v108 = sub_1D4417494();
    (*(*(v108 - 8) + 8))(v23, v108);
    return PersistedActivityEvent.activityItemIdParts.getter();
  }

  if (v25 == *MEMORY[0x1E69B7288])
  {
    (*(v19 + 8))(v23, v18);
    return PersistedActivityEvent.activityItemIdParts.getter();
  }

  if (v25 == *MEMORY[0x1E69B7280])
  {
    return PersistedActivityEvent.activityItemIdParts.getter();
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t PersistedActivityEvent.grouped(withEarlierActivityItem:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D4417BD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = *(v6 + 16);
  v12(v8, v2, v5);
  sub_1D43B75D0(v8, v11);
  v13 = type metadata accessor for GroupedActivityStreamItem(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    sub_1D41769C4(v11, &qword_1EC7CBCC8);
    a2[3] = v5;
    a2[4] = &protocol witness table for PersistedActivityEvent;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
    return (v12)(boxed_opaque_existential_0Tm, v2, v5);
  }

  else
  {
    sub_1D43B7A6C(a1, v17);
    sub_1D43C3F84(v11, type metadata accessor for GroupedActivityStreamItem);
    return sub_1D419FAA8(v17, a2);
  }
}

uint64_t sub_1D43B75D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = sub_1D4417BD4();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD68);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v28 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupedActivityStreamItem(0);
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417BC4();
  v33 = PersistedActivityEvent.activityItemGroupIdParts.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
  sub_1D417645C(&qword_1EDE32A60, &qword_1EC7C9768);
  sub_1D4419BB4();
  v14 = sub_1D4419C14();

  v15 = [v14 ic_sha256];

  if (v15)
  {
    v16 = sub_1D4419C54();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0;
  }

  v19 = v31;
  v20 = &v13[*(v31 + 20)];
  *v20 = v16;
  v20[1] = v18;
  v21 = v29;
  (*(v3 + 16))(v5, a1, v29);
  sub_1D43BC7C0(v5, v8);
  (*(v3 + 8))(a1, v21);
  if ((*(v9 + 48))(v8, 1, v28) == 1)
  {
    sub_1D41769C4(v8, &qword_1EC7CBD68);
    v22 = sub_1D4417434();
    (*(*(v22 - 8) + 8))(v13, v22);

    return (*(v30 + 56))(v32, 1, 1, v19);
  }

  else
  {
    v24 = v27;
    sub_1D43C4054(v8, v27, type metadata accessor for GroupedActivityStreamItem.Activities);
    sub_1D43C4054(v24, &v13[*(v19 + 24)], type metadata accessor for GroupedActivityStreamItem.Activities);
    v25 = v32;
    sub_1D43C3EB4(v13, v32, type metadata accessor for GroupedActivityStreamItem);
    (*(v30 + 56))(v25, 0, 1, v19);
    return sub_1D43C3F84(v13, type metadata accessor for GroupedActivityStreamItem);
  }
}

uint64_t sub_1D43B7A6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31[-v6 - 8];
  v8 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31[-v13 - 8];
  v15 = type metadata accessor for GroupedActivityStreamItem(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D42D73C8(a1, v31);
  sub_1D43BF284(v31, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D41769C4(v14, &qword_1EC7CBCC8);
  }

  else
  {
    sub_1D43C4054(v14, v18, type metadata accessor for GroupedActivityStreamItem);
    v19 = *(v15 + 24);
    sub_1D43BD78C(v3 + v19, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_1D43C4054(v7, v11, type metadata accessor for GroupedActivityStreamItem.Activities);
      v27 = sub_1D4417434();
      (*(*(v27 - 8) + 24))(v18, v3, v27);
      sub_1D43C40BC(v11, &v18[v19]);
      v28 = v30;
      v30[3] = v15;
      v28[4] = &off_1F4F91C28;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v28);
      sub_1D43C3EB4(v18, boxed_opaque_existential_0Tm, type metadata accessor for GroupedActivityStreamItem);
      sub_1D43C3F84(v11, type metadata accessor for GroupedActivityStreamItem.Activities);
      return sub_1D43C3F84(v18, type metadata accessor for GroupedActivityStreamItem);
    }

    sub_1D41769C4(v7, &qword_1EC7CBD68);
    sub_1D43C3F84(v18, type metadata accessor for GroupedActivityStreamItem);
  }

  if (qword_1EC7C9258 != -1)
  {
    swift_once();
  }

  v20 = sub_1D44181B4();
  __swift_project_value_buffer(v20, qword_1EC7CBC98);
  v21 = sub_1D44181A4();
  v22 = sub_1D441A164();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D4171000, v21, v22, "Cannot group activities — using most recent", v23, 2u);
    MEMORY[0x1DA6D8690](v23, -1, -1);
  }

  v24 = v30;
  v30[3] = v15;
  v24[4] = &off_1F4F91C28;
  v25 = __swift_allocate_boxed_opaque_existential_0Tm(v24);
  return sub_1D43C3EB4(v3, v25, type metadata accessor for GroupedActivityStreamItem);
}

uint64_t PersistedActivityEvent.activityItemIsCacheable.getter()
{
  v0 = sub_1D4417B84();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417BB4();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E69B7270])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x1E69B7268])
  {
    (*(v1 + 96))(v3, v0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC0);
    sub_1D41769C4(&v3[*(v6 + 48)], &qword_1EC7CBCB0);
    sub_1D41769C4(v3, &qword_1EC7CBCB0);
    return 1;
  }

  if (v4 == *MEMORY[0x1E69B7260])
  {
    (*(v1 + 96))(v3, v0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB8);
    v9 = *(v8 + 48);
    sub_1D41769C4(&v3[*(v8 + 64)], &qword_1EC7CBCB0);
    sub_1D41769C4(&v3[v9], &qword_1EC7CBCB0);
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E69B7278])
  {
LABEL_2:
    (*(v1 + 96))(v3, v0);
LABEL_3:
    v5 = sub_1D4417964();
LABEL_4:
    (*(*(v5 - 8) + 8))(v3, v5);
    return 1;
  }

  if (v4 == *MEMORY[0x1E69B7248] || v4 == *MEMORY[0x1E69B7250])
  {
    (*(v1 + 96))(v3, v0);
    v5 = sub_1D4417C84();
    goto LABEL_4;
  }

  if (v4 == *MEMORY[0x1E69B7258])
  {
    (*(v1 + 96))(v3, v0);
    v5 = sub_1D4417494();
    goto LABEL_4;
  }

  if (v4 == *MEMORY[0x1E69B7288])
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  if (v4 != *MEMORY[0x1E69B7280])
  {
    result = sub_1D441AD74();
    __break(1u);
    return result;
  }

  return 1;
}

BOOL PersistedActivityEvent.activityItemIsVisible(resolver:)(void *a1)
{
  v2 = sub_1D4417C84();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417B84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D4417BB4();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x1E69B7270])
  {
    goto LABEL_2;
  }

  if (v10 == *MEMORY[0x1E69B7268])
  {
    (*(v7 + 96))(v9, v6);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC0);
    sub_1D41769C4(v9 + *(v12 + 48), &qword_1EC7CBCB0);
    sub_1D41769C4(v9, &qword_1EC7CBCB0);
    return 1;
  }

  if (v10 == *MEMORY[0x1E69B7260])
  {
    (*(v7 + 96))(v9, v6);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB8);
    v15 = *(v14 + 48);
    sub_1D41769C4(v9 + *(v14 + 64), &qword_1EC7CBCB0);
    sub_1D41769C4(v9 + v15, &qword_1EC7CBCB0);
    goto LABEL_3;
  }

  if (v10 == *MEMORY[0x1E69B7278])
  {
LABEL_2:
    (*(v7 + 96))(v9, v6);
LABEL_3:
    v11 = sub_1D4417964();
    (*(*(v11 - 8) + 8))(v9, v11);
    return 1;
  }

  if (v10 == *MEMORY[0x1E69B7248])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 8))(v9, v2);
    return 1;
  }

  if (v10 == *MEMORY[0x1E69B7250])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 8))(v9, v2);
    return 0;
  }

  else if (v10 == *MEMORY[0x1E69B7258])
  {
    (*(v7 + 96))(v9, v6);
    v16 = sub_1D4417494();
    (*(*(v16 - 8) + 8))(v9, v16);
    return 0;
  }

  else
  {
    if (v10 == *MEMORY[0x1E69B7288])
    {
      (*(v7 + 96))(v9, v6);
      v17 = *v9;
      v18 = MEMORY[0x1E69E7CC0];
      v45 = MEMORY[0x1E69E7CC0];
      v40 = *(v17 + 16);
      v37 = v3 + 16;
      v38 = OBJC_IVAR___ActivityEventResolver_mentionsCache;
      v36 = v3 + 8;
      v39 = a1;
      v19 = 0;
      v35 = v18;
      while (v40 != v19)
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
          while (1)
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            v27 = sub_1D441A8C4();
            if (!v27)
            {
              goto LABEL_43;
            }

LABEL_28:
            v28 = 0;
            while (1)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v29 = MEMORY[0x1DA6D6410](v28, v3);
              }

              else
              {
                if (v28 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_41;
                }

                v29 = *(v3 + 8 * v28 + 32);
              }

              v30 = v29;
              v31 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if ([v29 isVisible])
              {
                sub_1D441AA94();
                sub_1D441AAC4();
                sub_1D441AAD4();
                sub_1D441AAA4();
              }

              else
              {
              }

              ++v28;
              if (v31 == v27)
              {
                v32 = v42;
                goto LABEL_44;
              }
            }
          }
        }

        (*(v3 + 16))(v5, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19++, v2);
        v20 = sub_1D4417C24();
        v41 = &v34;
        v21 = MEMORY[0x1EEE9AC00](v20);
        *(&v34 - 2) = v39;
        *(&v34 - 1) = v5;
        v42 = v21;
        v43 = v22;
        MEMORY[0x1EEE9AC00](v21);
        *(&v34 - 2) = sub_1D43780F0;
        *(&v34 - 1) = v23;
        sub_1D4417D34();

        v24 = v44;
        v25 = (*(v3 + 8))(v5, v2);
        if (v24)
        {
          MEMORY[0x1DA6D5820](v25);
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D4419E94();
          }

          sub_1D4419EB4();
          v35 = v45;
        }
      }
    }

    else
    {
      if (v10 == *MEMORY[0x1E69B7280])
      {
        return 1;
      }

      sub_1D441AD74();
      __break(1u);
    }

    v26 = v39;

    v42 = MEMORY[0x1E69E7CC0];
    v3 = v35;
    if (v35 >> 62)
    {
      goto LABEL_42;
    }

    v27 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_28;
    }

LABEL_43:
    v32 = MEMORY[0x1E69E7CC0];
LABEL_44:

    if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
    {
      v33 = sub_1D441A8C4();
    }

    else
    {
      v33 = *(v32 + 16);
    }

    return v33 != 0;
  }
}

uint64_t PersistedActivityEvent.activityItemStyle(resolver:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1D4417964();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D4417B84();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(a1 + OBJC_IVAR___ActivityEventResolver_object))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1D4417BB4();
      v15 = sub_1D4417B44();
      v16 = *(v9 + 8);
      result = v16(v14, v8);
      if (v15)
      {
        v18 = 0;
      }

      else
      {
        sub_1D4417BB4();
        v19 = sub_1D4417B24();
        result = v16(v12, v8);
        v18 = v19 ^ 1;
      }

      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1D4417BB4();
      v18 = sub_1D4417B34();
      result = (*(v9 + 8))(v12, v8);
LABEL_8:
      *a2 = v18 & 1;
      return result;
    }
  }

  sub_1D4417BA4();
  (*(v5 + 8))(v7, v4);
  result = sub_1D441ABC4();
  __break(1u);
  return result;
}

uint64_t PersistedActivityEvent.activityItemTitle(resolver:)(uint64_t a1)
{
  v256 = a1;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCD0);
  MEMORY[0x1EEE9AC00](v240);
  v241 = &v232 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v237 = &v232 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v243 = &v232 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v244 = &v232 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v245 = &v232 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v246 = &v232 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v247 = (&v232 - v14);
  v255 = sub_1D4417C84();
  v251 = *(v255 - 8);
  v15 = MEMORY[0x1EEE9AC00](v255);
  v236 = &v232 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v239 = &v232 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v232 - v19;
  v21 = sub_1D4417C64();
  v22 = *(v21 - 8);
  v253 = v21;
  v254 = v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v235 = &v232 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v252 = &v232 - v25;
  v26 = sub_1D4417954();
  v249 = *(v26 - 8);
  v250 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v232 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D4417964();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v232 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D4417B84();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v232 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v1;
  sub_1D4417BB4();
  v38 = v36;
  v39 = (*(v34 + 88))(v36, v33);
  v40 = *MEMORY[0x1E69B7270];
  v248 = v36;
  v257 = v29;
  if (v39 == v40)
  {
    (*(v34 + 96))(v36, v33);
    sub_1D4417BA4();
    LODWORD(v246) = ActivityEventResolver.resolves(_:)();
    v41 = *(v30 + 8);
    v41(v32, v29);
    sub_1D4417BA4();
    sub_1D4417934();
    v247 = (v30 + 8);
    v41(v32, v29);
    sub_1D4417B94();
    sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
    v42 = v252;
    sub_1D4417C74();
    v251[1](v20, v255);
    v43 = v254 + 1;
    v44 = (v249 + 8);
    if (v246)
    {
      v45 = sub_1D435129C(v28, v42);
    }

    else
    {
      v45 = sub_1D43518FC(v28, v42);
    }

    v62 = v45;
    (*v43)(v42, v253);
    (*v44)(v28, v250);
    v41(v248, v257);
    return v62;
  }

  v233 = v32;
  v234 = v37;
  v46 = v30;
  v242 = v20;
  v238 = v28;
  if (v39 == *MEMORY[0x1E69B7268])
  {
    (*(v34 + 96))(v38, v33);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC0) + 48);
    v48 = v247;
    sub_1D417CF94(v38, v247, &qword_1EC7CBCB0);
    v49 = v30;
    v50 = *(v30 + 48);
    v51 = v257;
    v52 = v50(v48, 1, v257);
    v245 = v47;
    if (v52 == 1)
    {
      v53 = v233;
      sub_1D4417BA4();
      v54 = ActivityEventResolver.resolves(_:)();
      v55 = *(v49 + 8);
      v55(v53, v51);
      sub_1D4417BA4();
      v56 = v238;
      sub_1D4417934();
      v55(v53, v51);
      v57 = v242;
      sub_1D4417B94();
      sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      v58 = v252;
      sub_1D4417C74();
      v251[1](v57, v255);
      v59 = v254 + 1;
      v60 = (v249 + 8);
      if (v54)
      {
        v61 = sub_1D4351F58(v56, v58);
      }

      else
      {
        v61 = sub_1D43525B8(v56, v58);
      }

      v102 = v61;
      v103 = v247;
      (*v59)(v58, v253);
      (*v60)(v56, v250);
      sub_1D41769C4(v103, &qword_1EC7CBCB0);
    }

    else
    {
      sub_1D41769C4(v48, &qword_1EC7CBCB0);
      v80 = v246;
      sub_1D417CF94(v38 + v47, v246, &qword_1EC7CBCB0);
      v81 = v50(v80, 1, v51);
      v82 = v252;
      v83 = v51;
      if (v81 == 1)
      {
        v84 = v233;
        sub_1D4417BA4();
        v85 = ActivityEventResolver.resolves(_:)();
        v86 = *(v49 + 8);
        v86(v84, v83);
        sub_1D4417BA4();
        v87 = v238;
        sub_1D4417934();
        v86(v84, v83);
        v88 = v242;
        sub_1D4417B94();
        sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
        sub_1D4417C74();
        v251[1](v88, v255);
        v89 = v254 + 1;
        v90 = (v249 + 8);
        if (v85)
        {
          v91 = sub_1D4352C14(v87, v82);
        }

        else
        {
          v91 = sub_1D4353270(v87, 1, v82);
        }

        v102 = v91;
        v145 = v246;
        (*v89)(v82, v253);
        (*v90)(v87, v250);
        sub_1D41769C4(v145, &qword_1EC7CBCB0);
        v146 = v248;
        sub_1D41769C4(v248 + v245, &qword_1EC7CBCB0);
        v147 = v146;
        goto LABEL_44;
      }

      sub_1D41769C4(v80, &qword_1EC7CBCB0);
      v117 = v233;
      sub_1D4417BA4();
      v118 = ActivityEventResolver.resolves(_:)();
      v119 = *(v49 + 8);
      v119(v117, v83);
      sub_1D4417BA4();
      v120 = v238;
      sub_1D4417934();
      v119(v117, v83);
      v121 = v242;
      sub_1D4417B94();
      sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      sub_1D4417C74();
      v251[1](v121, v255);
      v122 = v254 + 1;
      v123 = (v249 + 8);
      if (v118)
      {
        v124 = sub_1D43539CC(v120, v82);
      }

      else
      {
        v124 = sub_1D435402C(v120, v82);
      }

      v102 = v124;
      (*v122)(v82, v253);
      (*v123)(v120, v250);
    }

    v154 = v248;
    sub_1D41769C4(v248 + v245, &qword_1EC7CBCB0);
    v147 = v154;
LABEL_44:
    sub_1D41769C4(v147, &qword_1EC7CBCB0);
    return v102;
  }

  v63 = v30;
  if (v39 == *MEMORY[0x1E69B7260])
  {
    (*(v34 + 96))(v38, v33);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB8);
    v65 = *(v64 + 48);
    v66 = *(v64 + 64);
    v67 = v245;
    sub_1D417CF94(v38 + v65, v245, &qword_1EC7CBCB0);
    v68 = *(v30 + 48);
    v69 = v257;
    v70 = v68(v67, 1, v257);
    v246 = v65;
    v239 = v66;
    if (v70 == 1)
    {
      v71 = v233;
      sub_1D4417BA4();
      v72 = ActivityEventResolver.resolves(_:)();
      v73 = *(v30 + 8);
      v73(v71, v69);
      sub_1D4417BA4();
      v74 = v238;
      sub_1D4417934();
      v247 = (v30 + 8);
      v73(v71, v69);
      v75 = v242;
      sub_1D4417B94();
      sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      v76 = v252;
      sub_1D4417C74();
      v251[1](v75, v255);
      v77 = v254 + 1;
      v78 = (v249 + 8);
      if (v72)
      {
        v79 = sub_1D4351F58(v74, v76);
      }

      else
      {
        v79 = sub_1D43525B8(v74, v76);
      }

      v142 = v79;
      v143 = v245;
      (*v77)(v76, v253);
      (*v78)(v74, v250);
      sub_1D41769C4(v143, &qword_1EC7CBCB0);
      v144 = v248;
      sub_1D41769C4(&v239[v248], &qword_1EC7CBCB0);
      sub_1D41769C4(v144 + v246, &qword_1EC7CBCB0);
      v73(v144, v257);
      return v142;
    }

    v247 = v30;
    sub_1D41769C4(v67, &qword_1EC7CBCB0);
    v104 = v38 + v65;
    v105 = v244;
    sub_1D417CF94(v104, v244, &qword_1EC7CBCB0);
    v106 = &v66[v38];
    v107 = v243;
    sub_1D417CF94(v106, v243, &qword_1EC7CBCB0);
    v108 = v241;
    v109 = *(v240 + 48);
    sub_1D417CF94(v105, v241, &qword_1EC7CBCB0);
    sub_1D417CF94(v107, v108 + v109, &qword_1EC7CBCB0);
    v110 = v68(v108, 1, v69);
    v111 = v69;
    v112 = v238;
    if (v110 == 1)
    {
      v113 = v68(v108 + v109, 1, v111);
      v114 = v254;
      v115 = v242;
      v116 = v233;
      if (v113 == 1)
      {
        sub_1D41769C4(v108, &qword_1EC7CBCB0);
LABEL_53:
        sub_1D4417BA4();
        LODWORD(v254) = ActivityEventResolver.resolves(_:)();
        v187 = v116;
        v188 = *(v46 + 8);
        v189 = v257;
        v188(v187, v257);
        sub_1D4417BA4();
        sub_1D4417934();
        v247 = (v46 + 8);
        v188(v187, v189);
        sub_1D4417B94();
        sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
        v190 = v252;
        sub_1D4417C74();
        v251[1](v115, v255);
        v191 = (v249 + 8);
        if (v254)
        {
          v192 = sub_1D4354688(v112, v190);
        }

        else
        {
          v192 = sub_1D4354CE8(v112, v190);
        }

        v196 = v192;
        v197 = v239;
        v114[1](v190, v253);
        (*v191)(v112, v250);
        sub_1D41769C4(v243, &qword_1EC7CBCB0);
        sub_1D41769C4(v244, &qword_1EC7CBCB0);
        v198 = v248;
        sub_1D41769C4(&v197[v248], &qword_1EC7CBCB0);
        sub_1D41769C4(v198 + v246, &qword_1EC7CBCB0);
        v188(v198, v257);
        return v196;
      }
    }

    else
    {
      v148 = v237;
      sub_1D417CF94(v108, v237, &qword_1EC7CBCB0);
      if (v68(v108 + v109, 1, v111) != 1)
      {
        v184 = v247;
        v116 = v233;
        (v247[4])(v233, v108 + v109, v111);
        sub_1D417E080(&qword_1EC7CBCE0, MEMORY[0x1E69B71F0]);
        v185 = sub_1D4419BE4();
        v186 = *(v184 + 8);
        v186(v116, v111);
        v186(v148, v111);
        sub_1D41769C4(v108, &qword_1EC7CBCB0);
        v114 = v254;
        v115 = v242;
        if (v185)
        {
          goto LABEL_53;
        }

LABEL_39:
        sub_1D41769C4(v243, &qword_1EC7CBCB0);
        sub_1D41769C4(v244, &qword_1EC7CBCB0);
        sub_1D4417BA4();
        LODWORD(v245) = ActivityEventResolver.resolves(_:)();
        v149 = *(v46 + 8);
        v150 = v257;
        v149(v116, v257);
        sub_1D4417BA4();
        sub_1D4417934();
        v247 = (v46 + 8);
        v254 = v149;
        v149(v116, v150);
        sub_1D4417B94();
        sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
        v151 = v252;
        sub_1D4417C74();
        v251[1](v115, v255);
        v152 = (v249 + 8);
        if (v245)
        {
          v153 = sub_1D4355344(v112, v151);
        }

        else
        {
          v153 = sub_1D43559A4(v112, v151);
        }

        v172 = v153;
        v173 = v239;
        v114[1](v151, v253);
        (*v152)(v112, v250);
        v174 = v248;
        sub_1D41769C4(&v173[v248], &qword_1EC7CBCB0);
        sub_1D41769C4(v174 + v246, &qword_1EC7CBCB0);
        (v254)(v174, v257);
        return v172;
      }

      v247[1](v148, v111);
      v114 = v254;
      v115 = v242;
      v116 = v233;
    }

    sub_1D41769C4(v108, &qword_1EC7CBCD0);
    goto LABEL_39;
  }

  v92 = v238;
  if (v39 == *MEMORY[0x1E69B7278])
  {
    (*(v34 + 96))(v38, v33);
    v93 = v233;
    sub_1D4417BA4();
    v94 = ActivityEventResolver.resolves(_:)();
    v95 = *(v63 + 8);
    v96 = v257;
    v95(v93, v257);
    sub_1D4417BA4();
    sub_1D4417934();
    v95(v93, v96);
    v97 = v242;
    sub_1D4417B94();
    sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
    v98 = v252;
    sub_1D4417C74();
    v251[1](v97, v255);
    v99 = v254 + 1;
    v100 = (v249 + 8);
    if (v94)
    {
      v101 = sub_1D4356CC0(v92, v98);
    }

    else
    {
      v101 = sub_1D435731C(v92, 1, v98);
    }

    v62 = v101;
    (*v99)(v98, v253);
    (*v100)(v92, v250);
    v95(v248, v257);
    return v62;
  }

  v125 = v238;
  v127 = v251;
  v126 = v252;
  if (v39 == *MEMORY[0x1E69B7248])
  {
    (*(v34 + 96))(v38, v33);
    v128 = v239;
    v129 = v255;
    (v127[2])(v239, v38, v255);
    v130 = v242;
    sub_1D4417B94();
    v131 = sub_1D4417C34();
    v247 = v127[1];
    (v247)(v130, v129);
    v246 = (v127 + 1);
    if (v131)
    {
      v132 = v233;
      sub_1D4417BA4();
      v133 = v125;
      sub_1D4417934();
      (*(v63 + 8))(v132, v257);
      sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      sub_1D4417C74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCD8);
      v134 = v254;
      v135 = (*(v254 + 80) + 32) & ~*(v254 + 80);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_1D4435D40;
      v137 = v126;
      v138 = v129;
      v139 = v253;
      v134[2](v136 + v135, v137, v253);
      v257 = sub_1D43588D8(v133, v136);
      swift_setDeallocating();
      v140 = v134[1];
      (v140)(v136 + v135, v139);
      swift_deallocClassInstance();
      (v140)(v252, v139);
      v62 = v257;
      (*(v249 + 1))(v133, v250);
      v141 = v247;
      (v247)(v239, v138);
      (v141)(v248, v138);
    }

    else
    {
      (v247)(v128, v129);
      (v127[4])(v130, v248, v129);
      v175 = v233;
      sub_1D4417BA4();
      v176 = v125;
      sub_1D4417934();
      (*(v63 + 8))(v175, v257);
      sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      sub_1D4417C74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCD8);
      v177 = v126;
      v178 = v254;
      v179 = (*(v254 + 80) + 32) & ~*(v254 + 80);
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_1D4435D40;
      v181 = v253;
      v178[2](v180 + v179, v177, v253);
      v257 = sub_1D4358D9C(v176, v180);
      swift_setDeallocating();
      v182 = v178[1];
      (v182)(v180 + v179, v181);
      swift_deallocClassInstance();
      v183 = v177;
      v62 = v257;
      (v182)(v183, v181);
      (*(v249 + 1))(v238, v250);
      (v247)(v130, v255);
    }

    return v62;
  }

  if (v39 == *MEMORY[0x1E69B7250])
  {
    v156 = v30;
    (*(v34 + 96))(v38, v33);
    v157 = v236;
    v158 = v255;
    (v127[2])(v236, v38, v255);
    v159 = v242;
    sub_1D4417B94();
    v160 = sub_1D4417C34();
    v161 = v127[1];
    (v161)(v159, v158);
    v247 = v127 + 1;
    if (v160)
    {
      v162 = v233;
      sub_1D4417BA4();
      sub_1D4417934();
      (*(v156 + 8))(v162, v257);
      sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      v163 = v252;
      sub_1D4417C74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCD8);
      v164 = v254;
      v165 = (*(v254 + 80) + 32) & ~*(v254 + 80);
      v166 = swift_allocObject();
      *(v166 + 16) = xmmword_1D4435D40;
      v167 = v125;
      v168 = v253;
      v164[2](v166 + v165, v163, v253);
      v257 = sub_1D43591F8(v167, v166);
      swift_setDeallocating();
      v169 = v163;
      v170 = v164[1];
      (v170)(v166 + v165, v168);
      swift_deallocClassInstance();
      (v170)(v169, v168);
      v62 = v257;
      (*(v249 + 1))(v238, v250);
      v171 = v255;
      (v161)(v236, v255);
      (v161)(v248, v171);
    }

    else
    {
      (v161)(v157, v158);
      (v127[4])(v159, v248, v158);
      v199 = v233;
      sub_1D4417BA4();
      sub_1D4417934();
      (*(v156 + 8))(v199, v257);
      sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      v251 = v161;
      v200 = v252;
      sub_1D4417C74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCD8);
      v201 = v254;
      v202 = (*(v254 + 80) + 32) & ~*(v254 + 80);
      v203 = swift_allocObject();
      *(v203 + 16) = xmmword_1D4435D40;
      v204 = v125;
      v205 = v253;
      v201[2](v203 + v202, v200, v253);
      v257 = sub_1D4359674(v204, v203);
      swift_setDeallocating();
      v206 = v201[1];
      (v206)(v203 + v202, v205);
      swift_deallocClassInstance();
      (v206)(v200, v205);
      v62 = v257;
      (*(v249 + 1))(v238, v250);
      (v251)(v242, v255);
    }

    return v62;
  }

  if (v39 == *MEMORY[0x1E69B7258])
  {
    (*(v34 + 96))(v38, v33);
    v193 = v242;
    sub_1D4417B94();
    sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
    sub_1D4417C74();
    v127[1](v193, v255);
    v194 = sub_1D4359AD0(v126);
    v254[1](v126, v253);
    v195 = sub_1D4417494();
    v62 = v194;
    (*(*(v195 - 8) + 8))(v38, v195);
    return v62;
  }

  if (v39 == *MEMORY[0x1E69B7288])
  {
    (*(v34 + 96))(v38, v33);
    v207 = *v38;
    KeyPath = swift_getKeyPath();
    v209 = sub_1D43B5CBC(v207, KeyPath);
    v210 = *(v209 + 16);
    if (v210)
    {
      v258 = MEMORY[0x1E69E7CC0];
      sub_1D43CF31C(0, v210, 0);
      v211 = v258;
      v257 = sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      v212 = v127[2];
      v213 = *(v127 + 80);
      v248 = v209;
      v214 = v209 + ((v213 + 32) & ~v213);
      v249 = v127[9];
      v250 = v212;
      v215 = v235;
      do
      {
        v216 = v242;
        v217 = v255;
        v250(v242, v214, v255);
        sub_1D4417C74();
        v127[1](v216, v217);
        v258 = v211;
        v219 = *(v211 + 16);
        v218 = *(v211 + 24);
        if (v219 >= v218 >> 1)
        {
          sub_1D43CF31C(v218 > 1, v219 + 1, 1);
          v211 = v258;
        }

        *(v211 + 16) = v219 + 1;
        (v254[4])(v211 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + v254[9] * v219, v215, v253);
        v214 += v249;
        --v210;
      }

      while (v210);

      v127 = v251;
      v230 = v252;
    }

    else
    {

      v230 = v126;
      v211 = MEMORY[0x1E69E7CC0];
    }

    v231 = v242;
    sub_1D4417B94();
    sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
    sub_1D4417C74();
    v127[1](v231, v255);
    v62 = sub_1D435AB74(v230, v211);

    v254[1](v230, v253);
    return v62;
  }

  if (v39 == *MEMORY[0x1E69B7280])
  {
    v220 = v233;
    sub_1D4417BA4();
    LODWORD(v248) = ActivityEventResolver.resolves(_:)();
    v221 = *(v30 + 8);
    v222 = v257;
    v221(v220, v257);
    sub_1D4417BA4();
    v223 = v125;
    sub_1D4417934();
    v221(v220, v222);
    v224 = v242;
    sub_1D4417B94();
    sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
    v225 = v252;
    sub_1D4417C74();
    v127[1](v224, v255);
    v226 = v254 + 1;
    v227 = (v249 + 8);
    v228 = v223;
    if (v248)
    {
      v229 = sub_1D4356004(v223, v225);
    }

    else
    {
      v229 = sub_1D4356664(v223, v225);
    }

    v62 = v229;
    (*v226)(v225, v253);
    (*v227)(v228, v250);
    return v62;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t PersistedActivityEvent.activityItemSubtitle(resolver:)(uint64_t a1)
{
  v2 = sub_1D4418994();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41[0] = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4417964();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D4417B84();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v41 - v13);
  if (!*(a1 + OBJC_IVAR___ActivityEventResolver_object))
  {
    goto LABEL_57;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1D4417BB4();
      v16 = (*(v9 + 88))(v12, v8);
      if (v16 != *MEMORY[0x1E69B7270])
      {
        if (v16 == *MEMORY[0x1E69B7268])
        {
          (*(v9 + 96))(v12, v8);
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC0);
          sub_1D41769C4(v12 + *(v18 + 48), &qword_1EC7CBCB0);
          sub_1D41769C4(v12, &qword_1EC7CBCB0);
          return 0;
        }

        if (v16 == *MEMORY[0x1E69B7260])
        {
          (*(v9 + 96))(v12, v8);
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB8);
          v22 = *(v21 + 48);
          sub_1D41769C4(v12 + *(v21 + 64), &qword_1EC7CBCB0);
          sub_1D41769C4(v12 + v22, &qword_1EC7CBCB0);
          goto LABEL_8;
        }

        if (v16 != *MEMORY[0x1E69B7278])
        {
          if (v16 == *MEMORY[0x1E69B7248] || v16 == *MEMORY[0x1E69B7250])
          {
            (*(v9 + 96))(v12, v8);
            v33 = sub_1D4417C84();
          }

          else
          {
            if (v16 != *MEMORY[0x1E69B7258])
            {
              if (v16 == *MEMORY[0x1E69B7288])
              {
                (*(v9 + 96))(v12, v8);
                v40 = ActivityEventResolver.fetchSnippet(for:)(v12->_rawValue);
                countAndFlagsBits = v40.value._countAndFlagsBits;

                if (v40.value._object)
                {
                  return countAndFlagsBits;
                }

                return 0;
              }

              if (v16 == *MEMORY[0x1E69B7280])
              {
                return 0;
              }

LABEL_53:
              sub_1D441AD74();
              __break(1u);
              return 0;
            }

            (*(v9 + 96))(v12, v8);
            v33 = sub_1D4417494();
          }

          (*(*(v33 - 8) + 8))(v12, v33);
          return 0;
        }
      }

      (*(v9 + 96))(v12, v8);
LABEL_8:
      (*(v5 + 8))(v12, v4);
      return 0;
    }

LABEL_57:
    sub_1D4417BA4();
    (*(v5 + 8))(v7, v4);
    result = sub_1D441ABC4();
    __break(1u);
    return result;
  }

  sub_1D4417BB4();
  v15 = (*(v9 + 88))(v14, v8);
  if (v15 == *MEMORY[0x1E69B7270])
  {
    (*(v9 + 96))(v14, v8);
    (*(v5 + 8))(v14, v4);
    goto LABEL_20;
  }

  if (v15 == *MEMORY[0x1E69B7268])
  {
    (*(v9 + 96))(v14, v8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC0);
    sub_1D41769C4(v14 + *(v17 + 48), &qword_1EC7CBCB0);
    sub_1D41769C4(v14, &qword_1EC7CBCB0);
    goto LABEL_20;
  }

  if (v15 == *MEMORY[0x1E69B7260])
  {
    (*(v9 + 96))(v14, v8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB8);
    v20 = *(v19 + 48);
    sub_1D41769C4(v14 + *(v19 + 64), &qword_1EC7CBCB0);
    sub_1D41769C4(v14 + v20, &qword_1EC7CBCB0);
LABEL_19:
    (*(v5 + 8))(v14, v4);
    goto LABEL_20;
  }

  if (v15 == *MEMORY[0x1E69B7278])
  {
    (*(v9 + 96))(v14, v8);
    goto LABEL_19;
  }

  if (v15 == *MEMORY[0x1E69B7248] || v15 == *MEMORY[0x1E69B7250])
  {
    (*(v9 + 96))(v14, v8);
    v34 = sub_1D4417C84();
    (*(*(v34 - 8) + 8))(v14, v34);
    goto LABEL_20;
  }

  if (v15 == *MEMORY[0x1E69B7258])
  {
    (*(v9 + 96))(v14, v8);
    v35 = sub_1D4417494();
    (*(*(v35 - 8) + 8))(v14, v35);
    return 0;
  }

  if (v15 != *MEMORY[0x1E69B7288])
  {
    if (v15 == *MEMORY[0x1E69B7280])
    {
LABEL_20:
      sub_1D4417BA4();
      v23 = ActivityEventResolver.resolve(_:)();
      (*(v5 + 8))(v7, v4);
      if (v23)
      {
        v24 = [v23 shareTitle];
        if (v24)
        {
          v25 = v24;
          v26 = sub_1D4419C54();

          v27 = [v23 parentCloudObject];
          if (v27)
          {
            v28 = v27;
            v29 = [v27 shareTitle];
            if (v29)
            {
              v30 = v29;
              sub_1D4419C54();

              sub_1D4418984();
              sub_1D4418974();
              sub_1D4419224();
              sub_1D4418954();

              sub_1D4418974();
              sub_1D4418964();

              sub_1D4418974();
              sub_1D4418964();

              sub_1D4418974();
              sub_1D44189B4();
              countAndFlagsBits = sub_1D4418F64();

              return countAndFlagsBits;
            }
          }

          return v26;
        }
      }

      return 0;
    }

    goto LABEL_53;
  }

  (*(v9 + 96))(v14, v8);
  v36 = ActivityEventResolver.fetchSnippet(for:)(v14->_rawValue);

  if (!v36.value._object)
  {
    return 0;
  }

  sub_1D4417BA4();
  v37 = ActivityEventResolver.resolve(_:)();
  (*(v5 + 8))(v7, v4);
  if (v37)
  {
    v38 = [v37 shareTitle];
    if (v38)
    {
      v39 = v38;
      sub_1D4419C54();

      sub_1D4418984();
      sub_1D4418974();
      sub_1D4418964();

      sub_1D4418974();
      sub_1D4418964();

      sub_1D4418974();
      sub_1D44189B4();
      countAndFlagsBits = sub_1D4418F64();

      return countAndFlagsBits;
    }
  }

  return v36.value._countAndFlagsBits;
}

uint64_t PersistedActivityEvent.activityItemDestination(resolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1D4417964();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D4417434();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D4417BD4();
  v56 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D4417B84();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  inited = &v52 - v17;
  v57 = a1;
  if (*(a1 + OBJC_IVAR___ActivityEventResolver_object))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v19 = v59;
      sub_1D4417BB4();
      v20 = (*(v13 + 88))(inited, v12);
      if (v20 == *MEMORY[0x1E69B7270])
      {
        goto LABEL_4;
      }

      if (v20 == *MEMORY[0x1E69B7268])
      {
        (*(v13 + 96))(inited, v12);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC0);
        sub_1D41769C4(&inited[*(v23 + 48)], &qword_1EC7CBCB0);
        sub_1D41769C4(inited, &qword_1EC7CBCB0);
        goto LABEL_12;
      }

      if (v20 == *MEMORY[0x1E69B7260])
      {
        (*(v13 + 96))(inited, v12);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB8);
        v32 = *(v31 + 48);
        sub_1D41769C4(&inited[*(v31 + 64)], &qword_1EC7CBCB0);
        sub_1D41769C4(&inited[v32], &qword_1EC7CBCB0);
        goto LABEL_5;
      }

      if (v20 == *MEMORY[0x1E69B7278])
      {
LABEL_4:
        (*(v13 + 96))(inited, v12);
LABEL_5:
        (*(v4 + 8))(inited, v3);
LABEL_12:
        v24 = v58;
        sub_1D4417BA4();
        v25 = type metadata accessor for ActivityStream.Destinations();
        swift_storeEnumTagMultiPayload();
        v26 = *(*(v25 - 8) + 56);
        v27 = v24;
LABEL_13:
        v28 = 0;
        v29 = v25;
        return v26(v27, v28, 1, v29);
      }

      if (v20 == *MEMORY[0x1E69B7248] || v20 == *MEMORY[0x1E69B7250])
      {
        (*(v13 + 96))(inited, v12);
        v35 = sub_1D4417C84();
LABEL_24:
        (*(*(v35 - 8) + 8))(inited, v35);
        goto LABEL_30;
      }

      if (v20 == *MEMORY[0x1E69B7258])
      {
        (*(v13 + 96))(inited, v12);
        v35 = sub_1D4417494();
        goto LABEL_24;
      }

      if (v20 == *MEMORY[0x1E69B7288])
      {
        (*(v13 + 8))(inited, v12);
        sub_1D43C39DC();
        (*(v56 + 16))(v11, v19, v9);
        sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
        swift_unknownObjectRetain();
        v38 = sub_1D441A344();
        if (!v38)
        {
          goto LABEL_30;
        }

LABEL_41:
        v9 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
        inited = swift_initStackObject();
        *(inited + 1) = xmmword_1D4435D40;
        v60 = PersistedActivityEvent.activityItemIdParts.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
        sub_1D417645C(&qword_1EDE32A60, &qword_1EC7C9768);
        sub_1D4419BB4();
        v39 = sub_1D4419C14();

        v40 = [v39 ic_sha256];

        if (v40)
        {
          v41 = sub_1D4419C54();
          v43 = v42;

LABEL_48:
          *(inited + 4) = v41;
          *(inited + 5) = v43;
          sub_1D42D5B58(inited);
          swift_setDeallocating();
          sub_1D42D5CC0((inited + 32));
          v44 = v9;
          v45 = v53;
          sub_1D4417BC4();
          v46 = objc_allocWithZone(ICActivityStreamSelection);
          v47 = sub_1D441A054();

          v48 = sub_1D44173A4();
          v49 = [v46 initWithItemIDs:v47 filter:v44 displayDate:v48];

          (*(v54 + 8))(v45, v55);
          v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9778) + 48);
          v51 = v58;
          sub_1D4417BA4();

          *(v51 + v50) = v49;
          v25 = type metadata accessor for ActivityStream.Destinations();
          swift_storeEnumTagMultiPayload();
          v26 = *(*(v25 - 8) + 56);
          v27 = v51;
          goto LABEL_13;
        }

LABEL_47:

        v41 = 0;
        v43 = 0;
        goto LABEL_48;
      }

      if (v20 == *MEMORY[0x1E69B7280])
      {
        goto LABEL_12;
      }

      goto LABEL_46;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v21 = v59;
      sub_1D4417BB4();
      v22 = (*(v13 + 88))(v16, v12);
      if (v22 != *MEMORY[0x1E69B7270])
      {
        if (v22 == *MEMORY[0x1E69B7268])
        {
          (*(v13 + 96))(v16, v12);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC0);
          sub_1D41769C4(&v16[*(v30 + 48)], &qword_1EC7CBCB0);
          sub_1D41769C4(v16, &qword_1EC7CBCB0);
          goto LABEL_30;
        }

        if (v22 == *MEMORY[0x1E69B7260])
        {
          (*(v13 + 96))(v16, v12);
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB8);
          v34 = *(v33 + 48);
          sub_1D41769C4(&v16[*(v33 + 64)], &qword_1EC7CBCB0);
          sub_1D41769C4(&v16[v34], &qword_1EC7CBCB0);
          goto LABEL_9;
        }

        if (v22 != *MEMORY[0x1E69B7278])
        {
          if (v22 == *MEMORY[0x1E69B7248] || v22 == *MEMORY[0x1E69B7250])
          {
            (*(v13 + 96))(v16, v12);
            v36 = sub_1D4417C84();
          }

          else
          {
            if (v22 != *MEMORY[0x1E69B7258])
            {
              if (v22 == *MEMORY[0x1E69B7288])
              {
                (*(v13 + 8))(v16, v12);
                sub_1D43C39DC();
                (*(v56 + 16))(v11, v21, v9);
                sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
                swift_unknownObjectRetain();
                v38 = sub_1D441A344();
                if (!v38)
                {
                  goto LABEL_30;
                }

                goto LABEL_41;
              }

              if (v22 == *MEMORY[0x1E69B7280])
              {
                goto LABEL_30;
              }

LABEL_46:
              sub_1D441AD74();
              __break(1u);
              goto LABEL_47;
            }

            (*(v13 + 96))(v16, v12);
            v36 = sub_1D4417494();
          }

          (*(*(v36 - 8) + 8))(v16, v36);
          goto LABEL_30;
        }
      }

      (*(v13 + 96))(v16, v12);
LABEL_9:
      (*(v4 + 8))(v16, v3);
LABEL_30:
      v29 = type metadata accessor for ActivityStream.Destinations();
      v26 = *(*(v29 - 8) + 56);
      v27 = v58;
      v28 = 1;
      return v26(v27, v28, 1, v29);
    }
  }

  sub_1D4417BA4();
  (*(v4 + 8))(v6, v3);
  result = sub_1D441ABC4();
  __break(1u);
  return result;
}

uint64_t sub_1D43BC7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v95 = sub_1D4417C84();
  v3 = *(v95 - 8);
  v4 = MEMORY[0x1EEE9AC00](v95);
  v6 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v94 = v90 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v90 - v9;
  v11 = sub_1D4417964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v96 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v90 - v15;
  v17 = sub_1D4417B84();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  v98 = *(v21 - 8);
  v99 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v97 = (v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D4417BB4();
  v23 = (*(v18 + 88))(v20, v17);
  if (v23 == *MEMORY[0x1E69B7270])
  {
    v24 = sub_1D4417BD4();
    (*(*(v24 - 8) + 8))(a1, v24);
    (*(v18 + 96))(v20, v17);
    (*(v12 + 8))(v20, v11);
LABEL_11:
    v40 = 1;
    v42 = v99;
    v41 = v100;
    return (*(v98 + 56))(v41, v40, 1, v42);
  }

  v92 = v12;
  v93 = v11;
  if (v23 == *MEMORY[0x1E69B7268])
  {
    (*(v18 + 96))(v20, v17);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC0) + 48);
    sub_1D417CF94(&v20[v25], v16, &qword_1EC7CBCB0);
    v27 = v92;
    v26 = v93;
    if ((*(v92 + 48))(v16, 1, v93) != 1)
    {
      v39 = sub_1D4417BD4();
      (*(*(v39 - 8) + 8))(a1, v39);
      sub_1D41769C4(v16, &qword_1EC7CBCB0);
      sub_1D41769C4(&v20[v25], &qword_1EC7CBCB0);
      sub_1D41769C4(v20, &qword_1EC7CBCB0);
      goto LABEL_11;
    }

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30) + 48);
    v29 = v96;
    sub_1D4417BA4();
    v95 = v25;
    v30 = v97;
    sub_1D4417934();
    (*(v27 + 8))(v29, v26);
    v31 = v30;
    *(v30 + v28) = 1;
    sub_1D4417B94();
    v32 = sub_1D4417BD4();
    (*(*(v32 - 8) + 8))(a1, v32);
    sub_1D41769C4(v16, &qword_1EC7CBCB0);
    v33 = v99;
    swift_storeEnumTagMultiPayload();
    sub_1D41769C4(&v20[v95], &qword_1EC7CBCB0);
    sub_1D41769C4(v20, &qword_1EC7CBCB0);
LABEL_26:
    v86 = v100;
    sub_1D43C4054(v31, v100, type metadata accessor for GroupedActivityStreamItem.Activities);
    v41 = v86;
    v40 = 0;
    v42 = v33;
    return (*(v98 + 56))(v41, v40, 1, v42);
  }

  if (v23 == *MEMORY[0x1E69B7260])
  {
    v34 = sub_1D4417BD4();
    (*(*(v34 - 8) + 8))(a1, v34);
    (*(v18 + 96))(v20, v17);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCB8);
    v36 = *(v35 + 48);
    sub_1D41769C4(&v20[*(v35 + 64)], &qword_1EC7CBCB0);
    sub_1D41769C4(&v20[v36], &qword_1EC7CBCB0);
    v37 = v93;
    v38 = *(v92 + 8);
LABEL_8:
    v38(v20, v37);
    goto LABEL_11;
  }

  v43 = a1;
  if (v23 == *MEMORY[0x1E69B7278])
  {
    (*(v18 + 96))(v20, v17);
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30) + 48);
    v45 = v96;
    sub_1D4417BA4();
    v31 = v97;
    sub_1D4417934();
    v46 = *(v92 + 8);
    v47 = v45;
    v48 = v93;
    v46(v47, v93);
    *(v31 + v44) = 1;
    sub_1D4417B94();
    v49 = sub_1D4417BD4();
    (*(*(v49 - 8) + 8))(a1, v49);
    v33 = v99;
    swift_storeEnumTagMultiPayload();
    v46(v20, v48);
    goto LABEL_26;
  }

  if (v23 == *MEMORY[0x1E69B7248])
  {
    (*(v18 + 96))(v20, v17);
    v50 = v3;
    v51 = v95;
    v91 = *(v3 + 16);
    v91(v10, v20, v95);
    v52 = v94;
    sub_1D4417B94();
    v53 = sub_1D4417C34();
    v54 = *(v50 + 8);
    v54(v52, v51);
    if (v53)
    {
      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8B0);
      v55 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1D4435D40;
      v91((v56 + v55), v10, v51);
      v57 = v54;
      v58 = sub_1D42D6FF8(v56);
      swift_setDeallocating();
      v57(v56 + v55, v51);
      swift_deallocClassInstance();
      v59 = v96;
      v31 = v97;
      *v97 = v58;
      sub_1D4417BA4();
      sub_1D4417934();
      v60 = sub_1D4417BD4();
      (*(*(v60 - 8) + 8))(v43, v60);
      (*(v92 + 8))(v59, v93);
      v57(v10, v51);
      v33 = v99;
LABEL_20:
      swift_storeEnumTagMultiPayload();
      v57(v20, v51);
      goto LABEL_26;
    }

    v54(v10, v51);
    (*(v50 + 32))(v52, v20, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8B0);
    v70 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1D4435D40;
    v91((v71 + v70), v52, v51);
    v72 = v54;
    v73 = sub_1D42D6FF8(v71);
    swift_setDeallocating();
    v72(v71 + v70, v51);
    swift_deallocClassInstance();
    v75 = v96;
    v74 = v97;
    *v97 = v73;
    sub_1D4417BA4();
    sub_1D4417934();
    v76 = sub_1D4417BD4();
    (*(*(v76 - 8) + 8))(v43, v76);
    (*(v92 + 8))(v75, v93);
    v77 = v52;
    v31 = v74;
    v72(v77, v51);
    v33 = v99;
    goto LABEL_25;
  }

  v61 = v95;
  if (v23 == *MEMORY[0x1E69B7250])
  {
    v62 = v3;
    (*(v18 + 96))(v20, v17);
    v91 = *(v3 + 16);
    v91(v6, v20, v61);
    v63 = v94;
    sub_1D4417B94();
    v64 = sub_1D4417C34();
    v51 = v61;
    v57 = *(v62 + 8);
    v57(v63, v61);
    if (v64)
    {
      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8B0);
      v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1D4435D40;
      v91((v66 + v65), v6, v61);
      v67 = sub_1D42D6FF8(v66);
      swift_setDeallocating();
      v57(v66 + v65, v61);
      swift_deallocClassInstance();
      v31 = v97;
      *v97 = v67;
      v68 = v96;
      sub_1D4417BA4();
      sub_1D4417934();
      v69 = sub_1D4417BD4();
      (*(*(v69 - 8) + 8))(v43, v69);
      (*(v92 + 8))(v68, v93);
      v57(v6, v61);
      v33 = v99;
      goto LABEL_20;
    }

    v57(v6, v61);
    (*(v62 + 32))(v63, v20, v61);
    v90[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8B0);
    v79 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1D4435D40;
    v91((v80 + v79), v63, v61);
    v81 = sub_1D42D6FF8(v80);
    swift_setDeallocating();
    v57(v80 + v79, v61);
    swift_deallocClassInstance();
    v83 = v96;
    v82 = v97;
    *v97 = v81;
    sub_1D4417BA4();
    sub_1D4417934();
    v84 = sub_1D4417BD4();
    (*(*(v84 - 8) + 8))(v43, v84);
    (*(v92 + 8))(v83, v93);
    v85 = v63;
    v31 = v82;
    v57(v85, v61);
    v33 = v99;
LABEL_25:
    swift_storeEnumTagMultiPayload();
    goto LABEL_26;
  }

  if (v23 == *MEMORY[0x1E69B7258])
  {
    v78 = sub_1D4417BD4();
    (*(*(v78 - 8) + 8))(a1, v78);
    (*(v18 + 96))(v20, v17);
    v37 = sub_1D4417494();
    v38 = *(*(v37 - 8) + 8);
    goto LABEL_8;
  }

  if (v23 == *MEMORY[0x1E69B7288])
  {
    v88 = sub_1D4417BD4();
    (*(*(v88 - 8) + 8))(a1, v88);
    (*(v18 + 8))(v20, v17);
    goto LABEL_11;
  }

  if (v23 == *MEMORY[0x1E69B7280])
  {
    v89 = sub_1D4417BD4();
    (*(*(v89 - 8) + 8))(a1, v89);
    goto LABEL_11;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D43BD78C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v213 = a2;
  v212 = a1;
  v2 = sub_1D4417C84();
  v209 = *(v2 - 8);
  v210 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v206 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v208 = &v188 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v204 = &v188 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v207 = &v188 - v9;
  v10 = sub_1D4417954();
  v11 = *(v10 - 8);
  v215 = v10;
  v216 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v205 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v203 = &v188 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v202 = &v188 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v196 = &v188 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v195 = &v188 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v201 = &v188 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v194 = &v188 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v200 = &v188 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v189 = &v188 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v197 = &v188 - v30;
  v31 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  v211 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v193 = &v188 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v199 = &v188 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v192 = &v188 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v198 = &v188 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v191 = (&v188 - v41);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = (&v188 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v190 = (&v188 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = (&v188 - v48);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = (&v188 - v51);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = (&v188 - v54);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = (&v188 - v57);
  MEMORY[0x1EEE9AC00](v56);
  v60 = (&v188 - v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD50);
  v62 = MEMORY[0x1EEE9AC00](v61 - 8);
  v64 = &v188 - v63;
  v65 = *(v62 + 56);
  sub_1D43C3EB4(v214, &v188 - v63, type metadata accessor for GroupedActivityStreamItem.Activities);
  v214 = v65;
  v66 = v31;
  sub_1D43C3EB4(v212, &v64[v65], type metadata accessor for GroupedActivityStreamItem.Activities);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D43C3EB4(v64, v44, type metadata accessor for GroupedActivityStreamItem.Activities);
      v100 = *v44;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
      v102 = *(v101 + 48);
      v103 = v214;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v216 + 8))(v44 + v102, v215);
        goto LABEL_30;
      }

      v201 = v31;
      v212 = v64;
      v104 = &v64[v103];
      v105 = v191;
      sub_1D43C3EB4(v104, v191, type metadata accessor for GroupedActivityStreamItem.Activities);
      v106 = *v105;
      v107 = *(v101 + 48);
      v108 = v215;
      v109 = *(v216 + 32);
      v110 = v44 + v102;
      v111 = v196;
      v109(v196, v110, v215);
      v109(v202, v105 + v107, v108);
      sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
      sub_1D4419E04();
      sub_1D4419E04();
      if (v219 == v217 && v220 == v218)
      {
      }

      else
      {
        v144 = sub_1D441AD84();

        if ((v144 & 1) == 0)
        {

          v181 = v215;
          v182 = *(v216 + 8);
          v182(v202, v215);
          v182(v111, v181);
          goto LABEL_69;
        }
      }

      v145 = *(v101 + 48);
      v146 = sub_1D42DE3B4(v106, v100);
      v147 = v215;
      (*(v216 + 8))(v202, v215);
      v148 = v213;
      *v213 = v146;
      v109(v148 + v145, v111, v147);
      v149 = v201;
LABEL_55:
      swift_storeEnumTagMultiPayload();
      (*(v211 + 56))(v148, 0, 1, v149);
      goto LABEL_56;
    }

    v80 = v214;
    if (EnumCaseMultiPayload == 4)
    {
      v81 = v198;
      sub_1D43C3EB4(v64, v198, type metadata accessor for GroupedActivityStreamItem.Activities);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
      v83 = *(v81 + *(v82 + 48));
      v84 = *(v82 + 64);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v209 + 8))(v81 + v84, v210);
        (*(v216 + 8))(v81, v215);
        goto LABEL_34;
      }

      v208 = v83;
      v201 = v31;
      v212 = v64;
      v85 = v192;
      sub_1D43C3EB4(&v64[v80], v192, type metadata accessor for GroupedActivityStreamItem.Activities);
      v86 = *(v85 + *(v82 + 48));
      v87 = *(v82 + 64);
      v88 = v216;
      v89 = v81;
      v90 = v81;
      v91 = v215;
      v205 = *(v216 + 32);
      v206 = v86;
      (v205)(v203, v89, v215);
      v92 = v90 + v84;
      v93 = *(v209 + 32);
      v94 = v210;
      v93(v207, v92, v210);
      v93(v204, v85 + v87, v94);
      sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
      sub_1D4419E04();
      sub_1D4419E04();
      v95 = *(v88 + 8);
      v216 = v88 + 8;
      v95(v85, v91);
      if (v219 == v217 && v220 == v218)
      {
      }

      else
      {
        v155 = sub_1D441AD84();

        if ((v155 & 1) == 0)
        {
          v160 = v210;
          v158 = *(v209 + 8);
          v158(v204, v210);
          goto LABEL_62;
        }
      }

      v156 = v204;
      v157 = sub_1D4417C34();
      v158 = *(v209 + 8);
      v159 = v156;
      v160 = v210;
      v158(v159, v210);
      if (v157)
      {
        v161 = *(v82 + 48);
        v162 = *(v82 + 64);
        v148 = v213;
        result = (v205)(v213, v203, v215);
        if (!__OFADD__(v208, v206))
        {
          *(v148 + v161) = &v206[v208];
          v93(v148 + v162, v207, v160);
          v149 = v201;
          goto LABEL_55;
        }

        __break(1u);
LABEL_74:
        __break(1u);
        return result;
      }

LABEL_62:
      v158(v207, v160);
      v95(v203, v215);
      goto LABEL_69;
    }

    v123 = v199;
    sub_1D43C3EB4(v64, v199, type metadata accessor for GroupedActivityStreamItem.Activities);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
    v125 = *(v123 + *(v124 + 48));
    v126 = *(v124 + 64);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v209 + 8))(v123 + v126, v210);
      (*(v216 + 8))(v123, v215);
      goto LABEL_34;
    }

    v207 = v125;
    v201 = v66;
    v212 = v64;
    v127 = v193;
    sub_1D43C3EB4(&v64[v80], v193, type metadata accessor for GroupedActivityStreamItem.Activities);
    v128 = *(v127 + *(v124 + 48));
    v129 = *(v124 + 64);
    v130 = v215;
    v131 = v216;
    v203 = *(v216 + 32);
    v204 = v128;
    (v203)(v205, v123, v215);
    v132 = v123 + v126;
    v133 = *(v209 + 32);
    v134 = v210;
    v133(v208, v132, v210);
    v133(v206, v127 + v129, v134);
    sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
    sub_1D4419E04();
    sub_1D4419E04();
    v135 = *(v131 + 8);
    v216 = v131 + 8;
    v135(v127, v130);
    if (v219 == v217 && v220 == v218)
    {
    }

    else
    {
      v168 = sub_1D441AD84();

      if ((v168 & 1) == 0)
      {
        v173 = v210;
        v171 = *(v209 + 8);
        v171(v206, v210);
        goto LABEL_66;
      }
    }

    v169 = v206;
    v170 = sub_1D4417C34();
    v171 = *(v209 + 8);
    v172 = v169;
    v173 = v210;
    v171(v172, v210);
    if (v170)
    {
      v174 = *(v124 + 48);
      v175 = *(v124 + 64);
      v148 = v213;
      result = (v203)(v213, v205, v215);
      if (!__OFADD__(v207, v204))
      {
        *(v148 + v174) = &v204[v207];
        v133(v148 + v175, v208, v173);
        v149 = v201;
        goto LABEL_55;
      }

      goto LABEL_74;
    }

LABEL_66:
    v171(v208, v173);
    v135(v205, v215);
    goto LABEL_69;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D43C3EB4(v64, v60, type metadata accessor for GroupedActivityStreamItem.Activities);
    v96 = *v60;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
    v98 = *(v97 + 48);
    v99 = v214;
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v216 + 8))(v60 + v98, v215);
LABEL_30:

      goto LABEL_34;
    }

    v201 = v31;
    v212 = v64;
    sub_1D43C3EB4(&v64[v99], v58, type metadata accessor for GroupedActivityStreamItem.Activities);
    v138 = *v58;
    v139 = *(v97 + 48);
    v140 = v215;
    v141 = *(v216 + 32);
    v141(v197, v60 + v98, v215);
    v142 = v58 + v139;
    v143 = v189;
    v141(v189, v142, v140);
    sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
    sub_1D4419E04();
    sub_1D4419E04();
    if (v219 == v217 && v220 == v218)
    {

LABEL_54:
      v177 = *(v97 + 48);
      v178 = sub_1D42DE3B4(v138, v96);
      v179 = v215;
      (*(v216 + 8))(v143, v215);
      v148 = v213;
      *v213 = v178;
      v141(v148 + v177, v197, v179);
      v149 = v201;
      goto LABEL_55;
    }

    v176 = sub_1D441AD84();

    if (v176)
    {
      goto LABEL_54;
    }

    v186 = v215;
    v187 = *(v216 + 8);
    v187(v143, v215);
    v187(v197, v186);
LABEL_69:
    v136 = v213;
    v66 = v201;
    goto LABEL_70;
  }

  v68 = v214;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D43C3EB4(v64, v55, type metadata accessor for GroupedActivityStreamItem.Activities);
    v69 = *v55;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
    v71 = *(v70 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v72 = v66;
      v212 = v64;
      sub_1D43C3EB4(&v64[v68], v52, type metadata accessor for GroupedActivityStreamItem.Activities);
      v73 = *v52;
      v74 = *(v70 + 48);
      v75 = *(v216 + 32);
      v76 = v55 + v71;
      v77 = v215;
      v75(v200, v76, v215);
      v78 = v52 + v74;
      v79 = v194;
      v75(v194, v78, v77);
      sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
      sub_1D4419E04();
      sub_1D4419E04();
      if (v219 == v217 && v220 == v218)
      {

LABEL_41:
        v151 = *(v70 + 48);
        v152 = sub_1D42DE3B4(v73, v69);
        v153 = v215;
        (*(v216 + 8))(v79, v215);
        v154 = v213;
        *v213 = v152;
        v75(v154 + v151, v200, v153);
LABEL_48:
        swift_storeEnumTagMultiPayload();
        (*(v211 + 56))(v154, 0, 1, v72);
LABEL_56:
        v180 = v212;
        sub_1D43C3F84(&v212[v214], type metadata accessor for GroupedActivityStreamItem.Activities);
        return sub_1D43C3F84(v180, type metadata accessor for GroupedActivityStreamItem.Activities);
      }

      v150 = sub_1D441AD84();

      if (v150)
      {
        goto LABEL_41;
      }

      v183 = v215;
      v184 = *(v216 + 8);
      v184(v79, v215);
      v185 = v200;
      goto LABEL_64;
    }

    (*(v216 + 8))(v55 + v71, v215);
    goto LABEL_30;
  }

  sub_1D43C3EB4(v64, v49, type metadata accessor for GroupedActivityStreamItem.Activities);
  v112 = *v49;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
  v114 = *(v113 + 48);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v72 = v66;
    v212 = v64;
    v115 = v190;
    sub_1D43C3EB4(&v64[v68], v190, type metadata accessor for GroupedActivityStreamItem.Activities);
    v116 = *v115;
    v117 = *(v113 + 48);
    v118 = *(v216 + 32);
    v119 = v49 + v114;
    v120 = v215;
    v118(v201, v119, v215);
    v121 = v115 + v117;
    v122 = v195;
    v118(v195, v121, v120);
    sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
    sub_1D4419E04();
    sub_1D4419E04();
    if (v219 == v217 && v220 == v218)
    {
    }

    else
    {
      v164 = sub_1D441AD84();

      if ((v164 & 1) == 0)
      {

        v183 = v215;
        v184 = *(v216 + 8);
        v184(v122, v215);
        v185 = v201;
LABEL_64:
        v184(v185, v183);
        v136 = v213;
        v66 = v72;
LABEL_70:
        v137 = v211;
        v64 = v212;
        goto LABEL_71;
      }
    }

    v165 = *(v113 + 48);
    v166 = sub_1D42DE3B4(v116, v112);
    v167 = v215;
    (*(v216 + 8))(v122, v215);
    v154 = v213;
    *v213 = v166;
    v118(v154 + v165, v201, v167);
    goto LABEL_48;
  }

  (*(v216 + 8))(v49 + v114, v215);

LABEL_34:
  v136 = v213;
  v137 = v211;
LABEL_71:
  (*(v137 + 56))(v136, 1, 1, v66);
  return sub_1D41769C4(v64, &qword_1EC7CBD50);
}

uint64_t sub_1D43BED1C(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D4417C84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D4417954();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D43C3EB4(v2, v14, type metadata accessor for GroupedActivityStreamItem.Activities);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v16 = *v14;
      if (EnumCaseMultiPayload == 1)
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
        (*(v9 + 32))(v11, v14 + *(v17 + 48), v8);
        v18 = 1;
      }

      else
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
        (*(v9 + 32))(v11, v14 + *(v25 + 48), v8);
        v18 = 2;
      }
    }

    else
    {
      v16 = *v14;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
      (*(v9 + 32))(v11, v14 + *(v23 + 48), v8);
      v18 = 0;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v16 = *v14;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
    (*(v9 + 32))(v11, v14 + *(v24 + 48), v8);
    v18 = 3;
LABEL_11:
    MEMORY[0x1DA6D68D0](v18);
    sub_1D439D8CC(a1, v16);

    sub_1D417E080(&qword_1EC7CBD48, MEMORY[0x1E69B71D8]);
    sub_1D4419B94();
    return (*(v9 + 8))(v11, v8);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
    v20 = *(v14 + *(v19 + 48));
    v21 = *(v19 + 64);
    (*(v9 + 32))(v11, v14, v8);
    (*(v5 + 32))(v7, v14 + v21, v4);
    v22 = 4;
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
    v20 = *(v14 + *(v26 + 48));
    v27 = *(v26 + 64);
    (*(v9 + 32))(v11, v14, v8);
    (*(v5 + 32))(v7, v14 + v27, v4);
    v22 = 5;
  }

  MEMORY[0x1DA6D68D0](v22);
  sub_1D417E080(&qword_1EC7CBD48, MEMORY[0x1E69B71D8]);
  sub_1D4419B94();
  MEMORY[0x1DA6D68D0](v20);
  sub_1D417E080(&qword_1EC7C97B8, MEMORY[0x1E69B72D8]);
  sub_1D4419B94();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D43BF204()
{
  sub_1D441AEB4();
  sub_1D43BED1C(v1);
  return sub_1D441AF04();
}

uint64_t sub_1D43BF248()
{
  sub_1D441AEB4();
  sub_1D43BED1C(v1);
  return sub_1D441AF04();
}

uint64_t sub_1D43BF284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBCC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v26 - v4;
  v5 = sub_1D4417BD4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for GroupedActivityStreamItem(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v26 = &v26 - v20;
  sub_1D42D73C8(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B48);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v22 = swift_dynamicCast();
    v21 = v28;
    if (!v22)
    {
      goto LABEL_5;
    }

LABEL_7:
    v24 = v26;
    sub_1D43C4054(v19, v26, type metadata accessor for GroupedActivityStreamItem);
    __swift_destroy_boxed_opaque_existential_0(v29);
    sub_1D43C4054(v24, v21, type metadata accessor for GroupedActivityStreamItem);
    v23 = 0;
    return (*(v16 + 56))(v21, v23, 1, v15);
  }

  (*(v6 + 32))(v12, v14, v5);
  (*(v6 + 16))(v9, v12, v5);
  v19 = v27;
  sub_1D43B75D0(v9, v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v6 + 8))(v12, v5);
  if (!(*(v16 + 48))(v19, 1, v15))
  {
    v21 = v28;
    goto LABEL_7;
  }

  sub_1D41769C4(v19, &qword_1EC7CBCC8);
  v21 = v28;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v29);
  v23 = 1;
  return (*(v16 + 56))(v21, v23, 1, v15);
}

uint64_t sub_1D43BF608()
{
  sub_1D441AEB4();
  sub_1D4417434();
  sub_1D417E080(&qword_1EC7C97F8, MEMORY[0x1E6969530]);
  sub_1D4419B94();
  sub_1D4419CD4();
  sub_1D43BED1C(v1);
  return sub_1D441AF04();
}

uint64_t sub_1D43BF6C0(__int128 *a1)
{
  sub_1D4417434();
  sub_1D417E080(&qword_1EC7C97F8, MEMORY[0x1E6969530]);
  sub_1D4419B94();
  sub_1D4419CD4();
  return sub_1D43BED1C(a1);
}

uint64_t sub_1D43BF760()
{
  sub_1D441AEB4();
  sub_1D4417434();
  sub_1D417E080(&qword_1EC7C97F8, MEMORY[0x1E6969530]);
  sub_1D4419B94();
  sub_1D4419CD4();
  sub_1D43BED1C(v1);
  return sub_1D441AF04();
}

uint64_t sub_1D43BF814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D44173E4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D441AD84() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);

  return sub_1D43BED18(a1 + v11, a2 + v11);
}

uint64_t sub_1D43BF8A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D44364A0;
  MEMORY[0x1DA6D5730](0x2865746144, 0xE500000000000000);
  sub_1D44173D4();
  sub_1D441A044();
  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v2 = type metadata accessor for GroupedActivityStreamItem(0);
  *(v1 + 48) = sub_1D43BF980(v0 + *(v2 + 24));
  *(v1 + 56) = v3;
  return v1;
}

char *sub_1D43BF980(uint64_t a1)
{
  v2 = sub_1D4417C84();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v78 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GroupedActivityStreamItem(0);
  v81 = *(v4 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1D4417954();
  v7 = *(v6 - 8);
  v83 = v6;
  v84 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v78 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v78 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - v20;
  v22 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D43C3EB4(a1, v24, type metadata accessor for GroupedActivityStreamItem.Activities);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v26 = v84;
      if (EnumCaseMultiPayload == 1)
      {
        v27 = *v24;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
        v29 = v83;
        (*(v26 + 32))(v19, v24 + *(v28 + 48), v83);
        sub_1D43C3EB4(v82, &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedActivityStreamItem);
        v30 = (*(v81 + 80) + 16) & ~*(v81 + 80);
        v31 = swift_allocObject();
        sub_1D43C4054(&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for GroupedActivityStreamItem);
        v32 = sub_1D43C3360(v27, sub_1D43C3F80, v31);

        v86 = v32;

        sub_1D43CE734(&v86);

        v33 = v86;
        v86 = 0;
        v87 = 0xE000000000000000;
        MEMORY[0x1DA6D5730](0x28657661654CLL, 0xE600000000000000);
        v34 = MEMORY[0x1DA6D5890](v33, MEMORY[0x1E69E6158]);
        v36 = v35;

        MEMORY[0x1DA6D5730](v34, v36);

        MEMORY[0x1DA6D5730](8236, 0xE200000000000000);
        sub_1D441AB54();
        MEMORY[0x1DA6D5730](41, 0xE100000000000000);
        v37 = v86;
        v21 = v19;
        goto LABEL_14;
      }

      v58 = *v24;
      v59 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
      v21 = v16;
      v60 = v16;
      v29 = v83;
      (*(v26 + 32))(v60, v59, v83);
      sub_1D43C3EB4(v82, &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedActivityStreamItem);
      v61 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v62 = swift_allocObject();
      sub_1D43C4054(&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v62 + v61, type metadata accessor for GroupedActivityStreamItem);
      v63 = sub_1D43C3360(v58, sub_1D43C4120, v62);

      v86 = v63;

      sub_1D43CE734(&v86);

      v46 = v86;
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1D441A9C4();
      v48 = 0x80000001D44530C0;
      v47 = 0xD000000000000010;
    }

    else
    {
      v41 = *v24;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
      v29 = v83;
      v26 = v84;
      (*(v84 + 32))(v21, v24 + *(v42 + 48), v83);
      sub_1D43C3EB4(v82, &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedActivityStreamItem);
      v43 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v44 = swift_allocObject();
      sub_1D43C4054(&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43, type metadata accessor for GroupedActivityStreamItem);
      v45 = sub_1D43C3360(v41, sub_1D43C4120, v44);

      v86 = v45;

      sub_1D43CE734(&v86);

      v46 = v86;
      v86 = 0;
      v87 = 0xE000000000000000;
      v47 = 0x286E696F4ALL;
      v48 = 0xE500000000000000;
    }

    MEMORY[0x1DA6D5730](v47, v48);
    v64 = MEMORY[0x1DA6D5890](v46, MEMORY[0x1E69E6158]);
    v66 = v65;

    MEMORY[0x1DA6D5730](v64, v66);

    MEMORY[0x1DA6D5730](8236, 0xE200000000000000);
    sub_1D441AB54();
    MEMORY[0x1DA6D5730](41, 0xE100000000000000);
    v37 = v86;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v49 = *v24;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
    v29 = v83;
    (*(v84 + 32))(v13, v24 + *(v50 + 48), v83);
    sub_1D43C3EB4(v82, &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedActivityStreamItem);
    v51 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v52 = swift_allocObject();
    sub_1D43C4054(&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51, type metadata accessor for GroupedActivityStreamItem);
    v53 = sub_1D43C3360(v49, sub_1D43C4120, v52);

    v86 = v53;

    sub_1D43CE734(&v86);

    v54 = v86;
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_1D441A9C4();
    MEMORY[0x1DA6D5730](0xD000000000000013, 0x80000001D44530A0);
    v55 = MEMORY[0x1DA6D5890](v54, MEMORY[0x1E69E6158]);
    v57 = v56;

    MEMORY[0x1DA6D5730](v55, v57);

    MEMORY[0x1DA6D5730](8236, 0xE200000000000000);
    sub_1D441AB54();
    MEMORY[0x1DA6D5730](41, 0xE100000000000000);
    v37 = v86;
    v21 = v13;
    v26 = v84;
  }

  else
  {
    v29 = v83;
    if (EnumCaseMultiPayload == 4)
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
      v68 = *(v24 + *(v38 + 48));
      v39 = *(v38 + 64);
      v21 = v10;
      v26 = v84;
      (*(v84 + 32))(v21, v24, v29);
      v71 = v78;
      v70 = v79;
      v40 = v24 + v39;
      v73 = v80;
      (*(v79 + 32))(v78, v40, v80);
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1D441A9C4();
      v74 = 0x65766F6D6552;
    }

    else
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
      v68 = *(v24 + *(v67 + 48));
      v69 = *(v67 + 64);
      v21 = v10;
      v26 = v84;
      (*(v84 + 32))(v21, v24, v29);
      v71 = v78;
      v70 = v79;
      v72 = v24 + v69;
      v73 = v80;
      (*(v79 + 32))(v78, v72, v80);
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1D441A9C4();
      v74 = 0x6574656C6544;
    }

    MEMORY[0x1DA6D5730](v74 & 0xFFFFFFFFFFFFLL | 0x624F000000000000, 0xEE0028737463656ALL);
    sub_1D441AB54();
    MEMORY[0x1DA6D5730](8236, 0xE200000000000000);
    v85[0] = v68;
    v75 = sub_1D441AD44();
    MEMORY[0x1DA6D5730](v75);

    MEMORY[0x1DA6D5730](8236, 0xE200000000000000);
    strcpy(v85, "Participant(");
    BYTE5(v85[1]) = 0;
    HIWORD(v85[1]) = -5120;
    v76 = sub_1D4417C04();
    MEMORY[0x1DA6D5730](v76);

    MEMORY[0x1DA6D5730](41, 0xE100000000000000);
    MEMORY[0x1DA6D5730](v85[0], v85[1]);

    MEMORY[0x1DA6D5730](41, 0xE100000000000000);
    v37 = v86;
    (*(v70 + 8))(v71, v73);
  }

LABEL_14:
  (*(v26 + 8))(v21, v29);
  return v37;
}

uint64_t sub_1D43C04EC()
{
  strcpy(v2, "Participant(");
  v0 = sub_1D4417C04();
  MEMORY[0x1DA6D5730](v0);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_1D43C0560(uint64_t a1)
{
  v121 = a1;
  v2 = sub_1D4417C84();
  v3 = *(v2 - 8);
  v123 = v2;
  v124 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1D4417C64();
  v6 = *(v122 - 8);
  v7 = MEMORY[0x1EEE9AC00](v122);
  v120 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v109 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v109 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v109 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v109 - v18;
  v19 = sub_1D4417954();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v119 = (&v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v21);
  v115 = &v109 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v114 = &v109 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v113 = &v109 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v112 = &v109 - v29;
  v30 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GroupedActivityStreamItem(0);
  sub_1D43C3EB4(v1 + *(v33 + 24), v32, type metadata accessor for GroupedActivityStreamItem.Activities);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v53 = *v32;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
      (*(v20 + 32))(v112, &v32[*(v54 + 48)], v19);
      v125 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD10);
      sub_1D417645C(&qword_1EC7CBD40, &qword_1EC7CBD10);
      sub_1D417E080(&qword_1EC7C97B8, MEMORY[0x1E69B72D8]);
      v55 = sub_1D4419DD4();

      v56 = *(v55 + 16);
      if (v56)
      {
        v110 = v20;
        v116 = v19;
        v125 = MEMORY[0x1E69E7CC0];
        sub_1D43CF31C(0, v56, 0);
        v57 = v125;
        v58 = sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
        v119 = *(v124 + 16);
        v120 = v58;
        v59 = (*(v124 + 80) + 32) & ~*(v124 + 80);
        v115 = v55;
        v60 = v55 + v59;
        v61 = *(v124 + 72);
        v124 += 16;
        v62 = (v124 - 8);
        v117 = v6 + 32;
        v118 = v61;
        v63 = v111;
        do
        {
          v64 = v123;
          v119(v5, v60, v123);
          sub_1D4417C74();
          (*v62)(v5, v64);
          v125 = v57;
          v66 = *(v57 + 16);
          v65 = *(v57 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1D43CF31C(v65 > 1, v66 + 1, 1);
            v57 = v125;
          }

          *(v57 + 16) = v66 + 1;
          (*(v6 + 32))(v57 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v66, v63, v122);
          v60 += v118;
          --v56;
        }

        while (v56);

        v19 = v116;
        v20 = v110;
      }

      else
      {

        v57 = MEMORY[0x1E69E7CC0];
      }

      v105 = v112;
      v106 = sub_1D43588D8(v112, v57);
      goto LABEL_39;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v35 = *v32;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
      (*(v20 + 32))(v113, &v32[*(v36 + 48)], v19);
      v125 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD10);
      sub_1D417645C(&qword_1EC7CBD40, &qword_1EC7CBD10);
      sub_1D417E080(&qword_1EC7C97B8, MEMORY[0x1E69B72D8]);
      v37 = sub_1D4419DD4();

      v38 = *(v37 + 16);
      if (v38)
      {
        v110 = v20;
        v116 = v19;
        v125 = MEMORY[0x1E69E7CC0];
        sub_1D43CF31C(0, v38, 0);
        v39 = v125;
        v40 = sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
        v119 = *(v124 + 16);
        v120 = v40;
        v41 = (*(v124 + 80) + 32) & ~*(v124 + 80);
        v115 = v37;
        v42 = v37 + v41;
        v43 = *(v124 + 72);
        v124 += 16;
        v44 = (v124 - 8);
        v117 = v6 + 32;
        v118 = v43;
        do
        {
          v45 = v123;
          v119(v5, v42, v123);
          sub_1D4417C74();
          (*v44)(v5, v45);
          v125 = v39;
          v46 = v17;
          v48 = *(v39 + 16);
          v47 = *(v39 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1D43CF31C(v47 > 1, v48 + 1, 1);
            v39 = v125;
          }

          *(v39 + 16) = v48 + 1;
          (*(v6 + 32))(v39 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v48, v46, v122);
          v42 += v118;
          --v38;
          v17 = v46;
        }

        while (v38);

        v19 = v116;
        v20 = v110;
      }

      else
      {

        v39 = MEMORY[0x1E69E7CC0];
      }

      v105 = v113;
      v106 = sub_1D43591F8(v113, v39);
LABEL_39:
      v104 = v106;
LABEL_43:

      (*(v20 + 8))(v105, v19);
      return v104;
    }

    v81 = *v32;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
    (*(v20 + 32))(v114, &v32[*(v82 + 48)], v19);
    v125 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD10);
    sub_1D417645C(&qword_1EC7CBD40, &qword_1EC7CBD10);
    sub_1D417E080(&qword_1EC7C97B8, MEMORY[0x1E69B72D8]);
    v83 = sub_1D4419DD4();

    v84 = *(v83 + 16);
    if (v84)
    {
      v110 = v20;
      v116 = v19;
      v125 = MEMORY[0x1E69E7CC0];
      sub_1D43CF31C(0, v84, 0);
      v85 = v125;
      v86 = sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      v119 = *(v124 + 16);
      v120 = v86;
      v87 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v115 = v83;
      v88 = v83 + v87;
      v89 = *(v124 + 72);
      v124 += 16;
      v90 = (v124 - 8);
      v117 = v6 + 32;
      v118 = v89;
      do
      {
        v91 = v123;
        v119(v5, v88, v123);
        sub_1D4417C74();
        (*v90)(v5, v91);
        v125 = v85;
        v92 = v14;
        v94 = *(v85 + 16);
        v93 = *(v85 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_1D43CF31C(v93 > 1, v94 + 1, 1);
          v85 = v125;
        }

        *(v85 + 16) = v94 + 1;
        (*(v6 + 32))(v85 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v94, v92, v122);
        v88 += v118;
        --v84;
        v14 = v92;
      }

      while (v84);

      v19 = v116;
      v20 = v110;
    }

    else
    {

      v85 = MEMORY[0x1E69E7CC0];
    }

    v105 = v114;
    v107 = sub_1D4358D9C(v114, v85);
LABEL_42:
    v104 = v107;
    goto LABEL_43;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v67 = *v32;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38);
    (*(v20 + 32))(v115, &v32[*(v68 + 48)], v19);
    v125 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD10);
    sub_1D417645C(&qword_1EC7CBD40, &qword_1EC7CBD10);
    sub_1D417E080(&qword_1EC7C97B8, MEMORY[0x1E69B72D8]);
    v69 = sub_1D4419DD4();

    v70 = *(v69 + 16);
    if (v70)
    {
      v110 = v20;
      v116 = v19;
      v125 = MEMORY[0x1E69E7CC0];
      sub_1D43CF31C(0, v70, 0);
      v71 = v125;
      v72 = sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
      v119 = *(v124 + 16);
      v120 = v72;
      v73 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v114 = v69;
      v74 = v69 + v73;
      v75 = *(v124 + 72);
      v124 += 16;
      v76 = (v124 - 8);
      v117 = v6 + 32;
      v118 = v75;
      do
      {
        v77 = v123;
        v119(v5, v74, v123);
        sub_1D4417C74();
        (*v76)(v5, v77);
        v125 = v71;
        v78 = v11;
        v80 = *(v71 + 16);
        v79 = *(v71 + 24);
        if (v80 >= v79 >> 1)
        {
          sub_1D43CF31C(v79 > 1, v80 + 1, 1);
          v71 = v125;
        }

        *(v71 + 16) = v80 + 1;
        (*(v6 + 32))(v71 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v80, v78, v122);
        v74 += v118;
        --v70;
        v11 = v78;
      }

      while (v70);

      v19 = v116;
      v20 = v110;
    }

    else
    {

      v71 = MEMORY[0x1E69E7CC0];
    }

    v105 = v115;
    v107 = sub_1D4359674(v115, v71);
    goto LABEL_42;
  }

  v116 = v19;
  if (EnumCaseMultiPayload == 4)
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
    v50 = *&v32[*(v49 + 48)];
    v51 = *(v49 + 64);
    v98 = v20;
    v52 = *(v20 + 32);
    v100 = v119;
    v52(v119, v32, v19);
    v101 = v124;
    (*(v124 + 32))(v5, &v32[v51], v123);
    sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
    v102 = v120;
    sub_1D4417C74();
    v103 = sub_1D4353270(v100, v50, v102);
  }

  else
  {
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
    v96 = *&v32[*(v95 + 48)];
    v97 = *(v95 + 64);
    v98 = v20;
    v99 = *(v20 + 32);
    v100 = v119;
    v99(v119, v32, v19);
    v101 = v124;
    (*(v124 + 32))(v5, &v32[v97], v123);
    sub_1D417E080(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
    v102 = v120;
    sub_1D4417C74();
    v103 = sub_1D435731C(v100, v96, v102);
  }

  v104 = v103;
  (*(v6 + 8))(v102, v122);
  (*(v101 + 8))(v5, v123);
  (*(v98 + 8))(v100, v116);
  return v104;
}

uint64_t sub_1D43C14F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D4417434();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D43C155C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_1D43C166C(uint64_t result, uint64_t *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v15 = 0;
    v23 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    a5 = 0;
    goto LABEL_31;
  }

  sub_1D441A874();
  a5(0);
  sub_1D417E080(a6, a7);
  result = sub_1D441A0A4();
  v8 = v31;
  v13 = v32;
  v14 = v33;
  v15 = v34;
  v16 = v35;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_31;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = v14;
  v28 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (v8 < 0)
  {
    if (!sub_1D441A8F4())
    {
      goto LABEL_29;
    }

    v28(0);
    swift_dynamicCast();
    result = v30;
    v17 = a3;
    if (!v30)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_29;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v20 = v15;
  if (v16)
  {
LABEL_12:
    v16 &= v16 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_12;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v26 = v15 + 1;
  }

  else
  {
    v26 = v18;
  }

  v15 = v26 - 1;
LABEL_29:
  v14 = v27;
LABEL_31:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void *sub_1D43C189C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1D42D73C8(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1D419FAA8(v20, v21);
      sub_1D419FAA8(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D43C1A08(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D4417C84();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D43C1CAC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D43C1E04(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D4417494();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D43C20A8(uint64_t a1, uint64_t a2)
{
  v186 = a2;
  v3 = sub_1D4417C84();
  v4 = *(v3 - 8);
  v184 = v3;
  v185 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v182 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v183 = &v168 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v180 = &v168 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v181 = &v168 - v11;
  v12 = sub_1D4417954();
  v187 = *(v12 - 8);
  v188 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v179 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v178 = &v168 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v175 = &v168 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v176 = &v168 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v173 = &v168 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v174 = &v168 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v171 = &v168 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v172 = &v168 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v177 = &v168 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v170 = &v168 - v31;
  v32 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v168 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v168 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = (&v168 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (&v168 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = (&v168 - v46);
  MEMORY[0x1EEE9AC00](v45);
  v49 = (&v168 - v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD50);
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = (&v168 + *(v51 + 56) - v52);
  v54 = a1;
  v55 = &v168 - v52;
  sub_1D43C3EB4(v54, &v168 - v52, type metadata accessor for GroupedActivityStreamItem.Activities);
  sub_1D43C3EB4(v186, v53, type metadata accessor for GroupedActivityStreamItem.Activities);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D43C3EB4(v55, v49, type metadata accessor for GroupedActivityStreamItem.Activities);
      v79 = *v49;
      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
      if (!swift_getEnumCaseMultiPayload())
      {
        v62 = v55;
        v118 = *v53;
        v119 = v187;
        v120 = v188;
        v121 = *(v187 + 32);
        v122 = v49 + v80;
        v123 = v170;
        v121(v170, v122, v188);
        v124 = v53 + v80;
        v125 = v177;
        v121(v177, v124, v120);
        v126 = sub_1D438C800(v79, v118);

        if (v126)
        {
          sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
          sub_1D4419E04();
          sub_1D4419E04();
          if (v191 == v189 && v192 == v190)
          {
            v127 = *(v187 + 8);
            v127(v177, v120);
            v127(v123, v120);
            goto LABEL_46;
          }

          v159 = sub_1D441AD84();
          v167 = *(v187 + 8);
          v167(v177, v120);
          v167(v123, v120);
          goto LABEL_73;
        }

        v153 = *(v119 + 8);
        v153(v125, v120);
        v153(v123, v120);
LABEL_76:
        sub_1D43C3F84(v62, type metadata accessor for GroupedActivityStreamItem.Activities);
        goto LABEL_40;
      }

      (*(v187 + 8))(v49 + v80, v188);
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D43C3EB4(v55, v47, type metadata accessor for GroupedActivityStreamItem.Activities);
      v57 = *v47;
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
      v59 = swift_getEnumCaseMultiPayload();
      v60 = v187;
      v61 = v188;
      if (v59 == 1)
      {
        v62 = v55;
        v63 = *v53;
        v64 = *(v187 + 32);
        v65 = v47 + v58;
        v66 = v172;
        v64(v172, v65, v188);
        v67 = v53 + v58;
        v68 = v171;
        v64(v171, v67, v61);
        v69 = sub_1D438C800(v57, v63);

        if (v69)
        {
          sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
          sub_1D4419E04();
          sub_1D4419E04();
          if (v191 == v189 && v192 == v190)
          {
            v70 = *(v60 + 8);
            v70(v68, v61);
            v70(v66, v61);
LABEL_46:

LABEL_74:
            v162 = v62;
            goto LABEL_75;
          }

          v159 = sub_1D441AD84();
          v160 = *(v60 + 8);
          v160(v68, v61);
          v160(v66, v61);
LABEL_73:

          if (v159)
          {
            goto LABEL_74;
          }

          goto LABEL_76;
        }

        v145 = *(v60 + 8);
        v145(v68, v61);
        v145(v66, v61);
        goto LABEL_76;
      }

      (*(v187 + 8))(v47 + v58, v188);
      goto LABEL_36;
    }

    sub_1D43C3EB4(v55, v44, type metadata accessor for GroupedActivityStreamItem.Activities);
    v97 = *v44;
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
    v99 = swift_getEnumCaseMultiPayload();
    v100 = v187;
    v101 = v188;
    if (v99 == 2)
    {
      v85 = v55;
      v102 = *v53;
      v103 = *(v187 + 32);
      v104 = v44 + v98;
      v105 = v174;
      v103(v174, v104, v188);
      v106 = v53 + v98;
      v107 = v173;
      v103(v173, v106, v101);
      v108 = sub_1D438C800(v97, v102);

      if ((v108 & 1) == 0)
      {
        v146 = *(v100 + 8);
        v146(v107, v101);
        v146(v105, v101);
        goto LABEL_67;
      }

      sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
      sub_1D4419E04();
      sub_1D4419E04();
      if (v191 == v189 && v192 == v190)
      {
        v94 = *(v100 + 8);
        v94(v107, v101);
        v95 = v105;
        v96 = v101;
        goto LABEL_27;
      }

      v154 = sub_1D441AD84();
      v161 = v107;
      v156 = *(v100 + 8);
      v156(v161, v101);
      v157 = v105;
      v158 = v101;
      goto LABEL_65;
    }

    (*(v187 + 8))(v44 + v98, v188);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v71 = v187;
    v169 = v55;
    if (EnumCaseMultiPayload == 4)
    {
      sub_1D43C3EB4(v55, v38, type metadata accessor for GroupedActivityStreamItem.Activities);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
      v73 = *(v72 + 48);
      v74 = *&v38[v73];
      v75 = *(v72 + 64);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v186 = *(v53 + v73);
        (*(v71 + 32))(v178, v53, v188);
        v76 = v184;
        v77 = *(v185 + 32);
        v77(v181, &v38[v75], v184);
        v77(v180, v53 + v75, v76);
        sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
        sub_1D4419E04();
        sub_1D4419E04();
        if (v191 == v189 && v192 == v190)
        {
          v78 = 1;
        }

        else
        {
          v78 = sub_1D441AD84();
        }

        v129 = *(v71 + 8);
        v130 = v38;
        v131 = v188;
        v129(v130, v188);
        if (v78)
        {
          if (v74 == v186)
          {
            v132 = v180;
            v133 = v181;
            v116 = sub_1D4417C34();
            v134 = *(v185 + 8);
            v135 = v132;
            v136 = v184;
            v134(v135, v184);
            v134(v133, v136);
            v137 = v178;
LABEL_56:
            v129(v137, v188);
            sub_1D43C3F84(v169, type metadata accessor for GroupedActivityStreamItem.Activities);
            return v116 & 1;
          }

          v163 = v184;
          v164 = *(v185 + 8);
          v164(v180, v184);
          v164(v181, v163);
          v149 = v178;
LABEL_70:
          v150 = v188;
          goto LABEL_71;
        }

        v147 = v184;
        v148 = *(v185 + 8);
        v148(v180, v184);
        v148(v181, v147);
        v149 = v178;
        v150 = v131;
        goto LABEL_71;
      }

      (*(v185 + 8))(&v38[v75], v184);
      (*(v71 + 8))(v38, v188);
    }

    else
    {
      sub_1D43C3EB4(v55, v35, type metadata accessor for GroupedActivityStreamItem.Activities);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30);
      v110 = *(v109 + 48);
      v111 = *&v35[v110];
      v112 = *(v109 + 64);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v186 = *(v53 + v110);
        (*(v71 + 32))(v179, v53, v188);
        v113 = v184;
        v114 = *(v185 + 32);
        v114(v183, &v35[v112], v184);
        v114(v182, v53 + v112, v113);
        sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
        sub_1D4419E04();
        sub_1D4419E04();
        if (v191 == v189 && v192 == v190)
        {
          v115 = 1;
        }

        else
        {
          v115 = sub_1D441AD84();
        }

        v129 = *(v71 + 8);
        v138 = v35;
        v139 = v188;
        v129(v138, v188);
        if (v115)
        {
          if (v111 == v186)
          {
            v140 = v182;
            v141 = v183;
            v116 = sub_1D4417C34();
            v142 = *(v185 + 8);
            v143 = v140;
            v144 = v184;
            v142(v143, v184);
            v142(v141, v144);
            v137 = v179;
            goto LABEL_56;
          }

          v165 = v184;
          v166 = *(v185 + 8);
          v166(v182, v184);
          v166(v183, v165);
          v149 = v179;
          goto LABEL_70;
        }

        v151 = v184;
        v152 = *(v185 + 8);
        v152(v182, v184);
        v152(v183, v151);
        v149 = v179;
        v150 = v139;
LABEL_71:
        v129(v149, v150);
        sub_1D43C3F84(v169, type metadata accessor for GroupedActivityStreamItem.Activities);
        goto LABEL_40;
      }

      (*(v185 + 8))(&v35[v112], v184);
      (*(v71 + 8))(v35, v188);
    }

    v55 = v169;
    goto LABEL_39;
  }

  sub_1D43C3EB4(v55, v41, type metadata accessor for GroupedActivityStreamItem.Activities);
  v81 = *v41;
  v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
  v83 = swift_getEnumCaseMultiPayload();
  v84 = v187;
  if (v83 == 3)
  {
    v85 = v55;
    v86 = *v53;
    v87 = *(v187 + 32);
    v88 = v41 + v82;
    v89 = v176;
    v90 = v188;
    v87(v176, v88, v188);
    v91 = v53 + v82;
    v92 = v175;
    v87(v175, v91, v90);
    v93 = sub_1D438C800(v81, v86);

    if ((v93 & 1) == 0)
    {
      v128 = *(v84 + 8);
      v128(v92, v90);
      v128(v89, v90);
      goto LABEL_67;
    }

    sub_1D417E080(&qword_1EC7CBD58, MEMORY[0x1E69B71D8]);
    sub_1D4419E04();
    sub_1D4419E04();
    if (v191 == v189 && v192 == v190)
    {
      v94 = *(v84 + 8);
      v94(v92, v90);
      v95 = v89;
      v96 = v90;
LABEL_27:
      v94(v95, v96);

LABEL_66:
      v162 = v85;
LABEL_75:
      sub_1D43C3F84(v162, type metadata accessor for GroupedActivityStreamItem.Activities);
      v116 = 1;
      return v116 & 1;
    }

    v154 = sub_1D441AD84();
    v155 = v92;
    v156 = *(v84 + 8);
    v156(v155, v90);
    v157 = v89;
    v158 = v90;
LABEL_65:
    v156(v157, v158);

    if (v154)
    {
      goto LABEL_66;
    }

LABEL_67:
    sub_1D43C3F84(v85, type metadata accessor for GroupedActivityStreamItem.Activities);
    goto LABEL_40;
  }

  (*(v187 + 8))(v41 + v82, v188);
LABEL_36:

LABEL_39:
  sub_1D41769C4(v55, &qword_1EC7CBD50);
LABEL_40:
  v116 = 0;
  return v116 & 1;
}

uint64_t sub_1D43C3360(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v43 = sub_1D4417C84();
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v35 = v3;
    v49 = MEMORY[0x1E69E7CC0];
    v9 = v5;
    sub_1D418BC38(0, v7, 0);
    v48 = v49;
    v10 = a1 + 56;
    result = sub_1D441A824();
    v11 = v9;
    v12 = result;
    v13 = 0;
    v40 = v9 + 8;
    v41 = v9 + 16;
    v36 = a1 + 64;
    v37 = v7;
    v38 = v9;
    v39 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v46 = *(a1 + 36);
      v17 = v42;
      v16 = v43;
      v18 = v11;
      (*(v11 + 16))(v42, *(a1 + 48) + *(v11 + 72) * v12, v43);
      v19 = v44(v17);
      v47 = v20;
      result = (*(v18 + 8))(v17, v16);
      v21 = v48;
      v49 = v48;
      v23 = *(v48 + 16);
      v22 = *(v48 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1D418BC38((v22 > 1), v23 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      v25 = v47;
      *(v24 + 32) = v19;
      *(v24 + 40) = v25;
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v39;
      v26 = *(v39 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      v48 = v21;
      if (v46 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v11 = v38;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v36 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            v33 = v38;
            result = sub_1D42D74FC(v12, v46, 0);
            v11 = v33;
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        v34 = v38;
        result = sub_1D42D74FC(v12, v46, 0);
        v11 = v34;
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v37)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D43C369C(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = sub_1D4417C84();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD60);
  result = MEMORY[0x1EEE9AC00](v8);
  v41 = (v37 - v11);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(result + 48);
    v39 = v5;
    v40 = v13;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v43 = (v42 + 32);
    v37[2] = v42 + 40;
    v38 = v15;
    while (1)
    {
      v44 = v12;
      v17 = v41;
      sub_1D417CF94(v14, v41, &qword_1EC7CBD60);
      v19 = *v17;
      v18 = v17[1];
      v20 = *v43;
      v21 = v7;
      (*v43)(v7, v17 + v40, v5);
      v22 = *v45;
      v24 = sub_1D418DA8C(v19, v18);
      v25 = v22[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      if (v22[3] >= v27)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D42D5720();
        }
      }

      else
      {
        sub_1D42D2D8C(v27, a2 & 1);
        v29 = sub_1D418DA8C(v19, v18);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_17;
        }

        v24 = v29;
      }

      v31 = *v45;
      if (v28)
      {

        v16 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        result = (*(v42 + 40))(v16, v21, v39);
      }

      else
      {
        v31[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v31[6] + 16 * v24);
        *v32 = v19;
        v32[1] = v18;
        v33 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        result = v20(v33, v21, v39);
        v34 = v31[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_16;
        }

        v31[2] = v36;
      }

      v14 += v38;
      a2 = 1;
      v12 = v44 - 1;
      if (v44 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D441ADE4();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D43C39DC()
{
  result = qword_1EC7C9770;
  if (!qword_1EC7C9770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7C9770);
  }

  return result;
}

uint64_t sub_1D43C3A70()
{
  result = sub_1D4417434();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GroupedActivityStreamItem.Activities(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D43C3AFC()
{
  sub_1D43C3B74();
  if (v0 <= 0x3F)
  {
    sub_1D43C3BF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D43C3B74()
{
  if (!qword_1EC7CBD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBD10);
    sub_1D4417954();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7CBD08);
    }
  }
}

void sub_1D43C3BF4()
{
  if (!qword_1EC7CBD18)
  {
    sub_1D4417954();
    sub_1D4417C84();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC7CBD18);
    }
  }
}

uint64_t sub_1D43C3D00()
{
  v1 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GroupedActivityStreamItem(0);
  sub_1D43C3EB4(v0 + *(v4 + 24), v3, type metadata accessor for GroupedActivityStreamItem.Activities);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30) + 64);
      v8 = sub_1D4417C84();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      v6 = 1;
      goto LABEL_7;
    }

LABEL_6:

    v6 = 0;
    v3 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_6;
  }

  v3 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
  v6 = 1;
LABEL_7:
  v9 = sub_1D4417954();
  (*(*(v9 - 8) + 8))(v3, v9);
  return v6;
}

uint64_t sub_1D43C3EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D43C3F84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D43C3FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43C4054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D43C40BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CalculateScrubberViewController()
{
  result = qword_1EC7CBD88;
  if (!qword_1EC7CBD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D43C41D8(uint64_t a1)
{
  *(a1 + qword_1EC7CBD70) = 0;
  sub_1D441ABC4();
  __break(1u);
}

id sub_1D43C4240()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD98);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18[-v3];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_viewDidLayoutSubviews);
  v5 = [v0 popoverPresentationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 arrowDirection];

    v8 = v7 == 1;
  }

  else
  {
    v8 = 0;
  }

  sub_1D4418AA4();
  v9 = v4[*(v2 + 40)];
  sub_1D43C489C(v4);
  if (v8 != v9)
  {
    v10 = sub_1D4418A94();
    *(v11 + *(v2 + 40)) = (*(v11 + *(v2 + 40)) & 1) == 0;
    v10(v18, 0);
  }

  result = [v0 view];
  if (result)
  {
    v13 = result;
    [result systemLayoutSizeFittingSize_];
    v15 = v14;
    v17 = v16;

    return [v0 setPreferredContentSize_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D43C43EC(void *a1)
{
  v1 = a1;
  sub_1D43C4240();
}

void sub_1D43C449C()
{

  v1 = *(v0 + qword_1EC7CBD80);
}

void sub_1D43C44EC(uint64_t a1)
{

  v2 = *(a1 + qword_1EC7CBD80);
}

id sub_1D43C4558(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD98);
  v6 = (v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v12 = sub_1D44176E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1EC7CBD70) = 0;
  *(v2 + qword_1EC7CBD78) = a1;
  *(v2 + qword_1EC7CBD80) = a2;
  swift_retain_n();
  v16 = a2;
  sub_1D44176C4();
  v17 = *(v13 + 16);
  v26 = v12;
  v17(v11, v15, v12);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = &v11[v6[11]];
  v27 = 0;
  v20 = v16;
  sub_1D4419284();
  v21 = v29;
  *v19 = v28;
  *(v19 + 1) = v21;
  v11[v6[12]] = 0;
  v22 = &v11[v6[13]];
  *v22 = sub_1D43C4814;
  v22[1] = v18;
  sub_1D43C482C(v11, v9);
  v23 = sub_1D4418A84();
  [v23 setModalPresentationStyle_];
  v24 = [v23 presentationController];

  if (v24)
  {
    [v24 setDelegate_];

    v20 = v24;
  }

  sub_1D43C489C(v11);
  (*(v13 + 8))(v15, v26);
  return v23;
}

id sub_1D43C4814(id result)
{
  if (result)
  {
    return [*(v1 + 16) resetHoverTimer];
  }

  return result;
}

uint64_t sub_1D43C482C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43C489C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D43C4904(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = -1;
  v5 = a3 < a1;
  if (a1 < a3)
  {
    v5 = -1;
  }

  if ((a4 & 1) == 0)
  {
    v4 = v5;
  }

  if (a2)
  {
    return (a4 & 1) == 0;
  }

  else
  {
    return v4;
  }
}