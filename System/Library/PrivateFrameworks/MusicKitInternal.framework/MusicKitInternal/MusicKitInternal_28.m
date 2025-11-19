uint64_t sub_1D50CF150(uint64_t result, int a2, int a3)
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

unint64_t sub_1D50CF1A0()
{
  result = qword_1EC7EFA10;
  if (!qword_1EC7EFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA10);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformComposer()
{
  result = qword_1EDD55A28;
  if (!qword_1EDD55A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50CF268()
{
  sub_1D4F18AF4();
  if (v0 <= 0x3F)
  {
    sub_1D500A1D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_1D50CF334(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  v25 = a1[1];
  v26 = a2[1];
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    v27 = *a1 == *a2 && v25 == v26;
    if (!v27 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v28 = *(type metadata accessor for StorePlatformComposer() + 20);
  v29 = *(v19 + 48);
  sub_1D50D019C(a1 + v28, v24);
  sub_1D50D019C(a2 + v28, &v24[v29]);
  OUTLINED_FUNCTION_10(v24);
  if (v27)
  {
    OUTLINED_FUNCTION_10(&v24[v29]);
    if (v27)
    {
      sub_1D4E50004(v24, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_18;
  }

  sub_1D50D019C(v24, v18);
  OUTLINED_FUNCTION_10(&v24[v29]);
  if (v30)
  {
    (*(v7 + 8))(v18, v4);
LABEL_18:
    sub_1D4E50004(v24, &qword_1EC7E9FB0, &qword_1D562C590);
    return 0;
  }

  (*(v7 + 32))(v12, &v24[v29], v4);
  OUTLINED_FUNCTION_0_81();
  sub_1D50D0320(v32, v33);
  v34 = sub_1D5614D18();
  v35 = *(v7 + 8);
  v35(v12, v4);
  v35(v18, v4);
  sub_1D4E50004(v24, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v34 & 1) != 0;
}

uint64_t sub_1D50CF5F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D50CF6C0(char a1)
{
  if (a1)
  {
    return 7107189;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D50CF6E8(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA30, &qword_1D5633F40);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50D020C();
  sub_1D56163D8();
  v13 = *v4;
  v14 = v4[1];
  sub_1D5616028();
  if (!v2)
  {
    v15 = *(type metadata accessor for StorePlatformComposer() + 20);
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_81();
    sub_1D50D0320(v16, v17);
    sub_1D5616068();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1D50CF878()
{
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_0();
  if (v0[1])
  {
    v15 = *v0;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v16 = type metadata accessor for StorePlatformComposer();
  sub_1D50D019C(v0 + *(v16 + 20), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    return sub_1D56162F8();
  }

  v18 = OUTLINED_FUNCTION_6_2();
  v19(v18);
  sub_1D56162F8();
  OUTLINED_FUNCTION_0_81();
  sub_1D50D0320(v20, v21);
  sub_1D5614CB8();
  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_1D50CFA2C()
{
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_0();
  sub_1D56162D8();
  if (v0[1])
  {
    v15 = *v0;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v16 = type metadata accessor for StorePlatformComposer();
  sub_1D50D019C(v0 + *(v16 + 20), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_6_2();
    v18(v17);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_81();
    sub_1D50D0320(v19, v20);
    sub_1D5614CB8();
    (*(v5 + 8))(v10, v2);
  }

  return sub_1D5616328();
}

uint64_t sub_1D50CFBFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA20, &qword_1D5633F38);
  v11 = OUTLINED_FUNCTION_4(v10);
  v35 = v12;
  v36 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = type metadata accessor for StorePlatformComposer();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v24 = (v23 - v22);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50D020C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v18;
  v26 = v35;
  v38 = 0;
  v27 = v24;
  *v24 = sub_1D5615F38();
  v24[1] = v28;
  sub_1D560C0A8();
  v37 = 1;
  OUTLINED_FUNCTION_0_81();
  sub_1D50D0320(v29, v30);
  v31 = v36;
  sub_1D5615F78();
  (*(v26 + 8))(v17, v31);
  sub_1D4F5A3D0(v9, v27 + *(v33 + 20));
  sub_1D50D0260(v27, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D50D02C4(v27);
}

uint64_t sub_1D50CFEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50CF5F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50CFECC(uint64_t a1)
{
  v2 = sub_1D50D020C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50CFF08(uint64_t a1)
{
  v2 = sub_1D50D020C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50CFF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - v11;
  sub_1D56162D8();
  if (v2[1])
  {
    v13 = *v2;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  sub_1D50D019C(v2 + *(a2 + 20), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D56162F8();
    sub_1D50D0320(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1D5616328();
}

uint64_t sub_1D50D019C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D50D020C()
{
  result = qword_1EC7EFA28;
  if (!qword_1EC7EFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA28);
  }

  return result;
}

uint64_t sub_1D50D0260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformComposer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50D02C4(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformComposer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50D0320(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for StorePlatformComposer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D50D0448()
{
  result = qword_1EC7EFA38;
  if (!qword_1EC7EFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA38);
  }

  return result;
}

unint64_t sub_1D50D04A0()
{
  result = qword_1EC7EFA40;
  if (!qword_1EC7EFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA40);
  }

  return result;
}

unint64_t sub_1D50D04F8()
{
  result = qword_1EC7EFA48;
  if (!qword_1EC7EFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA48);
  }

  return result;
}

uint64_t MusicMoodStationRequest.init(mood:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = &a2[*(type metadata accessor for MusicMoodStationRequest() + 20)];
  result = _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for MusicMoodStationRequest()
{
  result = qword_1EC7EFA58;
  if (!qword_1EC7EFA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicMoodStationRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = v1 + *(type metadata accessor for MusicMoodStationRequest() + 20);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v11 = type metadata accessor for MusicRequestConfiguration();
  v12 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v9, v12 ^ 1u, 1, v11);
  sub_1D4F73F78(v9, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v7, 1, v11) != 1)
    {
      sub_1D4E6C9CC(v7, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v7, a1);
  }

  return sub_1D4E6C9CC(v9, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D50D07A0(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v5);
  return MusicMoodStationRequest.configuration.setter(v5);
}

uint64_t MusicMoodStationRequest.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560CD48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_0_82();
  sub_1D50D2300(v9, v10);
  sub_1D560E6C8();
  sub_1D4F581B8(a1);
  v11 = type metadata accessor for MusicMoodStationRequest();
  return (*(v5 + 40))(v2 + *(v11 + 20), v8, v4);
}

void (*MusicMoodStationRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for MusicRequestConfiguration();
  v3[4] = v6;
  v7 = *(*(v6 - 8) + 64);
  v3[5] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[6] = v8;
  MusicMoodStationRequest.configuration.getter(v8);
  return sub_1D50D0A48;
}

void sub_1D50D0A48(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    sub_1D4F5A490((*a1)[6], v3);
    OUTLINED_FUNCTION_0_82();
    sub_1D50D2300(v10, v11);
    sub_1D560E6C8();
    sub_1D4F581B8(v3);
    v12 = type metadata accessor for MusicMoodStationRequest();
    v13 = OUTLINED_FUNCTION_148_0(v12);
    v14(v13);
    sub_1D4F581B8(v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_82();
    sub_1D50D2300(v15, v16);
    sub_1D560E6C8();
    sub_1D4F581B8(v4);
    v17 = type metadata accessor for MusicMoodStationRequest();
    v18 = OUTLINED_FUNCTION_148_0(v17);
    v19(v18);
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t MusicMoodStationRequest.response()(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicMoodStationRequest() + 20);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D4E6ED20;

  return sub_1D50D0C38(a1);
}

uint64_t sub_1D50D0C38(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA68, &qword_1D5634100);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_1D560D428();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_1D560CD48();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = sub_1D560D348();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  v16 = sub_1D560D388();
  v2[18] = v16;
  v17 = *(v16 - 8);
  v2[19] = v17;
  v18 = *(v17 + 64) + 15;
  v2[20] = swift_task_alloc();
  v19 = sub_1D560EBD8();
  v2[21] = v19;
  v20 = *(v19 - 8);
  v2[22] = v20;
  v21 = *(v20 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D50D0F20, 0, 0);
}

uint64_t sub_1D50D0F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_60();
  *(v18 + 252) = **(v18 + 24);
  v25 = swift_task_alloc();
  *(v18 + 200) = v25;
  *v25 = v18;
  v25[1] = sub_1D50D0FC8;
  v26 = *(v18 + 192);
  v27 = *(v18 + 24);

  return sub_1D50D1948(v26, (v18 + 252), v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D50D0FC8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 200);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 208) = v0;

  if (v0)
  {
    v7 = sub_1D50D1328;
  }

  else
  {
    v7 = sub_1D50D10CC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D50D10CC()
{
  OUTLINED_FUNCTION_72_0();
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 24);
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
  (*(v3 + 104))(v2, *MEMORY[0x1E6974E78], v4);
  sub_1D560D368();
  v9 = *(type metadata accessor for MusicMoodStationRequest() + 20);
  *(v0 + 248) = v9;
  v10 = *(v7 + 16);
  *(v0 + 216) = v10;
  *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v5, v8 + v9, v6);
  sub_1D560D2B8();
  v11 = *(MEMORY[0x1E6974EB0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 232) = v12;
  *v12 = v0;
  v12[1] = sub_1D50D1224;
  v13 = *(v0 + 160);
  v14 = *(v0 + 88);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCE5B0](v15);
}

uint64_t sub_1D50D1224()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 232);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 240) = v0;

  if (v0)
  {
    v7 = sub_1D50D1864;
  }

  else
  {
    v7 = sub_1D50D13D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D50D1328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  v13 = v12[26];
  v15 = v12[23];
  v14 = v12[24];
  v16 = v12[20];
  OUTLINED_FUNCTION_2_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1D50D13D4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 248);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v51 = *(v0 + 88);
  v54 = *(v0 + 64);
  v57 = *(v0 + 240);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = sub_1D560B9C8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1D560B9B8();
  v1(v4, v7 + v3, v5);
  sub_1D560B988();
  v11 = sub_1D5612208();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D56121F8();
  swift_retain_n();
  sub_1D560B968();
  v14 = sub_1D560D418();
  v16 = v15;
  sub_1D50D2194();
  sub_1D560B948();
  if (v57)
  {
    v17 = *(v0 + 176);
    v52 = *(v0 + 168);
    v55 = *(v0 + 192);
    v18 = *(v0 + 152);
    v47 = *(v0 + 144);
    v49 = *(v0 + 160);
    v19 = *(v0 + 80);
    v20 = *(v0 + 88);
    v21 = *(v0 + 72);
    sub_1D4E55E1C(v14, v16);

    (*(v19 + 8))(v20, v21);
    (*(v18 + 8))(v49, v47);
    (*(v17 + 8))(v55, v52);
    v23 = *(v0 + 184);
    v22 = *(v0 + 192);
    v24 = *(v0 + 160);
    OUTLINED_FUNCTION_2_64();
  }

  else
  {
    v38 = *(v0 + 216);
    v39 = *(v0 + 224);
    v37 = *(v0 + 248);
    v53 = *(v0 + 192);
    v56 = *(v0 + 184);
    v48 = *(v0 + 176);
    v50 = *(v0 + 168);
    v44 = *(v0 + 152);
    v45 = *(v0 + 144);
    v46 = *(v0 + 160);
    v58 = *(v0 + 136);
    v34 = *(v0 + 96);
    v35 = *(v0 + 112);
    v43 = *(v0 + 88);
    v40 = *(v0 + 104);
    v41 = *(v0 + 80);
    v42 = *(v0 + 72);
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v29 = *(v0 + 40);
    v28 = *(v0 + 48);
    v30 = *(v0 + 24);
    v36 = *(v0 + 32);

    sub_1D4E55E1C(v14, v16);
    (*(v28 + 16))(v27, v26, v29);
    v38(v35, v30 + v37, v34);
    v31 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v31);
    sub_1D5614408();
    sub_1D50D2300(&qword_1EC7ECE38, MEMORY[0x1E6977180]);
    sub_1D5612368();

    sub_1D4E6C9CC(v36, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v40 + 8))(v35, v34);
    v32 = *(v28 + 8);
    v32(v27, v29);
    v32(v26, v29);
    (*(v41 + 8))(v43, v42);
    (*(v44 + 8))(v46, v45);
    (*(v48 + 8))(v53, v50);
  }

  OUTLINED_FUNCTION_55();

  return v25();
}

uint64_t sub_1D50D1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  v13 = v12[24];
  v14 = v12[21];
  v15 = v12[22];
  (*(v12[19] + 8))(v12[20], v12[18]);
  (*(v15 + 8))(v13, v14);
  v16 = v12[30];
  v18 = v12[23];
  v17 = v12[24];
  v19 = v12[20];
  OUTLINED_FUNCTION_2_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D50D1948(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v19 + 48) = a1;
  *(v19 + 56) = v18;
  v21 = sub_1D560BB98();
  *(v19 + 64) = v21;
  v22 = *(v21 - 8);
  *(v19 + 72) = v22;
  v23 = *(v22 + 64) + 15;
  *(v19 + 80) = swift_task_alloc();
  *(v19 + 88) = swift_task_alloc();
  *(v19 + 96) = swift_task_alloc();
  *(v19 + 116) = *a2;
  *(v19 + 112) = *(type metadata accessor for MusicMoodStationRequest() + 20);
  v24 = *(MEMORY[0x1E6974D00] + 4);
  v25 = swift_task_alloc();
  *(v19 + 104) = v25;
  *v25 = v19;
  v25[1] = sub_1D50D1A78;

  return MEMORY[0x1EEDCE258](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D50D1A78()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v0;
  v6 = v2[13];
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[11];
    v9 = v3[12];
    v11 = v3[10];

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D50D1BD4, 0, 0);
  }
}

uint64_t sub_1D50D1BD4()
{
  v1 = *(v0 + 96);
  sub_1D560BB28();
  sub_1D4EFFE00();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v3 = v30;
  }

  v5 = *(v0 + 116);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  *(v3 + 16) = v4 + 1;
  v11 = *(v9 + 32);
  v9 += 32;
  v10 = v11;
  v12 = (*(v9 + 48) + 32) & ~*(v9 + 48);
  v13 = *(v9 + 40);
  v11(v3 + v12 + v13 * v4, v6, v8);
  sub_1D50F8BEC();
  sub_1D560BB28();

  v14 = *(v3 + 16);
  if (v14 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v3 = v31;
  }

  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 64);
  *(v3 + 16) = v14 + 1;
  v36 = v13;
  v10(v3 + v12 + v14 * v13, v15, v17);
  sub_1D560BB88();
  v18 = *(v3 + 16);
  v19 = v18 + 1;
  v20 = v10;
  if (v18 >= *(v3 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v19 = v18 + 1;
    v3 = v32;
  }

  v21 = *(v0 + 32);
  v22 = *(v0 + 112);
  v33 = *(v0 + 24);
  v34 = *(v0 + 96);
  v35 = *(v0 + 88);
  v23 = *(v0 + 80);
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  v26 = v3 + v12;
  v27 = *(v0 + 48);
  *(v3 + 16) = v19;
  v20(v26 + v18 * v36, v23, v24);
  sub_1D560CD48();
  sub_1D560EB88();

  OUTLINED_FUNCTION_55();

  return v28();
}

uint64_t static MusicMoodStationRequest.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for MusicMoodStationRequest() + 20);

  return _s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0();
}

uint64_t MusicMoodStationRequest.hash(into:)()
{
  MEMORY[0x1DA6EC0D0](*v0);
  v1 = *(type metadata accessor for MusicMoodStationRequest() + 20);
  sub_1D560CD48();
  OUTLINED_FUNCTION_1_73();
  sub_1D50D2300(v2, v3);
  return sub_1D5614CB8();
}

uint64_t MusicMoodStationRequest.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](*v0);
  v1 = *(type metadata accessor for MusicMoodStationRequest() + 20);
  sub_1D560CD48();
  OUTLINED_FUNCTION_1_73();
  sub_1D50D2300(v2, v3);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D50D1FF8(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v6 = *v2;
  Station.Mood.hash(into:)();
  v4 = *(a2 + 20);
  sub_1D560CD48();
  sub_1D50D2300(&qword_1EC7EA848, MEMORY[0x1E6974D20]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D50D2118()
{
  result = sub_1D560CD48();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D50D2194()
{
  result = qword_1EC7EFA70;
  if (!qword_1EC7EFA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFA68, &qword_1D5634100);
    sub_1D50D2218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA70);
  }

  return result;
}

unint64_t sub_1D50D2218()
{
  result = qword_1EDD53280;
  if (!qword_1EDD53280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA58, &unk_1D5634110);
    v1 = MEMORY[0x1E6975B30];
    sub_1D50D2300(&qword_1EDD53370, MEMORY[0x1E6975B30]);
    sub_1D50D2300(&qword_1EDD53378, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53280);
  }

  return result;
}

uint64_t sub_1D50D2300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VideoArtwork.previewFrame.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D56140F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VideoArtwork.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoArtwork() + 20);
  v4 = sub_1D560C0A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoArtwork.fileAssets.getter()
{
  v1 = *(v0 + *(type metadata accessor for VideoArtwork() + 24));
}

void static VideoArtwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D5613FF8())
  {
    v4 = type metadata accessor for VideoArtwork();
    v5 = v4[5];
    if (sub_1D560BFB8())
    {
      v6 = v4[6];
      v7 = *(a1 + v6);
      v8 = *(a2 + v6);
      sub_1D4EFA124();
      if (v9)
      {
        v10 = v4[7];
        v11 = *(a1 + v10);
        v12 = *(a2 + v10);

        sub_1D4F286E0();
      }
    }
  }
}

void VideoArtwork.hash(into:)()
{
  v1 = v0;
  sub_1D56140F8();
  OUTLINED_FUNCTION_2_65();
  sub_1D50D3604(v2, v3);
  sub_1D5614CB8();
  v4 = type metadata accessor for VideoArtwork();
  v5 = v4[5];
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_83();
  sub_1D50D3604(v6, v7);
  sub_1D5614CB8();
  v8 = *(v1 + v4[6]);
  sub_1D4F087C4();
  v9 = *(v1 + v4[7]);

  sub_1D4F31AC0();
}

uint64_t VideoArtwork.hashValue.getter()
{
  sub_1D56162D8();
  v1 = sub_1D56140F8();
  OUTLINED_FUNCTION_2_65();
  sub_1D50D3604(v2, v3);
  sub_1D5614CB8();
  v4 = type metadata accessor for VideoArtwork();
  OUTLINED_FUNCTION_5_57(v4);
  OUTLINED_FUNCTION_0_83();
  sub_1D50D3604(v5, v6);
  sub_1D5614CB8();
  v7 = *(v0 + *(v1 + 24));
  sub_1D4F087C4();
  v8 = *(v0 + *(v1 + 28));
  sub_1D4F31AC0();
  return sub_1D5616328();
}

uint64_t sub_1D50D26E4()
{
  sub_1D56162D8();
  VideoArtwork.hash(into:)();
  return sub_1D5616328();
}

uint64_t VideoArtwork.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA78, &qword_1D5634120);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = type metadata accessor for VideoArtwork();
  v44 = v11;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = objc_opt_self();
  v14 = sub_1D5614BA8();
  v46[0] = 0;
  v15 = [v13 dataWithJSONObject:v14 options:0 error:v46];

  v16 = v46[0];
  if (v15)
  {
    v17 = sub_1D560C198();
    v19 = v18;

    v20 = sub_1D560B9C8();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_1D560B9B8();
    sub_1D50D3604(qword_1EDD57B58, type metadata accessor for VideoArtwork);
    sub_1D560B948();
    v39 = v44;
    sub_1D50D34F0(v44);

    sub_1D4E55E1C(v17, v19);

    __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
    sub_1D50D3480(v9, v39);
  }

  else
  {
    v23 = v16;
    v24 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v25 = sub_1D560C758();
    __swift_project_value_buffer(v25, qword_1EDD76DC8);

    v26 = v24;
    v27 = sub_1D560C738();
    v28 = sub_1D56156C8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 136446466;
      v31 = sub_1D5614BC8();
      v43 = a1;
      v33 = v32;

      v34 = sub_1D4E6835C(v31, v33, v46);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      v45 = v24;
      v35 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      v36 = sub_1D5614DB8();
      v38 = sub_1D4E6835C(v36, v37, v46);

      *(v29 + 14) = v38;
      a1 = v43;
      _os_log_impl(&dword_1D4E3F000, v27, v28, "Failed to initialize VideoArtwork with dictionary: %{public}s. Error = %s.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v30, -1, -1);
      MEMORY[0x1DA6ED200](v29, -1, -1);
    }

    else
    {
    }

    v39 = v44;
  }

  sub_1D50D3480(v39, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
  {
    sub_1D50D34F0(v6);
    v40 = 1;
  }

  else
  {
    sub_1D50D3558(v6, a1);
    v40 = 0;
  }

  result = __swift_storeEnumTagSinglePayload(a1, v40, 1, v12);
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void VideoArtwork.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1D5611C78();
  v5 = OUTLINED_FUNCTION_4(v4);
  v29 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  v15 = OUTLINED_FUNCTION_4(v14);
  v27 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v27 - v19;
  v31 = a1;
  sub_1D4E628D4(a1, v30);
  sub_1D5611238();
  v21 = MEMORY[0x1E6976138];
  sub_1D50D3604(&qword_1EDD53108, MEMORY[0x1E6976138]);
  OUTLINED_FUNCTION_1_74();
  sub_1D50D3604(v22, v21);
  sub_1D5610768();
  if (v2)
  {
    v30[0] = v2;
    v24 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      v25 = v29;
      (*(v29 + 32))(v11, v13, v4);
      sub_1D5615C18();
      swift_allocError();
      v26 = v31;
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v26);
      (*(v25 + 8))(v11, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  else
  {
    sub_1D51AFBEC(v28);
    v23 = (v27 + 8);
    __swift_destroy_boxed_opaque_existential_1(v31);
    (*v23)(v20, v14);
  }
}

uint64_t VideoArtwork.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v11 - v6;
  sub_1D51B0578(v11 - v6);
  v8 = MEMORY[0x1E6976138];
  sub_1D50D3604(&qword_1EDD53108, MEMORY[0x1E6976138]);
  OUTLINED_FUNCTION_1_74();
  sub_1D50D3604(v9, v8);
  sub_1D5610778();
  return (*(v3 + 8))(v7, v0);
}

uint64_t VideoArtwork.description.getter()
{
  OUTLINED_FUNCTION_4_51();
  v13 = v2;
  v14 = v3;
  v12[0] = 0x22203A6C7275;
  v12[1] = 0xE600000000000000;
  v4 = type metadata accessor for VideoArtwork();
  OUTLINED_FUNCTION_5_57(v4);
  OUTLINED_FUNCTION_0_83();
  sub_1D50D3604(v5, v6);
  v7 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v7);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6C7275, 0xE600000000000000);

  v8 = *(v0 + *(v1 + 24));
  if (*(v8 + 16))
  {
    sub_1D5615B68();

    strcpy(v12, ", fileAssets: ");
    HIBYTE(v12[1]) = -18;
    v9 = type metadata accessor for VideoArtwork.FileAsset();
    v10 = MEMORY[0x1DA6EAF70](v8, v9);
    MEMORY[0x1DA6EAC70](v10);

    MEMORY[0x1DA6EAC70](v12[0], v12[1]);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v13;
}

uint64_t VideoArtwork.debugDescription.getter()
{
  OUTLINED_FUNCTION_4_51();
  v14 = v2;
  v3 = type metadata accessor for VideoArtwork();
  OUTLINED_FUNCTION_5_57(v3);
  OUTLINED_FUNCTION_0_83();
  sub_1D50D3604(v4, v5);
  v6 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v6);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x203A6C727520200ALL, 0xE900000000000022);

  v7 = *(v0 + *(v1 + 24));
  if (*(v7 + 16))
  {
    sub_1D5615B68();

    v8 = type metadata accessor for VideoArtwork.FileAsset();
    v9 = MEMORY[0x1DA6EAF70](v7, v8);
    MEMORY[0x1DA6EAC70](v9);

    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D5683EE0);
  }

  sub_1D5615B68();

  sub_1D5613FE8();
  sub_1D4F53278();
  v10 = sub_1D5615968();
  v12 = v11;

  MEMORY[0x1DA6EAC70](v10, v12);

  MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5683F00);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v14;
}

uint64_t sub_1D50D3480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA78, &qword_1D5634120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50D34F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA78, &qword_1D5634120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50D3558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50D3604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicAutoupdatingResponse.LoadingError.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t sub_1D50D3718()
{
  sub_1D56162D8();
  MusicAutoupdatingResponse.LoadingError.hash(into:)();
  return sub_1D5616328();
}

uint64_t static MusicAutoupdatingResponse.Status<>.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v47 = a1;
  v48 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_4(AssociatedTypeWitness);
  v44 = v7;
  v45 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v43 - v10;
  v12 = type metadata accessor for MusicAutoupdatingResponse.Status();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = OUTLINED_FUNCTION_4(TupleTypeMetadata2);
  v26 = v25;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v24);
  v31 = &v43 - v30;
  v32 = *(v29 + 48);
  v46 = v15;
  v33 = *(v15 + 16);
  v33(&v43 - v30, v47, v12);
  v33(&v31[v32], v48, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33(v20, v31, v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_8:
      v37 = 1;
LABEL_11:
      v26 = v46;
      goto LABEL_12;
    }
  }

  else
  {
    v48 = v11;
    v35 = v44;
    v36 = v45;
    v33(v22, v31, v12);
    if (!swift_getEnumCaseMultiPayload())
    {
      v38 = v35;
      v39 = &v31[v32];
      v40 = v48;
      (*(v35 + 32))(v48, v39, v36);
      v37 = sub_1D5614D18();
      v41 = *(v38 + 8);
      v41(v40, v36);
      v41(v22, v36);
      goto LABEL_11;
    }

    (*(v35 + 8))(v22, v36);
  }

LABEL_9:
  v37 = 0;
  v12 = TupleTypeMetadata2;
LABEL_12:
  (*(v26 + 8))(v31, v12);
  return v37 & 1;
}

uint64_t MusicAutoupdatingResponse.Status<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = OUTLINED_FUNCTION_4(AssociatedTypeWitness);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v22 - v13;
  v15 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1DA6EC0D0](2);
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    return MEMORY[0x1DA6EC0D0](v20);
  }

  else
  {
    (*(v9 + 32))(v14, v17, AssociatedTypeWitness);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614CB8();
    return (*(v9 + 8))(v14, AssociatedTypeWitness);
  }
}

uint64_t MusicAutoupdatingResponse.Status<>.hashValue.getter(uint64_t a1)
{
  sub_1D56162D8();
  MusicAutoupdatingResponse.Status<>.hash(into:)(v3, a1);
  return sub_1D5616328();
}

uint64_t sub_1D50D3D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  MusicAutoupdatingResponse.Status<>.hash(into:)(v6, a2);
  return sub_1D5616328();
}

uint64_t sub_1D50D3DBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v13 < 2)
    {
LABEL_20:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return (v9 | v14) + 254;
}

void sub_1D50D3F0C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if (a3 < 0xFE)
  {
    v12 = 0;
  }

  else if (v10 <= 3)
  {
    v15 = ((a3 + ~(-1 << v11) - 253) >> v11) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
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
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFD)
  {
    v13 = a2 - 254;
    if (v10 < 4)
    {
      v14 = (v13 >> v11) + 1;
      if (v9 != -1)
      {
        v17 = v13 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v10 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v10] = v14;
        break;
      case 2:
        *&a1[v10] = v14;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v12)
    {
      case 1:
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v10] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v9] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1D50D40E4(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t Playlist.Entry.performExtendedPlaylistEntryMapping<A>(scope:)()
{
  OUTLINED_FUNCTION_60();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA88, &unk_1D56343E8);
  v1[11] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_127();
  v9 = sub_1D56158D8();
  v1[14] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = OUTLINED_FUNCTION_127();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v1[17] = v13;
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_127();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA90, &qword_1D56343F8);
  v1[19] = v16;
  OUTLINED_FUNCTION_69(v16);
  v1[20] = v17;
  v19 = *(v18 + 64);
  v1[21] = OUTLINED_FUNCTION_127();
  v20 = sub_1D5614828();
  v1[22] = v20;
  OUTLINED_FUNCTION_69(v20);
  v1[23] = v21;
  v23 = *(v22 + 64);
  v1[24] = OUTLINED_FUNCTION_167();
  v1[25] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  v1[26] = OUTLINED_FUNCTION_127();
  v27 = type metadata accessor for Playlist.Entry.InternalItem();
  v1[27] = v27;
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v30, v31, v32);
}

