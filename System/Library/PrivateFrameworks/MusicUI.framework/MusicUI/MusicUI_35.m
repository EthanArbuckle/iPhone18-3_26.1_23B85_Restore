unint64_t sub_216A13E44()
{
  result = qword_27CABFE10;
  if (!qword_27CABFE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE18);
    sub_2166D9530(&qword_27CABFE20, &qword_27CABFE28);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE10);
  }

  return result;
}

unint64_t sub_216A13F34()
{
  result = qword_27CABFE78;
  if (!qword_27CABFE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE70);
    sub_216A13FEC();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE78);
  }

  return result;
}

unint64_t sub_216A13FEC()
{
  result = qword_27CABFE80;
  if (!qword_27CABFE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE88);
    sub_2167C4CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE80);
  }

  return result;
}

unint64_t sub_216A14078()
{
  result = qword_27CABFE90;
  if (!qword_27CABFE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE98);
    sub_216A14104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE90);
  }

  return result;
}

unint64_t sub_216A14104()
{
  result = qword_27CABFEA0;
  if (!qword_27CABFEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFEA8);
    sub_2166D9530(&qword_27CABFEB0, &qword_27CABFEB8);
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFEA0);
  }

  return result;
}

unint64_t sub_216A141E8()
{
  result = qword_27CABFEC0;
  if (!qword_27CABFEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE50);
    sub_216A142A0();
    sub_2166D9530(&qword_280E2A830, &qword_27CAB8870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFEC0);
  }

  return result;
}

unint64_t sub_216A142A0()
{
  result = qword_27CABFEC8;
  if (!qword_27CABFEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE48);
    sub_216A14358();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFEC8);
  }

  return result;
}

unint64_t sub_216A14358()
{
  result = qword_27CABFED0;
  if (!qword_27CABFED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE40);
    sub_2166D9530(&qword_27CABFED8, &qword_27CABFEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFED0);
  }

  return result;
}

uint64_t sub_216A14454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v25 = *(v10 + 24);
  v26 = v11;
  v12 = type metadata accessor for LibraryPinAction();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - v16;
  (*(v13 + 16))(&v24 - v16, a1, v12, v15);
  (*(v7 + 16))(v9, v4, a3);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v7 + 80) + v19 + 8) & ~*(v7 + 80);
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 16) = v26;
  *(v21 + 24) = v22;
  (*(v13 + 32))(v21 + v18, v17, v12);
  *(v21 + v19) = v27;
  (*(v7 + 32))(v21 + v20, v9, a3);

  return sub_216ECDBF4(&unk_2170363F8, v21);
}

uint64_t sub_216A14684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  v6[14] = swift_task_alloc();
  v6[15] = *(a5 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v8 = type metadata accessor for LibraryPinActionType();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A147FC, 0, 0);
}

uint64_t sub_216A147FC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[15];
  (*(v0[19] + 16))(v0[20], v0[9], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v1 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v3(v0[16], v0[20], v0[12]);
    sub_21700BE44();
    v0[27] = sub_21700BE34();
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v4[1] = sub_216A15028;
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[13];

    return MEMORY[0x28218A6C0](v5, v6, v7);
  }

  else
  {
    v8 = v0[14];
    v9 = v0[10];
    v3(v0[17], v0[20], v0[12]);
    v10 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;

    sub_21677BBA0();

    v12 = type metadata accessor for MusicPinsCoordinatorWrapper();
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_216A14A28;

    return MEMORY[0x28217F228](v0 + 7, v12, v12);
  }
}

uint64_t sub_216A14A28()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A14B24()
{
  OUTLINED_FUNCTION_93();
  sub_216A16C08(v0[7] + 16, (v0 + 2));

  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
    v11 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_216A14CCC;
    v4 = OUTLINED_FUNCTION_116();

    return v11(v4);
  }

  else
  {
    sub_216697664((v0 + 2), &qword_27CAB6A60);
    v6 = swift_task_alloc();
    OUTLINED_FUNCTION_14_36(v6);
    v0[7] = v7;
    v8 = OUTLINED_FUNCTION_1_96();

    return sub_216A15648(v8, v9, v10);
  }
}

uint64_t sub_216A14CCC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A14DB4()
{
  OUTLINED_FUNCTION_31();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 16);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_14_36(v2);
  *v0 = v3;
  v4 = OUTLINED_FUNCTION_1_96();

  return sub_216A15648(v4, v5, v6);
}

uint64_t sub_216A14E30()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A14F2C()
{
  OUTLINED_FUNCTION_93();
  sub_216A15F80(1);
  v1 = OUTLINED_FUNCTION_116();
  v2(v1);
  OUTLINED_FUNCTION_13_34();
  v3 = *(v0 + 64);
  v4 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 104))(v3, v4);

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216A15028()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A15140()
{
  OUTLINED_FUNCTION_93();
  type metadata accessor for LibraryPinActionImplementation();
  sub_216A15F80(0);
  v1 = OUTLINED_FUNCTION_116();
  v2(v1);
  OUTLINED_FUNCTION_13_34();
  v3 = *(v0 + 64);
  v4 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 104))(v3, v4);

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216A15248()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_15_37();
  v1(v0);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A152D8()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_15_37();
  v1(v0);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A15368()
{
  OUTLINED_FUNCTION_31();
  (*(v0[15] + 8))(v0[16], v0[12]);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A15400()
{
  v1 = type metadata accessor for UnifiedMessages.Coordinator();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_216A154B0;

  return MEMORY[0x28217F210](v0 + 16, v1, v1);
}

uint64_t sub_216A154B0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A155B4()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = v1;
  if (!v1)
  {
    return OUTLINED_FUNCTION_4_64();
  }

  *(v0 + 40) = 0;
  return MEMORY[0x2822009F8](sub_216A155E0, v1, 0);
}

uint64_t sub_216A155E0()
{
  OUTLINED_FUNCTION_33();
  sub_2169FCA1C((v0 + 40));
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_216A15648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_21700BB04();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_217006AD4();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A15768, 0, 0);
}

uint64_t sub_216A15768()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[12];
  v2 = v0[5];
  sub_21700BE44();
  v0[13] = sub_21700BE34();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_216A1600C(v1);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_216A15844;
  v6 = v0[12];
  v7 = v0[3];

  return MEMORY[0x28218A6A0](v7, v6, v3, v4);
}

uint64_t sub_216A15844()
{
  OUTLINED_FUNCTION_93();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[15] = v0;

  v6 = v2[11];
  v7 = v2[10];
  if (v0)
  {
    (*(v6 + 8))(v2[12], v7);

    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    (*(v6 + 8))(v2[12], v7);

    v11 = v5[1];

    return v11();
  }
}

uint64_t sub_216A15A24()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 64) + 88))(*(v0 + 72), *(v0 + 56));
    *(v0 + 144) = v3;
    if (v3 == *MEMORY[0x277D2AEF0])
    {

      v4 = sub_217007C84();
      v5 = sub_21700ED84();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_216679000, v4, v5, "Can't pin because user reached max number of pins", v6, 2u);
        MEMORY[0x21CEA1440](v6, -1, -1);
      }

      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_216A15D1C;
      v9 = *(v0 + 24);
      v8 = *(v0 + 32);

      return sub_216A16080(v9, v8);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  v11 = *(v0 + 120);

  v12 = v11;
  v13 = sub_217007C84();
  v14 = sub_21700ED84();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 120);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v15;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_216679000, v13, v14, "Can't pin. Received an error=%@", v16, 0xCu);
    sub_216697664(v17, &qword_27CABF880);
    MEMORY[0x21CEA1440](v17, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v20();
}

uint64_t sub_216A15D1C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A15E18()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_216A16C78(&qword_27CABFEE8, MEMORY[0x277D2AEF8]);
  swift_allocError();
  (*(v3 + 104))(v4, v1, v2);
  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216A15F10()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v1();
}

void sub_216A15F80(char a1)
{
  v2 = 8;
  if (a1)
  {
    v2 = 0;
  }

  v3 = *(v1 + v2);
  v4 = [objc_opt_self() defaultCenter];
  [v4 postNotificationName:v3 object:0];
}

uint64_t sub_216A1600C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D2A768];
  v3 = sub_217006AD4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_216A16080(uint64_t a1, uint64_t a2)
{
  v2[30] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = sub_21700D2A4();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = type metadata accessor for PresentAlertAction();
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  v2[42] = swift_task_alloc();
  v6 = sub_217006224();
  v2[43] = v6;
  v2[44] = *(v6 - 8);
  v2[45] = swift_task_alloc();
  sub_21700D284();
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A16300, 0, 0);
}

uint64_t sub_216A16300()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);
  v35 = *(v0 + 344);
  v3 = *(v0 + 336);
  v36 = *(v0 + 328);
  v37 = *(v0 + 320);
  v40 = *(v0 + 264);
  v38 = *(v0 + 256);
  v39 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
  v4 = *(_s6ActionVMa() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217013DA0;
  v7 = sub_216983738(181);
  v9 = v8;
  sub_21700D234();
  v10 = sub_21700D2C4();
  v11 = MEMORY[0x277D21CB8];
  *(v0 + 72) = v10;
  *(v0 + 80) = v11;
  __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  sub_21700D2B4();
  sub_217006214();
  v12 = sub_2170061F4();
  v14 = v13;
  (*(v2 + 8))(v1, v35);
  *(v0 + 16) = v12;
  *(v0 + 24) = v14;
  *(v0 + 32) = v7;
  *(v0 + 40) = v9;
  sub_217007EF4();
  v15 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
  sub_216933210(v3, (v6 + v5));
  sub_216697664(v3, &qword_27CAB70A8);
  sub_2167ADC98(v0 + 16);
  sub_21700BE44();
  sub_21700BE34();
  sub_21700BB44();

  v16 = sub_217006934();

  sub_216983738(151);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
  inited = swift_initStackObject();
  v18 = MEMORY[0x277D83B88];
  *(inited + 16) = xmmword_217013DA0;
  v19 = MEMORY[0x277D83C10];
  *(inited + 56) = v18;
  *(inited + 64) = v19;
  *(inited + 32) = v16;
  sub_216983808(17);
  v20 = OUTLINED_FUNCTION_116();
  sub_216933384(v20, v21, v6, v22, v23, v24);
  sub_21700D234();
  v25 = v36 + *(v37 + 20);
  v26 = *(v0 + 160);
  v27 = *(v0 + 176);
  *(v25 + 32) = *(v0 + 192);
  *v25 = v26;
  *(v25 + 16) = v27;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  *(v0 + 224) = v37;
  *(v0 + 232) = sub_216A16C78(qword_280E3EB18, type metadata accessor for PresentAlertAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 200));
  sub_216A16CC0(v36, boxed_opaque_existential_1);
  (*(v38 + 104))(v40, *MEMORY[0x277D21E18], v39);
  v29 = swift_task_alloc();
  *(v0 + 376) = v29;
  *v29 = v0;
  v29[1] = sub_216A166D0;
  v30 = *(v0 + 288);
  v31 = *(v0 + 296);
  v32 = *(v0 + 264);
  v33 = *(v0 + 240);

  return MEMORY[0x28217F468](v30, v0 + 200, v32, v33, v31);
}

uint64_t sub_216A166D0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[33];
  v7 = v5[32];
  v8 = v5[31];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[48] = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    (*(v3[35] + 8))(v3[36], v3[34]);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 25));
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216A16850()
{
  v1 = OUTLINED_FUNCTION_8_47();
  v2(v1);
  sub_216A16D24(v0);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216A16910()
{
  v2 = OUTLINED_FUNCTION_8_47();
  v3(v2);
  sub_216A16D24(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 200);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216A169DC(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(type metadata accessor for LibraryPinAction() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for LibraryPinActionImplementation() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v1 + v9);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2166AB4A4;

  return sub_216A14684(a1, v1 + v8, v12, v1 + v11, v6, v5);
}

uint64_t sub_216A16B58()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_216A15400();
}

uint64_t sub_216A16C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A16C78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A16CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentAlertAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A16D24(uint64_t a1)
{
  v2 = type metadata accessor for PresentAlertAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A16D80()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216A16DD4(char a1)
{
  if (a1)
  {
    return 6448503;
  }

  else
  {
    return 0x63696D616E7964;
  }
}

uint64_t sub_216A16E28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216A16D80();
  *a1 = result;
  return result;
}

uint64_t sub_216A16E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216A16DD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216A16F34()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABFEF0);
  __swift_project_value_buffer(v0, qword_27CABFEF0);
  return sub_217007C94();
}

