void static CloudAssets_SimultaneousDownloadableAssets.== infix(_:_:)()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for CloudAssets_Credential(0);
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
  OUTLINED_FUNCTION_48(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86840, &qword_2437ED9B0);
  OUTLINED_FUNCTION_1_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  if ((sub_2437C9BF4(*v1, *v0) & 1) == 0 || (MEMORY[0x245D3FA00](v1[1], v1[2], v0[1], v0[2]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v28 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  v16 = *(v28 + 32);
  v17 = *(v10 + 48);
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_145();
  v18 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_53(v18, v19, v2);
  if (v20)
  {
    OUTLINED_FUNCTION_53(&v15[v17], 1, v2);
    if (v20)
    {
      sub_2437B47C4(v15, &qword_27ED867E0, &qword_2437ED988);
      goto LABEL_13;
    }

LABEL_11:
    sub_2437B47C4(v15, &qword_27ED86840, &qword_2437ED9B0);
LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  sub_2437C45F0();
  OUTLINED_FUNCTION_53(&v15[v17], 1, v2);
  if (v20)
  {
    OUTLINED_FUNCTION_23_0();
    sub_2437C2A14();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  sub_2437C27F4();
  OUTLINED_FUNCTION_120();
  static CloudAssets_Credential.== infix(_:_:)();
  v22 = v21;
  sub_2437C2A14();
  sub_2437C2A14();
  sub_2437B47C4(v15, &qword_27ED867E0, &qword_2437ED988);
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if ((MEMORY[0x245D3FA00](v1[3], v1[4], v0[3], v0[4]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = *(v28 + 28);
  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  sub_2437C98AC(v24, v25);
  v26 = OUTLINED_FUNCTION_39();
LABEL_16:
  OUTLINED_FUNCTION_134(v26);
  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437C7C20()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7_3();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C7C84()
{
  OUTLINED_FUNCTION_7_3();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C7CE0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7_3();
  sub_2437C98AC(v0, v1);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

uint64_t sub_2437C7D5C()
{
  v0 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v0, qword_27ED8BF08);
  v1 = OUTLINED_FUNCTION_22();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2437ED960;
  v7 = v6 + v5 + v3[14];
  *(v6 + v5) = 1;
  *v7 = "events";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0(v9);
  (*(v10 + 104))(v7, v8);
  return sub_2437EB5B4();
}

uint64_t CloudAssets_Signal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for CloudAssets_Signal.Event(0);
      OUTLINED_FUNCTION_2_4();
      sub_2437C98AC(&qword_27ED86850, v3);
      OUTLINED_FUNCTION_37();
      sub_2437EB4D4();
    }
  }

  return result;
}

uint64_t CloudAssets_Signal.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  if (!*(*v0 + 16) || (type metadata accessor for CloudAssets_Signal.Event(0), OUTLINED_FUNCTION_2_4(), sub_2437C98AC(v2, v3), OUTLINED_FUNCTION_56(), result = sub_2437EB584(), !v1))
  {
    v5 = *(type metadata accessor for CloudAssets_Signal(0) + 20);
    return OUTLINED_FUNCTION_27_0();
  }

  return result;
}

uint64_t static CloudAssets_Signal.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  if ((sub_2437CB824(*v0, *v1) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for CloudAssets_Signal(0) + 20);
  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  sub_2437C98AC(v3, v4);
  return OUTLINED_FUNCTION_39() & 1;
}

uint64_t sub_2437C8160()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_6_2();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C81C4()
{
  OUTLINED_FUNCTION_6_2();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C8220()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_6_2();
  sub_2437C98AC(v0, v1);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C8284()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v1, qword_27ED8BF20);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_65();
  *(v5 + 16) = xmmword_2437ED950;
  v6 = (v5 + v0);
  v7 = v5 + v0 + dword_27ED8BF58;
  *v6 = 0;
  *v7 = "STORAGE_CONTAINER_UPLOAD_START";
  *(v7 + 8) = 30;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_88();
  v11(v12);
  v13 = v6 + v4 + dword_27ED8BF58;
  *(v6 + v4) = 1;
  v14 = OUTLINED_FUNCTION_102(v13, "ALL_UPLOADS_FINISH");
  (v11)(v14, v8, v9);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t sub_2437C840C()
{
  result = MEMORY[0x245D3FDF0](0x746E6576452ELL, 0xE600000000000000);
  qword_27ED8BE80 = 0xD000000000000012;
  *algn_27ED8BE88 = 0x80000002437F30E0;
  return result;
}

uint64_t sub_2437C8498(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return v5;
}

void sub_2437C84EC()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v1, qword_27ED8BF38);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_41(v5, xmmword_2437ED950);
  *v0 = "type";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_88();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_19_2();
  *v11 = "container_index";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v9();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t CloudAssets_Signal.Event.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_61();
      sub_2437EB4B4();
    }

    else if (result == 1)
    {
      sub_2437CBAC0();
      OUTLINED_FUNCTION_37();
      sub_2437EB494();
    }
  }

  return result;
}

uint64_t CloudAssets_Signal.Event.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  if (!*v0 || (v5 = *v0, v6 = *(v2 + 8), sub_2437CBAC0(), OUTLINED_FUNCTION_56(), result = sub_2437EB544(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_56(), OUTLINED_FUNCTION_76(), result = sub_2437EB564(), !v1))
    {
      v4 = *(type metadata accessor for CloudAssets_Signal.Event(0) + 24);
      return OUTLINED_FUNCTION_27_0();
    }
  }

  return result;
}

uint64_t static CloudAssets_Signal.Event.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(v1 + 16) == *(v0 + 16))
  {
    v6 = *(type metadata accessor for CloudAssets_Signal.Event(0) + 24);
    sub_2437EB424();
    OUTLINED_FUNCTION_3_4();
    sub_2437C98AC(v7, v8);
    return OUTLINED_FUNCTION_39() & 1;
  }

  return 0;
}

uint64_t sub_2437C88F4()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_2_4();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C8958()
{
  OUTLINED_FUNCTION_2_4();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C89B4()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_2_4();
  sub_2437C98AC(v0, v1);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C8A30()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v1, &qword_27ED8BF50);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_81(v5, xmmword_2437ED940);
  v7 = v0 + v6;
  OUTLINED_FUNCTION_96();
  *v7 = "asset";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_94();
  v11();
  v12 = OUTLINED_FUNCTION_19_2();
  *v12 = "credential";
  v12[1] = 10;
  v13 = OUTLINED_FUNCTION_79(v12);
  (v11)(v13);
  v14 = OUTLINED_FUNCTION_22_1();
  *v14 = "type";
  *(v14 + 1) = 4;
  v15 = OUTLINED_FUNCTION_79(v14);
  (v11)(v15);
  v16 = (v0 + 3 * v4);
  v17 = v16 + qword_27ED8BF88;
  *v16 = 4;
  *v17 = "applicationID";
  *(v17 + 1) = 13;
  v17[16] = 2;
  OUTLINED_FUNCTION_94();
  v11();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t sub_2437C8BF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2437EB5C4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void CloudAssets_AssetStreamHandle.decodeMessage<A>(decoder:)()
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
        v3 = *(type metadata accessor for CloudAssets_AssetStreamHandle(0) + 28);
        type metadata accessor for CloudAssets_Asset(0);
        OUTLINED_FUNCTION_0_5();
        v5 = &qword_27ED86838;
        goto LABEL_8;
      case 2:
        v6 = *(type metadata accessor for CloudAssets_AssetStreamHandle(0) + 32);
        type metadata accessor for CloudAssets_Credential(0);
        OUTLINED_FUNCTION_1_6();
        v5 = &qword_27ED868F0;
LABEL_8:
        sub_2437C98AC(v5, v4);
        OUTLINED_FUNCTION_37();
        sub_2437EB4E4();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_61();
        sub_2437EB4C4();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_15_1();
}

void CloudAssets_AssetStreamHandle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_76();
  sub_2437C8E90();
  if (!v0)
  {
    OUTLINED_FUNCTION_34_0();
    sub_2437C8FB4();
    v2 = *v1;
    v3 = v1[1];
    OUTLINED_FUNCTION_20_1();
    if (v4)
    {
      OUTLINED_FUNCTION_13_3();
      sub_2437EB574();
    }

    v5 = v1[2];
    v6 = v1[3];
    OUTLINED_FUNCTION_20_1();
    if (v7)
    {
      OUTLINED_FUNCTION_13_3();
      sub_2437EB574();
    }

    v8 = *(type metadata accessor for CloudAssets_AssetStreamHandle(0) + 24);
    OUTLINED_FUNCTION_27_0();
  }
}