uint64_t sub_1D50D43D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[29];
  v14 = v12[30];
  v36 = v12[28];
  v15 = v12[26];
  v37 = v12[25];
  v16 = v12[23];
  v38 = v12[22];
  v39 = v12[27];
  v40 = v12[21];
  v17 = v12[10];
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.innerItem.getter(v12 + 2);
  v18 = v12[6];
  __swift_project_boxed_opaque_existential_1(v12 + 2, v12[5]);
  sub_1D560EC18();
  sub_1D50D5AB4(v14);
  __swift_destroy_boxed_opaque_existential_1(v12 + 2);
  Playlist.Entry.internalItem.getter();
  sub_1D50D5B10();
  sub_1D560EC88();
  sub_1D50D5AB4(v13);
  Playlist.Entry.internalItem.getter();
  (*(v16 + 16))(v37, v17, v38);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7EFA98, &unk_1D5634408);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1D560CA68();
  v12[31] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D561EAC0;
  *(v23 + 32) = v22;

  sub_1D560CB08();
  v24 = *(MEMORY[0x1E6974C70] + 4);
  v25 = swift_task_alloc();
  v12[32] = v25;
  *v25 = v12;
  v25[1] = sub_1D50D4600;
  v32 = v12[21];
  v33 = v12[19];
  v34 = v12[8];

  return MEMORY[0x1EEDCE158](v34, v33, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_1D50D4600()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  v3 = *(*v1 + 256);
  v9 = *v1;
  *(v2 + 264) = v4;
  *(v2 + 272) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D50D470C()
{
  v1 = v0[33];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[23];
    v4 = v0[12];
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D4F04454();
    v5 = v49;
    OUTLINED_FUNCTION_3_67();
    v44 = v6;
    v46 = v7;
    v42 = (v4 - 8);
    do
    {
      v8 = v0[30];
      v10 = v0[24];
      v9 = v0[25];
      v11 = v0[13];
      v12 = v0[11];
      v46(v11, v1, v12);
      sub_1D560CA48();
      sub_1D560CA38();
      sub_1D560CAD8();

      Playlist.Entry.init(internalItem:existingEntry:)();
      (*v42)(v11, v12);
      v13 = *(v49 + 16);
      if (v13 >= *(v49 + 24) >> 1)
      {
        sub_1D4F04454();
      }

      v14 = v0[24];
      v15 = v0[22];
      *(v49 + 16) = v13 + 1;
      v16 = OUTLINED_FUNCTION_1_75();
      v17(v16);
      v1 += v44;
      --v2;
    }

    while (v2);
    v18 = v0[33];
  }

  else
  {
    v19 = v0[33];

    v5 = MEMORY[0x1E69E7CC0];
  }

  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[16];
  v23 = v0[9];
  sub_1D4ECA15C(v5);
  if (swift_dynamicCast())
  {
    v24 = v0[30];
    v25 = v0[31];
    v27 = v0[28];
    v26 = v0[29];
    v43 = v0[26];
    v45 = v0[25];
    v28 = v0[24];
    v47 = v0[18];
    v29 = v0[16];
    v48 = v0[13];
    v30 = v0[9];
    v31 = v0[7];
    (*(v0[20] + 8))(v0[21], v0[19]);

    OUTLINED_FUNCTION_9_50();
    (*(v32 + 32))(v31, v29, v30);

    OUTLINED_FUNCTION_55();

    return v33();
  }

  else
  {
    v36 = v0[15];
    v35 = v0[16];
    v37 = v0[14];
    v38 = v0[9];
    v39 = OUTLINED_FUNCTION_10_51();
    v40(v39);
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000005ELL, 0x80000001D5683F60);
    v41 = sub_1D5616458();
    MEMORY[0x1DA6EAC70](v41);

    return OUTLINED_FUNCTION_17_13();
  }
}

uint64_t sub_1D50D4AA4()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v14 = v0[18];
  v15 = v0[16];
  v16 = v0[13];

  (*(v9 + 8))(v8, v10);

  OUTLINED_FUNCTION_55();
  v12 = v0[34];

  return v11();
}

uint64_t sub_1D50D4BB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D50D5BD0;

  return Playlist.Entry.performExtendedPlaylistEntryMapping<A>(scope:)();
}

uint64_t MusicItemCollection<>.performExtendedPlaylistEntryMapping<A>(scope:)()
{
  OUTLINED_FUNCTION_60();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA88, &unk_1D56343E8);
  v1[17] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[18] = v6;
  v8 = *(v7 + 64);
  v1[19] = OUTLINED_FUNCTION_127();
  v9 = sub_1D56158D8();
  v1[20] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[21] = v10;
  v12 = *(v11 + 64);
  v1[22] = OUTLINED_FUNCTION_127();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  v1[23] = OUTLINED_FUNCTION_127();
  v16 = type metadata accessor for Playlist.Entry.InternalItem();
  v1[24] = v16;
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  v1[25] = OUTLINED_FUNCTION_167();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA90, &qword_1D56343F8);
  v1[28] = v19;
  OUTLINED_FUNCTION_69(v19);
  v1[29] = v20;
  v22 = *(v21 + 64);
  v1[30] = OUTLINED_FUNCTION_127();
  v23 = sub_1D5614828();
  v1[31] = v23;
  OUTLINED_FUNCTION_69(v23);
  v1[32] = v24;
  v26 = *(v25 + 64);
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v1[36] = v27;
  OUTLINED_FUNCTION_69(v27);
  v1[37] = v28;
  v30 = *(v29 + 64);
  v1[38] = OUTLINED_FUNCTION_167();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v1[41] = v31;
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  v1[42] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1D50D4F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[41];
  v58 = v12[42];
  v14 = v12[40];
  v16 = v12[36];
  v15 = v12[37];
  v17 = v12[32];
  v18 = v12[16];
  v19 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
  v20 = *(v15 + 16);
  v12[43] = v20;
  v12[44] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v14, v18, v16);
  sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0);
  sub_1D5614F98();
  v21 = *(v13 + 36);
  v57 = (v17 + 16);
  v49 = (v17 + 8);
  v48 = v21;
  sub_1D4E62A60(&unk_1EDD53B80, &unk_1EC7F6A30, &qword_1D561C4C0);
  while (1)
  {
    v12[45] = v19;
    v22 = v12[42];
    v23 = v12[36];
    sub_1D5615648();
    if (*(v58 + v21) == v12[11])
    {
      break;
    }

    v25 = v12[35];
    v24 = v12[36];
    v26 = v12[27];
    v50 = v12[26];
    v55 = v12[25];
    v56 = v12[34];
    v54 = v12[24];
    v51 = v12[23];
    v52 = v12[31];
    v27 = sub_1D5615688();
    v53 = *v57;
    (*v57)(v25);
    v27(v12 + 7, 0);
    v21 = v48;
    sub_1D5615658();
    Playlist.Entry.internalItem.getter();
    Playlist.Entry.InternalItem.innerItem.getter(v12 + 2);
    v28 = v12[6];
    __swift_project_boxed_opaque_existential_1(v12 + 2, v12[5]);
    sub_1D560EC18();
    sub_1D50D5AB4(v26);
    __swift_destroy_boxed_opaque_existential_1(v12 + 2);
    Playlist.Entry.internalItem.getter();
    sub_1D50D5B10();
    sub_1D560EC88();
    sub_1D50D5AB4(v50);
    Playlist.Entry.internalItem.getter();
    (v53)(v56, v25, v52);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7EFA98, &unk_1D5634408);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_1D560CA68();
    v32 = (*v49)(v25, v52);
    MEMORY[0x1DA6EAF30](v32);
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D56151B8();
    }

    sub_1D56151F8();
    v19 = v59;
  }

  v34 = v12[30];
  v33 = v12[31];
  v35 = v12[24];
  sub_1D50D5B68(v12[42]);
  sub_1D50D5B10();

  sub_1D560CB08();
  v36 = *(MEMORY[0x1E6974C70] + 4);
  v37 = swift_task_alloc();
  v12[46] = v37;
  *v37 = v12;
  v37[1] = sub_1D50D5320;
  v44 = v12[30];
  v45 = v12[28];
  v46 = v12[14];

  return MEMORY[0x1EEDCE158](v46, v45, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_1D50D5320()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  v3 = *(*v1 + 368);
  v10 = *v1;
  v2[47] = v4;
  v2[48] = v0;

  if (v0)
  {
    v5 = v2[45];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D50D5434()
{
  v1 = v0[47];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[32];
    v4 = v0[18];
    v64 = MEMORY[0x1E69E7CC0];
    sub_1D4F04454();
    v5 = v64;
    OUTLINED_FUNCTION_3_67();
    v54 = v6;
    v57 = v7;
    v52 = (v4 - 8);
    do
    {
      v9 = v0[33];
      v8 = v0[34];
      v10 = v0[27];
      v11 = v0[19];
      v12 = v0[17];
      v57(v11, v1, v12);
      sub_1D560CA48();
      sub_1D560CA38();
      sub_1D560CAD8();

      Playlist.Entry.init(internalItem:existingEntry:)();
      (*v52)(v11, v12);
      v13 = *(v64 + 16);
      if (v13 >= *(v64 + 24) >> 1)
      {
        sub_1D4F04454();
      }

      v14 = v0[33];
      v15 = v0[31];
      *(v64 + 16) = v13 + 1;
      v16 = OUTLINED_FUNCTION_1_75();
      v17(v16);
      v1 += v54;
      --v2;
    }

    while (v2);
    v18 = v0[47];
  }

  else
  {
    v19 = v0[47];

    v5 = MEMORY[0x1E69E7CC0];
  }

  v20 = v0[43];
  v21 = v0[44];
  v23 = v0[39];
  v22 = v0[40];
  v24 = v0[36];
  v55 = v0[31];
  v58 = v0[38];
  v60 = v0[22];
  v25 = v0[16];
  v62 = v0[15];
  v0[12] = v5;
  v20(v22, v25, v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D4E62A60(&qword_1EC7ED3E8, &qword_1EC7ED398, &unk_1D5625000);
  sub_1D560DA18();
  v20(v58, v23, v24);
  if (swift_dynamicCast())
  {
    v26 = v0[45];
    v46 = v0[42];
    v47 = v0[40];
    v44 = v0[39];
    v27 = v0[37];
    v28 = v0[36];
    v48 = v0[38];
    v49 = v0[35];
    v50 = v0[34];
    v51 = v0[33];
    v30 = v0[29];
    v29 = v0[30];
    v31 = v0[28];
    v53 = v0[27];
    v56 = v0[26];
    v32 = v0[22];
    v59 = v0[25];
    v61 = v0[23];
    v63 = v0[19];
    v33 = v0[15];
    v45 = v0[13];

    (*(v27 + 8))(v44, v28);
    (*(v30 + 8))(v29, v31);
    OUTLINED_FUNCTION_9_50();
    (*(v34 + 32))(v45, v32, v33);

    OUTLINED_FUNCTION_55();

    return v35();
  }

  else
  {
    v38 = v0[21];
    v37 = v0[22];
    v39 = v0[20];
    v40 = v0[15];
    v41 = OUTLINED_FUNCTION_10_51();
    v42(v41);
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000060, 0x80000001D5683FC0);
    v43 = sub_1D5616458();
    MEMORY[0x1DA6EAC70](v43);

    return OUTLINED_FUNCTION_17_13();
  }
}

uint64_t sub_1D50D58D4()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  v8 = v0[27];
  v12 = v0[26];
  v13 = v0[25];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[19];
  (*(v0[29] + 8))(v0[30], v0[28]);

  OUTLINED_FUNCTION_55();
  v10 = v0[48];

  return v9();
}

uint64_t sub_1D50D5A04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D505A824;

  return MusicItemCollection<>.performExtendedPlaylistEntryMapping<A>(scope:)();
}

uint64_t sub_1D50D5AB4(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Entry.InternalItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D50D5B10()
{
  result = qword_1EDD52B40;
  if (!qword_1EDD52B40)
  {
    type metadata accessor for Playlist.Entry.InternalItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52B40);
  }

  return result;
}

