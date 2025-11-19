uint64_t sub_24FE49838()
{
  v0 = sub_24FE4D9F4();
  __swift_allocate_value_buffer(v0, qword_27F3A4368);
  __swift_project_value_buffer(v0, qword_27F3A4368);
  return sub_24FE4D9E4();
}

uint64_t sub_24FE498B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x6B63656843657270;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x726F727265;
    }

    else
    {
      v5 = 0x73734165736F6C63;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE00746E61747369;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x696C616974696E69;
    }

    else
    {
      v5 = 0x6B63656843657270;
    }

    if (v4)
    {
      v6 = 0xEB0000000064657ALL;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F727265;
  if (a2 != 2)
  {
    v8 = 0x73734165736F6C63;
    v7 = 0xEE00746E61747369;
  }

  if (a2)
  {
    v3 = 0x696C616974696E69;
    v2 = 0xEB0000000064657ALL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24FE4DA94();
  }

  return v11 & 1;
}

uint64_t sub_24FE49A18()
{
  v1 = *v0;
  sub_24FE4DAA4();
  sub_24FE4DA24();

  return sub_24FE4DAB4();
}

uint64_t sub_24FE49AF0()
{
  *v0;
  *v0;
  *v0;
  sub_24FE4DA24();
}

uint64_t sub_24FE49BB4()
{
  v1 = *v0;
  sub_24FE4DAA4();
  sub_24FE4DA24();

  return sub_24FE4DAB4();
}

uint64_t sub_24FE49C88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24FE4D684();
  *a2 = result;
  return result;
}

void sub_24FE49CB8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x6B63656843657270;
  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (*v1 != 2)
  {
    v5 = 0x73734165736F6C63;
    v4 = 0xEE00746E61747369;
  }

  if (*v1)
  {
    v3 = 0x696C616974696E69;
    v2 = 0xEB0000000064657ALL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t GenerativeAssistantEnablementFlow.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source;
  v5 = sub_24FE4D9C4();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest) = 2;
  *(v3 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) = 0;
  v6 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  *(v3 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue) = 1;
  v7 = *MEMORY[0x277D5BC38];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v8 - 8) + 104))(v3 + v6, v7, v8);
  return v3;
}

uint64_t GenerativeAssistantEnablementFlow.init()()
{
  v1 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source;
  v2 = sub_24FE4D9C4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest) = 2;
  *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) = 0;
  v3 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue) = 1;
  v4 = *MEMORY[0x277D5BC38];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  return v0;
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

uint64_t GenerativeAssistantEnablementFlow.__allocating_init(source:isExplicitRequest:)(uint64_t a1, int a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  GenerativeAssistantEnablementFlow.init(source:isExplicitRequest:)(a1, a2);
  return v7;
}

uint64_t GenerativeAssistantEnablementFlow.init(source:isExplicitRequest:)(uint64_t a1, int a2)
{
  v17 = a2;
  v16 = a1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F48, &qword_24FE4E0B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source;
  v7 = sub_24FE4D9C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v2 + v6, 1, 1, v7);
  v10 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest;
  *(v2 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest) = 2;
  *(v2 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) = 0;
  v11 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  *(v2 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue) = 1;
  v12 = *MEMORY[0x277D5BC38];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v13 - 8) + 104))(v2 + v11, v12, v13);
  (*(v8 + 32))(v5, v16, v7);
  v9(v5, 0, 1, v7);
  swift_beginAccess();
  sub_24FE4A1BC(v5, v2 + v6);
  swift_endAccess();
  *(v2 + v10) = v17;
  return v2;
}