_BYTE *storeEnumTagSinglePayload for MarketingSheetKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm_4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_217005EF4();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm_4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_217005EF4();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216A1721C()
{
  result = sub_217005EF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_216A172C8(void *a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  v7 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2166F1DCC();
    a2(0);
    v10 = sub_217005DE4();
    v11 = MEMORY[0x277D837D0];
    v23 = MEMORY[0x277D837D0];
    v21 = v10;
    v22 = v12;
    v13 = a1;
    v14 = sub_2166F1E10(&v21, a1);
    sub_2166F1F64(v14);
    v15 = *v3 == 0;
    v16 = 6448503;
    if (!*v3)
    {
      v16 = 0x63696D616E7964;
    }

    v17 = 0xE700000000000000;
    v23 = v11;
    if (!v15)
    {
      v17 = 0xE300000000000000;
    }

    v21 = v16;
    v22 = v17;
    v18 = v13;
    v19 = sub_2166F1E10(&v21, a1);
    sub_2166F1F64(v19);
    v20 = MEMORY[0x277D225C8];
    a3[3] = v9;
    a3[4] = v20;
    *a3 = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216A17458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A174A0(uint64_t a1)
{
  *(a1 + 8) = sub_216A17458(&qword_27CABFF28, type metadata accessor for MarketingSheetDidDisappearIntent);
  result = sub_216A17458(&qword_27CABFF30, type metadata accessor for MarketingSheetDidDisappearIntent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A17528()
{
  result = qword_27CABFF38;
  if (!qword_27CABFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF38);
  }

  return result;
}

uint64_t sub_216A1757C(uint64_t a1)
{
  *(a1 + 8) = sub_216A17458(&qword_27CABFF40, type metadata accessor for MarketingSheetDidAppearIntent);
  result = sub_216A17458(&qword_27CABFF48, type metadata accessor for MarketingSheetDidAppearIntent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A17600()
{
  result = qword_27CABFF50;
  if (!qword_27CABFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF50);
  }

  return result;
}

uint64_t type metadata accessor for InsettableConcentricRectangle()
{
  result = qword_280E31838;
  if (!qword_280E31838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A176D4()
{
  result = sub_217009384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216A1774C()
{
  result = qword_27CABFF58;
  if (!qword_27CABFF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF58);
  }

  return result;
}

double sub_216A177B0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_216A17B70(v2, a1);
  v5 = *(type metadata accessor for InsettableConcentricRectangle() + 20);
  result = *(a1 + v5) + a2;
  *(a1 + v5) = result;
  return result;
}

double sub_216A17800@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = type metadata accessor for InsettableConcentricRectangle();
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  v12 = *(v5 + *(v11 + 20));
  CGRectInset(v17, v12, v12);
  sub_217009364();
  result = *&v14;
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v16;
  return result;
}

double sub_216A17890@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_216A17800(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_216A178DC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

uint64_t sub_216A17950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216A17BD4(&qword_280E31870);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_216A179D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216A17BD4(&qword_280E31870);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_216A17A50(uint64_t a1)
{
  v2 = sub_216A17BD4(&qword_280E31870);

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_216A17B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsettableConcentricRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A17BD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InsettableConcentricRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_216A17C24()
{
  OUTLINED_FUNCTION_22_3();
  v20 = v0;
  v23 = v1;
  v3 = v2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v19 = (v8 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v21 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  v22 = v3;
  sub_21700CE04();
  v17 = *(v6 + 16);
  v17(v12, v23, v4);
  v18 = v20;
  sub_216A1883C();
  if (v18)
  {
    (*(v6 + 8))(v23, v4);
    (*(v14 + 8))(v22, v21);
  }

  else
  {
    v20 = v14;
    sub_21700CE04();
    v17(v19, v23, v4);
    sub_216A1883C();
    (*(v6 + 8))(v23, v4);
    (*(v20 + 8))(v22, v21);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216A17ED8()
{
  OUTLINED_FUNCTION_22_3();
  v1 = v0;
  v19 = v0;
  v3 = v2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  sub_21700CE04();
  (*(v6 + 16))(v10, v1, v4);
  sub_216A19F3C();
  sub_21700E944();
  sub_21700CE04();
  sub_21700CDB4();
  (*(v6 + 8))(v19, v4);
  v18 = *(v13 + 8);
  v18(v3, v11);
  v18(v17, v11);
  OUTLINED_FUNCTION_21_4();
}

void sub_216A180CC()
{
  OUTLINED_FUNCTION_22_3();
  v85 = v0;
  v91 = v1;
  v3 = v2;
  v87 = v4;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v89 = v6;
  v90 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v84 = v8 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF90);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v82 = (v80 - v10);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v83 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v81 = v80 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v80 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v80 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v80 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v80 - v29;
  v93 = v3;
  sub_21700CE04();
  v31 = sub_21700CDB4();
  v33 = v32;
  v34 = *(v13 + 8);
  v92 = v11;
  v97 = v34;
  v34(v30, v11);
  if (!v33)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_114();
    sub_216A19D78(v57, v58);
    OUTLINED_FUNCTION_4();
    *v59 = 25705;
    v59[1] = 0xE200000000000000;
    v59[2] = &unk_282922EF0;
    OUTLINED_FUNCTION_50();
    (*(v60 + 104))();
    swift_willThrow();
    v61 = OUTLINED_FUNCTION_10_47();
    v62(v61);
    v64 = v92;
    v63 = v93;
LABEL_8:
    v97(v63, v64);
    goto LABEL_12;
  }

  v88 = v33;
  sub_21700CE04();
  v35 = sub_21700CDB4();
  v37 = v36;
  v38 = v92;
  v97(v27, v92);
  if (!v37)
  {

    sub_21700E2E4();
    OUTLINED_FUNCTION_0_114();
    sub_216A19D78(v65, v66);
    OUTLINED_FUNCTION_4();
    *v67 = 0x656C746974;
    v67[1] = 0xE500000000000000;
    v67[2] = &unk_282922EF0;
    OUTLINED_FUNCTION_50();
    (*(v68 + 104))();
    swift_willThrow();
    v69 = OUTLINED_FUNCTION_10_47();
    v70(v69);
    v63 = v93;
    v64 = v38;
    goto LABEL_8;
  }

  v39 = v37;
  v41 = v87;
  v40 = v88;
  *(v87 + 96) = v31;
  *(v41 + 104) = v40;
  *v41 = v35;
  *(v41 + 8) = v39;
  v80[1] = v39;
  sub_21700CE04();
  sub_21700CE04();
  v42 = sub_21700CDB4();
  v44 = v43;
  v97(v21, v38);
  if (v44)
  {
    v45 = v86;
    v46 = v82;
    (*(v13 + 32))(v82 + *(v86 + 36), v24, v38);
    *v46 = v42;
    v46[1] = v44;
    *(&v95 + 1) = v45;
    v96 = sub_216A19BD8();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v94);
    sub_216A19C3C(v46, boxed_opaque_existential_1);
    v48 = v95;
    *(v41 + 16) = v94;
    *(v41 + 32) = v48;
    *(v41 + 48) = v96;
    v49 = v81;
    v50 = v93;
    sub_21700CE04();
    v51 = v91;
    sub_21700D2E4();
    v97(v49, v38);
    sub_21700CE04();
    v53 = v89;
    v52 = v90;
    (*(v89 + 16))(v84, v51, v90);
    v54 = v85;
    sub_216A17C24();
    if (!v54)
    {
      v78 = v55;
      v79 = v56;
      (*(v53 + 8))(v51, v52);
      v97(v50, v92);
      *(v41 + 112) = v78;
      *(v41 + 120) = v79;
      goto LABEL_12;
    }

    (*(v53 + 8))(v51, v52);
    v97(v50, v92);

    sub_2166997CC(v41 + 16, &qword_27CABFFC8);
    sub_2166997CC(v41 + 56, &qword_27CAB6DB0);
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_114();
    sub_216A19D78(v71, v72);
    OUTLINED_FUNCTION_4();
    *v73 = 0x646E696B24;
    v74 = v86;
    v73[1] = 0xE500000000000000;
    v73[2] = v74;
    OUTLINED_FUNCTION_50();
    (*(v75 + 104))();
    swift_willThrow();
    v97(v24, v38);
    v76 = OUTLINED_FUNCTION_10_47();
    v77(v76);
    v97(v93, v38);
  }

LABEL_12:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A18804(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104))
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

void sub_216A1883C()
{
  OUTLINED_FUNCTION_22_3();
  v28 = v0;
  v29 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  sub_21700CE04();
  sub_21700CD74();
  v21 = *(v9 + 8);
  v21(v13, v7);
  if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
  {
    sub_2166997CC(v6, &qword_27CAB78D0);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_114();
    sub_216A19D78(v22, v23);
    OUTLINED_FUNCTION_12();
    *v24 = 0x73726F6C6F63;
    v24[1] = 0xE600000000000000;
    v24[2] = &unk_282922DF0;
    OUTLINED_FUNCTION_50();
    (*(v25 + 104))();
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v26 + 8))(v29);
    v21(v3, v7);
  }

  else
  {
    (*(v16 + 32))(v20, v6, v14);
    sub_21700E2A4();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v27 + 8))(v29);
    v21(v3, v7);
    (*(v16 + 8))(v20, v14);
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A18BF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700CDB4();
  if (v3)
  {
    result = sub_216A18D00(v2, v3);
    *a1 = result;
  }

  else
  {
    v5 = sub_21700E2E4();
    sub_216A19D78(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v6 = MEMORY[0x277D84F90];
    *v7 = 0x73726F6C6F63;
    v7[1] = 0xE600000000000000;
    v7[2] = &unk_282922DF0;
    v7[3] = v6;
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D22540], v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_216A18D00(uint64_t a1, unint64_t a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = sub_21700AC64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = a1;
  v13[2] = a2;
  sub_21700DF14();
  v8 = sub_21700E6E4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    __break(1u);
  }

  result = sub_216CE0D98(a1, a2);
  if (v11)
  {

    sub_216A19CF0(1);
LABEL_7:
    v13[0] = 0;
    sub_216A19CAC();
    v12 = sub_2169130B0();
    [v12 scanHexLongLong_];

    (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
    return sub_21700AD44();
  }

  __break(1u);
  return result;
}

uint64_t sub_216A18EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CEA0720](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 8;

      sub_21700ACB4();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_216A18F58(uint64_t a1)
{
  sub_21700F8F4();
  sub_216E257A8(v3, a1);
  return sub_21700F944();
}

uint64_t sub_216A18FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_216E20D68(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_216E20D68(a2, a4);
}

uint64_t sub_216A18FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_216E257A8(a1, a2);

  return sub_216E257A8(a1, a3);
}

uint64_t sub_216A19038(uint64_t a1, uint64_t a2)
{
  sub_21700F8F4();
  sub_216E257A8(v5, a1);
  sub_216E257A8(v5, a2);
  return sub_21700F944();
}

uint64_t sub_216A19090()
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

void sub_216A190D4(void *a1@<X8>)
{
  sub_216A1883C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_216A19110()
{
  v1 = *v0;
  sub_21700F8F4();
  sub_216E257A8(v3, v1);
  return sub_21700F944();
}

void sub_216A19160(void *a1@<X8>)
{
  sub_216A17C24();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_216A1919C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21700F8F4();
  sub_216E257A8(v4, v1);
  sub_216E257A8(v4, v2);
  return sub_21700F944();
}

unint64_t sub_216A19204()
{
  result = qword_27CABFF70;
  if (!qword_27CABFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF70);
  }

  return result;
}

uint64_t sub_216A192C4()
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

void sub_216A19304(void *a1@<X8>)
{
  sub_216A17ED8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

void sub_216A19334()
{
  OUTLINED_FUNCTION_22_3();
  v55 = v0;
  v2 = v1;
  v59 = v3;
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v52 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v54 = v8 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF90);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v53 = (&v47 - v10);
  v11 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = type metadata accessor for ReplayYearGradient(0);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_77();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v47 - v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v26 = type metadata accessor for ReplayYearListItem(0);
  v27 = v26;
  v28 = (v2 + v26[5]);
  v29 = v28[1];
  if (!v29)
  {
    sub_2167880BC();
    OUTLINED_FUNCTION_12();
    v36 = xmmword_217014E10;
    goto LABEL_7;
  }

  v50 = v4;
  v30 = (v2 + v26[6]);
  v31 = v30[1];
  if (!v31)
  {
    sub_2167880BC();
    OUTLINED_FUNCTION_12();
    v36 = xmmword_21701C090;
    goto LABEL_7;
  }

  v32 = *v28;
  v33 = *v30;
  v48 = v32;
  v49 = v33;
  sub_216A19AB0(v2 + v26[7], v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v11);
  sub_2166997CC(v25, &qword_27CABFF98);
  if (EnumTagSinglePayload == 1)
  {
    sub_2167880BC();
    OUTLINED_FUNCTION_12();
    v36 = xmmword_217036890;
LABEL_7:
    *v35 = v36;
    *(v35 + 16) = v27;
    swift_willThrow();
    OUTLINED_FUNCTION_2_76();
    goto LABEL_8;
  }

  v37 = v49;
  *(v59 + 96) = v48;
  *(v59 + 104) = v29;
  *v59 = v37;
  *(v59 + 8) = v31;
  sub_21700DF14();
  sub_21700DF14();
  sub_216F471A4(v22);
  sub_216A19B20(v22, v19);
  v38 = sub_21700DF14();
  v39 = sub_216A19838(v38);
  v40 = sub_21700DF14();
  v49 = sub_216A19838(v40);
  sub_216A19B84(v19, type metadata accessor for ReplayYearGradient);
  sub_216A19B84(v22, type metadata accessor for ReplayYearGradient);
  v48 = v39;
  *(v59 + 112) = v39;
  *(v59 + 120) = v49;
  sub_216F46D78();
  sub_216B3B364(v59 + 56);
  sub_216A19B84(v15, type metadata accessor for AnyAction);
  v42 = v53;
  v41 = v54;
  *v53 = 0x65746E496B636F4DLL;
  *(v42 + 8) = 0xEA0000000000746ELL;
  v43 = v55;
  sub_21700CD04();
  if (v43)
  {
    OUTLINED_FUNCTION_2_76();

    sub_2166997CC(v59 + 56, &qword_27CAB6DB0);
  }

  else
  {
    v44 = v51;
    (*(v52 + 32))(v42 + *(v51 + 36), v41, v50);
    *(&v57 + 1) = v44;
    v58 = sub_216A19BD8();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
    sub_216A19C3C(v42, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_2_76();
    v46 = v57;
    *(v59 + 16) = v56;
    *(v59 + 32) = v46;
    *(v59 + 48) = v58;
  }

LABEL_8:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A197C4(uint64_t a1)
{
  v2 = sub_21700DF14();
  v3 = sub_216A19838(v2);
  v4 = sub_21700DF14();
  sub_216A19838(v4);
  sub_216A19B84(a1, type metadata accessor for ReplayYearGradient);
  return v3;
}

uint64_t sub_216A19838(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v4 = *(result + 16);
  v5 = result + 40;
LABEL_2:
  v6 = (v5 + 16 * v2);
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    ++v2;
    v7 = v6 + 2;
    v9 = *(v6 - 1);
    v8 = *v6;
    sub_21700DF14();
    result = sub_216A18D00(v9, v8);
    v6 = v7;
    if (result)
    {
      MEMORY[0x21CE9F610]();
      if (*(v10 + 16) >= *(v10 + 24) >> 1)
      {
        sub_21700E874();
      }

      result = sub_21700E8C4();
      v3 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216A19930@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_216A197C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_216A19A34(uint64_t a1)
{
  result = sub_216A19A5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A19A5C()
{
  result = qword_27CABFF88;
  if (!qword_27CABFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF88);
  }

  return result;
}

uint64_t sub_216A19AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A19B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayYearGradient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A19B84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216A19BD8()
{
  result = qword_27CABFFA0;
  if (!qword_27CABFFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFA0);
  }

  return result;
}

uint64_t sub_216A19C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A19CAC()
{
  result = qword_27CABFFA8;
  if (!qword_27CABFFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CABFFA8);
  }

  return result;
}

uint64_t sub_216A19CF0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_21700E644();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

uint64_t sub_216A19D78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A19DE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_216A19E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216A19E90()
{
  result = qword_27CABFFB0;
  if (!qword_27CABFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFB0);
  }

  return result;
}

unint64_t sub_216A19EE8()
{
  result = qword_27CABFFB8;
  if (!qword_27CABFFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFB8);
  }

  return result;
}

unint64_t sub_216A19F3C()
{
  result = qword_27CABFFC0;
  if (!qword_27CABFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFC0);
  }

  return result;
}

uint64_t sub_216A19FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for PresentationItem.Destination();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_21700EA34();
  v4[9] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A1A0B8, v7, v6);
}

uint64_t sub_216A1A0B8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v0[3];

  v7 = (v6 + *(type metadata accessor for PresentConfirmationDialogAction() + 20));
  v8 = v7[1];
  v10 = v7[2];
  v9 = v7[3];
  v11 = v7[4];
  *v1 = *v7;
  v1[1] = v8;
  v1[2] = v10;
  v1[3] = v9;
  v1[4] = v11;
  v1[5] = v4;
  swift_storeEnumTagMultiPayload();
  sub_21700DF14();

  sub_21700DF14();
  sub_21700DF14();
  sub_216AF424C();
  (*(v3 + 8))(v1, v2);
  v12 = *MEMORY[0x277D21CA8];
  v13 = sub_21700D2A4();
  (*(*(v13 - 8) + 104))(v5, v12, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_216A1A218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2166DFAC0;

  return sub_216A19FB8(a1, a2, a3, v8);
}

uint64_t sub_216A1A2E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A1A320()
{
  result = qword_280E30130[0];
  if (!qword_280E30130[0])
  {
    type metadata accessor for PresentConfirmationDialogAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E30130);
  }

  return result;
}

uint64_t sub_216A1A378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

void *sub_216A1A3E4()
{
  sub_217006E44();
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = sub_217006BA4();
  return v0;
}

uint64_t sub_216A1A420()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_26(v1, v2, v3, v4, v5, v6);
  v0[3] = v7;
  v0[4] = v8;
  v9 = sub_217006B94();
  v0[7] = v9;
  OUTLINED_FUNCTION_2(v9);
  v0[8] = v10;
  v0[9] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFD8);
  OUTLINED_FUNCTION_36(v11);
  v0[10] = OUTLINED_FUNCTION_80();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE8);
  OUTLINED_FUNCTION_36(v12);
  v0[11] = OUTLINED_FUNCTION_80();
  v13 = sub_21700F164();
  OUTLINED_FUNCTION_36(v13);
  v14 = OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_30(v14);
  v15 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_216A1A54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  v13 = v12[14];
  v14 = v12[4];
  v15 = v12[3];
  sub_217006CC4();
  sub_216A1DB44(v14, v14);
  v16 = *(v14 - 8);
  swift_allocObject();
  v17 = sub_21700E854();
  (*(v16 + 16))(v18, v15, v14);
  v12[2] = sub_216A3FD4C(v17);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  sub_217006874();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_21700E984();
  swift_getWitnessTable();
  v12[17] = sub_217006C54();
  if (v13 == 1)
  {
    sub_217006C34();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    sub_21700DF14();
    sub_217006C34();
    OUTLINED_FUNCTION_25_27();
  }

  sub_217006C44();
  v26 = OUTLINED_FUNCTION_5_59();
  v27(v26);
  v28 = OUTLINED_FUNCTION_7_56();
  v29(v28);
  v30 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_35_22(v30, v31, v32);
  sub_217006C04();
  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_29_25(v33);
  *v34 = v35;
  v34[1] = sub_216A1A7C8;
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x282189B38](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_216A1A7C8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1A8C0()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1A948()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1A9D4()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 56) = v6;
  *(v1 + 64) = v0;
  *(v1 + 40) = v2;
  *(v1 + 48) = v7;
  *(v1 + 24) = v8;
  *(v1 + 32) = v9;
  *(v1 + 16) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE8);
  OUTLINED_FUNCTION_36(v11);
  *(v1 + 72) = OUTLINED_FUNCTION_80();
  v12 = sub_21700F164();
  OUTLINED_FUNCTION_36(v12);
  *(v1 + 80) = OUTLINED_FUNCTION_80();
  *(v1 + 88) = *(v3 - 8);
  *(v1 + 96) = OUTLINED_FUNCTION_80();
  v13 = v5[1];
  *(v1 + 104) = *v5;
  *(v1 + 120) = v13;
  v14 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_216A1AAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[11];
  v13 = v12[12];
  v15 = v12[10];
  v39 = v12[14];
  v17 = v12[4];
  v16 = v12[5];
  v19 = v12[2];
  v18 = v12[3];
  sub_217006CC4();
  (*(v14 + 16))(v13, v18, v16);
  (*(*(v17 - 8) + 16))(v15, v19, v17);
  v20 = OUTLINED_FUNCTION_44_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v17);
  sub_217006874();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v12[17] = sub_217006C54();
  if (v39 == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_25_27();
  }

  sub_217006C44();
  v27 = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_29_25(v27);
  *v28 = v29;
  v30 = OUTLINED_FUNCTION_11_43(v28);

  return MEMORY[0x282189B38](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_216A1ACA4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1AD9C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_29();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1AE14()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_29();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1AE90()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 96) = v6;
  *(v1 + 104) = v0;
  *(v1 + 80) = v2;
  *(v1 + 88) = v7;
  *(v1 + 64) = v8;
  *(v1 + 72) = v9;
  *(v1 + 56) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE8);
  OUTLINED_FUNCTION_36(v11);
  *(v1 + 112) = OUTLINED_FUNCTION_80();
  *(v1 + 120) = *(v3 - 8);
  *(v1 + 128) = OUTLINED_FUNCTION_80();
  v12 = v5[1];
  *(v1 + 136) = *v5;
  *(v1 + 152) = v12;
  v13 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_216A1AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[15];
  v13 = v12[16];
  v15 = v12[11];
  v35 = v12[18];
  v17 = v12[9];
  v16 = v12[10];
  v19 = v12[7];
  v18 = v12[8];
  sub_217006CC4();
  (*(v14 + 16))(v13, v18, v16);
  v12[5] = v17;
  v12[6] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 2);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
  sub_217006874();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v12[21] = sub_217006CB4();
  if (v35 == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_25_27();
  }

  sub_217006C44();
  v25 = swift_task_alloc();
  v12[22] = v25;
  *v25 = v12;
  v26 = OUTLINED_FUNCTION_11_43(v25);

  return MEMORY[0x282189B38](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_216A1B130()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1B228()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1B298()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1B30C()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 24) = v6;
  *(v1 + 32) = v0;
  v7 = sub_217006B94();
  *(v1 + 40) = v7;
  OUTLINED_FUNCTION_2(v7);
  *(v1 + 48) = v8;
  *(v1 + 56) = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFD8);
  OUTLINED_FUNCTION_36(v9);
  *(v1 + 64) = OUTLINED_FUNCTION_80();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_36(v10);
  *(v1 + 72) = OUTLINED_FUNCTION_80();
  *(v1 + 136) = *v5;
  v11 = v3[1];
  *(v1 + 80) = *v3;
  *(v1 + 96) = v11;
  v12 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_216A1B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v13 = v12[3];
  sub_217006CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE0);
  v14 = sub_2170067A4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_217013DA0;
  (*(v15 + 16))(v17 + v16, v13, v14);
  v12[2] = v17;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A38);
  sub_21677A45C();
  v12[14] = sub_217006C64();
  if (v12[11] == 1)
  {
    sub_217006C34();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    v22 = v12[12];
    v21 = v12[13];
    sub_21700DF14();
    sub_217006C34();
    sub_21677A3F0(v22, v21);
  }

  sub_217006C44();
  v23 = OUTLINED_FUNCTION_5_59();
  v24(v23);
  v25 = OUTLINED_FUNCTION_7_56();
  v26(v25);
  v27 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_35_22(v27, v28, v29);
  sub_217006C04();
  v30 = swift_task_alloc();
  v12[15] = v30;
  *v30 = v12;
  v30[1] = sub_216A1B6E8;
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189B38](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_216A1B6E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1B7E0()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1B860()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1B8E0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_26(v4, v5, v6, v7, v8, v9);
  *(v2 + 24) = v10;
  *(v2 + 32) = v11;
  *(v2 + 16) = v12;
  v13 = sub_217006B94();
  *(v2 + 56) = v13;
  OUTLINED_FUNCTION_2(v13);
  *(v2 + 64) = v14;
  *(v2 + 72) = OUTLINED_FUNCTION_80();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFD8);
  OUTLINED_FUNCTION_36(v15);
  *(v2 + 80) = OUTLINED_FUNCTION_80();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_36(v16);
  *(v2 + 88) = OUTLINED_FUNCTION_80();
  *(v2 + 96) = *(v1 - 8);
  *(v2 + 104) = OUTLINED_FUNCTION_80();
  *(v2 + 168) = *v0;
  v17 = v3[1];
  *(v2 + 112) = *v3;
  *(v2 + 128) = v17;
  v18 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_216A1BA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_115_1();
  v14 = v12[12];
  v13 = v12[13];
  v15 = v12[11];
  v16 = v12[4];
  v18 = v12[2];
  v17 = v12[3];
  sub_217006CC4();
  (*(v14 + 16))(v13, v17, v16);
  v19 = sub_2170067A4();
  (*(*(v19 - 8) + 16))(v15, v18, v19);
  v20 = OUTLINED_FUNCTION_44_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_28_26();
  v12[18] = sub_217006C64();
  if (v12[15] == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    v24 = v12[16];
    v23 = v12[17];
    sub_21700DF14();
    sub_217006C34();
    sub_21677A3F0(v24, v23);
  }

  sub_217006C44();
  v25 = OUTLINED_FUNCTION_5_59();
  v26(v25);
  v27 = OUTLINED_FUNCTION_7_56();
  v28(v27);
  v29 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_35_22(v29, v30, v31);
  sub_217006C04();
  v32 = swift_task_alloc();
  v12[19] = v32;
  *v32 = v12;
  v33 = OUTLINED_FUNCTION_11_43(v32);

  return MEMORY[0x282189B38](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_216A1BCA0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1BD98()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1BE24()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1BEB0()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  *(v1 + 48) = *(v6 - 8);
  *(v1 + 56) = OUTLINED_FUNCTION_80();
  v7 = v3[1];
  *(v1 + 64) = *v3;
  *(v1 + 80) = v7;
  v8 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A1BF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v13 = v12[9];
  v15 = v12[6];
  v14 = v12[7];
  v16 = v12[3];
  v17 = v12[2];
  sub_217006CC4();
  (*(v15 + 16))(v14, v17, v16);
  v12[12] = sub_217006C14();
  if (v13 == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_25_27();
  }

  sub_217006C44();
  v18 = swift_task_alloc();
  v12[13] = v18;
  *v18 = v12;
  OUTLINED_FUNCTION_11_43(v18);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189B38](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_216A1C084()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1C17C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1C1E0()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1C248()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v1[4] = v4;
  v1[5] = v0;
  v1[2] = v5;
  v1[3] = v2;
  v6 = sub_217006B94();
  v1[6] = v6;
  OUTLINED_FUNCTION_2(v6);
  v1[7] = v7;
  v1[8] = OUTLINED_FUNCTION_80();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFD8);
  OUTLINED_FUNCTION_36(v8);
  v1[9] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_36(v9);
  v1[10] = OUTLINED_FUNCTION_80();
  v1[11] = *(v3 - 8);
  v10 = OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_30(v10);
  v11 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216A1C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v14 = v12[11];
  v13 = v12[12];
  v15 = v12[3];
  v16 = v12[2];
  sub_217006CC4();
  (*(v14 + 16))(v13, v16, v15);
  sub_2170067A4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_28_26();
  v12[17] = sub_217006C64();
  if (v12[14] == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    v22 = v12[15];
    v21 = v12[16];
    sub_21700DF14();
    sub_217006C34();
    sub_21677A3F0(v22, v21);
  }

  sub_217006C44();
  v23 = OUTLINED_FUNCTION_5_59();
  v24(v23);
  v25 = OUTLINED_FUNCTION_7_56();
  v26(v25);
  v27 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_35_22(v27, v28, v29);
  sub_217006C04();
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_29_25(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_11_43(v31);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189B38](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_216A1C5A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1C69C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_29();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1C720()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1C7D4()
{
  OUTLINED_FUNCTION_31();
  sub_216A1DAF0();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1C854()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 48) = v6;
  *(v1 + 56) = v0;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  v11 = sub_217006C24();
  *(v1 + 64) = v11;
  OUTLINED_FUNCTION_2(v11);
  *(v1 + 72) = v12;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 176) = *v5;
  v13 = v3[1];
  *(v1 + 96) = *v3;
  *(v1 + 112) = v13;
  v14 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_216A1C934()
{
  OUTLINED_FUNCTION_82_0();
  v0[16] = sub_217006D64();
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = OUTLINED_FUNCTION_5_59();
  v6(v5);
  v7 = OUTLINED_FUNCTION_7_56();
  v8(v7);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_27_25();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_25_27();
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[13];
  }

  v0[18] = v3;
  v0[19] = v4;
  v0[17] = v2;
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_216A1CA74;
  OUTLINED_FUNCTION_21_33(v0[2]);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189BC0]();
}

