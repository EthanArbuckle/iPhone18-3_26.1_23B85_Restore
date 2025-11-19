id _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds17atLeastOneKeyword14hideInDiscover14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySSGSbSgSayAA13SourceProfileOGSgtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v39 = a1;
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v36 - v9;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  v12 = malloc_size;
  v13 = MEMORY[0x277D837D0];
  if (v10)
  {
    v36 = a4;
    v37 = a3;
    v41 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v14 = (a2 + 40);
    v40 = xmmword_2287CCFF0;
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v17 = swift_allocObject();
      *(v17 + 16) = v40;
      *(v17 + 56) = v13;
      v18 = sub_2287043F8();
      *(v17 + 32) = 0x7364726F7779656BLL;
      *(v17 + 40) = 0xE800000000000000;
      *(v17 + 96) = v13;
      *(v17 + 104) = v18;
      *(v17 + 64) = v18;
      *(v17 + 72) = v16;
      *(v17 + 80) = v15;
      swift_bridgeObjectRetain_n();
      sub_2287CB550();

      sub_2287CBA90();
      v19 = *(v41 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      v14 += 2;
      --v10;
    }

    while (v10);
    v20 = v41;
    LOBYTE(a3) = v37;
    v12 = malloc_size;
    a4 = v36;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v41 = v11;
  if (v20 >> 62)
  {
    if (sub_2287CB920())
    {
      goto LABEL_8;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  v21 = sub_2287CB390();

  v22 = [objc_opt_self() orPredicateWithSubpredicates_];

  MEMORY[0x22AABEA50]();
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v33 = v12;
    v34 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
    v12 = v33;
  }

  sub_2287CB420();
LABEL_13:
  v23 = sub_2287C9590();
  v24 = v38;
  (*(*(v23 - 8) + 56))(v38, 1, 1, v23);
  _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(v39, 0, v24, a4);
  v25 = sub_22870455C(v24);
  MEMORY[0x22AABEA50](v25);
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v31 = v12;
    v32 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
    v12 = v31;
  }

  sub_2287CB420();
  if (a3 != 2)
  {
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = *(v12 + 255);
    *(v26 + 56) = v13;
    *(v26 + 64) = sub_2287043F8();
    strcpy((v26 + 32), "hideInDiscover");
    *(v26 + 47) = -18;
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    *(v26 + 96) = sub_228703004(0, &qword_280DE39C0, 0x277CCABB0);
    *(v26 + 104) = sub_228717DA8(&qword_280DDFEA8, &qword_280DE39C0, 0x277CCABB0);
    *(v26 + 72) = v27;
    sub_2287CB550();
    MEMORY[0x22AABEA50]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2287CB3E0();
    }

    sub_2287CB420();
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  v28 = sub_2287CB390();

  v29 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v29;
}

uint64_t sub_228717DA8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_228703004(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228717DF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_228717E04()
{
  if (!qword_280DE1298)
  {
    sub_228703004(255, &qword_280DE39C0, 0x277CCABB0);
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1298);
    }
  }
}

unint64_t sub_228717E6C()
{
  result = qword_280DE1290;
  if (!qword_280DE1290)
  {
    sub_228717E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1290);
  }

  return result;
}

uint64_t sub_228717EC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  v5 = sub_2287C9E70();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_228717F50(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2287C9E70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_228718068@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  v4 = sub_2287C9E70();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2287180F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  v4 = sub_2287C9E70();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2287181E0()
{
  v1 = v0;
  v2 = sub_2287C9ED0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v2);
  sub_2287C9E80();
  (*(v3 + 8))(v6, v2);
  sub_2287010E4(v1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v13);
  v14 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue);
  v7 = v14;
  sub_228718330();
  v8 = v7;
  v9 = sub_2287CAF40();
  sub_228718384(v12);
  return v9;
}

unint64_t sub_228718330()
{
  result = qword_280DE0DC0[0];
  if (!qword_280DE0DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DE0DC0);
  }

  return result;
}

uint64_t GenerationOperationToGeneratorAdaptor.__allocating_init(queue:pluginInfo:domain:context:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue) = a1;
  v12 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  v13 = sub_2287C9E70();
  (*(*(v13 - 8) + 32))(v11 + v12, a3, v13);
  v14 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context;
  v15 = sub_2287C9ED0();
  (*(*(v15 - 8) + 32))(v11 + v14, a4, v15);
  sub_228706AD4(a2, v11 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo);
  return v11;
}

uint64_t GenerationOperationToGeneratorAdaptor.init(queue:pluginInfo:domain:context:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue) = a1;
  v8 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  v9 = sub_2287C9E70();
  (*(*(v9 - 8) + 32))(v4 + v8, a3, v9);
  v10 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context;
  v11 = sub_2287C9ED0();
  (*(*(v11 - 8) + 32))(v4 + v10, a4, v11);
  sub_228706AD4(a2, v4 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo);
  return v4;
}

uint64_t GenerationOperationToGeneratorAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo));

  return v0;
}

uint64_t GenerationOperationToGeneratorAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo));

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228718750()
{
  v1 = sub_2287C9ED0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *v0;
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v1);
  sub_2287C9E80();
  (*(v2 + 8))(v5, v1);
  sub_2287010E4(v6 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v13);
  v14 = *(v6 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue);
  v7 = v14;
  sub_228718330();
  v8 = v7;
  v9 = sub_2287CAF40();
  sub_228718384(v12);
  return v9;
}

uint64_t sub_2287188A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  v5 = sub_2287C9E70();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for GenerationOperationToGeneratorAdaptor()
{
  result = qword_280DE21C0;
  if (!qword_280DE21C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228718984()
{
  result = sub_2287C9E70();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2287C9ED0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_228718B24(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_2287CB820();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_228718C1C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LegacyFeedItemContextChangePublisher.Inner();
  (*(v5 + 16))(v8, a1, a2);
  sub_2287010E4(v2, &v16);
  sub_2287010E4(v2 + 40, v15);
  v10 = *(v2 + 80);
  v11 = *(v9 + 48);
  v12 = *(v9 + 52);
  swift_allocObject();
  v13 = sub_228718FD4(v8, &v16, v15, v10);
  v17 = v9;
  WitnessTable = swift_getWitnessTable();
  *&v16 = v13;
  sub_2287CAC80();
  return __swift_destroy_boxed_opaque_existential_0(&v16);
}

char *sub_228718D88(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_228718FD4(a1, a2, a3, a4);
}

uint64_t sub_228718DEC()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    sub_2287010E4(v0 + v1[14], v8);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = v1[10];
    v5[3] = v1[11];
    v5[4] = v4;
    type metadata accessor for CommitRedirectingFeedItemContext();
    v3 = swift_allocObject();
    sub_228706AD4(v8, v3 + 16);
    *(v3 + 56) = sub_22871AAD0;
    *(v3 + 64) = v5;
    v6 = *(v0 + v2);
    *(v0 + v2) = v3;
  }

  return v3;
}

uint64_t sub_228718F28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for LegacyFeedItemContextChangePublisher.Inner();
    swift_getWitnessTable();
    sub_2287CA070();
  }

  return result;
}

char *sub_228718FD4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v26 = a1;
  v6 = *v4;
  v7 = *(v6 + 80);
  v27 = sub_2287CB820();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v26 - v10;
  v12 = *(v6 + 96);
  v13 = *(v7 - 8);
  v14 = *(v13 + 56);
  v14(&v5[v12], 1, 1, v7);
  v15 = *(*v5 + 104);
  v16 = sub_2287CA0F0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v5[v15] = sub_2287CA0E0();
  v19 = *(*v5 + 136);
  v20 = sub_2287C9AC0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v5[v19] = sub_2287C9AB0();
  *&v5[*(*v5 + 144)] = MEMORY[0x277D84F90];
  v23 = *(*v5 + 152);
  *&v5[v23] = sub_2287CACB0();
  v5[*(*v5 + 160)] = 0;
  v5[*(*v5 + 168)] = 0;
  v24 = &v5[*(*v5 + 176)];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v5[*(*v5 + 184)] = 0;
  *&v5[*(*v5 + 192)] = 0;
  (*(v13 + 32))(v11, v26, v7);
  v14(v11, 0, 1, v7);
  swift_beginAccess();
  (*(v8 + 40))(&v5[v12], v11, v27);
  swift_endAccess();
  sub_228706AD4(v28, &v5[*(*v5 + 112)]);
  sub_228706AD4(v29, &v5[*(*v5 + 120)]);
  *&v5[*(*v5 + 128)] = v30;
  return v5;
}

uint64_t sub_22871930C()
{
  v1 = *v0;
  v2 = sub_2287CBDD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871AADC(0, &qword_27D850B98, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v23 = v0;
  sub_22871AADC(0, &qword_280DE39A0, sub_22871AB40, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2287CCFF0;
  *(v11 + 32) = 0x6D65744964656566;
  *(v11 + 40) = 0xEF747865746E6F43;
  v12 = (v0 + *(v1 + 112));
  v13 = v12[3];
  v14 = __swift_project_boxed_opaque_existential_1(v12, v13);
  *(v11 + 72) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 48));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v14, v13);
  *(v11 + 80) = 0x6E496E6967756C70;
  *(v11 + 88) = 0xEA00000000006F66;
  v16 = (v0 + *(*v0 + 120));
  v17 = v16[3];
  v18 = __swift_project_boxed_opaque_existential_1(v16, v17);
  *(v11 + 120) = v17;
  v19 = __swift_allocate_boxed_opaque_existential_0((v11 + 96));
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  v20 = sub_2287CBDC0();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);

  return sub_2287CBDE0();
}

void sub_228719654()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = sub_2287CB820();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v9 = *(v1 + *(v2 + 136));
  sub_2287C9A90();
  v10 = *(*v1 + 160);
  swift_beginAccess();
  *(v1 + v10) = 1;
  v11 = v1 + *(*v1 + 176);
  v12 = *v11;
  *v11 = 0;
  *(v11 + 8) = 0;
  (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v13, v8, v4);
  swift_endAccess();
  v14 = *(*v1 + 184);
  v15 = *(v1 + v14);
  *(v1 + v14) = 0;

  sub_2287C9AA0();
  if (v12)
  {
    [v12 cancel];
  }
}

uint64_t sub_228719850()
{
  v2 = *(v0 + *(*v0 + 136));
  sub_2287C9AC0();
  sub_22871AA88(&qword_280DE17C8, MEMORY[0x277D11D58]);

  sub_2287CA8F0();
}