uint64_t sub_24FE4A1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F48, &qword_24FE4E0B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE4A22C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24FE4A2C4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_24FE4A3E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24FE4A478(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24FE4A578()
{
  if (qword_27F3A4360 != -1)
  {
    swift_once();
  }

  v0 = sub_24FE4D9F4();
  __swift_project_value_buffer(v0, qword_27F3A4368);

  v1 = sub_24FE4D9D4();
  v2 = sub_24FE4DA44();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315394;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v5 = sub_24FE4DA14();
    v7 = sub_24FE4C884(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24FE4C884(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v9);
    _os_log_impl(&dword_24FE48000, v1, v2, "%s - %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v4, -1, -1);
    MEMORY[0x253058540](v3, -1, -1);
  }

  return 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24FE4A75C(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  v2[28] = v3;
  v4 = *(v3 - 8);
  v2[29] = v4;
  v5 = *(v4 + 64) + 15;
  v2[30] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F48, &qword_24FE4E0B8) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v7 = sub_24FE4D9C4();
  v2[32] = v7;
  v8 = *(v7 - 8);
  v2[33] = v8;
  v9 = *(v8 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v10 = sub_24FE4D974();
  v2[36] = v10;
  v11 = *(v10 - 8);
  v2[37] = v11;
  v12 = *(v11 + 64) + 15;
  v2[38] = swift_task_alloc();
  v13 = sub_24FE4D864();
  v2[39] = v13;
  v14 = *(v13 - 8);
  v2[40] = v14;
  v15 = *(v14 + 64) + 15;
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FE4A980, 0, 0);
}

uint64_t sub_24FE4A980()
{
  v101 = v0;
  if (qword_27F3A4360 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_24FE4D9F4();
  v0[42] = __swift_project_value_buffer(v2, qword_27F3A4368);

  v3 = sub_24FE4D9D4();
  v4 = sub_24FE4DA44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v100[0] = v7;
    *v6 = 136315650;
    v0[25] = v5;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v8 = sub_24FE4DA14();
    v10 = sub_24FE4C884(v8, v9, v100);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, v100);
    *(v6 + 22) = 2080;
    if (*(v5 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) > 1u)
    {
      if (*(v5 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) == 2)
      {
        v11 = 0xE500000000000000;
        v12 = 0x726F727265;
      }

      else
      {
        v11 = 0xEE00746E61747369;
        v12 = 0x73734165736F6C63;
      }
    }

    else if (*(v5 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState))
    {
      v11 = 0xEB0000000064657ALL;
      v12 = 0x696C616974696E69;
    }

    else
    {
      v11 = 0xE900000000000073;
      v12 = 0x6B63656843657270;
    }

    v13 = sub_24FE4C884(v12, v11, v100);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_24FE48000, v3, v4, "%s - %s executing flow with state %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v7, -1, -1);
    MEMORY[0x253058540](v6, -1, -1);
  }

  v14 = *(v0[27] + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v32 = v0[26];
      sub_24FE4D954();
LABEL_27:
      v68 = v0[41];
      v69 = v0[38];
      v71 = v0[34];
      v70 = v0[35];
      v73 = v0[30];
      v72 = v0[31];

      v74 = v0[1];

      return v74();
    }

    v55 = v0[27];

    v56 = sub_24FE4D9D4();
    v57 = sub_24FE4DA44();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v0[27];
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v100[0] = v60;
      *v59 = 136315394;
      v0[19] = v58;
      type metadata accessor for GenerativeAssistantEnablementFlow(0);

      v61 = sub_24FE4DA14();
      v63 = sub_24FE4C884(v61, v62, v100);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, v100);
      _os_log_impl(&dword_24FE48000, v56, v57, "%s - %s cancelled auth, dismissing assistant", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253058540](v60, -1, -1);
      MEMORY[0x253058540](v59, -1, -1);
    }

    v64 = v0[26];
    sub_24FE4D994();
    v65 = sub_24FE4D894();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v0[18] = sub_24FE4D884();
    sub_24FE4D944();
