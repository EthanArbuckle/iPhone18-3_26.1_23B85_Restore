uint64_t static DownloadResponseMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000) - 8) + 64);
  OUTLINED_FUNCTION_3();
  (MEMORY[0x28223BE20])();
  v6 = &v35 - v5;
  v7 = type metadata accessor for DownloadResponseMessage();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D8, &qword_2437EC008) - 8) + 64);
  OUTLINED_FUNCTION_3();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  v21 = (&v35 + *(v18 + 56) - v19);
  sub_2437B4704(a1, &v35 - v19);
  sub_2437B4704(a2, v21);
  OUTLINED_FUNCTION_7();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2437B4704(v20, v15);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864E0, &qword_2437EC010) + 48);
    v26 = *&v15[v24];
    v25 = *&v15[v24 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_2437B47C4(v15, &qword_27ED864D0, &qword_2437EC000);
LABEL_7:
      sub_2437B47C4(v20, &qword_27ED864D8, &qword_2437EC008);
LABEL_17:
      v23 = 0;
      return v23 & 1;
    }

    v27 = *(v21 + v24 + 8);
    v36 = *(v21 + v24);
    sub_2437B481C(v21, v6);
    v28 = type metadata accessor for AssetDownloadResponse();
    v29 = sub_2437B6150(&qword_27ED864E8, type metadata accessor for AssetDownloadResponse);
    v30 = sub_2437B6150(&qword_27ED864F0, type metadata accessor for AssetDownloadResponse);
    v31 = sub_2437B6150(&qword_27ED864F8, type metadata accessor for AssetDownloadResponse);
    LOBYTE(v30) = static XPCResult<>.== infix(_:_:)(v15, v6, v28, v29, v30, v31);
    sub_2437B47C4(v15, &qword_27ED864D0, &qword_2437EC000);
    if (v30)
    {
      if (v26 == v36 && v25 == v27)
      {

        sub_2437B47C4(v6, &qword_27ED864D0, &qword_2437EC000);
LABEL_20:
        sub_2437B4768(v20);
        v23 = 1;
        return v23 & 1;
      }

      v33 = sub_2437EBA14();

      sub_2437B47C4(v6, &qword_27ED864D0, &qword_2437EC000);
      if (v33)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_2437B47C4(v6, &qword_27ED864D0, &qword_2437EC000);
    }

    sub_2437B4768(v20);
    goto LABEL_17;
  }

  sub_2437B4704(v20, v13);
  v22 = *v13;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_7;
  }

  v37 = *v21;
  v38 = v22;
  v23 = static SimultaneousTransferError.== infix(_:_:)(&v38, &v37);

  sub_2437B4768(v20);
  return v23 & 1;
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

uint64_t type metadata accessor for DownloadResponseMessage()
{
  result = qword_27ED87020;
  if (!qword_27ED87020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437B4704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadResponseMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437B4768(uint64_t a1)
{
  v2 = type metadata accessor for DownloadResponseMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437B47C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2437B481C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437B488C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002437F2F20 == a2)
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

uint64_t sub_2437B4944(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_2437B4988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B488C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437B49B4()
{
  sub_2437B5330();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437B49EC()
{
  sub_2437B5330();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437B4A24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002437F2F40 == a2)
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

uint64_t sub_2437B4B10(char a1)
{
  sub_2437EBA94();
  MEMORY[0x245D40160](a1 & 1);
  return sub_2437EBAD4();
}

uint64_t sub_2437B4B58(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_2437B4B90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_2437B4C2C()
{
  sub_2437EBA94();
  MEMORY[0x245D40160](0);
  return sub_2437EBAD4();
}

uint64_t sub_2437B4CA4()
{
  v1 = *v0;
  sub_2437EBA94();
  MEMORY[0x245D40160](v1);
  return sub_2437EBAD4();
}

uint64_t sub_2437B4CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B4A24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437B4D24()
{
  sub_2437B542C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437B4D5C()
{
  sub_2437B542C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437B4DA4()
{
  sub_2437EBA94();
  MEMORY[0x245D40160](0);
  return sub_2437EBAD4();
}

uint64_t sub_2437B4DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B4B90(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437B4E30()
{
  sub_2437B5384();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437B4E68()
{
  sub_2437B5384();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t DownloadResponseMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86500, &qword_2437EC018);
  v3 = OUTLINED_FUNCTION_0(v2);
  v48 = v4;
  v49 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86508, &qword_2437EC020);
  v11 = OUTLINED_FUNCTION_0(v10);
  v51 = v12;
  v52 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000);
  OUTLINED_FUNCTION_1_0(v47);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_0(v21, v47);
  v22 = type metadata accessor for DownloadResponseMessage();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86510, &qword_2437EC028);
  OUTLINED_FUNCTION_0(v54);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v32);
  v34 = &v47 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437B5330();
  sub_2437EBB04();
  sub_2437B4704(v53, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v27;
    v60 = 1;
    sub_2437B5384();
    v37 = v54;
    OUTLINED_FUNCTION_8();
    sub_2437EB994();
    v56 = v36;
    sub_2437B53D8();
    v38 = v49;
    sub_2437EB9D4();
    (*(v48 + 8))(v9, v38);
    (*(v29 + 8))(v34, v37);
  }

  else
  {
    v53 = v29;
    v40 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864E0, &qword_2437EC010) + 48));
    v42 = *v40;
    v41 = v40[1];
    v43 = v50;
    sub_2437B481C(v27, v50);
    v59 = 0;
    sub_2437B542C();
    v44 = v54;
    OUTLINED_FUNCTION_8();
    sub_2437EB994();
    v58 = 0;
    sub_2437B60B8(&qword_27ED86520);
    v45 = v52;
    v46 = v55;
    sub_2437EB9D4();
    if (!v46)
    {
      v57 = 1;
      sub_2437EB9C4();
    }

    (*(v51 + 8))(v17, v45);
    sub_2437B47C4(v43, &qword_27ED864D0, &qword_2437EC000);
    return (*(v53 + 8))(v34, v44);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2437B5330()
{
  result = qword_27ED86E00;
  if (!qword_27ED86E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86E00);
  }

  return result;
}

unint64_t sub_2437B5384()
{
  result = qword_27ED86E08;
  if (!qword_27ED86E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86E08);
  }

  return result;
}

unint64_t sub_2437B53D8()
{
  result = qword_27ED86518;
  if (!qword_27ED86518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86518);
  }

  return result;
}

unint64_t sub_2437B542C()
{
  result = qword_27ED86E10[0];
  if (!qword_27ED86E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED86E10);
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

uint64_t DownloadResponseMessage.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000);
  OUTLINED_FUNCTION_1_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = type metadata accessor for DownloadResponseMessage();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2437B4704(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    MEMORY[0x245D40160](1);
    v19[1] = v14;
    sub_2437B5668();
    sub_2437EB6D4();
  }

  else
  {
    v16 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864E0, &qword_2437EC010) + 48));
    v17 = *v16;
    v18 = v16[1];
    sub_2437B481C(v13, v7);
    MEMORY[0x245D40160](0);
    sub_2437B56BC();
    sub_2437EB6D4();
    OUTLINED_FUNCTION_7();
    sub_2437EB724();

    return sub_2437B47C4(v7, &qword_27ED864D0, &qword_2437EC000);
  }
}

unint64_t sub_2437B5668()
{
  result = qword_27ED86528;
  if (!qword_27ED86528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86528);
  }

  return result;
}

unint64_t sub_2437B56BC()
{
  result = qword_27ED86530;
  if (!qword_27ED86530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED864D0, &qword_2437EC000);
    sub_2437B6150(&qword_27ED864F8, type metadata accessor for AssetDownloadResponse);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86530);
  }

  return result;
}

uint64_t DownloadResponseMessage.hashValue.getter()
{
  sub_2437EBA94();
  DownloadResponseMessage.hash(into:)();
  return sub_2437EBAD4();
}

uint64_t DownloadResponseMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86538, &qword_2437EC030);
  v4 = OUTLINED_FUNCTION_0(v3);
  v72 = v5;
  v73 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v75 = &v69 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86540, &qword_2437EC038);
  OUTLINED_FUNCTION_0(v77);
  v74 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_0(v14, v69);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86548, &unk_2437EC040);
  OUTLINED_FUNCTION_0(v15);
  v76 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  v22 = type metadata accessor for DownloadResponseMessage();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v69 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v69 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_2437B5330();
  v36 = v80;
  sub_2437EBAF4();
  if (v36)
  {
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v69 = v28;
  v70 = v33;
  v71 = v31;
  v80 = v22;
  v37 = v78;
  v38 = sub_2437EB974();
  result = sub_2437B5F3C(v38, 0);
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v48 = v80;
    v49 = sub_2437EB8C4();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
    *v51 = v48;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v76 + 8))(v21, v15);
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  if (v41 < (v42 >> 1))
  {
    v82 = *(v40 + v41);
    sub_2437B5F84(v41 + 1, v42 >> 1, result, v40, v41, v42);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44 == v46 >> 1)
    {
      if (v82)
      {
        v86 = 1;
        sub_2437B5384();
        OUTLINED_FUNCTION_8();
        sub_2437EB904();
        sub_2437B6000();
        sub_2437EB954();
        v47 = v76;
        swift_unknownObjectRelease();
        v53 = OUTLINED_FUNCTION_10();
        v54(v53);
        (*(v47 + 8))(0, v15);
        v55 = v69;
        *v69 = v81;
        swift_storeEnumTagMultiPayload();
        v56 = v55;
      }

      else
      {
        v85 = 0;
        sub_2437B542C();
        OUTLINED_FUNCTION_8();
        sub_2437EB904();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000);
        v84 = 0;
        sub_2437B60B8(&qword_27ED86560);
        sub_2437EB954();
        v83 = 1;
        v73 = sub_2437EB944();
        v75 = v57;
        v58 = v74;
        swift_unknownObjectRelease();
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864E0, &qword_2437EC010);
        v60 = v71;
        v61 = &v71[*(v59 + 48)];
        v62 = *(v58 + 8);
        v63 = OUTLINED_FUNCTION_7();
        v64(v63);
        v65 = OUTLINED_FUNCTION_2();
        v66(v65);
        v67 = v75;
        *v61 = v73;
        v61[1] = v67;
        swift_storeEnumTagMultiPayload();
        v56 = v60;
      }

      v68 = v70;
      sub_2437B6054(v56, v70);
      sub_2437B6054(v68, v37);
      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2437B5E80()
{
  sub_2437EBA94();
  DownloadResponseMessage.hash(into:)();
  return sub_2437EBAD4();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2437B5F3C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2437B5F84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2437B6000()
{
  result = qword_27ED86558;
  if (!qword_27ED86558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86558);
  }

  return result;
}

uint64_t sub_2437B6054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadResponseMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437B60B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED864D0, &qword_2437EC000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437B6150(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2437B61F4()
{
  sub_2437B6268();
  if (v0 <= 0x3F)
  {
    sub_2437B62E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2437B6268()
{
  if (!qword_27ED86570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED864D0, &qword_2437EC000);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27ED86570);
    }
  }
}

ValueMetadata *sub_2437B62E0()
{
  result = qword_27ED86578;
  if (!qword_27ED86578)
  {
    result = &type metadata for SimultaneousTransferError;
    atomic_store(&type metadata for SimultaneousTransferError, &qword_27ED86578);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCAsyncSequenceRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2437B63B8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437B6484);
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

uint64_t getEnumTagSinglePayload for DownloadResponseMessage.SimultaneousTransferErrorCodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for DownloadResponseMessage.SimultaneousTransferErrorCodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2437B65C0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437B6604()
{
  result = qword_27ED87130[0];
  if (!qword_27ED87130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87130);
  }

  return result;
}

unint64_t sub_2437B665C()
{
  result = qword_27ED87340[0];
  if (!qword_27ED87340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87340);
  }

  return result;
}

unint64_t sub_2437B66B4()
{
  result = qword_27ED87550[0];
  if (!qword_27ED87550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87550);
  }

  return result;
}

unint64_t sub_2437B670C()
{
  result = qword_27ED87660;
  if (!qword_27ED87660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED87660);
  }

  return result;
}

unint64_t sub_2437B6764()
{
  result = qword_27ED87668[0];
  if (!qword_27ED87668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87668);
  }

  return result;
}

unint64_t sub_2437B67BC()
{
  result = qword_27ED876F0;
  if (!qword_27ED876F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED876F0);
  }

  return result;
}

unint64_t sub_2437B6814()
{
  result = qword_27ED876F8[0];
  if (!qword_27ED876F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED876F8);
  }

  return result;
}

unint64_t sub_2437B686C()
{
  result = qword_27ED87780;
  if (!qword_27ED87780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED87780);
  }

  return result;
}