uint64_t sub_216A1CA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_69_0();
  v15 = v14;
  v36 = v14[19];
  v16 = v14[18];
  v17 = v14[17];
  v18 = v14[11];
  v19 = v14[9];
  v20 = v14[8];
  v21 = *v13;
  OUTLINED_FUNCTION_28();
  *v22 = v21;
  v15[21] = v12;

  (*(v19 + 8))(v18, v20);
  sub_21677A510(v17, v16);

  if (v12)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {

    OUTLINED_FUNCTION_31_29();
    OUTLINED_FUNCTION_7_3();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
  }
}

uint64_t sub_216A1CC74()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1CCD8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 32) = v6;
  *(v1 + 40) = v0;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  v9 = sub_217006C24();
  *(v1 + 48) = v9;
  OUTLINED_FUNCTION_2(v9);
  *(v1 + 56) = v10;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 160) = *v5;
  v11 = v3[1];
  *(v1 + 80) = *v3;
  *(v1 + 96) = v11;
  v12 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_216A1CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v10[14] = sub_217006D64();
  v11 = v10[11];
  v13 = v10[8];
  v12 = v10[9];
  v14 = v10[6];
  v15 = OUTLINED_FUNCTION_5_59();
  v16(v15);
  v17 = OUTLINED_FUNCTION_7_56();
  v18(v17);
  if (v11 == 1)
  {
    OUTLINED_FUNCTION_27_25();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_25_27();
    v12 = v10[12];
    v13 = v10[13];
    v14 = v10[11];
  }

  v10[16] = v13;
  v10[17] = v14;
  v10[15] = v12;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_29_25(v19);
  *v20 = v21;
  v20[1] = sub_216A1CEDC;
  OUTLINED_FUNCTION_21_33(v10[2]);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189BC8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_216A1CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_69_0();
  v15 = v14;
  v36 = v14[17];
  v16 = v14[16];
  v17 = v14[15];
  v18 = v14[9];
  v19 = v14[7];
  v20 = v14[6];
  v21 = *v13;
  OUTLINED_FUNCTION_28();
  *v22 = v21;
  v15[19] = v12;

  (*(v19 + 8))(v18, v20);
  sub_21677A510(v17, v16);

  if (v12)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {

    OUTLINED_FUNCTION_31_29();
    OUTLINED_FUNCTION_7_3();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
  }
}

uint64_t sub_216A1D0DC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1D164()
{
  sub_21667E91C(*(v0 + 16));

  return v0;
}

uint64_t sub_216A1D18C()
{
  sub_216A1D164();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_216A1D1E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1A420();
}

uint64_t sub_216A1D2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1A9D4();
}

uint64_t sub_216A1D390()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1AE90();
}

uint64_t sub_216A1D474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1B30C();
}

uint64_t sub_216A1D524()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1B8E0();
}

uint64_t sub_216A1D5FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1C248();
}

uint64_t sub_216A1D6C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1BEB0();
}

uint64_t sub_216A1D784()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_216A1C7AC();
}

uint64_t sub_216A1D810()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1C854();
}

uint64_t sub_216A1D8F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1CCD8();
}

uint64_t sub_216A1D9EC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_2167759F4(v2);
  return v2;
}

uint64_t sub_216A1DA40(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_21667E91C(v6);
}

unint64_t sub_216A1DAF0()
{
  result = qword_27CABFFD0;
  if (!qword_27CABFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFD0);
  }

  return result;
}

uint64_t sub_216A1DB44(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  }

  else
  {

    return sub_21700F794();
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for MusicKitPlayer.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A1DC90()
{
  result = qword_27CABFFF0;
  if (!qword_27CABFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFF0);
  }

  return result;
}

uint64_t sub_216A1DCE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC7MusicUI28LibraryPinMenuActionProvider_actionDispatcher, v6, v3);
  return v1;
}

uint64_t sub_216A1DDF8()
{
  OUTLINED_FUNCTION_7_57();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_97();
  sub_21700C1E4();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_104_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_6_53();
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_60();
  sub_216A1DF18(v5, v6, v7, v8, v9, 0xE500000000000000, v10, v11);
  v12 = OUTLINED_FUNCTION_4_65();
  v13(v12);
  return OUTLINED_FUNCTION_9_48();
}

uint64_t sub_216A1DF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  v20 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = OUTLINED_FUNCTION_8_48();
  a7(v12);
  v13 = sub_21678C1C4();
  sub_216697664(v11, &qword_27CAB6DF0);
  v14 = OUTLINED_FUNCTION_8_48();
  v20(v14);
  v15 = sub_21678C1C4();
  sub_216697664(v11, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  v17 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v17;
}

uint64_t sub_216A1E070()
{
  OUTLINED_FUNCTION_7_57();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_97();
  sub_21700BA44();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_104_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_6_53();
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_60();
  sub_216A1DF18(v5, v6, v7, v8, v9, 0xEA00000000006F65, v10, v11);
  v12 = OUTLINED_FUNCTION_4_65();
  v13(v12);
  return OUTLINED_FUNCTION_9_48();
}

uint64_t sub_216A1E198()
{
  OUTLINED_FUNCTION_7_57();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_97();
  sub_21700C924();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_104_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_6_53();
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_60();
  sub_216A1DF18(v5, v6, v7, v8, v9, 0xE800000000000000, v10, v11);
  v12 = OUTLINED_FUNCTION_4_65();
  v13(v12);
  return OUTLINED_FUNCTION_9_48();
}

uint64_t sub_216A1E2BC()
{
  OUTLINED_FUNCTION_7_57();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_97();
  sub_21700C084();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_104_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_6_53();
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_60();
  sub_216A1DF18(v5, v6, v7, v8, 1735290739, 0xE400000000000000, v9, v10);
  v11 = OUTLINED_FUNCTION_4_65();
  v12(v11);
  return OUTLINED_FUNCTION_9_48();
}

uint64_t sub_216A1E3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v108 = a3;
  v105 = a2;
  v114 = a1;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0058);
  v104 = *(v102 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v83 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v86 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v113 = &v83 - v21;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700BE24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0020);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v83 - v29;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v31 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v31 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_2170067F4(), v32 = sub_21700C1E4(), sub_21700BC04(), , (*(v24 + 8))(v26, v23), v33 = (*(v28 + 88))(v30, v27), v34 = *MEMORY[0x277D2B048], (*(v28 + 8))(v30, v27), v33 == v34))
  {
    v83 = sub_21700B934();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v38 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v39 = v38[1];
    v40 = MEMORY[0x277D837D0];
    *(inited + 48) = *v38;
    *(inited + 56) = v39;
    *(inited + 72) = v40;
    *(inited + 80) = 1684957547;
    v41 = 0xE400000000000000;
    *(inited + 120) = v40;
    v42 = v88;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v91;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v91);
    v45 = v94;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v40;
    *&v118 = 7235952;
    *(&v118 + 1) = 0xE300000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v48 = v116;
    v49 = 1701998445;
    switch(v90)
    {
      case 1:
        v41 = 0xE500000000000000;
        v49 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v41 = 0xE500000000000000;
        v49 = 0x636972796CLL;
        break;
      case 4:
        v49 = 0xD000000000000010;
        v41 = 0x80000002170801D0;
        break;
      case 5:
        v41 = 0x80000002170801F0;
        v49 = 0xD000000000000012;
        break;
      case 6:
        v41 = 0xE900000000000075;
        v49 = 0x6E654D6570697773;
        break;
      case 7:
        v41 = 0x8000000217080210;
        v49 = 0xD000000000000015;
        break;
      default:
        v41 = 0xE800000000000000;
        v49 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v40;
    *&v118 = v49;
    *(&v118 + 1) = v41;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v48;
    sub_2166EF9D4();
    v52 = v116;
    sub_216A25C64(v113, v19, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v44);
    v84 = v32;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v19, &qword_27CABA820);
    }

    else
    {
      v54 = v86;
      v55 = v40;
      v56 = v85;
      (*(v86 + 32))(v85, v19, v44);
      v57 = sub_217005DE4();
      v119 = v55;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v52;
      sub_2166EF9D4();
      v52 = v116;
      (*(v54 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v99;
    MEMORY[0x21CE9DD70](v83, v36, 0x6E6F74747562, 0xE600000000000000, v52, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v62 = v100;
    v63 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v101;
    (*(v62 + 16))(v65, v61, v101);
    v67 = v97;
    v68 = v98;
    (*(v97 + 16))(v93, v45, v98);
    v69 = v92;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v113, &qword_27CABA820);
    v70 = v103;
    (*(*(v84 - 8) + 16))(v103, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0060);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(&v70[*(v102 + 36)], v69, v96);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v105, v71);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0058);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0058);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction();
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25CB0;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v50);
  }
}

uint64_t sub_216A1F278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v108 = a3;
  v105 = a2;
  v114 = a1;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0040);
  v104 = *(v102 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v83 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v86 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v113 = &v83 - v21;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700BE24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0020);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v83 - v29;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v31 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v31 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_2170067F4(), v32 = sub_21700BA44(), sub_21700BC04(), , (*(v24 + 8))(v26, v23), v33 = (*(v28 + 88))(v30, v27), v34 = *MEMORY[0x277D2B048], (*(v28 + 8))(v30, v27), v33 == v34))
  {
    v83 = sub_21700B934();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v38 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v39 = v38[1];
    v40 = MEMORY[0x277D837D0];
    *(inited + 48) = *v38;
    *(inited + 56) = v39;
    *(inited + 72) = v40;
    *(inited + 80) = 1684957547;
    v41 = 0xE400000000000000;
    *(inited + 120) = v40;
    v42 = v88;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v91;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v91);
    v45 = v94;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v40;
    *&v118 = 7235952;
    *(&v118 + 1) = 0xE300000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v48 = v116;
    v49 = 1701998445;
    switch(v90)
    {
      case 1:
        v41 = 0xE500000000000000;
        v49 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v41 = 0xE500000000000000;
        v49 = 0x636972796CLL;
        break;
      case 4:
        v49 = 0xD000000000000010;
        v41 = 0x80000002170801D0;
        break;
      case 5:
        v41 = 0x80000002170801F0;
        v49 = 0xD000000000000012;
        break;
      case 6:
        v41 = 0xE900000000000075;
        v49 = 0x6E654D6570697773;
        break;
      case 7:
        v41 = 0x8000000217080210;
        v49 = 0xD000000000000015;
        break;
      default:
        v41 = 0xE800000000000000;
        v49 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v40;
    *&v118 = v49;
    *(&v118 + 1) = v41;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v48;
    sub_2166EF9D4();
    v52 = v116;
    sub_216A25C64(v113, v19, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v44);
    v84 = v32;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v19, &qword_27CABA820);
    }

    else
    {
      v54 = v86;
      v55 = v40;
      v56 = v85;
      (*(v86 + 32))(v85, v19, v44);
      v57 = sub_217005DE4();
      v119 = v55;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v52;
      sub_2166EF9D4();
      v52 = v116;
      (*(v54 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v99;
    MEMORY[0x21CE9DD70](v83, v36, 0x6E6F74747562, 0xE600000000000000, v52, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v62 = v100;
    v63 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v101;
    (*(v62 + 16))(v65, v61, v101);
    v67 = v97;
    v68 = v98;
    (*(v97 + 16))(v93, v45, v98);
    v69 = v92;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v113, &qword_27CABA820);
    v70 = v103;
    (*(*(v84 - 8) + 16))(v103, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0048);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(&v70[*(v102 + 36)], v69, v96);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v105, v71);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0040);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0040);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction();
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25BA8;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v50);
  }
}

uint64_t sub_216A20118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v108 = a3;
  v105 = a2;
  v114 = a1;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0028);
  v104 = *(v102 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v83 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v86 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v113 = &v83 - v21;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700BE24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0020);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v83 - v29;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v31 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v31 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_2170067F4(), v32 = sub_21700C924(), sub_21700BC04(), , (*(v24 + 8))(v26, v23), v33 = (*(v28 + 88))(v30, v27), v34 = *MEMORY[0x277D2B048], (*(v28 + 8))(v30, v27), v33 == v34))
  {
    v83 = sub_21700B934();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v38 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v39 = v38[1];
    v40 = MEMORY[0x277D837D0];
    *(inited + 48) = *v38;
    *(inited + 56) = v39;
    *(inited + 72) = v40;
    *(inited + 80) = 1684957547;
    v41 = 0xE400000000000000;
    *(inited + 120) = v40;
    v42 = v88;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v91;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v91);
    v45 = v94;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v40;
    *&v118 = 7235952;
    *(&v118 + 1) = 0xE300000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v48 = v116;
    v49 = 1701998445;
    switch(v90)
    {
      case 1:
        v41 = 0xE500000000000000;
        v49 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v41 = 0xE500000000000000;
        v49 = 0x636972796CLL;
        break;
      case 4:
        v49 = 0xD000000000000010;
        v41 = 0x80000002170801D0;
        break;
      case 5:
        v41 = 0x80000002170801F0;
        v49 = 0xD000000000000012;
        break;
      case 6:
        v41 = 0xE900000000000075;
        v49 = 0x6E654D6570697773;
        break;
      case 7:
        v41 = 0x8000000217080210;
        v49 = 0xD000000000000015;
        break;
      default:
        v41 = 0xE800000000000000;
        v49 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v40;
    *&v118 = v49;
    *(&v118 + 1) = v41;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v48;
    sub_2166EF9D4();
    v52 = v116;
    sub_216A25C64(v113, v19, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v44);
    v84 = v32;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v19, &qword_27CABA820);
    }

    else
    {
      v54 = v86;
      v55 = v40;
      v56 = v85;
      (*(v86 + 32))(v85, v19, v44);
      v57 = sub_217005DE4();
      v119 = v55;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v52;
      sub_2166EF9D4();
      v52 = v116;
      (*(v54 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v99;
    MEMORY[0x21CE9DD70](v83, v36, 0x6E6F74747562, 0xE600000000000000, v52, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v62 = v100;
    v63 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v101;
    (*(v62 + 16))(v65, v61, v101);
    v67 = v97;
    v68 = v98;
    (*(v97 + 16))(v93, v45, v98);
    v69 = v92;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v113, &qword_27CABA820);
    v70 = v103;
    (*(*(v84 - 8) + 16))(v103, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0030);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(&v70[*(v102 + 36)], v69, v96);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v105, v71);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0028);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0028);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction();
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25B8C;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v50);
  }
}

uint64_t sub_216A20FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v108 = a3;
  v105 = a2;
  v114 = a1;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFF8);
  v104 = *(v102 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v83 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v86 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v113 = &v83 - v21;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700BE24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0020);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v83 - v29;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v31 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v31 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_2170067F4(), v32 = sub_21700C084(), sub_21700BC04(), , (*(v24 + 8))(v26, v23), v33 = (*(v28 + 88))(v30, v27), v34 = *MEMORY[0x277D2B048], (*(v28 + 8))(v30, v27), v33 == v34))
  {
    v83 = sub_21700B934();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v38 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v39 = v38[1];
    v40 = MEMORY[0x277D837D0];
    *(inited + 48) = *v38;
    *(inited + 56) = v39;
    *(inited + 72) = v40;
    *(inited + 80) = 1684957547;
    v41 = 0xE400000000000000;
    *(inited + 120) = v40;
    v42 = v88;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v91;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v91);
    v45 = v94;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v40;
    *&v118 = 7235952;
    *(&v118 + 1) = 0xE300000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v48 = v116;
    v49 = 1701998445;
    switch(v90)
    {
      case 1:
        v41 = 0xE500000000000000;
        v49 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v41 = 0xE500000000000000;
        v49 = 0x636972796CLL;
        break;
      case 4:
        v49 = 0xD000000000000010;
        v41 = 0x80000002170801D0;
        break;
      case 5:
        v41 = 0x80000002170801F0;
        v49 = 0xD000000000000012;
        break;
      case 6:
        v41 = 0xE900000000000075;
        v49 = 0x6E654D6570697773;
        break;
      case 7:
        v41 = 0x8000000217080210;
        v49 = 0xD000000000000015;
        break;
      default:
        v41 = 0xE800000000000000;
        v49 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v40;
    *&v118 = v49;
    *(&v118 + 1) = v41;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v48;
    sub_2166EF9D4();
    v52 = v116;
    sub_216A25C64(v113, v19, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v44);
    v84 = v32;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v19, &qword_27CABA820);
    }

    else
    {
      v54 = v86;
      v55 = v40;
      v56 = v85;
      (*(v86 + 32))(v85, v19, v44);
      v57 = sub_217005DE4();
      v119 = v55;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v52;
      sub_2166EF9D4();
      v52 = v116;
      (*(v54 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v99;
    MEMORY[0x21CE9DD70](v83, v36, 0x6E6F74747562, 0xE600000000000000, v52, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v62 = v100;
    v63 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v101;
    (*(v62 + 16))(v65, v61, v101);
    v67 = v97;
    v68 = v98;
    (*(v97 + 16))(v93, v45, v98);
    v69 = v92;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v113, &qword_27CABA820);
    v70 = v103;
    (*(*(v84 - 8) + 16))(v103, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0010);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(&v70[*(v102 + 36)], v69, v96);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v105, v71);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CABFFF8);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CABFFF8);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction();
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25B70;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v50);
  }
}

