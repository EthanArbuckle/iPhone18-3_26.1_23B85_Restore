uint64_t sub_1B107E4AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B107E4F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1B107E560(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t))
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = sub_1B11218CC();
  v13 = v12;

  return a6(v9, a4, v11, v13);
}

uint64_t sub_1B107E5FC()
{
  result = sub_1B10A91CC();
  byte_1EB73D4C8 = result & 1;
  return result;
}

void *sub_1B107E620()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return v0;
}

uint64_t sub_1B107E658()
{
  sub_1B107E620();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B107E68C(uint64_t a1)
{
  v1 = *(a1 + 448);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B107E72C()
{
  v1 = sub_1B112194C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + *(*v0 + 144), v1);
  sub_1B11218FC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1B107E860()
{
  if (*(v0 + 81) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  swift_unknownObjectRelease();

  sub_1B107809C(v0 + *(*v0 + 136), &unk_1EB739BB8, &qword_1B1133E38);
  v5 = *(*v0 + 144);
  v6 = sub_1B112194C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + *(*v0 + 152));

  return v0;
}

uint64_t sub_1B107E988()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v4);
  v8 = v38 - v7 + 16;
  v9 = *(v0 + 40);
  v40 = *(v0 + 24);
  v41 = v9;
  v42 = *(v0 + 56);
  v43 = *(v0 + 72);
  v10 = *(&v9 + 1);
  sub_1B107FBFC(&v40, v38, &qword_1EB739CA8, &qword_1B1134100);
  sub_1B107EDC0(v10);
  if ((BYTE1(v41) & 1) == 0)
  {
    v11 = v42;
    if (v42)
    {
      v12 = v40;
      v13 = v41;
      v14 = *(v1 + 80);
      v15 = *(*v1 + 136);
      swift_beginAccess();
      sub_1B107FBFC(v1 + v15, v8, &unk_1EB739BB8, &qword_1B1133E38);
      v16 = sub_1B11228AC();
      result = __swift_getEnumTagSinglePayload(v8, 1, v16);
      if (result != 1)
      {
        v18 = *(v1 + 88);

        v19 = sub_1B1122E4C();
        v20 = sub_1B107F298(v14);
        LOBYTE(v36) = v13;
        sub_1B10AAFFC(v19, v18, v20, v21, 2, v8, v12, *(&v12 + 1), v36, v11);

        (*(*(v16 - 8) + 8))(v8, v16);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  v22 = *(v1 + 80);
  v23 = *(*v1 + 136);
  swift_beginAccess();
  sub_1B107FBFC(v1 + v23, v6, &unk_1EB739BB8, &qword_1B1133E38);
  v24 = sub_1B11228AC();
  result = __swift_getEnumTagSinglePayload(v6, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = *(v1 + 88);
  sub_1B1122E4C();
  sub_1B107F298(v22);
  sub_1B112285C();
  (*(*(v24 - 8) + 8))(v6, v24);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B107809C(&v40, &qword_1EB739CA8, &qword_1B1134100);
  }

  v27 = Strong;
  *&v38[0] = v1;
  v28 = sub_1B1122A7C();
  v30 = v29;
  v31 = *(*(v27 + 32) + 16);
  os_unfair_lock_lock(v31);
  sub_1B10A3FEC(v27, v28, v30, v1, &off_1F27784B0);

  os_unfair_lock_unlock(v31);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v27 + 24);
    ObjectType = swift_getObjectType();
    (*(v32 + 16))(v1, &off_1F27784B0, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  LOBYTE(v38[0]) = 1;

  sub_1B107809C(&v40, &qword_1EB739CA8, &qword_1B1134100);
  v34 = v38[0];
  v35 = *(v1 + 40);
  v38[0] = *(v1 + 24);
  v38[1] = v35;
  v38[2] = *(v1 + 56);
  v39 = *(v1 + 72);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 41) = v34;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0;
  sub_1B107809C(v38, &qword_1EB739CA8, &qword_1B1134100);
  *(v1 + 81) = 1;
  return swift_weakAssign();
}

uint64_t sub_1B107EDC0(uint64_t a1)
{
  result = sub_1B107F078(a1);
  if (result)
  {
    v3 = *(v1 + 88);

    sub_1B1122DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B1133CF0;
    v5 = aDiskwrite[0];
    v6 = aDiskwrite[1];
    v7 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v8 = v7;
    v9 = sub_1B106EAF4();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    sub_1B107A6C4();

    v10 = v8;
    v11 = sub_1B11229FC();
    v13 = v12;

    *(v4 + 96) = v10;
    *(v4 + 104) = v9;
    *(v4 + 72) = v11;
    *(v4 + 80) = v13;
    sub_1B112282C();

    v14 = aDiskwrite[0];
    v15 = aDiskwrite[1];
    swift_bridgeObjectRetain_n();

    MEMORY[0x1B272DAD0](46, 0xE100000000000000);
    MEMORY[0x1B272DAD0](v14, v15);

    v16 = sub_1B1122A4C();

    v17 = sub_1B11229DC();
    AnalyticsSendEvent();
  }

  return result;
}

uint64_t sub_1B107EFC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(*(v4 + *(*v4 + 152)) + 16);

  os_unfair_lock_lock(v9);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 41) = 0;
  v10 = *(v4 + 56);
  *(v4 + 56) = a4;

  os_unfair_lock_unlock(v9);
}

uint64_t sub_1B107F078(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = *(v2 + 80);

    v5 = sub_1B1122EFC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B107FC8C(v5, 0x656372756F736572, 0xEE00796C696D6146, isUniquelyReferenced_nonNull_native, &qword_1EB739CB0, &qword_1B1134108);
    sub_1B107E72C();
    v7 = sub_1B1122CBC();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B107FC8C(v7, 0x6E6F697461727564, 0xE800000000000000, v8, &qword_1EB739CB0, &qword_1B1134108);
    return v3;
  }

  return result;
}

uint64_t sub_1B107F170(uint64_t a1)
{
  v3 = *(*(v1 + *(*v1 + 152)) + 16);

  os_unfair_lock_lock(v3);
  v4 = v1[6];
  v1[6] = a1;

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1B107F244()
{
  v1 = *v0;
  sub_1B112314C();
  MEMORY[0x1B272E140](v1);
  return sub_1B112316C();
}

const char *sub_1B107F298(char a1)
{
  result = "unknown";
  switch(a1)
  {
    case 1:
      result = "parsecSession";
      break;
    case 2:
      result = "parsecFeedbackEvent";
      break;
    case 3:
      result = "customFeedback";
      break;
    case 4:
      result = "batchedInstrumentation";
      break;
    case 5:
      result = "fileInstrumentation";
      break;
    case 6:
      result = "pegasusConfiguration";
      break;
    case 7:
      result = "bagResource";
      break;
    case 8:
      result = "bag";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B107F34C(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

uint64_t sub_1B107F364(unsigned __int8 a1)
{
  sub_1B112314C();
  MEMORY[0x1B272E140](a1);
  return sub_1B112316C();
}

uint64_t sub_1B107F3B4(uint64_t a1, unsigned __int8 a2)
{
  sub_1B112314C();
  MEMORY[0x1B272E140](a2);
  return sub_1B112316C();
}

unint64_t sub_1B107F3F8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B107F34C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B107F424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B107F35C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B107F450()
{
  v0 = qword_1EDAD54C0;

  return v0;
}

uint64_t sub_1B107F488()
{
  v0 = *aDiskwrite;

  return v0;
}

uint64_t sub_1B107F51C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A120, qword_1B1134880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1133CF0;
  *(inited + 32) = 0x7365747962;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((inited + 56), "feedbackType");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  sub_1B107A6C4();
  return sub_1B1122A0C();
}

void sub_1B107F624(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[56];
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - v7;
  if ((v2[81] & 1) == 0)
  {
    v9 = v3[59];
    v18 = v5[2];
    v18(v8, &v2[v9], v4);
    v10 = v3[57];
    v11 = (*(v10 + 8))(v4, v10);
    v12 = v5[1];
    v12(v8, v4);
    sub_1B107F170(v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B1133BA0;
    v18(v8, &v2[v9], v4);
    v14 = (*(v10 + 16))(v4, v10);
    v12(v8, v4);
    v15 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = MEMORY[0x1E69E6530];
    *(v13 + 64) = v15;
    *(v13 + 32) = v14;
    sub_1B107EFC8("bytesWritten=%{signpost.description:attribute,public}llu", 56, 2, v13);

    v16 = *(*&v2[*(*v2 + 152)] + 16);

    os_unfair_lock_lock(v16);
    if ((v2[81] & 1) == 0)
    {
      sub_1B107E988();
    }

    os_unfair_lock_unlock(v16);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B107F89C()
{
  v1 = *v0;

  v2 = *(*(*(v1 + 448) - 8) + 8);
  v3 = v0 + *(*v0 + 472);

  return v2(v3);
}

uint64_t sub_1B107F92C(uint64_t a1)
{
  v2 = *v1;
  if ((*(v1 + 81) & 1) == 0)
  {
    sub_1B107F624(a1);
  }

  v3 = sub_1B107E860();

  (*(*(*(v2 + 448) - 8) + 8))(v3 + *(*v3 + 472));
  return v3;
}

uint64_t sub_1B107F9DC(uint64_t a1)
{
  v1 = sub_1B107F92C(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1B107FA74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B107FA94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

unint64_t sub_1B107FACC(uint64_t a1)
{
  *(a1 + 8) = sub_1B107FAFC();
  result = sub_1B107FB50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B107FAFC()
{
  result = qword_1EDAD5650;
  if (!qword_1EDAD5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5650);
  }

  return result;
}

unint64_t sub_1B107FB50()
{
  result = qword_1EDAD5640;
  if (!qword_1EDAD5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5640);
  }

  return result;
}

unint64_t sub_1B107FBA8()
{
  result = qword_1EDAD5648;
  if (!qword_1EDAD5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5648);
  }

  return result;
}

uint64_t sub_1B107FBFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1B107FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = OUTLINED_FUNCTION_1_3(a1, a2, a3);
  OUTLINED_FUNCTION_0_3(v12, v13);
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((OUTLINED_FUNCTION_2_3() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v9;
  v20 = sub_1B10A429C(v8, v6);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_13:
    sub_1B11230EC();
    __break(1u);
    return;
  }

  v17 = v20;
LABEL_5:
  v22 = *v9;
  if (v18)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v17);
    *(v23 + 8 * v17) = v7;
    OUTLINED_FUNCTION_4_2();
  }

  else
  {
    sub_1B108012C(v17, v8, v6, v7, v22);
    OUTLINED_FUNCTION_4_2();
  }
}

void sub_1B107FD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B112186C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = sub_1B10A4314(a2);
  OUTLINED_FUNCTION_0_3(v12, v13);
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CC8, &unk_1B1134120);
  if ((OUTLINED_FUNCTION_2_3() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v3;
  v20 = sub_1B10A4314(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_11:
    sub_1B11230EC();
    __break(1u);
    return;
  }

  v17 = v20;
LABEL_5:
  v22 = *v3;
  if (v18)
  {
    v23 = v22[7];
    v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0) - 8) + 72);
    OUTLINED_FUNCTION_4_2();

    sub_1B1080174(v25, v26);
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    sub_1B1080044(v17, v10, a1, v22);
    OUTLINED_FUNCTION_4_2();
  }
}

uint64_t sub_1B107FF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_1_3(a1, a2, a3);
  OUTLINED_FUNCTION_0_3(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CC0, &qword_1B1134D50);
  if ((OUTLINED_FUNCTION_2_3() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v6;
  v15 = sub_1B10A429C(v5, v3);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_1B11230EC();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v6;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v4;
  }

  else
  {
    sub_1B108012C(v12, v5, v3, v4, v17);
  }
}

uint64_t sub_1B1080044(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B112186C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  result = sub_1B10801E4(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1B108012C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1B1080174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B10801E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1080254(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B10802DC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B10803B8()
{
  result = qword_1EB739CD0;
  if (!qword_1EB739CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739CD0);
  }

  return result;
}

id PARSafariSearchResponse.init(reply:factory:data:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1B11218AC();
  v10 = [v8 initWithReply:a1 factory:a2 data:v9];

  sub_1B106C204(a3, a4);
  swift_unknownObjectRelease();
  return v10;
}

void PARSafariSearchResponse.init(reply:factory:data:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v94 = a2;
  v7 = sub_1B112207C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v101 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v84 - v15;
  v17 = sub_1B1121A7C();
  v91 = OUTLINED_FUNCTION_0(v17);
  v92 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_4();
  v89 = v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v97 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v84 - v25;
  v26 = sub_1B11227EC();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CD8, &qword_1B11341E8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v84 - v30;
  v32 = sub_1B1121A9C();
  v33 = OUTLINED_FUNCTION_0(v32);
  v90 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v102;
  v102 = a1;
  v40 = [v39 initWithReply_];
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  sub_1B1070FD4(a3, a4);
  sub_1B11227DC();
  sub_1B1081590(&unk_1EB7395C0, MEMORY[0x1E69BCC80]);
  sub_1B112280C();
  v100 = v16;
  v98 = a3;
  v86 = a4;
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
  v41 = *(v90 + 32);
  v85 = v32;
  v41(v38, v31, v32);
  v42 = v40;
  v43 = v99;
  sub_1B1121A8C();
  v44 = sub_1B1121A2C();
  v46 = v45;
  v47 = v92 + 8;
  v48 = *(v92 + 8);
  v49 = v43;
  v50 = v91;
  v48(v49, v91);
  sub_1B108152C(v44, v46, v42);
  v51 = sub_1B1080E2C(v38, v102, v94);
  sub_1B107191C(v51, v42);
  v52 = sub_1B10810A4();
  v88 = v42;
  sub_1B1071898(v52, v42, &qword_1EDAD54B0, 0x1E69CA390, &selRef_setSections_);
  v53 = v97;
  v99 = v38;
  sub_1B1121A8C();
  v54 = sub_1B1121A1C();
  v92 = v47;
  v87 = v48;
  v48(v53, v50);
  v55 = v54;
  *&v103 = MEMORY[0x1E69E7CC0];
  v56 = v102;
  v97 = *(v54 + 16);
  if (v97)
  {
    OUTLINED_FUNCTION_2_4();
    v96 = v57;
    v95 = v10 + 16;
    v93 = MEMORY[0x1E69E7CC0];
    v58 = v100;
    while (v38 < *(v55 + 16))
    {
      (*(v10 + 16))(v58, v96 + *(v10 + 72) * v38, v7);
      OUTLINED_FUNCTION_0_4();
      sub_1B1081590(&qword_1EB739CE0, v59);
      v60 = sub_1B112281C();
      v62 = v61;
      v63 = objc_allocWithZone(MEMORY[0x1E69CA608]);
      sub_1B1070FD4(v60, v62);
      v64 = sub_1B10814B8(v60, v62);
      if (!v64)
      {
        goto LABEL_28;
      }

      v65 = v64;
      v66 = [objc_allocWithZone(MEMORY[0x1E69CA3F0]) initWithProtobuf_];

      sub_1B106C204(v60, v62);
      v67 = (*(v10 + 8))(v100, v7);
      if (v66)
      {
        MEMORY[0x1B272DB50](v67);
        OUTLINED_FUNCTION_3_3();
        v56 = v102;
        if (v68)
        {
          OUTLINED_FUNCTION_5_3();
        }

        sub_1B1122BCC();
        v93 = v103;
      }

      else
      {
        v56 = v102;
      }

      ++v38;
      v58 = v100;
      v69 = v101;
      if (v97 == v38)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v93 = MEMORY[0x1E69E7CC0];
    v69 = v101;
LABEL_13:

    sub_1B1071898(v93, v88, &qword_1EB739570, 0x1E69CA3F0, &selRef_setSuggestions_);
    v70 = v89;
    sub_1B1121A8C();
    v71 = sub_1B1121A3C();
    v87(v70, v91);
    *&v103 = MEMORY[0x1E69E7CC0];
    v100 = *(v71 + 16);
    if (!v100)
    {
      v95 = MEMORY[0x1E69E7CC0];
      v82 = v98;
LABEL_25:

      v83 = v88;
      sub_1B1071898(v95, v88, &qword_1EB739570, 0x1E69CA3F0, &selRef_setCorrections_);

      swift_unknownObjectRelease();
      sub_1B106C204(v82, v86);
      (*(v90 + 8))(v99, v85);
      return;
    }

    OUTLINED_FUNCTION_2_4();
    v97 = v72;
    v96 = v10 + 16;
    v95 = MEMORY[0x1E69E7CC0];
    while (v70 < *(v71 + 16))
    {
      (*(v10 + 16))(v69, &v97[*(v10 + 72) * v70], v7);
      OUTLINED_FUNCTION_0_4();
      sub_1B1081590(&qword_1EB739CE0, v73);
      v74 = sub_1B112281C();
      v76 = v75;
      v77 = objc_allocWithZone(MEMORY[0x1E69CA608]);
      sub_1B1070FD4(v74, v76);
      v78 = sub_1B10814B8(v74, v76);
      if (!v78)
      {
        goto LABEL_29;
      }

      v79 = v78;
      v80 = [objc_allocWithZone(MEMORY[0x1E69CA3F0]) initWithProtobuf_];

      sub_1B106C204(v74, v76);
      v69 = v101;
      v81 = (*(v10 + 8))(v101, v7);
      if (v80)
      {
        MEMORY[0x1B272DB50](v81);
        OUTLINED_FUNCTION_3_3();
        v56 = v102;
        if (v68)
        {
          OUTLINED_FUNCTION_5_3();
        }

        sub_1B1122BCC();
        v95 = v103;
        v69 = v101;
      }

      else
      {
        v56 = v102;
      }

      ++v70;
      v82 = v98;
      if (v100 == v70)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1B1080DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CD8, &qword_1B11341E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1080E2C(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v25 = a3;
  v3 = sub_1B1121DEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1121A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1121A8C();
  v13 = sub_1B1121A6C();
  (*(v9 + 8))(v12, v8);
  v26 = MEMORY[0x1E69E7CC0];
  v14 = *(v13 + 16);
  if (v14)
  {
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v22[1] = v13;
    v23 = v16;
    v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    do
    {
      v23(v7, v17, v3);
      if (!sub_1B1074C20(v24, v25, v7))
      {
        [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
      }

      v19 = (*(v15 - 8))(v7, v3);
      MEMORY[0x1B272DB50](v19);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v17 += v18;
      --v14;
    }

    while (v14);
    v20 = v26;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v20;
}

uint64_t sub_1B10810A4()
{
  v1 = sub_1B10725D4(v0);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v4 = MEMORY[0x1E69E7CC8];
    sub_1B10813E0(v1, &v4, &v5);

    v2 = v5;
  }

  return v2;
}

void sub_1B1081198(void **a1, uint64_t *a2, void *a3)
{
  v5 = *a1;
  v6 = sub_1B10A5C7C(*a1);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1B10A7800(v6, v7, *a2);
    if (!v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
      if (!v11)
      {
        v14 = sub_1B10A5980(v8, v9);

        return;
      }

      v10 = v11;
      sub_1B10A5C94(v8, v9, v11);
      sub_1B10A5C88(v5);
      if (v12)
      {
        v13 = sub_1B1122A4C();
      }

      else
      {
        v13 = 0;
      }

      [v10 setBundleIdentifier_];

      sub_1B1072550(MEMORY[0x1E69E7CC0], v10);
      v15 = v10;
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a2;
      sub_1B107FC78(v15, v8, v9, isUniquelyReferenced_nonNull_native);
      *a2 = v22;
      v18 = v15;
      MEMORY[0x1B272DB50]();
      sub_1B10A9034(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1122BCC();
    }

    v19 = v5;
    v23 = sub_1B10725D4(v10);
    if (v23)
    {

      MEMORY[0x1B272DB50](v20);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
      v21 = sub_1B1122B7C();

      [v10 setResults_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B10813E0(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = sub_1B1099EF8(a1);
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B272DFA0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    sub_1B1081198(&v11, a2, a3);

    if (v3)
    {
      return;
    }
  }
}

id sub_1B10814B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B11218AC();
    sub_1B106C1F0(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

void sub_1B108152C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1122A4C();

  [a3 setServerCompletion_];
}

uint64_t sub_1B1081590(unint64_t *a1, void (*a2)(uint64_t))
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

id PAREngagedResult.init(_:)(void *a1)
{
  swift_getObjectType();

  return sub_1B108224C(a1);
}

id PAREngagedResult.init(_:searchString:type:engagemementTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1B1074A10(a3, a4, v12, &selRef_setSearchString_);
  sub_1B1074A10(a1, a2, v12, &selRef_setTitle_);
  v13 = sub_1B11218EC();
  [v12 setEngagementTime_];

  [v12 setType_];
  [v12 setScore_];

  v14 = sub_1B112194C();
  (*(*(v14 - 8) + 8))(a6, v14);
  return v12;
}

id PAREngagedResult.init(encoded:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  v1 = OUTLINED_FUNCTION_0_5();
  sub_1B1070FD4(v1, v2);
  v3 = OUTLINED_FUNCTION_0_5();
  v5 = sub_1B1081A1C(v3, v4);
  v10 = v5;
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_5();
    sub_1B106C204(v6, v7);
    return 0;
  }

  sub_1B1066864(0, &unk_1EDAD5570, off_1E7AC5108);
  v11 = sub_1B1122E8C();
  if (!v11)
  {
    [v10 finishDecoding];
    v16 = OUTLINED_FUNCTION_0_5();
    sub_1B106C204(v16, v17);

    return 0;
  }

  v12 = v11;
  v8 = sub_1B1081C14(v12);
  v13 = v8;

  if (v8)
  {
  }

  [v10 finishDecoding];
  v14 = OUTLINED_FUNCTION_0_5();
  sub_1B106C204(v14, v15);

  return v8;
}

uint64_t PAREngagedResult.encoded()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v2 = sub_1B1122A4C();
  [v1 encodeObject:v0 forKey:v2];

  [v1 finishEncoding];
  v3 = [v1 encodedData];
  v4 = sub_1B11218CC();

  return v4;
}

id PAREngagedResult.toServerSuggestion()()
{
  v1 = _CPResultTypeToPQCType([v0 type]);
  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 2)
  {
    v2 = 8;
LABEL_5:
    v3 = sub_1B1081BB4(v0, &selRef_title);
    v5 = v4;
    v6 = sub_1B1081BB4(v0, &selRef_searchString);
    v8 = v7;
    [v0 freshnessScore];
    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x1E69CA3F0]);
    return sub_1B1081AFC(v10, v3, v5, v6, v8, v2);
  }

  return 0;
}

id sub_1B1081A1C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B11218AC();
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_1B11217FC();

    swift_willThrow();
  }

  sub_1B106C204(a1, a2);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

id sub_1B1081AFC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1B1122A4C();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1B1122A4C();

LABEL_6:
  v12 = [v6 initWithSuggestion:v10 query:v11 score:a6 type:a1];

  return v12;
}

uint64_t sub_1B1081BB4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1B1122A5C();

  return v4;
}

id sub_1B1081C14(void *a1)
{
  v2 = sub_1B112194C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v47 - v8;
  v10 = [a1 searchString];
  if (!v10)
  {

    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
LABEL_16:
    sub_1B112283C();

    return 0;
  }

  v11 = v10;
  v12 = sub_1B1122A5C();
  v14 = v13;

  v15 = [a1 title];
  if (!v15)
  {

    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    goto LABEL_16;
  }

  v16 = v15;
  v48 = v3;
  v17 = sub_1B1122A5C();
  v19 = v18;

  if (sub_1B1122ADC() >= 64 || sub_1B1122ADC() >= 128)
  {

    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    goto LABEL_16;
  }

  sub_1B112193C();
  v20 = PAREngagedResult.init(_:searchString:type:engagemementTime:)(v17, v19, v12, v14, 1, v9);
  if ([a1 respondsToSelector_])
  {
    v21 = [a1 encodedNormalizedTopic];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1B11218CC();
      v25 = v24;

      v26 = MEMORY[0x1B272C8C0](v23, v25);
      sub_1B106C204(v23, v25);
      if (v26 >= 4096)
      {
        sub_1B1122DDC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1B1133BA0;
        if (([a1 respondsToSelector_] & 1) != 0 && (v39 = objc_msgSend(a1, sel_encodedNormalizedTopic)) != 0)
        {
          v40 = v39;
          v41 = sub_1B11218CC();
          v43 = v42;

          v44 = MEMORY[0x1B272C8C0](v41, v43);
          sub_1B106C204(v41, v43);
        }

        else
        {

          v44 = 0;
        }

        v45 = MEMORY[0x1E69E65A8];
        *(v38 + 56) = MEMORY[0x1E69E6530];
        *(v38 + 64) = v45;
        *(v38 + 32) = v44;
        sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
        v46 = sub_1B1122EBC();
        sub_1B112283C();

        return 0;
      }
    }
  }

  v27 = [a1 engagementTime];
  if (v27)
  {
    v28 = v27;
    sub_1B112192C();

    v29 = sub_1B11218EC();
    [v20 setEngagementTime_];

    (*(v48 + 8))(v7, v2);
  }

  [v20 setType_];
  [a1 freshnessScore];
  [v20 setFreshnessScore_];
  [a1 score];
  [v20 setScore_];
  if ([a1 respondsToSelector_])
  {
    v30 = [a1 encodedNormalizedTopic];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1B11218CC();
      v34 = v33;

      sub_1B1070FD4(v32, v34);
      v35 = sub_1B11218AC();
      sub_1B106C204(v32, v34);
    }

    else
    {

      v35 = 0;
      v32 = 0;
      v34 = 0xF000000000000000;
    }

    [v20 setEncodedNormalizedTopic_];

    sub_1B106C1F0(v32, v34);
  }

  else
  {
  }

  return v20;
}

id sub_1B108224C(void *a1)
{
  v2 = sub_1B112194C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  v10 = [a1 searchString];
  if (!v10)
  {
    swift_unknownObjectRelease();
    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v37 = sub_1B1122EBC();
    OUTLINED_FUNCTION_1();
LABEL_16:
    sub_1B112283C();

    return 0;
  }

  v11 = v10;
  v12 = sub_1B1122A5C();
  v14 = v13;

  v15 = [a1 title];
  if (!v15)
  {

    swift_unknownObjectRelease();
    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v37 = sub_1B1122EBC();
    OUTLINED_FUNCTION_1();
    goto LABEL_16;
  }

  v16 = v15;
  v51 = v3;
  v17 = sub_1B1122A5C();
  v19 = v18;

  if (sub_1B1122ADC() >= 64 || sub_1B1122ADC() >= 128)
  {

    swift_unknownObjectRelease();
    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v37 = sub_1B1122EBC();
    OUTLINED_FUNCTION_1();
    goto LABEL_16;
  }

  sub_1B112193C();
  v20 = PAREngagedResult.init(_:searchString:type:engagemementTime:)(v17, v19, v12, v14, 1, v9);
  if ([a1 respondsToSelector_])
  {
    v21 = [a1 encodedNormalizedTopic];
    if (v21)
    {
      v22 = v21;
      sub_1B11218CC();

      v23 = OUTLINED_FUNCTION_3_4();
      v24 = MEMORY[0x1B272C8C0](v23);
      v25 = OUTLINED_FUNCTION_3_4();
      sub_1B106C204(v25, v26);
      if (v24 >= 4096)
      {
        sub_1B1122DDC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1B1133BA0;
        if (([a1 respondsToSelector_] & 1) != 0 && (v42 = objc_msgSend(a1, sel_encodedNormalizedTopic)) != 0)
        {
          v43 = v42;
          sub_1B11218CC();

          v44 = OUTLINED_FUNCTION_3_4();
          v45 = MEMORY[0x1B272C8C0](v44);
          swift_unknownObjectRelease();
          v46 = OUTLINED_FUNCTION_3_4();
          sub_1B106C204(v46, v47);
        }

        else
        {
          swift_unknownObjectRelease();
          v45 = 0;
        }

        v48 = MEMORY[0x1E69E65A8];
        *(v41 + 56) = MEMORY[0x1E69E6530];
        *(v41 + 64) = v48;
        *(v41 + 32) = v45;
        sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
        v49 = sub_1B1122EBC();
        sub_1B112283C();

        return 0;
      }
    }
  }

  v27 = [a1 engagementTime];
  if (v27)
  {
    v28 = v27;
    sub_1B112192C();

    v29 = sub_1B11218EC();
    [v20 setEngagementTime_];

    (*(v51 + 8))(v7, v2);
  }

  [v20 setType_];
  [a1 freshnessScore];
  [v20 setFreshnessScore_];
  [a1 score];
  [v20 setScore_];
  if ([a1 respondsToSelector_])
  {
    v30 = [a1 encodedNormalizedTopic];
    if (v30)
    {
      v31 = v30;
      sub_1B11218CC();

      swift_unknownObjectRelease();
      v32 = OUTLINED_FUNCTION_16();
      sub_1B1070FD4(v32, v33);
      OUTLINED_FUNCTION_16();
      v34 = sub_1B11218AC();
      v35 = OUTLINED_FUNCTION_16();
      sub_1B106C204(v35, v36);
    }

    else
    {
      swift_unknownObjectRelease();
      v34 = 0;
    }

    [v20 setEncodedNormalizedTopic_];

    v39 = OUTLINED_FUNCTION_16();
    sub_1B106C1F0(v39, v40);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v20;
}

uint64_t sub_1B1082878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D18, &qword_1B1134398);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_1B1067964(a1, &qword_1EB739D18, &qword_1B1134398);
    sub_1B10A5A6C(a2, v9);
    v15 = sub_1B112186C();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_1B1067964(v9, &qword_1EB739D18, &qword_1B1134398);
  }

  else
  {
    sub_1B108C048(a1, v13, &unk_1EB73A450, &qword_1B11343A0);
    v17 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1B107FD88(v13, a2);
    *v3 = v20;
    v18 = sub_1B112186C();
    return (*(*(v18 - 8) + 8))(a2, v18);
  }
}