uint64_t sub_1D50D5B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50D5BD4(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for StorePlatformItemPropertyProvider.LoadingState();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D50D5C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v139 = a4;
  v140 = a5;
  v141 = a3;
  v142 = a2;
  v143 = a1;
  v138 = a6;
  v6 = type metadata accessor for UploadedVideo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v131 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for StorePlatformUploadedVideo();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v127 = (&v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v115 - v13;
  v14 = type metadata accessor for UploadedAudio();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v129 = (&v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for StorePlatformUploadedAudio();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v124 = (&v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v115 - v21;
  v22 = type metadata accessor for TVEpisode();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v126 = (&v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for StorePlatformTVEpisode();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v120 = (&v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v125 = &v115 - v29;
  v123 = sub_1D5613838();
  v122 = *(v123 - 8);
  v30 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StorePlatformSong();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v116 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v119 = &v115 - v36;
  v37 = sub_1D5613D28();
  v133 = *(v37 - 8);
  v134 = v37;
  v38 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v132 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1D560EEA8();
  v117 = *(v118 - 8);
  v40 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v115 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StorePlatformMusicVideo();
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v46 = &v115 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v115 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v136 = &v115 - v51;
  v135 = type metadata accessor for Playlist.Entry.InternalItem();
  v52 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v54 = &v115 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1D560CD48();
  v55 = *(v137 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v58 = &v115 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for MusicMovie();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = (&v115 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for StorePlatformMusicMovie();
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x1EEE9AC00](v63 - 8);
  v67 = (&v115 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v65);
  v69 = &v115 - v68;
  v70 = type metadata accessor for StorePlatformPlaylistEntry();
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v115 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D50EF020(v143, v73, type metadata accessor for StorePlatformPlaylistEntry);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D50EF0FC(v73, v48, type metadata accessor for StorePlatformMusicVideo);
      sub_1D50EF020(v48, v46, type metadata accessor for StorePlatformMusicVideo);
      v101 = v142;
      v102 = v137;
      (*(v55 + 16))(v58, v142, v137);
      v103 = v141;

      v104 = v115;
      sub_1D50D8230(v46, v58, v103, v115);
      v105 = v117;
      v106 = v132;
      v107 = v118;
      (*(v117 + 16))(v132, v104, v118);
      (*(v133 + 104))(v106, *MEMORY[0x1E6976DF8], v134);
      sub_1D5614808();

      (*(v55 + 8))(v101, v102);
      sub_1D50EF07C(v143, type metadata accessor for StorePlatformPlaylistEntry);
      (*(v105 + 8))(v104, v107);
      v86 = type metadata accessor for StorePlatformMusicVideo;
      goto LABEL_8;
    case 2u:
      v48 = v119;
      sub_1D50EF0FC(v73, v119, type metadata accessor for StorePlatformSong);
      v87 = v116;
      sub_1D50EF020(v48, v116, type metadata accessor for StorePlatformSong);
      v88 = v142;
      v89 = v137;
      (*(v55 + 16))(v58, v142, v137);
      v90 = v141;

      v91 = v121;
      sub_1D50D91A4(v87, v58, v90, v121);
      v92 = v122;
      v93 = v132;
      v94 = v123;
      (*(v122 + 16))(v132, v91, v123);
      (*(v133 + 104))(v93, *MEMORY[0x1E6976E18], v134);
      sub_1D5614808();

      (*(v55 + 8))(v88, v89);
      sub_1D50EF07C(v143, type metadata accessor for StorePlatformPlaylistEntry);
      (*(v92 + 8))(v91, v94);
      v86 = type metadata accessor for StorePlatformSong;
      goto LABEL_8;
    case 3u:
      v48 = v125;
      sub_1D50EF0FC(v73, v125, type metadata accessor for StorePlatformTVEpisode);
      v95 = v120;
      sub_1D50EF020(v48, v120, type metadata accessor for StorePlatformTVEpisode);
      v96 = v142;
      v97 = v137;
      (*(v55 + 16))(v58, v142, v137);
      v98 = v141;

      v99 = v126;
      sub_1D50DA260(v95, v58, v98, v126);
      sub_1D50EF020(v99, v54, type metadata accessor for TVEpisode);
      swift_storeEnumTagMultiPayload();
      v100 = type metadata accessor for SocialProfile();
      __swift_storeEnumTagSinglePayload(v136, 1, 1, v100);
      sub_1D5208A20();

      (*(v55 + 8))(v96, v97);
      sub_1D50EF07C(v143, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v99, type metadata accessor for TVEpisode);
      v86 = type metadata accessor for StorePlatformTVEpisode;
      goto LABEL_8;
    case 4u:
      v48 = v128;
      sub_1D50EF0FC(v73, v128, type metadata accessor for StorePlatformUploadedAudio);
      v80 = v124;
      sub_1D50EF020(v48, v124, type metadata accessor for StorePlatformUploadedAudio);
      v81 = v142;
      v82 = v137;
      (*(v55 + 16))(v58, v142, v137);
      v83 = v141;

      v84 = v129;
      sub_1D50DB960(v80, v58, v83, v129);
      sub_1D50EF020(v84, v54, type metadata accessor for UploadedAudio);
      swift_storeEnumTagMultiPayload();
      v85 = type metadata accessor for SocialProfile();
      __swift_storeEnumTagSinglePayload(v136, 1, 1, v85);
      sub_1D5208A20();

      (*(v55 + 8))(v81, v82);
      sub_1D50EF07C(v143, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v84, type metadata accessor for UploadedAudio);
      v86 = type metadata accessor for StorePlatformUploadedAudio;
      goto LABEL_8;
    case 5u:
      v48 = v130;
      sub_1D50EF0FC(v73, v130, type metadata accessor for StorePlatformUploadedVideo);
      v108 = v127;
      sub_1D50EF020(v48, v127, type metadata accessor for StorePlatformUploadedVideo);
      v109 = v142;
      v110 = v137;
      (*(v55 + 16))(v58, v142, v137);
      v111 = v141;

      v112 = v131;
      sub_1D50DC860(v108, v58, v111, v131);
      sub_1D50EF020(v112, v54, type metadata accessor for UploadedVideo);
      swift_storeEnumTagMultiPayload();
      v113 = type metadata accessor for SocialProfile();
      __swift_storeEnumTagSinglePayload(v136, 1, 1, v113);
      sub_1D5208A20();

      (*(v55 + 8))(v109, v110);
      sub_1D50EF07C(v143, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v112, type metadata accessor for UploadedVideo);
      v86 = type metadata accessor for StorePlatformUploadedVideo;
LABEL_8:
      v78 = v86;
      v79 = v48;
      break;
    default:
      sub_1D50EF0FC(v73, v69, type metadata accessor for StorePlatformMusicMovie);
      sub_1D50EF020(v69, v67, type metadata accessor for StorePlatformMusicMovie);
      v74 = v142;
      v75 = v137;
      (*(v55 + 16))(v58, v142, v137);
      v76 = v141;

      sub_1D50D6BFC(v67, v58, v76, v62);
      sub_1D50EF020(v62, v54, type metadata accessor for MusicMovie);
      swift_storeEnumTagMultiPayload();
      v77 = type metadata accessor for SocialProfile();
      __swift_storeEnumTagSinglePayload(v136, 1, 1, v77);
      sub_1D5208A20();

      (*(v55 + 8))(v74, v75);
      sub_1D50EF07C(v143, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v62, type metadata accessor for MusicMovie);
      v78 = type metadata accessor for StorePlatformMusicMovie;
      v79 = v69;
      break;
  }

  return sub_1D50EF07C(v79, v78);
}

uint64_t sub_1D50D6BFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v209 = a3;
  v210 = a2;
  v211 = a1;
  v208 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v207 = &v171 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v171 - v9;
  *&v205 = sub_1D56128C8();
  *&v204 = *(v205 - 8);
  v11 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v205);
  *&v203 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v201 = &v171 - v18;
  v200 = sub_1D5610788();
  v198 = *(v200 - 8);
  v19 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v195 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1D56107C8();
  v194 = *(v196 - 8);
  v21 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v191 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v192 = &v171 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v189 = &v171 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v171 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v188 = &v171 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v182 = &v171 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v179 = &v171 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v181 = &v171 - v44;
  v45 = type metadata accessor for MusicMoviePropertyProvider();
  v46 = *(*(v45 - 1) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = (&v171 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = *(v47 + 20);
  v51 = sub_1D56140F8();
  v178 = v50;
  v177 = v51;
  __swift_storeEnumTagSinglePayload(v49 + v50, 1, 1, v51);
  v52 = v45[6];
  v53 = sub_1D560F928();
  v180 = v52;
  __swift_storeEnumTagSinglePayload(v49 + v52, 1, 1, v53);
  v54 = v45[10];
  v55 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(v49 + v54, 1, 1, v55);
  v56 = v45[14];
  v57 = sub_1D5610978();
  v184 = v56;
  __swift_storeEnumTagSinglePayload(v49 + v56, 1, 1, v57);
  v58 = v45[18];
  v59 = sub_1D560C0A8();
  v185 = v58;
  __swift_storeEnumTagSinglePayload(v49 + v58, 1, 1, v59);
  v60 = v45[21];
  v61 = sub_1D5613178();
  __swift_storeEnumTagSinglePayload(v49 + v60, 1, 1, v61);
  v62 = v45[22];
  v63 = sub_1D5613198();
  __swift_storeEnumTagSinglePayload(v49 + v62, 1, 1, v63);
  v64 = v45[23];
  v65 = sub_1D56134E8();
  __swift_storeEnumTagSinglePayload(v49 + v64, 1, 1, v65);
  __swift_storeEnumTagSinglePayload(v49 + v45[24], 1, 1, v55);
  __swift_storeEnumTagSinglePayload(v49 + v45[25], 1, 1, v55);
  v66 = v45[26];
  v67 = sub_1D5614A78();
  __swift_storeEnumTagSinglePayload(v49 + v66, 1, 1, v67);
  v68 = v49 + v45[28];
  v183 = v57;
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v57);
  v69 = v45[30];
  v70 = sub_1D56109F8();
  v186 = v69;
  __swift_storeEnumTagSinglePayload(v49 + v69, 1, 1, v70);
  v187 = v45[31];
  __swift_storeEnumTagSinglePayload(v49 + v187, 1, 1, v55);
  v193 = v45[37];
  __swift_storeEnumTagSinglePayload(v49 + v193, 1, 1, v59);
  v71 = v45[38];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v199 = v71;
  v197 = v72;
  __swift_storeEnumTagSinglePayload(v49 + v71, 1, 1, v72);
  v73 = v45[39];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  __swift_storeEnumTagSinglePayload(v49 + v73, 1, 1, v74);
  __swift_storeEnumTagSinglePayload(v49 + v45[40], 1, 1, v74);
  v75 = v45[41];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  __swift_storeEnumTagSinglePayload(v49 + v75, 1, 1, v76);
  v77 = v45[42];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  __swift_storeEnumTagSinglePayload(v49 + v77, 1, 1, v78);
  __swift_storeEnumTagSinglePayload(v49 + v45[43], 1, 1, v74);
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v79 = v32;
  v202 = v17;
  *&v206 = v10;
  v80 = sub_1D560D9A8();
  v81 = __swift_project_value_buffer(v80, qword_1EDD53D50);
  if (qword_1EC7E9408 != -1)
  {
    swift_once();
  }

  v82 = sub_1D5610088();
  v83 = __swift_project_value_buffer(v82, qword_1EC87C4F0);
  v84 = type metadata accessor for StorePlatformMusicMovie();
  sub_1D54301F4(v83, v81, *(v211 + v84[14]), *(v211 + v84[14] + 8), v49 + v45[46]);
  v176 = sub_1D560FDE8();
  v175 = v85;
  sub_1D5614A88();
  v174 = sub_1D5614BD8();
  v173 = sub_1D5614BD8();
  v172 = sub_1D5614BD8();
  v86 = sub_1D5614BD8();
  *(v49 + v45[13]) = 0;
  *(v49 + v45[17]) = 2;
  *(v49 + v45[19]) = 2;
  *(v49 + v45[27]) = 0;
  v87 = v49 + v45[29];
  *v87 = xmmword_1D5626F70;
  *(v87 + 3) = 0;
  *(v87 + 4) = 0;
  *(v87 + 2) = 0;
  v88 = (v49 + v45[35]);
  v88[2] = 0u;
  v88[3] = 0u;
  *v88 = 0u;
  v88[1] = 0u;
  v190 = v88;
  *(v49 + v45[44]) = 0;
  if (qword_1EDD5B368 != -1)
  {
    swift_once();
  }

  v89 = qword_1EDD76D30;
  if (qword_1EDD76D30 >> 62)
  {
    sub_1D560CDE8();

    v170 = sub_1D5615E18();

    v89 = v170;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v90 = v211;
  *(v49 + v45[45]) = v89;
  (*(*(v82 - 8) + 16))(v49 + v45[47], v83, v82);
  v91 = (v49 + v45[48]);
  v92 = v175;
  *v91 = v176;
  v91[1] = v92;
  *(v49 + v45[49]) = v174;
  *(v49 + v45[50]) = v173;
  *(v49 + v45[51]) = v172;
  *(v49 + v45[52]) = v86;
  v93 = v90[1];
  *v49 = *v90;
  v49[1] = v93;
  v94 = v179;
  sub_1D4F39AB0(v90 + v84[5], v179, &qword_1EC7EB5B8, &unk_1D56206A0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94, 1, v95);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v94, &qword_1EC7EB5B8, &unk_1D56206A0);
    v97 = 1;
    v98 = v79;
    v99 = v181;
  }

  else
  {
    v99 = v181;
    sub_1D5610758();
    (*(*(v95 - 8) + 8))(v94, v95);
    v97 = 0;
    v98 = v79;
  }

  __swift_storeEnumTagSinglePayload(v99, v97, 1, v177);
  sub_1D4E68940(v99, v49 + v178, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D50EEFD8(&qword_1EC7EFC08, type metadata accessor for StorePlatformMusicMovie);
  v100 = v182;
  sub_1D5612A68();
  sub_1D4E68940(v100, v49 + v180, &qword_1EC7EDB98, L"X\b\a");
  v101 = *(v90 + v84[18]);
  if (v101)
  {
    v101 = sub_1D50ABBD4(v101);
  }

  *(v49 + v45[7]) = v101;
  v102 = *(v90 + v84[6]);
  if (v102)
  {
    v102 = sub_1D511C2A4(v102);
  }

  v103 = (v49 + v45[9]);
  *(v49 + v45[8]) = v102;
  v104 = (v90 + v84[7]);
  v105 = v104[1];
  *v103 = *v104;
  v103[1] = v105;
  v106 = *(v90 + v84[20]);

  if (v106)
  {
    v107 = sub_1D55CE994(v106);
  }

  else
  {
    v107 = 0;
    v108 = 1;
  }

  v109 = v45[12];
  v110 = v49 + v45[11];
  *v110 = v107;
  v110[8] = v108 & 1;
  *(v49 + v109) = *(v90 + v84[10]);
  sub_1D4F39AB0(v90 + v84[17], v98, &qword_1EC7EC960, &unk_1D56334C0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v112 = __swift_getEnumTagSinglePayload(v98, 1, v111);

  if (v112 == 1)
  {
    sub_1D4E50004(v98, &qword_1EC7EC960, &unk_1D56334C0);
    v113 = 1;
    v114 = v188;
  }

  else
  {
    v114 = v188;
    sub_1D5610738();
    (*(*(v111 - 8) + 8))(v98, v111);
    v113 = 0;
  }

  __swift_storeEnumTagSinglePayload(v114, v113, 1, v183);
  v115 = v45[15];
  v116 = v45[16];
  sub_1D4E68940(v114, v49 + v184, &qword_1EC7EAC98, &unk_1D561DA80);
  *(v49 + v115) = *(v90 + v84[11]);
  *(v49 + v116) = *(v90 + v84[12]);
  v117 = v84[15];

  sub_1D4F89DEC(v90 + v117, v49 + v185);
  v118 = *(v90 + v84[16]);
  if (v118 == 2)
  {
    sub_1D50EEFD8(&qword_1EC7EFC10, type metadata accessor for StorePlatformMusicMovie);
    LOBYTE(v118) = sub_1D5612A28();
  }

  *(v49 + v45[20]) = v118 & 1;
  if (qword_1EDD53180 != -1)
  {
    swift_once();
  }

  v119 = sub_1D56109D8();
  v120 = __swift_project_value_buffer(v119, qword_1EDD767D8);
  v121 = v189;
  sub_1D50DEE20(v120, v189);
  sub_1D4E68940(v121, v49 + v186, &qword_1EC7EB5C0, &unk_1D56223C0);
  v122 = v191;
  sub_1D56107A8();
  v123 = (v90 + v84[21]);
  v124 = *v123;
  v125 = v123[1];
  v126 = v198;
  v127 = v195;
  v128 = v200;
  (*(v198 + 104))(v195, *MEMORY[0x1E6975DC8], v200);
  v129 = v192;
  sub_1D5610798();
  v130 = v211;
  (*(v126 + 8))(v127, v128);
  (*(v194 + 8))(v122, v196);
  sub_1D4E68940(v129, v49 + v187, &qword_1EC7EA3B8, &unk_1D561E370);
  v131 = v84[9];
  v132 = v201;
  sub_1D4F39AB0(v130 + v131, v201, &qword_1EC7EC978, &unk_1D56222A0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  if (__swift_getEnumTagSinglePayload(v132, 1, v133) == 1)
  {
    sub_1D4E50004(v132, &qword_1EC7EC978, &unk_1D56222A0);
    v134 = 0;
    v135 = 0;
  }

  else
  {
    v136 = v203;
    sub_1D5610708();
    (*(*(v133 - 8) + 8))(v132, v133);
    v134 = sub_1D56128A8();
    v135 = v137;
    (*(v204 + 8))(v136, v205);
  }

  v138 = (v49 + v45[32]);
  *v138 = v134;
  v138[1] = v135;
  v139 = v202;
  sub_1D4F39AB0(v130 + v131, v202, &qword_1EC7EC978, &unk_1D56222A0);
  if (__swift_getEnumTagSinglePayload(v139, 1, v133) == 1)
  {
    sub_1D4E50004(v139, &qword_1EC7EC978, &unk_1D56222A0);
    v140 = 0;
    v141 = 0;
  }

  else
  {
    v142 = v203;
    sub_1D5610708();
    (*(*(v133 - 8) + 8))(v139, v133);
    v140 = sub_1D56128B8();
    v141 = v143;
    (*(v204 + 8))(v142, v205);
  }

  v144 = v206;
  v145 = (v49 + v45[33]);
  v146 = (v49 + v45[34]);
  *v145 = v140;
  v145[1] = v141;
  v147 = (v130 + v84[23]);
  v148 = v147[1];
  *v146 = *v147;
  v146[1] = v148;
  sub_1D4F39AB0(v130 + v84[24], v144, &qword_1EC7ED9B0, &unk_1D5631050);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  v150 = __swift_getEnumTagSinglePayload(v144, 1, v149);

  if (v150 == 1)
  {
    sub_1D4E50004(v144, &qword_1EC7ED9B0, &unk_1D5631050);
    v152 = 0uLL;
    v206 = 0u;
    v205 = 0u;
    v204 = 0u;
    v153 = &v215 + 8;
  }

  else
  {
    v151 = sub_1D5138FDC(&v214);
    (*(*(v149 - 8) + 8))(v144, v149, v151);
    v205 = v215;
    v206 = v214;
    v203 = v216[1];
    v152 = v216[0];
    v153 = v216 + 8;
  }

  *(v153 - 16) = v152;
  v154 = (v49 + v45[36]);
  v155 = v190;
  v156 = v190[1];
  v213[0] = *v190;
  v213[1] = v156;
  v157 = v190[3];
  v213[2] = v190[2];
  v213[3] = v157;
  sub_1D4E50004(v213, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v158 = v205;
  *v155 = v206;
  v155[1] = v158;
  v159 = v203;
  v155[2] = v204;
  v155[3] = v159;
  v160 = (v130 + v84[19]);
  v161 = v160[1];
  *v154 = *v160;
  v154[1] = v161;
  v162 = v84[25];

  sub_1D4F89DEC(v130 + v162, v49 + v193);
  v163 = *(v130 + v84[13]);
  v164 = v207;
  if (v163)
  {
    v165 = v210;
    sub_1D50E02E8(v163, v207);
    v166 = 0;
  }

  else
  {
    v166 = 1;
    v165 = v210;
  }

  __swift_storeEnumTagSinglePayload(v164, v166, 1, v197);
  sub_1D4E68940(v164, v49 + v199, &qword_1EC7EA788, &unk_1D56223A0);
  v212[3] = v45;
  v212[4] = sub_1D50EEFD8(&qword_1EDD5B358, type metadata accessor for MusicMoviePropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v212);
  sub_1D50EF020(v49, boxed_opaque_existential_0, type metadata accessor for MusicMoviePropertyProvider);
  MusicMovie.init(propertyProvider:)(v212, v208);

  v168 = sub_1D560CD48();
  (*(*(v168 - 8) + 8))(v165, v168);
  sub_1D50EF07C(v130, type metadata accessor for StorePlatformMusicMovie);
  return sub_1D50EF07C(v49, type metadata accessor for MusicMoviePropertyProvider);
}

uint64_t sub_1D50D8230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v146 = a3;
  v147 = a2;
  v145 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v144 = &v117 - v7;
  v8 = sub_1D5610788();
  v142 = *(v8 - 8);
  v143 = v8;
  v9 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1D56107C8();
  v139 = *(v141 - 8);
  v11 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v137 = &v117 - v15;
  v16 = sub_1D56109D8();
  v135 = *(v16 - 8);
  v136 = v16;
  v17 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v134 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v133 = &v117 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v130 = &v117 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC18, &qword_1D56346D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v128 = &v117 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v127 = &v117 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v126 = &v117 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v148 = &v117 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v118 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v124 = &v117 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v129 = &v117 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v125 = &v117 - v46;
  v47 = sub_1D5610088();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v123 = &v117 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D560D9A8();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v117 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D560D838();
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v59 = &v117 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1D560E1F8();
  v131 = *(v132 - 8);
  v60 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v62 = &v117 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D878();
  if (qword_1EC7E94F0 != -1)
  {
    swift_once();
  }

  v63 = __swift_project_value_buffer(v47, qword_1EC87C588);
  v121 = type metadata accessor for StorePlatformMusicVideo();
  v64 = (a1 + *(v121 + 64));
  v122 = a1;
  sub_1D54301F4(v63, v55, *v64, v64[1], v59);
  (*(v52 + 8))(v55, v51);
  (*(v48 + 16))(v123, v63, v47);
  v120 = sub_1D560FDE8();
  v119 = v65;
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v66 = v121;
  sub_1D560E148();
  v67 = v122;
  v68 = v124;
  sub_1D4F39AB0(v122 + v66[7], v124, &qword_1EC7EB5B8, &unk_1D56206A0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v68, 1, v69) == 1)
  {
    sub_1D4E50004(v68, &qword_1EC7EB5B8, &unk_1D56206A0);
    v70 = 1;
    v71 = v125;
  }

  else
  {
    v71 = v125;
    sub_1D5610758();
    (*(*(v69 - 8) + 8))(v68, v69);
    v70 = 0;
  }

  v72 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v71, v70, 1, v72);
  sub_1D560E1D8();
  v73 = (v67 + v66[9]);
  v74 = *v73;
  v75 = v73[1];

  sub_1D560E0C8();
  v76 = *(v67 + 16);
  v77 = *(v67 + 24);

  sub_1D560E0D8();
  sub_1D4F39AB0(v67 + v66[6], v148, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D560E1E8();
  sub_1D50EEFD8(&qword_1EC7EFC20, type metadata accessor for StorePlatformMusicVideo);
  sub_1D5612A68();
  sub_1D560E118();
  v78 = *(v67 + v66[10]);
  if (v78)
  {
    sub_1D5386528(v78, v127);
  }

  else
  {
    v79 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v127, 1, 1, v79);
  }

  sub_1D560E138();
  v80 = *(v67 + v66[12]);

  sub_1D560E178();
  v81 = *(v67 + v66[13]);

  sub_1D560E0B8();
  v82 = *(v67 + v66[14]);

  sub_1D560E0E8();
  v83 = v128;
  sub_1D560EF18();
  v84 = sub_1D560EF28();
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v84);
  sub_1D560E1C8();
  sub_1D4F39AB0(v67 + v66[17], v148, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D560E128();
  if (*(v67 + v66[18]) == 2)
  {
    sub_1D50EEFD8(&qword_1EC7EFC28, type metadata accessor for StorePlatformMusicVideo);
    sub_1D5612A28();
  }

  v85 = v130;
  sub_1D560E188();
  sub_1D4F39AB0(v67 + v66[25], v85, &qword_1EC7EFBD0, &qword_1D5634650);
  v86 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v85, 1, v86) == 1)
  {
    v87 = &qword_1EC7EFBD0;
    v88 = &qword_1D5634650;
    v89 = v85;
LABEL_15:
    sub_1D4E50004(v89, v87, v88);
    v91 = 1;
    v92 = v129;
    goto LABEL_17;
  }

  v90 = v118;
  sub_1D4F39AB0(v85, v118, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50EF07C(v85, type metadata accessor for StorePlatformUber);
  if (__swift_getEnumTagSinglePayload(v90, 1, v69) == 1)
  {
    v87 = &qword_1EC7EB5B8;
    v88 = &unk_1D56206A0;
    v89 = v90;
    goto LABEL_15;
  }

  v92 = v129;
  sub_1D5610758();
  (*(*(v69 - 8) + 8))(v90, v69);
  v91 = 0;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v92, v91, 1, v72);
  sub_1D560E168();
  v93 = v134;
  sub_1D5610988();
  sub_1D50DF118(v93, v133);
  (*(v135 + 8))(v93, v136);
  sub_1D560E158();
  v94 = (v67 + v66[19]);
  v95 = *v94;
  v96 = v94[1];

  sub_1D560E1A8();
  v97 = v138;
  sub_1D56107A8();
  v98 = (v67 + v66[21]);
  v99 = *v98;
  v100 = v98[1];
  v102 = v142;
  v101 = v143;
  v103 = v140;
  (*(v142 + 104))(v140, *MEMORY[0x1E6975DC8], v143);
  sub_1D5610798();
  (*(v102 + 8))(v103, v101);
  (*(v139 + 8))(v97, v141);
  sub_1D560E0F8();
  v104 = v67 + v66[24];
  v105 = *v104;
  v106 = *(v104 + 8);
  sub_1D560E108();
  sub_1D4F39AB0(v67 + v66[26], v148, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D560E198();
  v107 = *(v67 + v66[15]);
  if (v107)
  {
    v108 = v144;
    v109 = v147;
    sub_1D50E02E8(v107, v144);
    v110 = 0;
  }

  else
  {
    v109 = v147;
    v108 = v144;
    v110 = 1;
  }

  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  __swift_storeEnumTagSinglePayload(v108, v110, 1, v111);
  sub_1D560E1B8();
  v112 = v132;
  v149[3] = v132;
  v149[4] = MEMORY[0x1E69751C8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v149);
  v114 = v131;
  (*(v131 + 16))(boxed_opaque_existential_0, v62, v112);
  sub_1D560EDD8();

  v115 = sub_1D560CD48();
  (*(*(v115 - 8) + 8))(v109, v115);
  (*(v114 + 8))(v62, v112);
  return sub_1D50EF07C(v67, type metadata accessor for StorePlatformMusicVideo);
}

uint64_t sub_1D50D91A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v157 = a3;
  v158 = a2;
  v156 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v155 = v130 - v7;
  v8 = sub_1D5610788();
  v153 = *(v8 - 8);
  v154 = v8;
  v9 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v151 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1D56107C8();
  v150 = *(v152 - 8);
  v11 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v149 = v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v148 = v130 - v15;
  v16 = sub_1D56109D8();
  v146 = *(v16 - 8);
  v147 = v16;
  v17 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v145 = v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v144 = v130 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v141 = v130 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC18, &qword_1D56346D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v139 = v130 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v138 = v130 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC48, &unk_1D5634C20);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v137 = v130 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v136 = v130 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v159 = v130 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v130[0] = v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v134 = v130 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v140 = v130 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v135 = v130 - v49;
  v50 = sub_1D5610088();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v133 = v130 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D560D9A8();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = v130 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D560D838();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = v130 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1D5611E48();
  v142 = *(v143 - 8);
  v63 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v65 = v130 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D8E8();
  if (qword_1EC7E8DB0 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v50, qword_1EC87C0B0);
  v131 = type metadata accessor for StorePlatformSong();
  v67 = (a1 + *(v131 + 84));
  v132 = a1;
  sub_1D54301F4(v66, v58, *v67, v67[1], v62);
  (*(v55 + 8))(v58, v54);
  (*(v51 + 16))(v133, v66, v50);
  v130[2] = sub_1D560FDE8();
  v130[1] = v68;
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v69 = v131;
  sub_1D5611D78();
  v70 = v132;
  v71 = v134;
  sub_1D4F39AB0(v132 + v69[7], v134, &qword_1EC7EB5B8, &unk_1D56206A0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
  {
    sub_1D4E50004(v71, &qword_1EC7EB5B8, &unk_1D56206A0);
    v73 = 1;
    v74 = v137;
    v75 = v135;
  }

  else
  {
    v75 = v135;
    sub_1D5610758();
    (*(*(v72 - 8) + 8))(v71, v72);
    v73 = 0;
    v74 = v137;
  }

  v76 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v75, v73, 1, v76);
  sub_1D5611E28();
  v77 = (v70 + v69[10]);
  v78 = *v77;
  v79 = v77[1];

  sub_1D5611CD8();
  v80 = *(v70 + 16);
  v81 = *(v70 + 24);

  sub_1D5611CE8();
  sub_1D4F39AB0(v70 + v69[6], v159, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5611E38();
  if (*(v70 + v69[8]))
  {
    sub_1D56152A8();
  }

  v82 = v138;
  sub_1D5611D58();
  sub_1D50EEFD8(&qword_1EC7EFC50, type metadata accessor for StorePlatformSong);
  sub_1D5612A68();
  sub_1D5611D38();
  sub_1D4F39AB0(v70 + v69[11], v74, &qword_1EC7EFC48, &unk_1D5634C20);
  v83 = type metadata accessor for StorePlatformComposer();
  if (__swift_getEnumTagSinglePayload(v74, 1, v83) == 1)
  {
    sub_1D4E50004(v74, &qword_1EC7EFC48, &unk_1D5634C20);
  }

  else
  {
    v84 = *v74;
    v85 = v74[1];

    sub_1D50EF07C(v74, type metadata accessor for StorePlatformComposer);
  }

  sub_1D5611D48();
  v86 = *(v70 + v69[12]);
  if (v86)
  {
    sub_1D5386528(v86, v82);
  }

  else
  {
    v87 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v87);
  }

  sub_1D5611D68();
  v88 = v70 + v69[14];
  v89 = *v88;
  v90 = *(v88 + 8);
  sub_1D5611CF8();
  v91 = *(v70 + v69[15]);

  sub_1D5611DA8();
  v92 = *(v70 + v69[16]);

  sub_1D5611DD8();
  v93 = *(v70 + v69[17]);

  sub_1D5611D08();
  v94 = *(v70 + v69[20]);
  v95 = *(v70 + v69[19]);
  v96 = v139;
  sub_1D560EF18();
  v97 = sub_1D560EF28();
  __swift_storeEnumTagSinglePayload(v96, 0, 1, v97);
  sub_1D5611E18();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D5610A38();

  sub_1D5611DB8();
  if (*(v70 + v69[22]) == 2)
  {
    sub_1D50EEFD8(&qword_1EC7EFC58, type metadata accessor for StorePlatformSong);
    sub_1D5612A28();
  }

  v98 = v141;
  sub_1D5611DC8();
  sub_1D4F39AB0(v70 + v69[30], v98, &qword_1EC7EFBD0, &qword_1D5634650);
  v99 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v98, 1, v99) == 1)
  {
    v100 = &qword_1EC7EFBD0;
    v101 = &qword_1D5634650;
    v102 = v98;
LABEL_20:
    sub_1D4E50004(v102, v100, v101);
    v104 = 1;
    v105 = v140;
    goto LABEL_22;
  }

  v103 = v130[0];
  sub_1D4F39AB0(v98, v130[0], &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50EF07C(v98, type metadata accessor for StorePlatformUber);
  if (__swift_getEnumTagSinglePayload(v103, 1, v72) == 1)
  {
    v100 = &qword_1EC7EB5B8;
    v101 = &unk_1D56206A0;
    v102 = v103;
    goto LABEL_20;
  }

  v105 = v140;
  sub_1D5610758();
  (*(*(v72 - 8) + 8))(v103, v72);
  v104 = 0;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v105, v104, 1, v76);
  sub_1D5611D98();
  v106 = v145;
  sub_1D5610998();
  sub_1D50DF410(v106, v144);
  (*(v146 + 8))(v106, v147);
  sub_1D5611D88();
  v107 = (v70 + v69[24]);
  v108 = *v107;
  v109 = v107[1];

  sub_1D5611DF8();
  v110 = v149;
  sub_1D56107A8();
  v111 = (v70 + v69[26]);
  v112 = *v111;
  v113 = v111[1];
  v115 = v153;
  v114 = v154;
  v116 = v151;
  (*(v153 + 104))(v151, *MEMORY[0x1E6975DC8], v154);
  sub_1D5610798();
  (*(v115 + 8))(v116, v114);
  (*(v150 + 8))(v110, v152);
  sub_1D5611D18();
  v117 = v70 + v69[29];
  v118 = *v117;
  v119 = *(v117 + 8);
  sub_1D5611D28();
  sub_1D4F39AB0(v70 + v69[31], v159, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5611DE8();
  v120 = *(v70 + v69[18]);
  if (v120)
  {
    v121 = v155;
    v122 = v158;
    sub_1D50E02E8(v120, v155);
    v123 = 0;
  }

  else
  {
    v122 = v158;
    v121 = v155;
    v123 = 1;
  }

  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  __swift_storeEnumTagSinglePayload(v121, v123, 1, v124);
  sub_1D5611E08();
  v125 = v143;
  v160[3] = v143;
  v160[4] = MEMORY[0x1E6976400];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v160);
  v127 = v142;
  (*(v142 + 16))(boxed_opaque_existential_0, v65, v125);
  sub_1D56136E8();

  v128 = sub_1D560CD48();
  (*(*(v128 - 8) + 8))(v122, v128);
  (*(v127 + 8))(v65, v125);
  return sub_1D50EF07C(v70, type metadata accessor for StorePlatformSong);
}

