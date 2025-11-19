uint64_t sub_2437DC2D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2437DC2E4(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_2437B7168(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_5()
{
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_22_4()
{

  JUMPOUT(0x245D405B0);
}

void OUTLINED_FUNCTION_23_2()
{

  JUMPOUT(0x245D405B0);
}

void OUTLINED_FUNCTION_26_1()
{

  JUMPOUT(0x245D405B0);
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_50_0()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[25];
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v4;
  *(v3 + 128) = a1;
  return v3 + 128;
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return swift_slowAlloc();
}

uint64_t dispatch thunk of MessageSender.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = (OUTLINED_FUNCTION_1_11(a1, a2, a3, a4, a5, a6, a7, a8) + 8);
  v15 = *v14 + **v14;
  v9 = (*v14)[1];
  v10 = swift_task_alloc();
  *(v8 + 16) = v10;
  *v10 = v8;
  v11 = OUTLINED_FUNCTION_0_10(v10);

  return v12(v11);
}

{
  v14 = (OUTLINED_FUNCTION_1_11(a1, a2, a3, a4, a5, a6, a7, a8) + 16);
  v15 = *v14 + **v14;
  v9 = (*v14)[1];
  v10 = swift_task_alloc();
  *(v8 + 16) = v10;
  *v10 = v8;
  v11 = OUTLINED_FUNCTION_0_10(v10);

  return v12(v11);
}

uint64_t sub_2437DC96C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Credential.Builder.__allocating_init(tenantName:requestorID:accessToken:)()
{
  OUTLINED_FUNCTION_7_6();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Credential.Builder.init(tenantName:requestorID:accessToken:)();
  return v3;
}

void *Credential.Builder.init(tenantName:requestorID:accessToken:)()
{
  OUTLINED_FUNCTION_7_6();
  v7 = sub_2437EB384();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v1[2] = v6;
  v1[3] = v5;
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v4;
  v1[5] = v3;
  sub_2437EB364();
  (*(v10 + 32))(v1 + OBJC_IVAR____TtCV18CloudAssetsCommons10Credential7Builder_expirationDate, v15, v7);
  return v1;
}

uint64_t Credential.Builder.setExpirationDate(_:)()
{
  OUTLINED_FUNCTION_13_6();
  v0 = sub_2437EB384();
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_141();
  v4(v3);
  swift_endAccess();
}

uint64_t Credential.Builder.build()@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 3);
  *a1 = *(v1 + 2);
  *(a1 + 1) = v3;
  v4 = *(v1 + 5);
  *(a1 + 2) = *(v1 + 4);
  *(a1 + 3) = v4;
  v5 = *(v1 + 7);
  *(a1 + 4) = *(v1 + 6);
  *(a1 + 5) = v5;
  v6 = OBJC_IVAR____TtCV18CloudAssetsCommons10Credential7Builder_expirationDate;
  swift_beginAccess();
  v7 = *(type metadata accessor for Credential(0) + 28);
  v8 = sub_2437EB384();
  OUTLINED_FUNCTION_1_0(v8);
  (*(v9 + 16))(&a1[v7], &v1[v6]);
}

char *Credential.Builder.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtCV18CloudAssetsCommons10Credential7Builder_expirationDate;
  v5 = sub_2437EB384();
  OUTLINED_FUNCTION_1_0(v5);
  (*(v6 + 8))(&v0[v4]);
  return v0;
}

uint64_t Credential.Builder.__deallocating_deinit()
{
  Credential.Builder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2437DCE3C(uint64_t a1)
{
  sub_2437DD4FC();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437DCE78(uint64_t a1)
{
  sub_2437DD4FC();

  return MEMORY[0x2821FE720](a1);
}

uint64_t Credential.tenantName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22();
}

uint64_t Credential.requestorID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_22();
}

uint64_t Credential.accessToken.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_22();
}

uint64_t Credential.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_10_6();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v2, v5);
}

uint64_t Credential.init(accessToken:expiryDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x616C506572616853;
  a3[1] = 0xE900000000000079;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  a3[4] = a1;
  a3[5] = a2;
  v3 = OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_141();

  return v7(v6);
}

uint64_t Credential.init(protobufRepresentation:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2437EB3F4();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = a1[1];
  *a2 = *a1;
  a2[1] = v13;
  v14 = a1[3];
  a2[2] = a1[2];
  a2[3] = v14;
  v15 = a1[5];
  a2[4] = a1[4];
  a2[5] = v15;

  CloudAssets_Credential.expirationDate.getter(v12);
  v16 = a2 + *(type metadata accessor for Credential(0) + 28);
  sub_2437EB3C4();
  sub_2437DD13C(a1);
  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_2437DD13C(uint64_t a1)
{
  v2 = type metadata accessor for CloudAssets_Credential(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Credential.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v3 = sub_2437EB3F4();
  v40 = OUTLINED_FUNCTION_0(v3);
  v41 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15();
  v39 = v8 - v7;
  v9 = sub_2437EB444();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_15();
  v11 = type metadata accessor for CloudAssets_Credential(0);
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v17 = (v16 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BE0, &qword_2437EF980);
  v19 = OUTLINED_FUNCTION_0(v18);
  v42 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437DD4FC();
  v26 = v49;
  sub_2437EBAF4();
  if (v26)
  {
    v37 = a1;
  }

  else
  {
    v49 = a1;
    v27 = v42;
    v28 = v43;
    sub_2437BAD3C();
    sub_2437EB954();
    v47 = v48;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_2437EB434();
    OUTLINED_FUNCTION_5_6();
    sub_2437DDB60(v29, v30);
    sub_2437EB514();
    v32 = v17[1];
    *v28 = *v17;
    v28[1] = v32;
    v33 = v17[3];
    v28[2] = v17[2];
    v28[3] = v33;
    v34 = v17[5];
    v28[4] = v17[4];
    v28[5] = v34;

    v35 = v39;
    CloudAssets_Credential.expirationDate.getter(v39);
    v36 = v28 + *(type metadata accessor for Credential(0) + 28);
    sub_2437EB3C4();
    (*(v41 + 8))(v35, v40);
    sub_2437DD13C(v17);
    (*(v27 + 8))(v24, v18);
    v37 = v49;
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_2437DD4FC()
{
  result = qword_27ED86BE8;
  if (!qword_27ED86BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86BE8);
  }

  return result;
}

uint64_t Credential.protobufRepresentation()@<X0>(void *a1@<X8>)
{
  v3 = sub_2437EB384();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = sub_2437EB3F4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_15();
  CloudAssets_Credential.init()(a1);
  v15 = *v1;
  v14 = *(v1 + 1);
  v16 = a1[1];

  *a1 = v15;
  a1[1] = v14;
  v18 = *(v1 + 2);
  v17 = *(v1 + 3);
  v19 = a1[3];

  a1[2] = v18;
  a1[3] = v17;
  v21 = *(v1 + 4);
  v20 = *(v1 + 5);
  v22 = a1[5];

  a1[4] = v21;
  a1[5] = v20;
  v23 = type metadata accessor for Credential(0);
  (*(v6 + 16))(v11, &v1[*(v23 + 28)], v3);
  sub_2437EB3D4();
  return CloudAssets_Credential.expirationDate.setter();
}

uint64_t Credential.encode(to:)(void *a1)
{
  v2 = v1;
  v48 = sub_2437EB384();
  v4 = OUTLINED_FUNCTION_0(v48);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = sub_2437EB3F4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_15();
  v47 = type metadata accessor for CloudAssets_Credential(0);
  v14 = OUTLINED_FUNCTION_1_0(v47);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  v19 = (v18 - v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BF0, &qword_2437EF988);
  v21 = OUTLINED_FUNCTION_0(v20);
  v49 = v22;
  v50 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v47 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437DD4FC();
  sub_2437EBB04();
  CloudAssets_Credential.init()(v19);
  v29 = *v2;
  v28 = *(v2 + 1);
  v30 = v19[1];

  *v19 = v29;
  v19[1] = v28;
  v32 = *(v2 + 2);
  v31 = *(v2 + 3);
  v33 = v19[3];

  v19[2] = v32;
  v19[3] = v31;
  v35 = *(v2 + 4);
  v34 = *(v2 + 5);
  v36 = v19[5];

  v19[4] = v35;
  v19[5] = v34;
  v37 = type metadata accessor for Credential(0);
  (*(v6 + 16))(v11, &v2[*(v37 + 28)], v48);
  sub_2437EB3D4();
  CloudAssets_Credential.expirationDate.setter();
  OUTLINED_FUNCTION_5_6();
  sub_2437DDB60(v38, v39);
  v40 = v53;
  v41 = sub_2437EB504();
  if (v40)
  {
    (*(v49 + 8))(v26, v50);
    return sub_2437DD13C(v19);
  }

  else
  {
    v44 = v41;
    v45 = v42;
    sub_2437DD13C(v19);
    v51 = v44;
    v52 = v45;
    sub_2437BA058();
    v46 = v50;
    sub_2437EB9D4();
    sub_2437B7168(v51, v52);
    return (*(v49 + 8))(v26, v46);
  }
}

uint64_t static Credential.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Credential(0) + 28);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t Credential.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2437EB724();
  v3 = v0[2];
  v4 = v0[3];
  sub_2437EB724();
  v5 = v0[4];
  v6 = v0[5];
  sub_2437EB724();
  v7 = *(type metadata accessor for Credential(0) + 28);
  sub_2437EB384();
  OUTLINED_FUNCTION_1_12();
  sub_2437DDB60(v8, v9);
  return sub_2437EB6D4();
}

uint64_t sub_2437DDB60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Credential.hashValue.getter()
{
  sub_2437EBA94();
  v1 = *v0;
  v2 = v0[1];
  sub_2437EB724();
  v3 = v0[2];
  v4 = v0[3];
  sub_2437EB724();
  v5 = v0[4];
  v6 = v0[5];
  sub_2437EB724();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_1_12();
  sub_2437DDB60(v7, v8);
  OUTLINED_FUNCTION_12_5();
  return sub_2437EBAD4();
}

uint64_t sub_2437DDC44(uint64_t a1, uint64_t a2)
{
  sub_2437EBA94();
  v4 = *v2;
  v5 = v2[1];
  sub_2437EB724();
  v6 = v2[2];
  v7 = v2[3];
  sub_2437EB724();
  v8 = v2[4];
  v9 = v2[5];
  sub_2437EB724();
  v10 = *(a2 + 28);
  sub_2437EB384();
  OUTLINED_FUNCTION_1_12();
  sub_2437DDB60(v11, v12);
  OUTLINED_FUNCTION_12_5();
  return sub_2437EBAD4();
}

unint64_t sub_2437DDCE4()
{
  result = qword_27ED86C00;
  if (!qword_27ED86C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86C00);
  }

  return result;
}

