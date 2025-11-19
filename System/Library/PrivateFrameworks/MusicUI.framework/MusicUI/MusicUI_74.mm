uint64_t sub_216E3F46C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 360);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216E3F4CC(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_216E3F4EC, 0, 0);
}

uint64_t sub_216E3F4EC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[25];
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_216E4062C;
  v7 = swift_continuation_init();
  OUTLINED_FUNCTION_143();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[22] = sub_216E404D8;
  v1[23] = v8;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_216E4064C;
  v1[21] = &block_descriptor_34_0;
  v9 = _Block_copy(v5);

  [v6 performRequestWithResponseHandler_];
  _Block_release(v9);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_216E3F62C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2166A64DC(a2);
  }

  return result;
}

void sub_216E3F68C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_216E3F718(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    v3 = qword_280E30FD0;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      OUTLINED_FUNCTION_0_238();
      swift_once();
    }

    v4 = sub_217007CA4();
    __swift_project_value_buffer(v4, qword_280E30FD8);
    v5 = sub_217007C84();
    sub_21700EDA4();
    v6 = OUTLINED_FUNCTION_22_6();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_1_157();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_2_6(&dword_216679000, v8, v9, "Stop observing subscription status.");
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    [*(v2 + 24) endObservingSubscriptionStatusWithToken_];
    swift_unknownObjectRelease();
    *(v2 + 40) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_216E3F814(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  return MEMORY[0x2822009F8](sub_216E3F838, 0, 0);
}

uint64_t sub_216E3F838()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v7 = v0 + 25;
  v6 = v0[25];
  v5 = v7[1];
  v1[2] = v2;
  v1[7] = v3;
  v1[3] = sub_216E3F980;
  v8 = swift_continuation_init();
  OUTLINED_FUNCTION_143();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v1[22] = sub_216E40404;
  v1[23] = v9;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_216E4064C;
  v1[21] = &block_descriptor_41;
  v10 = _Block_copy(v4);

  [v5 performSubscriptionStatusRequest:v6 withCompletionHandler:v10];
  _Block_release(v10);
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x282200938](v11);
}

uint64_t sub_216E3F980()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 192);
    v6 = *(v1 + 80);
    v7 = *(v1 + 96);
    v8 = *(v1 + 128);
    v5[2] = *(v1 + 112);
    v5[3] = v8;
    *v5 = v6;
    v5[1] = v7;
  }

  v9 = *(v3 + 8);

  return v9();
}

id sub_216E3FA94()
{
  if (!sub_217005964())
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_7;
  }

  *&v11 = 0xD00000000000002DLL;
  *(&v11 + 1) = 0x800000021708EE90;
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v10);
  if (!*(&v12 + 1))
  {
LABEL_7:
    sub_21669987C(&v11, &unk_27CABF7A0);
    v0 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  if (swift_dynamicCast())
  {
    v0 = v10[0];
  }

  else
  {
    v0 = 0;
  }

LABEL_8:
  if (qword_280E30FD0 != -1)
  {
    swift_once();
  }

  v1 = sub_217007CA4();
  __swift_project_value_buffer(v1, qword_280E30FD8);
  sub_21700DF14();
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10[0] = v5;
    *v4 = 136446210;
    *&v11 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD670);
    v6 = sub_21700E594();
    v8 = sub_2166A85FC(v6, v7, v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_216679000, v2, v3, "Received purchase completed notification with status: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x21CEA1440](v5, -1, -1);
    MEMORY[0x21CEA1440](v4, -1, -1);
  }

  else
  {
  }

  return sub_216E3DBAC();
}

uint64_t sub_216E3FDE4()
{

  swift_unknownObjectRelease();

  sub_216E402A8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t sub_216E3FE40()
{
  sub_216E3FDE4();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

void sub_216E3FE74(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
    swift_allocError();
    *v5 = a2;
    v6 = a2;
LABEL_3:

    swift_continuation_throwingResumeWithError();
    return;
  }

  if (!a1)
  {
    sub_216E403B0();
    v10 = swift_allocError();
    *v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
    swift_allocError();
    *v12 = v10;
    goto LABEL_3;
  }

  v13 = a1;
  sub_216C6E934([v13 lightweightSubscriptionStatus], v14);
  v7 = *(*(a3 + 64) + 40);
  v8 = v14[1];
  *v7 = v14[0];
  v7[1] = v8;
  v9 = v14[3];
  v7[2] = v14[2];
  v7[3] = v9;
  swift_continuation_throwingResume();
}

void sub_216E3FFE0(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
    swift_allocError();
    *v5 = a2;
    v6 = a2;
LABEL_3:

    swift_continuation_throwingResumeWithError();
    return;
  }

  if (!a1)
  {
    sub_216E403B0();
    v12 = swift_allocError();
    *v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
    swift_allocError();
    *v14 = v12;
    goto LABEL_3;
  }

  v16 = a1;
  v7 = [v16 subscriptionStatus];
  if (v7)
  {
    v8 = v7;
    sub_2166A5614(v8, v17);
    v9 = *(*(a3 + 64) + 40);
    v10 = v17[1];
    *v9 = v17[0];
    v9[1] = v10;
    v11 = v17[3];
    v9[2] = v17[2];
    v9[3] = v11;
    swift_continuation_throwingResume();
  }

  else
  {
    v15 = *(*(a3 + 64) + 40);
    v15[2] = 0u;
    v15[3] = 0u;
    *v15 = 0u;
    v15[1] = 0u;
    swift_continuation_throwingResume();
  }
}

uint64_t sub_216E4018C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_216E4040C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21689D330;
  v9[3] = &block_descriptor_17;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBlock_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_216E402A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_216E4030C()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_34_0(v4);

  return sub_216E3DE24(v6, v7, v2, v3);
}

unint64_t sub_216E403B0()
{
  result = qword_27CACABB0;
  if (!qword_27CACABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACABB0);
  }

  return result;
}

uint64_t sub_216E40414()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_34_0(v6);

  return sub_216E3EEF8(v8, v9, v2, v3, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusCoordinator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216E405D0()
{
  result = qword_27CACABC0;
  if (!qword_27CACABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACABC0);
  }

  return result;
}

uint64_t sub_216E4067C@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 56);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6AB8);
  return sub_216E406CC(v1, a1 + *(v3 + 44));
}

uint64_t sub_216E406CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  *&v44 = sub_21700D864();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700D8E4();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v40 - v8;
  MEMORY[0x28223BE20](v9);
  v48 = &v40 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6AC0);
  v11 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6AC8);
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = *(a1 + 24);
  *&v54 = *(a1 + 16);
  *(&v54 + 1) = v17;
  sub_2167B2E14();
  sub_21700DF14();
  v18 = MEMORY[0x277D837D0];
  v19 = sub_21700A174();
  v21 = v20;
  v23 = v22;
  sub_217009F94();
  sub_21678817C(v19, v21, v23 & 1);
  v24 = v16;
  v25 = v6;

  sub_216E40C10();
  v52 = a1;
  sub_217006434();

  (*(v11 + 8))(v13, v41);
  v26 = v43;
  v27 = v42;
  v28 = v44;
  (*(v43 + 104))(v42, *MEMORY[0x277D22050], v44);
  v54 = 0u;
  v55 = 0u;
  memset(v53, 0, sizeof(v53));
  sub_21700D874();
  sub_216697CFC(v53);
  sub_216697CFC(&v54);
  (*(v26 + 8))(v27, v28);
  v29 = *(a1 + 32);
  v30 = xmmword_217056420;
  v44 = xmmword_217056420;
  if ((v29 & 1) == 0)
  {
    v18 = 0;
    *&v55 = 0;
    v30 = 0uLL;
  }

  *(&v55 + 1) = v18;
  v54 = v30;
  v31 = v47;
  sub_21700D8C4();
  v32 = *(v49 + 8);
  v33 = v25;
  v34 = v50;
  v32(v33, v50);
  sub_216697CFC(&v54);
  if (*(a1 + 33))
  {
    v35 = MEMORY[0x277D837D0];
    v36 = v44;
  }

  else
  {
    v35 = 0;
    *&v55 = 0;
    v36 = 0uLL;
  }

  *(&v55 + 1) = v35;
  v54 = v36;
  v37 = v48;
  sub_21700D8C4();
  v32(v31, v34);
  sub_216697CFC(&v54);
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  sub_21700A204();
  v32(v37, v34);
  return (*(v45 + 8))(v24, v38);
}

uint64_t sub_216E40C10()
{
  v1 = sub_217006524();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  if (*v0)
  {
    v8 = *(v0 + 32);

    v9 = sub_216856B94(v8);

    if (*(v0 + 33))
    {
      sub_217006514();
      sub_2170064E4();
      (*(v2 + 8))(v4, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693948C(0, *(v9 + 16) + 1, 1, v9);
        v9 = v13;
      }

      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21693948C(v10 > 1, v11 + 1, 1, v9);
        v9 = v14;
      }

      *(v9 + 16) = v11 + 1;
      (*(v2 + 32))(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v7, v1);
    }

    return v9;
  }

  else
  {
    type metadata accessor for ExplicitBadgingPresenter();
    sub_216A959B0();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216E40E1C()
{
  v0 = sub_21700A094();
  v2 = v1;
  v4 = v3;
  sub_217009834();
  v5 = sub_21700A044();
  sub_21678817C(v0, v2, v4 & 1);

  return v5;
}

uint64_t sub_216E40EF0()
{
  v0 = sub_217008754();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217008744();
  v4 = sub_21700A044();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_216E41068(_BYTE *a1, uint64_t a2)
{
  switch(*a1)
  {
    case 0x12:
      return a2;
    default:

      a2 = 0;
      break;
  }

  return a2;
}

uint64_t sub_216E410FC()
{
  type metadata accessor for MappedItemCollection();
  sub_21700F164();
  result = sub_217007E14();
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

uint64_t sub_216E411C8()
{
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

char *sub_216E412C8()
{
  v1 = v0;
  OUTLINED_FUNCTION_16_0();
  if (*&v0[*(v2 + 128)])
  {

    sub_217007D34();

    v2 = *v0;
  }

  v3 = *(v2 + 120);
  type metadata accessor for MappedItemCollection();
  sub_21700F164();
  sub_217007E14();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(&v1[v3]);

  return v1;
}

uint64_t sub_216E413E0()
{
  sub_216E412C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216E41464()
{
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216E4157C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CB22AC8);
  __swift_project_value_buffer(v0, qword_27CB22AC8);
  return sub_217007C94();
}

uint64_t sub_216E41600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2170069D4();
  OUTLINED_FUNCTION_1();
  v51 = v5;
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  sub_2170069C4();
  v14 = sub_217006784();
  v16 = v15;
  v17 = *(v9 + 8);
  v18 = OUTLINED_FUNCTION_39();
  v17(v18);
  v53 = v14;
  v54 = v16;
  sub_2166C32C0();
  sub_21700F364();
  sub_216B45CF0();
  sub_2170069C4();
  v19 = sub_216C74700();
  v21 = v20;
  v22 = OUTLINED_FUNCTION_39();
  v17(v22);
  *(a2 + 80) = v19;
  *(a2 + 88) = v21;
  sub_216B45630();
  *(a2 + 96) = v23;
  *(a2 + 104) = v24;
  sub_2170069C4();
  LOBYTE(v19) = sub_216C75FE8();
  v25 = OUTLINED_FUNCTION_39();
  v17(v25);
  *(a2 + 112) = v19 & 1;
  sub_2170069C4();
  v26 = (*(v9 + 88))(v12, v7);
  if (v26 == *MEMORY[0x277D2A400])
  {
LABEL_2:
    v27 = 0;
    goto LABEL_5;
  }

  if (v26 == *MEMORY[0x277D2A418])
  {
    goto LABEL_4;
  }

  if (v26 == *MEMORY[0x277D2A438] || v26 == *MEMORY[0x277D2A3C8])
  {
    goto LABEL_2;
  }

  if (v26 == *MEMORY[0x277D2A428])
  {
    goto LABEL_4;
  }

  if (v26 == *MEMORY[0x277D2A388] || v26 == *MEMORY[0x277D2A408])
  {
    goto LABEL_2;
  }

  if (v26 == *MEMORY[0x277D2A3B0] || v26 == *MEMORY[0x277D2A3B8])
  {
LABEL_22:
    v27 = 2;
    goto LABEL_5;
  }

  if (v26 == *MEMORY[0x277D2A440] || v26 == *MEMORY[0x277D2A450])
  {
    goto LABEL_2;
  }

  if (v26 == *MEMORY[0x277D2A3C0] || v26 == *MEMORY[0x277D2A3D0])
  {
LABEL_4:
    v27 = 1;
    goto LABEL_5;
  }

  if (v26 == *MEMORY[0x277D2A3F8] || v26 == *MEMORY[0x277D2A430])
  {
    goto LABEL_2;
  }

  if (v26 == *MEMORY[0x277D2A458] || v26 == *MEMORY[0x277D2A448])
  {
    goto LABEL_22;
  }

  if (v26 == *MEMORY[0x277D2A420] || v26 == *MEMORY[0x277D2A3D8])
  {
    goto LABEL_2;
  }

  v27 = 2 * (v26 == *MEMORY[0x277D2A3E0]);
LABEL_5:
  (v17)(v12, v7);
  *(a2 + 113) = v27;
  v28 = type metadata accessor for RecentSearchLockup();
  sub_216B45ED4();
  sub_2170069C4();
  sub_216DF87BC();
  v29 = OUTLINED_FUNCTION_39();
  v17(v29);
  v30 = v50;
  sub_2170069E4();
  v32 = v51;
  v31 = v52;
  v33 = (*(v51 + 88))(v30, v52);
  if (v33 == *MEMORY[0x277D2A6A8])
  {
LABEL_24:
    v34 = 1;
    goto LABEL_25;
  }

  if (v33 != *MEMORY[0x277D2A6B0])
  {
    (*(v32 + 8))(v30, v31);
    goto LABEL_24;
  }

  v34 = 0;
LABEL_25:
  *(a2 + 114) = v34;
  v38 = *(v28 + 52);
  v39 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(a2 + v38, 1, 1, v39);
  v40 = *(v28 + 44);
  sub_216B461A0();
  sub_2170069F4();
  OUTLINED_FUNCTION_9_0();
  (*(v41 + 8))(a1);
  v42 = sub_21700D7A4();
  return __swift_storeEnumTagSinglePayload(a2 + v40, 0, 1, v42);
}

uint64_t sub_216E41B20()
{
  OUTLINED_FUNCTION_1_71();
  v6 = (*(v0 + 40) + **(v0 + 40));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_239(v2);

  return v6(v4);
}

uint64_t sub_216E41C68()
{
  OUTLINED_FUNCTION_1_71();
  v6 = (*(v0 + 24) + **(v0 + 24));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_239(v2);

  return v6(v4);
}

int *sub_216E41D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for PageUpdateDescriptor();
  *(a7 + result[9]) = a2;
  *(a7 + result[10]) = a3;
  *(a7 + result[11]) = a4;
  *(a7 + result[12]) = a5;
  return result;
}

uint64_t sub_216E41E50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for MappedPageDescriptor();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_216E41ECC()
{
  v0 = OUTLINED_FUNCTION_10_97();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_107(v1);

  return v4(v3);
}

uint64_t sub_216E41F60()
{
  OUTLINED_FUNCTION_33();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  sub_21700EA34();
  v1[7] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v1[8] = v7;
  v1[9] = v6;

  return MEMORY[0x2822009F8](sub_216E41FFC, v7, v6);
}

uint64_t sub_216E41FFC()
{
  OUTLINED_FUNCTION_33();
  v0[10] = (*(*(v0[5] + 8) + 32))(v0[4]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_216E420B4;

  return sub_21692FB64();
}

uint64_t sub_216E420B4()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  v2[12] = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_216E42220;
  }

  else
  {

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_216E421C4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_216E421C4()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216E42220()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216E422A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v26 = a1;
  v27 = a4;
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  OUTLINED_FUNCTION_16();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  (*(v9 + 16))(v12, a3, v7, v16);
  if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v12, v7);
    v19 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v14 + 8))(v12, AssociatedTypeWitness);
  }

  v21 = *(v5 + 64);
  v22 = swift_checkMetadataState();
  v21(v25, v19, v22, v5);

  swift_getAssociatedConformanceWitness();
  return sub_216E41E50(v18, 1, AssociatedTypeWitness, v27);
}

uint64_t sub_216E42564()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_239(v1);
  OUTLINED_FUNCTION_47_8();

  return sub_216E41F60();
}

uint64_t sub_216E425F0(uint64_t a1)
{
  v3 = _s7SectionVMa(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + *(a1 + 40));
  v9 = (*(*(*(a1 + 24) + 16) + 32))(*(a1 + 16), v5);
  v10 = *(v9 + 16);
  if (v10)
  {
    v21 = v8;
    v22 = a1;
    v23 = v1;
    v24 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v11 = v24;
    v12 = *(v4 + 80);
    v20[1] = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v14 = *(v4 + 72);
    do
    {
      sub_21678389C(v13, v7);
      v15 = *v7;
      v16 = v7[1];
      sub_21700DF14();
      sub_216A4D170(v7);
      v24 = v11;
      v17 = *(v11 + 16);
      if (v17 >= *(v11 + 24) >> 1)
      {
        sub_2166F4258();
        v11 = v24;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v16;
      v13 += v14;
      --v10;
    }

    while (v10);

    v8 = v21;
  }

  else
  {
  }

  sub_21700DF14();
  return v8;
}

uint64_t sub_216E427CC(uint64_t a1, uint64_t a2)
{
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_16();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  isUniquelyReferenced_nonNull_native = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v34 - v11);
  v13 = (*(*(a2 + 16) + 32))(a1, v10);
  v14 = sub_21700E384();
  v38 = *(v13 + 16);
  if (v38)
  {
    v15 = 0;
    v16 = *(v5 + 80);
    v36 = v5;
    v37 = v13 + ((v16 + 32) & ~v16);
    v34 = v13;
    v35 = v12;
    while (v15 < *(v13 + 16))
    {
      sub_21678389C(v37 + *(v5 + 72) * v15, v12);
      v18 = *v12;
      v17 = v12[1];
      sub_21678389C(v12, isUniquelyReferenced_nonNull_native);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v14;
      v19 = sub_2166AF66C(v18, v17);
      if (__OFADD__(*(v14 + 16), (v20 & 1) == 0))
      {
        goto LABEL_15;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160);
      if (sub_21700F554())
      {
        v23 = sub_2166AF66C(v18, v17);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_17;
        }

        v21 = v23;
      }

      v14 = v39;
      if (v22)
      {
        v25 = OUTLINED_FUNCTION_8_105();
        sub_216E42B98(v25, v26);
      }

      else
      {
        *(v39 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v27 = (*(v14 + 48) + 16 * v21);
        *v27 = v18;
        v27[1] = v17;
        v28 = OUTLINED_FUNCTION_8_105();
        sub_216C0B7C8(v28, v29);
        v30 = *(v14 + 16);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_16;
        }

        *(v14 + 16) = v32;
        sub_21700DF14();
      }

      ++v15;
      v12 = v35;
      sub_216A4D170(v35);
      v5 = v36;
      v13 = v34;
      if (v38 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_13:

    return v14;
  }

  return result;
}

uint64_t sub_216E42A78()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_239(v1);
  OUTLINED_FUNCTION_47_8();

  return sub_216E41F60();
}