uint64_t sub_228719920(uint64_t a1)
{
  v2 = *(*a1 + 168);
  swift_beginAccess();
  *(a1 + v2) = 1;
  v3 = a1 + *(*a1 + 176);
  v4 = *v3;
  *v3 = 0;
  *(v3 + 8) = 0;

  v5 = *(*a1 + 184);
  v6 = *(a1 + v5);
  *(a1 + v5) = 0;

  swift_getWitnessTable();
  return sub_2287CA060();
}

uint64_t sub_228719A18(void (*a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = sub_2287CB820();
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v17 = *&v1[*(v4 + 136)];
  sub_2287C9A90();
  v18 = *(*v1 + 160);
  swift_beginAccess();
  if (v1[v18])
  {
    return sub_2287C9AA0();
  }

  v48 = a1;
  v49 = v4;
  v19 = *v1;
  v20 = &v1[*(*v1 + 176)];
  if (*v20)
  {
LABEL_5:
    v34 = *(v19 + 152);
    swift_beginAccess();
    v35 = *&v2[v34];
    sub_2287CACC0();
    if (sub_2287CACA0())
    {
LABEL_17:
      swift_endAccess();
      swift_getWitnessTable();
      sub_2287CA060();
      return sub_2287C9AA0();
    }

    sub_2287CACC0();
    v36 = sub_2287CACA0();
    v37 = sub_2287CACC0();
    if ((v36 & 1) == 0)
    {
      v38 = v48;
      result = sub_2287CACA0();
      if ((result & 1) == 0)
      {
        if ((v35 | v38) < 0)
        {
          __break(1u);
          goto LABEL_21;
        }

        v37 = v35 + v38;
        if (!__OFADD__(v35, v38))
        {
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

LABEL_21:
          __break(1u);
          return result;
        }
      }

      v37 = sub_2287CACC0();
    }

LABEL_16:
    *&v2[v34] = v37;
    goto LABEL_17;
  }

  sub_2287C9AA0();
  v21 = &v1[*(*v1 + 120)];
  v23 = *(v21 + 3);
  v22 = *(v21 + 4);
  v47 = __swift_project_boxed_opaque_existential_1(v21, v23);
  v24 = sub_228718DEC();
  v53[3] = type metadata accessor for CommitRedirectingFeedItemContext();
  v53[4] = sub_22871AA88(&qword_280DE2600, type metadata accessor for CommitRedirectingFeedItemContext);
  v53[0] = v24;
  v25 = (*(v22 + 40))(v53, v23, v22);
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_0(v53);
  if (v25)
  {
    v53[0] = v25;
    swift_getKeyPath();
    v28 = v25;

    v29 = sub_2287C9660();

    v30 = *(*v2 + 184);
    v31 = *&v2[v30];
    *&v2[v30] = v29;

    sub_2287C9A90();
    v32 = *v20;
    *v20 = v25;
    v20[1] = v27;
    v33 = v28;

    sub_2287C9AA0();
    [*&v2[*(*v2 + 128)] addOperation_];
    sub_2287C9A90();

    v19 = *v2;
    goto LABEL_5;
  }

  v40 = *(*v2 + 96);
  swift_beginAccess();
  v41 = v50;
  v48 = *(v51 + 16);
  v48(v16, &v2[v40], v50);
  sub_2287C9A90();
  v47 = *(v5 - 8);
  (v47[7])(v14, 1, 1, v5);
  swift_beginAccess();
  (*(v51 + 40))(&v2[v40], v14, v41);
  swift_endAccess();
  sub_2287C9AA0();
  v42 = *&v2[*(*v2 + 104)];
  sub_2287CA0C0();
  v48(v11, v16, v41);
  v43 = v47;
  v44 = (v47[6])(v11, 1, v5);
  v45 = v51;
  if (v44 != 1)
  {
    v52 = 1;
    v46 = *(v49 + 88);
    sub_2287CAC70();
    v45 = v43;
    v41 = v5;
  }

  (v45[1])(v11, v41);
  sub_2287CA0D0();
  return (*(v51 + 8))(v16, v50);
}

uint64_t sub_22871A004()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_2287CB820();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 104));

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 112)));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 120)));

  v5 = *(v0 + *(*v0 + 136));

  v6 = *(v0 + *(*v0 + 144));

  v7 = *(v0 + *(*v0 + 192));

  return v0;
}

uint64_t sub_22871A184()
{
  v0 = *sub_22871A004();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22871A214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22871A25C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22871A300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 96);
  swift_beginAccess();
  v6 = *(a1 + 80);
  v7 = sub_2287CB820();
  return (*(*(v7 - 8) + 16))(a2, v2 + v5, v7);
}

uint64_t sub_22871A39C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 96);
  swift_beginAccess();
  v6 = *(a2 + 80);
  v7 = sub_2287CB820();
  (*(*(v7 - 8) + 40))(v2 + v5, a1, v7);
  return swift_endAccess();
}