unint64_t sub_2437DDD3C()
{
  result = qword_27ED86C08;
  if (!qword_27ED86C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86C08);
  }

  return result;
}

unint64_t sub_2437DDD94()
{
  result = qword_27ED86C10;
  if (!qword_27ED86C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86C10);
  }

  return result;
}

uint64_t sub_2437DDE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2437EB384();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2437DDF14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2437EB384();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2437DDF94()
{
  result = sub_2437EB384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2437DE040()
{
  result = sub_2437EB384();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Credential.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437DE1A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  v0 = *(type metadata accessor for Credential(0) + 28);

  return sub_2437EB384();
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return sub_2437EB6D4();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return swift_beginAccess();
}

uint64_t sub_2437DE29C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_17_6() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_17_6();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437DE34C(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_2437DE378()
{
  sub_2437EBA94();
  sub_2437B4AE8(v2, *v0);
  return sub_2437EBAD4();
}

uint64_t sub_2437DE3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437DE29C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437DE400()
{
  OUTLINED_FUNCTION_2_8();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437DE440()
{
  OUTLINED_FUNCTION_2_8();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437DE480()
{
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437DE4C0()
{
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437DE500()
{
  sub_2437EBA94();
  sub_2437B4C04();
  return sub_2437EBAD4();
}

uint64_t sub_2437DE53C()
{
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437DE57C()
{
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t XPCResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v67 = a2;
  OUTLINED_FUNCTION_10_7();
  v6 = type metadata accessor for XPCResult.FailureCodingKeys();
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_6();
  v64 = v7;
  v65 = v6;
  v8 = sub_2437EB9F4();
  v9 = OUTLINED_FUNCTION_0(v8);
  v62 = v10;
  v63 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_2();
  v58 = v14;
  OUTLINED_FUNCTION_10_7();
  v15 = type metadata accessor for XPCResult.SuccessCodingKeys();
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_6();
  v57 = v15;
  v55[1] = v16;
  v17 = sub_2437EB9F4();
  v18 = OUTLINED_FUNCTION_0(v17);
  v60 = v19;
  v61 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_2();
  v56 = v23;
  OUTLINED_FUNCTION_4_7();
  v59 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  v55[0] = v29 - v28;
  OUTLINED_FUNCTION_4_7();
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_10_7();
  v66 = v5;
  type metadata accessor for XPCResult.CodingKeys();
  OUTLINED_FUNCTION_2_8();
  swift_getWitnessTable();
  v38 = sub_2437EB9F4();
  v39 = OUTLINED_FUNCTION_0(v38);
  v68 = v40;
  v69 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v43);
  v45 = v55 - v44;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437EBB04();
  (*(v31 + 16))(v37, v70, v67);
  if (__swift_getEnumTagSinglePayload(v37, 1, v4) == 1)
  {
    v72 = 1;
    v47 = v58;
    v48 = v69;
    sub_2437EB994();
    (*(v62 + 8))(v47, v63);
    return (*(v68 + 8))(v45, v48);
  }

  else
  {
    v50 = v59;
    v51 = v55[0];
    (*(v59 + 32))(v55[0], v37, v4);
    v71 = 0;
    v52 = v56;
    v53 = v69;
    sub_2437EB994();
    v54 = v61;
    sub_2437EB9D4();
    (*(v60 + 8))(v52, v54);
    (*(v50 + 8))(v51, v4);
    return (*(v68 + 8))(v45, v53);
  }
}

uint64_t XPCResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v83 = a4;
  v7 = type metadata accessor for XPCResult.FailureCodingKeys();
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_6();
  v81 = v8;
  v82 = v7;
  v75 = sub_2437EB984();
  OUTLINED_FUNCTION_0(v75);
  v74 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_2();
  v80 = v13;
  OUTLINED_FUNCTION_12_6();
  v14 = type metadata accessor for XPCResult.SuccessCodingKeys();
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_6();
  v77 = v15;
  v78 = v14;
  v73 = sub_2437EB984();
  OUTLINED_FUNCTION_0(v73);
  v72 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_2();
  v79 = v20;
  OUTLINED_FUNCTION_12_6();
  type metadata accessor for XPCResult.CodingKeys();
  OUTLINED_FUNCTION_2_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_7();
  v86 = sub_2437EB984();
  OUTLINED_FUNCTION_0(v86);
  v88 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v24);
  v26 = &v68 - v25;
  v87 = a2;
  v76 = a3;
  v27 = type metadata accessor for XPCResult();
  v28 = OUTLINED_FUNCTION_0(v27);
  v84 = v29;
  v85 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v28);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v68 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v93;
  sub_2437EBAF4();
  v39 = a1;
  if (!v38)
  {
    v69 = v34;
    v70 = v36;
    v41 = v85;
    v40 = v86;
    v42 = v87;
    v93 = v39;
    v71 = v26;
    *&v89 = sub_2437EB974();
    OUTLINED_FUNCTION_13_7();
    sub_2437EB754();
    swift_getWitnessTable();
    *&v91 = sub_2437EB884();
    *(&v91 + 1) = v43;
    *&v92 = v44;
    *(&v92 + 1) = v45;
    OUTLINED_FUNCTION_13_7();
    sub_2437EB874();
    swift_getWitnessTable();
    sub_2437EB824();
    v46 = v89;
    if (v89 == 2 || (v68 = v91, v89 = v91, v90 = v92, (sub_2437EB834() & 1) == 0))
    {
      v54 = sub_2437EB8C4();
      swift_allocError();
      v56 = v55;
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
      *v56 = v41;
      v58 = v71;
      sub_2437EB914();
      sub_2437EB8B4();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
      swift_willThrow();
      (*(v88 + 8))(v58, v40);
      swift_unknownObjectRelease();
    }

    else if (v46)
    {
      LOBYTE(v89) = 1;
      v47 = v80;
      OUTLINED_FUNCTION_18_4();
      v48 = v42;
      v49 = v83;
      v50 = v84;
      (*(v74 + 8))(v47, v75);
      v51 = OUTLINED_FUNCTION_8_5();
      v52(v51);
      OUTLINED_FUNCTION_11_3();
      swift_unknownObjectRelease();
      v53 = v70;
      __swift_storeEnumTagSinglePayload(v70, 1, 1, v48);
      (*(v50 + 32))(v49, v53, v41);
    }

    else
    {
      LOBYTE(v89) = 0;
      OUTLINED_FUNCTION_18_4();
      v60 = v84;
      sub_2437EB954();
      v61 = OUTLINED_FUNCTION_16_6(&v94);
      v62(v61);
      v63 = OUTLINED_FUNCTION_8_5();
      v64(v63);
      OUTLINED_FUNCTION_11_3();
      swift_unknownObjectRelease();
      v65 = v69;
      __swift_storeEnumTagSinglePayload(v69, 0, 1, v42);
      v66 = *(v60 + 32);
      v67 = v70;
      v66(v70, v65, v41);
      v66(v83, v67, v41);
    }

    v39 = v93;
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t static XPCResult<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  OUTLINED_FUNCTION_4_7();
  v43 = v9;
  v44 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_15();
  v40 = (v13 - v12);
  v14 = type metadata accessor for XPCResult();
  OUTLINED_FUNCTION_0(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20]();
  v20 = &v39 - v19;
  OUTLINED_FUNCTION_13_7();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0(TupleTypeMetadata2);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3();
  v26 = MEMORY[0x28223BE20]();
  v28 = &v39 - v27;
  v29 = *(v26 + 48);
  v42 = v16;
  v30 = *(v16 + 16);
  v30(&v39 - v27, a1, v14);
  v30(&v28[v29], v44, v14);
  OUTLINED_FUNCTION_19_5(v28);
  if (v32)
  {
    v31 = 1;
    OUTLINED_FUNCTION_19_5(&v28[v29]);
    if (v32)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30(v20, v28, v14);
    OUTLINED_FUNCTION_19_5(&v28[v29]);
    if (!v32)
    {
      v33 = v43;
      v34 = &v28[v29];
      v35 = v40;
      (*(v43 + 32))(v40, v34, a3);
      v36 = *(v41 + 8);
      v31 = sub_2437EB6E4();
      v37 = *(v33 + 8);
      v37(v35, a3);
      v37(v20, a3);
LABEL_10:
      v23 = v42;
      goto LABEL_11;
    }

    (*(v43 + 8))(v20, a3);
  }

  v31 = 0;
  v14 = TupleTypeMetadata2;
LABEL_11:
  (*(v23 + 8))(v28, v14);
  return v31 & 1;
}

uint64_t XPCResult<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    return MEMORY[0x245D40160](1);
  }

  (*(v3 + 32))(v7, v11, v2);
  MEMORY[0x245D40160](0);
  sub_2437EB6D4();
  return (*(v3 + 8))(v7, v2);
}

uint64_t XPCResult<>.hashValue.getter(uint64_t a1)
{
  sub_2437EBA94();
  XPCResult<>.hash(into:)(v3, a1);
  return sub_2437EBAD4();
}

uint64_t sub_2437DF5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2437EBA94();
  XPCResult<>.hash(into:)(v6, a2);
  return sub_2437EBAD4();
}

uint64_t sub_2437DF690(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2437DF6EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2437DF874(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x2437DFA94);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
        }
      }

      return;
  }
}

_BYTE *sub_2437DFAC4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x2437DFB90);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2437DFBB8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437DFC54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_2437EBA14();
}

uint64_t OUTLINED_FUNCTION_18_4()
{
  v2 = *(v0 - 304);

  return sub_2437EB904();
}

uint64_t static UploadRequestMessage.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  v5 = *a2;

  v7 = sub_2437DFF24(v6, v3);

  return v7 & 1;
}