unint64_t sub_2437B68C4()
{
  result = qword_27ED87788[0];
  if (!qword_27ED87788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87788);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5()
{

  return sub_2437EBA14();
}

uint64_t AssetUploadRequest.id.getter()
{
  OUTLINED_FUNCTION_13();
  v0 = sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_22();

  return v4(v3);
}

uint64_t AssetUploadRequest.tenantName.getter()
{
  v1 = (v0 + *(type metadata accessor for AssetUploadRequest() + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_22();
}

uint64_t type metadata accessor for AssetUploadRequest()
{
  result = qword_27ED87AA0;
  if (!qword_27ED87AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetUploadRequest.workingDirectory.getter()
{
  OUTLINED_FUNCTION_13();
  v0 = *(type metadata accessor for AssetUploadRequest() + 24);
  v1 = sub_2437EB334();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t AssetUploadRequest.fileURL.getter()
{
  OUTLINED_FUNCTION_13();
  v0 = *(type metadata accessor for AssetUploadRequest() + 28);
  v1 = sub_2437EB334();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t AssetUploadRequest.storageLocation.getter()
{
  OUTLINED_FUNCTION_13();
  v0 = *(type metadata accessor for AssetUploadRequest() + 32);
  v1 = sub_2437EB334();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t AssetUploadRequest.protector.getter()
{
  OUTLINED_FUNCTION_13();
  v2 = (v1 + *(type metadata accessor for AssetUploadRequest() + 36));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  sub_2437B6C6C(v3, v4);

  return sub_2437B6C6C(v5, v6);
}

uint64_t sub_2437B6C6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AssetUploadRequest.credential.getter()
{
  OUTLINED_FUNCTION_13();
  v2 = type metadata accessor for AssetUploadRequest();
  return sub_2437B8384(v1 + *(v2 + 40), v0, type metadata accessor for Credential);
}

uint64_t AssetUploadRequest.init(fileURL:storageLocation:protector:credential:)@<X0>(__int128 *a1@<X2>, uint64_t a2@<X8>)
{
  sub_2437EB3A4();
  v4 = type metadata accessor for AssetUploadRequest();
  v5 = (a2 + v4[5]);
  *v5 = 0x616C506572616853;
  v5[1] = 0xE900000000000079;
  v6 = v4[6];
  OUTLINED_FUNCTION_2_0();
  sub_2437B8520(v7, v8);
  v25 = a1[1];
  v26 = *a1;
  sub_2437BB8E0(0x616C506572616853, 0xE900000000000079, a2 + v6);
  v9 = v4[7];
  v10 = sub_2437EB334();
  OUTLINED_FUNCTION_1_0(v10);
  v12 = *(v11 + 32);
  OUTLINED_FUNCTION_16();
  v12();
  v13 = OUTLINED_FUNCTION_20();
  v14 = (v12)(v13);
  v22 = OUTLINED_FUNCTION_10_0(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);

  return sub_2437B6E40(v22, v23);
}

uint64_t sub_2437B6E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Credential(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AssetUploadRequest.init(tenantName:fileURL:storageLocation:protector:credential:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X4>, uint64_t a4@<X8>)
{
  sub_2437EB3A4();
  v8 = type metadata accessor for AssetUploadRequest();
  v9 = (a4 + v8[5]);
  *v9 = a1;
  v9[1] = a2;
  v10 = v8[6];
  OUTLINED_FUNCTION_2_0();
  sub_2437B8520(v11, v12);

  v29 = a3[1];
  v30 = *a3;
  sub_2437BB8E0(a1, a2, a4 + v10);

  v13 = v8[7];
  v14 = sub_2437EB334();
  OUTLINED_FUNCTION_1_0(v14);
  v16 = *(v15 + 32);
  OUTLINED_FUNCTION_16();
  v16();
  v17 = OUTLINED_FUNCTION_20();
  v18 = (v16)(v17);
  v26 = OUTLINED_FUNCTION_10_0(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30);

  return sub_2437B6E40(v26, v27);
}

uint64_t static AssetUploadRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2437EB394() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetUploadRequest();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19(v4[6]);
  if ((sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19(v4[7]);
  if ((sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19(v4[8]);
  if ((sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = *(a1 + v10 + 8);
  v12 = *(a1 + v10 + 16);
  v13 = *(a1 + v10 + 24);
  v29 = *(a1 + v10);
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v14 = (a2 + v10);
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v25 = *v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  sub_2437B6C6C(v29, v11);
  sub_2437B6C6C(v12, v13);
  sub_2437B6C6C(v25, v15);
  sub_2437B6C6C(v16, v17);
  LOBYTE(v12) = static Asset.Protector.== infix(_:_:)(&v29, &v25);
  v18 = v27;
  v19 = v28;
  sub_2437B7168(v25, v26);
  sub_2437B7168(v18, v19);
  v20 = v31;
  v21 = v32;
  sub_2437B7168(v29, v30);
  sub_2437B7168(v20, v21);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v22 = OUTLINED_FUNCTION_19(v4[10]);

  return static Credential.== infix(_:_:)(v22, v23);
}

uint64_t sub_2437B7168(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2437B71C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E746E616E6574 && a2 == 0xEA0000000000656DLL;
    if (v6 || (OUTLINED_FUNCTION_5() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002437F2F60 == a2;
      if (v7 || (OUTLINED_FUNCTION_5() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_5() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == OUTLINED_FUNCTION_17() && a2 == v9;
          if (v10 || (OUTLINED_FUNCTION_5() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 0x6F746365746F7270 && a2 == 0xE900000000000072;
            if (v11 || (OUTLINED_FUNCTION_5() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
            {

              return 6;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_5();

              if (v13)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2437B73D4(unsigned __int8 a1)
{
  sub_2437EBA94();
  MEMORY[0x245D40160](a1);
  return sub_2437EBAD4();
}

uint64_t sub_2437B741C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E746E616E6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x4C5255656C6966;
      break;
    case 4:
      result = OUTLINED_FUNCTION_17();
      break;
    case 5:
      result = 0x6F746365746F7270;
      break;
    case 6:
      result = 0x69746E6564657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437B7530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B71C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437B7564(uint64_t a1)
{
  sub_2437B78DC();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437B75A0(uint64_t a1)
{
  sub_2437B78DC();

  return MEMORY[0x2821FE720](a1);
}

uint64_t AssetUploadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86588, &qword_2437EC4C0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v35 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437B78DC();
  sub_2437EBB04();
  LOBYTE(v35) = 0;
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_1();
  sub_2437B8520(v14, v15);
  OUTLINED_FUNCTION_11();
  sub_2437EB9D4();
  if (!v2)
  {
    v16 = type metadata accessor for AssetUploadRequest();
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v35) = 1;
    OUTLINED_FUNCTION_11();
    sub_2437EB9C4();
    v20 = v16[6];
    LOBYTE(v35) = 2;
    sub_2437EB334();
    OUTLINED_FUNCTION_0_0();
    sub_2437B8520(v21, v22);
    OUTLINED_FUNCTION_7_0();
    v23 = v16[7];
    LOBYTE(v35) = 3;
    OUTLINED_FUNCTION_7_0();
    v24 = v16[8];
    LOBYTE(v35) = 4;
    OUTLINED_FUNCTION_7_0();
    v25 = (v3 + v16[9]);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v35 = *v25;
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v39 = 5;
    sub_2437B6C6C(v35, v26);
    sub_2437B6C6C(v27, v28);
    sub_2437B7930();
    OUTLINED_FUNCTION_11();
    sub_2437EB9D4();
    v29 = v37;
    v30 = v38;
    sub_2437B7168(v35, v36);
    sub_2437B7168(v29, v30);
    v31 = v16[10];
    LOBYTE(v35) = 6;
    type metadata accessor for Credential(0);
    OUTLINED_FUNCTION_3_0();
    sub_2437B8520(v32, v33);
    OUTLINED_FUNCTION_11();
    sub_2437EB9D4();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2437B78DC()
{
  result = qword_27ED87810[0];
  if (!qword_27ED87810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87810);
  }

  return result;
}

unint64_t sub_2437B7930()
{
  result = qword_27ED865A0;
  if (!qword_27ED865A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED865A0);
  }

  return result;
}

uint64_t AssetUploadRequest.hash(into:)()
{
  v1 = v0;
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_1();
  sub_2437B8520(v2, v3);
  sub_2437EB6D4();
  v4 = type metadata accessor for AssetUploadRequest();
  v5 = (v0 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_2437EB724();
  v8 = v4[6];
  sub_2437EB334();
  OUTLINED_FUNCTION_0_0();
  sub_2437B8520(v9, v10);
  OUTLINED_FUNCTION_16();
  sub_2437EB6D4();
  v11 = v1 + v4[7];
  OUTLINED_FUNCTION_16();
  sub_2437EB6D4();
  v12 = v1 + v4[8];
  OUTLINED_FUNCTION_16();
  sub_2437EB6D4();
  v13 = (v1 + v4[9]);
  v18 = *v13;
  v19 = v13[1];
  sub_2437B7B04();
  sub_2437EB6D4();
  v14 = v4[10];
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_3_0();
  sub_2437B8520(v15, v16);
  return sub_2437EB6D4();
}

unint64_t sub_2437B7B04()
{
  result = qword_27ED865C0;
  if (!qword_27ED865C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED865C0);
  }

  return result;
}

uint64_t AssetUploadRequest.hashValue.getter()
{
  sub_2437EBA94();
  AssetUploadRequest.hash(into:)();
  return sub_2437EBAD4();
}

uint64_t AssetUploadRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v76 = type metadata accessor for Credential(0);
  v3 = OUTLINED_FUNCTION_1_0(v76);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v78 = v7 - v6;
  v85 = sub_2437EB334();
  v8 = OUTLINED_FUNCTION_0(v85);
  v82 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v73 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v73 - v18;
  v20 = sub_2437EB3B4();
  v21 = OUTLINED_FUNCTION_0(v20);
  v81 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v27 = v26 - v25;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED865D0, &qword_2437EC4C8);
  v28 = OUTLINED_FUNCTION_0(v79);
  v77 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = v73 - v32;
  v86 = type metadata accessor for AssetUploadRequest();
  v34 = OUTLINED_FUNCTION_1_0(v86);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15();
  v87 = v38 - v37;
  v40 = a1[3];
  v39 = a1[4];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_2437B78DC();
  v80 = v33;
  v41 = v83;
  sub_2437EBAF4();
  if (v41)
  {
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v73[3] = v17;
  v74 = v19;
  v73[2] = v14;
  v42 = v78;
  LOBYTE(v88) = 0;
  OUTLINED_FUNCTION_1_1();
  sub_2437B8520(v43, v44);
  sub_2437EB954();
  v45 = v20;
  v46 = v87;
  (*(v81 + 32))(v87, v27, v45);
  LOBYTE(v88) = 1;
  v47 = sub_2437EB944();
  v48 = (v46 + v86[5]);
  *v48 = v47;
  v48[1] = v49;
  LOBYTE(v88) = 2;
  OUTLINED_FUNCTION_0_0();
  sub_2437B8520(v50, v51);
  v52 = v74;
  v53 = v85;
  OUTLINED_FUNCTION_9_1();
  *(v55 - 256) = v54;
  OUTLINED_FUNCTION_18();
  v83 = v45;
  v56 = *(v82 + 32);
  v57 = v46 + v86[6];
  v74 = (v82 + 32);
  v73[0] = v56;
  v56(v57, v52, v53);
  LOBYTE(v88) = 3;
  OUTLINED_FUNCTION_9_1();
  v59 = *(v58 - 256);
  OUTLINED_FUNCTION_18();
  v60 = OUTLINED_FUNCTION_12(v86[7]);
  v61(v60);
  LOBYTE(v88) = 4;
  OUTLINED_FUNCTION_9_1();
  v63 = *(v62 - 256);
  OUTLINED_FUNCTION_18();
  v64 = OUTLINED_FUNCTION_12(v86[8]);
  v65(v64);
  v90 = 5;
  sub_2437B8330();
  OUTLINED_FUNCTION_18();
  v66 = (v46 + v86[9]);
  v67 = v89;
  *v66 = v88;
  v66[1] = v67;
  LOBYTE(v88) = 6;
  OUTLINED_FUNCTION_3_0();
  sub_2437B8520(v68, v69);
  OUTLINED_FUNCTION_18();
  v70 = OUTLINED_FUNCTION_5_0();
  v71(v70);
  sub_2437B6E40(v42, v46 + v86[10]);
  sub_2437B8384(v46, v75, type metadata accessor for AssetUploadRequest);
  __swift_destroy_boxed_opaque_existential_1(v84);
  return sub_2437B83E0(v46);
}

uint64_t sub_2437B82F4()
{
  sub_2437EBA94();
  AssetUploadRequest.hash(into:)();
  return sub_2437EBAD4();
}

unint64_t sub_2437B8330()
{
  result = qword_27ED865E8;
  if (!qword_27ED865E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED865E8);
  }

  return result;
}

uint64_t sub_2437B8384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_1_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_22();
  v8(v7);
  return a2;
}

uint64_t sub_2437B83E0(uint64_t a1)
{
  v2 = type metadata accessor for AssetUploadRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437B843C(void *a1)
{
  a1[1] = sub_2437B8520(&qword_27ED865F8, type metadata accessor for AssetUploadRequest);
  a1[2] = sub_2437B8520(&qword_27ED86600, type metadata accessor for AssetUploadRequest);
  result = sub_2437B8520(&qword_27ED86608, type metadata accessor for AssetUploadRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_2437B8520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2437B85B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2437EB3B4();
  v7 = OUTLINED_FUNCTION_21(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = sub_2437EB334();
    v14 = OUTLINED_FUNCTION_21(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v9 = type metadata accessor for Credential(0);
      v16 = a3[10];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[5] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_2437B86D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2437EB3B4();
  result = OUTLINED_FUNCTION_21(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return result;
    }

    v13 = sub_2437EB334();
    v14 = OUTLINED_FUNCTION_21(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = type metadata accessor for Credential(0);
      v16 = a4[10];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2437B87E0()
{
  result = sub_2437EB3B4();
  if (v1 <= 0x3F)
  {
    result = sub_2437EB334();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Credential(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetUploadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetUploadRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x2437B89E4);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2437B8A28()
{
  result = qword_27ED87BB0[0];
  if (!qword_27ED87BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87BB0);
  }

  return result;
}

unint64_t sub_2437B8A80()
{
  result = qword_27ED87CC0;
  if (!qword_27ED87CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED87CC0);
  }

  return result;
}

unint64_t sub_2437B8AD8()
{
  result = qword_27ED87CC8[0];
  if (!qword_27ED87CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87CC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_2437EB9D4();
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  v13 = (v12 + *(v11 + 36));
  *v13 = a10;
  v13[1] = a9;
  v14 = v12 + *(v11 + 40);
  return v10;
}

uint64_t OUTLINED_FUNCTION_12@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v4 = *(v2 - 240);
  v5 = *(v2 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_18()
{
  v2 = *(v0 - 192);

  return sub_2437EB954();
}

uint64_t AssetDownloadRequest.id.getter()
{
  OUTLINED_FUNCTION_13();
  v0 = sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_22();

  return v4(v3);
}

uint64_t AssetDownloadRequest.tenantName.getter()
{
  v0 = type metadata accessor for AssetDownloadRequest();
  OUTLINED_FUNCTION_31(*(v0 + 20));

  return OUTLINED_FUNCTION_22();
}

uint64_t type metadata accessor for AssetDownloadRequest()
{
  result = qword_27ED87FE0;
  if (!qword_27ED87FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetDownloadRequest.workingDirectory.getter()
{
  OUTLINED_FUNCTION_13();
  v2 = *(type metadata accessor for AssetDownloadRequest() + 24);
  v3 = sub_2437EB334();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t AssetDownloadRequest.asset.getter()
{
  OUTLINED_FUNCTION_13();
  v2 = type metadata accessor for AssetDownloadRequest();
  return sub_2437BAD90(v1 + *(v2 + 28), v0);
}

uint64_t AssetDownloadRequest.range.getter()
{
  v1 = (v0 + *(type metadata accessor for AssetDownloadRequest() + 32));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t AssetDownloadRequest.fileURL.getter()
{
  OUTLINED_FUNCTION_13();
  v2 = *(type metadata accessor for AssetDownloadRequest() + 36);
  v3 = sub_2437EB334();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t AssetDownloadRequest.credential.getter()
{
  OUTLINED_FUNCTION_13();
  v2 = *(type metadata accessor for AssetDownloadRequest() + 40);
  OUTLINED_FUNCTION_14_1();
  return sub_2437BAD90(v1 + v3, v0);
}

uint64_t AssetDownloadRequest.storageReference.getter()
{
  v0 = type metadata accessor for AssetDownloadRequest();
  OUTLINED_FUNCTION_31(*(v0 + 44));
  v1 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v1, v2);
  return OUTLINED_FUNCTION_22();
}

uint64_t AssetDownloadRequest.storageReferenceSignature.getter()
{
  v0 = type metadata accessor for AssetDownloadRequest();
  OUTLINED_FUNCTION_31(*(v0 + 48));
  v1 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v1, v2);
  return OUTLINED_FUNCTION_22();
}

uint64_t AssetDownloadRequest.applicationID.getter()
{
  v0 = type metadata accessor for AssetDownloadRequest();
  OUTLINED_FUNCTION_31(*(v0 + 52));

  return OUTLINED_FUNCTION_22();
}

void AssetDownloadRequest.init(asset:fileURL:credential:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_2437EB3A4();
  v7 = type metadata accessor for AssetDownloadRequest();
  v8 = OUTLINED_FUNCTION_13_0(v7);
  *v9 = 0x616C506572616853;
  v9[1] = 0xE900000000000079;
  v10 = *(v8 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v11, v12);
  sub_2437BB8E0(0x616C506572616853, 0xE900000000000079, a3 + v10);
  v13 = v3[7];
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a1, v14);
  v15 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_0(v15);
  v17 = *(v16 + 32);
  v18 = OUTLINED_FUNCTION_30();
  v19(v18);
  v20 = v3[10];
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(a2, a3 + v21);
  *(a3 + v3[11]) = xmmword_2437EC710;
  *(a3 + v3[12]) = xmmword_2437EC710;
  OUTLINED_FUNCTION_3_1();
}

uint64_t sub_2437B90F8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

void AssetDownloadRequest.init(tenantName:asset:fileURL:credential:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_2437EB3A4();
  v11 = type metadata accessor for AssetDownloadRequest();
  v12 = OUTLINED_FUNCTION_13_0(v11);
  *v13 = a1;
  v13[1] = a2;
  v14 = *(v12 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v15, v16);

  sub_2437BB8E0(a1, a2, a5 + v14);

  v17 = v5[7];
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a3, v18);
  v19 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_0(v19);
  v21 = *(v20 + 32);
  v22 = OUTLINED_FUNCTION_30();
  v23(v22);
  v24 = v5[10];
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(a4, a5 + v25);
  *(a5 + v5[11]) = xmmword_2437EC710;
  *(a5 + v5[12]) = xmmword_2437EC710;
  OUTLINED_FUNCTION_3_1();
}

void AssetDownloadRequest.init(skeleton:fileURL:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2437EB3A4();
  v5 = type metadata accessor for AssetDownloadRequest();
  v6 = OUTLINED_FUNCTION_13_0(v5);
  *v7 = 0x616C506572616853;
  v7[1] = 0xE900000000000079;
  v8 = *(v6 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v9, v10);
  sub_2437BB8E0(0x616C506572616853, 0xE900000000000079, a2 + v8);
  v11 = v2[7];
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a1, v12);
  v13 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_0(v13);
  v15 = *(v14 + 32);
  v16 = OUTLINED_FUNCTION_30();
  v17(v16);
  v18 = type metadata accessor for AssetSkeleton();
  v19 = v18[7];
  v20 = v2[10];
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(a1 + v21, a2 + v22);
  v23 = v2[11];
  OUTLINED_FUNCTION_27(v18[5]);
  v24 = v2[12];
  OUTLINED_FUNCTION_27(v18[6]);
  OUTLINED_FUNCTION_3_1();
}

void AssetDownloadRequest.init(tenantName:skeleton:fileURL:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2437EB3A4();
  v9 = type metadata accessor for AssetDownloadRequest();
  v10 = OUTLINED_FUNCTION_13_0(v9);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v13, v14);

  sub_2437BB8E0(a1, a2, a4 + v12);

  v15 = v4[7];
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a3, v16);
  v17 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_0(v17);
  v19 = *(v18 + 32);
  v20 = OUTLINED_FUNCTION_30();
  v21(v20);
  v22 = type metadata accessor for AssetSkeleton();
  v23 = v22[7];
  v24 = v4[10];
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(a3 + v25, a4 + v26);
  v27 = v4[11];
  OUTLINED_FUNCTION_27(v22[5]);
  v28 = v4[12];
  OUTLINED_FUNCTION_27(v22[6]);
  OUTLINED_FUNCTION_3_1();
}

__n128 AssetDownloadRequest.init(asset:destination:credential:range:applicationID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2437EB3A4();
  v15 = *a3;
  v16 = a3[1];
  v17 = type metadata accessor for AssetDownloadRequest();
  v18 = OUTLINED_FUNCTION_13_0(v17);
  *v19 = v15;
  v19[1] = v16;
  v20 = *(v18 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v21, v22);

  sub_2437BB8E0(v15, v16, a9 + v20);
  v23 = v9[7];
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a1, v24);
  v25 = a9 + v9[8];
  *v25 = a4;
  *(v25 + 8) = a5;
  *(v25 + 16) = a6 & 1;
  v26 = v9[9];
  v27 = sub_2437EB334();
  OUTLINED_FUNCTION_4_0(v27);
  (*(v28 + 32))(a9 + v26, a2);
  v29 = v9[10];
  OUTLINED_FUNCTION_14_1();
  sub_2437BAD90(a3, a9 + v30);
  v31 = (a9 + v9[13]);
  *v31 = a7;
  v31[1] = a8;
  *(a9 + v9[11]) = xmmword_2437EC710;
  OUTLINED_FUNCTION_15_0();
  sub_2437BADE4(a3, v32);
  result = xmmword_2437EC710;
  *(a9 + v9[12]) = xmmword_2437EC710;
  return result;
}

uint64_t static AssetDownloadRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2437EB394() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetDownloadRequest();
  v5 = OUTLINED_FUNCTION_17_0(v4[5]);
  v9 = v5 == v8 && v6 == v7;
  if (!v9 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19(v4[6]);
  if ((sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_19(v4[7]);
  if (!static Asset.== infix(_:_:)(v10, v11))
  {
    return 0;
  }

  v12 = v4[8];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 16);
  v15 = a2 + v12;
  if (v14)
  {
    if (!*(v15 + 16))
    {
      return 0;
    }

LABEL_18:
    OUTLINED_FUNCTION_19(v4[9]);
    if ((sub_2437EB2F4() & 1) == 0)
    {
      return 0;
    }

    v18 = OUTLINED_FUNCTION_19(v4[10]);
    if ((static Credential.== infix(_:_:)(v18, v19) & 1) == 0)
    {
      return 0;
    }

    v20 = OUTLINED_FUNCTION_17_0(v4[11]);
    if ((MEMORY[0x245D3FA00](v20) & 1) == 0)
    {
      return 0;
    }

    v21 = OUTLINED_FUNCTION_17_0(v4[12]);
    if ((MEMORY[0x245D3FA00](v21) & 1) == 0)
    {
      return 0;
    }

    v22 = v4[13];
    v23 = (a1 + v22);
    v24 = *(a1 + v22 + 8);
    v25 = (a2 + v22);
    v26 = v25[1];
    if (v24)
    {
      if (!v26)
      {
        return 0;
      }

      v27 = *v23 == *v25 && v24 == v26;
      if (!v27 && (sub_2437EBA14() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((*(v15 + 16) & 1) == 0 && *v13 == *v15 && v13[1] == *(v15 + 8))
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_2437B9774(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E746E616E6574 && a2 == 0xEA0000000000656DLL;
    if (v6 || (OUTLINED_FUNCTION_5() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002437F2F60 == a2;
      if (v7 || (OUTLINED_FUNCTION_5() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_5() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
          if (v9 || (OUTLINED_FUNCTION_5() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
            if (v10 || (OUTLINED_FUNCTION_5() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
              if (v11 || (OUTLINED_FUNCTION_5() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000002437F2F80 == a2;
                if (v12 || (OUTLINED_FUNCTION_5() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x80000002437F2FA0 == a2;
                  if (v13 || (OUTLINED_FUNCTION_5() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == OUTLINED_FUNCTION_25() && a2 == v14)
                  {

                    return 9;
                  }

                  else
                  {
                    v16 = OUTLINED_FUNCTION_5();

                    if (v16)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2437B99F8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E746E616E6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7465737361;
      break;
    case 4:
      result = 0x65676E6172;
      break;
    case 5:
      result = 0x4C5255656C6966;
      break;
    case 6:
      result = 0x69746E6564657263;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = OUTLINED_FUNCTION_25();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437B9B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B9774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437B9B74(uint64_t a1)
{
  sub_2437BA004();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437B9BB0(uint64_t a1)
{
  sub_2437BA004();

  return MEMORY[0x2821FE720](a1);
}

uint64_t AssetDownloadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86620, &qword_2437EC720);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v33 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BA004();
  sub_2437EBB04();
  LOBYTE(v34) = 0;
  sub_2437EB3B4();
  OUTLINED_FUNCTION_6_0();
  sub_2437BAF20(v14, v15);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_10_1();
  sub_2437EB9D4();
  if (!v2)
  {
    v16 = type metadata accessor for AssetDownloadRequest();
    OUTLINED_FUNCTION_26(v16[5]);
    LOBYTE(v34) = 1;
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9C4();
    v17 = v16[6];
    LOBYTE(v34) = 2;
    v18 = sub_2437EB334();
    OUTLINED_FUNCTION_9_2();
    sub_2437BAF20(v19, v20);
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9D4();
    v33[1] = v18;
    v21 = v16[7];
    LOBYTE(v34) = 3;
    type metadata accessor for Asset(0);
    OUTLINED_FUNCTION_8_0();
    sub_2437BAF20(v22, v23);
    OUTLINED_FUNCTION_10_1();
    sub_2437EB9D4();
    v24 = (v3 + v16[8]);
    v25 = *(v24 + 16);
    v34 = *v24;
    v35 = v25;
    v36 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86630, &qword_2437EC728);
    sub_2437BACD0(&qword_27ED86638);
    OUTLINED_FUNCTION_10_1();
    sub_2437EB9B4();
    v26 = v16[9];
    LOBYTE(v34) = 5;
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9D4();
    v27 = v16[10];
    LOBYTE(v34) = 6;
    type metadata accessor for Credential(0);
    OUTLINED_FUNCTION_7_1();
    sub_2437BAF20(v28, v29);
    OUTLINED_FUNCTION_10_1();
    sub_2437EB9D4();
    *&v34 = OUTLINED_FUNCTION_26(v16[11]);
    *(&v34 + 1) = v30;
    v36 = 7;
    sub_2437B6C6C(v34, v30);
    sub_2437BA058();
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9D4();
    sub_2437B7168(v34, *(&v34 + 1));
    *&v34 = OUTLINED_FUNCTION_26(v16[12]);
    *(&v34 + 1) = v31;
    v36 = 8;
    sub_2437B6C6C(v34, v31);
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9D4();
    sub_2437B7168(v34, *(&v34 + 1));
    OUTLINED_FUNCTION_26(v16[13]);
    LOBYTE(v34) = 9;
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9A4();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2437BA004()
{
  result = qword_27ED87D50[0];
  if (!qword_27ED87D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87D50);
  }

  return result;
}

unint64_t sub_2437BA058()
{
  result = qword_27ED86640;
  if (!qword_27ED86640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86640);
  }

  return result;
}

uint64_t AssetDownloadRequest.hash(into:)()
{
  v1 = v0;
  sub_2437EB3B4();
  OUTLINED_FUNCTION_6_0();
  sub_2437BAF20(v2, v3);
  sub_2437EB6D4();
  v4 = type metadata accessor for AssetDownloadRequest();
  v5 = (v0 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_2437EB724();
  v8 = v4[6];
  sub_2437EB334();
  OUTLINED_FUNCTION_9_2();
  sub_2437BAF20(v9, v10);
  OUTLINED_FUNCTION_7();
  sub_2437EB6D4();
  v11 = v4[7];
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_8_0();
  sub_2437BAF20(v12, v13);
  sub_2437EB6D4();
  v14 = (v1 + v4[8]);
  if (*(v14 + 16) == 1)
  {
    sub_2437EBAB4();
  }

  else
  {
    v16 = *v14;
    v15 = v14[1];
    sub_2437EBAB4();
    MEMORY[0x245D40160](v16);
    MEMORY[0x245D40160](v15);
  }

  v17 = v1 + v4[9];
  OUTLINED_FUNCTION_7();
  sub_2437EB6D4();
  v18 = v4[10];
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_7_1();
  sub_2437BAF20(v19, v20);
  OUTLINED_FUNCTION_7();
  sub_2437EB6D4();
  v21 = (v1 + v4[11]);
  v22 = *v21;
  v23 = v21[1];
  sub_2437EB354();
  v24 = (v1 + v4[12]);
  v25 = *v24;
  v26 = v24[1];
  sub_2437EB354();
  v27 = (v1 + v4[13]);
  if (!v27[1])
  {
    return sub_2437EBAB4();
  }

  v28 = *v27;
  sub_2437EBAB4();

  return sub_2437EB724();
}

uint64_t AssetDownloadRequest.hashValue.getter()
{
  sub_2437EBA94();
  AssetDownloadRequest.hash(into:)();
  return sub_2437EBAD4();
}

uint64_t AssetDownloadRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v96 = type metadata accessor for Credential(0);
  v3 = OUTLINED_FUNCTION_1_0(v96);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v97 = v7 - v6;
  v99 = type metadata accessor for Asset(0);
  v8 = OUTLINED_FUNCTION_1_0(v99);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v98 = v12 - v11;
  v13 = sub_2437EB334();
  v14 = OUTLINED_FUNCTION_0(v13);
  v107 = v15;
  v108 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v94 - v21;
  v23 = sub_2437EB3B4();
  v24 = OUTLINED_FUNCTION_0(v23);
  v103 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86650, &qword_2437EC730);
  v28 = OUTLINED_FUNCTION_0(v102);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v34 = v94 - v33;
  v109 = type metadata accessor for AssetDownloadRequest();
  v35 = OUTLINED_FUNCTION_1_0(v109);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  v104 = a1;
  v105 = v39 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BA004();
  v100 = v34;
  v41 = v106;
  sub_2437EBAF4();
  v101 = v23;
  if (v41)
  {
    v106 = v41;
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  v42 = v98;
  v106 = v20;
  v94[2] = v30;
  LOBYTE(v110) = 0;
  OUTLINED_FUNCTION_6_0();
  sub_2437BAF20(v43, v44);
  OUTLINED_FUNCTION_29();
  sub_2437EB954();
  v51 = *(v103 + 32);
  v52 = v105;
  v53 = OUTLINED_FUNCTION_7();
  v54(v53);
  LOBYTE(v110) = 1;
  v55 = sub_2437EB944();
  v56 = (v52 + v109[5]);
  *v56 = v55;
  v56[1] = v57;
  LOBYTE(v110) = 2;
  OUTLINED_FUNCTION_9_2();
  v60 = sub_2437BAF20(v58, v59);
  v61 = v22;
  v62 = v108;
  sub_2437EB954();
  v94[1] = v60;
  v63 = v61;
  v64 = *(v107 + 32);
  v64(v52 + v109[6], v63, v62);
  LOBYTE(v110) = 3;
  OUTLINED_FUNCTION_8_0();
  sub_2437BAF20(v65, v66);
  OUTLINED_FUNCTION_29();
  sub_2437EB954();
  v67 = v109[7];
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(v42, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86630, &qword_2437EC728);
  v112 = 4;
  sub_2437BACD0(&qword_27ED86660);
  sub_2437EB934();
  v69 = v111;
  v70 = v52 + v109[8];
  *v70 = v110;
  *(v70 + 16) = v69;
  LOBYTE(v110) = 5;
  v71 = v106;
  sub_2437EB954();
  v72 = v109;
  v64(v52 + v109[9], v71, v62);
  LOBYTE(v110) = 6;
  OUTLINED_FUNCTION_7_1();
  sub_2437BAF20(v73, v74);
  OUTLINED_FUNCTION_29();
  v75 = v97;
  sub_2437EB954();
  v76 = v72;
  v77 = v72[10];
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(v75, v52 + v78);
  v112 = 7;
  sub_2437BAD3C();
  OUTLINED_FUNCTION_23();
  sub_2437EB954();
  v106 = 0;
  *(v52 + v72[11]) = v110;
  v112 = 8;
  OUTLINED_FUNCTION_23();
  v79 = v106;
  sub_2437EB954();
  v106 = v79;
  if (v79)
  {
    v80 = OUTLINED_FUNCTION_22_0();
    v81(v80);
    v82 = 0;
  }

  else
  {
    *(v52 + v72[12]) = v110;
    LOBYTE(v110) = 9;
    v83 = v106;
    v84 = sub_2437EB924();
    v106 = v83;
    if (!v83)
    {
      v88 = v84;
      v89 = v85;
      v90 = OUTLINED_FUNCTION_32();
      v91(v90);
      v92 = v105;
      v93 = (v105 + v109[13]);
      *v93 = v88;
      v93[1] = v89;
      sub_2437BAD90(v92, v95);
      __swift_destroy_boxed_opaque_existential_1(v104);
      return sub_2437BADE4(v92, type metadata accessor for AssetDownloadRequest);
    }

    v86 = OUTLINED_FUNCTION_32();
    v87(v86);
    v82 = 1;
    v76 = v109;
    v52 = v105;
  }

  __swift_destroy_boxed_opaque_existential_1(v104);
  (*(v103 + 8))(v52, v101);
  v46 = *(v52 + v76[5] + 8);

  v50 = v108;
  (*(v107 + 8))(v52 + v76[6], v108);
  sub_2437BADE4(v52 + v76[7], type metadata accessor for Asset);
  (*(v107 + 8))(v52 + v76[9], v50);
  v47 = v76[10];
  OUTLINED_FUNCTION_15_0();
  sub_2437BADE4(v52 + v48, v49);
  result = sub_2437B7168(*(v52 + v76[11]), *(v52 + v76[11] + 8));
  if (v82)
  {
    return sub_2437B7168(*(v52 + v76[12]), *(v52 + v76[12] + 8));
  }

  return result;
}

uint64_t sub_2437BAC94()
{
  sub_2437EBA94();
  AssetDownloadRequest.hash(into:)();
  return sub_2437EBAD4();
}

uint64_t sub_2437BACD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86630, &qword_2437EC728);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2437BAD3C()
{
  result = qword_27ED86668;
  if (!qword_27ED86668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86668);
  }

  return result;
}

uint64_t sub_2437BAD90(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t sub_2437BADE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2437BAE3C(void *a1)
{
  a1[1] = sub_2437BAF20(&qword_27ED86670, type metadata accessor for AssetDownloadRequest);
  a1[2] = sub_2437BAF20(&qword_27ED86678, type metadata accessor for AssetDownloadRequest);
  result = sub_2437BAF20(&qword_27ED86680, type metadata accessor for AssetDownloadRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_2437BAF20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2437BAFB0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_34();
  v6 = sub_2437EB3B4();
  v7 = OUTLINED_FUNCTION_21(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = sub_2437EB334();
    v14 = OUTLINED_FUNCTION_21(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v17 = type metadata accessor for Asset(0);
      v18 = OUTLINED_FUNCTION_21(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[7];
      }

      else
      {
        v9 = type metadata accessor for Credential(0);
        v16 = a3[10];
      }
    }

    v10 = v3 + v16;
    goto LABEL_13;
  }

  v11 = *(v3 + a3[5] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_2437BB110(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_34();
  v8 = sub_2437EB3B4();
  result = OUTLINED_FUNCTION_21(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5] + 8) = (a2 - 1);
      return result;
    }

    v13 = sub_2437EB334();
    v14 = OUTLINED_FUNCTION_21(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = type metadata accessor for Asset(0);
      v18 = OUTLINED_FUNCTION_21(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v11 = type metadata accessor for Credential(0);
        v16 = a4[10];
      }
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2437BB258()
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_33();
  if (!(!v2 & v1))
  {
    sub_2437EB334();
    OUTLINED_FUNCTION_33();
    if (!(!v2 & v1))
    {
      v3 = type metadata accessor for Asset(319);
      if (v4 > 0x3F)
      {
        return v3;
      }

      sub_2437BB364();
      if (v5 > 0x3F)
      {
        return v3;
      }

      else
      {
        type metadata accessor for Credential(319);
        OUTLINED_FUNCTION_33();
        if (!(!v2 & v1))
        {
          sub_2437BB3C8();
          OUTLINED_FUNCTION_33();
          if (!(!v2 & v1))
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_2437BB364()
{
  if (!qword_27ED86690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86630, &qword_2437EC728);
    v0 = sub_2437EB864();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED86690);
    }
  }
}

void sub_2437BB3C8()
{
  if (!qword_27ED86698)
  {
    v0 = sub_2437EB864();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED86698);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetDownloadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDownloadRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x2437BB56CLL);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2437BB5A8()
{
  result = qword_27ED880F0;
  if (!qword_27ED880F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED880F0);
  }

  return result;
}

unint64_t sub_2437BB600()
{
  result = qword_27ED88200;
  if (!qword_27ED88200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88200);
  }

  return result;
}

unint64_t sub_2437BB658()
{
  result = qword_27ED88208[0];
  if (!qword_27ED88208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88208);
  }

  return result;
}

void OUTLINED_FUNCTION_3_1()
{
  v2 = (v0 + *(v1 + 52));
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + *(v1 + 32);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_17_0@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_26@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

__n128 OUTLINED_FUNCTION_27@<Q0>(uint64_t a1@<X8>)
{
  result = *(v3 + a1);
  *(v2 + v1) = result;
  return result;
}

void OUTLINED_FUNCTION_31(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t OUTLINED_FUNCTION_32()
{
  v1 = *(*(v0 - 240) + 8);
  result = *(v0 - 192);
  v3 = *(v0 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{
  v2 = *(v0 + 36);

  return sub_2437EB334();
}

void sub_2437BB8E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v59 = a2;
  v60 = a3;
  v3 = sub_2437EB2B4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866A0, &unk_2437EC990);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - v10;
  v12 = sub_2437EB334();
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_3();
  v66 = v17;
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  v67 = v19;
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_3();
  v64 = v21;
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_3();
  v56 = v23;
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v24);
  v57 = &v55 - v25;
  v26 = NSHomeDirectory();
  sub_2437EB6F4();

  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v27 = *MEMORY[0x277CC91D8];
  v29 = (v4 + 13);
  v28 = v4[13];
  v28(v7, v27, v3);
  v30 = v61;
  sub_2437EB314();
  v31 = OUTLINED_FUNCTION_2_2(0x7972617262694CLL);
  v32 = v3;
  v28(v31, v27, v3);
  v65 = v28;
  v63 = sub_2437BBEF4();
  sub_2437EB324();
  v33 = v4[1];
  v68 = v4 + 1;
  v33(v7, v3);
  v34 = v69;
  v35 = *(v70 + 8);
  v70 += 8;
  v35(v30, v69);
  v36 = OUTLINED_FUNCTION_2_2(0x736568636143);
  v28(v36, v27, v32);
  v37 = v66;
  sub_2437EB324();
  v33(v7, v32);
  v35(v37, v34);
  v38 = OUTLINED_FUNCTION_2_2(0x74694B64756F6C43);
  v62 = v27;
  v61 = v29;
  v65(v38, v27, v32);
  v39 = v67;
  sub_2437EB324();
  v40 = v32;
  v66 = v33;
  v33(v7, v32);
  v67 = v35;
  v35(v39, v69);
  v41 = [objc_opt_self() mainBundle];
  v42 = [v41 bundleIdentifier];

  if (v42)
  {
    v43 = sub_2437EB6F4();
    v45 = v44;

    v71 = v43;
    v72 = v45;
    v46 = v62;
    v47 = v65;
    v65(v7, v62, v40);
    v48 = v56;
    v49 = v64;
    sub_2437EB324();
    v66(v7, v40);

    v67(v49, v69);
    v50 = OUTLINED_FUNCTION_2_2(0x73734164756F6C43);
    v47(v50, v46, v40);
    v51 = v57;
    sub_2437EB324();
    v52 = v66;
    v66(v7, v40);
    v53 = v48;
    v54 = v69;
    v67(v53, v69);
    v71 = v58;
    v72 = v59;
    v47(v7, v62, v40);
    sub_2437EB324();
    v52(v7, v40);
    v67(v51, v54);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2437BBEF4()
{
  result = qword_27ED866A8;
  if (!qword_27ED866A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED866A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = v1;
  return v2;
}

uint64_t type metadata accessor for ServiceIdentifier()
{
  result = qword_27ED88290;
  if (!qword_27ED88290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2437BC008()
{
  sub_2437BC07C();
  if (v0 <= 0x3F)
  {
    sub_2437BC0A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_2437BC07C()
{
  result = qword_27ED866B0;
  if (!qword_27ED866B0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27ED866B0);
  }

  return result;
}

void sub_2437BC0A4()
{
  if (!qword_27ED866B8)
  {
    v0 = sub_2437EB684();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED866B8);
    }
  }
}

uint64_t sub_2437BC0EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000002437F2FC0 == a2;
  if (v3 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_14_2() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_5() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0xD000000000000010 && 0x80000002437F2FE0 == a2;
      if (v8 || (OUTLINED_FUNCTION_5() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == OUTLINED_FUNCTION_13_1() && a2 == v9;
        if (v10 || (OUTLINED_FUNCTION_5() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == OUTLINED_FUNCTION_12_0() && a2 == v11)
        {

          return 4;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_5();

          if (v13)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2437BC228()
{
  result = OUTLINED_FUNCTION_14_2();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = OUTLINED_FUNCTION_13_1();
      break;
    case 4:
      result = OUTLINED_FUNCTION_12_0();
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_2437BC2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BC0EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437BC324()
{
  sub_2437BCB88();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC35C()
{
  sub_2437BCB88();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC394(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_2437BC418()
{
  sub_2437BCC84();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC450()
{
  sub_2437BCC84();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BC394(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437BC4D4()
{
  sub_2437BCCD8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC50C()
{
  sub_2437BCCD8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC544()
{
  sub_2437BCD2C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC57C()
{
  sub_2437BCD2C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC5B4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = j__swift_bridgeObjectRelease(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_2437BC5E4()
{
  sub_2437BCBDC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC61C()
{
  sub_2437BCBDC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC654()
{
  sub_2437BCC30();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC68C()
{
  sub_2437BCC30();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t XPCError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866C0, &qword_2437EC9E0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v68 = v5;
  v69 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_2();
  v67 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866C8, &qword_2437EC9E8);
  v11 = OUTLINED_FUNCTION_0(v10);
  v65 = v12;
  v66 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_2();
  v64 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866D0, &qword_2437EC9F0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v62 = v19;
  v63 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_2();
  v61 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866D8, &qword_2437EC9F8);
  v25 = OUTLINED_FUNCTION_0(v24);
  v59 = v26;
  v60 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v29);
  v31 = &v57 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866E0, &qword_2437ECA00);
  OUTLINED_FUNCTION_0(v32);
  v58 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v36);
  v38 = &v57 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866E8, &qword_2437ECA08);
  v40 = OUTLINED_FUNCTION_0(v39);
  v70 = v41;
  v71 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v44);
  v45 = v1[1];
  v57 = *v1;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BCB88();
  sub_2437EBB04();
  switch(v45)
  {
    case 0:
      v72 = 0;
      sub_2437BCD2C();
      OUTLINED_FUNCTION_17_1();
      (*(v58 + 8))(v38, v32);
      v47 = OUTLINED_FUNCTION_11_0();
      v49 = v46;
      goto LABEL_7;
    case 1:
      v74 = 2;
      sub_2437BCC84();
      v50 = v61;
      OUTLINED_FUNCTION_8_1();
      v52 = v62;
      v51 = v63;
      goto LABEL_6;
    case 2:
      v75 = 3;
      sub_2437BCC30();
      v50 = v64;
      OUTLINED_FUNCTION_8_1();
      v52 = v65;
      v51 = v66;
      goto LABEL_6;
    case 3:
      v76 = 4;
      sub_2437BCBDC();
      v50 = v67;
      OUTLINED_FUNCTION_8_1();
      v52 = v68;
      v51 = v69;
LABEL_6:
      (*(v52 + 8))(v50, v51);
      v47 = OUTLINED_FUNCTION_11_0();
      v49 = v32;
LABEL_7:
      result = v48(v47, v49);
      break;
    default:
      v73 = 1;
      sub_2437BCCD8();
      OUTLINED_FUNCTION_17_1();
      v54 = v60;
      sub_2437EB9C4();
      (*(v59 + 8))(v31, v54);
      v55 = OUTLINED_FUNCTION_11_0();
      result = v56(v55, v46);
      break;
  }

  return result;
}

unint64_t sub_2437BCB88()
{
  result = qword_27ED882A0;
  if (!qword_27ED882A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882A0);
  }

  return result;
}

unint64_t sub_2437BCBDC()
{
  result = qword_27ED882A8;
  if (!qword_27ED882A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882A8);
  }

  return result;
}

unint64_t sub_2437BCC30()
{
  result = qword_27ED882B0;
  if (!qword_27ED882B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882B0);
  }

  return result;
}

unint64_t sub_2437BCC84()
{
  result = qword_27ED882B8;
  if (!qword_27ED882B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882B8);
  }

  return result;
}

unint64_t sub_2437BCCD8()
{
  result = qword_27ED882C0;
  if (!qword_27ED882C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882C0);
  }

  return result;
}

unint64_t sub_2437BCD2C()
{
  result = qword_27ED882C8[0];
  if (!qword_27ED882C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED882C8);
  }

  return result;
}

uint64_t XPCError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v94 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866F0, &qword_2437ECA10);
  OUTLINED_FUNCTION_0(v97);
  v90 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_2();
  v96 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866F8, &qword_2437ECA18);
  v9 = OUTLINED_FUNCTION_0(v8);
  v88 = v10;
  v89 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_2();
  v93 = v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86700, &qword_2437ECA20);
  OUTLINED_FUNCTION_0(v87);
  v85 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_2();
  v92 = v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86708, &qword_2437ECA28);
  OUTLINED_FUNCTION_0(v91);
  v86 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v23);
  v25 = &v79 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86710, &qword_2437ECA30);
  OUTLINED_FUNCTION_0(v26);
  v84 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v30);
  v32 = &v79 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86718, &qword_2437ECA38);
  OUTLINED_FUNCTION_0(v33);
  v95 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v37);
  v39 = &v79 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BCB88();
  v41 = v98;
  sub_2437EBAF4();
  if (v41)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v81 = v26;
  v82 = v32;
  v83 = v25;
  v43 = v96;
  v42 = v97;
  v98 = a1;
  v44 = sub_2437EB974();
  v48 = sub_2437B5F3C(v44, 0);
  if (v46 == v47 >> 1)
  {
    goto LABEL_7;
  }

  if (v46 >= (v47 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2437BD51CLL);
  }

  v80 = *(v45 + v46);
  sub_2437B5F84(v46 + 1, v47 >> 1, v48, v45, v46, v47);
  v50 = v49;
  v52 = v51;
  swift_unknownObjectRelease();
  if (v50 != v52 >> 1)
  {
LABEL_7:
    v59 = sub_2437EB8C4();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
    *v61 = &type metadata for XPCError;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = OUTLINED_FUNCTION_1_4();
    v64(v63);
    a1 = v98;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v53 = v94;
  switch(v80)
  {
    case 1:
      v100 = 1;
      sub_2437BCCD8();
      OUTLINED_FUNCTION_4_1();
      v74 = sub_2437EB944();
      v75 = v95;
      v57 = v74;
      v58 = v76;
      swift_unknownObjectRelease();
      v77 = OUTLINED_FUNCTION_16_1();
      v78(v77);
      (*(v75 + 8))(v39, v33);
      break;
    case 2:
      v101 = 2;
      sub_2437BCC84();
      v68 = v92;
      OUTLINED_FUNCTION_4_1();
      swift_unknownObjectRelease();
      (*(v85 + 8))(v68, v87);
      v69 = OUTLINED_FUNCTION_1_4();
      v70(v69);
      v57 = 0;
      v58 = 1;
      break;
    case 3:
      v102 = 3;
      sub_2437BCC30();
      v71 = v93;
      OUTLINED_FUNCTION_4_1();
      swift_unknownObjectRelease();
      (*(v88 + 8))(v71, v89);
      v72 = OUTLINED_FUNCTION_1_4();
      v73(v72);
      v57 = 0;
      v58 = 2;
      break;
    case 4:
      v103 = 4;
      sub_2437BCBDC();
      OUTLINED_FUNCTION_4_1();
      swift_unknownObjectRelease();
      (*(v90 + 8))(v43, v42);
      v66 = OUTLINED_FUNCTION_1_4();
      v67(v66);
      v57 = 0;
      v58 = 3;
      break;
    default:
      v99 = 0;
      sub_2437BCD2C();
      v54 = v82;
      OUTLINED_FUNCTION_4_1();
      swift_unknownObjectRelease();
      (*(v84 + 8))(v54, v81);
      v55 = OUTLINED_FUNCTION_1_4();
      v56(v55);
      v57 = 0;
      v58 = 0;
      break;
  }

  *v53 = v57;
  v53[1] = v58;
  return __swift_destroy_boxed_opaque_existential_1(v98);
}

uint64_t get_enum_tag_for_layout_string_18CloudAssetsCommons8XPCErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2437BD594(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_1();
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437BD5E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_2437BD640(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2437BD66C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2437BD6F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2437BD7C0);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t _s18CloudAssetsCommons21UploadResponseMessageO16SignalCodingKeysOwet_0(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *sub_2437BD84C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2437BD8E8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437BD948()
{
  result = qword_27ED88850[0];
  if (!qword_27ED88850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88850);
  }

  return result;
}

unint64_t sub_2437BD9A0()
{
  result = qword_27ED88B60[0];
  if (!qword_27ED88B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88B60);
  }

  return result;
}

unint64_t sub_2437BD9F8()
{
  result = qword_27ED88C70;
  if (!qword_27ED88C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88C70);
  }

  return result;
}

unint64_t sub_2437BDA50()
{
  result = qword_27ED88C78;
  if (!qword_27ED88C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88C78);
  }

  return result;
}

unint64_t sub_2437BDAA8()
{
  result = qword_27ED88D00;
  if (!qword_27ED88D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88D00);
  }

  return result;
}

unint64_t sub_2437BDB00()
{
  result = qword_27ED88D08[0];
  if (!qword_27ED88D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88D08);
  }

  return result;
}

unint64_t sub_2437BDB58()
{
  result = qword_27ED88D90;
  if (!qword_27ED88D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88D90);
  }

  return result;
}

unint64_t sub_2437BDBB0()
{
  result = qword_27ED88D98[0];
  if (!qword_27ED88D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88D98);
  }

  return result;
}

unint64_t sub_2437BDC08()
{
  result = qword_27ED88E20;
  if (!qword_27ED88E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88E20);
  }

  return result;
}

unint64_t sub_2437BDC60()
{
  result = qword_27ED88E28[0];
  if (!qword_27ED88E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88E28);
  }

  return result;
}

unint64_t sub_2437BDCB8()
{
  result = qword_27ED88EB0;
  if (!qword_27ED88EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88EB0);
  }

  return result;
}

unint64_t sub_2437BDD10()
{
  result = qword_27ED88EB8[0];
  if (!qword_27ED88EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88EB8);
  }

  return result;
}

unint64_t sub_2437BDD68()
{
  result = qword_27ED88F40;
  if (!qword_27ED88F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88F40);
  }

  return result;
}

unint64_t sub_2437BDDC0()
{
  result = qword_27ED88F48[0];
  if (!qword_27ED88F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88F48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return sub_2437EB904();
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  v2 = *(v0 - 96);

  return sub_2437EB994();
}

uint64_t OUTLINED_FUNCTION_16_1()
{
  v2 = *(*(v1 - 184) + 8);
  result = v0;
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_1()
{
  v2 = *(v0 - 96);

  return sub_2437EB994();
}

uint64_t AssetDownloadResponse.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2437EB3B4();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t type metadata accessor for AssetDownloadResponse()
{
  result = qword_27ED89260;
  if (!qword_27ED89260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetDownloadResponse.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetDownloadResponse() + 24);
  v4 = sub_2437EB334();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t AssetDownloadResponse.range.getter()
{
  v1 = (v0 + *(type metadata accessor for AssetDownloadResponse() + 28));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t AssetDownloadResponse.init(id:asset:fileURL:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0(v14);
  (*(v15 + 32))(a7, a1);
  v16 = type metadata accessor for AssetDownloadResponse();
  sub_2437BE1C8(a2, a7 + v16[5]);
  v17 = v16[6];
  v18 = sub_2437EB334();
  OUTLINED_FUNCTION_1_0(v18);
  result = (*(v19 + 32))(a7 + v17, a3);
  v21 = a7 + v16[7];
  *v21 = a4;
  *(v21 + 8) = a5;
  *(v21 + 16) = a6 & 1;
  return result;
}

uint64_t sub_2437BE1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Asset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static AssetDownloadResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2437EB394() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetDownloadResponse();
  if (!static Asset.== infix(_:_:)(a1 + v4[5], a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  if ((sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 16);
  v9 = a2 + v6;
  if ((v8 & 1) == 0)
  {
    if (*(v9 + 16))
    {
      return 0;
    }

    return *v7 == *v9 && v7[1] == *(v9 + 8);
  }

  return (*(v9 + 16) & 1) != 0;
}

uint64_t sub_2437BE2D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_5() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_5() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_5();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2437BE3F0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7465737361;
      break;
    case 2:
      result = 0x4C5255656C6966;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437BE478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BE2D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437BE4AC(uint64_t a1)
{
  sub_2437BE7B8();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437BE4E8(uint64_t a1)
{
  sub_2437BE7B8();

  return MEMORY[0x2821FE720](a1);
}

uint64_t AssetDownloadResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86720, &unk_2437ED080);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BE7B8();
  sub_2437EBB04();
  LOBYTE(v27) = 0;
  sub_2437EB3B4();
  OUTLINED_FUNCTION_0_3();
  sub_2437BF08C(v14, v15);
  OUTLINED_FUNCTION_4_2();
  sub_2437EB9D4();
  if (!v2)
  {
    v16 = type metadata accessor for AssetDownloadResponse();
    v17 = v16[5];
    LOBYTE(v27) = 1;
    type metadata accessor for Asset(0);
    OUTLINED_FUNCTION_2_3();
    sub_2437BF08C(v18, v19);
    OUTLINED_FUNCTION_4_2();
    sub_2437EB9D4();
    v20 = v16[6];
    LOBYTE(v27) = 2;
    sub_2437EB334();
    OUTLINED_FUNCTION_1_5();
    sub_2437BF08C(v21, v22);
    OUTLINED_FUNCTION_4_2();
    sub_2437EB9D4();
    v23 = (v3 + v16[7]);
    v24 = *(v23 + 16);
    v27 = *v23;
    v28 = v24;
    v26[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86630, &qword_2437EC728);
    sub_2437BACD0(&qword_27ED86638);
    OUTLINED_FUNCTION_4_2();
    sub_2437EB9B4();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2437BE7B8()
{
  result = qword_27ED88FD0[0];
  if (!qword_27ED88FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88FD0);
  }

  return result;
}

uint64_t AssetDownloadResponse.hash(into:)()
{
  v1 = v0;
  sub_2437EB3B4();
  OUTLINED_FUNCTION_0_3();
  sub_2437BF08C(v2, v3);
  sub_2437EB6D4();
  v4 = type metadata accessor for AssetDownloadResponse();
  v5 = v4[5];
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_2_3();
  sub_2437BF08C(v6, v7);
  OUTLINED_FUNCTION_10_3();
  v8 = v4[6];
  sub_2437EB334();
  OUTLINED_FUNCTION_1_5();
  sub_2437BF08C(v9, v10);
  OUTLINED_FUNCTION_10_3();
  v11 = (v1 + v4[7]);
  if (*(v11 + 16) == 1)
  {
    return sub_2437EBAB4();
  }

  v14 = *v11;
  v13 = v11[1];
  sub_2437EBAB4();
  MEMORY[0x245D40160](v14);
  return MEMORY[0x245D40160](v13);
}

uint64_t AssetDownloadResponse.hashValue.getter()
{
  sub_2437EBA94();
  AssetDownloadResponse.hash(into:)();
  return sub_2437EBAD4();
}

uint64_t AssetDownloadResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_2437EB334();
  v4 = OUTLINED_FUNCTION_0(v3);
  v60 = v5;
  v61 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v57 = v9 - v8;
  v59 = type metadata accessor for Asset(0);
  v10 = OUTLINED_FUNCTION_1_0(v59);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = sub_2437EB3B4();
  v17 = OUTLINED_FUNCTION_0(v16);
  v58 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v63 = v22 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86728, &qword_2437ED090);
  v23 = OUTLINED_FUNCTION_0(v65);
  v62 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v28 = &v55 - v27;
  v29 = type metadata accessor for AssetDownloadResponse();
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15();
  v35 = v34 - v33;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BE7B8();
  v64 = v28;
  v37 = v66;
  sub_2437EBAF4();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v15;
  v39 = v29;
  v66 = v35;
  v40 = v60;
  v41 = v61;
  LOBYTE(v67) = 0;
  OUTLINED_FUNCTION_0_3();
  sub_2437BF08C(v42, v43);
  sub_2437EB954();
  v44 = *(v58 + 32);
  v45 = v63;
  v63 = v16;
  v44(v66, v45, v16);
  LOBYTE(v67) = 1;
  OUTLINED_FUNCTION_2_3();
  sub_2437BF08C(v46, v47);
  sub_2437EB954();
  sub_2437BE1C8(v38, v66 + v39[5]);
  LOBYTE(v67) = 2;
  OUTLINED_FUNCTION_1_5();
  sub_2437BF08C(v48, v49);
  v50 = v57;
  sub_2437EB954();
  (*(v40 + 32))(v66 + v39[6], v50, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86630, &qword_2437EC728);
  v69 = 3;
  sub_2437BACD0(&qword_27ED86660);
  sub_2437EB934();
  (*(v62 + 8))(v64, v65);
  v51 = v68;
  v52 = v66;
  v53 = v66 + v39[7];
  *v53 = v67;
  *(v53 + 16) = v51;
  sub_2437BEF54(v52, v56, type metadata accessor for AssetDownloadResponse);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2437BEFB4(v52, type metadata accessor for AssetDownloadResponse);
}

uint64_t sub_2437BEF18()
{
  sub_2437EBA94();
  AssetDownloadResponse.hash(into:)();
  return sub_2437EBAD4();
}

uint64_t sub_2437BEF54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2437BEFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2437BF08C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2437BF11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2437EB3B4();
  v7 = OUTLINED_FUNCTION_21(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Asset(0);
    v12 = OUTLINED_FUNCTION_21(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_2437EB334();
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_2437BF208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2437EB3B4();
  v9 = OUTLINED_FUNCTION_21(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Asset(0);
    v14 = OUTLINED_FUNCTION_21(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_2437EB334();
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_2437BF2E8()
{
  sub_2437EB3B4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Asset(319);
    if (v1 <= 0x3F)
    {
      sub_2437EB334();
      if (v2 <= 0x3F)
      {
        sub_2437BB364();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetDownloadResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDownloadResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2437BF4F0);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2437BF52C()
{
  result = qword_27ED89370[0];
  if (!qword_27ED89370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89370);
  }

  return result;
}

unint64_t sub_2437BF584()
{
  result = qword_27ED89480;
  if (!qword_27ED89480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED89480);
  }

  return result;
}

unint64_t sub_2437BF5DC()
{
  result = qword_27ED89488[0];
  if (!qword_27ED89488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89488);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_2()
{
  v1 = *(*(v0 - 152) + 8);
  result = *(v0 - 136);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return sub_2437EB6D4();
}

unint64_t sub_2437BF6BC()
{
  result = qword_27ED86738;
  if (!qword_27ED86738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86738);
  }

  return result;
}

uint64_t static Signal.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_9();
    }

    return OUTLINED_FUNCTION_1();
  }

  if (*(a2 + 8))
  {
    return OUTLINED_FUNCTION_1();
  }

  return *a1 == *a2;
}

uint64_t sub_2437BF740()
{
  sub_2437BFDE8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BF778()
{
  sub_2437BFDE8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BF7B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000002437F3030 == a2;
  if (v3 || (OUTLINED_FUNCTION_19_1() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002437F3050 == a2)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_1();

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

uint64_t sub_2437BF87C(char a1)
{
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x245D40160](a1 & 1);
  return sub_2437EBAD4();
}

unint64_t sub_2437BF8BC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_2437BF900(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656E6961746E6F63 && a2 == 0xEE007865646E4972)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_19_1();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437BF980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BF7B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437BF9A8()
{
  sub_2437BFD94();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BF9E0()
{
  sub_2437BFD94();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BFA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BF900(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437BFA6C()
{
  sub_2437BFE3C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BFAA4()
{
  sub_2437BFE3C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

void Signal.Event.encode(to:)()
{
  OUTLINED_FUNCTION_14_3();
  v35 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86740, "pO");
  v5 = OUTLINED_FUNCTION_0(v4);
  v33 = v6;
  v34 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  v31 = v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86748, &qword_2437ED308);
  OUTLINED_FUNCTION_0(v32);
  v30 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86750, &qword_2437ED310);
  OUTLINED_FUNCTION_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v22);
  v24 = v29 - v23;
  v29[1] = *v0;
  v25 = *(v0 + 8);
  v26 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2437BFD94();
  sub_2437EBB04();
  if (v25)
  {
    sub_2437BFDE8();
    v27 = v31;
    OUTLINED_FUNCTION_17_2();
    sub_2437EB994();
    (*(v33 + 8))(v27, v34);
  }

  else
  {
    sub_2437BFE3C();
    OUTLINED_FUNCTION_17_2();
    sub_2437EB994();
    v28 = v32;
    sub_2437EB9E4();
    (*(v30 + 8))(v16, v28);
  }

  (*(v19 + 8))(v24, v17);
  OUTLINED_FUNCTION_15_1();
}

unint64_t sub_2437BFD94()
{
  result = qword_27ED89510;
  if (!qword_27ED89510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED89510);
  }

  return result;
}

unint64_t sub_2437BFDE8()
{
  result = qword_27ED89518;
  if (!qword_27ED89518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED89518);
  }

  return result;
}

unint64_t sub_2437BFE3C()
{
  result = qword_27ED89520[0];
  if (!qword_27ED89520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89520);
  }

  return result;
}

uint64_t Signal.Event.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x245D40160](1);
  }

  v2 = *v0;
  MEMORY[0x245D40160](0);
  return MEMORY[0x245D40180](v2);
}

uint64_t Signal.Event.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_18_0();
  if (v2)
  {
    MEMORY[0x245D40160](1);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    MEMORY[0x245D40180](v1);
  }

  return sub_2437EBAD4();
}

void Signal.Event.init(from:)()
{
  OUTLINED_FUNCTION_14_3();
  v61 = v0;
  v2 = v1;
  v59 = v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86758, &qword_2437ED318);
  OUTLINED_FUNCTION_0(v56);
  v58 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v9 = v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86760, &qword_2437ED320);
  OUTLINED_FUNCTION_0(v10);
  v57 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  v16 = v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86768, &unk_2437ED328);
  OUTLINED_FUNCTION_0(v17);
  v60 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v21);
  v23 = v55 - v22;
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2437BFD94();
  v25 = v61;
  sub_2437EBAF4();
  if (v25)
  {
    goto LABEL_9;
  }

  v55[1] = v16;
  v61 = v2;
  v26 = sub_2437EB974();
  v30 = sub_2437B5F3C(v26, 0);
  if (v28 == v29 >> 1)
  {
    goto LABEL_8;
  }

  v55[0] = 0;
  if (v28 < (v29 >> 1))
  {
    v31 = *(v27 + v28);
    v32 = sub_2437B5F84(v28 + 1, v29 >> 1, v30, v27, v28, v29);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    v30 = v32;
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        sub_2437BFDE8();
        OUTLINED_FUNCTION_17_2();
        v37 = v55[0];
        sub_2437EB904();
        v38 = v59;
        if (v37)
        {
          goto LABEL_12;
        }

        swift_unknownObjectRelease();
        (*(v58 + 8))(v9, v56);
        v48 = OUTLINED_FUNCTION_6_1();
        v49(v48, v17);
        v50 = 0;
      }

      else
      {
        sub_2437BFE3C();
        v45 = v55[0];
        OUTLINED_FUNCTION_17_2();
        sub_2437EB904();
        v38 = v59;
        if (v45)
        {
LABEL_12:
          v46 = OUTLINED_FUNCTION_6_1();
          v47(v46, v17);
          swift_unknownObjectRelease();
          v2 = v61;
          goto LABEL_9;
        }

        v51 = sub_2437EB964();
        v52 = v60;
        v50 = v51;
        swift_unknownObjectRelease();
        v53 = OUTLINED_FUNCTION_16_2();
        v54(v53);
        (*(v52 + 8))(v23, v17);
      }

      *v38 = v50;
      *(v38 + 8) = v31;
      __swift_destroy_boxed_opaque_existential_1(v61);
      goto LABEL_10;
    }

LABEL_8:
    v59 = v30;
    v39 = sub_2437EB8C4();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
    *v41 = &type metadata for Signal.Event;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = OUTLINED_FUNCTION_6_1();
    v44(v43, v17);
    v2 = v61;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
    OUTLINED_FUNCTION_15_1();
    return;
  }

  __break(1u);
}

uint64_t sub_2437C043C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2437EBA94();
  if (v2)
  {
    MEMORY[0x245D40160](1);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    MEMORY[0x245D40180](v1);
  }

  return sub_2437EBAD4();
}

uint64_t sub_2437C04D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6675626F746F7270 && a2 == 0xEC00000061746144)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_19_1();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437C0544()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_20_0();
  return sub_2437EBAD4();
}

uint64_t sub_2437C0594()
{
  sub_2437EBA94();
  OUTLINED_FUNCTION_20_0();
  return sub_2437EBAD4();
}

uint64_t sub_2437C05D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437C04D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437C05FC()
{
  sub_2437C15D8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437C0634()
{
  sub_2437C15D8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Signal.events.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void sub_2437C06C0()
{
  OUTLINED_FUNCTION_14_3();
  v2 = v1;
  v30 = v3;
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = *v2;
  v13 = *(*v2 + 16);
  if (v13)
  {
    v28 = v0;
    v29 = v2;
    v34 = MEMORY[0x277D84F90];
    sub_2437C11A0(0, v13, 0);
    v14 = 0;
    v15 = v34;
    v16 = *(v5 + 80);
    v32 = v5;
    v33 = v12 + ((v16 + 32) & ~v16);
    v31 = v11;
    while (v14 < *(v12 + 16))
    {
      sub_2437C1ED4(v33 + *(v5 + 72) * v14, v11);
      sub_2437C1ED4(v11, v9);
      if (v9[8] != 1)
      {
        sub_2437BF6BC();
        swift_allocError();
        *v26 = 0xD000000000000026;
        v26[1] = 0x80000002437F3000;
        swift_willThrow();
        sub_2437C1684(v9, type metadata accessor for CloudAssets_Signal.Event);
        sub_2437C1684(v11, type metadata accessor for CloudAssets_Signal.Event);
        OUTLINED_FUNCTION_0_4();
        sub_2437C1684(v29, v27);

        goto LABEL_15;
      }

      v17 = v12;
      v18 = *v9;
      if (*v9)
      {
        sub_2437C1684(v9, type metadata accessor for CloudAssets_Signal.Event);
        v19 = 0;
        v20 = v11;
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        sub_2437C1684(v11, v21);
        v19 = *(v9 + 2);
        v20 = v9;
      }

      sub_2437C1684(v20, type metadata accessor for CloudAssets_Signal.Event);
      v23 = *(v34 + 16);
      v22 = *(v34 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2437C11A0((v22 > 1), v23 + 1, 1);
      }

      ++v14;
      *(v34 + 16) = v23 + 1;
      v24 = v34 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18 != 0;
      v11 = v31;
      v5 = v32;
      v12 = v17;
      if (v13 == v14)
      {
        sub_2437C1684(v29, type metadata accessor for CloudAssets_Signal);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    sub_2437C1684(v2, v25);
    v15 = MEMORY[0x277D84F90];
LABEL_14:
    *v30 = v15;
LABEL_15:
    OUTLINED_FUNCTION_15_1();
  }
}

void Signal.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  v12 = v11;
  v32 = v13;
  v14 = sub_2437EB444();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_15();
  v34 = v17 - v16;
  v18 = type metadata accessor for CloudAssets_Signal(0);
  v19 = OUTLINED_FUNCTION_1_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86770, &qword_2437ED338);
  OUTLINED_FUNCTION_0(v22);
  v33 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v26);
  v28 = &v31 - v27;
  v29 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_2437C15D8();
  sub_2437EBAF4();
  if (!v10)
  {
    v30 = v33;
    sub_2437BAD3C();
    sub_2437EB954();
    v31 = v22;
    v38 = v39;
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_2437EB434();
    sub_2437C162C();
    sub_2437EB514();
    sub_2437C06C0();
    (*(v30 + 8))(v28, v31);
    *v32 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_2437C0C48@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for CloudAssets_Signal.Event(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *v1;
  CloudAssets_Signal.init()(a1);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2437C11C0(0, v12, 0);
    v13 = v22;
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      CloudAssets_Signal.Event.init()(v8);
      if (v16)
      {
        *v8 = 1;
        v8[8] = 1;
      }

      else
      {
        *v8 = 0;
        v8[8] = 1;
        *(v8 + 2) = v15;
      }

      sub_2437C1E6C(v8, v10);
      v22 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2437C11C0(v17 > 1, v18 + 1, 1);
        v13 = v22;
      }

      *(v13 + 16) = v18 + 1;
      sub_2437C1E6C(v10, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18);
      v14 += 16;
      --v12;
    }

    while (v12);
  }

  v19 = *a1;

  *a1 = v13;
  return result;
}

void Signal.encode(to:)()
{
  OUTLINED_FUNCTION_14_3();
  v28 = v1;
  v3 = v2;
  v4 = type metadata accessor for CloudAssets_Signal(0);
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86788, &qword_2437ED340);
  OUTLINED_FUNCTION_0(v31);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = *v0;
  v19 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2437C15D8();
  sub_2437EBB04();
  v29 = v18;
  sub_2437C0C48(v10);
  sub_2437C162C();
  v20 = v28;
  v21 = sub_2437EB504();
  if (v20)
  {
    OUTLINED_FUNCTION_0_4();
    sub_2437C1684(v10, v23);
  }

  else
  {
    v24 = v21;
    v25 = v22;
    OUTLINED_FUNCTION_0_4();
    sub_2437C1684(v10, v26);
    v29 = v24;
    v30 = v25;
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v29, v30);
  }

  (*(v12 + 8))(v17, v31);
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_2437C0FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t Signal.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x245D40160](v2);
  if (v2)
  {
    v4 = (v1 + 40);
    do
    {
      if (*v4)
      {
        result = MEMORY[0x245D40160](1);
      }

      else
      {
        v5 = *(v4 - 1);
        MEMORY[0x245D40160](0);
        result = MEMORY[0x245D40180](v5);
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t Signal.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_18_0();
  sub_2437C1564(v3, v1);
  return sub_2437EBAD4();
}

uint64_t sub_2437C1128()
{
  v1 = *v0;
  sub_2437EBA94();
  sub_2437C1564(v3, v1);
  return sub_2437EBAD4();
}

char *sub_2437C11A0(char *a1, int64_t a2, char a3)
{
  result = sub_2437C11E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2437C11C0(size_t a1, int64_t a2, char a3)
{
  result = sub_2437C12DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2437C11E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C0, &qword_2437ED928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

size_t sub_2437C12DC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867B8, &qword_2437ED920);
  v10 = *(type metadata accessor for CloudAssets_Signal.Event(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CloudAssets_Signal.Event(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2437C1490(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2437C1490(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for CloudAssets_Signal.Event(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for CloudAssets_Signal.Event(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_2437C1564(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      if (*v5)
      {
        result = MEMORY[0x245D40160](1);
      }

      else
      {
        v6 = *(v5 - 1);
        MEMORY[0x245D40160](0);
        result = MEMORY[0x245D40180](v6);
      }

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_2437C15D8()
{
  result = qword_27ED86778;
  if (!qword_27ED86778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86778);
  }

  return result;
}

unint64_t sub_2437C162C()
{
  result = qword_27ED86780;
  if (!qword_27ED86780)
  {
    type metadata accessor for CloudAssets_Signal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86780);
  }

  return result;
}

uint64_t sub_2437C1684(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2437C16E0()
{
  result = qword_27ED86790;
  if (!qword_27ED86790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86790);
  }

  return result;
}

unint64_t sub_2437C1738()
{
  result = qword_27ED86798;
  if (!qword_27ED86798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86798);
  }

  return result;
}

unint64_t sub_2437C1790()
{
  result = qword_27ED867A0;
  if (!qword_27ED867A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED867A0);
  }

  return result;
}

unint64_t sub_2437C17E8()
{
  result = qword_27ED867A8;
  if (!qword_27ED867A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED867A8);
  }

  return result;
}

unint64_t sub_2437C1840()
{
  result = qword_27ED867B0;
  if (!qword_27ED867B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED867B0);
  }

  return result;
}

uint64_t sub_2437C18A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2437C18E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Signal.Event(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_13_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_1();
  }
}

uint64_t storeEnumTagSinglePayload for Signal.Event(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2437C1980(_DWORD *a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_13_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_1();
  }
}

uint64_t sub_2437C1990(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *sub_2437C19D0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437C1A9CLL);
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

_BYTE *sub_2437C1AD0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2437C1B6CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437C1BB0()
{
  result = qword_27ED89DB0[0];
  if (!qword_27ED89DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89DB0);
  }

  return result;
}

unint64_t sub_2437C1C08()
{
  result = qword_27ED89FC0[0];
  if (!qword_27ED89FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89FC0);
  }

  return result;
}

unint64_t sub_2437C1C60()
{
  result = qword_27ED8A0D0;
  if (!qword_27ED8A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8A0D0);
  }

  return result;
}

unint64_t sub_2437C1CB8()
{
  result = qword_27ED8A0D8[0];
  if (!qword_27ED8A0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8A0D8);
  }

  return result;
}

unint64_t sub_2437C1D10()
{
  result = qword_27ED8A160;
  if (!qword_27ED8A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8A160);
  }

  return result;
}

unint64_t sub_2437C1D68()
{
  result = qword_27ED8A168[0];
  if (!qword_27ED8A168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8A168);
  }

  return result;
}

unint64_t sub_2437C1DC0()
{
  result = qword_27ED8A1F0;
  if (!qword_27ED8A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8A1F0);
  }

  return result;
}

unint64_t sub_2437C1E18()
{
  result = qword_27ED8A1F8[0];
  if (!qword_27ED8A1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8A1F8);
  }

  return result;
}

uint64_t sub_2437C1E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437C1ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return sub_2437EBA94();
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return sub_2437EBA14();
}

void OUTLINED_FUNCTION_20_0()
{

  JUMPOUT(0x245D40160);
}

uint64_t CloudAssets_Asset.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_105();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_52();
  v10 = *(type metadata accessor for CloudAssets_Asset(v9) + 24);
  OUTLINED_FUNCTION_101();
  v11 = type metadata accessor for CloudAssets_Asset.ID(0);
  OUTLINED_FUNCTION_16_3(v1);
  if (v12)
  {
    OUTLINED_FUNCTION_87();
    *(a1 + 32) = xmmword_2437EC710;
    *(a1 + 48) = xmmword_2437EC710;
    v13 = a1 + *(v11 + 32);
    sub_2437EB414();
    result = OUTLINED_FUNCTION_16_3(v1);
    if (!v12)
    {
      return sub_2437B47C4(v1, &qword_27ED867C8, &qword_2437ED970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    return sub_2437C27F4();
  }

  return result;
}

uint64_t CloudAssets_Asset.id.setter()
{
  v1 = OUTLINED_FUNCTION_55();
  v2 = type metadata accessor for CloudAssets_Asset(v1);
  sub_2437B47C4(v0 + *(v2 + 24), &qword_27ED867C8, &qword_2437ED970);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_147();
  type metadata accessor for CloudAssets_Asset.ID(0);
  v3 = OUTLINED_FUNCTION_50();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t CloudAssets_Asset.ID.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_87();
  *(a1 + 32) = xmmword_2437EC710;
  *(a1 + 48) = xmmword_2437EC710;
  v2 = a1 + *(type metadata accessor for CloudAssets_Asset.ID(0) + 32);
  return sub_2437EB414();
}

void CloudAssets_Asset.id.modify()
{
  OUTLINED_FUNCTION_150();
  v1 = OUTLINED_FUNCTION_122();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44(v2);
  v3 = OUTLINED_FUNCTION_97();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_104(v7);
  v9 = type metadata accessor for CloudAssets_Asset.ID(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_121(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_60(v14);
  v16 = type metadata accessor for CloudAssets_Asset(v15);
  OUTLINED_FUNCTION_128(*(v16 + 24));
  v17 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_53(v17, v18, v9);
  if (v19)
  {
    OUTLINED_FUNCTION_108();
    *(v11 + 32) = xmmword_2437EC710;
    *(v11 + 48) = xmmword_2437EC710;
    v20 = v11 + *(v9 + 32);
    sub_2437EB414();
    v21 = OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53(v21, v22, v9);
    if (!v19)
    {
      sub_2437B47C4(v7, &qword_27ED867C8, &qword_2437ED970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_142();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t CloudAssets_Asset.hasID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_52();
  v6 = *(type metadata accessor for CloudAssets_Asset(v5) + 24);
  sub_2437C45F0();
  type metadata accessor for CloudAssets_Asset.ID(0);
  v7 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_53(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_2437B47C4(v0, &qword_27ED867C8, &qword_2437ED970);
  return v11;
}

Swift::Void __swiftcall CloudAssets_Asset.clearID()()
{
  v1 = type metadata accessor for CloudAssets_Asset(0);
  sub_2437B47C4(v0 + *(v1 + 24), &qword_27ED867C8, &qword_2437ED970);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_54();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t CloudAssets_Asset.protector.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_105();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_52();
  v10 = *(type metadata accessor for CloudAssets_Asset(v9) + 28);
  OUTLINED_FUNCTION_101();
  v11 = type metadata accessor for CloudAssets_Asset.Protector(0);
  OUTLINED_FUNCTION_16_3(v1);
  if (v12)
  {
    *a1 = xmmword_2437EC710;
    a1[1] = xmmword_2437EC710;
    v13 = a1 + *(v11 + 24);
    sub_2437EB414();
    result = OUTLINED_FUNCTION_16_3(v1);
    if (!v12)
    {
      return sub_2437B47C4(v1, &qword_27ED867D0, &qword_2437ED978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    return sub_2437C27F4();
  }

  return result;
}

uint64_t sub_2437C2694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_48(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  sub_2437C29BC();
  return a7(v7);
}

uint64_t CloudAssets_Asset.protector.setter()
{
  v1 = OUTLINED_FUNCTION_55();
  v2 = type metadata accessor for CloudAssets_Asset(v1);
  sub_2437B47C4(v0 + *(v2 + 28), &qword_27ED867D0, &qword_2437ED978);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_147();
  type metadata accessor for CloudAssets_Asset.Protector(0);
  v3 = OUTLINED_FUNCTION_50();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t CloudAssets_Asset.Protector.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_2437EC710;
  a1[1] = xmmword_2437EC710;
  v1 = a1 + *(type metadata accessor for CloudAssets_Asset.Protector(0) + 24);
  return sub_2437EB414();
}

uint64_t sub_2437C27F4()
{
  OUTLINED_FUNCTION_84();
  v2 = v1(0);
  OUTLINED_FUNCTION_1_0(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

void CloudAssets_Asset.protector.modify()
{
  OUTLINED_FUNCTION_150();
  v1 = OUTLINED_FUNCTION_122();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44(v2);
  v3 = OUTLINED_FUNCTION_97();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_104(v7);
  v9 = type metadata accessor for CloudAssets_Asset.Protector(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_121(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_60(v14);
  v16 = type metadata accessor for CloudAssets_Asset(v15);
  OUTLINED_FUNCTION_128(*(v16 + 28));
  v17 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_53(v17, v18, v9);
  if (v19)
  {
    *v11 = xmmword_2437EC710;
    v11[1] = xmmword_2437EC710;
    v20 = v11 + *(v9 + 24);
    sub_2437EB414();
    v21 = OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53(v21, v22, v9);
    if (!v19)
    {
      sub_2437B47C4(v7, &qword_27ED867D0, &qword_2437ED978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_142();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

uint64_t sub_2437C29BC()
{
  OUTLINED_FUNCTION_84();
  v2 = v1(0);
  OUTLINED_FUNCTION_1_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t sub_2437C2A14()
{
  v1 = OUTLINED_FUNCTION_55();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t (*CloudAssets_Asset.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  v1 = *(type metadata accessor for CloudAssets_Asset(v0) + 20);
  return nullsub_1;
}

uint64_t CloudAssets_Asset.ID.signature.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Asset.ID.signature.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CloudAssets_Asset.ID.referenceSignature.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Asset.ID.referenceSignature.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t CloudAssets_Asset.ID.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_13();
  v1 = *(type metadata accessor for CloudAssets_Asset.ID(v0) + 32);
  v2 = sub_2437EB424();
  OUTLINED_FUNCTION_1_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t CloudAssets_Asset.ID.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_55();
  v1 = *(type metadata accessor for CloudAssets_Asset.ID(v0) + 32);
  v2 = sub_2437EB424();
  OUTLINED_FUNCTION_1_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_141();

  return v6(v5);
}

uint64_t (*CloudAssets_Asset.ID.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  v1 = *(type metadata accessor for CloudAssets_Asset.ID(v0) + 32);
  return nullsub_1;
}

uint64_t CloudAssets_Asset.Protector.securityKey.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Asset.Protector.securityKey.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t CloudAssets_Asset.Protector.privacyKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Asset.Protector.privacyKey.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t (*CloudAssets_Asset.Protector.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  v1 = *(type metadata accessor for CloudAssets_Asset.Protector(v0) + 24);
  return nullsub_1;
}

uint64_t CloudAssets_Asset.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for CloudAssets_Asset(0);
  v3 = a1 + v2[5];
  sub_2437EB414();
  v4 = v2[6];
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for CloudAssets_Asset.Protector(0);
  v10 = OUTLINED_FUNCTION_49();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t CloudAssets_Credential.tenantName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Credential.tenantName.setter()
{
  OUTLINED_FUNCTION_43();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t CloudAssets_Credential.requestorID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Credential.requestorID.setter()
{
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t CloudAssets_Credential.accessToken.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Credential.accessToken.setter()
{
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CloudAssets_Credential.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_105();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_52();
  v10 = *(type metadata accessor for CloudAssets_Credential(v9) + 32);
  OUTLINED_FUNCTION_101();
  v11 = sub_2437EB3F4();
  OUTLINED_FUNCTION_16_3(v1);
  if (!v12)
  {
    return (*(*(v11 - 8) + 32))(a1, v1, v11);
  }

  sub_2437EB3E4();
  result = OUTLINED_FUNCTION_16_3(v1);
  if (!v12)
  {
    return sub_2437B47C4(v1, &qword_27ED867D8, &qword_2437ED980);
  }

  return result;
}

uint64_t sub_2437C3260(uint64_t a1)
{
  v2 = sub_2437EB3F4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return CloudAssets_Credential.expirationDate.setter();
}

uint64_t CloudAssets_Credential.expirationDate.setter()
{
  v2 = OUTLINED_FUNCTION_55();
  v3 = *(type metadata accessor for CloudAssets_Credential(v2) + 32);
  sub_2437B47C4(v1 + v3, &qword_27ED867D8, &qword_2437ED980);
  v4 = sub_2437EB3F4();
  OUTLINED_FUNCTION_1_0(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void CloudAssets_Credential.expirationDate.modify()
{
  OUTLINED_FUNCTION_130();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_44(v1);
  v2 = OUTLINED_FUNCTION_97();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_48(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_104(v6);
  v7 = sub_2437EB3F4();
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  *(v0 + 24) = v8;
  v11 = *(v10 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v11);
  *(v0 + 40) = __swift_coroFrameAllocStub(v11);
  *(v0 + 48) = *(type metadata accessor for CloudAssets_Credential(0) + 32);
  sub_2437C45F0();
  OUTLINED_FUNCTION_53(v6, 1, v7);
  if (v12)
  {
    sub_2437EB3E4();
    OUTLINED_FUNCTION_53(v6, 1, v7);
    if (!v12)
    {
      sub_2437B47C4(v6, &qword_27ED867D8, &qword_2437ED980);
    }
  }

  else
  {
    v13 = *(v9 + 32);
    v14 = OUTLINED_FUNCTION_142();
    v15(v14);
  }

  OUTLINED_FUNCTION_131();
}

void sub_2437C354C()
{
  OUTLINED_FUNCTION_150();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    (*(v5 + 16))((*v0)[4], v3, v4);
    sub_2437B47C4(v7 + v1, &qword_27ED867D8, &qword_2437ED980);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
    v12 = *(v5 + 8);
    v13 = OUTLINED_FUNCTION_105();
    v14(v13);
  }

  else
  {
    sub_2437B47C4(v7 + v1, &qword_27ED867D8, &qword_2437ED980);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_149();

  free(v18);
}

uint64_t (*CloudAssets_Credential.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  v1 = *(type metadata accessor for CloudAssets_Credential(v0) + 28);
  return nullsub_1;
}

uint64_t CloudAssets_Credential.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_87();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  v3 = type metadata accessor for CloudAssets_Credential(0);
  v4 = a1 + *(v3 + 28);
  sub_2437EB414();
  v5 = *(v3 + 32);
  sub_2437EB3F4();
  v6 = OUTLINED_FUNCTION_49();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.storageReference.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.storageReference.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void CloudAssets_SimultaneousDownloadableAssets.credential.modify()
{
  OUTLINED_FUNCTION_150();
  v1 = OUTLINED_FUNCTION_122();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44(v2);
  v3 = OUTLINED_FUNCTION_97();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_104(v7);
  v9 = type metadata accessor for CloudAssets_Credential(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_121(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_60(v14);
  v16 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(v15);
  OUTLINED_FUNCTION_82(*(v16 + 32));
  OUTLINED_FUNCTION_29_0();
  if (v17)
  {
    OUTLINED_FUNCTION_108();
    *(v11 + 32) = 0;
    *(v11 + 40) = v18;
    v19 = v11 + *(v9 + 28);
    sub_2437EB414();
    v20 = *(v9 + 32);
    sub_2437EB3F4();
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_29_0();
    if (!v17)
    {
      sub_2437B47C4(v7, &qword_27ED867E0, &qword_2437ED988);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_120();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

uint64_t sub_2437C3A98()
{
  OUTLINED_FUNCTION_59();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_58();
  v10 = *(v1(v9) + 32);
  OUTLINED_FUNCTION_76();
  sub_2437C45F0();
  v11 = v0(0);
  OUTLINED_FUNCTION_53(v2, 1, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  OUTLINED_FUNCTION_64();
  sub_2437B47C4(v14, v15, v16);
  return v13;
}

uint64_t sub_2437C3B88()
{
  OUTLINED_FUNCTION_59();
  v5 = v4(0);
  sub_2437B47C4(v1 + *(v5 + 32), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.storageReferenceSignature.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.storageReferenceSignature.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_2437C3C9C()
{
  v0 = OUTLINED_FUNCTION_13();
  v2 = *(v1(v0) + 28);
  v3 = sub_2437EB424();
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_14_0();

  return v7(v6);
}

uint64_t sub_2437C3D24()
{
  v0 = OUTLINED_FUNCTION_55();
  v2 = *(v1(v0) + 28);
  v3 = sub_2437EB424();
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_141();

  return v7(v6);
}

uint64_t (*CloudAssets_SimultaneousDownloadableAssets.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  v1 = *(type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(v0) + 28);
  return nullsub_1;
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_2437EC710;
  *(a1 + 24) = xmmword_2437EC710;
  v2 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  v3 = a1 + *(v2 + 28);
  sub_2437EB414();
  v4 = *(v2 + 32);
  type metadata accessor for CloudAssets_Credential(0);
  v5 = OUTLINED_FUNCTION_49();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t CloudAssets_Signal.events.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2437C3EB8()
{
  v0 = OUTLINED_FUNCTION_13();
  v2 = *(v1(v0) + 20);
  v3 = sub_2437EB424();
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_14_0();

  return v7(v6);
}

uint64_t sub_2437C3F60()
{
  v0 = OUTLINED_FUNCTION_55();
  v2 = *(v1(v0) + 20);
  v3 = sub_2437EB424();
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_141();

  return v7(v6);
}

uint64_t (*CloudAssets_Signal.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  v1 = *(type metadata accessor for CloudAssets_Signal(v0) + 20);
  return nullsub_1;
}

unint64_t CloudAssets_Signal.EventType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t CloudAssets_Signal.EventType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_2437C4078@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAssets_Signal.EventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2437C40A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_2437C40AC();
}

uint64_t sub_2437C40AC()
{
  sub_2437EBA94();
  sub_2437CBB18();
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

uint64_t sub_2437C410C()
{
  OUTLINED_FUNCTION_43();
  sub_2437CBAC0();
  v0 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E238](v0);
}

uint64_t sub_2437C414C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_2437C4158();
}

uint64_t sub_2437C4158()
{
  sub_2437EBA94();
  sub_2437CBB18();
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

BOOL sub_2437C41D0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

void CloudAssets_Signal.Event.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t CloudAssets_Signal.Event.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_2437C4294()
{
  v0 = OUTLINED_FUNCTION_13();
  v2 = *(v1(v0) + 24);
  v3 = sub_2437EB424();
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_14_0();

  return v7(v6);
}

uint64_t sub_2437C433C()
{
  v0 = OUTLINED_FUNCTION_55();
  v2 = *(v1(v0) + 24);
  v3 = sub_2437EB424();
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_141();

  return v7(v6);
}

uint64_t (*CloudAssets_Signal.Event.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  v1 = *(type metadata accessor for CloudAssets_Signal.Event(v0) + 24);
  return nullsub_1;
}

uint64_t CloudAssets_Signal.Event.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for CloudAssets_Signal.Event(0) + 24);
  return sub_2437EB414();
}

uint64_t CloudAssets_Signal.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for CloudAssets_Signal(0) + 20);
  return sub_2437EB414();
}

uint64_t CloudAssets_AssetStreamHandle.asset.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_105();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_89();
  v9 = *(type metadata accessor for CloudAssets_AssetStreamHandle(0) + 28);
  sub_2437C45F0();
  v10 = type metadata accessor for CloudAssets_Asset(0);
  OUTLINED_FUNCTION_16_3(v1);
  if (v11)
  {
    *a1 = 0;
    v12 = a1 + v10[5];
    sub_2437EB414();
    v13 = v10[6];
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = v10[7];
    type metadata accessor for CloudAssets_Asset.Protector(0);
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    result = OUTLINED_FUNCTION_16_3(v1);
    if (!v11)
    {
      return sub_2437B47C4(v1, &qword_27ED867E8, &qword_2437ED990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
    return sub_2437C27F4();
  }

  return result;
}

uint64_t sub_2437C45B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437C45F0()
{
  OUTLINED_FUNCTION_84();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

uint64_t CloudAssets_AssetStreamHandle.asset.setter()
{
  v1 = OUTLINED_FUNCTION_55();
  v2 = type metadata accessor for CloudAssets_AssetStreamHandle(v1);
  sub_2437B47C4(v0 + *(v2 + 28), &qword_27ED867E8, &qword_2437ED990);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_147();
  type metadata accessor for CloudAssets_Asset(0);
  v3 = OUTLINED_FUNCTION_50();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void CloudAssets_AssetStreamHandle.asset.modify()
{
  OUTLINED_FUNCTION_150();
  v1 = OUTLINED_FUNCTION_122();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44(v2);
  v3 = OUTLINED_FUNCTION_97();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_104(v7);
  v9 = type metadata accessor for CloudAssets_Asset(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_121(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_60(v14);
  v16 = type metadata accessor for CloudAssets_AssetStreamHandle(v15);
  OUTLINED_FUNCTION_82(*(v16 + 28));
  OUTLINED_FUNCTION_29_0();
  if (v17)
  {
    *v11 = 0;
    v18 = v11 + v9[5];
    sub_2437EB414();
    v19 = v9[6];
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = v9[7];
    type metadata accessor for CloudAssets_Asset.Protector(0);
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    OUTLINED_FUNCTION_29_0();
    if (!v17)
    {
      sub_2437B47C4(v7, &qword_27ED867E8, &qword_2437ED990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_120();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

uint64_t sub_2437C48DC()
{
  OUTLINED_FUNCTION_59();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_58();
  v10 = *(v1(v9) + 28);
  OUTLINED_FUNCTION_76();
  sub_2437C45F0();
  v11 = v0(0);
  OUTLINED_FUNCTION_53(v2, 1, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  OUTLINED_FUNCTION_64();
  sub_2437B47C4(v14, v15, v16);
  return v13;
}

uint64_t sub_2437C49CC()
{
  OUTLINED_FUNCTION_59();
  v5 = v4(0);
  sub_2437B47C4(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_2437C4A60@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_89();
  v9 = *(a1(0) + 32);
  sub_2437C45F0();
  v10 = type metadata accessor for CloudAssets_Credential(0);
  OUTLINED_FUNCTION_16_3(v2);
  if (!v11)
  {
    return sub_2437C27F4();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  v12 = a2 + *(v10 + 28);
  sub_2437EB414();
  v13 = *(v10 + 32);
  sub_2437EB3F4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  result = OUTLINED_FUNCTION_16_3(v2);
  if (!v11)
  {
    return sub_2437B47C4(v2, &qword_27ED867E0, &qword_2437ED988);
  }

  return result;
}

uint64_t sub_2437C4C14()
{
  v1 = OUTLINED_FUNCTION_55();
  v3 = v2(v1);
  sub_2437B47C4(v0 + *(v3 + 32), &qword_27ED867E0, &qword_2437ED988);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_147();
  type metadata accessor for CloudAssets_Credential(0);
  v4 = OUTLINED_FUNCTION_50();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void CloudAssets_AssetStreamHandle.credential.modify()
{
  OUTLINED_FUNCTION_150();
  v1 = OUTLINED_FUNCTION_122();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44(v2);
  v3 = OUTLINED_FUNCTION_97();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_104(v7);
  v9 = type metadata accessor for CloudAssets_Credential(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_121(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_60(v14);
  v16 = type metadata accessor for CloudAssets_AssetStreamHandle(v15);
  OUTLINED_FUNCTION_82(*(v16 + 32));
  OUTLINED_FUNCTION_29_0();
  if (v17)
  {
    OUTLINED_FUNCTION_108();
    *(v11 + 32) = 0;
    *(v11 + 40) = v18;
    v19 = v11 + *(v9 + 28);
    sub_2437EB414();
    v20 = *(v9 + 32);
    sub_2437EB3F4();
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_29_0();
    if (!v17)
    {
      sub_2437B47C4(v7, &qword_27ED867E0, &qword_2437ED988);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_120();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

void sub_2437C4DFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_69();
  v24 = v23;
  v25 = v22;
  v27 = *(*v26 + 10);
  v28 = (*v26)[3];
  v29 = (*v26)[4];
  v30 = (*v26)[2];
  v41 = (*v26)[1];
  v31 = **v26;
  if (v32)
  {
    sub_2437C29BC();
    sub_2437B47C4(v31 + v27, v25, v24);
    sub_2437C27F4();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v30);
    sub_2437C2A14();
  }

  else
  {
    sub_2437B47C4(v31 + v27, v22, v23);
    sub_2437C27F4();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v30);
  }

  free(v29);
  free(v28);
  free(v41);
  OUTLINED_FUNCTION_68();

  free(v39);
}

uint64_t (*CloudAssets_AssetStreamHandle.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  v1 = *(type metadata accessor for CloudAssets_AssetStreamHandle(v0) + 24);
  return nullsub_1;
}

uint64_t CloudAssets_AssetStreamHandle.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_87();
  v2 = type metadata accessor for CloudAssets_AssetStreamHandle(0);
  v3 = a1 + v2[6];
  sub_2437EB414();
  v4 = v2[7];
  type metadata accessor for CloudAssets_Asset(0);
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[8];
  type metadata accessor for CloudAssets_Credential(0);
  v10 = OUTLINED_FUNCTION_49();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_2437C50BC()
{
  OUTLINED_FUNCTION_69();
  v0 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v0, qword_27ED8BE90);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_41(v6, xmmword_2437ED930);
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_88();
  v10(v11);
  v12 = OUTLINED_FUNCTION_19_2();
  v13 = OUTLINED_FUNCTION_102(v12, "protector");
  (v10)(v13, v7, v8);
  v14 = OUTLINED_FUNCTION_22_1();
  v15 = OUTLINED_FUNCTION_80(v14, "size");
  v10(v15);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void CloudAssets_Asset.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_61();
        sub_2437EB4B4();
        break;
      case 2:
        v6 = *(type metadata accessor for CloudAssets_Asset(0) + 28);
        type metadata accessor for CloudAssets_Asset.Protector(0);
        OUTLINED_FUNCTION_4_4();
        v5 = &unk_27ED868D8;
LABEL_9:
        sub_2437C98AC(v5, v4);
        OUTLINED_FUNCTION_37();
        sub_2437EB4E4();
        break;
      case 1:
        v3 = *(type metadata accessor for CloudAssets_Asset(0) + 24);
        type metadata accessor for CloudAssets_Asset.ID(0);
        OUTLINED_FUNCTION_5_1();
        v5 = &unk_27ED868C0;
        goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_15_1();
}

void CloudAssets_Asset.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_76();
  sub_2437C542C();
  if (!v0)
  {
    OUTLINED_FUNCTION_34_0();
    sub_2437C5550();
    if (*v1)
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_76();
      sub_2437EB564();
    }

    v2 = *(type metadata accessor for CloudAssets_Asset(0) + 20);
    OUTLINED_FUNCTION_27_0();
  }
}

void sub_2437C542C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_62(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_51();
  v10 = type metadata accessor for CloudAssets_Asset.ID(v9);
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v14 = OUTLINED_FUNCTION_58();
  v15 = *(type metadata accessor for CloudAssets_Asset(v14) + 24);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_123();
  if (v16)
  {
    sub_2437B47C4(v0, &qword_27ED867C8, &qword_2437ED970);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    sub_2437C27F4();
    OUTLINED_FUNCTION_5_1();
    sub_2437C98AC(v17, v18);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_74();
    sub_2437C2A14();
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

void sub_2437C5550()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_62(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_51();
  v10 = type metadata accessor for CloudAssets_Asset.Protector(v9);
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v14 = OUTLINED_FUNCTION_58();
  v15 = *(type metadata accessor for CloudAssets_Asset(v14) + 28);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_123();
  if (v16)
  {
    sub_2437B47C4(v0, &qword_27ED867D0, &qword_2437ED978);
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    sub_2437C27F4();
    OUTLINED_FUNCTION_4_4();
    sub_2437C98AC(v17, v18);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_73();
    sub_2437C2A14();
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

void static CloudAssets_Asset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_130();
  v2 = v1;
  v4 = v3;
  v55 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v5 = OUTLINED_FUNCTION_1_0(v55);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v51 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D0, &qword_2437ED978);
  OUTLINED_FUNCTION_48(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_143(v14, v49);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867F0, &qword_2437ED998);
  OUTLINED_FUNCTION_1_0(v53);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v17);
  v19 = OUTLINED_FUNCTION_124(v18, v50);
  v20 = type metadata accessor for CloudAssets_Asset.ID(v19);
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
  OUTLINED_FUNCTION_48(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_89();
  v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867F8, &qword_2437ED9A0) - 8);
  v29 = *(*v28 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v30);
  v31 = OUTLINED_FUNCTION_144();
  v54 = type metadata accessor for CloudAssets_Asset(v31);
  v32 = v54[6];
  v33 = v28[14];
  sub_2437C45F0();
  sub_2437C45F0();
  OUTLINED_FUNCTION_16_3(v0);
  if (v34)
  {
    OUTLINED_FUNCTION_16_3(v0 + v33);
    if (v34)
    {
      sub_2437B47C4(v0, &qword_27ED867C8, &qword_2437ED970);
      goto LABEL_11;
    }

LABEL_9:
    v35 = &qword_27ED867F8;
    v36 = &qword_2437ED9A0;
    v37 = v0;
LABEL_28:
    sub_2437B47C4(v37, v35, v36);
    goto LABEL_29;
  }

  sub_2437C45F0();
  OUTLINED_FUNCTION_16_3(v0 + v33);
  if (v34)
  {
    OUTLINED_FUNCTION_74();
    sub_2437C2A14();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_1();
  sub_2437C27F4();
  v38 = static CloudAssets_Asset.ID.== infix(_:_:)();
  sub_2437C2A14();
  sub_2437C2A14();
  sub_2437B47C4(v0, &qword_27ED867C8, &qword_2437ED970);
  if ((v38 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  v39 = v54[7];
  v40 = *(v53 + 48);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_53(v56, 1, v55);
  if (v34)
  {
    OUTLINED_FUNCTION_53(v56 + v40, 1, v55);
    if (v34)
    {
      sub_2437B47C4(v56, &qword_27ED867D0, &qword_2437ED978);
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  sub_2437C45F0();
  OUTLINED_FUNCTION_53(v56 + v40, 1, v55);
  if (v45)
  {
    OUTLINED_FUNCTION_73();
    sub_2437C2A14();
LABEL_21:
    v35 = &qword_27ED867F0;
    v36 = &qword_2437ED998;
LABEL_27:
    v37 = v56;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_9_3();
  sub_2437C27F4();
  if ((MEMORY[0x245D3FA00](*v52, v52[1], *v51, v51[1]) & 1) == 0 || (MEMORY[0x245D3FA00](v52[2], v52[3], v51[2], v51[3]) & 1) == 0)
  {
    sub_2437C2A14();
    sub_2437C2A14();
    v35 = &qword_27ED867D0;
    v36 = &qword_2437ED978;
    goto LABEL_27;
  }

  v46 = *(v55 + 24);
  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  sub_2437C98AC(v47, v48);
  LOBYTE(v46) = sub_2437EB6E4();
  sub_2437C2A14();
  sub_2437C2A14();
  sub_2437B47C4(v56, &qword_27ED867D0, &qword_2437ED978);
  if ((v46 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  if (*v4 != *v2)
  {
LABEL_29:
    v44 = 0;
    goto LABEL_30;
  }

  v41 = v54[5];
  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  sub_2437C98AC(v42, v43);
  v44 = sub_2437EB6E4();
LABEL_30:
  OUTLINED_FUNCTION_134(v44);
  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437C5C50()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_0_5();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C5CB4()
{
  OUTLINED_FUNCTION_0_5();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C5D10()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_0_5();
  sub_2437C98AC(v0, v1);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C5DA8()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v1, qword_27ED8BEA8);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_81(v5, xmmword_2437ED940);
  v7 = v0 + v6;
  OUTLINED_FUNCTION_96();
  *v7 = "partition";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_133();
  v11();
  v12 = OUTLINED_FUNCTION_19_2();
  v13 = OUTLINED_FUNCTION_102(v12, "owner_id");
  (v11)(v13, *MEMORY[0x277D21888], v9);
  v14 = OUTLINED_FUNCTION_22_1();
  *v14 = "signature";
  *(v14 + 1) = 9;
  v14[16] = 2;
  OUTLINED_FUNCTION_133();
  v11();
  v15 = OUTLINED_FUNCTION_42();
  v16 = OUTLINED_FUNCTION_80(v15, "reference_signature");
  (v11)(v16);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t CloudAssets_Asset.ID.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_132();
  while (1)
  {
    result = sub_2437EB484();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_64();
        sub_2437EB4C4();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_64();
        sub_2437EB4A4();
        break;
      default:
        continue;
    }
  }
}

uint64_t CloudAssets_Asset.ID.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_20_1();
  if (!v5 || (OUTLINED_FUNCTION_13_3(), result = sub_2437EB574(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_20_1();
    if (!v9 || (OUTLINED_FUNCTION_13_3(), result = sub_2437EB574(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      v12 = OUTLINED_FUNCTION_103();
      if (sub_2437C6100(v12, v13) || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_13_3(), result = sub_2437EB554(), !v1))
      {
        v14 = v2[6];
        v15 = v2[7];
        v16 = OUTLINED_FUNCTION_103();
        if (sub_2437C6100(v16, v17) || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_13_3(), result = sub_2437EB554(), !v1))
        {
          v18 = *(type metadata accessor for CloudAssets_Asset.ID(0) + 32);
          return OUTLINED_FUNCTION_27_0();
        }
      }
    }
  }

  return result;
}

BOOL sub_2437C6100(uint64_t a1, unint64_t a2)
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

uint64_t static CloudAssets_Asset.ID.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_2437EBA14() & 1) == 0 || (MEMORY[0x245D3FA00](v1[4], v1[5], v0[4], v0[5]) & 1) == 0 || (MEMORY[0x245D3FA00](v1[6], v1[7], v0[6], v0[7]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CloudAssets_Asset.ID(0) + 32);
  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  sub_2437C98AC(v6, v7);
  return OUTLINED_FUNCTION_39() & 1;
}

uint64_t sub_2437C62E0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5_1();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C6344()
{
  OUTLINED_FUNCTION_5_1();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C63A0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5_1();
  sub_2437C98AC(v0, v1);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

uint64_t sub_2437C642C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x245D3FDF0](a2, a3);
  *a4 = 0xD000000000000011;
  *a5 = 0x80000002437F3070;
  return result;
}

void sub_2437C64B0()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v1, qword_27ED8BEC0);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_41(v5, xmmword_2437ED950);
  *v0 = "security_key";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_88();
  v9(v10);
  v11 = OUTLINED_FUNCTION_19_2();
  v12 = OUTLINED_FUNCTION_80(v11, "privacy_key");
  v9(v12);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t CloudAssets_Asset.Protector.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_132();
  while (1)
  {
    result = sub_2437EB484();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_64();
      sub_2437EB4A4();
    }
  }

  return result;
}

uint64_t CloudAssets_Asset.Protector.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_13_3();
      result = sub_2437EB554();
      if (!v1)
      {
LABEL_8:
        v7 = v0[2];
        v8 = v0[3];
        switch(v8 >> 62)
        {
          case 1uLL:
            v9 = v7;
            v10 = v7 >> 32;
            goto LABEL_13;
          case 2uLL:
            v9 = *(v7 + 16);
            v10 = *(v7 + 24);
LABEL_13:
            if (v9 != v10)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          case 3uLL:
            goto LABEL_15;
          default:
            if ((v8 & 0xFF000000000000) == 0)
            {
              goto LABEL_15;
            }

LABEL_14:
            OUTLINED_FUNCTION_13_3();
            result = sub_2437EB554();
            if (!v1)
            {
LABEL_15:
              v11 = *(type metadata accessor for CloudAssets_Asset.Protector(0) + 24);
              result = OUTLINED_FUNCTION_27_0();
            }

            break;
        }
      }

      return result;
  }
}

uint64_t static CloudAssets_Asset.Protector.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  if ((MEMORY[0x245D3FA00](*v2, v1[1], *v0, v0[1]) & 1) == 0 || (MEMORY[0x245D3FA00](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for CloudAssets_Asset.Protector(0) + 24);
  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  sub_2437C98AC(v4, v5);
  return OUTLINED_FUNCTION_39() & 1;
}

uint64_t sub_2437C68E8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4_4();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C694C()
{
  OUTLINED_FUNCTION_4_4();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C69A8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4_4();
  sub_2437C98AC(v0, v1);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C6A24()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v1, qword_27ED8BED8);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_81(v5, xmmword_2437ED940);
  v7 = v0 + v6;
  OUTLINED_FUNCTION_96();
  *v7 = "tenant_name";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_94();
  v11();
  v12 = OUTLINED_FUNCTION_19_2();
  *v12 = "requestor_id";
  v12[1] = 12;
  v13 = OUTLINED_FUNCTION_79(v12);
  (v11)(v13);
  v14 = OUTLINED_FUNCTION_22_1();
  *v14 = "access_token";
  *(v14 + 1) = 12;
  v15 = OUTLINED_FUNCTION_79(v14);
  (v11)(v15);
  v16 = OUTLINED_FUNCTION_42();
  *v16 = "expiration_date";
  *(v16 + 1) = 15;
  v16[16] = 2;
  OUTLINED_FUNCTION_94();
  v11();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t CloudAssets_Credential.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_61();
        sub_2437EB4C4();
        break;
      case 4:
        v3 = *(type metadata accessor for CloudAssets_Credential(0) + 32);
        sub_2437EB3F4();
        OUTLINED_FUNCTION_24();
        sub_2437C98AC(&qword_27ED869D8, v4);
        OUTLINED_FUNCTION_37();
        sub_2437EB4E4();
        break;
      default:
        continue;
    }
  }
}

void CloudAssets_Credential.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_20_1();
  if (!v5 || (OUTLINED_FUNCTION_13_3(), sub_2437EB574(), !v1))
  {
    v6 = v2[2];
    v7 = v2[3];
    OUTLINED_FUNCTION_20_1();
    if (!v8 || (OUTLINED_FUNCTION_13_3(), sub_2437EB574(), !v1))
    {
      v9 = v2[4];
      v10 = v2[5];
      OUTLINED_FUNCTION_20_1();
      if (!v11 || (OUTLINED_FUNCTION_13_3(), sub_2437EB574(), !v1))
      {
        OUTLINED_FUNCTION_34_0();
        sub_2437C6D98();
        if (!v1)
        {
          v12 = *(type metadata accessor for CloudAssets_Credential(0) + 28);
          OUTLINED_FUNCTION_27_0();
        }
      }
    }
  }
}

void sub_2437C6D98()
{
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_51();
  v5 = sub_2437EB3F4();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = *(type metadata accessor for CloudAssets_Credential(0) + 32);
  OUTLINED_FUNCTION_77();
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_2437B47C4(v0, &qword_27ED867D8, &qword_2437ED980);
  }

  else
  {
    v15 = *(v8 + 32);
    v16 = OUTLINED_FUNCTION_97();
    v17(v16);
    OUTLINED_FUNCTION_24();
    sub_2437C98AC(v18, v19);
    sub_2437EB594();
    (*(v8 + 8))(v13, v5);
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

void static CloudAssets_Credential.== infix(_:_:)()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_43();
  v3 = sub_2437EB3F4();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D8, &qword_2437ED980);
  OUTLINED_FUNCTION_48(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86820, &qword_2437ED9A8);
  OUTLINED_FUNCTION_1_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_109();
  v22 = *v1 == *v0 && v1[1] == v0[1];
  if (!v22 && (sub_2437EBA14() & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v23 && (sub_2437EBA14() & 1) == 0)
  {
    goto LABEL_25;
  }

  v24 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v24 && (sub_2437EBA14() & 1) == 0)
  {
    goto LABEL_25;
  }

  v38 = v6;
  v37 = type metadata accessor for CloudAssets_Credential(0);
  v25 = *(v37 + 32);
  v26 = *(v18 + 48);
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_53(v2, 1, v3);
  if (v22)
  {
    OUTLINED_FUNCTION_53(v2 + v26, 1, v3);
    if (v22)
    {
      sub_2437B47C4(v2, &qword_27ED867D8, &qword_2437ED980);
LABEL_28:
      v34 = *(v37 + 28);
      sub_2437EB424();
      OUTLINED_FUNCTION_3_4();
      sub_2437C98AC(v35, v36);
      v28 = sub_2437EB6E4();
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_2437C45F0();
  OUTLINED_FUNCTION_53(v2 + v26, 1, v3);
  if (v27)
  {
    (*(v38 + 8))(v17, v3);
LABEL_24:
    sub_2437B47C4(v2, &qword_27ED86820, &qword_2437ED9A8);
    goto LABEL_25;
  }

  v29 = v38;
  (*(v38 + 32))(v11, v2 + v26, v3);
  OUTLINED_FUNCTION_24();
  sub_2437C98AC(v30, v31);
  OUTLINED_FUNCTION_138();
  v32 = sub_2437EB6E4();
  v33 = *(v29 + 8);
  v33(v11, v3);
  v33(v17, v3);
  sub_2437B47C4(v2, &qword_27ED867D8, &qword_2437ED980);
  if (v32)
  {
    goto LABEL_28;
  }

LABEL_25:
  v28 = 0;
LABEL_26:
  OUTLINED_FUNCTION_134(v28);
  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437C7364()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_1_6();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C73CC()
{
  OUTLINED_FUNCTION_1_6();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C7428()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_1_6();
  sub_2437C98AC(v0, v1);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C74A8()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v1, qword_27ED8BEF0);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_81(v5, xmmword_2437ED940);
  v7 = v0 + v6;
  OUTLINED_FUNCTION_96();
  *v7 = "assets";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_133();
  v11();
  v12 = OUTLINED_FUNCTION_19_2();
  v13 = OUTLINED_FUNCTION_102(v12, "storage_reference");
  (v11)(v13, *MEMORY[0x277D21888], v9);
  v14 = OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_102(v14, "credential");
  OUTLINED_FUNCTION_133();
  v11();
  v15 = OUTLINED_FUNCTION_42();
  v16 = OUTLINED_FUNCTION_80(v15, "storage_reference_signature");
  (v11)(v16);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

void CloudAssets_SimultaneousDownloadableAssets.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for CloudAssets_Asset(0);
        OUTLINED_FUNCTION_0_5();
        sub_2437C98AC(&qword_27ED86838, v3);
        OUTLINED_FUNCTION_37();
        sub_2437EB4D4();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_61();
        sub_2437EB4A4();
        break;
      case 3:
        v4 = *(type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0) + 32);
        type metadata accessor for CloudAssets_Credential(0);
        OUTLINED_FUNCTION_1_6();
        sub_2437C98AC(&qword_27ED868F0, v5);
        OUTLINED_FUNCTION_37();
        sub_2437EB4E4();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_15_1();
}

void CloudAssets_SimultaneousDownloadableAssets.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  if (!*(*v0 + 16) || (type metadata accessor for CloudAssets_Asset(0), OUTLINED_FUNCTION_0_5(), sub_2437C98AC(v3, v4), OUTLINED_FUNCTION_56(), sub_2437EB584(), !v1))
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = OUTLINED_FUNCTION_103();
    if (sub_2437C6100(v7, v8) || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_13_3(), sub_2437EB554(), !v1))
    {
      OUTLINED_FUNCTION_34_0();
      sub_2437C8FB4();
      if (!v1)
      {
        if (!sub_2437C6100(v2[3], v2[4]))
        {
          v9 = v2[3];
          v10 = v2[4];
          OUTLINED_FUNCTION_13_3();
          sub_2437EB554();
        }

        v11 = *(type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0) + 28);
        OUTLINED_FUNCTION_27_0();
      }
    }
  }
}