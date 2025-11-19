unint64_t sub_1934E2494()
{
  result = qword_1EAE3A728;
  if (!qword_1EAE3A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A728);
  }

  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.hash(into:)()
{
  v1 = v0;
  v2 = sub_19393BE00();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  sub_1934DE90C(v1 + v14[7], v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v2);
    sub_19393CAD0();
    sub_1934DF3E8(&qword_1EAE3B978);
    sub_19393C540();
    (*(v5 + 8))(v9, v2);
  }

  OUTLINED_FUNCTION_5_0(v14[8]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v15);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[9]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v16);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[10]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v17);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[11]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v18);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[12]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v19);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[13]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v20);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v21 = (v1 + v14[14]);
  if (*(v21 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v21;
    sub_19393CAD0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_5_0(v14[15]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v22);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v23 = (v1 + v14[16]);
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  v26 = v24;
  v27 = v23;
  sub_1934E27C4();
  return sub_19393C540();
}

unint64_t sub_1934E27C4()
{
  result = qword_1EAE3BA18;
  if (!qword_1EAE3BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA18);
  }

  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.ExecutionEnvironment.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = 1;
  switch(result)
  {
    case 1:
      break;
    case 3:
      v2 = 1;
      break;
    case 4:
      v2 = 2;
      break;
    case 5:
      v2 = 3;
      break;
    default:
      v3 = 0;
      v2 = result;
      break;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.ExecutionEnvironment.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193958168[result];
  }

  return result;
}

char *static GenerativeExperiencesTransparencyLog.ExecutionEnvironment.allCases.getter()
{
  v0 = sub_1934E2C54(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E2C54(v16, v2 + 1, 1, v17);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v18 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E2C54(v18, v2 + 2, 1, v19);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v20 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E2C54(v20, v2 + 3, 1, v21);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v22 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934E2C54(v22, v2 + 4, 1, v23);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v24 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_1934E2C54(v24, v2 + 5, 1, v25);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t GenerativeExperiencesTransparencyLog.ExecutionEnvironment.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 0x6563697665446E4FLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 2019650113;
      break;
    case 3:
      result = 0x54504774616843;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.ExecutionEnvironment.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x6563697665446E4FLL && a2 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0xD000000000000013 && 0x8000000193A17C50 == a2;
  if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  v12 = a1 == 2019650113 && a2 == 0xE400000000000000;
  if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else if (a1 == 0x54504774616843 && a2 == 0xE700000000000000)
  {

    v9 = 1;
    v8 = 3;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();

    v8 = 3;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1934E2C54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA28, &qword_193958160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1934E2D54()
{
  result = qword_1EAE3BA20;
  if (!qword_1EAE3BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA20);
  }

  return result;
}

uint64_t sub_1934E2DA8()
{
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, &qword_1EAEA8FC0);
  __swift_project_value_buffer(v3, &qword_1EAEA8FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v9, xmmword_193952660);
  *v2 = 1;
  *v1 = "timestamp";
  *(v1 + 8) = 9;
  *(v1 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v11);
  v13 = *(v12 + 104);
  v13(v1, v10, v0);
  v14 = OUTLINED_FUNCTION_3_1(v2 + v6);
  *v15 = 2;
  *v14 = "identifier";
  v14[1] = 10;
  v16 = OUTLINED_FUNCTION_41(v14);
  (v13)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v2 + 2 * v6);
  *v18 = 3;
  *v17 = "prompt";
  v17[1] = 6;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v13)(v19);
  v20 = OUTLINED_FUNCTION_44(3 * v6);
  *v21 = 4;
  v22 = OUTLINED_FUNCTION_5_4(v20, "response");
  (v13)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v2 + 4 * v6);
  *v24 = 5;
  v25 = OUTLINED_FUNCTION_5_4(v23, "model");
  (v13)(v25);
  v26 = OUTLINED_FUNCTION_44(5 * v6);
  *v27 = 6;
  v28 = OUTLINED_FUNCTION_5_4(v26, "modelVersion");
  (v13)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v2 + 6 * v6);
  *v30 = 7;
  v31 = OUTLINED_FUNCTION_5_4(v29, "useCase");
  (v13)(v31);
  v32 = OUTLINED_FUNCTION_44(7 * v6);
  *v33 = 8;
  *v32 = "errorCode";
  v32[1] = 9;
  v34 = OUTLINED_FUNCTION_41(v32);
  (v13)(v34);
  v35 = OUTLINED_FUNCTION_3_1(&v2[v6]);
  *v36 = 9;
  v37 = OUTLINED_FUNCTION_5_4(v35, "clientIdentifier");
  (v13)(v37);
  v38 = OUTLINED_FUNCTION_44(9 * v6);
  *v39 = 10;
  *v38 = "executionEnvironment";
  *(v38 + 8) = 20;
  *(v38 + 16) = 2;
  (v13)();
  return sub_19393C410();
}

void sub_1934E30AC()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 28);
        sub_1934976E4();
        goto LABEL_16;
      case 2:
        v6 = *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 32);
        goto LABEL_15;
      case 3:
        v6 = *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 36);
        goto LABEL_15;
      case 4:
        v6 = *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 40);
        goto LABEL_15;
      case 5:
        v6 = *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 44);
        goto LABEL_15;
      case 6:
        v6 = *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 48);
        goto LABEL_15;
      case 7:
        v6 = *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 52);
        goto LABEL_15;
      case 8:
        v8 = type metadata accessor for GenerativeExperiencesTransparencyLog();
        OUTLINED_FUNCTION_8_2(*(v8 + 56));
        sub_19393C170();
        goto LABEL_16;
      case 9:
        v6 = *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 60);
LABEL_15:
        OUTLINED_FUNCTION_8_2(v6);
        sub_19393C200();
LABEL_16:
        v2 = 0;
        break;
      case 10:
        sub_1934982A8();
        v7 = v0 + *(type metadata accessor for GenerativeExperiencesTransparencyLog() + 64);
        *v7 = 0;
        *(v7 + 8) = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1934E3290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1934E349C(v3);
  if (!v4)
  {
    v8 = type metadata accessor for GenerativeExperiencesTransparencyLog();
    OUTLINED_FUNCTION_5_20(v8[8]);
    if (v10)
    {
      v11 = *v9;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[9]);
    if (v13)
    {
      v14 = *v12;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[10]);
    if (v16)
    {
      v17 = *v15;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[11]);
    if (v19)
    {
      v20 = *v18;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[12]);
    if (v22)
    {
      v23 = *v21;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[13]);
    if (v25)
    {
      v26 = *v24;
      OUTLINED_FUNCTION_2_10();
    }

    v27 = (v3 + v8[14]);
    if ((v27[1] & 1) == 0)
    {
      v28 = *v27;
      sub_19393C350();
    }

    OUTLINED_FUNCTION_5_20(v8[15]);
    if (v30)
    {
      v31 = *v29;
      OUTLINED_FUNCTION_2_10();
    }

    v32 = v3 + v8[16];
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *v32;
    v36 = v34;
    sub_1934E2494();
    result = sub_19393C550();
    if ((result & 1) == 0)
    {
      v35 = v33;
      v36 = v34;
      return sub_193447324(&v35, 10, a2, &type metadata for GenerativeExperiencesTransparencyLog.ExecutionEnvironment, a3, &off_1F07C2F10);
    }
  }

  return result;
}

uint64_t sub_1934E349C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_19393BE00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  sub_1934DE90C(a1 + *(v11 + 28), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1934DFCD4(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_193451F04(v10, 1, 2020175477, 0xE400000000000000);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1934E3658()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3BA30;

  return v0;
}

uint64_t sub_1934E36F4()
{
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, qword_1EAEA8FD8);
  __swift_project_value_buffer(v3, qword_1EAEA8FD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v9, xmmword_19394FBD0);
  *v2 = 0;
  *v1 = "Unknown";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v11);
  v13 = *(v12 + 104);
  v13(v1, v10, v0);
  v14 = OUTLINED_FUNCTION_3_1(v2 + v6);
  *v15 = 1;
  v16 = OUTLINED_FUNCTION_5_4(v14, "OnDevice");
  (v13)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v2 + 2 * v6);
  *v18 = 3;
  v19 = OUTLINED_FUNCTION_5_4(v17, "PrivateCloudCompute");
  (v13)(v19);
  v20 = OUTLINED_FUNCTION_44(3 * v6);
  *v21 = 4;
  v22 = OUTLINED_FUNCTION_5_4(v20, "Ajax");
  (v13)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v2 + 4 * v6);
  *v24 = 5;
  *v23 = "ChatGPT";
  v23[1] = 7;
  v25 = OUTLINED_FUNCTION_41(v23);
  (v13)(v25);
  return sub_19393C410();
}

uint64_t GenerativeExperiencesTransparencyLog.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for GenerativeExperiencesTransparencyLog()
{
  result = qword_1ED50EE40;
  if (!qword_1ED50EE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t GenerativeExperiencesTransparencyLog.timestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  return sub_19344865C(v1 + *(v2 + 28), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t GenerativeExperiencesTransparencyLog.identifier.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.identifier.setter()
{
  v3 = OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.prompt.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.prompt.setter()
{
  v3 = OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.response.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.response.setter()
{
  v3 = OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.model.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.model.setter()
{
  v3 = OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.modelVersion.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  OUTLINED_FUNCTION_4_4(*(v0 + 48));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.modelVersion.setter()
{
  v3 = OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.useCase.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.useCase.setter()
{
  v3 = OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.errorCode.setter()
{
  result = OUTLINED_FUNCTION_5_21();
  v3 = v1 + *(result + 56);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.clientIdentifier.getter()
{
  v0 = type metadata accessor for GenerativeExperiencesTransparencyLog();
  OUTLINED_FUNCTION_4_4(*(v0 + 60));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.clientIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.executionEnvironment.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for GenerativeExperiencesTransparencyLog();
  v3 = (v1 + *(result + 64));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.executionEnvironment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for GenerativeExperiencesTransparencyLog();
  v5 = v1 + *(result + 64);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_1934E41C4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeExperiencesTransparencyLog.ExecutionEnvironment.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934E41EC@<X0>(char **a1@<X8>)
{
  result = static GenerativeExperiencesTransparencyLog.ExecutionEnvironment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934E4214()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934E4220();
}

uint64_t sub_1934E4220()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesTransparencyLog.ExecutionEnvironment.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934E427C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934E4288();
}

uint64_t sub_1934E42CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934E42D8();
}

uint64_t sub_1934E42D8()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesTransparencyLog.ExecutionEnvironment.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_1934E4330(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_1934E434C();
}

uint64_t GenerativeExperiencesTransparencyLog.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesTransparencyLog.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934E43EC()
{
  sub_19393CAB0();
  GenerativeExperiencesTransparencyLog.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1934E442C()
{
  result = qword_1EAE3BA40;
  if (!qword_1EAE3BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BA48, &qword_1939581F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA40);
  }

  return result;
}

unint64_t sub_1934E4498()
{
  result = qword_1EAE3BA50;
  if (!qword_1EAE3BA50)
  {
    type metadata accessor for GenerativeExperiencesTransparencyLog();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA50);
  }

  return result;
}

uint64_t sub_1934E451C()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508290);
    v1 = v5;
    if (v6 > 0x3F)
    {
      return v1;
    }

    sub_19349D1FC(319, &qword_1ED508058);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *_s4SiriOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934E46F0()
{
  v0 = sub_19393C820();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = sub_19393C810();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v8 = sub_19393C4E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_5_1();
  sub_19343CF00(0, &qword_1EAE3BA78, 0x1E69E9610);
  sub_19393C4D0();
  sub_1934E666C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA88, &qword_1939584B8);
  sub_1934E66C4();
  sub_19393C8A0();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v0);
  result = sub_19393C840();
  qword_1ED510168 = result;
  return result;
}

id sub_1934E48F0@<X0>(void *a1@<X8>)
{
  v3 = qword_1EAE4FE30;
  if (qword_1EAE4FE30)
  {
    v4 = qword_1EAE4FE30;
LABEL_3:
    *a1 = v4;
    return v3;
  }

  sub_193434AE0();
  result = sub_19393BF70();
  if (!v1)
  {
    v6 = qword_1EAE4FE30;
    qword_1EAE4FE30 = result;
    v4 = result;

    v3 = 0;
    goto LABEL_3;
  }

  return result;
}

uint64_t *sub_1934E49C8()
{
  if (qword_1ED50E5D0 != -1)
  {
    OUTLINED_FUNCTION_7_18();
  }

  return &qword_1ED5127B0;
}

id sub_1934E4A60()
{
  v1 = sub_19393C570();
  if (qword_1EAE45B60 != -1)
  {
    OUTLINED_FUNCTION_5_22();
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = OUTLINED_FUNCTION_8_21();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_ClientSessionIdIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_1934E4CF8()
{
  v1 = sub_19393C570();
  if (qword_1EAE45B70 != -1)
  {
    OUTLINED_FUNCTION_4_16();
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_TaskIdIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_1934E4DE0(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v3 = OUTLINED_FUNCTION_11_15();
  v4 = MEMORY[0x1E69E63B0];
  *(v3 + 16) = xmmword_19394FBE0;
  *(v3 + 56) = v4;
  *(v3 + 32) = a1;
  v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v6 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v3 + 88) = v6;
  *(v3 + 64) = v5;
  v7 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_3_26(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v15);
  *(v16 + 56) = v4;
  *(v16 + 32) = a1;
  v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v5[11] = v6;
  v5[8] = v17;
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v1)
  {
  }

  else
  {
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v21, v3, v5, v22);
  }
}

id sub_1934E4F90(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v10 = OUTLINED_FUNCTION_11_15();
  *(v10 + 16) = xmmword_19394FBE0;
  v11 = MEMORY[0x1E69E63B0];
  if (a2)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v10 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v10 + 32) = v12;
  }

  else
  {
    *(&v33 + 1) = MEMORY[0x1E69E63B0];
    *&v32 = a1;
    sub_193495EE0(&v32, (v10 + 32));
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v14 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v10 + 88) = v14;
  *(v10 + 64) = v13;
  v15 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_3_26(v15, v16, v17, v18, v19, v20, v21, v22, v29, v30, v23);
  if (a4)
  {
    v32 = 0u;
    v33 = 0u;
    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v9 + 56) = v14;
    *(v9 + 32) = v24;
    if (*(&v33 + 1))
    {
      sub_1934E60B4(&v32);
    }
  }

  else
  {
    *(&v33 + 1) = v11;
    *&v32 = a3;
    sub_193495EE0(&v32, (v9 + 32));
  }

  v25 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v9 + 88) = v14;
  *(v9 + 64) = v25;
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_14_20();
  if (v4)
  {
  }

  else
  {
    v27 = v32;
    v28 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v31, v10, v9, v27);
  }
}

id sub_1934E51B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v5 = OUTLINED_FUNCTION_11_15();
  *(v5 + 16) = xmmword_19394FBE0;
  v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v7 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v5 + 32) = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 88) = MEMORY[0x1E69E6158];
  *(v5 + 56) = v7;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v9 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_3_26(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v17);
  v18 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

  v4[4] = [v18 init];
  v4[11] = v8;
  v4[7] = v7;
  v4[8] = a1;
  v4[9] = a2;
  v19 = _MergedGlobals_6;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v25)
  {
  }

  else
  {
    v21 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v24, v5, v4, v26);
  }
}

id sub_1934E5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v8 = OUTLINED_FUNCTION_11_15();
  *(v8 + 16) = xmmword_19394FBE0;
  v9 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v10 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v8 + 56) = v10;
  *(v8 + 32) = v9;
  v11 = MEMORY[0x1E69E6158];
  if (a2)
  {
    *(&v33 + 1) = MEMORY[0x1E69E6158];
    *&v32 = a1;
    *(&v32 + 1) = a2;
    sub_193495EE0(&v32, (v8 + 64));
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v8 + 88) = v10;
    *(v8 + 64) = v12;
  }

  v13 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_3_26(v13, v14, v15, v16, v17, v18, v19, v20, v28, a3, v21);
  v22 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

  v23 = [v22 init];
  *(v7 + 56) = v10;
  *(v7 + 32) = v23;
  if (a4)
  {
    *(&v33 + 1) = v11;
    *&v32 = v31;
    *(&v32 + 1) = a4;
    sub_193495EE0(&v32, (v7 + 64));
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v7 + 88) = v10;
    *(v7 + 64) = v24;
    if (*(&v33 + 1))
    {
      sub_1934E60B4(&v32);
    }
  }

  v25 = _MergedGlobals_6;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_14_20();
  if (v25)
  {
  }

  else
  {
    v27 = v32;
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v29, v8, v7, v27);
  }
}