uint64_t sub_2437DFF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadRequest();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_2437E1604(v14, v11);
        sub_2437E1604(v15, v8);
        sub_2437E1668(&qword_27ED86610);
        v17 = sub_2437EB6E4();
        sub_2437B83E0(v8);
        sub_2437B83E0(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2437E00D4()
{
  sub_2437E0774();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E010C()
{
  sub_2437E0774();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E0144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165526863746162 && a2 == 0xED00007374736575;
  if (v4 || (sub_2437EBA14() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65526D6165727473 && a2 == 0xEE00737473657571)
  {

    return 1;
  }

  else
  {
    v7 = sub_2437EBA14();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437E021C(char a1)
{
  if (a1)
  {
    return 0x65526D6165727473;
  }

  else
  {
    return 0x7165526863746162;
  }
}

uint64_t sub_2437E0274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437E0144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437E029C()
{
  sub_2437E06CC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E02D4()
{
  sub_2437E06CC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E030C()
{
  sub_2437E0720();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E0344()
{
  sub_2437E0720();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t UploadRequestMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C20, &qword_2437F0010);
  v4 = OUTLINED_FUNCTION_0(v3);
  v38 = v5;
  v39 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C28, &qword_2437F0018);
  v12 = OUTLINED_FUNCTION_0(v11);
  v36 = v13;
  v37 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C30, &qword_2437F0020);
  OUTLINED_FUNCTION_0(v41);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  v40 = *v1;
  v26 = *(v1 + 8);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E06CC();
  sub_2437EBB04();
  if (v26)
  {
    LOBYTE(v42) = 1;
    sub_2437E0720();
    OUTLINED_FUNCTION_17_1();
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C38, &qword_2437F0028);
    OUTLINED_FUNCTION_2_9();
    sub_2437E0F84(v28, v29);
    v30 = v39;
    sub_2437EB9D4();
    (*(v38 + 8))(v10, v30);
  }

  else
  {
    LOBYTE(v42) = 0;
    sub_2437E0774();
    OUTLINED_FUNCTION_17_1();
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C38, &qword_2437F0028);
    OUTLINED_FUNCTION_2_9();
    sub_2437E0F84(v31, v32);
    v33 = v37;
    sub_2437EB9D4();
    (*(v36 + 8))(v18, v33);
  }

  return (*(v20 + 8))(v25, v26);
}

unint64_t sub_2437E06CC()
{
  result = qword_27ED8F0F0;
  if (!qword_27ED8F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8F0F0);
  }

  return result;
}

unint64_t sub_2437E0720()
{
  result = qword_27ED8F0F8;
  if (!qword_27ED8F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8F0F8);
  }

  return result;
}

unint64_t sub_2437E0774()
{
  result = qword_27ED8F100[0];
  if (!qword_27ED8F100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F100);
  }

  return result;
}

uint64_t UploadRequestMessage.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x245D40160](*(v1 + 8));

  return sub_2437E0E9C(a1, v3);
}

uint64_t UploadRequestMessage.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2437EBA94();
  MEMORY[0x245D40160](v2);
  sub_2437E0E9C(v4, v1);
  return sub_2437EBAD4();
}

uint64_t UploadRequestMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C48, &qword_2437F0030);
  v56 = OUTLINED_FUNCTION_0(v3);
  v57 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C50, &qword_2437F0038);
  OUTLINED_FUNCTION_0(v8);
  v55 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  v14 = v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C58, &unk_2437F0040);
  OUTLINED_FUNCTION_0(v15);
  v58 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  v21 = v54 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E06CC();
  v23 = v60;
  sub_2437EBAF4();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54[2] = v8;
  v54[3] = v14;
  v60 = a1;
  v24 = v59;
  v25 = sub_2437EB974();
  result = sub_2437B5F3C(v25, 0);
  if (v28 == v29 >> 1)
  {
    v30 = v21;
LABEL_9:
    v39 = sub_2437EB8C4();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
    *v41 = &type metadata for UploadRequestMessage;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v30, v15);
    a1 = v60;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54[1] = 0;
  if (v28 >= (v29 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v27 + v28);
    sub_2437B5F84(v28 + 1, v29 >> 1, result, v27, v28, v29);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 != v35 >> 1)
    {
      v30 = v21;
      goto LABEL_9;
    }

    v36 = v31;
    if (v31)
    {
      LODWORD(v55) = v31;
      LOBYTE(v61) = 1;
      sub_2437E0720();
      OUTLINED_FUNCTION_13_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C38, &qword_2437F0028);
      OUTLINED_FUNCTION_1_14();
      sub_2437E0F84(v37, v38);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v45 = OUTLINED_FUNCTION_11_4();
      v46(v45);
      v47 = OUTLINED_FUNCTION_3_7();
      v48(v47);
      v49 = v61;
      v36 = v55;
    }

    else
    {
      LOBYTE(v61) = 0;
      sub_2437E0774();
      OUTLINED_FUNCTION_13_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C38, &qword_2437F0028);
      OUTLINED_FUNCTION_1_14();
      sub_2437E0F84(v43, v44);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v50 = OUTLINED_FUNCTION_10_8();
      v51(v50);
      v52 = OUTLINED_FUNCTION_3_7();
      v53(v52);
      v49 = v61;
      v24 = v59;
    }

    *v24 = v49;
    *(v24 + 8) = v36;
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return result;
}

uint64_t sub_2437E0E0C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2437EBA94();
  MEMORY[0x245D40160](v2);
  sub_2437E0E9C(v4, v1);
  return sub_2437EBAD4();
}

uint64_t sub_2437E0E9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for AssetUploadRequest() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_2437E1668(&qword_27ED86608);
    do
    {
      result = sub_2437EB6D4();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2437E0F84(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86C38, &qword_2437F0028);
    sub_2437E1668(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2437E1010()
{
  result = qword_27ED86C68;
  if (!qword_27ED86C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86C68);
  }

  return result;
}

uint64_t sub_2437E1070(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_2437E10B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *sub_2437E110C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x2437E11D8);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2437E121C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437E12B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437E12F0()
{
  result = qword_27ED8F410[0];
  if (!qword_27ED8F410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F410);
  }

  return result;
}

unint64_t sub_2437E1348()
{
  result = qword_27ED8F620[0];
  if (!qword_27ED8F620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F620);
  }

  return result;
}

unint64_t sub_2437E13A0()
{
  result = qword_27ED8F830[0];
  if (!qword_27ED8F830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F830);
  }

  return result;
}

unint64_t sub_2437E13F8()
{
  result = qword_27ED8F940;
  if (!qword_27ED8F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8F940);
  }

  return result;
}

unint64_t sub_2437E1450()
{
  result = qword_27ED8F948[0];
  if (!qword_27ED8F948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F948);
  }

  return result;
}

unint64_t sub_2437E14A8()
{
  result = qword_27ED8F9D0;
  if (!qword_27ED8F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8F9D0);
  }

  return result;
}

unint64_t sub_2437E1500()
{
  result = qword_27ED8F9D8[0];
  if (!qword_27ED8F9D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8F9D8);
  }

  return result;
}

unint64_t sub_2437E1558()
{
  result = qword_27ED8FA60;
  if (!qword_27ED8FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FA60);
  }

  return result;
}

unint64_t sub_2437E15B0()
{
  result = qword_27ED8FA68[0];
  if (!qword_27ED8FA68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8FA68);
  }

  return result;
}

uint64_t sub_2437E1604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E1668(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetUploadRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_8()
{
  v2 = *(v0 - 152);

  return sub_2437EB904();
}

uint64_t sub_2437E1738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646C656979 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6873696E6966 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_5() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2437E1818(char a1)
{
  if (!a1)
  {
    return 0x646C656979;
  }

  if (a1 == 1)
  {
    return 0x6873696E6966;
  }

  return 0x726F727265;
}

uint64_t sub_2437E186C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437E1738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437E189C()
{
  sub_2437E1DEC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E18D4()
{
  sub_2437E1DEC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E1914()
{
  sub_2437E1E40();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E194C()
{
  sub_2437E1E40();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E1984()
{
  sub_2437E1E94();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E19BC()
{
  sub_2437E1E94();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E19F4()
{
  sub_2437E1EE8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E1A2C()
{
  sub_2437E1EE8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t XPCAsyncSequenceResponse.Event.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C70, &qword_2437F0520);
  v5 = OUTLINED_FUNCTION_0(v4);
  v42 = v6;
  v43 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  v41 = &v36 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C78, &qword_2437F0528);
  OUTLINED_FUNCTION_0(v40);
  v38 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C80, &qword_2437F0530);
  OUTLINED_FUNCTION_0(v39);
  v37 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C88, &qword_2437F0538);
  OUTLINED_FUNCTION_0(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v28);
  v30 = &v36 - v29;
  v31 = v2[1];
  v36 = *v2;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E1DEC();
  sub_2437EBB04();
  if (v31 >> 60 == 11)
  {
    LOBYTE(v44) = 2;
    sub_2437E1E40();
    v33 = v41;
    OUTLINED_FUNCTION_9_7();
    (*(v42 + 8))(v33, v43);
    return (*(v25 + 8))(v30, v23);
  }

  if (v31 >> 60 == 15)
  {
    LOBYTE(v44) = 1;
    sub_2437E1E94();
    OUTLINED_FUNCTION_9_7();
    (*(v38 + 8))(v16, v40);
    return (*(v25 + 8))(v30, v23);
  }

  LOBYTE(v44) = 0;
  sub_2437E1EE8();
  OUTLINED_FUNCTION_9_7();
  v44 = v36;
  v45 = v31;
  sub_2437BA058();
  v35 = v39;
  sub_2437EB9D4();
  (*(v37 + 8))(v22, v35);
  return (*(v25 + 8))(v30, v23);
}

unint64_t sub_2437E1DEC()
{
  result = qword_27ED8FAF0;
  if (!qword_27ED8FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FAF0);
  }

  return result;
}

unint64_t sub_2437E1E40()
{
  result = qword_27ED8FAF8;
  if (!qword_27ED8FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FAF8);
  }

  return result;
}

unint64_t sub_2437E1E94()
{
  result = qword_27ED8FB00;
  if (!qword_27ED8FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FB00);
  }

  return result;
}

unint64_t sub_2437E1EE8()
{
  result = qword_27ED8FB08;
  if (!qword_27ED8FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8FB08);
  }

  return result;
}