LABEL_26:

    goto LABEL_27;
  }

  if (!*(v0[27] + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState))
  {
    v16 = v0[40];
    v15 = v0[41];
    v17 = v0[38];
    v18 = v0[39];
    v19 = v0[37];
    v98 = v0[36];
    v99 = v0[26];
    v20 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    sub_24FE4D854();
    sub_24FE4D844();
    (*(v16 + 8))(v15, v18);
    v21 = sub_24FE4DA04();

    [v20 setAceId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F60, &qword_24FE4E0D8);
    v22 = *(sub_24FE4D8D4() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_24FE4E090;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F68, qword_24FE4E0E0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24FE4E0A0;
    *(v25 + 32) = v20;
    v26 = v20;
    sub_24FE4D964();
    v27 = type metadata accessor for CloseOnCancelStrategy(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    v30 = swift_allocObject();
    (*(v19 + 32))(v30 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow21CloseOnCancelStrategy_authenticationPolicy, v17, v98);
    *(v30 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow21CloseOnCancelStrategy_cancellationCommands) = v25;
    v0[10] = v27;
    v0[11] = sub_24FE4D024(&qword_27F3A3F70, type metadata accessor for CloseOnCancelStrategy);
    v0[7] = v30;
    sub_24FE4D8C4();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v31 = sub_24FE4D874();

    v0[24] = v31;
    sub_24FE4D8B4();

    sub_24FE4D934();

    goto LABEL_26;
  }

  v33 = v0[27];

  v34 = sub_24FE4D9D4();
  v35 = sub_24FE4DA44();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v0[27];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v100[0] = v38;
    *v37 = 136315394;
    v0[23] = v36;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v39 = sub_24FE4DA14();
    v41 = sub_24FE4C884(v39, v40, v100);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, v100);
    _os_log_impl(&dword_24FE48000, v34, v35, "%s - %s starting SAUIStartGenAIEnablementFlow", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v38, -1, -1);
    MEMORY[0x253058540](v37, -1, -1);
  }

  v43 = v0[40];
  v42 = v0[41];
  v44 = v0[39];
  v45 = v0[27];
  v46 = [objc_allocWithZone(MEMORY[0x277D47B30]) init];
  v0[43] = v46;
  v47 = v46;
  sub_24FE4D854();
  sub_24FE4D844();
  (*(v43 + 8))(v42, v44);
  v48 = sub_24FE4DA04();

  [v47 setAceId_];

  v49 = *(v45 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest);
  if (v49 != 2)
  {
    [v47 setExplicitRequest_];
  }

  v50 = v0[32];
  v51 = v0[33];
  v52 = v0[31];
  v53 = v0[27];
  v54 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source;
  swift_beginAccess();
  sub_24FE4CE4C(v53 + v54, v52);
  if ((*(v51 + 48))(v52, 1, v50) == 1)
  {
    sub_24FE4CF4C(v0[31], &qword_27F3A3F48, &qword_24FE4E0B8);
  }

  else
  {
    v77 = v0[34];
    v76 = v0[35];
    v78 = v0[32];
    v79 = v0[33];
    (*(v79 + 32))(v76, v0[31], v78);
    (*(v79 + 16))(v77, v76, v78);
    v80 = (*(v79 + 88))(v77, v78);
    if (v80 == *MEMORY[0x277D0D7C8])
    {
      v81 = v0[35];
      v82 = v0[32];
      v83 = v0[33];
      v84 = sub_24FE4DA04();
      [v47 setSource_];

      (*(v83 + 8))(v81, v82);
    }

    else
    {
      v85 = (v0[33] + 8);
      v86 = v0[35];
      if (v80 == *MEMORY[0x277D0D7B8])
      {
        v87 = v0[32];
        v88 = sub_24FE4DA04();
        [v47 setSource_];

        (*v85)(v86, v87);
      }

      else
      {
        v89 = v0[34];
        v90 = v0[32];
        v91 = sub_24FE4DA04();
        [v47 setSource_];

        v92 = *v85;
        (*v85)(v86, v90);
        v92(v89, v90);
      }
    }
  }

  sub_24FE4D914();
  v93 = v0[5];
  v94 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v93);
  v95 = *(MEMORY[0x277D5BFB8] + 4);
  v96 = swift_task_alloc();
  v0[44] = v96;
  v97 = sub_24FE4CF00();
  *v96 = v0;
  v96[1] = sub_24FE4B570;

  return MEMORY[0x2821BB6A0](v47, v93, v97, v94);
}