uint64_t (*sub_22871A440())()
{
  v1 = *(*v0 + 96);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22871A4C8()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22871A51C(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*sub_22871A580())()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22871A5F0()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22871A640(uint64_t a1)
{
  v3 = *(*v1 + 152);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_22871A69C())()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22871A708()
{
  v1 = *(*v0 + 168);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22871A758(char a1)
{
  v3 = *(*v1 + 168);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_22871A7B4())()
{
  v1 = *(*v0 + 168);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22871A820()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22871A870(char a1)
{
  v3 = *(*v1 + 160);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_22871A8CC())()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22871AA1C(id *a1)
{
  v1 = *a1;
  result = [*a1 isFinished];
  if (result)
  {
    result = [v1 isCancelled];
    if ((result & 1) == 0)
    {

      return sub_228719850();
    }
  }

  return result;
}

uint64_t sub_22871AA88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22871AAD0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_228718F28();
}

void sub_22871AADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22871AB40()
{
  if (!qword_280DE3A18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE3A18);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_22871AC10(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2287CB920();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_2287132AC(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_2287CB8C0();
    }

    else
    {
      v5 = -1 << *(a1 + 32);
      v3 = sub_2287CB890();
      v4 = *(a1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v32;
        v10 = v33;
        v11 = v34;
        sub_2287BFFF0(v32, v33, v34, a1);
        v13 = v12;
        v14 = [v12 code];

        v15 = v30;
        v35 = v30;
        v17 = *(v30 + 16);
        v16 = *(v30 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_2287132AC((v16 > 1), v17 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v30 = v15;
        if (v29)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          if (sub_2287CB8E0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v28;
          sub_22871BAE4();
          v7 = sub_2287CB4A0();
          sub_2287CB980();
          v7(v31, 0);
          if (v6 == v28)
          {
LABEL_32:
            sub_228717DF8(v32, v33, v34);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v18 = 1 << *(a1 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(a1 + 56 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (a1 + 64 + 8 * v19);
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_228717DF8(v9, v10, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_228717DF8(v9, v10, 0);
          }

LABEL_31:
          v27 = *(a1 + 36);
          v32 = v18;
          v33 = v27;
          v34 = 0;
          v2 = v28;
          if (v6 == v28)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_22871AF54()
{
  v0 = sub_2287CB210();
  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63E0 = v1;
}

void sub_22871AFC8()
{
  if (qword_280DE3820 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63E0;
  sub_228795C5C(684);
  v2 = v1;

  qword_280DE63E8 = v2;
}

uint64_t sub_22871B03C()
{
  v0 = sub_2287C9FA0();
  sub_22871AC10(v0);
  v2 = v1;

  v17 = v2;

  sub_22871B220(&v17);

  v3 = v17;
  v4 = *(v17 + 2);
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v4, 0);
    v5 = 32;
    v6 = v17;
    do
    {
      v16 = *&v3[v5];
      v7 = sub_2287CBCC0();
      v17 = v6;
      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_2287042D4((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v6 = v17;
      }

      *(v6 + 2) = v10 + 1;
      v11 = &v6[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v17 = v6;
  sub_22871B354();
  sub_22871BBC4(&qword_280DE39F8, sub_22871B354);
  v14 = sub_2287CB1D0();

  return v14;
}

uint64_t sub_22871B220(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22878A350(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_2287CBCB0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_2287CB400();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22871B3A4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_22871B354()
{
  if (!qword_280DE3A00)
  {
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3A00);
    }
  }
}

uint64_t sub_22871B3A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22878A1B0(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_22871B8F0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228722F14(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_228722F14((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_22871B8F0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_22871B8F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_22871BAE4()
{
  if (!qword_27D850BA0)
  {
    sub_22871BB78();
    sub_22871BBC4(&qword_280DE3630, sub_22871BB78);
    v0 = sub_2287CB4B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850BA0);
    }
  }
}

unint64_t sub_22871BB78()
{
  result = qword_280DE3638;
  if (!qword_280DE3638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE3638);
  }

  return result;
}

uint64_t sub_22871BBC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *ProfileDashboardFeedPopulationManager.__allocating_init(healthExperienceStore:healthStore:engineNameOverride:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  v14 = sub_2287CA1F0();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  sub_2287010E4(a1, v19);
  type metadata accessor for ProfileDashboardRelevanceEngineCoordinator();
  swift_allocObject();
  v15 = a2;
  v16 = sub_2287542EC(v19, v15, a3, a4);

  sub_2287010E4(a1, v19);
  v17 = sub_22871DC94(v19, v15, v16, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v17;
}

uint64_t *ProfileDashboardFeedPopulationManager.init(healthExperienceStore:healthStore:engineNameOverride:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  v11 = sub_2287CA1F0();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  sub_2287010E4(a1, v16);
  type metadata accessor for ProfileDashboardRelevanceEngineCoordinator();
  swift_allocObject();
  v12 = a2;
  v13 = sub_2287542EC(v16, v12, a3, a4);

  sub_2287010E4(a1, v16);
  v14 = sub_22871DC94(v16, v12, v13, v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t sub_22871BE38@<X0>(uint64_t a1@<X8>)
{
  sub_22871EAA0(0, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain;
  swift_beginAccess();
  sub_22871E978(v1 + v10, v9);
  v11 = sub_2287CA1F0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_22871F058(v9, &qword_280DE17B8, MEMORY[0x277D12000]);
  sub_22871C048(v1);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_22871EA0C(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_22871C048(void *a1)
{
  v2 = (*(*a1 + 232))(a1);
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_18:

    sub_22871EF80(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2287CCFE0;
    v22 = a1[7];
    *(v21 + 32) = sub_2287CB590();

    return sub_2287CA160();
  }

  v4 = (v2 + 32);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *v4++;
    result = sub_2287CA5B0();
    v8 = *(result + 16);
    v9 = v5[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v11 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v5[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v13 = v9 + v8;
      }

      else
      {
        v13 = v9;
      }

      v5 = sub_22872300C(isUniquelyReferenced_nonNull_native, v13, 1, v5);
      if (*(v11 + 16))
      {
LABEL_14:
        v14 = (v5[3] >> 1) - v5[2];
        result = sub_2287C9B20();
        v15 = *(result - 8);
        if (v14 < v8)
        {
          goto LABEL_23;
        }

        v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v17 = *(v15 + 72);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v18 = v5[2];
          v19 = __OFADD__(v18, v8);
          v20 = v18 + v8;
          if (v19)
          {
            goto LABEL_24;
          }

          v5[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (!--v3)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22871C268()
{
  v0 = sub_2287CA1F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2287CA1D0())
  {
    v5 = 0;
  }

  else
  {
    sub_22871BE38(v4);
    v5 = sub_2287CA1E0();
    (*(v1 + 8))(v4, v0);
  }

  return v5 & 1;
}

uint64_t sub_22871C364(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = *v4;
  v9 = v4[11];
  v10 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v9);
  v11 = RelevanceEngineCoordinator.sortedElements(for:)(5, v9, v10);
  v12 = [a2 profileIdentifier];
  sub_22871C440(a1, v11, v12);

  return a4(v13);
}

uint64_t sub_22871C440(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v217 = a1;
  v7 = sub_2287C9810();
  v218 = *(v7 - 8);
  v8 = *(v218 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CAA50();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v201 = v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v198 = v193 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v197 = v193 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v207 = v193 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v215 = v193 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v193 - v24;
  sub_2287CA9E0();
  swift_bridgeObjectRetain_n();
  v26 = a3;
  v27 = a2;
  v28 = sub_2287CAA40();
  LODWORD(a2) = sub_2287CB610();
  v209 = v26;

  LODWORD(v210) = a2;
  v29 = os_log_type_enabled(v28, a2);
  v30 = v27 >> 62;
  v200 = v4;
  v212 = v27;
  v213 = v10;
  v214 = v7;
  v211 = v11;
  v216 = v27 >> 62;
  v219 = v12;
  if (!v29)
  {

    swift_bridgeObjectRelease_n();
    v210 = v12[1];
    v210(v25, v11);
    v44 = v217;
    v33 = v4;
    v37 = v209;
    goto LABEL_6;
  }

  v206 = v25;
  v208 = v28;
  v31 = v10;
  v32 = v7;
  v7 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v220 = v33;
  *v7 = 136315650;
  v34 = sub_2287CBE60();
  v36 = sub_2287031D8(v34, v35, &v220);

  *(v7 + 4) = v36;
  *(v7 + 12) = 2080;
  v37 = v209;
  v38 = [v209 0x1FB55D678];
  sub_2287C97F0();

  sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0]);
  v39 = sub_2287CBCC0();
  v41 = v40;
  (*(v218 + 8))(v31, v32);
  v42 = sub_2287031D8(v39, v41, &v220);

  *(v7 + 14) = v42;
  *(v7 + 22) = 2050;
  if (!v30)
  {
    v43 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

LABEL_86:
  v43 = sub_2287CB920();
LABEL_4:
  v44 = v217;
  v45 = v208;
  v46 = v206;
  v47 = v210;

  *(v7 + 24) = v43;

  _os_log_impl(&dword_2286FF000, v45, v47, "[%s]_%s: %{public}ld REElements retrieved from RelevanceEngine for profile dashboard", v7, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x22AABFD90](v33, -1, -1);
  MEMORY[0x22AABFD90](v7, -1, -1);

  v210 = v219[1];
  v210(v46, v211);
  v33 = v200;
  v10 = v213;
  v7 = v214;
LABEL_6:
  v202 = static FeedPopulationManaging.fetchAndValidateFeedToPopulate(kind:managedObjectContext:associatedProfileIdentifier:)(5, v44, v37, v33);
  sub_22871EF80(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2287CCFE0;
  *(v48 + 32) = v37;
  v49 = v37;
  v50 = NSManagedObjectContext.getEligibleFeedItems(for:sourceProfiles:)(5, v48);

  v51 = v215;
  sub_2287CA9E0();
  swift_bridgeObjectRetain_n();
  v52 = v49;
  v37 = sub_2287CAA40();
  v53 = sub_2287CB610();

  v54 = os_log_type_enabled(v37, v53);
  v55 = v50 >> 62;
  v217 = v50;
  v209 = (v50 >> 62);
  if (v54)
  {
    v56 = swift_slowAlloc();
    v57 = v10;
    v58 = v7;
    v59 = swift_slowAlloc();
    v220 = v59;
    *v56 = 136315906;
    v60 = sub_2287CBE60();
    v62 = sub_2287031D8(v60, v61, &v220);

    *(v56 + 4) = v62;
    *(v56 + 12) = 2080;
    v63 = [v52 identifier];
    sub_2287C97F0();

    sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0]);
    v64 = sub_2287CBCC0();
    v66 = v65;
    (*(v218 + 8))(v57, v58);
    v67 = sub_2287031D8(v64, v66, &v220);

    *(v56 + 14) = v67;
    *(v56 + 22) = 2082;
    v68 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v70 = sub_2287031D8(v68, v69, &v220);

    *(v56 + 24) = v70;
    *(v56 + 32) = 2050;
    if (v55)
    {
      v71 = sub_2287CB920();
    }

    else
    {
      v71 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v56 + 34) = v71;

    _os_log_impl(&dword_2286FF000, v37, v53, "[%s]_%s: Picking elements for a new %{public}s feed from %{public}ld Core Data elements", v56, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v59, -1, -1);
    MEMORY[0x22AABFD90](v56, -1, -1);

    v210(v215, v211);
    v33 = v200;
    v10 = v213;
    v7 = v214;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v210(v51, v211);
  }

  if (!v216)
  {
    v72 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  while (1)
  {
    v72 = sub_2287CB920();
LABEL_13:
    v73 = MEMORY[0x277D84F90];
    if (v72)
    {
      v220 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v72 & ~(v72 >> 63), 0);
      if (v72 < 0)
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v74 = 0;
      v73 = v220;
      v75 = v212;
      v76 = v212 & 0xC000000000000001;
      do
      {
        if (v76)
        {
          v77 = MEMORY[0x22AABF120](v74);
        }

        else
        {
          v77 = *(v75 + 8 * v74 + 32);
        }

        v78 = v77;
        v79 = [v77 identifier];
        v80 = sub_2287CB220();
        v82 = v81;

        v220 = v73;
        v84 = *(v73 + 16);
        v83 = *(v73 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_2287042D4((v83 > 1), v84 + 1, 1);
          v73 = v220;
        }

        ++v74;
        *(v73 + 16) = v84 + 1;
        v85 = v73 + 16 * v84;
        *(v85 + 32) = v80;
        *(v85 + 40) = v82;
        v75 = v212;
        v10 = v213;
        v7 = v214;
      }

      while (v72 != v74);
      v33 = v200;
    }

    v86 = v207;
    sub_2287CA9E0();
    v37 = v52;

    v87 = sub_2287CAA40();
    v88 = sub_2287CB610();

    v89 = os_log_type_enabled(v87, v88);
    v208 = v37;
    if (!v89)
    {
      break;
    }

    v90 = swift_slowAlloc();
    LODWORD(v215) = v88;
    v91 = v37;
    v37 = v90;
    v52 = v10;
    v10 = v7;
    v7 = swift_slowAlloc();
    v220 = v7;
    *v37 = 136315906;
    v92 = sub_2287CBE60();
    v94 = sub_2287031D8(v92, v93, &v220);

    *(v37 + 4) = v94;
    v33 = 2080;
    *(v37 + 12) = 2080;
    v95 = [v91 identifier];
    sub_2287C97F0();

    sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0]);
    v96 = sub_2287CBCC0();
    v98 = v97;
    v99 = v218;
    (*(v218 + 8))(v52, v10);
    v100 = sub_2287031D8(v96, v98, &v220);

    *(v37 + 14) = v100;
    *(v37 + 22) = 2082;
    v101 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v103 = sub_2287031D8(v101, v102, &v220);

    *(v37 + 24) = v103;
    *(v37 + 32) = 2080;
    v104 = MEMORY[0x22AABEA80](v73, MEMORY[0x277D837D0]);
    v106 = v105;

    v107 = sub_2287031D8(v104, v106, &v220);

    *(v37 + 34) = v107;
    _os_log_impl(&dword_2286FF000, v87, v215, "[%s]_%s: Picking feed of kind %{public}s from these ranked identifiers (the rest were dropped): %s", v37, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v7, -1, -1);
    MEMORY[0x22AABFD90](v37, -1, -1);

    v108 = v219;
    v210(v207, v211);
    v110 = v212;
    if (!v216)
    {
      goto LABEL_28;
    }

LABEL_25:
    v111 = sub_2287CB920();
    v112 = &qword_2287CD000;
    if (!v111)
    {
      goto LABEL_69;
    }

LABEL_29:
    v113 = 0;
    v206 = v212 & 0xFFFFFFFFFFFFFF8;
    v207 = (v212 & 0xC000000000000001);
    v205 = v212 + 32;
    v114 = v217 & 0xFFFFFFFFFFFFFF8;
    v218 = v217 & 0xFFFFFFFFFFFFFF8;
    if (v217 < 0)
    {
      v114 = v217;
    }

    v193[1] = v114;
    v216 = v217 & 0xC000000000000001;
    v203 = v108 + 1;
    v199 = (v99 + 8);
    *&v109 = v112[40];
    v196 = v109;
    *&v109 = 136315906;
    v194 = v109;
    v204 = v111;
    while (1)
    {
      if (v207)
      {
        v117 = MEMORY[0x22AABF120](v113, v212);
      }

      else
      {
        if (v113 >= *(v206 + 16))
        {
          goto LABEL_80;
        }

        v117 = *(v205 + 8 * v113);
      }

      v219 = v117;
      if (__OFADD__(v113, 1))
      {
        break;
      }

      v215 = v113 + 1;
      if (v209)
      {
        v118 = sub_2287CB920();
        if (v118)
        {
LABEL_41:
          v37 = 0;
          while (1)
          {
            if (v216)
            {
              v119 = MEMORY[0x22AABF120](v37, v217);
            }

            else
            {
              if (v37 >= *(v218 + 16))
              {
                goto LABEL_78;
              }

              v119 = *(v217 + 8 * v37 + 32);
            }

            v120 = v119;
            v52 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            v121 = [v119 uniqueIdentifier];
            v122 = sub_2287CB220();
            v7 = v123;

            v10 = [v219 identifier];
            v124 = sub_2287CB220();
            v126 = v125;

            if (v122 == v124 && v7 == v126)
            {

LABEL_55:
              [v120 setSortOrder_];
              v128 = sub_2287CA600();
              v52 = v198;
              v7 = v197;
              v129 = v208;
              if (((1 << v128) & 0x17) != 0)
              {
                v130 = sub_22878883C();
                if (!v130)
                {
                  sub_2287CA9E0();
                  v33 = v129;
                  v37 = v120;
                  v131 = sub_2287CAA40();
                  v132 = sub_2287CB610();

                  if (os_log_type_enabled(v131, v132))
                  {
                    v7 = swift_slowAlloc();
                    v133 = swift_slowAlloc();
                    v220 = v133;
                    *v7 = v196;
                    v134 = sub_2287CBE60();
                    v136 = sub_2287031D8(v134, v135, &v220);

                    *(v7 + 4) = v136;
                    *(v7 + 12) = 2080;
                    v137 = [v33 identifier];
                    v138 = v213;
                    sub_2287C97F0();

                    sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0]);
                    v139 = v214;
                    v140 = sub_2287CBCC0();
                    v142 = v141;
                    (*v199)(v138, v139);
                    v143 = sub_2287031D8(v140, v142, &v220);

                    *(v7 + 14) = v143;
                    *(v7 + 22) = 2080;
                    v144 = [v37 uniqueIdentifier];
                    v33 = sub_2287CB220();
                    v10 = v145;

                    v146 = sub_2287031D8(v33, v10, &v220);

                    *(v7 + 24) = v146;
                    _os_log_impl(&dword_2286FF000, v131, v132, "[%s]_%s: Section not found for feedItem %s", v7, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x22AABFD90](v133, -1, -1);
                    MEMORY[0x22AABFD90](v7, -1, -1);
                  }

                  v210(v52, v211);
                  v116 = v215;
                  [v37 setFeedSection_];
                  sub_2287CA800();
                  [v37 setSectionSortOrder_];

LABEL_64:
                  goto LABEL_34;
                }
              }

              else
              {
                sub_2287CA600();
                v130 = sub_22878AD68();
              }

              v147 = v130;
              sub_2287CA9E0();
              v148 = v129;
              v37 = v147;
              v149 = v120;
              v150 = sub_2287CAA40();
              v33 = sub_2287CB610();

              if (os_log_type_enabled(v150, v33))
              {
                v151 = swift_slowAlloc();
                v195 = swift_slowAlloc();
                v220 = v195;
                *v151 = v194;
                v152 = sub_2287CBE60();
                v154 = sub_2287031D8(v152, v153, &v220);

                *(v151 + 4) = v154;
                *(v151 + 12) = 2080;
                v155 = [v148 identifier];
                v156 = v213;
                sub_2287C97F0();

                sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0]);
                v157 = v214;
                v158 = sub_2287CBCC0();
                v160 = v159;
                (*v199)(v156, v157);
                v161 = sub_2287031D8(v158, v160, &v220);

                *(v151 + 14) = v161;
                v52 = 2080;
                *(v151 + 22) = 2080;
                v162 = [v37 identifier];
                v163 = sub_2287CB220();
                v165 = v164;

                v166 = sub_2287031D8(v163, v165, &v220);

                *(v151 + 24) = v166;
                *(v151 + 32) = 2080;
                v167 = [v149 uniqueIdentifier];
                v10 = sub_2287CB220();
                v169 = v168;

                v170 = sub_2287031D8(v10, v169, &v220);

                *(v151 + 34) = v170;
                _os_log_impl(&dword_2286FF000, v150, v33, "[%s]_%s: Section %s found for feedItem %s", v151, 0x2Au);
                v171 = v195;
                swift_arrayDestroy();
                MEMORY[0x22AABFD90](v171, -1, -1);
                MEMORY[0x22AABFD90](v151, -1, -1);
              }

              v210(v7, v211);
              v116 = v215;
              [v37 addFeedItemsObject_];

              goto LABEL_64;
            }

            v33 = sub_2287CBD00();

            if (v33)
            {
              goto LABEL_55;
            }

            ++v37;
            if (v52 == v118)
            {
              goto LABEL_67;
            }
          }

          __break(1u);
LABEL_78:
          __break(1u);
          break;
        }
      }

      else
      {
        v118 = *(v218 + 16);
        if (v118)
        {
          goto LABEL_41;
        }
      }

LABEL_67:
      v172 = v201;
      sub_2287CA9E0();
      v173 = v208;
      v174 = v219;
      v175 = sub_2287CAA40();
      v7 = sub_2287CB610();

      if (os_log_type_enabled(v175, v7))
      {
        v37 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v220 = v176;
        *v37 = v196;
        v177 = sub_2287CBE60();
        v179 = sub_2287031D8(v177, v178, &v220);

        *(v37 + 4) = v179;
        *(v37 + 12) = 2080;
        v180 = [v173 identifier];
        v52 = v213;
        sub_2287C97F0();

        sub_22871EC30(&qword_280DE3468, MEMORY[0x277CC95F0]);
        v181 = v214;
        v182 = sub_2287CBCC0();
        v10 = v183;
        (*v199)(v52, v181);
        v184 = sub_2287031D8(v182, v10, &v220);

        *(v37 + 14) = v184;
        *(v37 + 22) = 2112;
        *(v37 + 24) = v174;
        *v33 = v174;
        v185 = v174;
        _os_log_impl(&dword_2286FF000, v175, v7, "[%s]_%s: Item %@ was returned by the RelevanceEngine but is now deleted", v37, 0x20u);
        sub_2287038A4(v33);
        MEMORY[0x22AABFD90](v33, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v176, -1, -1);
        MEMORY[0x22AABFD90](v37, -1, -1);

        v115 = v201;
      }

      else
      {

        v115 = v172;
      }

      v210(v115, v211);
      v116 = v215;
LABEL_34:
      v113 = v116;
      if (v116 == v204)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
  }

  v108 = v219;
  v210(v86, v211);
  v110 = v212;
  v99 = v218;
  if (v216)
  {
    goto LABEL_25;
  }

LABEL_28:
  v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v112 = &qword_2287CD000;
  if (v111)
  {
    goto LABEL_29;
  }

LABEL_69:

  v186 = [v202 sections];
  sub_2287C9B40();
  v187 = sub_2287CB580();

  if (v187 >> 62)
  {
    v188 = sub_2287CB920();
    if (v188)
    {
LABEL_71:
      if (v188 < 1)
      {
        goto LABEL_85;
      }

      for (i = 0; i != v188; ++i)
      {
        if ((v187 & 0xC000000000000001) != 0)
        {
          v190 = MEMORY[0x22AABF120](i, v187);
        }

        else
        {
          v190 = *(v187 + 8 * i + 32);
        }

        v191 = v190;
        sub_22878441C();
      }
    }
  }

  else
  {
    v188 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v188)
    {
      goto LABEL_71;
    }
  }
}

uint64_t ProfileDashboardFeedPopulationManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  sub_22871F058(v0 + OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain, &qword_280DE17B8, MEMORY[0x277D12000]);
  return v0;
}

uint64_t ProfileDashboardFeedPopulationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  sub_22871F058(v0 + OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain, &qword_280DE17B8, MEMORY[0x277D12000]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *sub_22871DC94(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v91 = a1;
  v76 = *a4;
  v8 = sub_2287CAA50();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  MEMORY[0x28223BE20](v8);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x277D85248];
  sub_22871EAA0(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = &v72 - v13;
  sub_22871EB04();
  v82 = v14;
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871ECE0();
  v85 = v17;
  v86 = *(v17 - 8);
  v18 = *(v86 + 64);
  MEMORY[0x28223BE20](v17);
  v80 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871ED74();
  v21 = *(v20 - 8);
  v87 = v20;
  v88 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v84 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2287CB6B0();
  v74 = *(v75 - 8);
  v24 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2287CB670();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v29 = sub_2287CB0E0();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v94[3] = type metadata accessor for ProfileDashboardRelevanceEngineCoordinator();
  v94[4] = &off_283BC19D0;
  v94[0] = a3;
  sub_22871EBD0();
  v72 = v31;
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  a4[14] = sub_2287CAD00();
  a4[15] = 0;
  sub_2287010E4(a1, (a4 + 2));
  a4[7] = a2;
  sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v34 = a2;
  v73 = v34;
  *&v93[0] = sub_2287CBE60();
  *(&v93[0] + 1) = v35;
  MEMORY[0x22AABE980](0x656C69666F72705FLL, 0xE90000000000002DLL);
  v36 = [v34 profileIdentifier];
  v37 = [v36 description];
  v38 = sub_2287CB220();
  v40 = v39;

  MEMORY[0x22AABE980](v38, v40);

  sub_2287CB0A0();
  *&v93[0] = MEMORY[0x277D84F90];
  sub_22871EC30(&qword_280DE39D8, MEMORY[0x277D85230]);
  sub_22871EAA0(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22871EFD0();
  sub_2287CB880();
  (*(v74 + 104))(v26, *MEMORY[0x277D85260], v75);
  v41 = sub_2287CB6D0();
  a4[13] = v41;
  sub_2287010E4(v94, (a4 + 8));
  *&v93[0] = a4[14];
  *&v92[0] = v41;
  v42 = sub_2287CB680();
  v43 = v78;
  (*(*(v42 - 8) + 56))(v78, 1, 1, v42);
  sub_22871EC30(&qword_280DE0120, sub_22871EBD0);
  sub_22871EC78();
  v44 = v41;

  v45 = v79;
  sub_2287CAFF0();
  sub_22871F058(v43, &qword_280DE3628, v81);

  v46 = swift_allocObject();
  v47 = v73;
  v48 = v76;
  *(v46 + 16) = v73;
  *(v46 + 24) = v48;
  sub_22871EC30(&qword_280DE02C8, sub_22871EB04);
  v49 = v47;
  v50 = v80;
  v51 = v82;
  sub_2287CAF10();

  (*(v83 + 8))(v45, v51);
  v52 = swift_allocObject();
  swift_weakInit();
  sub_2287010E4(v91, v93);
  sub_2287010E4(v94, v92);
  v53 = swift_allocObject();
  sub_228706AD4(v93, (v53 + 2));
  sub_228706AD4(v92, (v53 + 7));
  v53[12] = v52;
  v53[13] = v49;
  v53[14] = v48;
  sub_22871EE60();
  sub_22871EC30(&qword_280DE06A0, sub_22871ECE0);
  sub_22871EC30(&qword_280DE0690, sub_22871EE60);
  v54 = v49;
  v55 = v84;
  v56 = v85;
  sub_2287CB070();

  (*(v86 + 8))(v50, v56);
  v57 = swift_allocObject();
  *(v57 + 16) = v54;
  *(v57 + 24) = v48;
  sub_22871EC30(&unk_280DE03E8, sub_22871ED74);
  v58 = v54;
  v59 = v87;
  v60 = sub_2287CB050();

  (*(v88 + 8))(v55, v59);
  v61 = a4[15];
  a4[15] = v60;

  v62 = v77;
  sub_2287CA9E0();

  v63 = v62;
  v64 = sub_2287CAA40();
  v65 = sub_2287CB610();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v93[0] = v67;
    *v66 = 136446210;
    *&v92[0] = a4;
    type metadata accessor for BaseFeedPopulationManager();

    v68 = sub_2287CB250();
    v70 = sub_2287031D8(v68, v69, v93);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_2286FF000, v64, v65, "Ready: %{public}s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x22AABFD90](v67, -1, -1);
    MEMORY[0x22AABFD90](v66, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v91);
  (*(v89 + 8))(v63, v90);
  __swift_destroy_boxed_opaque_existential_0(v94);
  return a4;
}

uint64_t type metadata accessor for ProfileDashboardFeedPopulationManager()
{
  result = qword_280DE0D30;
  if (!qword_280DE0D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22871E844()
{
  sub_22871EAA0(319, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22871E978(uint64_t a1, uint64_t a2)
{
  sub_22871EAA0(0, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22871EA0C(uint64_t a1, uint64_t a2)
{
  sub_22871EAA0(0, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22871EAA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22871EB04()
{
  if (!qword_280DE02C0)
  {
    sub_22871EBD0();
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    sub_22871EC30(&qword_280DE0120, sub_22871EBD0);
    sub_22871EC78();
    v0 = sub_2287CAC60();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE02C0);
    }
  }
}

void sub_22871EBD0()
{
  if (!qword_280DE0118)
  {
    v0 = sub_2287CAD10();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0118);
    }
  }
}

uint64_t sub_22871EC30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22871EC78()
{
  result = qword_280DE3620;
  if (!qword_280DE3620)
  {
    sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3620);
  }

  return result;
}

void sub_22871ECE0()
{
  if (!qword_280DE0698)
  {
    sub_22871EB04();
    sub_22871EC30(&qword_280DE02C8, sub_22871EB04);
    v0 = sub_2287CAB10();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0698);
    }
  }
}

void sub_22871ED74()
{
  if (!qword_280DE03E0)
  {
    sub_22871EE60();
    sub_22871ECE0();
    sub_22871EC30(&qword_280DE0690, sub_22871EE60);
    sub_22871EC30(&qword_280DE06A0, sub_22871ECE0);
    v0 = sub_2287CABC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE03E0);
    }
  }
}

void sub_22871EE60()
{
  if (!qword_280DE0688)
  {
    sub_22871EEF4();
    sub_22871EC30(&qword_280DE01B8, sub_22871EEF4);
    v0 = sub_2287CAB20();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0688);
    }
  }
}

void sub_22871EEF4()
{
  if (!qword_280DE01B0)
  {
    sub_22871EF80(255, &qword_280DDFFE8, MEMORY[0x277D121B8], MEMORY[0x277D83940]);
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE01B0);
    }
  }
}

void sub_22871EF80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22871EFD0()
{
  result = qword_280DE39E8;
  if (!qword_280DE39E8)
  {
    sub_22871EAA0(255, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE39E8);
  }

  return result;
}

uint64_t sub_22871F058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22871EAA0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static ModelTrainingScenario.make(from:)@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for ModelTrainingElement(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModelTrainingCommand(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287C9510();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_2287C9500();
  sub_22871F660();
  sub_2287C94F0();
  if (!v1)
  {
    v48 = v3;
    v51 = v2;
    v45[1] = 0;
    v45[2] = v15;
    v46 = v50[1];
    v16 = *(v50[0] + 16);
    v45[0] = v50[0];
    if (v16)
    {
      v17 = v50[0] + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v49 = *(v8 + 72);
      v18 = MEMORY[0x277D84F90];
      v19 = v48;
      do
      {
        sub_22872AA54(v17, v11, type metadata accessor for ModelTrainingCommand);
        v21 = *(v11 + 1);
        v22 = *(v11 + 2);

        sub_22872AABC(v11, type metadata accessor for ModelTrainingCommand);
        if (v22)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_228722DF0(0, *(v18 + 2) + 1, 1, v18);
          }

          v24 = *(v18 + 2);
          v23 = *(v18 + 3);
          if (v24 >= v23 >> 1)
          {
            v18 = sub_228722DF0((v23 > 1), v24 + 1, 1, v18);
          }

          *(v18 + 2) = v24 + 1;
          v20 = &v18[16 * v24];
          *(v20 + 4) = v21;
          *(v20 + 5) = v22;
          v19 = v48;
        }

        v17 += v49;
        --v16;
      }

      while (v16);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      v19 = v48;
    }

    v25 = sub_22872A9BC(v18);

    v26 = v46;
    v27 = v46[2];
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v49 = v25;
      v50[0] = MEMORY[0x277D84F90];
      sub_2287042D4(0, v27, 0);
      v28 = v50[0];
      v29 = v26 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v30 = *(v19 + 72);
      do
      {
        sub_22872AA54(v29, v6, type metadata accessor for ModelTrainingElement);
        v31 = &v6[*(v51 + 56)];
        v32 = *v31;
        v33 = *(v31 + 1);

        sub_22872AABC(v6, type metadata accessor for ModelTrainingElement);
        v50[0] = v28;
        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_2287042D4((v34 > 1), v35 + 1, 1);
          v28 = v50[0];
        }

        *(v28 + 16) = v35 + 1;
        v36 = v28 + 16 * v35;
        *(v36 + 32) = v32;
        *(v36 + 40) = v33;
        v29 += v30;
        --v27;
      }

      while (v27);
      v25 = v49;
    }

    v37 = sub_22872A9BC(v28);

    if (*(v37 + 16) <= *(v25 + 16) >> 3)
    {
      v50[0] = v25;
      sub_228724EF4(v37);

      v38 = v50[0];
    }

    else
    {
      v38 = sub_2287254B8(v37, v25);
    }

    v39 = v45[0];
    v40 = v46;
    if (!*(v38 + 16))
    {
      goto LABEL_25;
    }

    v41 = *(v38 + 16);
    if (v41)
    {
      v40 = sub_2287239AC(*(v38 + 16), 0);
      v39 = sub_228729F74(v50, v40 + 4, v41, v38);
      sub_22870B3D4();
      if (v39 != v41)
      {
        __break(1u);
LABEL_25:

        v43 = v47;
        *v47 = v39;
        v43[1] = v40;
        return result;
      }
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    sub_22872AB1C();
    swift_allocError();
    *v44 = v40;
    *(v44 + 8) = 0;
    *(v44 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_22871F628(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22871F660()
{
  result = qword_27D850BA8;
  if (!qword_27D850BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BA8);
  }

  return result;
}

void sub_22871F6B4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2287CB920();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
  v5 = sub_22872C220(&qword_280DE1970, &qword_280DE3870, 0x277CCD7C8);
  v18[1] = MEMORY[0x22AABEB60](v3, v4, v5);
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v1 = sub_2287CBB40() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v6 = v1 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 64);
  }

  v12 = 0;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_2287CBB80() || (swift_dynamicCast(), (v17 = v18[0]) == 0))
    {
LABEL_21:
      sub_22870B3D4();
      return;
    }

LABEL_11:
    sub_2287248CC(v18, v17);
  }

  v13 = v12;
  v14 = v8;
  v15 = v12;
  if (v8)
  {
LABEL_17:
    v16 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v8 = (v14 - 1) & v14;
    v12 = v15;
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_22871F8C0()
{
  v1 = *v0;
  sub_2287CBD80();
  MEMORY[0x22AABF460](v1);
  return sub_2287CBDB0();
}

uint64_t sub_22871F934()
{
  v1 = *v0;
  sub_2287CBD80();
  MEMORY[0x22AABF460](v1);
  return sub_2287CBDB0();
}

uint64_t sub_22871F978()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x73646E616D6D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_22871F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_2287CBD00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2287CBD00();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22871FAA0(uint64_t a1)
{
  v2 = sub_22872AB70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22871FADC(uint64_t a1)
{
  v2 = sub_22872AB70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelTrainingScenario.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  sub_22872C540(0, &qword_27D850BB8, sub_22872AB70, &type metadata for ModelTrainingScenario.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22872AB70();
  sub_2287CBE20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v6;
  v12 = v16;
  sub_22872C8E0(0, &qword_27D850BC8, type metadata accessor for ModelTrainingCommand, MEMORY[0x277D83940]);
  v17 = 0;
  sub_22872ABC4();
  sub_2287CBC70();
  v13 = v18;
  sub_22872C8E0(0, &qword_27D850BE0, type metadata accessor for ModelTrainingElement, MEMORY[0x277D83940]);
  v17 = 1;
  sub_22872AC9C();
  sub_2287CBC70();
  (*(v11 + 8))(v9, v5);
  v14 = v18;
  *v12 = v13;
  v12[1] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22871FDF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v7 = 0;
    sub_2287CBA20();
    MEMORY[0x22AABE980](0xD000000000000034, 0x80000002287D06B0);
    v4 = MEMORY[0x22AABEA80](a1, MEMORY[0x277D837D0]);
    MEMORY[0x22AABE980](v4);
  }

  else
  {
    sub_2287CBA20();

    v7 = 0xD000000000000025;
    MEMORY[0x22AABE980](a1, a2);
  }

  return v7;
}

HealthPlatformCore::ModelTrainingCommand::Kind_optional __swiftcall ModelTrainingCommand.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2287CBC10();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ModelTrainingCommand.Kind.rawValue.getter()
{
  if (*v0)
  {
    result = 0x657461645F746573;
  }

  else
  {
    result = 7364980;
  }

  *v0;
  return result;
}

uint64_t sub_22871FF8C()
{
  v1 = *v0;
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_228720008()
{
  *v0;
  sub_2287CB290();
}

uint64_t sub_228720070()
{
  v1 = *v0;
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_2287200E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2287CBC10();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_228720148(uint64_t *a1@<X8>)
{
  v2 = 7364980;
  if (*v1)
  {
    v2 = 0x657461645F746573;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_228720230(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657461645F746573;
  }

  else
  {
    v4 = 7364980;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x657461645F746573;
  }

  else
  {
    v6 = 7364980;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2287CBD00();
  }

  return v9 & 1;
}

uint64_t ModelTrainingCommand.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_228720378()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 1702125924;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2287203B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22872C0C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2287203EC(uint64_t a1)
{
  v2 = sub_22872AE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228720428(uint64_t a1)
{
  v2 = sub_22872AE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelTrainingCommand.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_22872C8E0(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = &v20 - v5;
  sub_22872C540(0, &qword_27D850BF8, sub_22872AE3C, &type metadata for ModelTrainingCommand.CodingKeys, MEMORY[0x277D844C8]);
  v24 = v6;
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ModelTrainingCommand(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22872AE3C();
  v15 = v25;
  sub_2287CBE20();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v10;
  v25 = a1;
  v16 = v22;
  v17 = v23;
  v28 = 0;
  sub_22872AE90();
  sub_2287CBC70();
  *v13 = v29;
  v27 = 1;
  *(v13 + 1) = sub_2287CBC20();
  *(v13 + 2) = v18;
  sub_2287C97C0();
  v26 = 2;
  sub_22872AD74(&qword_280DE34B0, MEMORY[0x277CC9578]);
  sub_2287CBC40();
  (*(v16 + 8))(v9, v24);
  sub_22872AFA8(v17, &v13[*(v20 + 24)], &qword_280DE3A98, MEMORY[0x277CC9578]);
  sub_22872AA54(v13, v21, type metadata accessor for ModelTrainingCommand);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_22872AABC(v13, type metadata accessor for ModelTrainingCommand);
}

uint64_t ModelTrainingElement.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModelTrainingElement(0) + 20);
  v4 = sub_2287C9B20();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ModelTrainingElement.completeness.getter()
{
  v1 = (v0 + *(type metadata accessor for ModelTrainingElement(0) + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ModelTrainingElement.dateSubmitted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModelTrainingElement(0) + 36);
  v4 = sub_2287C97C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ModelTrainingElement.keywords.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelTrainingElement(0) + 40));
}

uint64_t ModelTrainingElement.magnitude.getter()
{
  v1 = (v0 + *(type metadata accessor for ModelTrainingElement(0) + 44));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ModelTrainingElement.uniqueIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ModelTrainingElement(0) + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_228720B94(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4B746E65746E6F63;
    v7 = 0x6574656C706D6F63;
    v8 = 0xD000000000000015;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6E656E696D6F7270;
    v2 = 0x706F6353656D6974;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D62755365746164;
    v4 = 0x7364726F7779656BLL;
    if (a1 != 6)
    {
      v4 = 0x647574696E67616DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_228720D30(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_228720B94(*a1);
  v5 = v4;
  if (v3 == sub_228720B94(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2287CBD00();
  }

  return v8 & 1;
}

uint64_t sub_228720DB8()
{
  v1 = *v0;
  sub_2287CBD80();
  sub_228720B94(v1);
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_228720E1C()
{
  sub_228720B94(*v0);
  sub_2287CB290();
}

uint64_t sub_228720E70()
{
  v1 = *v0;
  sub_2287CBD80();
  sub_228720B94(v1);
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_228720ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22872C1D4();
  *a2 = result;
  return result;
}

unint64_t sub_228720F00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_228720B94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_228720F48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22872C1D4();
  *a1 = result;
  return result;
}

uint64_t sub_228720F7C(uint64_t a1)
{
  v2 = sub_22872AEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228720FB8(uint64_t a1)
{
  v2 = sub_22872AEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static ModelTrainingElement.make(from:)()
{
  v0 = sub_2287C9510();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2287C9500();
  type metadata accessor for ModelTrainingElement(0);
  sub_22872AD74(&qword_27D850BF0, type metadata accessor for ModelTrainingElement);
  sub_2287C94F0();
}

uint64_t ModelTrainingElement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_22872C8E0(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = v55 - v6;
  sub_22872C8E0(0, &qword_280DE33E0, MEMORY[0x277D11FA8], v3);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = v55 - v9;
  v10 = sub_2287C97C0();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v60 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE33C8, MEMORY[0x277D12030], v3);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = v55 - v15;
  sub_22872C8E0(0, &qword_280DE3398, MEMORY[0x277D12080], v3);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = v55 - v18;
  v19 = sub_2287C9B20();
  v65 = *(v19 - 8);
  v66 = v19;
  v20 = *(v65 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C540(0, &qword_27D850C10, sub_22872AEE4, &type metadata for ModelTrainingElement.CodingKeys, MEMORY[0x277D844C8]);
  v69 = v23;
  v67 = *(v23 - 8);
  v24 = *(v67 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v55 - v25;
  v27 = type metadata accessor for ModelTrainingElement(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22872AEE4();
  v68 = v26;
  v32 = v70;
  sub_2287CBE20();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v70 = a1;
  v56 = v27;
  v33 = MEMORY[0x277D83B88];
  sub_22872C9D8(0, &qword_27D850C20, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
  v71 = 0;
  sub_22872B028(&qword_27D850C28, &qword_27D850C20, v33);
  sub_2287CBC40();
  *v30 = v72;
  LOBYTE(v72) = 1;
  sub_22872AD74(&qword_27D850C30, MEMORY[0x277D11E28]);
  v34 = v66;
  sub_2287CBC70();
  v35 = v56;
  (*(v65 + 32))(&v30[v56[5]], v22, v34);
  LOBYTE(v72) = 2;
  v55[1] = 0;
  v36 = sub_2287CBC30();
  v37 = &v30[v35[6]];
  *v37 = v36;
  v37[8] = v38 & 1;
  sub_2287CA2E0();
  LOBYTE(v72) = 3;
  sub_22872AD74(&qword_280DE33A0, MEMORY[0x277D12080]);
  v39 = v62;
  sub_2287CBC40();
  sub_22872AFA8(v39, &v30[v56[7]], &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287CA280();
  LOBYTE(v72) = 4;
  sub_22872AD74(&qword_27D850C38, MEMORY[0x277D12030]);
  v40 = v61;
  sub_2287CBC40();
  v41 = v56;
  sub_22872AFA8(v40, &v30[v56[8]], &qword_280DE33C8, MEMORY[0x277D12030]);
  LOBYTE(v72) = 5;
  sub_22872AD74(&qword_280DE34B0, MEMORY[0x277CC9578]);
  v42 = v60;
  v43 = v64;
  sub_2287CBC70();
  (*(v63 + 32))(&v30[v41[9]], v42, v43);
  v44 = MEMORY[0x277D837D0];
  sub_22872C9D8(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v71 = 6;
  sub_22872B028(&qword_27D850C40, &qword_280DE3A00, v44);
  sub_2287CBC40();
  *&v30[v41[10]] = v72;
  LOBYTE(v72) = 7;
  v45 = sub_2287CBC30();
  v46 = &v30[v56[11]];
  *v46 = v45;
  v46[8] = v47 & 1;
  sub_2287CA050();
  LOBYTE(v72) = 8;
  sub_22872AD74(&qword_280DE33E8, MEMORY[0x277D11FA8]);
  v48 = v59;
  sub_2287CBC40();
  sub_22872AFA8(v48, &v30[v56[12]], &qword_280DE33E0, MEMORY[0x277D11FA8]);
  sub_2287C9F50();
  LOBYTE(v72) = 9;
  sub_22872AD74(&qword_280DE3408, MEMORY[0x277D11F48]);
  sub_2287CBC40();
  sub_22872AFA8(v58, &v30[v56[13]], &qword_280DE3400, MEMORY[0x277D11F48]);
  LOBYTE(v72) = 10;
  v49 = sub_2287CBC50();
  v51 = v50;
  (*(v67 + 8))(v68, v69);
  v52 = v57;
  v53 = &v30[v56[14]];
  *v53 = v49;
  v53[1] = v51;
  sub_22872AA54(v30, v52, type metadata accessor for ModelTrainingElement);
  __swift_destroy_boxed_opaque_existential_0(v70);
  return sub_22872AABC(v30, type metadata accessor for ModelTrainingElement);
}

void FeedItem.init(context:modelTrainingElement:)(void *a1, uint64_t (*a2)(uint64_t))
{
  v143 = a1;
  v3 = sub_2287CA140();
  v127 = *(v3 - 8);
  v128 = v3;
  v4 = *(v127 + 64);
  MEMORY[0x28223BE20](v3);
  v126 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_22872C8E0(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v129 = &v107 - v9;
  v130 = sub_2287C9F50();
  v137 = *(v130 - 8);
  v10 = *(v137 + 64);
  v11 = MEMORY[0x28223BE20](v130);
  v124 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v125 = &v107 - v13;
  v123 = sub_2287CA210();
  v122 = *(v123 - 8);
  v14 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE33E0, MEMORY[0x277D11FA8], v6);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v134 = &v107 - v18;
  v19 = sub_2287CA050();
  v135 = *(v19 - 8);
  v136 = v19;
  v20 = *(v135 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v119 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v120 = &v107 - v23;
  v113 = sub_2287CA3E0();
  v112 = *(v113 - 8);
  v24 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_2287CA500();
  v117 = *(v118 - 8);
  v26 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v116 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE3398, MEMORY[0x277D12080], v6);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v131 = &v107 - v30;
  v31 = sub_2287CA2E0();
  v132 = *(v31 - 8);
  v133 = v31;
  v32 = *(v132 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v114 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v115 = &v107 - v35;
  v110 = sub_2287CA4A0();
  v109 = *(v110 - 8);
  v36 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = MEMORY[0x277D12030];
  sub_22872C8E0(0, &qword_280DE33C8, MEMORY[0x277D12030], v6);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v141 = &v107 - v40;
  v41 = sub_2287C9B20();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v107 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE3980, MEMORY[0x277CC88A8], v6);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v49 = &v107 - v48;
  v50 = sub_2287C97C0();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v107 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = "$_pertinentChangeDomain";
  v140 = "ModelTrainingStoryboard";
  v55 = type metadata accessor for ModelTrainingElement(0);
  v56 = (a2 + v55[14]);
  v57 = v56[1];
  v138 = *v56;
  (*(v51 + 16))(v54, a2 + v55[9], v50);
  v58 = sub_2287C9590();
  (*(*(v58 - 8) + 56))(v49, 1, 1, v58);
  (*(v42 + 16))(v45, a2 + v55[5], v41);
  v59 = v143;

  v60 = v55;
  v143 = v59;
  v61 = sub_2287CA7E0();
  sub_22872ADBC(a2 + v55[8], v141, &qword_280DE33C8, v142);
  v62 = v61;
  sub_2287CA7B0();

  v63 = *a2;
  v144 = v55;
  if (!v63)
  {
LABEL_19:
    v76 = (a2 + v60[6]);
    if ((v76[1] & 1) == 0 && *v76 >= 0.0)
    {
      v77 = v108;
      sub_2287CA4B0();
      v78 = v110;
      sub_2287CA730();
      (*(v109 + 8))(v77, v78);
    }

    v79 = v131;
    sub_22872ADBC(a2 + v60[7], v131, &qword_280DE3398, MEMORY[0x277D12080]);
    v80 = v132;
    v81 = v133;
    v82 = (*(v132 + 48))(v79, 1, v133);
    v84 = v136;
    v83 = v137;
    v85 = v135;
    if (v82 == 1)
    {
      sub_22872AF38(v79, &qword_280DE3398, MEMORY[0x277D12080]);
    }

    else
    {
      v86 = v115;
      (*(v80 + 32))(v115, v79, v81);
      (*(v80 + 16))(v114, v86, v81);
      v87 = v116;
      sub_2287CA510();
      v88 = v118;
      sub_2287CA730();
      v89 = v87;
      v60 = v144;
      (*(v117 + 8))(v89, v88);
      (*(v80 + 8))(v86, v81);
    }

    v90 = v60[10];
    if (*(a2 + v90))
    {
      v91 = *(a2 + v90);

      sub_22872A9BC(v92);

      sub_2287CA780();
    }

    v93 = (a2 + v60[11]);
    if ((v93[1] & 1) == 0 && *v93 >= 0.0)
    {
      v94 = v111;
      sub_2287CA3F0();
      v95 = v113;
      sub_2287CA730();
      v96 = v94;
      v60 = v144;
      (*(v112 + 8))(v96, v95);
    }

    v97 = v134;
    sub_22872ADBC(a2 + v60[12], v134, &qword_280DE33E0, MEMORY[0x277D11FA8]);
    if ((*(v85 + 48))(v97, 1, v84) == 1)
    {
      sub_22872AF38(v97, &qword_280DE33E0, MEMORY[0x277D11FA8]);
    }

    else
    {
      v98 = v120;
      (*(v85 + 32))(v120, v97, v84);
      (*(v85 + 16))(v119, v98, v84);
      v99 = v121;
      sub_2287CA220();
      v100 = v123;
      sub_2287CA730();
      v101 = v99;
      v60 = v144;
      (*(v122 + 8))(v101, v100);
      (*(v85 + 8))(v98, v84);
    }

    v102 = v129;
    v103 = v130;
    sub_22872ADBC(a2 + v60[13], v129, &qword_280DE3400, MEMORY[0x277D11F48]);
    if ((*(v83 + 48))(v102, 1, v103) == 1)
    {

      sub_22872AABC(a2, type metadata accessor for ModelTrainingElement);
      sub_22872AF38(v102, &qword_280DE3400, MEMORY[0x277D11F48]);
    }

    else
    {
      v104 = v125;
      (*(v83 + 32))(v125, v102, v103);
      (*(v83 + 16))(v124, v104, v103);
      v105 = v126;
      sub_2287CA150();
      v106 = v128;
      sub_2287CA730();

      (*(v127 + 8))(v105, v106);
      (*(v83 + 8))(v104, v103);
      sub_22872AABC(a2, type metadata accessor for ModelTrainingElement);
    }

    return;
  }

  v142 = a2;
  v64 = *(v63 + 16);
  if (!v64)
  {
    v67 = MEMORY[0x277D84F90];
    v71 = *(MEMORY[0x277D84F90] + 16);
    v145 = MEMORY[0x277D84F90];
    v72 = MEMORY[0x277D84F90];
    if (v71)
    {
LABEL_12:
      v73 = objc_opt_self();
      v72 = MEMORY[0x277D84F90];
      v74 = 32;
      do
      {
        if ([v73 dataTypeWithCode_])
        {
          MEMORY[0x22AABEA50]();
          if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v75 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2287CB3E0();
          }

          sub_2287CB420();
          v72 = v145;
        }

        v74 += 8;
        --v71;
      }

      while (v71);
    }

    sub_22872BEB8(v72, &qword_280DE3638, 0x277CCD720, &qword_280DE3630, sub_228724218);

    sub_2287CA760();
    a2 = v142;
    v60 = v144;
    goto LABEL_19;
  }

  v65 = 0;
  v66 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  while (v65 < *(v63 + 16))
  {
    v68 = *(v63 + 32 + 8 * v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_228723040(0, *(v67 + 2) + 1, 1, v67);
    }

    v70 = *(v67 + 2);
    v69 = *(v67 + 3);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      v67 = sub_228723040((v69 > 1), v70 + 1, 1, v67);
    }

    ++v65;
    *(v67 + 2) = v71;
    *&v67[8 * v70 + 32] = v68;
    if (v64 == v65)
    {
      v145 = v66;
      goto LABEL_12;
    }
  }

  __break(1u);
}

char *sub_228722DF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22872C9D8(0, &qword_280DE39A8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228722F14(char *result, int64_t a2, char a3, char *a4)
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
    sub_22872C5A8();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_228723040(char *result, int64_t a2, char a3, char *a4)
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
    sub_22872C8E0(0, &qword_280DE1818, type metadata accessor for _HKDataTypeCode, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_22872319C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22872C8E0(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_228723390(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22872C8E0(0, &qword_27D850CD8, sub_22872C270, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22870CFB4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228723510(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22872C48C(0, &qword_280DE1870, &qword_280DE3350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22872C7C4(0, &qword_280DE3350);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228723670(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22872C8E0(0, &qword_280DE1838, sub_22872C748, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22872C748();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2287238A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22872C9D8(0, &qword_280DDFE58, MEMORY[0x277D121B8], MEMORY[0x277D84560]);
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

void *sub_2287239AC(uint64_t a1, uint64_t a2)
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

  sub_22872C9D8(0, &qword_280DE39A8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_228723A48(uint64_t a1, uint64_t a2)
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

  sub_22872C9D8(0, &qword_280DDFE58, MEMORY[0x277D121B8], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_228723AD4(uint64_t a1, uint64_t a2)
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

  sub_22872C9D8(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_228723B70(uint64_t a1, uint64_t a2)
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

  sub_22872C9D8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_228723C14(uint64_t a1, uint64_t a2)
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

  sub_22872C48C(0, &qword_280DDFE50, qword_280DE1038);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_228723CA8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2287CB930();

    if (v9)
    {

      sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2287CB920();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2287252A0(v7, result + 1, &qword_280DE35C0, &qword_280DE35F0, 0x277D444A0, &qword_280DE35E8);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2287268CC(v22 + 1, &qword_280DE35C0, &qword_280DE35F0, 0x277D444A0, &qword_280DE35E8);
    }

    v20 = v8;
    sub_228752010();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
  v11 = *(v6 + 40);
  v12 = sub_2287CB7E0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_228729B74(v20, v14, isUniquelyReferenced_nonNull_native, &qword_280DE35C0, &qword_280DE35F0, 0x277D444A0, &qword_280DE35E8);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2287CB7F0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228723F40(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_2287CBD80();
  _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  sub_2287CB290();

  v8 = sub_2287CBDB0();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + v10);
      v13 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v15 = v14;
      if (v13 == _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0() && v15 == v16)
      {
        break;
      }

      v18 = sub_2287CBD00();

      if (v18)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v10);
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_228729408(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2287240C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2287CBD80();
  sub_2287CB290();
  v9 = sub_2287CBDB0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2287CBD00() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2287295E0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_228724218(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2287CB930();

    if (v9)
    {

      sub_228703004(0, &qword_280DE3638, 0x277CCD720);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2287CB920();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2287252A0(v7, result + 1, &qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2287268CC(v22 + 1, &qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
    }

    v20 = v8;
    sub_228752010();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_228703004(0, &qword_280DE3638, 0x277CCD720);
  v11 = *(v6 + 40);
  v12 = sub_2287CB7E0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_228729B74(v20, v14, isUniquelyReferenced_nonNull_native, &qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2287CB7F0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2287244B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2287C9B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28]);
  v36 = a2;
  v13 = sub_2287CB1B0();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22872AD74(&qword_280DE3428, MEMORY[0x277D11E28]);
      v23 = sub_2287CB200();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_228729760(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_228724790(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_2287CBD80();
  sub_2287C9C90();
  v8 = sub_2287CBDB0();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_2287C9C80();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v18 = *(*(v6 + 48) + 8 * v10);
    *a1 = v18;
    v19 = v18;
    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    v16 = a2;
    sub_228729A04(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_2287248CC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2287CB930();

    if (v9)
    {

      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2287CB920();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2287252A0(v7, result + 1, &qword_280DE18E0, &qword_280DE3870, 0x277CCD7C8, &qword_280DE1970);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2287268CC(v22 + 1, &qword_280DE18E0, &qword_280DE3870, 0x277CCD7C8, &qword_280DE1970);
    }

    v20 = v8;
    sub_228752010();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
  v11 = *(v6 + 40);
  v12 = sub_2287CB7E0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_228729B74(v20, v14, isUniquelyReferenced_nonNull_native, &qword_280DE18E0, &qword_280DE3870, 0x277CCD7C8, &qword_280DE1970);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2287CB7F0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228724B64(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2287CB930();

    if (v9)
    {

      sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2287CB920();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2287252A0(v7, result + 1, &qword_27D850CD0, &qword_280DE19B0, 0x277CCD8D8, &qword_280DE19A8);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2287268CC(v22 + 1, &qword_27D850CD0, &qword_280DE19B0, 0x277CCD8D8, &qword_280DE19A8);
    }

    v20 = v8;
    sub_228752010();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
  v11 = *(v6 + 40);
  v12 = sub_2287CB7E0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_228729B74(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D850CD0, &qword_280DE19B0, 0x277CCD8D8, &qword_280DE19A8);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2287CB7F0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228724DFC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2287CBD80();
  MEMORY[0x22AABF460](a2);
  v7 = sub_2287CBDB0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_228729D1C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_228724EF4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2287260C0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_228725020(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_2287CB920())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    sub_22872C220(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    sub_2287CB4C0();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_22870B3D4();
      return;
    }

    while (1)
    {
      v18 = sub_2287261FC(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_2287CB950())
      {
        sub_228703004(0, &qword_280DE3638, 0x277CCD720);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_2287252A0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_22872C854(0, a3, a4, a5, a6);
    v10 = sub_2287CB9E0();
    v24 = v10;
    sub_2287CB8D0();
    if (sub_2287CB950())
    {
      sub_228703004(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_2287268CC(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_2287CB7E0();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_2287CB950());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2287254B8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_2287CBD80();

    sub_2287CB290();
    v24 = sub_2287CBDB0();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_2287CBD00() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_2287B4B24(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_2287CBD80();

            sub_2287CB290();
            v43 = sub_2287CBDB0();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_2287CBD00() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_2287272F8(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x22AABFD90](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_22870B3D4();
    goto LABEL_53;
  }

  result = MEMORY[0x22AABFD90](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_228725A28(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v86 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    sub_22872C220(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    sub_2287CB4C0();
    v4 = v81;
    v6 = v82;
    v7 = v83;
    v8 = v84;
    v9 = v85;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v76 = v4;
  v77 = v6;
  v78 = v7;
  v79 = v8;
  v67 = v7;
  v13 = (v7 + 64) >> 6;
  v73 = (v3 + 56);
  v80 = v9;
  v70 = v6;
  v71 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_2287CB950();
      if (!v21)
      {
        goto LABEL_62;
      }

      v74 = v21;
      sub_228703004(0, &qword_280DE3638, 0x277CCD720);
      swift_dynamicCast();
      v19 = v75;
      v17 = v8;
      v2 = v9;
      if (!v75)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v76 = v4;
      v77 = v6;
      v78 = v67;
      v79 = v17;
      v80 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = *(v3 + 40);
    v23 = v19;
    v24 = sub_2287CB7E0();
    v25 = -1 << *(v3 + 32);
    v8 = v24 & ~v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v70;
    v4 = v71;
  }

  v26 = ~v25;
  v27 = sub_228703004(0, &qword_280DE3638, 0x277CCD720);
  v28 = *(*(v3 + 48) + 8 * v8);
  v72 = v27;
  while (1)
  {
    v29 = sub_2287CB7F0();

    if (v29)
    {
      break;
    }

    v8 = (v8 + 1) & v26;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v3 + 48) + 8 * v8);
  }

  v31 = *(v3 + 32);
  v64 = ((1 << v31) + 63) >> 6;
  v5 = 8 * v64;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v65 = &v63;
    MEMORY[0x28223BE20](v30);
    v33 = &v63 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v73, v32);
    v34 = *&v33[8 * v4] & ~v15;
    v35 = *(v3 + 16);
    v66 = v33;
    *&v33[8 * v4] = v34;
    v4 = v35 - 1;
    v37 = v70;
    v36 = v71;
    v38 = i;
LABEL_33:
    v68 = v4;
    while (v36 < 0)
    {
      v39 = sub_2287CB950();
      if (!v39)
      {
        goto LABEL_61;
      }

      v74 = v39;
      swift_dynamicCast();
      v40 = v75;
      if (!v75)
      {
        goto LABEL_61;
      }

LABEL_50:
      v45 = *(v3 + 40);
      v46 = sub_2287CB7E0();
      v47 = v3;
      v48 = -1 << *(v3 + 32);
      v49 = v46 & ~v48;
      v50 = v49 >> 6;
      v51 = 1 << v49;
      if (((1 << v49) & v73[v49 >> 6]) != 0)
      {
        v52 = ~v48;
        while (1)
        {
          v8 = *(*(v47 + 48) + 8 * v49);
          v53 = sub_2287CB7F0();

          if (v53)
          {
            break;
          }

          v49 = (v49 + 1) & v52;
          v50 = v49 >> 6;
          v51 = 1 << v49;
          if (((1 << v49) & v73[v49 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v54 = v66[v50];
        v66[v50] = v54 & ~v51;
        v55 = (v54 & v51) == 0;
        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
        if (!v55)
        {
          v4 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v43 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v40 = *(*(v36 + 48) + ((v15 << 9) | (8 * v43)));
      v44 = v40;
      v42 = v15;
LABEL_49:
      v76 = v36;
      v77 = v37;
      v78 = v67;
      v79 = v42;
      v17 = v42;
      v80 = v2;
      if (!v40)
      {
LABEL_61:
        v3 = sub_2287B5088(v66, v64, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v38 <= v17 + 1)
    {
      v41 = v17 + 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v38)
      {
        v40 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v58 = v5;

    v59 = v58;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v60 = swift_slowAlloc();
  memcpy(v60, v73, v59);
  sub_228727530(v60, v64, v3, v8, &v76);
  v62 = v61;

  MEMORY[0x22AABFD90](v60, -1, -1);
  v3 = v62;
LABEL_62:
  sub_22870B3D4();
LABEL_63:
  v56 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2287260C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2287CBD80();
  sub_2287CB290();
  v7 = sub_2287CBDB0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2287CBD00() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228727AC0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2287290A4(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_2287261FC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_2287CB960();

    if (v7)
    {
      v8 = sub_2287277CC();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_228703004(0, &qword_280DE3638, 0x277CCD720);
  v11 = *(v3 + 40);
  v12 = sub_2287CB7E0();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_2287CB7F0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228727C3C(&qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_228729268(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_2287263B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22872C540(0, &qword_280DDFE80, sub_22872C4EC, MEMORY[0x277D121B8], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2287CBD80();
      _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      sub_2287CB290();

      result = sub_2287CBDB0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22872664C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22872C6F4(0, &qword_280DE35C8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2287CBD80();
      sub_2287CB290();
      result = sub_2287CBDB0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2287268CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_22872C854(0, a2, a3, a4, a5);
  result = sub_2287CB9D0();
  v10 = result;
  if (*(v7 + 16))
  {
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_2287CB7E0();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_228726AE8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2287C9B20();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_22872C3A4();
  result = sub_2287CB9D0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28]);
      result = sub_2287CB1B0();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_228726E38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22872C540(0, &unk_280DDFE88, sub_22872C350, MEMORY[0x277D11E90], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2287CBD80();
      sub_2287C9C90();
      result = sub_2287CBDB0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2287270B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22872C62C();
  result = sub_2287CB9D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2287CBD80();
      MEMORY[0x22AABF460](v18);
      result = sub_2287CBDB0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2287272F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_2287B4B24(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_2287CBD80();

        sub_2287CB290();
        v20 = sub_2287CBDB0();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_2287CBD00() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void sub_228727530(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_2287CB950())
          {
            goto LABEL_30;
          }

          sub_228703004(0, &qword_280DE3638, 0x277CCD720);
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_2287B5088(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_2287CB7E0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_228703004(0, &qword_280DE3638, 0x277CCD720);
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_2287CB7F0();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_2287CB7F0();

          if (v28)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
      v5 = a5;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2287277CC()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_2287CB920();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2287252A0(v4, v3, &qword_280DE18E8, &qword_280DE3638, 0x277CCD720, &qword_280DE3630);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_2287CB7E0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_2287CB7F0();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_228729268(v9);
  result = sub_2287CB7F0();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_228727954()
{
  v1 = v0;
  sub_22872C540(0, &qword_280DDFE80, sub_22872C4EC, MEMORY[0x277D121B8], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2287CB9C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_228727AC0()
{
  v1 = v0;
  sub_22872C6F4(0, &qword_280DE35C8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2287CB9C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_228727C3C(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_22872C854(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_2287CB9C0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_228727D90()
{
  v1 = v0;
  v2 = sub_2287C9B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C3A4();
  v7 = *v0;
  v8 = sub_2287CB9C0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

id sub_228727FB8()
{
  v1 = v0;
  sub_22872C540(0, &unk_280DDFE88, sub_22872C350, MEMORY[0x277D11E90], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2287CB9C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_228728134()
{
  v1 = v0;
  sub_22872C62C();
  v2 = *v0;
  v3 = sub_2287CB9C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_228728268(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22872C540(0, &qword_280DDFE80, sub_22872C4EC, MEMORY[0x277D121B8], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2287CBD80();
      _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      sub_2287CB290();

      result = sub_2287CBDB0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2287284D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22872C6F4(0, &qword_280DE35C8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2287CBD80();

      sub_2287CB290();
      result = sub_2287CBDB0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_228728728(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_22872C854(0, a2, a3, a4, a5);
  result = sub_2287CB9D0();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_2287CB7E0();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v6 = v10;
  }

  return result;
}

uint64_t sub_228728930(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2287C9B20();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22872C3A4();
  v10 = sub_2287CB9D0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28]);
      result = sub_2287CB1B0();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_228728C40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22872C540(0, &unk_280DDFE88, sub_22872C350, MEMORY[0x277D11E90], MEMORY[0x277D84098]);
  result = sub_2287CB9D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2287CBD80();
      v19 = v17;
      sub_2287C9C90();
      result = sub_2287CBDB0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_228728E90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22872C62C();
  result = sub_2287CB9D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2287CBD80();
      MEMORY[0x22AABF460](v17);
      result = sub_2287CBDB0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2287290A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2287CB8A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2287CBD80();

        sub_2287CB290();
        v15 = sub_2287CBDB0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_228729268(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2287CB8A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_2287CB7E0();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_228729408(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2287263B4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_228727954();
      goto LABEL_16;
    }

    sub_228728268(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_2287CBD80();
  _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  sub_2287CB290();

  result = sub_2287CBDB0();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2);
      v14 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v16 = v15;
      if (v14 == _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0() && v16 == v17)
      {
        goto LABEL_19;
      }

      v19 = sub_2287CBD00();

      if (v19)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_2287CBD20();
  __break(1u);
  return result;
}

uint64_t sub_2287295E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22872664C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_228727AC0();
      goto LABEL_16;
    }

    sub_2287284D0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2287CBD80();
  sub_2287CB290();
  result = sub_2287CBDB0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2287CBD00();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2287CBD20();
  __break(1u);
  return result;
}