uint64_t XPCAsyncSequenceResponse.Event.init(from:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v68 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C90, &qword_2437F0540);
  OUTLINED_FUNCTION_0(v72);
  v69 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v71 = v62 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86C98, &qword_2437F0548);
  OUTLINED_FUNCTION_0(v67);
  v65 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  v13 = v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CA0, &qword_2437F0550);
  OUTLINED_FUNCTION_0(v14);
  v66 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v18);
  v20 = v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CA8, &unk_2437F0558);
  OUTLINED_FUNCTION_0(v21);
  v70 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v25);
  v27 = v62 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E1DEC();
  v29 = v74;
  sub_2437EBAF4();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v63 = v13;
  v64 = v20;
  v62[1] = v14;
  v31 = v71;
  v30 = v72;
  v74 = a1;
  v32 = sub_2437EB974();
  result = sub_2437B5F3C(v32, 0);
  if (v35 == v36 >> 1)
  {
    goto LABEL_8;
  }

  v62[0] = 0;
  if (v35 < (v36 >> 1))
  {
    v37 = *(v34 + v35);
    sub_2437B5F84(v35 + 1, v36 >> 1, result, v34, v35, v36);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    v42 = v69;
    if (v39 == v41 >> 1)
    {
      if (!v37)
      {
        LOBYTE(v73) = 0;
        sub_2437E1EE8();
        OUTLINED_FUNCTION_17_7();
        sub_2437BAD3C();
        sub_2437EB954();
        v55 = v70;
        swift_unknownObjectRelease();
        v57 = OUTLINED_FUNCTION_16_7();
        v58(v57);
        v59 = *(v55 + 8);
        v60 = OUTLINED_FUNCTION_15_6();
        v61(v60);
        v54 = v73;
        v44 = v68;
        goto LABEL_14;
      }

      if (v37 == 1)
      {
        LOBYTE(v73) = 1;
        sub_2437E1E94();
        v43 = v63;
        OUTLINED_FUNCTION_17_7();
        v44 = v68;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v43, v67);
        OUTLINED_FUNCTION_6_5();
        v52 = OUTLINED_FUNCTION_15_6();
        v53(v52);
        v54 = xmmword_2437F0510;
LABEL_14:
        *v44 = v54;
        return __swift_destroy_boxed_opaque_existential_1(v74);
      }

      LOBYTE(v73) = 2;
      sub_2437E1E40();
      v50 = v62[0];
      sub_2437EB904();
      v44 = v68;
      if (!v50)
      {
        swift_unknownObjectRelease();
        (*(v42 + 8))(v31, v30);
        OUTLINED_FUNCTION_6_5();
        v56(v27, v21);
        v54 = xmmword_2437EF7C0;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_6_5();
      v51(v27, v21);
      swift_unknownObjectRelease();
      a1 = v74;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_8:
    v45 = sub_2437EB8C4();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
    *v47 = &type metadata for XPCAsyncSequenceResponse.Event;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_6_5();
    v49(v27, v21);
    a1 = v74;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

uint64_t XPCAsyncSequenceResponse.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2437EB3B4();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t XPCAsyncSequenceResponse.event.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for XPCAsyncSequenceResponse() + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_2437E2D58(v4, v5);
}

uint64_t XPCAsyncSequenceResponse.init(id:event:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0(v7);
  (*(v8 + 32))(a3, a1);
  result = type metadata accessor for XPCAsyncSequenceResponse();
  v10 = (a3 + *(result + 20));
  *v10 = v5;
  v10[1] = v6;
  return result;
}

uint64_t sub_2437E26A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437E2748(char a1)
{
  if (a1)
  {
    return 0x746E657665;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2437E2778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437E26A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437E27A8()
{
  sub_2437E2D70();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E27E0()
{
  sub_2437E2D70();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t XPCAsyncSequenceResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CB0, &qword_2437F0568);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E2D70();
  sub_2437EBB04();
  LOBYTE(v18) = 0;
  sub_2437EB3B4();
  sub_2437D16EC(&qword_27ED86590);
  sub_2437EB9D4();
  if (!v2)
  {
    v14 = (v3 + *(type metadata accessor for XPCAsyncSequenceResponse() + 20));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 1;
    sub_2437E2D58(v18, v15);
    sub_2437E2DC4();
    sub_2437EB9D4();
    sub_2437DC2E4(v18, v19);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t XPCAsyncSequenceResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = sub_2437EB3B4();
  v4 = OUTLINED_FUNCTION_0(v36);
  v33 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CC0, &qword_2437F0570);
  v34 = OUTLINED_FUNCTION_0(v10);
  v35 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for XPCAsyncSequenceResponse();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E2D70();
  sub_2437EBAF4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  v22 = v33;
  LOBYTE(v37) = 0;
  sub_2437D16EC(&qword_27ED865D8);
  v23 = v36;
  sub_2437EB954();
  v24 = *(v22 + 32);
  v30 = v20;
  v24(v20, v9, v23);
  v38 = 1;
  sub_2437E2E18();
  sub_2437EB954();
  v25 = OUTLINED_FUNCTION_1_7();
  v26(v25);
  v27 = v30;
  *&v30[*(v31 + 20)] = v37;
  sub_2437E2E6C(v27, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2437E2ED0(v27);
}

uint64_t type metadata accessor for XPCAsyncSequenceResponse()
{
  result = qword_27ED8FDA0;
  if (!qword_27ED8FDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437E2D58(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_2437B6C6C(a1, a2);
  }

  return a1;
}

unint64_t sub_2437E2D70()
{
  result = qword_27ED8FB10[0];
  if (!qword_27ED8FB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8FB10);
  }

  return result;
}

unint64_t sub_2437E2DC4()
{
  result = qword_27ED86CB8;
  if (!qword_27ED86CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CB8);
  }

  return result;
}

unint64_t sub_2437E2E18()
{
  result = qword_27ED86CC8;
  if (!qword_27ED86CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CC8);
  }

  return result;
}

uint64_t sub_2437E2E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E2ED0(uint64_t a1)
{
  v2 = type metadata accessor for XPCAsyncSequenceResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437E2F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2437EB3B4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    v9 = (4 * v8) & 0xC | (v8 >> 2);
    v10 = __OFSUB__(13, v9);
    v11 = 13 - v9;
    if (v11 < 0 != v10)
    {
      v11 = -1;
    }

    if (((4 * v8) & 0xC) != 0)
    {
      return (v11 + 1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2437E3018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2437EB3B4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = (((14 - a2) >> 2) & 3 | (4 * (14 - a2))) << 60;
  }

  return result;
}

uint64_t sub_2437E30D4()
{
  result = sub_2437EB3B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18CloudAssetsCommons24XPCAsyncSequenceResponseV5EventO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437E3170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_1();
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

void *sub_2437E31C8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_10_9(result, ((14 - a2) >> 2) | (4 * (14 - a2)));
    }
  }

  return result;
}

void *sub_2437E3214(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_10_9(result, ((-a2 >> 2) & 3) - 4 * a2);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x2437E3314);
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
          result = OUTLINED_FUNCTION_13_9(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2437E34A4);
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
          result = OUTLINED_FUNCTION_13_9(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.YieldCodingKeys(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_1();
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

  return OUTLINED_FUNCTION_14(a1);
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.YieldCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437E35C0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437E361C()
{
  result = qword_27ED900B0[0];
  if (!qword_27ED900B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED900B0);
  }

  return result;
}

unint64_t sub_2437E3674()
{
  result = qword_27ED902C0[0];
  if (!qword_27ED902C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED902C0);
  }

  return result;
}

unint64_t sub_2437E36CC()
{
  result = qword_27ED904D0[0];
  if (!qword_27ED904D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED904D0);
  }

  return result;
}

unint64_t sub_2437E3724()
{
  result = qword_27ED905E0;
  if (!qword_27ED905E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED905E0);
  }

  return result;
}

unint64_t sub_2437E377C()
{
  result = qword_27ED905E8[0];
  if (!qword_27ED905E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED905E8);
  }

  return result;
}

unint64_t sub_2437E37D4()
{
  result = qword_27ED90670;
  if (!qword_27ED90670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90670);
  }

  return result;
}

unint64_t sub_2437E382C()
{
  result = qword_27ED90678;
  if (!qword_27ED90678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90678);
  }

  return result;
}

unint64_t sub_2437E3884()
{
  result = qword_27ED90700;
  if (!qword_27ED90700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90700);
  }

  return result;
}

unint64_t sub_2437E38DC()
{
  result = qword_27ED90708[0];
  if (!qword_27ED90708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90708);
  }

  return result;
}

unint64_t sub_2437E3934()
{
  result = qword_27ED90790;
  if (!qword_27ED90790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90790);
  }

  return result;
}

unint64_t sub_2437E398C()
{
  result = qword_27ED90798[0];
  if (!qword_27ED90798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90798);
  }

  return result;
}

unint64_t sub_2437E39E4()
{
  result = qword_27ED90820;
  if (!qword_27ED90820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90820);
  }

  return result;
}

unint64_t sub_2437E3A3C()
{
  result = qword_27ED90828[0];
  if (!qword_27ED90828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90828);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return sub_2437EB994();
}

void *OUTLINED_FUNCTION_10_9@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = 0;
  result[1] = a2 << 60;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_7()
{
  v2 = *(v0 - 192);

  return sub_2437EB904();
}