uint64_t sub_216E42B04()
{
  v0 = OUTLINED_FUNCTION_10_97();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_107(v1);

  return v4(v3);
}

uint64_t sub_216E42B98(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PageUpdateError(_BYTE *result, int a2, int a3)
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

uint64_t sub_216E42CD8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216E42D50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_216E42EBC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_216E430E8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_216E4346C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216E4317C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
    v9 = (((v6 + 7) & 0xFFFFFFF8) + 11) & 0xFFFFFFFB;
    v10 = (a2 - v7 + 0xFFFFFF) >> 24;
    v11 = v9 == 3 ? v10 + 1 : 2;
    v12 = v11 < 0x100 ? 1 : 2;
    v13 = v11 >= 2 ? v12 : 0;
    if (v13)
    {
      if (v13 == 2)
      {
        v14 = *(a1 + v8);
        if (*(a1 + v8))
        {
LABEL_18:
          v15 = (v14 << 24) - 0x1000000;
          if (v9 == 3)
          {
            v18 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = 0;
            v18 = *a1;
          }

          return v7 + (v18 | v15) + 1;
        }
      }

      else
      {
        v14 = *(a1 + v8);
        if (*(a1 + v8))
        {
          goto LABEL_18;
        }
      }
    }
  }

  if (v5 >= 0x7FFFFFFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void sub_216E432BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = ((a3 - v8 + 0xFFFFFF) >> 24) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    if (v14)
    {
      if (v14 != 2)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v7 < 0x7FFFFFFE)
        {
          v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v17 = 0;
            *v17 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v17 = a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        return;
      }

      *&a1[v10] = 0;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 11);
  if (v10 == 3)
  {
    v16 = HIBYTE(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    if (!v14)
    {
      return;
    }
  }

  else
  {
    *a1 = v15;
    if (!v14)
    {
      return;
    }
  }

  if (v14 == 2)
  {
    *&a1[v10] = v16;
  }

  else
  {
    a1[v10] = v16;
  }
}

void sub_216E4346C()
{
  if (!qword_280E2A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACABC8);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A0C0);
    }
  }
}

unint64_t sub_216E434D4()
{
  result = qword_27CACABD0;
  if (!qword_27CACABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACABD0);
  }

  return result;
}

uint64_t sub_216E43568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v31 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v34 = v15;
  v35 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v30 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = type metadata accessor for SectionChangeInstruction(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PaginationSectionResult();
  v23 = *(v29 + 24);
  v32 = a3;
  v24 = (a3 + v23);
  *v24 = 0;
  v24[1] = 0;
  v36 = a1;
  sub_21700CE04();
  v25 = *(v8 + 16);
  v25(v13, a2, v6);
  v26 = v33;
  sub_216974DE4(v19, v13, v22);
  if (!v26)
  {
    sub_216E43910(v22, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948);
    sub_21700CE04();
    v25(v31, a2, v6);
    sub_216C2D824();
    sub_21700D734();
  }

  (*(v8 + 8))(a2, v6);
  return (*(v34 + 8))(v36, v35);
}

uint64_t sub_216E43910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionChangeInstruction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E439C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v64 - v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v80 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v66 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v64 - v21;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v69 = v9;
  v24 = *(v9 + 16);
  v23 = v9 + 16;
  v76 = a2;
  v73 = v7;
  v71 = v24;
  v24(v12, a2, v7);
  v25 = type metadata accessor for TVMovieDescription();
  v26 = v25[5];
  v67 = v12;
  v68 = v26;
  sub_21700D734();
  v75 = a1;
  v27 = v80;
  sub_21700CE04();
  v28 = sub_21700CDB4();
  v30 = v29;
  v33 = *(v27 + 8);
  v32 = v27 + 8;
  v31 = v33;
  v77 = v13;
  v33(v20, v13);
  if (v30)
  {
    v68 = v23;
    v78 = v28;
    v79 = v30;
    v34 = v74;
    sub_21700F364();
    sub_21700CE04();
    sub_21700CDB4();
    v35 = OUTLINED_FUNCTION_1_39();
    v36 = v77;
    v31(v35, v77);
    v37 = (v34 + v25[6]);
    *v37 = v22;
    v37[1] = v20;
    sub_21700CE04();
    sub_21700D2E4();
    v31(v22, v36);
    sub_21700CE04();
    sub_21700CDB4();
    v38 = OUTLINED_FUNCTION_1_39();
    v31(v38, v36);
    v64 = v25;
    v39 = (v34 + v25[9]);
    *v39 = v22;
    v39[1] = v20;
    v40 = v66;
    sub_21700CE04();
    v41 = v70;
    sub_21700CD74();
    v80 = v32;
    v31(v40, v36);
    v42 = sub_21700E2C4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v42);
    v44 = v76;
    v65 = v31;
    if (EnumTagSinglePayload == 1)
    {
      sub_216699820(v70, &qword_27CAB78D0);
      v45 = 0;
    }

    else
    {
      v49 = v70;
      v50 = v72;
      v45 = sub_21700E2A4();
      v72 = v50;
      OUTLINED_FUNCTION_50();
      (*(v51 + 8))(v49, v42);
    }

    v52 = v73;
    v53 = v64;
    *(v34 + v64[8]) = v45;
    v54 = type metadata accessor for ParagraphComponentModel();
    v55 = v34;
    OUTLINED_FUNCTION_5_131();
    sub_21700CE04();
    v56 = v67;
    v71(v67, v44, v52);
    sub_2166D84F0(&qword_280E37B30, type metadata accessor for ParagraphComponentModel);
    v57 = v55;
    sub_21700D734();
    OUTLINED_FUNCTION_5_131();
    sub_21700CE04();
    sub_21700CDB4();
    v58 = OUTLINED_FUNCTION_1_39();
    v59 = v65;
    v65(v58, v77);
    v60 = (v57 + v53[11]);
    *v60 = v22;
    v60[1] = v54;
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v61 = v56;
    v62 = v76;
    v63 = v73;
    v71(v61, v76, v73);
    sub_2166D84F0(qword_280E40390, type metadata accessor for ContentDescriptor);
    sub_21700D734();
    (*(v69 + 8))(v62, v63);
    return v59(v75, v77);
  }

  else
  {
    sub_21700E2E4();
    sub_2166D84F0(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    *v46 = 25705;
    v46[1] = 0xE200000000000000;
    v46[2] = v25;
    OUTLINED_FUNCTION_50();
    (*(v47 + 104))();
    swift_willThrow();
    (*(v69 + 8))(v76, v73);
    v31(v75, v77);
    return sub_216699820(v74 + v68, &qword_27CAB6D58);
  }
}

uint64_t sub_216E44150(uint64_t a1)
{
  result = sub_2166D84F0(qword_280E3E588, type metadata accessor for TVMovieDescription);
  *(a1 + 8) = result;
  return result;
}

void sub_216E44238()
{
  sub_2166CE38C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, char a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_216E44464()
{
  sub_2166CE38C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

id sub_216E444E0(void *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_13_3();
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    sub_2166F1DCC();
    type metadata accessor for StartSocialOnboardingActionIntent(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2E20);
    v8 = sub_21700E594();
    v14[3] = MEMORY[0x277D837D0];
    v14[0] = v8;
    v14[1] = v9;
    v10 = a1;
    v11 = sub_2166F1E10(v14, a1);
    sub_2166F1F64(v11);
    sub_2168CC268(v3, v1);
    v12 = type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_3_163(v12);
    if (v13)
    {
      sub_2168CC2D8(v1);
    }

    else
    {
      ReferrerInfo.makeValue(in:)(v10);
      sub_2168CC340(v1);
    }

    OUTLINED_FUNCTION_0_240();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_216E4465C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_13_3();
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    sub_2166F1DCC();
    v7 = type metadata accessor for SocialOnboardingNotificationSettingsPageIntent(0);
    v8 = *(v2 + *(v7 + 20));
    v9 = MEMORY[0x277D839B0];
    v18 = MEMORY[0x277D839B0];
    LOBYTE(v17[0]) = v8;
    v10 = a1;
    v11 = sub_2166F1E10(v17, a1);
    sub_2166F1F64(v11);
    v12 = *(v2 + *(v7 + 24));
    v18 = v9;
    LOBYTE(v17[0]) = v12;
    v13 = v10;
    v14 = sub_2166F1E10(v17, a1);
    sub_2166F1F64(v14);
    sub_2168CC268(v2, v1);
    v15 = type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_3_163(v15);
    if (v16)
    {
      sub_2168CC2D8(v1);
    }

    else
    {
      ReferrerInfo.makeValue(in:)(v13);
      sub_2168CC340(v1);
    }

    OUTLINED_FUNCTION_0_240();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216E44820(uint64_t a1)
{
  result = sub_2166CEAA4(&qword_27CACAC08, type metadata accessor for SocialOnboardingNotificationSettingsPageIntent);
  *(a1 + 8) = result;
  return result;
}

id sub_216E44878(void *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_13_3();
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    sub_2166F1DCC();
    v8 = *(v3 + *(type metadata accessor for SocialOnboardingPrivacySettingsPageIntent(0) + 20));
    v13[3] = MEMORY[0x277D839B0];
    LOBYTE(v13[0]) = v8;
    v9 = a1;
    v10 = sub_2166F1E10(v13, a1);
    sub_2166F1F64(v10);
    sub_2168CC268(v3, v1);
    v11 = type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_3_163(v11);
    if (v12)
    {
      sub_2168CC2D8(v1);
    }

    else
    {
      ReferrerInfo.makeValue(in:)(v9);
      sub_2168CC340(v1);
    }

    OUTLINED_FUNCTION_0_240();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216E449E8(uint64_t a1)
{
  result = sub_2166CEAA4(&qword_27CACAC10, type metadata accessor for SocialOnboardingPrivacySettingsPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E44A40(uint64_t a1)
{
  result = sub_2166CEAA4(&qword_27CACAC18, type metadata accessor for StartSocialOnboardingActionIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E44A98(uint64_t a1)
{
  *(a1 + 8) = sub_2166CEAA4(&qword_27CACAC18, type metadata accessor for StartSocialOnboardingActionIntent);
  result = sub_2166CEAA4(&qword_27CACAC20, type metadata accessor for StartSocialOnboardingActionIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216E44B1C(uint64_t a1)
{
  *(a1 + 8) = sub_2166CEAA4(&qword_27CACAC10, type metadata accessor for SocialOnboardingPrivacySettingsPageIntent);
  result = sub_2166CEAA4(&qword_27CACAC28, type metadata accessor for SocialOnboardingPrivacySettingsPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216E44BA0(uint64_t a1)
{
  *(a1 + 8) = sub_2166CEAA4(&qword_27CACAC08, type metadata accessor for SocialOnboardingNotificationSettingsPageIntent);
  result = sub_2166CEAA4(&qword_27CACAC30, type metadata accessor for SocialOnboardingNotificationSettingsPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216E44CA0(uint64_t *a1, uint64_t a2)
{
  v111 = a1;
  sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v115 = v4;
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v114 = v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v110 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_0(&v89 - v8);
  v106 = type metadata accessor for PausePlaybackAction();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v9);
  v105 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v104 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v12);
  v96 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v93 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v15);
  v99 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v98 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  v97 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v95 = &v89 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_77();
  v94 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v112 = &v89 - v26;
  v102 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v101 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v29);
  v30 = sub_217006BC4();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v89 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v113 = v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v89 - v43;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  v45 = a2;
  sub_21700E094();
  v47 = v123;
  v46 = v124;
  __swift_project_boxed_opaque_existential_1(&v122, v123);
  (*(v46 + 112))(v47, v46);
  sub_217006D94();

  sub_217006CF4();

  (*(v32 + 104))(v36, *MEMORY[0x277D2A880], v30);
  v48 = sub_217006BB4();
  v49 = *(v32 + 8);
  v49(v36, v30);
  v49(v39, v30);
  if (v48)
  {
    v90 = v40;
    v91 = v44;
    v50 = v45;
    v51 = v112;
    v52 = *v111;
    v111 = v111[1];
    v53 = v96;
    __swift_storeEnumTagSinglePayload(v112, 1, 1, v96);
    v54 = v95;
    sub_21700D6F4();
    v55 = MEMORY[0x277D837D0];
    v118 = MEMORY[0x277D837D0];
    *&v117 = 0x6573756170;
    *(&v117 + 1) = 0xE500000000000000;
    sub_2166EF9C4(&v117, &v121);
    v56 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v120 = v56;
    sub_2166EF9D4();
    v57 = v120;
    v58 = v94;
    sub_2167DE934(v51, v94);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v53);
    v89 = v50;
    if (EnumTagSinglePayload == 1)
    {
      sub_216846CF0(v58);
    }

    else
    {
      v63 = v52;
      v64 = v93;
      v65 = v92;
      (*(v93 + 32))(v92, v58, v53);
      v66 = sub_217005DE4();
      v118 = v55;
      *&v117 = v66;
      *(&v117 + 1) = v67;
      sub_2166EF9C4(&v117, &v121);
      swift_isUniquelyReferenced_nonNull_native();
      v120 = v57;
      sub_2166EF9D4();
      v57 = v120;
      (*(v64 + 8))(v65, v53);
      v52 = v63;
    }

    v68 = v54;
    v69 = v110;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v70 = sub_21700CF84();
    v71 = __swift_project_value_buffer(v70, qword_280E73DB0);
    v72 = v103;
    MEMORY[0x21CE9DD70](v52, v111, 0x6E6F74747562, 0xE600000000000000, v57, v71);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v73 = v104;
    v74 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_217013DA0;
    v76 = v75 + v74;
    v77 = v105;
    (*(v73 + 16))(v76, v72, v105);
    v78 = v98;
    v79 = v99;
    (*(v98 + 16))(v97, v68, v99);
    v80 = v100;
    sub_21700D244();
    (*(v73 + 8))(v72, v77);
    (*(v78 + 8))(v68, v79);
    sub_216846CF0(v112);
    v81 = v101;
    v82 = v107;
    v83 = v102;
    (*(v101 + 16))(v107, v80, v102);
    v118 = v106;
    v119 = sub_216E457A4(qword_280E3D7E0, type metadata accessor for PausePlaybackAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v117);
    sub_216E457EC(v82, boxed_opaque_existential_1);
    v85 = v109;
    v86 = v108;
    (*(v69 + 104))(v109, *MEMORY[0x277D21E18], v108);
    v40 = v90;
    v44 = v91;
    sub_21700D5E4();

    (*(v69 + 8))(v85, v86);
    sub_216E45850(v82);
    (*(v81 + 8))(v80, v83);
    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
  }

  else
  {
    v60 = v110;
    v61 = v109;
    v62 = v108;
    (*(v110 + 104))(v109, *MEMORY[0x277D21E18], v108);
    sub_21700D5E4();

    (*(v60 + 8))(v61, v62);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v115 + 104))(v114, *MEMORY[0x277D21CA8], v116);
  v87 = sub_21700E1F4();
  (*(v113 + 8))(v44, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  return v87;
}

uint64_t sub_216E457A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216E457EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PausePlaybackAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E45850(uint64_t a1)
{
  v2 = type metadata accessor for PausePlaybackAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216E458D8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = sub_217009124();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAC40) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = (&v38 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAC48);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAC50);
  OUTLINED_FUNCTION_1();
  v38 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAC58);
  OUTLINED_FUNCTION_1();
  v41 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v40 = &v38 - v21;
  sub_216E45D84(v10);
  v22 = sub_217008A34();
  v23 = sub_217009C84();
  v24 = v10 + *(v7 + 44);
  *v24 = v22;
  v24[8] = v23;
  sub_21700B394();
  sub_217008BB4();
  sub_216E46728(v10, v14);
  memcpy(&v14[*(v11 + 36)], __src, 0x70uLL);
  if (v1[1])
  {
    v25 = *v1;
    v26 = v1[1];
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  v45 = v25;
  v46 = v26;
  v27 = sub_216E46798();
  v28 = sub_2167B2E14();
  sub_21700DF14();
  v29 = MEMORY[0x277D837D0];
  sub_21700A5D4();

  sub_216E468E0(v14);
  v30 = v43;
  (*(v3 + 104))(v6, *MEMORY[0x277CDDDC0], v43);
  v45 = v11;
  v46 = v29;
  v47 = v27;
  v48 = v28;
  OUTLINED_FUNCTION_0_4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v40;
  v33 = v39;
  sub_21700A904();
  (*(v3 + 8))(v6, v30);
  (*(v38 + 8))(v18, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16F8);
  v45 = v33;
  v46 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_3_5();
  swift_getOpaqueTypeConformance2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16E8);
  v35 = sub_216E46948();
  v45 = v34;
  v46 = v35;
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  v36 = v42;
  sub_21700AAD4();
  return (*(v41 + 8))(v32, v36);
}

uint64_t sub_216E45D84@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_217005C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v10[-v6];
  v8 = *(v1 + 40);
  if (v8)
  {
    sub_216E46154(*(v1 + 32), v8, &v10[-v6]);
    (*(v4 + 32))(a1, v7, v3);
    type metadata accessor for ScrollableParagraphView.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v11 = *(v1 + 16);
    *a1 = v11;
    type metadata accessor for ScrollableParagraphView.Content(0);
    swift_storeEnumTagMultiPayload();
    return sub_216A2841C(&v11, v10);
  }
}

uint64_t sub_216E45EB0()
{
  v0 = sub_217009684();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC16E8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_217009624();
  type metadata accessor for SystemActionButton(0);
  sub_216E46A54(&qword_27CAC1700, type metadata accessor for SystemActionButton);
  sub_2170081F4();
  v5 = sub_216E46948();
  MEMORY[0x21CE9A570](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_216E4604C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DismissModalPresentationAction();
  a1[3] = v2;
  a1[4] = sub_216E46A54(qword_280E30D30, type metadata accessor for DismissModalPresentationAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v4 = boxed_opaque_existential_1 + *(v2 + 20);
  *v4 = 0;
  v4[8] = 1;
  v5 = type metadata accessor for SystemActionButton(0);
  sub_217007EE4();
  v6 = *(v5 + 28);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + *(v5 + 32);
  result = swift_getKeyPath();
  *v7 = result;
  v7[40] = 0;
  a1[5] = 0;
  a1[6] = 0;
  return result;
}

uint64_t sub_216E46154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a1;
  v18 = a2;
  v4 = sub_217005C64();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217005CC4();
  MEMORY[0x28223BE20](v7 - 8);
  sub_21700DF14();
  sub_217005CB4();
  sub_217005C74();
  swift_getKeyPath();
  swift_getKeyPath();
  if (qword_27CAB5D18 != -1)
  {
    swift_once();
  }

  v22 = qword_27CB229A8;
  v8 = qword_27CB229A8;
  sub_217005BB4();
  sub_216E46A54(&qword_27CACAC78, MEMORY[0x277D74A38]);
  v9 = sub_217005C04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAC80);
  v16[4] = sub_216E469AC();
  sub_217005D54();
  v9(v21, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_216B936F0();
  if (qword_27CAB6118 != -1)
  {
    swift_once();
  }

  v22 = sub_21700F0D4();
  v10 = sub_217005C04();
  v16[2] = a3;
  v11 = v10;
  v16[3] = sub_216E46A00();
  sub_217005D54();
  v11(v21, 0);

  sub_217005C14();
  v16[1] = sub_216E46A54(&qword_27CACAC98, MEMORY[0x277CC8C40]);
  v12 = v20;
  sub_217005C54();
  v19 = *(v19 + 8);
  (v19)(v6, v12);
  v21[0] = v17;
  v21[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88);
  swift_allocObject();
  sub_21700DF14();
  sub_217006564();
  sub_217006554();

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = [objc_opt_self() preferredFontForTextStyle_];
  v13 = sub_217005C04();
  sub_217005D54();
  v13(v21, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = [objc_opt_self() secondaryLabelColor];
  v14 = sub_217005C04();
  sub_217005D54();
  v14(v21, 0);

  sub_217005C54();
  return (v19)(v6, v12);
}

uint64_t sub_216E466BC@<X0>(uint64_t *a1@<X8>)
{
  sub_217005BC4();
  result = sub_217005BB4();
  *a1 = result;
  return result;
}

uint64_t sub_216E46728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAC40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216E46798()
{
  result = qword_27CACAC60;
  if (!qword_27CACAC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAC48);
    sub_216E46824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAC60);
  }

  return result;
}

unint64_t sub_216E46824()
{
  result = qword_27CACAC68;
  if (!qword_27CACAC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAC40);
    sub_216E46A54(&qword_27CACAC70, type metadata accessor for ScrollableParagraphView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAC68);
  }

  return result;
}

uint64_t sub_216E468E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAC48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216E46948()
{
  result = qword_27CAC16F0;
  if (!qword_27CAC16F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC16F0);
  }

  return result;
}

unint64_t sub_216E469AC()
{
  result = qword_27CACAC88;
  if (!qword_27CACAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAC88);
  }

  return result;
}

unint64_t sub_216E46A00()
{
  result = qword_27CACAC90;
  if (!qword_27CACAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAC90);
  }

  return result;
}

uint64_t sub_216E46A54(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_216E46A9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t sub_216E46AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  type metadata accessor for IntentNetworkResponseReceiver.Observer();
  swift_allocObject();
  sub_21700DF14();

  return sub_216E47658(a1, a2, v9, a3, a4);
}

uint64_t sub_216E46B60()
{
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8);
  v2 = sub_21700E244();
  v0[6] = v2;
  v3 = *(v1 + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_pendingRequests;
  swift_beginAccess();
  if (*(*(v1 + v5) + 16))
  {
    *(v0[5] + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_finished) = v2;

    os_unfair_lock_unlock(*(v3 + 16));

    sub_216930BA8();
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_216E46D3C;

    return MEMORY[0x282180360](v6);
  }

  else
  {
    sub_216E47DD0();
    os_unfair_lock_unlock(*(v3 + 16));

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_216E46D3C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_216E46EB4;
  }

  else
  {
    v2 = sub_216E46E50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_216E46E50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216E46EB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216E46F30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v39 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for MusicURLRequest();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 16);
  v16 = *(v15 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v16);
  OUTLINED_FUNCTION_3_164();
  v17 = *(v4 + 32);
  v18 = *(v17 + 16);
  v38 = a2;
  if (v18 && (v19 = sub_2166AF66C(a2, a3), (v20 & 1) != 0))
  {
    v21 = *(*(v17 + 56) + 8 * v19);
    sub_21700DF14();
  }

  else
  {
    v21 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(*(v15 + 16));

  if (!v21 || (result = sub_2166BF3C8(v21)) == 0)
  {
    if (qword_27CAB6168 != -1)
    {
      OUTLINED_FUNCTION_1_201();
    }

    v25 = sub_217007CA4();
    __swift_project_value_buffer(v25, qword_27CACACB8);
    sub_216C42F20(a1, v14);
    sub_21700DF14();
    v26 = sub_217007C84();
    v27 = sub_21700ED84();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = [*&v14[*(v11 + 20)] URL];
      if (v29)
      {
        v30 = v29;
        sub_217005E64();

        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      v32 = sub_217005EF4();
      __swift_storeEnumTagSinglePayload(v10, v31, 1, v32);
      v33 = sub_21700E594();
      v35 = v34;
      sub_216C42F84(v14);
      v36 = sub_2166A85FC(v33, v35, v40);

      *(v28 + 4) = v36;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_2166A85FC(v38, a3, v40);
      _os_log_impl(&dword_216679000, v26, v27, v39, v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      sub_216C42F84(v14);
    }
  }

  v23 = result;
  if (result >= 1)
  {
    for (i = 0; i != v23; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEA0220](i, v21);
      }

      else
      {
      }

      sub_216E47888();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216E472BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - v9;
  v10 = type metadata accessor for MusicURLRequest();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v15 = *(v14 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v15);
  OUTLINED_FUNCTION_3_164();
  v16 = *(v4 + 32);
  v17 = *(v16 + 16);
  v39 = a3;
  if (v17 && (v18 = sub_2166AF66C(a3, a4), (v19 & 1) != 0))
  {
    v20 = *(*(v16 + 56) + 8 * v18);
    sub_21700DF14();
  }

  else
  {
    v20 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(*(v14 + 16));

  if (!v20 || (result = sub_2166BF3C8(v20)) == 0)
  {
    if (qword_27CAB6168 != -1)
    {
      OUTLINED_FUNCTION_1_201();
    }

    v24 = sub_217007CA4();
    __swift_project_value_buffer(v24, qword_27CACACB8);
    sub_216C42F20(a2, v13);
    sub_21700DF14();
    v25 = sub_217007C84();
    v26 = sub_21700ED84();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v40;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v29 = 136446466;
      v30 = [*&v13[*(v10 + 20)] URL];
      if (v30)
      {
        v31 = v30;
        sub_217005E64();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v33 = sub_217005EF4();
      __swift_storeEnumTagSinglePayload(v28, v32, 1, v33);
      v34 = sub_21700E594();
      v36 = v35;
      sub_216C42F84(v13);
      v37 = sub_2166A85FC(v34, v36, v41);

      *(v29 + 4) = v37;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_2166A85FC(v39, a4, v41);
      _os_log_impl(&dword_216679000, v25, v26, "Received response %{public}s for %{public}s with no observers.", v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      sub_216C42F84(v13);
    }
  }

  v22 = result;
  if (result >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEA0220](i, v20);
      }

      else
      {
      }

      sub_216E47CA0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216E47658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF700);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_observationToken;
  v15 = sub_217006224();
  __swift_storeEnumTagSinglePayload(v5 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_lock;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *(v5 + v16) = v17;
  *(v5 + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_finished) = 0;
  *(v5 + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_pendingRequests) = MEMORY[0x277D84FA0];
  swift_weakInit();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_weakAssign();
  v19 = (v5 + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_responseHandler);
  *v19 = a4;
  v19[1] = a5;

  sub_216E47820();

  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  v20 = OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_observationToken;
  swift_beginAccess();
  sub_216E48938(v13, v6 + v20);
  swift_endAccess();
  return v6;
}

uint64_t sub_216E47888()
{

  OUTLINED_FUNCTION_2_170();
}

uint64_t sub_216E478E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicURLRequest();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_216C42F20(a2, v5);
  swift_beginAccess();
  sub_2168A2004();
  swift_endAccess();
  return sub_216C42F84(v8);
}

void sub_216E479D8(uint64_t a1)
{
  v3 = type metadata accessor for MusicURLRequest();
  MEMORY[0x28223BE20](v3);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACACD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23[-1] - v10;
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_lock) + 16));
  swift_beginAccess();
  sub_216ABB5AC();
  swift_endAccess();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v3);
  sub_216697664(v11, &qword_27CACACD8);
  if (EnumTagSinglePayload == 1)
  {
    if (qword_27CAB6160 != -1)
    {
      swift_once();
    }

    v13 = sub_217007CA4();
    __swift_project_value_buffer(v13, qword_27CACACA0);
    sub_216C42F20(a1, v8);
    v14 = sub_217007C84();
    v15 = sub_21700ED84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446210;
      sub_216C42F20(v8, v5);
      v18 = sub_21700E594();
      v20 = v19;
      sub_216C42F84(v8);
      v21 = sub_2166A85FC(v18, v20, v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_216679000, v14, v15, "Response received before request %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x21CEA1440](v17, -1, -1);
      MEMORY[0x21CEA1440](v16, -1, -1);
    }

    else
    {

      sub_216C42F84(v8);
    }
  }
}