id sub_1934E55A0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v12 = OUTLINED_FUNCTION_11_15();
  *(v12 + 16) = xmmword_19394FBE0;
  if (a2)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v12 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v12 + 32) = v13;
  }

  else
  {
    v31 = MEMORY[0x1E69E63B0];
    *&v30 = a1;
    sub_193495EE0(&v30, (v12 + 32));
  }

  v14 = MEMORY[0x1E69E6158];
  v15 = a8;
  if (a6)
  {
    v31 = MEMORY[0x1E69E6158];
    *&v30 = a5;
    *(&v30 + 1) = a6;
    sub_193495EE0(&v30, (v12 + 64));
  }

  else
  {
    v16 = [OUTLINED_FUNCTION_13_8() &selRef_entityIdentifier];
    *(v12 + 88) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v12 + 64) = v16;
    if (v31)
    {
      sub_1934E60B4(&v30);
    }
  }

  v17 = OUTLINED_FUNCTION_11_15();
  *(v17 + 16) = xmmword_19394FBE0;
  if (a4)
  {
    v18 = OUTLINED_FUNCTION_13_8();

    v19 = [v18 &selRef_entityIdentifier];
    *(v17 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v17 + 32) = v19;
    if (v31)
    {
      sub_1934E60B4(&v30);
    }
  }

  else
  {
    v31 = MEMORY[0x1E69E63B0];
    *&v30 = a3;
    sub_193495EE0(&v30, (v17 + 32));
  }

  if (v15)
  {
    v31 = v14;
    *&v30 = a7;
    *(&v30 + 1) = v15;
    sub_193495EE0(&v30, (v17 + 64));
  }

  else
  {
    v20 = [OUTLINED_FUNCTION_13_8() &selRef_entityIdentifier];
    *(v17 + 88) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v17 + 64) = v20;
    if (v31)
    {
      sub_1934E60B4(&v30);
    }
  }

  v21 = _MergedGlobals_6;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  v22 = v32;
  sub_19393C830();
  if (v22)
  {
  }

  else
  {
    v24 = v30;
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v25, v12, v17, v24);
  }
}

id _s27IntelligencePlatformLibrary0C0O7StreamsO0A4FlowO10TranscriptO10DatastreamO7IndexesO026Datestamp_ClientSessionID_J14RequestIDIndexC4name6fields16streamIdentifierAOSS_SaySo12BMIndexFieldCGSStcfC_0()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_19393C570();

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v3 = sub_19393C6C0();

  v4 = sub_19393C570();

  v5 = [v1 initWithName:v2 fields:v3 streamIdentifier:v4];

  return v5;
}

void sub_1934E59E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_19393C580();
  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  sub_19393C6D0();
  v7 = sub_19393C580();
  a6(v7);
  __break(1u);
}

id sub_1934E5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1939583F0;
  v8 = objc_allocWithZone(MEMORY[0x1E698F298]);
  *(v7 + 32) = sub_1934E5F70(0x6D61747365746164, 0xE900000000000070, 0xD00000000000002ELL, 0x8000000193A17FC0, 1);
  v9 = objc_allocWithZone(MEMORY[0x1E698F298]);
  result = sub_1934E5F70(a2, a3, a2, a3, 2);
  *(v7 + 40) = result;
  *a4 = v7;
  return result;
}

id sub_1934E5B9C()
{
  v1 = OUTLINED_FUNCTION_8_21();
  if (qword_1EAE45B68 != -1)
  {
    OUTLINED_FUNCTION_6_17();
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = OUTLINED_FUNCTION_8_21();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_LastRequestIdIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_1934E5CCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t *sub_1934E5D3C()
{
  if (qword_1ED510170 != -1)
  {
    swift_once();
  }

  return &qword_1ED510178;
}

uint64_t *sub_1934E5DD8()
{
  if (qword_1ED510180 != -1)
  {
    swift_once();
  }

  return &qword_1ED510188;
}

uint64_t sub_1934E5E74(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = objc_allocWithZone(a2());
  result = a3();
  *a4 = result;
  return result;
}

uint64_t *sub_1934E5EBC()
{
  if (qword_1ED510190 != -1)
  {
    swift_once();
  }

  return &qword_1ED510198;
}

id sub_1934E5F24(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

id sub_1934E5F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_19393C570();

  v8 = sub_19393C570();

  v9 = [v5 initWithName:v7 expression:v8 dataType:a5];

  return v9;
}

id sub_1934E6000(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_19393C6C0();

  v8 = sub_19393C6C0();

  v9 = [v4 initWithIndex:a1 startFields:v7 endFields:v8 database:a4];

  return v9;
}

uint64_t sub_1934E60B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA70, &qword_193958408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s7IndexesOwst(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_ClientSessionIdIndex.indexSearch(datestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_ClientSessionIdIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_ClientSessionIdIndex.indexSearch(clientSessionId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_ClientSessionIdIndex.indexSearch(startClientSessionId:endClientSessionId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_ClientSessionIdIndex.indexSearch(startDatestamp:endDatestamp:startClientSessionId:endClientSessionId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_TaskIdIndex.indexSearch(datestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_TaskIdIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_TaskIdIndex.indexSearch(taskID:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_TaskIdIndex.indexSearch(startTaskID:endTaskID:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_TaskIdIndex.indexSearch(startDatestamp:endDatestamp:startTaskID:endTaskID:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_LastRequestIdIndex.indexSearch(datestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_LastRequestIdIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_LastRequestIdIndex.indexSearch(lastRequestId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_LastRequestIdIndex.indexSearch(startLastRequestId:endLastRequestId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_LastRequestIdIndex.indexSearch(startDatestamp:endDatestamp:startLastRequestId:endLastRequestId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

unint64_t sub_1934E666C()
{
  result = qword_1EAE3BA80;
  if (!qword_1EAE3BA80)
  {
    sub_19393C810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA80);
  }

  return result;
}

unint64_t sub_1934E66C4()
{
  result = qword_1EAE3BA90;
  if (!qword_1EAE3BA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BA88, &qword_1939584B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA90);
  }

  return result;
}

uint64_t sub_1934E6764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5101B8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5101B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Siri.PostSiriEngagement.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1939583F0;
    sub_19343CF00(0, &qword_1ED506688, 0x1E696AE18);
    v6 = OUTLINED_FUNCTION_3_27();
    v7 = objc_allocWithZone(MEMORY[0x1E698F330]);
    *(v5 + 32) = sub_19343FE48(0xD00000000000001DLL, 0x8000000193A18010, v6);
    v8 = OUTLINED_FUNCTION_3_27();
    v9 = objc_allocWithZone(MEMORY[0x1E698F330]);
    *(v5 + 40) = sub_19343FE48(0x2D656C6261736964, 0xEC00000069726973, v8);
    v10 = objc_opt_self();
    if (_MergedGlobals_7 != -1)
    {
      swift_once();
    }

    v11 = sub_19393BE60();
    __swift_project_value_buffer(v11, qword_1ED5101B8);
    v12 = sub_19393BE30();
    v13 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA98, &qword_1939584F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_19393C6C0();
    sub_19343CF00(0, &qword_1ED506680, 0x1E698F330);
    v16 = sub_19393C6C0();

    BYTE2(v18) = 1;
    LOWORD(v18) = 1;
    v17 = [v10 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1934E6C64()
{
  v0 = static Library.Streams.Siri.PostSiriEngagement.configuration.getter();
  v1 = [v0 streamIdentifier];

  v2 = static Library.Streams.Siri.PostSiriEngagement.configuration.getter();
  v3 = [v2 streamIdentifier];

  v4 = sub_19393C580();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_193950B10;
  result = BMEventTimestampSQLColumn();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v7 + 32) = result;
  v9 = static SiriPostSiriEngagement.columns.getter();
  sub_19343D230(v9);
  v10 = v7;
  result = BMEventBookmarkSQLColumns();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  sub_19343CF00(0, &qword_1ED5082B0, 0x1E698F2D8);
  v12 = sub_19393C6D0();

  sub_19343D230(v12);
  v13 = *sub_1934E49C8();

  sub_19343D230(v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2F0]);
  result = sub_1934412DC(v4, v6, v10);
  if (result)
  {
    v16 = result;
    v17 = static Library.Streams.Siri.PostSiriEngagement.configuration.getter();
    v18 = [objc_allocWithZone(MEMORY[0x1E698F320]) initWithIdentifier:v1 schema:v16 configuration:v17];

    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t static Library.Streams.Siri.PostSiriEngagement.attribute(_:)(void (*a1)(void))
{
  result = sub_1934E6E58(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934E6E94(void (*a1)(void))
{
  result = sub_1934E6E58(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934E6EFC(uint64_t a1)
{
  result = sub_1934E6F24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934E6F24()
{
  result = qword_1EAE3BAA0;
  if (!qword_1EAE3BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAA0);
  }

  return result;
}

_BYTE *_s18PostSiriEngagementOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriPostSiriEngagement.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for SiriPostSiriEngagement();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAA8, &qword_193958570);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1934E7200(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3BAA8, &qword_193958570);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3BAA8, &qword_193958570);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1934E7200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriPostSiriEngagement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SiriPostSiriEngagement.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAA8, &qword_193958570);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3BAA8, &qword_193958570);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1934E73A4(v10, a1);
  }

  return result;
}

uint64_t sub_1934E73A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriPostSiriEngagement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SiriPostSiriEngagement.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAA8, &qword_193958570);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1934EB0A4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1934E73A4(v14, v40);
      v33 = type metadata accessor for SiriPostSiriEngagement();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SiriPostSiriEngagement.serialize()()
{
  v1 = type metadata accessor for SiriPostSiriEngagement();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAA8, &qword_193958570);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1934E7200(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3BAA8, &qword_193958570);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3BAA8, &qword_193958570);
  return v15;
}

id static SiriPostSiriEngagement.columns.getter()
{
  v138 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v11 = OUTLINED_FUNCTION_25_13();
  result = OUTLINED_FUNCTION_3_5(v11, 0xEB0000000044496ELL);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v30 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v30);
  v31 = OUTLINED_FUNCTION_11_16();
  result = OUTLINED_FUNCTION_3_5(v31 & 0xFFFF0000FFFFFFFFLL | 0x444900000000, 0xE600000000000000);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v32 = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_2_4(v32, v33, v34, v35, v36, v37, v38, v39, v132);
  OUTLINED_FUNCTION_5_10(v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v49 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v49);
  v50 = OUTLINED_FUNCTION_11_16();
  result = OUTLINED_FUNCTION_3_5(v50 | 0x6570795400000000, 0xE800000000000000);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  *(swift_initStackObject() + 16) = v133;
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v60 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v60);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000010, 0x8000000193A18060);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_3(result);
  v61 = swift_initStackObject();
  v69 = OUTLINED_FUNCTION_2_4(v61, v62, v63, v64, v65, v66, v67, v68, v133);
  OUTLINED_FUNCTION_5_10(v69, v70, v71, v72, v73, v74, v75, v76, v77);
  v78 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v78);
  v79 = OUTLINED_FUNCTION_20_9();
  result = OUTLINED_FUNCTION_3_5(v79, 0xEA00000000006E72);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_69_3(result);
  v80 = swift_initStackObject();
  v88 = OUTLINED_FUNCTION_2_4(v80, v81, v82, v83, v84, v85, v86, v87, v134);
  OUTLINED_FUNCTION_5_10(v88, v89, v90, v91, v92, v93, v94, v95, v96);
  v97 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v97);
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_17_11();
  result = OUTLINED_FUNCTION_3_5(v98, v99);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_69_3(result);
  v100 = swift_initStackObject();
  v108 = OUTLINED_FUNCTION_2_4(v100, v101, v102, v103, v104, v105, v106, v107, v135);
  OUTLINED_FUNCTION_5_10(v108, v109, v110, v111, v112, v113, v114, v115, v116);
  v117 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v117);
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_24_11();
  result = OUTLINED_FUNCTION_3_5(v118, v119);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_69_3(result);
  v120 = swift_initStackObject();
  v128 = OUTLINED_FUNCTION_2_4(v120, v121, v122, v123, v124, v125, v126, v127, v136);
  *(v128 + 16) = v137;
  *(v128 + 32) = sub_19393C850();
  v129 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_22_14();
  result = sub_19343D150(v130, v131, 2, 0, v128, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v138;
  }

LABEL_17:
  __break(1u);
  return result;
}

int *sub_1934E7BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1 == OUTLINED_FUNCTION_25_13() && a2 == v7;
  if (v8 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement();
    v10 = result[7];
    goto LABEL_7;
  }

  v11 = a1 == (OUTLINED_FUNCTION_11_16() & 0xFFFF0000FFFFFFFFLL | 0x444900000000) && a2 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement();
    v10 = result[8];
    goto LABEL_7;
  }

  v12 = a1 == (OUTLINED_FUNCTION_11_16() | 0x6570795400000000) && a2 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement();
    v10 = result[9];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v14 = a1 == 0xD000000000000010 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement();
    v10 = result[10];
    goto LABEL_7;
  }

  v15 = a1 == OUTLINED_FUNCTION_20_9() && a2 == 0xEA00000000006E72;
  if (v15 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement();
    v10 = result[11];
    goto LABEL_7;
  }

  v16 = a1 == 0x4974736575716572 && a2 == 0xEA00000000007364;
  if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v33 = *(v3 + *(type metadata accessor for SiriPostSiriEngagement() + 48));
    v17 = &qword_1EAE3ABB0;
    v18 = &qword_193950BB8;
LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  v20 = a1 == 0xD00000000000001FLL && v19 == a2;
  if (!v20 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v22 = a1 == 0x746E657645657370 && a2 == 0xE900000000000073;
    if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v35 = *(v3 + *(type metadata accessor for SiriPostSiriEngagement() + 56));
      v17 = &unk_1EAE3BAB8;
      v18 = &unk_193958578;
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_17_11();
    v24 = a1 == OUTLINED_FUNCTION_19_17() && a2 == v23;
    if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      result = type metadata accessor for SiriPostSiriEngagement();
      v10 = result[15];
    }

    else
    {
      OUTLINED_FUNCTION_24_11();
      v26 = a1 == OUTLINED_FUNCTION_15_22() && a2 == v25;
      if (v26 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for SiriPostSiriEngagement();
        v10 = result[16];
      }

      else
      {
        OUTLINED_FUNCTION_22_14();
        v28 = a1 == OUTLINED_FUNCTION_23_17() && a2 == v27;
        if (!v28 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          v30 = v29;
          *v29 = a1;
          v29[1] = a2;
          v29[5] = type metadata accessor for SiriPostSiriEngagement();
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v30 + 2);
          sub_1934E7200(v3, boxed_opaque_existential_1Tm);
          *(v30 + 48) = 1;
          swift_willThrow();
        }

        result = type metadata accessor for SiriPostSiriEngagement();
        v10 = result[17];
      }
    }

LABEL_7:
    if (*(v3 + v10 + 8))
    {
      v32 = *(v3 + v10);
      return sub_1934948FC();
    }

    goto LABEL_47;
  }

  result = type metadata accessor for SiriPostSiriEngagement();
  v21 = v3 + result[13];
  if ((*(v21 + 8) & 0xFF0000) == 0x30000)
  {
LABEL_47:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v34 = *v21;
  v36 = *(v21 + 16);
  return sub_193494798(&type metadata for SiriPostSiriEngagement.Features, &off_1F07C32C0, a3);
}