uint64_t sub_216A21E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v108 = a3;
  v113 = a2;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v9;
  v109 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0058);
  v105 = *(v103 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v83 - v12;
  v102 = sub_21700CFB4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_217005EF4();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21700D704();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v83 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21700BB14();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0000);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v32 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v32 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_217006804(), v85 = sub_21700C1E4(), sub_21700BC04(), , (*(v25 + 8))(v27, v24), v33 = (*(v29 + 88))(v31, v28), v34 = *MEMORY[0x277D2B048], (*(v29 + 8))(v31, v28), v33 == v34))
  {
    v35 = a1;
    v84 = sub_217006AB4();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v39 = (v88 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v40 = v39[1];
    v41 = MEMORY[0x277D837D0];
    *(inited + 48) = *v39;
    *(inited + 56) = v40;
    *(inited + 72) = v41;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v41;
    v42 = v89;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v90;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v92;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v92);
    v45 = v95;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v41;
    v48 = 0xE500000000000000;
    *&v118 = 0x6E69706E75;
    *(&v118 + 1) = 0xE500000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v49 = v116;
    v50 = 0x79726F7473;
    v51 = v91;
    v91 = v35;
    switch(v51)
    {
      case 1:
        break;
      case 2:
        v48 = 0xE400000000000000;
        v50 = 1701998445;
        break;
      case 3:
        v50 = 0x636972796CLL;
        break;
      case 4:
        v50 = 0xD000000000000010;
        v48 = 0x80000002170801D0;
        break;
      case 5:
        v48 = 0x80000002170801F0;
        v50 = 0xD000000000000012;
        break;
      case 6:
        v48 = 0xE900000000000075;
        v50 = 0x6E654D6570697773;
        break;
      case 7:
        v48 = 0x8000000217080210;
        v50 = 0xD000000000000015;
        break;
      default:
        v48 = 0xE800000000000000;
        v50 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v41;
    *&v118 = v50;
    *(&v118 + 1) = v48;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v49;
    sub_2166EF9D4();
    v54 = v116;
    sub_216A25C64(v114, v20, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
    {
      sub_216697664(v20, &qword_27CABA820);
    }

    else
    {
      v55 = v87;
      v56 = v86;
      (*(v87 + 32))(v86, v20, v44);
      v57 = sub_217005DE4();
      v119 = v41;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v54;
      sub_2166EF9D4();
      v54 = v116;
      (*(v55 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v100;
    MEMORY[0x21CE9DD70](v84, v37, 0x6E6F74747562, 0xE600000000000000, v54, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v62 = v101;
    v63 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v102;
    (*(v62 + 16))(v65, v61, v102);
    v67 = v98;
    v68 = v99;
    (*(v98 + 16))(v94, v45, v99);
    v69 = v93;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v114, &qword_27CABA820);
    v70 = v104;
    (*(*(v85 - 8) + 16))(v104, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0060);
    swift_storeEnumTagMultiPayload();
    (*(v96 + 32))(&v70[*(v103 + 36)], v69, v97);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v113, v71);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0058);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v79 = (v10 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0058);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction();
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25DB8;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v52 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v52);
  }
}

uint64_t sub_216A22CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v108 = a3;
  v113 = a2;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v9;
  v109 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0040);
  v105 = *(v103 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v83 - v12;
  v102 = sub_21700CFB4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_217005EF4();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21700D704();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v83 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21700BB14();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0000);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v32 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v32 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_217006804(), v85 = sub_21700BA44(), sub_21700BC04(), , (*(v25 + 8))(v27, v24), v33 = (*(v29 + 88))(v31, v28), v34 = *MEMORY[0x277D2B048], (*(v29 + 8))(v31, v28), v33 == v34))
  {
    v35 = a1;
    v84 = sub_217006AB4();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v39 = (v88 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v40 = v39[1];
    v41 = MEMORY[0x277D837D0];
    *(inited + 48) = *v39;
    *(inited + 56) = v40;
    *(inited + 72) = v41;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v41;
    v42 = v89;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v90;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v92;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v92);
    v45 = v95;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v41;
    v48 = 0xE500000000000000;
    *&v118 = 0x6E69706E75;
    *(&v118 + 1) = 0xE500000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v49 = v116;
    v50 = 0x79726F7473;
    v51 = v91;
    v91 = v35;
    switch(v51)
    {
      case 1:
        break;
      case 2:
        v48 = 0xE400000000000000;
        v50 = 1701998445;
        break;
      case 3:
        v50 = 0x636972796CLL;
        break;
      case 4:
        v50 = 0xD000000000000010;
        v48 = 0x80000002170801D0;
        break;
      case 5:
        v48 = 0x80000002170801F0;
        v50 = 0xD000000000000012;
        break;
      case 6:
        v48 = 0xE900000000000075;
        v50 = 0x6E654D6570697773;
        break;
      case 7:
        v48 = 0x8000000217080210;
        v50 = 0xD000000000000015;
        break;
      default:
        v48 = 0xE800000000000000;
        v50 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v41;
    *&v118 = v50;
    *(&v118 + 1) = v48;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v49;
    sub_2166EF9D4();
    v54 = v116;
    sub_216A25C64(v114, v20, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
    {
      sub_216697664(v20, &qword_27CABA820);
    }

    else
    {
      v55 = v87;
      v56 = v86;
      (*(v87 + 32))(v86, v20, v44);
      v57 = sub_217005DE4();
      v119 = v41;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v54;
      sub_2166EF9D4();
      v54 = v116;
      (*(v55 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v100;
    MEMORY[0x21CE9DD70](v84, v37, 0x6E6F74747562, 0xE600000000000000, v54, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v62 = v101;
    v63 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v102;
    (*(v62 + 16))(v65, v61, v102);
    v67 = v98;
    v68 = v99;
    (*(v98 + 16))(v94, v45, v99);
    v69 = v93;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v114, &qword_27CABA820);
    v70 = v104;
    (*(*(v85 - 8) + 16))(v104, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0048);
    swift_storeEnumTagMultiPayload();
    (*(v96 + 32))(&v70[*(v103 + 36)], v69, v97);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v113, v71);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0040);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v79 = (v10 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0040);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction();
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25DB4;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v52 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v52);
  }
}

uint64_t sub_216A23B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v108 = a3;
  v113 = a2;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v9;
  v109 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0028);
  v105 = *(v103 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v83 - v12;
  v102 = sub_21700CFB4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_217005EF4();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21700D704();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v83 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21700BB14();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0000);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v32 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v32 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_217006804(), v85 = sub_21700C924(), sub_21700BC04(), , (*(v25 + 8))(v27, v24), v33 = (*(v29 + 88))(v31, v28), v34 = *MEMORY[0x277D2B048], (*(v29 + 8))(v31, v28), v33 == v34))
  {
    v35 = a1;
    v84 = sub_217006AB4();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v39 = (v88 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v40 = v39[1];
    v41 = MEMORY[0x277D837D0];
    *(inited + 48) = *v39;
    *(inited + 56) = v40;
    *(inited + 72) = v41;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v41;
    v42 = v89;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v90;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v92;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v92);
    v45 = v95;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v41;
    v48 = 0xE500000000000000;
    *&v118 = 0x6E69706E75;
    *(&v118 + 1) = 0xE500000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v49 = v116;
    v50 = 0x79726F7473;
    v51 = v91;
    v91 = v35;
    switch(v51)
    {
      case 1:
        break;
      case 2:
        v48 = 0xE400000000000000;
        v50 = 1701998445;
        break;
      case 3:
        v50 = 0x636972796CLL;
        break;
      case 4:
        v50 = 0xD000000000000010;
        v48 = 0x80000002170801D0;
        break;
      case 5:
        v48 = 0x80000002170801F0;
        v50 = 0xD000000000000012;
        break;
      case 6:
        v48 = 0xE900000000000075;
        v50 = 0x6E654D6570697773;
        break;
      case 7:
        v48 = 0x8000000217080210;
        v50 = 0xD000000000000015;
        break;
      default:
        v48 = 0xE800000000000000;
        v50 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v41;
    *&v118 = v50;
    *(&v118 + 1) = v48;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v49;
    sub_2166EF9D4();
    v54 = v116;
    sub_216A25C64(v114, v20, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
    {
      sub_216697664(v20, &qword_27CABA820);
    }

    else
    {
      v55 = v87;
      v56 = v86;
      (*(v87 + 32))(v86, v20, v44);
      v57 = sub_217005DE4();
      v119 = v41;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v54;
      sub_2166EF9D4();
      v54 = v116;
      (*(v55 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v100;
    MEMORY[0x21CE9DD70](v84, v37, 0x6E6F74747562, 0xE600000000000000, v54, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v62 = v101;
    v63 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v102;
    (*(v62 + 16))(v65, v61, v102);
    v67 = v98;
    v68 = v99;
    (*(v98 + 16))(v94, v45, v99);
    v69 = v93;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v114, &qword_27CABA820);
    v70 = v104;
    (*(*(v85 - 8) + 16))(v104, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0030);
    swift_storeEnumTagMultiPayload();
    (*(v96 + 32))(&v70[*(v103 + 36)], v69, v97);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v113, v71);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0028);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v79 = (v10 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0028);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction();
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25DB0;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v52 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v52);
  }
}

uint64_t sub_216A24A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v108 = a3;
  v113 = a2;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v9;
  v109 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFF8);
  v105 = *(v103 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v83 - v12;
  v102 = sub_21700CFB4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_217005EF4();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21700D704();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v83 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21700BB14();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0000);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v32 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v32 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_217006804(), v85 = sub_21700C084(), sub_21700BC04(), , (*(v25 + 8))(v27, v24), v33 = (*(v29 + 88))(v31, v28), v34 = *MEMORY[0x277D2B048], (*(v29 + 8))(v31, v28), v33 == v34))
  {
    v35 = a1;
    v84 = sub_217006AB4();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v39 = (v88 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v40 = v39[1];
    v41 = MEMORY[0x277D837D0];
    *(inited + 48) = *v39;
    *(inited + 56) = v40;
    *(inited + 72) = v41;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v41;
    v42 = v89;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v90;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v92;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v92);
    v45 = v95;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v41;
    v48 = 0xE500000000000000;
    *&v118 = 0x6E69706E75;
    *(&v118 + 1) = 0xE500000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v49 = v116;
    v50 = 0x79726F7473;
    v51 = v91;
    v91 = v35;
    switch(v51)
    {
      case 1:
        break;
      case 2:
        v48 = 0xE400000000000000;
        v50 = 1701998445;
        break;
      case 3:
        v50 = 0x636972796CLL;
        break;
      case 4:
        v50 = 0xD000000000000010;
        v48 = 0x80000002170801D0;
        break;
      case 5:
        v48 = 0x80000002170801F0;
        v50 = 0xD000000000000012;
        break;
      case 6:
        v48 = 0xE900000000000075;
        v50 = 0x6E654D6570697773;
        break;
      case 7:
        v48 = 0x8000000217080210;
        v50 = 0xD000000000000015;
        break;
      default:
        v48 = 0xE800000000000000;
        v50 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v41;
    *&v118 = v50;
    *(&v118 + 1) = v48;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v49;
    sub_2166EF9D4();
    v54 = v116;
    sub_216A25C64(v114, v20, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
    {
      sub_216697664(v20, &qword_27CABA820);
    }

    else
    {
      v55 = v87;
      v56 = v86;
      (*(v87 + 32))(v86, v20, v44);
      v57 = sub_217005DE4();
      v119 = v41;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v54;
      sub_2166EF9D4();
      v54 = v116;
      (*(v55 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v100;
    MEMORY[0x21CE9DD70](v84, v37, 0x6E6F74747562, 0xE600000000000000, v54, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v62 = v101;
    v63 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v102;
    (*(v62 + 16))(v65, v61, v102);
    v67 = v98;
    v68 = v99;
    (*(v98 + 16))(v94, v45, v99);
    v69 = v93;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v114, &qword_27CABA820);
    v70 = v104;
    (*(*(v85 - 8) + 16))(v104, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0010);
    swift_storeEnumTagMultiPayload();
    (*(v96 + 32))(&v70[*(v103 + 36)], v69, v97);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v113, v71);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CABFFF8);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v79 = (v10 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CABFFF8);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction();
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25DAC;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v52 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v52);
  }
}

uint64_t sub_216A258B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v11[4] = sub_216A25C10(a6, a4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_216A25C64(a2, boxed_opaque_existential_1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_216A25990()
{

  v1 = OBJC_IVAR____TtC7MusicUI28LibraryPinMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for LibraryPinMenuActionProvider()
{
  result = qword_280E322F0;
  if (!qword_280E322F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_216A25B1C()
{
  result = qword_27CAC0008;
  if (!qword_27CAC0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0008);
  }

  return result;
}

uint64_t sub_216A25BC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20(a1, a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_216A25C10(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216A25C64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20(a1, a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_216A25CCC(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_2170075A4() - 8);
  return sub_216A258B8(*(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a1, a2, a3);
}

uint64_t View.musicClickMetrics(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicClickMetricsModifier();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216A25ECC(a1, v8);
  sub_2167B0CCC(v8, v11);
  MEMORY[0x21CE9B900](v11, a2, v9, a3);
  return sub_216A25F30(v11);
}

uint64_t sub_216A25ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMetrics.ClickFields(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A25F30(uint64_t a1)
{
  v2 = type metadata accessor for MusicClickMetricsModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A25F8C()
{
  result = qword_27CAC0070;
  if (!qword_27CAC0070)
  {
    type metadata accessor for MusicClickMetricsModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0070);
  }

  return result;
}

uint64_t sub_216A25FE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216A2607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v15 - v11;
  v10();
  sub_2166C24DC(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  sub_2166C24DC(v12, a3, a4);
  return (v13)(v12, a3);
}

uint64_t sub_216A261D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216A26578(v2 + 16, v9);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v6 + 8))(a1, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_21669987C(v9, &qword_27CAB9450);
    v8 = sub_217005774();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }
}

uint64_t sub_216A2629C()
{
  sub_21669987C(v0 + 16, &qword_27CAB9450);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_216A262E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_216A26324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216A2639C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0078);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  if (*v0)
  {

    sub_216A261D4((v0 + 2), v3);

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0080);
    v5 = sub_216A26514();
    MEMORY[0x21CE9B050](v3, v4, v5);
    return sub_21669987C(v3, &qword_27CAC0078);
  }

  else
  {
    type metadata accessor for MusicEntityAnnotationWrapper();
    sub_216A264C0();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

unint64_t sub_216A264C0()
{
  result = qword_280E46810;
  if (!qword_280E46810)
  {
    type metadata accessor for MusicEntityAnnotationWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46810);
  }

  return result;
}

unint64_t sub_216A26514()
{
  result = qword_280E2A880;
  if (!qword_280E2A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A880);
  }

  return result;
}

uint64_t sub_216A26578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A26610@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v54 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  sub_21700D7A4();
  sub_21700CE04();
  v51 = v6;
  v19 = v6 + 16;
  v20 = *(v6 + 16);
  v21 = a1;
  v53 = v4;
  v48 = v20;
  v49 = v19;
  v20(v9, v57, v4);
  v22 = v54;
  v50 = v9;
  sub_21700D734();
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v26 = *(v12 + 8);
  v52 = v12 + 8;
  v26(v16, v10);
  if (v25)
  {
    v27 = type metadata accessor for ListSection();
    v55 = v23;
    v56 = v25;
    sub_21700F364();
    OUTLINED_FUNCTION_0_115();
    v28 = sub_21700CDB4();
    v30 = v29;
    v26(v18, v10);
    v31 = (v22 + v27[6]);
    *v31 = v28;
    v31[1] = v30;
    OUTLINED_FUNCTION_0_115();
    v32 = sub_21700CDB4();
    v34 = v33;
    v46 = v26;
    v47 = v10;
    v26(v18, v10);
    v35 = (v22 + v27[7]);
    *v35 = v32;
    v35[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0090);
    sub_21700CE04();
    v36 = v50;
    v37 = v57;
    v38 = v48;
    v48(v50, v57, v53);
    sub_216A26BA0();
    sub_21700D734();
    v39 = v55;
    if (v55)
    {
      (*(v51 + 8))(v37, v53);
    }

    else
    {
      sub_21700CE04();
      v45 = v53;
      v38(v36, v37, v53);
      type metadata accessor for ListLockup();
      sub_216A26C54(&unk_27CAC00A0, type metadata accessor for ListLockup);
      v39 = sub_21700E944();
      (*(v51 + 8))(v37, v45);
    }

    result = v46(v21, v47);
    *(v54 + v27[8]) = v39;
  }

  else
  {
    v40 = sub_21700E2E4();
    sub_216A26C54(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v42 = v41;
    v43 = type metadata accessor for ListSection();
    *v42 = 25705;
    v42[1] = 0xE200000000000000;
    v42[2] = v43;
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v51 + 8))(v57, v53);
    v26(v21, v10);
    return sub_2167B0250(v22);
  }

  return result;
}

unint64_t sub_216A26BA0()
{
  result = qword_27CAC0098;
  if (!qword_27CAC0098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0090);
    sub_216A26C54(&unk_27CAC00A0, type metadata accessor for ListLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0098);
  }

  return result;
}

uint64_t sub_216A26C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A26C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v11[0] = sub_216A28288(a1);
  v11[1] = v7;
  v11[2] = v8;
  v9 = type metadata accessor for NestedPresentationModifier();
  MEMORY[0x21CE9B900](v11, a3, v9, a4);
}

uint64_t sub_216A26D78()
{
  swift_getWitnessTable();

  return sub_217008684();
}

uint64_t sub_216A26DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PresentationItem();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282130E30](a2, a3, v5, WitnessTable);
}