uint64_t sub_2437E3B18(uint64_t a1)
{
  sub_2437E4010();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437E3B54(uint64_t a1)
{
  sub_2437E4010();

  return MEMORY[0x2821FE720](a1);
}

uint64_t AssetSkeleton.storageReference.getter()
{
  v1 = (v0 + *(type metadata accessor for AssetSkeleton() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v4, v5);
  return OUTLINED_FUNCTION_22();
}

uint64_t type metadata accessor for AssetSkeleton()
{
  result = qword_27ED90D30;
  if (!qword_27ED90D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetSkeleton.storageReferenceSignature.getter()
{
  v1 = (v0 + *(type metadata accessor for AssetSkeleton() + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v4, v5);
  return OUTLINED_FUNCTION_22();
}

uint64_t AssetSkeleton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_2437EB444();
  v5 = OUTLINED_FUNCTION_48(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v43 = v9 - v8;
  v10 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v16 = (v15 - v14);
  v17 = type metadata accessor for AssetSkeleton();
  v18 = OUTLINED_FUNCTION_48(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CD0, &qword_2437F0BE0);
  v25 = OUTLINED_FUNCTION_0(v24);
  v42 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = &v38 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_2437E4010();
  sub_2437EBAF4();
  if (!v2)
  {
    v33 = v42;
    v40 = v23;
    sub_2437BAD3C();
    sub_2437EB954();
    v39 = v24;
    v47 = v48;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_2437EB434();
    OUTLINED_FUNCTION_6_6();
    sub_2437E4C74(v34, v35);
    sub_2437EB514();
    v37 = v40;
    sub_2437E4064(v16, v40);
    (*(v33 + 8))(v30, v39);
    sub_2437E5098(v37, v41);
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

unint64_t sub_2437E4010()
{
  result = qword_27ED86CD8;
  if (!qword_27ED86CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CD8);
  }

  return result;
}

uint64_t sub_2437E4064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CloudAssets_Credential(0);
  v6 = OUTLINED_FUNCTION_48(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v12 = type metadata accessor for Asset(0);
  v13 = OUTLINED_FUNCTION_48(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E8, &qword_2437ED990);
  v20 = OUTLINED_FUNCTION_48(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v45 - v23;
  v25 = type metadata accessor for CloudAssets_Asset(0);
  v26 = OUTLINED_FUNCTION_1_0(v25);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v33 = v45 - v32;
  sub_2437E432C(*a1, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_2437E5030(v24);
    sub_2437BF6BC();
    swift_allocError();
    *v34 = 0xD00000000000001ELL;
    v34[1] = 0x80000002437F34C0;
    swift_willThrow();
LABEL_5:
    OUTLINED_FUNCTION_0_12();
    return sub_2437E5148(a1, v35);
  }

  sub_2437E5098(v24, v33);
  sub_2437E50F0(v33, v31);
  Asset.init(protobufRepresentation:)(v31);
  if (v2)
  {
    OUTLINED_FUNCTION_8_6();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_7_7();
  sub_2437E5098(v18, a2);
  v37 = a1[1];
  v38 = a1[2];
  v39 = type metadata accessor for AssetSkeleton();
  v40 = (a2 + v39[5]);
  *v40 = v37;
  v40[1] = v38;
  sub_2437B6C6C(v37, v38);
  CloudAssets_SimultaneousDownloadableAssets.credential.getter(v11);
  Credential.init(protobufRepresentation:)(v11, (a2 + v39[7]));
  OUTLINED_FUNCTION_8_6();
  v41 = a1[3];
  v42 = a1[4];
  sub_2437B6C6C(v41, v42);
  OUTLINED_FUNCTION_0_12();
  result = sub_2437E5148(a1, v43);
  v44 = (a2 + v39[6]);
  *v44 = v41;
  v44[1] = v42;
  return result;
}

uint64_t sub_2437E432C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for CloudAssets_Asset(0);
  v6 = v5;
  if (v4)
  {
    sub_2437E50F0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t AssetSkeleton.init(asset:credential:storageReference:storageReferenceSignature:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_7_7();
  sub_2437E5098(v12, v13);
  v14 = type metadata accessor for AssetSkeleton();
  result = sub_2437E5098(a1, a6 + v14[7]);
  v16 = (a6 + v14[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + v14[6]);
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t AssetSkeleton.encode(to:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_34();
  v3 = type metadata accessor for CloudAssets_Credential(v2);
  v4 = OUTLINED_FUNCTION_48(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  v55 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  v10 = OUTLINED_FUNCTION_1_0(v55);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v15 = (v14 - v13);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CE0, &qword_2437F0BE8);
  v16 = OUTLINED_FUNCTION_0(v60);
  v57 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v54 - v20;
  v22 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_2437E4010();
  sub_2437EBB04();
  CloudAssets_SimultaneousDownloadableAssets.init()(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86CE8, &qword_2437F0BF0);
  v23 = OUTLINED_FUNCTION_34();
  v24 = *(type metadata accessor for CloudAssets_Asset(v23) - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2437ED960;
  Asset.protobufRepresentation()();
  v28 = *v15;

  *v15 = v27;
  v29 = type metadata accessor for AssetSkeleton();
  v30 = (v0 + v29[5]);
  v31 = *v30;
  v32 = v30[1];
  v33 = v15[1];
  v34 = v15[2];
  sub_2437B6C6C(*v30, v32);
  sub_2437B7168(v33, v34);
  v15[1] = v31;
  v15[2] = v32;
  v35 = v1 + v29[7];
  Credential.protobufRepresentation()(v9);
  CloudAssets_SimultaneousDownloadableAssets.credential.setter();
  v36 = (v1 + v29[6]);
  v37 = *v36;
  v38 = v36[1];
  v39 = v15[3];
  v40 = v15[4];
  v41 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v41, v42);
  sub_2437B7168(v39, v40);
  v15[3] = v37;
  v15[4] = v38;
  OUTLINED_FUNCTION_6_6();
  sub_2437E4C74(v43, v44);
  v45 = v56;
  v46 = sub_2437EB504();
  if (v45)
  {
    (*(v57 + 8))(v21, v60);
    OUTLINED_FUNCTION_0_12();
    return sub_2437E5148(v15, v48);
  }

  else
  {
    v50 = v46;
    v51 = v47;
    OUTLINED_FUNCTION_0_12();
    sub_2437E5148(v15, v52);
    v58 = v50;
    v59 = v51;
    sub_2437BA058();
    v53 = v60;
    sub_2437EB9D4();
    sub_2437B7168(v58, v59);
    return (*(v57 + 8))(v21, v53);
  }
}

uint64_t static AssetSkeleton.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!static Asset.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for AssetSkeleton();
  OUTLINED_FUNCTION_17_8(v4[5]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_17_8(v4[6]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v4[7];

  return static Credential.== infix(_:_:)((a1 + v7), (a2 + v7));
}

uint64_t AssetSkeleton.hash(into:)()
{
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_2_10();
  sub_2437E4C74(v0, v1);
  sub_2437EB6D4();
  v2 = type metadata accessor for AssetSkeleton();
  OUTLINED_FUNCTION_12_8(v2[5]);
  sub_2437EB354();
  OUTLINED_FUNCTION_12_8(v2[6]);
  sub_2437EB354();
  v3 = v2[7];
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_1_15();
  sub_2437E4C74(v4, v5);
  return sub_2437EB6D4();
}

uint64_t AssetSkeleton.hashValue.getter()
{
  sub_2437EBA94();
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_2_10();
  v2 = sub_2437E4C74(v0, v1);
  OUTLINED_FUNCTION_43_0(v2, v3, v4, v5, v6, v7, v8, v9, v23, v25);
  sub_2437EB6D4();
  v10 = type metadata accessor for AssetSkeleton();
  OUTLINED_FUNCTION_12_8(v10[5]);
  sub_2437EB354();
  OUTLINED_FUNCTION_12_8(v10[6]);
  sub_2437EB354();
  v11 = v10[7];
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_1_15();
  v14 = sub_2437E4C74(v12, v13);
  OUTLINED_FUNCTION_43_0(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26);
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

uint64_t sub_2437E4A44(uint64_t a1, int *a2)
{
  sub_2437EBA94();
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_2_10();
  v5 = sub_2437E4C74(v3, v4);
  OUTLINED_FUNCTION_43_0(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27);
  sub_2437EB6D4();
  OUTLINED_FUNCTION_12_8(a2[5]);
  sub_2437EB354();
  OUTLINED_FUNCTION_12_8(a2[6]);
  sub_2437EB354();
  v13 = a2[7];
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_1_15();
  v16 = sub_2437E4C74(v14, v15);
  OUTLINED_FUNCTION_43_0(v16, v17, v18, v19, v20, v21, v22, v23, v26, v28);
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

unint64_t sub_2437E4B28()
{
  result = qword_27ED86CF0;
  if (!qword_27ED86CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CF0);
  }

  return result;
}

unint64_t sub_2437E4B80()
{
  result = qword_27ED86CF8;
  if (!qword_27ED86CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86CF8);
  }

  return result;
}

unint64_t sub_2437E4BD8()
{
  result = qword_27ED86D00;
  if (!qword_27ED86D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86D00);
  }

  return result;
}

uint64_t sub_2437E4C74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2437E4D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_34();
  v7 = type metadata accessor for Asset(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 12)
    {
      v10 = *(v3 + *(a3 + 20) + 8) >> 60;
      if (((4 * v10) & 0xC) != 0)
      {
        return 16 - ((4 * v10) & 0xC | (v10 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = type metadata accessor for Credential(0);
    v9 = v3 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2437E4DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_34();
  result = type metadata accessor for Asset(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 12)
    {
      v12 = (v4 + *(a4 + 20));
      *v12 = 0;
      v12[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = type metadata accessor for Credential(0);
    v11 = v4 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2437E4EC8()
{
  result = type metadata accessor for Asset(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Credential(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetSkeleton.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437E4FF8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437E5030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E8, &qword_2437ED990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437E5098(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t sub_2437E50F0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t sub_2437E5148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_2437E5148(v0, type metadata accessor for CloudAssets_Asset);
}

void OUTLINED_FUNCTION_12_8(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

void OUTLINED_FUNCTION_17_8(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v2 + a1 + 8);
  v6 = (v1 + a1);
  v7 = *v6;
  v8 = v6[1];

  JUMPOUT(0x245D3FA00);
}

uint64_t sub_2437E526C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002437F34E0 == a2;
  if (v3 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552746C75736572 && a2 == 0xEE00646576696563;
    if (v6 || (OUTLINED_FUNCTION_5() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65526C616E676973 && a2 == 0xEE00646576696563)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2437E5370(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x6552746C75736572;
  }

  return 0x65526C616E676973;
}

uint64_t sub_2437E53DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437E526C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437E5410()
{
  sub_2437E5B40();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E5448()
{
  sub_2437E5B40();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E5480()
{
  sub_2437E5C4C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E54B8()
{
  sub_2437E5C4C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E54F0()
{
  sub_2437E5BF8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E5528()
{
  sub_2437E5BF8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E5560()
{
  sub_2437E5D08();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E5598()
{
  sub_2437E5D08();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t AssetUploadEvent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D08, &qword_2437F0E00);
  v3 = OUTLINED_FUNCTION_0(v2);
  v60 = v4;
  v61 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_2();
  v59 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D10, &unk_2437F0E08);
  v10 = OUTLINED_FUNCTION_0(v9);
  v57 = v11;
  v58 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_2();
  v56 = v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  OUTLINED_FUNCTION_1_0(v55);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D18, &qword_2437F0E18);
  v22 = OUTLINED_FUNCTION_0(v21);
  v53 = v23;
  v54 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v26);
  v28 = &v53 - v27;
  v29 = type metadata accessor for AssetUploadEvent();
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = (&v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D20, &unk_2437F0E20);
  OUTLINED_FUNCTION_0(v63);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v39);
  v41 = &v53 - v40;
  v42 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_2437E5B40();
  sub_2437EBB04();
  sub_2437E5B94(v62, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2437CE3C4(v34, v20);
      LOBYTE(v64) = 1;
      sub_2437E5C4C();
      v44 = v56;
      OUTLINED_FUNCTION_13_10();
      sub_2437D0150(&qword_27ED86A20);
      v45 = v58;
      sub_2437EB9D4();
      (*(v57 + 8))(v44, v45);
      sub_2437E5CA0(v20);
      return (*(v36 + 8))(v41, v42);
    }

    v49 = *v34;
    LOBYTE(v64) = 2;
    sub_2437E5BF8();
    v50 = v59;
    v51 = v63;
    sub_2437EB994();
    v64 = v49;
    sub_2437CF208();
    v52 = v61;
    sub_2437EB9D4();
    (*(v60 + 8))(v50, v52);
    (*(v36 + 8))(v41, v51);
  }

  else
  {
    v47 = *v34;
    LOBYTE(v64) = 0;
    sub_2437E5D08();
    OUTLINED_FUNCTION_13_10();
    v64 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A28, &qword_2437EE7F8);
    sub_2437E6634(&qword_27ED86A30, &qword_27ED86A38);
    v48 = v54;
    sub_2437EB9D4();
    (*(v53 + 8))(v28, v48);
    (*(v36 + 8))(v41, v42);
  }
}

uint64_t type metadata accessor for AssetUploadEvent()
{
  result = qword_27ED90E60;
  if (!qword_27ED90E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2437E5B40()
{
  result = qword_27ED90D40;
  if (!qword_27ED90D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90D40);
  }

  return result;
}

uint64_t sub_2437E5B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2437E5BF8()
{
  result = qword_27ED90D48;
  if (!qword_27ED90D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90D48);
  }

  return result;
}

unint64_t sub_2437E5C4C()
{
  result = qword_27ED90D50;
  if (!qword_27ED90D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED90D50);
  }

  return result;
}

uint64_t sub_2437E5CA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2437E5D08()
{
  result = qword_27ED90D58[0];
  if (!qword_27ED90D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90D58);
  }

  return result;
}

uint64_t AssetUploadEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D28, &qword_2437F0E30);
  OUTLINED_FUNCTION_0(v100);
  v97 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_2();
  v95 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D30, &qword_2437F0E38);
  v9 = OUTLINED_FUNCTION_0(v8);
  v91 = v10;
  v92 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_2();
  v94 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D38, &qword_2437F0E40);
  v16 = OUTLINED_FUNCTION_0(v15);
  v89 = v17;
  v90 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_2();
  v93 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D40, &unk_2437F0E48);
  v23 = OUTLINED_FUNCTION_0(v22);
  v98 = v24;
  v99 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v27);
  v29 = &v85 - v28;
  v30 = type metadata accessor for AssetUploadEvent();
  v31 = OUTLINED_FUNCTION_1_0(v30);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v85 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v85 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v85 - v43;
  v46 = a1[3];
  v45 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_2437E5B40();
  v47 = v102;
  sub_2437EBAF4();
  if (v47)
  {
    goto LABEL_10;
  }

  v85 = v36;
  v86 = v42;
  v87 = v44;
  v88 = v39;
  v49 = v99;
  v48 = v100;
  v102 = v30;
  v50 = sub_2437EB974();
  result = sub_2437B5F3C(v50, 0);
  if (v53 == v54 >> 1)
  {
LABEL_9:
    v67 = sub_2437EB8C4();
    swift_allocError();
    v69 = v68;
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
    *v69 = v102;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D84160], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v98 + 8))(v29, v49);
LABEL_10:
    v71 = v101;
    return __swift_destroy_boxed_opaque_existential_1(v71);
  }

  if (v53 < (v54 >> 1))
  {
    v55 = v29;
    v56 = *(v52 + v53);
    sub_2437B5F84(v53 + 1, v54 >> 1, result, v52, v53, v54);
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    v61 = v58 == v60 >> 1;
    v62 = v97;
    if (v61)
    {
      v63 = v49;
      v64 = v55;
      if (v56)
      {
        v65 = v96;
        if (v56 == 1)
        {
          LOBYTE(v103) = 1;
          sub_2437E5C4C();
          v66 = v94;
          OUTLINED_FUNCTION_12_9();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
          sub_2437D0150(&qword_27ED86A80);
          v74 = v66;
          sub_2437EB954();
          swift_unknownObjectRelease();
          v77 = OUTLINED_FUNCTION_14_7();
          v78(v77);
          v79 = OUTLINED_FUNCTION_1_16();
          v80(v79);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_10_10();
          v81 = v101;
        }

        else
        {
          LOBYTE(v103) = 2;
          sub_2437E5BF8();
          v72 = v95;
          v73 = v63;
          sub_2437EB904();
          sub_2437D00FC();
          v74 = v72;
          sub_2437EB954();
          v76 = v98;
          swift_unknownObjectRelease();
          (*(v62 + 8))(v72, v48);
          (*(v76 + 8))(v64, v73);
          *v85 = v103;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_10_10();
          v81 = v101;
          v65 = v96;
        }
      }

      else
      {
        LOBYTE(v103) = 0;
        sub_2437E5D08();
        OUTLINED_FUNCTION_12_9();
        v65 = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A28, &qword_2437EE7F8);
        sub_2437E6634(&qword_27ED86A88, &qword_27ED86A90);
        sub_2437EB954();
        v75 = v98;
        swift_unknownObjectRelease();
        v82 = OUTLINED_FUNCTION_15_7();
        v83(v82);
        v84 = *(v75 + 8);
        v74 = v75 + 8;
        v84(v64, v62);
        *v86 = v103;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_10();
        v81 = v101;
      }

      sub_2437E65D0(v74, v65);
      v71 = v81;
      return __swift_destroy_boxed_opaque_existential_1(v71);
    }

    v29 = v55;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2437E65D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E6634(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86A28, &qword_2437EE7F8);
    sub_2437E674C(a2, type metadata accessor for AssetSkeleton);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2437E66D0()
{
  sub_2437D0310();
  if (v0 <= 0x3F)
  {
    sub_2437D0368();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_2437E674C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AssetUploadEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2437E6860);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s18CloudAssetsCommons16AssetUploadEventO24ResultReceivedCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437E6958);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437E6994()
{
  result = qword_27ED90F70[0];
  if (!qword_27ED90F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED90F70);
  }

  return result;
}

unint64_t sub_2437E69EC()
{
  result = qword_27ED91180[0];
  if (!qword_27ED91180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91180);
  }

  return result;
}

unint64_t sub_2437E6A44()
{
  result = qword_27ED91390[0];
  if (!qword_27ED91390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91390);
  }

  return result;
}

unint64_t sub_2437E6A9C()
{
  result = qword_27ED915A0[0];
  if (!qword_27ED915A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED915A0);
  }

  return result;
}

unint64_t sub_2437E6AF4()
{
  result = qword_27ED916B0;
  if (!qword_27ED916B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED916B0);
  }

  return result;
}

unint64_t sub_2437E6B4C()
{
  result = qword_27ED916B8[0];
  if (!qword_27ED916B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED916B8);
  }

  return result;
}

unint64_t sub_2437E6BA4()
{
  result = qword_27ED91740;
  if (!qword_27ED91740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED91740);
  }

  return result;
}

unint64_t sub_2437E6BFC()
{
  result = qword_27ED91748[0];
  if (!qword_27ED91748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91748);
  }

  return result;
}

unint64_t sub_2437E6C54()
{
  result = qword_27ED917D0;
  if (!qword_27ED917D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED917D0);
  }

  return result;
}

unint64_t sub_2437E6CAC()
{
  result = qword_27ED917D8[0];
  if (!qword_27ED917D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED917D8);
  }

  return result;
}

unint64_t sub_2437E6D04()
{
  result = qword_27ED91860;
  if (!qword_27ED91860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED91860);
  }

  return result;
}