uint64_t sub_1B1082A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_17_0();
}

uint64_t sub_1B1082A88()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *MEMORY[0x1E695ABC8];
  v5 = *(MEMORY[0x1E69BDB00] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  v0[5] = v6;
  *v6 = v7;
  v6[1] = sub_1B1082B4C;
  v8 = v0[2];
  v9 = v0[3];
  v10.n128_u32[0] = v4;

  return MEMORY[0x1EEE28270](v8, v9, v2, v3, v10);
}

uint64_t sub_1B1082B4C()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_0_6();
  *v4 = v3;

  OUTLINED_FUNCTION_13_0();

  return v5();
}

uint64_t sub_1B1082C2C()
{
  OUTLINED_FUNCTION_9_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D00, &qword_1B1134330);
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_42();
  v10 = type metadata accessor for PARImageLoader.ImageLocation();
  v1[9] = v10;
  OUTLINED_FUNCTION_17(v10);
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B1082CE4()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v3;
  sub_1B108304C(v4, v3, v1);
  OUTLINED_FUNCTION_35(v1, 1, v2);
  if (v6)
  {
    sub_1B1067964(v0[8], &qword_1EB739D00, &qword_1B1134330);
    sub_1B10887F0();
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_4_3(v7, 3);
    v8 = v0[10];
    v9 = v0[8];

    OUTLINED_FUNCTION_13_0();

    return v10();
  }

  else
  {
    sub_1B1088908(v0[8], v0[10]);
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_1B1082E4C;
    v13 = v0[10];
    v14 = v0[6];
    v15 = v0[7];
    v16 = v0[5];
    v17 = v0[4];

    return sub_1B108359C();
  }
}

uint64_t sub_1B1082E4C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_5();
  *v8 = v7;
  v10 = *(v9 + 88);
  v11 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v12 = v11;
  v7[12] = v0;

  if (!v0)
  {
    v7[13] = v3;
    v7[14] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B1082F60()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[8];
  sub_1B108896C(v0[10]);

  v2 = v0[1];
  v4 = v0[13];
  v3 = v0[14];

  return v2(v3, v4);
}

uint64_t sub_1B1082FDC()
{
  OUTLINED_FUNCTION_9_0();
  sub_1B108896C(v0[10]);
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];

  OUTLINED_FUNCTION_13_0();

  return v4();
}

uint64_t sub_1B108304C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v88 = type metadata accessor for PARImageLoader.ImageLocation();
  v5 = OUTLINED_FUNCTION_11(v88);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D00, &qword_1B1134330);
  v11 = OUTLINED_FUNCTION_17(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v16 = OUTLINED_FUNCTION_17(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v90 = &v84 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v84 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v84 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v84 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v84 - v32;
  v34 = sub_1B112186C();
  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41)
  {
    v42 = v41;
    v86 = a2;
    v84 = a1;
    v43 = [v42 darkUrlValue];
    v85 = v25;
    if (v43)
    {
      v44 = v43;
      sub_1B112183C();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = OUTLINED_FUNCTION_27();
    sub_1B1067964(v46, v47, &qword_1B1133BF0);
    __swift_storeEnumTagSinglePayload(v28, v45, 1, v34);
    OUTLINED_FUNCTION_37_0();
    sub_1B108C048(v48, v49, v50, &qword_1B1133BF0);
    v51 = [v42 urlValue];
    if (v51)
    {
      v52 = v51;
      v53 = v85;
      sub_1B112183C();

      sub_1B1067964(v31, &qword_1EB73A130, &qword_1B1133BF0);
      v54 = 0;
    }

    else
    {
      sub_1B1067964(v31, &qword_1EB73A130, &qword_1B1133BF0);

      v54 = 1;
      v53 = v85;
    }

    a2 = v86;
    __swift_storeEnumTagSinglePayload(v53, v54, 1, v34);
    sub_1B108C048(v53, v31, &qword_1EB73A130, &qword_1B1133BF0);
  }

  v55 = sub_1B108B848(a1, &selRef_identifier);
  v57 = v56;
  sub_1B108BF6C(v31, v90, &qword_1EB73A130, &qword_1B1133BF0);
  sub_1B108BF6C(v33, v91, &qword_1EB73A130, &qword_1B1133BF0);
  if (a2)
  {
    v58 = [a2 hasDarkAppearance];

    a1 = a2;
  }

  else
  {
    v58 = 0;
  }

  sub_1B1067964(v31, &qword_1EB73A130, &qword_1B1133BF0);
  v59 = OUTLINED_FUNCTION_27();
  sub_1B1067964(v59, v60, &qword_1B1133BF0);
  if (!v57 && (OUTLINED_FUNCTION_35(v91, 1, v34), v61) && (OUTLINED_FUNCTION_35(v90, 1, v34), v61))
  {
    OUTLINED_FUNCTION_37_0();
    sub_1B1067964(v62, v63, v64);
    OUTLINED_FUNCTION_37_0();
    sub_1B1067964(v65, v66, v67);
    v69 = v87;
    v68 = v88;
    OUTLINED_FUNCTION_20();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v68);
  }

  else
  {
    *v9 = v55;
    v9[1] = v57;
    v68 = v88;
    sub_1B108BF6C(v90, v9 + *(v88 + 20), &qword_1EB73A130, &qword_1B1133BF0);
    sub_1B108BF6C(v91, v9 + *(v68 + 24), &qword_1EB73A130, &qword_1B1133BF0);
    *(v9 + *(v68 + 28)) = v58;
    v73 = v9;
    v69 = v87;
    sub_1B1088908(v73, v87);
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v68);
    OUTLINED_FUNCTION_37_0();
    sub_1B1067964(v74, v75, v76);
    OUTLINED_FUNCTION_37_0();
    sub_1B1067964(v77, v78, v79);
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v68);
  v81 = v89;
  if (EnumTagSinglePayload)
  {
    sub_1B1067964(v69, &qword_1EB739D00, &qword_1B1134330);
    v82 = 1;
  }

  else
  {
    sub_1B1088908(v69, v89);
    v82 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v81, v82, 1, v68);
}

uint64_t sub_1B108359C()
{
  OUTLINED_FUNCTION_9_0();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[9] = v4;
  v1[8] = v5;
  v6 = sub_1B11228DC();
  v1[13] = v6;
  OUTLINED_FUNCTION_7(v6);
  v1[14] = v7;
  v1[15] = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_42();
  v9 = sub_1B11228AC();
  v1[17] = v9;
  OUTLINED_FUNCTION_7(v9);
  v1[18] = v10;
  v1[19] = *(v11 + 64);
  v1[20] = OUTLINED_FUNCTION_42();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  OUTLINED_FUNCTION_17(v12);
  v14 = *(v13 + 64);
  v1[21] = OUTLINED_FUNCTION_42();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  OUTLINED_FUNCTION_17(v15);
  v17 = *(v16 + 64);
  v1[22] = OUTLINED_FUNCTION_42();
  v18 = sub_1B112186C();
  v1[23] = v18;
  OUTLINED_FUNCTION_7(v18);
  v1[24] = v19;
  v1[25] = *(v20 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1B108376C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[8];
  sub_1B1084564(v2);
  OUTLINED_FUNCTION_35(v2, 1, v1);
  if (v4)
  {
    v5 = v0[8];
    sub_1B1067964(v0[22], &qword_1EB73A130, &qword_1B1133BF0);
    v6 = *(v5 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }

    v27 = 0;
  }

  else
  {
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[24];
    v10 = v0[23];
    v83 = v0[21];
    v87 = v0[20];
    v11 = v0[18];
    v75 = v0[25];
    v76 = v0[19];
    v12 = v0[17];
    v71 = v8;
    v72 = v12;
    v91 = v0[16];
    v13 = v0[14];
    v81 = v0[15];
    v89 = v0[13];
    v69 = v10;
    v74 = v0[11];
    v70 = v0[10];
    v14 = v0[9];
    v85 = v0[8];
    v77 = v7;
    v79 = *(v9 + 32);
    v79(v7, v0[22], v10);
    sub_1B1122C5C();
    OUTLINED_FUNCTION_20();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_45();
    v73 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(v8, v7, v10);
    (*(v11 + 16))(v87, v70, v12);
    (*(v13 + 16))(v91, v74, v89);
    v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v20 = (v75 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = (*(v11 + 80) + v20 + 8) & ~*(v11 + 80);
    v22 = (v76 + *(v13 + 80) + v21) & ~*(v13 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v73;
    v79(&v23[v19], v71, v69);
    *&v23[v20] = v14;
    (*(v11 + 32))(&v23[v21], v87, v72);
    (*(v13 + 32))(&v23[v22], v91, v89);
    v24 = OUTLINED_FUNCTION_8_0();
    v27 = sub_1B1085A3C(v24, v25, v83, v26, v23);
    (*(v9 + 8))(v77, v69);
    v6 = *(v85 + 8);
    if (!v6)
    {
      if (v27)
      {
        v49 = 0;
        v44 = v27;
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  v0[28] = v27;
  v28 = v0[20];
  v90 = v0[21];
  v92 = v27;
  v29 = v0[18];
  v30 = v0[16];
  v31 = v0[17];
  v78 = v28;
  v32 = v0[14];
  v84 = v0[19];
  v86 = v0[15];
  v33 = v0[12];
  v34 = v0[10];
  v80 = v0[11];
  v82 = v0[13];
  v35 = v0[9];
  v88 = *v0[8];
  sub_1B1122C5C();
  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  OUTLINED_FUNCTION_45();
  v40 = swift_allocObject();
  swift_weakInit();
  (*(v29 + 16))(v28, v34, v31);
  (*(v32 + 16))(v30, v80, v82);
  v41 = (*(v29 + 80) + 64) & ~*(v29 + 80);
  v42 = (v84 + *(v32 + 80) + v41) & ~*(v32 + 80);
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  *(v43 + 4) = v40;
  *(v43 + 5) = v88;
  *(v43 + 6) = v6;
  *(v43 + 7) = v35;
  (*(v29 + 32))(&v43[v41], v78, v31);
  (*(v32 + 32))(&v43[v42], v30, v82);
  v44 = v92;

  v45 = OUTLINED_FUNCTION_8_0();
  v48 = sub_1B1085A3C(v45, v46, v90, v47, v43);
  v49 = v48;
  v0[29] = v48;
  if (v92)
  {
    if (v48)
    {
      v50 = *(MEMORY[0x1E69E86A8] + 4);

      v51 = swift_task_alloc();
      v0[30] = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
      OUTLINED_FUNCTION_46();
      v0[31] = v52;
      *v51 = v53;
      v51[1] = sub_1B1083DB8;
      v54 = MEMORY[0x1E6969080];
      v55 = v0 + 4;
      v56 = v92;
LABEL_18:

      return MEMORY[0x1EEE6DA10](v55, v56, v54);
    }

    v27 = v92;
LABEL_17:
    v0[36] = v49;
    v0[37] = v27;
    v0[35] = v44;
    v66 = *(MEMORY[0x1E69E86A8] + 4);

    v67 = swift_task_alloc();
    v0[38] = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
    OUTLINED_FUNCTION_46();
    *v67 = v68;
    v67[1] = sub_1B10841B0;
    v54 = MEMORY[0x1E6969080];
    v55 = v0 + 2;
    v56 = v27;
    goto LABEL_18;
  }

  if (v48)
  {
    v44 = 0;
    v27 = v48;
    goto LABEL_17;
  }

LABEL_13:
  sub_1B10887F0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4_3(v57, 3);
  v59 = v0[26];
  v58 = v0[27];
  v61 = v0[21];
  v60 = v0[22];
  v62 = v0[20];
  v63 = v0[16];
  OUTLINED_FUNCTION_18_0();
  swift_willThrow();

  OUTLINED_FUNCTION_13_0();

  return v64();
}

uint64_t sub_1B1083DB8()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v8 = v7;
  v3[32] = v0;

  if (!v0)
  {
    v10 = v3[28];
    v9 = v3[29];
  }

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B1083EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();
  v12 = v10[28];
  v11 = v10[29];

  v14 = v10[4];
  v13 = v10[5];
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_43();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1B1083F58()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[32];
  OUTLINED_FUNCTION_18_0();

  v2 = *(MEMORY[0x1E69E86A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  v0[33] = v3;
  *v3 = v4;
  v3[1] = sub_1B1084010;
  v5 = v0[31];
  v6 = v0[29];
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DA10](v0 + 6, v6, v7);
}

uint64_t sub_1B1084010()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v8 = v7;
  v3[34] = v0;

  if (!v0)
  {
    v10 = v3[28];
    v9 = v3[29];
  }

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B1084118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();
  v12 = v10[28];
  v11 = v10[29];

  v14 = v10[6];
  v13 = v10[7];
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_43();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1B10841B0()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B10842AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();
  v11 = v10[36];
  v12 = v10[37];
  v13 = v10[35];

  v15 = v10[2];
  v14 = v10[3];
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_43();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1B1084350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_48();
  v16 = v14[28];
  v15 = v14[29];

  v17 = v14[34];
  v19 = v14[28];
  v18 = v14[29];
  v21 = v14[26];
  v20 = v14[27];
  v23 = v14[21];
  v22 = v14[22];
  v33 = v14[20];
  v34 = v14[16];
  OUTLINED_FUNCTION_18_0();
  swift_willThrow();

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_32();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, a11, a12, a13, a14);
}

uint64_t sub_1B1084424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_48();
  v15 = v14[37];

  v16 = v14[39];
  v18 = v14[35];
  v17 = v14[36];
  v20 = v14[26];
  v19 = v14[27];
  v22 = v14[21];
  v21 = v14[22];
  v32 = v14[20];
  v33 = v14[16];
  OUTLINED_FUNCTION_18_0();
  swift_willThrow();

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_32();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, a11, a12, a13, a14);
}

uint64_t sub_1B10844F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return v0;
}

uint64_t sub_1B1084530()
{
  sub_1B10844F0();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B1084564@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for PARImageLoader.ImageLocation();
  v13 = v12;
  if (*(v1 + v12[7]) != 1)
  {
    sub_1B108BF6C(v1 + v12[5], v9, &qword_1EB73A130, &qword_1B1133BF0);
    v18 = sub_1B112186C();
    OUTLINED_FUNCTION_35(v9, 1, v18);
    if (!v15)
    {
      (*(*(v18 - 8) + 32))(a1, v9, v18);
      v19 = OUTLINED_FUNCTION_21();
      v22 = v18;
      return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    }

    sub_1B108BF6C(v1 + v13[6], a1, &qword_1EB73A130, &qword_1B1133BF0);
    result = OUTLINED_FUNCTION_35(v9, 1, v18);
    if (v15)
    {
      return result;
    }

    v17 = v9;
    return sub_1B1067964(v17, &qword_1EB73A130, &qword_1B1133BF0);
  }

  sub_1B108BF6C(v1 + v12[6], v11, &qword_1EB73A130, &qword_1B1133BF0);
  v14 = sub_1B112186C();
  OUTLINED_FUNCTION_35(v11, 1, v14);
  if (v15)
  {
    sub_1B108BF6C(v1 + v13[5], a1, &qword_1EB73A130, &qword_1B1133BF0);
    result = OUTLINED_FUNCTION_35(v11, 1, v14);
    if (v15)
    {
      return result;
    }

    v17 = v11;
    return sub_1B1067964(v17, &qword_1EB73A130, &qword_1B1133BF0);
  }

  (*(*(v14 - 8) + 32))(a1, v11, v14);
  v19 = OUTLINED_FUNCTION_21();
  v22 = v14;
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_1B10847BC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 64) = a2;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B10847E8, 0, 0);
}