uint64_t sub_1D50DA260@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v219 = a3;
  v220 = a2;
  v218 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v217 = &v184 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *&v216 = &v184 - v10;
  *&v215 = sub_1D56128C8();
  *&v214 = *(v215 - 8);
  v11 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v213 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v212 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v211 = &v184 - v17;
  v209 = sub_1D5610788();
  v207 = *(v209 - 8);
  v18 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v204 = &v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1D56107C8();
  v203 = *(v206 - 8);
  v20 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v202 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v201 = &v184 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v200 = &v184 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v192 = &v184 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v199 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v184 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v194 = &v184 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v191 = &v184 - v41;
  v42 = type metadata accessor for TVEpisodePropertyProvider();
  v43 = *(*(v42 - 1) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v184 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v46);
  v47 = v42[6];
  v48 = sub_1D560F928();
  v190 = v47;
  __swift_storeEnumTagSinglePayload(&v45[v47], 1, 1, v48);
  v49 = v42[10];
  v50 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(&v45[v49], 1, 1, v50);
  v51 = v42[13];
  v52 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(&v45[v51], 1, 1, v52);
  v53 = v42[17];
  v54 = sub_1D560C0A8();
  v193 = v53;
  __swift_storeEnumTagSinglePayload(&v45[v53], 1, 1, v54);
  v55 = v42[20];
  v56 = sub_1D5613178();
  __swift_storeEnumTagSinglePayload(&v45[v55], 1, 1, v56);
  v57 = v42[21];
  v58 = sub_1D5613198();
  __swift_storeEnumTagSinglePayload(&v45[v57], 1, 1, v58);
  v59 = v42[22];
  v60 = sub_1D56134E8();
  __swift_storeEnumTagSinglePayload(&v45[v59], 1, 1, v60);
  __swift_storeEnumTagSinglePayload(&v45[v42[24]], 1, 1, v50);
  __swift_storeEnumTagSinglePayload(&v45[v42[25]], 1, 1, v50);
  v61 = v42[26];
  v62 = sub_1D5614A78();
  __swift_storeEnumTagSinglePayload(&v45[v61], 1, 1, v62);
  __swift_storeEnumTagSinglePayload(&v45[v42[29]], 1, 1, v52);
  v63 = v42[31];
  v64 = sub_1D56109F8();
  v195 = v63;
  __swift_storeEnumTagSinglePayload(&v45[v63], 1, 1, v64);
  v196 = v42[32];
  *&v221 = v46;
  __swift_storeEnumTagSinglePayload(&v45[v196], 1, 1, v46);
  v197 = v42[34];
  __swift_storeEnumTagSinglePayload(&v45[v197], 1, 1, v50);
  v65 = v42[36];
  v66 = sub_1D560FDC8();
  __swift_storeEnumTagSinglePayload(&v45[v65], 1, 1, v66);
  __swift_storeEnumTagSinglePayload(&v45[v42[38]], 1, 1, v54);
  v205 = v42[44];
  __swift_storeEnumTagSinglePayload(&v45[v205], 1, 1, v54);
  v67 = v42[45];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v210 = v67;
  v208 = v68;
  __swift_storeEnumTagSinglePayload(&v45[v67], 1, 1, v68);
  v69 = v42[46];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  __swift_storeEnumTagSinglePayload(&v45[v69], 1, 1, v70);
  v71 = v42[47];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  __swift_storeEnumTagSinglePayload(&v45[v71], 1, 1, v72);
  v73 = v42[48];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  __swift_storeEnumTagSinglePayload(&v45[v73], 1, 1, v74);
  v75 = v42[49];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  __swift_storeEnumTagSinglePayload(&v45[v75], 1, 1, v76);
  v77 = v42[50];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  __swift_storeEnumTagSinglePayload(&v45[v77], 1, 1, v78);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v79 = sub_1D560D9A8();
  v80 = __swift_project_value_buffer(v79, qword_1EDD53C40);
  if (qword_1EC7E8B08 != -1)
  {
    swift_once();
  }

  v81 = sub_1D5610088();
  v82 = __swift_project_value_buffer(v81, qword_1EC87BF30);
  v223 = type metadata accessor for StorePlatformTVEpisode();
  v83 = v223[17];
  v222 = a1;
  sub_1D54301F4(v82, v80, *(a1 + v83), *(a1 + v83 + 8), &v45[v42[53]]);
  v189 = sub_1D560FDE8();
  v188 = v84;
  sub_1D5614A88();
  v187 = sub_1D5614BD8();
  v186 = sub_1D5614BD8();
  v185 = sub_1D5614BD8();
  v184 = sub_1D5614BD8();
  v85 = &v45[v42[5]];
  *v85 = 0;
  v85[8] = 1;
  v45[v42[16]] = 2;
  v45[v42[18]] = 2;
  v86 = v42[23];
  v45[v86] = 26;
  *&v45[v42[28]] = 0;
  v87 = &v45[v42[30]];
  *v87 = xmmword_1D5626F70;
  *(v87 + 3) = 0;
  *(v87 + 4) = 0;
  *(v87 + 2) = 0;
  *&v45[v42[33]] = 0;
  v88 = &v45[v42[42]];
  *(v88 + 2) = 0u;
  *(v88 + 3) = 0u;
  *v88 = 0u;
  *(v88 + 1) = 0u;
  v198 = v88;
  *&v45[v42[51]] = 0;
  if (qword_1EC7E8E28 != -1)
  {
    swift_once();
  }

  v89 = qword_1EC87C178;
  if (qword_1EC87C178 >> 62)
  {
    sub_1D560CDE8();

    v183 = sub_1D5615E18();

    v89 = v183;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v90 = v222;
  *&v45[v42[52]] = v89;
  (*(*(v81 - 8) + 16))(&v45[v42[54]], v82, v81);
  v91 = &v45[v42[55]];
  v92 = v188;
  *v91 = v189;
  v91[1] = v92;
  *&v45[v42[56]] = v187;
  *&v45[v42[57]] = v186;
  *&v45[v42[58]] = v185;
  *&v45[v42[59]] = v184;
  v93 = v223;
  v94 = v36;
  sub_1D4F39AB0(v90 + v223[24], v36, &qword_1EC7EB5B8, &unk_1D56206A0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v36, 1, v95) == 1)
  {
    sub_1D4E50004(v36, &qword_1EC7EB5B8, &unk_1D56206A0);
    v96 = 1;
    v97 = v191;
  }

  else
  {
    v97 = v191;
    sub_1D5610758();
    (*(*(v95 - 8) + 8))(v94, v95);
    v96 = 0;
  }

  __swift_storeEnumTagSinglePayload(v97, v96, 1, v221);
  sub_1D4E68940(v97, v45, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D50EEFD8(&qword_1EC7EDDD0, type metadata accessor for StorePlatformTVEpisode);
  v98 = v192;
  sub_1D5612A68();
  sub_1D4E68940(v98, &v45[v190], &qword_1EC7EDB98, L"X\b\a");
  v99 = v90[2];
  if (v99)
  {
    v99 = sub_1D511C2A4(v99);
  }

  v100 = v42[8];
  *&v45[v42[7]] = v99;
  v101 = &v45[v100];
  v102 = v90[4];
  *v101 = v90[3];
  *(v101 + 1) = v102;
  v103 = v90[5];

  if (v103)
  {
    v104 = sub_1D5259FF8(v103);
  }

  else
  {
    v104 = 0;
  }

  v105 = v42[15];
  *&v45[v42[9]] = v104;
  *&v45[v105] = *(v90 + v93[14]);
  v106 = *(v90 + v93[16]);
  v107 = v106 != 2 && (v106 & 1) != 0;
  *v85 = v107;
  v85[8] = 0;
  v108 = *(v90 + v93[21]);

  if (v108)
  {
    v109 = sub_1D55CE994(v108);
  }

  else
  {
    v109 = 0;
    v110 = 1;
  }

  v111 = v42[12];
  v112 = &v45[v42[11]];
  v113 = v42[14];
  v114 = v42[19];
  *v112 = v109;
  v112[8] = v110 & 1;
  v115 = v223;
  *&v45[v111] = *(v90 + v223[9]);
  *&v45[v113] = *(v90 + v115[10]);
  v116 = v115[18];

  sub_1D4F89DEC(v90 + v116, &v45[v193]);
  v45[v114] = sub_1D500E9C0() & 1;
  v117 = v115;
  v118 = *(v90 + v115[28]);
  if (v118 == 26)
  {
    v119 = 26;
  }

  else
  {
    sub_1D4FD3EB8(v118, v226);
    v119 = v226[0];
  }

  v120 = v194;
  v45[v86] = v119;
  v121 = v90 + v115[11];
  v122 = v199;
  if (v121[8] == 1)
  {
    v121 = v90 + v115[27];
    v123 = v121[8];
  }

  else
  {
    v123 = 0;
  }

  v124 = &v45[v42[27]];
  *v124 = *v121;
  v124[8] = v123;
  if (qword_1EC7E8B28 != -1)
  {
    swift_once();
  }

  v125 = sub_1D56109D8();
  v126 = __swift_project_value_buffer(v125, qword_1EC87BF50);
  v127 = v200;
  sub_1D50DF708(v126, v200);
  sub_1D4E68940(v127, &v45[v195], &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D4F39AB0(v90 + v117[22], v122, &qword_1EC7EB5B8, &unk_1D56206A0);
  if (__swift_getEnumTagSinglePayload(v122, 1, v95) == 1)
  {
    sub_1D4E50004(v122, &qword_1EC7EB5B8, &unk_1D56206A0);
    v128 = 1;
  }

  else
  {
    sub_1D5610758();
    (*(*(v95 - 8) + 8))(v122, v95);
    v128 = 0;
  }

  __swift_storeEnumTagSinglePayload(v120, v128, 1, v221);
  *&v221 = &v45[v42[35]];
  sub_1D4E68940(v120, &v45[v196], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v129 = v202;
  sub_1D56107A8();
  v130 = (v90 + v117[23]);
  v131 = v117;
  v132 = *v130;
  v133 = v130[1];
  v134 = v207;
  v135 = v204;
  v136 = v209;
  (*(v207 + 104))(v204, *MEMORY[0x1E6975DC8], v209);
  v137 = v201;
  sub_1D5610798();
  v138 = v222;
  (*(v134 + 8))(v135, v136);
  (*(v203 + 8))(v129, v206);
  sub_1D4E68940(v137, &v45[v197], &qword_1EC7EA3B8, &unk_1D561E370);
  v139 = v138 + v131[12];
  v140 = *v139;
  LOBYTE(v139) = v139[8];
  v141 = v221;
  *v221 = v140;
  *(v141 + 8) = v139;
  v142 = v131[8];
  v143 = v211;
  sub_1D4F39AB0(v138 + v142, v211, &qword_1EC7EC978, &unk_1D56222A0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  if (__swift_getEnumTagSinglePayload(v143, 1, v144) == 1)
  {
    sub_1D4E50004(v143, &qword_1EC7EC978, &unk_1D56222A0);
    v145 = 0;
    v146 = 0;
  }

  else
  {
    v147 = v213;
    sub_1D5610708();
    (*(*(v144 - 8) + 8))(v143, v144);
    v145 = sub_1D56128A8();
    v146 = v148;
    (*(v214 + 8))(v147, v215);
  }

  v149 = &v45[v42[37]];
  v150 = &v45[v42[39]];
  *v150 = v145;
  v150[1] = v146;
  v151 = v138[1];
  *v149 = *v138;
  *(v149 + 1) = v151;
  v152 = v138 + v142;
  v153 = v212;
  sub_1D4F39AB0(v152, v212, &qword_1EC7EC978, &unk_1D56222A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v153, 1, v144);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v153, &qword_1EC7EC978, &unk_1D56222A0);
    v155 = 0;
    v156 = 0;
  }

  else
  {
    v157 = v213;
    sub_1D5610708();
    (*(*(v144 - 8) + 8))(v153, v144);
    v155 = sub_1D56128B8();
    v156 = v158;
    (*(v214 + 8))(v157, v215);
  }

  v159 = v216;
  v160 = &v45[v42[40]];
  v161 = &v45[v42[41]];
  *v160 = v155;
  v160[1] = v156;
  v162 = v223;
  v163 = v138 + v223[13];
  v164 = *v163;
  LOBYTE(v163) = v163[8];
  *v161 = v164;
  v161[8] = v163;
  sub_1D4F39AB0(v138 + v162[26], v159, &qword_1EC7ED9B0, &unk_1D5631050);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  if (__swift_getEnumTagSinglePayload(v159, 1, v165) == 1)
  {
    sub_1D4E50004(v159, &qword_1EC7ED9B0, &unk_1D5631050);
    v221 = 0u;
    v216 = 0u;
    v215 = 0u;
    v214 = 0u;
  }

  else
  {
    v166 = sub_1D5138FDC(v226);
    (*(*(v165 - 8) + 8))(v159, v165, v166);
    v216 = v226[1];
    v221 = v226[0];
    v214 = v226[3];
    v215 = v226[2];
    v162 = v223;
  }

  v167 = &v45[v42[43]];
  v168 = v198;
  v169 = *(v198 + 1);
  v225[0] = *v198;
  v225[1] = v169;
  v170 = *(v198 + 3);
  v225[2] = *(v198 + 2);
  v225[3] = v170;
  sub_1D4E50004(v225, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v171 = v216;
  *v168 = v221;
  *(v168 + 1) = v171;
  v172 = v214;
  *(v168 + 2) = v215;
  *(v168 + 3) = v172;
  v173 = (v138 + v162[20]);
  v174 = v173[1];
  *v167 = *v173;
  *(v167 + 1) = v174;
  v175 = v162[29];

  sub_1D4F89DEC(v138 + v175, &v45[v205]);
  v176 = *(v138 + v162[15]);
  v177 = v217;
  if (v176)
  {
    v178 = v220;
    sub_1D50E02E8(v176, v217);
    v179 = 0;
  }

  else
  {
    v179 = 1;
    v178 = v220;
  }

  __swift_storeEnumTagSinglePayload(v177, v179, 1, v208);
  sub_1D4E68940(v177, &v45[v210], &qword_1EC7EA788, &unk_1D56223A0);
  v224[3] = v42;
  v224[4] = sub_1D50EEFD8(&qword_1EC7EDBA8, type metadata accessor for TVEpisodePropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v224);
  sub_1D50EF020(v45, boxed_opaque_existential_0, type metadata accessor for TVEpisodePropertyProvider);
  TVEpisode.init(propertyProvider:)(v224, v218);

  v181 = sub_1D560CD48();
  (*(*(v181 - 8) + 8))(v178, v181);
  sub_1D50EF07C(v45, type metadata accessor for TVEpisodePropertyProvider);
  return sub_1D50EF07C(v138, type metadata accessor for StorePlatformTVEpisode);
}

uint64_t sub_1D50DB960@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v160 = a3;
  v161 = a2;
  v159 = a4;
  v5 = sub_1D5610788();
  v157 = *(v5 - 8);
  v158 = v5;
  v6 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v155 = v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1D56107C8();
  v154 = *(v156 - 8);
  v8 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v153 = v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v152 = v129 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v151 = v129 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v129 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v150 = v129 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v148 = v129 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v149 = v129 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = v129 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v140 = v129 - v35;
  v36 = type metadata accessor for UploadedAudioPropertyProvider();
  v37 = *(*(v36 - 1) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v38 + 20);
  v42 = sub_1D56140F8();
  v137 = v41;
  v136 = v42;
  __swift_storeEnumTagSinglePayload(&v40[v41], 1, 1, v42);
  v43 = v36[6];
  v44 = type metadata accessor for AssetFlavors();
  v144 = v43;
  v141 = v44;
  __swift_storeEnumTagSinglePayload(&v40[v43], 1, 1, v44);
  v45 = v36[7];
  v46 = sub_1D560F928();
  v145 = v45;
  __swift_storeEnumTagSinglePayload(&v40[v45], 1, 1, v46);
  v47 = v36[8];
  v48 = sub_1D56106B8();
  v147 = v47;
  v130 = v48;
  __swift_storeEnumTagSinglePayload(&v40[v47], 1, 1, v48);
  v49 = v36[11];
  v50 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(&v40[v49], 1, 1, v50);
  v51 = v36[13];
  v52 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(&v40[v51], 1, 1, v52);
  v53 = v36[14];
  v54 = sub_1D56128E8();
  __swift_storeEnumTagSinglePayload(&v40[v53], 1, 1, v54);
  v55 = v36[15];
  v56 = sub_1D5610CB8();
  __swift_storeEnumTagSinglePayload(&v40[v55], 1, 1, v56);
  v57 = v36[16];
  v58 = sub_1D5613198();
  __swift_storeEnumTagSinglePayload(&v40[v57], 1, 1, v58);
  v59 = v36[17];
  v60 = sub_1D56134E8();
  __swift_storeEnumTagSinglePayload(&v40[v59], 1, 1, v60);
  v61 = v36[18];
  v62 = sub_1D5614A78();
  __swift_storeEnumTagSinglePayload(&v40[v61], 1, 1, v62);
  __swift_storeEnumTagSinglePayload(&v40[v36[19]], 1, 1, v50);
  v63 = v36[20];
  v64 = sub_1D56109F8();
  v143 = v63;
  __swift_storeEnumTagSinglePayload(&v40[v63], 1, 1, v64);
  v65 = v36[21];
  v66 = sub_1D560C0A8();
  v142 = v65;
  __swift_storeEnumTagSinglePayload(&v40[v65], 1, 1, v66);
  __swift_storeEnumTagSinglePayload(&v40[v36[22]], 1, 1, v52);
  v146 = v36[24];
  __swift_storeEnumTagSinglePayload(&v40[v146], 1, 1, v52);
  v67 = v36[26];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  __swift_storeEnumTagSinglePayload(&v40[v67], 1, 1, v68);
  v69 = v36[27];
  v70 = type metadata accessor for CuratorRelationshipProvider();
  __swift_storeEnumTagSinglePayload(&v40[v69], 1, 1, v70);
  if (qword_1EC7E8F18 != -1)
  {
    swift_once();
  }

  v138 = v32;
  v139 = v19;
  v71 = sub_1D560D9A8();
  v72 = __swift_project_value_buffer(v71, qword_1EC7F08A0);
  if (qword_1EC7E8DA0 != -1)
  {
    swift_once();
  }

  v73 = sub_1D5610088();
  v74 = __swift_project_value_buffer(v73, qword_1EC87C098);
  v75 = type metadata accessor for StorePlatformUploadedAudio();
  v76 = a1;
  sub_1D54301F4(v74, v72, *(a1 + v75[12]), *(a1 + v75[12] + 8), &v40[v36[29]]);
  v135 = sub_1D560FDE8();
  v134 = v77;
  sub_1D5614A88();
  v133 = sub_1D5614BD8();
  v132 = sub_1D5614BD8();
  v131 = sub_1D5614BD8();
  v78 = sub_1D5614BD8();
  v79 = &v40[v36[9]];
  *v79 = 0;
  v79[8] = 1;
  if (qword_1EC7E9010 != -1)
  {
    swift_once();
  }

  v80 = qword_1EC87C278;
  if (qword_1EC87C278 >> 62)
  {
    v127 = qword_1EC87C278 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C278 < 0)
    {
      v127 = qword_1EC87C278;
    }

    v129[1] = v127;
    sub_1D560CDE8();

    v128 = sub_1D5615E18();

    v80 = v128;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v40[v36[28]] = v80;
  (*(*(v73 - 8) + 16))(&v40[v36[30]], v74, v73);
  v81 = &v40[v36[31]];
  v82 = v134;
  *v81 = v135;
  v81[1] = v82;
  *&v40[v36[32]] = v133;
  *&v40[v36[33]] = v132;
  *&v40[v36[34]] = v131;
  *&v40[v36[35]] = v78;
  v83 = v76;
  v84 = v76[1];
  *v40 = *v76;
  *(v40 + 1) = v84;
  v85 = (v76 + v75[8]);
  if ((v85[1] & 1) == 0)
  {
    *v79 = *v85;
    v79[8] = 0;
  }

  v86 = v138;
  sub_1D4F39AB0(v76 + v75[5], v138, &qword_1EC7EB5B8, &unk_1D56206A0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, 1, v87);

  v89 = v139;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v86, &qword_1EC7EB5B8, &unk_1D56206A0);
    v90 = 1;
    v91 = v148;
    v92 = v149;
    v93 = v140;
  }

  else
  {
    v93 = v140;
    sub_1D5610758();
    (*(*(v87 - 8) + 8))(v86, v87);
    v90 = 0;
    v91 = v148;
    v92 = v149;
  }

  __swift_storeEnumTagSinglePayload(v93, v90, 1, v136);
  sub_1D4E68940(v93, &v40[v137], &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F39AB0(v83 + v75[6], v91, &qword_1EC7EF380, &unk_1D5677480);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  if (__swift_getEnumTagSinglePayload(v91, 1, v94) == 1)
  {
    sub_1D4E50004(v91, &qword_1EC7EF380, &unk_1D5677480);
    v95 = 1;
  }

  else
  {
    sub_1D536AC28();
    (*(*(v94 - 8) + 8))(v91, v94);
    v95 = 0;
  }

  __swift_storeEnumTagSinglePayload(v92, v95, 1, v141);
  sub_1D4E68940(v92, &v40[v144], &qword_1EC7ECC88, &unk_1D56310F0);
  sub_1D50EEFD8(&qword_1EC7EFC98, type metadata accessor for StorePlatformUploadedAudio);
  v96 = v150;
  sub_1D5612A68();
  sub_1D4E68940(v96, &v40[v145], &qword_1EC7EDB98, L"X\b\a");
  v97 = *(v83 + v75[9]);
  if (v97)
  {
    sub_1D5386528(v97, v89);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v89, 1, 1, v130);
  }

  v98 = v36[10];
  v99 = v36[12];
  v100 = v36[23];
  v101 = v36[25];
  sub_1D4E68940(v89, &v40[v147], &qword_1EC7EC478, &unk_1D56299D0);
  *&v40[v98] = *(v83 + v75[10]);
  *&v40[v99] = *(v83 + v75[11]);
  v102 = qword_1EC7E8B30;

  if (v102 != -1)
  {
    swift_once();
  }

  v150 = &v40[v101];
  v103 = &v40[v100];
  v104 = sub_1D56109D8();
  v105 = __swift_project_value_buffer(v104, qword_1EC87BF68);
  v106 = v151;
  sub_1D50DFA00(v105, v151);
  sub_1D4E68940(v106, &v40[v143], &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D4F89DEC(v83 + v75[16], &v40[v142]);
  v107 = (v83 + v75[15]);
  v108 = v107[1];
  *v103 = *v107;
  *(v103 + 1) = v108;

  v109 = v153;
  sub_1D56107A8();
  v110 = (v83 + v75[18]);
  v111 = *v110;
  v112 = v110[1];
  v113 = *MEMORY[0x1E6975DC8];
  v151 = v83;
  v115 = v157;
  v114 = v158;
  v116 = v75;
  v117 = v155;
  (*(v157 + 104))(v155, v113, v158);
  v118 = v152;
  sub_1D5610798();
  (*(v115 + 8))(v117, v114);
  (*(v154 + 8))(v109, v156);
  sub_1D4E68940(v118, &v40[v146], &qword_1EC7EA3B8, &unk_1D561E370);
  v119 = v151;
  v120 = (v151 + v116[19]);
  v121 = *v120;
  v122 = v120[1];
  v123 = v150;
  *v150 = v121;
  *(v123 + 1) = v122;
  v162[3] = v36;
  v162[4] = sub_1D50EEFD8(&qword_1EC7EF3E0, type metadata accessor for UploadedAudioPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v162);
  sub_1D50EF020(v40, boxed_opaque_existential_0, type metadata accessor for UploadedAudioPropertyProvider);

  UploadedAudio.init(propertyProvider:)(v162, v159);

  v125 = sub_1D560CD48();
  (*(*(v125 - 8) + 8))(v161, v125);
  sub_1D50EF07C(v119, type metadata accessor for StorePlatformUploadedAudio);
  return sub_1D50EF07C(v40, type metadata accessor for UploadedAudioPropertyProvider);
}

uint64_t sub_1D50DC860@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v160 = a3;
  v161 = a2;
  v159 = a4;
  v5 = sub_1D5610788();
  v157 = *(v5 - 8);
  v158 = v5;
  v6 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v155 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1D56107C8();
  v154 = *(v156 - 8);
  v8 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v152 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v153 = &v128 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v151 = &v128 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v150 = &v128 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v149 = &v128 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v148 = &v128 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v141 = &v128 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v136 = &v128 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v138 = &v128 - v33;
  v34 = type metadata accessor for UploadedVideoPropertyProvider();
  v35 = *(*(v34 - 1) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v36 + 20);
  v40 = sub_1D56140F8();
  v137 = v39;
  v135 = v40;
  __swift_storeEnumTagSinglePayload(&v38[v39], 1, 1, v40);
  v41 = v34[6];
  v42 = type metadata accessor for AssetFlavors();
  v144 = v41;
  v142 = v42;
  __swift_storeEnumTagSinglePayload(&v38[v41], 1, 1, v42);
  v43 = v34[7];
  v44 = sub_1D560F928();
  v145 = v43;
  __swift_storeEnumTagSinglePayload(&v38[v43], 1, 1, v44);
  v45 = v34[8];
  v46 = sub_1D56106B8();
  v147 = v45;
  v129 = v46;
  __swift_storeEnumTagSinglePayload(&v38[v45], 1, 1, v46);
  v47 = v34[11];
  v48 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(&v38[v47], 1, 1, v48);
  v49 = v34[13];
  v50 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(&v38[v49], 1, 1, v50);
  v51 = v34[14];
  v52 = sub_1D56128E8();
  __swift_storeEnumTagSinglePayload(&v38[v51], 1, 1, v52);
  v53 = v34[15];
  v54 = type metadata accessor for HLSAsset();
  __swift_storeEnumTagSinglePayload(&v38[v53], 1, 1, v54);
  v55 = v34[16];
  v56 = sub_1D5610CB8();
  __swift_storeEnumTagSinglePayload(&v38[v55], 1, 1, v56);
  v57 = v34[17];
  v58 = sub_1D560C0A8();
  v143 = v57;
  __swift_storeEnumTagSinglePayload(&v38[v57], 1, 1, v58);
  v59 = v34[18];
  v60 = sub_1D5613198();
  __swift_storeEnumTagSinglePayload(&v38[v59], 1, 1, v60);
  v61 = v34[19];
  v62 = sub_1D56134E8();
  __swift_storeEnumTagSinglePayload(&v38[v61], 1, 1, v62);
  v63 = v34[20];
  v64 = sub_1D5614A78();
  __swift_storeEnumTagSinglePayload(&v38[v63], 1, 1, v64);
  __swift_storeEnumTagSinglePayload(&v38[v34[21]], 1, 1, v48);
  v65 = v34[22];
  v66 = sub_1D56109F8();
  v139 = v65;
  __swift_storeEnumTagSinglePayload(&v38[v65], 1, 1, v66);
  v140 = v34[23];
  __swift_storeEnumTagSinglePayload(&v38[v140], 1, 1, v58);
  v146 = v34[25];
  __swift_storeEnumTagSinglePayload(&v38[v146], 1, 1, v50);
  v67 = v34[27];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  __swift_storeEnumTagSinglePayload(&v38[v67], 1, 1, v68);
  v69 = v34[28];
  v70 = type metadata accessor for CuratorRelationshipProvider();
  __swift_storeEnumTagSinglePayload(&v38[v69], 1, 1, v70);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v71 = sub_1D560D9A8();
  v72 = __swift_project_value_buffer(v71, qword_1EDD53CF0);
  if (qword_1EC7E9418 != -1)
  {
    swift_once();
  }

  v73 = sub_1D5610088();
  v74 = __swift_project_value_buffer(v73, qword_1EC87C508);
  v75 = type metadata accessor for StorePlatformUploadedVideo();
  sub_1D54301F4(v74, v72, *(a1 + v75[11]), *(a1 + v75[11] + 8), &v38[v34[31]]);
  v134 = sub_1D560FDE8();
  v133 = v76;
  sub_1D5614A88();
  v132 = sub_1D5614BD8();
  v131 = sub_1D5614BD8();
  v130 = sub_1D5614BD8();
  v77 = sub_1D5614BD8();
  v78 = &v38[v34[9]];
  *v78 = 0;
  v78[8] = 1;
  *&v38[v34[29]] = 0;
  if (qword_1EDD54CE8 != -1)
  {
    swift_once();
  }

  v79 = qword_1EDD76B50;
  if (qword_1EDD76B50 >> 62)
  {
    sub_1D560CDE8();

    v127 = sub_1D5615E18();

    v79 = v127;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v38[v34[30]] = v79;
  (*(*(v73 - 8) + 16))(&v38[v34[32]], v74, v73);
  v80 = &v38[v34[33]];
  v81 = v133;
  *v80 = v134;
  v80[1] = v81;
  *&v38[v34[34]] = v132;
  *&v38[v34[35]] = v131;
  *&v38[v34[36]] = v130;
  *&v38[v34[37]] = v77;
  v82 = a1;
  v83 = a1[1];
  *v38 = *a1;
  *(v38 + 1) = v83;
  v84 = v75;
  v85 = v136;
  sub_1D4F39AB0(v82 + v75[5], v136, &qword_1EC7EB5B8, &unk_1D56206A0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, 1, v86);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v85, &qword_1EC7EB5B8, &unk_1D56206A0);
    v88 = 1;
    v89 = v141;
    v90 = v138;
  }

  else
  {
    v90 = v138;
    sub_1D5610758();
    (*(*(v86 - 8) + 8))(v85, v86);
    v88 = 0;
    v89 = v141;
  }

  __swift_storeEnumTagSinglePayload(v90, v88, 1, v135);
  sub_1D4E68940(v90, &v38[v137], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v91 = v148;
  sub_1D4F39AB0(v82 + v75[6], v148, &qword_1EC7EF380, &unk_1D5677480);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  if (__swift_getEnumTagSinglePayload(v91, 1, v92) == 1)
  {
    sub_1D4E50004(v91, &qword_1EC7EF380, &unk_1D5677480);
    v93 = 1;
  }

  else
  {
    sub_1D536AC28();
    (*(*(v92 - 8) + 8))(v91, v92);
    v93 = 0;
  }

  __swift_storeEnumTagSinglePayload(v89, v93, 1, v142);
  sub_1D4E68940(v89, &v38[v144], &qword_1EC7ECC88, &unk_1D56310F0);
  sub_1D50EEFD8(&qword_1EC7EFCA0, type metadata accessor for StorePlatformUploadedVideo);
  v94 = v149;
  sub_1D5612A68();
  sub_1D4E68940(v94, &v38[v145], &qword_1EC7EDB98, L"X\b\a");
  v95 = *(v82 + v75[8]);
  v96 = v150;
  if (v95)
  {
    sub_1D5386528(v95, v150);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v150, 1, 1, v129);
  }

  v97 = v34[10];
  v98 = v34[12];
  v99 = v34[24];
  v100 = v34[26];
  sub_1D4E68940(v96, &v38[v147], &qword_1EC7EC478, &unk_1D56299D0);
  *&v38[v97] = *(v82 + v75[9]);
  *&v38[v98] = *(v82 + v75[10]);
  v101 = v75[12];

  sub_1D4F89DEC(v82 + v101, &v38[v143]);
  if (qword_1EC7E8B38 != -1)
  {
    swift_once();
  }

  v150 = &v38[v100];
  v102 = &v38[v99];
  v103 = sub_1D56109D8();
  v104 = __swift_project_value_buffer(v103, qword_1EC87BF80);
  v105 = v151;
  sub_1D50DFCF8(v104, v151);
  sub_1D4E68940(v105, &v38[v139], &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D4F89DEC(v82 + v75[16], &v38[v140]);
  v106 = (v82 + v75[15]);
  v107 = v106[1];
  *v102 = *v106;
  *(v102 + 1) = v107;

  v108 = v152;
  sub_1D56107A8();
  v109 = (v82 + v75[18]);
  v110 = *v109;
  v111 = v109[1];
  v112 = *MEMORY[0x1E6975DC8];
  v114 = v157;
  v113 = v158;
  v115 = *(v157 + 104);
  v151 = v82;
  v116 = v155;
  v115(v155, v112, v158);
  v117 = v84;
  v118 = v153;
  sub_1D5610798();
  (*(v114 + 8))(v116, v113);
  (*(v154 + 8))(v108, v156);
  sub_1D4E68940(v118, &v38[v146], &qword_1EC7EA3B8, &unk_1D561E370);
  v119 = v151;
  v120 = (v151 + v117[19]);
  v121 = *v120;
  v122 = v120[1];
  v123 = v150;
  *v150 = v121;
  *(v123 + 1) = v122;
  v162[3] = v34;
  v162[4] = sub_1D50EEFD8(&qword_1EDD54CD8, type metadata accessor for UploadedVideoPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v162);
  sub_1D50EF020(v38, boxed_opaque_existential_0, type metadata accessor for UploadedVideoPropertyProvider);

  UploadedVideo.init(propertyProvider:)(v162, v159);

  v125 = sub_1D560CD48();
  (*(*(v125 - 8) + 8))(v161, v125);
  sub_1D50EF07C(v119, type metadata accessor for StorePlatformUploadedVideo);
  return sub_1D50EF07C(v38, type metadata accessor for UploadedVideoPropertyProvider);
}

uint64_t sub_1D50DD78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v61 = a2;
  v62 = a4;
  v5 = sub_1D5613838();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StorePlatformSong();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - v12;
  v13 = sub_1D560CD48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D560EEA8();
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StorePlatformMusicVideo();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - v25;
  v27 = type metadata accessor for StorePlatformPlaylistEntry();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D5613D28();
  v59 = *(v31 - 8);
  v32 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_1D50EF020(a1, v30, type metadata accessor for StorePlatformPlaylistEntry);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D50EF0FC(v30, v26, type metadata accessor for StorePlatformMusicVideo);
      sub_1D50EF020(v26, v24, type metadata accessor for StorePlatformMusicVideo);
      v44 = v58;
      v45 = v61;
      (*(v14 + 16))(v58, v61, v13);
      v46 = v50;
      sub_1D50D8230(v24, v44, v60, v50);
      (*(v14 + 8))(v45, v13);
      sub_1D50EF07C(v35, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v26, type metadata accessor for StorePlatformMusicVideo);
      (*(v51 + 32))(v34, v46, v52);
      v43 = MEMORY[0x1E6976DF8];
      goto LABEL_5;
    case 2u:
      v38 = v54;
      sub_1D50EF0FC(v30, v54, type metadata accessor for StorePlatformSong);
      v39 = v53;
      sub_1D50EF020(v38, v53, type metadata accessor for StorePlatformSong);
      v40 = v58;
      v41 = v61;
      (*(v14 + 16))(v58, v61, v13);
      v42 = v55;
      sub_1D50D91A4(v39, v40, v60, v55);
      (*(v14 + 8))(v41, v13);
      sub_1D50EF07C(v35, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v38, type metadata accessor for StorePlatformSong);
      (*(v56 + 32))(v34, v42, v57);
      v43 = MEMORY[0x1E6976E18];
LABEL_5:
      v47 = v59;
      (*(v59 + 104))(v34, *v43, v31);
      v37 = v62;
      (*(v47 + 32))(v62, v34, v31);
      v36 = 0;
      break;
    default:

      (*(v14 + 8))(v61, v13);
      sub_1D50EF07C(a1, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v30, type metadata accessor for StorePlatformPlaylistEntry);
      v36 = 1;
      v37 = v62;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v37, v36, 1, v31);
}

void *sub_1D50DDDD4(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v7 = a3 + 32;
  v10 = a3 + 32;
LABEL_2:
  v8 = v7 + 40 * v5;
  while (1)
  {
    if (v6 == v5)
    {
      return OUTLINED_FUNCTION_31_27();
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    result = v4(&v11, v8);
    if (v3)
    {

      return OUTLINED_FUNCTION_31_27();
    }

    ++v5;
    v8 += 40;
    if (v11)
    {
      MEMORY[0x1DA6EAF30](result);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      result = sub_1D56151F8();
      v5 = v9;
      v7 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D50DDF14()
{
  OUTLINED_FUNCTION_32_27();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_29_28();
  v8 = sub_1D560F148();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v30 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  v29 = v14;
  v15 = 0;
  v16 = *(v1 + 16);
  v31 = (v17 + 32);
  v32 = MEMORY[0x1E69E7CC0];
  while (v16 != v15)
  {
    v18 = *(sub_1D5612478() - 8);
    v2(v1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15);
    if (v0)
    {

      return OUTLINED_FUNCTION_31_27();
    }

    if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
    {
      sub_1D4E50004(v3, &unk_1EC7F1970, &qword_1D561F4A0);
      ++v15;
    }

    else
    {
      v19 = *v31;
      (*v31)(v29, v3, v8);
      v19(v30, v29, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_30();
        sub_1D4F007F0();
        v32 = v25;
      }

      OUTLINED_FUNCTION_35_27();
      if (v21)
      {
        v28 = v20;
        sub_1D4F007F0();
        v20 = v28;
        v32 = v26;
      }

      ++v15;
      *(v32 + 16) = v20;
      OUTLINED_FUNCTION_25_34();
      v19(v22 + v23 * v24, v30, v8);
    }
  }

  return OUTLINED_FUNCTION_31_27();
}

uint64_t sub_1D50DE1C4()
{
  OUTLINED_FUNCTION_32_27();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_29_28();
  v8 = type metadata accessor for GenericMusicItem();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v29 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  v28 = v14;
  v15 = 0;
  v16 = *(v1 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  while (v16 != v15)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD80, &qword_1D561F320) - 8);
    v2(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15);
    if (v0)
    {

      return OUTLINED_FUNCTION_31_27();
    }

    if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
    {
      sub_1D4E50004(v3, &qword_1EC7EA608, &qword_1D561C510);
      ++v15;
    }

    else
    {
      sub_1D50EF0FC(v3, v28, type metadata accessor for GenericMusicItem);
      sub_1D50EF0FC(v28, v29, type metadata accessor for GenericMusicItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_30();
        sub_1D4F0136C();
        v30 = v24;
      }

      OUTLINED_FUNCTION_35_27();
      if (v19)
      {
        v27 = v18;
        sub_1D4F0136C();
        v18 = v27;
        v30 = v25;
      }

      ++v15;
      *(v30 + 16) = v18;
      OUTLINED_FUNCTION_25_34();
      sub_1D50EF0FC(v23, v20 + v21 * v22, type metadata accessor for GenericMusicItem);
    }
  }

  return OUTLINED_FUNCTION_31_27();
}

uint64_t sub_1D50DE474(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v34[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_1D5613D28();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v28 - v14;
  v30 = v15;
  v16 = *(a3 + 16);
  v32 = (v15 + 32);
  v17 = (a3 + 40);
  v18 = MEMORY[0x1E69E7CC0];
  v31 = a1;
  if (v16)
  {
    while (1)
    {
      v19 = *v17;
      v34[0] = *(v17 - 1);
      v34[1] = v19;

      a1(v34);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        sub_1D4E50004(v9, &qword_1EC7EA888, &qword_1D563B8C0);
      }

      else
      {
        v20 = v10;
        v21 = *v32;
        v22 = v29;
        (*v32)(v29, v9, v20);
        v21(v33, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v18 + 16);
          sub_1D4F01718();
          v18 = v25;
        }

        v23 = *(v18 + 16);
        if (v23 >= *(v18 + 24) >> 1)
        {
          sub_1D4F01718();
          v18 = v26;
        }

        *(v18 + 16) = v23 + 1;
        v21((v18 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23), v33, v20);
        v10 = v20;
        a1 = v31;
      }

      v17 += 2;
      if (!--v16)
      {
        return v18;
      }
    }
  }

  return v18;
}

uint64_t sub_1D50DE744(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v29 = type metadata accessor for TVEpisode();
  v25 = *(v29 - 8);
  v10 = *(v25 + 64);
  v11 = MEMORY[0x1EEE9AC00](v29);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *(a3 + 16);
  v16 = (a3 + 40);
  v17 = MEMORY[0x1E69E7CC0];
  v26 = a1;
  if (v15)
  {
    while (1)
    {
      v18 = *v16;
      v28[0] = *(v16 - 1);
      v28[1] = v18;

      a1(v28);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v9, 1, v29) == 1)
      {
        sub_1D4E50004(v9, &qword_1EC7EA880, &unk_1D561CEE0);
      }

      else
      {
        sub_1D50EF0FC(v9, v14, type metadata accessor for TVEpisode);
        sub_1D50EF0FC(v14, v27, type metadata accessor for TVEpisode);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v17 + 16);
          sub_1D4F017F0();
          v17 = v21;
        }

        v19 = *(v17 + 16);
        if (v19 >= *(v17 + 24) >> 1)
        {
          sub_1D4F017F0();
          v17 = v22;
        }

        *(v17 + 16) = v19 + 1;
        sub_1D50EF0FC(v27, v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19, type metadata accessor for TVEpisode);
        a1 = v26;
      }

      v16 += 2;
      if (!--v15)
      {
        return v17;
      }
    }
  }

  return v17;
}

