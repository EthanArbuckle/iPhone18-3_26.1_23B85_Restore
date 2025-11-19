uint64_t static TestRunner.test(testBundleURL:packageURL:)(char *a1, uint64_t a2)
{
  v65 = a2;
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61 - v6;
  v8 = sub_1C6EE41A0();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  v18 = sub_1C6EE4450();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v73;
  result = sub_1C6EE41C0();
  if (!v28)
  {
    v63 = v12;
    v64 = v15;
    v73 = v17;
    v68 = v7;
    v31 = v67;
    v62 = v27;
    v71 = result;
    v72 = v30;
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    sub_1C6EE4440();
    sub_1C6E4A1FC(&qword_1EC1F7F20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle);
    sub_1C6EE45D0();
    v61 = v23;
    v32 = v31;
    v33 = *(v31 + 16);
    v34 = v8;
    v35 = v73;
    v33();
    v36 = v64;
    (v33)(v64, v35, v34);
    v37 = v68;
    (*(v32 + 56))(v68, 1, 1, v34);
    v38 = v63;
    (v33)(v63, v36, v34);
    v39 = v66;
    sub_1C6E4A29C(v37, v66, &unk_1EC1F9AB0, &qword_1C6EE9250);
    v40 = type metadata accessor for ResourceReader();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = sub_1C6E36AAC(v38, v39, 2, 0, MEMORY[0x1E69E7CD0]);
    sub_1C6E4A304(v37, &unk_1EC1F9AB0, &qword_1C6EE9250);
    v44 = *(v32 + 8);
    v44(v36, v34);
    v44(v35, v34);
    v45 = sub_1C6E392C8();
    v46 = sub_1C6E38BFC();
    v47 = sub_1C6E39950(v45);

    sub_1C6EC11F0(v47, v46, v69);
    v48 = v69[0];
    v49 = *(v43 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
    if (v49)
    {
      v50 = *(v43 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8);

      v49(v51);

      sub_1C6E41D54(v49);
    }

    else
    {
    }

    v69[0] = v48;
    v52 = v61;
    v53 = v62;
    sub_1C6E42130(v61, v69, v62);

    sub_1C6E4A454(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle);
    v54 = *v53;
    if (*(v53 + 8) == 1)
    {
      if (v54 > 1)
      {
        if (v54 == 2)
        {
          v60 = v53;
          return sub_1C6E4A454(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult);
        }

        v55 = 0x80000001C6EF92E0;
        sub_1C6E49F48();
        swift_allocError();
        v57 = 0xD000000000000010;
      }

      else if (v54)
      {
        v55 = 0x80000001C6EF92C0;
        sub_1C6E49F48();
        swift_allocError();
        v57 = 0xD00000000000001BLL;
      }

      else
      {
        v55 = 0x80000001C6EF92A0;
        sub_1C6E49F48();
        swift_allocError();
        v57 = 0xD00000000000001FLL;
      }

      *v56 = v57;
      *(v56 + 8) = v55;
    }

    else
    {
      *&v69[0] = 0;
      *(&v69[0] + 1) = 0xE000000000000000;
      sub_1C6EE51B0();

      *&v69[0] = 0xD000000000000025;
      *(&v69[0] + 1) = 0x80000001C6EF9270;
      v71 = v54;
      v58 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v58);

      v59 = v69[0];
      sub_1C6E49F48();
      swift_allocError();
      *v56 = v59;
    }

    *(v56 + 16) = 1;
    swift_willThrow();
    v60 = v53;
    return sub_1C6E4A454(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult);
  }

  return result;
}