uint64_t sub_216A26E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v127 = a4;
  v128 = a5;
  v121 = a2;
  v122 = a3;
  v99 = a1;
  v110 = a9;
  v124 = a7;
  v125 = a6;
  v123 = a8;
  type metadata accessor for NestedPresentationModifier();
  swift_getWitnessTable();
  v9 = sub_2170097A4();
  v10 = type metadata accessor for PresentationItem();
  v11 = type metadata accessor for PresentationView();
  v12 = v9;
  WitnessTable = swift_getWitnessTable();
  v14 = v10;
  v15 = swift_getWitnessTable();
  v138 = v12;
  v139 = v14;
  v16 = v12;
  v95 = v12;
  v96 = WitnessTable;
  v17 = v14;
  v140 = v11;
  v141 = WitnessTable;
  v117 = v11;
  v18 = WitnessTable;
  v142 = v15;
  v143 = swift_getWitnessTable();
  v19 = v143;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v112 = v94 - v21;
  v138 = v16;
  v139 = v17;
  v140 = v11;
  v141 = v18;
  v142 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v138 = OpaqueTypeMetadata2;
  v139 = v17;
  v23 = OpaqueTypeMetadata2;
  v97 = OpaqueTypeConformance2;
  v98 = OpaqueTypeMetadata2;
  v24 = v17;
  v140 = v11;
  v141 = OpaqueTypeConformance2;
  v25 = OpaqueTypeConformance2;
  v142 = v15;
  v143 = v19;
  v111 = v15;
  v26 = swift_getOpaqueTypeMetadata2();
  v102 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v113 = v94 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668);
  v138 = v23;
  v139 = v24;
  v29 = v117;
  v140 = v117;
  v141 = v25;
  v142 = v15;
  v143 = v19;
  v30 = v19;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_2167B2E14();
  v33 = sub_2167C4D74();
  v138 = v26;
  v139 = MEMORY[0x277D837D0];
  v140 = v29;
  v141 = v28;
  v142 = v24;
  v143 = v31;
  v144 = v32;
  v145 = v30;
  v34 = v30;
  v146 = v33;
  v35 = swift_getOpaqueTypeMetadata2();
  v108 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v115 = v94 - v36;
  v103 = v26;
  v138 = v26;
  v37 = v117;
  v139 = MEMORY[0x277D837D0];
  v140 = v117;
  v141 = v28;
  v142 = v24;
  v118 = v24;
  v101 = v31;
  v143 = v31;
  v144 = v32;
  v126 = v34;
  v145 = v34;
  v146 = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v109 = v35;
  v138 = v35;
  v139 = MEMORY[0x277D837D0];
  v140 = v37;
  v116 = v28;
  v141 = v28;
  v142 = v24;
  v114 = v38;
  v143 = v38;
  v144 = v32;
  v119 = v33;
  v120 = v32;
  v145 = v34;
  v146 = v33;
  v39 = swift_getOpaqueTypeMetadata2();
  v106 = *(v39 - 8);
  v107 = v39;
  MEMORY[0x28223BE20](v39);
  v104 = v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v105 = v94 - v42;
  v44 = v121;
  v43 = v122;
  v45 = v128;
  v47 = v124;
  v46 = v125;
  v48 = v123;
  sub_216A26DF8(v121, v122, v127);
  v133 = v45;
  v134 = v46;
  v135 = v47;
  v136 = v48;
  v49 = v48;
  swift_getKeyPath();
  v94[3] = swift_getWitnessTable();
  sub_2170086A4();

  v94[0] = v139;
  v94[1] = v138;
  v94[2] = v140;
  v150 = v138;
  v151 = v139;
  v152 = v140;
  v50 = swift_allocObject();
  v51 = v128;
  v50[2] = v128;
  v50[3] = v46;
  v52 = v46;
  v50[4] = v47;
  v50[5] = v49;
  v50[6] = v44;
  v50[7] = v43;
  v53 = v127;
  v50[8] = v127;
  v54 = swift_allocObject();
  v54[2] = v51;
  v54[3] = v52;
  v54[4] = v47;
  v54[5] = v49;
  v55 = v49;
  v56 = v44;
  v54[6] = v44;
  v54[7] = v43;
  v57 = v43;
  v54[8] = v53;
  v58 = v56;
  swift_retain_n();
  swift_retain_n();
  swift_checkMetadataState();
  v118 = swift_checkMetadataState();
  v117 = swift_checkMetadataState();
  sub_21700A9F4();

  v59 = v58;
  v60 = v58;
  v61 = v128;
  v62 = v125;
  sub_216A26DF8(v60, v57, v53);
  v129 = v61;
  v130 = v62;
  v131 = v47;
  v132 = v49;
  swift_getKeyPath();
  sub_2170086A4();

  v95 = v139;
  v96 = v138;
  v99 = v140;
  v150 = v138;
  v151 = v139;
  v152 = v140;
  v63 = swift_allocObject();
  v63[2] = v61;
  v63[3] = v62;
  v63[4] = v47;
  v63[5] = v49;
  v63[6] = v59;
  v63[7] = v57;
  v64 = v57;
  v65 = v127;
  v63[8] = v127;
  v66 = swift_allocObject();
  v66[2] = v61;
  v66[3] = v62;
  v66[4] = v47;
  v66[5] = v55;
  v66[6] = v59;
  v66[7] = v64;
  v66[8] = v65;
  swift_retain_n();
  swift_retain_n();
  v67 = v112;
  v68 = v98;
  sub_21700A5C4();

  (v100[1])(v67, v68);

  if (!sub_216AF4554() || (sub_216A5D3A8(v147), , !v148) || (v69 = v147[0], v70 = v147[1], v154 = v148, sub_21669987C(&v154, &qword_27CAB6BA0), v155 = v149, sub_21669987C(&v155, &qword_27CABAA40), !v70))
  {

    v69 = 0;
    v70 = 0xE000000000000000;
  }

  v112 = v70;
  v138 = v69;
  v139 = v70;
  v99 = sub_216A27D4C();
  LODWORD(v98) = v71;
  v111 = sub_216AF4554();
  v100 = v94;
  v150 = v111;
  MEMORY[0x28223BE20](v111);
  MEMORY[0x28223BE20](v72);
  v73 = v103;
  v74 = v113;
  sub_21700A9A4();

  (*(v102 + 8))(v74, v73);
  if (!sub_216AF457C() || (sub_216A5D3A8(&v150), , !v152) || (v75 = v150, v76 = v151, v156 = v152, sub_21669987C(&v156, &qword_27CAB6BA0), v157 = v153, sub_21669987C(&v157, &qword_27CABAA40), !v76))
  {

    v75 = 0;
    v76 = 0xE000000000000000;
  }

  v138 = v75;
  v139 = v76;
  v77 = sub_216A27D4C();
  v112 = v78;
  v113 = v77;
  LODWORD(v103) = v79;
  LODWORD(v102) = sub_216A27E68();
  v80 = sub_216AF457C();
  v111 = v80;

  v101 = v94;
  v137 = v80;
  MEMORY[0x28223BE20](v81);
  MEMORY[0x28223BE20](v82);
  v83 = v118;
  v84 = v116;
  v85 = v117;
  v86 = v109;
  v87 = v104;
  v88 = v115;
  sub_21700A6C4();

  (*(v108 + 8))(v88, v86);
  v138 = v86;
  v139 = MEMORY[0x277D837D0];
  v140 = v85;
  v141 = v84;
  v142 = v83;
  v143 = v114;
  v144 = v120;
  v145 = v126;
  v146 = v119;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v105;
  v91 = v107;
  sub_2166C24DC(v87, v107, v89);
  v92 = *(v106 + 8);
  v92(v87, v91);
  sub_2166C24DC(v90, v91, v89);
  return (v92)(v90, v91);
}

uint64_t sub_216A27D0C()
{

  sub_216AF4764();
}

uint64_t sub_216A27D4C()
{
  sub_21700EA34();

  v0 = sub_21700EA24();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D85700];
  v1[2] = v0;
  v1[3] = v2;
  v3 = v2;
  OUTLINED_FUNCTION_5_61(v1);

  v4 = sub_21700EA24();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  OUTLINED_FUNCTION_5_61(v5);
  sub_21700B0F4();
  return v7;
}

uint64_t sub_216A27E68()
{

  if (sub_216AF457C() && (sub_216A5D3A8(v8), , v9))
  {
    v1 = v8[0];
    v0 = v8[1];
    v15 = v9;
    sub_21669987C(&v15, &qword_27CAB6BA0);
    v16 = v10;
    sub_21669987C(&v16, &qword_27CABAA40);
  }

  else
  {
    v1 = 0;
    v0 = 0;
  }

  v2 = sub_216AF457C();

  if (v2)
  {
    sub_216A5D3A8(&v11);

    v3 = v12;
    if (v12)
    {
      v4 = v13;
      v2 = v14;
      v17 = v11;
      sub_21700DF14();
      sub_21669987C(&v17, &qword_27CABAA40);
      v18 = v3;
      sub_21669987C(&v18, &qword_27CAB6BA0);
    }

    else
    {
      v4 = 0;
      v2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_216E1A4B8(v1, v0);

  if (v5)
  {
    v6 = sub_216E1A4B8(v4, v2);

    if (v6)
    {
      return 2;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_216A27FFC(void *a1, uint64_t a2, uint64_t a3)
{
  nullsub_1(a2, *a1, a3);
  type metadata accessor for PresentationView();
  OUTLINED_FUNCTION_0_116();
  OUTLINED_FUNCTION_42();
  sub_2166C24DC(v3, v4, v5);

  OUTLINED_FUNCTION_42();
  sub_2166C24DC(v6, v7, v8);
}

uint64_t sub_216A280EC@<X0>(void *a1@<X8>)
{
  result = sub_216A5D3A8(&v12);
  v3 = v13;
  if (!v13)
  {
    v10 = 0;
    v8 = 0;
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v15[1] = v12;
  v15[0] = v14;
  sub_216A2841C(v15, v11);
  OUTLINED_FUNCTION_42();
  sub_21669987C(v4, v5);
  v11[0] = v3;
  sub_21669987C(v11, &qword_27CAB6BA0);
  OUTLINED_FUNCTION_42();
  result = sub_21669987C(v6, v7);
  v8 = *(&v15[0] + 1);
  if (!*(&v15[0] + 1))
  {
    v10 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x277D84F90];
  v10 = *&v15[0];
LABEL_7:
  *a1 = v10;
  a1[1] = v8;
  a1[2] = 0;
  a1[3] = v9;
  return result;
}

uint64_t sub_216A281C4@<X0>(BOOL *a1@<X8>, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  v5 = a3(v4);

  if (v5)
  {
  }

  *a1 = v5 != 0;
  return result;
}

_BYTE *sub_216A2822C(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void))
{
  if ((*result & 1) == 0)
  {

    a11(0);
    sub_216AF4764();
  }

  return result;
}

uint64_t sub_216A2830C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216A2841C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216A285E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v88 = a2;
  v4 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v4 - 8);
  v80 = (&v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v79 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v73 - v12;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v91 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v77 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v76 = &v73 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v78 = &v73 - v21;
  OUTLINED_FUNCTION_3_1();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v73 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v73 - v26;
  sub_21700D7A4();
  sub_21700CE04();
  v84 = v8;
  v28 = *(v8 + 16);
  v86 = v6;
  v29 = v6;
  v30 = v91;
  v81 = v28;
  v28(v13, v88, v29);
  v75 = v13;
  sub_21700D734();
  v85 = a1;
  sub_21700CE04();
  v31 = sub_21700CDB4();
  v33 = v32;
  v34 = *(v30 + 8);
  v83 = v14;
  v91 = v30 + 8;
  v34(v25, v14);
  if (v33)
  {
    v74 = type metadata accessor for SocialProfileDetailHeaderLockup();
    v89 = v31;
    v90 = v33;
    v35 = v87;
    sub_21700F364();
    v36 = v78;
    sub_21700CE04();
    v37 = v79;
    v38 = v88;
    v81(v79, v88, v86);
    v39 = v80;
    v40 = v82;
    ContentDescriptor.init(deserializing:using:)(v36, v37, v41, v42, v43, v44, v45, v46, v73, v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74));
    v82 = v40;
    if (!v40)
    {
      v47 = v74;
      sub_216A29168(v39, v35 + *(v74 + 24), type metadata accessor for ContentDescriptor);
      type metadata accessor for Artwork();
      v80 = v34;
      v48 = v85;
      sub_21700CE04();
      v81(v75, v38, v86);
      sub_216A290C4(&qword_280E2BF60, type metadata accessor for Artwork);
      sub_21700D734();
      sub_21700CE04();
      v49 = sub_21700CDB4();
      v51 = v50;
      v52 = v83;
      v53 = v80;
      v80(v27, v83);
      v54 = (v35 + v47[7]);
      *v54 = v49;
      v54[1] = v51;
      sub_21700CE04();
      v55 = sub_21700CDB4();
      v57 = v56;
      v58 = v27;
      v59 = v53;
      v53(v58, v52);
      v60 = (v35 + v47[8]);
      *v60 = v55;
      v60[1] = v57;
      v61 = v76;
      sub_21700CE04();
      LOBYTE(v55) = sub_21700CD44();
      v59(v61, v52);
      *(v35 + v47[9]) = v55 & 1;
      v62 = v77;
      sub_21700CE04();
      LOBYTE(v55) = sub_21700CD44();
      (*(v84 + 8))(v88, v86);
      v59(v48, v52);
      result = (v59)(v62, v52);
      *(v35 + v47[10]) = v55 & 1;
      return result;
    }
  }

  else
  {
    v64 = v34;
    v65 = sub_21700E2E4();
    sub_216A290C4(&qword_280E2A0F8, MEMORY[0x277D22548]);
    v66 = swift_allocError();
    v68 = v67;
    v69 = type metadata accessor for SocialProfileDetailHeaderLockup();
    *v68 = 25705;
    v68[1] = 0xE200000000000000;
    v68[2] = v69;
    v70 = *(*(v65 - 8) + 104);
    v71 = v65;
    v34 = v64;
    v70(v68, *MEMORY[0x277D22530], v71);
    v82 = v66;
    swift_willThrow();
    v35 = v87;
    v38 = v88;
  }

  (*(v84 + 8))(v38, v86);
  v34(v85, v83);
  result = sub_216697664(v35, &qword_27CAB6D58);
  if (v33)
  {
    v72 = type metadata accessor for SocialProfileDetailHeaderLockup();
    return sub_216788110(v35 + *(v72 + 20));
  }

  return result;
}

uint64_t sub_216A28CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for SocialProfileDetailHeaderLockup();
  if ((MEMORY[0x21CEA0160](a1 + v15[5], a2 + v15[5]) & 1) == 0 || (static ContentDescriptor.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_67();
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_32;
    }

    v20 = *v18 == *v19 && v16 == v17;
    if (!v20 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v17)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_67();
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_32:
    v28 = 0;
    return v28 & 1;
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  v25 = *v23 == *v24 && v21 == v22;
  if (!v25 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if (*(a1 + v15[9]) != *(a2 + v15[9]) || *(a1 + v15[10]) != *(a2 + v15[10]))
  {
    goto LABEL_32;
  }

  v26 = v15[11];
  v27 = *(v11 + 48);
  sub_216681B04(a1 + v26, v14, &qword_27CAB6D60);
  sub_216681B04(a2 + v26, &v14[v27], &qword_27CAB6D60);
  OUTLINED_FUNCTION_5_3(v14);
  if (v20)
  {
    OUTLINED_FUNCTION_5_3(&v14[v27]);
    if (v20)
    {
      sub_216697664(v14, &qword_27CAB6D60);
      v28 = 1;
      return v28 & 1;
    }

    goto LABEL_31;
  }

  sub_216681B04(v14, v10, &qword_27CAB6D60);
  OUTLINED_FUNCTION_5_3(&v14[v27]);
  if (v29)
  {
    sub_216A2910C(v10);
LABEL_31:
    sub_216697664(v14, &qword_27CABE598);
    goto LABEL_32;
  }

  sub_216A29168(&v14[v27], v7, type metadata accessor for Artwork);
  v31 = sub_21700C4A4();
  if (v31)
  {
    v28 = sub_21688ADC8(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
  }

  else
  {
    v28 = 0;
  }

  sub_216A2910C(v7);
  sub_216A2910C(v10);
  sub_216697664(v14, &qword_27CAB6D60);
  return v28 & 1;
}

uint64_t sub_216A290C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A2910C(uint64_t a1)
{
  v2 = type metadata accessor for Artwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A29168(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216A291F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

uint64_t sub_216A29470(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  swift_allocError();
  *v3 = a2;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_216A294DC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return swift_continuation_throwingResume();
}

void sub_216A29500(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v75[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = v75 - v7;
  started = type metadata accessor for StartSocialOnboardingAction();
  MEMORY[0x28223BE20](started);
  v82 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = v75 - v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_216A2E2D4;
  *(v12 + 24) = v11;
  v85 = v12;
  _Block_copy(a4);
  v13 = qword_280E416F8;
  v84 = v11;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E73D20);
  v15 = a1;
  v16 = sub_217007C84();
  v17 = sub_21700EDA4();

  v18 = &unk_278226000;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v75[0] = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_2166A85FC(0xD000000000000028, 0x80000002170866E0, &aBlock);
    *(v20 + 12) = 2082;
    v22 = [v15 identifier];
    v23 = sub_21700E514();
    v25 = v24;

    v26 = sub_2166A85FC(v23, v25, &aBlock);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_216679000, v16, v17, "💬 %{public}s: AMSDelegateAction attempt was made with identifier: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v27 = v21;
    v18 = &unk_278226000;
    MEMORY[0x21CEA1440](v27, -1, -1);
    v28 = v20;
    a4 = v75[0];
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  v29 = [v15 v18[366]];
  sub_21700E514();

  if (sub_216A2B334() == 5)
  {
    aBlock = 0;
    v87 = 0xE000000000000000;
    sub_21700F3B4();

    aBlock = 0xD00000000000001CLL;
    v87 = 0x80000002170866A0;
    v41 = [v15 v18[366]];
    v42 = sub_21700E514();
    v44 = v43;

    MEMORY[0x21CE9F490](v42, v44);

    v45 = aBlock;
    v46 = v87;
    sub_216A2BD14();
    v47 = swift_allocError();
    *v48 = v45;
    v48[1] = v46;
    aBlock = v47;
    LOBYTE(v90) = 1;
    _Block_copy(a4);
    sub_216A2B864(&aBlock, a4);
    sub_216697664(&aBlock, &unk_27CAC9DD0);

LABEL_26:

LABEL_27:
    _Block_release(a4);
  }

  else
  {
    type metadata accessor for ObjectGraph();

    v30 = sub_21700D4F4();
    v31 = v30;
    switch(v32)
    {
      case 1:
        v72 = sub_217007C84();
        v73 = sub_21700EDA4();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_216679000, v72, v73, "💬 Attempting to enable music recognition", v74, 2u);
          MEMORY[0x21CEA1440](v74, -1, -1);
        }

        if (qword_280E34968 != -1)
        {
          swift_once();
        }

        sub_216ED3D6C(sub_216A2E2AC, v85);
        goto LABEL_25;
      case 2:
        sub_216A2C024(v30);
        v64 = swift_allocObject();
        v65 = v85;
        *(v64 + 16) = sub_216A2E2AC;
        *(v64 + 24) = v65;
        v66 = swift_allocObject();
        *(v66 + 16) = sub_216A2E2AC;
        *(v66 + 24) = v65;
        v67 = sub_2166AF2EC();
        swift_retain_n();
        v68 = sub_21700EE84();
        v89 = v67;
        v90 = MEMORY[0x277D225C0];
        aBlock = v68;
        sub_21700E1C4();

        goto LABEL_16;
      case 3:
        v69 = sub_217007C84();
        v70 = sub_21700EDA4();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_216679000, v69, v70, "💬 Presenting Family Circle", v71, 2u);
          MEMORY[0x21CEA1440](v71, -1, -1);
        }

        sub_216964DE0(v15, sub_216A2E2AC, v85);
LABEL_25:

        goto LABEL_26;
      case 4:
        v49 = sub_217007C84();
        v50 = sub_21700EDA4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_216679000, v49, v50, "💬 Social onboarding", v51, 2u);
          MEMORY[0x21CEA1440](v51, -1, -1);
        }

        v52 = v81;
        sub_21700E094();
        v53 = v82;
        sub_21700D234();
        v54 = started;
        *(v53 + *(started + 20)) = 1;
        v89 = v54;
        v90 = sub_216A2E0F8(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction);
        v55 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
        sub_216A2E140(v53, v55, type metadata accessor for StartSocialOnboardingAction);
        v57 = v77;
        v56 = v78;
        v58 = v79;
        (*(v78 + 104))(v77, *MEMORY[0x277D21E18], v79);
        sub_21700D5E4();
        started = v31;
        (*(v56 + 8))(v57, v58);
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        v59 = swift_allocObject();
        v60 = v85;
        *(v59 + 16) = sub_216A2E2AC;
        *(v59 + 24) = v60;
        v61 = swift_allocObject();
        *(v61 + 16) = sub_216A2E2AC;
        *(v61 + 24) = v60;
        v62 = sub_2166AF2EC();
        swift_retain_n();
        v63 = sub_21700EE84();
        v89 = v62;
        v90 = MEMORY[0x277D225C0];
        aBlock = v63;
        sub_21700E1C4();

        sub_216A2E1A0(v53, type metadata accessor for StartSocialOnboardingAction);
        (*(v80 + 8))(v83, v52);
LABEL_16:
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);

        goto LABEL_26;
      default:
        v33 = sub_217007C84();
        v34 = sub_21700EDA4();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_216679000, v33, v34, "💬 Enabling automatic downloads", v35, 2u);
          MEMORY[0x21CEA1440](v35, -1, -1);
        }

        v36 = [objc_opt_self() sharedCloudController];
        if (v36)
        {
          v37 = v36;
          v38 = swift_allocObject();
          v39 = v85;
          *(v38 + 16) = sub_216A2E2AC;
          *(v38 + 24) = v39;
          v90 = sub_216A2E2EC;
          v91 = v38;
          aBlock = MEMORY[0x277D85DD0];
          v87 = 1107296256;
          v88 = sub_216A2BF54;
          v89 = &block_descriptor_89;
          v40 = _Block_copy(&aBlock);

          [v37 enableAutomaticDownloadsWithCompletionHandler_];

          _Block_release(v40);

          goto LABEL_27;
        }

        _Block_release(a4);
        __break(1u);
        break;
    }
  }
}