void sub_2437C8E90()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_62(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_51();
  v10 = type metadata accessor for CloudAssets_Asset(v9);
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v14 = OUTLINED_FUNCTION_58();
  v15 = *(type metadata accessor for CloudAssets_AssetStreamHandle(v14) + 28);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_123();
  if (v16)
  {
    sub_2437B47C4(v0, &qword_27ED867E8, &qword_2437ED990);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
    sub_2437C27F4();
    OUTLINED_FUNCTION_0_5();
    sub_2437C98AC(v17, v18);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_70();
    sub_2437C2A14();
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

void sub_2437C8FB4()
{
  OUTLINED_FUNCTION_14_3();
  v17[0] = v1;
  v17[1] = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
  OUTLINED_FUNCTION_48(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for CloudAssets_Credential(0);
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v14 = *(v3(0) + 32);
  sub_2437C45F0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2437B47C4(v9, &qword_27ED867E0, &qword_2437ED988);
  }

  else
  {
    sub_2437C27F4();
    OUTLINED_FUNCTION_1_6();
    sub_2437C98AC(v15, v16);
    sub_2437EB594();
    OUTLINED_FUNCTION_23_0();
    sub_2437C2A14();
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

void static CloudAssets_AssetStreamHandle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_130();
  v2 = v1;
  v4 = v3;
  v55 = type metadata accessor for CloudAssets_Credential(0);
  v5 = OUTLINED_FUNCTION_1_0(v55);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
  OUTLINED_FUNCTION_48(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_143(v12, v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86840, &qword_2437ED9B0);
  OUTLINED_FUNCTION_1_0(v53);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_124(v16, v52);
  v18 = type metadata accessor for CloudAssets_Asset(v17);
  v19 = OUTLINED_FUNCTION_1_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  v22 = OUTLINED_FUNCTION_105();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_48(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_89();
  v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86870, &qword_2437ED9B8) - 8);
  v29 = *(*v28 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v30);
  v31 = OUTLINED_FUNCTION_144();
  v54 = type metadata accessor for CloudAssets_AssetStreamHandle(v31);
  v32 = v54[7];
  v33 = v28[14];
  sub_2437C45F0();
  sub_2437C45F0();
  OUTLINED_FUNCTION_53(v0, 1, v18);
  if (v34)
  {
    OUTLINED_FUNCTION_53(v0 + v33, 1, v18);
    if (v34)
    {
      sub_2437B47C4(v0, &qword_27ED867E8, &qword_2437ED990);
      goto LABEL_11;
    }

LABEL_9:
    v35 = &qword_27ED86870;
    v36 = &qword_2437ED9B8;
    v37 = v0;
LABEL_20:
    sub_2437B47C4(v37, v35, v36);
    goto LABEL_21;
  }

  sub_2437C45F0();
  OUTLINED_FUNCTION_53(v0 + v33, 1, v18);
  if (v34)
  {
    OUTLINED_FUNCTION_70();
    sub_2437C2A14();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_4();
  sub_2437C27F4();
  static CloudAssets_Asset.== infix(_:_:)();
  v39 = v38;
  sub_2437C2A14();
  sub_2437C2A14();
  sub_2437B47C4(v0, &qword_27ED867E8, &qword_2437ED990);
  if ((v39 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v40 = v54[8];
  v41 = *(v53 + 48);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_53(v56, 1, v55);
  if (!v34)
  {
    sub_2437C45F0();
    OUTLINED_FUNCTION_53(v56 + v41, 1, v55);
    if (!v42)
    {
      OUTLINED_FUNCTION_12_1();
      sub_2437C27F4();
      OUTLINED_FUNCTION_120();
      static CloudAssets_Credential.== infix(_:_:)();
      v45 = v44;
      sub_2437C2A14();
      sub_2437C2A14();
      sub_2437B47C4(v56, &qword_27ED867E0, &qword_2437ED988);
      if ((v45 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_23_0();
    sub_2437C2A14();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_53(v56 + v41, 1, v55);
  if (!v34)
  {
LABEL_19:
    v35 = &qword_27ED86840;
    v36 = &qword_2437ED9B0;
    v37 = v56;
    goto LABEL_20;
  }

  sub_2437B47C4(v56, &qword_27ED867E0, &qword_2437ED988);
LABEL_24:
  v46 = *v4 == *v2 && v4[1] == v2[1];
  if (v46 || (sub_2437EBA14() & 1) != 0)
  {
    v47 = v4[2] == v2[2] && v4[3] == v2[3];
    if (v47 || (sub_2437EBA14() & 1) != 0)
    {
      v48 = v54[6];
      sub_2437EB424();
      OUTLINED_FUNCTION_3_4();
      sub_2437C98AC(v49, v50);
      v43 = sub_2437EB6E4();
      goto LABEL_22;
    }
  }

LABEL_21:
  v43 = 0;
LABEL_22:
  OUTLINED_FUNCTION_134(v43);
  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437C965C()
{
  OUTLINED_FUNCTION_59();
  v1 = v0;
  sub_2437EBA94();
  v1(0);
  v2 = OUTLINED_FUNCTION_142();
  sub_2437C98AC(v2, v3);
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

uint64_t sub_2437C9734()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_8_3();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C9798()
{
  OUTLINED_FUNCTION_8_3();
  sub_2437C98AC(v0, v1);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C97F4()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_8_3();
  sub_2437C98AC(v0, v1);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

uint64_t sub_2437C9854()
{
  sub_2437EBA94();
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

uint64_t sub_2437C98AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2437C98F4@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      result = sub_2437C9B3C(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        MEMORY[0x245D40480](v4);
        __break(1u);
        JUMPOUT(0x2437C9A60);
      }

      result = 1;
      break;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      break;
  }

  *a4 = result & 1;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2437C9A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2437EB244();
  v11 = result;
  if (result)
  {
    result = sub_2437EB264();
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

  sub_2437EB254();
  sub_2437C98F4(v11, a4, a5, &v13);
  sub_2437B7168(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return v12 & 1;
}

uint64_t sub_2437C9B3C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_2437EB244();
  v8 = result;
  if (result)
  {
    result = sub_2437EB264();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_2437EB254();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_2437C9BF4(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v198 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D0, &qword_2437ED978);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v187 - v9;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867F0, &qword_2437ED998);
  v11 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v197 = &v187 - v12;
  v199 = type metadata accessor for CloudAssets_Asset.ID(0);
  v13 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v202 = (&v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v187 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867F8, &qword_2437ED9A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v200 = &v187 - v21;
  v203 = type metadata accessor for CloudAssets_Asset(0);
  v22 = *(*(v203 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v203);
  v25 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v28 = (&v187 - v27);
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
    goto LABEL_273;
  }

  if (!v29 || a1 == a2)
  {
    v182 = 1;
    goto LABEL_274;
  }

  v190 = 0;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = a1 + v30;
  v201 = a2 + v30;
  v188 = *(v26 + 72);
  v192 = v10;
  v193 = v4;
  v32 = v197;
  v195 = v18;
  v189 = v19;
  v191 = v25;
  while (1)
  {
    v194 = v31;
    sub_2437C29BC();
    if (!v29)
    {
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
    }

    sub_2437C29BC();
    v33 = v203[6];
    v34 = *(v19 + 48);
    v35 = v200;
    sub_2437C45F0();
    sub_2437C45F0();
    v36 = v199;
    if (__swift_getEnumTagSinglePayload(v35, 1, v199) == 1)
    {
      v42 = __swift_getEnumTagSinglePayload(v35 + v34, 1, v36) == 1;
      v37 = v191;
      v38 = v35;
      v39 = v193;
      if (!v42)
      {
        goto LABEL_268;
      }

      sub_2437B47C4(v38, &qword_27ED867C8, &qword_2437ED970);
      v40 = v29;
      goto LABEL_122;
    }

    sub_2437C45F0();
    if (__swift_getEnumTagSinglePayload(v35 + v34, 1, v36) == 1)
    {
      sub_2437C2A14();
      v38 = v35;
LABEL_268:
      v183 = &qword_27ED867F8;
      v184 = &qword_2437ED9A0;
      goto LABEL_271;
    }

    v41 = v202;
    sub_2437C27F4();
    v42 = *v18 == *v41 && v18[1] == v41[1];
    v37 = v191;
    v40 = v29;
    if (!v42 && (sub_2437EBA14() & 1) == 0)
    {
      break;
    }

    v43 = v18[2] == v202[2] && v18[3] == v202[3];
    if (!v43 && (sub_2437EBA14() & 1) == 0)
    {
      break;
    }

    v44 = v18[4];
    v45 = v18[5];
    v46 = v45 >> 62;
    v48 = v202[4];
    v47 = v202[5];
    v49 = v47 >> 62;
    if (v43)
    {
      v51 = 0;
      if (!v44)
      {
        if (v45 == 0xC000000000000000)
        {
          v50 = v47 >> 62 == 3;
          v43 = v49 == 3;
        }

        else
        {
          v50 = 0;
          v43 = 0;
        }

        if (v50)
        {
          v51 = 0;
          if (!v48)
          {
            v43 = v47 == 0xC000000000000000;
            if (v47 == 0xC000000000000000)
            {
              goto LABEL_75;
            }
          }
        }
      }
    }

    else
    {
      v51 = 0;
      switch(v46)
      {
        case 0uLL:
          v51 = BYTE6(v45);
          break;
        case 1uLL:
          v43 = HIDWORD(v44) == v44;
          if (__OFSUB__(HIDWORD(v44), v44))
          {
            goto LABEL_284;
          }

          v51 = HIDWORD(v44) - v44;
          break;
        case 2uLL:
          v53 = *(v44 + 16);
          v52 = *(v44 + 24);
          v54 = __OFSUB__(v52, v53);
          v51 = v52 - v53;
          v43 = v51 == 0;
          if (!v54)
          {
            break;
          }

          goto LABEL_285;
        case 3uLL:
          break;
        default:
LABEL_321:
          JUMPOUT(0);
      }
    }

    switch(v49)
    {
      case 1uLL:
        LODWORD(v55) = HIDWORD(v48) - v48;
        if (__OFSUB__(HIDWORD(v48), v48))
        {
          goto LABEL_276;
        }

        v55 = v55;
LABEL_46:
        if (v51 != v55)
        {
          goto LABEL_265;
        }

        v43 = v51 == 1;
        if (v51 < 1)
        {
          goto LABEL_75;
        }

        break;
      case 2uLL:
        v57 = *(v48 + 16);
        v56 = *(v48 + 24);
        v54 = __OFSUB__(v56, v57);
        v55 = v56 - v57;
        if (!v54)
        {
          goto LABEL_46;
        }

        goto LABEL_277;
      case 3uLL:
        if (v51)
        {
          goto LABEL_265;
        }

        goto LABEL_75;
      default:
        v55 = BYTE6(v47);
        goto LABEL_46;
    }

    v58 = v48 >> 32;
    switch(v46)
    {
      case 1:
        if (v44 >> 32 < v44)
        {
          goto LABEL_292;
        }

        v63 = v44;
        sub_2437B6C6C(v48, v47);
        sub_2437B6C6C(v48, v47);
        sub_2437B6C6C(v48, v47);
        v61 = sub_2437EB244();
        if (!v61)
        {
          goto LABEL_66;
        }

        v64 = sub_2437EB264();
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_300;
        }

        v61 += v63 - v64;
LABEL_66:
        sub_2437EB254();
        v65 = v61;
        v66 = v190;
        sub_2437C98F4(v65, v48, v47, __s1);
        v190 = v66;
        sub_2437B7168(v48, v47);
        sub_2437B7168(v48, v47);
        sub_2437B7168(v48, v47);
        v18 = v195;
        v37 = v191;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_265;
        }

        break;
      case 2:
        v59 = *(v44 + 16);
        v60 = *(v44 + 24);
        sub_2437B6C6C(v48, v47);
        sub_2437B6C6C(v48, v47);
        sub_2437B6C6C(v48, v47);
        v61 = sub_2437EB244();
        if (!v61)
        {
          goto LABEL_56;
        }

        v62 = sub_2437EB264();
        if (__OFSUB__(v59, v62))
        {
          goto LABEL_299;
        }

        v61 += v59 - v62;
LABEL_56:
        if (!__OFSUB__(v60, v59))
        {
          goto LABEL_66;
        }

        goto LABEL_293;
      case 3:
        memset(__s1, 0, 14);
        if (!v49)
        {
          goto LABEL_68;
        }

        if (v49 == 2)
        {
          goto LABEL_72;
        }

        if (v58 >= v48)
        {
          goto LABEL_71;
        }

        goto LABEL_306;
      default:
        LOWORD(__s1[0]) = v18[4];
        BYTE2(__s1[0]) = BYTE2(v44);
        BYTE3(__s1[0]) = BYTE3(v44);
        BYTE4(__s1[0]) = BYTE4(v44);
        BYTE5(__s1[0]) = BYTE5(v44);
        BYTE6(__s1[0]) = BYTE6(v44);
        HIBYTE(__s1[0]) = HIBYTE(v44);
        LOWORD(__s1[1]) = v45;
        BYTE2(__s1[1]) = BYTE2(v45);
        BYTE3(__s1[1]) = BYTE3(v45);
        BYTE4(__s1[1]) = BYTE4(v45);
        BYTE5(__s1[1]) = BYTE5(v45);
        if (v49)
        {
          if (v49 == 1)
          {
            if (v58 < v48)
            {
              goto LABEL_305;
            }

LABEL_71:
            sub_2437B6C6C(v48, v47);
            sub_2437B6C6C(v48, v47);
            v68 = v47 & 0x3FFFFFFFFFFFFFFFLL;
            v69 = v48;
            v70 = v48 >> 32;
          }

          else
          {
LABEL_72:
            v71 = *(v48 + 16);
            v72 = *(v48 + 24);
            sub_2437B6C6C(v48, v47);
            sub_2437B6C6C(v48, v47);
            v68 = v47 & 0x3FFFFFFFFFFFFFFFLL;
            v69 = v71;
            v70 = v72;
          }

          v73 = v190;
          v74 = sub_2437C9B3C(v69, v70, v68, __s1);
          sub_2437B7168(v48, v47);
          sub_2437B7168(v48, v47);
          v190 = v73;
          if (v73)
          {
            goto LABEL_320;
          }

          v18 = v195;
          if ((v74 & 1) == 0)
          {
            goto LABEL_265;
          }
        }

        else
        {
LABEL_68:
          __s2 = v48;
          v205 = v47;
          v206 = BYTE2(v47);
          v207 = BYTE3(v47);
          v208 = BYTE4(v47);
          v209 = BYTE5(v47);
          v67 = memcmp(__s1, &__s2, BYTE6(v47));
          v18 = v195;
          if (v67)
          {
            goto LABEL_265;
          }
        }

        break;
    }

LABEL_75:
    v75 = v18[6];
    v76 = v18[7];
    v77 = v76 >> 62;
    v79 = v202[6];
    v78 = v202[7];
    v80 = v78 >> 62;
    if (!v43)
    {
      v82 = 0;
      switch(v77)
      {
        case 0uLL:
          v82 = BYTE6(v76);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v75), v75))
          {
            goto LABEL_287;
          }

          v82 = HIDWORD(v75) - v75;
          break;
        case 2uLL:
          v84 = *(v75 + 16);
          v83 = *(v75 + 24);
          v54 = __OFSUB__(v83, v84);
          v82 = v83 - v84;
          if (!v54)
          {
            break;
          }

          goto LABEL_286;
        case 3uLL:
          break;
        default:
          goto LABEL_321;
      }

LABEL_91:
      switch(v80)
      {
        case 1uLL:
          LODWORD(v85) = HIDWORD(v79) - v79;
          if (__OFSUB__(HIDWORD(v79), v79))
          {
            goto LABEL_278;
          }

          v85 = v85;
LABEL_100:
          if (v82 != v85)
          {
            goto LABEL_265;
          }

          if (v82 < 1)
          {
            goto LABEL_121;
          }

          break;
        case 2uLL:
          v87 = *(v79 + 16);
          v86 = *(v79 + 24);
          v54 = __OFSUB__(v86, v87);
          v85 = v86 - v87;
          if (!v54)
          {
            goto LABEL_100;
          }

          goto LABEL_279;
        case 3uLL:
          if (v82)
          {
            goto LABEL_265;
          }

          goto LABEL_121;
        default:
          v85 = BYTE6(v78);
          goto LABEL_100;
      }

      v88 = v79;
      v89 = v79 >> 32;
      switch(v77)
      {
        case 1:
          v95 = v75 >> 32;
          if (v75 >> 32 < v75)
          {
            goto LABEL_294;
          }

          v96 = v75;
          sub_2437B6C6C(v79, v78);
          sub_2437B6C6C(v79, v78);
          sub_2437B6C6C(v79, v78);
          v92 = v76 & 0x3FFFFFFFFFFFFFFFLL;
          v93 = v96;
          v94 = v95;
LABEL_113:
          v97 = v190;
          v98 = sub_2437C9A70(v93, v94, v92, v79, v78);
          v190 = v97;
          sub_2437B7168(v79, v78);
          sub_2437B7168(v79, v78);
          goto LABEL_120;
        case 2:
          v90 = *(v75 + 16);
          v91 = *(v75 + 24);
          sub_2437B6C6C(v79, v78);
          sub_2437B6C6C(v79, v78);
          sub_2437B6C6C(v79, v78);
          v92 = v76 & 0x3FFFFFFFFFFFFFFFLL;
          v93 = v90;
          v94 = v91;
          goto LABEL_113;
        case 3:
          memset(__s1, 0, 14);
          if (!v80)
          {
            goto LABEL_114;
          }

          if (v80 == 2)
          {
            v88 = *(v79 + 16);
            v89 = *(v79 + 24);
          }

          else if (v89 < v79)
          {
            goto LABEL_308;
          }

          goto LABEL_119;
        default:
          __s1[0] = v75;
          LOWORD(__s1[1]) = v76;
          BYTE2(__s1[1]) = BYTE2(v76);
          BYTE3(__s1[1]) = BYTE3(v76);
          BYTE4(__s1[1]) = BYTE4(v76);
          BYTE5(__s1[1]) = BYTE5(v76);
          if (v80)
          {
            if (v80 == 1)
            {
              if (v89 < v79)
              {
                goto LABEL_307;
              }
            }

            else
            {
              v88 = *(v79 + 16);
              v89 = *(v79 + 24);
            }

LABEL_119:
            sub_2437B6C6C(v79, v78);
            sub_2437B6C6C(v79, v78);
            v99 = v88;
            v100 = v190;
            v98 = sub_2437C9B3C(v99, v89, v78 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            sub_2437B7168(v79, v78);
            sub_2437B7168(v79, v78);
            v190 = v100;
            if (v100)
            {
              goto LABEL_320;
            }

LABEL_120:
            if ((v98 & 1) == 0)
            {
              goto LABEL_265;
            }
          }

          else
          {
LABEL_114:
            __s2 = v79;
            v205 = v78;
            v206 = BYTE2(v78);
            v207 = BYTE3(v78);
            v208 = BYTE4(v78);
            v209 = BYTE5(v78);
            if (memcmp(__s1, &__s2, BYTE6(v78)))
            {
              goto LABEL_265;
            }
          }

          break;
      }

      goto LABEL_121;
    }

    v82 = 0;
    if (v75)
    {
      goto LABEL_91;
    }

    if (v76 != 0xC000000000000000 || v78 >> 62 != 3)
    {
      goto LABEL_91;
    }

    v82 = 0;
    if (v79 || v78 != 0xC000000000000000)
    {
      goto LABEL_91;
    }

LABEL_121:
    v101 = *(v199 + 32);
    sub_2437EB424();
    sub_2437C98AC(&qword_27ED86800, MEMORY[0x277D216C8]);
    v102 = sub_2437EB6E4();
    sub_2437C2A14();
    sub_2437C2A14();
    sub_2437B47C4(v200, &qword_27ED867C8, &qword_2437ED970);
    v32 = v197;
    v39 = v193;
    if ((v102 & 1) == 0)
    {
      goto LABEL_272;
    }

LABEL_122:
    v103 = v203[7];
    v104 = *(v196 + 48);
    sub_2437C45F0();
    sub_2437C45F0();
    if (__swift_getEnumTagSinglePayload(v32, 1, v39) != 1)
    {
      v105 = v192;
      sub_2437C45F0();
      if (__swift_getEnumTagSinglePayload(v32 + v104, 1, v39) == 1)
      {
        sub_2437C2A14();
LABEL_270:
        v183 = &qword_27ED867F0;
        v184 = &qword_2437ED998;
        v38 = v32;
        goto LABEL_271;
      }

      v187 = v40;
      v106 = v198;
      sub_2437C27F4();
      v108 = *v105;
      v109 = v105[1];
      v110 = v109 >> 62;
      v112 = *v106;
      v111 = *(v106 + 1);
      v113 = HIDWORD(*v105);
      v114 = v111 >> 62;
      if (v107)
      {
        v116 = 0;
        if (!v108)
        {
          if (v109 == 0xC000000000000000)
          {
            v115 = v111 >> 62 == 3;
            v107 = v114 == 3;
          }

          else
          {
            v115 = 0;
            v107 = 0;
          }

          if (v115)
          {
            v116 = 0;
            if (!v112)
            {
              v107 = v111 == 0xC000000000000000;
              if (v111 == 0xC000000000000000)
              {
                goto LABEL_205;
              }
            }
          }
        }
      }

      else
      {
        v116 = 0;
        switch(v110)
        {
          case 0uLL:
            v116 = BYTE6(v109);
            break;
          case 1uLL:
            v107 = v113 == v108;
            if (__OFSUB__(v113, v108))
            {
              goto LABEL_288;
            }

            v116 = v113 - v108;
            break;
          case 2uLL:
            v118 = *(v108 + 16);
            v117 = *(v108 + 24);
            v54 = __OFSUB__(v117, v118);
            v116 = v117 - v118;
            v107 = v116 == 0;
            if (!v54)
            {
              break;
            }

            goto LABEL_289;
          case 3uLL:
            break;
          default:
            goto LABEL_321;
        }
      }

      switch(v114)
      {
        case 1uLL:
          LODWORD(v119) = HIDWORD(v112) - v112;
          if (__OFSUB__(HIDWORD(v112), v112))
          {
            goto LABEL_280;
          }

          v119 = v119;
LABEL_153:
          if (v116 != v119)
          {
            goto LABEL_266;
          }

          v107 = v116 == 1;
          if (v116 < 1)
          {
            goto LABEL_205;
          }

          break;
        case 2uLL:
          v121 = *(v112 + 16);
          v120 = *(v112 + 24);
          v54 = __OFSUB__(v120, v121);
          v119 = v120 - v121;
          if (!v54)
          {
            goto LABEL_153;
          }

          goto LABEL_281;
        case 3uLL:
          if (v116)
          {
            goto LABEL_266;
          }

          goto LABEL_205;
        default:
          v119 = BYTE6(v111);
          goto LABEL_153;
      }

      v122 = v112 >> 32;
      switch(v110)
      {
        case 1:
          if (v108 >> 32 < v108)
          {
            goto LABEL_295;
          }

          v139 = v108;
          sub_2437B6C6C(*v106, *(v106 + 1));
          sub_2437B6C6C(v112, v111);
          sub_2437B6C6C(v112, v111);
          v130 = sub_2437EB244();
          if (!v130)
          {
            goto LABEL_189;
          }

          v140 = sub_2437EB264();
          if (__OFSUB__(v139, v140))
          {
            goto LABEL_302;
          }

          v130 += v139 - v140;
LABEL_189:
          sub_2437EB254();
          v141 = v130;
          v142 = v190;
          sub_2437C98F4(v141, v112, v111, __s1);
          v190 = v142;
          sub_2437B7168(v112, v111);
          sub_2437B7168(v112, v111);
          sub_2437B7168(v112, v111);
          v37 = v191;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_266;
          }

          break;
        case 2:
          v128 = *(v108 + 16);
          v129 = *(v108 + 24);
          sub_2437B6C6C(*v106, *(v106 + 1));
          sub_2437B6C6C(v112, v111);
          sub_2437B6C6C(v112, v111);
          v130 = sub_2437EB244();
          if (!v130)
          {
            goto LABEL_171;
          }

          v131 = sub_2437EB264();
          if (__OFSUB__(v128, v131))
          {
            goto LABEL_301;
          }

          v130 += v128 - v131;
LABEL_171:
          if (!__OFSUB__(v129, v128))
          {
            goto LABEL_189;
          }

          goto LABEL_296;
        case 3:
          memset(__s1, 0, 14);
          if (!v114)
          {
            goto LABEL_191;
          }

          if (v114 == 2)
          {
            v132 = *(v112 + 16);
            v133 = *(v112 + 24);
            sub_2437B6C6C(v112, v111);
            v134 = sub_2437EB244();
            if (v134)
            {
              v135 = sub_2437EB264();
              if (__OFSUB__(v132, v135))
              {
                goto LABEL_314;
              }

              v134 += v132 - v135;
            }

            v54 = __OFSUB__(v133, v132);
            v136 = v133 - v132;
            if (v54)
            {
              goto LABEL_311;
            }

            v137 = sub_2437EB254();
            v37 = v191;
            if (!v134)
            {
              goto LABEL_318;
            }

            if (v137 >= v136)
            {
              v127 = v136;
            }

            else
            {
              v127 = v137;
            }

            v138 = v134;
          }

          else
          {
            if (v122 < v112)
            {
              goto LABEL_310;
            }

            sub_2437B6C6C(v112, v111);
            v123 = sub_2437EB244();
            if (v123)
            {
              v143 = sub_2437EB264();
              if (__OFSUB__(v112, v143))
              {
                goto LABEL_316;
              }

              v123 = (v123 + v112 - v143);
            }

            v144 = sub_2437EB254();
            if (!v123)
            {
              __break(1u);
LABEL_318:
              __break(1u);
LABEL_319:
              __break(1u);
LABEL_320:
              MEMORY[0x245D40480](v190);
              __break(1u);
              JUMPOUT(0x2437CB764);
            }

            if (v144 >= v122 - v112)
            {
              v127 = v122 - v112;
            }

            else
            {
              v127 = v144;
            }

LABEL_201:
            v138 = v123;
          }

          v145 = memcmp(__s1, v138, v127);
          sub_2437B7168(v112, v111);
          if (v145)
          {
            goto LABEL_266;
          }

          break;
        default:
          LOWORD(__s1[0]) = *v105;
          BYTE2(__s1[0]) = BYTE2(v108);
          BYTE3(__s1[0]) = BYTE3(v108);
          BYTE4(__s1[0]) = v113;
          BYTE5(__s1[0]) = BYTE5(v108);
          BYTE6(__s1[0]) = BYTE6(v108);
          HIBYTE(__s1[0]) = HIBYTE(v108);
          LOWORD(__s1[1]) = v109;
          BYTE2(__s1[1]) = BYTE2(v109);
          BYTE3(__s1[1]) = BYTE3(v109);
          BYTE4(__s1[1]) = BYTE4(v109);
          BYTE5(__s1[1]) = BYTE5(v109);
          if (!v114)
          {
LABEL_191:
            __s2 = v112;
            v205 = v111;
            v206 = BYTE2(v111);
            v207 = BYTE3(v111);
            v208 = BYTE4(v111);
            v209 = BYTE5(v111);
            if (memcmp(__s1, &__s2, BYTE6(v111)))
            {
              goto LABEL_266;
            }

            break;
          }

          if (v114 != 1)
          {
            v147 = *(v112 + 16);
            v146 = *(v112 + 24);
            sub_2437B6C6C(v112, v111);
            v148 = v147;
            v149 = v190;
            LOBYTE(v146) = sub_2437C9B3C(v148, v146, v111 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            v190 = v149;
            sub_2437B7168(v112, v111);
            if ((v146 & 1) == 0)
            {
              goto LABEL_266;
            }

            break;
          }

          if (v122 < v112)
          {
            goto LABEL_309;
          }

          sub_2437B6C6C(v112, v111);
          v123 = sub_2437EB244();
          if (v123)
          {
            v124 = sub_2437EB264();
            if (__OFSUB__(v112, v124))
            {
              goto LABEL_315;
            }

            v123 = (v123 + v112 - v124);
          }

          v125 = v122 - v112;
          v126 = sub_2437EB254();
          if (v126 >= v125)
          {
            v127 = v125;
          }

          else
          {
            v127 = v126;
          }

          if (!v123)
          {
            goto LABEL_319;
          }

          if (__s1 == v123)
          {
            sub_2437B7168(v112, v111);
            break;
          }

          goto LABEL_201;
      }

LABEL_205:
      v150 = v192[2];
      v151 = v192[3];
      v152 = v151 >> 62;
      v154 = *(v198 + 2);
      v153 = *(v198 + 3);
      v155 = v153 >> 62;
      if (v107)
      {
        v157 = 0;
        if (!v150 && v151 == 0xC000000000000000 && v153 >> 62 == 3)
        {
          v157 = 0;
          if (!v154 && v153 == 0xC000000000000000)
          {
LABEL_259:
            v179 = *(v193 + 24);
            sub_2437EB424();
            sub_2437C98AC(&qword_27ED86800, MEMORY[0x277D216C8]);
            v180 = sub_2437EB6E4();
            sub_2437C2A14();
            sub_2437C2A14();
            v32 = v197;
            sub_2437B47C4(v197, &qword_27ED867D0, &qword_2437ED978);
            v40 = v187;
            if ((v180 & 1) == 0)
            {
              goto LABEL_272;
            }

            goto LABEL_260;
          }
        }
      }

      else
      {
        v157 = 0;
        switch(v152)
        {
          case 0uLL:
            v157 = BYTE6(v151);
            break;
          case 1uLL:
            if (__OFSUB__(HIDWORD(v150), v150))
            {
              goto LABEL_291;
            }

            v157 = HIDWORD(v150) - v150;
            break;
          case 2uLL:
            v159 = *(v150 + 16);
            v158 = *(v150 + 24);
            v54 = __OFSUB__(v158, v159);
            v157 = v158 - v159;
            if (!v54)
            {
              break;
            }

            goto LABEL_290;
          case 3uLL:
            break;
          default:
            goto LABEL_321;
        }
      }

      switch(v155)
      {
        case 1uLL:
          LODWORD(v160) = HIDWORD(v154) - v154;
          if (__OFSUB__(HIDWORD(v154), v154))
          {
            goto LABEL_283;
          }

          v160 = v160;
LABEL_230:
          if (v157 != v160)
          {
            goto LABEL_266;
          }

          if (v157 < 1)
          {
            goto LABEL_259;
          }

          break;
        case 2uLL:
          v162 = *(v154 + 16);
          v161 = *(v154 + 24);
          v54 = __OFSUB__(v161, v162);
          v160 = v161 - v162;
          if (!v54)
          {
            goto LABEL_230;
          }

          goto LABEL_282;
        case 3uLL:
          if (v157)
          {
            goto LABEL_266;
          }

          goto LABEL_259;
        default:
          v160 = BYTE6(v153);
          goto LABEL_230;
      }

      v163 = v154 >> 32;
      switch(v152)
      {
        case 1:
          if (v150 >> 32 < v150)
          {
            goto LABEL_297;
          }

          v168 = v150;
          sub_2437B6C6C(*(v198 + 2), *(v198 + 3));
          sub_2437B6C6C(v154, v153);
          sub_2437B6C6C(v154, v153);
          v166 = sub_2437EB244();
          if (!v166)
          {
            goto LABEL_250;
          }

          v169 = sub_2437EB264();
          if (__OFSUB__(v168, v169))
          {
            goto LABEL_304;
          }

          v166 += v168 - v169;
LABEL_250:
          sub_2437EB254();
          v170 = v166;
          v171 = v190;
          sub_2437C98F4(v170, v154, v153, __s1);
          v190 = v171;
          sub_2437B7168(v154, v153);
          sub_2437B7168(v154, v153);
          sub_2437B7168(v154, v153);
          v37 = v191;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_266;
          }

          goto LABEL_259;
        case 2:
          v164 = *(v150 + 16);
          v165 = *(v150 + 24);
          sub_2437B6C6C(*(v198 + 2), *(v198 + 3));
          sub_2437B6C6C(v154, v153);
          sub_2437B6C6C(v154, v153);
          v166 = sub_2437EB244();
          if (!v166)
          {
            goto LABEL_240;
          }

          v167 = sub_2437EB264();
          if (__OFSUB__(v164, v167))
          {
            goto LABEL_303;
          }

          v166 += v164 - v167;
LABEL_240:
          if (!__OFSUB__(v165, v164))
          {
            goto LABEL_250;
          }

          goto LABEL_298;
        case 3:
          memset(__s1, 0, 14);
          if (!v155)
          {
            goto LABEL_252;
          }

          if (v155 == 2)
          {
            goto LABEL_256;
          }

          if (v163 >= v154)
          {
            goto LABEL_255;
          }

          goto LABEL_312;
        default:
          LOWORD(__s1[0]) = v192[2];
          BYTE2(__s1[0]) = BYTE2(v150);
          BYTE3(__s1[0]) = BYTE3(v150);
          BYTE4(__s1[0]) = BYTE4(v150);
          BYTE5(__s1[0]) = BYTE5(v150);
          BYTE6(__s1[0]) = BYTE6(v150);
          HIBYTE(__s1[0]) = HIBYTE(v150);
          LOWORD(__s1[1]) = v151;
          BYTE2(__s1[1]) = BYTE2(v151);
          BYTE3(__s1[1]) = BYTE3(v151);
          BYTE4(__s1[1]) = BYTE4(v151);
          BYTE5(__s1[1]) = BYTE5(v151);
          if (v155)
          {
            if (v155 == 1)
            {
              if (v163 < v154)
              {
                goto LABEL_313;
              }

LABEL_255:
              sub_2437B6C6C(v154, v153);
              sub_2437B6C6C(v154, v153);
              v172 = v153 & 0x3FFFFFFFFFFFFFFFLL;
              v173 = v154;
              v174 = v154 >> 32;
            }

            else
            {
LABEL_256:
              v175 = *(v154 + 16);
              v176 = *(v154 + 24);
              sub_2437B6C6C(v154, v153);
              sub_2437B6C6C(v154, v153);
              v172 = v153 & 0x3FFFFFFFFFFFFFFFLL;
              v173 = v175;
              v174 = v176;
            }

            v177 = v190;
            v178 = sub_2437C9B3C(v173, v174, v172, __s1);
            sub_2437B7168(v154, v153);
            sub_2437B7168(v154, v153);
            v190 = v177;
            if (v177)
            {
              goto LABEL_320;
            }

            if ((v178 & 1) == 0)
            {
LABEL_266:
              sub_2437C2A14();
              sub_2437C2A14();
              v183 = &qword_27ED867D0;
              v184 = &qword_2437ED978;
              v38 = v197;
              goto LABEL_271;
            }
          }

          else
          {
LABEL_252:
            __s2 = v154;
            v205 = v153;
            v206 = BYTE2(v153);
            v207 = BYTE3(v153);
            v208 = BYTE4(v153);
            v209 = BYTE5(v153);
            if (memcmp(__s1, &__s2, BYTE6(v153)))
            {
              goto LABEL_266;
            }
          }

          break;
      }

      goto LABEL_259;
    }

    if (__swift_getEnumTagSinglePayload(v32 + v104, 1, v39) != 1)
    {
      goto LABEL_270;
    }

    sub_2437B47C4(v32, &qword_27ED867D0, &qword_2437ED978);
LABEL_260:
    if (*v28 != *v37)
    {
      goto LABEL_272;
    }

    v181 = v203[5];
    sub_2437EB424();
    sub_2437C98AC(&qword_27ED86800, MEMORY[0x277D216C8]);
    v182 = sub_2437EB6E4();
    sub_2437C2A14();
    sub_2437C2A14();
    if (v182)
    {
      v29 = v40 - 1;
      v201 += v188;
      v18 = v195;
      v31 = v194 + v188;
      v19 = v189;
      if (v40 != 1)
      {
        continue;
      }
    }

    goto LABEL_274;
  }

LABEL_265:
  sub_2437C2A14();
  sub_2437C2A14();
  v183 = &qword_27ED867C8;
  v184 = &qword_2437ED970;
  v38 = v200;
LABEL_271:
  sub_2437B47C4(v38, v183, v184);
LABEL_272:
  sub_2437C2A14();
  sub_2437C2A14();
LABEL_273:
  v182 = 0;
LABEL_274:
  v185 = *MEMORY[0x277D85DE8];
  return v182 & 1;
}

uint64_t sub_2437CB824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
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
      sub_2437C29BC();
      sub_2437C29BC();
      v17 = *v11;
      v18 = *v8;
      if (v11[8])
      {
        v17 = *v11 != 0;
      }

      if (v8[8] == 1)
      {
        if (v18)
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

      if (*(v11 + 2) != *(v8 + 2))
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_2437EB424();
      sub_2437C98AC(&qword_27ED86800, MEMORY[0x277D216C8]);
      v20 = sub_2437EB6E4();
      sub_2437C2A14();
      sub_2437C2A14();
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

    sub_2437C2A14();
    sub_2437C2A14();
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

unint64_t sub_2437CBAC0()
{
  result = qword_27ED86860;
  if (!qword_27ED86860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86860);
  }

  return result;
}

unint64_t sub_2437CBB18()
{
  result = qword_27ED86880;
  if (!qword_27ED86880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86880);
  }

  return result;
}

unint64_t sub_2437CBB70()
{
  result = qword_27ED86888;
  if (!qword_27ED86888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86888);
  }

  return result;
}

unint64_t sub_2437CBBC8()
{
  result = qword_27ED86890;
  if (!qword_27ED86890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86898, &qword_2437EDA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86890);
  }

  return result;
}

unint64_t sub_2437CBC30()
{
  result = qword_27ED868A0;
  if (!qword_27ED868A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED868A0);
  }

  return result;
}

uint64_t sub_2437CC398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_84();
  v5 = sub_2437EB424();
  OUTLINED_FUNCTION_21(v5);
  if (*(v6 + 84) == v3)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
    OUTLINED_FUNCTION_21(v8);
    if (*(v9 + 84) == v3)
    {
      v7 = *(a3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D0, &qword_2437ED978);
      OUTLINED_FUNCTION_135();
    }
  }

  v10 = OUTLINED_FUNCTION_63(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

uint64_t sub_2437CC490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_84();
  v6 = sub_2437EB424();
  OUTLINED_FUNCTION_21(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
    OUTLINED_FUNCTION_21(v9);
    if (*(v10 + 84) == a3)
    {
      v8 = *(a4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D0, &qword_2437ED978);
      OUTLINED_FUNCTION_139();
    }
  }

  v11 = OUTLINED_FUNCTION_46(v8);

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void sub_2437CC578()
{
  sub_2437EB424();
  if (v0 <= 0x3F)
  {
    sub_2437CC678(319, &qword_27ED86950, type metadata accessor for CloudAssets_Asset.ID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2437CC678(319, &qword_27ED86958, type metadata accessor for CloudAssets_Asset.Protector, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_36_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_98();
      }
    }
  }
}

void sub_2437CC678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2437CC6F0()
{
  OUTLINED_FUNCTION_57();
  if (v1)
  {
    return OUTLINED_FUNCTION_30_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_136();
  v4 = OUTLINED_FUNCTION_63(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2437CC764()
{
  OUTLINED_FUNCTION_32_0();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_2437EB424();
    OUTLINED_FUNCTION_140();
    v4 = OUTLINED_FUNCTION_46(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2437CC7CC()
{
  result = sub_2437EB424();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_36_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_98();
  }

  return result;
}

uint64_t sub_2437CC858(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v3 = *(a1 + 8) >> 60;
    if (((4 * v3) & 0xC) != 0)
    {
      return 16 - ((4 * v3) & 0xC | (v3 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_86();
    v5 = OUTLINED_FUNCTION_63(*(v2 + 24));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void *sub_2437CC8F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_2437EB424();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2437CC99C()
{
  OUTLINED_FUNCTION_57();
  if (v2)
  {
    return OUTLINED_FUNCTION_30_0(*(v1 + 8));
  }

  v4 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_21(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D8, &qword_2437ED980);
    OUTLINED_FUNCTION_136();
  }

  v7 = OUTLINED_FUNCTION_63(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_2437CCA58()
{
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_21(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_139();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D8, &qword_2437ED980);
      OUTLINED_FUNCTION_140();
    }

    v7 = OUTLINED_FUNCTION_46(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_2437CCB00()
{
  sub_2437EB424();
  if (v0 <= 0x3F)
  {
    sub_2437CC678(319, &qword_27ED86960, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_137();
      OUTLINED_FUNCTION_36_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_98();
    }
  }
}

uint64_t sub_2437CCBD0()
{
  OUTLINED_FUNCTION_57();
  if (v2)
  {
    return OUTLINED_FUNCTION_30_0(*v1);
  }

  v4 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_21(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
    OUTLINED_FUNCTION_136();
  }

  v7 = OUTLINED_FUNCTION_63(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_2437CCC8C()
{
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_21(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_139();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
      OUTLINED_FUNCTION_140();
    }

    v7 = OUTLINED_FUNCTION_46(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_2437CCD34()
{
  OUTLINED_FUNCTION_72();
  sub_2437CC678(319, v0, v1, MEMORY[0x277D83940]);
  if (v2 <= 0x3F)
  {
    sub_2437EB424();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_71();
      sub_2437CC678(319, v4, v5, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_36_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_98();
      }
    }
  }
}

uint64_t sub_2437CCE24()
{
  OUTLINED_FUNCTION_57();
  if (v2)
  {
    return OUTLINED_FUNCTION_30_0(*v0);
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_63(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2437CCE9C()
{
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2437EB424();
    v5 = OUTLINED_FUNCTION_46(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_2437CCF08()
{
  sub_2437CC678(319, &qword_27ED86978, type metadata accessor for CloudAssets_Signal.Event, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2437EB424();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_36_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_98();
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudAssets_Signal.EventType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_13_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437CCFC8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_13_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437CD000()
{
  OUTLINED_FUNCTION_84();
  v3 = *(v2 + 24);
  v4 = sub_2437EB424();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_2437CD064()
{
  OUTLINED_FUNCTION_84();
  v3 = *(v2 + 24);
  v4 = sub_2437EB424();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_2437CD0CC()
{
  result = sub_2437EB424();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_36_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_98();
  }

  return result;
}

uint64_t sub_2437CD148()
{
  OUTLINED_FUNCTION_57();
  if (v3)
  {
    return OUTLINED_FUNCTION_30_0(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_21(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E8, &qword_2437ED990);
    OUTLINED_FUNCTION_21(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_135();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
      OUTLINED_FUNCTION_136();
    }
  }

  v10 = OUTLINED_FUNCTION_63(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_2437CD250()
{
  OUTLINED_FUNCTION_32_0();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_21(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E8, &qword_2437ED990);
      OUTLINED_FUNCTION_21(v8);
      if (*(v9 + 84) == v3)
      {
        OUTLINED_FUNCTION_139();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
        OUTLINED_FUNCTION_140();
      }
    }

    v10 = OUTLINED_FUNCTION_46(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

void sub_2437CD344()
{
  sub_2437EB424();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_72();
    sub_2437CC678(319, v1, v2, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_71();
      sub_2437CC678(319, v4, v5, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_36_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_98();
      }
    }
  }
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

uint64_t OUTLINED_FUNCTION_19_2()
{
  result = v2 + v1 + *(v0 + 56);
  *(v2 + v1) = v3;
  return result;
}

char *OUTLINED_FUNCTION_22_1()
{
  v3 = (v2 + 2 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return MEMORY[0x28217E158](v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_30_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_39()
{

  return sub_2437EB6E4();
}

uint64_t OUTLINED_FUNCTION_40()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

__n128 *OUTLINED_FUNCTION_41(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = (result->n128_u64 + v3);
  v5 = result + v3 + *(v2 + 56);
  *v4 = 1;
  return result;
}

char *OUTLINED_FUNCTION_42()
{
  v3 = (v2 + 3 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 4;
  return result;
}

void *OUTLINED_FUNCTION_44(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_77()
{

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_80@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

__n128 *OUTLINED_FUNCTION_81(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_82@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_86()
{

  return sub_2437EB424();
}

void OUTLINED_FUNCTION_87()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_90()
{

  return sub_2437EB484();
}

uint64_t OUTLINED_FUNCTION_100()
{
  v2 = *(v0 - 72);

  return sub_2437EB594();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_102@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_108()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_2437EB5B4();
}

uint64_t OUTLINED_FUNCTION_128@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_129()
{

  return sub_2437EB424();
}

uint64_t OUTLINED_FUNCTION_145()
{

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_146()
{

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_147()
{

  return sub_2437C27F4();
}

uint64_t OUTLINED_FUNCTION_148()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t static UploadResponseMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0) - 8) + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_2();
  v49 = v8;
  v9 = type metadata accessor for UploadResponseMessage();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_2();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v48 - v18);
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E8, &qword_2437EE7C8) - 8) + 64);
  OUTLINED_FUNCTION_3();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = *(v22 + 56);
  sub_2437D0B68(a1, &v48 - v23, type metadata accessor for UploadResponseMessage);
  sub_2437D0B68(a2, &v24[v25], type metadata accessor for UploadResponseMessage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_6();
      sub_2437D0B68(v24, v17, v38);
      if (OUTLINED_FUNCTION_24_0() == 1)
      {
        v39 = &v24[v25];
        v40 = v49;
        sub_2437CE3C4(v39, v49);
        v41 = type metadata accessor for Asset(0);
        v42 = sub_2437D0BC8(&qword_27ED86658, type metadata accessor for Asset);
        v43 = sub_2437D0BC8(&qword_27ED86628, type metadata accessor for Asset);
        v44 = sub_2437D0BC8(&qword_27ED86648, type metadata accessor for Asset);
        v28 = static XPCResult<>.== infix(_:_:)(v17, v40, v41, v42, v43, v44);
        v45 = OUTLINED_FUNCTION_18_2();
        sub_2437B47C4(v45, v46, &qword_2437EE7C0);
        sub_2437B47C4(v17, &qword_27ED869E0, &qword_2437EE7C0);
        goto LABEL_13;
      }

      sub_2437B47C4(v17, &qword_27ED869E0, &qword_2437EE7C0);
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_0_6();
      sub_2437D0B68(v24, v3, v29);
      v30 = *v3;
      if (OUTLINED_FUNCTION_24_0() != 2)
      {
        goto LABEL_10;
      }

      v31 = OUTLINED_FUNCTION_21_1();
      v33 = static Signal.== infix(_:_:)(v31, v32);
      goto LABEL_8;
    case 3u:
      OUTLINED_FUNCTION_0_6();
      sub_2437D0B68(v24, v2, v34);
      v35 = *v2;
      if (OUTLINED_FUNCTION_24_0() != 3)
      {
        goto LABEL_10;
      }

      v36 = OUTLINED_FUNCTION_21_1();
      v33 = static SimultaneousTransferError.== infix(_:_:)(v36, v37);
LABEL_8:
      v28 = v33;

      goto LABEL_9;
    default:
      OUTLINED_FUNCTION_0_6();
      sub_2437D0B68(v24, v19, v26);
      v27 = *v19;
      if (OUTLINED_FUNCTION_24_0())
      {
LABEL_10:

LABEL_15:
        sub_2437B47C4(v24, &qword_27ED869E8, &qword_2437EE7C8);
        v28 = 0;
      }

      else
      {
        v28 = sub_2437CE434(v27, *&v24[v25]);

LABEL_9:

LABEL_13:
        sub_2437D0C10(v24, type metadata accessor for UploadResponseMessage);
      }

      return v28 & 1;
  }
}

uint64_t type metadata accessor for UploadResponseMessage()
{
  result = qword_27ED8C1A0;
  if (!qword_27ED8C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437CE3C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437CE434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetSkeleton();
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
        sub_2437D0B68(v14, v11, type metadata accessor for AssetSkeleton);
        sub_2437D0B68(v15, v8, type metadata accessor for AssetSkeleton);
        sub_2437D0BC8(&qword_27ED86AB8, type metadata accessor for AssetSkeleton);
        v17 = sub_2437EB6E4();
        sub_2437D0C10(v8, type metadata accessor for AssetSkeleton);
        sub_2437D0C10(v11, type metadata accessor for AssetSkeleton);
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

uint64_t sub_2437CE62C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172656D65687065 && a2 == 0xEE0074657373416CLL;
  if (v4 || (OUTLINED_FUNCTION_5() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574736973726570 && a2 == 0xEE00746573734164;
    if (v6 || (OUTLINED_FUNCTION_5() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E676973 && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_5() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000019 && 0x80000002437F2F20 == a2)
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

unint64_t sub_2437CE76C(char a1)
{
  result = 0x6172656D65687065;
  switch(a1)
  {
    case 1:
      result = 0x6574736973726570;
      break;
    case 2:
      result = 0x6C616E676973;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437CE818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437CE62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437CE840()
{
  sub_2437CF10C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CE878()
{
  sub_2437CF10C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437CE8B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_2437CE924()
{
  sub_2437CF2B0();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CE95C()
{
  sub_2437CF2B0();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437CE994()
{
  sub_2437CF25C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CE9CC()
{
  sub_2437CF25C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437CEA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437CE8B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437CEA4C()
{
  sub_2437CF1B4();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CEA84()
{
  sub_2437CF1B4();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437CEABC()
{
  sub_2437CF160();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CEAF4()
{
  sub_2437CF160();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t UploadResponseMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869F0, &qword_2437EE7D0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v71 = v5;
  v72 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_2();
  v70 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869F8, &qword_2437EE7D8);
  v11 = OUTLINED_FUNCTION_0(v10);
  v68 = v12;
  v69 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_2();
  v67 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A00, &qword_2437EE7E0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v65 = v19;
  v66 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_2();
  v64 = v23;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  OUTLINED_FUNCTION_1_0(v62);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A08, &qword_2437EE7E8);
  OUTLINED_FUNCTION_0(v63);
  v61 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_22_2();
  v34 = OUTLINED_FUNCTION_1_0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = (&v60 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A10, &qword_2437EE7F0);
  OUTLINED_FUNCTION_0(v39);
  v74 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v43);
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437CF10C();
  sub_2437EBB04();
  OUTLINED_FUNCTION_0_6();
  sub_2437D0B68(v73, v38, v45);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2437CE3C4(v38, v28);
      LOBYTE(v75) = 1;
      sub_2437CF25C();
      v56 = v64;
      OUTLINED_FUNCTION_12_2();
      sub_2437D0150(&qword_27ED86A20);
      v57 = v66;
      sub_2437EB9D4();
      (*(v65 + 8))(v56, v57);
      sub_2437B47C4(v28, &qword_27ED869E0, &qword_2437EE7C0);
      v58 = OUTLINED_FUNCTION_19_3();
      return v59(v58);
    case 2u:
      v48 = *v38;
      LOBYTE(v75) = 2;
      sub_2437CF1B4();
      v49 = v67;
      OUTLINED_FUNCTION_12_2();
      v75 = v48;
      sub_2437CF208();
      v50 = v69;
      sub_2437EB9D4();
      v51 = v68;
      goto LABEL_5;
    case 3u:
      v52 = *v38;
      LOBYTE(v75) = 3;
      sub_2437CF160();
      v49 = v70;
      OUTLINED_FUNCTION_12_2();
      v75 = v52;
      sub_2437B53D8();
      v50 = v72;
      sub_2437EB9D4();
      v51 = v71;
LABEL_5:
      (*(v51 + 8))(v49, v50);
      goto LABEL_6;
    default:
      v46 = *v38;
      LOBYTE(v75) = 0;
      sub_2437CF2B0();
      sub_2437EB994();
      v75 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A28, &qword_2437EE7F8);
      sub_2437D01A0(&qword_27ED86A30, &qword_27ED86A38);
      v47 = v63;
      sub_2437EB9D4();
      (*(v61 + 8))(v1, v47);
LABEL_6:
      v53 = OUTLINED_FUNCTION_19_3();
      v54(v53);
  }
}

unint64_t sub_2437CF10C()
{
  result = qword_27ED8BF70;
  if (!qword_27ED8BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8BF70);
  }

  return result;
}

unint64_t sub_2437CF160()
{
  result = qword_27ED8BF78;
  if (!qword_27ED8BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8BF78);
  }

  return result;
}

unint64_t sub_2437CF1B4()
{
  result = qword_27ED8BF80;
  if (!qword_27ED8BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8BF80);
  }

  return result;
}

unint64_t sub_2437CF208()
{
  result = qword_27ED86A18;
  if (!qword_27ED86A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86A18);
  }

  return result;
}

unint64_t sub_2437CF25C()
{
  result = qword_27ED8BF88;
  if (!qword_27ED8BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8BF88);
  }

  return result;
}

unint64_t sub_2437CF2B0()
{
  result = qword_27ED8BF90[0];
  if (!qword_27ED8BF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8BF90);
  }

  return result;
}

uint64_t UploadResponseMessage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  OUTLINED_FUNCTION_1_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for UploadResponseMessage();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_0_6();
  sub_2437D0B68(v2, v15, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2437CE3C4(v15, v9);
      MEMORY[0x245D40160](1);
      sub_2437CF53C();
      sub_2437EB6D4();
      return sub_2437B47C4(v9, &qword_27ED869E0, &qword_2437EE7C0);
    case 2u:
      v18 = *v15;
      MEMORY[0x245D40160](2);
      v22 = v18;
      sub_2437CF4E8();
      goto LABEL_5;
    case 3u:
      v19 = *v15;
      MEMORY[0x245D40160](3);
      v22 = v19;
      sub_2437B5668();
LABEL_5:
      sub_2437EB6D4();

    default:
      v17 = *v15;
      MEMORY[0x245D40160](0);
      sub_2437CFF9C(a1, v17);
  }
}

unint64_t sub_2437CF4E8()
{
  result = qword_27ED86A40;
  if (!qword_27ED86A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86A40);
  }

  return result;
}

unint64_t sub_2437CF53C()
{
  result = qword_27ED86A48;
  if (!qword_27ED86A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED869E0, &qword_2437EE7C0);
    sub_2437D0BC8(&qword_27ED86648, type metadata accessor for Asset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86A48);
  }

  return result;
}

uint64_t UploadResponseMessage.hashValue.getter()
{
  sub_2437EBA94();
  UploadResponseMessage.hash(into:)(v1);
  return sub_2437EBAD4();
}

uint64_t UploadResponseMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A50, &qword_2437EE800);
  OUTLINED_FUNCTION_0(v109);
  v104 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_2();
  v108 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A58, &qword_2437EE808);
  v12 = OUTLINED_FUNCTION_0(v11);
  v102 = v13;
  v103 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_2();
  v107 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A60, &qword_2437EE810);
  v19 = OUTLINED_FUNCTION_0(v18);
  v100 = v20;
  v101 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_2();
  v106 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A68, &qword_2437EE818);
  v26 = OUTLINED_FUNCTION_0(v25);
  v98 = v27;
  v99 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_2();
  v105 = v31;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A70, &unk_2437EE820);
  OUTLINED_FUNCTION_0(v113);
  v111 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v35);
  v112 = OUTLINED_FUNCTION_22_2();
  v36 = OUTLINED_FUNCTION_1_0(v112);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_15_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_2();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v93 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v93 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v93 - v47;
  v50 = a1[3];
  v49 = a1[4];
  v114 = a1;
  v51 = OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_2437CF10C();
  v53 = v115;
  sub_2437EBAF4();
  if (v53)
  {
    return __swift_destroy_boxed_opaque_existential_1(v114);
  }

  v94 = v3;
  v96 = v2;
  v97 = v43;
  v95 = v46;
  v115 = v48;
  v55 = v112;
  v54 = v113;
  v56 = sub_2437EB974();
  v60 = sub_2437B5F3C(v56, 0);
  if (v58 == v59 >> 1)
  {
    goto LABEL_7;
  }

  v93 = 0;
  if (v58 >= (v59 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2437CFF14);
  }

  v61 = *(v57 + v58);
  sub_2437B5F84(v58 + 1, v59 >> 1, v60, v57, v58, v59);
  v63 = v62;
  v65 = v64;
  swift_unknownObjectRelease();
  if (v63 != v65 >> 1)
  {
LABEL_7:
    v66 = v54;
    v67 = sub_2437EB8C4();
    swift_allocError();
    v69 = v68;
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40) + 48);
    *v69 = v55;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D84160], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v111 + 8))(v4, v66);
    return __swift_destroy_boxed_opaque_existential_1(v114);
  }

  switch(v61)
  {
    case 1:
      LOBYTE(v116) = 1;
      sub_2437CF25C();
      OUTLINED_FUNCTION_7_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
      sub_2437D0150(&qword_27ED86A80);
      v72 = v97;
      sub_2437EB954();
      swift_unknownObjectRelease();
      v86 = OUTLINED_FUNCTION_5_2();
      v87(v86);
      v88 = OUTLINED_FUNCTION_4_5();
      v89(v88);
      swift_storeEnumTagMultiPayload();
      sub_2437D0098(v72, v115);
      v90 = v114;
      goto LABEL_13;
    case 2:
      LOBYTE(v116) = 2;
      sub_2437CF1B4();
      OUTLINED_FUNCTION_7_4();
      sub_2437D00FC();
      OUTLINED_FUNCTION_23_1();
      swift_unknownObjectRelease();
      v73 = OUTLINED_FUNCTION_5_2();
      v74(v73);
      v75 = OUTLINED_FUNCTION_17_4();
      v76(v75);
      v85 = v94;
      OUTLINED_FUNCTION_16_4(v116);
      goto LABEL_12;
    case 3:
      LOBYTE(v116) = 3;
      sub_2437CF160();
      OUTLINED_FUNCTION_7_4();
      sub_2437B6000();
      OUTLINED_FUNCTION_23_1();
      swift_unknownObjectRelease();
      v77 = OUTLINED_FUNCTION_5_2();
      v78(v77);
      v79 = OUTLINED_FUNCTION_17_4();
      v80(v79);
      v85 = v96;
      OUTLINED_FUNCTION_16_4(v116);
      goto LABEL_12;
    default:
      LOBYTE(v116) = 0;
      sub_2437CF2B0();
      OUTLINED_FUNCTION_7_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A28, &qword_2437EE7F8);
      sub_2437D01A0(&qword_27ED86A88, &qword_27ED86A90);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v81 = OUTLINED_FUNCTION_5_2();
      v82(v81);
      v83 = OUTLINED_FUNCTION_4_5();
      v84(v83);
      v85 = v95;
      OUTLINED_FUNCTION_16_4(v116);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_2437D0098(v85, v115);
      v90 = v114;
LABEL_13:
      v91 = OUTLINED_FUNCTION_18_2();
      sub_2437D0098(v91, v92);
      result = __swift_destroy_boxed_opaque_existential_1(v90);
      break;
  }

  return result;
}

uint64_t sub_2437CFF2C()
{
  sub_2437EBA94();
  UploadResponseMessage.hash(into:)(v1);
  return sub_2437EBAD4();
}

uint64_t sub_2437CFF9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for AssetSkeleton() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_2437D0BC8(&qword_27ED86AB0, type metadata accessor for AssetSkeleton);
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

uint64_t sub_2437D0098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadResponseMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2437D00FC()
{
  result = qword_27ED86A78;
  if (!qword_27ED86A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86A78);
  }

  return result;
}

uint64_t sub_2437D0150(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED869E0, &qword_2437EE7C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437D01A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86A28, &qword_2437EE7F8);
    sub_2437D0BC8(a2, type metadata accessor for AssetSkeleton);
    OUTLINED_FUNCTION_18_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2437D0280()
{
  sub_2437D0310();
  if (v0 <= 0x3F)
  {
    sub_2437D0368();
    if (v1 <= 0x3F)
    {
      sub_2437B62E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2437D0310()
{
  if (!qword_27ED86AA0)
  {
    type metadata accessor for AssetSkeleton();
    v0 = sub_2437EB754();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED86AA0);
    }
  }
}

void sub_2437D0368()
{
  if (!qword_27ED86AA8)
  {
    type metadata accessor for Asset(255);
    sub_2437D0BC8(&qword_27ED86658, type metadata accessor for Asset);
    sub_2437D0BC8(&qword_27ED86628, type metadata accessor for Asset);
    v0 = type metadata accessor for XPCResult();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED86AA8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for UploadResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437D0500);
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

_BYTE *_s18CloudAssetsCommons21UploadResponseMessageO16SignalCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2437D0608);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437D0644()
{
  result = qword_27ED8C2B0[0];
  if (!qword_27ED8C2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8C2B0);
  }

  return result;
}

unint64_t sub_2437D069C()
{
  result = qword_27ED8C4C0[0];
  if (!qword_27ED8C4C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8C4C0);
  }

  return result;
}

unint64_t sub_2437D06F4()
{
  result = qword_27ED8C6D0[0];
  if (!qword_27ED8C6D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8C6D0);
  }

  return result;
}

unint64_t sub_2437D074C()
{
  result = qword_27ED8C8E0[0];
  if (!qword_27ED8C8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8C8E0);
  }

  return result;
}

unint64_t sub_2437D07A4()
{
  result = qword_27ED8CAF0;
  if (!qword_27ED8CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CAF0);
  }

  return result;
}

unint64_t sub_2437D07FC()
{
  result = qword_27ED8CC00;
  if (!qword_27ED8CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CC00);
  }

  return result;
}

unint64_t sub_2437D0854()
{
  result = qword_27ED8CC08[0];
  if (!qword_27ED8CC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CC08);
  }

  return result;
}

unint64_t sub_2437D08AC()
{
  result = qword_27ED8CC90;
  if (!qword_27ED8CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CC90);
  }

  return result;
}

unint64_t sub_2437D0904()
{
  result = qword_27ED8CC98[0];
  if (!qword_27ED8CC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CC98);
  }

  return result;
}

unint64_t sub_2437D095C()
{
  result = qword_27ED8CD20;
  if (!qword_27ED8CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CD20);
  }

  return result;
}

unint64_t sub_2437D09B4()
{
  result = qword_27ED8CD28[0];
  if (!qword_27ED8CD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CD28);
  }

  return result;
}

unint64_t sub_2437D0A0C()
{
  result = qword_27ED8CDB0;
  if (!qword_27ED8CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CDB0);
  }

  return result;
}

unint64_t sub_2437D0A64()
{
  result = qword_27ED8CDB8[0];
  if (!qword_27ED8CDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CDB8);
  }

  return result;
}

unint64_t sub_2437D0ABC()
{
  result = qword_27ED8CE40;
  if (!qword_27ED8CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CE40);
  }

  return result;
}

unint64_t sub_2437D0B14()
{
  result = qword_27ED8CE48[0];
  if (!qword_27ED8CE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CE48);
  }

  return result;
}

uint64_t sub_2437D0B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2437D0BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2437D0C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_2437EB904();
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_2437EB994();
}

uint64_t OUTLINED_FUNCTION_21_1()
{
  *(v3 - 96) = *(v0 + v1);
  *(v3 - 88) = v2;
  return v3 - 88;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return type metadata accessor for UploadResponseMessage();
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_2437EB954();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t XPCAsyncSequenceRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2437EB3B4();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t XPCAsyncSequenceRequest.data.getter()
{
  v1 = v0 + *(type metadata accessor for XPCAsyncSequenceRequest() + 20);
  v2 = *v1;
  sub_2437B6C6C(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for XPCAsyncSequenceRequest()
{
  result = qword_27ED8D060;
  if (!qword_27ED8D060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437D0ECC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2437EBA14() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_2437D0F8C(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2437D0FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437D0ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437D0FE8(uint64_t a1)
{
  sub_2437D1220();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437D1024(uint64_t a1)
{
  sub_2437D1220();

  return MEMORY[0x2821FE720](a1);
}

uint64_t XPCAsyncSequenceRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AC0, &qword_2437EEEE0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437D1220();
  sub_2437EBB04();
  LOBYTE(v18) = 0;
  sub_2437EB3B4();
  sub_2437D16EC(&qword_27ED86590);
  sub_2437EB9D4();
  if (!v2)
  {
    v14 = (v3 + *(type metadata accessor for XPCAsyncSequenceRequest() + 20));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 1;
    sub_2437B6C6C(v18, v15);
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v18, v19);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2437D1220()
{
  result = qword_27ED8CED0[0];
  if (!qword_27ED8CED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CED0);
  }

  return result;
}

uint64_t XPCAsyncSequenceRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v35 = sub_2437EB3B4();
  v4 = OUTLINED_FUNCTION_0(v35);
  v32 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AC8, &qword_2437EEEE8);
  v33 = OUTLINED_FUNCTION_0(v10);
  v34 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v33);
  v14 = type metadata accessor for XPCAsyncSequenceRequest();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437D1220();
  sub_2437EBAF4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v14;
  v21 = v32;
  LOBYTE(v36) = 0;
  sub_2437D16EC(&qword_27ED865D8);
  v22 = v35;
  sub_2437EB954();
  v23 = *(v21 + 32);
  v29 = v19;
  v23(v19, v9, v22);
  v37 = 1;
  sub_2437BAD3C();
  sub_2437EB954();
  v24 = OUTLINED_FUNCTION_1_7();
  v25(v24);
  v26 = v29;
  *&v29[*(v30 + 20)] = v36;
  sub_2437D157C(v26, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2437D15E0(v26);
}

uint64_t sub_2437D157C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437D15E0(uint64_t a1)
{
  v2 = type metadata accessor for XPCAsyncSequenceRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437D163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for XPCAsyncSequenceRequest();
  v11 = (a4 + *(result + 20));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t sub_2437D16EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2437EB3B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437D1778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2437EB3B4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v8) & 0xC) != 0)
    {
      return 16 - ((4 * v8) & 0xC | (v8 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2437D184C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v9[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_2437D1904()
{
  result = sub_2437EB3B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437D1A44);
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

unint64_t sub_2437D1A80()
{
  result = qword_27ED8D170[0];
  if (!qword_27ED8D170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8D170);
  }

  return result;
}

unint64_t sub_2437D1AD8()
{
  result = qword_27ED8D280;
  if (!qword_27ED8D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8D280);
  }

  return result;
}

unint64_t sub_2437D1B30()
{
  result = qword_27ED8D288[0];
  if (!qword_27ED8D288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8D288);
  }

  return result;
}

uint64_t sub_2437D1B98()
{
  sub_2437D250C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437D1BD0()
{
  sub_2437D250C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Asset.ID.partition.getter()
{
  OUTLINED_FUNCTION_13();
  v0 = sub_2437EB334();
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_22();

  return v4(v3);
}

uint64_t Asset.ID.storageLocation.getter()
{
  v2 = sub_2437EB2B4();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_48_0();
  v9 = (v0 + v8);
  v11 = *v9;
  v12 = v9[1];
  (*(v5 + 104))(v1, *MEMORY[0x277CC91D8], v2);
  sub_2437BBEF4();

  sub_2437EB324();
  (*(v5 + 8))(v1, v2);
}

uint64_t Asset.ID.ownerID.getter()
{
  OUTLINED_FUNCTION_48_0();
  v2 = (v0 + v1);
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.ID.signature.getter()
{
  v1 = (v0 + *(type metadata accessor for Asset.ID(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v4, v5);
  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.ID.referenceSignature.getter()
{
  v1 = (v0 + *(type metadata accessor for Asset.ID(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v4, v5);
  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.ID.init(protobufRepresentation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866A0, &unk_2437EC990);
  OUTLINED_FUNCTION_48(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_0();
  v10 = sub_2437EB334();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_38_0();
  v16 = *a1;
  v17 = a1[1];
  sub_2437EB304();
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
  {
    sub_2437D2050(v2);
    sub_2437BF6BC();
    swift_allocError();
    *v18 = 0xD000000000000027;
    v18[1] = 0x80000002437F3290;
    swift_willThrow();
    OUTLINED_FUNCTION_3_5();
    return sub_2437D3848();
  }

  else
  {
    v20 = *(v13 + 32);
    v20(v3, v2, v10);
    v20(a2, v3, v10);
    v22 = a1[2];
    v21 = a1[3];
    v23 = type metadata accessor for Asset.ID(0);
    v24 = (a2 + v23[5]);
    *v24 = v22;
    v24[1] = v21;
    v25 = a1[4];
    v26 = a1[5];
    v27 = (a2 + v23[6]);
    *v27 = v25;
    v27[1] = v26;
    v28 = a1[6];
    v29 = a1[7];

    sub_2437B6C6C(v25, v26);
    v30 = OUTLINED_FUNCTION_25_0();
    sub_2437B6C6C(v30, v31);
    OUTLINED_FUNCTION_3_5();
    result = sub_2437D3848();
    v32 = (a2 + v23[7]);
    *v32 = v28;
    v32[1] = v29;
  }

  return result;
}

uint64_t sub_2437D2050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866A0, &unk_2437EC990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Asset.ID.init(storageLocation:signature:referenceSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2437EB2E4();
  v12 = sub_2437EB2D4();
  v14 = v13;
  v15 = sub_2437EB334();
  OUTLINED_FUNCTION_1_0(v15);
  (*(v16 + 8))(a1);
  result = OUTLINED_FUNCTION_48_0();
  v19 = (a6 + v18);
  *v19 = v12;
  v19[1] = v14;
  v20 = (a6 + *(result + 24));
  *v20 = a2;
  v20[1] = a3;
  v21 = (a6 + *(result + 28));
  *v21 = a4;
  v21[1] = a5;
  return result;
}

uint64_t Asset.ID.init(partitionURL:ownerID:signature:referenceSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_2437EB334();
  OUTLINED_FUNCTION_1_0(v16);
  (*(v17 + 32))(a8, a1);
  result = OUTLINED_FUNCTION_48_0();
  v20 = (a8 + v19);
  *v20 = a2;
  v20[1] = a3;
  v21 = (a8 + *(result + 24));
  *v21 = a4;
  v21[1] = a5;
  v22 = (a8 + *(result + 28));
  *v22 = a6;
  v22[1] = a7;
  return result;
}

void Asset.ID.init(from:)()
{
  OUTLINED_FUNCTION_14_3();
  v44 = v0;
  v3 = v2;
  v41 = v4;
  v5 = type metadata accessor for Asset.ID(0);
  v6 = OUTLINED_FUNCTION_48(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v42 = v10 - v9;
  OUTLINED_FUNCTION_35();
  v11 = sub_2437EB444();
  v12 = OUTLINED_FUNCTION_48(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  v15 = type metadata accessor for CloudAssets_Asset.ID(0);
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_32_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AD0, &qword_2437EF0C8);
  OUTLINED_FUNCTION_0(v25);
  v43 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_38_0();
  v31 = v3[3];
  v30 = v3[4];
  v45 = v3;
  OUTLINED_FUNCTION_46_0();
  sub_2437D250C();
  v32 = v44;
  sub_2437EBAF4();
  if (!v32)
  {
    v44 = v21;
    v33 = v43;
    sub_2437BAD3C();
    sub_2437EB954();
    v40 = v1;
    OUTLINED_FUNCTION_15_4();
    sub_2437EB434();
    OUTLINED_FUNCTION_22_3();
    sub_2437D29DC(v34, v35);
    sub_2437EB514();
    OUTLINED_FUNCTION_21_2();
    v36 = v24;
    v37 = v44;
    sub_2437D35C8(v36, v44);
    v38 = v42;
    Asset.ID.init(protobufRepresentation:)(v37, v42);
    OUTLINED_FUNCTION_3_5();
    sub_2437D3848();
    (*(v33 + 8))(v40, v25);
    OUTLINED_FUNCTION_5_3();
    sub_2437D3D74(v38, v41);
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  OUTLINED_FUNCTION_15_1();
}

unint64_t sub_2437D250C()
{
  result = qword_27ED86AD8;
  if (!qword_27ED86AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86AD8);
  }

  return result;
}

uint64_t Asset.ID.protobufRepresentation()@<X0>(uint64_t *a1@<X8>)
{
  CloudAssets_Asset.ID.init()(a1);
  v3 = sub_2437EB2C4();
  v5 = v4;
  v6 = a1[1];

  *a1 = v3;
  a1[1] = v5;
  OUTLINED_FUNCTION_14_4();
  v8 = (v1 + v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = a1[3];

  a1[2] = v10;
  a1[3] = v9;
  v12 = (v1 + *(v3 + 24));
  v13 = *v12;
  v14 = v12[1];
  v15 = a1[4];
  v16 = a1[5];
  sub_2437B6C6C(*v12, v14);
  v17 = OUTLINED_FUNCTION_24_1();
  sub_2437B7168(v17, v18);
  a1[4] = v13;
  a1[5] = v14;
  v19 = (v1 + *(v3 + 28));
  v20 = *v19;
  v21 = v19[1];
  v22 = a1[6];
  v23 = a1[7];
  sub_2437B6C6C(*v19, v21);
  result = sub_2437B7168(v22, v23);
  a1[6] = v20;
  a1[7] = v21;
  return result;
}

void Asset.ID.encode(to:)()
{
  OUTLINED_FUNCTION_14_3();
  v44 = v1;
  v4 = v0;
  v5 = OUTLINED_FUNCTION_34();
  v6 = type metadata accessor for CloudAssets_Asset.ID(v5);
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AE0, &qword_2437EF0D0);
  OUTLINED_FUNCTION_0(v45);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_0();
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  OUTLINED_FUNCTION_46_0();
  sub_2437D250C();
  sub_2437EBB04();
  CloudAssets_Asset.ID.init()(v2);
  v15 = sub_2437EB2C4();
  v17 = v16;
  v18 = v2[1];

  *v2 = v15;
  v2[1] = v17;
  v19 = type metadata accessor for Asset.ID(0);
  v20 = (v4 + v19[5]);
  v21 = *v20;
  v22 = v20[1];
  v23 = v2[3];

  v2[2] = v21;
  v2[3] = v22;
  v24 = (v4 + v19[6]);
  v25 = *v24;
  v26 = v24[1];
  v28 = v2[4];
  v27 = v2[5];
  sub_2437B6C6C(*v24, v26);
  sub_2437B7168(v28, v27);
  v2[4] = v25;
  v2[5] = v26;
  v29 = (v4 + v19[7]);
  v30 = *v29;
  v31 = v29[1];
  v32 = v2[6];
  v33 = v2[7];
  v34 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v34, v35);
  sub_2437B7168(v32, v33);
  v2[6] = v30;
  v2[7] = v31;
  OUTLINED_FUNCTION_22_3();
  sub_2437D29DC(v36, v37);
  v38 = sub_2437EB504();
  if (v44)
  {
    OUTLINED_FUNCTION_45();
    v40(v3, v45);
    OUTLINED_FUNCTION_3_5();
    sub_2437D3848();
  }

  else
  {
    v41 = v38;
    v42 = v39;
    OUTLINED_FUNCTION_3_5();
    sub_2437D3848();
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v41, v42);
    OUTLINED_FUNCTION_45();
    v43(v3, v45);
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_15_1();
}

uint64_t static Asset.ID.== infix(_:_:)()
{
  if (sub_2437EB2F4())
  {
    OUTLINED_FUNCTION_14_4();
    v2 = OUTLINED_FUNCTION_17_0(v1);
    v6 = v2 == v5 && v3 == v4;
    if (v6 || (sub_2437EBA14() & 1) != 0)
    {
      v7 = OUTLINED_FUNCTION_17_0(*(v0 + 24));
      if (MEMORY[0x245D3FA00](v7))
      {
        OUTLINED_FUNCTION_17_0(*(v0 + 28));

        JUMPOUT(0x245D3FA00);
      }
    }
  }

  return 0;
}

uint64_t Asset.ID.hash(into:)()
{
  OUTLINED_FUNCTION_55();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  sub_2437D29DC(v0, v1);
  OUTLINED_FUNCTION_33_1();
  sub_2437EB6D4();
  v2 = type metadata accessor for Asset.ID(0);
  OUTLINED_FUNCTION_12_3(v2);
  sub_2437EB724();
  OUTLINED_FUNCTION_13_4(*(v2 + 24));
  sub_2437EB354();
  OUTLINED_FUNCTION_13_4(*(v2 + 28));

  return sub_2437EB354();
}

uint64_t sub_2437D29DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Asset.ID.hashValue.getter()
{
  OUTLINED_FUNCTION_18_0();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  v2 = sub_2437D29DC(v0, v1);
  OUTLINED_FUNCTION_43_0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_2437EB6D4();
  v10 = type metadata accessor for Asset.ID(0);
  OUTLINED_FUNCTION_9_5(v10[5]);
  sub_2437EB724();
  OUTLINED_FUNCTION_9_5(v10[6]);
  sub_2437EB354();
  OUTLINED_FUNCTION_9_5(v10[7]);
  sub_2437EB354();
  return sub_2437EBAD4();
}

uint64_t sub_2437D2AC8(uint64_t a1, int *a2)
{
  sub_2437EBA94();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  v5 = sub_2437D29DC(v3, v4);
  OUTLINED_FUNCTION_43_0(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_2437EB6D4();
  OUTLINED_FUNCTION_9_5(a2[5]);
  sub_2437EB724();
  OUTLINED_FUNCTION_9_5(a2[6]);
  sub_2437EB354();
  OUTLINED_FUNCTION_9_5(a2[7]);
  sub_2437EB354();
  return sub_2437EBAD4();
}

uint64_t sub_2437D2B9C()
{
  sub_2437D2F50();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437D2BD4()
{
  sub_2437D2F50();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Asset.Protector.securityKey.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.Protector.privacyKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.Protector.init(protobufRepresentation:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  *a2 = v4;
  a2[1] = v5;
  v7 = a1[3];
  sub_2437B6C6C(v4, v5);
  v8 = OUTLINED_FUNCTION_29_1();
  sub_2437B6C6C(v8, v9);
  OUTLINED_FUNCTION_0_7();
  result = sub_2437D3848();
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t Asset.Protector.init(securityKey:privacyKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void Asset.Protector.init(from:)()
{
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v28 = v4;
  v5 = sub_2437EB444();
  v6 = OUTLINED_FUNCTION_48(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v9 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_38_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AE8, &qword_2437EF0D8);
  OUTLINED_FUNCTION_0(v29);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v17);
  v18 = v3[4];
  v30 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2437D2F50();
  sub_2437EBAF4();
  if (!v0)
  {
    sub_2437BAD3C();
    sub_2437EB954();
    OUTLINED_FUNCTION_15_4();
    sub_2437EB434();
    OUTLINED_FUNCTION_20_3();
    sub_2437D29DC(v19, v20);
    sub_2437EB514();
    v21 = *(v14 + 8);
    v22 = OUTLINED_FUNCTION_28();
    v23(v22);
    v24 = *v1;
    v25 = v1[1];
    v26 = v1[2];
    v27 = v1[3];
    sub_2437B6C6C(v24, v25);
    sub_2437B6C6C(v26, v27);
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
    *v28 = v24;
    v28[1] = v25;
    v28[2] = v26;
    v28[3] = v27;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_15_1();
}

unint64_t sub_2437D2F50()
{
  result = qword_27ED86AF0;
  if (!qword_27ED86AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86AF0);
  }

  return result;
}

uint64_t Asset.Protector.protobufRepresentation()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = OUTLINED_FUNCTION_29_1();
  sub_2437B6C6C(v7, v8);
  sub_2437B6C6C(v6, v5);
  CloudAssets_Asset.Protector.init()(a1);
  sub_2437B7168(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v4;
  result = sub_2437B7168(*(a1 + 16), *(a1 + 24));
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  return result;
}

void Asset.Protector.encode(to:)()
{
  OUTLINED_FUNCTION_14_3();
  v4 = v3;
  v30 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v5 = OUTLINED_FUNCTION_1_0(v30);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AF8, &qword_2437EF0E0);
  OUTLINED_FUNCTION_0(v34);
  v31 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  v12 = *v0;
  v13 = v0[1];
  v15 = v0[2];
  v14 = v0[3];
  v17 = v4[3];
  v16 = v4[4];
  v18 = v4;
  v20 = &v29 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_2437D2F50();
  sub_2437EBB04();
  sub_2437B6C6C(v12, v13);
  sub_2437B6C6C(v15, v14);
  CloudAssets_Asset.Protector.init()(v2);
  sub_2437B7168(*v2, *(v2 + 8));
  *v2 = v12;
  *(v2 + 8) = v13;
  sub_2437B7168(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = v15;
  *(v2 + 24) = v14;
  OUTLINED_FUNCTION_20_3();
  sub_2437D29DC(v21, v22);
  v23 = sub_2437EB504();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    v25(v20, v34);
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
  }

  else
  {
    v26 = v23;
    v27 = v24;
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
    v32 = v26;
    v33 = v27;
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v32, v33);
    OUTLINED_FUNCTION_45();
    v28(v20, v34);
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_15_1();
}

uint64_t static Asset.Protector.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (MEMORY[0x245D3FA00](*a1, a1[1], *a2, a2[1]))
  {
    OUTLINED_FUNCTION_22();

    JUMPOUT(0x245D3FA00);
  }

  return 0;
}

uint64_t Asset.Protector.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2437EB354();

  return sub_2437EB354();
}

uint64_t Asset.Protector.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_18_0();
  sub_2437EB354();
  sub_2437EB354();
  return sub_2437EBAD4();
}

uint64_t sub_2437D3368()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2437EBA94();
  sub_2437EB354();
  sub_2437EB354();
  return sub_2437EBAD4();
}

uint64_t sub_2437D3400(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6675626F746F7270 && a2 == 0xEC00000061746144)
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

uint64_t sub_2437D34A0()
{
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x245D40160](0);
  return sub_2437EBAD4();
}

uint64_t sub_2437D34F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437D3400(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437D3524()
{
  sub_2437D3D20();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437D355C()
{
  sub_2437D3D20();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437D35C8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t Asset.protector.getter()
{
  v2 = OUTLINED_FUNCTION_13();
  v3 = (v1 + *(type metadata accessor for Asset(v2) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  sub_2437B6C6C(v4, v5);

  return sub_2437B6C6C(v6, v7);
}

uint64_t Asset.init(protobufRepresentation:)(uint64_t *a1)
{
  v6 = OUTLINED_FUNCTION_13();
  v7 = type metadata accessor for CloudAssets_Asset.Protector(v6);
  v8 = OUTLINED_FUNCTION_48(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  v11 = type metadata accessor for CloudAssets_Asset.ID(0);
  v12 = OUTLINED_FUNCTION_48(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_38_0();
  v15 = type metadata accessor for Asset.ID(0);
  v16 = OUTLINED_FUNCTION_48(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  CloudAssets_Asset.id.getter(v4);
  Asset.ID.init(protobufRepresentation:)(v4, v21);
  if (v2)
  {
    OUTLINED_FUNCTION_2_5();
    return sub_2437D3848();
  }

  else
  {
    OUTLINED_FUNCTION_5_3();
    sub_2437D3D74(v21, v1);
    CloudAssets_Asset.protector.getter(v3);
    v23 = *v3;
    v24 = v3[1];
    v25 = v3[2];
    v26 = v3[3];
    v27 = OUTLINED_FUNCTION_24_1();
    sub_2437B6C6C(v27, v28);
    v29 = OUTLINED_FUNCTION_25_0();
    sub_2437B6C6C(v29, v30);
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
    v31 = type metadata accessor for Asset(0);
    v32 = (v1 + *(v31 + 20));
    *v32 = v23;
    v32[1] = v24;
    v32[2] = v25;
    v32[3] = v26;
    v33 = *a1;
    OUTLINED_FUNCTION_2_5();
    result = sub_2437D3848();
    *(v1 + *(v31 + 24)) = v33;
  }

  return result;
}

uint64_t sub_2437D3848()
{
  v1 = OUTLINED_FUNCTION_55();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

__n128 Asset.init(id:protector:size:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_5_3();
  sub_2437D3D74(v6, v7);
  v8 = type metadata accessor for Asset(0);
  v9 = (a3 + *(v8 + 20));
  result = *a1;
  v11 = *(a1 + 16);
  *v9 = *a1;
  v9[1] = v11;
  *(a3 + *(v8 + 24)) = a2;
  return result;
}

void Asset.init(from:)()
{
  OUTLINED_FUNCTION_14_3();
  v4 = v3;
  v56 = v5;
  v6 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v7 = OUTLINED_FUNCTION_48(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v55 = (v11 - v10);
  v12 = OUTLINED_FUNCTION_35();
  v13 = type metadata accessor for CloudAssets_Asset.ID(v12);
  v14 = OUTLINED_FUNCTION_48(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  v58 = (v18 - v17);
  v19 = OUTLINED_FUNCTION_35();
  v20 = type metadata accessor for Asset.ID(v19);
  v21 = OUTLINED_FUNCTION_48(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v57 = v25 - v24;
  OUTLINED_FUNCTION_35();
  v26 = sub_2437EB444();
  v27 = OUTLINED_FUNCTION_48(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  v30 = OUTLINED_FUNCTION_35();
  v59 = type metadata accessor for CloudAssets_Asset(v30);
  v31 = OUTLINED_FUNCTION_1_0(v59);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_39_0();
  v34 = type metadata accessor for Asset(0);
  v35 = OUTLINED_FUNCTION_1_0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B00, &qword_2437EF0E8);
  OUTLINED_FUNCTION_0(v41);
  v61 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_27_1();
  v46 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2437D3D20();
  sub_2437EBAF4();
  if (!v0)
  {
    v62 = v40;
    sub_2437BAD3C();
    sub_2437EB954();
    v54 = v1;
    OUTLINED_FUNCTION_15_4();
    sub_2437EB434();
    OUTLINED_FUNCTION_19_4();
    sub_2437D29DC(v47, v48);
    sub_2437EB514();
    CloudAssets_Asset.id.getter(v58);
    Asset.ID.init(protobufRepresentation:)(v58, v57);
    OUTLINED_FUNCTION_5_3();
    sub_2437D3D74(v57, v40);
    CloudAssets_Asset.protector.getter(v55);
    v49 = *v55;
    v60 = v55[1];
    v50 = v55[2];
    v51 = v55[3];
    sub_2437B6C6C(*v55, v60);
    sub_2437B6C6C(v50, v51);
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
    v52 = (v62 + *(v34 + 20));
    *v52 = v49;
    v52[1] = v60;
    v52[2] = v50;
    v52[3] = v51;
    v53 = *v2;
    OUTLINED_FUNCTION_2_5();
    sub_2437D3848();
    *(v62 + *(v34 + 24)) = v53;
    (*(v61 + 8))(v54, v41);
    sub_2437D3D74(v62, v56);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_15_1();
}

unint64_t sub_2437D3D20()
{
  result = qword_27ED86B08;
  if (!qword_27ED86B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B08);
  }

  return result;
}

uint64_t sub_2437D3D74(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t Asset.protobufRepresentation()()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_13();
  v4 = type metadata accessor for CloudAssets_Asset.Protector(v3);
  v5 = OUTLINED_FUNCTION_48(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_1();
  v55 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for CloudAssets_Asset.ID(0);
  v14 = OUTLINED_FUNCTION_48(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v17);
  v19 = (&v54 - v18);
  CloudAssets_Asset.ID.init()(&v54 - v18);
  v20 = sub_2437EB2C4();
  v22 = v21;
  v23 = v19[1];

  *v19 = v20;
  v19[1] = v22;
  v24 = type metadata accessor for Asset.ID(0);
  v25 = (v2 + v24[5]);
  v26 = *v25;
  v27 = v25[1];
  v28 = v19[3];

  v19[2] = v26;
  v19[3] = v27;
  v29 = (v2 + v24[6]);
  v30 = *v29;
  v31 = v29[1];
  v33 = v19[4];
  v32 = v19[5];
  v34 = OUTLINED_FUNCTION_25_0();
  sub_2437B6C6C(v34, v35);
  v36 = OUTLINED_FUNCTION_28();
  sub_2437B7168(v36, v37);
  v19[4] = v30;
  v19[5] = v31;
  v38 = (v2 + v24[7]);
  v39 = *v38;
  v40 = v38[1];
  v41 = v19[6];
  v42 = v19[7];
  sub_2437B6C6C(*v38, v40);
  v43 = OUTLINED_FUNCTION_25_0();
  sub_2437B7168(v43, v44);
  v19[6] = v39;
  v19[7] = v40;
  v45 = type metadata accessor for Asset(0);
  v46 = (v2 + *(v45 + 20));
  v47 = *v46;
  v48 = v46[1];
  v49 = v46[2];
  v50 = v46[3];
  sub_2437B6C6C(*v46, v48);
  sub_2437B6C6C(v49, v50);
  CloudAssets_Asset.Protector.init()(v12);
  sub_2437B7168(*v12, *(v12 + 1));
  *v12 = v47;
  *(v12 + 1) = v48;
  sub_2437B7168(*(v12 + 2), *(v12 + 3));
  *(v12 + 2) = v49;
  *(v12 + 3) = v50;
  CloudAssets_Asset.init()(v0);
  OUTLINED_FUNCTION_21_2();
  v51 = OUTLINED_FUNCTION_24_1();
  sub_2437D35C8(v51, v52);
  CloudAssets_Asset.id.setter();
  sub_2437D35C8(v12, v55);
  CloudAssets_Asset.protector.setter();
  OUTLINED_FUNCTION_0_7();
  sub_2437D3848();
  OUTLINED_FUNCTION_3_5();
  result = sub_2437D3848();
  *v0 = *(v2 + *(v45 + 24));
  return result;
}

void Asset.encode(to:)()
{
  OUTLINED_FUNCTION_14_3();
  v3 = OUTLINED_FUNCTION_34();
  v4 = type metadata accessor for CloudAssets_Asset(v3);
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_39_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B10, &qword_2437EF0F0);
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27_1();
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  OUTLINED_FUNCTION_46_0();
  sub_2437D3D20();
  sub_2437EBB04();
  Asset.protobufRepresentation()();
  OUTLINED_FUNCTION_19_4();
  sub_2437D29DC(v16, v17);
  v18 = sub_2437EB504();
  if (v1)
  {
    OUTLINED_FUNCTION_2_5();
    sub_2437D3848();
  }

  else
  {
    v20 = v18;
    v21 = v19;
    OUTLINED_FUNCTION_2_5();
    sub_2437D3848();
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v20, v21);
  }

  (*(v10 + 8))(v2, v8);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_15_1();
}

BOOL static Asset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_2437EB2F4())
  {
    OUTLINED_FUNCTION_14_4();
    v6 = OUTLINED_FUNCTION_17_0(v5);
    v10 = v6 == v9 && v7 == v8;
    if (v10 || (sub_2437EBA14() & 1) != 0)
    {
      v11 = OUTLINED_FUNCTION_17_0(*(v2 + 24));
      if (MEMORY[0x245D3FA00](v11))
      {
        v12 = OUTLINED_FUNCTION_17_0(*(v2 + 28));
        if (MEMORY[0x245D3FA00](v12))
        {
          v51 = type metadata accessor for Asset(0);
          v13 = *(v51 + 20);
          v14 = *(a1 + v13);
          v15 = *(a1 + v13 + 8);
          v16 = *(a1 + v13 + 16);
          v17 = *(a1 + v13 + 24);
          v18 = (a2 + v13);
          v20 = *v18;
          v19 = v18[1];
          v21 = v18[2];
          v22 = v18[3];
          v23 = OUTLINED_FUNCTION_24_1();
          sub_2437B6C6C(v23, v24);
          v25 = OUTLINED_FUNCTION_29_1();
          sub_2437B6C6C(v25, v26);
          v27 = OUTLINED_FUNCTION_28();
          sub_2437B6C6C(v27, v28);
          v29 = OUTLINED_FUNCTION_25_0();
          sub_2437B6C6C(v29, v30);
          v31 = OUTLINED_FUNCTION_24_1();
          if (MEMORY[0x245D3FA00](v31))
          {
            v32 = OUTLINED_FUNCTION_29_1();
            v50 = MEMORY[0x245D3FA00](v32);
            v33 = OUTLINED_FUNCTION_28();
            sub_2437B7168(v33, v34);
            v35 = OUTLINED_FUNCTION_25_0();
            sub_2437B7168(v35, v36);
            v37 = OUTLINED_FUNCTION_24_1();
            sub_2437B7168(v37, v38);
            v39 = OUTLINED_FUNCTION_29_1();
            sub_2437B7168(v39, v40);
            if (v50)
            {
              return *(a1 + *(v51 + 24)) == *(a2 + *(v51 + 24));
            }
          }

          else
          {
            v42 = OUTLINED_FUNCTION_28();
            sub_2437B7168(v42, v43);
            v44 = OUTLINED_FUNCTION_25_0();
            sub_2437B7168(v44, v45);
            v46 = OUTLINED_FUNCTION_24_1();
            sub_2437B7168(v46, v47);
            v48 = OUTLINED_FUNCTION_29_1();
            sub_2437B7168(v48, v49);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t Asset.hash(into:)()
{
  OUTLINED_FUNCTION_55();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  sub_2437D29DC(v1, v2);
  OUTLINED_FUNCTION_33_1();
  sub_2437EB6D4();
  v3 = type metadata accessor for Asset.ID(0);
  OUTLINED_FUNCTION_12_3(v3);
  sub_2437EB724();
  OUTLINED_FUNCTION_13_4(*(v3 + 24));
  sub_2437EB354();
  OUTLINED_FUNCTION_13_4(*(v3 + 28));
  sub_2437EB354();
  v4 = type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_12_3(v4);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_2437EB354();
  sub_2437EB354();
  return MEMORY[0x245D40160](*(v0 + *(v4 + 24)));
}

uint64_t Asset.hashValue.getter()
{
  OUTLINED_FUNCTION_18_0();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  v3 = sub_2437D29DC(v1, v2);
  OUTLINED_FUNCTION_43_0(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18);
  sub_2437EB6D4();
  v11 = type metadata accessor for Asset.ID(0);
  OUTLINED_FUNCTION_9_5(v11[5]);
  sub_2437EB724();
  OUTLINED_FUNCTION_9_5(v11[6]);
  sub_2437EB354();
  OUTLINED_FUNCTION_9_5(v11[7]);
  sub_2437EB354();
  v12 = type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_12_3(v12);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  sub_2437EB354();
  sub_2437EB354();
  MEMORY[0x245D40160](*(v0 + *(v12 + 24)));
  return sub_2437EBAD4();
}

uint64_t sub_2437D4520(uint64_t a1, uint64_t a2)
{
  sub_2437EBA94();
  v4 = sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  v7 = sub_2437D29DC(v5, v6);
  OUTLINED_FUNCTION_43_0(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23);
  sub_2437EB6D4();
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_9_5(v15);
  sub_2437EB724();
  OUTLINED_FUNCTION_9_5(*(v4 + 24));
  sub_2437EB354();
  OUTLINED_FUNCTION_9_5(*(v4 + 28));
  sub_2437EB354();
  v16 = (v2 + *(a2 + 20));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  sub_2437EB354();
  sub_2437EB354();
  MEMORY[0x245D40160](*(v2 + *(a2 + 24)));
  return sub_2437EBAD4();
}

unint64_t sub_2437D45FC()
{
  result = qword_27ED86B18;
  if (!qword_27ED86B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B18);
  }

  return result;
}

unint64_t sub_2437D4654()
{
  result = qword_27ED86B20;
  if (!qword_27ED86B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B20);
  }

  return result;
}

unint64_t sub_2437D46AC()
{
  result = qword_27ED86B28;
  if (!qword_27ED86B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B28);
  }

  return result;
}

unint64_t sub_2437D474C()
{
  result = qword_27ED86B38;
  if (!qword_27ED86B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B38);
  }

  return result;
}

unint64_t sub_2437D47A4()
{
  result = qword_27ED86B40;
  if (!qword_27ED86B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B40);
  }

  return result;
}

unint64_t sub_2437D47FC()
{
  result = qword_27ED86B48;
  if (!qword_27ED86B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B48);
  }

  return result;
}

unint64_t sub_2437D4854()
{
  result = qword_27ED86B50;
  if (!qword_27ED86B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B50);
  }

  return result;
}

unint64_t sub_2437D48AC()
{
  result = qword_27ED86B58;
  if (!qword_27ED86B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B58);
  }

  return result;
}

unint64_t sub_2437D4904()
{
  result = qword_27ED86B60;
  if (!qword_27ED86B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B60);
  }

  return result;
}

unint64_t sub_2437D495C()
{
  result = qword_27ED86B68;
  if (!qword_27ED86B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B68);
  }

  return result;
}

uint64_t sub_2437D4A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_55();
  v7 = type metadata accessor for Asset.ID(v6);
  OUTLINED_FUNCTION_21(v7);
  if (*(v8 + 84) == a2)
  {
    v9 = OUTLINED_FUNCTION_33_1();

    return __swift_getEnumTagSinglePayload(v9, a2, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 20) + 8) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2437D4B08(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_34();
  v9 = type metadata accessor for Asset.ID(v8);
  result = OUTLINED_FUNCTION_21(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = OUTLINED_FUNCTION_40_0();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    v16 = (v4 + *(a4 + 20));
    *v16 = 0;
    v16[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_2437D4BAC()
{
  result = type metadata accessor for Asset.ID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2437D4C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55();
  v6 = sub_2437EB334();
  OUTLINED_FUNCTION_21(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_33_1();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2437D4CFC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_34();
  v8 = sub_2437EB334();
  result = OUTLINED_FUNCTION_21(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_40_0();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2437D4D94()
{
  result = sub_2437EB334();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2437D4E4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2437D4E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_BYTE *sub_2437D4F0C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2437D4FA8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void OUTLINED_FUNCTION_9_5(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t result)
{
  v2 = (v1 + *(result + 20));
  v3 = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  v5 = v3[1];
  return v1;
}

uint64_t OUTLINED_FUNCTION_14_4()
{
  result = type metadata accessor for Asset.ID(0);
  v1 = *(result + 20);
  return result;
}

double OUTLINED_FUNCTION_15_4()
{
  *(v0 - 112) = *(v0 - 96);
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  result = type metadata accessor for Asset.ID(0);
  v1 = *(result + 20);
  return result;
}

uint64_t sub_2437D5220()
{
  v0 = type metadata accessor for ServiceIdentifier();
  __swift_allocate_value_buffer(v0, qword_27ED8E0D0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_8(v1, v2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2437D52A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437D5304()
{
  v0 = type metadata accessor for ServiceIdentifier();
  __swift_allocate_value_buffer(v0, qword_27ED8E0E8);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_8(v1, v2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2437D5384()
{
  v0 = type metadata accessor for ServiceIdentifier();
  __swift_allocate_value_buffer(v0, qword_27ED8E100);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_8(v1, v2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2437D5404()
{
  v0 = type metadata accessor for ServiceIdentifier();
  __swift_allocate_value_buffer(v0, qword_27ED8E118);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_8(v1, v2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2437D5484@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ServiceIdentifier();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_2437D52A0(v6, a3);
}

_BYTE *storeEnumTagSinglePayload for XPCServices(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2437D5580);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t *OUTLINED_FUNCTION_0_8@<X0>(unint64_t *result@<X0>, unint64_t a2@<X8>)
{
  *result = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  result[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return __swift_project_value_buffer(v0, v1);
}

uint64_t sub_2437D5650()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2437EB3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B78, &qword_2437EF7F0);
  OUTLINED_FUNCTION_0_9();
  sub_2437DC1CC(v1, v2);
  *(v0 + 112) = sub_2437EB6B4();
  return v0;
}

void sub_2437D56F4()
{
  OUTLINED_FUNCTION_130();
  v1 = v0;
  v32 = v2;
  v33 = v3;
  v30 = v5;
  v31 = v4;
  v6 = v2;
  v7 = sub_2437EB3B4();
  v29 = v7;
  OUTLINED_FUNCTION_4_7();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v14 = sub_2437EB814();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v28 - v20;
  (*(v17 + 16))(&v28 - v20, v31, v14);
  (*(v9 + 16))(v13, v6, v7);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v9 + 80) + v23 + 8) & ~*(v9 + 80);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v30;
  *(v25 + 24) = v26;
  (*(v17 + 32))(v25 + v22, v21, v14);
  *(v25 + v23) = v1;
  (*(v9 + 32))(v25 + v24, v13, v29);
  OUTLINED_FUNCTION_20_4();

  v27 = *(v1 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v1 + 112);
  sub_2437DB10C(sub_2437D5E38, v25, v32);
  *(v1 + 112) = v34;
  swift_endAccess();
  OUTLINED_FUNCTION_131();
}

void sub_2437D5960()
{
  OUTLINED_FUNCTION_130();
  v32[2] = v0;
  v33 = v1;
  v3 = v2;
  v5 = v4;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_15_5();
  v8 = sub_2437EB7D4();
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v16 = (v5 + *(type metadata accessor for XPCAsyncSequenceResponse() + 20));
  v17 = v16[1];
  if (v17 >> 60 == 11)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_2437EB8A4();

    v34 = 0xD000000000000022;
    v35 = 0x80000002437F3420;
    sub_2437EB3B4();
    OUTLINED_FUNCTION_0_9();
    sub_2437DC1CC(v19, v20);
    v21 = v33;
    v22 = sub_2437EBA04();
    MEMORY[0x245D3FDF0](v22);

    v23 = v34;
    v24 = v35;
    sub_2437DBB6C();
    v25 = OUTLINED_FUNCTION_35_0();
    *v26 = v23;
    v26[1] = v24;
    v34 = v25;
    OUTLINED_FUNCTION_15_5();
    sub_2437EB814();
    sub_2437EB804();
    OUTLINED_FUNCTION_20_4();
    v18 = v21;
  }

  else
  {
    if (v17 >> 60 != 15)
    {
      v32[1] = v3;
      v28 = *v16;
      v29 = sub_2437EB204();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      sub_2437B6C6C(v28, v17);
      sub_2437EB1F4();
      sub_2437EB1E4();

      OUTLINED_FUNCTION_15_5();
      sub_2437EB814();
      sub_2437EB7F4();
      sub_2437DC2E4(v28, v17);
      (*(v10 + 8))(v15, v8);
      goto LABEL_7;
    }

    v34 = 0;
    OUTLINED_FUNCTION_15_5();
    sub_2437EB814();
    sub_2437EB804();
    OUTLINED_FUNCTION_20_4();
    v18 = v33;
  }

  sub_2437DAFAC(v18);
  OUTLINED_FUNCTION_56_0();
  swift_endAccess();
  v27 = OUTLINED_FUNCTION_22();
  sub_2437DC2D4(v27);
LABEL_7:
  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437D5CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_130();
  v13 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v14 = sub_2437EB814();
  OUTLINED_FUNCTION_0(v14);
  v16 = v15;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (*(v18 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = sub_2437EB3B4();
  OUTLINED_FUNCTION_0(v20);
  v22 = v21;
  v23 = (v19 + *(v22 + 80) + 8) & ~*(v22 + 80);
  v25 = *(v24 + 64);
  (*(v16 + 8))(v12 + v17, v14);
  v26 = *(v12 + v19);

  (*(v22 + 8))(v12 + v23, v20);
  OUTLINED_FUNCTION_131();

  return MEMORY[0x2821FE8E8](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

void sub_2437D5E38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v3 = sub_2437EB814();
  OUTLINED_FUNCTION_7_5(v3);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_2437EB3B4();
  OUTLINED_FUNCTION_48(v7);
  v9 = *(v0 + v6);
  v10 = v0 + ((v6 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_2437D5960();
}

uint64_t sub_2437D5F48(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 112);
  if (*(v4 + 16))
  {

    v5 = sub_2437DAD58(a1);
    if (v6)
    {
      v7 = *(v4 + 56) + 16 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);

      v9(a1);
    }

    else
    {
    }
  }

  return result;
}

void sub_2437D5FEC()
{
  OUTLINED_FUNCTION_130();
  v1 = type metadata accessor for XPCAsyncSequenceResponse();
  v2 = OUTLINED_FUNCTION_48(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v34 = sub_2437EB3B4();
  v8 = OUTLINED_FUNCTION_0(v34);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  swift_beginAccess();
  v19 = v0[14];
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v32 = v10 + 32;
  v33 = v10 + 16;
  v35 = v19;

  v25 = 0;
  v31 = xmmword_2437EF7C0;
  while (v23)
  {
    v26 = v25;
LABEL_9:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    (*(v10 + 16))(v18, *(v35 + 48) + *(v10 + 72) * (v27 | (v26 << 6)), v34);
    v28 = *(v10 + 32);
    v29 = OUTLINED_FUNCTION_30_1();
    v30(v29);
    v36 = v31;
    XPCAsyncSequenceResponse.init(id:event:)(v15, &v36, v7);
    (*(*v0 + 136))(v7);
    sub_2437DB7C0(v7, type metadata accessor for XPCAsyncSequenceResponse);
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      OUTLINED_FUNCTION_131();
      return;
    }

    v23 = *(v20 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2437D6240()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2437D62A0()
{
  v0 = sub_2437EB5F4();
  __swift_allocate_value_buffer(v0, qword_27ED8E1B8);
  v1 = OUTLINED_FUNCTION_22();
  __swift_project_value_buffer(v1, v2);
  v3 = sub_2437E6E54();
  v4 = *v3;
  v5 = v3[1];
  type metadata accessor for XPCMessageSender();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BB8, &qword_2437EF8E8);
  sub_2437EB704();
  return sub_2437EB5E4();
}

uint64_t XPCMessageSender.__allocating_init(serviceIdentifier:)(uint64_t a1)
{
  v2 = swift_allocObject();
  XPCMessageSender.init(serviceIdentifier:)(a1);
  return v2;
}

uint64_t XPCMessageSender.init(serviceIdentifier:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServiceIdentifier();
  v5 = OUTLINED_FUNCTION_48(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  type metadata accessor for XPCMessageSender.AsyncSequenceDispatcher();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2437EB3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B78, &qword_2437EF7F0);
  OUTLINED_FUNCTION_0_9();
  sub_2437DC1CC(v12, v13);
  *(v11 + 112) = sub_2437EB6B4();
  *(v2 + 56) = v11;
  v14 = type metadata accessor for XPCSessionCacheImplementation();
  sub_2437DBF30(a1, v10, type metadata accessor for ServiceIdentifier);
  swift_retain_n();
  v15 = sub_2437E888C();
  v18 = v14;
  v19 = &off_28568DDF0;

  *&v17 = v15;
  sub_2437DB7C0(a1, type metadata accessor for ServiceIdentifier);
  sub_2437DB30C(&v17, v2 + 16);
  return v2;
}

double sub_2437D6520@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for XPCAsyncSequenceResponse();
  v7 = OUTLINED_FUNCTION_7_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  sub_2437EB7B4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_2437DBF30(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for XPCAsyncSequenceResponse);
  v22 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a2;
  sub_2437DC098(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);

  v24 = OUTLINED_FUNCTION_14_5();
  sub_2437D674C(v24, v25, v17, v26, v23);

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_2437D66B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 136) & 0xFFFFFFFFFFFFLL | 0x9A65000000000000;
  v5[4] = *(*a4 + 136);
  v5[5] = v6;
  return OUTLINED_FUNCTION_5_5(sub_2437D66F0, a4);
}

uint64_t sub_2437D66F0()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  (*(v0 + 32))(*(v0 + 24));
  OUTLINED_FUNCTION_12_4();

  return v3();
}

uint64_t sub_2437D674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_2437DB750(a3, v26 - v11);
  v13 = sub_2437EB7B4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2437DBD44(v12, &qword_27ED86B88, &qword_2437EF800);
  }

  else
  {
    sub_2437EB7A4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2437EB764();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2437EB714() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2437DBD44(a3, &qword_27ED86B88, &qword_2437EF800);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2437DBD44(a3, &qword_27ED86B88, &qword_2437EF800);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t XPCMessageSender.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  sub_2437EB7B4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_2437DB324(v0 + 16, v18);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_2437DB30C(v18, v11 + 32);
  v12 = OUTLINED_FUNCTION_14_5();
  sub_2437D674C(v12, v13, v6, v14, v11);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v15 = *(v0 + 56);

  return v0;
}

uint64_t sub_2437D6B30()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(OUTLINED_FUNCTION_11_2(v1) + 24);
  OUTLINED_FUNCTION_13_5();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_6_4(v8);

  return v11(v9);
}

uint64_t sub_2437D6C34()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;

  OUTLINED_FUNCTION_12_4();

  return v5();
}

uint64_t XPCMessageSender.__deallocating_deinit()
{
  XPCMessageSender.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t XPCMessageSender.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *v6;
  return OUTLINED_FUNCTION_5_5(sub_2437D6D98, 0);
}

uint64_t sub_2437D6D98()
{
  OUTLINED_FUNCTION_44_0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  *(v4 + 64) = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_2437D6E90;
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  OUTLINED_FUNCTION_48_1();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2437D6E90()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_8_4();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_48_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    OUTLINED_FUNCTION_12_4();

    return v13();
  }
}

uint64_t sub_2437D6FB0()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_12_4();
  v3 = *(v0 + 96);

  return v2();
}

void sub_2437D700C()
{
  OUTLINED_FUNCTION_130();
  v47 = v1;
  v48 = v0;
  v3 = v2;
  v5 = v4;
  v49 = v6;
  v44 = v8;
  v45 = v7;
  v46 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v10 = sub_2437EB794();
  v42 = v10;
  OUTLINED_FUNCTION_4_7();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v43 = &v42 - v16;
  OUTLINED_FUNCTION_4_7();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v23 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - v28;
  sub_2437EB7B4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  (*(v19 + 16))(v23, v44, v5);
  (*(v12 + 16))(v17, v45, v10);
  v34 = (*(v19 + 80) + 72) & ~*(v19 + 80);
  v35 = (v21 + v34 + *(v12 + 80)) & ~*(v12 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 4) = v5;
  *(v37 + 5) = v3;
  v38 = v47;
  *(v37 + 6) = v48;
  *(v37 + 7) = v38;
  *(v37 + 8) = v46;
  (*(v19 + 32))(&v37[v34], v23, v5);
  (*(v12 + 32))(&v37[v35], v43, v42);
  *&v37[v36] = v49;

  v39 = OUTLINED_FUNCTION_14_5();
  sub_2437D674C(v39, v40, v29, v41, v37);

  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437D72B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_10_5();
  v11[23] = a10;
  v11[24] = a11;
  v11[21] = v12;
  v11[22] = a9;
  v11[19] = v13;
  v11[20] = v14;
  v11[17] = v15;
  v11[18] = v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v17 = sub_2437EB794();
  v11[25] = v17;
  OUTLINED_FUNCTION_7_5(v17);
  v11[26] = v18;
  v11[27] = *(v19 + 64);
  v11[28] = OUTLINED_FUNCTION_46_1();
  v20 = OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_58_0(v20, v21, v22);
}

uint64_t sub_2437D7390()
{
  OUTLINED_FUNCTION_41_0();
  sub_2437DB324(v0[17] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(OUTLINED_FUNCTION_11_2(v0 + 2) + 8);
  OUTLINED_FUNCTION_13_5();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_6_4(v7);

  return v10(v8);
}

uint64_t sub_2437D74A4()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v5 = *(v4 + 232);
  *v3 = *v1;
  *(v2 + 240) = v6;
  *(v2 + 248) = v0;

  OUTLINED_FUNCTION_48_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2437D75A8()
{
  v34 = *(v0 + 240);
  v35 = *(v0 + 248);
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v30 = v2;
  v31 = *(v0 + 224);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 152);
  v32 = *(v0 + 160);
  v33 = *(v0 + 144);
  (*(v3 + 16))();
  sub_2437DB324(v0 + 16, v0 + 56);
  v9 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v10 = (v1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = v7;
  *(v11 + 3) = v6;
  *(v11 + 4) = v5;
  *(v11 + 5) = v4;
  (*(v3 + 32))(&v11[v9], v31, v30);
  sub_2437DB30C((v0 + 56), &v11[v10]);
  *&v11[(v10 + 47) & 0xFFFFFFFFFFFFFFF8] = v32;
  sub_2437EB634();
  if (v35)
  {
    v12 = *(v0 + 240);

    v13 = *(v0 + 200);
    v14 = *(v0 + 152);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    swift_getErrorValue();
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 112);
    sub_2437EBA44();
    sub_2437DBB6C();
    v18 = OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_51_0(v18, v19);
    sub_2437EB774();
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_2_7();
    }

    v20 = sub_2437EB5F4();
    __swift_project_value_buffer(v20, qword_27ED8E1B8);
    MEMORY[0x245D40490](v35);
    v21 = sub_2437EB5D4();
    v22 = sub_2437EB844();
    MEMORY[0x245D40480](v35);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_59_0();
      v24 = OUTLINED_FUNCTION_45_0();
      *v23 = 138412290;
      MEMORY[0x245D40490](v35);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&dword_2437B3000, v21, v22, "received %@ in sending message", v23, 0xCu);
      sub_2437DBD44(v24, &qword_27ED86B98, &qword_2437EF8D8);
      OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_22_4();
    }

    MEMORY[0x245D40480](v35);
  }

  else
  {
    v26 = *(v0 + 240);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v27 = *(v0 + 224);

  OUTLINED_FUNCTION_12_4();

  return v28();
}

uint64_t sub_2437D787C()
{
  OUTLINED_FUNCTION_41_0();
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[19];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_getErrorValue();
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[14];
  sub_2437EBA44();
  sub_2437DBB6C();
  v7 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_51_0(v7, v8);
  sub_2437EB774();
  if (_MergedGlobals_1 != -1)
  {
    OUTLINED_FUNCTION_2_7();
  }

  v9 = sub_2437EB5F4();
  __swift_project_value_buffer(v9, qword_27ED8E1B8);
  MEMORY[0x245D40490](v1);
  v10 = sub_2437EB5D4();
  v11 = sub_2437EB844();
  MEMORY[0x245D40480](v1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_59_0();
    v13 = OUTLINED_FUNCTION_45_0();
    *v12 = 138412290;
    MEMORY[0x245D40490](v1);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_2437B3000, v10, v11, "received %@ in sending message", v12, 0xCu);
    sub_2437DBD44(v13, &qword_27ED86B98, &qword_2437EF8D8);
    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_22_4();
  }

  MEMORY[0x245D40480](v1);
  v15 = v0[28];

  OUTLINED_FUNCTION_12_4();

  return v16();
}

void sub_2437D7A2C()
{
  OUTLINED_FUNCTION_130();
  v1 = v0;
  v95 = v2;
  v98 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  v96 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BC8, &qword_2437EF900);
  OUTLINED_FUNCTION_48(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v90 - v15;
  v17 = sub_2437EB6A4();
  v18 = OUTLINED_FUNCTION_0(v17);
  v94 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_32_1();
  v93 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v97 = &v90 - v25;
  OUTLINED_FUNCTION_4_7();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_32_1();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v90 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v38 = sub_2437EBAE4();
  OUTLINED_FUNCTION_0(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v41);
  v43 = (&v90 - v42);
  (*(v44 + 16))(&v90 - v42, v5, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v92 = v1;
    v45 = *v43;
    *&v99[0] = v45;
    MEMORY[0x245D40490](v45);
    v46 = v17;
    if (swift_dynamicCast())
    {
      v90 = v37;
      v91 = v45;
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
      v47 = v94;
      v48 = v97;
      (*(v94 + 32))(v97, v16, v17);
      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_2_7();
      }

      v49 = sub_2437EB5F4();
      __swift_project_value_buffer(v49, qword_27ED8E1B8);
      v50 = *(v47 + 16);
      v51 = v93;
      v50(v93, v48, v46);
      v52 = sub_2437EB5D4();
      v53 = sub_2437EB844();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = v47;
        v55 = OUTLINED_FUNCTION_59_0();
        v56 = OUTLINED_FUNCTION_45_0();
        *v55 = 138412290;
        OUTLINED_FUNCTION_1_10();
        sub_2437DC1CC(v57, v58);
        v59 = OUTLINED_FUNCTION_35_0();
        v60 = v46;
        v62 = OUTLINED_FUNCTION_38_1(v59, v61);
        (v50)(v62);
        v63 = _swift_stdlib_bridgeErrorToNSError();
        v64 = *(v54 + 8);
        v65 = OUTLINED_FUNCTION_30_1();
        v64(v65);
        v66 = v64;
        *(v55 + 4) = v63;
        *v56 = v63;
        v46 = v60;
        _os_log_impl(&dword_2437B3000, v52, v53, "received xpc error %@ from xpc session", v55, 0xCu);
        sub_2437DBD44(v56, &qword_27ED86B98, &qword_2437EF8D8);
        v48 = v97;
        OUTLINED_FUNCTION_26_1();
        OUTLINED_FUNCTION_26_1();
      }

      else
      {

        v66 = *(v47 + 8);
        v66(v51, v46);
      }

      sub_2437EB7B4();
      v77 = v96;
      OUTLINED_FUNCTION_54();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
      sub_2437DB324(v95, v99);
      v82 = swift_allocObject();
      *(v82 + 16) = 0;
      *(v82 + 24) = 0;
      sub_2437DB30C(v99, v82 + 32);
      v83 = OUTLINED_FUNCTION_14_5();
      sub_2437D82B4(v83, v84, v77, v85, v82);

      OUTLINED_FUNCTION_1_10();
      sub_2437DC1CC(v86, v87);
      sub_2437EBA44();
      OUTLINED_FUNCTION_56_0();
      sub_2437DBB6C();
      v88 = OUTLINED_FUNCTION_35_0();
      *v89 = v82;
      v89[1] = v48;
      *&v99[0] = v88;
      OUTLINED_FUNCTION_55_0();
      sub_2437EB794();
      sub_2437EB774();
      MEMORY[0x245D40480](v91);
      v66(v48, v46);
    }

    else
    {
      OUTLINED_FUNCTION_54();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v17);
      sub_2437DBD44(v16, &qword_27ED86BC8, &qword_2437EF900);
      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_2_7();
      }

      v70 = sub_2437EB5F4();
      __swift_project_value_buffer(v70, qword_27ED8E1B8);
      v71 = sub_2437EB5D4();
      v72 = sub_2437EB844();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_2437B3000, v71, v72, "error received from xpc session is not XPC error type.", v73, 2u);
        OUTLINED_FUNCTION_26_1();
      }

      swift_getErrorValue();
      v74 = v100;
      sub_2437EBA44();
      OUTLINED_FUNCTION_56_0();
      sub_2437DBB6C();
      v75 = OUTLINED_FUNCTION_35_0();
      *v76 = v71;
      v76[1] = v74;
      *&v99[0] = v75;
      sub_2437EB794();
      sub_2437EB774();
      MEMORY[0x245D40480](v45);
    }
  }

  else
  {
    (*(v27 + 32))(v36, v43, v1);
    (*(v27 + 16))(v33, v36, v1);
    sub_2437EB794();
    sub_2437EB784();
    (*(v27 + 8))(v36, v1);
  }

  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437D81B0()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(OUTLINED_FUNCTION_11_2(v1) + 16);
  OUTLINED_FUNCTION_13_5();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_6_4(v8);

  return v11(v9);
}

uint64_t sub_2437D82B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_2437DB750(a3, v23 - v10);
  v12 = sub_2437EB7B4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2437DBD44(v11, &qword_27ED86B88, &qword_2437EF800);
  }

  else
  {
    sub_2437EB7A4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2437EB764();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2437EB714() + 32;

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

      sub_2437DBD44(a3, &qword_27ED86B88, &qword_2437EF800);

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

  sub_2437DBD44(a3, &qword_27ED86B88, &qword_2437EF800);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t XPCMessageSender.send<A, B>(_:)()
{
  OUTLINED_FUNCTION_44_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[9] = *v0;
  v8 = *(v6 - 8);
  v1[10] = v8;
  v1[11] = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_46_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v9);
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_46_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_54_0();
  v12 = sub_2437EB7E4();
  v1[14] = v12;
  OUTLINED_FUNCTION_7_5(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_54_0();
  v16 = sub_2437EB814();
  v1[17] = v16;
  OUTLINED_FUNCTION_7_5(v16);
  v1[18] = v17;
  v1[19] = *(v18 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2437D8718()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v23 = *(v0 + 136);
  v24 = *(v0 + 160);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v26 = *(v0 + 152);
  v27 = *(v0 + 104);
  v33 = *(v0 + 96);
  v6 = *(v0 + 80);
  v25 = *(v0 + 88);
  v30 = *(v0 + 64);
  v31 = *(v0 + 72);
  v29 = *(v0 + 56);
  v32 = *(v0 + 32);
  v28 = *(v0 + 40);
  v22 = *(v0 + 24);
  v7 = *(v0 + 16);
  sub_2437D89A8(v3);
  sub_2437EB7C4();
  (*(v4 + 8))(v3, v5);
  sub_2437EB7B4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  (*(v2 + 16))(v24, v1, v23);
  v12 = v6;
  (*(v6 + 16))(v33, v22, v32);
  v13 = v2;
  v14 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v15 = (v26 + *(v12 + 80) + v14) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v32;
  *(v16 + 40) = v28;
  *(v16 + 56) = v29;
  *(v16 + 64) = v30;
  (*(v13 + 32))(v16 + v14, v24, v23);
  (*(v12 + 32))(v16 + v15, v33, v32);
  *(v16 + ((v25 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;

  v17 = OUTLINED_FUNCTION_14_5();
  sub_2437D82B4(v17, v18, v27, v19, v16);

  (*(v13 + 8))(v1, v23);

  OUTLINED_FUNCTION_12_4();

  return v20();
}

uint64_t sub_2437D89A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v3 = sub_2437EB7E4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2437D8A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_5();
  *(v10 + 88) = a10;
  *(v10 + 72) = a9;
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 40) = v13;
  *(v10 + 48) = v14;
  v15 = sub_2437EB6A4();
  *(v10 + 96) = v15;
  OUTLINED_FUNCTION_7_5(v15);
  *(v10 + 104) = v16;
  v18 = *(v17 + 64) + 15;
  *(v10 + 112) = swift_task_alloc();
  *(v10 + 120) = swift_task_alloc();
  *(v10 + 128) = swift_task_alloc();
  v19 = type metadata accessor for XPCAsyncSequenceRequest();
  *(v10 + 136) = v19;
  OUTLINED_FUNCTION_48(v19);
  v21 = *(v20 + 64);
  *(v10 + 144) = OUTLINED_FUNCTION_46_1();
  v22 = sub_2437EB3B4();
  *(v10 + 152) = v22;
  OUTLINED_FUNCTION_7_5(v22);
  *(v10 + 160) = v23;
  v25 = *(v24 + 64) + 15;
  *(v10 + 168) = swift_task_alloc();
  *(v10 + 176) = swift_task_alloc();
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();
  *(v10 + 200) = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_58_0(v26, v27, v28);
}

uint64_t sub_2437D8BC0()
{
  OUTLINED_FUNCTION_10_5();
  v1 = v0[25];
  v2 = v0[5];
  sub_2437EB3A4();
  v3 = *(v2 + 56);
  v0[26] = v3;
  v4 = (*v3 + 128) & 0xFFFFFFFFFFFFLL | 0xDCB2000000000000;
  v0[27] = *(*v3 + 128);
  v0[28] = v4;

  return MEMORY[0x2822009F8](sub_2437D8C48, v3, 0);
}

uint64_t sub_2437D8C48()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  (*(v0 + 216))(*(v0 + 48), *(v0 + 200), *(v0 + 72), *(v0 + 88));
  v3 = OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2437D8CB4()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 40);
  v2 = v1[5];
  v3 = v1[6];
  v4 = *(OUTLINED_FUNCTION_11_2(v1 + 2) + 8);
  OUTLINED_FUNCTION_13_5();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_6_4(v8);

  return v11(v9);
}

uint64_t sub_2437D8DBC()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v5 = *(v4 + 232);
  *v3 = *v1;
  *(v2 + 240) = v6;
  *(v2 + 248) = v0;

  OUTLINED_FUNCTION_48_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2437D8EC0()
{
  v1 = v0[31];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  (*(v0[20] + 16))(v0[24], v0[25], v0[19]);
  v5 = sub_2437EB234();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2437EB224();
  sub_2437EB214();
  v9 = v0[30];
  if (v1)
  {
    (*(v0[20] + 8))(v0[24], v0[19]);

    v17 = v0[16];
    v18 = v0[12];
    v0[2] = v1;
    MEMORY[0x245D40490](v1);
    v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B80, &qword_2437EF7F8);
    if (swift_dynamicCast())
    {
      v19 = v0[15];
      v20 = v0[16];
      v21 = v0[12];
      v22 = v0[13];
      MEMORY[0x245D40480](v1);
      v23 = *(v22 + 32);
      v24 = OUTLINED_FUNCTION_22();
      v25(v24);
      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_2_7();
      }

      v26 = v0[25];
      v27 = v0[23];
      v28 = v0[19];
      v29 = v0[20];
      v31 = v0[14];
      v30 = v0[15];
      v32 = v0[12];
      v33 = v0[13];
      v34 = sub_2437EB5F4();
      v0[33] = __swift_project_value_buffer(v34, qword_27ED8E1B8);
      v0[34] = *(v29 + 16);
      v0[35] = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35 = OUTLINED_FUNCTION_22();
      v36(v35);
      v37 = *(v33 + 16);
      v0[36] = v37;
      v0[37] = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v31, v30, v32);
      v38 = sub_2437EB5D4();
      v39 = sub_2437EB854();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v0[23];
      v43 = v0[19];
      v42 = v0[20];
      v44 = v0[13];
      v45 = v0[14];
      v146 = v0[12];
      if (v40)
      {
        v141 = v38;
        v46 = OUTLINED_FUNCTION_60_0();
        v140 = OUTLINED_FUNCTION_45_0();
        v143 = OUTLINED_FUNCTION_47();
        v150[0] = v143;
        *v46 = 136315394;
        OUTLINED_FUNCTION_0_9();
        sub_2437DC1CC(v47, v48);
        LODWORD(v138) = v39;
        v49 = sub_2437EBA04();
        v137 = v45;
        v51 = v50;
        v52 = v43;
        v53 = *(v42 + 8);
        v53(v41, v52);
        v54 = sub_2437DA7E8(v49, v51, v150);

        *(v46 + 4) = v54;
        *(v46 + 12) = 2112;
        OUTLINED_FUNCTION_1_10();
        sub_2437DC1CC(v55, v56);
        v57 = OUTLINED_FUNCTION_35_0();
        v59 = OUTLINED_FUNCTION_53_0(v57, v58);
        (v37)(v59);
        v60 = _swift_stdlib_bridgeErrorToNSError();
        v61 = *(v44 + 8);
        v61(v49, v146);
        *(v46 + 14) = v60;
        *v140 = v60;
        OUTLINED_FUNCTION_52_0();
        _os_log_impl(v62, v63, v64, v65, v46, 0x16u);
        sub_2437DBD44(v140, &qword_27ED86B98, &qword_2437EF8D8);
        OUTLINED_FUNCTION_22_4();
        __swift_destroy_boxed_opaque_existential_1(v143);
        OUTLINED_FUNCTION_22_4();
        v66 = v53;
        OUTLINED_FUNCTION_26_1();
      }

      else
      {

        v61 = *(v44 + 8);
        v61(v45, v146);
        v66 = *(v42 + 8);
        v87 = OUTLINED_FUNCTION_57_0();
        v66(v87);
      }

      v0[38] = v66;
      v0[39] = v61;
      v88 = v0[15];
      if ((sub_2437EB694() & 1) == 0)
      {
        v119 = v0[5];
        v120 = v119[5];
        v121 = v119[6];
        v122 = *(OUTLINED_FUNCTION_11_2(v119 + 2) + 16);
        OUTLINED_FUNCTION_13_5();
        v149 = v123 + *v123;
        v125 = *(v124 + 4);
        v126 = swift_task_alloc();
        v0[40] = v126;
        *v126 = v0;
        OUTLINED_FUNCTION_6_4(v126);
        OUTLINED_FUNCTION_40_1();

        __asm { BRAA            X2, X16 }
      }

      v145 = v0[39];
      v148 = v0[38];
      v90 = v0[36];
      v89 = v0[37];
      v91 = v0[32];
      OUTLINED_FUNCTION_50_0();
      v92 = v0[15];
      v93 = v0[12];
      v94 = v0[13];
      v95 = v0[9];
      v96 = v0[6];
      OUTLINED_FUNCTION_1_10();
      sub_2437DC1CC(v97, v98);
      v99 = OUTLINED_FUNCTION_35_0();
      v101 = OUTLINED_FUNCTION_38_1(v99, v100);
      v90(v101);
      v0[4] = v99;
      sub_2437EB814();
      sub_2437EB804();
      v102 = OUTLINED_FUNCTION_30_1();
      v103 = v145(v102);
      v111 = OUTLINED_FUNCTION_49_0(v103, v104, v105, v106, v107, v108, v109, v110, v136, v137, v138, v140, v141);
      v112(v111);
      MEMORY[0x245D40480](v0[2]);
    }

    else
    {
      MEMORY[0x245D40480](v0[2]);
      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_2_7();
      }

      v67 = v0[25];
      v69 = v0[20];
      v68 = v0[21];
      v70 = v0[19];
      v71 = sub_2437EB5F4();
      __swift_project_value_buffer(v71, qword_27ED8E1B8);
      (*(v69 + 16))(v68, v67, v70);
      MEMORY[0x245D40490](v1);
      v72 = sub_2437EB5D4();
      v73 = sub_2437EB854();
      MEMORY[0x245D40480](v1);
      v74 = os_log_type_enabled(v72, v73);
      v76 = v0[20];
      v75 = v0[21];
      v77 = v0[19];
      if (v74)
      {
        v144 = v73;
        v78 = OUTLINED_FUNCTION_60_0();
        v142 = OUTLINED_FUNCTION_45_0();
        v147 = OUTLINED_FUNCTION_47();
        v150[0] = v147;
        *v78 = 136315394;
        OUTLINED_FUNCTION_0_9();
        sub_2437DC1CC(v79, v80);
        v139 = sub_2437EBA04();
        v82 = v81;
        v83 = OUTLINED_FUNCTION_43_1();
        (v72)(v83);
        v84 = v72;
        v85 = sub_2437DA7E8(v139, v82, v150);

        *(v78 + 4) = v85;
        *(v78 + 12) = 2112;
        MEMORY[0x245D40490](v1);
        v86 = _swift_stdlib_bridgeErrorToNSError();
        *(v78 + 14) = v86;
        *v142 = v86;
        _os_log_impl(&dword_2437B3000, v72, v144, "[message id = %s] failed to send message over XPC due to non-XPC error %@", v78, 0x16u);
        sub_2437DBD44(v142, &qword_27ED86B98, &qword_2437EF8D8);
        OUTLINED_FUNCTION_26_1();
        __swift_destroy_boxed_opaque_existential_1(v147);
        OUTLINED_FUNCTION_26_1();
        OUTLINED_FUNCTION_23_2();
      }

      else
      {

        v113 = OUTLINED_FUNCTION_43_1();
        (v72)(v113);
        v84 = v72;
      }

      v114 = v0[25];
      v115 = v0[19];
      v116 = v0[9];
      v117 = v0[6];
      v0[3] = v1;
      sub_2437EB814();
      sub_2437EB804();
      v118 = OUTLINED_FUNCTION_30_1();
      (v84)(v118);
    }
  }

  else
  {
    v10 = v8;
    v12 = v0[17];
    v11 = v0[18];

    v13 = OUTLINED_FUNCTION_30_1();
    sub_2437D163C(v13, v14, v10, v15);
    sub_2437DC1CC(&qword_27ED86BA8, type metadata accessor for XPCAsyncSequenceRequest);
    sub_2437EB644();
    v16 = v0[30];
    v129 = v0[25];
    v130 = v0[19];
    v131 = v0[20];
    v132 = v0[18];

    OUTLINED_FUNCTION_18_3();
    sub_2437DB7C0(v132, v133);
    (*(v131 + 8))(v129, v130);
  }

  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_40_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2437D9778()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_8_4();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_48_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2437D9874()
{
  v43 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  (*(v0 + 272))(*(v0 + 176), *(v0 + 200), *(v0 + 152));
  v3 = sub_2437EB5D4();
  v4 = sub_2437EB854();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 304);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  if (v5)
  {
    v40 = *(v0 + 304);
    v10 = OUTLINED_FUNCTION_59_0();
    v11 = OUTLINED_FUNCTION_47();
    v42 = v11;
    *v10 = 136315138;
    OUTLINED_FUNCTION_0_9();
    sub_2437DC1CC(v12, v13);
    v14 = sub_2437EBA04();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_57_0();
    v40(v17);
    v18 = sub_2437DA7E8(v14, v16, &v42);

    *(v10 + 4) = v18;
    _os_log_impl(&dword_2437B3000, v3, v4, "[message id = %s] evict xpc session from cache as it is no longer usable", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_22_4();
  }

  else
  {

    v19 = OUTLINED_FUNCTION_57_0();
    v6(v19);
  }

  v39 = *(v0 + 312);
  v41 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 296);
  v22 = *(v0 + 256);
  v36 = *(v0 + 160);
  v37 = *(v0 + 152);
  v38 = *(v0 + 200);
  v23 = *(v0 + 120);
  v25 = *(v0 + 96);
  v24 = *(v0 + 104);
  v26 = *(v0 + 72);
  v27 = *(v0 + 48);
  OUTLINED_FUNCTION_1_10();
  sub_2437DC1CC(v28, v29);
  v30 = OUTLINED_FUNCTION_35_0();
  v32 = OUTLINED_FUNCTION_38_1(v30, v31);
  v20(v32);
  *(v0 + 32) = v30;
  sub_2437EB814();
  sub_2437EB804();
  v33 = OUTLINED_FUNCTION_30_1();
  v39(v33);
  v41(v38, v37);
  MEMORY[0x245D40480](*(v0 + 16));
  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_12_4();

  return v34();
}

void sub_2437D9B30()
{
  v1 = v0[31];
  v0[2] = v1;
  v2 = v0[16];
  v3 = v0[12];
  MEMORY[0x245D40490](v1);
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B80, &qword_2437EF7F8);
  if (swift_dynamicCast())
  {
    v5 = v0[15];
    v4 = v0[16];
    v7 = v0[12];
    v6 = v0[13];
    MEMORY[0x245D40480](v1);
    (*(v6 + 32))(v5, v4, v7);
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_2_7();
    }

    v8 = v0[25];
    v9 = v0[23];
    v10 = v0[19];
    v11 = v0[20];
    v13 = v0[14];
    v12 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = sub_2437EB5F4();
    v0[33] = __swift_project_value_buffer(v16, qword_27ED8E1B8);
    v17 = *(v11 + 16);
    v0[34] = v17;
    v0[35] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v9, v8, v10);
    v18 = *(v14 + 16);
    v0[36] = v18;
    v0[37] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v13, v12, v15);
    v19 = sub_2437EB5D4();
    v20 = sub_2437EB854();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[23];
    v24 = v0[19];
    v23 = v0[20];
    v25 = v0[13];
    v26 = v0[14];
    v117 = v0[12];
    if (v21)
    {
      v112 = v19;
      v27 = OUTLINED_FUNCTION_60_0();
      v111 = OUTLINED_FUNCTION_45_0();
      v114 = OUTLINED_FUNCTION_47();
      v121 = v114;
      *v27 = 136315394;
      OUTLINED_FUNCTION_0_9();
      sub_2437DC1CC(v28, v29);
      v108 = v26;
      v30 = sub_2437EBA04();
      LODWORD(v109) = v20;
      v32 = v31;
      v33 = *(v23 + 8);
      v33(v22, v24);
      v34 = sub_2437DA7E8(v30, v32, &v121);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2112;
      OUTLINED_FUNCTION_1_10();
      sub_2437DC1CC(v35, v36);
      v37 = OUTLINED_FUNCTION_35_0();
      v39 = OUTLINED_FUNCTION_53_0(v37, v38);
      (v18)(v39);
      v40 = v33;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v25 + 8);
      v42(v23 + 8, v117);
      *(v27 + 14) = v41;
      *v111 = v41;
      OUTLINED_FUNCTION_52_0();
      _os_log_impl(v43, v44, v45, v46, v27, 0x16u);
      sub_2437DBD44(v111, &qword_27ED86B98, &qword_2437EF8D8);
      OUTLINED_FUNCTION_23_2();
      __swift_destroy_boxed_opaque_existential_1(v114);
      OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_22_4();
    }

    else
    {

      v42 = *(v25 + 8);
      v42(v26, v117);
      v40 = *(v23 + 8);
      v40(v22, v24);
    }

    v0[38] = v40;
    v0[39] = v42;
    v67 = v0[15];
    if ((sub_2437EB694() & 1) == 0)
    {
      v97 = v0[5];
      v98 = v97[5];
      v99 = v97[6];
      v100 = *(OUTLINED_FUNCTION_11_2(v97 + 2) + 16);
      OUTLINED_FUNCTION_13_5();
      v120 = v101 + *v101;
      v103 = *(v102 + 4);
      v104 = swift_task_alloc();
      v0[40] = v104;
      *v104 = v0;
      OUTLINED_FUNCTION_6_4(v104);
      OUTLINED_FUNCTION_40_1();

      __asm { BRAA            X2, X16 }
    }

    v116 = v0[39];
    v119 = v0[38];
    v69 = v0[36];
    v68 = v0[37];
    v70 = v0[32];
    OUTLINED_FUNCTION_50_0();
    v71 = v0[15];
    v73 = v0[12];
    v72 = v0[13];
    v74 = v0[9];
    v75 = v0[6];
    OUTLINED_FUNCTION_1_10();
    sub_2437DC1CC(v76, v77);
    v78 = OUTLINED_FUNCTION_35_0();
    v69(v79, v71, v73);
    v0[4] = v78;
    sub_2437EB814();
    sub_2437EB804();
    v80 = v116(v71, v73);
    v88 = OUTLINED_FUNCTION_49_0(v80, v81, v82, v83, v84, v85, v86, v87, v107, v108, v109, v111, v112);
    v89(v88);
    MEMORY[0x245D40480](v0[2]);
  }

  else
  {
    MEMORY[0x245D40480](v0[2]);
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_2_7();
    }

    v47 = v0[25];
    v48 = v0[20];
    v49 = v0[21];
    v50 = v0[19];
    v51 = sub_2437EB5F4();
    __swift_project_value_buffer(v51, qword_27ED8E1B8);
    (*(v48 + 16))(v49, v47, v50);
    MEMORY[0x245D40490](v1);
    v52 = sub_2437EB5D4();
    v53 = sub_2437EB854();
    MEMORY[0x245D40480](v1);
    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[20];
    v56 = v0[21];
    v57 = v0[19];
    if (v54)
    {
      v115 = v53;
      v58 = OUTLINED_FUNCTION_60_0();
      v113 = OUTLINED_FUNCTION_45_0();
      v118 = OUTLINED_FUNCTION_47();
      v121 = v118;
      *v58 = 136315394;
      OUTLINED_FUNCTION_0_9();
      sub_2437DC1CC(v59, v60);
      v110 = sub_2437EBA04();
      v62 = v61;
      v63 = OUTLINED_FUNCTION_42_1();
      (v52)(v63);
      v64 = v52;
      v65 = sub_2437DA7E8(v110, v62, &v121);

      *(v58 + 4) = v65;
      *(v58 + 12) = 2112;
      MEMORY[0x245D40490](v1);
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v66;
      *v113 = v66;
      _os_log_impl(&dword_2437B3000, v52, v115, "[message id = %s] failed to send message over XPC due to non-XPC error %@", v58, 0x16u);
      sub_2437DBD44(v113, &qword_27ED86B98, &qword_2437EF8D8);
      OUTLINED_FUNCTION_26_1();
      __swift_destroy_boxed_opaque_existential_1(v118);
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_26_1();
    }

    else
    {

      v90 = OUTLINED_FUNCTION_42_1();
      (v52)(v90);
      v64 = v52;
    }

    v91 = v0[25];
    v92 = v0[19];
    v93 = v0[9];
    v94 = v0[6];
    v0[3] = v1;
    sub_2437EB814();
    sub_2437EB804();
    (v64)(v91, v92);
  }

  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_40_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2437DA2D4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 152);
  v14 = *(v0 + 144);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  v9 = (*(v0 + 104) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 312))(*(v0 + 120), *(v0 + 96));
  v10 = OUTLINED_FUNCTION_57_0();
  v1(v10);
  MEMORY[0x245D40480](*(v0 + 16));

  OUTLINED_FUNCTION_12_4();
  v12 = *(v0 + 328);

  return v11();
}

uint64_t sub_2437DA3EC()
{
  OUTLINED_FUNCTION_28_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_1(v1);

  return XPCMessageSender.send<A, B>(_:)(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2437DA48C()
{
  OUTLINED_FUNCTION_28_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_25_1(v1);

  return XPCMessageSender.send<A, B>(_:)();
}

uint64_t sub_2437DA52C()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;

  OUTLINED_FUNCTION_12_4();

  return v5();
}

uint64_t sub_2437DA60C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2437DA704;

  return v7(a1);
}

uint64_t sub_2437DA704()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;

  OUTLINED_FUNCTION_12_4();

  return v5();
}

uint64_t sub_2437DA7E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2437DA8AC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2437DB814(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2437DA8AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2437DA9AC(a5, a6);
    *a1 = v9;
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
    result = sub_2437EB8D4();
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

uint64_t sub_2437DA9AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2437DA9F8(a1, a2);
  sub_2437DAB10(&unk_28568CF50);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2437DA9F8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2437EB744())
  {
    result = sub_2437DABF4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2437EB894();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2437EB8D4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2437DAB10(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2437DAC64(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2437DABF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BB0, &qword_2437EF8E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2437DAC64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BB0, &qword_2437EF8E0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_2437DAD58(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2437EB3B4();
  sub_2437DC1CC(&qword_27ED865B0, MEMORY[0x277CC95F0]);
  v5 = sub_2437EB6C4();

  return sub_2437DADF0(a1, v5);
}

unint64_t sub_2437DADF0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_2437EB3B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2437DC1CC(&qword_27ED86BD0, MEMORY[0x277CC95F0]);
    v10 = sub_2437EB6E4();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2437DAFAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_2437DAD58(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BD8, qword_2437EF940);
  sub_2437EB8E4();
  v9 = *(v15 + 48);
  v10 = sub_2437EB3B4();
  (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
  v11 = (*(v15 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B78, &qword_2437EF7F0);
  sub_2437DC1CC(&qword_27ED865B0, MEMORY[0x277CC95F0]);
  sub_2437EB8F4();
  *v2 = v15;
  return v12;
}

uint64_t sub_2437DB10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_2437EB3B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_2437DAD58(a3);
  if (__OFADD__(*(v12 + 16), (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BD8, qword_2437EF940);
  if ((sub_2437EB8E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  v18 = sub_2437DAD58(a3);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_11:
    result = sub_2437EBA34();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *v4;
  if (v16)
  {
    v21 = (v20[7] + 16 * v15);
    v22 = v21[1];
    v23 = v26;
    *v21 = a1;
    v21[1] = v23;
  }

  else
  {
    (*(v8 + 16))(v11, a3, v7);
    return sub_2437DC214(v15, v11, a1, v26, v20);
  }
}

uint64_t sub_2437DB30C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2437DB324(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2437DB38C()
{
  OUTLINED_FUNCTION_10_5();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2437DC2FC;

  return sub_2437D6B14(v2, v3, v4, v0 + 32);
}

void sub_2437DB418()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  sub_2437D700C();
}

uint64_t sub_2437DB42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_130();
  v13 = *(v12 + 4);
  v14 = *(v12 + 5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_55_0();
  v15 = sub_2437EB814();
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v18 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v20 = *(v13 - 8);
  v21 = (v18 + *(v19 + 64) + *(v20 + 80)) & ~*(v20 + 80);
  v22 = (*(v20 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v12 + 2);
  swift_unknownObjectRelease();
  v24 = *(v12 + 8);

  (*(v17 + 8))(&v12[v18], v15);
  (*(v20 + 8))(&v12[v21], v13);
  OUTLINED_FUNCTION_131();

  return MEMORY[0x2821FE8E8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_2437DB58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v12 = v11;
  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[6];
  v16 = v10[7];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v17 = sub_2437EB814();
  OUTLINED_FUNCTION_7_5(v17);
  v20 = (*(v18 + 80) + 72) & ~*(v18 + 80);
  v21 = (v20 + *(v19 + 64) + *(*(v13 - 8) + 80)) & ~*(*(v13 - 8) + 80);
  v22 = v10[8];
  v23 = swift_task_alloc();
  *(v12 + 16) = v23;
  *v23 = v12;
  v23[1] = sub_2437DA52C;

  return sub_2437D8A4C(v23, v24, v25, v22, v10 + v20, v10 + v21, v26, v13, a9, a10);
}

uint64_t sub_2437DB750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437DB7C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2437DB814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2437DB870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_130();
  v13 = *(v12 + 4);
  v14 = *(v12 + 5);
  OUTLINED_FUNCTION_4_7();
  v16 = v15;
  v17 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v19 = v17 + *(v18 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_55_0();
  v20 = sub_2437EB794();
  OUTLINED_FUNCTION_0(v20);
  v22 = v21;
  v23 = (v19 + *(v22 + 80)) & ~*(v22 + 80);
  v25 = (*(v24 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v12 + 2);
  swift_unknownObjectRelease();
  v27 = *(v12 + 8);

  (*(v16 + 8))(&v12[v17], v13);
  (*(v22 + 8))(&v12[v23], v20);
  OUTLINED_FUNCTION_131();

  return MEMORY[0x2821FE8E8](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_2437DB9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v12;
  v14 = v11[4];
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  OUTLINED_FUNCTION_4_7();
  v19 = (*(v18 + 80) + 72) & ~*(v18 + 80);
  v21 = v19 + *(v20 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v22 = sub_2437EB794();
  OUTLINED_FUNCTION_7_5(v22);
  v24 = (v21 + *(v23 + 80)) & ~*(v23 + 80);
  v26 = v11[8];
  v27 = *(v11 + ((*(v25 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = swift_task_alloc();
  *(v13 + 16) = v28;
  *v28 = v13;
  v28[1] = sub_2437DC2FC;

  return sub_2437D72B8(v28, v29, v30, v26, v11 + v19, v11 + v24, v27, v14, a9, a10, a11);
}

unint64_t sub_2437DBB6C()
{
  result = qword_27ED86BC0;
  if (!qword_27ED86BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86BC0);
  }

  return result;
}

uint64_t sub_2437DBBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v14 = sub_2437EB794();
  OUTLINED_FUNCTION_9_6(v14);
  v16 = *(v15 + 80);
  v17 = (v16 + 48) & ~v16;
  v18 = (*(v15 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v15 + 8))(v12 + v17);
  __swift_destroy_boxed_opaque_existential_1((v12 + v18));

  return MEMORY[0x2821FE8E8](v12, ((v18 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v16 | 7, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

void sub_2437DBC80()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_55_0();
  v2 = sub_2437EB794();
  OUTLINED_FUNCTION_7_5(v2);
  v5 = v0 + ((*(v4 + 64) + ((*(v3 + 80) + 48) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_2437D7A2C();
}

uint64_t sub_2437DBD44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_2Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v12 + 32));

  return MEMORY[0x2821FE8E8](v12, 72, 7, v14, v15, v16, v17, v18, a9, a10, a11, a12);
}

uint64_t sub_2437DBDD8()
{
  OUTLINED_FUNCTION_10_5();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2437DC2FC;

  return sub_2437D8194(v2, v3, v4, v0 + 32);
}

uint64_t sub_2437DBE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 24);

  return MEMORY[0x2821FE8E8](v12, 32, 7, v14, v15, v16, v17, v18, a9, a10, a11, a12);
}

uint64_t sub_2437DBE9C()
{
  OUTLINED_FUNCTION_44_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t sub_2437DBF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(*(a3(0) - 8) + 16);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t sub_2437DBF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = (type metadata accessor for XPCAsyncSequenceResponse() - 8);
  v14 = *(*v13 + 80);
  v15 = (v14 + 40) & ~v14;
  v16 = *(*v13 + 64);
  v17 = *(v12 + 16);
  swift_unknownObjectRelease();
  v18 = *(v12 + 32);

  v19 = sub_2437EB3B4();
  OUTLINED_FUNCTION_9_6(v19);
  (*(v20 + 8))(v12 + v15);
  v26 = (v12 + v15 + v13[7]);
  v27 = v26[1];
  if (((v27 >> 60) | 4) != 0xF)
  {
    sub_2437B7168(*v26, v27);
  }

  return MEMORY[0x2821FE8E8](v12, v15 + v16, v14 | 7, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_2437DC098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437DC0FC()
{
  OUTLINED_FUNCTION_44_0();
  v2 = type metadata accessor for XPCAsyncSequenceResponse();
  OUTLINED_FUNCTION_48(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2437DA52C;

  return sub_2437D66B8(v6, v7, v8, v5, v0 + v4);
}

uint64_t sub_2437DC1CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2437DC214(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2437EB3B4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}