uint64_t sub_1B10847E8()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_40();
  Strong = swift_weakLoadStrong();
  *(v0 + 11) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 12) = v2;
    *v2 = v0;
    v2[1] = sub_1B10848F0;
    v3 = *(v0 + 9);
    v4 = *(v0 + 10);
    v5 = v0[8];
    v6 = *(v0 + 7);

    return sub_1B1084ACC(v6, v3, v4, v5);
  }

  else
  {
    sub_1B10887F0();
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_4_3(v8, 4);
    OUTLINED_FUNCTION_13_0();

    return v9();
  }
}

uint64_t sub_1B10848F0()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_5();
  *v8 = v7;
  v10 = *(v9 + 96);
  v11 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v12 = v11;
  v7[13] = v0;

  if (!v0)
  {
    v7[14] = v3;
    v7[15] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B1084A04()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[5];

  *v4 = v2;
  v4[1] = v1;
  OUTLINED_FUNCTION_6_2();

  return v5();
}

uint64_t sub_1B1084A70()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_13_0();

  return v3();
}

uint64_t sub_1B1084ACC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 64) = a2;
  *(v5 + 56) = a4;
  *(v5 + 48) = a1;
  v6 = sub_1B11228EC();
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v9 = sub_1B112277C();
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v12 = sub_1B11228AC();
  *(v5 + 152) = v12;
  v13 = *(v12 - 8);
  *(v5 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v15 = sub_1B112186C();
  *(v5 + 192) = v15;
  v16 = *(v15 - 8);
  *(v5 + 200) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  v18 = sub_1B112173C();
  *(v5 + 240) = v18;
  v19 = *(v18 - 8);
  *(v5 + 248) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1084D5C, 0, 0);
}

uint64_t sub_1B1084D5C()
{
  v66 = v0;
  sub_1B1122CAC();
  v1 = v0[6];
  v2 = *(v0[10] + 32);
  sub_1B1086C6C();
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[7];
  v8 = v0[6];
  v0[33] = os_transaction_create();
  v9 = *(v6 + 16);
  v0[34] = v9;
  v0[35] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v8, v5);
  sub_1B112172C();
  sub_1B112170C();
  if (qword_1EDAD5500 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v10 = v0[28];
  v11 = v0[24];
  v12 = v0[6];
  v13 = sub_1B112296C();
  __swift_project_value_buffer(v13, qword_1EDAD5508);
  v14 = OUTLINED_FUNCTION_39();
  (v9)(v14);
  v15 = sub_1B112293C();
  v16 = sub_1B1122DFC();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[28];
  v20 = v0[24];
  v19 = v0[25];
  if (v17)
  {
    v21 = v0[7];
    v22 = swift_slowAlloc();
    v63 = OUTLINED_FUNCTION_55();
    v65[0] = v63;
    *v22 = 136315394;
    OUTLINED_FUNCTION_16_1();
    sub_1B108B7A8(v23, v24);
    log = v15;
    v25 = v9;
    v26 = sub_1B112308C();
    v28 = v27;
    v60 = v16;
    v29 = *(v19 + 8);
    v30 = OUTLINED_FUNCTION_38();
    v29(v30);
    v31 = v26;
    v9 = v25;
    v32 = sub_1B10784E0(v31, v28, v65);

    *(v22 + 4) = v32;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v21;
    _os_log_impl(&dword_1B1064000, log, v60, "fetching image %s with timeout %f", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {

    v29 = *(v19 + 8);
    v33 = OUTLINED_FUNCTION_38();
    v29(v33);
  }

  v0[36] = v29;
  v34 = v0[9];
  v9(v0[27], v0[6], v0[24]);
  v35 = sub_1B11228CC();
  v36 = sub_1B1122E5C();
  v37 = sub_1B1122EAC();
  v38 = v0[27];
  v39 = v0[24];
  v40 = v0[25];
  if (v37)
  {
    loga = v0[8];
    v64 = v36;
    v41 = swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_55();
    v65[0] = v42;
    *v41 = 136446210;
    v43 = sub_1B112181C();
    v45 = v44;
    v46 = OUTLINED_FUNCTION_38();
    v29(v46);
    v47 = sub_1B10784E0(v43, v45, v65);

    *(v41 + 4) = v47;
    v48 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v35, v64, v48, "image_fetch", "url=%{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {

    v49 = OUTLINED_FUNCTION_38();
    v29(v49);
  }

  (*(v0[20] + 16))(v0[23], v0[8], v0[19]);
  v50 = sub_1B112291C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v0[37] = sub_1B112290C();
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  v0[38] = v53;
  *v53 = v54;
  v53[1] = sub_1B1085284;
  v55 = v0[32];
  v56 = v0[17];
  v57 = v0[10];
  v58 = v0[6];

  return sub_1B1087044(v56, v55, v58);
}

uint64_t sub_1B1085284()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1085380()
{
  v71 = v0;
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[16] + 32))(v0[18], v0[17], v0[15]);
  v3(v4, v8, v5);
  v9 = sub_1B11228CC();
  sub_1B11228FC();
  v10 = sub_1B1122E4C();
  if (sub_1B1122EAC())
  {
    v68 = v10;
    v11 = v0[37];
    v12 = v0[14];
    v14 = v0[11];
    v13 = v0[12];

    sub_1B112292C();

    v15 = *(v13 + 88);
    v16 = OUTLINED_FUNCTION_36();
    if (v17(v16) == *MEMORY[0x1E69E93E8])
    {
      v18 = 0;
      v19 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[14], v0[11]);
      format = "url=%{public}s";
      v19 = 2;
      v18 = 1;
    }

    v32 = v0[25];
    v31 = v0[26];
    v33 = v0[24];
    v60 = v0[36];
    v62 = v0[22];
    v34 = v0[20];
    v66 = v0[19];
    v35 = swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_55();
    v70 = v36;
    *v35 = v19;
    *(v35 + 1) = v18;
    *(v35 + 2) = 2082;
    v37 = sub_1B112181C();
    v39 = v38;
    v60(v31, v33);
    v40 = sub_1B10784E0(v37, v39, &v70);

    *(v35 + 4) = v40;
    v41 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v9, v68, v41, "image_fetch", format, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();

    (*(v34 + 8))(v62, v66);
  }

  else
  {
    v20 = v0[36];
    v22 = v0[25];
    v21 = v0[26];
    v23 = v0[24];
    v24 = v0[22];
    v25 = v0[19];
    v26 = v0[20];

    v27 = *(v26 + 8);
    v28 = OUTLINED_FUNCTION_36();
    v29(v28);
    v30 = OUTLINED_FUNCTION_39();
    v20(v30);
  }

  v42 = v0[37];
  v44 = v0[32];
  v43 = v0[33];
  v45 = v0[30];
  v46 = v0[31];
  v54 = v0[29];
  v55 = v0[28];
  v56 = v0[27];
  v57 = v0[26];
  v58 = v0[23];
  v59 = v0[22];
  v47 = v0[18];
  v61 = v0[21];
  v63 = v0[17];
  v49 = v0[15];
  v48 = v0[16];
  formata = v0[14];
  v67 = v0[13];
  v50 = sub_1B112275C();
  v69 = v51;

  (*(v48 + 8))(v47, v49);
  (*(v46 + 8))(v44, v45);
  swift_unknownObjectRelease();

  v52 = v0[1];

  return v52(v50, v69);
}

uint64_t sub_1B1085730()
{
  v62 = v0;
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[21];
  v4 = v0[9];
  v5 = v1;
  v6 = sub_1B11228CC();
  sub_1B11228FC();
  v7 = sub_1B1122E4C();

  if (sub_1B1122EAC())
  {
    v8 = v0[37];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];

    sub_1B112292C();

    v12 = *(v10 + 88);
    v13 = OUTLINED_FUNCTION_36();
    if (v14(v13) == *MEMORY[0x1E69E93E8])
    {
      v15 = 0;
      v16 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      format = "error=%{public}s";
      v16 = 2;
      v15 = 1;
    }

    v23 = v0[39];
    v25 = v0[20];
    v24 = v0[21];
    v59 = v0[19];
    v26 = swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_55();
    v61 = v27;
    *v26 = v16;
    *(v26 + 1) = v15;
    *(v26 + 2) = 2082;
    swift_getErrorValue();
    v29 = v0[2];
    v28 = v0[3];
    v30 = v0[4];
    v31 = sub_1B11230FC();
    v33 = sub_1B10784E0(v31, v32, &v61);

    *(v26 + 4) = v33;
    v34 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v6, v7, v34, "image_fetch", format, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();

    (*(v25 + 8))(v24, v59);
  }

  else
  {
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[19];

    v20 = *(v18 + 8);
    v21 = OUTLINED_FUNCTION_39();
    v22(v21);
  }

  v35 = v0[39];
  v36 = v0[37];
  v38 = v0[32];
  v37 = v0[33];
  v39 = v0[30];
  v40 = v0[31];
  swift_willThrow();
  swift_unknownObjectRelease();

  v41 = *(v40 + 8);
  v42 = OUTLINED_FUNCTION_36();
  v43(v42);
  v44 = v0[32];
  v46 = v0[28];
  v45 = v0[29];
  v48 = v0[26];
  v47 = v0[27];
  v50 = v0[22];
  v49 = v0[23];
  v51 = v0[21];
  v52 = v0[17];
  v53 = v0[18];
  v56 = v0[14];
  formata = v0[13];
  v60 = v0[39];

  OUTLINED_FUNCTION_13_0();

  return v54();
}

uint64_t sub_1B1085A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1B108BF6C(a3, v23 - v10, &qword_1EB73A100, &unk_1B1134340);
  v12 = sub_1B1122C5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1067964(v11, &qword_1EB73A100, &unk_1B1134340);
  }

  else
  {
    sub_1B1122C4C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B1122C0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1122A9C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1B1067964(a3, &qword_1EB73A100, &unk_1B1134340);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B1067964(a3, &qword_1EB73A100, &unk_1B1134340);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B1085CC4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  *(v9 + 72) = a2;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a1;
  *(v9 + 48) = a5;
  v10 = sub_1B112186C();
  *(v9 + 96) = v10;
  v11 = *(v10 - 8);
  *(v9 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1085D90, 0, 0);
}

uint64_t sub_1B1085D90()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_40();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v0[16] = *(Strong + 40);

    swift_task_alloc();
    OUTLINED_FUNCTION_23();
    v0[17] = v2;
    *v2 = v3;
    v2[1] = sub_1B1085EA8;
    v4 = v0[14];
    v5 = v0[7];
    v6 = v0[8];

    return sub_1B10862A4(v4, v5, v6);
  }

  else
  {
    sub_1B10887F0();
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_4_3(v8, 4);
    v9 = v0[14];

    OUTLINED_FUNCTION_13_0();

    return v10();
  }
}

uint64_t sub_1B1085EA8()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v8 = v7;
  *(v3 + 18) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 16);

    v13 = swift_task_alloc();
    *(v3 + 19) = v13;
    *v13 = v7;
    v13[1] = sub_1B108600C;
    v14 = *(v3 + 15);
    v15 = *(v3 + 10);
    v16 = *(v3 + 11);
    v17 = v3[9];
    v18 = *(v3 + 14);

    return sub_1B1084ACC(v18, v15, v16, v17);
  }
}

uint64_t sub_1B108600C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_5();
  *v8 = v7;
  v10 = *(v9 + 152);
  v11 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v12 = v11;
  v7[20] = v0;

  if (!v0)
  {
    v7[21] = v3;
    v7[22] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B1086120()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[5];

  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_19_0();
  v10(v9);
  *v7 = v1;
  v7[1] = v2;

  OUTLINED_FUNCTION_6_2();

  return v11();
}

uint64_t sub_1B10861B4()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[15];
  v2 = v0[16];

  v3 = v0[18];
  v4 = v0[14];

  OUTLINED_FUNCTION_13_0();

  return v5();
}

uint64_t sub_1B1086220()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_19_0();
  v7(v6);
  v8 = v0[20];
  v9 = v0[14];

  OUTLINED_FUNCTION_13_0();

  return v10();
}

uint64_t sub_1B10862A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1086344, 0, 0);
}

uint64_t sub_1B1086344()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(*(v0 + 40) + 16);
  v2 = OUTLINED_FUNCTION_53(&unk_1B11343E0);
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1B10863D8;

  return v4();
}

uint64_t sub_1B10863D8()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_5();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 48);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    *(v5 + 64) = v3;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_1B108650C()
{
  OUTLINED_FUNCTION_25();
  v1 = sub_1B10A790C(v0[3], v0[4], v0[8]);
  v3 = v2;

  if (v3)
  {
    v4 = v0[6];
    OUTLINED_FUNCTION_27();
    sub_1B112185C();
    v5 = sub_1B112186C();
    OUTLINED_FUNCTION_35(v4, 1, v5);
    if (!v6)
    {
      v12 = v0[6];
      v13 = v0[2];

      (*(*(v5 - 8) + 32))(v13, v12, v5);

      OUTLINED_FUNCTION_6_2();
      goto LABEL_7;
    }

    sub_1B1067964(v0[6], &qword_1EB73A130, &qword_1B1133BF0);
    sub_1B10887F0();
    OUTLINED_FUNCTION_31();
    *v7 = v1;
    *(v7 + 8) = v3;
    *(v7 + 16) = 0;
    *(v7 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    v8 = v0[3];
    v9 = v0[4];
    sub_1B10887F0();
    OUTLINED_FUNCTION_31();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    swift_willThrow();
  }

  v11 = v0[6];

  OUTLINED_FUNCTION_13_0();
LABEL_7:

  return v14();
}

void sub_1B10866A8(void *a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v52 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - v16;
  v58 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  v19 = swift_dynamicCast();
  v57 = v9;
  if (v19)
  {
    v20 = v60;
    v21 = v61;
    v22 = v62;
    if (v63 == 4)
    {
      a1 = v60;
      goto LABEL_6;
    }

    sub_1B108BFB8(v60, v61, v62, v63);
  }

  v20 = a1;
  v21 = 0;
  v22 = 0;
LABEL_6:
  v23 = *(v2 + 16);
  v24 = *(v2 + 24);
  v25 = v23(v20);
  if (!v25)
  {
LABEL_11:

    goto LABEL_29;
  }

  v26 = v25;
  if ((sub_1B1088560(a1) & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v56 = v26;
  v27 = 0x296C696E28;
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1B1122F9C();

  v60 = 0xD000000000000012;
  v61 = 0x80000001B1135C20;
  v28 = a2[1];
  v54 = v21;
  v55 = v22;
  if (v28)
  {
    v27 = *a2;
    v29 = v28;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x1B272DAD0](v27, v29);

  v30 = type metadata accessor for PARImageLoader.ImageLocation();
  v53 = *(v30 + 20);
  sub_1B108BF6C(a2 + v53, v17, &qword_1EB73A130, &qword_1B1133BF0);
  v31 = sub_1B112186C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v31);
  sub_1B1067964(v17, &qword_1EB73A130, &qword_1B1133BF0);
  if (EnumTagSinglePayload != 1 || (sub_1B108BF6C(a2 + *(v30 + 24), v15, &qword_1EB73A130, &qword_1B1133BF0), v33 = __swift_getEnumTagSinglePayload(v15, 1, v31), sub_1B1067964(v15, &qword_1EB73A130, &qword_1B1133BF0), v33 != 1))
  {
    v58 = 32;
    v59 = 0xE100000000000000;
    sub_1B108BF6C(a2 + v53, v12, &qword_1EB73A130, &qword_1B1133BF0);
    v34 = v31;
    if (__swift_getEnumTagSinglePayload(v12, 1, v31) == 1)
    {
      sub_1B1067964(v12, &qword_1EB73A130, &qword_1B1133BF0);
      v35 = 0xE500000000000000;
      v36 = 0x296C696E28;
      v37 = 0x296C696E28;
      v38 = v57;
    }

    else
    {
      v37 = sub_1B112181C();
      v35 = v39;
      (*(*(v31 - 8) + 8))(v12, v31);
      v38 = v57;
      v36 = 0x296C696E28;
    }

    MEMORY[0x1B272DAD0](v37, v35);

    MEMORY[0x1B272DAD0](8236, 0xE200000000000000);
    sub_1B108BF6C(a2 + *(v30 + 24), v38, &qword_1EB73A130, &qword_1B1133BF0);
    if (__swift_getEnumTagSinglePayload(v38, 1, v34) == 1)
    {
      sub_1B1067964(v38, &qword_1EB73A130, &qword_1B1133BF0);
      v40 = 0xE500000000000000;
    }

    else
    {
      v36 = sub_1B112181C();
      v41 = v34;
      v40 = v42;
      (*(*(v41 - 8) + 8))(v38, v41);
    }

    MEMORY[0x1B272DAD0](v36, v40);

    MEMORY[0x1B272DAD0](v58, v59);
  }

  v43 = objc_allocWithZone(_CPErrorFeedback);
  v44 = a1;
  v45 = sub_1B108B744(a1);
  v46 = [v45 error];
  if (v46)
  {
    v47 = v46;
    sub_1B1074A10(v60, v61, v46, &selRef_setReason_);
  }

  else
  {
  }

  if (v55)
  {
    v48 = sub_1B1122A4C();
  }

  else
  {
    v48 = 0;
  }

  [v45 setRelatedStartNetworkSearchFeedbackId_];

  v49 = [objc_opt_self() sharedSession];
  v50 = [v49 configuration];

  v51 = v45;
  sub_1B1099EEC(v50, v51, 0, v56);
  swift_unknownObjectRelease();

LABEL_29:
}

uint64_t sub_1B1086C6C()
{
  v0 = sub_1B112184C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = v0 == 1886680168 && v1 == 0xE400000000000000;
    if (v4 || (sub_1B11230AC() & 1) != 0)
    {
    }

    v5 = v2 == 0x7370747468 && v3 == 0xE500000000000000;
    if (v5 || (sub_1B11230AC() & 1) != 0)
    {
    }

    if (qword_1EDAD5500 != -1)
    {
      swift_once();
    }

    v19 = sub_1B112296C();
    __swift_project_value_buffer(v19, qword_1EDAD5508);

    v20 = sub_1B112293C();
    v21 = sub_1B1122DDC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1B10784E0(v2, v3, &v27);
      _os_log_impl(&dword_1B1064000, v20, v21, "Unsupported URL scheme: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1B272EDD0](v23, -1, -1);
      MEMORY[0x1B272EDD0](v22, -1, -1);
    }

    if (v2 == 1701603686 && v3 == 0xE400000000000000)
    {

      v26 = 5;
    }

    else
    {
      v25 = sub_1B11230AC();

      if (v25)
      {
        v26 = 5;
      }

      else
      {
        v26 = 0;
      }
    }

    sub_1B10887F0();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = v26;
    v18 = 5;
  }

  else
  {
    v7 = sub_1B112181C();
    v9 = v8;
    v10 = qword_1EDAD5500;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_1B112296C();
    __swift_project_value_buffer(v11, qword_1EDAD5508);

    v12 = sub_1B112293C();
    v13 = sub_1B1122DDC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315138;
      v16 = sub_1B10784E0(v7, v9, &v27);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1B1064000, v12, v13, "invalid SFImage url %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1B272EDD0](v15, -1, -1);
      MEMORY[0x1B272EDD0](v14, -1, -1);
    }

    else
    {
    }

    sub_1B10887F0();
    swift_allocError();
    *v17 = v7;
    *(v17 + 8) = v9;
    *(v17 + 16) = 0;
    v18 = 2;
  }

  *(v17 + 24) = v18;
  return swift_willThrow();
}