uint64_t sub_1D50DE9F8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v29 = type metadata accessor for TVSeason();
  v25 = *(v29 - 8);
  v10 = *(v25 + 64);
  v11 = MEMORY[0x1EEE9AC00](v29);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *(a3 + 16);
  v16 = (a3 + 40);
  v17 = MEMORY[0x1E69E7CC0];
  v26 = a1;
  if (v15)
  {
    while (1)
    {
      v18 = *v16;
      v28[0] = *(v16 - 1);
      v28[1] = v18;

      a1(v28);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v9, 1, v29) == 1)
      {
        sub_1D4E50004(v9, &qword_1EC7EA878, &unk_1D5634790);
      }

      else
      {
        sub_1D50EF0FC(v9, v14, type metadata accessor for TVSeason);
        sub_1D50EF0FC(v14, v27, type metadata accessor for TVSeason);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v17 + 16);
          sub_1D4F018C8();
          v17 = v21;
        }

        v19 = *(v17 + 16);
        if (v19 >= *(v17 + 24) >> 1)
        {
          sub_1D4F018C8();
          v17 = v22;
        }

        *(v17 + 16) = v19 + 1;
        sub_1D50EF0FC(v27, v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19, type metadata accessor for TVSeason);
        a1 = v26;
      }

      v16 += 2;
      if (!--v15)
      {
        return v17;
      }
    }
  }

  return v17;
}

void *sub_1D50DECAC(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v6)
    {
      return OUTLINED_FUNCTION_31_27();
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB088, &qword_1D56347A0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = v5(&v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return OUTLINED_FUNCTION_31_27();
    }

    ++v6;
    if (v12)
    {
      MEMORY[0x1DA6EAF30](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      result = sub_1D56151F8();
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1D50DEE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D560D9A8();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D56109F8();
  v27 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  v19 = type metadata accessor for StorePlatformMusicMovie();
  v20 = sub_1D50EEFD8(&qword_1EC7EFC08, type metadata accessor for StorePlatformMusicMovie);
  result = MEMORY[0x1DA6E8800](v19, v20);
  if (result)
  {
    sub_1D501F124(v12);
    if (qword_1EC7E9408 != -1)
    {
      swift_once();
    }

    v22 = sub_1D5610088();
    v23 = __swift_project_value_buffer(v22, qword_1EC87C4F0);
    sub_1D54301F4(v23, v12, *(v3 + *(v19 + 56)), *(v3 + *(v19 + 56) + 8), v17);
    (*(v25 + 8))(v12, v26);
    sub_1D560D608();
    (*(v14 + 8))(v17, v13);
    v24 = v27;
    sub_1D4E50004(v27, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    return sub_1D4F39A1C(v8, v24, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DF118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D560D9A8();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D56109F8();
  v27 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  v19 = type metadata accessor for StorePlatformMusicVideo();
  v20 = sub_1D50EEFD8(&qword_1EC7EFC20, type metadata accessor for StorePlatformMusicVideo);
  result = MEMORY[0x1DA6E8800](v19, v20);
  if (result)
  {
    sub_1D501F124(v12);
    if (qword_1EC7E94F0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D5610088();
    v23 = __swift_project_value_buffer(v22, qword_1EC87C588);
    sub_1D54301F4(v23, v12, *(v3 + *(v19 + 64)), *(v3 + *(v19 + 64) + 8), v17);
    (*(v25 + 8))(v12, v26);
    sub_1D560D608();
    (*(v14 + 8))(v17, v13);
    v24 = v27;
    sub_1D4E50004(v27, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    return sub_1D4F39A1C(v8, v24, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DF410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D560D9A8();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D56109F8();
  v27 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  v19 = type metadata accessor for StorePlatformSong();
  v20 = sub_1D50EEFD8(&qword_1EC7EFC50, type metadata accessor for StorePlatformSong);
  result = MEMORY[0x1DA6E8800](v19, v20);
  if (result)
  {
    sub_1D501F124(v12);
    if (qword_1EC7E8DB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D5610088();
    v23 = __swift_project_value_buffer(v22, qword_1EC87C0B0);
    sub_1D54301F4(v23, v12, *(v3 + *(v19 + 84)), *(v3 + *(v19 + 84) + 8), v17);
    (*(v25 + 8))(v12, v26);
    sub_1D560D608();
    (*(v14 + 8))(v17, v13);
    v24 = v27;
    sub_1D4E50004(v27, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    return sub_1D4F39A1C(v8, v24, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DF708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D560D9A8();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D56109F8();
  v27 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  v19 = type metadata accessor for StorePlatformTVEpisode();
  v20 = sub_1D50EEFD8(&qword_1EC7EDDD0, type metadata accessor for StorePlatformTVEpisode);
  result = MEMORY[0x1DA6E8800](v19, v20);
  if (result)
  {
    sub_1D501F124(v12);
    if (qword_1EC7E8B08 != -1)
    {
      swift_once();
    }

    v22 = sub_1D5610088();
    v23 = __swift_project_value_buffer(v22, qword_1EC87BF30);
    sub_1D54301F4(v23, v12, *(v3 + *(v19 + 68)), *(v3 + *(v19 + 68) + 8), v17);
    (*(v25 + 8))(v12, v26);
    sub_1D560D608();
    (*(v14 + 8))(v17, v13);
    v24 = v27;
    sub_1D4E50004(v27, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    return sub_1D4F39A1C(v8, v24, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DFA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D560D9A8();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D56109F8();
  v27 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  v19 = type metadata accessor for StorePlatformUploadedAudio();
  v20 = sub_1D50EEFD8(&qword_1EC7EFC98, type metadata accessor for StorePlatformUploadedAudio);
  result = MEMORY[0x1DA6E8800](v19, v20);
  if (result)
  {
    sub_1D501F124(v12);
    if (qword_1EC7E8DA0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D5610088();
    v23 = __swift_project_value_buffer(v22, qword_1EC87C098);
    sub_1D54301F4(v23, v12, *(v3 + *(v19 + 48)), *(v3 + *(v19 + 48) + 8), v17);
    (*(v25 + 8))(v12, v26);
    sub_1D560D608();
    (*(v14 + 8))(v17, v13);
    v24 = v27;
    sub_1D4E50004(v27, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    return sub_1D4F39A1C(v8, v24, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DFCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D560D9A8();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D56109F8();
  v27 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  v19 = type metadata accessor for StorePlatformUploadedVideo();
  v20 = sub_1D50EEFD8(&qword_1EC7EFCA0, type metadata accessor for StorePlatformUploadedVideo);
  result = MEMORY[0x1DA6E8800](v19, v20);
  if (result)
  {
    sub_1D501F124(v12);
    if (qword_1EC7E9418 != -1)
    {
      swift_once();
    }

    v22 = sub_1D5610088();
    v23 = __swift_project_value_buffer(v22, qword_1EC87C508);
    sub_1D54301F4(v23, v12, *(v3 + *(v19 + 44)), *(v3 + *(v19 + 44) + 8), v17);
    (*(v25 + 8))(v12, v26);
    sub_1D560D608();
    (*(v14 + 8))(v17, v13);
    v24 = v27;
    sub_1D4E50004(v27, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    return sub_1D4F39A1C(v8, v24, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DFFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D560D9A8();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D56109F8();
  v27 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  v19 = type metadata accessor for StorePlatformAlbum();
  v20 = sub_1D50EEFD8(&qword_1EC7EFBF8, type metadata accessor for StorePlatformAlbum);
  result = MEMORY[0x1DA6E8800](v19, v20);
  if (result)
  {
    sub_1D501F124(v12);
    if (qword_1EC7E9510 != -1)
    {
      swift_once();
    }

    v22 = sub_1D5610088();
    v23 = __swift_project_value_buffer(v22, qword_1EC87C5B0);
    sub_1D54301F4(v23, v12, *(v3 + *(v19 + 84)), *(v3 + *(v19 + 84) + 8), v17);
    (*(v25 + 8))(v12, v26);
    sub_1D560D608();
    (*(v14 + 8))(v17, v13);
    v24 = v27;
    sub_1D4E50004(v27, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    return sub_1D4F39A1C(v8, v24, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50E02E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v88[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v117 = v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v92 = v88 - v8;
  v116 = sub_1D560F148();
  v131 = *(v116 - 8);
  v9 = *(v131 + 64);
  v10 = MEMORY[0x1EEE9AC00](v116);
  v115 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v91 = v88 - v12;
  v13 = sub_1D560E728();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1D560D9A8();
  v16 = *(v128 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v128);
  v113 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v130 = v88 - v20;
  v112 = sub_1D560D838();
  v129 = *(v112 - 8);
  v21 = v129[8];
  v22 = MEMORY[0x1EEE9AC00](v112);
  v111 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v110 = v88 - v24;
  v109 = sub_1D56120A8();
  v25 = *(v109 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D5610088();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v127 = v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v88 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v107 = v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = v88 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = v88 - v42;
  v44 = sub_1D5613C48();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v122 = v88 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for StorePlatformGenreAttribute();
  v48 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v118 = v88 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v51 = *(a1 + 16);
    v52 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v121 = *(v49 + 72);
    v126 = (v29 + 8);
    v90 = (v131 + 16);
    v101 = (v16 + 16);
    v100 = *MEMORY[0x1E6975048];
    v89 = (v131 + 8);
    v99 = (v129 + 4);
    v98 = (v16 + 8);
    v97 = (v25 + 16);
    v96 = (v25 + 8);
    v93 = v45;
    v120 = (v45 + 32);
    v95 = xmmword_1D561C050;
    v129 = MEMORY[0x1E69E7CC0];
    v119 = v28;
    v103 = v43;
    v53 = v118;
    v54 = v51;
    v105 = v44;
    v104 = v41;
    v102 = (v29 + 16);
    v94 = v34;
    do
    {
      v131 = v52;
      sub_1D50EF020(v52, v53, type metadata accessor for StorePlatformGenreAttribute);
      __swift_storeEnumTagSinglePayload(v41, 1, 1, v44);
      if (v53[1])
      {
        v125 = v54;
        v55 = *v53;
        sub_1D560FFC8();
        sub_1D560D918();
        v56 = v127;
        sub_1D560FE68();
        v57 = sub_1D4F3B22C();
        v124 = *v126;
        v124(v56, v28);
        if (v57)
        {
          (*v101)(v113, v130, v128);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
          v58 = sub_1D560DB08();
          v59 = *(v58 - 8);
          v60 = *(v59 + 72);
          v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
          v62 = swift_allocObject();
          *(v62 + 16) = v95;
          (*(v59 + 104))(v62 + v61, v100, v58);

          sub_1D560E718();
          v63 = v111;
          sub_1D560D748();
          v64 = v34;
          v65 = v102;
        }

        else
        {
          v65 = v102;
          v66 = v92;
          (*v102)(v92, v34, v28);
          __swift_storeEnumTagSinglePayload(v66, 0, 1, v28);

          v67 = v91;
          sub_1D560F128();
          (*v90)(v115, v67, v116);
          v64 = v34;
          (*v101)(v113, v130, v128);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
          v68 = sub_1D560DB08();
          v69 = *(v68 - 8);
          v70 = *(v69 + 72);
          v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
          v72 = swift_allocObject();
          *(v72 + 16) = v95;
          (*(v69 + 104))(v72 + v71, v100, v68);
          sub_1D560E718();
          v63 = v111;
          sub_1D560D798();
          v73 = v67;
          v28 = v119;
          (*v89)(v73, v116);
        }

        (*v99)(v110, v63, v112);
        (*v98)(v130, v128);
        (*v65)(v127, v64, v28);
        v123 = sub_1D560FDE8();
        sub_1D5614A88();
        sub_1D5614BD8();
        sub_1D5614BD8();
        sub_1D5614BD8();
        sub_1D5614BD8();
        v74 = v108;
        v28 = v119;
        sub_1D5612018();
        v53 = v118;
        v75 = *(v118 + 2);
        v76 = *(v118 + 3);

        sub_1D5612078();
        sub_1D4F39AB0(v53 + *(v106 + 24), v117, &unk_1EC7E9CA8, &unk_1D561D1D0);
        sub_1D5612068();
        v77 = v109;
        v132[3] = v109;
        v132[4] = MEMORY[0x1E6976410];
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v132);
        (*v97)(boxed_opaque_existential_0, v74, v77);
        v79 = v107;
        sub_1D5613BA8();
        (*v96)(v74, v77);
        v34 = v94;
        v124(v94, v28);
        v41 = v104;
        sub_1D4E50004(v104, &qword_1EC7EA898, &unk_1D561CF00);
        v44 = v105;
        __swift_storeEnumTagSinglePayload(v79, 0, 1, v105);
        sub_1D4F39A1C(v79, v41, &qword_1EC7EA898, &unk_1D561CF00);
        v43 = v103;
        v54 = v125;
      }

      sub_1D4F39A1C(v41, v43, &qword_1EC7EA898, &unk_1D561CF00);
      sub_1D50EF07C(v53, type metadata accessor for StorePlatformGenreAttribute);
      if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
      {
        sub_1D4E50004(v43, &qword_1EC7EA898, &unk_1D561CF00);
      }

      else
      {
        v80 = *v120;
        (*v120)(v122, v43, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = v129[2];
          sub_1D4EFFA84();
          v129 = v85;
        }

        v81 = v129[2];
        v82 = v93;
        if (v81 >= v129[3] >> 1)
        {
          sub_1D4EFFA84();
          v82 = v93;
          v129 = v86;
        }

        v83 = v129;
        v129[2] = v81 + 1;
        v80(&v83[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81], v122, v44);
      }

      v52 = v131 + v121;
      --v54;
    }

    while (v54);
  }

  else
  {
    v129 = MEMORY[0x1E69E7CC0];
  }

  v132[0] = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBE8, &unk_1D56346B0);
  sub_1D50EEF84(&qword_1EC7EFBF0, &qword_1EC7EFBE8, &unk_1D56346B0);
  return sub_1D560DAD8();
}

uint64_t sub_1D50E11B0()
{
  v1 = v0;
  OUTLINED_FUNCTION_58_0();
  v3 = *(v2 + 120);
  v4 = *(v0 + v3);

  sub_1D560F5F8();

  v5 = *(v1 + v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  sub_1D560F608();
}

uint64_t sub_1D50E1268@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73[8] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = type metadata accessor for StorePlatformGenericMusicItem();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1D560CD48();
  v13 = OUTLINED_FUNCTION_4(v12);
  v68 = v14;
  v69 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = v4[10];
  v21 = v4[11];
  v22 = v4[12];
  v23 = type metadata accessor for StorePlatformItemPropertyProvider.LoadingState();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v70 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v65 - v31);
  v33 = *&v2[v4[15]];

  sub_1D560F5E8();

  v34 = *(*v2 + 112);
  swift_beginAccess();
  v71 = v26;
  (*(v26 + 16))(v32, &v2[v34], v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_1D4F39A1C(v32, a1, &qword_1EC7EFBB8, &qword_1D5634638);
  }

  else
  {
    v67 = a1;
    v36 = *v32;
    v37 = objc_opt_self();
    v38 = sub_1D5614BA8();

    v73[0] = 0;
    v39 = [v37 dataWithJSONObject:v38 options:0 error:v73];

    v40 = v73[0];
    if (v39)
    {
      v41 = sub_1D560C198();
      v43 = v42;

      v44 = sub_1D560B9C8();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D50EEFD8(&qword_1EC7EFBC8, type metadata accessor for StorePlatformGenericMusicItem);
      v66 = v41;
      sub_1D560B948();
      sub_1D560B978();
      v60 = sub_1D560B958();
      sub_1D50E18E0(v19, v60, v73);

      (*(v68 + 8))(v19, v69);
      __swift_project_boxed_opaque_existential_1(v73, v73[3]);
      v61 = v67;
      sub_1D5612AF8();

      sub_1D4E55E1C(v66, v43);
      sub_1D50EF07C(v11, type metadata accessor for StorePlatformGenericMusicItem);
      v62 = sub_1D5611AB8();
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    else
    {
      v47 = v40;
      v48 = sub_1D560BE98();

      swift_willThrow();
      if (qword_1EDD5D8A8 != -1)
      {
        OUTLINED_FUNCTION_18();
      }

      v49 = sub_1D560C758();
      __swift_project_value_buffer(v49, qword_1EDD76DC8);
      v50 = v48;
      v51 = sub_1D560C738();
      v52 = sub_1D56156C8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v73[0] = v54;
        *v53 = 136446210;
        v72 = v48;
        v55 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
        v56 = sub_1D5614DB8();
        v58 = sub_1D4E6835C(v56, v57, v73);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_1D4E3F000, v51, v52, "Failed to convert store platform dictionary to generic music item. Error: %{public}s.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x1DA6ED200](v54, -1, -1);
        MEMORY[0x1DA6ED200](v53, -1, -1);
      }

      else
      {
      }

      v59 = sub_1D5611AB8();
      v61 = v67;
      __swift_storeEnumTagSinglePayload(v67, 1, 1, v59);
    }

    v63 = v70;
    sub_1D4F39AB0(v61, v70, &qword_1EC7EFBB8, &qword_1D5634638);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v71 + 40))(&v2[v34], v63, v23);
    result = swift_endAccess();
  }

  v64 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D50E18E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v348 = a3;
  v349 = a2;
  v346 = a1;
  v4 = type metadata accessor for StorePlatformUploadedVideo();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v342 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_2();
  v343 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = type metadata accessor for StorePlatformUploadedAudio();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v340 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v341 = v17;
  OUTLINED_FUNCTION_70_0();
  v18 = type metadata accessor for StorePlatformTVShow();
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v338 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v339 = v24;
  OUTLINED_FUNCTION_70_0();
  v25 = type metadata accessor for StorePlatformTVSeason();
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v336 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_2();
  v337 = v31;
  OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for StorePlatformTVEpisode();
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v334 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  v335 = v38;
  OUTLINED_FUNCTION_70_0();
  v39 = type metadata accessor for StorePlatformStation();
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13();
  v332 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_2();
  v333 = v45;
  OUTLINED_FUNCTION_70_0();
  v46 = type metadata accessor for StorePlatformSong();
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  v330 = v50;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_2();
  v331 = v52;
  OUTLINED_FUNCTION_70_0();
  v53 = type metadata accessor for StorePlatformSocialProfile();
  v54 = OUTLINED_FUNCTION_22(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_2();
  v329 = v58;
  OUTLINED_FUNCTION_70_0();
  v59 = type metadata accessor for StorePlatformRecordLabel();
  v60 = OUTLINED_FUNCTION_22(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_2();
  v328[10] = v64;
  OUTLINED_FUNCTION_70_0();
  v65 = type metadata accessor for StorePlatformRadioShow();
  v66 = OUTLINED_FUNCTION_22(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_2();
  v328[8] = v70;
  OUTLINED_FUNCTION_70_0();
  v71 = type metadata accessor for StorePlatformPlaylist();
  v72 = OUTLINED_FUNCTION_22(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_2();
  v328[6] = v76;
  OUTLINED_FUNCTION_70_0();
  v77 = type metadata accessor for StorePlatformMusicVideo();
  v78 = OUTLINED_FUNCTION_22(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  v328[4] = v82;
  OUTLINED_FUNCTION_70_0();
  v83 = type metadata accessor for StorePlatformMusicMovie();
  v84 = OUTLINED_FUNCTION_22(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13_2();
  v328[2] = v88;
  OUTLINED_FUNCTION_70_0();
  v89 = type metadata accessor for StorePlatformGenre();
  v90 = OUTLINED_FUNCTION_22(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v93);
  v95 = v328 - v94;
  v96 = type metadata accessor for StorePlatformCurator();
  v97 = OUTLINED_FUNCTION_22(v96);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_59_0();
  v102 = v100 - v101;
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_23_34();
  v104 = type metadata accessor for StorePlatformArtist();
  v105 = OUTLINED_FUNCTION_22(v104);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_59_0();
  v110 = v108 - v109;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v328 - v112;
  v345 = sub_1D560CD48();
  v114 = OUTLINED_FUNCTION_4(v345);
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_5();
  v347 = v118 - v117;
  OUTLINED_FUNCTION_70_0();
  v119 = type metadata accessor for StorePlatformAlbum();
  v120 = OUTLINED_FUNCTION_22(v119);
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_59_0();
  v125 = v123 - v124;
  MEMORY[0x1EEE9AC00](v126);
  v128 = v328 - v127;
  v129 = type metadata accessor for StorePlatformGenericMusicItem();
  v130 = OUTLINED_FUNCTION_14(v129);
  v132 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_5();
  v135 = v134 - v133;
  sub_1D50EF020(v344, v134 - v133, type metadata accessor for StorePlatformGenericMusicItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v263 = OUTLINED_FUNCTION_11_49();
      sub_1D50EF0FC(v263, v113, v264);
      sub_1D50EF020(v113, v110, type metadata accessor for StorePlatformArtist);
      v265 = OUTLINED_FUNCTION_34_25();
      v266(v265);
      v267 = sub_1D5613EF8();
      OUTLINED_FUNCTION_15_41(v267, MEMORY[0x1E6976F10]);
      OUTLINED_FUNCTION_9_51();
      sub_1D50E6B20(v110, v102, v125, v135);
      v143 = type metadata accessor for StorePlatformArtist;
      v144 = v113;
      return sub_1D50EF07C(v144, v143);
    case 2u:
      v218 = OUTLINED_FUNCTION_11_49();
      sub_1D50EF0FC(v218, v3, v219);
      sub_1D50EF020(v3, v102, type metadata accessor for StorePlatformCurator);
      v220 = OUTLINED_FUNCTION_1_76();
      v221(v220);
      v222 = sub_1D56141F8();
      OUTLINED_FUNCTION_15_41(v222, MEMORY[0x1E6977030]);
      OUTLINED_FUNCTION_9_51();
      v223 = OUTLINED_FUNCTION_33_31();
      sub_1D50E75D8(v223, v224, v225, v226);
      v143 = type metadata accessor for StorePlatformCurator;
      v144 = v3;
      return sub_1D50EF07C(v144, v143);
    case 3u:
      v239 = OUTLINED_FUNCTION_11_49();
      sub_1D50EF0FC(v239, v95, v240);
      OUTLINED_FUNCTION_122_0(&v349);
      sub_1D50EF020(v241, v242, v243);
      v244 = OUTLINED_FUNCTION_1_76();
      v245(v244);
      v246 = sub_1D5613C48();
      OUTLINED_FUNCTION_15_41(v246, MEMORY[0x1E6976DB8]);
      OUTLINED_FUNCTION_9_51();
      v247 = OUTLINED_FUNCTION_33_31();
      sub_1D50E8254(v247, v248, v249, v250);
      v143 = type metadata accessor for StorePlatformGenre;
      v144 = v95;
      return sub_1D50EF07C(v144, v143);
    case 4u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0(&v351);
      sub_1D50EF0FC(v181, v182, v183);
      v184 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v184, v185, v350);
      v186 = OUTLINED_FUNCTION_1_76();
      v187(v186);
      v188 = type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_19_37(v188);
      v189 = sub_1D50EEFD8(&qword_1EDD59300, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_26_33(v189);
      OUTLINED_FUNCTION_9_51();
      v190 = OUTLINED_FUNCTION_3_68();
      sub_1D50D6BFC(v190, v191, v192, v193);
      v157 = type metadata accessor for StorePlatformMusicMovie;
      goto LABEL_19;
    case 5u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0(&v353);
      sub_1D50EF0FC(v268, v269, v270);
      v271 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v271, v272, &v352);
      v273 = OUTLINED_FUNCTION_1_76();
      v274(v273);
      v275 = sub_1D560EEA8();
      OUTLINED_FUNCTION_15_41(v275, MEMORY[0x1E69754C8]);
      OUTLINED_FUNCTION_9_51();
      v276 = OUTLINED_FUNCTION_3_68();
      sub_1D50D8230(v276, v277, v278, v279);
      v157 = type metadata accessor for StorePlatformMusicVideo;
      goto LABEL_19;
    case 6u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0(&v355);
      sub_1D50EF0FC(v292, v293, v294);
      v295 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v295, v296, &v354);
      v297 = OUTLINED_FUNCTION_1_76();
      v298(v297);
      v299 = sub_1D5614898();
      OUTLINED_FUNCTION_15_41(v299, MEMORY[0x1E69773C0]);
      OUTLINED_FUNCTION_9_51();
      v300 = OUTLINED_FUNCTION_3_68();
      sub_1D50EBB70(v300, v301, v302, v303);
      v157 = type metadata accessor for StorePlatformPlaylist;
      goto LABEL_19;
    case 7u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0(&v357);
      sub_1D50EF0FC(v251, v252, v253);
      v254 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v254, v255, &v356);
      v256 = OUTLINED_FUNCTION_1_76();
      v257(v256);
      v258 = sub_1D5614B68();
      OUTLINED_FUNCTION_15_41(v258, MEMORY[0x1E6977538]);
      OUTLINED_FUNCTION_9_51();
      v259 = OUTLINED_FUNCTION_3_68();
      sub_1D50EA664(v259, v260, v261, v262);
      v157 = type metadata accessor for StorePlatformRadioShow;
      goto LABEL_19;
    case 8u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0(&v359);
      sub_1D50EF0FC(v315, v316, v317);
      v318 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v318, v319, &v358);
      v320 = OUTLINED_FUNCTION_1_76();
      v321(v320);
      v322 = sub_1D560F8B8();
      OUTLINED_FUNCTION_15_41(v322, MEMORY[0x1E6975888]);
      OUTLINED_FUNCTION_9_51();
      v323 = OUTLINED_FUNCTION_3_68();
      sub_1D50EB054(v323, v324, v325, v326);
      v157 = type metadata accessor for StorePlatformRecordLabel;
      goto LABEL_19;
    case 9u:
      v206 = OUTLINED_FUNCTION_11_49();
      v102 = v329;
      sub_1D50EF0FC(v206, v329, v207);
      v208 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v208, v209, &v360);
      v210 = OUTLINED_FUNCTION_1_76();
      v211(v210);
      v212 = type metadata accessor for SocialProfile();
      OUTLINED_FUNCTION_19_37(v212);
      v213 = sub_1D50EEFD8(&qword_1EC7EE028, type metadata accessor for SocialProfile);
      OUTLINED_FUNCTION_26_33(v213);
      OUTLINED_FUNCTION_9_51();
      v214 = OUTLINED_FUNCTION_3_68();
      sub_1D5444674(v214, v215, v216, v217);
      v157 = type metadata accessor for StorePlatformSocialProfile;
      goto LABEL_19;
    case 0xAu:
      v304 = OUTLINED_FUNCTION_11_49();
      v102 = v331;
      sub_1D50EF0FC(v304, v331, v305);
      v306 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v306, v330, v307);
      v308 = OUTLINED_FUNCTION_1_76();
      v309(v308);
      v310 = sub_1D5613838();
      OUTLINED_FUNCTION_15_41(v310, MEMORY[0x1E6976BC8]);
      OUTLINED_FUNCTION_9_51();
      v311 = OUTLINED_FUNCTION_3_68();
      sub_1D50D91A4(v311, v312, v313, v314);
      v157 = type metadata accessor for StorePlatformSong;
      goto LABEL_19;
    case 0xBu:
      v170 = OUTLINED_FUNCTION_11_49();
      v102 = v333;
      sub_1D50EF0FC(v170, v333, v171);
      v172 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v172, v332, v173);
      v174 = OUTLINED_FUNCTION_1_76();
      v175(v174);
      v176 = sub_1D5614408();
      OUTLINED_FUNCTION_15_41(v176, MEMORY[0x1E6977168]);
      OUTLINED_FUNCTION_9_51();
      v177 = OUTLINED_FUNCTION_3_68();
      sub_1D50EDB24(v177, v178, v179, v180);
      v157 = type metadata accessor for StorePlatformStation;
      goto LABEL_19;
    case 0xCu:
      v194 = OUTLINED_FUNCTION_11_49();
      v102 = v335;
      sub_1D50EF0FC(v194, v335, v195);
      v196 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v196, v334, v197);
      v198 = OUTLINED_FUNCTION_1_76();
      v199(v198);
      v200 = type metadata accessor for TVEpisode();
      OUTLINED_FUNCTION_19_37(v200);
      v201 = sub_1D50EEFD8(&qword_1EC7EC490, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_26_33(v201);
      OUTLINED_FUNCTION_9_51();
      v202 = OUTLINED_FUNCTION_3_68();
      sub_1D50DA260(v202, v203, v204, v205);
      v157 = type metadata accessor for StorePlatformTVEpisode;
      goto LABEL_19;
    case 0xDu:
      v280 = OUTLINED_FUNCTION_11_49();
      v102 = v337;
      sub_1D50EF0FC(v280, v337, v281);
      v282 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v282, v336, v283);
      v284 = OUTLINED_FUNCTION_1_76();
      v285(v284);
      v286 = type metadata accessor for TVSeason();
      OUTLINED_FUNCTION_19_37(v286);
      v287 = sub_1D50EEFD8(&qword_1EC7EA3C8, type metadata accessor for TVSeason);
      OUTLINED_FUNCTION_26_33(v287);
      OUTLINED_FUNCTION_9_51();
      v288 = OUTLINED_FUNCTION_3_68();
      sub_1D50E5E50(v288, v289, v290, v291);
      v157 = type metadata accessor for StorePlatformTVSeason;
      goto LABEL_19;
    case 0xEu:
      v158 = OUTLINED_FUNCTION_11_49();
      v102 = v339;
      sub_1D50EF0FC(v158, v339, v159);
      v160 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v160, v338, v161);
      v162 = OUTLINED_FUNCTION_1_76();
      v163(v162);
      v164 = type metadata accessor for TVShow();
      OUTLINED_FUNCTION_19_37(v164);
      v165 = sub_1D50EEFD8(&qword_1EC7EC4A0, type metadata accessor for TVShow);
      OUTLINED_FUNCTION_26_33(v165);
      OUTLINED_FUNCTION_9_51();
      v166 = OUTLINED_FUNCTION_3_68();
      sub_1D50E4E24(v166, v167, v168, v169);
      v157 = type metadata accessor for StorePlatformTVShow;
      goto LABEL_19;
    case 0xFu:
      v227 = OUTLINED_FUNCTION_11_49();
      v102 = v341;
      sub_1D50EF0FC(v227, v341, v228);
      v229 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v229, v340, v230);
      v231 = OUTLINED_FUNCTION_1_76();
      v232(v231);
      v233 = type metadata accessor for UploadedAudio();
      OUTLINED_FUNCTION_19_37(v233);
      v234 = sub_1D50EEFD8(&qword_1EC7EC498, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_26_33(v234);
      OUTLINED_FUNCTION_9_51();
      v235 = OUTLINED_FUNCTION_3_68();
      sub_1D50DB960(v235, v236, v237, v238);
      v157 = type metadata accessor for StorePlatformUploadedAudio;
      goto LABEL_19;
    case 0x10u:
      v145 = OUTLINED_FUNCTION_11_49();
      v102 = v343;
      sub_1D50EF0FC(v145, v343, v146);
      v147 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v147, v342, v148);
      v149 = OUTLINED_FUNCTION_1_76();
      v150(v149);
      v151 = type metadata accessor for UploadedVideo();
      OUTLINED_FUNCTION_19_37(v151);
      v152 = sub_1D50EEFD8(&qword_1EC7EC488, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_26_33(v152);
      OUTLINED_FUNCTION_9_51();
      v153 = OUTLINED_FUNCTION_3_68();
      sub_1D50DC860(v153, v154, v155, v156);
      v157 = type metadata accessor for StorePlatformUploadedVideo;
LABEL_19:
      v143 = v157;
      v144 = v102;
      break;
    default:
      v136 = OUTLINED_FUNCTION_11_49();
      sub_1D50EF0FC(v136, v128, v137);
      sub_1D50EF020(v128, v125, type metadata accessor for StorePlatformAlbum);
      v138 = OUTLINED_FUNCTION_34_25();
      v139(v138);
      v140 = sub_1D5613AF8();
      v141 = OUTLINED_FUNCTION_15_41(v140, MEMORY[0x1E6976D08]);
      v142 = v349;

      sub_1D50E9244(v125, v102, v142, v141);
      v143 = type metadata accessor for StorePlatformAlbum;
      v144 = v128;
      break;
  }

  return sub_1D50EF07C(v144, v143);
}

uint64_t sub_1D50E29D8(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = a1[2];
  if (result == a2[2] && a1[3] == a2[3])
  {
    v7 = 1;
    goto LABEL_10;
  }

  v5 = sub_1D5616168();
  result = 0;
  v7 = v5 & 1;
  if (v5)
  {
LABEL_10:
    v6 = *(a1 + *(*a1 + 120));
    MEMORY[0x1EEE9AC00](result);

    sub_1D560F608();

    return v7;
  }

  return result;
}

uint64_t sub_1D50E2AF8(uint64_t a1)
{
  v1 = *(a1 + *(*a1 + 120));

  sub_1D560F608();
}

uint64_t sub_1D50E2B84(char *a1, uint64_t a2, _BYTE *a3)
{
  v68 = a3;
  v5 = *a1;
  v67 = sub_1D5611AB8();
  v63 = *(v67 - 8);
  v6 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB0, &qword_1D5634630);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v60 - v16;
  v17 = v5[10];
  v18 = v5[11];
  v19 = v5[12];
  v20 = type metadata accessor for StorePlatformItemPropertyProvider.LoadingState();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  v73 = TupleTypeMetadata2;
  v22 = *(v72 + 64);
  v23 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v25 = &v60 - v24;
  v26 = *(v20 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23);
  v71 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v60 - v30;
  v32 = v5[14];
  swift_beginAccess();
  v33 = *(v26 + 16);
  v33(v31, &a1[v32], v20);
  v34 = *(*a2 + 112);
  swift_beginAccess();
  v35 = v73;
  v36 = *(v73 + 48);
  v65 = v26;
  v37 = v26;
  v38 = v20;
  v39 = v25;
  v40 = v31;
  v41 = v25;
  v42 = v36;
  (*(v37 + 32))(v39, v40, v20);
  v33(&v41[v42], (a2 + v34), v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = v35;
    v44 = v71;
    v33(v71, v41, v38);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v45 = v38;
      v46 = v69;
      sub_1D4F39A1C(v44, v69, &qword_1EC7EFBB8, &qword_1D5634638);
      v47 = v70;
      sub_1D4F39A1C(&v41[v42], v70, &qword_1EC7EFBB8, &qword_1D5634638);
      v48 = *(v64 + 48);
      v49 = v66;
      sub_1D4F39AB0(v46, v66, &qword_1EC7EFBB8, &qword_1D5634638);
      sub_1D4F39AB0(v47, v49 + v48, &qword_1EC7EFBB8, &qword_1D5634638);
      v50 = v67;
      if (__swift_getEnumTagSinglePayload(v49, 1, v67) == 1)
      {
        sub_1D4E50004(v47, &qword_1EC7EFBB8, &qword_1D5634638);
        sub_1D4E50004(v46, &qword_1EC7EFBB8, &qword_1D5634638);
        if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v50) == 1)
        {
          sub_1D4E50004(v49, &qword_1EC7EFBB8, &qword_1D5634638);
          v51 = 1;
LABEL_13:
          *v68 = v51 & 1;
          v53 = v65;
          v52 = v45;
          return (*(v53 + 8))(v41, v52);
        }
      }

      else
      {
        v54 = v62;
        sub_1D4F39AB0(v49, v62, &qword_1EC7EFBB8, &qword_1D5634638);
        if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v50) != 1)
        {
          v73 = v41;
          v55 = v63;
          v56 = v54;
          v57 = v61;
          (*(v63 + 32))(v61, v49 + v48, v50);
          sub_1D50EEFD8(&qword_1EC7EFBC0, MEMORY[0x1E6976320]);
          v51 = sub_1D5614D18();
          v58 = *(v55 + 8);
          v58(v57, v50);
          sub_1D4E50004(v70, &qword_1EC7EFBB8, &qword_1D5634638);
          sub_1D4E50004(v69, &qword_1EC7EFBB8, &qword_1D5634638);
          v58(v56, v50);
          v41 = v73;
          sub_1D4E50004(v49, &qword_1EC7EFBB8, &qword_1D5634638);
          goto LABEL_13;
        }

        sub_1D4E50004(v70, &qword_1EC7EFBB8, &qword_1D5634638);
        sub_1D4E50004(v46, &qword_1EC7EFBB8, &qword_1D5634638);
        (*(v63 + 8))(v54, v50);
      }

      sub_1D4E50004(v49, &qword_1EC7EFBB0, &qword_1D5634630);
      v51 = 0;
      goto LABEL_13;
    }

    sub_1D4E50004(v44, &qword_1EC7EFBB8, &qword_1D5634638);
    v52 = v43;
  }

  else
  {
    v52 = v35;
  }

  v53 = v72;
  return (*(v53 + 8))(v41, v52);
}

uint64_t sub_1D50E329C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D5614E28();
}

uint64_t sub_1D50E32A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36_24();
  v9 = sub_1D5611AB8();
  OUTLINED_FUNCTION_57(v2, 1, v9);
  if (v10)
  {
    sub_1D4E50004(v2, &qword_1EC7EFBB8, &qword_1D5634638);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, a1);
  }

  else
  {
    sub_1D5611AA8();
    OUTLINED_FUNCTION_24_0(v9);
    return (*(v11 + 8))(v2, v9);
  }
}

uint64_t sub_1D50E33AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  sub_1D50E11B0();
  v6 = sub_1D5611AB8();
  OUTLINED_FUNCTION_57(v5, 1, v6);
  if (v7)
  {
    sub_1D4E50004(v5, &qword_1EC7EFBB8, &qword_1D5634638);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = sub_1D5611A48();
    OUTLINED_FUNCTION_24_0(v6);
    (*(v9 + 8))(v5, v6);
  }

  return v8;
}

uint64_t sub_1D50E34A0@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = sub_1D560E728();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v72 = v7 - v6;
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D560D9A8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v67 = v10;
  v68 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v71 = v14 - v13;
  OUTLINED_FUNCTION_70_0();
  v15 = sub_1D560F0F8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = sub_1D560F148();
  v25 = OUTLINED_FUNCTION_4(v24);
  v69 = v26;
  v70 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v66 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_34();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66 - v35;
  v37 = sub_1D560D838();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v45 = v44 - v43;
  sub_1D50E11B0();
  v46 = sub_1D5611AB8();
  OUTLINED_FUNCTION_57(v36, 1, v46);
  if (v47)
  {
    sub_1D4E50004(v36, &qword_1EC7EFBB8, &qword_1D5634638);
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v48 = sub_1D560C758();
    __swift_project_value_buffer(v48, qword_1EDD76DC8);
    v49 = sub_1D560C738();
    v50 = sub_1D56156D8();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v70;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1D4E3F000, v49, v50, "Unable to retrieve the identifier set from the underlying property provider in StorePlatformItemPropertyProvider.swift. Returning an empty identifier set.", v53, 2u);
      MEMORY[0x1DA6ED200](v53, -1, -1);
    }

    sub_1D560EED8();
    (*(v18 + 104))(v23, *MEMORY[0x1E69755D0], v15);
    OUTLINED_FUNCTION_71();
    sub_1D560F118();
    v54 = v69;
    (*(v69 + 16))(v66, v1, v52);
    if (qword_1EC7E8C88 != -1)
    {
      swift_once();
    }

    v55 = v68;
    v56 = __swift_project_value_buffer(v68, qword_1EC7EEAD0);
    (*(v67 + 16))(v71, v56, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v57 = sub_1D560DB08();
    OUTLINED_FUNCTION_4(v57);
    v59 = v58;
    v61 = *(v60 + 72);
    v62 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1D561C050;
    (*(v59 + 104))(v63 + v62, *MEMORY[0x1E6975048], v57);
    sub_1D560E718();
    sub_1D560D798();
    return (*(v54 + 8))(v1, v52);
  }

  else
  {
    sub_1D5611A28();
    OUTLINED_FUNCTION_24_0(v46);
    (*(v64 + 8))(v36, v46);
    return (*(v40 + 32))(v73, v45, v37);
  }
}

uint64_t sub_1D50E3A04(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0();
  v4 = *(v1 + *(v3 + 120));

  sub_1D560F608();

  v5 = sub_1D560D838();
  OUTLINED_FUNCTION_14(v5);
  return (*(v6 + 8))(a1);
}

uint64_t sub_1D50E3AB8(char *a1, void (*a2)(_BYTE *, void))
{
  v38 = a2;
  v3 = *a1;
  v4 = sub_1D560D838();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = v3[10];
  v15 = v3[11];
  v16 = v3[12];
  v17 = type metadata accessor for StorePlatformItemPropertyProvider.LoadingState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v35 - v23;
  v25 = v3[14];
  swift_beginAccess();
  (*(v18 + 16))(v24, &a1[v25], v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D4F39A1C(v24, v13, &qword_1EC7EFBB8, &qword_1D5634638);
    v26 = sub_1D5611AB8();
    if (!__swift_getEnumTagSinglePayload(v13, 1, v26))
    {
      (*(v36 + 16))(v39, v38, v37);
      v38 = sub_1D56119F8();
      v28 = *(v27 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v27, *(v27 + 24));
      v29 = *(v28 + 8);
      sub_1D5610CE8();
      v38(v40, 0);
    }

    sub_1D4F39AB0(v13, v22, &qword_1EC7EFBB8, &qword_1D5634638);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v18 + 40))(&a1[v25], v22, v17);
    swift_endAccess();
  }

  else
  {
    (*(v18 + 8))(v24, v17);
    sub_1D50E1268(v11);
    v30 = sub_1D5611AB8();
    if (!__swift_getEnumTagSinglePayload(v11, 1, v30))
    {
      (*(v36 + 16))(v39, v38, v37);
      v38 = sub_1D56119F8();
      v32 = *(v31 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v31, *(v31 + 24));
      v33 = *(v32 + 8);
      sub_1D5610CE8();
      v38(v40, 0);
    }

    sub_1D4F39AB0(v11, v22, &qword_1EC7EFBB8, &qword_1D5634638);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v18 + 40))(&a1[v25], v22, v17);
    swift_endAccess();
    v13 = v11;
  }

  return sub_1D4E50004(v13, &qword_1EC7EFBB8, &qword_1D5634638);
}

uint64_t sub_1D50E3F5C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = sub_1D5610088();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_34();
  v21 = *(v4 + 88);
  v22 = *(v4 + 80);
  result = sub_1D5612668();
  if (*(result + 16))
  {
    (*(v14 + 16))(v2, result + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v11);

    sub_1D50E11B0();
    v24 = sub_1D5611AB8();
    OUTLINED_FUNCTION_57(v10, 1, v24);
    if (v25)
    {
      sub_1D4E50004(v10, &qword_1EC7EFBB8, &qword_1D5634638);
    }

    else
    {
      sub_1D5611A98();
      (*(v14 + 8))(v2, v11);
      OUTLINED_FUNCTION_24_0(v24);
      (*(v26 + 8))(v10, v24);
      v2 = v19;
    }

    return (*(v14 + 32))(a1, v2, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D50E4190()
{
  v2 = v0;
  v3 = sub_1D5610088();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_36_24();
  v16 = sub_1D5611AB8();
  OUTLINED_FUNCTION_57(v1, 1, v16);
  if (v17)
  {
    sub_1D4E50004(v1, &qword_1EC7EFBB8, &qword_1D5634638);
LABEL_5:
    sub_1D50E3F5C(v11);
    v22 = *(v2 + 16);
    v23 = *(v2 + 24);
    v18 = sub_1D560FDE8();
    (*(v6 + 8))(v11, v3);

    return v18;
  }

  v18 = sub_1D5611A88();
  v20 = v19;
  OUTLINED_FUNCTION_24_0(v16);
  (*(v21 + 8))(v1, v16);
  if (!v20)
  {
    goto LABEL_5;
  }

  return v18;
}

uint64_t sub_1D50E4360(uint64_t (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  sub_1D50E11B0();
  v8 = sub_1D5611AB8();
  v9 = OUTLINED_FUNCTION_57(v7, 1, v8);
  if (v10)
  {
    sub_1D4E50004(v7, &qword_1EC7EFBB8, &qword_1D5634638);
    sub_1D5614A88();
    return sub_1D5614BD8();
  }

  else
  {
    v11 = a1(v9);
    OUTLINED_FUNCTION_24_0(v8);
    (*(v12 + 8))(v7, v8);
  }

  return v11;
}

uint64_t sub_1D50E44B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = sub_1D5611AB8();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1D50E11B0();
  OUTLINED_FUNCTION_57(v5, 1, v6);
  if (v15)
  {
    sub_1D4E50004(v5, &qword_1EC7EFBB8, &qword_1D5634638);
    result = sub_1D5615E08();
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v14, v5, v6);
    sub_1D5611A08();
    return (*(v9 + 8))(v14, v6);
  }

  return result;
}

char *sub_1D50E4658()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  OUTLINED_FUNCTION_58_0();
  v4 = *(v3 + 112);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = type metadata accessor for StorePlatformItemPropertyProvider.LoadingState();
  OUTLINED_FUNCTION_14(v8);
  (*(v9 + 8))(&v0[v4]);
  OUTLINED_FUNCTION_58_0();
  v11 = *&v0[*(v10 + 120)];

  return v0;
}

uint64_t sub_1D50E4720()
{
  sub_1D50E4658();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D50E4790()
{
  sub_1D56162D8();
  sub_1D50E329C();
  return sub_1D5616328();
}

void sub_1D50E47F0()
{
  sub_1D50E4864();
  if (v0 <= 0x3F)
  {
    sub_1D50E48C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D50E4864()
{
  if (!qword_1EC7EFBA0)
  {
    v0 = sub_1D5614C78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EFBA0);
    }
  }
}

void sub_1D50E48C8()
{
  if (!qword_1EC7EFBA8)
  {
    sub_1D5611AB8();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EFBA8);
    }
  }
}

uint64_t sub_1D50E49A8()
{
  sub_1D56162D8();
  v1 = *v0;
  sub_1D50E329C();
  return sub_1D5616328();
}

void (*sub_1D50E4A7C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = sub_1D560D838();
  *v3 = v4;
  v5 = *(v4 - 8);
  v3[1] = v5;
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[3] = v7;
  v3[4] = *v1;
  sub_1D50E34A0(v7);
  return sub_1D50E4B54;
}

void sub_1D50E4B54(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 16);
  if (a2)
  {
    v6 = *v2;
    v7 = v2[1];
    (*(v7 + 16))(*(*a1 + 16), v4, *v2);
    sub_1D50E3A04(v5);
    (*(v7 + 8))(v4, v6);
  }

  else
  {
    sub_1D50E3A04(*(*a1 + 24));
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_1D50E4D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, WitnessTable);
}

uint64_t sub_1D50E4D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD0320](a1, a2, a3, WitnessTable);
}