unint64_t sub_2437E6D5C()
{
  result = qword_27ED91868[0];
  if (!qword_27ED91868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_10()
{
  v3 = *(v1 - 208);

  return sub_2437E65D0(v0, v3);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_2437EB904();
}

uint64_t OUTLINED_FUNCTION_13_10()
{
  v2 = *(v0 - 96);

  return sub_2437EB994();
}

_BYTE *storeEnumTagSinglePayload for LoggerSubsystem(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437E6F14);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static DownloadRequestMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
LABEL_6:
    v8 = *a2;
    j__swift_bridgeObjectRetain();
    j__swift_bridgeObjectRetain();
    v7 = sub_2437E704C(v2, v3);
    goto LABEL_7;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  j__swift_bridgeObjectRetain();
  j__swift_bridgeObjectRetain();
  v7 = 0;
LABEL_7:
  j__swift_bridgeObjectRelease(v2);
  j__swift_bridgeObjectRelease(v3);
  return v7 & 1;
}

uint64_t sub_2437E704C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDownloadRequest();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_2437E85EC(v14, v11);
        sub_2437E85EC(v15, v8);
        sub_2437E8650(&qword_27ED86688);
        v17 = sub_2437EB6E4();
        sub_2437E8694(v8);
        sub_2437E8694(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2437E7200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437E729C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437E722C()
{
  sub_2437E77EC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E7264()
{
  sub_2437E77EC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E729C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374736575716572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437E7314()
{
  sub_2437E7744();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E734C()
{
  sub_2437E7744();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437E7384()
{
  sub_2437E7798();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437E73BC()
{
  sub_2437E7798();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t DownloadRequestMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D48, &qword_2437F1390);
  v4 = OUTLINED_FUNCTION_0(v3);
  v38 = v5;
  v39 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D50, &qword_2437F1398);
  v12 = OUTLINED_FUNCTION_0(v11);
  v36 = v13;
  v37 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D58, &qword_2437F13A0);
  OUTLINED_FUNCTION_0(v41);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  v40 = *v1;
  v26 = *(v1 + 8);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E7744();
  sub_2437EBB04();
  if (v26)
  {
    LOBYTE(v42) = 1;
    sub_2437E7798();
    OUTLINED_FUNCTION_17_1();
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D60, &qword_2437F13A8);
    OUTLINED_FUNCTION_1_17();
    sub_2437E7FFC(v28, v29);
    v30 = v39;
    sub_2437EB9D4();
    (*(v38 + 8))(v10, v30);
  }

  else
  {
    LOBYTE(v42) = 0;
    sub_2437E77EC();
    OUTLINED_FUNCTION_17_1();
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D60, &qword_2437F13A8);
    OUTLINED_FUNCTION_1_17();
    sub_2437E7FFC(v31, v32);
    v33 = v37;
    sub_2437EB9D4();
    (*(v36 + 8))(v18, v33);
  }

  return (*(v20 + 8))(v25, v26);
}

unint64_t sub_2437E7744()
{
  result = qword_27ED918F0;
  if (!qword_27ED918F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED918F0);
  }

  return result;
}

unint64_t sub_2437E7798()
{
  result = qword_27ED918F8;
  if (!qword_27ED918F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED918F8);
  }

  return result;
}