uint64_t sub_1B1087044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_1B112186C();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_1B112277C();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1087164, 0, 0);
}

uint64_t sub_1B1087164()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[8];
  v2 = v0[7];
  v0[16] = *(v0[9] + 24);
  v0[17] = sub_1B10878A8();
  v3 = *(v0[9] + 48);
  OUTLINED_FUNCTION_53(&unk_1B1134388);
  OUTLINED_FUNCTION_23();
  v0[18] = v4;
  *v4 = v5;
  v4[1] = sub_1B1087270;
  v6 = v0[15];
  v8 = v0[7];
  v7 = v0[8];

  return v10(v6, v7, v8);
}

uint64_t sub_1B1087270()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B108736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_48();
  (*(*(v14 + 112) + 32))(*(v14 + 48), *(v14 + 120), *(v14 + 104));
  v15 = sub_1B112276C();
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

LABEL_6:
    v30 = *(v14 + 136);
    v31 = *(v14 + 104);
    v32 = *(v14 + 112);
    v33 = *(v14 + 48);
    sub_1B10887F0();
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_4_3(v34, 2);

    v35 = *(v32 + 8);
    v36 = OUTLINED_FUNCTION_27();
    v37(v36);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = *(v14 + 48);
  a10 = [v17 statusCode];
  v20 = sub_1B112275C();
  v22 = v21;
  v23 = MEMORY[0x1B272C8C0]();
  sub_1B106C204(v20, v22);
  v24 = sub_1B112274C();
  v25 = sub_1B1122A4C();
  v26 = [v18 valueForHTTPHeaderField_];

  if (v26)
  {
    v27 = sub_1B1122A5C();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v38 = *(v14 + 152);
  v39 = *(v14 + 128);
  sub_1B1087A60(a10, v23, v24, v27, v29, *(v14 + 136));
  if (!v38)
  {
    v42 = *(v14 + 64);
    v41 = *(v14 + 72);

    v43 = *(v41 + 32);
    sub_1B1087D28(v18, v42);
    v44 = *(v14 + 136);
    v56 = *(v14 + 120);
    v57 = *(v14 + 96);

    OUTLINED_FUNCTION_6_2();
    goto LABEL_12;
  }

  v40 = *(v14 + 136);
  (*(*(v14 + 112) + 8))(*(v14 + 48), *(v14 + 104));

LABEL_11:
  v45 = *(v14 + 120);
  v46 = *(v14 + 96);

  OUTLINED_FUNCTION_13_0();
LABEL_12:
  OUTLINED_FUNCTION_32();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1B10875EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_48();
  a20 = v22;
  if (qword_1EDAD5500 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v25 = v22[19];
  v27 = v22[11];
  v26 = v22[12];
  v28 = v22[10];
  v29 = v22[8];
  v30 = sub_1B112296C();
  __swift_project_value_buffer(v30, qword_1EDAD5508);
  v31 = *(v27 + 16);
  v32 = OUTLINED_FUNCTION_39();
  v33(v32);
  v34 = v25;
  v35 = sub_1B112293C();
  v36 = sub_1B1122DDC();

  if (os_log_type_enabled(v35, v36))
  {
    a9 = v22[19];
    v38 = v22[11];
    v37 = v22[12];
    v39 = v22[10];
    v40 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v40 = 136315394;
    OUTLINED_FUNCTION_16_1();
    sub_1B108B7A8(v41, v42);
    v43 = sub_1B112308C();
    v45 = v44;
    (*(v38 + 8))(v37, v39);
    v46 = sub_1B10784E0(v43, v45, &a10);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2080;
    swift_getErrorValue();
    v48 = v22[2];
    v47 = v22[3];
    v49 = v22[4];
    v50 = sub_1B11230FC();
    v52 = sub_1B10784E0(v50, v51, &a10);

    *(v40 + 14) = v52;
    _os_log_impl(&dword_1B1064000, v35, v36, "error fetching image %s: %s", v40, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    v54 = v22[11];
    v53 = v22[12];
    v55 = v22[10];

    v56 = *(v54 + 8);
    v57 = OUTLINED_FUNCTION_39();
    v58(v57);
  }

  v59 = v22[19];
  v60 = v22[17];
  v61 = sub_1B108B848(v60, &selRef_uuid);
  v63 = v62;
  sub_1B10887F0();
  OUTLINED_FUNCTION_31();
  *v64 = v59;
  *(v64 + 8) = v61;
  *(v64 + 16) = v63;
  *(v64 + 24) = 4;
  swift_willThrow();

  v65 = v22[15];
  v66 = v22[12];

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_32();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14);
}

id sub_1B10878A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() startSearchFeedbackWithUUID];
    v6 = sub_1B112181C();
    sub_1B1074A10(v6, v7, v5, &selRef_setUrl_);
    [v5 setTriggerEvent_];
    [v5 setEndpoint_];
    if (sub_1B112171C())
    {
      v8 = sub_1B11229DC();
    }

    else
    {
      v8 = 0;
    }

    [v5 setHeaders_];

    v10 = [objc_opt_self() sharedSession];
    v11 = [v10 configuration];

    v2 = v5;
    sub_1B1099EEC(v11, v2, 0, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B10887F0();
    swift_allocError();
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 4;
    *(v9 + 24) = 5;
    swift_willThrow();
  }

  return v2;
}

void sub_1B1087A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  v15 = v13();
  if (v15)
  {
    v16 = v15;
    v17 = objc_allocWithZone(_CPEndNetworkSearchFeedback);

    v18 = a6;
    v19 = sub_1B108B5D8(a6, a2, a1, 0.0, 0, 0, 0, 0, 0, 0, a3);
    if (a5)
    {
      sub_1B108B7F0(a4, a5, v19);
    }

    if (qword_1EDAD5500 != -1)
    {
      swift_once();
    }

    v20 = sub_1B112296C();
    __swift_project_value_buffer(v20, qword_1EDAD5508);

    v21 = sub_1B112293C();
    v22 = sub_1B1122DCC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D10, &qword_1B1134390);
      v25 = sub_1B1122A7C();
      v27 = sub_1B10784E0(v25, v26, &v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1B1064000, v21, v22, "x-edge value for image load request - %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1B272EDD0](v24, -1, -1);
      MEMORY[0x1B272EDD0](v23, -1, -1);
    }

    v28 = [objc_opt_self() sharedSession];
    v29 = [v28 configuration];

    v30 = v19;
    sub_1B1099EEC(v29, v30, 0, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B10887F0();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 4;
    *(v31 + 24) = 5;
    swift_willThrow();
  }
}

id sub_1B1087D28(void *a1, uint64_t a2)
{
  v4 = sub_1B112186C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &selRef_setSearchIndex_;
  result = [a1 statusCode];
  if (result != 200)
  {
    if (qword_1EDAD5500 != -1)
    {
      swift_once();
    }

    v11 = sub_1B112296C();
    __swift_project_value_buffer(v11, qword_1EDAD5508);
    (*(v5 + 16))(v8, a2, v4);
    v12 = a1;
    v13 = sub_1B112293C();
    v14 = sub_1B1122DDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v15 = 134218242;
      *(v15 + 4) = [v12 statusCode];

      *(v15 + 12) = 2080;
      sub_1B108B7A8(&qword_1EDAD55A8, MEMORY[0x1E6968FB0]);
      v16 = sub_1B112308C();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_1B10784E0(v16, v18, &v25);
      v9 = &selRef_setSearchIndex_;

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1B1064000, v13, v14, "bad status code %ld for %s", v15, 0x16u);
      v20 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1B272EDD0](v20, -1, -1);
      MEMORY[0x1B272EDD0](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v21 = [v12 v9[278]];
    sub_1B10887F0();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = v21;
    *(v22 + 24) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B1088034(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_17_0();
}

uint64_t sub_1B1088048()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
  *v2 = v0;
  v2[1] = sub_1B1088124;
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B1088124()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return v12();
  }
}

uint64_t sub_1B108823C()
{
  OUTLINED_FUNCTION_13_0();
  v1 = *(v0 + 40);
  return v2();
}

uint64_t sub_1B1088260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CF0, &qword_1B1134320);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (sub_1B1122C9C())
    {
      sub_1B1122C3C();
      sub_1B108B7A8(&qword_1EB739CF8, MEMORY[0x1E69E8550]);
      v7 = swift_allocError();
      sub_1B11229CC();
      v13 = v7;
      sub_1B1122C1C();
    }

    else
    {
      (*(v3 + 16))(v6, a1, v2);
      v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v12 = swift_allocObject();
      (*(v3 + 32))(v12 + v11, v6, v2);
      sub_1B109F4D8();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1B10887F0();
    v8 = swift_allocError();
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 4;
    *(v9 + 24) = 5;
    v13 = v8;
    return sub_1B1122C1C();
  }
}

uint64_t sub_1B1088494(uint64_t a1)
{
  if (!a1)
  {
    sub_1B1122A0C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CF0, &qword_1B1134320);
  return sub_1B1122C2C();
}

uint64_t sub_1B1088518(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 24);
  return result;
}

uint64_t sub_1B1088560(void *a1)
{
  v2 = sub_1B1122C3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  if (swift_dynamicCast())
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v15 = a1;
  v9 = a1;
  if (swift_dynamicCast())
  {
    v10 = v14 == 5 && (v12 & 0xFFFFFFFFFFFFFFFELL) == 4;
    if (v10 && v13 == 0)
    {
      return 0;
    }

    sub_1B108BFB8(v12, v13, *(&v13 + 1), v14);
  }

  return 1;
}

uint64_t sub_1B10886CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1088704()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD5508);
  __swift_project_value_buffer(v0, qword_1EDAD5508);
  return sub_1B112294C();
}

uint64_t sub_1B1088788(void *a1)
{
  [a1 set:nw_activity_create() nw:? activity:?];

  return swift_unknownObjectRelease();
}

unint64_t sub_1B10887F0()
{
  result = qword_1EDAD5548;
  if (!qword_1EDAD5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5548);
  }

  return result;
}

uint64_t sub_1B1088844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CF0, &qword_1B1134320);
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 80);

  return sub_1B1088494(a1);
}

uint64_t type metadata accessor for PARImageLoader.ImageLocation()
{
  result = qword_1EDAD54E8;
  if (!qword_1EDAD54E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1088908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PARImageLoader.ImageLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B108896C(uint64_t a1)
{
  v2 = type metadata accessor for PARImageLoader.ImageLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B10889C8()
{
  OUTLINED_FUNCTION_50();
  v2 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v2);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1B11228DC();
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_49();
  v10 = *(v0 + 4);
  v11 = *(v0 + 5);
  v12 = *(v0 + 6);
  v13 = v0[7];
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_1B1088B1C;
  OUTLINED_FUNCTION_1_4();

  return sub_1B1085CC4(v15, v13, v16, v17, v18, v11, v12, v19, v20);
}

uint64_t sub_1B1088B1C()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_6();
  *v4 = v3;

  OUTLINED_FUNCTION_13_0();

  return v5();
}

uint64_t sub_1B1088BFC()
{
  OUTLINED_FUNCTION_50();
  v2 = sub_1B112186C();
  OUTLINED_FUNCTION_7(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v6);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_1B11228DC();
  OUTLINED_FUNCTION_17(v11);
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_49();
  v14 = *(v0 + 32);
  v15 = *(v0 + v5);
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();

  return sub_1B10847BC(v17, v15, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1B1088DA4()
{
  *(v1 + 48) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1088E40, v0, 0);
}

uint64_t sub_1B1088E40()
{
  OUTLINED_FUNCTION_50();
  sub_1B1122CAC();
  v4 = v0[6];
  swift_beginAccess();
  v6 = *(v4 + 112);
  v5 = *(v4 + 120);
  switch(*(v4 + 128))
  {
    case 1:
      v9 = v5 + 1;
      if (v5 == -1)
      {
        __break(1u);
      }

      else
      {
        v28 = v0[6];
        if (v28[17] < v9)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D38, &qword_1B11343F8);
          sub_1B107A60C(&qword_1EB739D40, &qword_1EB739D38, &qword_1B11343F8);
          OUTLINED_FUNCTION_31();
          *v29 = v6;
          swift_willThrow();
          v30 = v6;
          v1 = v0[7];

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_33();

          __asm { BRAA            X1, X16 }
        }

        v31 = v0[7];
        v33 = v28[18];
        v32 = v28[19];
        sub_1B1122C5C();
        OUTLINED_FUNCTION_20();
        __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
        v38 = swift_allocObject();
        v38[2] = 0;
        v38[3] = 0;
        v38[4] = v33;
        v38[5] = v32;
        v39 = OUTLINED_FUNCTION_19_0();
        sub_1B108BD6C(v39, v40, 1);

        v41 = OUTLINED_FUNCTION_8_0();
        v44 = sub_1B10898C8(v41, v42, v31, v43, v38);
        v45 = OUTLINED_FUNCTION_19_0();
        sub_1B108BE4C(v45, v46, 1);
        sub_1B1067964(v31, &qword_1EB73A100, &unk_1B1134340);
        v48 = *(v4 + 112);
        v47 = *(v4 + 120);
        *(v4 + 112) = v44;
        *(v4 + 120) = 0;
        LOBYTE(v31) = *(v4 + 128);
        *(v4 + 128) = 0;
        swift_retain_n();
        v49 = OUTLINED_FUNCTION_19_0();
        sub_1B108BE4C(v49, v50, v31);
        v6 = v44;
LABEL_15:
        v0[8] = v9;
        v0[9] = v6;
        v51 = *(MEMORY[0x1E69E86A8] + 4);
        v52 = swift_task_alloc();
        v0[10] = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
        OUTLINED_FUNCTION_46();
        *v52 = v53;
        v52[1] = sub_1B1089220;
        OUTLINED_FUNCTION_33();
      }

      return MEMORY[0x1EEE6DA10]();
    case 2:
      v10 = v0[7];
      v11 = *(v4 + 112);

      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X2, X16 }

      return result;
    case 3:
      v14 = v0[6];
      v15 = v0[7];
      v17 = *(v14 + 144);
      v16 = *(v14 + 152);
      sub_1B1122C5C();
      v9 = 1;
      OUTLINED_FUNCTION_20();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v17;
      v22[5] = v16;

      v23 = OUTLINED_FUNCTION_8_0();
      v6 = sub_1B10898C8(v23, v24, v15, v25, v22);
      sub_1B1067964(v15, &qword_1EB73A100, &unk_1B1134340);
      v26 = *(v4 + 112);
      v27 = *(v4 + 120);
      *(v4 + 112) = v6;
      *(v4 + 120) = 0;
      LOBYTE(v17) = *(v4 + 128);
      *(v4 + 128) = 0;
      swift_retain_n();
      sub_1B108BE4C(v26, v27, v17);
      goto LABEL_15;
    default:
      v7 = OUTLINED_FUNCTION_19_0();
      sub_1B108BD6C(v7, v8, 0);

      v9 = 1;
      goto LABEL_15;
  }
}

uint64_t sub_1B1089220()
{
  OUTLINED_FUNCTION_15_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  v5 = *(v2 + 80);
  *v4 = *v1;
  *(v3 + 88) = v0;

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1B10893D0;
  }

  else
  {
    v7 = sub_1B1089340;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B1089340()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[9];
  v2 = v0[6];

  sub_1B1089D54(v0[5]);

  v3 = v0[7];

  v4 = OUTLINED_FUNCTION_51();

  return v5(v4);
}

uint64_t sub_1B10893D0()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];

  v5 = sub_1B1089DE8(v1, v3);
  v6 = v0[11];
  v7 = v0[9];

  v8 = v0[7];

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_1B1089480(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1B1089570;

  return v7(v3 + 16);
}

uint64_t sub_1B1089570()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B108966C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1B108BF6C(a3, v23 - v10, &qword_1EB73A100, &unk_1B1134340);
  v12 = sub_1B1122C5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1067964(v11, &qword_1EB73A100, &unk_1B1134340);
  }

  else
  {
    sub_1B1122C4C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B1122C0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1122A9C() + 32;
      sub_1B112277C();

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B112277C();
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B10898C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1B108BF6C(a3, v23 - v10, &qword_1EB73A100, &unk_1B1134340);
  v12 = sub_1B1122C5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1067964(v11, &qword_1EB73A100, &unk_1B1134340);
  }

  else
  {
    sub_1B1122C4C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B1122C0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1122A9C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B1089B28(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1B1089C18;

  return v7(v3 + 16);
}

uint64_t sub_1B1089C18()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1089D30()
{
  OUTLINED_FUNCTION_13_0();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t sub_1B1089D54(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 128);
  if (v4 == 2)
  {
    v5 = *(v1 + 112);
  }

  else
  {
    v6 = *(v1 + 120);
    *(v1 + 112) = a1;
    *(v1 + 120) = 0;
    *(v1 + 128) = 2;

    sub_1B108BE4C(v3, v6, v4);
  }
}

void *sub_1B1089DE8(void *a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  v7 = *(v2 + 128);
  switch(v7)
  {
    case 1:
      if (v6 > a2)
      {
        a2 = *(v2 + 120);
      }

      v7 = 1;
      goto LABEL_5;
    case 2:
      v10 = *(v2 + 112);

      break;
    default:
LABEL_5:
      *(v2 + 112) = a1;
      *(v2 + 120) = a2;
      *(v2 + 128) = 1;
      v8 = a1;
      sub_1B108BE4C(v5, v6, v7);
      swift_willThrow();
      v9 = a1;
      break;
  }

  return v5;
}

uint64_t sub_1B1089EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B112277C();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = sub_1B112186C();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = sub_1B112173C();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v4[23] = *(v12 + 64);
  v4[24] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D18, &qword_1B1134398) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  v4[28] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B108A108, v3, 0);
}