uint64_t sub_216E47CA0()
{

  OUTLINED_FUNCTION_2_170();
}

uint64_t sub_216E47D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_216E479D8(a2);
  (*(a1 + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_responseHandler))(a3, a2);
  v6 = OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_pendingRequests;
  result = swift_beginAccess();
  if (!*(*(a1 + v6) + 16))
  {
    if (*(a1 + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_finished))
    {

      sub_216E47DD0();
      sub_21700E224();
    }
  }

  return result;
}

uint64_t sub_216E47DD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF700);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_217006224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_observationToken;
  swift_beginAccess();
  sub_216E486C8(v0 + v8, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_216697664(v3, &unk_27CABF700);
  }

  (*(v5 + 32))(v7, v3, v4);
  if (swift_weakLoadStrong())
  {
    sub_216E48078();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_216E47F84()
{
  v1 = *(v0 + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_216E47DD0();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_216E47FF8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACACA0);
  __swift_project_value_buffer(v0, qword_27CACACA0);
  return sub_217007C94();
}

uint64_t sub_216E480D0()
{

  sub_216697664(v0 + OBJC_IVAR____TtCC7MusicUI29IntentNetworkResponseReceiver8Observer_observationToken, &unk_27CABF700);

  swift_weakDestroy();
  return v0;
}

uint64_t sub_216E48164()
{
  sub_216E480D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216E481C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 24);
  sub_21693AC2C();
  *(a1 + 24) = v12;
  swift_endAccess();
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  swift_beginAccess();
  v7 = sub_21693B60C(v5, v6, *(a1 + 32));
  swift_endAccess();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v8 = v7;
  }

  v13 = v8;

  MEMORY[0x21CE9F610](v9);
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21700E874();
  }

  sub_21700E8C4();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 32);
  sub_21693AC18();
  *(a1 + 32) = v11;
  return swift_endAccess();
}

uint64_t sub_216E4834C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (!*(v4 + 16))
  {
    return swift_endAccess();
  }

  v5 = sub_2166ABD84();
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  swift_endAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 16);
  swift_beginAccess();
  sub_21700DF14();
  sub_216A51EF4(a2, v10, v11, v12, v13, v14, v15, v16, v26, v28);
  swift_endAccess();

  swift_beginAccess();
  v17 = sub_21693B60C(v9, v8, *(a1 + 32));
  if (v17)
  {
    v18 = v17;
    v27 = a1;
    swift_endAccess();
    result = sub_2166BF3C8(v18);
    v20 = result;
    v21 = 0;
    v22 = v18 & 0xC000000000000001;
    v23 = v18 & 0xFFFFFFFFFFFFFF8;
    v29 = v18;
    while (1)
    {
      if (v20 == v21)
      {

        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v27 + 32);
        sub_21693AC18();
        *(v27 + 32) = v30;

        return swift_endAccess();
      }

      if (v22)
      {
        result = MEMORY[0x21CEA0220](v21, v18);
        v24 = result;
      }

      else
      {
        if (v21 >= *(v23 + 16))
        {
          goto LABEL_23;
        }

        v24 = *(v18 + 8 * v21 + 32);
      }

      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = *(v24 + 16) == v9 && *(v24 + 24) == v8;
      if (v25 || (sub_21700F7D4() & 1) != 0)
      {
      }

      else
      {
        sub_21700F464();
        sub_21700F4A4();
        sub_21700F4B4();
        result = sub_21700F474();
        v18 = v29;
      }

      ++v21;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

uint64_t sub_216E485E8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACACB8);
  __swift_project_value_buffer(v0, qword_27CACACB8);
  return sub_217007C94();
}

uint64_t sub_216E48668()
{

  return v0;
}

uint64_t sub_216E48698()
{
  v0 = sub_216E48668();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_216E486C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_216E48754(void *a1)
{
  type metadata accessor for AnyProtoRequestConvertibleIntent();
  OUTLINED_FUNCTION_34();
  (*(v3 + 16))(v12, v1);
  sub_2166A0F18(v12, v11);
  swift_getExtendedExistentialTypeMetadata_unique();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B00);
  if (swift_dynamicCast())
  {
    sub_2166A0F18(v9, v13);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v4 = sub_21700DCD4();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_216697664(v9, &qword_27CAC4B08);
    result = [objc_opt_self() valueWithNewObjectInContext_];
    if (!result)
    {
      goto LABEL_8;
    }

    v4 = result;
  }

  sub_2166F1DCC();
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v14 = MEMORY[0x277D837D0];
  v13[0] = v7;
  v13[1] = v6;
  sub_21700DF14();
  v8 = a1;
  result = sub_2166F1E10(v13, a1);
  if (result)
  {
    sub_21700F0B4();

    return v4;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_216E48938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E489C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216E48A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_216E48A44(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_216E48AA8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216E48B60()
{
  type metadata accessor for Page(0);
  sub_216E4A72C();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216E48C00()
{
  v1 = *(*v0 + 240);
  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + v1) = 1;
    return sub_216DA6908();
  }

  return result;
}

uint64_t sub_216E48C2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3 & 1;
  return v5;
}

uint64_t RelatedContentProvider.Item.deinit()
{

  return v0;
}

uint64_t RelatedContentProvider.Item.__deallocating_deinit()
{
  RelatedContentProvider.Item.deinit();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t RelatedContentProvider.ShelfType.hashValue.getter()
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](0);
  return sub_21700F944();
}

uint64_t sub_216E48D4C@<X0>(uint64_t a1@<X8>)
{
  result = sub_216E48DD8();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_216E48DD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216E48E50()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

void (*sub_216E48ED0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_217007DD4();
  return sub_216935DEC;
}

uint64_t sub_216E48F60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACACF0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_216E490A8(v5);
}

uint64_t sub_216E49034()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACACE8);
  sub_217007DB4();
  return swift_endAccess();
}

uint64_t sub_216E490A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACACF0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACACE8);
  sub_217007DC4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_216E491D0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACACF0);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACACE8);
  sub_217007DB4();
  swift_endAccess();
  return sub_216E492F4;
}

void sub_216E492F4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_216E490A8(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_216E490A8(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_216E493A8()
{
  if (*(v0 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_presenter))
  {

    sub_216E48C00();
    sub_216E48B44();
  }

  return result;
}

uint64_t sub_216E49420()
{
  if (*(v0 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_presenter))
  {

    sub_216E48B54();
  }

  return result;
}

void sub_216E49490()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_collaboratorsRefreshProvider);
  if (v1)
  {
    v2 = v1;
    sub_216BA0ECC();
  }
}

uint64_t sub_216E494F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACACE8);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v13 = OBJC_IVAR____TtC7MusicUI22RelatedContentProvider__state;
  v15 = 0;
  v16 = 2;
  sub_217007DA4();
  (*(v9 + 32))(v3 + v13, v12, v7);
  *(v3 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_presenter) = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_collaboratorsRefreshProvider) = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_cancellables) = MEMORY[0x277D84FA0];
  sub_216681B64(a1, v3 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_intent, &qword_27CAB6AB8);
  *(v3 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_bootstrapState) = a2;
  *(v3 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_appDestinationPageProviderBox) = a3;

  sub_216E4968C();

  sub_216846754(a1);
  return v3;
}

uint64_t sub_216E4968C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DE0);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAD58);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8);
  sub_217007DB4();
  swift_endAccess();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_5_0();
  sub_2166D9530(v12, &unk_27CAC9DE0);

  sub_217007E34();

  (*(v2 + 8))(v5, v0);
  OUTLINED_FUNCTION_2_171();
  sub_2166D9530(v13, &qword_27CACAD58);

  sub_217007E84();

  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_16_5();
  sub_217007D24();
  swift_endAccess();
}

unint64_t sub_216E49920@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = *a1;
  if ((~result & 0xF000000000000007) == 0)
  {
    goto LABEL_5;
  }

  if (result >> 62)
  {
    if (result >> 62 == 1)
    {
      v4 = (result & 0x3FFFFFFFFFFFFFFFLL);
      result = sub_216E48E50();
    }

LABEL_5:
    *a2 = 0;
    return result;
  }

  *a2 = result;

  return sub_2166E6B18(result);
}