void sub_216A2A094(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v78 = v7;
  v79 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v76 = OUTLINED_FUNCTION_31_30(v9, v72);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v82 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v80 = v14;
  v81 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_34_21(v16, v73);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  OUTLINED_FUNCTION_65_0();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_216A2E1F8;
  *(v18 + 24) = v17;
  v84 = v18;
  _Block_copy(a4);
  v19 = qword_280E416F8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v20 = sub_217007CA4();
  __swift_project_value_buffer(v20, qword_280E73D20);
  v21 = a1;
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();

  v24 = &unk_278226000;
  if (os_log_type_enabled(v22, v23))
  {
    v74 = a4;
    v25 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v25 = 136446466;
    *(v25 + 4) = sub_2166A85FC(0xD000000000000028, 0x80000002170866E0, aBlock);
    *(v25 + 12) = 2082;
    v26 = [v21 identifier];
    v27 = sub_21700E514();
    v29 = v28;

    v30 = sub_2166A85FC(v27, v29, aBlock);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_216679000, v22, v23, "💬 %{public}s: AMSDelegateAction attempt was made with identifier: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v24 = &unk_278226000;
    OUTLINED_FUNCTION_6();
    a4 = v74;
    OUTLINED_FUNCTION_6();
  }

  v31 = [v21 v24[366]];
  sub_21700E514();

  OUTLINED_FUNCTION_82();
  if (sub_216A2B334() == 5)
  {
    OUTLINED_FUNCTION_37_25();

    OUTLINED_FUNCTION_27_26("Unexpected delegate action: ");
    v44 = [v21 v24[366]];
    sub_21700E514();

    v45 = OUTLINED_FUNCTION_82();
    MEMORY[0x21CE9F490](v45);

    sub_216A2BD14();
    v46 = swift_allocError();
    OUTLINED_FUNCTION_32_18(v46, v47);
    _Block_copy(a4);
    sub_216DF352C(aBlock, a4);
    sub_216697664(aBlock, &unk_27CAC9DD0);

LABEL_26:

LABEL_27:
    _Block_release(a4);
  }

  else
  {
    type metadata accessor for ObjectGraph();

    v32 = sub_21700D4F4();
    switch(v33)
    {
      case 1:
        v67 = sub_217007C84();
        v68 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v68))
        {
          v69 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v69);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v70, v71, "💬 Attempting to enable music recognition");
          OUTLINED_FUNCTION_26_4();
        }

        if (qword_280E34968 != -1)
        {
          OUTLINED_FUNCTION_18_31();
        }

        sub_216ED3D6C(sub_216A2E200, v84);
        goto LABEL_25;
      case 2:
        sub_216A2C024(v32);
        OUTLINED_FUNCTION_65_0();
        swift_allocObject();
        OUTLINED_FUNCTION_15_39();
        *(v58 + 16) = v59;
        *(v58 + 24) = v84;
        OUTLINED_FUNCTION_65_0();
        v60 = swift_allocObject();
        *(v60 + 16) = a3;
        *(v60 + 24) = v84;
        sub_2166AF2EC();
        swift_retain_n();
        v61 = sub_21700EE84();
        OUTLINED_FUNCTION_35_23(v61, MEMORY[0x277D225C0]);
        sub_21700E1C4();

        goto LABEL_16;
      case 3:
        v62 = sub_217007C84();
        v63 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v63))
        {
          v64 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v64);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v65, v66, "💬 Presenting Family Circle");
          OUTLINED_FUNCTION_26_4();
        }

        sub_216964DE0(v21, sub_216A2E200, v84);
LABEL_25:

        goto LABEL_26;
      case 4:
        v48 = sub_217007C84();
        v49 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v49))
        {
          v50 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v50);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v51, v52, "💬 Social onboarding");
          OUTLINED_FUNCTION_26_4();
        }

        sub_21700E094();
        sub_21700D234();
        *(v82 + *(v76 + 20)) = 1;
        v86 = v76;
        v87 = sub_216A2E0F8(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
        sub_216A2E140(v82, boxed_opaque_existential_1, type metadata accessor for StartSocialOnboardingAction);
        (*(v78 + 104))(v77, *MEMORY[0x277D21E18], v79);
        sub_21700D5E4();
        (*(v78 + 8))(v77, v79);
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        OUTLINED_FUNCTION_65_0();
        swift_allocObject();
        OUTLINED_FUNCTION_15_39();
        *(v54 + 16) = v55;
        *(v54 + 24) = v84;
        OUTLINED_FUNCTION_65_0();
        v56 = swift_allocObject();
        *(v56 + 16) = v83;
        *(v56 + 24) = v84;
        sub_2166AF2EC();
        swift_retain_n();
        v57 = sub_21700EE84();
        OUTLINED_FUNCTION_35_23(v57, MEMORY[0x277D225C0]);
        sub_21700E1C4();

        sub_216A2E1A0(v82, type metadata accessor for StartSocialOnboardingAction);
        (*(v80 + 8))(v83, v81);
LABEL_16:
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

        goto LABEL_26;
      default:
        v34 = sub_217007C84();
        v35 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v35))
        {
          v36 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v36);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v37, v38, "💬 Enabling automatic downloads");
          OUTLINED_FUNCTION_26_4();
        }

        v39 = [objc_opt_self() sharedCloudController];
        if (v39)
        {
          v40 = v39;
          OUTLINED_FUNCTION_65_0();
          v41 = swift_allocObject();
          *(v41 + 16) = sub_216A2E200;
          *(v41 + 24) = v84;
          v87 = sub_216A2E2EC;
          v88 = v41;
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_11_44(COERCE_DOUBLE(1107296256));
          aBlock[2] = v42;
          v86 = &block_descriptor_55;
          v43 = _Block_copy(aBlock);

          [v40 enableAutomaticDownloadsWithCompletionHandler_];

          _Block_release(v43);

          goto LABEL_27;
        }

        _Block_release(a4);
        __break(1u);
        break;
    }
  }
}

id sub_216A2AA3C(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v72 = v7;
  v73 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = OUTLINED_FUNCTION_31_30(v9, v69);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v76 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v74 = v15;
  v75 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_34_21(v17, v70);
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v18 = sub_217007CA4();
  v19 = __swift_project_value_buffer(v18, qword_280E73D20);
  v20 = a1;
  v78 = v19;
  v21 = sub_217007C84();
  v22 = sub_21700EDA4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v23 = 136446466;
    *(v23 + 4) = sub_2166A85FC(0xD000000000000028, 0x80000002170866E0, aBlock);
    *(v23 + 12) = 2082;
    v24 = [v20 identifier];
    v25 = v10;
    v26 = sub_21700E514();
    v28 = v27;

    v29 = v26;
    v10 = v25;
    v30 = sub_2166A85FC(v29, v28, aBlock);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_216679000, v21, v22, "💬 %{public}s: AMSDelegateAction attempt was made with identifier: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v31 = [v20 identifier];
  sub_21700E514();

  v32 = sub_216A2B334();
  if (v32 == 5)
  {
    OUTLINED_FUNCTION_37_25();

    OUTLINED_FUNCTION_27_26("Unexpected delegate action: ");
    v45 = [v20 &off_278226678];
    sub_21700E514();

    v46 = OUTLINED_FUNCTION_82();
    MEMORY[0x21CE9F490](v46);

    sub_216A2BD14();
    v47 = swift_allocError();
    OUTLINED_FUNCTION_32_18(v47, v48);
    a3(aBlock);
    sub_216697664(aBlock, &unk_27CAC9DD0);
    return (v32 != 5);
  }

  else
  {
    type metadata accessor for ObjectGraph();

    v33 = sub_21700D4F4();
    switch(v34)
    {
      case 1:
        v64 = sub_217007C84();
        v65 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v65))
        {
          v66 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v66);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v67, v68, "💬 Attempting to enable music recognition");
          OUTLINED_FUNCTION_26_4();
        }

        if (qword_280E34968 != -1)
        {
          OUTLINED_FUNCTION_18_31();
        }

        sub_216ED3D6C(a3, a4);
        goto LABEL_25;
      case 2:
        sub_216A2C024(v33);
        OUTLINED_FUNCTION_65_0();
        v58 = swift_allocObject();
        *(v58 + 16) = a3;
        *(v58 + 24) = a4;
        OUTLINED_FUNCTION_65_0();
        v59 = swift_allocObject();
        *(v59 + 16) = a3;
        *(v59 + 24) = a4;
        sub_2166AF2EC();
        swift_retain_n();
        v60 = sub_21700EE84();
        OUTLINED_FUNCTION_35_23(v60, MEMORY[0x277D225C0]);
        sub_21700E1C4();

        goto LABEL_16;
      case 3:
        v61 = sub_217007C84();
        v62 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v62))
        {
          v63 = OUTLINED_FUNCTION_43();
          *v63 = 0;
          _os_log_impl(&dword_216679000, v61, v78, "💬 Presenting Family Circle", v63, 2u);
          OUTLINED_FUNCTION_6();
        }

        sub_216964DE0(v20, a3, a4);
LABEL_25:

        return (v32 != 5);
      case 4:
        v49 = sub_217007C84();
        v50 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v50))
        {
          v51 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v51);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v52, v53, "💬 Social onboarding");
          OUTLINED_FUNCTION_26_4();
        }

        sub_21700E094();
        sub_21700D234();
        *(v76 + *(v10 + 20)) = 1;
        v81 = v10;
        v82 = sub_216A2E0F8(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
        sub_216A2E140(v76, boxed_opaque_existential_1, type metadata accessor for StartSocialOnboardingAction);
        (*(v72 + 104))(v71, *MEMORY[0x277D21E18], v73);
        sub_21700D5E4();
        (*(v72 + 8))(v71, v73);
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        OUTLINED_FUNCTION_65_0();
        v55 = swift_allocObject();
        *(v55 + 16) = a3;
        *(v55 + 24) = a4;
        OUTLINED_FUNCTION_65_0();
        v56 = swift_allocObject();
        *(v56 + 16) = a3;
        *(v56 + 24) = a4;
        sub_2166AF2EC();
        swift_retain_n();
        v57 = sub_21700EE84();
        OUTLINED_FUNCTION_35_23(v57, MEMORY[0x277D225C0]);
        sub_21700E1C4();

        sub_216A2E1A0(v76, type metadata accessor for StartSocialOnboardingAction);
        (*(v74 + 8))(v77, v75);
LABEL_16:
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        return (v32 != 5);
      default:
        v35 = sub_217007C84();
        v36 = sub_21700EDA4();
        if (OUTLINED_FUNCTION_90_3(v36))
        {
          v37 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_36_5(v37);
          OUTLINED_FUNCTION_50_0(&dword_216679000, v38, v39, "💬 Enabling automatic downloads");
          OUTLINED_FUNCTION_26_4();
        }

        result = [objc_opt_self() sharedCloudController];
        if (result)
        {
          v41 = result;
          OUTLINED_FUNCTION_65_0();
          v42 = swift_allocObject();
          *(v42 + 16) = a3;
          *(v42 + 24) = a4;
          v82 = sub_216A2DFEC;
          v83 = v42;
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_11_44(COERCE_DOUBLE(1107296256));
          aBlock[2] = v43;
          v81 = &block_descriptor_15;
          v44 = _Block_copy(aBlock);

          [v41 enableAutomaticDownloadsWithCompletionHandler_];

          _Block_release(v44);

          return (v32 != 5);
        }

        __break(1u);
        break;
    }
  }

  return result;
}

uint64_t sub_216A2B334()
{
  v0 = sub_21700F5E4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216A2B380(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  _Block_copy(a4);
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E73D20);
  v12 = a2;
  v13 = sub_217007C84();
  v14 = sub_21700EDA4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v39 = v19;
    *v16 = 136446466;
    *(v16 + 4) = sub_2166A85FC(0xD00000000000004ELL, 0x8000000217086A40, &v39);
    *(v16 + 12) = 2114;
    *(v16 + 14) = v12;
    *v18 = v12;
    v20 = v12;
    _os_log_impl(&dword_216679000, v13, v14, "💬 %{public}s: %{public}@", v16, 0x16u);
    sub_216697664(v18, &qword_27CABF880);
    v21 = v18;
    a1 = v37;
    MEMORY[0x21CEA1440](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x21CEA1440](v19, -1, -1);
    v22 = v16;
    a3 = v38;
    MEMORY[0x21CEA1440](v22, -1, -1);
  }

  v23 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
  sub_21700EA34();
  v24 = a1;
  v25 = sub_21700EA24();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v24;
  sub_21677BBA0();

  v28 = *(a3 + 208);
  _Block_copy(a4);
  sub_216A29500(v12, v28, a3, a4);
  v30 = v29;
  v31 = sub_217007C84();
  v32 = sub_21700EDA4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v33 = 136446466;
    *(v33 + 4) = sub_2166A85FC(0xD00000000000004ELL, 0x8000000217086A40, &v39);
    *(v33 + 12) = 1026;
    *(v33 + 14) = v30 & 1;
    _os_log_impl(&dword_216679000, v31, v32, "💬 %{public}s Successful delegate action? %{BOOL,public}d", v33, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v33, -1, -1);
  }

  _Block_release(a4);
  _Block_release(a4);
  return v30 & 1;
}

uint64_t sub_216A2B73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A2B7D4, v6, v5);
}

uint64_t sub_216A2B7D4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);

  v2 = [v1 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  OUTLINED_FUNCTION_3();

  return v4();
}

void sub_216A2B864(uint64_t a1, void (**a2)(void, void, void))
{
  sub_216681B04(a1, v26, &unk_27CAC9DD0);
  if (v27)
  {
    v3 = *&v26[0];
    memset(v25, 0, sizeof(v25));
    sub_216681B04(v25, v23, &unk_27CABF7A0);
    v4 = v24;
    if (v24)
    {
      v5 = __swift_project_boxed_opaque_existential_1(v23, v24);
      v6 = *(v4 - 8);
      v7 = MEMORY[0x28223BE20](v5);
      v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v9, v7);
      v10 = v3;
      v11 = sub_21700F7B4();
      (*(v6 + 8))(v9, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    else
    {
      v19 = v3;
      v11 = 0;
    }

    v20 = sub_217005D24();
    (a2)[2](a2, v11, v20);
    swift_unknownObjectRelease();

    sub_216697664(v25, &unk_27CABF7A0);
  }

  else
  {
    sub_2166EF9C4(v26, v25);
    sub_2166A6DF8(v25, v23);
    sub_216681B04(v23, v21, &unk_27CABF7A0);
    v12 = v22;
    if (v22)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
      v14 = *(v12 - 8);
      v15 = MEMORY[0x28223BE20](v13);
      v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = sub_21700F7B4();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
      v18 = 0;
    }

    a2[2](a2, v18, 0);
    swift_unknownObjectRelease();
    sub_216697664(v23, &unk_27CABF7A0);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  _Block_release(a2);
}

uint64_t sub_216A2BB94(uint64_t a1, void (*a2)(_OWORD *, id))
{
  sub_216681B04(a1, v8, &unk_27CAC9DD0);
  if (v9)
  {
    v3 = v8[0];
    memset(v7, 0, sizeof(v7));
    v4 = v8[0];
    a2(v7, v3);

    return sub_216697664(v7, &unk_27CABF7A0);
  }

  else
  {
    sub_2166EF9C4(v8, v7);
    sub_2166A6DF8(v7, v6);
    a2(v6, 0);
    sub_216697664(v6, &unk_27CABF7A0);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }
}

unint64_t sub_216A2BD14()
{
  result = qword_27CAC0110;
  if (!qword_27CAC0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0110);
  }

  return result;
}

void sub_216A2BD68(uint64_t a1, void *a2, uint64_t a3)
{
  sub_216681B04(a1, v12, &unk_27CABF7A0);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  (*(v7 + 16))(v9 - v8);
  v11 = sub_21700F7B4();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_217005D24();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_216A2BED4(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v5[0] = a1;
    v6 = 1;
    v3 = a1;
  }

  else
  {
    v5[3] = MEMORY[0x277D839B0];
    LOBYTE(v5[0]) = 1;
    v6 = 0;
  }

  a2(v5);
  return sub_216697664(v5, &unk_27CAC9DD0);
}

void sub_216A2BF54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_216A2BFC0(uint64_t a1, void (*a2)(_BYTE *))
{
  v4 = MEMORY[0x277D839B0];
  v3[0] = 1;
  v5 = 0;
  a2(v3);
  return sub_216697664(v3, &unk_27CAC9DD0);
}