unint64_t sub_2437E77EC()
{
  result = qword_27ED91900[0];
  if (!qword_27ED91900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91900);
  }

  return result;
}

uint64_t DownloadRequestMessage.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x245D40160](*(v1 + 8));

  return sub_2437E7F14(a1, v3);
}

uint64_t DownloadRequestMessage.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2437EBA94();
  MEMORY[0x245D40160](v2);
  sub_2437E7F14(v4, v1);
  return sub_2437EBAD4();
}

uint64_t DownloadRequestMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D70, &qword_2437F13B0);
  v56 = OUTLINED_FUNCTION_0(v3);
  v57 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D78, &qword_2437F13B8);
  OUTLINED_FUNCTION_0(v8);
  v55 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  v14 = v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D80, &unk_2437F13C0);
  OUTLINED_FUNCTION_0(v15);
  v58 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  v21 = v54 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437E7744();
  v23 = v60;
  sub_2437EBAF4();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54[2] = v8;
  v54[3] = v14;
  v60 = a1;
  v24 = v59;
  v25 = sub_2437EB974();
  result = sub_2437B5F3C(v25, 0);
  if (v28 == v29 >> 1)
  {
    v30 = v21;
LABEL_9:
    v39 = sub_2437EB8C4();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
    *v41 = &type metadata for DownloadRequestMessage;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v30, v15);
    a1 = v60;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54[1] = 0;
  if (v28 >= (v29 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v27 + v28);
    sub_2437B5F84(v28 + 1, v29 >> 1, result, v27, v28, v29);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 != v35 >> 1)
    {
      v30 = v21;
      goto LABEL_9;
    }

    v36 = v31;
    if (v31)
    {
      LODWORD(v55) = v31;
      LOBYTE(v61) = 1;
      sub_2437E7798();
      OUTLINED_FUNCTION_13_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D60, &qword_2437F13A8);
      OUTLINED_FUNCTION_2_11();
      sub_2437E7FFC(v37, v38);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v45 = OUTLINED_FUNCTION_11_4();
      v46(v45);
      v47 = OUTLINED_FUNCTION_3_7();
      v48(v47);
      v49 = v61;
      v36 = v55;
    }

    else
    {
      LOBYTE(v61) = 0;
      sub_2437E77EC();
      OUTLINED_FUNCTION_13_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86D60, &qword_2437F13A8);
      OUTLINED_FUNCTION_2_11();
      sub_2437E7FFC(v43, v44);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v50 = OUTLINED_FUNCTION_10_8();
      v51(v50);
      v52 = OUTLINED_FUNCTION_3_7();
      v53(v52);
      v49 = v61;
      v24 = v59;
    }

    *v24 = v49;
    *(v24 + 8) = v36;
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return result;
}

uint64_t sub_2437E7E84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2437EBA94();
  MEMORY[0x245D40160](v2);
  sub_2437E7F14(v4, v1);
  return sub_2437EBAD4();
}

uint64_t sub_2437E7F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for AssetDownloadRequest() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_2437E8650(&qword_27ED86680);
    do
    {
      result = sub_2437EB6D4();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2437E7FFC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86D60, &qword_2437F13A8);
    sub_2437E8650(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2437E8088()
{
  result = qword_27ED86D90;
  if (!qword_27ED86D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86D90);
  }

  return result;
}

_BYTE *sub_2437E80F4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x2437E81C0);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2437E8204(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437E82A0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437E82D8()
{
  result = qword_27ED91C10[0];
  if (!qword_27ED91C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91C10);
  }

  return result;
}

unint64_t sub_2437E8330()
{
  result = qword_27ED91E20[0];
  if (!qword_27ED91E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED91E20);
  }

  return result;
}

unint64_t sub_2437E8388()
{
  result = qword_27ED92030[0];
  if (!qword_27ED92030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92030);
  }

  return result;
}

unint64_t sub_2437E83E0()
{
  result = qword_27ED92140;
  if (!qword_27ED92140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92140);
  }

  return result;
}

unint64_t sub_2437E8438()
{
  result = qword_27ED92148[0];
  if (!qword_27ED92148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92148);
  }

  return result;
}

unint64_t sub_2437E8490()
{
  result = qword_27ED921D0;
  if (!qword_27ED921D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED921D0);
  }

  return result;
}

unint64_t sub_2437E84E8()
{
  result = qword_27ED921D8[0];
  if (!qword_27ED921D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED921D8);
  }

  return result;
}

unint64_t sub_2437E8540()
{
  result = qword_27ED92260;
  if (!qword_27ED92260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92260);
  }

  return result;
}

unint64_t sub_2437E8598()
{
  result = qword_27ED92268[0];
  if (!qword_27ED92268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92268);
  }

  return result;
}

uint64_t sub_2437E85EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDownloadRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E8650(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetDownloadRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437E8694(uint64_t a1)
{
  v2 = type metadata accessor for AssetDownloadRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437E8754(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2437E8794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2437E87E0()
{
  v0 = sub_2437EB5F4();
  __swift_allocate_value_buffer(v0, qword_27ED924A8);
  __swift_project_value_buffer(v0, qword_27ED924A8);
  v1 = sub_2437E6E54();
  v2 = *v1;
  v3 = v1[1];
  type metadata accessor for XPCSessionCacheImplementation();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DA8, &qword_2437F1A38);
  sub_2437EB704();
  return sub_2437EB5E4();
}

uint64_t sub_2437E888C()
{
  OUTLINED_FUNCTION_13_11();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2437E88E8();
  return v3;
}

uint64_t sub_2437E88E8()
{
  OUTLINED_FUNCTION_13_11();
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession) = 0;
  sub_2437E8960(v4, v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_serviceID);
  *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_dispatcher) = v3;
  v5 = (v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_incomingMessageHandler);
  *v5 = v2;
  v5[1] = v0;
  *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession) = 0;
  return v1;
}

uint64_t sub_2437E8960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437E89C4()
{
  v1 = v0;
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    swift_once();
  }

  v2 = sub_2437EB5F4();
  __swift_project_value_buffer(v2, qword_27ED924A8);
  v3 = sub_2437EB5D4();
  sub_2437EB854();
  v4 = OUTLINED_FUNCTION_14_8();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_2437B3000, v6, v7, "evict xpc session");
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
  }

  v8 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession);
  *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession) = 0;
}

uint64_t sub_2437E8A9C()
{
  if (*(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession))
  {
    v0 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession);
  }

  else
  {
    v3 = (*(*v1 + 168))();
    if (v2)
    {
      return v0;
    }

    v0 = v3;
  }

  return v0;
}

uint64_t sub_2437E8B0C()
{
  v1 = v0;
  v47 = sub_2437EB684();
  v2 = OUTLINED_FUNCTION_0(v47);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = sub_2437EB624();
  v13 = OUTLINED_FUNCTION_48(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v46 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = type metadata accessor for ServiceIdentifier();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    swift_once();
  }

  v22 = sub_2437EB5F4();
  __swift_project_value_buffer(v22, qword_27ED924A8);
  v23 = sub_2437EB5D4();
  v24 = sub_2437EB854();
  v25 = OUTLINED_FUNCTION_14_8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v45 = v18;
    *v27 = 0;
    _os_log_impl(&dword_2437B3000, v23, v24, "establish xpc session", v27, 2u);
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
  }

  sub_2437D52A0(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_serviceID, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = *v21;
    v29 = v21[1];
    sub_2437EB674();
    v36 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_incomingMessageHandler);
    v37 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_incomingMessageHandler + 8);

    sub_2437EB614();
    type metadata accessor for XPCAsyncSequenceResponse();
    OUTLINED_FUNCTION_3_8();
    sub_2437E9BF8(v38, v39);
    v40 = v48;
    v41 = sub_2437EB604();
    if (v40)
    {
      return v29;
    }

    v29 = v41;
    goto LABEL_12;
  }

  v28 = v47;
  (*(v4 + 32))(v11, v21, v47);
  v45 = sub_2437EB674();
  (*(v4 + 16))(v9, v11, v28);
  v29 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_incomingMessageHandler);
  v30 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_incomingMessageHandler + 8);

  sub_2437EB614();
  type metadata accessor for XPCAsyncSequenceResponse();
  OUTLINED_FUNCTION_3_8();
  sub_2437E9BF8(v31, v32);
  v33 = v48;
  v34 = sub_2437EB664();
  if (!v33)
  {
    v29 = v34;
    (*(v4 + 8))(v11, v28);
LABEL_12:
    v42 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession);
    *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession) = v29;

    return v29;
  }

  (*(v4 + 8))(v11, v28);
  return v29;
}

uint64_t sub_2437E8FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 176) & 0xFFFFFFFFFFFFLL | 0xD104000000000000;
  v5[4] = *(*a4 + 176);
  v5[5] = v6;
  return OUTLINED_FUNCTION_5_5(sub_2437EA0EC, a4);
}

uint64_t sub_2437E8FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2437EB6A4();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  v14 = OUTLINED_FUNCTION_48(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v19 = sub_2437EB7B4();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v10 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v20 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  (*(v10 + 32))(&v21[v20], &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_2437D674C(0, 0, v18, a4, v21);
}

uint64_t sub_2437E9188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 176) & 0xFFFFFFFFFFFFLL | 0xD104000000000000;
  v5[4] = *(*a4 + 176);
  v5[5] = v6;
  return OUTLINED_FUNCTION_5_5(sub_2437D66F0, a4);
}