void sub_216E499DC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9B70);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAD48);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = sub_216CDFAE0(v2 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_intent, a1, 0, 0);
  sub_216E48B60();
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A40);
  sub_217007DB4();
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v2;
  OUTLINED_FUNCTION_5_0();
  sub_2166D9530(v18, &qword_27CAC9B70);

  sub_217007E34();

  (*(v6 + 8))(v9, v4);
  swift_getKeyPath();
  v22 = v2;
  OUTLINED_FUNCTION_2_171();
  sub_2166D9530(v19, &qword_27CACAD48);
  sub_217007E94();

  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_16_5();
  sub_217007D24();
  swift_endAccess();

  *(v2 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_presenter) = v16;

  type metadata accessor for PlaylistCollaboratorsRefreshProvider();
  type metadata accessor for ObjectGraph();

  sub_21700E094();

  v20 = *(v2 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_collaboratorsRefreshProvider);
  *(v2 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_collaboratorsRefreshProvider) = v22;
}

uint64_t sub_216E49D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MappedCatalogPage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v27 - v12);
  sub_216681B64(a1, &v27 - v12, &qword_27CAC6D28);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30);
  result = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (result == 1)
  {
    goto LABEL_5;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v16 = *v13;

      *a4 = v16;
      v17 = 1;
LABEL_6:
      *(a4 + 8) = v17;
      return result;
    }

LABEL_5:
    *a4 = 0;
    v17 = 2;
    goto LABEL_6;
  }

  sub_216E4A66C(v13, v10);
  v18 = MEMORY[0x277D84F90];
  v29 = v10;
  v30 = MEMORY[0x277D84F90];
  v19 = *(*&v10[*(v8 + 24)] + 16);
  if (v19)
  {
    v28 = a4;
    v20 = *(a3 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_bootstrapState);
    v21 = *(a3 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_appDestinationPageProviderBox);
    type metadata accessor for RelatedContentProvider.Item();
    for (i = 0; i != v19; ++i)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = a2;
      *(v23 + 24) = v20;
      *(v23 + 32) = v21;
      *(v23 + 40) = i;
      *(v23 + 48) = 0;
      swift_retain_n();
      swift_retain_n();

      MEMORY[0x21CE9F610](v24);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      *(v25 + 24) = v20;
      *(v25 + 32) = v21;
      *(v25 + 40) = i;
      *(v25 + 48) = 1;

      MEMORY[0x21CE9F610](v26);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
    }

    v18 = v30;
    a4 = v28;
  }

  result = sub_216E4A6D0(v29);
  *a4 = v18;
  *(a4 + 8) = 0;
  return result;
}

uint64_t RelatedContentProvider.deinit()
{
  v1 = OBJC_IVAR____TtC7MusicUI22RelatedContentProvider__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACACE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_216846754(v0 + OBJC_IVAR____TtC7MusicUI22RelatedContentProvider_intent);

  return v0;
}

uint64_t RelatedContentProvider.__deallocating_deinit()
{
  RelatedContentProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_216E4A14C()
{
  result = qword_27CACAD28;
  if (!qword_27CACAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAD28);
  }

  return result;
}