uint64_t sub_1B108A108()
{
  sub_1B1122CAC();
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[14];
  v13 = v0[12];
  swift_beginAccess();
  v14 = *(v12 + 112);

  sub_1B10A7848(v13, v14, v10);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    v16 = v0[27];
    v17 = v0[28];
    v18 = v0[30];
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_35(v16, 1, v17);
    if (!v19)
    {
      sub_1B1067964(v0[27], &qword_1EB739D18, &qword_1B1134398);
    }
  }

  else
  {
    sub_1B108C048(v0[27], v0[30], &unk_1EB73A450, &qword_1B11343A0);
  }

  v20 = v0[28];
  sub_1B108BF6C(v0[30], v0[29], &unk_1EB73A450, &qword_1B11343A0);
  OUTLINED_FUNCTION_19_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v54 = v0[29];
      v55 = v54[1];
      if (v55 == -1)
      {
        __break(1u);
        return MEMORY[0x1EEE6DA10](EnumCaseMultiPayload, v22, v23);
      }

      v56 = *v54;
      v57 = v0[14];
      if (v57[15] < v55 + 1)
      {
        v58 = v0[30];
        v60 = v0[18];
        v59 = v0[19];
        v61 = v0[12];
        v62 = OUTLINED_FUNCTION_38();
        __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
        sub_1B107A60C(&qword_1EB739D28, &qword_1EB739D20, &qword_1B11343B8);
        OUTLINED_FUNCTION_31();
        v65 = v64;
        v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D30, &qword_1B11343C0) + 48);
        (*(v59 + 16))(v65, v61, v60);
        *(v65 + v66) = v56;
        swift_willThrow();
        sub_1B1067964(v58, &unk_1EB73A450, &qword_1B11343A0);
        v2 = v0[29];
        v1 = v0[30];
        v4 = v0[26];
        v3 = v0[27];
        v6 = v0[24];
        v5 = v0[25];
        v7 = v0[20];
        v8 = v0[17];

        OUTLINED_FUNCTION_13_0();
        goto LABEL_2;
      }

      v95 = v0[26];
      v97 = v0[28];
      v99 = v56;
      v101 = v55 + 1;
      v67 = v0[24];
      v68 = v0[25];
      v69 = v0[22];
      v70 = v0[21];
      v71 = v0[19];
      v91 = v0[20];
      v93 = v0[18];
      v72 = v0[13];
      v87 = v0[23];
      v89 = v0[12];
      v73 = v57[19];
      v86 = v57[18];
      sub_1B1122C5C();
      OUTLINED_FUNCTION_20();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
      (*(v69 + 16))(v67, v72, v70);
      v78 = (*(v69 + 80) + 48) & ~*(v69 + 80);
      v79 = swift_allocObject();
      *(v79 + 2) = 0;
      *(v79 + 3) = 0;
      *(v79 + 4) = v86;
      *(v79 + 5) = v73;
      (*(v69 + 32))(&v79[v78], v67, v70);

      v80 = OUTLINED_FUNCTION_8_0();
      v24 = sub_1B108966C(v80, v81, v68, v82, v79);
      sub_1B1067964(v68, &qword_1EB73A100, &unk_1B1134340);
      (*(v71 + 16))(v91, v89, v93);
      OUTLINED_FUNCTION_52_0();
      v83 = OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v97);
      swift_beginAccess();
      swift_retain_n();
      sub_1B1082878(v95, v91);
      swift_endAccess();

      v50 = v101;
      goto LABEL_14;
    case 2:
      v25 = v0[29];
      v26 = v0[15];
      v27 = v0[16];
      v28 = v0[11];
      sub_1B1067964(v0[30], &unk_1EB73A450, &qword_1B11343A0);
      (*(v27 + 32))(v28, v25, v26);
      OUTLINED_FUNCTION_41();

      OUTLINED_FUNCTION_6_2();
LABEL_2:

      return v29();
    case 3:
      v30 = v0[25];
      v98 = v0[26];
      v100 = v0[28];
      v31 = v0[24];
      v33 = v0[21];
      v32 = v0[22];
      v34 = v0[19];
      v94 = v0[20];
      v96 = v0[18];
      v36 = v0[13];
      v35 = v0[14];
      v90 = v0[23];
      v92 = v0[12];
      v37 = *(v35 + 152);
      v88 = *(v35 + 144);
      sub_1B1122C5C();
      OUTLINED_FUNCTION_20();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      (*(v32 + 16))(v31, v36, v33);
      v42 = (*(v32 + 80) + 48) & ~*(v32 + 80);
      v43 = swift_allocObject();
      *(v43 + 2) = 0;
      *(v43 + 3) = 0;
      *(v43 + 4) = v88;
      *(v43 + 5) = v37;
      (*(v32 + 32))(&v43[v42], v31, v33);

      v44 = OUTLINED_FUNCTION_8_0();
      v24 = sub_1B108966C(v44, v45, v30, v46, v43);
      sub_1B1067964(v30, &qword_1EB73A100, &unk_1B1134340);
      (*(v34 + 16))(v94, v92, v96);
      OUTLINED_FUNCTION_52_0();
      v47 = OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v100);
      swift_beginAccess();
      swift_retain_n();
      sub_1B1082878(v98, v94);
      swift_endAccess();
      goto LABEL_13;
    default:
      v24 = *v0[29];

LABEL_13:
      v50 = 1;
LABEL_14:
      v0[31] = v50;
      v0[32] = v24;
      v51 = *(MEMORY[0x1E69E86A8] + 4);
      v52 = swift_task_alloc();
      v0[33] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
      OUTLINED_FUNCTION_46();
      *v52 = v53;
      v52[1] = sub_1B108A7EC;
      EnumCaseMultiPayload = v0[17];
      v23 = v0[15];
      v22 = v24;

      return MEMORY[0x1EEE6DA10](EnumCaseMultiPayload, v22, v23);
  }
}

uint64_t sub_1B108A7EC()
{
  OUTLINED_FUNCTION_15_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  v5 = *(v2 + 264);
  *v4 = *v1;
  *(v3 + 272) = v0;

  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_1B108AA10;
  }

  else
  {
    v7 = sub_1B108A90C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B108A90C()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];

  sub_1B108AD40(v3, v7, v8);

  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_36();
  v11(v10);
  sub_1B1067964(v2, &unk_1EB73A450, &qword_1B11343A0);
  OUTLINED_FUNCTION_41();

  OUTLINED_FUNCTION_6_2();

  return v12();
}

void sub_1B108AA10()
{
  OUTLINED_FUNCTION_50();
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  sub_1B108B174(v1, v5, v3, v6);
  v7 = v0[34];
  v8 = v0[32];
  sub_1B1067964(v0[30], &unk_1EB73A450, &qword_1B11343A0);

  v10 = v0[29];
  v9 = v0[30];
  v12 = v0[26];
  v11 = v0[27];
  v14 = v0[24];
  v13 = v0[25];
  v15 = v0[20];
  v16 = v0[17];

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1B108AB30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1B108C2DC;

  return v12(a1, a6);
}

uint64_t sub_1B108AC38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1B1088B1C;

  return v12(a1, a6);
}

uint64_t sub_1B108AD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a1;
  v36 = a3;
  v33 = sub_1B112186C();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D18, &qword_1B1134398);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  swift_beginAccess();
  v23 = v4[14];

  sub_1B10A7848(a2, v23, v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_1B1067964(v15, &qword_1EB739D18, &qword_1B1134398);
    }
  }

  else
  {
    sub_1B108C048(v15, v22, &unk_1EB73A450, &qword_1B11343A0);
  }

  sub_1B108BF6C(v22, v20, &unk_1EB73A450, &qword_1B11343A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B1067964(v22, &unk_1EB73A450, &qword_1B11343A0);
      v25 = sub_1B112277C();
      return (*(*(v25 - 8) + 32))(v36, v20, v25);
    }
  }

  else
  {
    sub_1B1067964(v20, &unk_1EB73A450, &qword_1B11343A0);
  }

  v27 = v34;
  (*(v6 + 16))(v34, a2, v33);
  v28 = v4[16];
  v29 = v35;
  if (!v28 || (v30 = v4[17], (v28(v35) & 1) != 0))
  {
    v31 = sub_1B112277C();
    (*(*(v31 - 8) + 16))(v13, v29, v31);
  }

  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
  swift_beginAccess();
  sub_1B1082878(v13, v27);
  swift_endAccess();
  sub_1B1067964(v22, &unk_1EB73A450, &qword_1B11343A0);
  v32 = sub_1B112277C();
  return (*(*(v32 - 8) + 16))(v36, v29, v32);
}

id sub_1B108B174@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v40 = a3;
  v38 = a1;
  v37 = sub_1B112186C();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D18, &qword_1B1134398);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  swift_beginAccess();
  v23 = *(v4 + 112);

  v39 = a2;
  sub_1B10A7848(a2, v23, v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_1B1067964(v15, &qword_1EB739D18, &qword_1B1134398);
    }
  }

  else
  {
    sub_1B108C048(v15, v22, &unk_1EB73A450, &qword_1B11343A0);
  }

  sub_1B108BF6C(v22, v20, &unk_1EB73A450, &qword_1B11343A0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = *v20;
      v31 = v20[1];

      if (v31 <= v40)
      {
        v31 = v40;
      }

      v32 = v41;
      (*(v6 + 16))(v41, v39, v37);
      v25 = v38;
      *v13 = v38;
      v13[1] = v31;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
      swift_beginAccess();
      v33 = v25;
      v28 = v13;
      v29 = v32;
      goto LABEL_11;
    case 2u:
      sub_1B1067964(v22, &unk_1EB73A450, &qword_1B11343A0);
      v35 = sub_1B112277C();
      return (*(*(v35 - 8) + 32))(v36, v20, v35);
    case 3u:
      goto LABEL_7;
    default:
      sub_1B1067964(v20, &unk_1EB73A450, &qword_1B11343A0);
LABEL_7:
      v24 = v41;
      (*(v6 + 16))(v41, v39, v37);
      v25 = v38;
      v26 = v40;
      *v13 = v38;
      v13[1] = v26;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
      swift_beginAccess();
      v27 = v25;
      v28 = v13;
      v29 = v24;
LABEL_11:
      sub_1B1082878(v28, v29);
      swift_endAccess();
      swift_willThrow();
      sub_1B1067964(v22, &unk_1EB73A450, &qword_1B11343A0);
      return v25;
  }
}

id sub_1B108B5D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a6)
  {
    v17 = sub_1B1122A4C();
  }

  else
  {
    v17 = 0;
  }

  if (a8)
  {
    v18 = sub_1B1122A4C();
  }

  else
  {
    v18 = 0;
  }

  if (!a10)
  {
    v19 = 0;
    if (a11)
    {
      goto LABEL_9;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v19 = sub_1B1122A4C();

  if (!a11)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20 = sub_1B11229DC();

LABEL_12:
  v21 = [v11 initWithStartSearch:a1 responseSize:a2 statusCode:a3 parsecStatus:v17 parsecDuration:v18 fbq:v19 partialClientIp:a4 networkTimingData:v20];
  swift_unknownObjectRelease();

  return v21;
}

id sub_1B108B744(void *a1)
{
  if (a1)
  {
    v3 = sub_1B11217EC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 initWithError_];

  return v4;
}

uint64_t sub_1B108B7A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B108B7F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1122A4C();
  [a3 setEdge_];
}

uint64_t sub_1B108B848(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1B1122A5C();
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1B108B8A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B108C2E4;

  return sub_1B1089480(a2, a3, a4);
}

uint64_t sub_1B108B95C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B108BA14;

  return sub_1B1089B28(a2, a3, a4);
}

uint64_t sub_1B108BA14()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_5();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1B108BB0C()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();
  v1 = sub_1B112173C();
  OUTLINED_FUNCTION_17(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_43();

  return sub_1B108AC38(v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_1B112173C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 40);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B108BC9C()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();
  v1 = sub_1B112173C();
  OUTLINED_FUNCTION_17(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_43();

  return sub_1B108AB30(v6, v7, v8, v9, v10, v11);
}

id sub_1B108BD6C(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

    case 1:
      return result;
    case 0:
  }

  return result;
}

uint64_t sub_1B108BD94()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();

  return v8();
}

void sub_1B108BE4C(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B108BEB4()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();

  return v8();
}

uint64_t sub_1B108BF6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_54(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return v4;
}

void sub_1B108BFB8(void *a1, id a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:

      break;
    case 1:
    case 2:

      goto LABEL_4;
    case 4:

LABEL_4:

      break;
    default:
      return;
  }
}

uint64_t sub_1B108C048(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_54(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return v4;
}

void sub_1B108C0BC()
{
  sub_1B108C150();
  if (v0 <= 0x3F)
  {
    sub_1B108C1A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B108C150()
{
  if (!qword_1EB739630[0])
  {
    v0 = sub_1B1122EDC();
    if (!v1)
    {
      atomic_store(v0, qword_1EB739630);
    }
  }
}

void sub_1B108C1A0()
{
  if (!qword_1EDAD54B8)
  {
    sub_1B112186C();
    v0 = sub_1B1122EDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAD54B8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10CoreParsec14PARImageLoaderC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B108C228(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 25))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B108C268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B108C2B0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_18_0()
{
  v3 = *(v1 + 64);
  v4 = *(*(v1 + 96) + 24);

  sub_1B10866A8(v0, v3);
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_47()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_53@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void sub_1B108C424(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = sub_1B1099EF8(a1);
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B272DFA0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    sub_1B108CC64(&v11, a2, a3);

    if (v3)
    {
      return;
    }
  }
}

id PARLookupSearchResponse.init(reply:factory:data:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1B11218AC();
  v10 = [v8 initWithReply:a1 factory:a2 data:v9];

  sub_1B106C204(a3, a4);
  swift_unknownObjectRelease();
  return v10;
}

id PARLookupSearchResponse.init(reply:factory:data:)(void *a1, void *a2)
{
  v24[0] = a2;
  v4 = sub_1B11227EC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D48, &qword_1B1134538);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v24 - v8;
  v10 = sub_1B1121A0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v2 initWithReply_];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v16 = OUTLINED_FUNCTION_0_7();
  sub_1B1070FD4(v16, v17);
  sub_1B11227DC();
  sub_1B108C838();
  OUTLINED_FUNCTION_0_7();
  sub_1B112280C();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  (*(v11 + 32))(v14, v9, v10);
  v18 = v15;
  v19 = sub_1B108C8F8(v14, a1, v24[0]);
  sub_1B107191C(v19, v18);
  v20 = sub_1B108CB70();
  sub_1B10725F0(v20, v18);

  swift_unknownObjectRelease();
  v21 = OUTLINED_FUNCTION_0_7();
  sub_1B106C204(v21, v22);
  (*(v11 + 8))(v14, v10);
  return v18;
}

unint64_t sub_1B108C838()
{
  result = qword_1EB739D50;
  if (!qword_1EB739D50)
  {
    sub_1B1121A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739D50);
  }

  return result;
}

uint64_t sub_1B108C890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D48, &qword_1B1134538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B108C8F8(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v25 = a3;
  v3 = sub_1B1121DEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B11219EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B11219FC();
  v13 = sub_1B11219DC();
  (*(v9 + 8))(v12, v8);
  v26 = MEMORY[0x1E69E7CC0];
  v14 = *(v13 + 16);
  if (v14)
  {
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v22[1] = v13;
    v23 = v16;
    v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    do
    {
      v23(v7, v17, v3);
      if (!sub_1B1074C20(v24, v25, v7))
      {
        [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
      }

      v19 = (*(v15 - 8))(v7, v3);
      MEMORY[0x1B272DB50](v19);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v17 += v18;
      --v14;
    }

    while (v14);
    v20 = v26;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v20;
}

uint64_t sub_1B108CB70()
{
  v1 = sub_1B10725D4(v0);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v4 = MEMORY[0x1E69E7CC8];
    sub_1B108C424(v1, &v4, &v5);

    v2 = v5;
  }

  return v2;
}

void sub_1B108CC64(void **a1, uint64_t *a2, void *a3)
{
  v5 = *a1;
  v6 = sub_1B10A5C7C(*a1);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1B10A7800(v6, v7, *a2);
    if (!v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
      if (!v11)
      {
        v14 = sub_1B10A5980(v8, v9);

        return;
      }

      v10 = v11;
      sub_1B10A5C94(v8, v9, v11);
      sub_1B10A5C88(v5);
      if (v12)
      {
        v13 = sub_1B1122A4C();
      }

      else
      {
        v13 = 0;
      }

      [v10 setBundleIdentifier_];

      sub_1B1072550(MEMORY[0x1E69E7CC0], v10);
      v15 = v10;
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *a2;
      sub_1B107FC78(v15, v8, v9, isUniquelyReferenced_nonNull_native);
      *a2 = v23;
      v18 = [v5 moreResultsButton];
      [v15 setButton_];

      v19 = v15;
      MEMORY[0x1B272DB50]();
      sub_1B10A9034(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1122BCC();
    }

    v20 = v5;
    v24 = sub_1B10725D4(v10);
    if (v24)
    {

      MEMORY[0x1B272DB50](v21);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      sub_1B108CED0();
      v22 = sub_1B1122B7C();

      [v10 setResults_];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1B108CED0()
{
  result = qword_1EDAD5528;
  if (!qword_1EDAD5528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAD5528);
  }

  return result;
}

uint64_t static ProtobufHelper.processProtobuf(_:result:data:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  swift_getObjectType();

  return sub_1B108D438(a1, a2, a3, a4);
}

id sub_1B108D044(id result)
{
  if (result)
  {
    v1 = result;
    if ([result replyType] == 2)
    {
      return 0;
    }

    result = [v1 task];
    if (result)
    {
      v2 = result;
      v3 = [result request];

      if (!v3)
      {
        return 0;
      }

      ObjectType = swift_getObjectType();

      return (ObjectType != sub_1B1066864(0, &qword_1EDAD5530, off_1E7AC50F0));
    }
  }

  return result;
}

id ProtobufHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProtobufHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtobufHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProtobufHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtobufHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B108D1B4()
{
  v1 = [v0 task];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 request];

  v4 = [v3 queryId];
  return v4;
}

void sub_1B108D2A4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  objc_allocWithZone(MEMORY[0x1E69CA5E0]);
  sub_1B1070FD4(a3, a4);
  v8 = sub_1B10814B8(a3, a4);
  if (v8)
  {
    v15 = v8;
    v9 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];
    if (v9)
    {
      v10 = v9;
      sub_1B1077FE8(a1, &v16);
      if (!v17)
      {
        sub_1B108D510(&v16);
        goto LABEL_10;
      }

      sub_1B1068D4C(&v16, v18);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      if ((*(v12 + 16))(v11, v12))
      {
        __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_10:
        v13 = v10;
        [a2 setCard_];

        return;
      }

      v14 = v10;
      [a2 setInlineCard_];

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_1B108D438(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    a1 = sub_1B1066864(0, &unk_1EB739610, off_1E7AC5148);
    v8 = &off_1F2778A20;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v12[1] = 0;
    v12[2] = 0;
  }

  v12[0] = v9;
  v12[3] = a1;
  v12[4] = v8;
  v10 = v7;
  sub_1B108D2A4(v12, a2, a3, a4);
  return sub_1B108D510(v12);
}

uint64_t sub_1B108D510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399C0, &qword_1B1133BF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B108D578(void *a1, uint64_t a2)
{
  if (a1)
  {
    v9 = a1;
    [v9 setQueryId_];
    v3 = sub_1B109856C(v9);
    if (v3)
    {
      v4 = v3;
      v5 = sub_1B1099EF8(v3);
      for (i = 0; ; ++i)
      {
        if (v5 == i)
        {

          goto LABEL_12;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B272DFA0](i, v4);
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v7 = *(v4 + 8 * i + 32);
        }

        v8 = v7;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = v7;
        sub_1B108D698(&v10, a2);
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    else
    {
LABEL_12:
    }
  }
}

void sub_1B108D698(id *a1, uint64_t a2)
{
  v3 = [*a1 embeddedCards];
  sub_1B108DD0C();
  v4 = sub_1B1122B8C();

  v19 = sub_1B1099EF8(v4);
  if (v19)
  {
    v5 = 0;
    v17 = v4;
    v18 = v4 & 0xC000000000000001;
    v15 = v4 + 32;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v6 = MEMORY[0x1B272DFA0](v5, v4);
      }

      else
      {
        if (v5 >= *(v16 + 16))
        {
          goto LABEL_23;
        }

        v6 = *(v15 + 8 * v5);
      }

      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v8 = v6;
      [v8 setQueryId_];
      v9 = sub_1B109856C(v8);
      if (v9)
      {
        v10 = v9;
        v20 = v5;
        v11 = sub_1B1099EF8(v9);
        for (i = 0; ; ++i)
        {
          if (v11 == i)
          {

            v4 = v17;
            v5 = v20;
            goto LABEL_18;
          }

          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1B272DFA0](i, v10);
          }

          else
          {
            if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v13 = *(v10 + 8 * i + 32);
          }

          v14 = v13;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v21 = v13;
          sub_1B108D698(&v21, a2);
        }

        __break(1u);
LABEL_21:
        __break(1u);
        break;
      }

LABEL_18:

      if (v5 == v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

id parsecExtractCalendarIdentifier(void *a1)
{
  v2 = a1;
  v3 = sub_1B108D8B8(a1);

  return v3;
}

uint64_t sub_1B108D8B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D58, &qword_1B1134580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D60, &qword_1B1134588);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D68, &qword_1B1134590);
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v36 - v23;
  if (a1)
  {
    v37 = v13;
    v38 = v9;
    v25 = a1;
    v26 = sub_1B1122A4C();
    v27 = [v25 hasPrefix_];

    if ((v27 & 1) != 0 || (v28 = sub_1B1122A4C(), v29 = [v25 hasPrefix_], v28, v29))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D70, &qword_1B1134598);
      sub_1B11226BC();
      sub_1B11226FC();
      v30 = *(v17 + 8);
      v30(v22, v14);
      v31 = v25;
      sub_1B1122A6C();
      sub_1B11226DC();

      if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
      {
        v36 = v30;
        v35 = v37;
        v34 = v38;
        (*(v38 + 32))(v37, v5, v6);
        sub_1B112270C();

        MEMORY[0x1B272DA90](v39, v40, v41, v42);

        v32 = sub_1B1122A4C();

        (*(v34 + 8))(v35, v6);
        v36(v24, v14);
        return v32;
      }

      v30(v24, v14);

      sub_1B108DCA4(v5);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1B108DCA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D58, &qword_1B1134580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B108DD0C()
{
  result = qword_1EB739620;
  if (!qword_1EB739620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB739620);
  }

  return result;
}

BOOL sub_1B108DD50(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1B108DDA4(uint64_t a1, int a2)
{
  v3 = v2;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v34 = sub_1B112194C();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 256;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 81) = 0;
  sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
  v37 = qword_1EDAD54C0;
  v38 = off_1EDAD54C8;
  v41 = 45;
  v42 = 0xE100000000000000;
  v39 = 95;
  v40 = 0xE100000000000000;
  sub_1B1067A94();
  sub_1B1122F1C();

  *(v2 + 88) = sub_1B1122ECC();
  v15 = *(*v2 + 136);
  v16 = sub_1B11228AC();
  __swift_storeEnumTagSinglePayload(v3 + v15, 1, 1, v16);
  v17 = *(*v3 + 19);
  type metadata accessor for Locker();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  *(v3 + v17) = v18;
  sub_1B112193C();
  v20 = v14;
  v21 = v35;
  (*(v11 + 32))(v3 + *(*v3 + 18), v20, v34);
  swift_weakAssign();
  *(v3 + 80) = v21;
  v22 = v3[11];

  sub_1B112286C();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  v23 = *(*v3 + 17);
  swift_beginAccess();
  sub_1B1099D50(v10, v3 + v23);
  swift_endAccess();
  v37 = v3;

  v24 = sub_1B1122A7C();
  v26 = v25;
  v27 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v27);
  sub_1B10A3E90(a1, v24, v26, v3, &off_1F27784B0);

  os_unfair_lock_unlock(v27);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(v3, &off_1F27784B0, ObjectType, v28);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v30 = v36;
  sub_1B1099E30(v3 + v23, v36, &unk_1EB739BB8, &qword_1B1133E38);
  result = __swift_getEnumTagSinglePayload(v30, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v3[11];
    sub_1B1122E5C();
    sub_1B107F298(v21);
    sub_1B112285C();

    (*(*(v16 - 8) + 8))(v30, v16);
    return v3;
  }

  return result;
}