void sub_1934E7FA4(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_11_16();
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 9);
  v12 = a1 == (v7 | 0x6363755300000000) && a2 == v8;
  if (v12 || (v13 = *(v3 + 10), v37 = *(v3 + 12), v38 = *(v3 + 11), v35 = *(v3 + 14), v36 = *(v3 + 13), v34 = *(v3 + 15), v14 = *(v3 + 16), (OUTLINED_FUNCTION_5_5() & 1) != 0))
  {
    if (v11)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    goto LABEL_23;
  }

  v16 = a1 == (OUTLINED_FUNCTION_16_11() & 0xFFFFFFFFFFFFLL | 0x6241000000000000) && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (v13 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  v18 = a1 == (OUTLINED_FUNCTION_16_11() & 0xFFFFFFFFFFFFLL | 0x6143000000000000) && a2 == v17;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v19 = v38;
    goto LABEL_22;
  }

  v20 = a1 == 0x6F43697269537369 && a2 == 0xEF646574656C706DLL;
  if (v20 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v19 = v37;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v23 = a1 == v22 && v21 == a2;
  if (v23 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v19 = v36;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8_22();
  v26 = a1 == v25 + 1 && v24 == a2;
  if (v26 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v19 = v35;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8_22();
  v29 = a1 == v28 + 6 && v27 == a2;
  if (v29 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v19 = v34;
LABEL_22:
    if (v19 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_8_22();
  v32 = a1 == v31 + 11 && v30 == a2;
  if (v32 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (v14 == 2)
    {
      goto LABEL_7;
    }

LABEL_23:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 40) = &type metadata for SiriPostSiriEngagement.Features;
  *(v33 + 16) = v9;
  *(v33 + 24) = v10;
  *(v33 + 25) = v11;
  *(v33 + 26) = v13;
  *(v33 + 27) = v38;
  *(v33 + 28) = v37;
  *(v33 + 29) = v36;
  *(v33 + 30) = v35;
  *(v33 + 31) = v34;
  *(v33 + 32) = v14;
  *(v33 + 48) = 1;
  swift_willThrow();
}

void sub_1934E829C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, 0x69uLL);
  v8 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v8 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[1];
    if (__dst[1])
    {
      v10 = __dst[0];
LABEL_8:
      v21 = v10;
      v22 = v9;
LABEL_9:
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  v11 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v9 = __dst[3];
    if (__dst[3])
    {
      v10 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_38();
  v13 = a1 == 0xD000000000000014 && v12 == a2;
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (LOBYTE(__dst[4]) != 2)
    {
      LOBYTE(v21) = __dst[4] & 1;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v14 = a1 == 0x61746C6544657370 && a2 == 0xE800000000000000;
  if (v14 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if ((__dst[10] & 0x100) == 0)
    {
      v21 = __dst[5];
      LOBYTE(v22) = __dst[6] & 1;
      v23 = __dst[7];
      v24 = __dst[8] & 1;
      v25 = __dst[9];
      v26 = __dst[10] & 1;
      sub_193494798(&type metadata for SiriPostSiriEngagement.Signal.DeltaEvent, &off_1F07C32E0, a3);
      return;
    }

LABEL_23:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v15 = a1 == 0x65746E6F43657370 && a2 == 0xEB0000000073746ELL;
  if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v21 = __dst[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAC0, &qword_193958580);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v17 = a1 == 0xD000000000000010 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if ((__dst[13] & 1) == 0)
    {
      v21 = __dst[12];
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v19 = v18;
  *v18 = a1;
  v18[1] = a2;
  v18[5] = &type metadata for SiriPostSiriEngagement.Signal;
  v20 = swift_allocObject();
  v19[2] = v20;
  memcpy((v20 + 16), __dst, 0x69uLL);
  *(v19 + 48) = 1;
  swift_willThrow();

  sub_1934E8910(__dst, &v21);
}

uint64_t sub_1934E85A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6E6F697461727564;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v9 || (v11 = v3[2], v12 = *(v3 + 24), v19 = v3[4], v13 = *(v3 + 40), result = OUTLINED_FUNCTION_91_2(), (result & 1) != 0))
  {
    if (v8)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  result = 0x45495565636E6973;
  v14 = a1 == 0x45495565636E6973 && a2 == 0xEA0000000000646ELL;
  if (v14 || (result = OUTLINED_FUNCTION_91_2(), (result & 1) != 0))
  {
    if (v12)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  result = 0x53495565636E6973;
  v15 = a1 == 0x53495565636E6973 && a2 == 0xEC00000074726174;
  if (v15 || (result = OUTLINED_FUNCTION_91_2(), (result & 1) != 0))
  {
    if (v13)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for SiriPostSiriEngagement.Signal.DeltaEvent;
  v18 = swift_allocObject();
  v17[2] = v18;
  *(v18 + 16) = v7;
  *(v18 + 24) = v8;
  *(v18 + 32) = v11;
  *(v18 + 40) = v12;
  *(v18 + 48) = v19;
  *(v18 + 56) = v13;
  *(v17 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934E877C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = result == 7955819 && a2 == 0xE300000000000000;
  if (v7 || (v9 = result, v11 = v3[2], v10 = v3[3], result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v5)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  result = 0x65756C6176;
  v12 = v9 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v12 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v14 = v13;
  *v13 = v9;
  v13[1] = a2;
  v13[5] = &type metadata for SiriPostSiriEngagement.Signal.Content;
  v15 = swift_allocObject();
  v14[2] = v15;
  v15[2] = v6;
  v15[3] = v5;
  v15[4] = v11;
  v15[5] = v10;
  *(v14 + 48) = 1;
  swift_willThrow();
}

double SiriPostSiriEngagement.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SiriPostSiriEngagement();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19343E508(v4);
  v16 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v5 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[13];
  sub_1934EB66C(v8);
  v14 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v10 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1934EB0A4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v16 = 0;
  v16[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;

  v12 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[12]) = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *v8 = xmmword_193958560;
  *(v8 + 16) = 0;
  *(a1 + v2[14]) = v12;
  *v14 = 0;
  v14[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  return result;
}

BOOL static SiriPostSiriEngagement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriPostSiriEngagement();
  v5 = v4[7];
  OUTLINED_FUNCTION_3();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v12 = v4[8];
  OUTLINED_FUNCTION_3();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v14);
    v18 = v11 && v16 == v17;
    if (!v18 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v19 = v4[9];
  OUTLINED_FUNCTION_3();
  if (v22)
  {
    if (!v20)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v21);
    v25 = v11 && v23 == v24;
    if (!v25 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v26 = v4[10];
  OUTLINED_FUNCTION_3();
  if (v29)
  {
    if (!v27)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v28);
    v32 = v11 && v30 == v31;
    if (!v32 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v33 = v4[11];
  OUTLINED_FUNCTION_3();
  if (v36)
  {
    if (!v34)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v35);
    v39 = v11 && v37 == v38;
    if (!v39 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (sub_19344FC94(*(a1 + v4[12]), *(a2 + v4[12])))
  {
    v40 = v4[13];
    v41 = (a1 + v40);
    v42 = *(a1 + v40 + 8);
    v43 = (a2 + v40);
    v44 = *(a2 + v40 + 8);
    if ((v42 & 0xFF0000) == 0x30000)
    {
      if ((v44 & 0xFF0000) != 0x30000)
      {
        return 0;
      }
    }

    else
    {
      v45 = *v43;
      v46 = *(v43 + 16);
      v69 = *v41;
      v70 = *(v41 + 16);
      if ((v44 & 0xFF0000) == 0x30000)
      {
        return 0;
      }

      sub_1934E94DC();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    if (sub_1934E93B8(*(a1 + v4[14]), *(a2 + v4[14])))
    {
      v47 = v4[15];
      OUTLINED_FUNCTION_3();
      if (v50)
      {
        if (!v48)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v49);
        v53 = v11 && v51 == v52;
        if (!v53 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v48)
      {
        return 0;
      }

      v54 = v4[16];
      OUTLINED_FUNCTION_3();
      if (v57)
      {
        if (!v55)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v56);
        v60 = v11 && v58 == v59;
        if (!v60 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v55)
      {
        return 0;
      }

      v61 = v4[17];
      OUTLINED_FUNCTION_3();
      if (v64)
      {
        if (!v62)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v63);
        v67 = v11 && v65 == v66;
        return v67 || (sub_19393CA30() & 1) != 0;
      }

      if (!v62)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t SiriPostSiriEngagement.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for SiriPostSiriEngagement();
  v4 = (v1 + v3[7]);
  v5 = v4[1];
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v4);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v3[8]);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v6);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v3[9]);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v7);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v3[10]);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v8);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v3[11]);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v9);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934D11C8(a1, *(v1 + v3[12]));
  v10 = (v1 + v3[13]);
  if ((v10[1] & 0xFF0000) == 0x30000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *v10;
    v17 = *(v10 + 16);
    sub_19393CAD0();
    sub_1934E96F0();
    sub_19393C540();
  }

  sub_1934E962C(a1, *(v1 + v3[14]));
  OUTLINED_FUNCTION_5_0(v3[15]);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v11);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v3[16]);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v12);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v13 = (v1 + v3[17]);
  if (!v13[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v14 = *v13;
  sub_19393CAD0();
  return sub_19393C640();
}

uint64_t SiriPostSiriEngagement.Features.TaskSuccess.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  result = 0;
  v4 = 1;
  switch(v2)
  {
    case 0:
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    default:
      v4 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

char *static SiriPostSiriEngagement.Features.TaskSuccess.allCases.getter()
{
  v0 = sub_1934E9530(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E9530(v16, v2 + 1, 1, v17);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v18 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E9530(v18, v2 + 2, 1, v19);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v20 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E9530(v20, v2 + 3, 1, v21);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v22 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934E9530(v22, v2 + 4, 1, v23);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v24 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_1934E9530(v24, v2 + 5, 1, v25);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t SiriPostSiriEngagement.Features.TaskSuccess.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 0x696C707041746F4ELL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_8_23();
      break;
    case 2:
      result = 0x6673736563637553;
      break;
    case 3:
      result = OUTLINED_FUNCTION_9_31();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriPostSiriEngagement.Features.TaskSuccess.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x696C707041746F4ELL && a2 == 0xED0000656C626163;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v12 = a1 == OUTLINED_FUNCTION_8_23() && a2 == v11;
  if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  v13 = a1 == 0x6673736563637553 && a2 == 0xEA00000000006C75;
  if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else if (a1 == OUTLINED_FUNCTION_9_31() && a2 == v14)
  {

    v9 = 1;
    v8 = 3;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();

    v8 = 3;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t sub_1934E93B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 112)
    {
      memcpy(__dst, v3, 0x69uLL);
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, 0x69uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1934E8910(__dst, v7);
      sub_1934E8910(v11, v7);
      sub_1934E9844();
      v5 = sub_19393C550();
      memcpy(v12, __src, 0x69uLL);
      sub_1934E97F0(v12);
      memcpy(v13, v9, 0x69uLL);
      sub_1934E97F0(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 112;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1934E94DC()
{
  result = qword_1EAE3BAC8;
  if (!qword_1EAE3BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAC8);
  }

  return result;
}

char *sub_1934E9530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAE0, &qword_193958670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1934E962C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(v6, v5, 0x69uLL);
      memcpy(__dst, v5, sizeof(__dst));
      sub_1934E8910(v6, v7);
      sub_1934E979C();
      sub_19393C540();
      memcpy(v7, __dst, 0x69uLL);
      result = sub_1934E97F0(v7);
      v5 += 112;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1934E96F0()
{
  result = qword_1EAE3BAD0;
  if (!qword_1EAE3BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAD0);
  }

  return result;
}

unint64_t sub_1934E9748()
{
  result = qword_1EAE3BAD8;
  if (!qword_1EAE3BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAD8);
  }

  return result;
}

unint64_t sub_1934E979C()
{
  result = qword_1EAE3BAE8;
  if (!qword_1EAE3BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAE8);
  }

  return result;
}

unint64_t sub_1934E9844()
{
  result = qword_1EAE3BAF0;
  if (!qword_1EAE3BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAF0);
  }

  return result;
}

void sub_1934E9898()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8FF0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v38 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v38, xmmword_1939526F0);
  *v1 = 1;
  *v0 = "UISessionID";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v11 = 2;
  *v10 = "taskID";
  v10[1] = 6;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v13 = "taskType";
  *(v13 + 1) = 8;
  v14 = OUTLINED_FUNCTION_41(v13);
  (v9)(v14);
  OUTLINED_FUNCTION_44(3 * v5);
  OUTLINED_FUNCTION_34_8(v15);
  *v16 = "conversationPath";
  v16[1] = 16;
  v17 = OUTLINED_FUNCTION_41(v16);
  (v9)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v19 = 5;
  *v18 = "appPattern";
  v18[1] = 10;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 6;
  *v21 = "requestIds";
  v21[1] = 10;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v9)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v25 = 7;
  *v24 = "engagementUnderstandingFeatures";
  v24[1] = 31;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v9)(v26);
  v27 = OUTLINED_FUNCTION_44(7 * v5);
  *v28 = 8;
  *v27 = "pseEvents";
  v27[1] = 9;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v9)(v29);
  v30 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v31 = 9;
  *v30 = "clientSessionId";
  v30[1] = 15;
  v32 = OUTLINED_FUNCTION_41(v30);
  (v9)(v32);
  v33 = OUTLINED_FUNCTION_44(9 * v5);
  *v34 = 10;
  *v33 = "lastRequestId";
  v33[1] = 13;
  v35 = OUTLINED_FUNCTION_41(v33);
  (v9)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v37 = 11;
  *v36 = "executionUUID";
  *(v36 + 8) = 13;
  *(v36 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934E9B94()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for SiriPostSiriEngagement() + 28);
        goto LABEL_16;
      case 2:
        v5 = *(type metadata accessor for SiriPostSiriEngagement() + 32);
        goto LABEL_16;
      case 3:
        v5 = *(type metadata accessor for SiriPostSiriEngagement() + 36);
        goto LABEL_16;
      case 4:
        v5 = *(type metadata accessor for SiriPostSiriEngagement() + 40);
        goto LABEL_16;
      case 5:
        v5 = *(type metadata accessor for SiriPostSiriEngagement() + 44);
        goto LABEL_16;
      case 6:
        v7 = type metadata accessor for SiriPostSiriEngagement();
        OUTLINED_FUNCTION_8_2(*(v7 + 48));
        sub_19393C1B0();
        goto LABEL_17;
      case 7:
        v8 = *(type metadata accessor for SiriPostSiriEngagement() + 52);
        sub_193498018();
        goto LABEL_17;
      case 8:
        v6 = type metadata accessor for SiriPostSiriEngagement();
        sub_193498238(v0 + *(v6 + 56));
        goto LABEL_17;
      case 9:
        v5 = *(type metadata accessor for SiriPostSiriEngagement() + 60);
        goto LABEL_16;
      case 10:
        v5 = *(type metadata accessor for SiriPostSiriEngagement() + 64);
        goto LABEL_16;
      case 11:
        v5 = *(type metadata accessor for SiriPostSiriEngagement() + 68);
LABEL_16:
        OUTLINED_FUNCTION_8_2(v5);
        sub_19393C200();
LABEL_17:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1934E9D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = type metadata accessor for SiriPostSiriEngagement();
  OUTLINED_FUNCTION_16_4(v8[7]);
  if (v10)
  {
    v11 = *v9;
    OUTLINED_FUNCTION_2_7();
    v5 = v4;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_16_4(v8[8]);
    if (!v13 || (v14 = *v12, OUTLINED_FUNCTION_2_7(), (v5 = v4) == 0))
    {
      OUTLINED_FUNCTION_16_4(v8[9]);
      if (!v16 || (v17 = *v15, OUTLINED_FUNCTION_2_7(), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_16_4(v8[10]);
        if (!v19 || (v20 = *v18, OUTLINED_FUNCTION_2_7(), (v5 = v4) == 0))
        {
          OUTLINED_FUNCTION_16_4(v8[11]);
          if (!v22 || (v23 = *v21, OUTLINED_FUNCTION_2_7(), (v5 = v4) == 0))
          {
            if (!*(*(v3 + v8[12]) + 16) || (v4 = v5, sub_19393C380(), !v5))
            {
              v24 = (v3 + v8[13]);
              if ((v24[1] & 0xFF0000) == 0x30000 || (v35 = *v24, v36 = *(v24 + 16), v4 = v5, sub_193447600(), !v5))
              {
                v25 = *(v3 + v8[14]);
                if (!*(v25 + 16) || (v4 = v5, sub_193451CFC(v25, 8, a2, &type metadata for SiriPostSiriEngagement.Signal, a3, &off_1F07C3388), !v5))
                {
                  OUTLINED_FUNCTION_16_4(v8[15]);
                  if (!v27 || (v28 = *v26, OUTLINED_FUNCTION_2_7(), !v4))
                  {
                    OUTLINED_FUNCTION_16_4(v8[16]);
                    if (!v30 || (v31 = *v29, OUTLINED_FUNCTION_2_7(), !v4))
                    {
                      OUTLINED_FUNCTION_16_4(v8[17]);
                      if (v33)
                      {
                        v34 = *v32;
                        OUTLINED_FUNCTION_2_7();
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
}

void sub_1934EA008()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9008);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v6, xmmword_1939526B0);
  *v1 = 1;
  *v0 = "taskSuccess";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  *v11 = "isUserAbandoned";
  v11[1] = 15;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v14 = "isUserCancelled";
  *(v14 + 1) = 15;
  v15 = OUTLINED_FUNCTION_41(v14);
  (v10)(v15);
  OUTLINED_FUNCTION_44(3 * v5);
  OUTLINED_FUNCTION_34_8(v16);
  *v17 = "isSiriCompleted";
  v17[1] = 15;
  v18 = OUTLINED_FUNCTION_41(v17);
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 5;
  *v19 = "isPromptInteraction";
  v19[1] = 19;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 6;
  *v22 = "isConfirmInteraction";
  v22[1] = 20;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v10)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v26 = 7;
  *v25 = "isDisambiguateInteraction";
  v25[1] = 25;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v5);
  *v29 = 8;
  *v28 = "isUnsupportedPromptInteraction";
  *(v28 + 8) = 30;
  *(v28 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934EA280()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }
}

void sub_1934EA34C()
{
  OUTLINED_FUNCTION_110();
  v4 = *(v3 + 9);
  v5 = *(v3 + 10);
  v6 = *(v3 + 11);
  v7 = *(v3 + 12);
  v8 = *(v3 + 13);
  v9 = *(v3 + 14);
  v10 = *(v3 + 15);
  v15 = *(v3 + 16);
  if ((v4 & 1) == 0)
  {
    v11 = *v3;
    v12 = *(v3 + 8);
    v13 = v11;
    v14 = v12 & 1;
    sub_193447324(&v13, 1, v2, &type metadata for SiriPostSiriEngagement.Features.TaskSuccess, v0, &off_1F07C3360);
  }

  if (!v1)
  {
    if (v5 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v6 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v7 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v8 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v9 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v10 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v15 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }
  }
}

void sub_1934EA510()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9020);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "NotApplicable";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "NotCalculated";
  *(v13 + 8) = 13;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v15 = OUTLINED_FUNCTION_44(3 * v5);
  *v16 = 3;
  *v15 = "Successful";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  OUTLINED_FUNCTION_34_8(v17);
  *v18 = "Unsuccessful";
  *(v18 + 8) = 12;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934EA730()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9038);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v0;
  v6 = v4 + v0 + dword_1EAEA9070;
  *(v4 + v0) = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v5 + v3);
  *v12 = 2;
  *v11 = "action";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v13 = OUTLINED_FUNCTION_9_4((v5 + 2 * v3));
  OUTLINED_FUNCTION_36_5(v13, "isPostSiriEngagement");
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_3_1(v5 + 3 * v3);
  OUTLINED_FUNCTION_34_8(v14);
  OUTLINED_FUNCTION_36_5(v15, "pseDelta");
  OUTLINED_FUNCTION_2_0();
  v10();
  v16 = OUTLINED_FUNCTION_3_1(v5 + 4 * v3);
  *v17 = 5;
  OUTLINED_FUNCTION_36_5(v16, "pseContents");
  OUTLINED_FUNCTION_2_0();
  v10();
  v18 = OUTLINED_FUNCTION_3_1(v5 + 5 * v3);
  *v19 = 6;
  *v18 = "donatedTimestamp";
  *(v18 + 8) = 16;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934EA95C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 4:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 5:
        sub_193498238(v0 + 88);
        break;
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      default:
        continue;
    }
  }
}