uint64_t sub_24FE4B570(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v7 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v5 = sub_24FE4BA54;
  }

  else
  {
    v5 = sub_24FE4B684;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24FE4B684()
{
  v39 = v0;
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[27];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v1;
  v5 = sub_24FE4D9D4();
  v6 = sub_24FE4DA44();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[45];
    v37 = v0[43];
    v8 = v0[27];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v9 = 136315650;
    v0[22] = v8;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v12 = sub_24FE4DA14();
    v14 = sub_24FE4C884(v12, v13, &v38);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, &v38);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v7;
    *v10 = v7;
    v15 = v7;
    _os_log_impl(&dword_24FE48000, v5, v6, "%s - %s completed SAUIStartGenAIEnablementFlow %@", v9, 0x20u);
    sub_24FE4CF4C(v10, &qword_27F3A3F58, &qword_24FE4E0D0);
    MEMORY[0x253058540](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x253058540](v11, -1, -1);
    MEMORY[0x253058540](v9, -1, -1);
  }

  else
  {
    v16 = v0[45];
    v17 = v0[43];
  }

  v18 = v0[42];
  v19 = v0[27];

  v20 = sub_24FE4D9D4();
  v21 = sub_24FE4DA44();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[27];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = v24;
    *v23 = 136315394;
    v0[20] = v22;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v25 = sub_24FE4DA14();
    v27 = sub_24FE4C884(v25, v26, &v38);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, &v38);
    _os_log_impl(&dword_24FE48000, v20, v21, "%s - %s returning complete", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v24, -1, -1);
    MEMORY[0x253058540](v23, -1, -1);
  }

  v28 = v0[26];
  sub_24FE4D954();
  v29 = v0[41];
  v30 = v0[38];
  v32 = v0[34];
  v31 = v0[35];
  v34 = v0[30];
  v33 = v0[31];

  v35 = v0[1];

  return v35();
}

uint64_t sub_24FE4BA54()
{
  v38 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 216);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v3 = sub_24FE4D9D4();
  v4 = sub_24FE4DA44();

  if (os_log_type_enabled(v3, v4))
  {
    v36 = *(v0 + 368);
    v5 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315394;
    *(v0 + 168) = v5;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v8 = sub_24FE4DA14();
    v10 = sub_24FE4C884(v8, v9, &v37);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, &v37);
    _os_log_impl(&dword_24FE48000, v3, v4, "%s - %s setting exit value to false", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v7, -1, -1);
    MEMORY[0x253058540](v6, -1, -1);
    v11 = v36;
  }

  else
  {
    v11 = *(v0 + 368);
  }

  MEMORY[0x253058480](v11);

  v13 = *(v0 + 232);
  v12 = *(v0 + 240);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  *v12 = 0;
  (*(v13 + 104))(v12, *MEMORY[0x277D5BC38], v14);
  v16 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  (*(v13 + 40))(v15 + v16, v12, v14);
  swift_endAccess();
  v17 = *(v0 + 336);
  v18 = *(v0 + 216);

  v19 = sub_24FE4D9D4();
  v20 = sub_24FE4DA44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 216);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136315394;
    *(v0 + 160) = v21;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v24 = sub_24FE4DA14();
    v26 = sub_24FE4C884(v24, v25, &v37);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, &v37);
    _os_log_impl(&dword_24FE48000, v19, v20, "%s - %s returning complete", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v23, -1, -1);
    MEMORY[0x253058540](v22, -1, -1);
  }

  v27 = *(v0 + 208);
  sub_24FE4D954();
  v28 = *(v0 + 328);
  v29 = *(v0 + 304);
  v31 = *(v0 + 272);
  v30 = *(v0 + 280);
  v33 = *(v0 + 240);
  v32 = *(v0 + 248);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_24FE4BE20()
{
  type metadata accessor for GenerativeAssistantEnablementFlow(0);
  sub_24FE4D024(&unk_27F3A3F78, type metadata accessor for GenerativeAssistantEnablementFlow);
  return sub_24FE4D8E4();
}

uint64_t sub_24FE4BEB0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24FE4D864();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FE4BF70, 0, 0);
}