uint64_t sub_1B108E274(uint64_t a1, int a2, uint64_t a3, int a4)
{
  *(v4 + qword_1EDAD5970) = 0;
  v5 = v4 + *(*v4 + 472);
  *v5 = a3;
  *(v5 + 8) = a4;
  return sub_1B108DDA4(a1, a2);
}

uint64_t sub_1B108E2A4(uint64_t result)
{
  v2 = *(*v1 + 472);
  v3 = *(v1 + v2);
  v4 = __OFADD__(v3, result);
  v5 = v3 + result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v5;
  }

  return result;
}

void sub_1B108E2D0(void *a1)
{
  v2 = *(v1 + qword_1EDAD5970);
  *(v1 + qword_1EDAD5970) = a1;
  v3 = a1;
}

Swift::Void __swiftcall PARRequest.beginNWActivity()()
{
  [v0 nwActivityLabel];
  nw_activity_create();
  nw_activity_activate();
  v1 = OUTLINED_FUNCTION_36_0();
  [v1 v2];

  swift_unknownObjectRelease();
}

uint64_t sub_1B108E454()
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v0);
  return Strong;
}

uint64_t sub_1B108E49C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_1B1068FC8();
}

uint64_t sub_1B108E4C8(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1B108E454();
  return OUTLINED_FUNCTION_51_0();
}

uint64_t sub_1B108E50C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    sub_1B1068FC8();

    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = *a1;
    return sub_1B1068FC8();
  }
}

void sub_1B108E5C0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal_lock);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal__configuration);
  *(v1 + OBJC_IVAR___PARSessionSwiftInternal__configuration) = a1;
  v5 = a1;

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1B108E668(id *a1)
{
  a1[1] = v1;
  *a1 = sub_1B1068078();
  return OUTLINED_FUNCTION_51_0();
}

void sub_1B108E6AC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = v3;
    sub_1B108E5C0(v5);
  }

  else
  {
    sub_1B108E5C0(v3);
  }
}

void sub_1B108E770(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1B106ECF0(v2);
}

uint64_t sub_1B108E7A0(void **a1)
{
  a1[1] = v1;
  *a1 = sub_1B106903C();
  return OUTLINED_FUNCTION_51_0();
}

void sub_1B108E7E4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    sub_1B106ECF0(v2);
  }

  else
  {
    sub_1B106ECF0(*a1);
  }
}

id PARSessionSwiftInternal.__deallocating_deinit()
{
  CoreParsec_notify_cancel(*&v0[OBJC_IVAR___PARSessionSwiftInternal_skappToken]);
  v1 = *&v0[OBJC_IVAR___PARSessionSwiftInternal_lock];
  OUTLINED_FUNCTION_2_0();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PARSessionSwiftInternal();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *PARSessionSwiftInternal.__allocating_init(session:configuration:connection:delegate:)()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_47_0();
  v2 = objc_allocWithZone(v0);
  v3 = OUTLINED_FUNCTION_23_0();
  return PARSessionSwiftInternal.init(session:configuration:connection:delegate:)(v3, v4, v1);
}

void sub_1B108EBC4()
{
  OUTLINED_FUNCTION_57();
  v2 = v0;
  OUTLINED_FUNCTION_47_0();
  v3 = sub_1B1068078();
  v4 = [v3 userAgent];

  v5 = sub_1B1122A5C();
  v7 = v6;

  v64 = v5;
  v65 = v7;
  OUTLINED_FUNCTION_53_0();
  v62 = v8;
  v63 = v9;
  sub_1B1067A94();
  LOBYTE(v5) = sub_1B1122F2C();

  if (v5)
  {
    v10 = sub_1B106903C();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 safariAssistantForceEnabledState];
      if (v12 == 2 || v12 == 1 || ![v11 isEnabled])
      {
        goto LABEL_38;
      }

      if (qword_1EB7395F8 != -1)
      {
        swift_once();
      }

      if (byte_1EB73D4C8 != 1)
      {
        if (qword_1EDAD5D18 != -1)
        {
LABEL_65:
          OUTLINED_FUNCTION_0_8();
        }

        v30 = sub_1B112296C();
        OUTLINED_FUNCTION_27_0(v30, qword_1EDAD5D20);
        v31 = sub_1B112293C();
        v32 = sub_1B1122DDC();
        if (!OUTLINED_FUNCTION_60(v32))
        {
          goto LABEL_37;
        }

        v33 = OUTLINED_FUNCTION_37();
        *v33 = 0;
        _os_log_impl(&dword_1B1064000, v31, v32, "[SBA Disabled] os eligibility", v33, 2u);
        goto LABEL_35;
      }

      v13 = OBJC_IVAR___PARSessionSwiftInternal__deviceContext;
      v14 = *(v2 + OBJC_IVAR___PARSessionSwiftInternal__deviceContext);
      v16 = *(v14 + 32);
      v15 = *(v14 + 40);
      if (v15)
      {
        v17 = *(v14 + 40);
        swift_bridgeObjectRetain_n();
        v18 = sub_1B1098588(v11, &selRef_safariAssistantUnsupportedCountries);
        if (v18)
        {
          v19 = v18;
          v64 = v16;
          v65 = v15;
          MEMORY[0x1EEE9AC00](v18);
          v60[2] = &v64;
          v20 = sub_1B10984BC(sub_1B1099E90, v60, v19);

          if (!v20)
          {

            v21 = *(v2 + v13);
            v22 = *(v21 + 24);
            v61 = *(v21 + 16);
            if (v22)
            {
              swift_bridgeObjectRetain_n();
              v23 = sub_1B1098588(v11, &selRef_safariAssistantSupportedSystemLocales);
              if (v23)
              {
                v24 = v23;
                v25 = 0;
                v26 = *(v23 + 16);
                for (i = (v23 + 40); ; i += 2)
                {
                  if (v26 == v25)
                  {

                    goto LABEL_41;
                  }

                  if (v25 >= *(v24 + 16))
                  {
                    __break(1u);
                    goto LABEL_65;
                  }

                  v29 = *(i - 1);
                  v28 = *i;

                  LOBYTE(v29) = sub_1B1122B2C();

                  if (v29)
                  {
                    break;
                  }

                  ++v25;
                }

                swift_bridgeObjectRelease_n();
                if (!v1)
                {
                  goto LABEL_38;
                }

                v47 = sub_1B1098588(v11, &selRef_safariAssistantSupportedPageLanguages);
                if (!v47)
                {
LABEL_59:
                  if (qword_1EDAD5D18 != -1)
                  {
                    OUTLINED_FUNCTION_0_8();
                  }

                  v53 = sub_1B112296C();
                  OUTLINED_FUNCTION_27_0(v53, qword_1EDAD5D20);

                  v31 = sub_1B112293C();
                  v54 = sub_1B1122DDC();

                  if (os_log_type_enabled(v31, v54))
                  {
                    v55 = OUTLINED_FUNCTION_40_0();
                    v56 = OUTLINED_FUNCTION_55();
                    v64 = v56;
                    *v55 = 136642819;
                    v57 = OUTLINED_FUNCTION_23_0();
                    *(v55 + 4) = sub_1B10784E0(v57, v58, v59);
                    _os_log_impl(&dword_1B1064000, v31, v54, "[SBA Disabled] page language %{sensitive}s", v55, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v56);
                    OUTLINED_FUNCTION_2_0();
                    goto LABEL_35;
                  }

                  goto LABEL_37;
                }

                v48 = v47;
                v49 = 0;
                v50 = *(v47 + 16);
                for (j = (v47 + 40); ; j += 2)
                {
                  if (v50 == v49)
                  {

                    goto LABEL_59;
                  }

                  if (v49 >= *(v48 + 16))
                  {
                    break;
                  }

                  v52 = *(j - 1);
                  v22 = *j;

                  if (sub_1B1122B2C())
                  {

                    goto LABEL_39;
                  }

                  ++v49;
                }

                __break(1u);
LABEL_67:
                OUTLINED_FUNCTION_0_8();
LABEL_43:
                v41 = sub_1B112296C();
                OUTLINED_FUNCTION_27_0(v41, qword_1EDAD5D20);

                v31 = sub_1B112293C();
                v42 = sub_1B1122DDC();

                if (os_log_type_enabled(v31, v42))
                {
                  v43 = OUTLINED_FUNCTION_40_0();
                  v44 = OUTLINED_FUNCTION_55();
                  v64 = v44;
                  *v43 = 136642819;
                  if (v22)
                  {
                    v45 = v61;
                  }

                  else
                  {
                    v45 = 7104878;
                  }

                  if (!v22)
                  {
                    v22 = 0xE300000000000000;
                  }

                  v46 = sub_1B10784E0(v45, v22, &v64);

                  *(v43 + 4) = v46;
                  _os_log_impl(&dword_1B1064000, v31, v42, "[SBA Disabled] system locale %{sensitive}s", v43, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v44);
                  OUTLINED_FUNCTION_2_0();
LABEL_35:
                  OUTLINED_FUNCTION_2_0();
LABEL_37:

LABEL_38:
                  goto LABEL_39;
                }

                goto LABEL_36;
              }

LABEL_41:
            }

            if (qword_1EDAD5D18 == -1)
            {
              goto LABEL_43;
            }

            goto LABEL_67;
          }
        }

        else
        {
        }
      }

      if (qword_1EDAD5D18 != -1)
      {
        OUTLINED_FUNCTION_0_8();
      }

      v34 = sub_1B112296C();
      OUTLINED_FUNCTION_27_0(v34, qword_1EDAD5D20);

      v31 = sub_1B112293C();
      v35 = sub_1B1122DDC();

      if (os_log_type_enabled(v31, v35))
      {
        v36 = OUTLINED_FUNCTION_40_0();
        v37 = OUTLINED_FUNCTION_55();
        v64 = v37;
        *v36 = 136642819;
        if (v15)
        {
          v38 = v16;
        }

        else
        {
          v38 = 7104878;
        }

        if (v15)
        {
          v39 = v15;
        }

        else
        {
          v39 = 0xE300000000000000;
        }

        v40 = sub_1B10784E0(v38, v39, &v64);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_1B1064000, v31, v35, "[SBA Disabled] country code %{sensitive}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        OUTLINED_FUNCTION_2_0();
        goto LABEL_35;
      }

LABEL_36:

      goto LABEL_37;
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_4_2();
}

void sub_1B108F270(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(_CPCBAEngagementFeedback) init];
  if (v4)
  {
    v5 = v4;
    [v4 setQueryId_];
    v6 = sub_1B112181C();
    sub_1B1074A10(v6, v7, v5, &selRef_setUrl_);
    v8 = *(v2 + OBJC_IVAR___PARSessionSwiftInternal_client);
    v9 = sub_1B1068078();
    v10 = v5;
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_36_0();
    sub_1B10989C0();
  }
}

BOOL sub_1B108F448(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  v6 = *(v3 + OBJC_IVAR___PARSessionSwiftInternal__sampleClientTimingEventAllowlist);
  if (v6 && *(v3 + OBJC_IVAR___PARSessionSwiftInternal__sampled) == 1)
  {
    v7 = *(v3 + OBJC_IVAR___PARSessionSwiftInternal__sampleClientTimingEventAllowlist);

    v8 = sub_1B108F4E4(a1, a2, v6);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v8;
}

BOOL sub_1B108F4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1B112314C();
  sub_1B1122ACC();
  v7 = sub_1B112316C();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_1B11230AC();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void sub_1B108F5D0(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  v5 = *(a1 + OBJC_IVAR___PARSessionSwiftInternal_client);
  *(v4 + 16) = a2;
  v6 = *(v5 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B1099FB0;
  *(v7 + 24) = v4;
  v19 = sub_1B1099FAC;
  v20 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1B108FBF8;
  v18 = &block_descriptor_181;
  v8 = _Block_copy(&aBlock);
  _Block_copy(a2);
  v9 = v6;

  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (swift_dynamicCast())
  {
    v19 = sub_1B1099FB0;
    v20 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1B108FC60;
    v18 = &block_descriptor_184;
    v11 = _Block_copy(&aBlock);

    [v14 clearSafariFeedback_];
    _Block_release(v11);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1098E34();
    v12 = swift_allocError();
    v13 = sub_1B11217EC();
    (a2)[2](a2, v13);
  }

  _Block_release(a2);
}

void sub_1B108F870(void (*a1)(void), uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR___PARSessionSwiftInternal_client) + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  OUTLINED_FUNCTION_50_0();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v19 = sub_1B1098E2C;
  v20 = v6;
  OUTLINED_FUNCTION_9_1();
  v16 = 1107296256;
  OUTLINED_FUNCTION_3();
  v17 = v7;
  v18 = &block_descriptor_3;
  v8 = _Block_copy(&aBlock);
  v9 = v5;

  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_58())
  {
    v19 = a1;
    v20 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1B108FC60;
    v18 = &block_descriptor_6;
    v11 = _Block_copy(&aBlock);

    v12 = OUTLINED_FUNCTION_36_0();
    [v12 v13];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1098E34();
    OUTLINED_FUNCTION_22_0();
    v14 = swift_allocError();
    a1();
  }
}

uint64_t sub_1B108FA68(void *a1, uint64_t (*a2)(void *))
{
  if (qword_1EDAD5D18 != -1)
  {
    swift_once();
  }

  v4 = sub_1B112296C();
  __swift_project_value_buffer(v4, qword_1EDAD5D20);
  v5 = a1;
  v6 = sub_1B112293C();
  v7 = sub_1B1122DDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1B11230FC();
    v12 = sub_1B10784E0(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B1064000, v6, v7, "clear safari history failed: no remote proxy %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B272EDD0](v9, -1, -1);
    MEMORY[0x1B272EDD0](v8, -1, -1);
  }

  return a2(a1);
}

void sub_1B108FBF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1B108FC60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id PARSessionSwiftInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SafariHistoryClearError.hashValue.getter()
{
  sub_1B112314C();
  MEMORY[0x1B272E140](0);
  return sub_1B112316C();
}

uint64_t sub_1B108FE48()
{
  sub_1B112314C();
  MEMORY[0x1B272E140](0);
  return sub_1B112316C();
}