void sub_1934EAA60()
{
  OUTLINED_FUNCTION_110();
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = *(v1 + 81);
  v8 = v1[11];
  v9 = v1[12];
  v11 = *(v1 + 104);
  if (v1[1])
  {
    v10 = *v1;
    OUTLINED_FUNCTION_181();
  }

  if (!v2)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v6 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if ((v7 & 1) == 0)
    {
      v12 = *(v1 + 5);
      *v13 = *(v1 + 7);
      *&v13[9] = *(v1 + 65);
      sub_193447600();
    }

    if (*(v8 + 16))
    {
      sub_193451CFC(v8, 5, v3, &type metadata for SiriPostSiriEngagement.Signal.Content, v0, &off_1F07C33E8);
    }

    if ((v11 & 1) == 0)
    {
      sub_19393C3B0();
    }
  }
}

void sub_1934EAC10()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9050);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v7, xmmword_19394FBB0);
  *v6 = "duration";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_10_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v13 = 2;
  OUTLINED_FUNCTION_36_5(v12, "sinceUIEnd");
  OUTLINED_FUNCTION_10_0();
  v11();
  v14 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  *v14 = "sinceUIStart";
  *(v14 + 1) = 12;
  v14[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934EAD9C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C1E0();
    }
  }

  return result;
}

void sub_1934EAE08()
{
  OUTLINED_FUNCTION_110();
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v5 = *(v0 + 40);
  if ((v0[1] & 1) == 0)
  {
    v6 = *v0;
    OUTLINED_FUNCTION_31_12();
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_31_12();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_31_12();
    }
  }
}

void sub_1934EAEF8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEA9068);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v7, xmmword_19394FBE0);
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_10_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v13 = 2;
  *v12 = "value";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t OUTLINED_FUNCTION_21_10()
{

  return sub_19393C2E0();
}

uint64_t SiriPostSiriEngagement.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SiriPostSiriEngagement();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SiriPostSiriEngagement()
{
  result = qword_1ED50E990;
  if (!qword_1ED50E990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriPostSiriEngagement.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SiriPostSiriEngagement();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t SiriPostSiriEngagement.UISessionID.getter()
{
  v0 = type metadata accessor for SiriPostSiriEngagement();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.UISessionID.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for SiriPostSiriEngagement();
  result = OUTLINED_FUNCTION_201(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.taskID.getter()
{
  v0 = type metadata accessor for SiriPostSiriEngagement();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.taskID.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for SiriPostSiriEngagement();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.taskType.getter()
{
  v0 = type metadata accessor for SiriPostSiriEngagement();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.taskType.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for SiriPostSiriEngagement();
  result = OUTLINED_FUNCTION_201(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.conversationPath.getter()
{
  v0 = type metadata accessor for SiriPostSiriEngagement();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.conversationPath.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for SiriPostSiriEngagement();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.appPattern.getter()
{
  v0 = type metadata accessor for SiriPostSiriEngagement();
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.appPattern.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for SiriPostSiriEngagement();
  result = OUTLINED_FUNCTION_201(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.requestIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriPostSiriEngagement() + 48));
}

uint64_t SiriPostSiriEngagement.requestIds.setter()
{
  v2 = *(OUTLINED_FUNCTION_12_16() + 48);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

double sub_1934EB66C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_193958560;
  *(a1 + 16) = 0;
  return result;
}

__n128 SiriPostSiriEngagement.engagementUnderstandingFeatures.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for SiriPostSiriEngagement() + 52));
  v3 = v2[1].n128_u8[0];
  result = *v2;
  *v0 = *v2;
  v0[1].n128_u8[0] = v3;
  return result;
}

uint64_t SiriPostSiriEngagement.engagementUnderstandingFeatures.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for SiriPostSiriEngagement();
  v6 = v1 + *(result + 52);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t SiriPostSiriEngagement.pseEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriPostSiriEngagement() + 56));
}

uint64_t SiriPostSiriEngagement.pseEvents.setter()
{
  v2 = *(OUTLINED_FUNCTION_12_16() + 56);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.clientSessionId.getter()
{
  v0 = type metadata accessor for SiriPostSiriEngagement();
  OUTLINED_FUNCTION_4_4(*(v0 + 60));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.clientSessionId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for SiriPostSiriEngagement();
  result = OUTLINED_FUNCTION_201(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.lastRequestId.getter()
{
  v0 = type metadata accessor for SiriPostSiriEngagement();
  OUTLINED_FUNCTION_4_4(*(v0 + 64));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.lastRequestId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for SiriPostSiriEngagement();
  result = OUTLINED_FUNCTION_201(*(v3 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.executionUUID.getter()
{
  v0 = type metadata accessor for SiriPostSiriEngagement();
  OUTLINED_FUNCTION_4_4(*(v0 + 68));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.executionUUID.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for SiriPostSiriEngagement();
  result = OUTLINED_FUNCTION_201(*(v3 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void SiriPostSiriEngagement.Features.taskSuccess.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t SiriPostSiriEngagement.Features.taskSuccess.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

void SiriPostSiriEngagement.Features.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 10) = 33686018;
  *(a1 + 13) = 33686018;
}

uint64_t sub_1934EBBA8@<X0>(uint64_t *a1@<X8>)
{
  result = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934EBBD0@<X0>(char **a1@<X8>)
{
  result = static SiriPostSiriEngagement.Features.TaskSuccess.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934EBBF8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934EBC04();
}

uint64_t sub_1934EBC04()
{
  sub_19393CAB0();
  v0 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934EBC60()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934EBC6C();
}

uint64_t sub_1934EBCB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934EBCBC();
}

uint64_t sub_1934EBCBC()
{
  sub_19393CAB0();
  v0 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_1934EBD14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_1934EBD30();
}

uint64_t static SiriPostSiriEngagement.Features.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 10);
  v3 = *(a1 + 11);
  v4 = *(a1 + 12);
  v5 = *(a1 + 13);
  v6 = *(a1 + 14);
  v7 = *(a1 + 15);
  v8 = *(a1 + 16);
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = *(a2 + 11);
  v12 = *(a2 + 12);
  v13 = *(a2 + 13);
  v14 = *(a2 + 14);
  v15 = *(a2 + 15);
  v16 = *(a2 + 16);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v23 = *(a2 + 16);
    v24 = *(a1 + 16);
    v27 = *a1;
    v28 = a1[1] & 1;
    v25 = *a2;
    v26 = a2[1] & 1;
    v21 = *(a2 + 15);
    v22 = *(a1 + 15);
    v20 = *(a1 + 14);
    v19 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
    v17 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
    v6 = v20;
    v15 = v21;
    v7 = v22;
    v16 = v23;
    v8 = v24;
    if (v19 != v17)
    {
      return 0;
    }
  }

  if (v2 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v10 == 2 || ((v10 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v11 == 2 || ((v11 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v12 == 2 || ((v12 ^ v4) & 1) != 0)
    {
      return result;
    }
  }

  if (v5 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v13 == 2 || ((v13 ^ v5) & 1) != 0)
    {
      return result;
    }
  }

  if (v6 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v14 == 2 || ((v14 ^ v6) & 1) != 0)
    {
      return result;
    }
  }

  if (v7 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }

LABEL_36:
    if (v8 == 2)
    {
      if (v16 != 2)
      {
        return 0;
      }
    }

    else if (v16 == 2 || ((v16 ^ v8) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v15 != 2 && ((v15 ^ v7) & 1) == 0)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t SiriPostSiriEngagement.Features.hash(into:)()
{
  v1 = *(v0 + 10);
  v2 = *(v0 + 11);
  v3 = *(v0 + 12);
  v4 = *(v0 + 13);
  v5 = *(v0 + 14);
  v6 = *(v0 + 15);
  v7 = *(v0 + 16);
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v8 = *(v0 + 8);
    v17 = *(v0 + 11);
    v9 = *(v0 + 12);
    v10 = *(v0 + 13);
    v11 = *(v0 + 14);
    v12 = *(v0 + 15);
    v13 = *(v0 + 16);
    v14 = *v0;
    OUTLINED_FUNCTION_103_0();
    v7 = v13;
    v6 = v12;
    v5 = v11;
    v4 = v10;
    v3 = v9;
    v2 = v17;
    v15 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
    MEMORY[0x193B18030](v15);
  }

  if (v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v3 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v5 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v7 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

uint64_t SiriPostSiriEngagement.Features.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  SiriPostSiriEngagement.Features.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934EC18C()
{
  sub_19393CAB0();
  SiriPostSiriEngagement.Features.hash(into:)();
  return sub_19393CB00();
}

uint64_t SiriPostSiriEngagement.Signal.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.Signal.domain.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.action.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.Signal.action.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

__n128 SiriPostSiriEngagement.Signal.pseDelta.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 81);
  result = *(v1 + 40);
  v6 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

__n128 SiriPostSiriEngagement.Signal.pseDelta.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v6;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 81) = v4;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.pseContents.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.donatedTimestamp.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.donatedTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

void __swiftcall SiriPostSiriEngagement.Signal.init()(IntelligencePlatformLibrary::SiriPostSiriEngagement::Signal *__return_ptr retstr)
{
  retstr->domain = 0u;
  retstr->action = 0u;
  retstr->isPostSiriEngagement.value = 2;
  *(&retstr->pseDelta.value.duration.value + 7) = 0u;
  *(&retstr->pseDelta.value.sinceUIStart.value + 5) = 0u;
  *(&retstr->pseContents._rawValue + 1) = 0u;
  *(&retstr->donatedTimestamp + 9) = 1;
  retstr[1].domain.value._countAndFlagsBits = MEMORY[0x1E69E7CC0];
  retstr[1].domain.value._object = 0;
  LOBYTE(retstr[1].action.value._countAndFlagsBits) = 1;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.duration.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.duration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.sinceUIEnd.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.sinceUIEnd.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.sinceUIStart.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.sinceUIStart.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void __swiftcall SiriPostSiriEngagement.Signal.DeltaEvent.init()(IntelligencePlatformLibrary::SiriPostSiriEngagement::Signal::DeltaEvent *__return_ptr retstr)
{
  retstr->duration.value = 0.0;
  retstr->duration.is_nil = 1;
  *(&retstr->sinceUIEnd.value + 7) = 0.0;
  BYTE6(retstr->sinceUIStart.value) = 1;
  *(&retstr[1].duration.value + 5) = 0.0;
  BYTE4(retstr[1].sinceUIEnd.value) = 1;
}

uint64_t static SiriPostSiriEngagement.Signal.DeltaEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  return 1;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *v0;
    sub_19393CAD0();
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x193B18060](v9);
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v1;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x193B18060](v5);
      if (!v4)
      {
        goto LABEL_7;
      }

      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  if (v4)
  {
    return sub_19393CAD0();
  }

LABEL_7:
  sub_19393CAD0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x193B18060](v6);
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_5_23();
  sub_19393CAB0();
  SiriPostSiriEngagement.Signal.DeltaEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934EC670()
{
  OUTLINED_FUNCTION_5_23();
  sub_19393CAB0();
  SiriPostSiriEngagement.Signal.DeltaEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t SiriPostSiriEngagement.Signal.Content.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.Signal.Content.key.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.Content.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.Signal.Content.value.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static SiriPostSiriEngagement.Signal.Content.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t SiriPostSiriEngagement.Signal.Content.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  v3 = *v0;
  sub_19393CAD0();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t SiriPostSiriEngagement.Signal.Content.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v4)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_1934EC9B4()
{
  v2 = *v0;
  v3 = v0[1];
  sub_19393CAB0();
  SiriPostSiriEngagement.Signal.Content.hash(into:)();
  return sub_19393CB00();
}

uint64_t static SiriPostSiriEngagement.Signal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 81);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v20 = *(a2 + 40);
  v19 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  v24 = *(a2 + 80);
  v25 = *(a2 + 81);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v28 = *(a2 + 104);
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v58 = *(a2 + 81);
      v60 = *(a1 + 81);
      v62 = *(a1 + 104);
      v64 = *(a2 + 104);
      v54 = *(a2 + 64);
      v53 = *(a2 + 80);
      v51 = *(a2 + 88);
      v52 = *(a2 + 72);
      v30 = *(a1 + 88);
      v66 = *(a1 + 56);
      v68 = *(a1 + 40);
      v22 = *(a1 + 72);
      v31 = *(a1 + 80);
      v32 = *(a2 + 48);
      v33 = *(a2 + 40);
      v34 = *(a1 + 32);
      v56 = *(a2 + 32);
      v50 = *(a2 + 16);
      v35 = sub_19393CA30();
      v18 = v56;
      v25 = v58;
      v6 = v34;
      v11 = v60;
      v14 = v62;
      v20 = v33;
      LOBYTE(v19) = v32;
      v10 = v31;
      v9 = v22;
      v8 = v66;
      v7 = v68;
      v12 = v30;
      v28 = v64;
      v16 = v50;
      v26 = v51;
      v23 = v52;
      v24 = v53;
      LOBYTE(v22) = v54;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v5)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v16 || v5 != v17)
    {
      v59 = v25;
      v61 = v11;
      v63 = v14;
      v65 = v28;
      v37 = v12;
      v38 = v21;
      v67 = v8;
      v69 = v7;
      v39 = v9;
      v40 = v10;
      v55 = v19;
      v41 = v20;
      v42 = v6;
      v57 = v18;
      v43 = sub_19393CA30();
      v18 = v57;
      v25 = v59;
      v6 = v42;
      v11 = v61;
      v14 = v63;
      v20 = v41;
      LOBYTE(v19) = v55;
      v10 = v40;
      v9 = v39;
      v8 = v67;
      v7 = v69;
      v21 = v38;
      v12 = v37;
      v28 = v65;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v6 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }

LABEL_24:
    if (v11)
    {
      v45 = v14;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v76[0] = v7;
      v76[1] = v8;
      v77 = v9;
      v78 = v10;
      v79 = 0;
      if (v25)
      {
        return 0;
      }

      v45 = v14;
      v70 = v20;
      v71 = v19 & 1;
      v72 = v21;
      v73 = v22 & 1;
      v74 = v23;
      v75 = v24 & 1;
      v46 = v28;
      v47 = v12;
      v48 = static SiriPostSiriEngagement.Signal.DeltaEvent.== infix(_:_:)(v76, &v70);
      v12 = v47;
      v28 = v46;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }

    if (sub_1934ECC9C(v12, v26))
    {
      if (v45)
      {
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == v27)
        {
          v49 = v28;
        }

        else
        {
          v49 = 1;
        }

        if (v49)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  result = 0;
  if (v18 != 2 && ((v18 ^ v6) & 1) == 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1934ECC9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v4 - 3) == *(v3 - 3) && v5 == v8;
        if (!v11 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10)
        {
          return 0;
        }

        v12 = v6 == v9 && v7 == v10;
        if (!v12 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v4 += 4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t SiriPostSiriEngagement.Signal.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v12 = *(v1 + 5);
  *v13 = *(v1 + 7);
  *&v13[10] = *(v1 + 66);
  v7 = v1[11];
  v8 = v1[12];
  v9 = *(v1 + 104);
  if (v1[1])
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v5)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v6 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  sub_1934ECF94();
  sub_1934ED064(a1, v7);
  if (v9)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x193B18060](v11);
}

uint64_t SiriPostSiriEngagement.Signal.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  SiriPostSiriEngagement.Signal.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934ECED4()
{
  sub_19393CAB0();
  SiriPostSiriEngagement.Signal.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t SiriPostSiriEngagement.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  SiriPostSiriEngagement.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934ECF54()
{
  sub_19393CAB0();
  SiriPostSiriEngagement.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934ECF94()
{
  if (*(v0 + 41))
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  v2 = v0[2];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = *(v0 + 6);
  v6 = *(v0 + 2);
  sub_19393CAD0();
  if (v6)
  {
    sub_19393CAD0();
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_19393CAD0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v1;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193B18060](v10);
    if ((v5 & 1) == 0)
    {
LABEL_4:
      sub_19393CAD0();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x193B18060](v7);
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  if (v4)
  {
    return sub_19393CAD0();
  }

LABEL_8:
  sub_19393CAD0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x193B18060](v8);
}

uint64_t sub_1934ED064(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (*(v5 - 2))
      {
        v8 = *(v5 - 3);
        sub_19393CAD0();

        sub_19393C640();
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_19393CAD0();

        if (!v7)
        {
LABEL_7:
          sub_19393CAD0();
          goto LABEL_8;
        }
      }

      sub_19393CAD0();
      sub_19393C640();
LABEL_8:

      v5 += 4;

      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1934ED14C()
{
  result = qword_1EAE3BB48;
  if (!qword_1EAE3BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BB50, &qword_193958720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB48);
  }

  return result;
}

unint64_t sub_1934ED1B4()
{
  result = qword_1EAE3BB58;
  if (!qword_1EAE3BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB58);
  }

  return result;
}

unint64_t sub_1934ED210()
{
  result = qword_1EAE3BB60;
  if (!qword_1EAE3BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB60);
  }

  return result;
}

unint64_t sub_1934ED268()
{
  result = qword_1EAE3BB68;
  if (!qword_1EAE3BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB68);
  }

  return result;
}

unint64_t sub_1934ED2C4()
{
  result = qword_1EAE3BB70;
  if (!qword_1EAE3BB70)
  {
    type metadata accessor for SiriPostSiriEngagement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB70);
  }

  return result;
}