uint64_t sub_216A2C024(uint64_t a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v30 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v33 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v32 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  updated = type metadata accessor for UpdateNotificationSettingsAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_216A2C4A4();
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  v28[1] = a1;
  sub_21700E094();
  v29 = v34[0];
  v19 = *(v34[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded);
  sub_21700D234();
  *(v18 + *(updated + 20)) = 1;
  *(v18 + *(updated + 24)) = v19;
  sub_21700E094();
  v20 = v33;
  sub_21700E094();
  v35 = updated;
  v36 = sub_216A2E0F8(&qword_280E2F580, type metadata accessor for UpdateNotificationSettingsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  sub_216A2E140(v18, boxed_opaque_existential_1, type metadata accessor for UpdateNotificationSettingsAction);
  v22 = v30;
  (*(v30 + 16))(v6, v20, v7);
  v23 = v31;
  (*(v3 + 104))(v6, *MEMORY[0x277D21E10], v31);
  sub_21700D5E4();
  (*(v3 + 8))(v6, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v35 = sub_21700D7C4();
  v36 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_21700D7B4();
  v24 = sub_21700E1B4();

  (*(v22 + 8))(v33, v7);
  v25 = OUTLINED_FUNCTION_82();
  v26(v25);
  sub_216A2E1A0(v18, type metadata accessor for UpdateNotificationSettingsAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return v24;
}

uint64_t sub_216A2C428(void *a1, void (*a2)(void *))
{
  v5[0] = a1;
  v6 = 1;
  v3 = a1;
  a2(v5);
  return sub_216697664(v5, &unk_27CAC9DD0);
}

uint64_t sub_216A2C4A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  v5 = [objc_opt_self() currentNotificationCenter];
  v6 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v0;

  sub_21677E228();
}

uint64_t sub_216A2C5A4()
{
  OUTLINED_FUNCTION_33();
  v1[30] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v1[31] = v2;
  OUTLINED_FUNCTION_2(v2);
  v1[32] = v3;
  v1[33] = OUTLINED_FUNCTION_80();
  v4 = sub_21700D2A4();
  v1[34] = v4;
  OUTLINED_FUNCTION_2(v4);
  v1[35] = v5;
  v1[36] = OUTLINED_FUNCTION_80();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v1[37] = v6;
  OUTLINED_FUNCTION_2(v6);
  v1[38] = v7;
  v1[39] = OUTLINED_FUNCTION_80();
  v8 = type metadata accessor for PresentAlertAction();
  v1[40] = v8;
  OUTLINED_FUNCTION_36(v8);
  v1[41] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  OUTLINED_FUNCTION_36(v9);
  v1[42] = OUTLINED_FUNCTION_80();
  v10 = sub_217006224();
  v1[43] = v10;
  OUTLINED_FUNCTION_2(v10);
  v1[44] = v11;
  v1[45] = OUTLINED_FUNCTION_80();
  v12 = sub_21700D284();
  OUTLINED_FUNCTION_36(v12);
  v1[46] = OUTLINED_FUNCTION_80();
  v13 = sub_217006274();
  OUTLINED_FUNCTION_36(v13);
  v1[47] = OUTLINED_FUNCTION_80();
  v14 = sub_21700E4C4();
  OUTLINED_FUNCTION_36(v14);
  v1[48] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v1[49] = sub_21700EA24();
  v16 = sub_21700E9B4();
  v1[50] = v16;
  v1[51] = v15;

  return MEMORY[0x2822009F8](sub_216A2C830, v16, v15);
}

uint64_t sub_216A2C830()
{
  v56 = v1;
  type metadata accessor for ObjectGraph();

  v52 = sub_21700D4F4();
  *(v1 + 416) = v52;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73D20);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_96();
    v5 = OUTLINED_FUNCTION_44_0();
    v55 = v5;
    *v0 = 136446210;
    *(v0 + 4) = sub_2166A85FC(0xD000000000000023, 0x8000000217086A10, &v55);
    OUTLINED_FUNCTION_36_21(&dword_216679000, v6, v7, "💬 %{public}s Display reprompt");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_26_4();
  }

  v8 = *(v1 + 360);
  v9 = *(v1 + 344);
  v54 = *(v1 + 352);
  v10 = *(v1 + 336);
  v47 = *(v1 + 328);
  v48 = *(v1 + 320);
  v49 = *(v1 + 256);
  v50 = *(v1 + 248);
  v51 = *(v1 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
  v11 = _s6ActionVMa();
  OUTLINED_FUNCTION_2(v11);
  v45 = *(v12 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_217013D90;
  v53 = (v46 + v14);
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_2_78();
  v15 = sub_21700E584();
  v42 = v16;
  sub_21700D234();
  v17 = sub_21700D2C4();
  v18 = MEMORY[0x277D21CB8];
  *(v1 + 72) = v17;
  *(v1 + 80) = v18;
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_21700D2B4();
  sub_217006214();
  v19 = sub_2170061F4();
  v21 = v20;
  v44 = *(v54 + 8);
  v44(v8, v9);
  *(v1 + 16) = v19;
  *(v1 + 24) = v21;
  *(v1 + 32) = v15;
  *(v1 + 40) = v42;
  v43 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v43);
  sub_216933210(v10, v53);
  sub_216697664(v10, &qword_27CAB70A8);
  sub_2167ADC98(v1 + 16);
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_2_78();
  v22 = sub_21700E584();
  v24 = v23;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  sub_217006214();
  v25 = sub_2170061F4();
  v27 = v26;
  v44(v8, v9);
  *(v1 + 88) = v25;
  *(v1 + 96) = v27;
  *(v1 + 104) = v22;
  *(v1 + 112) = v24;
  sub_217007EF4();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v43);
  sub_216933210(v10, &v53[v45]);
  sub_216697664(v10, &qword_27CAB70A8);
  sub_2167ADC98(v1 + 88);
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_2_78();
  v28 = sub_21700E584();
  v30 = v29;
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_2_78();
  v31 = sub_21700E584();
  sub_216933384(v28, v30, v46, v31, v32, (v1 + 160));
  sub_21700D234();
  v33 = v47 + *(v48 + 20);
  v34 = *(v1 + 160);
  v35 = *(v1 + 176);
  *(v33 + 32) = *(v1 + 192);
  *v33 = v34;
  *(v33 + 16) = v35;
  sub_21700E094();
  *(v1 + 224) = v48;
  *(v1 + 232) = sub_216A2E0F8(qword_280E3EB18, type metadata accessor for PresentAlertAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 200));
  sub_216A2E140(v47, boxed_opaque_existential_1, type metadata accessor for PresentAlertAction);
  (*(v49 + 104))(v51, *MEMORY[0x277D21E18], v50);
  v37 = swift_task_alloc();
  *(v1 + 424) = v37;
  *v37 = v1;
  v37[1] = sub_216A2CE48;
  v38 = *(v1 + 288);
  v39 = *(v1 + 296);
  v40 = *(v1 + 264);

  return MEMORY[0x28217F468](v38, v1 + 200, v40, v52, v39);
}

uint64_t sub_216A2CE48()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = v2[33];
  v5 = v2[32];
  v6 = v2[31];
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v3[54] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v9 = v3[50];
    v10 = v3[51];
    v11 = sub_216A2D0E8;
  }

  else
  {
    (*(v3[35] + 8))(v3[36], v3[34]);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 25));
    v9 = v3[50];
    v10 = v3[51];
    v11 = sub_216A2CFD4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_216A2CFD4()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];

  (*(v2 + 8))(v3, v4);
  OUTLINED_FUNCTION_14_37();
  sub_216A2E1A0(v1, v5);

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216A2D0E8()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];

  (*(v2 + 8))(v3, v4);
  OUTLINED_FUNCTION_14_37();
  sub_216A2E1A0(v1, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 25));

  OUTLINED_FUNCTION_3();

  return v6();
}

void sub_216A2D208()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_2169C5A10();

    if (v2)
    {
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v3 = sub_217007CA4();
      __swift_project_value_buffer(v3, qword_280E73D20);
      v4 = sub_217007C84();
      v5 = sub_21700EDA4();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_12;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "💬 Navigating to Settings > Notifications > Music";
    }

    else
    {
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v8 = sub_217007CA4();
      __swift_project_value_buffer(v8, qword_280E73D20);
      v4 = sub_217007C84();
      v5 = sub_21700ED84();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_12;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "💬 Failed to navigate to Settings > Notifications > Music";
    }

    _os_log_impl(&dword_216679000, v4, v5, v7, v6, 2u);
    MEMORY[0x21CEA1440](v6, -1, -1);
LABEL_12:

    return;
  }

  __break(1u);
}

uint64_t sub_216A2D3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  return MEMORY[0x2822009F8](sub_216A2D3C8, 0, 0);
}

uint64_t sub_216A2D3C8()
{
  v1 = v0[37];
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_216A2D4E4;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0120);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_216A2DEE4;
  v0[21] = &block_descriptor_19;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_216A2D4E4()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_216A2D5B8, 0, 0);
}

void sub_216A2D5B8()
{
  v24 = v0;
  v1 = v0[36];
  v0[39] = v1;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = sub_217007CA4();
  v0[40] = __swift_project_value_buffer(v2, qword_280E73D20);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700EDA4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136446722;
    *(v6 + 4) = sub_2166A85FC(0xD00000000000002DLL, 0x80000002170867E0, &v23);
    *(v6 + 12) = 2114;
    *(v6 + 14) = v3;
    *v7 = v3;
    *(v6 + 22) = 2082;
    v8 = objc_opt_self();
    v9 = v3;
    v0[34] = sub_2166E2BA8([v8 mainBundle]);
    v0[35] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
    v11 = sub_21700E594();
    v13 = sub_2166A85FC(v11, v12, &v23);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_216679000, v4, v5, "💬 %{public}s Current notification setting: %{public}@ for %{public}s", v6, 0x20u);
    sub_216697664(v7, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_26_4();
  }

  v14 = [v3 authorizationStatus];
  if ((v14 - 2) < 3)
  {

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_26_30();

    __asm { BRAA            X1, X16 }
  }

  if (v14 == 1)
  {
    v21 = swift_task_alloc();
    v0[42] = v21;
    *v21 = v0;
    v21[1] = sub_216A2DC0C;
    OUTLINED_FUNCTION_26_30();

    sub_216A2C5A4();
  }

  else if (v14)
  {
    sub_21700F584();
    OUTLINED_FUNCTION_26_30();
  }

  else
  {
    v17 = v0[37];
    v0[10] = v0;
    v0[15] = v0 + 44;
    v0[11] = sub_216A2D9CC;
    v18 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0128);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_216A2DF78;
    v0[29] = &block_descriptor_24;
    v0[30] = v18;
    [v17 requestAuthorizationWithOptions:7 completionHandler:v0 + 26];
    OUTLINED_FUNCTION_26_30();

    MEMORY[0x282200938](v19);
  }
}

uint64_t sub_216A2D9CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = v0;
  v2 = *(v0 + 112);
  *(v1 + 328) = v2;
  if (v2)
  {
    v3 = sub_216A2DD68;
  }

  else
  {
    v3 = sub_216A2DAD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_216A2DAD4()
{
  v1 = *(v0 + 352);
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 312);
  if (v1 == 1)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_96();
    v6 = OUTLINED_FUNCTION_44_0();
    *v1 = 136446210;
    *(v1 + 4) = OUTLINED_FUNCTION_17_39("requestNotificationAuthorizationIfNecessary()", v6);
    v9 = "💬 %{public}s Authorized notifications";
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_96();
    v6 = OUTLINED_FUNCTION_44_0();
    *v1 = 136446210;
    *(v1 + 4) = OUTLINED_FUNCTION_17_39("requestNotificationAuthorizationIfNecessary()", v6);
    v9 = "💬 %{public}s Declined notifications";
  }

  OUTLINED_FUNCTION_36_21(&dword_216679000, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_26_4();
LABEL_7:

  OUTLINED_FUNCTION_23();

  return v10();
}

uint64_t sub_216A2DC0C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 344) = v0;

  if (v0)
  {
    v5 = sub_216A2DE88;
  }

  else
  {
    v5 = sub_216A2DD10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_216A2DD10()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v1();
}

uint64_t sub_216A2DD68()
{
  swift_willThrow();
  v1 = sub_217007C84();
  v2 = sub_21700ED84();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_96();
    v7 = swift_slowAlloc();
    *v6 = 136446210;
    *(v6 + 4) = OUTLINED_FUNCTION_17_39("requestNotificationAuthorizationIfNecessary()", v7);
    _os_log_impl(&dword_216679000, v1, v2, "💬 %{public}s could not set Settings > Notifications > Music", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_23();

  return v8();
}

uint64_t sub_216A2DE88()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A2DEE4(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;
  return sub_2166A7FCC(v3, v4, MEMORY[0x277D85A80]);
}

uint64_t sub_216A2DF78(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_216A29470(*v5, a3);
  }

  else
  {
    return sub_216A2DF50(*v5, a2, MEMORY[0x277D85A88]);
  }
}

uint64_t sub_216A2DFF4()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_3_3(v4);

  return sub_216A2D3A8(v5, v6, v7, v3, v2);
}

uint64_t sub_216A2E0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A2E140(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A2E1A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A2E208()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216A2B73C(v4, v5, v6, v2);
}

uint64_t View.musicNavigationDestination<A, B>(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 88);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, *(v10 + 40) + *(**(v10 + 40) + 200), v5, v7);

  sub_216BD3D88(v11, v9, a2, v5, a3);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_216A2E494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v59 = a3;
  v56 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_98();
  v49 = v5;
  v50 = *(v5 + 16);
  v51 = v5 + 16;
  v50(v8, v52, v56);
  v46 = v8;
  sub_21700D734();
  v53 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = *(v11 + 8);
  v54 = v11 + 8;
  v55 = v9;
  v24 = v23;
  v23(v17, v9);
  if (v22)
  {
    v25 = type metadata accessor for CuratorDetailHeaderComponentModel();
    v57 = v20;
    v58 = v22;
    v26 = v59;
    sub_21700F364();
    sub_21700CE04();
    v27 = sub_21700CDB4();
    v29 = v28;
    v30 = v55;
    v24(v19, v55);
    v31 = (v26 + *(v25 + 24));
    *v31 = v27;
    v31[1] = v29;
    sub_21700CE04();
    v47 = v25;
    sub_21700CD34();
    v24(v19, v30);
    type metadata accessor for Artwork();
    sub_21700CE04();
    v32 = v46;
    v48 = v24;
    v33 = v52;
    v50(v46, v52, v56);
    v44 = sub_216A2EC2C(&qword_280E2BF60, type metadata accessor for Artwork);
    sub_21700D734();
    v34 = v45;
    sub_21700CE04();
    LOBYTE(v29) = sub_21700CD44();
    v48(v34, v55);
    *(v59 + *(v47 + 36)) = (v29 == 2) | v29 & 1;
    sub_21700CE04();
    v35 = v56;
    v36 = v50;
    v50(v32, v33, v56);
    sub_21700D734();
    type metadata accessor for VideoArtwork();
    v37 = v53;
    sub_21700CE04();
    v36(v32, v33, v35);
    sub_216A2EC2C(qword_280E44448, type metadata accessor for VideoArtwork);
    OUTLINED_FUNCTION_2_79();
    sub_21700D734();
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_1_98();
    v50(v32, v33, v35);
    sub_216A2EC2C(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_2_79();
    sub_21700D734();
    (*(v49 + 8))(v33, v35);
    return (v48)(v37, v55);
  }

  else
  {
    v39 = sub_21700E2E4();
    sub_216A2EC2C(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v40 = v24;
    v42 = v41;
    v43 = type metadata accessor for CuratorDetailHeaderComponentModel();
    *v42 = 25705;
    v42[1] = 0xE200000000000000;
    v42[2] = v43;
    (*(*(v39 - 8) + 104))(v42, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    (*(v49 + 8))(v52, v56);
    v40(v53, v55);
    return sub_2167B0250(v59);
  }
}

uint64_t sub_216A2EC2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A2EC74()
{
  result = type metadata accessor for PaginationPageResult();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216A2ED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_216A2ED70(a1, a2, a3);
  return v6;
}

char *sub_216A2ED70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for PageChangeInstructionPerformer();
  v8 = *(a2 + *(*a2 + 168));

  v9 = sub_216A4116C();

  v10 = sub_216B37F10(v8, v9, 1);
  *(v4 + 2) = a3;
  *(v4 + 3) = v10;
  v11 = *(*v4 + 112);
  v12 = type metadata accessor for PaginationPageResult();
  (*(*(v12 - 8) + 32))(&v4[v11], a1, v12);
  return v4;
}

uint64_t sub_216A2EEBC()
{

  v1 = *(*v0 + 112);
  v2 = type metadata accessor for PaginationPageResult();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_216A2EF6C()
{
  sub_216A2EEBC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216A2EFFC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A2F038(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AddRecentSearchMusicItemAction()
{
  result = qword_280E47F68;
  if (!qword_280E47F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A2F0E8()
{
  result = sub_21700D284();
  if (v1 <= 0x3F)
  {
    result = sub_2170067A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216A2F180(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_216A2F1C0(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t type metadata accessor for DefaultSectionHeaderView()
{
  result = qword_280E36B70;
  if (!qword_280E36B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A2F294()
{
  type metadata accessor for DefaultSectionHeader();
  if (v0 <= 0x3F)
  {
    sub_2166B44E8(319, &qword_280E2B440, &qword_27CAB8600);
    if (v1 <= 0x3F)
    {
      sub_21692ED34();
      if (v2 <= 0x3F)
      {
        sub_216833F44();
        if (v3 <= 0x3F)
        {
          sub_2166B44E8(319, &qword_280E2B4A0, &qword_27CABBAA8);
          if (v4 <= 0x3F)
          {
            sub_2167D1C30();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_216A2F3CC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0238);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0240);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0248);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0250);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0258);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = &v37 - v21;
  if (sub_216A2F880())
  {
    v37 = v15;
    v38 = v16;
    v39 = a1;
    *v6 = sub_2170091A4();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0260);
    sub_216A2FC84(v1, &v6[*(v22 + 44)]);
    v23 = sub_217009C94();
    type metadata accessor for DefaultSectionHeaderView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    sub_217007F24();
    v24 = &v6[*(v3 + 36)];
    *v24 = v23;
    *(v24 + 1) = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    *(v24 + 4) = v28;
    v24[40] = 0;
    sub_217009CA4();
    if (*(v1 + *(type metadata accessor for DefaultSectionHeader() + 40)) != 1)
    {
      sub_21700F7D4();
    }

    sub_2170082C4();
    v30 = v38;
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    sub_2167C5834(v6, v9, &qword_27CAC0238);
    OUTLINED_FUNCTION_1_99(&v9[*(v40 + 36)]);
    sub_217009CB4();
    sub_216A31BC8();
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    sub_2167C5834(v9, v12, &qword_27CAC0240);
    OUTLINED_FUNCTION_1_99(&v12[*(v41 + 36)]);
    sub_217009CD4();
    sub_216A31BC8();
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    v31 = v37;
    sub_2167C5834(v12, v37, &qword_27CAC0248);
    OUTLINED_FUNCTION_1_99(v31 + *(v43 + 36));
    KeyPath = swift_getKeyPath();
    sub_2167C5834(v31, v19, &qword_27CAC0250);
    v33 = &v19[*(v30 + 36)];
    *v33 = KeyPath;
    v33[8] = 0;
    v34 = v42;
    sub_2167C5834(v19, v42, &qword_27CAC0258);
    v35 = v34;
    v36 = v39;
    sub_2167C5834(v35, v39, &qword_27CAC0258);
    return __swift_storeEnumTagSinglePayload(v36, 0, 1, v30);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v16);
  }
}

uint64_t sub_216A2F880()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0330);
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - v2;
  v4 = sub_2170090F4();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = *(v0 + *(type metadata accessor for DefaultSectionHeader() + 44));
  if (v16 == 2)
  {
    return 1;
  }

  v18 = type metadata accessor for DefaultSectionHeaderView();
  sub_216683A80(v0 + *(v18 + 20), v9, &qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2167C5834(v9, v15, &qword_27CAB8600);
  }

  else
  {
    sub_21700ED94();
    v19 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v25 + 8))(v6, v4);
  }

  v20 = *(v1 + 48);
  sub_2167C5834(v15, v3, &qword_27CAB8600);
  v3[v20] = v16 & 1;
  v21 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v3, 1, v21) == 1)
  {
    goto LABEL_7;
  }

  sub_216683A80(v3, v12, &qword_27CAB8600);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 88))(v12, v21);
  if (v23 == *MEMORY[0x277CE0558])
  {
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_13:
    sub_216699778(v3, &qword_27CAB8600);
    return 1;
  }

  if (v23 != *MEMORY[0x277CE0560])
  {
    (*(v22 + 8))(v12, v21);
    goto LABEL_7;
  }

  if (v16)
  {
    goto LABEL_13;
  }

LABEL_7:
  sub_216699778(v3, &qword_27CAC0330);
  return 0;
}

uint64_t sub_216A2FC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0268);
  v85 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v84 = &v83 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0270);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v83 - v7;
  v98 = sub_217009314();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2170099D4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0278);
  MEMORY[0x28223BE20](v88);
  v11 = &v83 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0280);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v83 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0288);
  MEMORY[0x28223BE20](v94);
  v99 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v83 - v15;
  MEMORY[0x28223BE20](v16);
  v105 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0290);
  MEMORY[0x28223BE20](v18);
  v20 = &v83 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v83 - v22;
  v24 = type metadata accessor for Artwork();
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0298);
  MEMORY[0x28223BE20](v27 - 8);
  v96 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v83 - v30;
  v32 = type metadata accessor for DefaultSectionHeader();
  sub_216683A80(a1 + *(v32 + 32), v23, &qword_27CAB6D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v24);
  v104 = v31;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v23, &qword_27CAB6D60);
    v34 = v31;
    v35 = 1;
    v36 = v18;
  }

  else
  {
    v37 = v18;
    sub_216A329CC(v23, v26);
    sub_216A32A24(v26, v20);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v24);
    v38 = type metadata accessor for ArtworkView();
    *&v20[*(v38 + 20)] = xmmword_217016ED0;
    *&v20[*(v38 + 24)] = vdupq_n_s64(0x4044000000000000uLL);
    v39 = *(a1 + *(v32 + 36));
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v40 = qword_280E73AA0;
    v41 = byte_280E73AA8;
    v42 = qword_280E73AB0;
    v43 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02F0) + 36)];
    *v43 = v39;
    v83 = xmmword_217033420;
    *(v43 + 8) = xmmword_217033420;
    *(v43 + 12) = 256;
    KeyPath = swift_getKeyPath();
    v107 = v41;
    v106 = 0;
    v45 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02F8) + 36)];
    *v45 = v40;
    v45[8] = v107;
    *(v45 + 9) = v108;
    *(v45 + 3) = *(&v108 + 3);
    *(v45 + 2) = v42;
    v45[24] = v39;
    *(v45 + 25) = v111;
    *(v45 + 7) = *(&v111 + 3);
    *(v45 + 2) = v83;
    *(v45 + 6) = KeyPath;
    v45[56] = v106;

    LOBYTE(v42) = sub_217009CD4();
    sub_217007F24();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_216A32A7C(v26, type metadata accessor for Artwork);
    v54 = &v20[*(v37 + 36)];
    *v54 = v42;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    v31 = v104;
    sub_2167C5834(v20, v104, &qword_27CAC0290);
    v34 = v31;
    v35 = 0;
    v36 = v37;
  }

  __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
  *v11 = sub_2170093C4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02A0);
  v56 = a1;
  sub_216A30AD8(a1, &v11[*(v55 + 44)]);
  v57 = swift_getKeyPath();
  v58 = v88;
  v59 = &v11[*(v88 + 36)];
  *v59 = v57;
  v59[8] = 0;
  v60 = v86;
  sub_2170099A4();
  v61 = sub_216A3282C();
  v62 = v87;
  sub_21700A784();
  (*(v89 + 8))(v60, v90);
  sub_216699778(v11, &qword_27CAC0278);
  v108 = sub_216BEDD74();
  v109 = v63;
  *&v111 = v58;
  *(&v111 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v64 = v93;
  v65 = v92;
  sub_21700A6B4();

  (*(v91 + 8))(v62, v65);
  sub_216683A80(v56 + 72, &v108, &qword_27CAB8100);
  v66 = v101;
  v67 = v97;
  v68 = v95;
  if (!v109)
  {
    sub_216699778(&v108, &qword_27CAB8100);
    v111 = 0u;
    v112 = 0u;
    v113 = 0;
    goto LABEL_10;
  }

  sub_216683A80(&v110, &v111, &qword_27CAB6DB0);
  sub_2167ADC98(&v108);
  if (!*(&v112 + 1))
  {
LABEL_10:
    sub_216699778(&v111, &qword_27CAB6DB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_217013DA0;
    goto LABEL_11;
  }

  sub_216699778(&v111, &qword_27CAB6DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_217013D90;
  sub_2170092F4();
LABEL_11:
  sub_217009304();
  v108 = v69;
  sub_216A32C4C(&qword_280E2AC28, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B8);
  sub_21669E098(&qword_280E29E60, &qword_27CAC02B8);
  v70 = v98;
  sub_21700F214();
  sub_2170089A4();
  (*(v67 + 8))(v68, v70);
  sub_216699778(v64, &qword_27CAC0288);
  v71 = *(v56 + 152);
  if (v71 && *(v71 + 16))
  {
    v108 = *(v56 + 152);
    swift_getKeyPath();
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02D0);
    sub_21669E098(&qword_27CAC02D8, &qword_27CAC02C8);
    sub_216A32910();
    v72 = v84;
    sub_21700B154();
    v73 = v100;
    (*(v85 + 32))(v66, v72, v100);
    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v100;
  }

  __swift_storeEnumTagSinglePayload(v66, v74, 1, v73);
  v75 = v96;
  sub_216683A80(v31, v96, &qword_27CAC0298);
  v76 = v105;
  v77 = v99;
  sub_216724D6C(v105, v99);
  v78 = v102;
  sub_216683A80(v66, v102, &qword_27CAC0270);
  v79 = v103;
  sub_216683A80(v75, v103, &qword_27CAC0298);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02C0);
  sub_216724D6C(v77, v79 + v80[12]);
  v81 = v79 + v80[16];
  *v81 = 0;
  *(v81 + 8) = 1;
  sub_216683A80(v78, v79 + v80[20], &qword_27CAC0270);
  sub_216699778(v66, &qword_27CAC0270);
  sub_216699778(v76, &qword_27CAC0288);
  sub_216699778(v104, &qword_27CAC0298);
  sub_216699778(v78, &qword_27CAC0270);
  sub_216699778(v77, &qword_27CAC0288);
  return sub_216699778(v75, &qword_27CAC0298);
}