uint64_t sub_1B108FE88(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v64 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v64 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v64 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v64 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v64 - v24;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    if (a2)
    {
      v28 = a1;
      if ([a2 hasDarkAppearance])
      {
        v29 = [v27 darkUrlValue];
        if (v29)
        {
          v30 = v29;
          sub_1B112183C();

          v31 = sub_1B112186C();
          v32 = 1;
          __swift_storeEnumTagSinglePayload(v23, 0, 1, v31);
          sub_1B1067964(v23, &qword_1EB73A130, &qword_1B1133BF0);
          v33 = [v27 darkUrlValue];
          if (v33)
          {
            v34 = v33;
            sub_1B112183C();

            v32 = 0;
          }

          __swift_storeEnumTagSinglePayload(v20, v32, 1, v31);
LABEL_15:
          sub_1B1099DC0(v20, v25);
          v42 = a1;
          sub_1B10986E4(v27, &selRef_identifier);
          v44 = v43;
          v45 = sub_1B112186C();
          if (__swift_getEnumTagSinglePayload(v25, 1, v45) == 1 && v44 == 0)
          {
            if (qword_1EDAD5D18 != -1)
            {
              swift_once();
            }

            v47 = sub_1B112296C();
            __swift_project_value_buffer(v47, qword_1EDAD5D20);
            v48 = sub_1B112293C();
            v49 = sub_1B1122DDC();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              *v50 = 0;
              _os_log_impl(&dword_1B1064000, v48, v49, "could not load image, no image identifier nor url", v50, 2u);
              MEMORY[0x1B272EDD0](v50, -1, -1);
            }

            goto LABEL_38;
          }

          sub_1B1099E30(v25, v14, &qword_1EB73A130, &qword_1B1133BF0);
          if (__swift_getEnumTagSinglePayload(v14, 1, v45) == 1)
          {
            sub_1B1067964(v14, &qword_1EB73A130, &qword_1B1133BF0);
          }

          else
          {
            sub_1B112184C();
            v52 = v51;
            (*(*(v45 - 8) + 8))(v14, v45);
            if (v52)
            {
              v53 = sub_1B1122B2C();

              if (v53)
              {

                goto LABEL_35;
              }
            }
          }

          if (qword_1EDAD5D18 != -1)
          {
            swift_once();
          }

          v54 = sub_1B112296C();
          __swift_project_value_buffer(v54, qword_1EDAD5D20);
          sub_1B1099E30(v25, v11, &qword_1EB73A130, &qword_1B1133BF0);
          v55 = sub_1B112293C();
          v56 = sub_1B1122DBC();
          if (os_log_type_enabled(v55, v56))
          {
            v66 = v42;
            v57 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v67 = v65;
            *v57 = 136315138;
            sub_1B1099E30(v11, v8, &qword_1EB73A130, &qword_1B1133BF0);
            if (__swift_getEnumTagSinglePayload(v8, 1, v45) == 1)
            {
              sub_1B1067964(v8, &qword_1EB73A130, &qword_1B1133BF0);
              v58 = 0xE500000000000000;
              v59 = 0x296C696E28;
            }

            else
            {
              v59 = sub_1B112181C();
              v58 = v60;
              (*(*(v45 - 8) + 8))(v8, v45);
            }

            sub_1B1067964(v11, &qword_1EB73A130, &qword_1B1133BF0);
            v61 = sub_1B10784E0(v59, v58, &v67);

            *(v57 + 4) = v61;
            _os_log_impl(&dword_1B1064000, v55, v56, "could not load image, image url has invalid scheme: %s", v57, 0xCu);
            v62 = v65;
            __swift_destroy_boxed_opaque_existential_1(v65);
            MEMORY[0x1B272EDD0](v62, -1, -1);
            MEMORY[0x1B272EDD0](v57, -1, -1);

            if (!v44)
            {
              goto LABEL_38;
            }
          }

          else
          {

            sub_1B1067964(v11, &qword_1EB73A130, &qword_1B1133BF0);
            if (!v44)
            {
LABEL_38:
              v35 = 0;
              goto LABEL_39;
            }
          }

LABEL_35:

          v35 = 1;
LABEL_39:
          sub_1B1067964(v25, &qword_1EB73A130, &qword_1B1133BF0);
          return v35;
        }

        v37 = sub_1B112186C();
        __swift_storeEnumTagSinglePayload(v23, 1, 1, v37);
        sub_1B1067964(v23, &qword_1EB73A130, &qword_1B1133BF0);
      }
    }

    else
    {
      v36 = a1;
    }

    v38 = [v27 urlValue];
    if (v38)
    {
      v39 = v38;
      sub_1B112183C();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v41 = sub_1B112186C();
    __swift_storeEnumTagSinglePayload(v17, v40, 1, v41);
    v20 = v17;
    goto LABEL_15;
  }

  return 1;
}

BOOL PARSessionSwiftInternal.canLoad(_:context:)(void *a1, void *a2)
{
  if ([a1 source] > 1)
  {
    return 0;
  }

  sub_1B106B080(a1, &selRef_imageData);
  OUTLINED_FUNCTION_34_0();
  if (!(!v8 & v7))
  {
    sub_1B106C1F0(v5, v6);
    return 1;
  }

  return (sub_1B108FE88(a1, a2) & 1) != 0 && *(*(v2 + OBJC_IVAR___PARSessionSwiftInternal_client) + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_imageLoader) != 0;
}

uint64_t PARSessionSwiftInternal.ImageLoadError.hashValue.getter()
{
  v1 = *v0;
  sub_1B112314C();
  MEMORY[0x1B272E140](v1);
  return sub_1B112316C();
}

uint64_t PARSessionSwiftInternal.load(_:context:)()
{
  OUTLINED_FUNCTION_9_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1B11228DC();
  v1[5] = v4;
  OUTLINED_FUNCTION_7(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v8 = sub_1B11228AC();
  v1[8] = v8;
  OUTLINED_FUNCTION_7(v8);
  v1[9] = v9;
  v11 = *(v10 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1090828, 0, 0);
}

uint64_t sub_1B1090828()
{
  if ([*(v0 + 16) source] >= 2)
  {
    sub_1B1098E88();
    OUTLINED_FUNCTION_22_0();
    swift_allocError();
    *v14 = 0;
    goto LABEL_22;
  }

  sub_1B106B080(*(v0 + 16), &selRef_imageData);
  OUTLINED_FUNCTION_34_0();
  if (!(!v4 & v3))
  {
    v5 = *(v0 + 24);
    sub_1B106C1F0(v1, v2);
    if (!v5 || ![*(v0 + 24) ignoreImageDataCache])
    {
      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      v17 = *(v0 + 56);
      v18 = *(v0 + 16);

      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_56();

      __asm { BRAA            X2, X16 }
    }
  }

  v6 = *(v0 + 32);
  if ((sub_1B108FE88(*(v0 + 16), *(v0 + 24)) & 1) == 0)
  {
    sub_1B1098E88();
    OUTLINED_FUNCTION_22_0();
    swift_allocError();
    v22 = 1;
LABEL_21:
    *v21 = v22;
LABEL_22:
    swift_willThrow();
    v28 = *(v0 + 80);
    v27 = *(v0 + 88);
    v29 = *(v0 + 56);

    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_56();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(*(*(v0 + 32) + OBJC_IVAR___PARSessionSwiftInternal_client) + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_imageLoader);
  *(v0 + 96) = v7;
  if (!v7)
  {
    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v23 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v23, qword_1EDAD5D20);
    v24 = sub_1B112293C();
    v25 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_60(v25))
    {
      v26 = OUTLINED_FUNCTION_37();
      *v26 = 0;
      _os_log_impl(&dword_1B1064000, v24, v25, "could not load image, image loader is nil", v26, 2u);
      OUTLINED_FUNCTION_2_0();
    }

    sub_1B1098E88();
    OUTLINED_FUNCTION_22_0();
    swift_allocError();
    v22 = 2;
    goto LABEL_21;
  }

  v8 = qword_1EDAD5DF0;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_5_0();
    v59 = *(v0 + 32);
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 56);
  v11 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B11228BC();
  v12 = sub_1B106903C();
  if (v12)
  {
    v13 = v12;
    [v12 timeoutIntervalForRequest];
  }

  v32 = *(v0 + 56);
  v33 = *(v0 + 16);
  v34 = sub_1B11228CC();
  v35 = sub_1B1122E5C();

  if (sub_1B1122EAC())
  {
    v36 = *(v0 + 88);
    v37 = *(v0 + 16);
    v38 = OUTLINED_FUNCTION_40_0();
    v39 = swift_slowAlloc();
    *v38 = 138543362;
    *(v38 + 4) = v37;
    *v39 = v37;
    v40 = v37;
    v41 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v34, v35, v41, "image_load", "image=%{public}@", v38, 0xCu);
    sub_1B1067964(v39, &qword_1EB739E58, qword_1B11345F0);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  v43 = *(v0 + 80);
  v42 = *(v0 + 88);
  v44 = *(v0 + 64);
  v45 = *(v0 + 72);

  v46 = *(v45 + 16);
  v47 = OUTLINED_FUNCTION_32_0();
  v48(v47);
  v49 = sub_1B112291C();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_1B112290C();
  v52 = swift_task_alloc();
  *(v0 + 112) = v52;
  *v52 = v0;
  v52[1] = sub_1B1090C9C;
  v53 = *(v0 + 88);
  v54 = *(v0 + 56);
  v56 = *(v0 + 16);
  v55 = *(v0 + 24);
  OUTLINED_FUNCTION_56();

  return sub_1B1082C2C();
}

uint64_t sub_1B1090C9C()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v4 = v2[14];
  v9 = *v1;
  v3[15] = v5;
  v3[16] = v6;
  v3[17] = v0;

  if (v0)
  {
    v7 = sub_1B1090EF8;
  }

  else
  {
    v7 = sub_1B1090DAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B1090DAC()
{
  if (sub_1B108DD50(v0[15], v0[16]))
  {
    v1 = 0;
  }

  else
  {
    v2 = v0[15];
    v3 = v0[16];
    v1 = sub_1B11218AC();
  }

  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];
  v20 = v0[8];
  v21 = v0[11];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[2];
  [v11 setImageData_];

  v12 = v11;
  sub_1B106C204(v5, v4);
  sub_1B1090FE8(v9, v6, v12);

  (*(v10 + 8))(v9, v19);
  (*(v8 + 8))(v21, v20);
  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[7];

  v16 = OUTLINED_FUNCTION_46_0();

  return v17(v16);
}

uint64_t sub_1B1090EF8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  sub_1B1090FE8(v5, *(v0 + 104), *(v0 + 16));

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = *(v0 + 136);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 56);

  OUTLINED_FUNCTION_13_0();

  return v12();
}

uint64_t sub_1B1090FE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B11228EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B11228AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a3;
  v15 = sub_1B11228CC();
  sub_1B11228FC();
  v25 = sub_1B1122E4C();

  if (sub_1B1122EAC())
  {

    sub_1B112292C();

    if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E69E93E8])
    {
      v16 = 0;
      v17 = 0;
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v8, v4);
      v18 = "image=%{public}@";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2114;
    *(v19 + 4) = v14;
    *v20 = v14;
    v21 = v14;
    v22 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v15, v25, v22, "image_load", v18, v19, 0xCu);
    sub_1B1067964(v20, &qword_1EB739E58, qword_1B11345F0);
    MEMORY[0x1B272EDD0](v20, -1, -1);
    MEMORY[0x1B272EDD0](v19, -1, -1);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B1091340(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1B1091414;

  return PARSessionSwiftInternal.load(_:context:)();
}

uint64_t sub_1B1091414(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;
  OUTLINED_FUNCTION_0_6();
  *v11 = v10;

  v12 = *(v5 + 40);
  if (v3)
  {
    v13 = sub_1B11217EC();

    (v12)[2](v12, 0, v13);
    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 40), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_1B10915E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1B1122C5C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1B1134838;
  v10[5] = v9;
  sub_1B1097920(0, 0, v7, &unk_1B1134848, v10);
}

void sub_1B1091798(id a1, id *a2, const void *a3)
{
  v137 = a2;
  v5 = sub_1B11228AC();
  v140 = *(v5 - 8);
  v6 = *(v140 + 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v139 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v143 = &v125 - v8;
  v9 = sub_1B112279C();
  v135 = *(v9 - 8);
  v136 = v9;
  v10 = v135[8];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B112186C();
  v14 = *(v13 - 1);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  _Block_copy(a3);
  _Block_copy(a3);
  v19 = sub_1B1071938(a1, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
  if (v19)
  {
    v20 = v19;
    v142 = a1;
    v21 = sub_1B1097DD8(v19);
    if (v21)
    {
      v22 = v21;
      v138 = a3;
      a3 = (v20 & 0xC000000000000001);
      v141 = v18;
      if ((v20 & 0xC000000000000001) != 0)
      {
LABEL_77:
        v23 = MEMORY[0x1B272DFA0](0, v20);
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_79:
          v29 = MEMORY[0x1B272DFA0](0, v22);
LABEL_25:
          v30 = v29;

          objc_opt_self();
          v31 = swift_dynamicCastObjCClassUnconditional();
          v32 = sub_1B106B080(v31, &selRef_mapsData);
          v34 = v33;
          v35 = 0;
          if (v33 >> 60 != 15)
          {
            v35 = sub_1B11218AC();
          }

          v143 = v32;
          v36 = GEOCompletionItemFromSerializedAutocompleteEntry();

          if (!v36)
          {
LABEL_84:
            _Block_release(a3);
            _Block_release(a3);
            __break(1u);
            return;
          }

          v37 = objc_opt_self();
          v38 = [v37 sharedService];
          v39 = [v38 defaultTraits];

          if (v39)
          {
            [v39 setWantsBrandIcon_];
          }

          v40 = [v37 sharedService];
          if (v40)
          {
            v41 = v40;
            v42 = sub_1B1098660(0, 0xE000000000000000, v36, 1, v39, v40);

            if (v42)
            {
              v43 = swift_allocObject();
              v44 = v141;
              v45 = v142;
              v43[2] = sub_1B1099EFC;
              v43[3] = v44;
              v43[4] = v45;
              v43[5] = v31;
              v43[6] = v6;
              v150 = sub_1B1099FA8;
              v151 = v43;
              aBlock = MEMORY[0x1E69E9820];
              v147 = 1107296256;
              v148 = sub_1B1093F20;
              v149 = &block_descriptor_145;
              v46 = _Block_copy(&aBlock);
              v47 = v45;

              swift_unknownObjectRetain();
              v48 = v30;
              v49 = v6;
              v50 = v138;
              v51 = v49;

              [v42 submitWithHandler:v46 networkActivity:0];
              sub_1B106C1F0(v143, v34);

              swift_unknownObjectRelease_n();
              swift_unknownObjectRelease();

              _Block_release(v46);

LABEL_73:
              _Block_release(v50);
              v123 = v50;
              goto LABEL_74;
            }
          }

          sub_1B106C1F0(v143, v34);

          swift_unknownObjectRelease();
          goto LABEL_69;
        }

        v23 = *(v20 + 32);
      }

      v24 = v23;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        [v142 copy];
        sub_1B1122F4C();
        swift_unknownObjectRelease();
        sub_1B1066864(0, &qword_1EB739620, 0x1E69C9F00);
        swift_dynamicCast();
        v25 = 0;
        v140 = v145;
        v17 = MEMORY[0x1E69E7CC0];
        v145 = MEMORY[0x1E69E7CC0];
        v143 = v20 & 0xFFFFFFFFFFFFFF8;
        v13 = &qword_1EB739628;
        v6 = 0x1E69C9F08;
        while (v22 != v25)
        {
          if (a3)
          {
            v26 = MEMORY[0x1B272DFA0](v25, v20);
          }

          else
          {
            if (v25 >= *(v143 + 16))
            {
              goto LABEL_76;
            }

            v26 = *(v20 + 8 * v25 + 32);
          }

          v14 = v26;
          v5 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          v12 = [v26 copy];
          sub_1B1122F4C();
          swift_unknownObjectRelease();

          sub_1B1066864(0, &qword_1EB739628, 0x1E69C9F08);
          if ((swift_dynamicCast() & 1) != 0 && (v14 = v144) != 0)
          {
            MEMORY[0x1B272DB50]();
            if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B1122BAC();
            }

            sub_1B1122BCC();
            v17 = v145;
            ++v25;
          }

          else
          {
            ++v25;
          }
        }

        v6 = v140;
        sub_1B10985DC(v17, v140);
        v27 = sub_1B1071938(v6, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
        if (v27)
        {
          v22 = v27;
          v28 = sub_1B1097DD8(v27);
          a3 = v138;
          if (v28)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              goto LABEL_79;
            }

            if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v29 = *(v22 + 32);
              goto LABEL_25;
            }

            __break(1u);
LABEL_81:
            swift_once();
LABEL_55:
            v84 = qword_1EDAD64F0;
            v85 = v143;
            sub_1B112287C();
            sub_1B1122E5C();
            v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
            v86 = swift_allocObject();
            *(v86 + 16) = xmmword_1B1133CF0;
            v87 = [v20 triggerEvent];
            v88 = MEMORY[0x1E69E6870];
            *(v86 + 56) = MEMORY[0x1E69E6810];
            *(v86 + 64) = v88;
            *(v86 + 32) = v87;
            v89 = [v20 v17[306]];
            v90 = MEMORY[0x1E69E7738];
            *(v86 + 96) = MEMORY[0x1E69E76D8];
            *(v86 + 104) = v90;
            *(v86 + 72) = v89;
            v129 = v84;
            sub_1B112284C();

            v136 = sub_1B10700E0();
            v133 = *(v14 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
            v137 = v20;
            v91 = v139;
            v92 = v140;
            v127 = *(v140 + 2);
            v127(v139, v85, v5);
            v93 = v92[80];
            v94 = (v93 + 16) & ~v93;
            v125 = v6 + 7;
            v95 = &v6[v94 + 7] & 0xFFFFFFFFFFFFFFF8;
            v96 = swift_allocObject();
            v126 = *(v92 + 4);
            v126(v96 + v94, v91, v5);
            v97 = (v96 + v95);
            *v97 = sub_1B1099EF0;
            v97[1] = v22;
            *(v96 + ((v95 + 23) & 0xFFFFFFFFFFFFFFF8)) = v135;
            v150 = sub_1B1099FA0;
            v151 = v96;
            aBlock = MEMORY[0x1E69E9820];
            v147 = 1107296256;
            v148 = sub_1B108FBF8;
            v149 = &block_descriptor_131;
            v98 = _Block_copy(&aBlock);

            v99 = [v133 remoteObjectProxyWithErrorHandler_];
            _Block_release(v98);
            sub_1B1122F4C();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
            if (swift_dynamicCast())
            {
              v100 = v22;
              v135 = v145;
              v101 = v139;
              v102 = v134;
              v127(v139, v143, v134);
              v103 = (v93 + 24) & ~v93;
              v104 = &v125[v103] & 0xFFFFFFFFFFFFFFF8;
              v105 = swift_allocObject();
              *(v105 + 16) = v136;
              v126(v105 + v103, v101, v102);
              v106 = (v105 + v104);
              *v106 = sub_1B1099EF0;
              v106[1] = v100;
              v150 = sub_1B1099EF4;
              v151 = v105;
              aBlock = MEMORY[0x1E69E9820];
              v147 = 1107296256;
              v148 = sub_1B1070468;
              v149 = &block_descriptor_138;
              v107 = _Block_copy(&aBlock);

              swift_unknownObjectRetain();

              v108 = v132;
              v109 = v137;
              [v135 request:v132 request:v137 reply:v107];
              _Block_release(v107);
              swift_unknownObjectRelease();
              v50 = v138;
              v110 = v143;
              v111 = v130;
            }

            else
            {
              v109 = v137;
              sub_1B1122E4C();
              v112 = swift_allocObject();
              *(v112 + 16) = xmmword_1B1133BA0;
              *(v112 + 56) = MEMORY[0x1E69E6158];
              *(v112 + 64) = sub_1B106EAF4();
              strcpy((v112 + 32), "casting_failed");
              *(v112 + 47) = -18;
              sub_1B112284C();

              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v114 = Strong;
                v50 = v138;
                _Block_copy(v138);

                v111 = v130;
                (*(v50 + 2))(v50, v130, 0);
                _Block_release(v50);
              }

              else
              {
                v50 = v138;
                v111 = v130;
                (*(v138 + 2))(v138, v130, 0);
              }

              v110 = v143;
              v108 = v132;
            }

            swift_unknownObjectRelease();
            (*(v140 + 1))(v110, v134);

            _Block_release(v50);

            goto LABEL_73;
          }
        }

        else
        {
          v124 = v138;
          _Block_release(v138);
          _Block_release(v124);
          __break(1u);
        }

        _Block_release(a3);
        _Block_release(a3);

        __break(1u);
        goto LABEL_84;
      }

      a3 = v138;
      v18 = v141;
    }

    else
    {
    }

    a1 = v142;
  }

  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  if (!v52)
  {
    v134 = v5;
    v53 = [a1 drilldownMetadata];
    if (v53)
    {

      v54 = [objc_allocWithZone(MEMORY[0x1E69CA450]) init];
      [v54 setCard_];
      v142 = a1;
      v55 = [a1 drilldownMetadata];
      if (v55 && (v56 = v55, v57 = [v55 cardSearchMetadata], v56, v57) && (sub_1B10986E4(v57, &selRef_searchQuery), v58))
      {
        v59 = v54;
        v60 = v18;
      }

      else
      {
        v59 = v54;
        v60 = v18;
      }

      v61 = objc_opt_self();
      v62 = [v142 queryId];
      v63 = sub_1B1122A4C();

      v64 = v59;
      v65 = [v61 searchRequestWithCommand:v59 triggerEvent:14 queryId:v62 queryString:v63];

      if (!v65)
      {
        if (qword_1EDAD5D18 != -1)
        {
          swift_once();
        }

        v115 = sub_1B112296C();
        __swift_project_value_buffer(v115, qword_1EDAD5D20);
        v116 = sub_1B112293C();
        v117 = sub_1B1122DDC();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&dword_1B1064000, v116, v117, "could not create search request for card", v118, 2u);
          MEMORY[0x1B272EDD0](v118, -1, -1);
        }

        goto LABEL_38;
      }

      v66 = v60;
      a1 = v142;