uint64_t sub_1D50E4DE4()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_1D50E2AF8(v0[2]);
}

uint64_t sub_1D50E4E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v124 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v99 - v9;
  v10 = sub_1D5610788();
  v122 = *(v10 - 8);
  v123 = v10;
  v11 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1D56107C8();
  v119 = *(v121 - 8);
  v13 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v116 = &v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v114 = &v99 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v99 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v109 = &v99 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v110 = &v99 - v30;
  v31 = type metadata accessor for TVShowPropertyProvider();
  v32 = *(*(v31 - 1) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v108);
  v35 = v31[9];
  v36 = sub_1D5610978();
  v112 = v35;
  __swift_storeEnumTagSinglePayload(&v34[v35], 1, 1, v36);
  v37 = v31[15];
  v38 = sub_1D560C0A8();
  v113 = v37;
  __swift_storeEnumTagSinglePayload(&v34[v37], 1, 1, v38);
  v39 = &v34[v31[19]];
  v111 = v36;
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v36);
  v40 = v31[20];
  v41 = sub_1D560C328();
  v117 = v40;
  __swift_storeEnumTagSinglePayload(&v34[v40], 1, 1, v41);
  v115 = v31[21];
  __swift_storeEnumTagSinglePayload(&v34[v115], 1, 1, v38);
  v42 = v31[22];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v101 = v42;
  v100 = v43;
  __swift_storeEnumTagSinglePayload(&v34[v42], 1, 1, v43);
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v125 = a3;
  v126 = a2;
  v44 = sub_1D560D9A8();
  v45 = __swift_project_value_buffer(v44, qword_1EC7F5D98);
  if (qword_1EC7E8DC8 != -1)
  {
    swift_once();
  }

  v46 = sub_1D5610088();
  v47 = __swift_project_value_buffer(v46, qword_1EC87C0C8);
  v48 = type metadata accessor for StorePlatformTVShow();
  v49 = v48[6];
  v127 = a1;
  sub_1D54301F4(v47, v45, *(a1 + v49), *(a1 + v49 + 8), &v34[v31[25]]);
  v107 = sub_1D560FDE8();
  v106 = v50;
  sub_1D5614A88();
  v105 = sub_1D5614BD8();
  v104 = sub_1D5614BD8();
  v103 = sub_1D5614BD8();
  v51 = sub_1D5614BD8();
  *&v34[v31[8]] = 0;
  v34[v31[13]] = 2;
  *&v34[v31[18]] = 0;
  *&v34[v31[23]] = 0;
  if (qword_1EC7E9800 != -1)
  {
    swift_once();
  }

  v52 = qword_1EC87C740;
  if (qword_1EC87C740 >> 62)
  {
    sub_1D560CDE8();

    v98 = sub_1D5615E18();

    v52 = v98;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v34[v31[24]] = v52;
  (*(*(v46 - 8) + 16))(&v34[v31[26]], v47, v46);
  v53 = &v34[v31[27]];
  v54 = v106;
  *v53 = v107;
  v53[1] = v54;
  *&v34[v31[28]] = v105;
  *&v34[v31[29]] = v104;
  *&v34[v31[30]] = v103;
  *&v34[v31[31]] = v51;
  v55 = v127;
  v56 = v109;
  sub_1D4F39AB0(v127 + v48[5], v109, &qword_1EC7EB5B8, &unk_1D56206A0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
  {
    sub_1D4E50004(v56, &qword_1EC7EB5B8, &unk_1D56206A0);
    v58 = 1;
    v59 = v24;
    v60 = v110;
  }

  else
  {
    v60 = v110;
    sub_1D5610758();
    (*(*(v57 - 8) + 8))(v56, v57);
    v58 = 0;
    v59 = v24;
  }

  __swift_storeEnumTagSinglePayload(v60, v58, 1, v108);
  sub_1D4E68940(v60, v34, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v61 = *(v55 + v48[9]);
  v62 = v114;
  if (v61)
  {
    v61 = sub_1D511C2A4(v61);
  }

  *&v34[v31[5]] = v61;
  v63 = *(v55 + v48[10]);
  if (v63)
  {
    v63 = sub_1D5259FF8(v63);
  }

  v64 = v31[7];
  *&v34[v31[6]] = v63;
  *&v34[v64] = *(v55 + v48[11]);
  sub_1D4F39AB0(v55 + v48[18], v62, &qword_1EC7EC960, &unk_1D56334C0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v65);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v62, &qword_1EC7EC960, &unk_1D56334C0);
    v67 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v65 - 8) + 8))(v62, v65);
    v67 = 0;
  }

  __swift_storeEnumTagSinglePayload(v59, v67, 1, v111);
  v68 = v31[10];
  v69 = &v34[v31[11]];
  v70 = v31[12];
  v71 = v31[14];
  sub_1D4E68940(v59, &v34[v112], &qword_1EC7EAC98, &unk_1D561DA80);
  *&v34[v68] = *(v55 + v48[12]);
  v72 = (v55 + v48[13]);
  v73 = *v72;
  LOBYTE(v72) = *(v72 + 8);
  *v69 = v73;
  v69[8] = v72;
  *&v34[v70] = *(v55 + v48[14]);
  v34[v71] = *(v55 + v48[16]);
  v74 = v48[17];

  sub_1D4F89DEC(v55 + v74, &v34[v113]);
  v75 = *(v55 + v48[19]);
  if (v75)
  {
    v75 = sub_1D54FEF40(v75);
  }

  v76 = &v34[v31[17]];
  *&v34[v31[16]] = v75;
  v77 = (v55 + v48[20]);
  v78 = v77[1];
  *v76 = *v77;
  *(v76 + 1) = v78;

  v79 = v118;
  sub_1D56107A8();
  v80 = (v55 + v48[21]);
  v81 = *v80;
  v82 = v80[1];
  v84 = v122;
  v83 = v123;
  v85 = v120;
  (*(v122 + 104))(v120, *MEMORY[0x1E6975DC8], v123);
  v86 = v116;
  sub_1D5610798();
  v87 = v85;
  v88 = v127;
  (*(v84 + 8))(v87, v83);
  (*(v119 + 8))(v79, v121);
  sub_1D4E68940(v86, &v34[v117], &qword_1EC7EA3B8, &unk_1D561E370);
  v89 = sub_1D4F89DEC(v88 + v48[22], &v34[v115]);
  v91 = v125;
  v90 = v126;
  if (*(v88 + v48[8]) && *(v88 + v48[7]))
  {
    MEMORY[0x1EEE9AC00](v89);
    *(&v99 - 4) = v92;
    *(&v99 - 3) = v90;
    *(&v99 - 2) = v91;
    v128[0] = sub_1D50DE9F8(sub_1D50EEF68, (&v99 - 6), v93);
    type metadata accessor for TVSeason();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC88, &qword_1D5634788);
    sub_1D50EEFD8(&unk_1EDD546A0, type metadata accessor for TVSeason);
    sub_1D50EEF84(&qword_1EC7EFC90, &qword_1EC7EFC88, &qword_1D5634788);
    v94 = v102;
    sub_1D560DAD8();
    __swift_storeEnumTagSinglePayload(v94, 0, 1, v100);
    sub_1D4E68940(v94, &v34[v101], &qword_1EC7ED1F8, &qword_1D5634780);
  }

  v128[3] = v31;
  v128[4] = sub_1D50EEFD8(&qword_1EC7ED200, type metadata accessor for TVShowPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v128);
  sub_1D50EF020(v34, boxed_opaque_existential_0, type metadata accessor for TVShowPropertyProvider);
  TVShow.init(propertyProvider:)(v128, v124);

  sub_1D50EF07C(v88, type metadata accessor for StorePlatformTVShow);
  sub_1D50EF07C(v34, type metadata accessor for TVShowPropertyProvider);
  v96 = sub_1D560CD48();
  return (*(*(v96 - 8) + 8))(v90, v96);
}