uint64_t sub_1934ED344()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_9_32(v3, &qword_1ED508290, MEMORY[0x1E69E6158]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_10_15(v5, qword_1ED507ED8, MEMORY[0x1E69E6158]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        OUTLINED_FUNCTION_9_32(v7, &qword_1ED504940, &type metadata for SiriPostSiriEngagement.Features);
        if (v9 > 0x3F)
        {
          return v7;
        }

        OUTLINED_FUNCTION_10_15(v7, qword_1ED504668, &type metadata for SiriPostSiriEngagement.Signal);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1934ED494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriPostSiriEngagement.Features(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 10);
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriPostSiriEngagement.Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1934ED5BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_1934ED5FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1934ED668(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

uint64_t sub_1934ED68C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *_s16IntelligenceFlowOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934ED79C()
{
  v0 = sub_19393C820();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = sub_19393C810();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v8 = sub_19393C4E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_5_1();
  sub_19343CF00(0, &qword_1EAE3BA78, 0x1E69E9610);
  sub_19393C4D0();
  sub_1934E666C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA88, &qword_1939584B8);
  sub_1934E66C4();
  sub_19393C8A0();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v0);
  result = sub_19393C840();
  qword_1ED510208 = result;
  return result;
}

id sub_1934ED99C@<X0>(void *a1@<X8>)
{
  v3 = qword_1EAE50770;
  if (qword_1EAE50770)
  {
    v4 = qword_1EAE50770;
LABEL_3:
    *a1 = v4;
    return v3;
  }

  sub_193434358();
  result = sub_19393BF70();
  if (!v1)
  {
    v6 = qword_1EAE50770;
    qword_1EAE50770 = result;
    v4 = result;

    v3 = 0;
    goto LABEL_3;
  }

  return result;
}

id sub_1934EDA60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1939583F0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_193958C00;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  *(v1 + 40) = sub_19393C850();
  *(v1 + 48) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v3 = OUTLINED_FUNCTION_16_12();
  result = sub_19343D150(v3, v4, v5, v6, v1, 13, 0);
  if (result)
  {
    *(v0 + 32) = result;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_193958C00;
    *(v8 + 32) = sub_19393C850();
    *(v8 + 40) = sub_19393C850();
    *(v8 + 48) = sub_19393C850();
    v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
    v10 = OUTLINED_FUNCTION_16_12();
    result = sub_19343D150(v10, v11, v12, v13, v8, 13, 0);
    if (result)
    {
      *(v0 + 40) = result;
      qword_1ED5127C0 = v0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1934EDC00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_193958C00;
  v1 = objc_allocWithZone(MEMORY[0x1E698F298]);
  *(v0 + 32) = sub_1934E5F70(0x6D61747365746164, 0xE900000000000070, 0xD00000000000002ELL, 0x8000000193A17FC0, 1);
  v2 = objc_allocWithZone(MEMORY[0x1E698F298]);
  *(v0 + 40) = OUTLINED_FUNCTION_10_16();
  v3 = objc_allocWithZone(MEMORY[0x1E698F298]);
  result = OUTLINED_FUNCTION_10_16();
  *(v0 + 48) = result;
  qword_1EAEA8700 = v0;
  return result;
}

id sub_1934EDD30()
{
  v1 = sub_19393C570();
  if (qword_1EAE45C80 != -1)
  {
    OUTLINED_FUNCTION_1_27();
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex();
  v4 = objc_msgSendSuper2(&v6, sel_initWithName_fields_streamIdentifier_, v1, v2, v3);

  return v4;
}

id sub_1934EDE4C(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v4 = OUTLINED_FUNCTION_3_28();
  v5 = MEMORY[0x1E69E63B0];
  *(v4 + 16) = xmmword_19394FBB0;
  *(v4 + 56) = v5;
  *(v4 + 32) = a1;
  v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v7 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v4 + 88) = v7;
  *(v4 + 64) = v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v4 + 120) = v7;
  *(v4 + 96) = v8;
  v9 = OUTLINED_FUNCTION_4_5();
  *(v9 + 16) = xmmword_19394FBB0;
  *(v9 + 56) = v5;
  *(v9 + 32) = a1;
  v10 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v9 + 88) = v7;
  *(v9 + 64) = v10;
  v11 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v9 + 120) = v7;
  *(v9 + 96) = v11;
  if (_MergedGlobals_8 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v2)
  {
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_8_24(v1);
  }
}

id sub_1934EE268(unint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v6 = OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_13_10(v6, xmmword_19394FBB0);
  v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v8 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  v9 = MEMORY[0x1E69E6158];
  v6[2].n128_u64[0] = v7;
  v6[5].n128_u64[1] = v9;
  v6[3].n128_u64[1] = v8;
  v6[4].n128_u64[0] = a1;
  v6[4].n128_u64[1] = a2;
  v10 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v11 = [v2 init];
  v6[7].n128_u64[1] = v8;
  v6[6].n128_u64[0] = v11;
  v12 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_26(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v20);
  v3[4] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v3[11] = v9;
  v3[7] = v8;
  v3[8] = a1;
  v3[9] = a2;
  v21 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v22 = [v2 init];
  v3[15] = v8;
  v3[12] = v22;
  if (_MergedGlobals_8 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v28)
  {
  }

  else
  {
    v24 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_8_24(v27);
  }
}

id sub_1934EE680(unint64_t a1, unint64_t a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v7 = OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_13_10(v7, xmmword_19394FBB0);
  v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v9 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  v7[3].n128_u64[1] = v9;
  v7[2].n128_u64[0] = v8;
  v7[4].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v10 = MEMORY[0x1E69E6158];
  v7[7].n128_u64[1] = MEMORY[0x1E69E6158];
  v7[5].n128_u64[1] = v9;
  v7[6].n128_u64[0] = a1;
  v7[6].n128_u64[1] = a2;
  v11 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_26(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26, v19);
  v20 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v21 = [v2 init];
  v3[7] = v9;
  v3[4] = v21;
  v3[8] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v3[15] = v10;
  v3[11] = v9;
  v3[12] = a1;
  v3[13] = a2;
  v22 = _MergedGlobals_8;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v4)
  {
  }

  else
  {
    v24 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_8_24(v27);
  }
}