uint64_t sub_24FE4BF70()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_24FE4D854();
  sub_24FE4D844();
  (*(v2 + 8))(v1, v4);
  v6 = sub_24FE4DA04();

  [v5 setAceId_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F68, qword_24FE4E0E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24FE4E0A0;
  *(v7 + 32) = v5;
  v8 = sub_24FE4D9B4();
  v9 = MEMORY[0x277D5C1D8];
  v3[3] = v8;
  v3[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_24FE4D9A4();

  v10 = v0[1];

  return v10();
}

uint64_t GenerativeAssistantEnablementFlow.deinit()
{
  sub_24FE4CF4C(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source, &qword_27F3A3F48, &qword_24FE4E0B8);
  v1 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GenerativeAssistantEnablementFlow.__deallocating_deinit()
{
  sub_24FE4CF4C(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source, &qword_27F3A3F48, &qword_24FE4E0B8);
  v1 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_24FE4C234()
{
  v1 = *v0;
  sub_24FE4A578();
  return 1;
}

uint64_t sub_24FE4C25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24FE4C30C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_24FE4C30C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24FE4C408()
{
  v2 = *v0;
  type metadata accessor for GenerativeAssistantEnablementFlow(0);
  return sub_24FE4D8E4();
}

uint64_t sub_24FE4C468(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24FE4C504;

  return sub_24FE4A75C(a1);
}

uint64_t sub_24FE4C504()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24FE4C5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_24FE4C694()
{
  v1 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow21CloseOnCancelStrategy_authenticationPolicy;
  v2 = sub_24FE4D974();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow21CloseOnCancelStrategy_cancellationCommands);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24FE4C740@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow21CloseOnCancelStrategy_authenticationPolicy;
  v5 = sub_24FE4D974();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24FE4C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B3F8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24FE4C504;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t sub_24FE4C884(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24FE4C950(v11, 0, 0, 1, a1, a2);
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
    sub_24FE4D780(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_24FE4C950(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24FE4CA5C(a5, a6);
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
    result = sub_24FE4DA74();
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

uint64_t sub_24FE4CA5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24FE4CAA8(a1, a2);
  sub_24FE4CBD8(&unk_2862816D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24FE4CAA8(uint64_t a1, unint64_t a2)
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

  v6 = sub_24FE4CCC4(v5, 0);
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

  result = sub_24FE4DA74();
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
        v10 = sub_24FE4DA34();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24FE4CCC4(v10, 0);
        result = sub_24FE4DA64();
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

uint64_t sub_24FE4CBD8(uint64_t result)
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

  result = sub_24FE4CD38(result, v12, 1, v3);
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

void *sub_24FE4CCC4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3FF8, &qword_24FE4E2D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24FE4CD38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3FF8, &qword_24FE4E2D0);
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

uint64_t sub_24FE4CE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F48, &qword_24FE4E0B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24FE4CF00()
{
  result = qword_27F3A3F50;
  if (!qword_27F3A3F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A3F50);
  }

  return result;
}

uint64_t sub_24FE4CF4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24FE4CFCC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *sub_24FE4D004(_BYTE *result)
{
  if (*result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  *(v1 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) = v2;
  return result;
}

uint64_t sub_24FE4D024(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24FE4D074()
{
  sub_24FE4D36C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24FE4D3C4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of GenerativeAssistantEnablementFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24FE4C504;

  return v8(a1);
}

void sub_24FE4D36C()
{
  if (!qword_27F3A3F88)
  {
    sub_24FE4D9C4();
    v0 = sub_24FE4DA54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A3F88);
    }
  }
}

void sub_24FE4D3C4()
{
  if (!qword_27F3A3F90)
  {
    v0 = sub_24FE4D924();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A3F90);
    }
  }
}

uint64_t sub_24FE4D41C()
{
  result = sub_24FE4D974();
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

uint64_t getEnumTagSinglePayload for FlowState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24FE4D630()
{
  result = qword_27F3A44B0[0];
  if (!qword_27F3A44B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F3A44B0);
  }

  return result;
}

uint64_t sub_24FE4D684()
{
  v0 = sub_24FE4DA84();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
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

uint64_t sub_24FE4D780(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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