uint64_t sub_1D50E5B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v36 = a5;
  v38 = a1;
  v39 = a2;
  v8 = sub_1D560CD48();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v32 - v14);
  v16 = type metadata accessor for StorePlatformTVSeason();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v21 = (&v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v32 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v32 - v25;
  v27 = type metadata accessor for TVSeason();
  v37 = a6;
  result = __swift_storeEnumTagSinglePayload(a6, 1, 1, v27);
  if (*(a3 + 16))
  {
    result = sub_1D4E4EFA0();
    if (v29)
    {
      sub_1D50EF020(*(a3 + 56) + *(v17 + 72) * result, v24, type metadata accessor for StorePlatformTVSeason);
      sub_1D50EF0FC(v24, v26, type metadata accessor for StorePlatformTVSeason);
      sub_1D50EF020(v26, v21, type metadata accessor for StorePlatformTVSeason);
      (*(v33 + 16))(v11, v35, v34);
      v30 = v36;

      sub_1D50E5E50(v21, v11, v30, v15);
      sub_1D50EF07C(v26, type metadata accessor for StorePlatformTVSeason);
      v31 = v37;
      sub_1D4E50004(v37, &qword_1EC7EA878, &unk_1D5634790);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v27);
      return sub_1D4F39A1C(v15, v31, &qword_1EC7EA878, &unk_1D5634790);
    }
  }

  return result;
}

uint64_t sub_1D50E5E50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v128 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v127 = &v105 - v12;
  v13 = sub_1D5610788();
  v125 = *(v13 - 8);
  v126 = v13;
  v14 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D56107C8();
  v123 = *(v16 - 8);
  v124 = v16;
  v17 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v121 = &v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v105 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v115 = &v105 - v28;
  v29 = type metadata accessor for TVSeasonPropertyProvider();
  v30 = *(*(v29 - 1) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v114);
  v33 = v29[7];
  v34 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(&v32[v33], 1, 1, v34);
  v35 = v29[9];
  v36 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(&v32[v35], 1, 1, v36);
  __swift_storeEnumTagSinglePayload(&v32[v29[15]], 1, 1, v34);
  __swift_storeEnumTagSinglePayload(&v32[v29[18]], 1, 1, v36);
  v117 = v29[19];
  __swift_storeEnumTagSinglePayload(&v32[v117], 1, 1, v34);
  v37 = v29[24];
  v38 = sub_1D560C0A8();
  v119 = v37;
  __swift_storeEnumTagSinglePayload(&v32[v37], 1, 1, v38);
  v39 = v29[25];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v107 = v39;
  v106 = v40;
  __swift_storeEnumTagSinglePayload(&v32[v39], 1, 1, v40);
  v41 = v29[26];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v120 = v41;
  v118 = v42;
  __swift_storeEnumTagSinglePayload(&v32[v41], 1, 1, v42);
  v43 = v29[27];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  __swift_storeEnumTagSinglePayload(&v32[v43], 1, 1, v44);
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v129 = a3;
  v130 = a2;
  v45 = sub_1D560D9A8();
  v46 = __swift_project_value_buffer(v45, qword_1EDD53C60);
  if (qword_1EC7E9858 != -1)
  {
    swift_once();
  }

  v47 = sub_1D5610088();
  v48 = __swift_project_value_buffer(v47, qword_1EC87C778);
  v49 = type metadata accessor for StorePlatformTVSeason();
  v50 = v49[14];
  v131 = a1;
  sub_1D54301F4(v48, v46, *(a1 + v50), *(a1 + v50 + 8), &v32[v29[29]]);
  v113 = sub_1D560FDE8();
  v112 = v51;
  sub_1D5614A88();
  v111 = sub_1D5614BD8();
  v110 = sub_1D5614BD8();
  v109 = sub_1D5614BD8();
  v52 = sub_1D5614BD8();
  v32[v29[13]] = 2;
  v32[v29[14]] = 2;
  v53 = &v32[v29[16]];
  *v53 = 0;
  v53[8] = 1;
  *&v32[v29[17]] = 0;
  v54 = &v32[v29[20]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v55 = &v32[v29[22]];
  *v55 = 0;
  *(v55 + 1) = 0;
  if (qword_1EC7E9378 != -1)
  {
    swift_once();
  }

  v56 = qword_1EC87C4B8;
  if (qword_1EC87C4B8 >> 62)
  {
    sub_1D560CDE8();

    v104 = sub_1D5615E18();

    v56 = v104;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v32[v29[28]] = v56;
  (*(*(v47 - 8) + 16))(&v32[v29[30]], v48, v47);
  v57 = &v32[v29[31]];
  v58 = v112;
  *v57 = v113;
  v57[1] = v58;
  *&v32[v29[32]] = v111;
  *&v32[v29[33]] = v110;
  *&v32[v29[34]] = v109;
  *&v32[v29[35]] = v52;
  v59 = v131;
  sub_1D4F39AB0(v131 + v49[5], v25, &qword_1EC7EB5B8, &unk_1D56206A0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v60) == 1)
  {
    sub_1D4E50004(v25, &qword_1EC7EB5B8, &unk_1D56206A0);
    v61 = 1;
    v62 = v115;
  }

  else
  {
    v62 = v115;
    sub_1D5610758();
    (*(*(v60 - 8) + 8))(v25, v60);
    v61 = 0;
  }

  __swift_storeEnumTagSinglePayload(v62, v61, 1, v114);
  sub_1D4E68940(v62, v32, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v63 = *(v59 + v49[8]);
  if (v63)
  {
    v63 = sub_1D511C2A4(v63);
  }

  v64 = &v32[v29[6]];
  v65 = v29[8];
  v66 = v29[10];
  v67 = v29[11];
  v68 = v29[12];
  v69 = v29[21];
  v70 = v29[23];
  *&v32[v29[5]] = v63;
  v71 = &v32[v67];
  v72 = (v59 + v49[9]);
  v73 = v72[1];
  *v64 = *v72;
  *(v64 + 1) = v73;
  *&v32[v65] = *(v59 + v49[10]);
  v114 = &v32[v69];
  *&v32[v66] = *(v59 + v49[11]);
  v115 = &v32[v70];
  v74 = (v59 + v49[17]);
  v75 = *v74;
  LOBYTE(v74) = *(v74 + 8);
  *v71 = v75;
  v71[8] = v74;
  *&v32[v68] = *(v59 + v49[12]);

  v76 = v116;
  sub_1D56107A8();
  v77 = (v59 + v49[16]);
  v78 = *v77;
  v79 = v77[1];
  v81 = v125;
  v80 = v126;
  v82 = v122;
  (*(v125 + 104))(v122, *MEMORY[0x1E6975DC8], v126);
  v83 = v121;
  sub_1D5610798();
  (*(v81 + 8))(v82, v80);
  v84 = v131;
  (*(v123 + 8))(v76, v124);
  sub_1D4E68940(v83, &v32[v117], &qword_1EC7EA3B8, &unk_1D561E370);
  v85 = v84[1];
  v86 = v114;
  *v114 = *v84;
  *(v86 + 1) = v85;
  v87 = (v84 + v49[15]);
  v88 = *v87;
  v89 = v87[1];
  v90 = v115;
  *v115 = v88;
  *(v90 + 1) = v89;
  v91 = v49[18];

  sub_1D4F89DEC(v84 + v91, &v32[v119]);
  v92 = *(v84 + v49[13]);
  if (v92)
  {
    v93 = v127;
    v95 = v129;
    v94 = v130;
    sub_1D50E02E8(v92, v127);
    v96 = 0;
  }

  else
  {
    v96 = 1;
    v95 = v129;
    v94 = v130;
    v93 = v127;
  }

  __swift_storeEnumTagSinglePayload(v93, v96, 1, v118);
  v97 = sub_1D4E68940(v93, &v32[v120], &qword_1EC7EA788, &unk_1D56223A0);
  if (*(v84 + v49[7]) && *(v84 + v49[6]))
  {
    MEMORY[0x1EEE9AC00](v97);
    *(&v105 - 4) = v98;
    *(&v105 - 3) = v94;
    *(&v105 - 2) = v95;
    v132[0] = sub_1D50DE744(sub_1D50EEF4C, (&v105 - 6), v99);
    type metadata accessor for TVEpisode();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC80, &unk_1D5634770);
    sub_1D50EEFD8(&qword_1EDD54508, type metadata accessor for TVEpisode);
    sub_1D50EEF84(&qword_1EDD527F8, &qword_1EC7EFC80, &unk_1D5634770);
    v100 = v108;
    sub_1D560DAD8();
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v106);
    sub_1D4E68940(v100, &v32[v107], &qword_1EC7ECBA8, &unk_1D56223B0);
  }

  v132[3] = v29;
  v132[4] = sub_1D50EEFD8(&qword_1EC7EA388, type metadata accessor for TVSeasonPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v132);
  sub_1D50EF020(v32, boxed_opaque_existential_0, type metadata accessor for TVSeasonPropertyProvider);
  TVSeason.init(propertyProvider:)(v132, v128);

  sub_1D50EF07C(v84, type metadata accessor for StorePlatformTVSeason);
  sub_1D50EF07C(v32, type metadata accessor for TVSeasonPropertyProvider);
  v102 = sub_1D560CD48();
  return (*(*(v102 - 8) + 8))(v94, v102);
}

uint64_t sub_1D50E6B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v108 = a2;
  v106 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v101 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v98 = &v89 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v99 = &v89 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v90 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v89 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v100 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v96 = &v89 - v29;
  v30 = sub_1D5610088();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v93 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D560D9A8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D560D838();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D56121E8();
  v102 = *(v43 - 8);
  v103 = v43;
  v44 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v94 = &v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D938();
  if (qword_1EC7E8DD0 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v30, qword_1EC87C0E0);
  v97 = type metadata accessor for StorePlatformArtist();
  v47 = (a1 + *(v97 + 36));
  v48 = *v47;
  v49 = v47[1];
  v92 = v42;
  sub_1D54301F4(v46, v38, v48, v49, v42);
  (*(v35 + 8))(v38, v34);
  (*(v31 + 16))(v93, v46, v30);
  v91 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v50 = v94;
  v51 = a1;
  sub_1D5612158();
  v52 = v95;
  sub_1D4F39AB0(a1, v95, &qword_1EC7EB5B8, &unk_1D56206A0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v54 = v50;
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {
    sub_1D4E50004(v52, &qword_1EC7EB5B8, &unk_1D56206A0);
    v55 = 1;
    v57 = v98;
    v56 = v99;
    v58 = v96;
  }

  else
  {
    v58 = v96;
    sub_1D5610758();
    (*(*(v53 - 8) + 8))(v52, v53);
    v55 = 0;
    v57 = v98;
    v56 = v99;
  }

  v59 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v58, v55, 1, v59);
  sub_1D56121D8();
  v60 = v97;
  v61 = *(v51 + *(v97 + 20));

  sub_1D5612188();
  sub_1D4F39AB0(v51 + v60[10], v57, &qword_1EC7EC960, &unk_1D56334C0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v62);
  v64 = v101;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v57, &qword_1EC7EC960, &unk_1D56334C0);
    v65 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v62 - 8) + 8))(v57, v62);
    v65 = 0;
  }

  v66 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v56, v65, 1, v66);
  sub_1D5612168();
  v67 = *(v51 + v60[6]);

  sub_1D5612198();
  v68 = *(v51 + v60[8]);

  sub_1D5612148();
  sub_1D4F39AB0(v51 + v60[14], v64, &qword_1EC7EFBD0, &qword_1D5634650);
  v69 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v64, 1, v69) == 1)
  {
    v70 = &qword_1EC7EFBD0;
    v71 = &qword_1D5634650;
    v72 = v64;
LABEL_13:
    sub_1D4E50004(v72, v70, v71);
    v74 = 1;
    v75 = v100;
    goto LABEL_15;
  }

  v73 = v90;
  sub_1D4F39AB0(v64, v90, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50EF07C(v64, type metadata accessor for StorePlatformUber);
  if (__swift_getEnumTagSinglePayload(v73, 1, v53) == 1)
  {
    v70 = &qword_1EC7EB5B8;
    v71 = &unk_1D56206A0;
    v72 = v73;
    goto LABEL_13;
  }

  v75 = v100;
  sub_1D5610758();
  (*(*(v53 - 8) + 8))(v73, v53);
  v74 = 0;
LABEL_15:
  v76 = 1;
  __swift_storeEnumTagSinglePayload(v75, v74, 1, v59);
  sub_1D5612178();
  v77 = (v51 + v60[12]);
  v78 = *v77;
  v79 = v77[1];

  sub_1D56121B8();
  sub_1D4F39AB0(v51 + v60[15], v104, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D56121A8();
  v80 = *(v51 + v60[7]);
  if (v80)
  {
    v81 = v105;
    v82 = v108;
    sub_1D50E02E8(v80, v105);
    v76 = 0;
  }

  else
  {
    v82 = v108;
    v81 = v105;
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  __swift_storeEnumTagSinglePayload(v81, v76, 1, v83);
  sub_1D56121C8();
  v84 = v103;
  v109[3] = v103;
  v109[4] = MEMORY[0x1E6976418];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v109);
  v86 = v102;
  (*(v102 + 16))(boxed_opaque_existential_0, v54, v84);
  sub_1D5613E28();

  v87 = sub_1D560CD48();
  (*(*(v87 - 8) + 8))(v82, v87);
  (*(v86 + 8))(v54, v84);
  return sub_1D50EF07C(v51, type metadata accessor for StorePlatformArtist);
}

uint64_t sub_1D50E75D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a3;
  v106 = a2;
  v104 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = &v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC00, &unk_1D56346C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v97 = &v87 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v87 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v93 = &v87 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v101 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v94 = &v87 - v29;
  v92 = sub_1D5610088();
  v30 = *(v92 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v92);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v87 - v35;
  v91 = sub_1D560D9A8();
  v37 = *(v91 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v40 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D560D838();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v87 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v44;
  v45 = sub_1D5612518();
  v99 = *(v45 - 8);
  v100 = v45;
  v46 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v90 = &v87 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D948();
  sub_1D514063C(v36);
  v96 = type metadata accessor for StorePlatformCurator();
  v48 = (a1 + *(v96 + 28));
  v88 = a1;
  sub_1D54301F4(v36, v40, *v48, v48[1], v44);
  v49 = *(v30 + 8);
  v50 = v92;
  v49(v36, v92);
  (*(v37 + 8))(v40, v91);
  sub_1D514063C(v36);
  sub_1D514063C(v34);
  sub_1D560FDE8();
  v49(v34, v50);
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v51 = v90;
  sub_1D5614BD8();
  v52 = v93;
  v53 = v88;
  sub_1D5612488();
  sub_1D4F39AB0(v53, v52, &qword_1EC7EB5B8, &unk_1D56206A0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v52, 1, v54) == 1)
  {
    sub_1D4E50004(v52, &qword_1EC7EB5B8, &unk_1D56206A0);
    v55 = 1;
    v56 = v94;
  }

  else
  {
    v56 = v94;
    sub_1D5610758();
    (*(*(v54 - 8) + 8))(v52, v54);
    v55 = 0;
  }

  v57 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v56, v55, 1, v57);
  sub_1D5612508();
  v58 = v96;
  v59 = *(v53 + *(v96 + 20));

  sub_1D56124B8();
  v60 = v95;
  sub_1D4F39AB0(v53 + v58[9], v95, &qword_1EC7EC960, &unk_1D56334C0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v61);
  v63 = v102;
  v64 = v97;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v60, &qword_1EC7EC960, &unk_1D56334C0);
    v65 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v61 - 8) + 8))(v60, v61);
    v65 = 0;
  }

  v66 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v64, v65, 1, v66);
  sub_1D5612498();
  v67 = *(v53 + v58[6]);

  sub_1D56124C8();
  v68 = (v53 + v58[10]);
  v69 = *v68;
  v70 = v68[1];
  v71 = v53 + v58[8];
  sub_1D560FA48();
  sub_1D56124E8();
  sub_1D4F39AB0(v53 + v58[12], v63, &qword_1EC7EFBD0, &qword_1D5634650);
  v72 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v63, 1, v72) == 1)
  {
    v73 = &qword_1EC7EFBD0;
    v74 = &qword_1D5634650;
    v75 = v63;
  }

  else
  {
    v76 = v87;
    sub_1D4F39AB0(v63, v87, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v63, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v76, 1, v54) != 1)
    {
      v78 = v101;
      sub_1D5610758();
      (*(*(v54 - 8) + 8))(v76, v54);
      v77 = 0;
      goto LABEL_13;
    }

    v73 = &qword_1EC7EB5B8;
    v74 = &unk_1D56206A0;
    v75 = v76;
  }

  sub_1D4E50004(v75, v73, v74);
  v77 = 1;
  v78 = v101;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v78, v77, 1, v57);
  sub_1D56124A8();
  v79 = (v53 + v58[11]);
  v80 = *v79;
  v81 = v79[1];

  sub_1D56124F8();
  sub_1D4F39AB0(v53 + v58[13], v103, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D56124D8();
  v82 = v100;
  v107[3] = v100;
  v107[4] = MEMORY[0x1E69764A8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v107);
  v84 = v99;
  (*(v99 + 16))(boxed_opaque_existential_0, v51, v82);
  sub_1D5614168();

  v85 = sub_1D560CD48();
  (*(*(v85 - 8) + 8))(v106, v85);
  (*(v84 + 8))(v51, v82);
  return sub_1D50EF07C(v53, type metadata accessor for StorePlatformCurator);
}

uint64_t sub_1D50E8048@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D560D9A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D560D838();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D501F124(v7);
  if (qword_1EC7E9810 != -1)
  {
    swift_once();
  }

  v13 = sub_1D5610088();
  v14 = __swift_project_value_buffer(v13, qword_1EC87C750);
  v15 = type metadata accessor for StorePlatformStation();
  sub_1D54301F4(v14, v7, *(v1 + *(v15 + 40)), *(v1 + *(v15 + 40) + 8), v12);
  (*(v4 + 8))(v7, v3);
  sub_1D560D608();
  (*(v9 + 8))(v12, v8);
  v16 = sub_1D56109F8();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v16);
}

uint64_t sub_1D50E8254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v95 = a2;
  v93 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v85 = v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v86 = v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v88 = v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v83 = v80 - v26;
  v27 = sub_1D5610088();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D560D9A8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D560D838();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D56120A8();
  v89 = *(v41 - 8);
  v90 = v41;
  v42 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v81 = v80 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D918();
  if (qword_1EC7E93A8 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v27, qword_1EC87C4D8);
  v84 = type metadata accessor for StorePlatformGenre();
  v45 = (a1 + *(v84 + 28));
  v96 = a1;
  sub_1D54301F4(v44, v36, *v45, v45[1], v40);
  (*(v33 + 8))(v36, v32);
  (*(v28 + 16))(v31, v44, v27);
  v80[1] = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v46 = v81;
  v47 = v96;
  sub_1D5612018();
  v48 = v82;
  sub_1D4F39AB0(v47, v82, &qword_1EC7EB5B8, &unk_1D56206A0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_1D4E50004(v48, &qword_1EC7EB5B8, &unk_1D56206A0);
    v50 = 1;
    v51 = v88;
    v53 = v85;
    v52 = v86;
    v54 = v83;
  }

  else
  {
    v54 = v83;
    sub_1D5610758();
    (*(*(v49 - 8) + 8))(v48, v49);
    v50 = 0;
    v51 = v88;
    v53 = v85;
    v52 = v86;
  }

  v55 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v54, v50, 1, v55);
  sub_1D5612088();
  v56 = v84;
  v57 = *(v47 + *(v84 + 20));

  sub_1D5612048();
  sub_1D4F39AB0(v47 + v56[8], v53, &qword_1EC7EC960, &unk_1D56334C0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v53, 1, v58) == 1)
  {
    sub_1D4E50004(v53, &qword_1EC7EC960, &unk_1D56334C0);
    v59 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v58 - 8) + 8))(v53, v58);
    v59 = 0;
  }

  v60 = v87;
  v61 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v52, v59, 1, v61);
  sub_1D5612028();
  v62 = *(v47 + v56[6]);

  sub_1D5612058();
  v63 = v91;
  sub_1D4F39AB0(v47 + v56[11], v91, &qword_1EC7EFBD0, &qword_1D5634650);
  v64 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v63, 1, v64) == 1)
  {
    v65 = &qword_1EC7EFBD0;
    v66 = &qword_1D5634650;
    v67 = v63;
  }

  else
  {
    sub_1D4F39AB0(v63, v60, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v63, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v60, 1, v49) != 1)
    {
      sub_1D5610758();
      (*(*(v49 - 8) + 8))(v60, v49);
      v68 = 0;
      goto LABEL_15;
    }

    v65 = &qword_1EC7EB5B8;
    v66 = &unk_1D56206A0;
    v67 = v60;
  }

  sub_1D4E50004(v67, v65, v66);
  v68 = 1;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v51, v68, 1, v55);
  sub_1D5612038();
  v69 = (v47 + v56[9]);
  v70 = *v69;
  v71 = v69[1];

  sub_1D5612078();
  v72 = (v47 + v56[10]);
  v73 = *v72;
  v74 = v72[1];

  sub_1D5612098();
  sub_1D4F39AB0(v47 + v56[12], v92, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5612068();
  v75 = v90;
  v97[3] = v90;
  v97[4] = MEMORY[0x1E6976410];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v97);
  v77 = v89;
  (*(v89 + 16))(boxed_opaque_existential_0, v46, v75);
  sub_1D5613BA8();

  v78 = sub_1D560CD48();
  (*(*(v78 - 8) + 8))(v95, v78);
  (*(v77 + 8))(v46, v75);
  return sub_1D50EF07C(v47, type metadata accessor for StorePlatformGenre);
}

uint64_t sub_1D50E8C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v65 = a2;
  v67 = a4;
  v5 = sub_1D5613838();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StorePlatformSong();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v54 - v12;
  v63 = sub_1D560CD48();
  v13 = *(v63 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D560EEA8();
  v55 = *(v57 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StorePlatformMusicVideo();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v54 - v24;
  v26 = type metadata accessor for StorePlatformTrack();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D5613D28();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  sub_1D50EF020(a1, v29, type metadata accessor for StorePlatformTrack);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = (v13 + 16);
  v62 = (v13 + 8);
  if (EnumCaseMultiPayload == 1)
  {
    v37 = v58;
    sub_1D50EF0FC(v29, v58, type metadata accessor for StorePlatformSong);
    v38 = v56;
    sub_1D50EF020(v37, v56, type metadata accessor for StorePlatformSong);
    v39 = v34;
    v40 = v31;
    v41 = v30;
    v42 = v16;
    v43 = v16;
    v44 = v65;
    v45 = v63;
    (*v36)(v43, v65, v63);
    v46 = v59;
    v47 = v42;
    v30 = v41;
    v31 = v40;
    v34 = v39;
    sub_1D50D91A4(v38, v47, v64, v59);
    (*v62)(v44, v45);
    sub_1D50EF07C(v66, type metadata accessor for StorePlatformTrack);
    sub_1D50EF07C(v37, type metadata accessor for StorePlatformSong);
    (*(v60 + 32))(v39, v46, v61);
    v48 = MEMORY[0x1E6976E18];
  }

  else
  {
    sub_1D50EF0FC(v29, v25, type metadata accessor for StorePlatformMusicVideo);
    sub_1D50EF020(v25, v23, type metadata accessor for StorePlatformMusicVideo);
    v49 = v65;
    v50 = v63;
    (*v36)(v16, v65, v63);
    v51 = v54;
    sub_1D50D8230(v23, v16, v64, v54);
    (*v62)(v49, v50);
    sub_1D50EF07C(v66, type metadata accessor for StorePlatformTrack);
    sub_1D50EF07C(v25, type metadata accessor for StorePlatformMusicVideo);
    (*(v55 + 32))(v34, v51, v57);
    v48 = MEMORY[0x1E6976DF8];
  }

  (*(v31 + 104))(v34, *v48, v30);
  v52 = v67;
  (*(v31 + 32))(v67, v34, v30);
  return __swift_storeEnumTagSinglePayload(v52, 0, 1, v30);
}

uint64_t sub_1D50E9244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v159 = a3;
  v160 = a2;
  v158 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v130 = &v129 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v157 = &v129 - v10;
  v11 = sub_1D5610788();
  v155 = *(v11 - 8);
  v156 = v11;
  v12 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v153 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1D56107C8();
  v152 = *(v154 - 8);
  v14 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v151 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v150 = &v129 - v18;
  v19 = sub_1D56109D8();
  v148 = *(v19 - 8);
  v149 = v19;
  v20 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v146 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v144 = &v129 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v143 = &v129 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v140 = &v129 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v141 = &v129 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v139 = &v129 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v161 = &v129 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v131 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v137 = &v129 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v142 = &v129 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v138 = &v129 - v49;
  v50 = sub_1D5610088();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v135 = &v129 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D560D9A8();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v129 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D560D838();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = &v129 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1D5612008();
  v145 = *(v147 - 8);
  v63 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v136 = &v129 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D908();
  if (qword_1EC7E9510 != -1)
  {
    swift_once();
  }

  v65 = __swift_project_value_buffer(v50, qword_1EC87C5B0);
  v133 = type metadata accessor for StorePlatformAlbum();
  v66 = (a1 + *(v133 + 84));
  v67 = *v66;
  v68 = v66[1];
  v134 = v62;
  sub_1D54301F4(v65, v58, v67, v68, v62);
  (*(v55 + 8))(v58, v54);
  (*(v51 + 16))(v135, v65, v50);
  v132 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v69 = v133;
  sub_1D5614BD8();
  v70 = v136;
  sub_1D5611F18();
  v71 = v137;
  sub_1D4F39AB0(a1 + v69[7], v137, &qword_1EC7EB5B8, &unk_1D56206A0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v73 = v70;
  if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
  {
    sub_1D4E50004(v71, &qword_1EC7EB5B8, &unk_1D56206A0);
    v74 = 1;
    v75 = v141;
    v76 = v138;
  }

  else
  {
    v76 = v138;
    sub_1D5610758();
    (*(*(v72 - 8) + 8))(v71, v72);
    v74 = 0;
    v75 = v141;
  }

  v77 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v76, v74, 1, v77);
  sub_1D5611FD8();
  v78 = *(a1 + 16);
  v79 = *(a1 + 24);

  sub_1D5611EA8();
  sub_1D4F39AB0(a1 + v69[6], v161, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5611FE8();
  if (*(a1 + v69[8]))
  {
    sub_1D56152A8();
  }

  sub_1D5611EF8();
  v80 = *(a1 + v69[11]);
  if (v80)
  {
    sub_1D5386528(v80, v139);
  }

  else
  {
    v81 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v139, 1, 1, v81);
  }

  sub_1D5611F08();
  v82 = (a1 + v69[12]);
  v83 = *v82;
  v84 = v82[1];

  sub_1D5611FF8();
  v85 = *(a1 + v69[13]);

  sub_1D5611F58();
  v86 = v140;
  sub_1D4F39AB0(a1 + v69[20], v140, &qword_1EC7EC960, &unk_1D56334C0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v86, 1, v87) == 1)
  {
    sub_1D4E50004(v86, &qword_1EC7EC960, &unk_1D56334C0);
    v88 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v87 - 8) + 8))(v86, v87);
    v88 = 0;
  }

  v89 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v75, v88, 1, v89);
  sub_1D5611F28();
  v90 = *(a1 + v69[14]);

  sub_1D5611F88();
  v91 = *(a1 + v69[16]);

  sub_1D5611EB8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D5610A38();

  sub_1D5611F68();
  sub_1D53B2530();
  sub_1D5611F78();
  v92 = *(a1 + v69[19]);
  sub_1D5611EC8();
  v93 = v143;
  sub_1D4F39AB0(a1 + v69[27], v143, &qword_1EC7EFBD0, &qword_1D5634650);
  v94 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v93, 1, v94) == 1)
  {
    sub_1D4E50004(v93, &qword_1EC7EFBD0, &qword_1D5634650);
    v95 = 1;
    v96 = v142;
  }

  else
  {
    v97 = v131;
    sub_1D4F39AB0(v93, v131, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v93, type metadata accessor for StorePlatformUber);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v72);
    v96 = v142;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v97, &qword_1EC7EB5B8, &unk_1D56206A0);
      v95 = 1;
    }

    else
    {
      sub_1D5610758();
      (*(*(v72 - 8) + 8))(v97, v72);
      v95 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v96, v95, 1, v77);
  sub_1D5611F48();
  v99 = v146;
  sub_1D56109A8();
  sub_1D50DFFF0(v99, v144);
  (*(v148 + 8))(v99, v149);
  sub_1D5611F38();
  v100 = v151;
  sub_1D56107A8();
  v101 = (a1 + v69[24]);
  v102 = *v101;
  v103 = v101[1];
  v105 = v155;
  v104 = v156;
  v106 = v153;
  (*(v155 + 104))(v153, *MEMORY[0x1E6975DC8], v156);
  sub_1D5610798();
  (*(v105 + 8))(v106, v104);
  (*(v152 + 8))(v100, v154);
  sub_1D5611EE8();
  v107 = (a1 + v69[22]);
  v108 = *v107;
  v109 = v107[1];

  sub_1D5611FA8();
  v110 = a1 + v69[26];
  v111 = *v110;
  v112 = *(v110 + 8);
  sub_1D5611ED8();
  sub_1D4F39AB0(a1 + v69[28], v161, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5611F98();
  v113 = *(a1 + v69[15]);
  v114 = v157;
  v116 = v159;
  v115 = v160;
  if (v113)
  {
    sub_1D50E02E8(v113, v157);
    v117 = 0;
  }

  else
  {
    v117 = 1;
  }

  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  __swift_storeEnumTagSinglePayload(v114, v117, 1, v118);
  v119 = sub_1D5611FB8();
  if (*(a1 + v69[10]) && *(a1 + v69[9]))
  {
    MEMORY[0x1EEE9AC00](v119);
    *(&v129 - 4) = v120;
    *(&v129 - 3) = v115;
    *(&v129 - 2) = v116;
    v162[0] = sub_1D50DE474(sub_1D50EEF14, (&v129 - 6), v121);
    sub_1D5613D28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD8, &unk_1D56346A0);
    sub_1D50EEF84(&qword_1EC7EFBE0, &qword_1EC7EFBD8, &unk_1D56346A0);
    v122 = v130;
    sub_1D560DAD8();
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
    __swift_storeEnumTagSinglePayload(v122, 0, 1, v123);
    sub_1D5611FC8();
  }

  v124 = v147;
  v162[3] = v147;
  v162[4] = MEMORY[0x1E6976408];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v162);
  v126 = v145;
  (*(v145 + 16))(boxed_opaque_existential_0, v73, v124);
  sub_1D5613978();

  (*(v126 + 8))(v73, v124);
  sub_1D50EF07C(a1, type metadata accessor for StorePlatformAlbum);
  v127 = sub_1D560CD48();
  return (*(*(v127 - 8) + 8))(v115, v127);
}