id sub_1934EEA9C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19394FBB0;
  if (a2)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v16 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v16 + 32) = v17;
  }

  else
  {
    v34 = MEMORY[0x1E69E63B0];
    *&v33 = a1;
    sub_193495EE0(&v33, (v16 + 32));
  }

  v18 = MEMORY[0x1E69E6158];
  if (a6)
  {
    v34 = MEMORY[0x1E69E6158];
    *&v33 = a5;
    *(&v33 + 1) = a6;
    sub_193495EE0(&v33, (v16 + 64));
  }

  else
  {
    v19 = [OUTLINED_FUNCTION_7_19() &selRef_entityIdentifier];
    *(v16 + 88) = OUTLINED_FUNCTION_14_11(v19, &qword_1EAE3BA68);
    *(v16 + 64) = v19;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  if (*(&a9 + 1))
  {
    v34 = v18;
    v33 = a9;
    sub_193495EE0(&v33, (v16 + 96));
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7_19();

    v20 = [v10 &selRef_entityIdentifier];
    *(v16 + 120) = OUTLINED_FUNCTION_14_11(v20, &qword_1EAE3BA68);
    *(v16 + 96) = v20;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_19394FBB0;
  if (a4)
  {
    v10 = OUTLINED_FUNCTION_7_19();

    v22 = [v10 &selRef_entityIdentifier];
    *(v21 + 56) = OUTLINED_FUNCTION_14_11(v22, &qword_1EAE3BA68);
    *(v21 + 32) = v22;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  else
  {
    v34 = MEMORY[0x1E69E63B0];
    *&v33 = a3;
    sub_193495EE0(&v33, (v21 + 32));
  }

  if (a8)
  {
    v34 = v18;
    *&v33 = a7;
    *(&v33 + 1) = a8;
    sub_193495EE0(&v33, (v21 + 64));
  }

  else
  {
    v23 = [OUTLINED_FUNCTION_7_19() &selRef_entityIdentifier];
    *(v21 + 88) = OUTLINED_FUNCTION_14_11(v23, &qword_1EAE3BA68);
    *(v21 + 64) = v23;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  if (*(&a10 + 1))
  {
    v34 = v18;
    v33 = a10;
    sub_193495EE0(&v33, (v21 + 96));
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_15_23();
    v24 = [v10 &selRef_entityIdentifier];
    *(v21 + 120) = OUTLINED_FUNCTION_14_11(v24, &qword_1EAE3BA68);
    *(v21 + 96) = v24;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  v25 = _MergedGlobals_8;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  v26 = v35;
  sub_19393C830();
  if (v26)
  {
  }

  else
  {
    v28 = v33;
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v29, v16, v21, v28);
  }
}

id Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.__allocating_init(name:fields:streamIdentifier:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_19393C570();

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v3 = sub_19393C6C0();

  v4 = sub_19393C570();

  v5 = [v1 initWithName:v2 fields:v3 streamIdentifier:v4];

  return v5;
}

id Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1934EF014()
{
  v0 = objc_allocWithZone(type metadata accessor for Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex());
  result = sub_1934EDD30();
  qword_1ED510218 = result;
  return result;
}

uint64_t *sub_1934EF048()
{
  if (qword_1ED510210 != -1)
  {
    OUTLINED_FUNCTION_5_24();
  }

  return &qword_1ED510218;
}

id static Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestID.getter()
{
  if (qword_1ED510210 != -1)
  {
    OUTLINED_FUNCTION_5_24();
  }

  v1 = qword_1ED510218;

  return v1;
}

_BYTE *_s7IndexesOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(datestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 96))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(clientSessionIdentifier:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(startClientSessionIdentifier:endClientSessionIdentifier:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(clientRequestIdentifier:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(startClientRequestIdentifier:endClientRequestIdentifier:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 128))();
}

uint64_t sub_1934EF3D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510238);
  v5 = __swift_project_value_buffer(v4, qword_1ED510238);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.Telemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_1934EF600(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934EF63C(void (*a1)(void))
{
  result = sub_1934EF600(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934EF6A4(uint64_t a1)
{
  result = sub_1934EF6CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934EF6CC()
{
  result = qword_1ED5028B8;
  if (!qword_1ED5028B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5028B8);
  }

  return result;
}

_BYTE *_s9TelemetryOwst(_BYTE *result, int a2, int a3)
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

uint64_t IntelligenceFlowTarget.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!v3 & v2)
  {
    switch(result)
    {
      case 1:
        result = 0;
        break;
      case 4001:
        v4 = 1;
        result = 37;
        goto LABEL_45;
      case 3:
        v4 = 1;
        result = 2;
        goto LABEL_45;
      case 101:
        v4 = 1;
        result = 3;
        goto LABEL_45;
      case 102:
        v4 = 1;
        result = 4;
        goto LABEL_45;
      case 201:
        v4 = 1;
        result = 5;
        goto LABEL_45;
      case 202:
        v4 = 1;
        result = 6;
        goto LABEL_45;
      case 401:
        v4 = 1;
        result = 18;
        goto LABEL_45;
      case 402:
        v4 = 1;
        result = 19;
        goto LABEL_45;
      case 601:
        v4 = 1;
        result = 28;
        goto LABEL_45;
      case 602:
        v4 = 1;
        result = 29;
        goto LABEL_45;
      case 3001:
        v4 = 1;
        result = 35;
        goto LABEL_45;
      case 3002:
        v4 = 1;
        result = 36;
        goto LABEL_45;
      case 2:
        result = 1;
        break;
      default:
        v4 = 0;
        goto LABEL_45;
    }

    v4 = 1;
  }

  else
  {
    switch(result)
    {
      case 301:
        v4 = 1;
        result = 7;
        break;
      case 302:
        v4 = 1;
        result = 8;
        break;
      case 303:
        v4 = 1;
        result = 9;
        break;
      case 304:
        v4 = 1;
        result = 10;
        break;
      case 305:
        v4 = 1;
        result = 11;
        break;
      case 306:
        v4 = 1;
        result = 12;
        break;
      case 307:
        v4 = 1;
        result = 13;
        break;
      case 308:
        v4 = 1;
        result = 14;
        break;
      case 309:
        v4 = 1;
        result = 15;
        break;
      case 310:
        v4 = 1;
        result = 16;
        break;
      case 311:
        v4 = 1;
        result = 17;
        break;
      default:
        JUMPOUT(0);
    }
  }

LABEL_45:
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t static IntelligenceFlowTarget.allCases.getter()
{
  v0 = sub_1934F0E4C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v0;
  v5 = *(v0 + 2);
  v4 = *(v0 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v0 = OUTLINED_FUNCTION_1_28(v0, v4);
    v3 = v0;
    v4 = *(v0 + 3);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v0 = OUTLINED_FUNCTION_2_27(v3, v4);
    v3 = v0;
    v4 = *(v0 + 3);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v0 = sub_1934F0E4C((v4 > 1), v5 + 3, 1, v3);
    v3 = v0;
  }

  *(v3 + 16) = v11;
  v12 = v3 + 16 * v9;
  *(v12 + 32) = 1;
  *(v12 + 40) = 1;
  v13 = *(v3 + 24);
  if ((v5 + 4) > (v13 >> 1))
  {
    v0 = OUTLINED_FUNCTION_1_28(v3, v13);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 4;
  v14 = v3 + 16 * v11;
  *(v14 + 32) = 2;
  *(v14 + 40) = 1;
  v15 = *(v3 + 24);
  if ((v5 + 5) > (v15 >> 1))
  {
    v0 = OUTLINED_FUNCTION_2_27(v3, v15);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_4(v16, v17);
  if ((v5 + 6) > (v22 >> 1))
  {
    v18 = OUTLINED_FUNCTION_1_28(v21, v22);
    v21 = v18;
  }

  OUTLINED_FUNCTION_50(v18, v19, v20, v21);
  OUTLINED_FUNCTION_4(v23, v24);
  if ((v5 + 7) > (v29 >> 1))
  {
    v25 = OUTLINED_FUNCTION_2_27(v28, v29);
    v28 = v25;
  }

  OUTLINED_FUNCTION_47_5(v25, v26, v27, v28);
  OUTLINED_FUNCTION_4(v30, v31);
  if ((v5 + 8) > (v36 >> 1))
  {
    v32 = OUTLINED_FUNCTION_1_28(v35, v36);
    v35 = v32;
  }

  OUTLINED_FUNCTION_50(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37, v38);
  if ((v5 + 9) > (v43 >> 1))
  {
    v39 = OUTLINED_FUNCTION_2_27(v42, v43);
    v42 = v39;
  }

  OUTLINED_FUNCTION_47_5(v39, v40, v41, v42);
  OUTLINED_FUNCTION_4(v44, v45);
  if ((v5 + 10) > (v50 >> 1))
  {
    v46 = OUTLINED_FUNCTION_1_28(v49, v50);
    v49 = v46;
  }

  OUTLINED_FUNCTION_50(v46, v47, v48, v49);
  OUTLINED_FUNCTION_4(v51, v52);
  if ((v5 + 11) > (v57 >> 1))
  {
    v53 = OUTLINED_FUNCTION_2_27(v56, v57);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58, v59);
  if ((v5 + 12) > (v64 >> 1))
  {
    v60 = OUTLINED_FUNCTION_1_28(v63, v64);
    v63 = v60;
  }

  OUTLINED_FUNCTION_50(v60, v61, v62, v63);
  OUTLINED_FUNCTION_4(v65, v66);
  if ((v5 + 13) > (v71 >> 1))
  {
    v67 = OUTLINED_FUNCTION_2_27(v70, v71);
    v70 = v67;
  }

  OUTLINED_FUNCTION_47_5(v67, v68, v69, v70);
  OUTLINED_FUNCTION_4(v72, v73);
  if ((v5 + 14) > (v78 >> 1))
  {
    v74 = OUTLINED_FUNCTION_1_28(v77, v78);
    v77 = v74;
  }

  OUTLINED_FUNCTION_50(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79, v80);
  if ((v5 + 15) > (v85 >> 1))
  {
    v81 = OUTLINED_FUNCTION_2_27(v84, v85);
    v84 = v81;
  }

  OUTLINED_FUNCTION_47_5(v81, v82, v83, v84);
  OUTLINED_FUNCTION_4(v86, v87);
  if ((v5 + 16) > (v92 >> 1))
  {
    v88 = OUTLINED_FUNCTION_1_28(v91, v92);
    v91 = v88;
  }

  OUTLINED_FUNCTION_50(v88, v89, v90, v91);
  OUTLINED_FUNCTION_4(v93, v94);
  if ((v5 + 17) > (v99 >> 1))
  {
    v95 = OUTLINED_FUNCTION_2_27(v98, v99);
    v98 = v95;
  }

  OUTLINED_FUNCTION_47_5(v95, v96, v97, v98);
  OUTLINED_FUNCTION_4(v100, v101);
  if ((v5 + 18) > (v106 >> 1))
  {
    v102 = OUTLINED_FUNCTION_1_28(v105, v106);
    v105 = v102;
  }

  OUTLINED_FUNCTION_50(v102, v103, v104, v105);
  OUTLINED_FUNCTION_4(v107, v108);
  if ((v5 + 19) > (v113 >> 1))
  {
    v109 = OUTLINED_FUNCTION_2_27(v112, v113);
    v112 = v109;
  }

  OUTLINED_FUNCTION_47_5(v109, v110, v111, v112);
  OUTLINED_FUNCTION_4(v114, v115);
  if ((v5 + 20) > (v120 >> 1))
  {
    v116 = OUTLINED_FUNCTION_1_28(v119, v120);
    v119 = v116;
  }

  OUTLINED_FUNCTION_50(v116, v117, v118, v119);
  OUTLINED_FUNCTION_4(v121, v122);
  if ((v5 + 21) > (v127 >> 1))
  {
    v123 = OUTLINED_FUNCTION_2_27(v126, v127);
    v126 = v123;
  }

  OUTLINED_FUNCTION_47_5(v123, v124, v125, v126);
  OUTLINED_FUNCTION_4(v128, v129);
  if ((v5 + 22) > (v134 >> 1))
  {
    v130 = OUTLINED_FUNCTION_1_28(v133, v134);
    v133 = v130;
  }

  OUTLINED_FUNCTION_50(v130, v131, v132, v133);
  OUTLINED_FUNCTION_4(v135, v136);
  if ((v5 + 23) > (v141 >> 1))
  {
    v137 = OUTLINED_FUNCTION_2_27(v140, v141);
    v140 = v137;
  }

  OUTLINED_FUNCTION_47_5(v137, v138, v139, v140);
  OUTLINED_FUNCTION_4(v142, v143);
  if ((v5 + 24) > (v148 >> 1))
  {
    v144 = OUTLINED_FUNCTION_1_28(v147, v148);
    v147 = v144;
  }

  OUTLINED_FUNCTION_50(v144, v145, v146, v147);
  OUTLINED_FUNCTION_4(v149, v150);
  if ((v5 + 25) > (v155 >> 1))
  {
    v151 = OUTLINED_FUNCTION_2_27(v154, v155);
    v154 = v151;
  }

  OUTLINED_FUNCTION_47_5(v151, v152, v153, v154);
  OUTLINED_FUNCTION_4(v156, v157);
  if ((v5 + 26) > (v162 >> 1))
  {
    v158 = OUTLINED_FUNCTION_1_28(v161, v162);
    v161 = v158;
  }

  OUTLINED_FUNCTION_50(v158, v159, v160, v161);
  OUTLINED_FUNCTION_4(v163, v164);
  if ((v5 + 27) > (v169 >> 1))
  {
    v165 = OUTLINED_FUNCTION_2_27(v168, v169);
    v168 = v165;
  }

  OUTLINED_FUNCTION_47_5(v165, v166, v167, v168);
  OUTLINED_FUNCTION_4(v170, v171);
  if ((v5 + 28) > (v176 >> 1))
  {
    v172 = OUTLINED_FUNCTION_1_28(v175, v176);
    v175 = v172;
  }

  OUTLINED_FUNCTION_50(v172, v173, v174, v175);
  OUTLINED_FUNCTION_4(v177, v178);
  if ((v5 + 29) > (v183 >> 1))
  {
    v179 = OUTLINED_FUNCTION_2_27(v182, v183);
    v182 = v179;
  }

  OUTLINED_FUNCTION_47_5(v179, v180, v181, v182);
  OUTLINED_FUNCTION_4(v184, v185);
  if ((v5 + 30) > (v190 >> 1))
  {
    v186 = OUTLINED_FUNCTION_1_28(v189, v190);
    v189 = v186;
  }

  OUTLINED_FUNCTION_50(v186, v187, v188, v189);
  OUTLINED_FUNCTION_4(v191, v192);
  if ((v5 + 31) > (v197 >> 1))
  {
    v193 = OUTLINED_FUNCTION_2_27(v196, v197);
    v196 = v193;
  }

  OUTLINED_FUNCTION_47_5(v193, v194, v195, v196);
  OUTLINED_FUNCTION_4(v198, v199);
  if ((v5 + 32) > (v204 >> 1))
  {
    v200 = OUTLINED_FUNCTION_1_28(v203, v204);
    v203 = v200;
  }

  OUTLINED_FUNCTION_50(v200, v201, v202, v203);
  OUTLINED_FUNCTION_4(v205, v206);
  if ((v5 + 33) > (v211 >> 1))
  {
    v207 = OUTLINED_FUNCTION_2_27(v210, v211);
    v210 = v207;
  }

  OUTLINED_FUNCTION_47_5(v207, v208, v209, v210);
  OUTLINED_FUNCTION_4(v212, v213);
  if ((v5 + 34) > (v218 >> 1))
  {
    v214 = OUTLINED_FUNCTION_1_28(v217, v218);
    v217 = v214;
  }

  OUTLINED_FUNCTION_50(v214, v215, v216, v217);
  OUTLINED_FUNCTION_4(v219, v220);
  if ((v5 + 35) > (v225 >> 1))
  {
    v221 = OUTLINED_FUNCTION_2_27(v224, v225);
    v224 = v221;
  }

  OUTLINED_FUNCTION_47_5(v221, v222, v223, v224);
  OUTLINED_FUNCTION_4(v226, v227);
  if ((v5 + 36) > (v232 >> 1))
  {
    v228 = OUTLINED_FUNCTION_1_28(v231, v232);
    v231 = v228;
  }

  OUTLINED_FUNCTION_50(v228, v229, v230, v231);
  OUTLINED_FUNCTION_4(v233, v234);
  if ((v5 + 37) > (v239 >> 1))
  {
    v235 = OUTLINED_FUNCTION_2_27(v238, v239);
    v238 = v235;
  }

  OUTLINED_FUNCTION_47_5(v235, v236, v237, v238);
  OUTLINED_FUNCTION_4(v240, v241);
  if ((v5 + 38) > (v246 >> 1))
  {
    v242 = OUTLINED_FUNCTION_1_28(v245, v246);
    v245 = v242;
  }

  OUTLINED_FUNCTION_50(v242, v243, v244, v245);
  OUTLINED_FUNCTION_4(v247, v248);
  if ((v5 + 39) > (v253 >> 1))
  {
    v249 = OUTLINED_FUNCTION_2_27(v252, v253);
    v252 = v249;
  }

  OUTLINED_FUNCTION_47_5(v249, v250, v251, v252);
  *(v254 + 32) = 37;
  *(v254 + 40) = 1;
  return v255;
}

void IntelligenceFlowTarget.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 8:
      case 0xBLL:
      case 0xCLL:
      case 0xDLL:
      case 0x11:
      case 0x12:
      case 0x1DLL:
      case 0x25:
        OUTLINED_FUNCTION_38();
        break;
      default:
        OUTLINED_FUNCTION_8_25();
        break;
    }
  }
}

uint64_t IntelligenceFlowTarget.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v11 = a1 == 0xD000000000000017 && v10 == a2;
  if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v13 = a1 == 0xD000000000000014 && v12 == a2;
  if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_38();
  v15 = a1 == 0xD000000000000012 && v14 == a2;
  if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v17 = a1 == 0xD00000000000001BLL && v16 == a2;
    if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v9 = 1;
      v8 = 3;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v19 = a1 == 0xD00000000000001CLL && v18 == a2;
      if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v9 = 1;
        v8 = 4;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v21 = a1 == 0xD000000000000019 && v20 == a2;
        if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v9 = 1;
          v8 = 5;
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v23 = a1 == 0xD00000000000001ALL && v22 == a2;
          if (v23 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v9 = 1;
            v8 = 6;
          }

          else
          {
            OUTLINED_FUNCTION_60();
            v25 = v6 && v24 == a2;
            if (v25 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v9 = 1;
              v8 = 7;
            }

            else
            {
              OUTLINED_FUNCTION_96_2();
              v27 = v6 && v26 == a2;
              if (v27 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v9 = 1;
                v8 = 8;
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v29 = a1 == 0xD000000000000029 && v28 == a2;
                if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v9 = 1;
                  v8 = 9;
                }

                else
                {
                  OUTLINED_FUNCTION_60();
                  v31 = v6 && v30 == a2;
                  if (v31 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    v9 = 1;
                    v8 = 10;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v33 = a1 == 0xD00000000000003CLL && v32 == a2;
                    if (v33 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      v9 = 1;
                      v8 = 11;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      v35 = a1 == 0xD00000000000003BLL && v34 == a2;
                      if (v35 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        v9 = 1;
                        v8 = 12;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_60();
                        v37 = v6 && v36 == a2;
                        if (v37 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                        {

                          v9 = 1;
                          v8 = 13;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          v39 = a1 == 0xD00000000000004ELL && v38 == a2;
                          if (v39 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            v9 = 1;
                            v8 = 14;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_60();
                            v41 = v6 && v40 == a2;
                            if (v41 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              v9 = 1;
                              v8 = 15;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              v43 = a1 == 0xD000000000000022 && v42 == a2;
                              if (v43 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                v9 = 1;
                                v8 = 16;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38();
                                v45 = a1 == 0xD00000000000001DLL && v44 == a2;
                                if (v45 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                {

                                  v9 = 1;
                                  v8 = 17;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_96_2();
                                  v47 = v6 && v46 == a2;
                                  if (v47 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                  {

                                    v9 = 1;
                                    v8 = 18;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_38();
                                    v49 = a1 == 0xD000000000000019 && v48 == a2;
                                    if (v49 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                    {

                                      v9 = 1;
                                      v8 = 19;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_38();
                                      v51 = a1 == 0xD00000000000001ELL && v50 == a2;
                                      if (v51 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                      {

                                        v9 = 1;
                                        v8 = 20;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_38();
                                        v53 = a1 == 0xD00000000000001FLL && v52 == a2;
                                        if (v53 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                        {

                                          v9 = 1;
                                          v8 = 21;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_38();
                                          v55 = a1 == 0xD00000000000002ALL && v54 == a2;
                                          if (v55 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                          {

                                            v9 = 1;
                                            v8 = 22;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_38();
                                            v57 = a1 == 0xD000000000000021 && v56 == a2;
                                            if (v57 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                            {

                                              v9 = 1;
                                              v8 = 23;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_38();
                                              v59 = a1 == 0xD000000000000028 && v58 == a2;
                                              if (v59 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                              {

                                                v9 = 1;
                                                v8 = 24;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_38();
                                                v61 = a1 == 0xD000000000000027 && v60 == a2;
                                                if (v61 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                {

                                                  v9 = 1;
                                                  v8 = 25;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_38();
                                                  v63 = a1 == 0xD00000000000002FLL && v62 == a2;
                                                  if (v63 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                  {

                                                    v9 = 1;
                                                    v8 = 26;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_38();
                                                    v65 = a1 == 0xD000000000000024 && v64 == a2;
                                                    if (v65 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                    {

                                                      v9 = 1;
                                                      v8 = 27;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_38();
                                                      v67 = a1 == 0xD00000000000001CLL && v66 == a2;
                                                      if (v67 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                      {

                                                        v9 = 1;
                                                        v8 = 28;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_38();
                                                        v69 = a1 == 0xD00000000000001DLL && v68 == a2;
                                                        if (v69 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                        {

                                                          v9 = 1;
                                                          v8 = 29;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_38();
                                                          v71 = a1 == 0xD000000000000023 && v70 == a2;
                                                          if (v71 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                          {

                                                            v9 = 1;
                                                            v8 = 30;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_38();
                                                            v73 = a1 == 0xD000000000000024 && v72 == a2;
                                                            if (v73 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                            {

                                                              v9 = 1;
                                                              v8 = 31;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_38();
                                                              v75 = a1 == 0xD000000000000025 && v74 == a2;
                                                              if (v75 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                              {

                                                                v9 = 1;
                                                                v8 = 32;
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_38();
                                                                v77 = a1 == 0xD000000000000025 && v76 == a2;
                                                                if (v77 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                {

                                                                  v9 = 1;
                                                                  v8 = 33;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_38();
                                                                  v79 = a1 == 0xD00000000000002BLL && v78 == a2;
                                                                  if (v79 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                  {

                                                                    v9 = 1;
                                                                    v8 = 34;
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_38();
                                                                    v81 = a1 == 0xD00000000000001CLL && v80 == a2;
                                                                    if (v81 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                    {

                                                                      v9 = 1;
                                                                      v8 = 35;
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_60();
                                                                      v83 = v6 && v82 == a2;
                                                                      if (v83 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                      {

                                                                        v9 = 1;
                                                                        v8 = 36;
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_96_2();
                                                                        if (v6 && v84 == a2)
                                                                        {

                                                                          v9 = 1;
                                                                          v8 = 37;
                                                                        }

                                                                        else
                                                                        {
                                                                          v9 = OUTLINED_FUNCTION_0_9();

                                                                          v8 = 37;
                                                                          if ((v9 & 1) == 0)
                                                                          {
                                                                            v8 = 0;
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
        }
      }
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1934F0E4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BB88, &qword_193958D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1934F0F4C()
{
  result = qword_1EAE3BB80;
  if (!qword_1EAE3BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB80);
  }

  return result;
}

uint64_t sub_1934F0FA0()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9080);
  __swift_project_value_buffer(v0, qword_1EAEA9080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_193958E70;
  v4 = v122 + v3 + v1[14];
  *(v122 + v3) = 0;
  *v4 = "IntelligenceFlowTargetUnknown";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_3_1(v122 + v3 + v2);
  *v9 = 1;
  *v8 = "StandardPlannerMakePlan";
  v8[1] = 23;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v122 + v3 + 2 * v2);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_0_0(v11, "StandardPlannerSetup");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_45_2(3 * v2);
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_0_0(v14, "StandardPlannerRun");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v122 + v3 + 4 * v2);
  *v18 = 101;
  v19 = OUTLINED_FUNCTION_0_0(v17, "QueryDecorationServiceSetup");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_45_2(5 * v2);
  *v21 = 102;
  v22 = OUTLINED_FUNCTION_0_0(v20, "QueryDecorationServiceHandle");
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_29(6);
  *v24 = 201;
  *v23 = "PlanOverridesServiceSetup";
  v23[1] = 25;
  v25 = OUTLINED_FUNCTION_1_3(v23);
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_45_2(7 * v2);
  *v27 = 202;
  v28 = OUTLINED_FUNCTION_0_0(v26, "PlanOverridesServiceHandle");
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v122 + v3 + 8 * v2);
  *v30 = 301;
  v31 = OUTLINED_FUNCTION_18_1(v29, "FullPlannerServiceSetup");
  (v7)(v31);
  v32 = OUTLINED_FUNCTION_45_2(9 * v2);
  *v33 = 302;
  v34 = OUTLINED_FUNCTION_0_0(v32, "FullPlannerServiceHandle");
  (v7)(v34);
  v35 = OUTLINED_FUNCTION_3_29(10);
  *v36 = 303;
  v37 = OUTLINED_FUNCTION_18_1(v35, "FullPlannerServiceHttpClientInterfaceCall");
  (v7)(v37);
  v38 = OUTLINED_FUNCTION_3_29(11);
  *v39 = 304;
  v40 = OUTLINED_FUNCTION_18_1(v38, "FullPlannerTokenGeneratorInterfaceGMSCall");
  (v7)(v40);
  v41 = OUTLINED_FUNCTION_3_29(12);
  *v42 = 305;
  v43 = OUTLINED_FUNCTION_0_0(v41, "FullPlannerTokenGeneratorConstrainedDecodingInterfaceGMSCall");
  (v7)(v43);
  v44 = OUTLINED_FUNCTION_3_29(13);
  *v45 = 306;
  v46 = OUTLINED_FUNCTION_18_1(v44, "FullPlannerTokenGeneratorInterfaceLLMCacheManagerLookupCall");
  (v7)(v46);
  v47 = OUTLINED_FUNCTION_3_29(14);
  *v48 = 307;
  v49 = OUTLINED_FUNCTION_18_1(v47, "FullPlannerTokenGeneratorInterfaceLLMCacheManagerInsertCall");
  (v7)(v49);
  v50 = OUTLINED_FUNCTION_45_2(15 * v2);
  *v51 = 308;
  v52 = OUTLINED_FUNCTION_18_1(v50, "FullPlannerTokenGeneratorConstrainedDecodingInterfaceLLMCacheManagerLookupCall");
  (v7)(v52);
  v53 = OUTLINED_FUNCTION_3_1(v122 + v3 + 16 * v2);
  *v54 = 309;
  v55 = OUTLINED_FUNCTION_18_1(v53, "FullPlannerTokenGeneratorConstrainedDecodingInterfaceLLMCacheManagerInsertCall");
  (v7)(v55);
  v56 = OUTLINED_FUNCTION_45_2(17 * v2);
  *v57 = 310;
  v58 = OUTLINED_FUNCTION_0_0(v56, "FullPlannerPromptGeneratorMakePlan");
  (v7)(v58);
  v59 = OUTLINED_FUNCTION_3_29(18);
  *v60 = 311;
  *v59 = "FullPlannerModelInferenceCall";
  v59[1] = 29;
  v61 = OUTLINED_FUNCTION_1_3(v59);
  (v7)(v61);
  v62 = OUTLINED_FUNCTION_3_29(19);
  *v63 = 401;
  v64 = OUTLINED_FUNCTION_18_1(v62, "PlanResolverServiceSetup");
  (v7)(v64);
  v65 = OUTLINED_FUNCTION_3_29(20);
  *v66 = 402;
  *v65 = "PlanResolverServiceHandle";
  v65[1] = 25;
  v67 = OUTLINED_FUNCTION_1_3(v65);
  (v7)(v67);
  v68 = OUTLINED_FUNCTION_3_29(21);
  *v69 = 501;
  v70 = OUTLINED_FUNCTION_0_0(v68, "ResponseGenerationServiceSetup");
  (v7)(v70);
  v71 = OUTLINED_FUNCTION_3_29(22);
  *v72 = 502;
  v73 = OUTLINED_FUNCTION_0_0(v71, "ResponseGenerationServiceHandle");
  (v7)(v73);
  v74 = OUTLINED_FUNCTION_3_29(23);
  *v75 = 503;
  v76 = OUTLINED_FUNCTION_0_0(v74, "ResponseGenerationServiceRequestValidation");
  (v7)(v76);
  v77 = OUTLINED_FUNCTION_3_1(v122 + v3 + 24 * v2);
  *v78 = 504;
  v79 = OUTLINED_FUNCTION_0_0(v77, "ResponseGenerationServiceOverride");
  (v7)(v79);
  v80 = OUTLINED_FUNCTION_3_1(v122 + v3 + 25 * v2);
  *v81 = 505;
  v82 = OUTLINED_FUNCTION_0_0(v80, "ResponseGenerationServiceResponseCatalog");
  (v7)(v82);
  v83 = OUTLINED_FUNCTION_3_29(26);
  *v84 = 506;
  *v83 = "ResponseGenerationServiceModelInference";
  v83[1] = 39;
  v85 = OUTLINED_FUNCTION_1_3(v83);
  (v7)(v85);
  v86 = OUTLINED_FUNCTION_3_29(27);
  *v87 = 507;
  v88 = OUTLINED_FUNCTION_0_0(v86, "ResponseGenerationServiceHallucinationDetection");
  (v7)(v88);
  v89 = OUTLINED_FUNCTION_3_1(v122 + v3 + 28 * v2);
  *v90 = 508;
  v91 = OUTLINED_FUNCTION_0_0(v89, "ResponseGenerationServiceSafetyCheck");
  (v7)(v91);
  v92 = OUTLINED_FUNCTION_3_1(v122 + v3 + 29 * v2);
  *v93 = 601;
  *v92 = "PrescribedPlanGeneratorSetup";
  v92[1] = 28;
  v94 = OUTLINED_FUNCTION_1_3(v92);
  (v7)(v94);
  v95 = OUTLINED_FUNCTION_3_29(30);
  *v96 = 602;
  v97 = OUTLINED_FUNCTION_18_1(v95, "PrescribedPlanGeneratorHandle");
  (v7)(v97);
  v98 = OUTLINED_FUNCTION_45_2(31 * v2);
  *v99 = 1001;
  *v98 = "ExecutorProtocolAcceptActionCreated";
  v98[1] = 35;
  v100 = OUTLINED_FUNCTION_1_3(v98);
  (v7)(v100);
  v101 = OUTLINED_FUNCTION_3_1(v122 + v3 + 32 * v2);
  *v102 = 1002;
  *v101 = "ExecutorProtocolAcceptQueriesCreated";
  v101[1] = 36;
  v103 = OUTLINED_FUNCTION_1_3(v101);
  (v7)(v103);
  v104 = OUTLINED_FUNCTION_45_2(33 * v2);
  *v105 = 1003;
  v106 = OUTLINED_FUNCTION_18_1(v104, "ExecutorProtocolAcceptActionCancelled");
  (v7)(v106);
  v107 = OUTLINED_FUNCTION_3_29(34);
  *v108 = 1004;
  v109 = OUTLINED_FUNCTION_18_1(v107, "ExecutorProtocolAcceptUndoRedoRequest");
  (v7)(v109);
  v110 = OUTLINED_FUNCTION_3_1(v122 + v3 + 35 * v2);
  *v111 = 1005;
  v112 = OUTLINED_FUNCTION_0_0(v110, "ExecutorProtocolAcceptTypeConversionRequest");
  (v7)(v112);
  v113 = OUTLINED_FUNCTION_3_29(36);
  *v114 = 3001;
  *v113 = "FeedbackLearningEvaluateTask";
  v113[1] = 28;
  v115 = OUTLINED_FUNCTION_1_3(v113);
  (v7)(v115);
  v116 = OUTLINED_FUNCTION_3_1(v122 + v3 + 37 * v2);
  *v117 = 3002;
  *v116 = "FeedbackLearningDonateInteraction";
  v116[1] = 33;
  v118 = OUTLINED_FUNCTION_1_3(v116);
  (v7)(v118);
  v119 = OUTLINED_FUNCTION_3_29(38);
  *v120 = 4001;
  *v119 = "SessionCoordinatorAccept";
  *(v119 + 8) = 24;
  *(v119 + 16) = 2;
  (v7)();
  return sub_19393C410();
}

uint64_t sub_1934F17E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE50880 != -1)
  {
    OUTLINED_FUNCTION_4_17();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEA9080);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1934F1878@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowTarget.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1934F18A4()
{
  result = qword_1EAE3BB90;
  if (!qword_1EAE3BB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BB98, &qword_193958EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB90);
  }

  return result;
}

uint64_t sub_1934F1908@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowTarget.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1934F1934()
{
  result = qword_1EAE3BBA0;
  if (!qword_1EAE3BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BBA0);
  }

  return result;
}

uint64_t sub_1934F1988()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934F1994();
}

uint64_t sub_1934F1994()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowTarget.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934F19F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934F19FC();
}

uint64_t sub_1934F1A40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934F1A4C();
}

uint64_t sub_1934F1A4C()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowTarget.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_1934F1AA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_1934F1AD0();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v29 = sub_19393C090();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for IntelligenceFlowTelemetry(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBA8, &qword_193959028);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_4_18();
  sub_1934588A4(v1, v16, v23);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v24, &qword_1EAE3BBA8, &qword_193959028);
  sub_19393C250();
  (*(v3 + 8))(v9, v29);
  sub_19344E6DC(v22, &qword_1EAE3BBA8, &qword_193959028);
  OUTLINED_FUNCTION_27();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void static IntelligenceFlowTelemetry.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBA8, &qword_193959028);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v35, &qword_1EAE3BBA8, &qword_193959028);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_6_19();
    sub_1934F3308(v34, v24, v36);
  }

  OUTLINED_FUNCTION_27();
}

void static IntelligenceFlowTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v38 = v2;
  v39 = v1;
  v37 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBA8, &qword_193959028);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  if (*sub_193457224() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    (*(v14 + 16))(v20, v22, v12);
    v23 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v23, v24);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v25, v26, v27);
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v14 + 8))(v22, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_6_19();
      v29 = v38;
      sub_1934F3308(v11, v38, v30);
      v31 = type metadata accessor for IntelligenceFlowTelemetry(0);
      v32 = *(v31 + 20);
      sub_19344E6DC(v29 + v32, &qword_1EAE3A9E8, &qword_19394F800);
      v33 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v33);
      (*(v34 + 16))(v29 + v32, v37, v33);
      __swift_storeEnumTagSinglePayload(v29 + v32, 0, 1, v33);
      v35 = *(v31 + 24);
      sub_19344E6DC(v29 + v35, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v39, v29 + v35);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v28 = v5;
    *(v28 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934F2164()
{
  OUTLINED_FUNCTION_26();
  v103 = v1;
  v104 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB8, &unk_193959130);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v95 - v10;
  v11 = OUTLINED_FUNCTION_22_2();
  v97 = type metadata accessor for IntelligenceFlowTelemetry.Objective(v11);
  v12 = OUTLINED_FUNCTION_4_1(v97);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v96 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v95 - v21;
  OUTLINED_FUNCTION_22_2();
  v102 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v100 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  v99 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v95 - v32;
  v34 = type metadata accessor for MonotonicTimestamp();
  v35 = OUTLINED_FUNCTION_4_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_1();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_47(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v95 - v45;
  v47 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x617461646174656DLL);
  OUTLINED_FUNCTION_5_1();
  v51 = v50 - v49;
  v52 = v5 == 0x617461646174656DLL && v3 == 0xE800000000000000;
  if (v52 || (v53 = v3, (sub_19393CA30() & 1) != 0))
  {
    v54 = type metadata accessor for IntelligenceFlowTelemetry(0);
    v55 = OUTLINED_FUNCTION_21_11(*(v54 + 28));
    sub_193448758(v55, v46, v56, v57);
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
    {
      v58 = &qword_1EAE3BBB0;
      v59 = &qword_193959030;
      v60 = v46;
LABEL_18:
      sub_19344E6DC(v60, v58, v59);
      v68 = v103;
      *v103 = 0u;
      *(v68 + 1) = 0u;
      goto LABEL_19;
    }

    sub_1934F3308(v46, v51, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
    sub_193494798(v47, &off_1F07C3A40, v103);
    v61 = type metadata accessor for IntelligenceFlowTelemetry.Metadata;
    v62 = v51;
    goto LABEL_9;
  }

  v63 = v5 == 0xD000000000000012 && 0x8000000193A17A30 == v3;
  if (v63 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    v64 = type metadata accessor for IntelligenceFlowTelemetry(0);
    v65 = OUTLINED_FUNCTION_21_11(*(v64 + 32));
    sub_193448758(v65, v33, v66, v67);
    if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
    {
      sub_1934F3308(v33, v40, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v34, &off_1F07BD958, v103);
      v61 = type metadata accessor for MonotonicTimestamp;
      v62 = v40;
LABEL_9:
      sub_1934574A0(v62, v61);
      goto LABEL_19;
    }

    v58 = &qword_1EAE3B498;
    v59 = &unk_193959120;
LABEL_17:
    v60 = v33;
    goto LABEL_18;
  }

  v69 = v5 == OUTLINED_FUNCTION_17_12() && v3 == 0xE900000000000064;
  if (v69 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    v70 = type metadata accessor for IntelligenceFlowTelemetry(0);
    v71 = OUTLINED_FUNCTION_21_11(*(v70 + 36));
    v33 = v101;
    sub_193448758(v71, v101, v72, v73);
    v74 = v102;
    if (__swift_getEnumTagSinglePayload(v33, 1, v102) != 1)
    {
      v76 = v99;
      v75 = v100;
      (*(v100 + 32))(v99, v33, v74);
      sub_1934948FC();
      (*(v75 + 8))(v76, v74);
      goto LABEL_19;
    }

    v58 = &qword_1EAE3AA88;
    v59 = &qword_19394F9C0;
    goto LABEL_17;
  }

  v77 = v5 == 0x76697463656A626FLL && v3 == 0xE900000000000065;
  if (v77 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    v78 = type metadata accessor for IntelligenceFlowTelemetry(0);
    v79 = OUTLINED_FUNCTION_21_11(*(v78 + 40));
    v80 = v98;
    sub_193448758(v79, v98, v81, v82);
    v83 = v97;
    if (__swift_getEnumTagSinglePayload(v80, 1, v97) != 1)
    {
      v85 = v80;
      v86 = v96;
      sub_1934F3308(v85, v96, type metadata accessor for IntelligenceFlowTelemetry.Objective);
      sub_193494798(v83, &off_1F07C3A50, v103);
      OUTLINED_FUNCTION_5_25();
      sub_1934574A0(v86, v87);
      goto LABEL_19;
    }

    sub_19344E6DC(v80, &qword_1EAE3BBB8, &unk_193959130);
  }

  else
  {
    v88 = v5 == 0x746567726174 && v3 == 0xE600000000000000;
    if (!v88 && (OUTLINED_FUNCTION_12_17() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_11();
      swift_allocError();
      v92 = v91;
      *v91 = v5;
      v91[1] = v53;
      v91[5] = type metadata accessor for IntelligenceFlowTelemetry(0);
      __swift_allocate_boxed_opaque_existential_1Tm(v92 + 2);
      OUTLINED_FUNCTION_4_18();
      sub_1934588A4(v104, v93, v94);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_19;
    }

    v89 = (v104 + *(type metadata accessor for IntelligenceFlowTelemetry(0) + 44));
    if ((*(v89 + 9) & 1) == 0)
    {
      v90 = *(v89 + 8);
      v105 = *v89;
      v106 = v90 & 1;
      sub_1934948FC();
      goto LABEL_19;
    }
  }

  v84 = v103;
  *v103 = 0u;
  *(v84 + 1) = 0u;
LABEL_19:
  OUTLINED_FUNCTION_27();
}

void sub_1934F2870()
{
  OUTLINED_FUNCTION_26();
  v49 = v2;
  v50 = v1;
  v51 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for IntelligenceFlowIdentifiers();
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - v24;
  v26 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_1();
  v34 = v33 - v32;
  v36 = v6 == v35 && v4 == 0xE500000000000000;
  if (v36 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v51, v25, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
    {
      (*(v28 + 32))(v34, v25, v26);
      sub_1934948FC();
      (*(v28 + 8))(v34, v26);
      goto LABEL_10;
    }

    v37 = &qword_1EAE3AA88;
    v38 = &qword_19394F9C0;
    v39 = v25;
  }

  else
  {
    v41 = v6 == 0xD000000000000013 && 0x8000000193A18C60 == v4;
    if (!v41 && (sub_19393CA30() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_11();
      swift_allocError();
      v47 = v46;
      *v46 = v6;
      v46[1] = v4;
      v46[5] = type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v47 + 2);
      sub_1934588A4(v51, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_10;
    }

    v42 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
    sub_193448758(v51 + *(v42 + 20), v12, &qword_1EAE3B948, &qword_193957C10);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_1934F3308(v12, v19, type metadata accessor for IntelligenceFlowIdentifiers);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v43, v44, v45);
      sub_1934574A0(v19, type metadata accessor for IntelligenceFlowIdentifiers);
      goto LABEL_10;
    }

    v37 = &qword_1EAE3B948;
    v38 = &qword_193957C10;
    v39 = v12;
  }

  sub_19344E6DC(v39, v37, v38);
  v40 = v49;
  *v49 = 0u;
  v40[1] = 0u;
LABEL_10:
  OUTLINED_FUNCTION_27();
}

void sub_1934F2C3C()
{
  OUTLINED_FUNCTION_26();
  v95 = v2;
  v96 = v1;
  v98 = v0;
  v4 = v3;
  v6 = v5;
  v90 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  v7 = OUTLINED_FUNCTION_4_1(v90);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v89 = (v11 - v10);
  v12 = OUTLINED_FUNCTION_22_2();
  v93 = type metadata accessor for ResponseGeneration(v12);
  v13 = OUTLINED_FUNCTION_4_1(v93);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v92 = (v17 - v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19 = type metadata accessor for PlanGeneration(v18);
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v25 = v24 - v23;
  v26 = type metadata accessor for IntelligenceFlowPlatformPnR(0);
  v27 = OUTLINED_FUNCTION_4_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_1();
  v32 = v31 - v30;
  v97 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  v33 = OUTLINED_FUNCTION_4_1(v97);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v91 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v94 = &v89 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v89 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v89 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v89 - v46;
  v48 = v6 == 7499376 && v4 == 0xE300000000000000;
  if (!v48 && (OUTLINED_FUNCTION_10_17() & 1) == 0)
  {
    v59 = v6 == 0xD000000000000018 && 0x8000000193A18C80 == v4;
    if (v59 || (OUTLINED_FUNCTION_10_17() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_27();
      v60 = v98;
      sub_1934588A4(v98, v45, v61);
      v62 = v97;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v99 = *v45;
        sub_193494798(&type metadata for ImpendingRequestDetected, &off_1F07C57F0, v95);
        goto LABEL_18;
      }
    }

    else
    {
      v63 = v6 == 0x656E65476E616C70 && v4 == 0xEE006E6F69746172;
      if (v63 || (OUTLINED_FUNCTION_10_17() & 1) != 0)
      {
        OUTLINED_FUNCTION_0_27();
        v64 = v98;
        sub_1934588A4(v98, v42, v65);
        v66 = v97;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v67 = OUTLINED_FUNCTION_19_3();
          sub_1934F3308(v67, v68, v69);
          sub_193494798(v19, &off_1F07C5AB0, v95);
          v57 = type metadata accessor for PlanGeneration;
          v58 = v25;
        }

        else
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          v70 = swift_allocError();
          OUTLINED_FUNCTION_13_11(v70, v71);
          *(v72 + 40) = v66;
          __swift_allocate_boxed_opaque_existential_1Tm((v72 + 16));
          OUTLINED_FUNCTION_0_27();
          sub_1934588A4(v64, v73, v74);
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          OUTLINED_FUNCTION_5_25();
          v58 = v42;
        }

        goto LABEL_10;
      }

      v75 = v6 == 0xD000000000000012 && 0x8000000193A18CA0 == v4;
      if (v75 || (OUTLINED_FUNCTION_10_17() & 1) != 0)
      {
        OUTLINED_FUNCTION_0_27();
        v60 = v98;
        v45 = v94;
        sub_1934588A4(v98, v94, v76);
        v62 = v97;
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v47 = v92;
          sub_1934F3308(v45, v92, type metadata accessor for ResponseGeneration);
          sub_193494798(v93, &off_1F07C5800, v95);
          v56 = type metadata accessor for ResponseGeneration;
          goto LABEL_8;
        }
      }

      else
      {
        v77 = v6 == 0xD000000000000010 && 0x8000000193A18CC0 == v4;
        v62 = v97;
        v60 = v98;
        if (!v77 && (OUTLINED_FUNCTION_10_17() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          v84 = swift_allocError();
          OUTLINED_FUNCTION_13_11(v84, v85);
          *(v86 + 40) = v62;
          __swift_allocate_boxed_opaque_existential_1Tm((v86 + 16));
          OUTLINED_FUNCTION_0_27();
          sub_1934588A4(v60, v87, v88);
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          goto LABEL_18;
        }

        OUTLINED_FUNCTION_0_27();
        v45 = v91;
        sub_1934588A4(v60, v91, v78);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v47 = v89;
          sub_1934F3308(v45, v89, type metadata accessor for IntelligenceFlowFeedbackLearning);
          sub_193494798(v90, &off_1F07C5BB0, v95);
          v56 = type metadata accessor for IntelligenceFlowFeedbackLearning;
          goto LABEL_8;
        }
      }
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v79 = swift_allocError();
    OUTLINED_FUNCTION_13_11(v79, v80);
    *(v81 + 40) = v62;
    __swift_allocate_boxed_opaque_existential_1Tm((v81 + 16));
    OUTLINED_FUNCTION_0_27();
    sub_1934588A4(v60, v82, v83);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();

    OUTLINED_FUNCTION_5_25();
    v58 = v45;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_27();
  v49 = v98;
  sub_1934588A4(v98, v47, v50);
  v51 = v97;
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1934F3308(v47, v32, type metadata accessor for IntelligenceFlowPlatformPnR);
    sub_193494798(v26, &off_1F07C57A0, v95);
    v57 = type metadata accessor for IntelligenceFlowPlatformPnR;
    v58 = v32;
    goto LABEL_10;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v53 = v52;
  *v52 = v6;
  v52[1] = v4;
  v52[5] = v51;
  __swift_allocate_boxed_opaque_existential_1Tm(v52 + 2);
  OUTLINED_FUNCTION_0_27();
  sub_1934588A4(v49, v54, v55);
  *(v53 + 48) = 1;
  swift_willThrow();

  v56 = type metadata accessor for IntelligenceFlowTelemetry.Objective;
LABEL_8:
  v57 = v56;
  v58 = v47;
LABEL_10:
  sub_1934574A0(v58, v57);
LABEL_18:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934F3308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

void static IntelligenceFlowTelemetry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v139 = v1;
  v3 = v2;
  v127 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  v4 = OUTLINED_FUNCTION_4_1(v127);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v122 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB8, &unk_193959130);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_53_1();
  v123 = v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBC0, &qword_1939590A0);
  OUTLINED_FUNCTION_4_1(v125);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  v126 = v17;
  OUTLINED_FUNCTION_22_2();
  v133 = sub_19393BE60();
  v18 = OUTLINED_FUNCTION_0(v133);
  v129 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v124 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_53_1();
  v128 = v28;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v131);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_53_1();
  v132 = v32;
  OUTLINED_FUNCTION_22_2();
  v136 = type metadata accessor for MonotonicTimestamp();
  v33 = OUTLINED_FUNCTION_4_1(v136);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_1();
  v130 = v37 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_53_1();
  v134 = v42;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v135);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v45);
  v46 = OUTLINED_FUNCTION_15_9();
  v47 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(v46);
  v48 = OUTLINED_FUNCTION_4_1(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_1();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_47(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v121 - v58;
  v60 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBC8, &qword_1939590A8) - 8);
  v61 = *(*v60 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v121 - v63;
  v137 = type metadata accessor for IntelligenceFlowTelemetry(0);
  v138 = v3;
  v65 = *(v137 + 28);
  v66 = v60[14];
  sub_1934486F8(v3 + v65, v64, &qword_1EAE3BBB0, &qword_193959030);
  sub_1934486F8(v139 + v65, &v64[v66], &qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_31(v64);
  if (v67)
  {
    OUTLINED_FUNCTION_31(&v64[v66]);
    if (v67)
    {
      sub_19344E6DC(v64, &qword_1EAE3BBB0, &qword_193959030);
      goto LABEL_11;
    }

LABEL_9:
    v68 = &qword_1EAE3BBC8;
    v69 = &qword_1939590A8;
    v70 = v64;
LABEL_31:
    sub_19344E6DC(v70, v68, v69);
    goto LABEL_32;
  }

  sub_1934486F8(v64, v59, &qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_31(&v64[v66]);
  if (v67)
  {
    sub_1934574F8(v59, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
    goto LABEL_9;
  }

  sub_1934F4874(&v64[v66], v53, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
  OUTLINED_FUNCTION_8_26();
  sub_1934F4CB8(v71, v72);
  v73 = sub_19393C550();
  sub_1934574F8(v53, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
  sub_1934574F8(v59, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
  sub_19344E6DC(v64, &qword_1EAE3BBB0, &qword_193959030);
  if ((v73 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  v75 = v137;
  v74 = v138;
  v76 = *(v137 + 32);
  v77 = *(v135 + 48);
  sub_1934486F8(v138 + v76, v0, &qword_1EAE3B498, &unk_193959120);
  v78 = v139;
  sub_1934486F8(v139 + v76, v0 + v77, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_6_3(v0, 1, v136);
  if (v67)
  {
    OUTLINED_FUNCTION_31(v0 + v77);
    if (v67)
    {
      sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_21;
    }

LABEL_19:
    v68 = &qword_1EAE3B958;
    v69 = &qword_193957B50;
LABEL_30:
    v70 = v0;
    goto LABEL_31;
  }

  v79 = v134;
  sub_1934486F8(v0, v134, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(v0 + v77);
  if (v80)
  {
    sub_1934574F8(v79, type metadata accessor for MonotonicTimestamp);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_11_17();
  v81 = v0 + v77;
  v82 = v130;
  sub_1934F4874(v81, v130, v83);
  OUTLINED_FUNCTION_10_18();
  sub_1934F4CB8(v84, v85);
  OUTLINED_FUNCTION_22();
  v86 = sub_19393C550();
  sub_1934574F8(v82, &unk_193959120);
  sub_1934574F8(v79, &unk_193959120);
  sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  if ((v86 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  v87 = v75[9];
  v0 = v132;
  v88 = *(v131 + 48);
  OUTLINED_FUNCTION_25_6(v74 + v87, v132);
  OUTLINED_FUNCTION_25_6(v78 + v87, v0 + v88);
  v89 = v133;
  OUTLINED_FUNCTION_6_3(v0, 1, v133);
  if (v67)
  {
    OUTLINED_FUNCTION_6_3(v0 + v88, 1, v89);
    if (v67)
    {
      sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v90 = v128;
  sub_1934486F8(v0, v128, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v0 + v88, 1, v89);
  if (v91)
  {
    (*(v129 + 8))(v90, v89);
LABEL_29:
    v68 = &qword_1EAE3B4E8;
    v69 = &unk_193952CF0;
    goto LABEL_30;
  }

  v92 = v129;
  v93 = v0 + v88;
  v94 = v124;
  (*(v129 + 32))(v124, v93, v89);
  OUTLINED_FUNCTION_9_33();
  sub_1934F4CB8(v95, v96);
  v97 = sub_19393C550();
  v98 = *(v92 + 8);
  v98(v94, v89);
  v98(v90, v89);
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v97 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v99 = v75[10];
  v100 = v126;
  v101 = *(v125 + 48);
  OUTLINED_FUNCTION_25_6(v74 + v99, v126);
  v102 = v78 + v99;
  v103 = v100;
  OUTLINED_FUNCTION_25_6(v102, v100 + v101);
  OUTLINED_FUNCTION_6_3(v100, 1, v127);
  if (!v67)
  {
    v104 = v100;
    v105 = v123;
    sub_1934486F8(v104, v123, &qword_1EAE3BBB8, &unk_193959130);
    OUTLINED_FUNCTION_31(v103 + v101);
    if (!v106)
    {
      v108 = v103 + v101;
      v109 = v122;
      sub_1934F4874(v108, v122, type metadata accessor for IntelligenceFlowTelemetry.Objective);
      OUTLINED_FUNCTION_6_20();
      sub_1934F4CB8(v110, v111);
      v112 = sub_19393C550();
      sub_1934574F8(v109, type metadata accessor for IntelligenceFlowTelemetry.Objective);
      sub_1934574F8(v105, type metadata accessor for IntelligenceFlowTelemetry.Objective);
      sub_19344E6DC(v103, &qword_1EAE3BBB8, &unk_193959130);
      if ((v112 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }

    OUTLINED_FUNCTION_7_20();
    sub_1934574F8(v105, v107);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_31(v100 + v101);
  if (!v67)
  {
LABEL_42:
    v68 = &qword_1EAE3BBC0;
    v69 = &qword_1939590A0;
    v70 = v103;
    goto LABEL_31;
  }

  sub_19344E6DC(v100, &qword_1EAE3BBB8, &unk_193959130);
LABEL_44:
  v113 = v75[11];
  v114 = (v74 + v113);
  v115 = *(v74 + v113 + 9);
  v116 = (v78 + v113);
  v117 = *(v78 + v113 + 9);
  if ((v115 & 1) == 0)
  {
    v118 = *v116;
    v119 = *(v116 + 8);
    v120 = *(v114 + 8);
    v142 = *v114;
    v143 = v120;
    if ((v117 & 1) == 0)
    {
      v140 = v118;
      v141 = v119 & 1;
      sub_1934F1934();
      sub_19393C550();
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowTelemetry.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v77 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  v2 = OUTLINED_FUNCTION_4_1(v77);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v72 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB8, &unk_193959130);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v76 = v11;
  OUTLINED_FUNCTION_22_2();
  v75 = sub_19393BE60();
  v12 = OUTLINED_FUNCTION_0(v75);
  v71 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v70 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  v73 = v22;
  OUTLINED_FUNCTION_22_2();
  v74 = type metadata accessor for MonotonicTimestamp();
  v23 = OUTLINED_FUNCTION_4_1(v74);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v69 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_15_9();
  v33 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(v32);
  v34 = OUTLINED_FUNCTION_4_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_1();
  v39 = (v38 - v37);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_47(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v68 - v44;
  v46 = type metadata accessor for IntelligenceFlowTelemetry(0);
  sub_1934486F8(v0 + v46[7], v45, &qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_6_3(v45, 1, v33);
  if (v47)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1934F4874(v45, v39, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_8_26();
    sub_1934F4CB8(v48, v49);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934574F8(v39, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
  }

  v50 = v0;
  sub_1934486F8(v0 + v46[8], v1, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_6_3(v1, 1, v74);
  if (v47)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_11_17();
    v51 = v69;
    sub_1934F4874(v1, v69, v52);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_10_18();
    sub_1934F4CB8(v53, v54);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934574F8(v51, v39);
  }

  v55 = v77;
  v56 = v75;
  v57 = v73;
  sub_1934486F8(v50 + v46[9], v73, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v57, 1, v56);
  if (v47)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v59 = v70;
    v58 = v71;
    (*(v71 + 32))(v70, v57, v56);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_9_33();
    sub_1934F4CB8(v60, v61);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    (*(v58 + 8))(v59, v56);
  }

  v62 = v76;
  sub_1934486F8(v50 + v46[10], v76, &qword_1EAE3BBB8, &unk_193959130);
  OUTLINED_FUNCTION_6_3(v62, 1, v55);
  if (v47)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v63 = v72;
    sub_1934F4874(v62, v72, type metadata accessor for IntelligenceFlowTelemetry.Objective);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_20();
    sub_1934F4CB8(v64, v65);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934574F8(v63, type metadata accessor for IntelligenceFlowTelemetry.Objective);
  }

  v66 = (v50 + v46[11]);
  if (*(v66 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v67 = *(v66 + 8);
    v78 = *v66;
    v79 = v67 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_1934F42AC();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_116();
}

unint64_t sub_1934F42AC()
{
  result = qword_1EAE3BBF0;
  if (!qword_1EAE3BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BBF0);
  }

  return result;
}

void static IntelligenceFlowTelemetry.Objective.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v91 = v0;
  v92 = v1;
  v2 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  v3 = OUTLINED_FUNCTION_47(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v90 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v84 - v9;
  v10 = OUTLINED_FUNCTION_22_2();
  v11 = type metadata accessor for ResponseGeneration(v10);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v88 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v84 - v18;
  v19 = OUTLINED_FUNCTION_22_2();
  v20 = type metadata accessor for PlanGeneration(v19);
  v21 = OUTLINED_FUNCTION_47(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v86 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v85 = &v84 - v27;
  v28 = OUTLINED_FUNCTION_22_2();
  v29 = type metadata accessor for IntelligenceFlowPlatformPnR(v28);
  v30 = OUTLINED_FUNCTION_47(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v84 - v37;
  v39 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  v40 = OUTLINED_FUNCTION_4_1(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6();
  v45 = v43 - v44;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v84 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v84 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v84 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v84 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBF8, &qword_1939590B0);
  OUTLINED_FUNCTION_47(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_3_0();
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v84 - v63;
  v65 = *(v62 + 56);
  sub_1934595A0(v91, &v84 - v63);
  sub_1934595A0(v92, &v64[v65]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1934595A0(v64, v55);
      if (OUTLINED_FUNCTION_19_18() != 1)
      {
        goto LABEL_19;
      }

      v82 = v64[v65];
      v94 = *v55;
      v93 = v82;
      static ImpendingRequestDetected.== infix(_:_:)(&v94, &v93);
      goto LABEL_14;
    case 2u:
      sub_1934595A0(v64, v52);
      if (OUTLINED_FUNCTION_19_18() == 2)
      {
        v68 = type metadata accessor for PlanGeneration;
        v69 = v85;
        sub_1934F4874(v52, v85, type metadata accessor for PlanGeneration);
        v70 = v86;
        OUTLINED_FUNCTION_22();
        sub_1934F4874(v74, v75, v76);
        static PlanGeneration.== infix(_:_:)();
        goto LABEL_10;
      }

      v66 = type metadata accessor for PlanGeneration;
      v67 = v52;
      goto LABEL_18;
    case 3u:
      sub_1934595A0(v64, v49);
      if (OUTLINED_FUNCTION_19_18() == 3)
      {
        v68 = type metadata accessor for ResponseGeneration;
        v69 = v87;
        sub_1934F4874(v49, v87, type metadata accessor for ResponseGeneration);
        v70 = v88;
        OUTLINED_FUNCTION_22();
        sub_1934F4874(v77, v78, v79);
        static ResponseGeneration.== infix(_:_:)();
        goto LABEL_10;
      }

      v66 = type metadata accessor for ResponseGeneration;
      v67 = v49;
      goto LABEL_18;
    case 4u:
      sub_1934595A0(v64, v45);
      if (OUTLINED_FUNCTION_19_18() != 4)
      {
        v66 = type metadata accessor for IntelligenceFlowFeedbackLearning;
        v67 = v45;
        goto LABEL_18;
      }

      v68 = type metadata accessor for IntelligenceFlowFeedbackLearning;
      v69 = v89;
      sub_1934F4874(v45, v89, type metadata accessor for IntelligenceFlowFeedbackLearning);
      v70 = v90;
      OUTLINED_FUNCTION_22();
      sub_1934F4874(v71, v72, v73);
      static IntelligenceFlowFeedbackLearning.== infix(_:_:)();
LABEL_10:
      sub_1934574F8(v70, v68);
      v80 = v69;
      v81 = v68;
      goto LABEL_11;
    default:
      sub_1934595A0(v64, v57);
      if (OUTLINED_FUNCTION_19_18())
      {
        v66 = type metadata accessor for IntelligenceFlowPlatformPnR;
        v67 = v57;
LABEL_18:
        sub_1934574F8(v67, v66);
LABEL_19:
        sub_19344E6DC(v64, &qword_1EAE3BBF8, &qword_1939590B0);
      }

      else
      {
        sub_1934F4874(v57, v38, type metadata accessor for IntelligenceFlowPlatformPnR);
        sub_1934F4874(&v64[v65], v35, type metadata accessor for IntelligenceFlowPlatformPnR);
        static IntelligenceFlowPlatformPnR.== infix(_:_:)();
        sub_1934574F8(v35, type metadata accessor for IntelligenceFlowPlatformPnR);
        v80 = v38;
        v81 = type metadata accessor for IntelligenceFlowPlatformPnR;
LABEL_11:
        sub_1934574F8(v80, v81);
LABEL_14:
        OUTLINED_FUNCTION_7_20();
        sub_1934574F8(v64, v83);
      }

      OUTLINED_FUNCTION_116();
      return;
  }
}

uint64_t sub_1934F4874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void IntelligenceFlowTelemetry.Objective.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v0;
  v37 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  v3 = OUTLINED_FUNCTION_4_1(v37);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for ResponseGeneration(0);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for PlanGeneration(0);
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v20 = OUTLINED_FUNCTION_15_9();
  v21 = type metadata accessor for IntelligenceFlowPlatformPnR(v20);
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v27 = v26 - v25;
  v28 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  v29 = OUTLINED_FUNCTION_4_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_1();
  v34 = (v33 - v32);
  sub_1934595A0(v2, v33 - v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = *v34;
      sub_1934F4C64();
      sub_19393C540();
      goto LABEL_7;
    case 2u:
      v35 = type metadata accessor for PlanGeneration;
      sub_1934F4874(v34, v1, type metadata accessor for PlanGeneration);
      sub_1934F4CB8(&qword_1EAE3BC10, type metadata accessor for PlanGeneration);
      sub_19393C540();
      v36 = v1;
      goto LABEL_6;
    case 3u:
      v35 = type metadata accessor for ResponseGeneration;
      sub_1934F4874(v34, v15, type metadata accessor for ResponseGeneration);
      sub_1934F4CB8(&qword_1EAE3BC08, type metadata accessor for ResponseGeneration);
      sub_19393C540();
      v36 = v15;
      goto LABEL_6;
    case 4u:
      v35 = type metadata accessor for IntelligenceFlowFeedbackLearning;
      sub_1934F4874(v34, v8, type metadata accessor for IntelligenceFlowFeedbackLearning);
      sub_1934F4CB8(&qword_1EAE3BC00, type metadata accessor for IntelligenceFlowFeedbackLearning);
      sub_19393C540();
      v36 = v8;
      goto LABEL_6;
    default:
      v35 = type metadata accessor for IntelligenceFlowPlatformPnR;
      sub_1934F4874(v34, v27, type metadata accessor for IntelligenceFlowPlatformPnR);
      sub_1934F4CB8(&qword_1EAE3BC20, type metadata accessor for IntelligenceFlowPlatformPnR);
      sub_19393C540();
      v36 = v27;
LABEL_6:
      sub_1934574F8(v36, v35);
LABEL_7:
      OUTLINED_FUNCTION_116();
      return;
  }
}

unint64_t sub_1934F4C64()
{
  result = qword_1EAE3BC18;
  if (!qword_1EAE3BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BC18);
  }

  return result;
}

uint64_t sub_1934F4CB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1934F4D00()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9098);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  v8 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v8, xmmword_19394FBD0);
  *v0 = "metadata";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v14 = 2;
  *v13 = "monotonicTimestamp";
  v13[1] = 18;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v17 = 3;
  *v16 = "contextId";
  v16[1] = 9;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v20 = 4;
  *v19 = "objective";
  v19[1] = 9;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 4 * v7);
  *v23 = 5;
  *v22 = "target";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}