uint64_t sub_216E4A1A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RelatedContentProvider();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for RelatedContentProvider()
{
  result = qword_27CACAD30;
  if (!qword_27CACAD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216E4A234()
{
  sub_216E4A454();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216E4A454()
{
  if (!qword_27CACAD40)
  {
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CACAD40);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7MusicUI22RelatedContentProviderC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_216E4A4FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_216E4A53C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_216E4A580(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RelatedContentProvider.ShelfType(_BYTE *result, int a2, int a3)
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

uint64_t sub_216E4A66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedCatalogPage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E4A6D0(uint64_t a1)
{
  v2 = type metadata accessor for MappedCatalogPage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216E4A72C()
{
  result = qword_280E2C548;
  if (!qword_280E2C548)
  {
    type metadata accessor for Page(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C548);
  }

  return result;
}

id sub_216E4A794(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_216E4A7D8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v47 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v43 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  sub_21700D7A4();
  sub_21700CE04();
  v16 = *(v43 + 16);
  v41 = v4;
  v36 = v43 + 16;
  v37 = v16;
  v16(v8, v44, v4);
  v38 = v8;
  sub_21700D734();
  v42 = a1;
  sub_21700CE04();
  v17 = sub_21700CDB4();
  v19 = v18;
  v20 = *(v11 + 8);
  v39 = v11 + 8;
  v40 = v9;
  v20(v15, v9);
  if (v19)
  {
    v34 = type metadata accessor for GroupedTextListLockup();
    v45 = v17;
    v46 = v19;
    v35 = v20;
    sub_21700F364();
    type metadata accessor for ModalPresentationDescriptor();
    sub_21700CE04();
    v21 = v37;
    v22 = v38;
    v23 = v44;
    v24 = v41;
    v37(v38, v44, v41);
    sub_216E4ACB8(&qword_27CAC1C70, type metadata accessor for ModalPresentationDescriptor);
    v25 = v47;
    sub_21700D734();
    v26 = v42;
    sub_21700CE04();
    v21(v22, v23, v24);
    sub_216AC65C8();
    v28 = v27;
    (*(v43 + 8))(v23, v24);
    result = v35(v26, v40);
    *(v25 + *(v34 + 28)) = v28;
  }

  else
  {
    v30 = sub_21700E2E4();
    sub_216E4ACB8(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v32 = v31;
    v33 = type metadata accessor for GroupedTextListLockup();
    *v32 = 25705;
    v32[1] = 0xE200000000000000;
    v32[2] = v33;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    (*(v43 + 8))(v44, v41);
    v20(v42, v40);
    return sub_2167B0250(v47);
  }

  return result;
}

uint64_t sub_216E4ACB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216E4AD00(int *a1, unsigned int a2, uint64_t a3)
{
  v123 = *(*(*(a3 + 16) - 8) + 64);
  v3 = *(sub_21700D7A4() - 8);
  v4 = *(v3 + 80);
  v122 = v4 + 16;
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = *(v3 + 64) + 1;
  }

  v129 = v5;
  v124 = v4 | 7;
  v125 = ((v4 + 16) & ~v4) + v5;
  v6 = *(sub_217005EF4() - 8);
  v7 = *(v6 + 80);
  v128 = v7 | 7;
  v8 = *(sub_21700C4B4() - 8);
  v9 = *(v8 + 80);
  v10 = *(sub_21700C444() - 8);
  v11 = *(v10 + 80);
  v12 = v11 | v9;
  v13 = v4 | 7 | v7 | v12;
  v126 = (v125 + v13) & ~v13;
  v117 = v4;
  v118 = v4 + 40;
  if (*(v10 + 84) <= *(v8 + 84))
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v111 = v14;
  v15 = *(v6 + 84) == 0;
  v100 = v7;
  v16 = *(v6 + 64);
  v17 = *(v10 + 80);
  v115 = *(v10 + 64);
  v18 = ((*(v8 + 64) + v11) & ~v11) + v115;
  v121 = v18;
  if (v15)
  {
    ++v16;
  }

  v107 = v16;
  v112 = ((v4 + 40) & ~v4) + v129;
  v102 = (v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = v16 + ((v7 + 113) & ~v7);
  if (v14)
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 + 1;
  }

  v97 = v20;
  v98 = v19;
  v21 = (-2 - (v4 | 7 | v7 | v12)) & 0xFFFFFFFFFFFFFFFELL | v4 & 0xFFFFFFFFFFFFFFF8 | 6 | v7 & 0xFFFFFFFFFFFFFFFELL | v12 & 0xFFFFFFFFFFFFFFFELL;
  v22 = ((-41 - v7 - ((((v102 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v128) - v19;
  if (v22 >= ((-161 - v12) | v12) - v20 - 3)
  {
    v22 = ((-161 - v12) | v12) - v20 - 3;
  }

  if (v22 >= 0xFFFFFFFFFFFFFFA7)
  {
    v22 = -89;
  }

  v23 = v21 + v22;
  v108 = v21 + v22;
  v90 = sub_21700CDF4();
  v24 = *(v90 - 8);
  v25 = *(v24 + 80);
  v89 = *(v24 + 84);
  if (v89 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = *(v24 + 84);
  }

  v92 = v26;
  v87 = v25 + 16;
  v88 = *(v24 + 80);
  v27 = ((v25 + 16) & ~v25) + *(*(v90 - 8) + 64);
  v93 = v25 | 7;
  v28 = ((v25 | 7) + ((v126 - v23 + 9) & 0xFFFFFFFFFFFFFFF8) + 58) & ~(v25 | 7);
  v29 = *(sub_21700D284() - 8);
  v30 = *(v29 + 80);
  v127 = v30 | 7;
  v95 = v17 | 7;
  v113 = *(sub_2170061E4() - 8);
  v31 = *(v113 + 80);
  v110 = *(sub_21700D194() - 8);
  v106 = *(v110 + 80);
  v91 = v27;
  v119 = (v28 + v27 + (v13 | v17 | v30 | v31 | v106)) & ~(v13 | v17 | v30 | v31 | v106);
  v32 = *(v29 + 64) + ((v30 + 65) & ~v30);
  v33 = v115 + ((v17 + 8) & ~v17);
  v34 = v129 + 7;
  v35 = (v129 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = v35;
  v36 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
  v37 = ((v97 + v31 + ((v36 + 16 + v12) & ~v12) + 1) & ~v31) + *(v113 + 64);
  v38 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v32 + ((((v38 + 15) & 0xFFFFFFFFFFFFFFF8) + v127 + 16) & ~v127)) & 0xFFFFFFFFFFFFFFF8;
  v104 = v32;
  v105 = v12 + 16;
  v39 = v97 + (v17 | 7);
  v40 = v33 + v128;
  v114 = (v36 + 47) & 0xFFFFFFFFFFFFFFF8;
  v41 = v114 + v124 + 16;
  v42 = v114 + 24 + ((v41 + ((v41 + ((v98 + v124 + ((v33 + v128 + ((v97 + v95 + ((v12 + 16 + ((v103 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v95)) & ~v128)) & ~v124)) & ~v124)) & ~v124);
  v43 = v100 + 8;
  v44 = v98 + ((v100 + 8) & ~v128);
  if (v44 > v42)
  {
    v42 = v98 + ((v100 + 8) & ~v128);
  }

  if (v102 + 8 > v42)
  {
    v42 = v102 + 8;
  }

  v116 = v100 + 40;
  v45 = v98 + v12;
  v46 = ((v39 + ((v98 + v12 + ((v100 + 40 + ((v37 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v128)) & ~v12)) & ~v95) + v33;
  if (v42 <= v46)
  {
    v42 = v46;
  }

  v47 = v97 + 7;
  v48 = ((((v97 + 7 + ((v45 + ((v128 + ((v38 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v128)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v42 <= v48)
  {
    v49 = ((((v97 + 7 + ((v45 + ((v128 + ((v38 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v128)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v49 = v42;
  }

  v50 = v35 + 40;
  v51 = v13 + v35 + 40;
  v96 = v51 & ~v13;
  v52 = ((v13 + (((((v51 | v13) + v48) & ~v13) - v108 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) - v108 - 2;
  if (v49 > v52)
  {
    v52 = v49;
  }

  v109 = v98 + 7;
  v101 = (v98 + 7 + ((v50 + v100) & ~v128)) & 0xFFFFFFFFFFFFFFF8;
  if (v52 <= ((((((v101 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v52 = ((((((v101 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v53 = v97 + v12;
  if (v52 <= ((v40 + ((v39 + ((v97 + v12 + ((((v36 + 16 + v100) & ~v100) + v12 + v107) & ~v12) + 1) & ~v12)) & ~v95)) & ~v128) + v98)
  {
    v52 = ((v40 + ((v39 + ((v97 + v12 + ((((v36 + 16 + v100) & ~v100) + v12 + v107) & ~v12) + 1) & ~v12)) & ~v95)) & ~v128) + v98;
  }

  if (v111 >= 2)
  {
    v54 = v97;
  }

  else
  {
    v54 = v97 + 1;
  }

  if (v52 <= v54 + (v53 & ~v12) + ((v53 + ((v12 + 16 + (((((v112 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12))
  {
    v52 = v54 + (v53 & ~v12) + ((v53 + ((v12 + 16 + (((((v112 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12);
  }

  if (v52 <= ((((((v34 + ((v117 + 48) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v52 = ((((((v34 + ((v117 + 48) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v55 = ((v32 + ((v50 + v30) & ~v127) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v52 > v55)
  {
    v55 = v52;
  }

  v56 = v98 + ((v102 + v128 + 17) & ~v128);
  if (v55 <= v56 + 1)
  {
    v55 = v56 + 1;
  }

  v57 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = (((v57 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v55 <= ((((v58 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v55 = ((((v58 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v59 = ((v53 + ((((((((v58 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v12 + 40) & ~v12)) & ~v12) + v97;
  if (v55 <= v59)
  {
    v60 = v59;
  }

  else
  {
    v60 = v55;
  }

  v61 = ((v106 + 40) & ~v106) + *(v110 + 64);
  if (v60 > v61)
  {
    v61 = v60;
  }

  v62 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = v62 + 8;
  if (v61 > v62 + 8)
  {
    v63 = v61;
  }

  v64 = ((v62 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  v65 = (v47 + v96 + ((v45 + ((v64 + v128) & ~v128)) & ~v12)) & 0xFFFFFFFFFFFFFFF8;
  if (v63 <= ((v43 + v65) & ~v128) + v98)
  {
    v66 = ((v43 + v65) & ~v128) + v98;
  }

  else
  {
    v66 = v63;
  }

  v67 = v114 + 24 + ((v41 + ((v41 + ((v98 + v124 + ((v40 + ((v39 + ((v12 + v103 + 24) & ~v12)) & ~v95)) & ~v128)) & ~v124)) & ~v124)) & ~v124);
  if (v66 <= v38 + 17)
  {
    v66 = v38 + 17;
  }

  if (v66 > v67)
  {
    v67 = v66;
  }

  if (v67 <= v44)
  {
    v67 = v98 + ((v100 + 8) & ~v128);
  }

  v68 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v67 <= v68 + 16)
  {
    v67 = v68 + 16;
  }

  if (v67 <= ((((((((v99 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v67 = ((((((((v99 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v67 <= ((v112 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v67 = ((v112 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v67 <= ((v117 + 81) & ~v117) + v129)
  {
    v67 = ((v117 + 81) & ~v117) + v129;
  }

  if (v67 <= ((v34 + ((v117 + 56) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v67 = ((v34 + ((v117 + 56) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v67 <= ((((v34 + ((v118 + (v47 & 0xFFFFFFFFFFFFFFF8)) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v67 = ((((v34 + ((v118 + (v47 & 0xFFFFFFFFFFFFFFF8)) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v69 = (v101 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v67 <= ((v12 + v69 + 18) & ~v12) + v97)
  {
    v67 = ((v12 + v69 + 18) & ~v12) + v97;
  }

  v70 = ((v47 + ((v12 + 8 + ((((((((((v69 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v67 <= v70)
  {
    v67 = v70;
  }

  if (v67 <= v38 + 40)
  {
    v67 = v38 + 40;
  }

  if (v67 <= v68 + 8)
  {
    v67 = v68 + 8;
  }

  if (v67 <= v64)
  {
    v67 = v64;
  }

  if (v67 <= v36 + 8)
  {
    v67 = v36 + 8;
  }

  if (v67 <= v102 + 8)
  {
    v67 = v102 + 8;
  }

  if (v67 <= ((v102 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v67 = ((v102 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v71 = v68 + 24;
  if (v67 > v71)
  {
    v71 = v67;
  }

  if (v71 <= v112)
  {
    v71 = v112;
  }

  v72 = (((v114 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v71 <= ((v109 + ((v116 + ((((((v33 + ((v33 + v95 + ((v39 + ((v53 + ((v12 + 8 + ((((v72 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12)) & ~v95)) & ~v95) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v128)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v71 = ((v109 + ((v116 + ((((((v33 + ((v33 + v95 + ((v39 + ((v53 + ((v12 + 8 + ((((v72 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12)) & ~v95)) & ~v95) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v128)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v73 = v98 + ((v128 + v38 + 17 + ((v122 + ((((v57 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v124) + 23) & ~v128);
  if (v71 > v73)
  {
    v73 = v71;
  }

  if (v73 <= ((v97 + v128 + ((v105 + ((v47 + ((v12 + ((((v47 + ((((v72 + v127 + 8) & ~v127) + v12 + v104) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v128) + v98)
  {
    v73 = ((v97 + v128 + ((v105 + ((v47 + ((v12 + ((((v47 + ((((v72 + v127 + 8) & ~v127) + v12 + v104) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v128) + v98;
  }

  if (v73 <= ((((((v105 + v102) & ~v12) + v121 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((((((v105 + v102) & ~v12) + v121 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v73 <= 8)
  {
    v73 = 8;
  }

  v74 = ((v119 + v73 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v74 <= v123)
  {
    v74 = v123;
  }

  if (v74 <= 8)
  {
    v74 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v75 = (((v74 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v93 + 16;
  result = v92;
  if (v92 - 1 >= a2)
  {
LABEL_129:
    if (v92 < 1)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v87 + ((a1 + v75) & ~v93)) & ~v88, v89, v90);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v85 = *(((((a1 + v74 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v85 >= 0xFFFFFFFF)
      {
        LODWORD(v85) = -1;
      }

      if ((v85 + 1) >= 2)
      {
        return v85;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v77 = ((v91 + (v75 & ~v93) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v78 = v77 & 0xFFFFFFF8;
    v79 = a2 - v92 + 2;
    if ((v77 & 0xFFFFFFF8) != 0)
    {
      v79 = 2;
    }

    if (v79 >= 0x10000)
    {
      v80 = 4;
    }

    else
    {
      v80 = 2;
    }

    if (v79 < 0x100)
    {
      v80 = 1;
    }

    if (v79 >= 2)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    switch(v81)
    {
      case 1:
        v82 = *(a1 + v77);
        if (!v82)
        {
          goto LABEL_129;
        }

        goto LABEL_126;
      case 2:
        v82 = *(a1 + v77);
        if (!v82)
        {
          goto LABEL_129;
        }

        goto LABEL_126;
      case 3:
        __break(1u);
        return result;
      case 4:
        v82 = *(a1 + v77);
        if (!v82)
        {
          goto LABEL_129;
        }

LABEL_126:
        v83 = v82 - 1;
        if (v78)
        {
          v83 = 0;
          v84 = *a1;
        }

        else
        {
          v84 = 0;
        }

        result = (v84 | v83) + v92;
        break;
      default:
        goto LABEL_129;
    }
  }

  return result;
}

void sub_216E4BA64(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v119 = *(*(*(a4 + 16) - 8) + 64);
  v4 = *(sub_21700D7A4() - 8);
  v5 = *(v4 + 80);
  v118 = v5 + 16;
  if (*(v4 + 84))
  {
    v6 = *(v4 + 64);
  }

  else
  {
    v6 = *(v4 + 64) + 1;
  }

  v128 = v6;
  v122 = v5 | 7;
  v123 = ((v5 + 16) & ~v5) + v6;
  v126 = *(sub_217005EF4() - 8);
  v7 = *(v126 + 80);
  v125 = v7 | 7;
  v8 = *(sub_21700C4B4() - 8);
  v9 = *(v8 + 80);
  v10 = *(sub_21700C444() - 8);
  v11 = *(v10 + 80);
  v12 = v11 | v9;
  v13 = v5 | 7 | v7 | v12;
  v110 = v5;
  v112 = v5 + 40;
  if (*(v10 + 84) <= *(v8 + 84))
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v105 = v14;
  v96 = v7;
  v15 = *(v126 + 64);
  v16 = *(v10 + 80);
  v109 = *(v10 + 64);
  v17 = ((*(v8 + 64) + v11) & ~v11) + v109;
  v116 = v17;
  if (!*(v126 + 84))
  {
    ++v15;
  }

  v101 = v15;
  v106 = ((v5 + 40) & ~v5) + v128;
  v127 = (v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = v15 + ((v7 + 113) & ~v7);
  if (v14)
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 + 1;
  }

  v94 = v19;
  v95 = v18;
  v20 = (-2 - (v5 | 7 | v7 | v12)) & 0xFFFFFFFFFFFFFFFELL | v5 & 0xFFFFFFFFFFFFFFF8 | 6 | v7 & 0xFFFFFFFFFFFFFFFELL | v12 & 0xFFFFFFFFFFFFFFFELL;
  v21 = ((-41 - v7 - ((((v127 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v125) - v18;
  if (v21 >= ((-161 - v12) | v12) - v19 - 3)
  {
    v21 = ((-161 - v12) | v12) - v19 - 3;
  }

  if (v21 >= 0xFFFFFFFFFFFFFFA7)
  {
    v21 = -89;
  }

  v22 = v20 + v21;
  v102 = v20 + v21;
  v90 = sub_21700CDF4();
  v23 = *(v90 - 8);
  v24 = *(v23 + 80);
  v89 = *(v23 + 84);
  if (v89 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = *(v23 + 84);
  }

  v113 = v25;
  v88 = v24 + 16;
  v91 = *(v23 + 80);
  v26 = ((v24 + 16) & ~v24) + *(v23 + 64);
  v111 = v26;
  v115 = v24 | 7;
  v27 = ((v24 | 7) + ((((v123 + v13) & ~v13) - v22 + 9) & 0xFFFFFFFFFFFFFFF8) + 58) & ~(v24 | 7);
  v28 = *(sub_21700D284() - 8);
  v29 = *(v28 + 80);
  v124 = v29 | 7;
  v92 = v16 | 7;
  v107 = *(sub_2170061E4() - 8);
  v30 = *(v107 + 80);
  v103 = *(sub_21700D194() - 8);
  v100 = *(v103 + 80);
  v114 = (v27 + v26 + (v13 | v16 | v29 | v30 | v100)) & ~(v13 | v16 | v29 | v30 | v100);
  v98 = v29;
  v31 = v128 + 7;
  v32 = (v128 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 47) & 0xFFFFFFFFFFFFFFF8;
  v34 = ((v94 + v30 + ((v33 + 16 + v12) & ~v12) + 1) & ~v30) + *(v107 + 64);
  v35 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v28 + 64) + ((v29 + 65) & ~v29);
  v97 = (v36 + ((((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + v124 + 16) & ~v124)) & 0xFFFFFFFFFFFFFFF8;
  v99 = v12 + 16;
  v37 = v94 + (v16 | 7);
  v38 = v109 + ((v16 + 8) & ~v16);
  v104 = v38;
  v39 = v38 + v125;
  v108 = (v33 + 47) & 0xFFFFFFFFFFFFFFF8;
  v40 = v108 + v122 + 16;
  v41 = v108 + 24 + ((v40 + ((v40 + ((v95 + v122 + ((v38 + v125 + ((v94 + v92 + ((v12 + 16 + ((v97 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v92)) & ~v125)) & ~v122)) & ~v122)) & ~v122);
  v42 = v95 + ((v96 + 8) & ~v125);
  if (v42 > v41)
  {
    v41 = v95 + ((v96 + 8) & ~v125);
  }

  if (v127 + 8 > v41)
  {
    v41 = v127 + 8;
  }

  v43 = v95 + v12;
  v44 = ((v37 + ((v95 + v12 + ((v96 + 40 + ((v34 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v125)) & ~v12)) & ~v92) + v38;
  if (v41 <= v44)
  {
    v41 = v44;
  }

  v45 = v94 + 7;
  v46 = ((((v94 + 7 + ((v43 + ((v125 + ((v35 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v125)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v41 <= v46)
  {
    v47 = ((((v94 + 7 + ((v43 + ((v125 + ((v35 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v125)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v47 = v41;
  }

  v48 = v32 + 40;
  v49 = v13 + v32 + 40;
  v93 = v49 & ~v13;
  v50 = ((v13 + (((((v49 | v13) + v46) & ~v13) - v102 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) - v102 - 2;
  if (v47 > v50)
  {
    v50 = v47;
  }

  v51 = (v95 + 7 + ((v48 + v96) & ~v125)) & 0xFFFFFFFFFFFFFFF8;
  if (v50 <= ((((((v51 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v50 = ((((((v51 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v52 = v94 + v12;
  if (v50 <= ((v39 + ((v37 + ((v94 + v12 + ((((v33 + 16 + v96) & ~v96) + v12 + v101) & ~v12) + 1) & ~v12)) & ~v92)) & ~v125) + v95)
  {
    v50 = ((v39 + ((v37 + ((v94 + v12 + ((((v33 + 16 + v96) & ~v96) + v12 + v101) & ~v12) + 1) & ~v12)) & ~v92)) & ~v125) + v95;
  }

  if (v105 >= 2)
  {
    v53 = v94;
  }

  else
  {
    v53 = v94 + 1;
  }

  if (v50 <= v53 + (v52 & ~v12) + ((v52 + ((v12 + 16 + (((((v106 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12))
  {
    v50 = v53 + (v52 & ~v12) + ((v52 + ((v12 + 16 + (((((v106 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12);
  }

  if (v50 <= ((((((v31 + ((v110 + 48) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v50 = ((((((v31 + ((v110 + 48) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v54 = ((v36 + ((v48 + v98) & ~v124) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v50 > v54)
  {
    v54 = v50;
  }

  v55 = v95 + ((v127 + v125 + 17) & ~v125);
  if (v54 <= v55 + 1)
  {
    v54 = v55 + 1;
  }

  v56 = (v127 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = (((v56 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v54 <= ((((v57 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v54 = ((((v57 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v58 = ((v52 + ((((((((v57 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v12 + 40) & ~v12)) & ~v12) + v94;
  if (v54 <= v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = v54;
  }

  v60 = ((v100 + 40) & ~v100) + *(v103 + 64);
  if (v59 > v60)
  {
    v60 = v59;
  }

  v61 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v62 = v61 + 8;
  if (v60 > v61 + 8)
  {
    v62 = v60;
  }

  v63 = ((v61 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  v64 = (v45 + v93 + ((v43 + ((v63 + v125) & ~v125)) & ~v12)) & 0xFFFFFFFFFFFFFFF8;
  if (v62 <= ((v96 + 8 + v64) & ~v125) + v95)
  {
    v65 = ((v96 + 8 + v64) & ~v125) + v95;
  }

  else
  {
    v65 = v62;
  }

  v66 = v108 + 24 + ((v40 + ((v40 + ((v95 + v122 + ((v39 + ((v37 + ((v12 + v97 + 24) & ~v12)) & ~v92)) & ~v125)) & ~v122)) & ~v122)) & ~v122);
  if (v65 <= v35 + 17)
  {
    v65 = v35 + 17;
  }

  if (v65 > v66)
  {
    v66 = v65;
  }

  if (v66 <= v42)
  {
    v66 = v95 + ((v96 + 8) & ~v125);
  }

  v67 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v66 <= v67 + 16)
  {
    v66 = v67 + 16;
  }

  if (v66 <= ((((((((v32 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v66 = ((((((((v32 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v66 <= ((v106 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v66 = ((v106 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v66 <= ((v110 + 81) & ~v110) + v128)
  {
    v66 = ((v110 + 81) & ~v110) + v128;
  }

  if (v66 <= ((v31 + ((v110 + 56) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v66 = ((v31 + ((v110 + 56) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v66 <= ((((v31 + ((v112 + (v45 & 0xFFFFFFFFFFFFFFF8)) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v66 = ((((v31 + ((v112 + (v45 & 0xFFFFFFFFFFFFFFF8)) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v68 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v66 <= ((v12 + v68 + 18) & ~v12) + v94)
  {
    v66 = ((v12 + v68 + 18) & ~v12) + v94;
  }

  v69 = ((v45 + ((v12 + 8 + ((((((((((v68 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v66 <= v69)
  {
    v66 = v69;
  }

  if (v66 <= v35 + 40)
  {
    v66 = v35 + 40;
  }

  if (v66 <= v67 + 8)
  {
    v66 = v67 + 8;
  }

  if (v66 <= v63)
  {
    v66 = v63;
  }

  if (v66 <= v33 + 8)
  {
    v66 = v33 + 8;
  }

  if (v66 <= v127 + 8)
  {
    v66 = v127 + 8;
  }

  if (v66 <= ((v127 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v66 = ((v127 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v70 = v67 + 24;
  if (v66 > v70)
  {
    v70 = v66;
  }

  if (v70 <= v106)
  {
    v70 = v106;
  }

  v71 = (((v108 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v70 <= ((v95 + 7 + ((v96 + 40 + ((((((v104 + ((v104 + v92 + ((v37 + ((v52 + ((v12 + 8 + ((((v71 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12)) & ~v92)) & ~v92) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v125)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v70 = ((v95 + 7 + ((v96 + 40 + ((((((v104 + ((v104 + v92 + ((v37 + ((v52 + ((v12 + 8 + ((((v71 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12)) & ~v92)) & ~v92) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v125)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v72 = v95 + ((v125 + v35 + 17 + ((v118 + ((((v56 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v122) + 23) & ~v125);
  if (v70 > v72)
  {
    v72 = v70;
  }

  if (v72 <= ((v94 + v125 + ((v99 + ((v45 + ((v12 + ((((v45 + ((((v71 + v124 + 8) & ~v124) + v12 + v36) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v125) + v95)
  {
    v72 = ((v94 + v125 + ((v99 + ((v45 + ((v12 + ((((v45 + ((((v71 + v124 + 8) & ~v124) + v12 + v36) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v125) + v95;
  }

  if (v72 <= ((((((v99 + v127) & ~v12) + v116 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v72 = ((((((v99 + v127) & ~v12) + v116 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v72 <= 8)
  {
    v72 = 8;
  }

  v73 = ((v114 + v72 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v73 <= v119)
  {
    v73 = v119;
  }

  if (v73 <= 8)
  {
    v73 = 8;
  }

  v74 = v113 - 1;
  v75 = (((v73 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v115 + 16;
  v76 = ((v111 + (v75 & ~v115) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v113 - 1 >= a3)
  {
    v79 = 0;
  }

  else
  {
    v77 = a3 - v113 + 2;
    if (((v111 + (v75 & ~v115) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v77 = 2;
    }

    if (v77 >= 0x10000)
    {
      v78 = 4;
    }

    else
    {
      v78 = 2;
    }

    if (v77 < 0x100)
    {
      v78 = 1;
    }

    if (v77 >= 2)
    {
      v79 = v78;
    }

    else
    {
      v79 = 0;
    }
  }

  v80 = a2 >= v74;
  v81 = a2 - v74;
  if (v81 != 0 && v80)
  {
    if (((v111 + (v75 & ~v115) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v82 = v81;
    }

    else
    {
      v82 = 1;
    }

    if (((v111 + (v75 & ~v115) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(a1, ((v111 + (v75 & ~v115) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = a2 - v113;
    }

    switch(v79)
    {
      case 1:
        *(a1 + v76) = v82;
        break;
      case 2:
        *(a1 + v76) = v82;
        break;
      case 3:
LABEL_161:
        __break(1u);
        break;
      case 4:
        *(a1 + v76) = v82;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v79)
    {
      case 1:
        *(a1 + v76) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_137;
      case 2:
        *(a1 + v76) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_137;
      case 3:
        goto LABEL_161;
      case 4:
        *(a1 + v76) = 0;
        goto LABEL_136;
      default:
LABEL_136:
        if (a2)
        {
LABEL_137:
          if (v113 < 1)
          {
            v83 = ((a1 + v75) & ~v115);
            if (a2 >= v113)
            {
              if (v111 <= 3)
              {
                v85 = ~(-1 << (8 * v111));
              }

              else
              {
                v85 = -1;
              }

              if (v111)
              {
                v86 = v85 & (a2 - v113);
                if (v111 <= 3)
                {
                  v87 = v111;
                }

                else
                {
                  v87 = 4;
                }

                bzero(v83, v111);
                switch(v87)
                {
                  case 2:
                    *v83 = v86;
                    break;
                  case 3:
                    *v83 = v86;
                    v83[2] = BYTE2(v86);
                    break;
                  case 4:
                    *v83 = v86;
                    break;
                  default:
                    *v83 = v86;
                    break;
                }
              }
            }

            else
            {

              __swift_storeEnumTagSinglePayload(&v83[v88] & ~v91, a2 + 1, v89, v90);
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            v84 = ((v73 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8;
            if (v84 != -16)
            {
              bzero(a1, (v84 + 16));
              *a1 = a2 - 0x7FFFFFFF;
            }
          }

          else
          {
            *(((((a1 + v73 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) = a2;
          }
        }

        break;
    }
  }
}

uint64_t sub_216E4C8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v42 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v34 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v37 = v13;
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v33 = v14;
  MEMORY[0x28223BE20](v15);
  type metadata accessor for PageChangeInstruction();
  OUTLINED_FUNCTION_1();
  v31 = v17;
  v32 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  v29 = type metadata accessor for PaginationPageResult();
  v20 = *(v29 + 40);
  v35 = a3;
  v21 = (a3 + v20);
  *v21 = 0;
  v21[1] = 0;
  v41 = a1;
  sub_21700CE04();
  v22 = v40;
  v23 = *(v42 + 16);
  v39 = v5;
  v30 = v23;
  v23(v11, v40, v5);
  v24 = v36;
  sub_21682F4E4();
  if (v24)
  {
    (*(v42 + 8))(v22, v39);
  }

  else
  {
    (*(v31 + 32))(v35, v19, v32);
    swift_getWitnessTable();
    type metadata accessor for OpaqueProtoRequestConvertibleIntent();
    sub_21700CE04();
    v25 = v22;
    v26 = v39;
    v30(v34, v25, v39);
    swift_getWitnessTable();
    sub_21700D734();
    (*(v42 + 8))(v40, v26);
  }

  return (*(v37 + 8))(v41, v38);
}

uint64_t MusicPlayActivityFields.init(featureName:recommendationData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t MusicAppPlayer.playabilityStatus<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 112))(a2, a4);
  sub_217006D74();

  sub_21700BAD4();
}

uint64_t MusicPlayActivityFields.featureName.getter()
{
  v1 = *v0;
  sub_21700DF14();
  return v1;
}

uint64_t MusicPlayActivityFields.recommendationData.getter()
{
  v1 = *(v0 + 16);
  sub_21677A3F0(v1, *(v0 + 24));
  return v1;
}

BOOL static MusicPlayActivityFields.== infix(_:_:)(void *a1, void *a2)
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
    if (!v9 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 == 15)
    {
      goto LABEL_14;
    }

    v15 = OUTLINED_FUNCTION_4_140();
    v16 = MEMORY[0x21CE96DC0](v15);
    sub_21677A510(v7, v8);
    sub_21677A510(v4, v5);
    return (v16 & 1) != 0;
  }

  if (v8 >> 60 != 15)
  {
LABEL_14:
    v12 = OUTLINED_FUNCTION_4_140();
    sub_21677A510(v12, v13);
    sub_21677A510(v7, v8);
    return 0;
  }

  v10 = OUTLINED_FUNCTION_4_140();
  sub_21677A510(v10, v11);
  return 1;
}

uint64_t MusicPlayActivityFields.hash(into:)()
{
  v1 = *(v0 + 24);
  if (*(v0 + 8))
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  if (v1 >> 60 == 15)
  {
    return sub_21700F914();
  }

  sub_21700F914();

  return sub_217005FC4();
}

uint64_t MusicPlayActivityFields.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_21700F8F4();
  sub_21700F914();
  if (v1)
  {
    sub_21700E614();
  }

  sub_21700F914();
  if (v2 >> 60 != 15)
  {
    sub_217005FC4();
  }

  return sub_21700F944();
}

uint64_t sub_216E4D00C()
{
  sub_21700F8F4();
  MusicPlayActivityFields.hash(into:)();
  return sub_21700F944();
}

uint64_t sub_216E4D098()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

unint64_t sub_216E4D0FC()
{
  result = qword_27CACAD68;
  if (!qword_27CACAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAD68);
  }

  return result;
}

unint64_t sub_216E4D154()
{
  result = qword_27CACAD70;
  if (!qword_27CACAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAD70);
  }

  return result;
}

unint64_t sub_216E4D1AC()
{
  result = qword_27CACAD78;
  if (!qword_27CACAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAD78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueueInsertionPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShuffleMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of MusicAppPlayer.play<A>(_:shuffleMode:startingSing:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_3_165();
  v29 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9_5(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_99_0(v16);
  OUTLINED_FUNCTION_120();

  return v26(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v29, a12, a13, a14);
}

uint64_t dispatch thunk of MusicAppPlayer.play<A, B>(_:from:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  v32 = v15;
  OUTLINED_FUNCTION_1_202();
  OUTLINED_FUNCTION_2_120();
  v31 = v16 + *v16;
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_9_5(v17);
  *v18 = v19;
  v18[1] = sub_216826D94;
  OUTLINED_FUNCTION_0_241();
  OUTLINED_FUNCTION_120();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14, a15);
}

{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  v32 = v15;
  OUTLINED_FUNCTION_1_202();
  OUTLINED_FUNCTION_2_120();
  v31 = v16 + *v16;
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_9_5(v17);
  *v18 = v19;
  v18[1] = sub_216826D94;
  OUTLINED_FUNCTION_0_241();
  OUTLINED_FUNCTION_120();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14, a15);
}

uint64_t dispatch thunk of MusicAppPlayer.play(_:shuffleMode:startingSing:playActivityFields:)()
{
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_3_165();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_99_0(v1);
  OUTLINED_FUNCTION_14_76();

  return v3();
}

uint64_t dispatch thunk of MusicAppPlayer.play<A>(_:shuffleMode:from:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_1_202();
  OUTLINED_FUNCTION_3_165();
  v29 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9_5(v15);
  *v16 = v17;
  v16[1] = sub_216826D94;
  OUTLINED_FUNCTION_0_241();
  OUTLINED_FUNCTION_120();

  return v26(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v29, a12, a13, a14);
}

uint64_t dispatch thunk of MusicAppPlayer.play<A>(_:shuffleMode:playActivityFields:)()
{
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_7_108(v0, v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_2_120();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_9_5(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_5_132(v8);

  return v11(v10);
}

uint64_t dispatch thunk of MusicAppPlayer.play<A>(from:playActivityFields:)()
{
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_3_165();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_99_0(v1);
  OUTLINED_FUNCTION_14_76();

  return v3();
}

uint64_t dispatch thunk of MusicAppPlayer.playLibraryTracks(by:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_165();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_9_5(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_99_0(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MusicAppPlayer.queue<A, B>(_:at:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  v32 = v15;
  OUTLINED_FUNCTION_1_202();
  OUTLINED_FUNCTION_2_120();
  v31 = v16 + *v16;
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_9_5(v17);
  *v18 = v19;
  v18[1] = sub_216826D94;
  OUTLINED_FUNCTION_0_241();
  OUTLINED_FUNCTION_120();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14, a15);
}

uint64_t dispatch thunk of MusicAppPlayer.queue<A>(_:at:playActivityFields:)()
{
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_7_108(v0, v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_2_120();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_9_5(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_5_132(v8);

  return v11(v10);
}

uint64_t sub_216E4DF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v74 = a3;
  v75 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v76 = v5;
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v71 = v6;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v65 = v8;
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v72 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_0();
  v67 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v64 = v19;
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v78 = a1;
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v32 = *(v17 + 8);
  v31 = v17 + 8;
  v30 = v32;
  v32(v26, v15);
  if (v29)
  {
    v33 = v30;
    v34 = v74;
    *v74 = v27;
    v34[1] = v29;
    sub_21700CE04();
    sub_21700CCB4();
    v69 = v31;
    v70 = v15;
    v33(v23, v15);
    v35 = sub_21700D3E4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v35);
    v68 = v33;
    v63 = v35;
    if (EnumTagSinglePayload == 1)
    {
      sub_2169CADB0(v14);
      v37 = 0;
    }

    else
    {
      v37 = sub_21700D3D4();
      (*(*(v35 - 8) + 8))(v14, v35);
    }

    v46 = v72;
    v34[2] = v37;
    v47 = v78;
    sub_21700CE04();
    v48 = v75;
    v49 = v76;
    v50 = v77;
    (*(v76 + 16))(v71, v75, v77);
    v51 = v73;
    sub_21700D224();
    if (v51)
    {
      (*(v49 + 8))(v48, v50);
      v68(v47, v70);
    }

    else
    {
      v73 = 0;
      v52 = type metadata accessor for OpenUnifiedMessagesSheetAction();
      v53 = v74;
      (*(v65 + 32))(v74 + *(v52 + 24), v46, v66);
      v54 = v64;
      sub_21700CE04();
      v55 = v67;
      sub_21700CCB4();
      v56 = v70;
      v57 = v68;
      v68(v54, v70);
      v58 = v63;
      if (__swift_getEnumTagSinglePayload(v55, 1, v63) == 1)
      {
        (*(v76 + 8))(v48, v77);
        v57(v47, v56);
        result = sub_2169CADB0(v55);
        v59 = 0;
      }

      else
      {
        v72 = v52;
        v60 = v53;
        v61 = v57;
        v59 = sub_21700D3D4();
        (*(v76 + 8))(v48, v77);
        v61(v47, v56);
        v53 = v60;
        v52 = v72;
        result = (*(*(v58 - 8) + 8))(v55, v58);
      }

      *(v53 + *(v52 + 28)) = v59;
    }
  }

  else
  {
    v38 = sub_21700E2E4();
    sub_2167B1EA4();
    v73 = OUTLINED_FUNCTION_3_166();
    v40 = v39;
    v41 = type metadata accessor for OpenUnifiedMessagesSheetAction();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_217013DA0;
    *(v42 + 32) = OUTLINED_FUNCTION_3_166();
    *v43 = 1953393000;
    v43[1] = 0xE400000000000000;
    v43[2] = v41;
    v44 = *(*(v38 - 8) + 104);
    v44(v43, *MEMORY[0x277D22530], v38);
    *v40 = v41;
    v40[1] = v42;
    v44(v40, *MEMORY[0x277D22538], v38);
    swift_willThrow();
    (*(v76 + 8))(v75, v77);
    return (v30)(v78, v15);
  }

  return result;
}

uint64_t sub_216E4E670()
{
  OUTLINED_FUNCTION_33();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858);
  v1[8] = v7;
  OUTLINED_FUNCTION_2(v7);
  v1[9] = v8;
  v1[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860);
  v1[11] = v9;
  OUTLINED_FUNCTION_2(v9);
  v1[12] = v10;
  v1[13] = swift_task_alloc();
  v11 = sub_21700D2F4();
  v1[14] = v11;
  OUTLINED_FUNCTION_2(v11);
  v1[15] = v12;
  v1[16] = swift_task_alloc();
  v13 = sub_21700CF34();
  v1[17] = v13;
  OUTLINED_FUNCTION_2(v13);
  v1[18] = v14;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216E4E84C, 0, 0);
}

uint64_t sub_216E4E84C()
{
  v1 = v0[7];
  v2 = *(v1 + 40);
  v0[21] = v2;
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  *(v1 + 32) = 0;
  v0[22] = *(v1 + 48);
  v4 = *(v2 + 16);

  os_unfair_lock_unlock(v4);

  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_216E4E940;

  return sub_2166E63A8();
}

uint64_t sub_216E4E940()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v4;
  *(v2 + 200) = v0;

  if (v0)
  {
    v5 = sub_216E4EE88;
  }

  else
  {
    v5 = sub_216E4EA4C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_216E4EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  sub_21700CF24();
  if (qword_280E45D50 != -1)
  {
    swift_once();
  }

  v17 = v16[19];
  v18 = v16[18];
  v19 = v16[15];
  v20 = v16[16];
  v21 = v16[13];
  v38 = v16[14];
  v23 = v16[11];
  v22 = v16[12];
  v24 = v16[9];
  v25 = v16[10];
  v39 = v16[8];
  v40 = v16[17];
  v26 = __swift_project_value_buffer(v23, qword_280E73D98);
  (*(v22 + 16))(v21, v26, v23);
  sub_2166F1194();
  sub_2166F1214();
  sub_21700D304();
  sub_21700CEE4();
  sub_21700CEF4();
  (*(v24 + 8))(v25, v39);
  (*(v19 + 8))(v20, v38);
  v27 = *(v18 + 8);
  v16[26] = v27;
  v16[27] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v17, v40);
  sub_21700DB74();

  sub_21700D4F4();
  v28 = sub_21700DB44();
  v16[28] = v28;

  v32 = swift_task_alloc();
  v16[29] = v32;
  *v32 = v16;
  v32[1] = sub_216E4EC80;
  v33 = v16[5];
  v34 = v16[6];
  v35 = v16[2];
  v36 = v16[3];

  return MEMORY[0x282180628](v35, v36, v28, v33, v34, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216E4EC80()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 240) = v0;

  if (v0)
  {
    v7 = sub_216E4F06C;
  }

  else
  {
    v7 = sub_216E4EDA4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216E4EDA4()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[17];

  v1(v2, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216E4EE88()
{
  if (qword_27CAB6170 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CB22AE0);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_216679000, v4, v5, "Failed to bootstrap JavaScript stack: %{public}@", v7, 0xCu);
    sub_2166ADB8C(v8);
    MEMORY[0x21CEA1440](v8, -1, -1);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  v11 = v0[21];
  v12 = v0[7];

  v13 = *(v11 + 16);

  os_unfair_lock_lock(v13);
  *(v12 + 32) = 1;
  os_unfair_lock_unlock(*(v11 + 16));

  swift_willThrow();

  OUTLINED_FUNCTION_245();

  OUTLINED_FUNCTION_3();

  return v14();
}

uint64_t sub_216E4F06C()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[17];

  v1(v2, v3);
  OUTLINED_FUNCTION_245();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216E4F130()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  if (*(v0 + 32) == 1)
  {
    v3 = sub_2166BF94C(1, *(v0 + 24));
    sub_216E4F210(v3);
    *(v0 + 32) = 0;
  }

  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_216E4F1A8()
{
  v1 = *(v0 + 40);
  os_unfair_lock_assert_not_owner(*(v1 + 16));
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v0 + 48);
  v4 = *(v1 + 16);

  os_unfair_lock_unlock(v4);

  return v3;
}

uint64_t sub_216E4F210(uint64_t a1)
{
  *(v1 + 48) = a1;

  sub_216E4F2E8();
}

uint64_t sub_216E4F264()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CB22AE0);
  __swift_project_value_buffer(v0, qword_27CB22AE0);
  return sub_217007C94();
}

uint64_t sub_216E4F2E8()
{
  os_unfair_lock_assert_owner(*(*(v0 + 40) + 16));

  sub_21700CC34();
}

uint64_t sub_216E4F348()
{

  return v0;
}

uint64_t sub_216E4F380()
{
  sub_216E4F348();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_216E4F3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2167EE3B8;

  return MEMORY[0x28217F4B8](a1, a2, a3, a7, a4, a5, a8, a6);
}

uint64_t sub_216E4F4A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_216E4F774;

  return sub_216E4E670();
}

uint64_t sub_216E4F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_216E4F774;

  return MEMORY[0x28217F4C8](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_216E4F668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_216E4F774;

  return MEMORY[0x28217F4D0](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t type metadata accessor for AddToPlaylistAccessoryButton()
{
  result = qword_280E32980;
  if (!qword_280E32980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E4F7EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v37 = a2;
  v40 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v35 = v11 + 8;
  v36 = v9;
  v34 = v22;
  v22(v17, v9);
  if (v21)
  {
    sub_21700D7A4();
    v32 = v19;
    sub_21700CE04();
    v23 = v37;
    (*(v5 + 16))(v8, v37, v40);
    type metadata accessor for AddToPlaylistAccessoryButton();
    sub_21700D734();
    v38 = v32;
    v39 = v21;
    sub_21700F364();
    sub_21700CE04();
    sub_21700D2E4();
    (*(v5 + 8))(v23, v40);
    v24 = v36;
    v25 = v34;
    v34(v18, v36);
    return v25(v14, v24);
  }

  else
  {
    v27 = sub_21700E2E4();
    sub_216E4FC00(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v29 = v28;
    v30 = type metadata accessor for AddToPlaylistAccessoryButton();
    *v29 = 25705;
    v29[1] = 0xE200000000000000;
    v29[2] = v30;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    (*(v5 + 8))(v37, v40);
    return v34(v18, v36);
  }
}

uint64_t sub_216E4FC00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216E4FC48()
{
  sub_216E503AC();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_216E4FCE8()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_216E4FD40();
}

char *sub_216E4FD40()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 280);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  type metadata accessor for SubscriptionStatusCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v7 + 272)) = v8;
  return sub_216B12724(v3, v2, v0 & 1);
}

uint64_t sub_216E4FE0C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAD88);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = *(v4 + 16);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_21667E91C(v13);
  OUTLINED_FUNCTION_0_5();
  v15 = *(v14 + 280);
  swift_beginAccess();
  sub_216E50410(v4 + v15, v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620);
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) != 1)
  {
    return sub_216E50480(v12);
  }

  sub_216E50480(v12);
  OUTLINED_FUNCTION_0_5();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = *(v8 + 264);
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C8);
  sub_216BE1A18();

  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v16);
  swift_beginAccess();
  sub_216E504E8(v3, v4 + v15);
  return swift_endAccess();
}

uint64_t sub_216E50080()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAD88);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-v9];
  OUTLINED_FUNCTION_0_5();
  v12 = *(v11 + 280);
  swift_beginAccess();
  sub_216E50410(v2 + v12, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216E50480(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  OUTLINED_FUNCTION_0_5();

  sub_21700CC24();

  (*(v8 + 8))(v10, v7);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);
  swift_beginAccess();
  sub_216E504E8(v1, v2 + v12);
  return swift_endAccess();
}

uint64_t sub_216E50294()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  v2 = v0 + *(v1 + 280);

  return sub_216E50480(v2);
}

char *sub_216E502E4()
{
  v0 = sub_216B127F4();

  OUTLINED_FUNCTION_0_5();
  sub_216E50480(&v0[*(v1 + 280)]);
  return v0;
}

uint64_t sub_216E50340()
{
  v0 = sub_216E502E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_216E503AC()
{
  if (!qword_280E2A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CAC5620);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A1D8);
    }
  }
}

uint64_t sub_216E50410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAD88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E50480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAD88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216E504E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAD88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E50558()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
  __swift_allocate_value_buffer(v0, qword_280E73E38);
  __swift_project_value_buffer(v0, qword_280E73E38);
  return sub_217007C14();
}

const char *sub_216E505E0(char a1)
{
  result = "Fetch";
  switch(a1)
  {
    case 1:
      result = "Fetch.Cache";
      break;
    case 2:
      result = "Fetch.JSModel";
      break;
    case 3:
      result = "Fetch.RequestNetworkResource";
      break;
    case 4:
      result = "Map.NetworkResponse";
      break;
    case 5:
      result = "Map.ViewModelResourceMap";
      break;
    case 6:
      result = "Map.ExtractMusicItems";
      break;
    case 7:
      result = "Apply";
      break;
    case 8:
      result = "Apply.UpdateJSPage";
      break;
    case 9:
      result = "Apply.UpdateMappingIdentifiers";
      break;
    case 10:
      result = "Apply.Mapping";
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PageUpdateInterval(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216E50794()
{
  result = qword_27CACAD90;
  if (!qword_27CACAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAD90);
  }

  return result;
}

uint64_t sub_216E50810@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v79 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v64 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v75 = v13;
  v15 = MEMORY[0x28223BE20](v14);
  v66 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v69 = &v64 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  sub_21700D7A4();
  sub_21700CE04();
  v72 = v8;
  v73 = v6;
  v65 = *(v8 + 16);
  v65(v11, v76, v6);
  v24 = type metadata accessor for HeaderComponentModel();
  v68 = *(v24 + 20);
  v71 = v23;
  v25 = v12;
  v67 = v11;
  v26 = v75;
  sub_21700D734();
  v74 = a1;
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v32 = *(v26 + 8);
  v31 = v26 + 8;
  v30 = v32;
  v32(v21, v25);
  if (!v29)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_242();
    sub_2166D4874(v55, v56);
    OUTLINED_FUNCTION_4();
    *v57 = 25705;
    v57[1] = 0xE200000000000000;
    v57[2] = v24;
    OUTLINED_FUNCTION_50();
    (*(v58 + 104))();
    swift_willThrow();
    (*(v72 + 8))(v76, v73);
    v30(v74, v25);
    v59 = v79;
    return sub_216699820(v68 + v59, &qword_27CAB6D58);
  }

  v70 = v24;
  v77 = v27;
  v78 = v29;
  sub_21700F364();
  v33 = v69;
  sub_21700CE04();
  v34 = sub_21700CDB4();
  v36 = v35;
  v30(v33, v25);
  if (!v36)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_242();
    sub_2166D4874(v60, v61);
    OUTLINED_FUNCTION_4();
    *v62 = 0x656C746974;
    v62[1] = 0xE500000000000000;
    v62[2] = v70;
    OUTLINED_FUNCTION_50();
    (*(v63 + 104))();
    swift_willThrow();
    (*(v72 + 8))(v76, v73);
    v30(v74, v25);
    v59 = v79;
    sub_216788110(v79);
    return sub_216699820(v68 + v59, &qword_27CAB6D58);
  }

  v37 = v70;
  v38 = *(v70 + 24);
  v75 = v31;
  v39 = v30;
  v40 = v79;
  v41 = (v79 + v38);
  *v41 = v34;
  v41[1] = v36;
  v42 = type metadata accessor for ContentDescriptor();
  v43 = v74;
  sub_21700CE04();
  v65(v67, v76, v73);
  v44 = *(v37 + 32);
  sub_2166D4874(qword_280E40390, type metadata accessor for ContentDescriptor);
  sub_21700D734();
  v45 = v66;
  sub_21700CE04();
  v46 = sub_21700CD44();
  v68 = v39;
  v69 = v25;
  v39(v45, v25);
  v47 = v40;
  v48 = v72;
  if (v46 == 2)
  {
    v49 = v64;
    sub_2166A6EFC(v47 + v44, v64, &qword_27CAB6A00);
    v46 = __swift_getEnumTagSinglePayload(v49, 1, v42) == 1;
    sub_216699820(v49, &qword_27CAB6A00);
  }

  v50 = v70;
  v51 = v71;
  *(v47 + *(v70 + 28)) = v46 & 1;
  sub_21700CE04();
  sub_21691E918();
  sub_21700CCC4();
  (*(v48 + 8))(v76, v73);
  v53 = v68;
  v52 = v69;
  v68(v43, v69);
  result = v53(v51, v52);
  *(v47 + *(v50 + 36)) = v77;
  return result;
}

uint64_t sub_216E50F58(uint64_t a1, uint64_t a2)
{
  v3 = sub_2170080D4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7, a2, v3);
  v10 = (*(v5 + 88))(v9, v3);
  if (v10 == *MEMORY[0x277CDF3D0] || v10 == *MEMORY[0x277CDF3C0])
  {
  }

  result = sub_21700F584();
  __break(1u);
  return result;
}

uint64_t sub_216E510B0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_216E510D4, 0, 0);
}

uint64_t sub_216E510D4()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for ReplayGradientImageGenerator.GradientImageData();
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 56) = v4;
  *v4 = v5;
  v4[1] = sub_216E511D0;

  return MEMORY[0x282200600](v0 + 16, v2);
}

uint64_t sub_216E511D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_216E512D8, 0, 0);
}

uint64_t sub_216E512F0()
{
  v0 = sub_21700F5E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_216E51348(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000013;
}

uint64_t sub_216E513C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216E512F0();
  *a1 = result;
  return result;
}

unint64_t sub_216E513F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216E51348(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216E5142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_2170080D4();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for ReplayGradientImageGenerator.GradientImageData();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAD98);
  v5[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACADA0);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216E515C4, 0, 0);
}

uint64_t sub_216E515C4()
{
  v15 = v0;
  for (i = 0; i != 3; i = v6)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = i + 1;
    v14[0] = byte_2829122C8[i + 32];
    sub_216E51CA0(v14, v4, v5, v2, v3);
  }

  sub_216E53B48();
  v7 = OUTLINED_FUNCTION_21_64();
  v8 = OUTLINED_FUNCTION_21_64();
  sub_21700E9F4();
  v9 = *MEMORY[0x277CDF3C0];
  *(v0 + 184) = *MEMORY[0x277CDF3D0];
  *(v0 + 188) = v9;
  *(v0 + 160) = v7;
  *(v0 + 168) = v8;
  *(v0 + 144) = v7;
  *(v0 + 152) = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 176) = v10;
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_5_133(v10);

  return MEMORY[0x2822002E8](v12);
}

uint64_t sub_216E51708()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_216E517F4, 0, 0);
}

uint64_t sub_216E517F4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 168);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v4 = sub_216935758(0, v3);
    if (v4)
    {
      v5 = v4;
      v6 = sub_216935758(1, *(v0 + 168));
      if (v6)
      {
        v7 = v6;
        v8 = sub_216935758(2, *(v0 + 168));
        if (v8)
        {
          v9 = v8;
          v10 = sub_216935758(0, *(v0 + 160));
          if (v10)
          {
            v11 = v10;
            v12 = sub_216935758(1, *(v0 + 160));
            if (v12)
            {
              v13 = v12;
              v59 = v7;
              v60 = v5;
              v14 = sub_216935758(2, *(v0 + 160));
              if (v14)
              {
                v15 = v14;
                v16 = *(v0 + 32);
                v17 = swift_allocObject();
                v17[2] = v60;
                v17[3] = v59;
                v17[4] = v9;
                v17[5] = v11;
                v17[6] = v13;
                v17[7] = v15;

                *v16 = v17;

                OUTLINED_FUNCTION_3();
                OUTLINED_FUNCTION_13_2();

                __asm { BRAA            X1, X16 }
              }

              goto LABEL_47;
            }

LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            return MEMORY[0x2822002E8]();
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v20 = *(v0 + 184);
  v21 = *(v0 + 104);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = *(v0 + 72);
  sub_216E53B9C(v1, v21);
  (*(v23 + 16))(v22, v21 + *(v2 + 20), v24);
  v25 = (*(v23 + 88))(v22, v24);
  if (v25 != v20)
  {
    if (v25 != *(v0 + 188))
    {
      v46 = *(v0 + 80);
      v45 = *(v0 + 88);
      v47 = *(v0 + 72);
      sub_216E53C00(*(v0 + 104));
      (*(v46 + 8))(v45, v47);
      v48 = *(v0 + 160);
      v49 = *(v0 + 168);
      v34 = *(v0 + 144);
      v50 = *(v0 + 152);
      goto LABEL_35;
    }

    v36 = *(v0 + 152);
    OUTLINED_FUNCTION_15_71();
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v36;
    sub_216E685D0(v21);
    OUTLINED_FUNCTION_19_57();
    if (!v29)
    {
      v39 = v37;
      v40 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACADB0);
      if (sub_21700F554())
      {
        v41 = sub_216E685D0(v21);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_22;
        }

        v39 = v41;
      }

      v50 = *(v0 + 16);
      v53 = *(v0 + 104);
      if (v40)
      {
        *(v50[7] + 8 * v39) = v1;

        sub_216E53C00(v53);
      }

      else
      {
        OUTLINED_FUNCTION_11_85(&v50[v39 >> 6]);
        *(v50[6] + v39) = v21;
        *(v50[7] + 8 * v39) = v1;
        sub_216E53C00(v53);
        v54 = v50[2];
        v29 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v29)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v50[2] = v55;
      }

      v48 = *(v0 + 160);
      v34 = *(v0 + 144);
      v49 = v50;
LABEL_35:
      *(v0 + 160) = v48;
      *(v0 + 168) = v49;
      *(v0 + 144) = v34;
      *(v0 + 152) = v50;
      swift_task_alloc();
      OUTLINED_FUNCTION_52();
      *(v0 + 176) = v56;
      *v56 = v57;
      OUTLINED_FUNCTION_5_133();
      OUTLINED_FUNCTION_13_2();

      return MEMORY[0x2822002E8]();
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = *(v0 + 144);
  OUTLINED_FUNCTION_15_71();
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 24) = v26;
  sub_216E685D0(v21);
  OUTLINED_FUNCTION_19_57();
  if (v29)
  {
    __break(1u);
    goto LABEL_39;
  }

  v30 = v27;
  v31 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACADB0);
  if ((sub_21700F554() & 1) == 0)
  {
LABEL_16:
    v34 = *(v0 + 24);
    v35 = *(v0 + 104);
    if (v31)
    {
      *(v34[7] + 8 * v30) = v1;

      sub_216E53C00(v35);
LABEL_28:
      v49 = *(v0 + 168);
      v50 = *(v0 + 152);
      v48 = v34;
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_11_85(&v34[v30 >> 6]);
    *(v34[6] + v30) = v21;
    *(v34[7] + 8 * v30) = v1;
    sub_216E53C00(v35);
    v51 = v34[2];
    v29 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (!v29)
    {
      v34[2] = v52;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  v32 = sub_216E685D0(v21);
  if ((v31 & 1) == (v33 & 1))
  {
    v30 = v32;
    goto LABEL_16;
  }

LABEL_22:
  OUTLINED_FUNCTION_13_2();

  return sub_21700F824();
}

uint64_t sub_216E51CA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACADB8);
  v18 = sub_2170080D4();
  v10 = *(v18 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_217013D90;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x277CDF3C0], v18);
  v15(v14 + v11, *MEMORY[0x277CDF3D0], v18);
  v16 = 3;
  while (--v16)
  {
    sub_216E51E30(v14, a2, v9, a3, a4, a5);
    v14 += v11;
    if (v5)
    {

      __break(1u);
      break;
    }
  }

  swift_setDeallocating();
  return sub_2169FAD60();
}

uint64_t sub_216E51E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a3;
  v26 = a2;
  v8 = sub_2170080D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22[-v13];
  sub_21700EA44();
  v15 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v23;
  (*(v9 + 32))(v18 + v16, v11, v8);
  v19 = (v18 + v17);
  v20 = v24;
  *v19 = a4;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  sub_21700DF14();
  sub_21700DF14();
  sub_216E52608(v14, &unk_217067B90, v18);
  return sub_21669987C(v14, &unk_27CABFAC0);
}

uint64_t sub_216E52058(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 72) = a4;
  *(v8 + 16) = a1;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACADC0);
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216E52104, 0, 0);
}

uint64_t sub_216E52104()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 72);
  v4 = *(*(v0 + 56) + 48);
  *v1 = v3;
  v5 = sub_2170080D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  (v7)(&v1[v4], v2, v5);
  v8 = (*(v6 + 88))(&v1[v4], v5);
  v9 = *MEMORY[0x277CDF3D0];
  if (!v3)
  {
    if (v8 == v9)
    {
      v11 = *(v0 + 40);
    }

    else
    {
      if (v8 != *MEMORY[0x277CDF3C0])
      {
        goto LABEL_20;
      }

      v11 = *(v0 + 32);
    }

    v13 = *(v0 + 16);
    v18 = type metadata accessor for ReplayGradientImageGenerator.GradientImageData();
    v19 = OUTLINED_FUNCTION_6_115(v18);
    v7(v19);
    v16 = sub_216E52410(v11);
    *v13 = 0;
LABEL_19:
    *&v13[*(v4 + 24)] = v16;
    goto LABEL_21;
  }

  if (v3 != 1)
  {
    if (v8 == v9)
    {
      v12 = *(v0 + 40);
    }

    else
    {
      if (v8 != *MEMORY[0x277CDF3C0])
      {
        goto LABEL_20;
      }

      v12 = *(v0 + 32);
    }

    v13 = *(v0 + 16);
    v20 = type metadata accessor for ReplayGradientImageGenerator.GradientImageData();
    v21 = OUTLINED_FUNCTION_6_115(v20);
    v7(v21);
    v16 = sub_216E52410(v12);
    v17 = 2;
    goto LABEL_18;
  }

  if (v8 == v9)
  {
    v10 = *(v0 + 40);
LABEL_11:
    v13 = *(v0 + 16);
    v14 = type metadata accessor for ReplayGradientImageGenerator.GradientImageData();
    v15 = OUTLINED_FUNCTION_6_115(v14);
    v7(v15);
    OUTLINED_FUNCTION_9_96();
    v16 = sub_216E52410(v10);
    v17 = 1;
LABEL_18:
    *v13 = v17;
    goto LABEL_19;
  }

  if (v8 == *MEMORY[0x277CDF3C0])
  {
    v10 = *(v0 + 32);
    goto LABEL_11;
  }

LABEL_20:
  v30 = *(v0 + 64);
  v22 = *(v0 + 40);
  v23 = *(v0 + 72);
  v24 = *(v0 + 16);
  v25 = *(v0 + 24);
  v26 = type metadata accessor for ReplayGradientImageGenerator.GradientImageData();
  (v7)(&v24[*(v26 + 20)], v25, v5);
  OUTLINED_FUNCTION_9_96();
  v27 = sub_216E52410(v22);
  *v24 = v23;
  *&v24[*(v26 + 24)] = v27;
  sub_21669987C(v30, &qword_27CACADC0);
LABEL_21:

  OUTLINED_FUNCTION_3();

  return v28();
}

uint64_t sub_216E52410(uint64_t a1)
{
  v3 = sub_21700ADC4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  sub_2170091B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  (*(v13 + 104))(v12 - v11, *MEMORY[0x277CE00F0]);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  sub_21700DF14();
  sub_21700ADE4();
  (*(v5 + 104))(v9, *MEMORY[0x277CE0FE0], v3);
  v15 = sub_21700AE04();

  (*(v5 + 8))(v9, v3);
  return v15;
}

uint64_t sub_216E52608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_2166975A4(a1, v19 - v9);
  v11 = sub_21700EA74();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_21669987C(v10, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_21700E9B4();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  type metadata accessor for ReplayGradientImageGenerator.GradientImageData();
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t sub_216E52840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2170088C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2170088A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217008894();
  sub_2170088F4();
  result = (*(v9 + 8))(v11, v8);
  if (*(a3 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {

    sub_21700AD04();

    sub_216E53C5C(v15);
    sub_217008854();
    sub_2170088B4();
    sub_217008884();
    v13 = *(v5 + 8);
    v13(v7, v4);
    v14[1] = a3;
    sub_217008854();
    sub_216998500(v15);

    sub_21700AD04();

    sub_216E53F04(v16, 0.0, 0.0, 408.362606, 1456.61091);
    sub_217008854();
    sub_2170088B4();
    sub_217008884();
    v13(v7, v4);
    sub_217008854();
    sub_216998500(v16);

    sub_21700AD04();

    sub_216E54178(v17, 0.0, 0.0, 310.98017, 2037.49818);
    sub_217008854();
    sub_2170088B4();
    sub_217008884();
    v13(v7, v4);
    sub_217008854();
    sub_216998500(v17);

    sub_21700AD04();

    sub_216E543EC(v18, 0.0, 0.0, 704.226629, 437.149091);
    sub_217008854();
    sub_2170088B4();
    sub_217008884();
    v13(v7, v4);
    sub_217008854();
    sub_216998500(v18);

    sub_21700AD04();

    sub_216E54600(v19, 0.0, 0.0, 646.640227, 570.996364);
    sub_217008854();
    sub_2170088B4();
    sub_217008884();
    v13(v7, v4);
    sub_217008854();
    sub_216998500(v19);

    sub_21700AD04();

    sub_216E54820(v20, 0.0, 0.0, 813.25779, 269.12);
    sub_217008854();
    sub_2170088B4();
    sub_217008884();
    v13(v7, v4);
    sub_217008854();
    sub_216998500(v20);

    sub_21700ACF4();
    sub_21700AD04();

    sub_216E549B4(v21, 0.0, 0.0, 733.665722, 776.349091);
    sub_217008854();
    sub_2170088B4();
    sub_217008884();
    v13(v7, v4);
    sub_217008854();
    sub_216998500(v21);
  }

  return result;
}

uint64_t sub_216E52EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 < 2)
  {
    __break(1u);
  }

  else
  {

    sub_21700AD04();

    MEMORY[0x28223BE20](v4);
    sub_217008904();

    if (v3 != 2)
    {

      sub_21700AD04();

      MEMORY[0x28223BE20](v6);
      sub_217008904();

      MEMORY[0x28223BE20](v7);

      sub_217008904();

      sub_21700AD04();

      MEMORY[0x28223BE20](v8);
      sub_217008904();

      sub_21700AD04();

      MEMORY[0x28223BE20](v9);
      sub_217008904();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216E53220(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, void (*a8)(void *__return_ptr, uint64_t, double, double, double, double))
{
  v11 = sub_2170088C4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = sub_2170088A4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  sub_217008894();
  sub_2170088F4();
  (*(v20 + 8))(v24, v18);
  v25 = sub_217008854();
  a8(v27, v25, 0.0, 0.0, a4, a5);
  sub_2170088B4();
  sub_217008884();
  sub_216998500(v27);
  return (*(v13 + 8))(v17, v11);
}

uint64_t sub_216E5345C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = sub_2170088C4();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2170088A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_217008894();
  sub_2170088F4();
  result = (*(v8 + 8))(v10, v7);
  v12 = *(a3 + 16);
  if (v12)
  {

    sub_21700AD04();

    sub_216E551B4(v16, 0.0, 0.0, 154.521246, 155.971671);
    sub_217008854();
    sub_2170088B4();
    sub_217008884();
    v13 = *(v4 + 8);
    v13(v6, v21);
    sub_217008854();
    sub_216998500(v16);

    if (v12 >= 3)
    {

      sub_21700AD04();

      sub_216E54FAC(v17, 0.0, 0.0, 127.892351, 155.971671);
      sub_217008854();
      sub_2170088B4();
      sub_217008884();
      v14 = v21;
      v13(v6, v21);
      sub_217008854();
      sub_216998500(v17);

      sub_21700AD04();

      sub_216E54DA4(v18, 0.0, 0.0, 216.186969, 120.997167);
      sub_217008854();
      sub_2170088B4();
      sub_217008884();
      v13(v6, v14);
      sub_217008854();
      sub_216998500(v18);

      sub_21700AD04();

      sub_216E54B9C(v19, 0.0, 0.0, 228.419263, 60.6912181);
      sub_217008854();
      sub_2170088B4();
      sub_217008884();
      v13(v6, v14);
      sub_217008854();
      sub_216998500(v19);

      sub_216E54B9C(v20, 0.0, 0.0, 61.427762, 259.858357);
      sub_217008854();
      sub_2170088B4();
      sub_217008884();
      v13(v6, v14);
      sub_217008854();
      sub_216998500(v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_216E53974()
{

  return v0;
}

uint64_t sub_216E539D4()
{
  sub_216E53974();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t type metadata accessor for ReplayGradientImageGenerator.GradientImageData()
{
  result = qword_27CACADC8;
  if (!qword_27CACADC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E53A88(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2166AB4A4;

  return sub_216E5142C(a1, a2, v6, v7, v8);
}

unint64_t sub_216E53B48()
{
  result = qword_27CACADA8;
  if (!qword_27CACADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACADA8);
  }

  return result;
}

uint64_t sub_216E53B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayGradientImageGenerator.GradientImageData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E53C00(uint64_t a1)
{
  v2 = type metadata accessor for ReplayGradientImageGenerator.GradientImageData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_216E53C5C@<D0>(uint64_t a1@<X8>)
{
  sub_217009F84();
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F44();
  sub_217009F64();
  sub_217009F24();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_216E53F04@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F44();
  sub_217009F44();
  sub_217009F44();
  sub_217009F64();
  sub_217009F44();
  sub_217009F64();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_216E54178@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F44();
  sub_217009F44();
  sub_217009F44();
  sub_217009F64();
  sub_217009F44();
  sub_217009F64();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_216E543EC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F44();
  sub_217009F64();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_216E54600@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F44();
  sub_217009F64();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_216E54820@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F44();
  sub_217009F44();
  sub_217009F64();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_216E549B4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F44();
  sub_217009F44();
  sub_217009F64();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_216E54B9C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F24();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_216E54DA4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F24();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_216E54FAC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F24();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_216E551B4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_217009F84();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_217009F34();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F64();
  sub_217009F24();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_216E55AB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2170080D4() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + 32);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2166AB4A0;

  return sub_216E52058(a1, v9, v10, v15, v1 + v6, v12, v13, v14);
}

uint64_t sub_216E55C08(uint64_t a1)
{
  v4 = *(v1 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v2 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2166AB4A4;

  return sub_2166B27E8(a1, v4);
}

_BYTE *storeEnumTagSinglePayload for ReplayGradientImageGenerator.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216E55F18()
{
  result = sub_2170080D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216E55FA0()
{
  result = qword_27CACADD8;
  if (!qword_27CACADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACADE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACADD8);
  }

  return result;
}

unint64_t sub_216E56008()
{
  result = qword_27CACADE8;
  if (!qword_27CACADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACADE8);
  }

  return result;
}

uint64_t type metadata accessor for AddRecentSearchAction()
{
  result = qword_280E3AD00;
  if (!qword_280E3AD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E5610C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v48 = a3;
  v4 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v46 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v45 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v49 = v23;
  v50 = v22;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v16 + 16);
  v53 = a1;
  v27(v21, a1, v14, v24);
  v28 = *(v8 + 16);
  v52 = v6;
  v28(v13, v54, v6);
  v29 = v51;
  sub_21700D224();
  if (v29)
  {
    (*(v8 + 8))(v54, v52);
    return (*(v16 + 8))(v53, v14);
  }

  else
  {
    v44 = v8;
    v51 = v14;
    v31 = v48;
    (*(v49 + 32))(v48, v26, v50);
    v32 = v45;
    sub_21700CE04();
    v33 = v46;
    v28(v46, v54, v52);
    v34 = v47;
    ContentDescriptor.init(deserializing:using:)(v32, v33, v35, v36, v37, v38, v39, v40, v44, v45, SWORD2(v45), SBYTE6(v45), SHIBYTE(v45));
    v41 = OUTLINED_FUNCTION_1_203();
    v42(v41);
    (*(v16 + 8))(v53, v51);
    v43 = type metadata accessor for AddRecentSearchAction();
    return sub_2168ED900(v34, v31 + *(v43 + 20));
  }
}

uint64_t sub_216E56520@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for VerticalArtworkListItemView();
  v3 = a1 + *(v2 + 20);
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = *(v2 + 24);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_204();
  OUTLINED_FUNCTION_8();
  return sub_216E57E50();
}

uint64_t sub_216E565B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v44 = v4;
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v46 = type metadata accessor for VerticalArtworkListItemView();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACADF0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = (&v43 - v13);
  type metadata accessor for VerticalArtworkListItem();
  sub_2166A6EA4();
  v15 = v11[11];
  v16 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v14 + v15, 1, 1, v16);
  sub_216E57DF8();
  v17 = swift_allocObject();
  sub_216E57E50();
  v18 = v11[12];
  *(v14 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v19 = v14 + v11[13];
  *v19 = swift_getKeyPath();
  v19[40] = 0;
  v14[5] = sub_216E57D88;
  v14[6] = v17;
  v14[7] = 0;
  v14[8] = 0;
  v20 = *MEMORY[0x277CDF9A8];
  v21 = sub_217008844();
  OUTLINED_FUNCTION_34();
  (*(v22 + 104))(v9, v20, v21);
  sub_216E58220(&qword_280E2B340, MEMORY[0x277CDFA28]);
  result = sub_21700E494();
  if (result)
  {
    sub_2166D9530(&qword_27CACADF8, &qword_27CACADF0);
    sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_216697664(v9, &qword_27CAB75D0);
    sub_216697664(v14, &qword_27CACADF0);
    v24 = v2 + *(v46 + 20);
    v25 = *v24;
    if (*(v24 + 8) != 1)
    {

      sub_21700ED94();
      v26 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v25, 0);
      v27 = v45;
      v28 = *(v44 + 8);
      v28(v6, v45);

      sub_21700ED94();
      v29 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v25, 0);
      v28(v6, v27);
    }

    sub_216E57044();
    sub_21700B3B4();
    sub_2170083C4();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE00);
    v31 = v48;
    v32 = (v48 + *(v30 + 36));
    v33 = v50;
    *v32 = v49;
    v32[1] = v33;
    v32[2] = v51;
    v34 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE08) + 36));
    v35 = *(sub_217008B44() + 20);
    v36 = *MEMORY[0x277CE0118];
    sub_217009294();
    OUTLINED_FUNCTION_34();
    (*(v37 + 104))(&v34[v35], v36);
    __asm { FMOV            V0.2D, #14.0 }

    *v34 = _Q0;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438);
    *&v34[*(result + 36)] = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216E56BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170090F4();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700C4B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217007474();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VerticalArtworkListItem();
  (*(v8 + 16))(v10, a1 + *(v15 + 28), v7);
  v16 = a1 + *(type metadata accessor for VerticalArtworkListItemView() + 20);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    sub_21700ED94();
    v41 = a2;
    v18 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v17, 0);
    v39 = v12;
    v40 = v11;
    v19 = *(v42 + 8);
    v19(v6, v4);

    sub_21700ED94();
    v20 = sub_217009C34();
    sub_217007BC4();

    a2 = v41;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v17, 0);
    v19(v6, v4);
    v12 = v39;
    v11 = v40;
  }

  sub_216E57044();
  sub_217007484();
  sub_216E57044();
  sub_217007404();
  (*(v12 + 8))(v14, v11);
  v21 = sub_21700B3B4();
  v23 = v22;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE10) + 36);
  *v24 = sub_2170093B4();
  *(v24 + 8) = 0x4030000000000000;
  *(v24 + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE18);
  sub_216E5737C(a1, (v24 + *(v25 + 44)));
  v26 = sub_217009C74();
  sub_217007F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE20) + 36);
  *v35 = v26;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE28);
  v37 = (v24 + *(result + 36));
  *v37 = v21;
  v37[1] = v23;
  return result;
}

double sub_216E57044()
{
  v0 = sub_2170090F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  type metadata accessor for VerticalArtworkListItemView();
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2167A4788();
  }

  else
  {
    sub_21700ED94();
    v11 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v0);
  }

  v12 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    goto LABEL_7;
  }

  sub_2166A6EA4();
  v13 = *(v12 - 8);
  v14 = 1.0;
  if ((*(v13 + 88))(v7, v12) != *MEMORY[0x277CE0558])
  {
    (*(v13 + 8))(v7, v12);
LABEL_7:
    v14 = 2.28571429;
  }

  sub_216697664(v10, &qword_27CAB8600);
  return v14;
}

uint64_t sub_216E5737C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_217009254();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE30);
  MEMORY[0x28223BE20](v5);
  v7 = v79 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v88 = v79 - v12;
  v13 = type metadata accessor for VerticalArtworkListItem();
  v14 = (a1 + *(v13 + 24));
  v15 = *v14;
  v16 = v14[1];
  sub_21700DF14();
  v17 = sub_216E579E8(v15, v16);
  v19 = v18;
  v89 = v21;
  v90 = v20;
  if (*(a1 + *(v13 + 36) + 8))
  {
    v86 = a2;
    sub_21700ADB4();
    v22 = sub_21700A184();
    v82 = v23;
    v83 = v19;
    v80 = v24;
    v79[1] = v25;
    sub_217009244();
    sub_217009234();
    sub_217009224();
    sub_217009234();
    sub_217009224();
    sub_217009234();
    sub_217009274();
    v26 = sub_21700A154();
    v28 = v27;
    v87 = v5;
    v30 = v29;
    v85 = v10;
    v31 = v82;
    v32 = sub_21700A064();
    v34 = v33;
    v84 = v17;
    v36 = v35;
    v81 = v37;
    sub_21678817C(v26, v28, v30 & 1);

    sub_21678817C(v22, v31, v80 & 1);

    v91 = sub_21700ACF4();
    v38 = sub_21700A044();
    v40 = v39;
    LOBYTE(v31) = v41;
    sub_21678817C(v32, v34, v36 & 1);

    sub_217009E54();
    v42 = sub_21700A094();
    v44 = v43;
    LOBYTE(v32) = v45;

    sub_21678817C(v38, v40, v31 & 1);

    sub_217009DE4();
    v82 = sub_217009FA4();
    v81 = v46;
    LOBYTE(v31) = v47;
    v49 = v48;
    sub_21678817C(v42, v44, v32 & 1);

    LOBYTE(v42) = sub_217009C74();
    sub_217007F24();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    LOBYTE(v28) = v31 & 1;
    v93 = v31 & 1;
    v92 = 0;
    LOBYTE(v31) = sub_217009CE4();
    sub_217007F24();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    LOBYTE(v91) = 0;
    sub_21700ACC4();
    v66 = sub_21700AD04();

    v67 = &v7[*(v87 + 36)];
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE48);
    v69 = *(v68 + 52);
    v70 = *MEMORY[0x277CE0118];
    v71 = sub_217009294();
    v72 = v67 + v69;
    a2 = v86;
    (*(*(v71 - 8) + 104))(v72, v70, v71);
    *v67 = v66;
    *(v67 + *(v68 + 56)) = 256;
    v5 = v87;
    v73 = v81;
    *v7 = v82;
    *(v7 + 1) = v73;
    v7[16] = v28;
    *(v7 + 3) = v49;
    v10 = v85;
    v7[32] = v42;
    v17 = v84;
    *(v7 + 5) = v51;
    *(v7 + 6) = v53;
    *(v7 + 7) = v55;
    *(v7 + 8) = v57;
    v7[72] = 0;
    v7[80] = v31;
    v19 = v83;
    *(v7 + 11) = v59;
    *(v7 + 12) = v61;
    *(v7 + 13) = v63;
    *(v7 + 14) = v65;
    v7[120] = 0;
    v74 = v88;
    sub_2167A4788();
    v75 = 0;
  }

  else
  {
    v75 = 1;
    v74 = v88;
  }

  __swift_storeEnumTagSinglePayload(v74, v75, 1, v5);
  sub_2166A6EA4();
  *a2 = v17;
  a2[1] = v19;
  v77 = v89;
  v76 = v90;
  a2[2] = v90;
  a2[3] = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE40);
  sub_2166A6EA4();
  sub_2167770D0(v17, v19, v76, v77);
  sub_216697664(v74, &qword_27CACAE38);
  sub_216697664(v10, &qword_27CACAE38);
  return sub_2167C4DF0(v17, v19, v76, v77);
}

uint64_t sub_216E579E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21680A15C();
    v3 = v2;

    sub_217009264();
    v4 = sub_21700A154();
    v6 = v5;
    v8 = v7;
    v42 = *(v3 + 16);
    sub_216777114(v4, v5, v7 & 1);
    result = sub_21700DF14();
    v10 = 0;
    v43 = v3;
    v11 = (v3 + 48);
    v40 = v6;
    v41 = v4;
    v12 = v6;
    v39 = v8;
    for (i = v8; ; i = v38)
    {
      if (v42 == v10)
      {

        sub_21678817C(v41, v40, v39 & 1);

        return v4;
      }

      if (v10 >= *(v43 + 16))
      {
        break;
      }

      v46 = i;
      v47 = v11;
      v48 = v10;
      v49 = v12;
      v50 = v4;
      v14 = *v11;
      sub_2167B2E14();
      swift_bridgeObjectRetain_n();
      v15 = sub_21700A174();
      v17 = v16;
      v19 = v18;
      sub_217009D34();
      v20 = sub_21700A094();
      v22 = v21;
      v24 = v23;

      sub_21678817C(v15, v17, v19 & 1);

      sub_21700ACF4();
      if ((v14 & 1) == 0)
      {
        sub_21700AD04();
      }

      v25 = sub_21700A044();
      v27 = v26;
      v29 = v28;
      sub_21678817C(v20, v22, v24 & 1);

      if (v14)
      {
        sub_217009D94();
      }

      else
      {
        sub_217009DE4();
      }

      v30 = sub_217009FA4();
      v32 = v31;
      v34 = v33;
      sub_21678817C(v25, v27, v29 & 1);

      v35 = sub_21700A064();
      v44 = v36;
      v45 = v35;
      v38 = v37;

      sub_21678817C(v30, v32, v34 & 1);

      sub_21678817C(v50, v49, v46 & 1);

      v11 = v47 + 24;
      v10 = v48 + 1;
      v12 = v44;
      v4 = v45;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for VerticalArtworkListItemView()
{
  result = qword_280E32AA0;
  if (!qword_280E32AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E57D88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VerticalArtworkListItemView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216E56BF4(v4, a1);
}

uint64_t sub_216E57DF8()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216E57E50()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

void sub_216E57ED0()
{
  type metadata accessor for VerticalArtworkListItem();
  if (v0 <= 0x3F)
  {
    sub_2167B8000();
    if (v1 <= 0x3F)
    {
      sub_2167FCA6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_216E57F6C()
{
  result = qword_27CACAE50;
  if (!qword_27CACAE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAE08);
    sub_216E58024();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAE50);
  }

  return result;
}

unint64_t sub_216E58024()
{
  result = qword_27CACAE58;
  if (!qword_27CACAE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAE00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACADF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
    sub_2166D9530(&qword_27CACADF8, &qword_27CACADF0);
    sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAE58);
  }

  return result;
}

uint64_t sub_216E581C8(uint64_t a1)
{
  result = sub_216E58220(qword_280E32AB8, type metadata accessor for VerticalArtworkListItemView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E58220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216E582CC()
{
  OUTLINED_FUNCTION_33();
  *(v1 + 128) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_217007C24();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_2(v4);
  *(v1 + 40) = v5;
  *(v1 + 48) = OUTLINED_FUNCTION_80();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
  *(v1 + 56) = v6;
  OUTLINED_FUNCTION_36(v6);
  *(v1 + 64) = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8);
  OUTLINED_FUNCTION_36(v7);
  *(v1 + 72) = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  *(v1 + 80) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v1 + 88) = v9;
  *(v1 + 96) = v8;

  return MEMORY[0x2822009F8](sub_216E5840C, v9, v8);
}

uint64_t sub_216E5840C()
{
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 128);
  v3 = *(v0 + 16);
  v4 = __swift_project_value_buffer(*(v0 + 56), qword_280E73E38);
  sub_216E59EE4(v4, v1);
  v5 = OUTLINED_FUNCTION_14_77();
  v6(v5);
  v7 = sub_216E505E0(v2 & 1 | 4u);
  OUTLINED_FUNCTION_7_109(v7, v8, v9);
  sub_21669987C(v1, &qword_27CAB82F0);
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v3;
  OUTLINED_FUNCTION_38_0(MEMORY[0x277D2A610]);
  v15 = v11;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_216E58574;
  v13 = OUTLINED_FUNCTION_9_97();

  return v15(v13);
}

uint64_t sub_216E58574()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 96);
  v7 = *(v1 + 88);
  if (v0)
  {
    v8 = sub_216E58754;
  }

  else
  {
    v8 = sub_216E586B8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216E586B8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 72);

  sub_216BD4F2C();
  sub_21669987C(v1, &qword_27CAB82E8);

  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_216E58754()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 72);

  sub_21669987C(v1, &qword_27CAB82E8);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216E587F0()
{
  OUTLINED_FUNCTION_33();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 136) = v3;
  *(v1 + 16) = v4;
  v5 = sub_217007C24();
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_2(v5);
  *(v1 + 48) = v6;
  *(v1 + 56) = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
  *(v1 + 64) = v7;
  OUTLINED_FUNCTION_36(v7);
  *(v1 + 72) = OUTLINED_FUNCTION_80();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8);
  OUTLINED_FUNCTION_36(v8);
  *(v1 + 80) = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  *(v1 + 88) = sub_21700EA24();
  v10 = sub_21700E9B4();
  *(v1 + 96) = v10;
  *(v1 + 104) = v9;

  return MEMORY[0x2822009F8](sub_216E58934, v10, v9);
}

uint64_t sub_216E58934()
{
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 136);
  v15 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = __swift_project_value_buffer(*(v0 + 64), qword_280E73E38);
  sub_216E59EE4(v4, v1);
  v5 = OUTLINED_FUNCTION_14_77();
  v6(v5);
  v7 = sub_216E505E0(v2 & 1 | 4u);
  OUTLINED_FUNCTION_7_109(v7, v8, v9);
  sub_21669987C(v1, &qword_27CAB82F0);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v15;
  OUTLINED_FUNCTION_38_0(MEMORY[0x277D2A610]);
  v16 = v11;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_216E58AA8;
  v13 = OUTLINED_FUNCTION_9_97();

  return v16(v13);
}

uint64_t sub_216E58AA8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216E58C88;
  }

  else
  {
    v8 = sub_216E58BEC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216E58BEC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 80);

  sub_216BD4F2C();
  sub_21669987C(v1, &qword_27CAB82E8);

  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_216E58C88()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 80);

  sub_21669987C(v1, &qword_27CAB82E8);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216E58D24()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_217007C24();
  v1[4] = v3;
  OUTLINED_FUNCTION_2(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8);
  OUTLINED_FUNCTION_36(v5);
  v1[7] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v1[8] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v1[9] = v7;
  v1[10] = v6;

  return MEMORY[0x2822009F8](sub_216E58E30, v7, v6);
}

uint64_t sub_216E58E30()
{
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
  __swift_project_value_buffer(v4, qword_280E73E38);
  v5 = OUTLINED_FUNCTION_17_69();
  v6(v5);
  sub_216BD7948(v1, "Apply.UpdateMappingIdentifiers", 30, 2, v2);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *(v7 + 16) = v3;
  OUTLINED_FUNCTION_38_0(MEMORY[0x277D2A610]);
  v12 = v8;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_216E58F80;
  v10 = OUTLINED_FUNCTION_9_97();

  return v12(v10);
}

uint64_t sub_216E58F80()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 80);
  v7 = *(v1 + 72);
  if (v0)
  {
    v8 = sub_216E5914C;
  }

  else
  {
    v8 = sub_216E590C4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216E590C4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);

  sub_216BD4F2C();
  sub_21669987C(v1, &qword_27CAB82E8);

  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_216E5914C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);

  sub_21669987C(v1, &qword_27CAB82E8);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216E591D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE60);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE68);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_217006974();
  sub_2166D9530(&qword_280E484E8, &qword_27CACAE60);
  sub_217007E64();
  (*(v2 + 8))(v5, v0);
  sub_2166D9530(&qword_280E48580, &qword_27CACAE68);
  v12 = sub_217007E24();
  (*(v8 + 8))(v11, v6);
  return v12;
}

void *sub_216E593C8()
{
  v1 = v0;
  v2 = sub_217006A74();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  v1[4] = 0;
  sub_217006A64();
  v8 = sub_217006944();
  (*(v4 + 8))(v7, v2);
  v1[2] = v8;
  return v1;
}

uint64_t sub_216E594A8(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_21700EA34();
  v2[3] = sub_21700EA24();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_216E59568;

  return MEMORY[0x282189900](a2);
}

uint64_t sub_216E59568()
{
  OUTLINED_FUNCTION_31();
  *(*v1 + 40) = v0;

  v3 = sub_21700E9B4();
  if (v0)
  {
    v4 = sub_216B8CDB8;
  }

  else
  {
    v4 = sub_216B8CD60;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}