uint64_t sub_1D50EA374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v36 = a1;
  v37 = a2;
  v8 = sub_1D560CD48();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for StorePlatformTrack();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v32 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v32 - v25;
  v27 = sub_1D5613D28();
  v35 = a6;
  result = __swift_storeEnumTagSinglePayload(a6, 1, 1, v27);
  if (*(a3 + 16))
  {
    result = sub_1D4E4EFA0();
    if (v29)
    {
      sub_1D50EF020(*(a3 + 56) + *(v17 + 72) * result, v24, type metadata accessor for StorePlatformTrack);
      sub_1D50EF0FC(v24, v26, type metadata accessor for StorePlatformTrack);
      sub_1D50EF020(v26, v21, type metadata accessor for StorePlatformTrack);
      (*(v32 + 16))(v11, v33, v8);
      v30 = v34;

      sub_1D50E8C44(v21, v11, v30, v15);
      sub_1D50EF07C(v26, type metadata accessor for StorePlatformTrack);
      v31 = v35;
      sub_1D4E50004(v35, &qword_1EC7EA888, &qword_1D563B8C0);
      return sub_1D4F39A1C(v15, v31, &qword_1EC7EA888, &qword_1D563B8C0);
    }
  }

  return result;
}

uint64_t sub_1D50EA664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v98 = a2;
  v96 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v95 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v90 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v82 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v81 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v93 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v87 = &v81 - v26;
  v27 = sub_1D5610088();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D560D9A8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D560D838();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D5612998();
  v91 = *(v41 - 8);
  v92 = v41;
  v42 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v85 = &v81 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D998();
  if (qword_1EC7E9668 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v27, qword_1EC87C640);
  v88 = type metadata accessor for StorePlatformRadioShow();
  v45 = (a1 + *(v88 + 28));
  v84 = a1;
  sub_1D54301F4(v44, v36, *v45, v45[1], v40);
  (*(v33 + 8))(v36, v32);
  (*(v28 + 16))(v31, v44, v27);
  v83 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v46 = v85;
  sub_1D5612908();
  v47 = v84;
  v48 = v86;
  sub_1D4F39AB0(v84, v86, &qword_1EC7EB5B8, &unk_1D56206A0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_1D4E50004(v48, &qword_1EC7EB5B8, &unk_1D56206A0);
    v50 = 1;
    v51 = v89;
    v52 = v87;
  }

  else
  {
    v52 = v87;
    sub_1D5610758();
    (*(*(v49 - 8) + 8))(v48, v49);
    v50 = 0;
    v51 = v89;
  }

  v53 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v52, v50, 1, v53);
  sub_1D5612978();
  v54 = v88;
  v55 = *(v47 + *(v88 + 20));

  sub_1D5612938();
  sub_1D4F39AB0(v47 + v54[8], v51, &qword_1EC7EC960, &unk_1D56334C0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v56);
  v58 = v90;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v51, &qword_1EC7EC960, &unk_1D56334C0);
    v59 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v56 - 8) + 8))(v51, v56);
    v59 = 0;
  }

  v60 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v58, v59, 1, v60);
  sub_1D5612918();
  v61 = *(v47 + v54[6]);

  sub_1D5612948();
  v62 = (v47 + v54[10]);
  v63 = *v62;
  v64 = v62[1];

  sub_1D5612988();
  v65 = v94;
  sub_1D4F39AB0(v47 + v54[11], v94, &qword_1EC7EFBD0, &qword_1D5634650);
  v66 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
  {
    v67 = &qword_1EC7EFBD0;
    v68 = &qword_1D5634650;
    v69 = v65;
  }

  else
  {
    v70 = v82;
    sub_1D4F39AB0(v65, v82, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v65, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v70, 1, v49) != 1)
    {
      v72 = v93;
      sub_1D5610758();
      (*(*(v49 - 8) + 8))(v70, v49);
      v71 = 0;
      goto LABEL_15;
    }

    v67 = &qword_1EC7EB5B8;
    v68 = &unk_1D56206A0;
    v69 = v70;
  }

  sub_1D4E50004(v69, v67, v68);
  v71 = 1;
  v72 = v93;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v72, v71, 1, v53);
  sub_1D5612928();
  v73 = (v47 + v54[9]);
  v74 = *v73;
  v75 = v73[1];

  sub_1D5612968();
  sub_1D4F39AB0(v47 + v54[12], v95, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5612958();
  v76 = v92;
  v99[3] = v92;
  v99[4] = MEMORY[0x1E6976620];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v99);
  v78 = v91;
  (*(v91 + 16))(boxed_opaque_existential_0, v46, v76);
  sub_1D5614AD8();

  v79 = sub_1D560CD48();
  (*(*(v79 - 8) + 8))(v98, v79);
  (*(v78 + 8))(v46, v76);
  return sub_1D50EF07C(v47, type metadata accessor for StorePlatformRadioShow);
}

uint64_t sub_1D50EB054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v98 = a2;
  v96 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v95 = v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = v81 - v10;
  v11 = sub_1D56128C8();
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v88 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v81[0] = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v83 = v81 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v93 = v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v84 = v81 - v28;
  v29 = sub_1D5610088();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D560D9A8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D560D838();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D5612C28();
  v91 = *(v43 - 8);
  v92 = v43;
  v44 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v82 = v81 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D888();
  if (qword_1EC7E9710 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v29, qword_1EC87C6C0);
  v86 = type metadata accessor for StorePlatformRecordLabel();
  v47 = (a1 + *(v86 + 32));
  v99 = a1;
  sub_1D54301F4(v46, v38, *v47, v47[1], v42);
  (*(v35 + 8))(v38, v34);
  (*(v30 + 16))(v33, v46, v29);
  v81[1] = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v48 = v99;
  sub_1D5614BD8();
  v49 = v82;
  sub_1D5612B98();
  v50 = v83;
  sub_1D4F39AB0(v48, v83, &qword_1EC7EB5B8, &unk_1D56206A0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v52 = v49;
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    sub_1D4E50004(v50, &qword_1EC7EB5B8, &unk_1D56206A0);
    v53 = 1;
    v54 = v84;
    v55 = v85;
  }

  else
  {
    v54 = v84;
    sub_1D5610758();
    (*(*(v51 - 8) + 8))(v50, v51);
    v53 = 0;
    v55 = v85;
  }

  v56 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v54, v53, 1, v56);
  sub_1D5612C18();
  v57 = v86;
  v58 = *(v48 + *(v86 + 24));

  sub_1D5612BC8();
  v59 = v57[5];
  sub_1D4F39AB0(v48 + v59, v55, &qword_1EC7EC978, &unk_1D56222A0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  if (__swift_getEnumTagSinglePayload(v55, 1, v60) == 1)
  {
    sub_1D4E50004(v55, &qword_1EC7EC978, &unk_1D56222A0);
  }

  else
  {
    v61 = v88;
    sub_1D5610708();
    (*(*(v60 - 8) + 8))(v55, v60);
    sub_1D56128A8();
    (*(v89 + 8))(v61, v90);
  }

  sub_1D5612BB8();
  v62 = v87;
  sub_1D4F39AB0(v48 + v59, v87, &qword_1EC7EC978, &unk_1D56222A0);
  if (__swift_getEnumTagSinglePayload(v62, 1, v60) == 1)
  {
    sub_1D4E50004(v62, &qword_1EC7EC978, &unk_1D56222A0);
  }

  else
  {
    v63 = v88;
    sub_1D5610708();
    (*(*(v60 - 8) + 8))(v62, v60);
    sub_1D56128B8();
    (*(v89 + 8))(v63, v90);
  }

  v64 = v94;
  sub_1D5612BD8();
  v65 = *(v48 + v57[7]);

  sub_1D5612BE8();
  sub_1D4F39AB0(v48 + v57[10], v64, &qword_1EC7EFBD0, &qword_1D5634650);
  v66 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v64, 1, v66) == 1)
  {
    v67 = &qword_1EC7EFBD0;
    v68 = &qword_1D5634650;
    v69 = v64;
  }

  else
  {
    v70 = v81[0];
    sub_1D4F39AB0(v64, v81[0], &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v64, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v70, 1, v51) != 1)
    {
      v72 = v93;
      sub_1D5610758();
      (*(*(v51 - 8) + 8))(v70, v51);
      v71 = 0;
      goto LABEL_18;
    }

    v67 = &qword_1EC7EB5B8;
    v68 = &unk_1D56206A0;
    v69 = v70;
  }

  sub_1D4E50004(v69, v67, v68);
  v71 = 1;
  v72 = v93;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v72, v71, 1, v56);
  sub_1D5612BA8();
  v73 = (v48 + v57[9]);
  v74 = *v73;
  v75 = v73[1];

  sub_1D5612C08();
  sub_1D4F39AB0(v48 + v57[11], v95, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5612BF8();
  v76 = v92;
  v100[3] = v92;
  v100[4] = MEMORY[0x1E6976678];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v100);
  v78 = v91;
  (*(v91 + 16))(boxed_opaque_existential_0, v52, v76);
  sub_1D560F838();

  v79 = sub_1D560CD48();
  (*(*(v79 - 8) + 8))(v98, v79);
  (*(v78 + 8))(v52, v76);
  return sub_1D50EF07C(v48, type metadata accessor for StorePlatformRecordLabel);
}

uint64_t sub_1D50EBB70@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v243 = a3;
  v244 = a2;
  v214 = a4;
  v209 = sub_1D5611AE8();
  v208 = *(v209 - 8);
  v5 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v207 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v202 = &v201 - v9;
  v240 = sub_1D560CD48();
  v230 = *(v240 - 8);
  v10 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v235 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StorePlatformPlaylistEntry();
  v237 = *(v12 - 8);
  v13 = *(v237 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v234 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v236 = (&v201 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v245 = &v201 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v233 = &v201 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v239 = &v201 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v241 = &v201 - v25;
  v242 = sub_1D5614828();
  v211 = *(v242 - 8);
  v26 = *(v211 + 64);
  v27 = MEMORY[0x1EEE9AC00](v242);
  v210 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v201 = &v201 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v203 = &v201 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v246 = &v201 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v206 = &v201 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v205 = &v201 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v238 = &v201 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v232 = (&v201 - v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v228 = &v201 - v48;
  v227 = sub_1D5610788();
  v226 = *(v227 - 1);
  v49 = v226[8];
  MEMORY[0x1EEE9AC00](v227);
  v224 = &v201 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_1D56107C8();
  v223 = *(v225 - 8);
  v51 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v221 = &v201 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v220 = &v201 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v218 = &v201 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC38, &qword_1D56346E0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v219 = &v201 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8);
  v204 = &v201 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v216 = &v201 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x1EEE9AC00](v67 - 8);
  v222 = &v201 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v217 = &v201 - v71;
  v72 = sub_1D5610088();
  isUniquelyReferenced_nonNull_native = *(v72 - 8);
  v74 = isUniquelyReferenced_nonNull_native[8];
  MEMORY[0x1EEE9AC00](v72);
  v76 = (&v201 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_1D560D9A8();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v201 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D560D838();
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v85 = (&v201 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  v213 = sub_1D5612848();
  v212 = *(v213 - 8);
  v86 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v229 = &v201 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D968();
  if (qword_1EC7E9718 != -1)
  {
LABEL_78:
    swift_once();
  }

  v88 = __swift_project_value_buffer(v72, qword_1EC87C6D8);
  v247 = type metadata accessor for StorePlatformPlaylist();
  v89 = (a1 + *(v247 + 60));
  v231 = a1;
  sub_1D54301F4(v88, v81, *v89, v89[1], v85);
  (*(v78 + 8))(v81, v77);
  (isUniquelyReferenced_nonNull_native[2])(v76, v88, v72);
  v215 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v90 = v231;
  sub_1D5614BD8();
  v91 = v229;
  sub_1D5612718();
  v92 = v216;
  sub_1D4F39AB0(v90, v216, &qword_1EC7EB5B8, &unk_1D56206A0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, 1, v93);
  v215 = v93;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v92, &qword_1EC7EB5B8, &unk_1D56206A0);
    v95 = 1;
    v96 = v217;
  }

  else
  {
    v96 = v217;
    sub_1D5610758();
    (*(*(v93 - 8) + 8))(v92, v93);
    v95 = 0;
  }

  v217 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v96, v95, 1, v217);
  sub_1D5612818();
  v97 = v247;
  if (*(v90 + *(v247 + 20)))
  {
    sub_1D56152A8();
  }

  sub_1D5612708();
  v98 = (v90 + v97[6]);
  v99 = *v98;
  v100 = v98[1];

  sub_1D56126F8();
  v101 = *(v90 + v97[10]);

  sub_1D5612788();
  v102 = *(v90 + v97[11]);

  sub_1D56127B8();
  swift_getKeyPath();
  sub_1D5610A38();

  sub_1D56127A8();
  v103 = *(v90 + v97[16]);
  sub_1D5612838();
  v104 = v218;
  sub_1D4F39AB0(v90 + v97[17], v218, &qword_1EC7EFC30, &qword_1D56346D8);
  v105 = sub_1D56104C8();
  if (__swift_getEnumTagSinglePayload(v104, 1, v105) == 1)
  {
    sub_1D4E50004(v104, &qword_1EC7EFC30, &qword_1D56346D8);
    v106 = sub_1D56146C8();
    __swift_storeEnumTagSinglePayload(v219, 1, 1, v106);
  }

  else
  {
    sub_1D56104B8();
    (*(*(v105 - 8) + 8))(v104, v105);
  }

  sub_1D56127E8();
  v107 = v221;
  sub_1D56107A8();
  v108 = v247;
  v109 = (v90 + *(v247 + 48));
  v111 = *v109;
  v110 = v109[1];
  v112 = v226;
  v113 = v224;
  v114 = v227;
  (v226[13])(v224, *MEMORY[0x1E6975DD0], v227);
  sub_1D5610798();
  (v112[1])(v113, v114);
  (*(v223 + 8))(v107, v225);
  v115 = v90;
  sub_1D5612768();
  v116 = v228;
  sub_1D4F39AB0(v90 + v108[19], v228, &qword_1EC7EFBD0, &qword_1D5634650);
  v117 = type metadata accessor for StorePlatformUber();
  if (__swift_getEnumTagSinglePayload(v116, 1, v117) == 1)
  {
    sub_1D4E50004(v116, &qword_1EC7EFBD0, &qword_1D5634650);
    v118 = 1;
    v119 = v222;
  }

  else
  {
    v120 = v204;
    sub_1D4F39AB0(v116, v204, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v116, type metadata accessor for StorePlatformUber);
    v121 = v215;
    v122 = __swift_getEnumTagSinglePayload(v120, 1, v215);
    v119 = v222;
    if (v122 == 1)
    {
      sub_1D4E50004(v120, &qword_1EC7EB5B8, &unk_1D56206A0);
      v118 = 1;
    }

    else
    {
      sub_1D5610758();
      (*(*(v121 - 8) + 8))(v120, v121);
      v118 = 0;
    }
  }

  v81 = v241;
  v77 = v242;
  __swift_storeEnumTagSinglePayload(v119, v118, 1, v217);
  sub_1D5612758();
  v123 = (v115 + v108[13]);
  v124 = *v123;
  v125 = v123[1];

  sub_1D56127F8();
  v126 = v108[9];
  v127 = v232;
  sub_1D4F39AB0(v115 + v126, v232, &qword_1EC7EAC98, &unk_1D561DA80);
  v128 = sub_1D5610978();
  if (__swift_getEnumTagSinglePayload(v127, 1, v128) == 1)
  {
    sub_1D4E50004(v127, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610948();
    v130 = v129;
    (*(*(v128 - 8) + 8))(v127, v128);
    if (v130)
    {
      goto LABEL_22;
    }
  }

  v131 = v205;
  sub_1D4F39AB0(v115 + v108[14], v205, &qword_1EC7EC960, &unk_1D56334C0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v131, 1, v132) == 1)
  {
    sub_1D4E50004(v131, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    v133 = v207;
    sub_1D5610708();
    (*(*(v132 - 8) + 8))(v131, v132);
    sub_1D5611AC8();
    v134 = v133;
    v108 = v247;
    (*(v208 + 8))(v134, v209);
  }

LABEL_22:
  sub_1D5612778();
  v135 = v115 + v126;
  v136 = v238;
  sub_1D4F39AB0(v135, v238, &qword_1EC7EAC98, &unk_1D561DA80);
  if (__swift_getEnumTagSinglePayload(v136, 1, v128) == 1)
  {
    sub_1D4E50004(v136, &qword_1EC7EAC98, &unk_1D561DA80);
LABEL_26:
    v140 = v206;
    sub_1D4F39AB0(v115 + v108[14], v206, &qword_1EC7EC960, &unk_1D56334C0);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    if (__swift_getEnumTagSinglePayload(v140, 1, v141) == 1)
    {
      sub_1D4E50004(v140, &qword_1EC7EC960, &unk_1D56334C0);
    }

    else
    {
      v142 = v207;
      sub_1D5610708();
      (*(*(v141 - 8) + 8))(v140, v141);
      sub_1D5611AD8();
      (*(v208 + 8))(v142, v209);
    }

    v139 = v246;

    goto LABEL_30;
  }

  sub_1D5610968();
  v138 = v137;
  (*(*(v128 - 8) + 8))(v136, v128);
  if (!v138)
  {
    goto LABEL_26;
  }

  v139 = v246;
LABEL_30:
  sub_1D5612798();
  v143 = *(v115 + v108[8]);
  v247 = v143;
  if (v143 || (v143 = *(v115 + v108[7])) != 0)
  {
    v144 = *(v143 + 16);
  }

  sub_1D56126D8();
  v145 = *(v115 + v108[18]);

  sub_1D56126E8();
  sub_1D4F39AB0(v115 + v108[20], v139, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v146 = sub_1D56127D8();
  if (!v247 || !*(v115 + v108[7]))
  {
LABEL_71:
    v197 = v213;
    v248[3] = v213;
    v248[4] = MEMORY[0x1E69765B0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v248);
    v199 = v212;
    (*(v212 + 16))(boxed_opaque_existential_0, v91, v197);
    sub_1D56145A8();

    (*(v199 + 8))(v91, v197);
    (*(v230 + 8))(v244, v240);
    return sub_1D50EF07C(v115, type metadata accessor for StorePlatformPlaylist);
  }

  MEMORY[0x1EEE9AC00](v146);
  v238 = v147;
  v148 = v243;
  v149 = v244;
  *(&v201 - 4) = v147;
  *(&v201 - 3) = v149;
  *(&v201 - 2) = v148;
  v150 = v247;
  v248[0] = sub_1D50DE474(sub_1D50EEF30, (&v201 - 6), v247);
  isUniquelyReferenced_nonNull_native = sub_1D5613D28();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD8, &unk_1D56346A0);
  sub_1D50EEF84(&qword_1EC7EFBE0, &qword_1EC7EFBD8, &unk_1D56346A0);
  v151 = v203;
  sub_1D560DAD8();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  __swift_storeEnumTagSinglePayload(v151, 0, 1, v152);
  sub_1D5612808();
  sub_1D4F53BAC();
  v228 = MEMORY[0x1E69E7CC0];
  a1 = sub_1D5614BD8();
  v246 = *(v150 + 16);
  v232 = (v230 + 16);
  v227 = (v211 + 32);

  v72 = 0;
  v85 = (v150 + 40);
  v226 = v85;
LABEL_36:
  v76 = &v85[2 * v72];
  v153 = v238;
  v154 = v239;
  while (1)
  {
    if (v246 == v72)
    {

      v248[0] = v228;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
      sub_1D50EEF84(&qword_1EC7ED3E8, &qword_1EC7ED398, &unk_1D5625000);
      v195 = v202;
      sub_1D560DAD8();
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
      __swift_storeEnumTagSinglePayload(v195, 0, 1, v196);
      v91 = v229;
      sub_1D5612828();
      sub_1D56127C8();

      v115 = v231;
      goto LABEL_71;
    }

    if (v72 >= *(v247 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v85 = *(v76 - 1);
    v78 = *v76;
    __swift_storeEnumTagSinglePayload(v154, 1, 1, v77);
    v155 = *(v153 + 16);

    if (!v155 || (v156 = sub_1D4E4EFA0(), (v157 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = &unk_1EC7F2BE0;
      v85 = &qword_1D56250F0;
      goto LABEL_61;
    }

    isUniquelyReferenced_nonNull_native = v236;
    sub_1D50EF020(*(v153 + 56) + *(v237 + 72) * v156, v236, type metadata accessor for StorePlatformPlaylistEntry);
    sub_1D50EF0FC(isUniquelyReferenced_nonNull_native, v245, type metadata accessor for StorePlatformPlaylistEntry);
    if (!a1[2] || (v158 = sub_1D4F15A78(v85, v78), (v159 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v248[0] = a1;
      v169 = sub_1D4F15A78(v85, v78);
      v171 = a1[2];
      v172 = (v170 & 1) == 0;
      a1 = (v171 + v172);
      if (__OFADD__(v171, v172))
      {
        goto LABEL_74;
      }

      v77 = v169;
      v173 = v170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC40, &qword_1D5634708);
      if (sub_1D5615D78())
      {
        v174 = sub_1D4F15A78(v85, v78);
        if ((v173 & 1) != (v175 & 1))
        {
          goto LABEL_80;
        }

        v77 = v174;
      }

      a1 = v248[0];
      if (v173)
      {
        *(*(v248[0] + 56) + 8 * v77) = 0;
      }

      else
      {
        *(v248[0] + 8 * (v77 >> 6) + 64) |= 1 << v77;
        v176 = (a1[6] + 16 * v77);
        *v176 = v85;
        v176[1] = v78;
        *(a1[7] + 8 * v77) = 0;
        v177 = a1[2];
        v178 = __OFADD__(v177, 1);
        v179 = v177 + 1;
        if (v178)
        {
          goto LABEL_75;
        }

        a1[2] = v179;
      }

      v77 = 0;
      goto LABEL_60;
    }

    v160 = *(a1[7] + 8 * v158);
    v77 = v160 + 1;
    if (__OFADD__(v160, 1))
    {
      goto LABEL_76;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = a1;
    v161 = sub_1D4F15A78(v85, v78);
    v163 = a1[2];
    v164 = (v162 & 1) == 0;
    a1 = (v163 + v164);
    if (__OFADD__(v163, v164))
    {
      goto LABEL_77;
    }

    v165 = v161;
    v166 = v162;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC40, &qword_1D5634708);
    if (sub_1D5615D78())
    {
      v167 = sub_1D4F15A78(v85, v78);
      if ((v166 & 1) != (v168 & 1))
      {
        goto LABEL_80;
      }

      v165 = v167;
    }

    a1 = v248[0];
    if ((v166 & 1) == 0)
    {
      break;
    }

    *(*(v248[0] + 56) + 8 * v165) = v77;
LABEL_60:
    v180 = v245;
    v181 = v234;
    sub_1D50EF020(v245, v234, type metadata accessor for StorePlatformPlaylistEntry);
    v182 = v235;
    (*v232)(v235, v244, v240);
    v183 = v243;

    v184 = v233;
    sub_1D50D5C84(v181, v182, v183, v72, v77, v233);
    sub_1D50EF07C(v180, type metadata accessor for StorePlatformPlaylistEntry);
    v154 = v239;
    isUniquelyReferenced_nonNull_native = &unk_1EC7F2BE0;
    v85 = &qword_1D56250F0;
    sub_1D4E50004(v239, &unk_1EC7F2BE0, &qword_1D56250F0);
    v77 = v242;
    __swift_storeEnumTagSinglePayload(v184, 0, 1, v242);
    sub_1D4F39A1C(v184, v154, &unk_1EC7F2BE0, &qword_1D56250F0);
    v81 = v241;
    v153 = v238;
LABEL_61:
    sub_1D4F39A1C(v154, v81, &unk_1EC7F2BE0, &qword_1D56250F0);

    if (__swift_getEnumTagSinglePayload(v81, 1, v77) != 1)
    {
      v188 = *v227;
      v189 = v201;
      (*v227)(v201, v81, v77);
      v188(v210, v189, v77);
      v78 = v228;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v192 = *(v78 + 16);
        sub_1D4F00B4C();
        v78 = v193;
      }

      v85 = v226;
      v190 = *(v78 + 16);
      isUniquelyReferenced_nonNull_native = (v190 + 1);
      if (v190 >= *(v78 + 24) >> 1)
      {
        sub_1D4F00B4C();
        v78 = v194;
      }

      ++v72;
      *(v78 + 16) = isUniquelyReferenced_nonNull_native;
      v191 = (*(v211 + 80) + 32) & ~*(v211 + 80);
      v228 = v78;
      v188((v78 + v191 + *(v211 + 72) * v190), v210, v77);
      goto LABEL_36;
    }

    sub_1D4E50004(v81, &unk_1EC7F2BE0, &qword_1D56250F0);
    v76 += 2;
    ++v72;
  }

  *(v248[0] + 8 * (v165 >> 6) + 64) |= 1 << v165;
  v185 = (a1[6] + 16 * v165);
  *v185 = v85;
  v185[1] = v78;
  *(a1[7] + 8 * v165) = v77;
  v186 = a1[2];
  v178 = __OFADD__(v186, 1);
  v187 = v186 + 1;
  if (!v178)
  {
    a1[2] = v187;

    goto LABEL_60;
  }

  __break(1u);
LABEL_80:
  result = sub_1D5616238();
  __break(1u);
  return result;
}