unint64_t sub_1C6E49F48()
{
  result = qword_1EC1F7F28;
  if (!qword_1EC1F7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7F28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TestRunner(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TestRunner(_WORD *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph10TestRunnerV0C6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1C6E4A094(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6E4A0DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6E4A124(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C6E4A18C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D28, &qword_1C6EE8970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E4A1FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E4A29C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E4A304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E4A384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E4A3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E4A454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LabeledEmbeddingData.data.getter()
{
  v1 = *v0;
  sub_1C6E00D18(*v0, *(v0 + 8));
  return v1;
}

uint64_t LabeledEmbeddingData.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t LabeledEmbeddingData.init(data:label:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[3] = 0;
  a4[4] = 0;
  a4[2] = a3;
  return result;
}

uint64_t LabeledEmbeddingData.init(data:label:id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1C6E4A570()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4A5E4()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4A628()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 25705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1C6E4A66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6E4AF08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6E4A6AC(uint64_t a1)
{
  v2 = sub_1C6E4A8FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E4A6E8(uint64_t a1)
{
  v2 = sub_1C6E4A8FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LabeledEmbeddingData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F80, &qword_1C6EE9510);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E00D18(v9, v8);
  sub_1C6E4A8FC();
  sub_1C6EE55C0();
  v15 = v9;
  v16 = v8;
  v17 = 0;
  sub_1C6E160C0();
  v12 = v14[3];
  sub_1C6EE5440();
  sub_1C6DF1134(v15, v16);
  if (!v12)
  {
    LOBYTE(v15) = 1;
    sub_1C6EE5430();
    LOBYTE(v15) = 2;
    sub_1C6EE5400();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C6E4A8FC()
{
  result = qword_1EDEF5F30;
  if (!qword_1EDEF5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5F30);
  }

  return result;
}

uint64_t LabeledEmbeddingData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F88, &qword_1C6EE9518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E4A8FC();
  sub_1C6EE55B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_1C6E16544();
  sub_1C6EE53D0();
  v12 = v21;
  v11 = v22;
  LOBYTE(v21) = 1;
  v20 = sub_1C6EE53C0();
  LOBYTE(v21) = 2;
  v13 = sub_1C6EE5390();
  v15 = v14;
  v16 = *(v6 + 8);
  v19 = v13;
  v16(v9, v5);
  *a2 = v12;
  a2[1] = v11;
  v17 = v19;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v15;
  sub_1C6E00D18(v12, v11);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1C6DF1134(v12, v11);
}

uint64_t sub_1C6E4ABD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C6E4AC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LabeledEmbeddingData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LabeledEmbeddingData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6E4AE04()
{
  result = qword_1EC1F7F90;
  if (!qword_1EC1F7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7F90);
  }

  return result;
}

unint64_t sub_1C6E4AE5C()
{
  result = qword_1EDEF5F20;
  if (!qword_1EDEF5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5F20);
  }

  return result;
}

unint64_t sub_1C6E4AEB4()
{
  result = qword_1EDEF5F28;
  if (!qword_1EDEF5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5F28);
  }

  return result;
}

uint64_t sub_1C6E4AF08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C6EE54B0();

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

uint64_t sub_1C6E4B014(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6E4B05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E4B0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A10(0, v4, 0);
    v9 = a4;
    v5 = v21;
    v10 = (a1 + 32);
    do
    {
      v11 = v9;
      v12 = a3;
      if (*(a2 + 16))
      {
        v13 = sub_1C6E023B8(*v10);
        v9 = a4;
        v11 = a4;
        v12 = a3;
        if (v14)
        {
          v15 = (*(a2 + 56) + 16 * v13);
          v12 = *v15;
          v11 = v15[1];
        }
      }

      v17 = *(v21 + 16);
      v16 = *(v21 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C6E15A10((v16 > 1), v17 + 1, 1);
        v9 = a4;
      }

      *(v21 + 16) = v17 + 1;
      v18 = v21 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v11;
      ++v10;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t Request.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Request.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *Request.init(inputs:id:name:outputKeys:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = *result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1C6E4B248(char *a1, uint64_t *a2)
{
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6E21148(*a2);
  if (*(v10 + 16))
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
    v12 = sub_1C6EE5340();
    v10 = v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  v24 = v12;
  sub_1C6E298C0(v10, 1, &v24);
  if (!v2)
  {
    v14 = v24;
    MEMORY[0x1EEE9AC00](v13);
    *(&v23 - 2) = v14;
    sub_1C6E4B834(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6EE4600();

    v15 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0) + 28);
    sub_1C6E4B87C(&a1[v15]);
    sub_1C6E4B8E4(v9, &a1[v15]);
    (*(v6 + 56))(&a1[v15], 0, 1, v5);
    v16 = sub_1C6E4CD04(a2[5]);
    v17 = sub_1C6E0B8E0(v16);

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = sub_1C6E03038(*(v17 + 16), 0);
      v20 = sub_1C6E0B274(&v24, v19 + 4, v18, v17);
      sub_1C6E0D458();
      if (v20 == v18)
      {
LABEL_9:
        v21 = *a1;

        *a1 = v19;
        return result;
      }

      __break(1u);
    }

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Request.request.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t Request.diagnosticFormat.getter()
{
  v1 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[1];
  v10[0] = *v0;
  v10[1] = v5;
  v10[2] = v0[2];
  v9 = v10;
  sub_1C6E4B834(&qword_1EDEF6330, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest);
  sub_1C6EE4600();
  v6 = sub_1C6EE45C0();
  sub_1C6E4B704(v4);
  return v6;
}

uint64_t sub_1C6E4B704(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1C6E4B774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6E4B7BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C6E4B834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E4B87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E4B8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E4B948(uint64_t a1, uint64_t a2)
{
  v43 = sub_1C6EE41A0();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = sub_1C6EE4020();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v38 = a1;
  v39 = v2;
  v15(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6EE6590;
  v17 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v18 = v17;
  sub_1C6ED9D4C(inited);
  swift_setDeallocating();
  sub_1C6DFFC0C(inited + 32);
  v19 = v42;
  sub_1C6EE40C0();
  if (v19)
  {
    (*(v5 + 8))(v10, v43);
  }

  else
  {
    v42 = v15;
    v21 = a2;
    v22 = *(v5 + 8);
    v23 = v10;
    v24 = v43;
    v36 = v5 + 8;
    v22(v23, v43);

    v25 = sub_1C6EE3FF0();
    v26 = v14;
    if (v25 == 2)
    {
      sub_1C6E4CA64();
      swift_allocError();
      swift_willThrow();
      return (*(v40 + 8))(v14, v41);
    }

    else
    {
      v27 = v40;
      if (v25)
      {
        (*(v40 + 8))(v26, v41);
        return 0;
      }

      else
      {
        v35 = v26;
        v28 = v37;
        v42(v38, v21);
        v29 = sub_1C6EE40A0();
        v30 = v24;
        v32 = v31;
        v22(v28, v30);
        if (v29 == 7496033 && v32 == 0xE300000000000000)
        {

          (*(v27 + 8))(v35, v41);
          return 2;
        }

        else
        {
          v33 = sub_1C6EE54B0();

          (*(v27 + 8))(v35, v41);
          if (v33)
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }
      }
    }
  }
}

uint64_t sub_1C6E4BD04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696863724170697ALL;
  v4 = 0xEA00000000006576;
  if (v2 != 1)
  {
    v3 = 0x637241656C707061;
    v4 = 0xEC00000065766968;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x726F746365726964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0x696863724170697ALL;
  v8 = 0xEA00000000006576;
  if (*a2 != 1)
  {
    v7 = 0x637241656C707061;
    v8 = 0xEC00000065766968;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x726F746365726964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6EE54B0();
  }

  return v11 & 1;
}

uint64_t sub_1C6E4BE20()
{
  v1 = *v0;
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4BED4()
{
  *v0;
  *v0;
  sub_1C6EE4B30();
}

uint64_t sub_1C6E4BF74()
{
  v1 = *v0;
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4C024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C6E4C3C0();
  *a2 = result;
  return result;
}

void sub_1C6E4C054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xEA00000000006576;
  v5 = 0x696863724170697ALL;
  if (v2 != 1)
  {
    v5 = 0x637241656C707061;
    v4 = 0xEC00000065766968;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F746365726964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PackageServiceTypeErrors.hashValue.getter()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4C188()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4C1CC()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t Package.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Package.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Package() + 20);
  v4 = sub_1C6EE41A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Package.init(fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1C6EE40E0();
  a2[1] = v4;
  v5 = *(type metadata accessor for Package() + 20);
  v6 = sub_1C6EE41A0();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t sub_1C6E4C340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE41A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E4C3B4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1C6E4C3C0()
{
  v0 = sub_1C6EE5360();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C6E4C40C()
{
  sub_1C6E4CAB8();
  swift_allocError();
  return swift_willThrow();
}

uint64_t type metadata accessor for Package()
{
  result = qword_1EC1F7FA8;
  if (!qword_1EC1F7FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C6E4C4A4()
{
  result = qword_1EC1F7F98;
  if (!qword_1EC1F7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7F98);
  }

  return result;
}

unint64_t sub_1C6E4C4F8(uint64_t a1)
{
  result = sub_1C6E4C520();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C6E4C520()
{
  result = qword_1EC1F7FA0;
  if (!qword_1EC1F7FA0)
  {
    type metadata accessor for Package();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FA0);
  }

  return result;
}

uint64_t dispatch thunk of PackageServiceType.fetchPackages(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C6E4C708;

  return v11(a1, a2, a3);
}

uint64_t sub_1C6E4C708(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1C6E4C82C()
{
  result = sub_1C6EE41A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PackageFileType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PackageFileType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6E4CA00()
{
  result = qword_1EC1F7FB8;
  if (!qword_1EC1F7FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7FC0, qword_1C6EE9988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FB8);
  }

  return result;
}

unint64_t sub_1C6E4CA64()
{
  result = qword_1EC1F7FC8;
  if (!qword_1EC1F7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FC8);
  }

  return result;
}

unint64_t sub_1C6E4CAB8()
{
  result = qword_1EC1F7FD0;
  if (!qword_1EC1F7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FD0);
  }

  return result;
}

uint64_t sub_1C6E4CB0C(unsigned int *a1, int a2)
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

_WORD *sub_1C6E4CB5C(_WORD *result, int a2, int a3)
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

unint64_t sub_1C6E4CBFC()
{
  result = qword_1EC1F7FD8;
  if (!qword_1EC1F7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FD8);
  }

  return result;
}

uint64_t sub_1C6E4CC98(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6ECE3B0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C6E553C8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C6E4CD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1C6E15A10(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1C6EE50D0();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1C6E15A10((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1C6E57A30(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1C6E57A30(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C6E4CF2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1C6E15C10(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1C6EE50D0();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1C6E15C10((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1C6E57A30(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1C6E57A30(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C6E4D184(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1C6E4D194@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C6E57894(v2);
}

uint64_t sub_1C6E4D1A0(_OWORD *a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  *(v1 + 40) = *a1;
  return sub_1C6E56804(v3);
}

uint64_t *ComputeService.__allocating_init(configurationManager:featureResolver:fileStore:packageService:retentionTokenVendor:settings:requestEventProcessorRegistry:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  swift_allocObject();
  v14 = sub_1C6E55D94(a1, a2, a3, a4, a5, a6, a7);
  __swift_destroy_boxed_opaque_existential_1Tm_0(a4);
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm_0(a2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm_0(a1);
  return v14;
}

uint64_t *ComputeService.init(configurationManager:featureResolver:fileStore:packageService:retentionTokenVendor:settings:requestEventProcessorRegistry:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v10 = sub_1C6E55D94(a1, a2, a3, a4, a5, a6, a7);
  __swift_destroy_boxed_opaque_existential_1Tm_0(a4);
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm_0(a2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm_0(a1);
  return v10;
}

uint64_t sub_1C6E4D2F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = *(v2 + 80);
    v11 = *(v4 - 8);
    (*(v11 + 16))(a1, v3 + *(*v3 + 104), v4);
    v6 = *(v11 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v4;
  }

  else
  {
    v9 = *(v2 + 80);
    v6 = *(*(v9 - 8) + 56);
    v7 = a1;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t sub_1C6E4D428(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - v7;
  v9 = v2[2];
  if (!v9)
  {
    goto LABEL_5;
  }

  (*(v5 + 16))(v8, v9 + *(*v9 + 104), v4);
  v10 = (*(*(v3 + 88) + 72))(v4);
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  if (!v12)
  {
    v13 = v2[2];
    if (v13)
    {
      v14 = (v13 + *(*v13 + 112));
      v10 = *v14;
      v15 = v14[1];

      return v10;
    }

LABEL_5:

    return 0;
  }

  return v10;
}

uint64_t sub_1C6E4D5DC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1C6EE4FE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = v0[3];
  sub_1C6E30258(&v14 - v6);
  v9 = *(v2 - 8);
  if ((*(v9 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
LABEL_4:
    v10 = sub_1C6E303A4();

    return v10;
  }

  v10 = (*(*(v1 + 88) + 72))(v2);
  v12 = v11;
  (*(v9 + 8))(v7, v2);
  if (!v12)
  {
    goto LABEL_4;
  }

  return v10;
}

uint64_t ComputeService.Response.init(configuration:features:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ComputeService.Response();
  *(a4 + *(result + 36)) = v5;
  return result;
}

double ComputeService.Response.subscript.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + *(a2 + 36));
  if (*(v5 + 16) && (v6 = sub_1C6E0231C(*a1, a1[1]), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 24 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    *a3 = *v8;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;

    sub_1C6E00CBC(v9, v10, v11);
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1C6EE7FC0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_1C6E4D8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a1;
  v5[12] = a3;
  v6 = *v4;
  v5[15] = *v4;
  v7 = *(v6 + 80);
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6E4D9EC, 0, 0);
}

uint64_t sub_1C6E4D9EC()
{
  v2 = v0[15];
  v1 = v0[16];
  dispatch_group_enter(*(v0[14] + 72));
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v0[20] = *(v2 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for FileStore.FileContainer();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v4 = v0;
  v4[1] = sub_1C6E4DB30;
  v6 = v0[14];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001C6EF9940, sub_1C6E56608, v6, TupleTypeMetadata2);
}

uint64_t sub_1C6E4DB30()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1C6E4E0B8;
  }

  else
  {
    v3 = sub_1C6E4DC44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6E4DC44()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  *(v0 + 176) = v2;
  *(v0 + 192) = *(v0 + 80);
  v3 = v2;
  v4 = *(*v2 + 104);
  *(v0 + 200) = v4;
  v9 = (v1 + *v1);
  v5 = v1[1];
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_1C6E4DD70;
  v7 = *(v0 + 104);

  return v9(v0 + 16, v3 + v4);
}

uint64_t sub_1C6E4DD70()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = *(v2 + 192);

    v6 = sub_1C6E4E134;
  }

  else
  {
    v6 = sub_1C6E4DE94;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C6E4DE94()
{
  v35 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 112);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v25 = *(v0 + 184);
  (*(*(v0 + 136) + 16))(*(v0 + 144), v2 + *(v0 + 200), *(v0 + 128));
  *&v29 = v4;
  *(&v29 + 1) = v5;
  v30 = v6;
  v31 = v7;
  v32 = v8;
  v33 = v9;
  *v34 = v25;
  sub_1C6E50DD8(&v27, &v28, &v29, v34, v2);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 176);
  if (v1)
  {
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    v15 = *(v0 + 128);

    (*(v13 + 8))(v14, v15);

    v16 = *(v0 + 144);
    v17 = *(v0 + 112);
  }

  else
  {
    v19 = *(v0 + 144);
    v20 = *(v0 + 128);
    v24 = *(v0 + 160);
    v26 = *(v0 + 112);
    v21 = *(v0 + 88);

    v22 = v28;
    (*(*(v20 - 8) + 32))(v21, v19, v20);
    *(v21 + *(type metadata accessor for ComputeService.Response() + 36)) = v22;
  }

  sub_1C6E52548();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1C6E4E0B8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[14];
  sub_1C6E52548();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C6E4E134()
{
  v1 = v0[22];

  v2 = v0[27];
  v3 = v0[18];
  v4 = v0[14];
  sub_1C6E52548();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C6E4E1B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1C6E50AF0(&v6);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for FileStore.FileContainer();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7DA8, &unk_1C6EE89F8);
  sub_1C6EE4DA0();
  return sub_1C6EE4D90();
}

uint64_t sub_1C6E4E360(uint64_t a1, _OWORD *a2)
{
  v4 = v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v4;
  *(v3 + 80) = *v4;
  v6 = sub_1C6EE4890();
  *(v3 + 88) = v6;
  v7 = *(v6 - 8);
  *(v3 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v9 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  *(v3 + 48) = a2[2];

  return MEMORY[0x1EEE6DFA0](sub_1C6E4E45C, 0, 0);
}

uint64_t sub_1C6E4E45C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = *(v2 + 80);
  v3[3] = *(v2 + 88);
  v3[4] = v0 + 2;
  v4 = *MEMORY[0x1E69E7F98];
  v5 = sub_1C6EE4890();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1C6E4E584;
  v8 = v0[8];
  v9 = v0[9];

  return sub_1C6E4D8F0(v8, v6, &unk_1C6EE9B58, v3);
}

uint64_t sub_1C6E4E584()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *v1;
  v6[16] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6E4E738, 0, 0);
  }

  else
  {
    v8 = v6[13];
    v7 = v6[14];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1C6E4E738()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_1C6E4E7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C6E4E7C4, 0, 0);
}

uint64_t sub_1C6E4E7C4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *v1;
  v4 = v1[2];
  v2[1] = v1[1];
  v2[2] = v4;
  *v2 = v3;
  sub_1C6E57944(v1, (v0 + 2));
  v5 = v0[1];

  return v5();
}

void sub_1C6E4E83C(void (*a1)(__int128 *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a1;
  v6 = *v3;
  isa = (*v3)[10].isa;
  v8 = *(isa - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - v10;
  dispatch_group_enter(v3[9]);
  v12 = sub_1C6E50AF0(&v34);
  if (!v4)
  {
    v13 = v12;
    v28 = v11;
    v29 = v8;
    v26 = v6;
    v27 = a3;
    v15 = *(&v34 + 1);
    v14 = v34;
    v16 = *(*v12 + 104);
    v31(&v34, v12 + v16);
    v17 = v34;
    v25 = __PAIR128__(*(&v34 + 1), v14);
    v18 = v35;
    v31 = v15;
    v24 = v36;
    v20 = v37;
    v19 = v38;
    (*(v29 + 16))(v28, v13 + v16, isa);
    v30 = v17;
    *&v34 = v17;
    *(&v34 + 1) = *(&v25 + 1);
    *(&v25 + 1) = v18;
    v35 = v18;
    v36 = v24;
    v24 = v20;
    v37 = v20;
    v38 = v19;
    v32[0] = v25;
    v32[1] = v31;
    sub_1C6E50DD8(&v39, &v33, &v34, v32, v13);

    v21 = v33;
    v22 = v27;
    v23 = v26[11].isa;
    (*(v29 + 32))(v27, v28, isa);
    *(v22 + *(type metadata accessor for ComputeService.Response() + 36)) = v21;
  }

  sub_1C6E52548();
}

void sub_1C6E4EB1C(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = a1[2];
  v5[1] = *(v3 + 80);
  v6 = v7;
  sub_1C6E4E83C(sub_1C6E566D4, v5, a2);
}

uint64_t sub_1C6E4EB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[17];
  v8 = *v3;

  os_unfair_lock_lock(v7 + 6);
  sub_1C6E5671C(&v7[4], &v16);
  os_unfair_lock_unlock(v7 + 6);
  v9 = v16;

  if (v9)
  {
    v16 = a1;
    v17 = a2;

    MEMORY[0x1CCA57F60](2108704, 0xE300000000000000);
    v10 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v10);

    a1 = v16;
    a2 = v17;
  }

  else
  {
  }

  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6EE6590;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1C6DF10E0();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  sub_1C6EE4EE0();
  sub_1C6EE4730();

  dispatch_group_enter(v3[9]);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = *(v8 + 80);
  v13[3] = *(v8 + 88);
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = v12;
  v14 = type metadata accessor for InterestToken();
  result = swift_allocObject();
  *(result + 16) = sub_1C6E56738;
  *(result + 24) = v13;
  a3[3] = v14;
  a3[4] = &protocol witness table for InterestToken;
  *a3 = result;
  return result;
}

unint64_t sub_1C6E4EE00@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = result;
  v8 = *result;
  v9 = *(*result + 16);
  if (v9)
  {
    result = sub_1C6DEC784(a2, a3);
    if (v10)
    {
      v9 = *(*(v8 + 56) + 8 * result);
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    result = sub_1C6E09154(v11, a2, a3, isUniquelyReferenced_nonNull_native);
    *v6 = v14;
    *a4 = v11;
  }

  return result;
}

void sub_1C6E4EEB8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

void sub_1C6E4EF70(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6590;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C6DF10E0();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1C6EE4EE0();
  sub_1C6EE4730();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 72);

    dispatch_group_leave(v6);
  }
}

uint64_t sub_1C6E4F0D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + 80))
    {
      if (qword_1EDEF8F90 != -1)
      {
        swift_once();
      }

      sub_1C6EE4EC0();
      sub_1C6EE4730();
    }

    else
    {
      *(result + 80) = 1;
      if (qword_1EDEF8F90 != -1)
      {
        swift_once();
      }

      sub_1C6EE4EE0();
      sub_1C6EE4730();
      dispatch_group_enter(*(v1 + 72));
      sub_1C6E52A1C();
      sub_1C6E52548();
    }
  }

  return result;
}

uint64_t sub_1C6E4F220(char a1)
{
  if (a1)
  {
    v2 = swift_task_alloc();
    *(v1 + 16) = v2;
    *v2 = v1;
    v2[1] = sub_1C6E4F314;

    return sub_1C6E4F500();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v1 + 24) = v4;
    *v4 = v1;
    v4[1] = sub_1C6E4F408;

    return sub_1C6E50158();
  }
}

uint64_t sub_1C6E4F314()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6E4F408()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6E4F500()
{
  v1[12] = v0;
  v1[13] = *v0;
  v2 = sub_1C6EE42C0();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v1[16] = *(v3 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6E4F5FC, 0, 0);
}

uint64_t sub_1C6E4F5FC()
{
  if (*(v0[12] + 129) == 2)
  {
    v1 = v0[18];
    sub_1C6EE42B0();
    if (qword_1EDEF66C8 != -1)
    {
      swift_once();
    }

    v2 = v0[12];
    v0[19] = qword_1EDEF66D0;
    sub_1C6EE4EE0();
    sub_1C6EE4730();
    v3 = *(v2 + 24);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_1C6E4F7C0;

    return sub_1C6E2EFE0();
  }

  else
  {
    if (qword_1EDEF66C8 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EE0();
    sub_1C6EE4730();
    v7 = v0[17];
    v6 = v0[18];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1C6E4F7C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1C6E4FB28;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_1C6E4F8E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C6E4F8E8()
{
  v1 = v0[22];
  v2 = v0[17];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  queue = *(v7 + 32);
  v18 = v0[18];
  (*(v4 + 16))(v2);
  v8 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = *(v6 + 80);
  *(v9 + 3) = *(v6 + 88);
  *(v9 + 4) = v7;
  *(v9 + 5) = v1;
  (*(v4 + 32))(&v9[v8], v2, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C6E56754;
  *(v10 + 24) = v9;
  v0[6] = sub_1C6E567B8;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C6E50130;
  v0[5] = &block_descriptor_33;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  dispatch_sync(queue, v11);
  _Block_release(v11);

  (*(v4 + 8))(v18, v5);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v15 = v0[17];
    v14 = v0[18];

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_1C6E4FB28()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v12 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE6590;
  swift_getErrorValue();
  v7 = v0[8];
  v8 = v0[9];
  sub_1C6EE5480();
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C6DF10E0();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_1C6EE4730();

  swift_willThrow();
  (*(v5 + 8))(v2, v4);

  v9 = v0[1];
  v10 = v0[21];

  return v9();
}

uint64_t sub_1C6E4FC8C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_1C6EE42C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  if (v11)
  {
    v12 = *(v5 + 88);
    v13 = *(v4 + 80);
    v14 = *(v4 + 88);
    type metadata accessor for FileStore.FileContainer();

    if (sub_1C6ED7274(a2, v11))
    {
      if (qword_1EDEF66C8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C6EE6B40;
      v16 = (a2 + *(*a2 + 112));
      v18 = *v16;
      v17 = v16[1];
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1C6DF10E0();
      *(v15 + 32) = v18;
      *(v15 + 40) = v17;

      sub_1C6EE42B0();
      sub_1C6EE4260();
      v20 = v19;
      result = (*(v7 + 8))(v10, v6);
      v22 = v20 * 1000.0;
      if (COERCE__INT64(fabs(v20 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v22 > -9.22337204e18)
      {
        if (v22 < 9.22337204e18)
        {
          v23 = MEMORY[0x1E69E73D8];
          *(v15 + 96) = MEMORY[0x1E69E7360];
          *(v15 + 104) = v23;
          *(v15 + 72) = v22;
          sub_1C6EE4EE0();
          sub_1C6EE4730();
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v24 = a1[2];
  }

  a1[2] = a2;

  v25 = a1[5];
  v26 = a1[6];
  a1[5] = 0;
  a1[6] = 0;
  sub_1C6E56804(v25);
  *(a1 + 64) = 0;
  sub_1C6E530D8();
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v41[1] = qword_1EDEF66D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C6EE65B0;
  if (v11)
  {
    v28 = (v11 + *(*v11 + 112));
    v30 = *v28;
    v29 = v28[1];
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  v31 = MEMORY[0x1E69E6158];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v32 = sub_1C6DF10E0();
  *(v27 + 64) = v32;
  v33 = 7104878;
  if (v29)
  {
    v33 = v30;
  }

  v34 = 0xE300000000000000;
  if (v29)
  {
    v34 = v29;
  }

  *(v27 + 32) = v33;
  *(v27 + 40) = v34;
  v35 = (a2 + *(*a2 + 112));
  v37 = *v35;
  v36 = v35[1];
  *(v27 + 96) = v31;
  *(v27 + 104) = v32;
  *(v27 + 72) = v37;
  *(v27 + 80) = v36;

  sub_1C6EE42B0();
  sub_1C6EE4260();
  v39 = v38;
  (*(v7 + 8))(v10, v6);
  v40 = MEMORY[0x1E69E6438];
  *(v27 + 136) = MEMORY[0x1E69E63B0];
  *(v27 + 144) = v40;
  *(v27 + 112) = v39 * 1000.0;
  sub_1C6EE4EE0();
  sub_1C6EE4730();
}

uint64_t sub_1C6E50158()
{
  v1[12] = v0;
  v2 = sub_1C6EE48F0();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6E50218, 0, 0);
}

uint64_t sub_1C6E50218()
{
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v0[16] = qword_1EDEF66D0;
  sub_1C6EE4EE0();
  sub_1C6EE4730();
  sub_1C6EE48E0();
  v3 = *(v2 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C6E567E0;
  *(v4 + 24) = v2;
  v0[6] = sub_1C6E57D54;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C6E50130;
  v0[5] = &block_descriptor_41;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[12];
    if (*(v8 + 129) == 2)
    {
      v0[17] = *(v8 + 24);
      v9 = swift_task_alloc();
      v0[18] = v9;
      *v9 = v0;
      v9[1] = sub_1C6DF00C8;

      return sub_1C6E2EFE0();
    }

    else
    {
      if ((*(v8 + 128) & 0xC0) != 0x40)
      {
        sub_1C6E52454();
        v10 = v0[12];
      }

      v12 = v0[14];
      v11 = v0[15];
      v13 = v0[13];
      sub_1C6E50668();
      (*(v12 + 8))(v11, v13);

      v14 = v0[1];

      return v14();
    }
  }

  return result;
}

uint64_t sub_1C6E504C8()
{
  v1 = v0[19];
  v2 = v0[17];
  sub_1C6E2FF84();
  if (v1)
  {
    v3 = v0[16];
    v4 = v0[12];
    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C6EE6590;
    swift_getErrorValue();
    v6 = v0[8];
    v7 = v0[9];
    sub_1C6EE5480();
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1C6DF10E0();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    sub_1C6EE4730();

    if ((*(v4 + 128) & 0xC0) == 0x40)
    {
      goto LABEL_6;
    }

    v8 = v0[12];
  }

  else if ((*(v0[12] + 128) & 0xC0) == 0x40)
  {
    goto LABEL_6;
  }

  sub_1C6E52454();
LABEL_6:
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  sub_1C6E50668();
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

unint64_t sub_1C6E50668()
{
  v0 = sub_1C6EE48F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6EE6590;
  sub_1C6EE48E0();
  v6 = sub_1C6EE48D0();
  (*(v1 + 8))(v4, v0);
  result = sub_1C6EE48D0();
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E6438];
    *(v5 + 56) = MEMORY[0x1E69E63B0];
    *(v5 + 64) = v8;
    *(v5 + 32) = (v6 - result) / 1000000.0;
    sub_1C6EE4EE0();
    sub_1C6EE4730();
  }

  return result;
}

uint64_t sub_1C6E50820()
{
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EE0();
  sub_1C6EE4730();
  return sub_1C6E530D8();
}

uint64_t sub_1C6E508AC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v7 = *(*v1 + 80);
  v8 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData();
  sub_1C6EE4FE0();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  sub_1C6E567E8(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1C6E509F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v2;
  v12 = *(a1 + 64);
  v3 = v12;
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v5 = v9[0];
  v9[1] = v4;
  *(a2 + 32) = v10;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData();
  v6 = sub_1C6EE4FE0();
  return (*(*(v6 - 8) + 16))(v8, v9, v6);
}

uint64_t sub_1C6E50AF0(_OWORD *a1)
{
  v4 = *v1;
  v5 = sub_1C6EE4900();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v1[4];
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8018], v5);
  v10;
  v11 = sub_1C6EE4920();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    v14 = *(v4 + 80);
    v13 = *(v4 + 88);
    swift_getAssociatedTypeWitness();
    type metadata accessor for FileStore.FileContainer();
    swift_getTupleTypeMetadata2();
    result = sub_1C6EE4F30();
    if (!v2)
    {
      result = v15[1];
      *a1 = v16;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6E50CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1C6E530D8();
  v5 = a1[2];
  if (v5)
  {
    v7 = a1[5];
    v6 = a1[6];
    sub_1C6E57894(v7);
    if (v7)
    {
      *a2 = v5;
      a2[1] = v7;
      a2[2] = v6;
    }

    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(v4 + 80);
  v11 = *(v4 + 88);
  type metadata accessor for ComputeService.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *v12 = v9;
  *(v12 + 24) = 2;
  return swift_willThrow();
}

uint64_t sub_1C6E50DD8(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v64 = a2;
  v63 = a1;
  v74 = v6;
  v62 = *v6;
  v71 = sub_1C6EE42C0();
  v70 = *(v71 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1C6EE48F0();
  v68 = *(v69 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v15 = a3[1];
  v77 = *a3;
  v78 = v15;
  v79 = a3[2];
  v16 = a4[1];
  v66 = *a4;
  v65 = v16;
  v67 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EE48E0();
  v72 = v12;
  sub_1C6EE42A0();
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C6EE6B40;
  v18 = *(&v78 + 1);
  v19 = v79;
  v20 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1C6DF10E0();
  v22 = v21;
  *(v17 + 64) = v21;
  v23 = 0x64656D616E6E75;
  if (v19)
  {
    v23 = v18;
  }

  v24 = 0xE700000000000000;
  if (v19)
  {
    v24 = v19;
  }

  *(v17 + 32) = v23;
  *(v17 + 40) = v24;
  v80 = *(a3 + 8);
  v25 = v80;
  *(v17 + 96) = v20;
  *(v17 + 104) = v21;
  *(v17 + 72) = v25;

  sub_1C6E579D4(&v80, v75);
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  v26 = v73;
  sub_1C6ED21E8();
  if (v26)
  {
    v28 = v72;
LABEL_26:
    v50 = v67;
    v51 = v67;
    v52 = v74;
LABEL_27:
    sub_1C6E51570(&v77, v51, v52);
    (*(v70 + 8))(v28, v71);
    return (*(v68 + 8))(v50, v69);
  }

  v73 = v18;
  v29 = *(*a5 + 104);
  v30 = a3[1];
  v75[0] = *a3;
  v75[1] = v30;
  v75[2] = a3[2];
  v61[2] = v27;
  sub_1C6E517B4(&v81, &v76, v75, v27, v66, v65, v74, (a5 + v29));
  v66 = v81;
  v31 = v76;
  v32 = swift_allocObject();
  *(v32 + 56) = v20;
  *(v32 + 64) = v22;
  v33 = v80;
  *(v32 + 16) = xmmword_1C6EE6590;
  *(v32 + 32) = v33;

  sub_1C6EE4EE0();
  sub_1C6EE4730();

  v34 = *(&v79 + 1);

  v35 = *(v31 + 16);

  v65 = v34;
  if (v35)
  {
    v61[1] = 0;
    v36 = sub_1C6E0304C(v35, 0);
    v37 = sub_1C6E0AE6C(v75, v36 + 4, v35, v31);

    result = sub_1C6DF3598();
    if (v37 != v35)
    {
      __break(1u);
      goto LABEL_29;
    }

    v28 = v72;
    v39 = v73;
    v40 = v66;
    v34 = v65;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
    v28 = v72;
    v39 = v73;
    v40 = v66;
  }

  v41 = sub_1C6E0BEFC(v36);

  v42 = sub_1C6EDCDC0(v41, v34);

  if (v42)
  {

    if (v19)
    {
      v43 = v74[12];
      v44 = sub_1C6EC0D80(v39, v19);
      if (v44)
      {
        v45 = v44;

        v46 = sub_1C6E4CD04(v34);
        v47 = v31;
        v48 = sub_1C6E0B8E0(v46);

        *&v75[0] = v40;
        *(&v75[0] + 1) = v48;
        v31 = v47;
        (*((*MEMORY[0x1E69E7D40] & *v45) + 0x50))(v75);
      }
    }

    v49 = v74;
    sub_1C6E54C04(v39, v19);

    *v63 = v40;
    *v64 = v31;
    v50 = v67;
    v51 = v67;
    v52 = v49;
    goto LABEL_27;
  }

  sub_1C6E54C04(v39, v19);

  v53 = *(v31 + 16);
  if (!v53)
  {

    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v54 = sub_1C6E0304C(*(v31 + 16), 0);
  v55 = sub_1C6E0AE6C(v75, v54 + 4, v53, v31);

  result = sub_1C6DF3598();
  if (v55 == v53)
  {

    v34 = v65;
LABEL_22:
    v56 = sub_1C6E0BEFC(v54);

    if (*(v56 + 16) <= *(v34 + 16) >> 3)
    {
      *&v75[0] = v34;
      sub_1C6E037A4(v56);

      v57 = *&v75[0];
    }

    else
    {
      v57 = sub_1C6E03C08(v56, v34);
    }

    v58 = *(v62 + 80);
    v59 = *(v62 + 88);
    type metadata accessor for ComputeService.RequestErrors();
    swift_getWitnessTable();
    swift_allocError();
    *v60 = v57;
    swift_willThrow();

    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1C6E51570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = sub_1C6EE48F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6EE65B0;
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1C6DF10E0();
  *(v9 + 64) = v13;
  v14 = 0x64656D616E6E75;
  if (v10)
  {
    v14 = v11;
  }

  v15 = 0xE700000000000000;
  if (v10)
  {
    v15 = v10;
  }

  *(v9 + 32) = v14;
  *(v9 + 40) = v15;
  v23 = *(a1 + 8);
  v16 = v23;
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 72) = v16;
  sub_1C6E579D4(&v23, v22);

  sub_1C6EE48E0();
  v17 = sub_1C6EE48D0();
  (*(v5 + 8))(v8, v4);
  result = sub_1C6EE48D0();
  if (v17 < result)
  {
    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E6438];
    *(v9 + 136) = MEMORY[0x1E69E63B0];
    *(v9 + 144) = v19;
    *(v9 + 112) = (v17 - result) / 1000000.0;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    if ((*(v21 + 128) & 0xC0) != 0x40)
    {
      return sub_1C6E52454();
    }
  }

  return result;
}

uint64_t sub_1C6E517B4(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v92 = a8;
  v87 = a6;
  v86 = a5;
  v93 = *a7;
  v13 = v93;
  v91 = sub_1C6EE4760();
  v90 = *(v91 - 8);
  v14 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v98 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1C6EE4790();
  v88 = *(v89 - 8);
  v16 = *(v88 + 64);
  v17 = MEMORY[0x1EEE9AC00](v89);
  v94 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a7;
  v19 = v13[10];
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v82 - v22;
  v24 = *a3;
  v25 = a3[5];
  v106 = type metadata accessor for FeaturesStore(0);
  v107 = &off_1F468D8C0;
  v104[0] = a4;

  v26 = sub_1C6E21148(v24);
  if (*(v26 + 16))
  {
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
    v28 = sub_1C6EE5340();
    v26 = v27;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC8];
  }

  v102 = v28;
  sub_1C6E298C0(v26, 1, &v102);
  v96 = v102;
  v29 = sub_1C6E4CD04(v25);
  v30 = sub_1C6E0B8E0(v29);

  v31 = *(v30 + 16);
  v85 = 0;
  if (v31)
  {
    v95 = sub_1C6E03038(v31, 0);
    v32 = sub_1C6E0B274(&v102, v95 + 4, v31, v30);
    sub_1C6DF3598();
    if (v32 == v31)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v95 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v33 = v97;
  v34 = *(v97 + 129);
  (*(v20 + 16))(v23, v92, v19);
  v35 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v36 = swift_allocObject();
  v36[2] = v19;
  v36[3] = v93[11];
  v36[4] = v33;
  v37 = *(v20 + 32);
  v84 = v36;
  v37(v36 + v35, v23, v19);
  v38 = qword_1EDEF8F80;

  if (v38 != -1)
  {
    swift_once();
  }

  v92 = a1;
  v93 = a2;
  v39 = qword_1EDEF8F88;
  v40 = v94;
  sub_1C6EE4770();
  v41 = v96;
  if (qword_1EDEF8FA0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C6EE6B40;
  v43 = MEMORY[0x1E69E6158];
  v44 = MEMORY[0x1CCA580B0](v95, MEMORY[0x1E69E6158]);
  v46 = v45;
  *(v42 + 56) = v43;
  v47 = sub_1C6DF10E0();
  *(v42 + 64) = v47;
  *(v42 + 32) = v44;
  *(v42 + 40) = v46;
  v48 = sub_1C6EE49B0();
  *(v42 + 96) = v43;
  *(v42 + 104) = v47;
  *(v42 + 72) = v48;
  *(v42 + 80) = v49;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  sub_1C6EE4780();
  sub_1C6EE4740();
  v50 = swift_slowAlloc();
  v83 = swift_slowAlloc();
  v101 = v83;
  v102 = 0;
  *v50 = 136446210;
  v103 = 0xE000000000000000;
  sub_1C6EE51B0();

  v99 = 0x3D737475706E69;
  v100 = 0xE700000000000000;
  v51 = *(v41 + 16);
  if (v51)
  {
    v52 = sub_1C6E03038(*(v41 + 16), 0);
    v53 = sub_1C6E0D430(&v102, v52 + 4, v51, v41);

    sub_1C6DF3598();
    if (v53 != v51)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v54 = v94;
  }

  else
  {
    v54 = v40;
  }

  v55 = objc_opt_self();
  v56 = MEMORY[0x1E69E6158];
  v57 = sub_1C6EE4C90();

  v58 = [v55 localizedStringByJoiningStrings_];

  v59 = sub_1C6EE4A90();
  v61 = v60;

  MEMORY[0x1CCA57F60](v59, v61);

  MEMORY[0x1CCA57F60](0x74757074756F202CLL, 0xEA00000000003D73);
  v62 = v95;
  v63 = MEMORY[0x1CCA580B0](v95, v56);
  MEMORY[0x1CCA57F60](v63);

  v64 = sub_1C6E41514(v99, v100, &v101);

  *(v50 + 4) = v64;
  v65 = sub_1C6EE4780();
  LOBYTE(v58) = sub_1C6EE4F80();
  v66 = v98;
  v67 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v65, v58, v67, "SubGraphComputation.buildAndCall", "%{public}s", v50, 0xCu);
  sub_1C6EDFEE4(v62, v86, v87, v96, v104, (v97 + 19), v34 != 2, sub_1C6E57A3C, &v102, v84);
  LOBYTE(v58) = sub_1C6EE4F70();
  v68 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v65, v58, v68, "SubGraphComputation.buildAndCall", "%{public}s", v50, 0xCu);

  v70 = v102;
  v69 = v103;
  v71 = v83;
  __swift_destroy_boxed_opaque_existential_1Tm_0(v83);
  MEMORY[0x1CCA59290](v71, -1, -1);
  MEMORY[0x1CCA59290](v50, -1, -1);

  (*(v90 + 8))(v66, v91);
  (*(v88 + 8))(v54, v89);
  sub_1C6DEDC90(v104, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v73 = v92;
  v72 = v93;
  if (*(v70 + 16))
  {

    v74 = sub_1C6DEC784(0xD000000000000016, 0x80000001C6EFA2E0);
    if (v75)
    {
      v76 = *(v70 + 56) + 24 * v74;
      v77 = *v76;
      v78 = *(v76 + 8);
      v79 = *(v76 + 16);
      sub_1C6E00CBC(*v76, v78, v79);

      v104[0] = v77;
      v104[1] = v78;
      v105 = v79;
      if (Feature.count.getter())
      {
        sub_1C6ED2298();
      }

      sub_1C6E00C60(v77, v78, v79);
    }

    else
    {
    }
  }

  sub_1C6E26748(v80, v73);
  swift_bridgeObjectRelease_n();
  sub_1C6E26748(v69, v72);
}

void sub_1C6E52114(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[18];
  v11 = *(*a4 + 80);
  swift_getExtendedExistentialTypeMetadata();
  sub_1C6EE4FE0();
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1C6E57AD8(v5 + v6);
  os_unfair_lock_unlock((v5 + v7));
  if (!v4)
  {
    v8 = sub_1C6E21148(v12);
    if (*(v8 + 16))
    {
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
      v10 = sub_1C6EE5340();
      v8 = v9;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC8];
    }

    v12 = v10;
    sub_1C6E298C0(v8, 1, &v12);
  }
}

uint64_t sub_1C6E522C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 24))
  {
    sub_1C6E57B14(a1, &v16);
    if (*(&v17 + 1))
    {
LABEL_3:
      sub_1C6E57AFC(&v16, v19);
      v9 = sub_1C6E4CF2C(a2);
      v10 = sub_1C6E0BEFC(v9);

      v11 = v20;
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v12 + 24))(v10, a5, a3, a4, v11, v12);

      return __swift_destroy_boxed_opaque_existential_1Tm_0(v19);
    }
  }

  else
  {
    v14 = *(a1 + 16);
    v16 = *a1;
    v17 = v14;
    v18 = *(a1 + 32);
    if (*(&v14 + 1))
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for ComputeService.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v15 = a2;
  *(v15 + 8) = a3;
  *(v15 + 16) = a4;
  *(v15 + 24) = 0;
  swift_willThrow();
}

uint64_t sub_1C6E5247C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EDEF8F90 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EE0();
    sub_1C6EE4730();
    dispatch_group_enter(*(v1 + 72));
    sub_1C6E52A1C();
    sub_1C6E52548();
  }

  return result;
}

void sub_1C6E52548()
{
  v1 = *(v0 + 128);
  if (v1 >> 6 > 1)
  {
    dispatch_group_leave(*(v0 + 72));
  }

  else
  {
    sub_1C6E52574(*(v0 + 120), v1 & 1, v0);
  }
}

uint64_t sub_1C6E52574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v36 = sub_1C6EE4880();
  v39 = *(v36 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6EE48C0();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6EE4890();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6EE48F0();
  v34 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  sub_1C6EE48E0();
  sub_1C6EE4910();
  v33 = *(v15 + 8);
  v33(v19, v14);
  sub_1C6DEC5E8();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E7FA0], v9);
  v31 = sub_1C6EE4F60();
  (*(v10 + 8))(v13, v9);
  v22 = *(v32 + 72);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  aBlock[4] = sub_1C6E57880;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6DEDCF0;
  aBlock[3] = &block_descriptor_72;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v8;
  sub_1C6EE48A0();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1C6DEC634(&qword_1EDEF6858, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6DEC67C(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
  v28 = v35;
  v27 = v36;
  sub_1C6EE50C0();
  v29 = v31;
  MEMORY[0x1CCA58310](v21, v26, v28, v24);
  _Block_release(v24);

  (*(v39 + 8))(v28, v27);
  (*(v37 + 8))(v26, v38);
  v33(v21, v34);
}

uint64_t sub_1C6E52A1C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1C6EE4880();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6EE48C0();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6EE4900();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v1[4];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  v18 = sub_1C6EE4920();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + 81))
  {
    if (qword_1EDEF8F90 == -1)
    {
LABEL_4:
      sub_1C6EE4EE0();
      return sub_1C6EE4730();
    }

LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v26[1] = v17;
  if (qword_1EDEF8F90 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EE0();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4730();
  *(v1 + 81) = 1;
  v21 = v1[9];
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = *(v2 + 80);
  v23[3] = *(v2 + 88);
  v23[4] = v22;
  aBlock[4] = sub_1C6E57874;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6E57D50;
  aBlock[3] = &block_descriptor_66;
  v24 = _Block_copy(aBlock);
  v25 = v21;

  sub_1C6EE48A0();
  v30 = v20;
  sub_1C6DEC634(&qword_1EDEF6858, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6DEC67C(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6EE50C0();
  sub_1C6EE4EF0();
  _Block_release(v24);

  (*(v29 + 8))(v6, v3);
  (*(v27 + 8))(v10, v28);
}

uint64_t sub_1C6E52EFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*(Strong + 80) & 1) != 0 || (*(Strong + 128) & 0xC0) != 0x40)
    {
      if (qword_1EDEF8F90 != -1)
      {
        swift_once();
      }

      sub_1C6EE4EE0();
      sub_1C6EE4730();
      if (*(v1 + 16))
      {
        v2 = *(v1 + 16);

        sub_1C6ED22A0();
      }

      v3 = *(v1 + 40);
      v4 = *(v1 + 48);
      *(v1 + 40) = 0;
      *(v1 + 48) = 0;
      sub_1C6E56804(v3);
      *(v1 + 64) = 0;
    }

    else
    {
      if (qword_1EDEF8F90 != -1)
      {
        swift_once();
      }

      sub_1C6EE4EE0();
      sub_1C6EE4730();
    }

    *(v1 + 81) = 0;
  }

  else
  {
    if (qword_1EDEF8F90 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EC0();
    return sub_1C6EE4730();
  }
}

uint64_t sub_1C6E530D8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1C6EE48F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6EE4900();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 32);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = sub_1C6EE4920();
  result = (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (*(v1 + 64) == 1)
  {
    if (*(v1 + 16))
    {
      return result;
    }

    if (qword_1EDEF8F70 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EE0();
    sub_1C6EE4730();
    v16 = *(v1 + 24);
    result = sub_1C6E2E960();
    if (result)
    {
      v17 = result;
      sub_1C6EE4EE0();
      sub_1C6EE4730();
      v18 = *(v1 + 16);
      *(v1 + 16) = v17;

      *(v1 + 64) = 0;
    }

    else if (*(v1 + 64))
    {
      return result;
    }
  }

  if (*(v1 + 80) == 1)
  {
    if (qword_1EDEF8F90 == -1)
    {
LABEL_11:
      sub_1C6EE4EE0();
      sub_1C6EE4730();
      sub_1C6E52A1C();
      goto LABEL_12;
    }

LABEL_39:
    swift_once();
    goto LABEL_11;
  }

LABEL_12:
  sub_1C6EE48E0();
  if (*(v1 + 64))
  {
    if (qword_1EDEF8F70 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EE0();
    sub_1C6EE4730();
  }

  else
  {
    v19 = *(v1 + 16);
    v64 = v3;
    if (v19)
    {

      v20 = sub_1C6ED2308();
      v63 = v19;
      v26 = v20;
      v27 = sub_1C6E392C8();
      v62 = v26;
      v28 = v27;
      v29 = sub_1C6E38BFC();
      v30 = sub_1C6E39950(v28);

      sub_1C6EC11F0(v30, v29, &v65);
      v61 = 0;
      v36 = v65;
      v37 = *(v62 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
      if (v37)
      {
        v38 = *(v62 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8);
        v60 = v65;

        v37(v39);
        sub_1C6E41D54(v37);
        v36 = v60;
      }

      v40 = *(v1 + 40);
      v41 = *(v1 + 48);
      *(v1 + 40) = v36;
      sub_1C6E56804(v40);
      if (qword_1EDEF8F70 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1C6EE6B40;
      v43 = *(*v19 + 104);
      v44 = *(v2 + 88);
      *&v60 = *(v2 + 80);
      *&v65 = (*(v44 + 72))();
      *(&v65 + 1) = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
      v46 = sub_1C6EE4AF0();
      v48 = v47;
      v49 = MEMORY[0x1E69E6158];
      *(v42 + 56) = MEMORY[0x1E69E6158];
      v50 = sub_1C6DF10E0();
      *(v42 + 64) = v50;
      *(v42 + 32) = v46;
      *(v42 + 40) = v48;
      v51 = (v63 + *(*v63 + 112));
      v53 = *v51;
      v52 = v51[1];
      *(v42 + 96) = v49;
      *(v42 + 104) = v50;
      *(v42 + 72) = v53;
      *(v42 + 80) = v52;

      sub_1C6EE4EE0();
      sub_1C6EE4730();

      v59[1] = v59;
      v55 = *(v1 + 56);
      MEMORY[0x1EEE9AC00](v54);
      v56 = v62;
      v59[-4] = v63;
      v59[-3] = v56;
      v59[-2] = v1;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ComputeServiceData();
      sub_1C6EE4FE0();

      v57 = v61;
      sub_1C6E4EEB8(sub_1C6E57838, &v59[-6], v55);

      v58 = *(v1 + 88);

      os_unfair_lock_lock((v58 + 24));
      sub_1C6E57858((v58 + 16));
      os_unfair_lock_unlock((v58 + 24));

      v3 = v64;
      v31 = *(v1 + 40);
      sub_1C6E57894(v31);
      if (v31)
      {
        sub_1C6E56804(v31);
        if (qword_1EDEF8F70 != -1)
        {
          swift_once();
        }

        sub_1C6EE4EE0();
        sub_1C6EE4730();
      }

      else
      {
        sub_1C6ED02E4();
        if (v57)
        {
          if (qword_1EDEF8F70 != -1)
          {
            swift_once();
          }

          sub_1C6EE4EC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1C6EE6590;
          *&v65 = 0;
          *(&v65 + 1) = 0xE000000000000000;
          swift_getErrorValue();
          sub_1C6EE5480();
          v34 = v65;
          *(v33 + 56) = MEMORY[0x1E69E6158];
          *(v33 + 64) = sub_1C6DF10E0();
          *(v33 + 32) = v34;
          sub_1C6EE4730();
        }

        else
        {
          v32 = *(v1 + 24);
          sub_1C6E2FF84();
        }

        v35 = *(v1 + 16);
        *(v1 + 16) = 0;

        *(v1 + 64) = 0;
      }
    }

    else
    {
      if (qword_1EDEF8F70 != -1)
      {
        swift_once();
      }

      sub_1C6EE4EE0();
      v21 = sub_1C6EE4730();
      v22 = *(v1 + 56);
      MEMORY[0x1EEE9AC00](v21);
      v23 = *(v2 + 88);
      v59[-2] = *(v2 + 80);
      v59[-1] = v23;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ComputeServiceData();
      sub_1C6EE4FE0();
      v24 = *(*v22 + *MEMORY[0x1E69E6B68] + 16);
      v25 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v22 + v25));
      sub_1C6E577E4(v22 + v24);
      os_unfair_lock_unlock((v22 + v25));

      v3 = v64;
    }
  }

  sub_1C6E53EEC(v1);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C6E53EEC(uint64_t a1)
{
  v2 = sub_1C6EE48F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 64) = 1;
  if (qword_1EDEF8F70 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6EE6590;
  sub_1C6EE48E0();
  v8 = sub_1C6EE48D0();
  (*(v3 + 8))(v6, v2);
  result = sub_1C6EE48D0();
  if (v8 < result)
  {
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E6438];
    *(v7 + 56) = MEMORY[0x1E69E63B0];
    *(v7 + 64) = v10;
    *(v7 + 32) = (v8 - result) / 1000000.0;
    sub_1C6EE4EE0();
    sub_1C6EE4730();
  }

  return result;
}

__n128 sub_1C6E540B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData();
  v4 = sub_1C6EE4FE0();
  (*(*(v4 - 8) + 8))(v7, v4);
  static ComputeServiceData.uninitalized.getter(v9);
  v5 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v10;
  result = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C6E541D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a1 + 48);
  v39[2] = *(a1 + 32);
  v39[3] = v8;
  v40 = *(a1 + 64);
  v9 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v9;
  v10 = v7[11];
  v11 = v7[12];
  v41 = v7[10];
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData();
  v12 = sub_1C6EE4FE0();
  (*(*(v12 - 8) + 8))(v39, v12);
  v13 = (a2 + *(*a2 + 112));
  v34 = v13[1];
  v35 = *v13;

  v14 = sub_1C6ED28FC();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = sub_1C6E03038(*(v14 + 16), 0);
    v18 = sub_1C6E0B274(v37, v17 + 4, v16, v15);
    sub_1C6DF3598();
    if (v18 == v16)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_5:
  *&v37[0] = v17;

  sub_1C6E4CC98(v37);
  if (v4)
  {

    __break(1u);
    return result;
  }

  v33 = *&v37[0];
  v19 = sub_1C6E36310();
  v20 = sub_1C6ED2988();
  v21 = v20;
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = sub_1C6E03038(*(v20 + 16), 0);
    v24 = sub_1C6E0B274(v37, v23 + 4, v22, v21);
    sub_1C6DF3598();
    if (v24 == v22)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_10:
  *&v37[0] = v23;

  sub_1C6E4CC98(v37);

  v25 = *&v37[0];
  if (*(a4 + 112))
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1C6E0C6F0(MEMORY[0x1E69E7CC0]);
  }

  v27 = *(*a2 + 104);
  v28 = (*(v11 + 72))(v41, v11);
  result = ComputeServiceData.init(configurationIdentifier:configurationPackageIDs:packageVersions:cachedPackageIDs:resolvedGlobalGraph:requestsByWorkName:humanReadableIdentifier:)(v35, v34, v33, v19, v25, 1, v26, v28, v37, v29);
  v31 = v37[3];
  *(a1 + 32) = v37[2];
  *(a1 + 48) = v31;
  *(a1 + 64) = v38;
  v32 = v37[1];
  *a1 = v37[0];
  *(a1 + 16) = v32;
  return result;
}

uint64_t sub_1C6E54510(uint64_t *a1)
{
  v2 = *a1;

  v3 = sub_1C6ED28FC();
  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1C6E03038(*(v3 + 16), 0);
  v7 = sub_1C6E0B274(&v9, v6 + 4, v5, v4);
  result = sub_1C6DF3598();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1C6E545C4(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a1 + 48);
  v37[2] = *(a1 + 32);
  v37[3] = v6;
  v38 = *(a1 + 64);
  v7 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v7;
  v8 = v5[11];
  v9 = v5[12];
  v10 = v5[10];
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData();
  v11 = sub_1C6EE4FE0();
  (*(*(v11 - 8) + 8))(v37, v11);
  v12 = (a2 + *(*a2 + 112));
  v32 = v12[1];
  v33 = *v12;

  v13 = sub_1C6ED28FC();
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = sub_1C6E03038(*(v13 + 16), 0);
    v17 = sub_1C6E0B274(v35, v16 + 4, v15, v14);
    sub_1C6DF3598();
    if (v17 == v15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v18 = v10;
  *&v35[0] = v16;

  sub_1C6E4CC98(v35);
  if (!v2)
  {

    v31 = *&v35[0];
    v34 = sub_1C6E36310();
    v19 = sub_1C6ED2988();
    v20 = v19;
    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = sub_1C6E03038(*(v19 + 16), 0);
      v23 = sub_1C6E0B274(v35, v22 + 4, v21, v20);
      sub_1C6DF3598();
      if (v23 == v21)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v39 = v22;

    sub_1C6E4CC98(&v39);

    v24 = v39;
    v25 = *(*a2 + 104);
    v26 = (*(v9 + 72))(v18, v9);
    result = ComputeServiceData.init(configurationIdentifier:configurationPackageIDs:packageVersions:cachedPackageIDs:resolvedGlobalGraph:requestsByWorkName:humanReadableIdentifier:)(v33, v32, v31, v34, v24, 0, 0, v26, v35, v27);
    v29 = v35[3];
    *(a1 + 32) = v35[2];
    *(a1 + 48) = v29;
    *(a1 + 64) = v36;
    v30 = v35[1];
    *a1 = v35[0];
    *(a1 + 16) = v30;
    return result;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C6E548E8(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a1 + 48);
  v35[2] = *(a1 + 32);
  v35[3] = v5;
  v36 = *(a1 + 64);
  v6 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v6;
  v7 = v4[11];
  v8 = v4[12];
  v9 = v4[10];
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData();
  v10 = sub_1C6EE4FE0();
  (*(*(v10 - 8) + 8))(v35, v10);
  v11 = (a2 + *(*a2 + 112));
  v29 = v11[1];
  v30 = *v11;

  v12 = sub_1C6ED28FC();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_1C6E03038(v13, 0);
    v15 = sub_1C6E0B274(v33, v14 + 4, v13, v12);
    sub_1C6DF3598();
    if (v15 == v13)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v16 = v9;
  *&v33[0] = v14;

  sub_1C6E4CC98(v33);
  if (!v31)
  {

    v32 = *&v33[0];
    v17 = sub_1C6ED2988();
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19)
    {
      v20 = sub_1C6E03038(*(v17 + 16), 0);
      v21 = sub_1C6E0B274(v33, v20 + 4, v19, v18);
      sub_1C6DF3598();
      if (v21 == v19)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v37 = v20;

    sub_1C6E4CC98(&v37);

    v22 = v37;
    v23 = *(*a2 + 104);
    v24 = (*(v8 + 72))(v16, v8);
    result = ComputeServiceData.init(configurationIdentifier:configurationPackageIDs:packageVersions:cachedPackageIDs:resolvedGlobalGraph:requestsByWorkName:humanReadableIdentifier:)(v30, v29, v32, MEMORY[0x1E69E7CC0], v22, 0, 0, v24, v33, v25);
    v27 = v33[3];
    *(a1 + 32) = v33[2];
    *(a1 + 48) = v27;
    *(a1 + 64) = v34;
    v28 = v33[1];
    *a1 = v33[0];
    *(a1 + 16) = v28;
    return result;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C6E54C04(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    if ((v2[14] & 1) == 0)
    {
      v4 = v2[7];
      MEMORY[0x1EEE9AC00](result);
      v8 = *(v5 + 80);
      v9 = *(v5 + 88);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ComputeServiceData();
      sub_1C6EE4FE0();
      v6 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
      v7 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v4 + v7));
      sub_1C6E57760((v4 + v6));
      os_unfair_lock_unlock((v4 + v7));
    }
  }

  return result;
}

double sub_1C6E54D88(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v32 = a4;
  v8 = type metadata accessor for RequestData(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6EE42C0();
  (*(*(v13 - 8) + 16))(v12, a2, v13);
  v14 = &v12[*(type metadata accessor for TimedData(0) + 20)];
  sub_1C6EE42A0();
  v12[*(v9 + 28)] = a3;
  v15 = *a1;
  v16 = *(a1 + 3);
  v52 = *(a1 + 1);
  v53 = v16;
  v17 = *(a1 + 7);
  v54 = *(a1 + 5);
  v55 = v17;
  if (v15)
  {
    v18 = *(a1 + 1);
    v19 = *(a1 + 3);
    v39 = *(a1 + 2);
    v40 = v19;
    v20 = *(a1 + 1);
    v38[0] = *a1;
    v38[1] = v20;
    v21 = *(a1 + 3);
    v35 = v39;
    v36 = v21;
    v41 = a1[8];
    v37 = a1[8];
    v33 = v38[0];
    v34 = v18;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v22 = type metadata accessor for ComputeServiceData();
    v23 = *(v22 - 8);
    (*(v23 + 16))(&v47, v38, v22);
    sub_1C6E57F34(v12, v32, v56, &v47);
    v44 = v35;
    v45 = v36;
    v46 = v37;
    v42 = v33;
    v43 = v34;
    (*(v23 + 8))(&v42, v22);
    sub_1C6E57788(v12);
    v24 = v47;
    v33 = v48;
    v34 = v49;
    v35 = v50;
    v36 = v51;
  }

  else
  {
    sub_1C6E57788(v12);
    v33 = v52;
    v34 = v53;
    v35 = v54;
    v36 = v55;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v24 = 0;
  }

  v25 = *(a1 + 3);
  v44 = *(a1 + 2);
  v45 = v25;
  v46 = a1[8];
  v26 = *(a1 + 1);
  v42 = *a1;
  v43 = v26;
  type metadata accessor for ComputeServiceData();
  v27 = sub_1C6EE4FE0();
  (*(*(v27 - 8) + 8))(&v42, v27);
  *a1 = v24;
  v28 = v34;
  *(a1 + 1) = v33;
  *(a1 + 3) = v28;
  result = *&v35;
  v30 = v36;
  *(a1 + 5) = v35;
  *(a1 + 7) = v30;
  return result;
}

uint64_t ComputeService.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);
  sub_1C6E56804(*(v0 + 40));
  v4 = *(v0 + 56);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 136);

  v8 = *(v0 + 144);

  sub_1C6DEDC90(v0 + 152, &qword_1EC1F7F38, &unk_1C6EF7A00);
  return v0;
}

uint64_t ComputeService.__deallocating_deinit()
{
  ComputeService.deinit();

  return swift_deallocClassInstance();
}

uint64_t ComputeService.diagnosticInfo.getter()
{
  v1 = *(v0 + 32);
  type metadata accessor for DiagnosticInfo();
  return sub_1C6EE4F30();
}

uint64_t sub_1C6E5523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(*v8 + 120);
    v10 = sub_1C6EE41A0();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v7, v8 + v9, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
  }

  else
  {
    v12 = sub_1C6EE41A0();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  return sub_1C6E578D4(v7, a2);
}

uint64_t sub_1C6E553C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C6EE5450();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C6EE4D00();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C6E55590(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C6E554C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6E554C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1C6EE54B0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6E55590(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1C6ECCA74(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C6E55B6C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1C6EE54B0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1C6EE54B0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6ED92D4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C6ED92D4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1C6E55B6C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C6ECCA74(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C6ECC9E8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1C6EE54B0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1C6E55B6C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1C6EE54B0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1C6EE54B0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t *sub_1C6E55D94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v8 = v7;
  v59 = a7;
  v60 = a5;
  v53 = a4;
  v43 = a3;
  v51 = a2;
  v52 = a1;
  v45 = *v8;
  v44 = *a3;
  v57 = sub_1C6EE4880();
  v58 = *(v57 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C6EE4F20();
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C6EE4F00();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v55 = sub_1C6EE48C0();
  v54 = *(v55 - 8);
  v18 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a6;
  v49 = *(a6 + 8);
  v48 = a6[2];
  v47 = *(a6 + 24);
  v46 = *(a6 + 25);
  v8[2] = 0;
  v41[1] = sub_1C6DEC5E8();
  v41[0] = ".0f milliseconds";
  sub_1C6EE48B0();
  *&v68[0] = MEMORY[0x1E69E7CC0];
  sub_1C6DEC634(&qword_1EDEF6770, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE8, &qword_1C6EE9E10);
  sub_1C6DEC67C(&qword_1EDEF67A8, &qword_1EC1F7FE8, &qword_1C6EE9E10);
  sub_1C6EE50C0();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8090], v42);
  v21 = v20;
  v22 = sub_1C6EE4F50();
  v8[5] = 0;
  v8[6] = 0;
  v8[4] = v22;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  aBlock = 0u;
  v64 = 0u;
  v23 = v43;
  v24 = *(v44 + 88);
  v25 = *(v45 + 88);
  v26 = *(v45 + 80);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData();
  v27 = sub_1C6EE4FE0();
  v28 = sub_1C6DED958();
  v68[1] = v64;
  v68[2] = v65;
  v68[3] = v66;
  v69 = v67;
  v68[0] = aBlock;
  (*(*(v27 - 8) + 8))(v68, v27);
  v8[7] = v28;
  *(v8 + 64) = 0;
  v8[9] = dispatch_group_create();
  *(v8 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FF0, &qword_1C6EE9E18);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v29 + 16) = MEMORY[0x1E69E7CC0];
  v8[11] = v29;
  v31 = v30;
  v32 = sub_1C6DEDB3C(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FF8, &qword_1C6EE9E20);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 16) = v32;
  v8[17] = v33;
  *&aBlock = v26;
  swift_getExtendedExistentialTypeMetadata();
  sub_1C6EE4FE0();
  v8[18] = sub_1C6DED958();
  type metadata accessor for FileContainerManager();
  sub_1C6E57B14(v52, &aBlock);
  sub_1C6E57B14(v53, v62);
  LOBYTE(v26) = v46;
  v61 = v46;
  v34 = sub_1C6E2E898(&aBlock, v62, v23, &v61);
  v8[3] = v34;
  sub_1C6E57B78(v60, (v8 + 19), &qword_1EC1F7F38, &unk_1C6EF7A00);
  *(v8 + 112) = v49;
  v8[15] = v48;
  *(v8 + 128) = v47;
  *(v8 + 129) = v26;
  v35 = v50;
  v8[12] = v59;
  v8[13] = v35;
  v53 = v8[4];
  v36 = swift_allocObject();
  *(v36 + 16) = v8;
  *(v36 + 24) = v34;
  *&v65 = sub_1C6E57BE0;
  *(&v65 + 1) = v36;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v64 = sub_1C6DEDCF0;
  *(&v64 + 1) = &block_descriptor_88;
  v37 = _Block_copy(&aBlock);
  swift_retain_n();

  sub_1C6EE48A0();
  *&v62[0] = v31;
  sub_1C6DEC634(&qword_1EDEF6858, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6DEC67C(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
  v38 = v56;
  v39 = v57;
  sub_1C6EE50C0();
  MEMORY[0x1CCA58340](0, v21, v38, v37);
  _Block_release(v37);

  sub_1C6DEDC90(v60, &qword_1EC1F7F38, &unk_1C6EF7A00);
  (*(v58 + 8))(v38, v39);
  (*(v54 + 8))(v21, v55);

  return v8;
}

uint64_t sub_1C6E56610(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C6E57D58;

  return sub_1C6E4E7A4(a1, a2, v8);
}

uint64_t sub_1C6E566D4@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v2[2];
  return sub_1C6E57944(v2, &v5);
}

void sub_1C6E56738()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
  sub_1C6E4EF70(v0[4], v0[5]);
}

uint64_t sub_1C6E56748()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C6E4F0D8();
}

uint64_t sub_1C6E56754()
{
  v1 = *(*(sub_1C6EE42C0() - 8) + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_1C6E4FC8C(v2, v3);
}

uint64_t sub_1C6E567B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C6E567E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1C6E509F4(a1, a2);
}

uint64_t sub_1C6E56804(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for DiagnosticInfo()
{
  result = qword_1EDEF86C8;
  if (!qword_1EDEF86C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ComputeService.performAsync(qos:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 472);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1C6E56AC4;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_1C6E56AC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of ComputeService.performAsync(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 480);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C6E57D5C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ComputeService.perform(_:)()
{
  return (*(*v0 + 488))();
}

{
  return (*(*v0 + 496))();
}

uint64_t dispatch thunk of ComputeService.refresh(install:)(uint64_t a1)
{
  v4 = *(*v1 + 528);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C6E57D60;

  return v8(a1);
}

uint64_t dispatch thunk of ComputeService.refreshPackages()()
{
  v2 = *(*v0 + 536);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6E57D64;

  return v6();
}

uint64_t dispatch thunk of ComputeService.startup()()
{
  v2 = *(*v0 + 544);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6E57148;

  return v6();
}

uint64_t sub_1C6E57148()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6E57268()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C6E572B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6E572F8(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6E57364(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E573DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1C6E57518(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1C6E576F4()
{
  sub_1C6DEFDAC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_1C6E57760(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C6E54D88(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_1C6E57788(uint64_t a1)
{
  v2 = type metadata accessor for RequestData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C6E577E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *&result = sub_1C6E540B0(a1).n128_u64[0];
  return result;
}

uint64_t sub_1C6E57874()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C6E52EFC();
}

uint64_t sub_1C6E57888()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C6E5247C();
}

uint64_t sub_1C6E57894(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C6E578D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E57A30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C6E57AD8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1C6E522C4(a1, v1[4], v1[5], v1[6], v1[7]);
}

uint64_t sub_1C6E57AFC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C6E57B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C6E57B78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E57BE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1C6E2E960();
  v4 = *(v1 + 16);
  *(v1 + 16) = v3;
}

uint64_t sub_1C6E57C20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph14ComputeServiceC6ErrorsOyx_G(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1C6E57C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6E57CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C6E57D18(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t ComputeServiceDataSettings.init(requestDataPolicy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

unint64_t static ComputeServiceData.uninitalized.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1C6E0C6F0(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  strcpy((a1 + 8), "uninitialized");
  *(a1 + 22) = -4864;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = result;
  return result;
}

uint64_t ComputeServiceData.init(configurationIdentifier:configurationPackageIDs:packageVersions:cachedPackageIDs:resolvedGlobalGraph:requestsByWorkName:humanReadableIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a5;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 48) = a4;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  return result;
}

uint64_t TimedData.init(startTimestamp:endTimestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C6EE42C0();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for TimedData(0) + 20);

  return v9(v7, a2, v6);
}

uint64_t RequestData.init(timedData:successful:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C6E58804(a1, a3, type metadata accessor for TimedData);
  result = type metadata accessor for RequestData(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1C6E57F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v8 = type metadata accessor for RequestData(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = v4[2];
  v14 = v4[3];
  v32 = v4[1];
  v33 = v14;
  v16 = v4[5];
  v31 = v4[4];
  v34 = v4[6];
  v35 = v13;
  HIDWORD(v30) = *(v4 + 56);
  if (v4[8])
  {
    v17 = v4[8];
  }

  else
  {
    v17 = sub_1C6E0C6F0(MEMORY[0x1E69E7CC0]);
  }

  v18 = *(v17 + 16);

  if (v18 && (v19 = sub_1C6DEC784(v36, a3), (v20 & 1) != 0))
  {
    v21 = *(*(v17 + 56) + 8 * v19);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6E5879C(a1, v12, type metadata accessor for RequestData);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1C6ED9880(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1C6ED9880(v22 > 1, v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  sub_1C6E58804(v12, v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, type metadata accessor for RequestData);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v17;
  sub_1C6E092E0(v21, v36, a3, isUniquelyReferenced_nonNull_native);

  v25 = v37;
  v26 = v34;
  v27 = v32;
  v28 = v33;
  *a4 = v35;
  *(a4 + 8) = v27;
  *(a4 + 16) = v15;
  *(a4 + 24) = v28;
  *(a4 + 32) = v31;
  *(a4 + 40) = v16;
  *(a4 + 48) = v26;
  *(a4 + 56) = BYTE4(v30);
  *(a4 + 64) = v25;
}

uint64_t TimedData.startTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE42C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimedData.endTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimedData(0) + 20);
  v4 = sub_1C6EE42C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RequestData.successful.setter(char a1)
{
  result = type metadata accessor for RequestData(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t ComputeServiceData.configurationIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ComputeServiceData.humanReadableIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1C6E58460(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E58498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ComputeServiceDataSettings(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ComputeServiceDataSettings(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceDataSettings.RequestDataPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ComputeServiceDataSettings.RequestDataPolicy(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6E585A8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E585C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6E58620()
{
  result = sub_1C6EE42C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E586B4()
{
  result = type metadata accessor for TimedData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C6E5874C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E5879C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E58804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::String_optional __swiftcall StaticRetentionTokenVendor.retentionToken(for:)(Swift::String a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1C6DEC784(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1C6E588E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6E58928(uint64_t result, int a2, int a3)
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

void sub_1C6E589C0()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E58ADC(319, qword_1EDEF8B60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6E58ADC(319, qword_1EDEF8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E58ADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C6E58B88()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E58ADC(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6E58ADC(319, qword_1EDEF8EF8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6E58ADC(319, qword_1EDEF8CD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C6E58D34()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E58DFC()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E58EDC()
{
  sub_1C6E59038();
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6E58ADC(319, qword_1EDEF8C10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6E58ADC(319, &qword_1EDEF71C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C6E58ADC(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C6E59038()
{
  if (!qword_1EDEF6840)
  {
    v0 = sub_1C6EE49E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEF6840);
    }
  }
}

uint64_t sub_1C6E59138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 17))
  {
    return (*a1 + 1020);
  }

  v3 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6E5918C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 16) = 0;
    *result = a2 - 1020;
    *(result + 8) = 0;
    if (a3 >= 0x3FC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1C6E591EC(uint64_t result, char a2)
{
  *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 16) = (a2 & 4) != 0;
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C6E593B0()
{
  sub_1C6E6F2B0(319, &qword_1EDEF67A0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E59548()
{
  sub_1C6E58ADC(319, &qword_1EDEF6800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E59644()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E58ADC(319, qword_1EDEF75C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6E59708(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E59764(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E597C0(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_1C6E00D18(v7, v6);
            sub_1C6E00D18(v9, v8);
            v22 = sub_1C6EE3F90();
            if (v22)
            {
              v23 = sub_1C6EE3FC0();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_1C6EE3FB0();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_1C6E00D18(v7, v6);
          sub_1C6E00D18(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_1C6E00D18(v7, v6);
            sub_1C6E00D18(v9, v8);
            v27 = sub_1C6EE3F90();
            if (v27)
            {
              v28 = sub_1C6EE3FC0();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_1C6EE3FB0();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_1C6E6B0F4(v24, v25, v26, v34);
            sub_1C6DF1134(v9, v8);
            sub_1C6DF1134(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_1C6E00D18(v7, v6);
          sub_1C6E00D18(v9, v8);
        }

        sub_1C6E6B0F4(v34, v9, v8, &v33);
        sub_1C6DF1134(v9, v8);
        sub_1C6DF1134(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6E59BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C6E59C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v69 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8310, &unk_1C6EF53A0);
  v12 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v87 = &v69 - v13;
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v75 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v76 = (&v69 - v20);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8320, &qword_1C6EEC748);
  v21 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v23 = &v69 - v22;
  v85 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  v24 = *(*(v85 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v85);
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v69 - v28;
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
LABEL_60:
    v64 = 0;
    return v64 & 1;
  }

  if (!v29 || a1 == a2)
  {
    v64 = 1;
    return v64 & 1;
  }

  v77 = v23;
  v78 = v4;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = a1 + v30;
  v73 = v14;
  v74 = (v15 + 48);
  v32 = a2 + v30;
  v71 = *(v26 + 72);
  v72 = (v5 + 48);
  v33 = v27;
  v69 = v11;
  v84 = v27;
  while (1)
  {
    v34 = v86;
    result = sub_1C6E6EB04(v31, v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
    if (!v29)
    {
      break;
    }

    v82 = v32;
    sub_1C6E6EB04(v32, v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
    v36 = *(v85 + 20);
    v37 = *(v81 + 48);
    sub_1C6E6EBC0(v34 + v36, v23, &qword_1EC1F8318, &qword_1C6EEC740);
    sub_1C6E6EBC0(v33 + v36, &v23[v37], &qword_1EC1F8318, &qword_1C6EEC740);
    v38 = v73;
    v39 = *v74;
    v40 = (*v74)(v23, 1, v73);
    v83 = v31;
    if (v40 == 1)
    {
      v41 = v39(&v23[v37], 1, v38);
      v33 = v84;
      if (v41 != 1)
      {
        goto LABEL_54;
      }

      sub_1C6E6EC28(v23, &qword_1EC1F8318, &qword_1C6EEC740);
      v42 = v72;
      v43 = v86;
    }

    else
    {
      v70 = v29;
      v44 = v76;
      sub_1C6E6EBC0(v23, v76, &qword_1EC1F8318, &qword_1C6EEC740);
      if (v39(&v23[v37], 1, v38) == 1)
      {
        sub_1C6E6B094(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        v33 = v84;
LABEL_54:
        v66 = &qword_1EC1F8320;
        v67 = &qword_1C6EEC748;
        v68 = v23;
LABEL_55:
        sub_1C6E6EC28(v68, v66, v67);
        goto LABEL_58;
      }

      v45 = v75;
      sub_1C6E6B02C(&v23[v37], v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
      v46 = v44;
      v33 = v84;
      if ((*v44 != *v45 || v44[1] != v45[1]) && (sub_1C6EE54B0() & 1) == 0 || (v44[2] != v45[2] || v44[3] != v45[3]) && (sub_1C6EE54B0() & 1) == 0 || (v44[4] != v45[4] || v44[5] != v45[5]) && (sub_1C6EE54B0() & 1) == 0)
      {
        sub_1C6E6B094(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        sub_1C6E6B094(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        v66 = &qword_1EC1F8318;
        v67 = &qword_1C6EEC740;
        v68 = v77;
        goto LABEL_55;
      }

      v47 = v45;
      v48 = *(v38 + 28);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v49 = sub_1C6EE4A50();
      sub_1C6E6B094(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
      sub_1C6E6B094(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
      sub_1C6E6EC28(v77, &qword_1EC1F8318, &qword_1C6EEC740);
      v11 = v69;
      v29 = v70;
      v42 = v72;
      v43 = v86;
      if ((v49 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v50 = v87;
    v51 = *(v85 + 24);
    v52 = v79;
    v53 = *(v80 + 48);
    sub_1C6E6EBC0(v43 + v51, v87, &qword_1EC1F8308, &unk_1C6EEC730);
    sub_1C6E6EBC0(v33 + v51, v50 + v53, &qword_1EC1F8308, &unk_1C6EEC730);
    v54 = *v42;
    v55 = v50;
    v56 = v78;
    if ((*v42)(v55, 1, v78) == 1)
    {
      if (v54(v87 + v53, 1, v56) != 1)
      {
        goto LABEL_57;
      }

      sub_1C6E6EC28(v87, &qword_1EC1F8308, &unk_1C6EEC730);
      v33 = v84;
      v43 = v86;
    }

    else
    {
      v57 = v87;
      sub_1C6E6EBC0(v87, v11, &qword_1EC1F8308, &unk_1C6EEC730);
      if (v54(v57 + v53, 1, v56) == 1)
      {
        sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
LABEL_57:
        sub_1C6E6EC28(v87, &qword_1EC1F8310, &unk_1C6EF53A0);
        v33 = v84;
LABEL_58:
        v43 = v86;
        goto LABEL_59;
      }

      sub_1C6E6B02C(v87 + v53, v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      v58 = *v11;
      v59 = *v52;
      if (v11[8])
      {
        v58 = *v11 != 0;
      }

      if (*(v52 + 8) == 1)
      {
        v33 = v84;
        if (v59)
        {
          v43 = v86;
          if (v58 != 1)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v43 = v86;
          if (v58)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v33 = v84;
        v43 = v86;
        if (v58 != v59)
        {
          goto LABEL_50;
        }
      }

      v60 = *(v11 + 2);
      v61 = *(v52 + 16);
      if (*(v52 + 24) == 1)
      {
        if (v61 > 1)
        {
          if (v61 == 2)
          {
            if (v60 != 2)
            {
              goto LABEL_50;
            }
          }

          else if (v60 != 3)
          {
LABEL_50:
            sub_1C6E6B094(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
            sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
            sub_1C6E6EC28(v87, &qword_1EC1F8308, &unk_1C6EEC730);
LABEL_59:
            sub_1C6E6B094(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
            sub_1C6E6B094(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
            goto LABEL_60;
          }
        }

        else if (v61)
        {
          if (v60 != 1)
          {
            goto LABEL_50;
          }
        }

        else if (v60)
        {
          goto LABEL_50;
        }
      }

      else if (v60 != v61)
      {
        goto LABEL_50;
      }

      v62 = *(v78 + 24);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v63 = sub_1C6EE4A50();
      sub_1C6E6B094(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      sub_1C6E6EC28(v87, &qword_1EC1F8308, &unk_1C6EEC730);
      if ((v63 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v64 = sub_1C6EE4A50();
    sub_1C6E6B094(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
    sub_1C6E6B094(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
    if (v64)
    {
      v32 = v82 + v71;
      v31 = v83 + v71;
      v65 = v29-- == 1;
      v23 = v77;
      if (!v65)
      {
        continue;
      }
    }

    return v64 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5A718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v29 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_40:
    v28 = 0;
    return v28 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v28 = 1;
    return v28 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v30 = a1 + v14;
  v15 = a2 + v14;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_1C6E6EB04(v30 + v16 * v13, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
    if (v13 == v12)
    {
      break;
    }

    sub_1C6E6EB04(v15 + v16 * v13, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
    v18 = *v11 == *v8 && v11[1] == *(v8 + 1);
    if (!v18 && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_39;
    }

    v19 = v11[2];
    v20 = *(v8 + 2);
    if (v8[24] == 1)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          if (v19 != 1)
          {
            goto LABEL_39;
          }
        }

        else if (v19 != 2)
        {
          goto LABEL_39;
        }
      }

      else if (v19)
      {
        goto LABEL_39;
      }
    }

    else if (v19 != v20)
    {
      goto LABEL_39;
    }

    v21 = v11[4];
    v22 = *(v8 + 4);
    v23 = *(v21 + 16);
    if (v23 != *(v22 + 16))
    {
      goto LABEL_39;
    }

    if (v23 && v21 != v22)
    {
      v24 = (v21 + 40);
      v25 = (v22 + 40);
      while (1)
      {
        v26 = *(v24 - 1) == *(v25 - 1) && *v24 == *v25;
        if (!v26 && (sub_1C6EE54B0() & 1) == 0)
        {
          break;
        }

        v24 += 2;
        v25 += 2;
        if (!--v23)
        {
          goto LABEL_32;
        }
      }

LABEL_39:
      sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
      goto LABEL_40;
    }

LABEL_32:
    if ((v11[5] != *(v8 + 5) || v11[6] != *(v8 + 6)) && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_39;
    }

    v27 = *(v4 + 32);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v28 = sub_1C6EE4A50();
    sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
    if ((v28 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5AAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C6E6EB04(v14, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      sub_1C6E6EB04(v15, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v20 = sub_1C6EE4A50();
      sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1C6E5AD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v43 - v11);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8320, &qword_1C6EEC748);
  v13 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v43 - v14;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v19;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_36:
    v39 = 0;
    return v39 & 1;
  }

  if (v22 && a1 != a2)
  {
    v51 = v20;
    v46 = &v43 - v19;
    v47 = v4;
    v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v44 = v15;
    v45 = (v5 + 48);
    v43 = *(v18 + 72);
    while (1)
    {
      sub_1C6E6EB04(v24, v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
      v49 = v25;
      v50 = v24;
      v26 = v51;
      sub_1C6E6EB04(v25, v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
      v27 = *v21 == *v26 && *(v21 + 1) == *(v26 + 8);
      if (!v27 && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      v28 = v21;
      v29 = v8;
      v30 = *(v15 + 28);
      v31 = *(v48 + 48);
      v32 = v52;
      sub_1C6E6EBC0(&v28[v30], v52, &qword_1EC1F8318, &qword_1C6EEC740);
      sub_1C6E6EBC0(v26 + v30, v32 + v31, &qword_1EC1F8318, &qword_1C6EEC740);
      v33 = *v45;
      v34 = v47;
      if ((*v45)(v32, 1, v47) == 1)
      {
        v27 = v33(v32 + v31, 1, v34) == 1;
        v8 = v29;
        v35 = v32;
        v26 = v51;
        v21 = v46;
        if (!v27)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1C6E6EBC0(v32, v12, &qword_1EC1F8318, &qword_1C6EEC740);
        if (v33(v32 + v31, 1, v34) == 1)
        {
          sub_1C6E6B094(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
          v35 = v32;
          v26 = v51;
          v21 = v46;
LABEL_33:
          v40 = &qword_1EC1F8320;
          v41 = &qword_1C6EEC748;
          goto LABEL_34;
        }

        v8 = v29;
        sub_1C6E6B02C(v32 + v31, v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        if ((*v12 != *v29 || v12[1] != *(v29 + 1)) && (sub_1C6EE54B0() & 1) == 0 || (v12[2] != *(v29 + 2) || v12[3] != *(v29 + 3)) && (sub_1C6EE54B0() & 1) == 0 || (v12[4] != *(v29 + 4) || v12[5] != *(v29 + 5)) && (sub_1C6EE54B0() & 1) == 0)
        {
          sub_1C6E6B094(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
          v26 = v51;
          v21 = v46;
LABEL_31:
          sub_1C6E6B094(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
          v40 = &qword_1EC1F8318;
          v41 = &qword_1C6EEC740;
          v35 = v52;
LABEL_34:
          sub_1C6E6EC28(v35, v40, v41);
          break;
        }

        v36 = *(v47 + 28);
        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v37 = sub_1C6EE4A50();
        sub_1C6E6B094(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        v26 = v51;
        v21 = v46;
        if ((v37 & 1) == 0)
        {
          goto LABEL_31;
        }

        sub_1C6E6B094(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        v35 = v52;
      }

      sub_1C6E6EC28(v35, &qword_1EC1F8318, &qword_1C6EEC740);
      v15 = v44;
      if (*(v21 + 4) != *(v26 + 16))
      {
        break;
      }

      v38 = *(v44 + 24);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v39 = sub_1C6EE4A50();
      sub_1C6E6B094(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
      sub_1C6E6B094(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
      if (v39)
      {
        v25 = v49 + v43;
        v24 = v50 + v43;
        if (--v22)
        {
          continue;
        }
      }

      return v39 & 1;
    }

    sub_1C6E6B094(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
    sub_1C6E6B094(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
    goto LABEL_36;
  }

  v39 = 1;
  return v39 & 1;
}

uint64_t sub_1C6E5B3BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C6E6EB04(v14, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
      sub_1C6E6EB04(v15, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
      if (*v11 != *v8 || *(v11 + 1) != *(v8 + 1) || *(v11 + 2) != *(v8 + 2))
      {
        break;
      }

      v17 = *(v4 + 28);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v18 = sub_1C6EE4A50();
      sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
    goto LABEL_13;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1C6E5B684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C6E6EB04(v14, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
      sub_1C6E6EB04(v15, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
      v17 = *v11;
      v18 = *v8;
      if (*(v8 + 8) == 1)
      {
        if (v18 > 3)
        {
          if (v18 > 5)
          {
            if (v18 == 6)
            {
              if (v17 != 6)
              {
                break;
              }
            }

            else if (v17 != 7)
            {
              break;
            }
          }

          else if (v18 == 4)
          {
            if (v17 != 4)
            {
              break;
            }
          }

          else if (v17 != 5)
          {
            break;
          }
        }

        else if (v18 > 1)
        {
          if (v18 == 2)
          {
            if (v17 != 2)
            {
              break;
            }
          }

          else if (v17 != 3)
          {
            break;
          }
        }

        else if (v18)
        {
          if (v17 != 1)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      if (v11[3] != v8[3] || v11[4] != v8[4])
      {
        break;
      }

      v19 = *(v4 + 28);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v20 = sub_1C6EE4A50();
      sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C6E5B990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v21 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_1C6E6EB04(v14, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6EB04(v15, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        v17 = *v11 == *v8 && v11[1] == v8[1];
        if (!v17 && (sub_1C6EE54B0() & 1) == 0)
        {
          break;
        }

        v18 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v19 = sub_1C6EE4A50();
        sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        if (v19)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v19 & 1;
      }

      sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1C6E5BC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1C6E6EB04(v21, v18, a4);
        sub_1C6E6EB04(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_1C6E6B094(v15, a6);
        sub_1C6E6B094(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1C6E5BDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v48 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v14 = &v48 - v13;
  v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
  v15 = *(*(v51 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v51);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v48 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_28:
    v45 = 0;
    return v45 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v50 = v11;
  v54 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v49 = *(v19 + 72);
  v27 = v51;
  while (1)
  {
    result = sub_1C6E6EB04(v24, v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
    if (!v22)
    {
      break;
    }

    v56 = v22;
    v57 = v24;
    v55 = v25;
    sub_1C6E6EB04(v25, v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
    v29 = *(v27 + 28);
    v30 = *(v53 + 48);
    sub_1C6E6EBC0(v21 + v29, v14, &qword_1EC1F7EF0, &unk_1C6EE9280);
    sub_1C6E6EBC0(v18 + v29, &v14[v30], &qword_1EC1F7EF0, &unk_1C6EE9280);
    v31 = *v26;
    v32 = v14;
    v33 = v14;
    v34 = v54;
    if ((*v26)(v32, 1, v54) == 1)
    {
      if (v31((v33 + v30), 1, v34) != 1)
      {
        goto LABEL_25;
      }

      sub_1C6E6EC28(v33, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = v33;
    }

    else
    {
      v35 = v50;
      sub_1C6E6EBC0(v33, v50, &qword_1EC1F7EF0, &unk_1C6EE9280);
      if (v31((v33 + v30), 1, v34) == 1)
      {
        sub_1C6E6B094(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_25:
        v46 = &qword_1EC1F8220;
        v47 = &qword_1C6EEC6E0;
        goto LABEL_26;
      }

      v36 = v33 + v30;
      v37 = v52;
      sub_1C6E6B02C(v36, v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if ((*v35 != *v37 || v35[1] != v37[1]) && (sub_1C6EE54B0() & 1) == 0)
      {
        sub_1C6E6B094(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6B094(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        v46 = &qword_1EC1F7EF0;
        v47 = &unk_1C6EE9280;
LABEL_26:
        sub_1C6E6EC28(v33, v46, v47);
LABEL_27:
        sub_1C6E6B094(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
        sub_1C6E6B094(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
        goto LABEL_28;
      }

      v38 = *(v54 + 20);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v39 = v50;
      v40 = v26;
      v41 = v52;
      v42 = sub_1C6EE4A50();
      v43 = v41;
      v26 = v40;
      v14 = v33;
      sub_1C6E6B094(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E6B094(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E6EC28(v33, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v27 = v51;
      if ((v42 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((*v21 != *v18 || v21[1] != v18[1]) && (sub_1C6EE54B0() & 1) == 0 || (v21[2] != v18[2] || v21[3] != v18[3]) && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_27;
    }

    v44 = *(v27 + 24);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v45 = sub_1C6EE4A50();
    sub_1C6E6B094(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
    sub_1C6E6B094(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
    if (v45)
    {
      v22 = v56 - 1;
      v25 = v55 + v49;
      v24 = v57 + v49;
      if (v56 != 1)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5C428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v52 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8248, &qword_1C6EEC708);
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v14 = &v52 - v13;
  v61 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
  v15 = *(*(v61 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v61);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_25:
    v49 = 0;
    return v49 & 1;
  }

  if (!v21 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v60 = (&v52 - v20);
  v54 = v11;
  v55 = v18;
  v58 = v4;
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (v5 + 48);
  v53 = *(v19 + 72);
  v26 = &unk_1C6EEA4C0;
  while (1)
  {
    v27 = v26;
    v28 = v14;
    v29 = v60;
    result = sub_1C6E6EB04(v23, v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
    if (!v21)
    {
      break;
    }

    v59 = v21;
    sub_1C6E6EB04(v24, v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
    v31 = *(v61 + 24);
    v32 = *(v57 + 48);
    v33 = v29 + v31;
    v14 = v28;
    v34 = v28;
    v26 = v27;
    sub_1C6E6EBC0(v33, v34, &qword_1EC1F8000, v27);
    sub_1C6E6EBC0(v18 + v31, &v14[v32], &qword_1EC1F8000, v27);
    v35 = *v25;
    v36 = v58;
    if ((*v25)(v14, 1, v58) == 1)
    {
      v37 = v35(&v14[v32], 1, v36);
      v38 = v60;
      if (v37 != 1)
      {
        goto LABEL_22;
      }

      sub_1C6E6EC28(v14, &qword_1EC1F8000, v27);
      v18 = v55;
    }

    else
    {
      v39 = v54;
      sub_1C6E6EBC0(v14, v54, &qword_1EC1F8000, v27);
      if (v35(&v14[v32], 1, v36) == 1)
      {
        sub_1C6E6B094(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        v38 = v60;
LABEL_22:
        v50 = &qword_1EC1F8248;
        v51 = &qword_1C6EEC708;
        goto LABEL_23;
      }

      v40 = &v14[v32];
      v41 = v56;
      sub_1C6E6B02C(v40, v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v38 = v60;
      if ((*v39 != *v41 || v39[1] != v41[1]) && (sub_1C6EE54B0() & 1) == 0)
      {
        sub_1C6E6B094(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        sub_1C6E6B094(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        v50 = &qword_1EC1F8000;
        v51 = &unk_1C6EEA4C0;
LABEL_23:
        sub_1C6E6EC28(v14, v50, v51);
        v18 = v55;
LABEL_24:
        sub_1C6E6B094(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
        sub_1C6E6B094(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
        goto LABEL_25;
      }

      v42 = *(v58 + 20);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v43 = v54;
      v44 = v25;
      v45 = v56;
      v46 = sub_1C6EE4A50();
      v47 = v45;
      v25 = v44;
      sub_1C6E6B094(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      sub_1C6E6B094(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v26 = v27;
      sub_1C6E6EC28(v14, &qword_1EC1F8000, v27);
      v18 = v55;
      if ((v46 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if ((*v38 != *v18 || v38[1] != v18[1]) && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_24;
    }

    v48 = *(v61 + 20);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v49 = sub_1C6EE4A50();
    sub_1C6E6B094(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
    sub_1C6E6B094(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
    if (v49)
    {
      v21 = v59 - 1;
      v24 += v53;
      v23 += v53;
      if (v59 != 1)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5CB3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1C6E6EB04(v21, v18, a4);
        sub_1C6E6EB04(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_1C6E6B094(v15, a6);
        sub_1C6E6B094(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1C6E5CCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = (&v53 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v53 - v22;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_35:
    v47 = 0;
    return v47 & 1;
  }

  if (!v24 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v53 = v16;
  v54 = v8;
  v25 = 0;
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v58 = a2 + v26;
  v56 = v20;
  v57 = (v5 + 48);
  v59 = *(v21 + 72);
  v60 = a1 + v26;
  v62 = v24;
  v55 = &v53 - v22;
  while (1)
  {
    v27 = v59 * v25;
    result = sub_1C6E6EB04(v60 + v59 * v25, v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    if (v25 == v62)
    {
      goto LABEL_38;
    }

    result = sub_1C6E6EB04(v58 + v27, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    v29 = *v23;
    v30 = *v20;
    v31 = *(*v23 + 16);
    if (v31 != *(*v20 + 16))
    {
      goto LABEL_34;
    }

    if (v31 && v29 != v30)
    {
      break;
    }

LABEL_12:
    v33 = *(v16 + 24);
    v34 = *(v12 + 48);
    sub_1C6E6EBC0(&v23[v33], v15, &qword_1EC1F7D68, &unk_1C6EE89B0);
    sub_1C6E6EBC0(&v20[v33], &v15[v34], &qword_1EC1F7D68, &unk_1C6EE89B0);
    v35 = *v57;
    if ((*v57)(v15, 1, v4) == 1)
    {
      v36 = v35(&v15[v34], 1, v4);
      v23 = v55;
      v20 = v56;
      if (v36 != 1)
      {
        goto LABEL_31;
      }

      sub_1C6E6EC28(v15, &qword_1EC1F7D68, &unk_1C6EE89B0);
    }

    else
    {
      v37 = v12;
      v38 = v4;
      v39 = v61;
      sub_1C6E6EBC0(v15, v61, &qword_1EC1F7D68, &unk_1C6EE89B0);
      v40 = v38;
      if (v35(&v15[v34], 1, v38) == 1)
      {
        sub_1C6E6B094(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v23 = v55;
        v20 = v56;
LABEL_31:
        v51 = &qword_1EC1F7D70;
        v52 = &unk_1C6EF2EA0;
        goto LABEL_33;
      }

      v41 = v54;
      sub_1C6E6B02C(&v15[v34], v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v42 = sub_1C6E227C4(*v39, *v41);
      v23 = v55;
      v20 = v56;
      if ((v42 & 1) == 0)
      {
        sub_1C6E6B094(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E6B094(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v51 = &qword_1EC1F7D68;
        v52 = &unk_1C6EE89B0;
LABEL_33:
        sub_1C6E6EC28(v15, v51, v52);
LABEL_34:
        sub_1C6E6B094(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
        sub_1C6E6B094(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
        goto LABEL_35;
      }

      v43 = *(v40 + 20);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v44 = sub_1C6EE4A50();
      sub_1C6E6B094(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v45 = v39;
      v4 = v40;
      sub_1C6E6B094(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E6EC28(v15, &qword_1EC1F7D68, &unk_1C6EE89B0);
      v12 = v37;
      v16 = v53;
      if ((v44 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v46 = *(v16 + 20);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v47 = sub_1C6EE4A50();
    sub_1C6E6B094(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    sub_1C6E6B094(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    if ((v47 & 1) != 0 && ++v25 != v62)
    {
      continue;
    }

    return v47 & 1;
  }

  v48 = (v29 + 40);
  v49 = (v30 + 40);
  while (v31)
  {
    result = *(v48 - 1);
    if (result != *(v49 - 1) || *v48 != *v49)
    {
      result = sub_1C6EE54B0();
      if ((result & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v48 += 2;
    v49 += 2;
    if (!--v31)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C6E5D324(uint64_t a1, uint64_t a2)
{
  v181[3] = *MEMORY[0x1E69E9840];
  v173 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v4 = *(v173 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v165 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v166 = (&v148 - v9);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8330, &unk_1C6EF6170);
  v10 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169);
  v179 = &v148 - v11;
  v161 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v168 = *(v161 - 8);
  v12 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v14 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v154 = &v148 - v17;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8340, &qword_1C6EEC768);
  v18 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v20 = &v148 - v19;
  v170 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v21 = *(v170 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v159 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v163 = &v148 - v26;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8350, &qword_1C6EEC778);
  v27 = *(*(v160 - 8) + 64);
  MEMORY[0x1EEE9AC00](v160);
  v162 = &v148 - v28;
  v174 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v29 = *(v174 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v175 = (&v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v172 = (&v148 - v34);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8360, &qword_1C6EEC788);
  v35 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v37 = &v148 - v36;
  v177 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  v38 = *(*(v177 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v177);
  v178 = &v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v148 - v42;
  v44 = *(a1 + 16);
  if (v44 != *(a2 + 16))
  {
    goto LABEL_105;
  }

  if (!v44 || a1 == a2)
  {
    v139 = 1;
    goto LABEL_106;
  }

  v149 = v14;
  v151 = 0;
  v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v46 = a1 + v45;
  v152 = (v21 + 48);
  v47 = a2 + v45;
  v148 = (v168 + 48);
  v155 = (v4 + 48);
  v153 = *(v41 + 72);
  v150 = v20;
  v158 = v37;
  v176 = &v148 - v42;
  v157 = (v29 + 48);
  while (1)
  {
    v168 = v46;
    sub_1C6E6EB04(v46, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    v167 = v47;
    v48 = v178;
    sub_1C6E6EB04(v47, v178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    v49 = *(v177 + 20);
    v50 = *(v171 + 48);
    sub_1C6E6EBC0(&v43[v49], v37, &qword_1EC1F8358, &qword_1C6EEC780);
    v51 = v48 + v49;
    v52 = v157;
    sub_1C6E6EBC0(v51, &v37[v50], &qword_1EC1F8358, &qword_1C6EEC780);
    v53 = *v52;
    v54 = v174;
    if ((*v52)(v37, 1, v174) == 1)
    {
      v55 = v53(&v37[v50], 1, v54);
      v56 = v176;
      if (v55 != 1)
      {
        goto LABEL_90;
      }

      sub_1C6E6EC28(v37, &qword_1EC1F8358, &qword_1C6EEC780);
    }

    else
    {
      v57 = v172;
      sub_1C6E6EBC0(v37, v172, &qword_1EC1F8358, &qword_1C6EEC780);
      v58 = v53(&v37[v50], 1, v54);
      v59 = v163;
      if (v58 == 1)
      {
        sub_1C6E6B094(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
        v56 = v176;
LABEL_90:
        v141 = &qword_1EC1F8360;
        v142 = &qword_1C6EEC788;
        goto LABEL_102;
      }

      v60 = &v37[v50];
      v61 = v175;
      sub_1C6E6B02C(v60, v175, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      v56 = v176;
      if ((*v57 != *v61 || v57[1] != v61[1]) && (sub_1C6EE54B0() & 1) == 0)
      {
        goto LABEL_101;
      }

      v62 = *(v54 + 24);
      v63 = *(v160 + 48);
      v64 = v162;
      sub_1C6E6EBC0(v57 + v62, v162, &qword_1EC1F8348, &qword_1C6EEC770);
      sub_1C6E6EBC0(v175 + v62, v64 + v63, &qword_1EC1F8348, &qword_1C6EEC770);
      v65 = *v152;
      v66 = v170;
      if ((*v152)(v64, 1, v170) == 1)
      {
        v67 = v65(v64 + v63, 1, v66) == 1;
        v68 = v64;
        v57 = v172;
        v37 = v158;
        if (!v67)
        {
          goto LABEL_94;
        }

        sub_1C6E6EC28(v64, &qword_1EC1F8348, &qword_1C6EEC770);
        v69 = v174;
      }

      else
      {
        sub_1C6E6EBC0(v64, v59, &qword_1EC1F8348, &qword_1C6EEC770);
        if (v65(v64 + v63, 1, v66) == 1)
        {
          sub_1C6E6B094(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
          v68 = v64;
          v57 = v172;
          v37 = v158;
LABEL_94:
          v144 = &qword_1EC1F8350;
          v145 = &qword_1C6EEC778;
          goto LABEL_100;
        }

        v70 = v64 + v63;
        v71 = v159;
        sub_1C6E6B02C(v70, v159, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
        v57 = v172;
        v37 = v158;
        if (*v59 != *v71)
        {
          goto LABEL_99;
        }

        v72 = *(v170 + 24);
        v73 = *(v156 + 48);
        v74 = &v59[v72];
        v75 = v150;
        sub_1C6E6EBC0(v74, v150, &qword_1EC1F8338, &qword_1C6EEC760);
        sub_1C6E6EBC0(&v71[v72], v75 + v73, &qword_1EC1F8338, &qword_1C6EEC760);
        v76 = *v148;
        if ((*v148)(v75, 1, v161) == 1)
        {
          v77 = v76(v75 + v73, 1, v161);
          v57 = v172;
          v71 = v159;
          if (v77 != 1)
          {
            goto LABEL_97;
          }

          sub_1C6E6EC28(v75, &qword_1EC1F8338, &qword_1C6EEC760);
          v56 = v176;
          v59 = v163;
          v78 = v170;
        }

        else
        {
          v79 = v154;
          sub_1C6E6EBC0(v75, v154, &qword_1EC1F8338, &qword_1C6EEC760);
          if (v76(v75 + v73, 1, v161) == 1)
          {
            sub_1C6E6B094(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
            v71 = v159;
            v57 = v172;
LABEL_97:
            sub_1C6E6EC28(v75, &qword_1EC1F8340, &qword_1C6EEC768);
            goto LABEL_98;
          }

          v80 = v75 + v73;
          v81 = v149;
          sub_1C6E6B02C(v80, v149, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          v57 = v172;
          if (*v79 != *v81 || (*(v79 + 1) != *(v149 + 1) || *(v79 + 2) != *(v149 + 2)) && (sub_1C6EE54B0() & 1) == 0)
          {
            sub_1C6E6B094(v149, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
            sub_1C6E6B094(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
            sub_1C6E6EC28(v150, &qword_1EC1F8338, &qword_1C6EEC760);
            v71 = v159;
LABEL_98:
            v56 = v176;
            v59 = v163;
LABEL_99:
            sub_1C6E6B094(v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
            sub_1C6E6B094(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
            v144 = &qword_1EC1F8348;
            v145 = &qword_1C6EEC770;
            v68 = v162;
LABEL_100:
            sub_1C6E6EC28(v68, v144, v145);
LABEL_101:
            sub_1C6E6B094(v175, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
            sub_1C6E6B094(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
            v141 = &qword_1EC1F8358;
            v142 = &qword_1C6EEC780;
LABEL_102:
            v143 = v37;
            goto LABEL_103;
          }

          v82 = v79;
          v83 = *(v161 + 24);
          sub_1C6EE4430();
          sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
          v84 = v149;
          v85 = sub_1C6EE4A50();
          sub_1C6E6B094(v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          v86 = v82;
          v37 = v158;
          sub_1C6E6B094(v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          sub_1C6E6EC28(v150, &qword_1EC1F8338, &qword_1C6EEC760);
          v71 = v159;
          v56 = v176;
          v59 = v163;
          v78 = v170;
          if ((v85 & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        v87 = *(v78 + 20);
        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v88 = sub_1C6EE4A50();
        sub_1C6E6B094(v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
        sub_1C6E6B094(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
        sub_1C6E6EC28(v162, &qword_1EC1F8348, &qword_1C6EEC770);
        v69 = v174;
        if ((v88 & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      v89 = *(v69 + 20);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v90 = v175;
      v91 = sub_1C6EE4A50();
      sub_1C6E6B094(v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      sub_1C6E6B094(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      sub_1C6E6EC28(v37, &qword_1EC1F8358, &qword_1C6EEC780);
      if ((v91 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    v164 = v44;
    v92 = *(v177 + 24);
    v93 = *(v169 + 48);
    v94 = v56;
    v95 = v56 + v92;
    v96 = v179;
    sub_1C6E6EBC0(v95, v179, &qword_1EC1F8328, &unk_1C6EEC750);
    sub_1C6E6EBC0(v178 + v92, v96 + v93, &qword_1EC1F8328, &unk_1C6EEC750);
    v97 = *v155;
    v98 = v96;
    v99 = v173;
    if ((*v155)(v98, 1, v173) != 1)
    {
      break;
    }

    v100 = v97(v179 + v93, 1, v99);
    v56 = v94;
    if (v100 != 1)
    {
      goto LABEL_92;
    }

    sub_1C6E6EC28(v179, &qword_1EC1F8328, &unk_1C6EEC750);
    v101 = v164;
LABEL_84:
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v138 = v178;
    v139 = sub_1C6EE4A50();
    v140 = v138;
    v43 = v176;
    sub_1C6E6B094(v140, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    sub_1C6E6B094(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    if (v139)
    {
      v47 = v167 + v153;
      v46 = v168 + v153;
      v44 = v101 - 1;
      if (v44)
      {
        continue;
      }
    }

    goto LABEL_106;
  }

  v102 = v179;
  v103 = v166;
  sub_1C6E6EBC0(v179, v166, &qword_1EC1F8328, &unk_1C6EEC750);
  if (v97(v102 + v93, 1, v99) != 1)
  {
    v104 = v179 + v93;
    v105 = v165;
    sub_1C6E6B02C(v104, v165, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v106 = *v103;
    v107 = v103[1];
    v108 = *v105;
    v109 = *(v105 + 8);
    v110 = v107 >> 62;
    v111 = v109 >> 62;
    v56 = v94;
    if (v107 >> 62 == 3)
    {
      v112 = 0;
      v101 = v164;
      if (!v106 && v107 == 0xC000000000000000 && v109 >> 62 == 3)
      {
        v112 = 0;
        if (!v108 && v109 == 0xC000000000000000)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      v101 = v164;
      if (v110 <= 1)
      {
        if (v110)
        {
          LODWORD(v112) = HIDWORD(v106) - v106;
          if (__OFSUB__(HIDWORD(v106), v106))
          {
            goto LABEL_109;
          }

          v112 = v112;
          if (v111 <= 1)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v112 = BYTE6(v107);
          if (v111 <= 1)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_43;
      }

      if (v110 != 2)
      {
        v112 = 0;
        if (v111 <= 1)
        {
LABEL_50:
          if (v111)
          {
            LODWORD(v116) = HIDWORD(v108) - v108;
            if (__OFSUB__(HIDWORD(v108), v108))
            {
              goto LABEL_107;
            }

            v116 = v116;
          }

          else
          {
            v116 = BYTE6(v109);
          }

          goto LABEL_56;
        }

LABEL_43:
        if (v111 != 2)
        {
          if (v112)
          {
            goto LABEL_88;
          }

          goto LABEL_83;
        }

        v114 = *(v108 + 16);
        v113 = *(v108 + 24);
        v115 = __OFSUB__(v113, v114);
        v116 = v113 - v114;
        if (v115)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
        }

LABEL_56:
        if (v112 != v116)
        {
          goto LABEL_88;
        }

        if (v112 < 1)
        {
          goto LABEL_83;
        }

        if (v110 > 1)
        {
          if (v110 != 2)
          {
            memset(v181, 0, 14);
            sub_1C6E00D18(v108, v109);
LABEL_75:
            v129 = v151;
            sub_1C6E6B0F4(v181, v108, v109, &v180);
            v151 = v129;
            sub_1C6DF1134(v108, v109);
            if (!v180)
            {
              goto LABEL_88;
            }

LABEL_83:
            v132 = *(v173 + 20);
            sub_1C6EE4430();
            sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
            v133 = v165;
            v134 = v166;
            v135 = sub_1C6EE4A50();
            v136 = v133;
            v56 = v176;
            v137 = v179;
            v37 = v158;
            sub_1C6E6B094(v136, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            sub_1C6E6B094(v134, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            sub_1C6E6EC28(v137, &qword_1EC1F8328, &unk_1C6EEC750);
            if ((v135 & 1) == 0)
            {
              goto LABEL_104;
            }

            goto LABEL_84;
          }

          v119 = *(v106 + 16);
          v164 = *(v106 + 24);
          sub_1C6E00D18(v108, v109);
          v120 = sub_1C6EE3F90();
          if (v120)
          {
            v121 = v120;
            v122 = sub_1C6EE3FC0();
            if (__OFSUB__(v119, v122))
            {
              goto LABEL_112;
            }

            v123 = v119 - v122 + v121;
          }

          else
          {
            v123 = 0;
          }

          if (__OFSUB__(v164, v119))
          {
            goto LABEL_111;
          }

          sub_1C6EE3FB0();
          v130 = v123;
        }

        else
        {
          if (!v110)
          {
            v181[0] = v106;
            LOWORD(v181[1]) = v107;
            BYTE2(v181[1]) = BYTE2(v107);
            BYTE3(v181[1]) = BYTE3(v107);
            BYTE4(v181[1]) = BYTE4(v107);
            BYTE5(v181[1]) = BYTE5(v107);
            sub_1C6E00D18(v108, v109);
            goto LABEL_75;
          }

          v124 = v106;
          if (v106 >> 32 < v106)
          {
            goto LABEL_110;
          }

          sub_1C6E00D18(*v105, *(v105 + 8));
          v125 = sub_1C6EE3F90();
          if (v125)
          {
            v126 = v125;
            v127 = sub_1C6EE3FC0();
            if (__OFSUB__(v124, v127))
            {
              goto LABEL_113;
            }

            v128 = v124 - v127 + v126;
          }

          else
          {
            v128 = 0;
          }

          sub_1C6EE3FB0();
          v130 = v128;
        }

        v131 = v151;
        sub_1C6E6B0F4(v130, v108, v109, v181);
        v151 = v131;
        sub_1C6DF1134(v108, v109);
        if ((v181[0] & 1) == 0)
        {
LABEL_88:
          sub_1C6E6B094(v165, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6E6B094(v166, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v141 = &qword_1EC1F8328;
          v142 = &unk_1C6EEC750;
          v143 = v179;
          goto LABEL_103;
        }

        goto LABEL_83;
      }

      v118 = *(v106 + 16);
      v117 = *(v106 + 24);
      v115 = __OFSUB__(v117, v118);
      v112 = v117 - v118;
      if (v115)
      {
        goto LABEL_108;
      }
    }

    if (v111 <= 1)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  sub_1C6E6B094(v103, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v56 = v94;
LABEL_92:
  v141 = &qword_1EC1F8330;
  v142 = &unk_1C6EF6170;
  v143 = v179;
LABEL_103:
  sub_1C6E6EC28(v143, v141, v142);
LABEL_104:
  sub_1C6E6B094(v178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
  sub_1C6E6B094(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
LABEL_105:
  v139 = 0;
LABEL_106:
  v146 = *MEMORY[0x1E69E9840];
  return v139 & 1;
}