uint64_t sub_2437E91C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  v5 = OUTLINED_FUNCTION_48(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = sub_2437EB6A4();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    swift_once();
  }

  v18 = sub_2437EB5F4();
  __swift_project_value_buffer(v18, qword_27ED924A8);
  v19 = *(v13 + 16);
  v19(v17, a1, v10);
  v20 = sub_2437EB5D4();
  v21 = sub_2437EB844();
  v22 = OUTLINED_FUNCTION_14_8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v24 = 138412290;
    sub_2437E9BF8(&qword_27ED86BA0, MEMORY[0x277D855E8]);
    swift_allocError();
    v34 = v9;
    v19(v25, v17, v10);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    (*(v13 + 8))(v17, v10);
    *(v24 + 4) = v26;
    v27 = v33;
    *v33 = v26;
    v9 = v34;
    _os_log_impl(&dword_2437B3000, v20, v21, "cached xpc connection disconnected due to error %@", v24, 0xCu);
    sub_2437E9D64(v27, &qword_27ED86B98, &qword_2437EF8D8);
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
  }

  else
  {

    v28 = (*(v13 + 8))(v17, v10);
  }

  (*(*v2 + 152))(v28);
  v29 = sub_2437EB7B4();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v29);
  v30 = sub_2437E9BF8(&qword_27ED86DA0, type metadata accessor for XPCSessionCacheImplementation);
  v31 = swift_allocObject();
  v31[2] = v2;
  v31[3] = v30;
  v31[4] = v2;
  swift_retain_n();
  sub_2437D674C(0, 0, v9, &unk_2437F1960, v31);
}

uint64_t sub_2437E956C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_dispatcher);
  v0[3] = v1;
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x32A9000000000000;
  v0[4] = *(*v1 + 144);
  v0[5] = v2;
  return OUTLINED_FUNCTION_5_5(sub_2437E95B0, v1);
}

uint64_t sub_2437E95B0()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))();
  OUTLINED_FUNCTION_12_4();

  return v3();
}

uint64_t sub_2437E960C()
{
  v1 = v0;
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    swift_once();
  }

  v2 = sub_2437EB5F4();
  __swift_project_value_buffer(v2, qword_27ED924A8);
  v3 = sub_2437EB5D4();
  sub_2437EB854();
  v4 = OUTLINED_FUNCTION_14_8();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_2437B3000, v6, v7, "cancel xpc session");
    OUTLINED_FUNCTION_10_11();
    MEMORY[0x245D405B0]();
  }

  if (*(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession))
  {
    v8 = *(v1 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession);

    sub_2437EB654();
  }

  v9 = *(*v1 + 152);

  return v9();
}

uint64_t sub_2437E9730()
{
  sub_2437E9C40(v0 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_serviceID);
  v1 = *(v0 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_incomingMessageHandler + 8);

  v2 = *(v0 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_dispatcher);

  v3 = *(v0 + OBJC_IVAR____TtC18CloudAssetsCommons29XPCSessionCacheImplementation_cachedSession);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2437E9794()
{
  sub_2437E9730();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2437E97C0()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return OUTLINED_FUNCTION_5_5(sub_2437E97DC, v2);
}

uint64_t sub_2437E97DC()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_7_8();
  v2 = (*(v1 + 160))();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2437E986C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return OUTLINED_FUNCTION_5_5(sub_2437E9888, v2);
}

uint64_t sub_2437E9888()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_8();
  (*(v0 + 152))();
  OUTLINED_FUNCTION_12_4();

  return v1();
}

uint64_t sub_2437E98FC()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return OUTLINED_FUNCTION_5_5(sub_2437E9918, v2);
}

uint64_t sub_2437E9918()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_8();
  (*(v0 + 184))();
  OUTLINED_FUNCTION_12_4();

  return v1();
}

uint64_t type metadata accessor for XPCSessionCacheImplementation()
{
  result = qword_27ED92470;
  if (!qword_27ED92470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437E9A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 16);
  swift_unknownObjectRelease();
  v14 = *(v12 + 32);

  return MEMORY[0x2821FE8E8](v12, 40, 7, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_2437E9A84()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_10(v2);
  *v3 = v6;
  v3[1] = sub_2437EA0F4;

  return sub_2437E9550(v3, v4, v5, v1);
}

uint64_t sub_2437E9B10()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;

  OUTLINED_FUNCTION_12_4();

  return v4();
}

uint64_t sub_2437E9BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2437E9C40(uint64_t a1)
{
  v2 = type metadata accessor for ServiceIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437E9CA4()
{
  result = type metadata accessor for ServiceIdentifier();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2437E9D64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2437E9DC8()
{
  OUTLINED_FUNCTION_44_0();
  v1 = sub_2437EB6A4();
  OUTLINED_FUNCTION_48(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_10(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_15_8(v6);

  return sub_2437E8FA8(v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_18Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = sub_2437EB6A4();
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = (v16 + 40) & ~v16;
  v19 = *(v18 + 64);
  v20 = *(v12 + 16);
  swift_unknownObjectRelease();
  v21 = *(v12 + 32);

  (*(v15 + 8))(v12 + v17, v13);

  return MEMORY[0x2821FE8E8](v12, v17 + v19, v16 | 7, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_2437E9F48()
{
  OUTLINED_FUNCTION_44_0();
  v1 = sub_2437EB6A4();
  OUTLINED_FUNCTION_48(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_10(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_15_8(v6);

  return sub_2437E9188(v8, v9, v10, v11, v12);
}

uint64_t sub_2437EA008()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;

  OUTLINED_FUNCTION_12_4();

  return v4();
}

void OUTLINED_FUNCTION_16_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2437EA1AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2437EBA14() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2437EA238(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746163696C707061 && a2 == 0xEE007344496E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437EA2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437EA238(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437EA308()
{
  sub_2437EA794();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437EA340()
{
  sub_2437EA794();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437EA378(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002437F3610 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437EA3F8()
{
  sub_2437EBA94();
  OUTLINED_FUNCTION_20_0();
  return sub_2437EBAD4();
}

uint64_t sub_2437EA484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437EA378(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437EA4B0()
{
  sub_2437EA740();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437EA4E8()
{
  sub_2437EA740();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t SimultaneousTransferError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DB0, &qword_2437F1A40);
  v23 = OUTLINED_FUNCTION_0(v3);
  v24 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DB8, &qword_2437F1A48);
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = *v1;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437EA740();
  sub_2437EBB04();
  sub_2437EA794();
  sub_2437EB994();
  v25 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DC0, &qword_2437F1A50);
  sub_2437EADB4(&qword_27ED86DC8);
  v18 = v23;
  sub_2437EB9D4();
  v19 = OUTLINED_FUNCTION_2_12();
  v20(v19, v18);
  return (*(v10 + 8))(v15, v8);
}

unint64_t sub_2437EA740()
{
  result = qword_27ED924C0;
  if (!qword_27ED924C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED924C0);
  }

  return result;
}

unint64_t sub_2437EA794()
{
  result = qword_27ED924C8[0];
  if (!qword_27ED924C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED924C8);
  }

  return result;
}

uint64_t SimultaneousTransferError.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x245D40160](0);

  return sub_2437EAD3C(a1, v3);
}

uint64_t SimultaneousTransferError.hashValue.getter()
{
  v1 = *v0;
  sub_2437EBA94();
  OUTLINED_FUNCTION_20_0();
  sub_2437EAD3C(v3, v1);
  return sub_2437EBAD4();
}

uint64_t SimultaneousTransferError.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DD0, &qword_2437F1A58);
  OUTLINED_FUNCTION_0(v4);
  v45 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DD8, &unk_2437F1A60);
  OUTLINED_FUNCTION_0(v11);
  v46 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437EA740();
  sub_2437EBAF4();
  if (v2)
  {
    goto LABEL_8;
  }

  v43 = v10;
  v44 = a1;
  v19 = v47;
  v20 = sub_2437EB974();
  result = sub_2437B5F3C(v20, 0);
  v25 = v11;
  if (v23 == v24 >> 1)
  {
LABEL_7:
    v34 = sub_2437EB8C4();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
    *v36 = &type metadata for SimultaneousTransferError;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v38 = OUTLINED_FUNCTION_2_12();
    v39(v38, v25);
    a1 = v44;
LABEL_8:
    v41 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  if (v23 < (v24 >> 1))
  {
    sub_2437B5F84(v23 + 1, v24 >> 1, result, v22, v23, v24);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    v30 = v27 == v29 >> 1;
    v31 = v45;
    if (v30)
    {
      v32 = v19;
      sub_2437EA794();
      v33 = v43;
      sub_2437EB904();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86DC0, &qword_2437F1A50);
      sub_2437EADB4(&qword_27ED86DE0);
      sub_2437EB954();
      v40 = v46;
      swift_unknownObjectRelease();
      (*(v31 + 8))(v33, v4);
      (*(v40 + 8))(v17, v11);
      *v32 = v48;
      v41 = v44;
      return __swift_destroy_boxed_opaque_existential_1(v41);
    }

    v25 = v11;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2437EACC0()
{
  v1 = *v0;
  sub_2437EBA94();
  OUTLINED_FUNCTION_20_0();
  sub_2437EAD3C(v3, v1);
  return sub_2437EBAD4();
}

uint64_t sub_2437EAD3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_2437EB724();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2437EADB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86DC0, &qword_2437F1A50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2437EAE24()
{
  result = qword_27ED86DE8;
  if (!qword_27ED86DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86DE8);
  }

  return result;
}

unint64_t sub_2437EAE7C()
{
  result = qword_27ED86DF0;
  if (!qword_27ED86DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86DF0);
  }

  return result;
}

_BYTE *sub_2437EAEEC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437EAF88);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437EAFC0()
{
  result = qword_27ED928D0[0];
  if (!qword_27ED928D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED928D0);
  }

  return result;
}

unint64_t sub_2437EB018()
{
  result = qword_27ED92AE0[0];
  if (!qword_27ED92AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92AE0);
  }

  return result;
}

unint64_t sub_2437EB070()
{
  result = qword_27ED92BF0;
  if (!qword_27ED92BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92BF0);
  }

  return result;
}

unint64_t sub_2437EB0C8()
{
  result = qword_27ED92BF8[0];
  if (!qword_27ED92BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92BF8);
  }

  return result;
}

unint64_t sub_2437EB120()
{
  result = qword_27ED92C80;
  if (!qword_27ED92C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92C80);
  }

  return result;
}

unint64_t sub_2437EB178()
{
  result = qword_27ED92C88[0];
  if (!qword_27ED92C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED92C88);
  }

  return result;
}