LABEL_52:
      v141 = v66;
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v73 = v72;
        v74 = a1;
        [v73 scale];
        [v65 setScale_];
      }

      v75 = v137;
      v76 = sub_1B1068078();
      v77 = [v76 userAgent];

      sub_1B1122A5C();
      sub_1B11227AC();
      v78 = sub_1B112278C();
      (v135[1])(v12, v136);
      v14 = *(v75 + OBJC_IVAR___PARSessionSwiftInternal_client);
      v132 = sub_1B1068078();
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v80 = swift_allocObject();
      *(v80 + 16) = a3;
      v81 = a1;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_1B1099EFC;
      *(v22 + 24) = v80;
      *(v22 + 32) = v81;
      *(v22 + 40) = v79;
      *(v22 + 48) = v65;
      *(v22 + 56) = v78;
      _Block_copy(a3);
      v82 = v81;

      v83 = v65;
      v138 = a3;
      _Block_copy(a3);
      v130 = v82;
      v142 = v79;

      v20 = v83;

      v131 = v80;

      v17 = &selRef_entityData;
      v135 = [v20 queryId];
      v5 = v134;
      if (qword_1EDAD5DF0 == -1)
      {
        goto LABEL_55;
      }

      goto LABEL_81;
    }

    v67 = [a1 urlValue];
    if (v67)
    {
      v68 = v67;
      sub_1B112183C();

      v69 = objc_opt_self();
      v70 = sub_1B112182C();
      v141 = v18;
      v71 = v70;
      v65 = [v69 cardRequestWithURL:v70 queryId:{objc_msgSend(a1, sel_queryId)}];

      v66 = v141;
      (v14[1])(v17, v13);
      if (v65)
      {
        goto LABEL_52;
      }
    }

    if (qword_1EDAD5D18 != -1)
    {
      swift_once();
    }

    v119 = sub_1B112296C();
    __swift_project_value_buffer(v119, qword_1EDAD5D20);
    v120 = sub_1B112293C();
    v121 = sub_1B1122DDC();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_1B1064000, v120, v121, "could not create card request", v122, 2u);
      MEMORY[0x1B272EDD0](v122, -1, -1);
    }

LABEL_69:
    _Block_release(a3);
    v123 = a3;
LABEL_74:
    _Block_release(v123);
    return;
  }

  (*(a3 + 2))(a3, v52, 0);

LABEL_38:
  _Block_release(a3);

  _Block_release(a3);
}

void PARSessionSwiftInternal.load(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_47_0();
  v6 = sub_1B11228AC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v151 = v8;
  v152 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v149 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v154 = (&v136 - v12);
  v13 = sub_1B112279C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v146 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v20 = (v19 - v18);
  v21 = sub_1B112186C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v29 = (v28 - v27);
  v30 = sub_1B1071938(v4, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
  if (v30)
  {
    v31 = v30;
    v153 = v4;
    v32 = sub_1B1097DD8(v30);
    if (v32)
    {
      v33 = v32;
      v150 = v3;
      v34 = v31 & 0xC000000000000001;
      v148 = a3;
      if ((v31 & 0xC000000000000001) != 0)
      {
LABEL_74:
        v35 = MEMORY[0x1B272DFA0](0, v31);
      }

      else
      {
        if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_76:
          v43 = MEMORY[0x1B272DFA0](0, v33);
LABEL_25:
          v44 = v43;

          objc_opt_self();
          OUTLINED_FUNCTION_22_0();
          v45 = swift_dynamicCastObjCClassUnconditional();
          v46 = sub_1B106B080(v45, &selRef_mapsData);
          v48 = v47;
          v49 = 0;
          OUTLINED_FUNCTION_34_0();
          if (!(!v51 & v50))
          {
            v49 = sub_1B11218AC();
          }

          v52 = GEOCompletionItemFromSerializedAutocompleteEntry();

          if (!v52)
          {
LABEL_81:
            __break(1u);
            return;
          }

          v53 = objc_opt_self();
          v54 = [v53 sharedService];
          v55 = [v54 defaultTraits];

          if (v55)
          {
            [v55 setWantsBrandIcon:1];
          }

          v56 = [v53 sharedService];
          if (v56)
          {
            v57 = v56;
            v58 = sub_1B1098660(0, 0xE000000000000000, v52, 1, v55, v56);

            if (v58)
            {
              v59 = swift_allocObject();
              v60 = v148;
              v59[2] = v34;
              v59[3] = v60;
              v61 = v153;
              v59[4] = v153;
              v59[5] = v45;
              v154 = v46;
              v62 = v152;
              v59[6] = v152;
              v161 = sub_1B1098EE4;
              v162 = v59;
              OUTLINED_FUNCTION_2_5();
              v158 = 1107296256;
              v159 = sub_1B1093F20;
              v160 = &block_descriptor_32;
              v63 = _Block_copy(aBlock);
              swift_unknownObjectRetain();

              v64 = v61;
              v65 = v44;
              v66 = v62;

              [v58 submitWithHandler:v63 networkActivity:0];
              sub_1B106C1F0(v154, v48);

              swift_unknownObjectRelease_n();
              swift_unknownObjectRelease();

              _Block_release(v63);
LABEL_62:
              OUTLINED_FUNCTION_30();
              return;
            }
          }

          sub_1B106C1F0(v46, v48);

          swift_unknownObjectRelease();
LABEL_47:

          goto LABEL_62;
        }

        v35 = *(v31 + 32);
      }

      v36 = v35;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        [v153 copy];
        sub_1B1122F4C();
        swift_unknownObjectRelease();
        sub_1B1066864(0, &qword_1EB739620, 0x1E69C9F00);
        swift_dynamicCast();
        v10 = 0;
        v152 = v156;
        v29 = MEMORY[0x1E69E7CC0];
        v156 = MEMORY[0x1E69E7CC0];
        v154 = (v31 & 0xFFFFFFFFFFFFFF8);
        v21 = &qword_1EB739628;
        v24 = 0x1E69C9F08uLL;
        while (v33 != v10)
        {
          if (v34)
          {
            v37 = MEMORY[0x1B272DFA0](v10, v31);
          }

          else
          {
            if (v10 >= v154[2].isa)
            {
              goto LABEL_73;
            }

            v37 = *(v31 + 8 * v10 + 32);
          }

          v38 = v37;
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v13 = [v37 copy];
          sub_1B1122F4C();
          swift_unknownObjectRelease();

          sub_1B1066864(0, &qword_1EB739628, 0x1E69C9F08);
          if ((OUTLINED_FUNCTION_58() & 1) != 0 && v155)
          {
            MEMORY[0x1B272DB50]();
            if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B1122BAC();
            }

            sub_1B1122BCC();
            v29 = v156;
            v10 = (v10 + 1);
          }

          else
          {
            v10 = (v10 + 1);
          }
        }

        v39 = v29;
        v40 = v152;
        sub_1B10985DC(v39, v152);
        v41 = sub_1B1071938(v40, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
        if (v41)
        {
          v33 = v41;
          v42 = sub_1B1097DD8(v41);
          v34 = v150;
          if (v42)
          {
            if ((v33 & 0xC000000000000001) != 0)
            {
              goto LABEL_76;
            }

            if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v43 = *(v33 + 32);
              goto LABEL_25;
            }

            __break(1u);
LABEL_78:
            OUTLINED_FUNCTION_5_0();
LABEL_56:
            v99 = qword_1EDAD64F0;
            v100 = v154;
            sub_1B112287C();
            sub_1B1122E5C();
            v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
            v101 = swift_allocObject();
            *(v101 + 16) = xmmword_1B1133CF0;
            v102 = [v21 triggerEvent];
            v103 = MEMORY[0x1E69E6870];
            *(v101 + 56) = MEMORY[0x1E69E6810];
            *(v101 + 64) = v103;
            *(v101 + 32) = v102;
            v104 = [v21 *(v33 + 2448)];
            v105 = MEMORY[0x1E69E7738];
            *(v101 + 96) = MEMORY[0x1E69E76D8];
            *(v101 + 104) = v105;
            *(v101 + 72) = v104;
            v140 = v99;
            sub_1B112284C();

            v144 = sub_1B10700E0();
            v141 = *(v24 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
            v106 = v149;
            v107 = v152;
            v138 = *(v10 + 2);
            v138(v149, v100, v152);
            v108 = *(v10 + 80);
            v145 = v21;
            v109 = (v108 + 16) & ~v108;
            v137 = v143 + 7;
            v110 = (v143 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
            v111 = swift_allocObject();
            v143 = *(v10 + 4);
            (v143)(v111 + v109, v106, v107);
            OUTLINED_FUNCTION_10_1((v111 + v110));
            *(v111 + ((v110 + 23) & 0xFFFFFFFFFFFFFFF8)) = v142;
            v161 = sub_1B1098EE0;
            v162 = v111;
            OUTLINED_FUNCTION_2_5();
            v158 = 1107296256;
            OUTLINED_FUNCTION_3();
            v159 = v112;
            v160 = &block_descriptor_20;
            v113 = _Block_copy(aBlock);

            v114 = [v141 remoteObjectProxyWithErrorHandler_];
            _Block_release(v113);
            sub_1B1122F4C();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
            if (OUTLINED_FUNCTION_58())
            {
              v115 = v156;
              v116 = v149;
              v117 = v152;
              v138(v149, v154, v152);
              v118 = (v108 + 24) & ~v108;
              v119 = &v137[v118] & 0xFFFFFFFFFFFFFFF8;
              v120 = swift_allocObject();
              *(v120 + 16) = v144;
              (v143)(v120 + v118, v116, v117);
              OUTLINED_FUNCTION_10_1((v120 + v119));
              v161 = sub_1B1070654;
              v162 = v120;
              OUTLINED_FUNCTION_2_5();
              v158 = 1107296256;
              v159 = sub_1B1070468;
              v160 = &block_descriptor_26;
              v121 = _Block_copy(aBlock);

              swift_unknownObjectRetain();

              v123 = v145;
              v122 = v146;
              [v115 request:v146 request:v145 reply:v121];
              _Block_release(v121);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v151[1](v154, v117);
            }

            else
            {
              v124 = v145;
              v125 = v152;
              sub_1B1122E4C();
              v126 = swift_allocObject();
              *(v126 + 16) = xmmword_1B1133BA0;
              *(v126 + 56) = MEMORY[0x1E69E6158];
              *(v126 + 64) = sub_1B106EAF4();
              strcpy((v126 + 32), "casting_failed");
              *(v126 + 47) = -18;
              v127 = v154;
              sub_1B112284C();

              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
              }

              v129 = v147;
              v150(v147, 0);
              swift_unknownObjectRelease();
              v151[1](v127, v125);
            }

            goto LABEL_62;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_81;
      }

      a3 = v148;
      v3 = v150;
    }

    else
    {
    }

    v4 = v153;
  }

  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (!v67)
  {
    v150 = v3;
    v71 = [v4 drilldownMetadata];
    v148 = a3;
    if (v71)
    {

      v72 = [objc_allocWithZone(MEMORY[0x1E69CA450]) init];
      [v72 setCard_];
      v73 = v4;
      v74 = [v4 drilldownMetadata];
      if (!v74 || (v75 = v74, v76 = [v74 cardSearchMetadata], v75, !v76) || (sub_1B10986E4(v76, &selRef_searchQuery), !v77))
      {
      }

      v78 = objc_opt_self();
      v79 = [v73 queryId];
      OUTLINED_FUNCTION_32_0();
      v80 = sub_1B1122A4C();

      v81 = [v78 searchRequestWithCommand:v72 triggerEvent:14 queryId:v79 queryString:v80];

      if (!v81)
      {
        if (qword_1EDAD5D18 != -1)
        {
          OUTLINED_FUNCTION_0_8();
        }

        v130 = sub_1B112296C();
        OUTLINED_FUNCTION_27_0(v130, qword_1EDAD5D20);
        v154 = sub_1B112293C();
        v131 = sub_1B1122DDC();
        if (os_log_type_enabled(v154, v131))
        {
          v132 = OUTLINED_FUNCTION_37();
          *v132 = 0;
          _os_log_impl(&dword_1B1064000, v154, v131, "could not create search request for card", v132, 2u);
          OUTLINED_FUNCTION_2_0();
        }

        goto LABEL_38;
      }

      v82 = v73;
LABEL_53:
      objc_opt_self();
      v87 = swift_dynamicCastObjCClass();
      if (v87)
      {
        v88 = v87;
        v89 = v82;
        [v88 scale];
        [v81 setScale_];
      }

      v143 = v10;
      v90 = v147;
      v91 = sub_1B1068078();
      v92 = [v91 userAgent];

      sub_1B1122A5C();
      sub_1B11227AC();
      v93 = sub_1B112278C();
      (*(v146 + 1))(v20, v13);
      v24 = *&v90[OBJC_IVAR___PARSessionSwiftInternal_client];
      v146 = sub_1B1068078();
      v94 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_54_0();
      v95 = v82;
      v96 = swift_allocObject();
      v96[2] = v150;
      v96[3] = v148;
      v96[4] = v95;
      v96[5] = v94;
      v96[6] = v81;
      v96[7] = v93;
      swift_retain_n();
      v97 = v95;
      v153 = v94;
      swift_retain_n();
      v98 = v81;
      v147 = v97;
      v21 = v98;
      v33 = &selRef_entityData;
      v142 = [v21 queryId];
      v10 = v151;
      if (qword_1EDAD5DF0 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_78;
    }

    v83 = [v4 urlValue];
    if (v83)
    {
      v84 = v83;
      v82 = v4;
      sub_1B112183C();

      v85 = objc_opt_self();
      v86 = sub_1B112182C();
      v81 = [v85 cardRequestWithURL:v86 queryId:{objc_msgSend(v4, sel_queryId)}];

      (*(v24 + 8))(v29, v21);
      if (v81)
      {
        goto LABEL_53;
      }
    }

    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v133 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v133, qword_1EDAD5D20);
    v55 = sub_1B112293C();
    v134 = sub_1B1122DDC();
    if (os_log_type_enabled(v55, v134))
    {
      v135 = OUTLINED_FUNCTION_37();
      *v135 = 0;
      _os_log_impl(&dword_1B1064000, v55, v134, "could not create card request", v135, 2u);
      OUTLINED_FUNCTION_2_0();
    }

    goto LABEL_47;
  }

  v68 = v67;
  v154 = v4;
  v3(v68, 0);
LABEL_38:
  OUTLINED_FUNCTION_30();
}

uint64_t sub_1B1093C88(unint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a1 && (result = sub_1B1097DD8(a1)) != 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B272DFA0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v14 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v15 = [swift_unknownObjectRetain() encodedData];
    if (v15)
    {
      v16 = sub_1B11218CC();
      v18 = v17;

      v15 = sub_1B11218AC();
      sub_1B106C204(v16, v18);
    }

    [a6 setMapsData_];

    a3(a7, 0);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EDAD5D18 != -1)
    {
      swift_once();
    }

    v19 = sub_1B112296C();
    __swift_project_value_buffer(v19, qword_1EDAD5D20);
    v20 = a2;
    v21 = sub_1B112293C();
    v22 = sub_1B1122DDC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v25 = sub_1B11230FC();
        v27 = v26;
      }

      else
      {
        v27 = 0xE800000000000000;
        v25 = 0x726F727265206F6ELL;
      }

      v28 = sub_1B10784E0(v25, v27, &v29);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1B1064000, v21, v22, "loadCard failed: did not get back a GEOMapItem %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1B272EDD0](v24, -1, -1);
      MEMORY[0x1B272EDD0](v23, -1, -1);
    }

    return a3(a5, a2);
  }
}

uint64_t sub_1B1093F20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A128, &unk_1B1134898);
    v4 = sub_1B1122B8C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1B1093FC0(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a2)
    {
      v16 = objc_allocWithZone(PARTask);
      v17 = a2;
      v18 = [v16 init];
      sub_1B10940B0(v18, v15, a8, v17, a9, a6);
    }
  }

  return a4(a6, a3);
}

void sub_1B10940B0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [a1 setSession_];

  [a4 scale];
  [a3 setScale_];
  [a1 setRequest_];
  [a4 setTask_];
  if (sub_1B1070B54())
  {
    v12 = [objc_opt_self() responseFromReply_];
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v13 = a3;
      sub_1B107B50C(a5);
      v12 = [swift_getObjCClassFromMetadata() responseFromReply_];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [a3 responseClass];
      swift_getObjCClassMetadata();
      v12 = [swift_getObjCClassFromMetadata() responseFromReply_];
      if (!v12)
      {
LABEL_16:
        v19 = 0;
        goto LABEL_19;
      }
    }
  }

  v14 = sub_1B1098750(v12);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14;
  if (sub_1B1097DD8(v14))
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B272DFA0](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_45;
      }

      v16 = *(v15 + 32);
    }

    v17 = v16;

    v18 = [v17 card];

    if (!v18 || !sub_1B10A9060(v18))
    {
      goto LABEL_16;
    }

    sub_1B1066864(0, &qword_1EB739628, 0x1E69C9F08);
    v19 = sub_1B1122B7C();
  }

  else
  {
    v19 = 0;
  }

LABEL_19:
  [a6 setCardSections_];

  if (!v12)
  {
    [a6 setFbr_];
LABEL_39:
    v28 = 0;
    goto LABEL_40;
  }

  v20 = v12;
  v21 = sub_1B1098750(v20);
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = v21;
  if (!sub_1B1097DD8(v21))
  {
    v26 = 0;
    goto LABEL_30;
  }

  if ((v22 & 0xC000000000000001) == 0)
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v22 + 32);
      goto LABEL_25;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = MEMORY[0x1B272DFA0](0, v22);
LABEL_25:
  v24 = v23;

  sub_1B10986E4(v24, &selRef_fbr);
  if (!v25)
  {
LABEL_28:
    v26 = 0;
    goto LABEL_31;
  }

  v26 = sub_1B1122A4C();
LABEL_30:

LABEL_31:
  [a6 setFbr_];

  v12 = v20;
  v27 = sub_1B1098750(v12);
  v28 = v27;
  if (!v27)
  {
LABEL_40:
    [a6 setBackgroundColor_];

    return;
  }

  if (!sub_1B1097DD8(v27))
  {

    goto LABEL_39;
  }

  if ((v28 & 0xC000000000000001) == 0)
  {
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v28 + 32);
      goto LABEL_36;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v29 = MEMORY[0x1B272DFA0](0, v28);
LABEL_36:
  v30 = v29;

  v31 = [v30 card];

  if (v31)
  {
    v28 = [v31 backgroundColor];

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

Swift::Bool __swiftcall PARSessionSwiftInternal.canLoad(_:)(SFMoreResults a1)
{
  objc_opt_self();
  OUTLINED_FUNCTION_16_0();
  return swift_dynamicCastObjCClass() != 0;
}

void sub_1B1094520(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = sub_1B112186C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = objc_opt_self();
    _Block_copy(a3);
    v14 = a1;
    v15 = [v12 moreResultsURL];
    sub_1B112183C();

    v16 = sub_1B112182C();
    (*(v7 + 8))(v10, v6);
    v17 = [v13 moreResultsRequestWithURL_];

    if (v17)
    {
      v18 = v17;
      [v12 scale];
      [v18 setScale_];
      [v18 setQueryId_];

      v19 = *(a2 + OBJC_IVAR___PARSessionSwiftInternal_client);
      v20 = sub_1B1068078();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      _Block_copy(a3);
      v21 = v18;

      sub_1B109CD98();
    }

    else
    {
    }

    _Block_release(a3);
    _Block_release(a3);
  }

  else
  {
    a3[2](a3, 0, 0);

    _Block_release(a3);
  }
}

void PARSessionSwiftInternal.load(_:completionHandler:)()
{
  OUTLINED_FUNCTION_57();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1B112186C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = objc_opt_self();
    v18 = v5;
    v19 = [v16 moreResultsURL];
    sub_1B112183C();

    v20 = sub_1B112182C();
    (*(v9 + 8))(v14, v6);
    v21 = [v17 moreResultsRequestWithURL_];

    if (v21)
    {
      v22 = v21;
      [v16 scale];
      [v22 setScale_];
      [v22 setQueryId_];

      v23 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal_client);
      v24 = sub_1B1068078();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = v22;

      sub_1B109D408();
    }

    else
    {
    }
  }

  else
  {
    v3(0, 0);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B1094A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  OUTLINED_FUNCTION_48_0();
  v11 = v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v7(Strong, v8);
  }

  v13 = Strong;
  if (!v11)
  {

    Strong = 0;
    return v7(Strong, v8);
  }

  v14 = objc_allocWithZone(PARTask);
  v15 = v11;
  v16 = [v14 init];
  v17 = swift_unknownObjectWeakLoadStrong();
  [v16 setSession_];

  [v15 scale];
  [a7 setScale_];
  [v16 setRequest_];
  [v15 setTask_];
  v18 = [objc_opt_self() responseFromReply_];
  if (!v18)
  {
LABEL_9:

    v22 = 0;
    goto LABEL_10;
  }

  v19 = v18;
  v20 = [v18 results];
  if (!v20)
  {

    goto LABEL_9;
  }

  v21 = v20;
  sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
  v22 = sub_1B1122B8C();

LABEL_10:
  v7(v22, v8);
}