uint64_t sub_216A30AD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D70);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v71[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v76 = &v71[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0308);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v71[-v10];
  sub_216683A80(a1, v98, &qword_27CAB8100);
  v94 = v11;
  v87 = a1;
  if (v98[1])
  {
    sub_21700DF14();
    sub_2167ADC98(v98);
    if (qword_27CAB5BD8 != -1)
    {
      swift_once();
    }

    v12 = sub_21700A094();
    v14 = v13;
    v16 = v15;

    if (qword_27CAB5BE0 != -1)
    {
      swift_once();
    }

    v97[0] = qword_27CAC01C0;

    v17 = sub_21700A044();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_21678817C(v12, v14, v16 & 1);

    sub_21700B3B4();
    sub_2170083C4();
    v84 = v102;
    v89 = v104;
    v90 = v100;
    LOBYTE(v97[0]) = 1;
    v99[0] = v101;
    v96[0] = v103;
    v82 = 1;
    v83 = v105;
    v81 = v101;
    v80 = v103;
    LOBYTE(v106) = v21 & 1;
    v88 = v21 & 1;
    sub_216777114(v17, v19, v21 & 1);
    sub_21700DF14();
    v92 = v19;
    v93 = v17;
    sub_21678817C(v17, v19, v21 & 1);
    v91 = v23;

    a1 = v87;
    v11 = v94;
  }

  else
  {
    sub_216699778(v98, &qword_27CAB8100);
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v80 = 0;
    v88 = 0;
    v89 = 0;
  }

  sub_216683A80(a1 + 72, v98, &qword_27CAB8100);
  if (!v98[1])
  {
    sub_216699778(v98, &qword_27CAB8100);
    memset(v99, 0, 89);
    goto LABEL_21;
  }

  memcpy(v97, v98, 0x48uLL);
  v24 = *(a1 + *(type metadata accessor for DefaultSectionHeader() + 40));
  if ((v24 & 1) == 0)
  {
    v26 = qword_27CAB5BE8;
    sub_21700DF14();
    if (v26 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  v25 = qword_27CAB5BF8;
  sub_21700DF14();
  if (v25 != -1)
  {
LABEL_25:
    swift_once();
  }

LABEL_14:

  v27 = sub_21700A094();
  v29 = v28;
  v31 = v30;

  if (v24)
  {
    if (qword_27CAB5C00 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (qword_27CAB5BF0 != -1)
  {
LABEL_27:
    swift_once();
  }

LABEL_18:
  v32 = sub_217009FA4();
  v34 = v33;
  v36 = v35;
  sub_21678817C(v27, v29, v31 & 1);

  if (qword_27CAB5C08 != -1)
  {
    swift_once();
  }

  v98[0] = qword_27CAC01E8;

  v37 = sub_21700A044();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_21678817C(v32, v34, v36 & 1);

  v44 = sub_216683A80(&v97[4], v98, &qword_27CAB6DB0);
  v98[5] = v37;
  v98[6] = v39;
  LOBYTE(v98[7]) = v41 & 1;
  v98[8] = v43;
  a1 = v87;
  v45 = sub_216A31538(v44);
  v47 = v46;
  sub_2167ADC98(v97);
  v98[9] = swift_getKeyPath();
  v98[10] = v45;
  LOBYTE(v98[11]) = v47 & 1;
  memcpy(v99, v98, 0x59uLL);
  v11 = v94;
LABEL_21:
  v48 = *(a1 + 144);
  if (v48)
  {
    sub_21700DF14();
    sub_21700B3B4();
    sub_2170083C4();
    v87 = v106;
    v74 = v110;
    v75 = v108;
    v73 = v111;
    LOBYTE(v97[0]) = 1;
    v96[0] = v107;
    v95 = v109;
    v98[0] = v48;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    sub_21669E098(&qword_27CAB8D88, &qword_27CAB74F8);
    v49 = v76;
    sub_21700B154();
    v50 = v97[0];
    v51 = v96[0];
    v72 = v95;
    v53 = v77;
    v52 = v78;
    v54 = *(v78 + 16);
    v55 = v79;
    v54(v77, v49, v79);
    *v11 = 0;
    v11[8] = v50;
    *(v11 + 2) = v87;
    v11[24] = v51;
    *(v11 + 4) = v75;
    v11[40] = v72;
    v56 = v73;
    *(v11 + 6) = v74;
    *(v11 + 7) = v56;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0328);
    v54(&v11[*(v57 + 48)], v53, v55);
    v58 = *(v52 + 8);
    v58(v49, v55);
    v58(v53, v55);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0310);
    v60 = v11;
    v61 = 0;
  }

  else
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0310);
    v60 = v11;
    v61 = 1;
  }

  __swift_storeEnumTagSinglePayload(v60, v61, 1, v59);
  sub_216683A80(v99, v96, &qword_27CAB8D78);
  v62 = v85;
  sub_216683A80(v11, v85, &qword_27CAC0308);
  v97[0] = v93;
  v97[1] = v92;
  v97[2] = v88;
  v97[3] = v91;
  v64 = v81;
  v63 = v82;
  v97[4] = 0;
  v97[5] = v82;
  v97[6] = v90;
  v97[7] = v81;
  v66 = v83;
  v65 = v84;
  v67 = v80;
  v97[8] = v84;
  v97[9] = v80;
  v97[10] = v89;
  v97[11] = v83;
  v68 = v86;
  memcpy(v86, v97, 0x60uLL);
  sub_216683A80(v96, v68 + 96, &qword_27CAB8D78);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0318);
  sub_216683A80(v62, v68 + *(v69 + 64), &qword_27CAC0308);
  sub_216683A80(v97, v98, &qword_27CAC0320);
  sub_216699778(v94, &qword_27CAC0308);
  sub_216699778(v99, &qword_27CAB8D78);
  sub_216699778(v62, &qword_27CAC0308);
  sub_216699778(v96, &qword_27CAB8D78);
  v98[0] = v93;
  v98[1] = v92;
  v98[2] = v88;
  v98[3] = v91;
  v98[4] = 0;
  v98[5] = v63;
  v98[6] = v90;
  v98[7] = v64;
  v98[8] = v65;
  v98[9] = v67;
  v98[10] = v89;
  v98[11] = v66;
  return sub_216699778(v98, &qword_27CAC0320);
}

uint64_t sub_216A316E0@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_27CAB5C10;
  sub_21700DF14();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_21700A094();
  v5 = v4;
  v7 = v6;

  if (qword_27CAB5C18 != -1)
  {
    swift_once();
  }

  v8 = sub_21700A044();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_21678817C(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_216A31890(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0300);
  MEMORY[0x28223BE20](v2);
  v4 = &v17[-v3 - 8];
  v5 = type metadata accessor for DefaultAccessoryButtonView();
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for DefaultAccessoryButton();
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12 - 8];
  v17[0] = *a1;
  v14 = v17[0];
  sub_216826960((a1 + 8), v18);
  if (v14 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330), !swift_dynamicCast()))
  {
    swift_storeEnumTagMultiPayload();
    sub_216A32C4C(&qword_27CAC02E8, type metadata accessor for DefaultAccessoryButtonView);
    sub_217009554();
    return sub_216699778(v17, &qword_27CABDC08);
  }

  else
  {
    sub_216A329CC(v13, v10);
    sub_216A32A24(v10, v7);
    sub_216A32A24(v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_216A32C4C(&qword_27CAC02E8, type metadata accessor for DefaultAccessoryButtonView);
    sub_217009554();
    sub_216A32A7C(v7, type metadata accessor for DefaultAccessoryButtonView);
    sub_216A32A7C(v10, type metadata accessor for DefaultAccessoryButton);
    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

double sub_216A31BC8()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E2B930 != -1)
  {
    swift_once();
  }

  result = 0.0;
  if ((byte_280E73A85 & 1) == 0)
  {
    v6 = v0 + *(type metadata accessor for DefaultSectionHeaderView() + 24);
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    if (*(v6 + 32) == 1)
    {
      return *v6;
    }

    else
    {

      sub_21700ED94();
      v11 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v8, v7, v10, v9, 0);
      (*(v2 + 8))(v4, v1);
      return v12;
    }
  }

  return result;
}

uint64_t sub_216A31DC0()
{
  result = sub_217009D44();
  qword_27CAC01B8 = result;
  return result;
}

uint64_t sub_216A31DE0()
{
  result = sub_21700AD34();
  qword_27CAC01C0 = result;
  return result;
}

uint64_t sub_216A31E00()
{
  result = sub_217009E14();
  qword_27CAC01C8 = result;
  return result;
}

uint64_t sub_216A31E20()
{
  result = sub_217009D94();
  qword_27CAC01D0 = v1;
  return result;
}

uint64_t sub_216A31E40()
{
  result = sub_217009D34();
  qword_27CAC01D8 = result;
  return result;
}

uint64_t sub_216A31E60()
{
  result = sub_217009D94();
  qword_27CAC01E0 = v1;
  return result;
}

uint64_t sub_216A31E80()
{
  result = sub_21700AD14();
  qword_27CAC01E8 = result;
  return result;
}

uint64_t sub_216A31EA0()
{
  result = sub_217009D44();
  qword_27CAC01F0 = result;
  return result;
}

uint64_t sub_216A31EC0()
{
  result = sub_21700AD34();
  qword_27CAC01F8 = result;
  return result;
}

uint64_t sub_216A31EE0()
{
  sub_217009E14();
  sub_217009D94();
  v0 = sub_217009E34();

  qword_280E2C2B8 = v0;
  return result;
}

uint64_t sub_216A31F24()
{
  v0 = sub_21700ADF4();
  __swift_allocate_value_buffer(v0, qword_280E2C290);
  v1 = __swift_project_value_buffer(v0, qword_280E2C290);
  v2 = *MEMORY[0x277CE1050];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_216A31FAC()
{
  result = sub_21700ADB4();
  qword_27CAC0200 = result;
  return result;
}

uint64_t sub_216A31FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0210) - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (&__src[-1] - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0218);
  v8 = *(v7 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &__src[-1] - v10;
  sub_216683A80(v2, v6, &qword_27CAB6DB0);
  v12 = v3[13];
  v13 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v6 + v12, 1, 1, v13);
  sub_216A327EC(v2, __src);
  v14 = swift_allocObject();
  memcpy((v14 + 16), __src, 0x48uLL);
  v15 = v3[14];
  *(v6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v16 = v6 + v3[15];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  v6[5] = sub_216A32824;
  v6[6] = v14;
  v6[7] = 0;
  v6[8] = 0;
  sub_216E316F0();
  sub_216699778(v6, &qword_27CAC0210);
  sub_216683A80(v2, __src, &qword_27CAB6DB0);
  LOBYTE(v16) = __src[3] == 0;
  sub_216699778(__src, &qword_27CAB6DB0);
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = v22;
  (*(v8 + 32))(v22, v11, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0220);
  v21 = (v19 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_2167D2420;
  v21[2] = v18;
  return result;
}

uint64_t sub_216A322B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216A3230C(a1, a2);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0228);
  v5 = a2 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_216A3230C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700A124();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217009254();
  MEMORY[0x28223BE20](v6 - 8);
  sub_216683A80(a1, &v55, &qword_27CAB6DB0);
  v7 = v58;
  sub_216699778(&v55, &qword_27CAB6DB0);
  if (v7)
  {
    sub_217009244();
    sub_217009234();
    sub_217009224();
    sub_217009234();
    if (qword_27CAB5C20 != -1)
    {
      swift_once();
    }

    sub_217009214();
    sub_217009234();
    sub_217009274();
  }

  else
  {
    sub_217009264();
  }

  v54 = a2;
  v8 = sub_21700A154();
  v10 = v9;
  v12 = v11;
  if (qword_280E2C2B0 != -1)
  {
    swift_once();
  }

  v13 = sub_21700A094();
  v15 = v14;
  v17 = v16;
  sub_21678817C(v8, v10, v12 & 1);

  sub_21700AD34();
  v47 = sub_21700A034();
  v48 = v18;
  v20 = v19;
  v46 = v21;

  sub_21678817C(v13, v15, v17 & 1);

  v55 = 9273570;
  v56 = 0xA300000000000000;
  sub_2167B2E14();
  v22 = sub_21700A174();
  v24 = v23;
  v26 = v25;
  v27 = sub_21700A064();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v24;
  v35 = v47;
  sub_21678817C(v22, v34, v26 & 1);
  v36 = v48;

  v55 = v27;
  v56 = v29;
  v37 = v31 & 1;
  v57 = v31 & 1;
  v49 = v33;
  v58 = v33;
  v50 = v20;
  v38 = v51;
  sub_21700A114();
  v39 = v54;
  sub_21700A334();
  (*(v52 + 8))(v38, v53);
  if (qword_280E2C288 != -1)
  {
    swift_once();
  }

  v40 = sub_21700ADF4();
  v41 = __swift_project_value_buffer(v40, qword_280E2C290);
  KeyPath = swift_getKeyPath();
  v43 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0230) + 36));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820);
  (*(*(v40 - 8) + 16))(v43 + *(v44 + 28), v41, v40);
  sub_21678817C(v27, v29, v37);

  sub_21678817C(v35, v36, v50 & 1);

  *v43 = KeyPath;
  return result;
}