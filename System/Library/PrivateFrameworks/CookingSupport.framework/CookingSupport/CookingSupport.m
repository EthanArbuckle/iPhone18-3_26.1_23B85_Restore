unint64_t Assembly.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_21A365B50(&qword_27CD24280, &qword_21A3B3EE8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21A3B3530;
  *(v2 + 56) = &type metadata for IntentsAssembly;
  result = sub_21A35F8C8();
  *(v2 + 64) = result;
  *a1 = v2;
  return result;
}

unint64_t sub_21A35F8C8()
{
  result = qword_2811B2868[0];
  if (!qword_2811B2868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B2868);
  }

  return result;
}

uint64_t sub_21A35F924(uint64_t a1)
{
  v2 = sub_21A3B21BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A3B218C();
  sub_21A365B50(&qword_27CD24080, &qword_21A3B32E0);
  sub_21A3B21AC();

  (*(v3 + 104))(v7, *MEMORY[0x277D6CF10], v2);
  sub_21A3B213C();

  (*(v3 + 8))(v7, v2);
  sub_21A3B218C();
  sub_21A365B50(&qword_27CD24088, &qword_21A3B32E8);
  sub_21A3B21AC();

  sub_21A3B256C();
  return sub_21A35FB18(sub_21A35FCB0, a1);
}

uint64_t sub_21A35FB18(uint64_t a1, uint64_t a2)
{
  sub_21A3B255C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_21A35FCCC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_21A3B264C();
    MEMORY[0x21CED89A0](0xD00000000000003FLL, 0x800000021A3BB0D0);
    v8 = sub_21A3B26CC();
    MEMORY[0x21CED89A0](v8);

    MEMORY[0x21CED89A0](46, 0xE100000000000000);
    result = sub_21A3B266C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21A35FCCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21A35FCF4()
{
  sub_21A3B218C();
  type metadata accessor for AppIntentInvocationMonitor();
  sub_21A3B219C();

  sub_21A3B218C();
  type metadata accessor for CookingSupportAppIntentEventHandler();
  sub_21A3B21AC();
}

uint64_t type metadata accessor for AppIntentInvocationMonitor()
{
  result = qword_2811B2848;
  if (!qword_2811B2848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A35FE00()
{
  result = sub_21A3B233C();
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

uint64_t type metadata accessor for CookingSupportAppIntentEventHandler()
{
  result = qword_2811B28F0;
  if (!qword_2811B28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A35FEDC()
{
  if (!qword_2811B27A0)
  {
    sub_21A364A10(&qword_27CD243D0, qword_21A3B46D8);
    v0 = sub_21A3B22EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B27A0);
    }
  }
}

void sub_21A35FF40()
{
  sub_21A3B233C();
  if (v0 <= 0x3F)
  {
    sub_21A35FEDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t AppDependencyManager.addCookingSupportDependencies(from:)(uint64_t a1)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  sub_21A360350(v16, v3 + 24);
  sub_21A3B1A8C();
  v4 = sub_21A365B50(&qword_27CD24420, &qword_21A3B47F8);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B47F0, v3, v4);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  sub_21A360350(v16, v5 + 24);
  sub_21A3B1A8C();
  v6 = sub_21A365B50(&qword_27CD24080, &qword_21A3B32E0);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4810, v5, v6);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  sub_21A360350(v16, v7 + 24);
  sub_21A3B1A8C();
  v8 = sub_21A365B50(&qword_27CD24430, &qword_21A3B4828);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4820, v7, v8);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_21A360350(v16, v9 + 24);
  sub_21A3B1A8C();
  v10 = sub_21A365B50(&qword_27CD24438, &qword_21A3B4840);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4838, v9, v10);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  sub_21A360350(v16, v11 + 24);
  sub_21A3B1A8C();
  v12 = sub_21A365B50(&qword_27CD24440, &qword_21A3B4858);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4850, v11, v12);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  sub_21A360350(v16, v13 + 24);
  sub_21A3B1A8C();
  v14 = sub_21A365B50(&qword_27CD24448, qword_21A3B4870);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4868, v13, v14);

  return sub_21A3603E4(&v17);
}

uint64_t sub_21A360350(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21A360380(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A3603E4(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24428, &qword_21A3B4800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s9TeaBreeze5ScopeV14CookingSupportE013configureRootc3FordE0yyF_0()
{
  type metadata accessor for CookingSupportAppIntentEventHandler();
  sub_21A360514(qword_2811B2900, type metadata accessor for CookingSupportAppIntentEventHandler);
  sub_21A3B241C();
  type metadata accessor for AppIntentInvocationMonitor();
  sub_21A360514(&qword_2811B2858, type metadata accessor for AppIntentInvocationMonitor);

  return sub_21A3B241C();
}

uint64_t sub_21A360514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A360578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A3B233C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A365B50(&qword_27CD243C8, &unk_21A3B46A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A360694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A3B233C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A365B50(&qword_27CD243C8, &unk_21A3B46A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A360790()
{
  MEMORY[0x21CED87B0]();
  v0 = *(type metadata accessor for CookingSupportAppIntentEventHandler() + 20);
  swift_getKeyPath();
  return sub_21A3B22FC();
}

uint64_t sub_21A360818(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A360870()
{
  result = sub_21A3B1FFC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CookingSupportAppIntentEventAction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21A3608F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A360940()
{
  sub_21A3608F4(319, &qword_2811B2C20, MEMORY[0x277CFCDB0]);
  if (v0 <= 0x3F)
  {
    sub_21A3608F4(319, &unk_2811B2C30, sub_21A3609F8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21A3609F8()
{
  if (!qword_2811B2C28)
  {
    v0 = sub_21A3B1DAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B2C28);
    }
  }
}

uint64_t sub_21A360A94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A360AE0(void *a1)
{
  v1 = a1[4];
  sub_21A360CEC(a1, a1[3]);
  sub_21A365B50(&qword_27CD24080, &qword_21A3B32E0);
  result = sub_21A3B217C();
  v3 = v23;
  if (v23)
  {
    v4 = sub_21A361030(v22, v23);
    v5 = *(*(v3 - 8) + 64);
    MEMORY[0x28223BE20](v4, v4);
    v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for CookingSupportAppIntentsController();
    v21[3] = v10;
    v21[4] = &off_282B3DB80;
    v21[0] = v9;
    v11 = type metadata accessor for AppIntentInvocationMonitor();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    v15 = sub_21A361030(v21, v10);
    v16 = *(*(v10 - 8) + 64);
    MEMORY[0x28223BE20](v15, v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = sub_21A361080(*v18, v14);
    sub_21A361318(v21);
    sub_21A361318(v22);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21A360CEC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21A360D30@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A365B50(&qword_27CD240A0, &qword_21A3B47E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CookingSupportAppIntentsController();
  v9 = swift_allocObject();
  type metadata accessor for CookingSupportAppIntentInvocation(0);
  sub_21A3B216C();
  v10 = sub_21A365B50(&qword_27CD240A8, &qword_21A3B3340);
  v11 = *(v10 + 52);
  v12 = (*(v10 + 48) + 3) & 0x1FFFFFFFCLL;
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = (*(v3 + 32))(v13 + *(*v13 + *MEMORY[0x277D841D0] + 16), v7, v2);
  *(v9 + 16) = v13;
  a1[3] = v8;
  a1[4] = &off_282B3DB80;
  *a1 = v9;
  return result;
}

uint64_t sub_21A360F28()
{
  result = sub_21A3B1FFC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CookingSupportAppIntentAction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21A360FE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21A361030(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_21A361080(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = v13 - v5;
  v14[3] = type metadata accessor for CookingSupportAppIntentsController();
  v14[4] = &off_282B3DB80;
  v14[0] = a1;
  MEMORY[0x21CED87B0]();
  v7 = sub_21A3B258C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_21A360380(v14, v13);
  sub_21A3B256C();
  sub_21A3B1A8C();
  v9 = sub_21A3B255C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  sub_21A360350(v13, (v10 + 4));
  v10[9] = v8;

  sub_21A368C68(0, 0, v6, &unk_21A3B3320, v10);

  sub_21A361318(v14);
  return a2;
}

uint64_t sub_21A361230()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A361268()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_21A361318(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21A3612B0(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A361318(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21A361364(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A36919C;

  return sub_21A36141C(a1, v5);
}

uint64_t sub_21A36141C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A368F28;

  return v7(a1);
}

uint64_t sub_21A361514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A3650E8;

  return sub_21A3615D4(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21A3615D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for CookingSupportAppIntentAction(0);
  v5[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for CookingSupportAppIntentEventAction(0);
  v5[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v10 = sub_21A3B1FFC();
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v12 = *(v11 + 64) + 15;
  v5[20] = swift_task_alloc();
  v13 = type metadata accessor for CookingSupportAppIntentEvent(0);
  v5[21] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v15 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v5[23] = v15;
  v16 = *(v15 - 8);
  v5[24] = v16;
  v17 = *(v16 + 64) + 15;
  v5[25] = swift_task_alloc();
  v18 = *(*(sub_21A365B50(&qword_27CD24408, &qword_21A3B47C8) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v19 = sub_21A365B50(&qword_27CD24410, &qword_21A3B47D0);
  v5[27] = v19;
  v20 = *(v19 - 8);
  v5[28] = v20;
  v21 = *(v20 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = sub_21A3B256C();
  v5[31] = sub_21A3B255C();
  v23 = sub_21A3B253C();
  v5[32] = v23;
  v5[33] = v22;

  return MEMORY[0x2822009F8](sub_21A361858, v23, v22);
}

uint64_t sub_21A361858()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *sub_21A360CEC(*(v0 + 96), *(*(v0 + 96) + 24));
  *(v0 + 80) = sub_21A365B50(&qword_27CD24418, &qword_21A3B47D8);
  *(v0 + 88) = sub_21A361B3C();
  sub_21A361BA0((v0 + 56));
  v5 = *(v4 + 16);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_21A365B50(&qword_27CD240A0, &qword_21A3B47E0);
  sub_21A3B214C();
  (*(v2 + 8))(v1, v3);
  os_unfair_lock_unlock((v5 + v7));
  v8 = *(v0 + 80);
  v9 = sub_21A360CEC((v0 + 56), v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v8);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  sub_21A361BA0((v0 + 16));
  sub_21A3B25BC();

  sub_21A361318((v0 + 56));
  v13 = *(v0 + 240);
  v14 = sub_21A3B255C();
  *(v0 + 272) = v14;
  v15 = *(v0 + 48);
  sub_21A361030(v0 + 16, *(v0 + 40));
  v16 = *(MEMORY[0x277D856D8] + 4);
  v17 = swift_task_alloc();
  *(v0 + 280) = v17;
  *v17 = v0;
  v17[1] = sub_21A37A8F4;
  v18 = *(v0 + 208);
  v19 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v18, v14, v19);
}

unint64_t sub_21A361B3C()
{
  result = qword_2811B2798;
  if (!qword_2811B2798)
  {
    sub_21A364A10(&qword_27CD24418, &qword_21A3B47D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B2798);
  }

  return result;
}

uint64_t *sub_21A361BA0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21A361C94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A3B210C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A361D40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A3B210C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A361EB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A361EDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21A361F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A3B1FFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CookingSupportAppIntentAction(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A362014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A3B1FFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CookingSupportAppIntentAction(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A362164()
{
  v1 = (type metadata accessor for RecipeEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  v7 = *(v6 + 1);

  v8 = *(v6 + 2);

  v9 = *(v6 + 3);

  v10 = *(v6 + 4);

  v11 = *(v6 + 5);

  v12 = v1[11];
  v13 = sub_21A3B210C();
  (*(*(v13 - 8) + 8))(&v6[v12], v13);
  v14 = *(v0 + v4);

  v15 = *(v0 + v4 + 8);

  v16 = *(v0 + v4 + 16);

  v17 = *(v0 + v4 + 24);

  v18 = *(v0 + v4 + 32);

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_21A3622AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A36231C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A36238C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A362448@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A362474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A3B1FFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CookingSupportAppIntentEventAction(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A362564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A3B1FFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CookingSupportAppIntentEventAction(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A362724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A3B20BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21A3627E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A3B20BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A3628E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A3629C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A362A30()
{
  v1 = (type metadata accessor for RecipeEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  v7 = *(v6 + 1);

  v8 = *(v6 + 2);

  v9 = *(v6 + 3);

  v10 = *(v6 + 4);

  v11 = *(v6 + 5);

  v12 = v1[11];
  v13 = sub_21A3B210C();
  (*(*(v13 - 8) + 8))(&v6[v12], v13);
  v14 = *(v0 + v4);

  v15 = *(v0 + v4 + 8);

  v16 = *(v0 + v4 + 16);

  v17 = *(v0 + v4 + 24);

  v18 = *(v0 + v4 + 32);

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_21A362B78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A362BD0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_21A3B243C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_21A3B1F0C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = sub_21A3B1F1C();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[13];

  return v17(v18, a2, v16);
}

uint64_t sub_21A362DE4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_21A3B243C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_21A3B1F0C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = sub_21A3B1F1C();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[13];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21A363058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B236C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21A363084(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21A3B237C();
}

uint64_t sub_21A36318C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A3B234C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A3631E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B23DC();
  *a1 = result;
  return result;
}

uint64_t sub_21A363210(uint64_t *a1)
{
  v1 = *a1;
  sub_21A3B1A8C();
  return sub_21A3B23EC();
}

uint64_t sub_21A363360(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24698, &qword_21A3B50C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A3633C8()
{
  sub_21A364A10(&qword_27CD24698, &qword_21A3B50C8);
  sub_21A385644();
  sub_21A3859BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A36348C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A3634FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A36368C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A3636FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A363728@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A363798@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A363810@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t sub_21A36386C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A3B1A3C();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for RecipeEntity()
{
  result = qword_27CD23EF8;
  if (!qword_27CD23EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21A3639C4()
{
  result = qword_27CD23EB0;
  if (!qword_27CD23EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23EB0);
  }

  return result;
}

uint64_t sub_21A363A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v37 - v8;
  v10 = sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v37 - v13;
  v15 = sub_21A3B205C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = (&v37 - v24);
  (*(v16 + 16))(v20, a1, v15);
  v38 = a2;
  sub_21A365CB4(a2, v14, &qword_27CD23F70, &unk_21A3B4D70);
  v39 = a1;
  sub_21A3B204C();
  v26 = sub_21A3B1E2C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v9, 1, v26) == 1)
  {
    sub_21A365D1C(v9, &qword_27CD23F68, &unk_21A3B2F30);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_21A3B1E1C();
    v29 = v30;
    (*(v27 + 8))(v9, v26);
  }

  sub_21A363DB8(v20, v14, v28, v29, v25);
  sub_21A365D1C(v38, &qword_27CD23F70, &unk_21A3B4D70);
  (*(v16 + 8))(v39, v15);
  v31 = type metadata accessor for RecipeEntity();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 48))(v25, 1, v31);
  v34 = v40;
  if (v33)
  {
    sub_21A365D1C(v25, &qword_27CD23F78, &unk_21A3B2F40);
    v35 = 1;
  }

  else
  {
    sub_21A365B98(v25, v40);
    v35 = 0;
  }

  return (*(v32 + 56))(v34, v35, 1, v31);
}

uint64_t sub_21A363DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v108 = a4;
  v109 = a5;
  v106 = a3;
  v105 = sub_21A3B20CC();
  v103 = *(v105 - 8);
  v7 = *(v103 + 64);
  MEMORY[0x28223BE20](v105, v8);
  v104 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21A3B212C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v102 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_21A3B24DC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v101 = &v85[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_21A3B20EC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v100 = &v85[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_21A3B1DDC();
  v23 = *(v22 - 8);
  v112 = v22;
  v113 = v23;
  v24 = *(v23 + 8);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v85[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_21A3B1FFC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v85[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v38 = &v85[-v37];
  v39 = sub_21A3B210C();
  v40 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v107 = &v85[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v85[-v45];
  v48 = v47;
  v50 = v49;
  sub_21A365CB4(a2, v38, &qword_27CD23F70, &unk_21A3B4D70);
  if ((*(v50 + 48))(v38, 1, v48) == 1)
  {

    sub_21A365D1C(a2, &qword_27CD23F70, &unk_21A3B4D70);
    v51 = sub_21A3B205C();
    (*(*(v51 - 8) + 8))(a1, v51);
    sub_21A365D1C(v38, &qword_27CD23F70, &unk_21A3B4D70);
    v52 = type metadata accessor for RecipeEntity();
    return (*(*(v52 - 8) + 56))(v109, 1, 1, v52);
  }

  else
  {
    (*(v50 + 32))(v46, v38, v48);
    sub_21A3B200C();
    v94 = sub_21A3B1FEC();
    v93 = v54;
    (*(v29 + 8))(v33, v28);
    v92 = sub_21A3B201C();
    v91 = v55;
    v90 = sub_21A3B1FBC();
    v89 = v56;
    v57 = sub_21A3B203C();
    v96 = a1;
    v95 = a2;
    v98 = v50;
    v99 = v48;
    v97 = v46;
    if (v57)
    {
      v58 = *(v57 + 16);
      if (v58)
      {
        v114 = MEMORY[0x277D84F90];
        v59 = v57;
        sub_21A3AF650(0, v58, 0);
        v60 = v114;
        v111 = *(v113 + 2);
        v61 = (v113[80] + 32) & ~v113[80];
        v88 = v59;
        v62 = v59 + v61;
        v110 = *(v113 + 9);
        v113 += 16;
        v63 = v113 - 8;
        do
        {
          v64 = v112;
          v111(v27, v62, v112);
          v65 = sub_21A3B1DCC();
          v67 = v66;
          (*v63)(v27, v64);
          v114 = v60;
          v69 = *(v60 + 16);
          v68 = *(v60 + 24);
          if (v69 >= v68 >> 1)
          {
            sub_21A3AF650((v68 > 1), v69 + 1, 1);
            v60 = v114;
          }

          *(v60 + 16) = v69 + 1;
          v70 = v60 + 16 * v69;
          *(v70 + 32) = v65;
          *(v70 + 40) = v67;
          v62 += v110;
          --v58;
        }

        while (v58);

        v50 = v98;
        v48 = v99;
        v46 = v97;
      }

      else
      {

        v60 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v60 = 0;
    }

    v71 = *(v50 + 16);
    v112 = v50 + 16;
    v113 = v71;
    (v71)(v107, v46, v48);
    sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
    sub_21A3B247C();
    sub_21A3B211C();
    v72 = *MEMORY[0x277CC9110];
    v87 = *(v103 + 104);
    v73 = v104;
    v74 = v105;
    v87(v104, v72, v105);
    sub_21A3B20FC();
    v111 = sub_21A3B19EC();
    v109[2] = v111;
    v103 = sub_21A365B50(&qword_27CD23F88, &qword_21A3B2F50);
    sub_21A3B247C();
    sub_21A3B211C();
    v86 = v72;
    v75 = v87;
    v87(v73, v72, v74);
    sub_21A3B20FC();
    v110 = sub_21A3B19EC();
    v109[3] = v110;
    sub_21A365B50(&qword_27CD23F90, &qword_21A3B2F58);
    sub_21A3B247C();
    sub_21A3B211C();
    v75(v73, v72, v74);
    sub_21A3B20FC();
    v88 = sub_21A3B19EC();
    v76 = v109;
    v109[4] = v88;
    sub_21A3B247C();
    sub_21A3B211C();
    v75(v73, v86, v74);
    sub_21A3B20FC();
    v76[5] = sub_21A3B19EC();
    v77 = v93;
    *v76 = v94;
    v76[1] = v77;
    v78 = v76;
    v79 = type metadata accessor for RecipeEntity();
    v80 = v76 + *(v79 + 36);
    v81 = v107;
    v82 = v99;
    (v113)(v80, v107, v99);
    v114 = v92;
    v115 = v91;
    sub_21A3B19DC();
    v114 = v90;
    v115 = v89;
    sub_21A3B19DC();
    v114 = v60;
    sub_21A3B19DC();
    v114 = v106;
    v115 = v108;
    sub_21A3B19DC();
    sub_21A365D1C(v95, &qword_27CD23F70, &unk_21A3B4D70);
    v83 = sub_21A3B205C();
    (*(*(v83 - 8) + 8))(v96, v83);
    v84 = *(v98 + 8);
    v84(v81, v82);
    v84(v97, v82);
    return (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
  }
}

uint64_t sub_21A3647FC@<X0>(void *a1@<X8>)
{
  if (qword_27CD23DE0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_27CD24A78;
  *a1 = qword_27CD24A70;
  a1[1] = v1;
  sub_21A3B1A8C();

  return sub_21A3B1A8C();
}

uint64_t sub_21A364914@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_21A364924@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23DE8 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B1C9C();
  v3 = sub_21A365DC4(v2, qword_27CD24A80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A364A10(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_21A364A58(uint64_t a1)
{
  v2 = sub_21A365D7C(&qword_27CD23FB8, type metadata accessor for RecipeEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_21A364B20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_21A365B50(&qword_27CD23FA0, &unk_21A3B2F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v49 = &v45 - v6;
  v46 = sub_21A3B20EC();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46, v9);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A3B24CC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v14 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v45 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v45 - v24;
  v26 = *(v1 + 40);
  sub_21A3B19CC();
  v27 = v52;
  if (v52)
  {
    v28 = v51;
    v51 = 40;
    v52 = 0xE100000000000000;
    MEMORY[0x21CED89A0](v28, v27);

    MEMORY[0x21CED89A0](41, 0xE100000000000000);
    v29 = v51;
    v30 = v52;
    v31 = sub_21A393530(0, 1, 1, MEMORY[0x277D84F90]);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_21A393530((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[16 * v33];
    *(v34 + 4) = v29;
    *(v34 + 5) = v30;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v35 = *(v2 + 16);
  sub_21A3B19CC();
  v36 = v51;
  v37 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_21A393530(0, *(v31 + 2) + 1, 1, v31);
  }

  v39 = *(v31 + 2);
  v38 = *(v31 + 3);
  if (v39 >= v38 >> 1)
  {
    v31 = sub_21A393530((v38 > 1), v39 + 1, 1, v31);
  }

  *(v31 + 2) = v39 + 1;
  v40 = &v31[16 * v39];
  *(v40 + 4) = v36;
  *(v40 + 5) = v37;
  v41 = *(v2 + 24);
  sub_21A3B19CC();
  if (v52)
  {
    sub_21A3B24BC();
    sub_21A3B24AC();
    sub_21A3B249C();

    sub_21A3B24AC();
    sub_21A3B20DC();
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  (*(v7 + 56))(v22, v42, 1, v46);
  sub_21A365BFC(v22, v25);
  sub_21A3B24BC();
  sub_21A3B24AC();
  v51 = v31;
  sub_21A365B50(&qword_27CD23F50, &qword_21A3B2F20);
  sub_21A365C6C(&qword_27CD23FB0, &qword_27CD23F50, &qword_21A3B2F20);
  sub_21A3B245C();

  sub_21A3B249C();

  sub_21A3B24AC();
  sub_21A3B20DC();
  sub_21A365CB4(v25, v47, &qword_27CD23FA8, &unk_21A3B4410);
  v43 = sub_21A3B1BBC();
  (*(*(v43 - 8) + 56))(v49, 1, 1, v43);
  sub_21A3B1BCC();
  return sub_21A365D1C(v25, &qword_27CD23FA8, &unk_21A3B4410);
}

uint64_t sub_21A365024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21A3650E8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_21A3650E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21A3651DC(uint64_t a1)
{
  v2 = sub_21A365D7C(&qword_27CD23ED0, type metadata accessor for RecipeEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_21A365274()
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  sub_21A3B18DC();
  result = sub_21A3B188C();
  qword_27CD24A70 = v0;
  *algn_27CD24A78 = result;
  return result;
}

uint64_t sub_21A365334()
{
  v0 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v22 - v3;
  v22[0] = sub_21A3B20CC();
  v5 = *(v22[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22[0], v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A3B212C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_21A3B24DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v16 = sub_21A3B20EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v20 = sub_21A3B1C9C();
  sub_21A365DFC(v20, qword_27CD24A80);
  sub_21A365DC4(v20, qword_27CD24A80);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v5 + 104))(v9, *MEMORY[0x277CC9110], v22[0]);
  sub_21A3B20FC();
  (*(v17 + 56))(v4, 1, 1, v16);
  return sub_21A3B1C8C();
}

uint64_t sub_21A365608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for RecipeEntity() + 36);
  v5 = sub_21A3B210C();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_21A365684(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A3B210C();
  v5 = sub_21A365D7C(&qword_27CD23F98, MEMORY[0x277CC9260]);

  return MEMORY[0x282114A88](sub_21A365608, 0, a1, v4, a2, v5);
}

__n128 sub_21A365734(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21A365740(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A365760(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_21A3657C8()
{
  sub_21A3658E8();
  if (v0 <= 0x3F)
  {
    sub_21A3659C8(319, &qword_27CD23F18, &qword_27CD23F20, "^<", sub_21A365998);
    if (v1 <= 0x3F)
    {
      sub_21A3659C8(319, &qword_27CD23F30, &qword_27CD23F38, &qword_21A3B2F18, sub_21A365A38);
      if (v2 <= 0x3F)
      {
        sub_21A3B210C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A3658E8()
{
  if (!qword_27CD23F08)
  {
    sub_21A365944();
    v0 = sub_21A3B1A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD23F08);
    }
  }
}

unint64_t sub_21A365944()
{
  result = qword_27CD23F10;
  if (!qword_27CD23F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23F10);
  }

  return result;
}

void sub_21A3659C8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_21A364A10(a3, a4);
    a5();
    v7 = sub_21A3B1A0C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21A365A38()
{
  result = qword_27CD23F40;
  if (!qword_27CD23F40)
  {
    sub_21A364A10(&qword_27CD23F38, &qword_21A3B2F18);
    sub_21A365AE8(&qword_27CD23F48, &qword_27CD23F50, &qword_21A3B2F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23F40);
  }

  return result;
}

uint64_t sub_21A365AE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_21A364A10(a2, a3);
    sub_21A365944();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A365B50(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_21A365B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A365BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A365C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_21A364A10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A365CB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_21A365B50(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21A365D1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_21A365B50(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21A365D7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A365DC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_21A365DFC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_21A365E6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A365E8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_21A365EC0()
{
  result = qword_27CD23FD0;
  if (!qword_27CD23FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23FD0);
  }

  return result;
}

unint64_t sub_21A365F18()
{
  result = qword_27CD23FD8;
  if (!qword_27CD23FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23FD8);
  }

  return result;
}

uint64_t sub_21A365FBC()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24A98);
  sub_21A365DC4(v12, qword_27CD24A98);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3661E8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity();
  v2[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3662AC, 0, 0);
}

uint64_t sub_21A3662AC()
{
  v16 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  v0[13] = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD000000000000014, 0x800000021A3B30E0, &v15);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_21A3664E0;
  v12 = v0[12];
  v13 = v0[8];

  return sub_21A39542C(v12);
}

uint64_t sub_21A3664E0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_21A366834;
  }

  else
  {
    v3 = sub_21A3665F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A3665F4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v0[9] + 20);
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v8 = *sub_21A360CEC(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_21A367634;
  *(v11 + 24) = v9;
  v12 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v13));
  sub_21A36763C(v10 + v12);
  if (v1)
  {

    os_unfair_lock_unlock((v10 + v13));
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[7];
    os_unfair_lock_unlock((v10 + v13));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8);
    sub_21A3B19BC();
    sub_21A36769C(v14, type metadata accessor for RecipeEntity);
    sub_21A36769C(v16, type metadata accessor for CookingSupportAppIntentInvocation);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_21A366834()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_21A3668A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24A98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A366960()
{
  v0 = sub_21A365B50(&qword_27CD24038, &qword_21A3B3158);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD24040, &qword_21A3B3160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24048, &unk_21A3B3190);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A366AFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3661E8(a1);
}

uint64_t sub_21A366BA8()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_21A366C9C@<D0>(uint64_t a1@<X8>)
{
  sub_21A366E3C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A366D4C(uint64_t a1)
{
  v2 = sub_21A3675E0();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 sub_21A366D88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21A366D9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21A366DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A366E3C@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_21A3B1C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v56 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v53 = v52 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v52[0] = v52 - v15;
  v16 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v60 = v52 - v19;
  v20 = sub_21A3B20CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21A3B212C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v29 = sub_21A3B24DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B20EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v52[1] = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *MEMORY[0x277CC9110];
  v38 = *(v21 + 104);
  v38(v25, v37, v20);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v38(v25, v37, v20);
  v39 = v60;
  sub_21A3B20FC();
  (*(v33 + 56))(v39, 0, 1, v32);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v52[0], 1, 1, v40);
  v41 = sub_21A3B19AC();
  v42 = *(*(v41 - 8) + 56);
  v42(v53, 1, 1, v41);
  v42(v55, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  *&v61 = v43;
  *(&v61 + 1) = v44;
  *&v62 = v45;
  (*(v57 + 104))(v56, *MEMORY[0x277CBA308], v58);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8);
  v46 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v49 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v51 = v59;
  *v59 = v46;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v49;
  v51[4] = result;
  return result;
}

unint64_t sub_21A36758C()
{
  result = qword_27CD24018;
  if (!qword_27CD24018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24018);
  }

  return result;
}

unint64_t sub_21A3675E0()
{
  result = qword_27CD24030;
  if (!qword_27CD24030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24030);
  }

  return result;
}

uint64_t sub_21A367658(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecipeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A36769C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A3676FC()
{
  v0 = sub_21A3B21FC();
  sub_21A365DFC(v0, qword_27CD24AB0);
  sub_21A365DC4(v0, qword_27CD24AB0);
  return sub_21A3B21EC();
}

unint64_t sub_21A36777C()
{
  result = qword_27CD24050;
  if (!qword_27CD24050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24050);
  }

  return result;
}

unint64_t sub_21A3677D4()
{
  result = qword_27CD23EC8;
  if (!qword_27CD23EC8)
  {
    type metadata accessor for RecipeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23EC8);
  }

  return result;
}

unint64_t sub_21A367830()
{
  result = qword_27CD24058;
  if (!qword_27CD24058)
  {
    sub_21A364A10(&qword_27CD24060, qword_21A3B31A0);
    sub_21A3677D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24058);
  }

  return result;
}

uint64_t sub_21A3678B4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = *(*(sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = sub_21A3B1FFC();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v8 = sub_21A3B1E4C();
  v2[20] = v8;
  v9 = *(v8 - 8);
  v2[21] = v9;
  v10 = *(v9 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v12 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v13 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v14 = type metadata accessor for RecipeEntity();
  v2[29] = v14;
  v15 = *(v14 - 8);
  v2[30] = v15;
  v16 = *(v15 + 64) + 15;
  v2[31] = swift_task_alloc();
  v17 = *(*(sub_21A365B50(&qword_27CD24078, &qword_21A3B3298) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v18 = sub_21A3B205C();
  v2[33] = v18;
  v19 = *(v18 - 8);
  v2[34] = v19;
  v20 = *(v19 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v21 = sub_21A3B1DEC();
  v2[39] = v21;
  v22 = *(v21 - 8);
  v2[40] = v22;
  v23 = *(v22 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A367C94, 0, 0);
}

uint64_t sub_21A367C94()
{
  v1 = v0[12];
  sub_21A3B187C();
  v3 = v0[5];
  v2 = v0[6];
  sub_21A360CEC(v0 + 2, v3);
  v4 = *(MEMORY[0x277CFCD98] + 4);
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_21A367D58;

  return MEMORY[0x28214FA60](v3, v2);
}

uint64_t sub_21A367D58(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_21A3687C8;
  }

  else
  {
    v5 = sub_21A367E6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A367E6C()
{
  v1 = v0[44];
  sub_21A361318(v0 + 2);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[40];
    v4 = v0[34];
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v0[44] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v117 = *(v3 + 56);
    v120 = v5;
    v111 = (v4 + 56);
    v114 = (v3 - 8);
    v105 = v4;
    v108 = (v4 + 32);
    v7 = v0[45];
    v94 = MEMORY[0x277D84F90];
    do
    {
      v11 = v0[41];
      v10 = v0[42];
      v12 = v0[39];
      v13 = v0[32];
      v120(v10, v6, v12);
      v120(v11, v10, v12);
      sub_21A3B1F8C();
      v14 = v7;
      v15 = v0[42];
      v16 = v0[39];
      if (v14)
      {
        v9 = v0[32];
        v8 = v0[33];

        (*v114)(v15, v16);
        (*v111)(v9, 1, 1, v8);
        sub_21A365D1C(v9, &qword_27CD24078, &qword_21A3B3298);
      }

      else
      {
        v17 = v0[37];
        v19 = v0[32];
        v18 = v0[33];
        (*v114)(v0[42], v0[39]);
        (*v111)(v19, 0, 1, v18);
        v20 = *v108;
        (*v108)(v17, v19, v18);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v21 = v94;
        }

        else
        {
          v21 = sub_21A393664(0, v94[2] + 1, 1, v94);
        }

        v23 = v21[2];
        v22 = v21[3];
        if (v23 >= v22 >> 1)
        {
          v21 = sub_21A393664(v22 > 1, v23 + 1, 1, v21);
        }

        v24 = v0[37];
        v25 = v0[33];
        v21[2] = v23 + 1;
        v94 = v21;
        v20(v21 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v23, v24, v25);
      }

      v7 = 0;
      v6 += v117;
      --v2;
    }

    while (v2);
    v26 = v0[44];

    v27 = v94;
    v28 = v94[2];
    if (v28)
    {
      goto LABEL_13;
    }

LABEL_33:

    v34 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v27 = MEMORY[0x277D84F90];
  v28 = *(MEMORY[0x277D84F90] + 16);
  if (!v28)
  {
    goto LABEL_33;
  }

LABEL_13:
  v29 = v0[34];
  v30 = *(v29 + 16);
  v29 += 16;
  v118 = v30;
  v31 = v27 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
  v32 = v0[21];
  v93 = (v32 + 48);
  v87 = (v32 + 32);
  v85 = (v32 + 8);
  v86 = (v32 + 16);
  v91 = (v29 - 8);
  v92 = (v0[16] + 8);
  v33 = v0[30];
  v84 = v33;
  v89 = (v33 + 56);
  v90 = (v33 + 48);
  v34 = MEMORY[0x277D84F90];
  v88 = *(v29 + 56);
  do
  {
    v109 = v31;
    v112 = v28;
    v35 = v0[33];
    v37 = v0[24];
    v36 = v0[25];
    v38 = v0[20];
    v118(v0[38]);
    sub_21A3B202C();
    sub_21A365CB4(v36, v37, &qword_27CD24068, &qword_21A3B3290);
    v39 = (*v93)(v37, 1, v38);
    v40 = v0[25];
    v41 = v0[26];
    v115 = v34;
    if (v39 == 1)
    {
      sub_21A365D1C(v40, &qword_27CD24068, &qword_21A3B3290);
      v42 = sub_21A3B1EBC();
      (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    }

    else
    {
      v43 = v0[23];
      v44 = v0[22];
      v45 = v0[20];
      (*v87)(v43, v0[24], v45);
      (*v86)(v44, v43, v45);
      sub_21A3B1EAC();
      (*v85)(v43, v45);
      sub_21A365D1C(v40, &qword_27CD24068, &qword_21A3B3290);
    }

    v46 = v0[36];
    v47 = v0[33];
    v99 = v47;
    v101 = v0[35];
    v48 = v0[19];
    v96 = v48;
    v97 = v0[26];
    v49 = v0[17];
    v95 = v0[15];
    v103 = v0[18];
    v106 = v0[14];
    v50 = v0[13];
    (v118)(v46, v0[38]);
    sub_21A3B187C();
    v51 = v0[11];
    sub_21A360CEC(v0 + 7, v0[10]);
    sub_21A3B200C();
    sub_21A3B1FEC();
    (*v92)(v49, v95);
    sub_21A3B1E6C();

    (v118)(v101, v46, v99);
    sub_21A365CB4(v96, v103, &qword_27CD23F70, &unk_21A3B4D70);
    sub_21A3B204C();
    v52 = sub_21A3B1E2C();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v106, 1, v52) == 1)
    {
      sub_21A365D1C(v0[14], &qword_27CD23F68, &unk_21A3B2F30);
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v56 = v0[14];
      v54 = sub_21A3B1E1C();
      v55 = v57;
      (*(v53 + 8))(v56, v52);
    }

    v58 = v0[38];
    v59 = v0[36];
    v60 = v0[33];
    v61 = v0[29];
    v63 = v0[26];
    v62 = v0[27];
    v64 = v0[19];
    sub_21A363DB8(v0[35], v0[18], v54, v55, v62);
    sub_21A365D1C(v64, &qword_27CD23F70, &unk_21A3B4D70);
    v65 = *v91;
    (*v91)(v59, v60);
    sub_21A365D1C(v63, &qword_27CD24070, &unk_21A3B4D80);
    v65(v58, v60);
    v66 = *v90;
    if ((*v90)(v62, 1, v61))
    {
      sub_21A365D1C(v0[27], &qword_27CD23F78, &unk_21A3B2F40);
      v67 = 1;
    }

    else
    {
      sub_21A365B98(v0[27], v0[28]);
      v67 = 0;
    }

    v68 = v0[28];
    v69 = v0[29];
    (*v89)(v68, v67, 1, v69);
    sub_21A361318(v0 + 7);
    if (v66(v68, 1, v69) == 1)
    {
      sub_21A365D1C(v0[28], &qword_27CD23F78, &unk_21A3B2F40);
      v34 = v115;
    }

    else
    {
      sub_21A365B98(v0[28], v0[31]);
      v34 = v115;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_21A39363C(0, v115[2] + 1, 1, v115);
      }

      v71 = v34[2];
      v70 = v34[3];
      if (v71 >= v70 >> 1)
      {
        v34 = sub_21A39363C(v70 > 1, v71 + 1, 1, v34);
      }

      v72 = v0[31];
      v34[2] = v71 + 1;
      sub_21A365B98(v72, v34 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v71);
    }

    v31 = &v109[v88];
    v28 = v112 - 1;
  }

  while (v112 != 1);

LABEL_34:
  v74 = v0[41];
  v73 = v0[42];
  v75 = v0[37];
  v76 = v0[38];
  v78 = v0[35];
  v77 = v0[36];
  v80 = v0[31];
  v79 = v0[32];
  v81 = v0[28];
  v98 = v0[27];
  v100 = v0[26];
  v102 = v0[25];
  v104 = v0[24];
  v107 = v0[23];
  v110 = v0[22];
  v113 = v0[19];
  v116 = v0[18];
  v119 = v0[17];
  v121 = v0[14];

  v82 = v0[1];

  return v82(v34);
}

uint64_t sub_21A3687C8()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[37];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[28];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[14];
  sub_21A361318(v0 + 2);

  v10 = v0[1];
  v11 = v0[45];

  return v10();
}

uint64_t sub_21A368924(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_21A3689C0;

  return sub_21A3678B4(v3, v4);
}

uint64_t sub_21A3689C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_21A368AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21A3650E8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

__n128 sub_21A368B88(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21A368B94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21A368BDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_21A368C38@<X0>(void *a1@<X8>)
{
  result = sub_21A369148();
  *a1 = &type metadata for AppEntityIdentifierProvider;
  a1[1] = result;
  return result;
}

uint64_t sub_21A368C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_21A369020(a3, v26 - v10);
  v12 = sub_21A3B258C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_21A3B1A8C();
  if (v14 == 1)
  {
    sub_21A3612B0(v11);
  }

  else
  {
    sub_21A3B257C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21A3B253C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21A3B24FC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_21A3B1A8C();
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

      sub_21A3612B0(a3);

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

  sub_21A3612B0(a3);
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

uint64_t sub_21A368F28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21A369020(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A369090(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A3650E8;

  return sub_21A36141C(a1, v5);
}

unint64_t sub_21A369148()
{
  result = qword_27CD24098;
  if (!qword_27CD24098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24098);
  }

  return result;
}

unint64_t sub_21A3691A4()
{
  result = qword_27CD240B0;
  if (!qword_27CD240B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240B0);
  }

  return result;
}

unint64_t sub_21A3691FC()
{
  result = qword_27CD240B8;
  if (!qword_27CD240B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240B8);
  }

  return result;
}

uint64_t sub_21A369298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = *(*(sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = sub_21A3B1FFC();
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v8 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v9 = sub_21A3B1E4C();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v11 = *(v10 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v12 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v13 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v15 = type metadata accessor for RecipeEntity();
  v3[30] = v15;
  v16 = *(v15 - 8);
  v3[31] = v16;
  v17 = *(v16 + 64) + 15;
  v3[32] = swift_task_alloc();
  v18 = sub_21A3B205C();
  v3[33] = v18;
  v19 = *(v18 - 8);
  v3[34] = v19;
  v20 = *(v19 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3695D0, 0, 0);
}

uint64_t sub_21A3695D0()
{
  v1 = v0[13];
  sub_21A3B187C();
  v2 = v0[5];
  v3 = v0[6];
  sub_21A360CEC(v0 + 2, v2);
  v4 = *(MEMORY[0x277CFCD78] + 4);
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_21A369698;
  v6 = v0[12];

  return MEMORY[0x28214FA48](v6, v2, v3);
}

uint64_t sub_21A369698(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_21A369E9C;
  }

  else
  {
    v5 = sub_21A3697AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3697AC()
{
  v1 = v0[39];
  sub_21A361318(v0 + 2);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[34];
    v4 = *(v3 + 16);
    v3 += 16;
    v84 = v4;
    v5 = v0[39] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = v0[22];
    v69 = (v6 + 48);
    v63 = (v6 + 32);
    v61 = (v6 + 8);
    v62 = (v6 + 16);
    v67 = (v3 - 8);
    v68 = (v0[17] + 8);
    v7 = v0[31];
    v60 = v7;
    v65 = (v7 + 56);
    v70 = MEMORY[0x277D84F90];
    v64 = *(v3 + 56);
    v66 = (v7 + 48);
    do
    {
      v80 = v5;
      v82 = v2;
      v8 = v0[33];
      v10 = v0[25];
      v9 = v0[26];
      v11 = v0[21];
      v84(v0[37]);
      sub_21A3B202C();
      sub_21A365CB4(v9, v10, &qword_27CD24068, &qword_21A3B3290);
      v12 = (*v69)(v10, 1, v11);
      v14 = v0[26];
      v13 = v0[27];
      if (v12 == 1)
      {
        sub_21A365D1C(v0[26], &qword_27CD24068, &qword_21A3B3290);
        v15 = sub_21A3B1EBC();
        (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      }

      else
      {
        v16 = v0[24];
        v17 = v0[23];
        v18 = v0[21];
        (*v63)(v16, v0[25], v18);
        (*v62)(v17, v16, v18);
        sub_21A3B1EAC();
        (*v61)(v16, v18);
        sub_21A365D1C(v14, &qword_27CD24068, &qword_21A3B3290);
      }

      v19 = v0[36];
      v20 = v0[33];
      v74 = v20;
      v75 = v0[35];
      v21 = v0[20];
      v72 = v21;
      v73 = v0[27];
      v76 = v0[19];
      v22 = v0[18];
      v71 = v0[16];
      v78 = v0[15];
      v23 = v0[14];
      (v84)(v19, v0[37]);
      sub_21A3B187C();
      v24 = v0[11];
      sub_21A360CEC(v0 + 7, v0[10]);
      sub_21A3B200C();
      sub_21A3B1FEC();
      (*v68)(v22, v71);
      sub_21A3B1E6C();

      (v84)(v75, v19, v74);
      sub_21A365CB4(v72, v76, &qword_27CD23F70, &unk_21A3B4D70);
      sub_21A3B204C();
      v25 = sub_21A3B1E2C();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v78, 1, v25) == 1)
      {
        sub_21A365D1C(v0[15], &qword_27CD23F68, &unk_21A3B2F30);
        v27 = 0;
        v28 = 0;
      }

      else
      {
        v29 = v0[15];
        v27 = sub_21A3B1E1C();
        v28 = v30;
        (*(v26 + 8))(v29, v25);
      }

      v32 = v0[36];
      v31 = v0[37];
      v33 = v0[33];
      v34 = v0[30];
      v36 = v0[27];
      v35 = v0[28];
      v37 = v0[20];
      sub_21A363DB8(v0[35], v0[19], v27, v28, v35);
      sub_21A365D1C(v37, &qword_27CD23F70, &unk_21A3B4D70);
      v38 = *v67;
      (*v67)(v32, v33);
      sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
      v38(v31, v33);
      v39 = *v66;
      if ((*v66)(v35, 1, v34))
      {
        sub_21A365D1C(v0[28], &qword_27CD23F78, &unk_21A3B2F40);
        v40 = 1;
      }

      else
      {
        sub_21A365B98(v0[28], v0[29]);
        v40 = 0;
      }

      v41 = v0[29];
      v42 = v0[30];
      (*v65)(v41, v40, 1, v42);
      sub_21A361318(v0 + 7);
      if (v39(v41, 1, v42) == 1)
      {
        sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
      }

      else
      {
        sub_21A365B98(v0[29], v0[32]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = v70;
        }

        else
        {
          v43 = sub_21A39363C(0, v70[2] + 1, 1, v70);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_21A39363C(v44 > 1, v45 + 1, 1, v43);
        }

        v46 = v0[32];
        v43[2] = v45 + 1;
        v70 = v43;
        sub_21A365B98(v46, v43 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v45);
      }

      v5 = v80 + v64;
      v2 = v82 - 1;
    }

    while (v82 != 1);
    v47 = v0[39];

    v48 = v70;
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  v50 = v0[36];
  v49 = v0[37];
  v51 = v0[35];
  v52 = v0[32];
  v54 = v0[28];
  v53 = v0[29];
  v56 = v0[26];
  v55 = v0[27];
  v57 = v0[25];
  v77 = v0[24];
  v79 = v0[23];
  v81 = v0[20];
  v83 = v0[19];
  v85 = v0[18];
  v86 = v0[15];

  v58 = v0[1];

  return v58(v48);
}

uint64_t sub_21A369E9C()
{
  v33 = v0;
  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v3 = v0[13];
  v2 = v0[14];
  v4 = sub_21A3B21FC();
  sub_21A365DC4(v4, qword_27CD24AB0);
  v5 = v1;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v6 = sub_21A3B21DC();
  v7 = sub_21A3B25DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[40];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v9 = 138543618;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v13;
    *v10 = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_21A3AF0A8(0x7551657069636552, 0xEB00000000797265, &v32);
    _os_log_impl(&dword_21A35E000, v6, v7, "Unable to hydrate due to error: %{public}@, for: %{public}s", v9, 0x16u);
    sub_21A365D1C(v10, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v10, -1, -1);
    sub_21A361318(v11);
    MEMORY[0x21CED8F60](v11, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v14 = v0[40];
  v15 = v0[36];
  v16 = v0[37];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[28];
  v20 = v0[29];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[25];
  v26 = v0[24];
  v27 = v0[23];
  v28 = v0[20];
  v29 = v0[19];
  v30 = v0[18];
  v31 = v0[15];
  sub_21A3B18BC();
  sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_21A36A1E8@<X0>(uint64_t *a1@<X8>)
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v2 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  sub_21A3B18DC();
  result = sub_21A3B188C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_21A36A2AC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A36A774;

  return sub_21A369298(a1, v5, v4);
}

uint64_t sub_21A36A354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21A3650E8;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_21A36A408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21A36A4C8;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_21A36A4C8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_21A36A5CC()
{
  result = qword_27CD240C0;
  if (!qword_27CD240C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240C0);
  }

  return result;
}

uint64_t sub_21A36A668(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_21A3639C4();
  *v6 = v2;
  v6[1] = sub_21A36919C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_21A36A72C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A36A788@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RecipeEntity();
  sub_21A3B1FEC();
  sub_21A36AAA8(&qword_27CD23FB8, type metadata accessor for RecipeEntity);
  sub_21A3B1A5C();
  v2 = sub_21A3B1A6C();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_21A36A85C@<X0>(uint64_t a1@<X8>)
{
  sub_21A3B1D4C();
  sub_21A36AA54();
  sub_21A3B1A5C();
  v2 = sub_21A3B1A6C();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_21A36A8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A3B20BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InstructionEntity();
  (*(v5 + 16))(v9, a1, v4);
  sub_21A36AAA8(&qword_27CD240D8, type metadata accessor for InstructionEntity);
  sub_21A3B1A5C();
  v10 = sub_21A3B1A6C();
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

unint64_t sub_21A36AA54()
{
  result = qword_27CD240E0;
  if (!qword_27CD240E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240E0);
  }

  return result;
}

uint64_t sub_21A36AAA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A36AAF4()
{
  result = qword_27CD240E8;
  if (!qword_27CD240E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240E8);
  }

  return result;
}

unint64_t sub_21A36AB4C()
{
  result = qword_27CD240F0;
  if (!qword_27CD240F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240F0);
  }

  return result;
}

uint64_t sub_21A36ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v7 = swift_task_alloc();
  v4[14] = v7;
  *v7 = v4;
  v7[1] = sub_21A36AC8C;

  return sub_21A36E364(a3, a4);
}

uint64_t sub_21A36AC8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[14];
  v7 = *v2;
  v4[15] = a2;

  return MEMORY[0x2822009F8](sub_21A36AD94, 0, 0);
}

uint64_t sub_21A36AD94()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[11];
    sub_21A3B187C();
    v4 = v0[5];
    v5 = v0[6];
    sub_21A360CEC(v0 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v0[16] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
    v7 = *(MEMORY[0x277CFCD78] + 4);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_21A36AF20;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_21A3B205C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_21A36AF20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_21A36B198;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_21A36B03C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A36B03C()
{
  v1 = v0[18];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = sub_21A3B205C();
    v4 = *(v3 - 8);
    (*(v4 + 16))(v2, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    v5 = 0;
  }

  else
  {
    v6 = v0[18];

    v3 = sub_21A3B205C();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[10], v5, 1, v3);
  sub_21A361318(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_21A36B198()
{
  v22 = v0;
  v1 = v0[16];

  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = sub_21A3B21FC();
  sub_21A365DC4(v6, qword_27CD24AB0);
  v7 = v2;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v8 = sub_21A3B21DC();
  v9 = sub_21A3B25DC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v12 = 138543618;
    v15 = v11;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v16;
    *v13 = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_21A3AF0A8(0xD000000000000010, 0x800000021A3B36C0, &v21);
    _os_log_impl(&dword_21A35E000, v8, v9, "Unable to hydrate due to error: %{public}@, for: %{public}s", v12, 0x16u);
    sub_21A365D1C(v13, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v13, -1, -1);
    sub_21A361318(v14);
    MEMORY[0x21CED8F60](v14, -1, -1);
    MEMORY[0x21CED8F60](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[10];
  v18 = sub_21A3B205C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = v0[1];

  return v19();
}

uint64_t sub_21A36B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v4[3] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24078, &qword_21A3B3298) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v4[5] = v11;
  v12 = sub_21A3B205C();
  v4[6] = v12;
  v13 = *(v12 - 8);
  v4[7] = v13;
  v14 = *(v13 + 64) + 15;
  v4[8] = swift_task_alloc();
  v15 = swift_task_alloc();
  v4[9] = v15;
  *v15 = v4;
  v15[1] = sub_21A36B5B4;

  return sub_21A36ABE8(v11, a2, a3, a4);
}

uint64_t sub_21A36B5B4()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A36B6B0, 0, 0);
}

uint64_t sub_21A36B6B0()
{
  v27 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A365D1C(v3, &qword_27CD24078, &qword_21A3B3298);
    v4 = MEMORY[0x277D84F90];
LABEL_9:
    v22 = v0[8];
    v23 = v0[4];
    v24 = v0[5];

    v25 = v0[1];

    return v25(v4);
  }

  v5 = v0[2];
  (*(v2 + 32))(v0[8], v3, v1);

  v7 = sub_21A3B11AC(v6);

  result = sub_21A3B1FAC();
  v9 = result;
  v4 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v10 = *(result + 16);
  if (!v10)
  {
LABEL_8:
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
    goto LABEL_9;
  }

  v11 = 0;
  v12 = v0[3];
  while (v11 < *(v9 + 16))
  {
    v13 = v0[4];
    v14 = sub_21A3B1D8C();
    v15 = *(v14 - 8);
    v16 = *(v15 + 16);
    v17 = v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11;
    v18 = *(v12 + 48);
    *v13 = v11;
    v16(v13 + v18, v17, v14);
    sub_21A36B940(&v26, v13, v7);
    ++v11;
    result = sub_21A365D1C(v0[4], &qword_27CD24120, &unk_21A3B3700);
    if (v10 == v11)
    {
      v4 = v26;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A36B940(void **a1, void (**a2)(char *, uint64_t), uint64_t a3)
{
  v162 = a2;
  v133 = a1;
  v155 = sub_21A3B208C();
  v117 = *(v155 - 8);
  v4 = *(v117 + 64);
  MEMORY[0x28223BE20](v155, v5);
  v154 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_21A3B20CC();
  v161 = *(v132 - 8);
  v7 = *(v161 + 64);
  MEMORY[0x28223BE20](v132, v8);
  v124 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A3B212C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v123 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21A3B24DC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v122 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21A3B20EC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v121 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for InstructionEntity();
  v120 = *(v131 - 8);
  v22 = *(v120 + 64);
  v24 = MEMORY[0x28223BE20](v131, v23);
  v130 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v129 = &v113 - v27;
  v163 = sub_21A3B20BC();
  v135 = *(v163 - 8);
  v28 = v135[8];
  v30 = MEMORY[0x28223BE20](v163, v29);
  v134 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v158 = &v113 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v164 = &v113 - v36;
  v37 = sub_21A3B1F7C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v151 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_21A365B50(&qword_27CD24138, &unk_21A3B4EA0);
  v160 = *(v149 - 8);
  v42 = *(v160 + 64);
  MEMORY[0x28223BE20](v149, v43);
  v137 = (&v113 - v44);
  v45 = sub_21A365B50(&qword_27CD24130, &qword_21A3B3720);
  v46 = *(*(v45 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v45 - 8, v47);
  v50 = &v113 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v51);
  v148 = &v113 - v52;
  v53 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v54 = v53 - 8;
  v55 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53, v56);
  v58 = (&v113 - v57);
  v59 = sub_21A3B1D8C();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59, v62);
  v64 = &v113 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A36E174(v162, v58);
  v145 = *v58;
  v65 = *(v54 + 56);
  v114 = v60;
  v66 = *(v60 + 32);
  v115 = v59;
  v66(v64, v58 + v65, v59);
  v113 = v64;
  result = sub_21A3B1D7C();
  v68 = result;
  v69 = 0;
  v70 = *(result + 16);
  v136 = v38 + 16;
  v146 = (v160 + 48);
  v147 = (v160 + 56);
  v144 = (v38 + 32);
  v160 = a3 + 56;
  v159 = v135 + 2;
  v162 = (v135 + 1);
  v71 = v149;
  v152 = (v117 + 8);
  v153 = v117 + 16;
  v167 = *MEMORY[0x277CC9110];
  v119 = (v161 + 104);
  v118 = "used in intents.";
  v138 = v38;
  v139 = (v38 + 8);
  v116 = a3;
  v143 = v37;
  v142 = v50;
  v141 = result;
  v140 = v70;
  while (1)
  {
    if (v69 == v70)
    {
      v72 = 1;
      v150 = v70;
      goto LABEL_9;
    }

    if ((v69 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v69 >= *(v68 + 16))
    {
      goto LABEL_31;
    }

    v73 = v69 + 1;
    v74 = v138;
    v75 = v68 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v69;
    v76 = *(v71 + 48);
    v77 = v137;
    *v137 = v69;
    (*(v74 + 16))(v77 + v76, v75, v37);
    sub_21A36E9B0(v77, v50, &qword_27CD24138, &unk_21A3B4EA0);
    v72 = 0;
    v150 = v73;
LABEL_9:
    v78 = v148;
    (*v147)(v50, v72, 1, v71);
    sub_21A36E9B0(v50, v78, &qword_27CD24130, &qword_21A3B3720);
    if ((*v146)(v78, 1, v71) == 1)
    {
      (*(v114 + 8))(v113, v115);
    }

    v79 = *v78;
    (*v144)(v151, &v78[*(v71 + 48)], v37);
    sub_21A3B209C();
    if (*(a3 + 16) && (v80 = *(a3 + 40), sub_21A36EA18(&qword_27CD24168, MEMORY[0x277CFCDB0]), v81 = sub_21A3B244C(), v82 = -1 << *(a3 + 32), v83 = v81 & ~v82, ((*(v160 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) != 0))
    {
      v84 = ~v82;
      v85 = v135[9];
      v161 = v135[2];
      while (1)
      {
        v86 = v158;
        v87 = v163;
        (v161)(v158, *(a3 + 48) + v85 * v83, v163);
        sub_21A36EA18(&qword_27CD24170, MEMORY[0x277CFCDB0]);
        v88 = sub_21A3B246C();
        v89 = *v162;
        (*v162)(v86, v87);
        if (v88)
        {
          break;
        }

        v83 = (v83 + 1) & v84;
        if (((*(v160 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      result = (v161)(v134, v164, v163);
      if (__OFADD__(v79, 1))
      {
        goto LABEL_32;
      }

      v128 = v79 + 1;
      v90 = sub_21A3B1F6C();
      v91 = *(v90 + 16);
      if (v91)
      {
        v165 = MEMORY[0x277D84F90];
        sub_21A3AF650(0, v91, 0);
        v92 = v165;
        v93 = (*(v117 + 80) + 32) & ~*(v117 + 80);
        v127 = v90;
        v94 = v90 + v93;
        v95 = *(v117 + 72);
        v156 = *(v117 + 16);
        v157 = v95;
        do
        {
          v96 = v154;
          v97 = v155;
          v156(v154, v94, v155);
          v98 = sub_21A3B207C();
          v100 = v99;
          (*v152)(v96, v97);
          v165 = v92;
          v102 = *(v92 + 16);
          v101 = *(v92 + 24);
          if (v102 >= v101 >> 1)
          {
            sub_21A3AF650((v101 > 1), v102 + 1, 1);
            v92 = v165;
          }

          *(v92 + 16) = v102 + 1;
          v103 = v92 + 16 * v102;
          *(v103 + 32) = v98;
          *(v103 + 40) = v100;
          v94 += v157;
          --v91;
        }

        while (v91);

        a3 = v116;
      }

      else
      {

        v92 = MEMORY[0x277D84F90];
      }

      v165 = v92;
      sub_21A365B50(&qword_27CD23F50, &qword_21A3B2F20);
      sub_21A36E238();
      v104 = sub_21A3B245C();
      v156 = v105;
      v157 = v104;

      v125 = *(v131 + 20);
      sub_21A365B50(&qword_27CD24148, &qword_21A3B3728);
      sub_21A3B247C();
      sub_21A3B211C();
      v126 = *v119;
      v106 = v124;
      v126(v124, v167, v132);
      sub_21A3B20FC();
      v127 = sub_21A3B19FC();
      v107 = v129;
      *(v129 + v125) = v127;
      v125 = *(v131 + 24);
      sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
      sub_21A3B247C();
      sub_21A3B211C();
      v126(v106, v167, v132);
      sub_21A3B20FC();
      *(v107 + v125) = sub_21A3B19EC();
      v108 = v134;
      v109 = v163;
      (v161)(v107, v134, v163);
      v165 = v128;
      sub_21A3B19DC();
      v165 = v157;
      v166 = v156;
      sub_21A3B19DC();
      v89(v108, v109);
      sub_21A36E29C(v107, v130);
      v110 = *v133;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_21A39368C(0, v110[2] + 1, 1, v110);
      }

      v37 = v143;
      v71 = v149;
      v50 = v142;
      v112 = v110[2];
      v111 = v110[3];
      if (v112 >= v111 >> 1)
      {
        v110 = sub_21A39368C(v111 > 1, v112 + 1, 1, v110);
      }

      v89(v164, v163);
      (*v139)(v151, v37);
      v110[2] = v112 + 1;
      sub_21A36E300(v130, v110 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v112);
      *v133 = v110;
      result = sub_21A36E950(v129, type metadata accessor for InstructionEntity);
    }

    else
    {
LABEL_2:
      (*v162)(v164, v163);
      v37 = v143;
      result = (*v139)(v151, v143);
      v71 = v149;
      v50 = v142;
    }

    v68 = v141;
    v70 = v140;
    v69 = v150;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21A36C888@<X0>(uint64_t *a1@<X8>)
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v2 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  sub_21A3B18DC();
  v3 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24178, &qword_21A3B3790);
  swift_getKeyPath();
  result = sub_21A3B1C7C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_21A36C97C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A36A774;

  return sub_21A36B428(a1, v4, v5, v6);
}

unint64_t sub_21A36CA30()
{
  result = qword_27CD240F8;
  if (!qword_27CD240F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240F8);
  }

  return result;
}

unint64_t sub_21A36CAD0()
{
  result = qword_27CD24108;
  if (!qword_27CD24108)
  {
    sub_21A364A10(&qword_27CD24110, qword_21A3B4D90);
    sub_21A36EA18(&qword_27CD24100, type metadata accessor for InstructionEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24108);
  }

  return result;
}

uint64_t sub_21A36CB84(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_21A36CC3C();
  *v6 = v2;
  v6[1] = sub_21A36919C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

unint64_t sub_21A36CC3C()
{
  result = qword_27CD24118;
  if (!qword_27CD24118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24118);
  }

  return result;
}

uint64_t sub_21A36CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v9 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v5[4] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24078, &qword_21A3B3298) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v5[6] = v12;
  v13 = sub_21A3B205C();
  v5[7] = v13;
  v14 = *(v13 - 8);
  v5[8] = v14;
  v15 = *(v14 + 64) + 15;
  v5[9] = swift_task_alloc();
  v16 = swift_task_alloc();
  v5[10] = v16;
  *v16 = v5;
  v16[1] = sub_21A36CE1C;

  return sub_21A36ABE8(v12, a3, a4, a5);
}

uint64_t sub_21A36CE1C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A36CF18, 0, 0);
}

uint64_t sub_21A36CF18()
{
  v26 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A365D1C(v3, &qword_27CD24078, &qword_21A3B3298);
    v4 = MEMORY[0x277D84F90];
LABEL_9:
    v21 = v0[9];
    v23 = v0[5];
    v22 = v0[6];

    v24 = v0[1];

    return v24(v4);
  }

  (*(v2 + 32))(v0[9], v3, v1);
  result = sub_21A3B1FAC();
  v6 = result;
  v4 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  if (!v7)
  {
LABEL_8:
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];

    (*(v19 + 8))(v18, v20);
    goto LABEL_9;
  }

  v8 = 0;
  v9 = v0[4];
  while (v8 < *(v6 + 16))
  {
    v10 = v0[5];
    v12 = v0[2];
    v11 = v0[3];
    v13 = sub_21A3B1D8C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 16);
    v16 = v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v8;
    v17 = *(v9 + 48);
    *v10 = v8;
    v15(&v10[v17], v16, v13);
    sub_21A36D18C(&v25, v10, v12, v11);
    ++v8;
    result = sub_21A365D1C(v0[5], &qword_27CD24120, &unk_21A3B3700);
    if (v7 == v8)
    {
      v4 = v25;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A36D18C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v150 = a3;
  v151 = a4;
  v155 = a2;
  v130 = a1;
  v123 = sub_21A3B20CC();
  v153 = *(v123 - 8);
  v4 = *(v153 + 64);
  MEMORY[0x28223BE20](v123, v5);
  v122 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_21A3B212C();
  v152 = *(v149 - 8);
  v7 = *(v152 + 64);
  MEMORY[0x28223BE20](v149, v8);
  v121 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A3B24DC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v120 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21A3B20EC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v119 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for InstructionEntity();
  v117 = *(v118 - 8);
  v18 = *(v117 + 64);
  v20 = MEMORY[0x28223BE20](v118, v19);
  v129 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v128 = &v112 - v23;
  v24 = sub_21A365B50(&qword_27CD24128, &qword_21A3B3718);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v148 = &v112 - v27;
  v156 = sub_21A3B208C();
  v28 = *(v156 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v156, v30);
  v144 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v146 = &v112 - v34;
  v141 = sub_21A3B20BC();
  v140 = *(v141 - 8);
  v35 = *(v140 + 64);
  v37 = MEMORY[0x28223BE20](v141, v36);
  v132 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v143 = &v112 - v40;
  v41 = sub_21A3B1F7C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  v142 = &v112 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21A365B50(&qword_27CD24130, &qword_21A3B3720);
  v47 = *(*(v46 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v46 - 8, v48);
  v138 = &v112 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v51);
  v53 = (&v112 - v52);
  v54 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v55 = v54 - 8;
  v56 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54, v57);
  v59 = (&v112 - v58);
  v60 = sub_21A3B1D8C();
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60, v63);
  v65 = &v112 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A36E174(v155, v59);
  v137 = *v59;
  v66 = *(v55 + 56);
  v113 = v61;
  v67 = *(v61 + 32);
  v114 = v60;
  v67(v65, v59 + v66, v60);
  v112 = v65;
  v68 = sub_21A3B1D7C();
  v136 = (v42 + 32);
  v147 = v28;
  v154 = v28 + 8;
  v155 = v28 + 16;
  v145 = (v152 + 56);
  v131 = (v140 + 16);
  v162 = 0;
  v163 = 0;
  v116 = (v153 + 104);
  v161 = v68;
  v164 = *MEMORY[0x277CC9110];
  v115 = "used in intents.";
  v140 += 8;
  v133 = (v42 + 8);
  v135 = v41;
  v134 = v53;
LABEL_3:
  while (1)
  {
    v69 = v138;
    sub_21A380F2C(v138);
    sub_21A36E9B0(v69, v53, &qword_27CD24130, &qword_21A3B3720);
    v70 = sub_21A365B50(&qword_27CD24138, &unk_21A3B4EA0);
    if ((*(*(v70 - 8) + 48))(v53, 1, v70) == 1)
    {
      break;
    }

    v71 = *v53;
    (*v136)(v142, v53 + *(v70 + 48), v41);
    v139 = v71;
    sub_21A3B209C();
    result = sub_21A3B1F6C();
    v73 = 0;
    v152 = *(result + 16);
    v153 = result;
    do
    {
      if (v152 == v73)
      {

        (*v140)(v143, v141);
        v41 = v135;
        (*v133)(v142, v135);
        v53 = v134;
        goto LABEL_3;
      }

      if (v73 >= *(v153 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v74 = v146;
      v75 = v147;
      v76 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v77 = *(v147 + 72);
      v78 = *(v147 + 16);
      v79 = v156;
      v78(v146, v153 + v76 + v77 * v73++, v156);
      v80 = sub_21A3B207C();
      v82 = v81;
      v83 = *(v75 + 8);
      v83(v74, v79);
      v159 = v80;
      v160 = v82;
      v157 = v150;
      v158 = v151;
      v84 = v148;
      (*v145)(v148, 1, 1, v149);
      sub_21A36E1E4();
      sub_21A3B260C();
      LOBYTE(v80) = v85;
      sub_21A365D1C(v84, &qword_27CD24128, &qword_21A3B3718);
    }

    while ((v80 & 1) != 0);

    v86 = *v131;
    result = (*v131)(v132, v143, v141);
    if (__OFADD__(v139, 1))
    {
      goto LABEL_23;
    }

    v127 = v139 + 1;
    v139 = v86;
    v87 = sub_21A3B1F6C();
    v88 = *(v87 + 16);
    if (v88)
    {
      v159 = MEMORY[0x277D84F90];
      sub_21A3AF650(0, v88, 0);
      v89 = v159;
      v126 = v87;
      v90 = v87 + v76;
      do
      {
        v91 = v144;
        v92 = v156;
        v78(v144, v90, v156);
        v93 = sub_21A3B207C();
        v152 = v94;
        v153 = v93;
        v83(v91, v92);
        v159 = v89;
        v96 = *(v89 + 16);
        v95 = *(v89 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_21A3AF650((v95 > 1), v96 + 1, 1);
          v89 = v159;
        }

        *(v89 + 16) = v96 + 1;
        v97 = v89 + 16 * v96;
        v98 = v152;
        *(v97 + 32) = v153;
        *(v97 + 40) = v98;
        v90 += v77;
        --v88;
      }

      while (v88);
    }

    else
    {

      v89 = MEMORY[0x277D84F90];
    }

    v159 = v89;
    sub_21A365B50(&qword_27CD23F50, &qword_21A3B2F20);
    sub_21A36E238();
    v99 = sub_21A3B245C();
    v152 = v100;
    v153 = v99;

    v101 = v118;
    v124 = *(v118 + 20);
    sub_21A365B50(&qword_27CD24148, &qword_21A3B3728);
    sub_21A3B247C();
    sub_21A3B211C();
    v125 = *v116;
    v102 = v122;
    v103 = v123;
    v125(v122, v164, v123);
    sub_21A3B20FC();
    v126 = sub_21A3B19FC();
    v104 = v128;
    *(v128 + v124) = v126;
    v105 = *(v101 + 24);
    sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
    sub_21A3B247C();
    sub_21A3B211C();
    v125(v102, v164, v103);
    sub_21A3B20FC();
    *(v104 + v105) = sub_21A3B19EC();
    v106 = v132;
    v107 = v141;
    v139(v104, v132, v141);
    v159 = v127;
    sub_21A3B19DC();
    v159 = v153;
    v160 = v152;
    sub_21A3B19DC();
    v108 = *v140;
    (*v140)(v106, v107);
    sub_21A36E29C(v104, v129);
    v109 = *v130;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = sub_21A39368C(0, v109[2] + 1, 1, v109);
    }

    v41 = v135;
    v53 = v134;
    v111 = v109[2];
    v110 = v109[3];
    if (v111 >= v110 >> 1)
    {
      v109 = sub_21A39368C(v110 > 1, v111 + 1, 1, v109);
    }

    v108(v143, v141);
    (*v133)(v142, v41);
    v109[2] = v111 + 1;
    sub_21A36E300(v129, v109 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v111);
    *v130 = v109;
    sub_21A36E950(v128, type metadata accessor for InstructionEntity);
  }

  return (*(v113 + 8))(v112, v114);
}

uint64_t sub_21A36E004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_21A3689C0;

  return sub_21A36CC90(a2, a3, v7, v8, v9);
}

__n128 sub_21A36E0C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21A36E0DC(uint64_t *a1, int a2)
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

uint64_t sub_21A36E124(uint64_t result, int a2, int a3)
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

uint64_t sub_21A36E174(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A36E1E4()
{
  result = qword_27CD24140;
  if (!qword_27CD24140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24140);
  }

  return result;
}

unint64_t sub_21A36E238()
{
  result = qword_27CD23FB0;
  if (!qword_27CD23FB0)
  {
    sub_21A364A10(&qword_27CD23F50, &qword_21A3B2F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23FB0);
  }

  return result;
}

uint64_t sub_21A36E29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A36E300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A36E364(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_21A3B1FFC();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(type metadata accessor for RecipeEntity() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A36E488, 0, 0);
}

uint64_t sub_21A36E488()
{
  v1 = v0[8];
  if (sub_21A3B1C6C())
  {
    v2 = v0[13];
    swift_getKeyPath();
    sub_21A36E89C();
    sub_21A3B1A7C();

    v3 = *v2;
    v4 = v2[1];

    sub_21A36E950(v2, type metadata accessor for RecipeEntity);
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];

    v8 = v0[1];

    return v8(v3, v4);
  }

  else
  {
    v10 = v0[7];
    sub_21A3B187C();
    v11 = v0[5];
    v12 = v0[6];
    sub_21A360CEC(v0 + 2, v11);
    v13 = *(MEMORY[0x277CFCC68] + 4);
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_21A36E618;
    v15 = v0[12];

    return MEMORY[0x28214F8F0](v15, v11, v12);
  }
}

uint64_t sub_21A36E618()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A36E714, 0, 0);
}

uint64_t sub_21A36E714()
{
  v1 = v0[12];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 2);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 2);
  }

  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];

  v13 = v0[1];

  return v13(v4, v5);
}

unint64_t sub_21A36E89C()
{
  result = qword_27CD24160;
  if (!qword_27CD24160)
  {
    sub_21A364A10(&qword_27CD23F78, &unk_21A3B2F40);
    sub_21A36EA18(&qword_27CD23EC8, type metadata accessor for RecipeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24160);
  }

  return result;
}

uint64_t sub_21A36E950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A36E9B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_21A365B50(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21A36EA18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A36EADC()
{
  result = qword_27CD24180;
  if (!qword_27CD24180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24180);
  }

  return result;
}

unint64_t sub_21A36EB30()
{
  result = qword_27CD24188;
  if (!qword_27CD24188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24188);
  }

  return result;
}

unint64_t sub_21A36EB88()
{
  result = qword_27CD24190;
  if (!qword_27CD24190)
  {
    sub_21A364A10(&qword_27CD24198, qword_21A3B3810);
    sub_21A36EB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24190);
  }

  return result;
}

uint64_t sub_21A36EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v8 = sub_21A3B20CC();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = *(*(sub_21A3B212C() - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = *(*(sub_21A3B24DC() - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v13 = *(*(sub_21A3B20EC() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v14 = sub_21A3B1D6C();
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();
  v17 = sub_21A3B205C();
  v4[25] = v17;
  v18 = *(v17 - 8);
  v4[26] = v18;
  v19 = *(v18 + 64) + 15;
  v4[27] = swift_task_alloc();
  v20 = swift_task_alloc();
  v4[28] = v20;
  *v20 = v4;
  v20[1] = sub_21A36EE58;

  return sub_21A36F9E8(a2, a3, a4);
}

uint64_t sub_21A36EE58(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[28];
  v7 = *v2;
  v4[29] = a2;

  return MEMORY[0x2822009F8](sub_21A36EF60, 0, 0);
}

uint64_t sub_21A36EF60()
{
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[12];
    sub_21A3B187C();
    v4 = v0[5];
    v5 = v0[6];
    sub_21A360CEC(v0 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v0[30] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
    v7 = *(MEMORY[0x277CFCD78] + 4);
    v8 = swift_task_alloc();
    v0[31] = v8;
    *v8 = v0;
    v8[1] = sub_21A36F0F0;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {
    v9 = v0[27];
    v10 = v0[24];
    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[18];
    v13 = v0[19];

    v15 = v0[1];
    v16 = MEMORY[0x277D84F90];

    return v15(v16);
  }
}

uint64_t sub_21A36F0F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v8 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v5 = sub_21A36F59C;
  }

  else
  {
    v6 = v3[30];

    v5 = sub_21A36F20C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A36F20C()
{
  v1 = v0[32];
  if (!*(v1 + 16))
  {
    v23 = v0[32];

    sub_21A361318(v0 + 2);
LABEL_10:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  (*(v0[26] + 16))(v0[27], v1 + ((*(v0[26] + 80) + 32) & ~*(v0[26] + 80)), v0[25]);

  sub_21A361318(v0 + 2);
  v2 = sub_21A3B1F9C();
  v3 = *(v2 + 16);
  if (!v3)
  {
    v25 = v0[26];
    v24 = v0[27];
    v26 = v0[25];

    (*(v25 + 8))(v24, v26);
    goto LABEL_10;
  }

  v4 = v0[23];
  v5 = v0[17];
  v46 = MEMORY[0x277D84F90];
  sub_21A3AF670(0, v3, 0);
  sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
  v6 = v46;
  v7 = *(v4 + 16);
  v4 += 16;
  v39 = v7;
  v8 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  v38 = *(v4 + 56);
  v37 = *MEMORY[0x277CC9110];
  v35 = (v4 - 8);
  v36 = (v5 + 104);
  do
  {
    v44 = v3;
    v45 = v6;
    v9 = v0[24];
    v10 = v0[21];
    v42 = v0[22];
    v11 = v0[19];
    v12 = v0[20];
    v13 = v0[18];
    v14 = v0[16];
    v39(v9, v8);
    v43 = sub_21A3B1D4C();
    v16 = v15;
    v17 = sub_21A3B1D5C();
    v40 = v18;
    v41 = v17;
    sub_21A3B247C();
    sub_21A3B211C();
    (*v36)(v13, v37, v14);
    v6 = v45;
    sub_21A3B20FC();
    v19 = sub_21A3B19EC();
    v0[10] = v41;
    v0[11] = v40;
    sub_21A3B1A8C();

    sub_21A3B19DC();
    (*v35)(v9, v42);

    v21 = *(v45 + 16);
    v20 = *(v45 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_21A3AF670((v20 > 1), v21 + 1, 1);
      v6 = v45;
    }

    *(v6 + 16) = v21 + 1;
    v22 = (v6 + 24 * v21);
    v22[4] = v43;
    v22[5] = v16;
    v22[6] = v19;
    v8 += v38;
    v3 = v44 - 1;
  }

  while (v44 != 1);
  (*(v0[26] + 8))(v0[27], v0[25]);

LABEL_11:
  v27 = v0[27];
  v28 = v0[24];
  v30 = v0[20];
  v29 = v0[21];
  v32 = v0[18];
  v31 = v0[19];

  v33 = v0[1];

  return v33(v6);
}

uint64_t sub_21A36F59C()
{
  v27 = v0;
  v1 = v0[30];

  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = sub_21A3B21FC();
  sub_21A365DC4(v7, qword_27CD24AB0);
  v8 = v2;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v9 = sub_21A3B21DC();
  v10 = sub_21A3B25DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[33];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 138543618;
    v15 = v11;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v16;
    *v13 = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_21A3AF0A8(0xD000000000000020, 0x800000021A3B38C0, &v26);
    _os_log_impl(&dword_21A35E000, v9, v10, "Unable to hydrate due to error: %{public}@, for: %{public}s", v12, 0x16u);
    sub_21A365D1C(v13, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v13, -1, -1);
    sub_21A361318(v14);
    MEMORY[0x21CED8F60](v14, -1, -1);
    MEMORY[0x21CED8F60](v12, -1, -1);
  }

  v17 = v0[33];
  v18 = v0[27];
  v19 = v0[24];
  v20 = v0[20];
  v21 = v0[21];
  v23 = v0[18];
  v22 = v0[19];
  sub_21A3B18BC();
  sub_21A36FF2C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_21A36F8A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = swift_task_alloc();
  *(v2 + 24) = v7;
  *v7 = v2;
  v7[1] = sub_21A3689C0;

  return sub_21A36EC0C(v3, v4, v6, v5);
}

uint64_t sub_21A36F950(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21A36F998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A36F9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_21A3B1FFC();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = *(*(type metadata accessor for RecipeEntity() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A36FB10, 0, 0);
}

uint64_t sub_21A36FB10()
{
  v1 = v0[8];
  if (sub_21A3B1C6C() || (v2 = v0[9], sub_21A3B1C6C()))
  {
    v3 = v0[14];
    swift_getKeyPath();
    sub_21A36E89C();
    sub_21A3B1A7C();

    v4 = *v3;
    v5 = v3[1];

    sub_21A36FF74(v3);
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];

    v9 = v0[1];

    return v9(v4, v5);
  }

  else
  {
    v11 = v0[7];
    sub_21A3B187C();
    v12 = v0[5];
    v13 = v0[6];
    sub_21A360CEC(v0 + 2, v12);
    v14 = *(MEMORY[0x277CFCC68] + 4);
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_21A36FCA8;
    v16 = v0[13];

    return MEMORY[0x28214F8F0](v16, v12, v13);
  }
}

uint64_t sub_21A36FCA8()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A36FDA4, 0, 0);
}

uint64_t sub_21A36FDA4()
{
  v1 = v0[13];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 2);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 2);
  }

  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];

  v13 = v0[1];

  return v13(v4, v5);
}

uint64_t sub_21A36FF2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A36FF74(uint64_t a1)
{
  v2 = type metadata accessor for RecipeEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A36FFD4()
{
  result = qword_27CD241A0;
  if (!qword_27CD241A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241A0);
  }

  return result;
}

unint64_t sub_21A37002C()
{
  result = qword_27CD241A8;
  if (!qword_27CD241A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241A8);
  }

  return result;
}

uint64_t sub_21A3700D0()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24AC8);
  sub_21A365DC4(v12, qword_27CD24AC8);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3702B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for RecipeEntity();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v2[7] = *(v5 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3703C4, 0, 0);
}

uint64_t sub_21A3703C4()
{
  v12 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[10] = *v1;
  v0[11] = v1[1];
  v0[12] = v1[2];
  v0[13] = v1[3];
  v0[14] = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000015, 0x800000021A3B3AC0, &v11);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_21A370610;
  v8 = v0[9];
  v9 = v0[3];

  return sub_21A39624C(v8);
}

uint64_t sub_21A370610()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_21A370B1C;
  }

  else
  {
    v3 = sub_21A370724;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A370724()
{
  v23 = v0[13];
  v24 = v0[14];
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = sub_21A3B258C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_21A371C60(v4, v5);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_21A365B98(v5, v12 + v11);
  v13 = v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *(v9 + 32);
  v15 = *(v9 + 16);
  *v13 = *v9;
  *(v13 + 16) = v15;
  *(v13 + 32) = v14;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v16 = sub_21A37D5E4(0, 0, v8, &unk_21A3B3B18, v12);
  v0[17] = v16;
  v17 = *(MEMORY[0x277D857C8] + 4);
  v18 = swift_task_alloc();
  v0[18] = v18;
  v19 = sub_21A365B50(&qword_27CD241C8, &unk_21A3B3B20);
  *v18 = v0;
  v18[1] = sub_21A37091C;
  v20 = MEMORY[0x277D84950];
  v21 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v19, v16, v21, v19, v20);
}

uint64_t sub_21A37091C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_21A370B9C;
  }

  else
  {
    v3 = sub_21A370A30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A370A30()
{
  v1 = v0[17];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  sub_21A367658(&qword_27CD23EC8);
  sub_21A3B19BC();

  sub_21A36769C(v2, type metadata accessor for RecipeEntity);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21A370B1C()
{
  v1 = v0[16];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21A370B9C()
{
  v1 = v0[17];
  v2 = v0[9];

  sub_21A36769C(v2, type metadata accessor for RecipeEntity);
  v3 = v0[19];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21A370C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21A370C68, 0, 0);
}

uint64_t sub_21A370C68()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_21A370D5C;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x286D726F66726570, 0xE900000000000029, sub_21A371DE0, v1, v5);
}

uint64_t sub_21A370D5C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A370E98, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_21A370E98()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_21A370EFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_21A365B50(&qword_27CD241D0, &qword_21A3B4BC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27[-v10];
  v12 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a2;
  v18 = a2[1];
  v20 = *(v15 + 28);
  (*(v7 + 16))(v11, a1, v6);

  sub_21A3B1DBC();
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  v21 = *(a3 + 8);
  sub_21A3B187C();
  v22 = *sub_21A360CEC(v32, v32[3]);
  v31 = v17;
  v23 = *(v22 + 16);
  v28 = sub_21A367634;
  v29 = &v30;
  v24 = *(*v23 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v25));
  sub_21A36763C(v23 + v24);
  os_unfair_lock_unlock((v23 + v25));
  sub_21A36769C(v17, type metadata accessor for CookingSupportAppIntentInvocation);
  return sub_21A361318(v32);
}

uint64_t sub_21A371140@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E00 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24AC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3711E8()
{
  v0 = sub_21A365B50(&qword_27CD241D8, &qword_21A3B3B30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD241E0, &qword_21A3B3B38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD241E8, &unk_21A3B3B68);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A371380(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3702B8(a1);
}

double sub_21A37142C@<D0>(uint64_t a1@<X8>)
{
  sub_21A3714BC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A371470(uint64_t a1)
{
  v2 = sub_21A371C0C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A3714BC@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_21A3B1C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v56 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v53 = v52 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v52[0] = v52 - v15;
  v16 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v60 = v52 - v19;
  v20 = sub_21A3B20CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21A3B212C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v29 = sub_21A3B24DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B20EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v52[1] = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *MEMORY[0x277CC9110];
  v38 = *(v21 + 104);
  v38(v25, v37, v20);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v38(v25, v37, v20);
  v39 = v60;
  sub_21A3B20FC();
  (*(v33 + 56))(v39, 0, 1, v32);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v52[0], 1, 1, v40);
  v41 = sub_21A3B19AC();
  v42 = *(*(v41 - 8) + 56);
  v42(v53, 1, 1, v41);
  v42(v55, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  *&v61 = v43;
  *(&v61 + 1) = v44;
  *&v62 = v45;
  (*(v57 + 104))(v56, *MEMORY[0x277CBA308], v58);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8);
  v46 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v49 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v51 = v59;
  *v59 = v46;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v49;
  v51[4] = result;
  return result;
}

unint64_t sub_21A371C0C()
{
  result = qword_27CD241C0;
  if (!qword_27CD241C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241C0);
  }

  return result;
}

uint64_t sub_21A371C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A371CC4(uint64_t a1)
{
  v4 = *(type metadata accessor for RecipeEntity() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A3650E8;

  return sub_21A370C44(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_21A371DEC()
{
  result = qword_27CD241F0;
  if (!qword_27CD241F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241F0);
  }

  return result;
}

unint64_t sub_21A371E44()
{
  result = qword_27CD241F8;
  if (!qword_27CD241F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241F8);
  }

  return result;
}

uint64_t sub_21A371EE8()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24AE0);
  sub_21A365DC4(v12, qword_27CD24AE0);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3720D0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity();
  v2[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A372194, 0, 0);
}

uint64_t sub_21A372194()
{
  v16 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  v0[13] = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD000000000000015, 0x800000021A3B3C90, &v15);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_21A3723C8;
  v12 = v0[12];
  v13 = v0[8];

  return sub_21A396F6C(v12);
}

uint64_t sub_21A3723C8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_21A366834;
  }

  else
  {
    v3 = sub_21A3724DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A3724DC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v0[9] + 20);
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v8 = *sub_21A360CEC(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_21A367634;
  *(v11 + 24) = v9;
  v12 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v13));
  sub_21A36763C(v10 + v12);
  if (v1)
  {

    os_unfair_lock_unlock((v10 + v13));
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[7];
    os_unfair_lock_unlock((v10 + v13));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8);
    sub_21A3B19BC();
    sub_21A36769C(v14, type metadata accessor for RecipeEntity);
    sub_21A36769C(v16, type metadata accessor for CookingSupportAppIntentInvocation);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_21A37271C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E08 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24AE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3727C4()
{
  v0 = sub_21A365B50(&qword_27CD24218, &qword_21A3B3CD8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD24220, &qword_21A3B3CE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24228, qword_21A3B3D10);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A37295C(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3720D0(a1);
}

double sub_21A372A08@<D0>(uint64_t a1@<X8>)
{
  sub_21A372A98(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A372A4C(uint64_t a1)
{
  v2 = sub_21A3731E8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A372A98@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_21A3B1C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v56 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v53 = v52 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v52[0] = v52 - v15;
  v16 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v60 = v52 - v19;
  v20 = sub_21A3B20CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21A3B212C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v29 = sub_21A3B24DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B20EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v52[1] = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *MEMORY[0x277CC9110];
  v38 = *(v21 + 104);
  v38(v25, v37, v20);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v38(v25, v37, v20);
  v39 = v60;
  sub_21A3B20FC();
  (*(v33 + 56))(v39, 0, 1, v32);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v52[0], 1, 1, v40);
  v41 = sub_21A3B19AC();
  v42 = *(*(v41 - 8) + 56);
  v42(v53, 1, 1, v41);
  v42(v55, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  *&v61 = v43;
  *(&v61 + 1) = v44;
  *&v62 = v45;
  (*(v57 + 104))(v56, *MEMORY[0x277CBA308], v58);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8);
  v46 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v49 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v51 = v59;
  *v59 = v46;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v49;
  v51[4] = result;
  return result;
}

unint64_t sub_21A3731E8()
{
  result = qword_27CD24210;
  if (!qword_27CD24210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24210);
  }

  return result;
}

unint64_t sub_21A373240()
{
  result = qword_27CD24230;
  if (!qword_27CD24230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24230);
  }

  return result;
}

unint64_t sub_21A373298()
{
  result = qword_27CD24238;
  if (!qword_27CD24238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24238);
  }

  return result;
}

uint64_t sub_21A37333C()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24AF8);
  sub_21A365DC4(v12, qword_27CD24AF8);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A373520(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity();
  v2[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3735E4, 0, 0);
}

uint64_t sub_21A3735E4()
{
  v16 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  v0[13] = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD000000000000013, 0x800000021A3B3E40, &v15);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_21A373818;
  v12 = v0[12];
  v13 = v0[8];

  return sub_21A397C8C(v12);
}

uint64_t sub_21A373818()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_21A366834;
  }

  else
  {
    v3 = sub_21A37392C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A37392C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v0[9] + 20);
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v8 = *sub_21A360CEC(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_21A367634;
  *(v11 + 24) = v9;
  v12 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v13));
  sub_21A36763C(v10 + v12);
  if (v1)
  {

    os_unfair_lock_unlock((v10 + v13));
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[7];
    os_unfair_lock_unlock((v10 + v13));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8);
    sub_21A3B19BC();
    sub_21A36769C(v14, type metadata accessor for RecipeEntity);
    sub_21A36769C(v16, type metadata accessor for CookingSupportAppIntentInvocation);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_21A373B6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E10 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24AF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A373C1C()
{
  v0 = sub_21A365B50(&qword_27CD24268, &qword_21A3B3EA8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD24270, &qword_21A3B3EB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24278, &qword_21A3B3EE0);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A373DAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A373520(a1);
}

double sub_21A373E58@<D0>(uint64_t a1@<X8>)
{
  sub_21A373EE8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A373E9C(uint64_t a1)
{
  v2 = sub_21A37465C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A373EE8@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_21A3B1C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v54 = &v50 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v52 = &v50 - v15;
  v16 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v51 = &v50 - v19;
  v20 = sub_21A3B20CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21A3B212C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v29 = sub_21A3B24DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B20EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v53 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v36 = *MEMORY[0x277CC9110];
  v37 = *(v21 + 104);
  v37(v25, v36, v20);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v37(v25, v36, v20);
  v38 = v51;
  sub_21A3B20FC();
  (*(v33 + 56))(v38, 0, 1, v32);
  v39 = type metadata accessor for RecipeEntity();
  (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  v40 = sub_21A3B19AC();
  v41 = *(*(v40 - 8) + 56);
  v41(v54, 1, 1, v40);
  v41(v55, 1, 1, v40);
  sub_21A365B50(&qword_27CD24250, &qword_21A3B3E88);
  sub_21A3B18EC();
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  sub_21A3B18DC();
  v42 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  *&v60 = v42;
  *(&v60 + 1) = v43;
  (*(v57 + 104))(v56, *MEMORY[0x277CBA308], v58);
  sub_21A374608();
  sub_21A367658(&qword_27CD23FB8);
  v44 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  sub_21A3B18DC();
  v46 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v49 = v59;
  *v59 = v44;
  v49[1] = v45;
  v49[2] = v46;
  v49[3] = v47;
  v49[4] = result;
  return result;
}

unint64_t sub_21A374608()
{
  result = qword_27CD24258;
  if (!qword_27CD24258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24258);
  }

  return result;
}

unint64_t sub_21A37465C()
{
  result = qword_27CD24260;
  if (!qword_27CD24260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24260);
  }

  return result;
}

uint64_t sub_21A37470C(uint64_t *a1, int a2)
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

uint64_t sub_21A374754(uint64_t result, int a2, int a3)
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

unint64_t sub_21A374794()
{
  result = qword_27CD24288;
  if (!qword_27CD24288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24288);
  }

  return result;
}

unint64_t sub_21A3747EC()
{
  result = qword_27CD24290;
  if (!qword_27CD24290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24290);
  }

  return result;
}

uint64_t sub_21A374890()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24B10);
  sub_21A365DC4(v12, qword_27CD24B10);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A374AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21A3B20CC();
  v4[4] = v9;
  v10 = *(v9 - 8);
  v4[5] = v10;
  v11 = *(v10 + 64) + 15;
  v4[6] = swift_task_alloc();
  v12 = *(*(sub_21A3B212C() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v13 = *(*(sub_21A3B24DC() - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v14 = *(*(sub_21A3B20EC() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v15 = sub_21A3B1D6C();
  v4[10] = v15;
  v16 = *(v15 - 8);
  v4[11] = v16;
  v17 = *(v16 + 64) + 15;
  v4[12] = swift_task_alloc();
  v18 = sub_21A3B205C();
  v4[13] = v18;
  v19 = *(v18 - 8);
  v4[14] = v19;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v4[15] = v21;
  v22 = swift_task_alloc();
  v4[16] = v22;
  *v22 = v4;
  v22[1] = sub_21A374D34;

  return sub_21A3A5308(v21, a1, a2, a3, a4);
}

uint64_t sub_21A374D34()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_21A375180;
  }

  else
  {
    v3 = sub_21A374E48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A374E48()
{
  v1 = v0[15];
  v2 = sub_21A3B1F9C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[11];
    v5 = v0[5];
    v45 = MEMORY[0x277D84F90];
    sub_21A3AF670(0, v3, 0);
    sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
    v6 = v45;
    v7 = *(v4 + 16);
    v4 += 16;
    v38 = v7;
    v8 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v37 = *(v4 + 56);
    v36 = *MEMORY[0x277CC9110];
    v34 = (v4 - 8);
    v35 = (v5 + 104);
    do
    {
      v43 = v3;
      v44 = v6;
      v9 = v0[12];
      v10 = v0[9];
      v41 = v0[10];
      v11 = v0[7];
      v12 = v0[8];
      v13 = v0[6];
      v14 = v0[4];
      v38(v9, v8);
      v42 = sub_21A3B1D4C();
      v16 = v15;
      v17 = sub_21A3B1D5C();
      v39 = v18;
      v40 = v17;
      sub_21A3B247C();
      sub_21A3B211C();
      (*v35)(v13, v36, v14);
      v6 = v44;
      sub_21A3B20FC();
      v19 = sub_21A3B19EC();
      v0[2] = v40;
      v0[3] = v39;
      sub_21A3B1A8C();

      sub_21A3B19DC();
      (*v34)(v9, v41);

      v21 = *(v44 + 16);
      v20 = *(v44 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21A3AF670((v20 > 1), v21 + 1, 1);
        v6 = v44;
      }

      *(v6 + 16) = v21 + 1;
      v22 = (v6 + 24 * v21);
      v22[4] = v42;
      v22[5] = v16;
      v22[6] = v19;
      v8 += v37;
      v3 = v43 - 1;
    }

    while (v43 != 1);
    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  else
  {
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];

    (*(v24 + 8))(v23, v25);
    v6 = MEMORY[0x277D84F90];
  }

  v26 = v0[15];
  v27 = v0[12];
  v29 = v0[8];
  v28 = v0[9];
  v31 = v0[6];
  v30 = v0[7];

  v32 = v0[1];

  return v32(v6);
}

uint64_t sub_21A375180()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];
  v8 = v0[17];

  return v7();
}

uint64_t sub_21A375228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_21A375250, 0, 0);
}

uint64_t sub_21A375250()
{
  v17 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_21A3B21FC();
  sub_21A365DC4(v5, qword_27CD24AB0);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v6 = sub_21A3B21DC();
  v7 = sub_21A3B25EC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_21A3AF0A8(0xD000000000000017, 0x800000021A3B4060, &v16);
    _os_log_impl(&dword_21A35E000, v6, v7, "Will perform intent: %{public}s", v8, 0xCu);
    sub_21A361318(v9);
    MEMORY[0x21CED8F60](v9, -1, -1);
    MEMORY[0x21CED8F60](v8, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_21A375454;
  v11 = v0[6];
  v12 = v0[7];
  v14 = v0[4];
  v13 = v0[5];

  return sub_21A374AC0(v14, v13, v11, v12);
}

uint64_t sub_21A375454(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x2822009F8](sub_21A3755A0, 0, 0);
  }
}

uint64_t sub_21A3755A0()
{
  v1 = v0[3];
  v0[2] = v0[9];
  sub_21A365B50(&qword_27CD24198, qword_21A3B3810);
  sub_21A376180();
  sub_21A3B19BC();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21A37564C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E18 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24B10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3756F4()
{
  v0 = sub_21A365B50(&qword_27CD242C8, &qword_21A3B40C8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD242D0, &qword_21A3B40D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD242D8, &unk_21A3B4100);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A37588C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21A3650E8;

  return sub_21A375228(a1, v4, v5, v7, v6);
}

uint64_t sub_21A37594C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3759E8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_21A37599C(uint64_t a1)
{
  v2 = sub_21A37612C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A3759E8()
{
  v0 = sub_21A3B1C4C();
  v50 = *(v0 - 8);
  v51 = v0;
  v1 = *(v50 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v49 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v48 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v47 = v46 - v10;
  v11 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v46[0] = v46 - v14;
  v15 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v52 = v46 - v18;
  v19 = sub_21A3B20CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21A3B212C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v28 = sub_21A3B24DC();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v31 = sub_21A3B20EC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v46[1] = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v35 = *MEMORY[0x277CC9110];
  v36 = *(v20 + 104);
  v36(v24, v35, v19);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v36(v24, v35, v19);
  v37 = v52;
  sub_21A3B20FC();
  (*(v32 + 56))(v37, 0, 1, v31);
  v38 = type metadata accessor for RecipeEntity();
  (*(*(v38 - 8) + 56))(v46[0], 1, 1, v38);
  v39 = sub_21A3B19AC();
  v40 = *(*(v39 - 8) + 56);
  v40(v47, 1, 1, v39);
  v40(v48, 1, 1, v39);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v42 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  *&v53 = v41;
  *(&v53 + 1) = v42;
  *&v54 = v43;
  (*(v50 + 104))(v49, *MEMORY[0x277CBA308], v51);
  sub_21A36758C();
  sub_21A3760D4();
  v44 = sub_21A3B1A4C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  sub_21A3B188C();
  return v44;
}

unint64_t sub_21A3760D4()
{
  result = qword_27CD23FB8;
  if (!qword_27CD23FB8)
  {
    type metadata accessor for RecipeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23FB8);
  }

  return result;
}

unint64_t sub_21A37612C()
{
  result = qword_27CD242B8;
  if (!qword_27CD242B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD242B8);
  }

  return result;
}

unint64_t sub_21A376180()
{
  result = qword_27CD242C0;
  if (!qword_27CD242C0)
  {
    sub_21A364A10(&qword_27CD24198, qword_21A3B3810);
    sub_21A36EB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD242C0);
  }

  return result;
}

uint64_t sub_21A37622C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_21A3B1FCC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_21A376298(a1 + v6, a2 + v6);
}

uint64_t sub_21A376298(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = sub_21A365B50(&qword_27CD242E0, &qword_21A3B41D0);
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v63 = &v62 - v9;
  v10 = sub_21A3B20BC();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CookingSupportAppIntentEventAction(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = (&v62 - v23);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v62 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v62 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v62 - v34;
  v36 = sub_21A365B50(&qword_27CD242E8, &qword_21A3B41D8);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v36 - 8, v38);
  v41 = &v62 - v40;
  v42 = (&v62 + *(v39 + 56) - v40);
  sub_21A3768D4(a1, &v62 - v40);
  sub_21A3768D4(v69, v42);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21A3768D4(v41, v32);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v54 = v67;
        v53 = v68;
        v55 = v63;
        (*(v67 + 32))(v63, v42, v68);
        v51 = sub_21A3B1D9C();
        v56 = *(v54 + 8);
        v56(v55, v53);
        v56(v32, v53);
        goto LABEL_41;
      }

      (*(v67 + 8))(v32, v68);
      goto LABEL_37;
    case 2u:
      sub_21A3768D4(v41, v28);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v49 = v67;
        v48 = v68;
        v50 = v64;
        (*(v67 + 32))(v64, v42, v68);
        v51 = sub_21A3B1D9C();
        v52 = *(v49 + 8);
        v52(v50, v48);
        v52(v28, v48);
        goto LABEL_41;
      }

      (*(v67 + 8))(v28, v68);
      goto LABEL_37;
    case 3u:
      sub_21A3768D4(v41, v24);
      v44 = *v24;
      v43 = v24[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }

      goto LABEL_7;
    case 4u:
      sub_21A3768D4(v41, v20);
      v44 = *v20;
      v43 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_20:

        goto LABEL_37;
      }

LABEL_7:
      if (v44 == *v42 && v43 == v42[1])
      {
        v57 = v42[1];
      }

      else
      {
        v46 = v42[1];
        v47 = sub_21A3B267C();

        if ((v47 & 1) == 0)
        {
          sub_21A3769A0(v41);
          goto LABEL_38;
        }
      }

LABEL_34:
      sub_21A3769A0(v41);
      v51 = 1;
      break;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 8u:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    default:
      sub_21A3768D4(v41, v35);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v65 + 8))(v35, v66);
LABEL_37:
        sub_21A376938(v41);
LABEL_38:
        v51 = 0;
      }

      else
      {
        v60 = v65;
        v59 = v66;
        (*(v65 + 32))(v14, v42, v66);
        v51 = sub_21A3B20AC();
        v61 = *(v60 + 8);
        v61(v14, v59);
        v61(v35, v59);
LABEL_41:
        sub_21A3769A0(v41);
      }

      break;
  }

  return v51 & 1;
}

uint64_t sub_21A3768D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSupportAppIntentEventAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A376938(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD242E8, &qword_21A3B41D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A3769A0(uint64_t a1)
{
  v2 = type metadata accessor for CookingSupportAppIntentEventAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InstructionEntity()
{
  result = qword_27CD24340;
  if (!qword_27CD24340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A376B68()
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  sub_21A3B18DC();
  v1 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24178, &qword_21A3B3790);
  swift_getKeyPath();
  result = sub_21A3B1C7C();
  qword_27CD24B28 = v0;
  unk_27CD24B30 = v1;
  qword_27CD24B38 = result;
  return result;
}

uint64_t sub_21A376C58@<X0>(void *a1@<X8>)
{
  if (qword_27CD23E20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_27CD24B30;
  v2 = qword_27CD24B38;
  *a1 = qword_27CD24B28;
  a1[1] = v1;
  a1[2] = v2;
  sub_21A3B1A8C();
  sub_21A3B1A8C();

  return sub_21A3B1A8C();
}

uint64_t sub_21A376DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A3B20BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21A376E24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E28 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B1C9C();
  v3 = sub_21A365DC4(v2, qword_27CD24B40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_21A376ED0()
{
  result = qword_27CD24328;
  if (!qword_27CD24328)
  {
    sub_21A364A10(&qword_27CD24330, &qword_21A3B4328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24328);
  }

  return result;
}

uint64_t sub_21A376F34(uint64_t a1)
{
  v2 = sub_21A377550(&qword_27CD240D8, type metadata accessor for InstructionEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_21A376FFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v3 = sub_21A365B50(&qword_27CD23FA0, &unk_21A3B2F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v27 - v6;
  v8 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v27 - v11;
  v13 = sub_21A3B20EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = sub_21A3B24CC();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  MEMORY[0x28223BE20](v20, v21);
  sub_21A3B24BC();
  sub_21A3B24AC();
  v22 = type metadata accessor for InstructionEntity();
  v23 = *(v1 + *(v22 + 20));
  sub_21A3B19CC();
  sub_21A3B248C();
  sub_21A3B24AC();
  sub_21A3B20DC();
  sub_21A3B24BC();
  sub_21A3B24AC();
  v24 = *(v2 + *(v22 + 24));
  sub_21A3B19CC();
  sub_21A3B249C();

  sub_21A3B24AC();
  sub_21A3B20DC();
  (*(v14 + 56))(v12, 0, 1, v13);
  v25 = sub_21A3B1BBC();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  return sub_21A3B1BCC();
}

uint64_t sub_21A377314(uint64_t a1)
{
  v2 = sub_21A377550(&qword_27CD24320, type metadata accessor for InstructionEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

void sub_21A3773B8()
{
  sub_21A3B20BC();
  if (v0 <= 0x3F)
  {
    sub_21A3774F0(319, &qword_27CD24350, sub_21A37749C);
    if (v1 <= 0x3F)
    {
      sub_21A3774F0(319, &qword_27CD23F08, sub_21A365944);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21A37749C()
{
  result = qword_27CD24358;
  if (!qword_27CD24358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24358);
  }

  return result;
}

void sub_21A3774F0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_21A3B1A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21A377550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A377598()
{
  v0 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v22 - v3;
  v22[0] = sub_21A3B20CC();
  v5 = *(v22[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22[0], v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A3B212C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_21A3B24DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v16 = sub_21A3B20EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v20 = sub_21A3B1C9C();
  sub_21A365DFC(v20, qword_27CD24B40);
  sub_21A365DC4(v20, qword_27CD24B40);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v5 + 104))(v9, *MEMORY[0x277CC9110], v22[0]);
  sub_21A3B20FC();
  (*(v17 + 56))(v4, 1, 1, v16);
  return sub_21A3B1C8C();
}

unint64_t sub_21A377880()
{
  result = qword_27CD24360;
  if (!qword_27CD24360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24360);
  }

  return result;
}

unint64_t sub_21A3778D8()
{
  result = qword_27CD24368;
  if (!qword_27CD24368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24368);
  }

  return result;
}

uint64_t sub_21A37797C()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24B58);
  sub_21A365DC4(v12, qword_27CD24B58);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A377B5C()
{
  v0 = sub_21A365B50(&qword_27CD243A8, &qword_21A3B4658);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD243B0, &qword_21A3B4660);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A379334();
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD243B8, &qword_21A3B4690);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD243C0, &qword_21A3B4698);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A377D6C()
{
  v1 = *(v0 + 8);
  sub_21A3B1A1C();
  return v3;
}

uint64_t sub_21A377DA4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[12] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity();
  v2[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A377E68, 0, 0);
}

uint64_t sub_21A377E68()
{
  v16 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  v0[16] = v1[1];
  v0[17] = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD000000000000019, 0x800000021A3B4570, &v15);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_21A3780BC;
  v12 = v0[15];
  v13 = v0[11];

  return sub_21A3989AC(v12);
}

uint64_t sub_21A3780BC()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_21A378434;
  }

  else
  {
    v3 = sub_21A3781D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A3781D0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  v6 = *v4;
  v7 = v4[1];
  v8 = (v5 + *(v0[12] + 20));

  sub_21A3B1A1C();
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[9];

  *v8 = v9;
  v8[1] = v10;
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  sub_21A3B187C();
  v12 = *sub_21A360CEC(v0 + 2, v0[5]);
  v13 = swift_task_alloc();
  *(v13 + 16) = v5;
  v14 = *(v12 + 16);
  v15 = swift_task_alloc();
  *(v15 + 16) = sub_21A367634;
  *(v15 + 24) = v13;
  v16 = *(*v14 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v17));
  sub_21A36763C(v14 + v16);
  if (v1)
  {

    os_unfair_lock_unlock((v14 + v17));
  }

  else
  {
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];
    v21 = v0[10];
    os_unfair_lock_unlock((v14 + v17));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8);
    sub_21A3B19BC();
    sub_21A36769C(v18, type metadata accessor for RecipeEntity);
    sub_21A36769C(v20, type metadata accessor for CookingSupportAppIntentInvocation);

    v22 = v0[1];

    v22();
  }
}

uint64_t sub_21A378434()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_21A3784A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E30 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24B58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A378550(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_21A3785FC;

  return sub_21A377DA4(a1);
}

uint64_t sub_21A3785FC()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_21A3786F0@<D0>(_OWORD *a1@<X8>)
{
  sub_21A378848(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_21A378754(uint64_t a1)
{
  v2 = sub_21A379334();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 sub_21A378790(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21A3787A4(uint64_t *a1, int a2)
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

uint64_t sub_21A3787EC(uint64_t result, int a2, int a3)
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

uint64_t sub_21A378848@<X0>(char **a1@<X8>)
{
  v80 = a1;
  v86 = sub_21A3B1C4C();
  v88 = *(v86 - 8);
  v1 = *(v88 + 64);
  MEMORY[0x28223BE20](v86, v2);
  v85 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v83 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v84 = &v65 - v10;
  v11 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v82 = &v65 - v14;
  v15 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v87 = &v65 - v18;
  v19 = sub_21A3B20CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21A3B212C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v28 = sub_21A3B24DC();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v31 = sub_21A3B20EC();
  v77 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v81 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *(v20 + 104);
  v69 = *MEMORY[0x277CC9110];
  v36 = v69;
  v70 = v19;
  v37(v24, v69, v19);
  v71 = v37;
  v72 = v20 + 104;
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v37(v24, v36, v19);
  v38 = v87;
  sub_21A3B20FC();
  v39 = *(v32 + 56);
  v76 = v32 + 56;
  v78 = v39;
  v39(v38, 0, 1, v31);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v82, 1, 1, v40);
  v41 = sub_21A3B19AC();
  v66 = v41;
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v67 = v43;
  v68 = v42 + 56;
  v43(v84, 1, 1, v41);
  v43(v83, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v92 = 0u;
  v93 = 0u;
  v94 = 0;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  v65 = sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  v79 = sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v46 = sub_21A3B188C();
  *&v92 = v44;
  *(&v92 + 1) = v45;
  *&v93 = v46;
  v73 = *MEMORY[0x277CBA308];
  v47 = *(v88 + 104);
  v88 += 104;
  v74 = v47;
  v47(v85);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8);
  v48 = v84;
  v82 = sub_21A3B1A4C();
  v75 = sub_21A365B50(&qword_27CD24380, &unk_21A3B45D8);
  sub_21A3B247C();
  sub_21A3B211C();
  v49 = v69;
  v50 = v70;
  v51 = v71;
  v71(v24, v69, v70);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v51(v24, v49, v50);
  v52 = v87;
  sub_21A3B20FC();
  v78(v52, 0, 1, v77);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v53 = v66;
  v54 = v67;
  v67(v48, 1, 1, v66);
  v54(v83, 1, 1, v53);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v55 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v56 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24388, &qword_21A3B45E8);
  swift_getKeyPath();
  v57 = sub_21A3B1C7C();
  sub_21A365B50(&qword_27CD24390, &qword_21A3B4618);
  swift_getKeyPath();
  v58 = sub_21A3B1C7C();
  *&v92 = v55;
  *(&v92 + 1) = v56;
  *&v93 = v57;
  *(&v93 + 1) = v58;
  v74(v85, v73, v86);
  sub_21A3792E0();
  sub_21A36AA54();
  v59 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v60 = sub_21A3B188C();
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v61 = sub_21A3B188C();
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v62 = sub_21A3B188C();
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v64 = v80;
  *v80 = v82;
  v64[1] = v59;
  v64[2] = v60;
  v64[3] = v61;
  v64[4] = v62;
  v64[5] = result;
  return result;
}

unint64_t sub_21A3792E0()
{
  result = qword_27CD24398;
  if (!qword_27CD24398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24398);
  }

  return result;
}

unint64_t sub_21A379334()
{
  result = qword_27CD243A0;
  if (!qword_27CD243A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD243A0);
  }

  return result;
}

uint64_t sub_21A379388(uint64_t a1)
{
  v182 = sub_21A3B1ECC();
  v181 = *(v182 - 8);
  v2 = *(v181 + 64);
  MEMORY[0x28223BE20](v182, v3);
  v180 = (&v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_21A3B1EEC();
  v185 = *(v5 - 8);
  v186 = v5;
  v6 = *(v185 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v177 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v176 = &v154 - v11;
  v157 = sub_21A3B1CFC();
  v156 = *(v157 - 8);
  v12 = *(v156 + 64);
  v14 = MEMORY[0x28223BE20](v157, v13);
  v155 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v154 = &v154 - v17;
  v18 = sub_21A3B1D3C();
  v187 = *(v18 - 8);
  v188 = v18;
  v19 = *(v187 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v159 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v158 = &v154 - v24;
  v184 = sub_21A365B50(&qword_27CD242E0, &qword_21A3B41D0);
  v183 = *(v184 - 8);
  v25 = *(v183 + 64);
  v27 = MEMORY[0x28223BE20](v184, v26);
  v175 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v174 = &v154 - v30;
  v173 = sub_21A3B20BC();
  v172 = *(v173 - 8);
  v31 = *(v172 + 64);
  MEMORY[0x28223BE20](v173, v32);
  v171 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_21A3B1E5C();
  v178 = *(v179 - 8);
  v34 = *(v178 + 64);
  v36 = MEMORY[0x28223BE20](v179, v35);
  v170 = &v154 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v169 = &v154 - v39;
  v40 = sub_21A3B1D0C();
  v189 = *(v40 - 8);
  v190 = v40;
  v41 = *(v189 + 64);
  MEMORY[0x28223BE20](v40, v42);
  v191 = &v154 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21A3B1CDC();
  v192 = *(v44 - 8);
  v193 = v44;
  v45 = *(v192 + 64);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v168 = &v154 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v167 = &v154 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v166 = &v154 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v165 = &v154 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v164 = &v154 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v163 = &v154 - v63;
  MEMORY[0x28223BE20](v62, v64);
  v162 = &v154 - v65;
  v199 = type metadata accessor for CookingSupportAppIntentEventAction(0);
  v66 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199, v67);
  v198 = &v154 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21A365B50(&qword_27CD243D8, &unk_21A3B4750);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69 - 8, v71);
  v73 = &v154 - v72;
  v74 = sub_21A365B50(&qword_27CD243D0, qword_21A3B46D8);
  v75 = *(v74 - 8);
  v196 = v74;
  v197 = v75;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74, v77);
  v79 = &v154 - v78;
  v80 = sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  v81 = *(*(v80 - 8) + 64);
  v83 = MEMORY[0x28223BE20](v80 - 8, v82);
  v161 = &v154 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x28223BE20](v83, v85);
  v160 = &v154 - v87;
  MEMORY[0x28223BE20](v86, v88);
  v90 = &v154 - v89;
  v91 = sub_21A3B1FFC();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  v95 = MEMORY[0x28223BE20](v91, v94);
  v194 = &v154 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95, v97);
  v99 = &v154 - v98;
  v100 = *(v92 + 16);
  v100(&v154 - v98, a1, v91);
  v101 = *(type metadata accessor for CookingSupportAppIntentEventHandler() + 20);
  sub_21A365B50(&qword_27CD243C8, &unk_21A3B46A0);
  sub_21A3B22DC();
  v201 = v99;
  v102 = v99;
  v195 = v92 + 16;
  v103 = v100;
  v100(v73, v102, v91);
  v200 = v92;
  (*(v92 + 56))(v73, 0, 1, v91);
  v202 = v90;
  v104 = v196;
  sub_21A3B206C();
  v105 = v198;
  sub_21A365D1C(v73, &qword_27CD243D8, &unk_21A3B4750);
  (*(v197 + 8))(v79, v104);
  v106 = type metadata accessor for CookingSupportAppIntentEvent(0);
  sub_21A3768D4(a1 + *(v106 + 20), v105);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v107 = v183;
      v108 = v174;
      v109 = v184;
      (*(v183 + 32))(v174, v105, v184);
      v110 = v201;
      v103(v194, v201, v91);
      v141 = v191;
      (*(v107 + 16))(v191, v108, v109);
      (*(v107 + 56))(v141, 0, 1, v109);
      (*(v189 + 104))(v141, *MEMORY[0x277CFCC98], v190);
      v112 = &v199;
      goto LABEL_15;
    case 2u:
      v107 = v183;
      v108 = v175;
      v109 = v184;
      (*(v183 + 32))(v175, v105, v184);
      v110 = v201;
      v103(v194, v201, v91);
      v134 = v191;
      (*(v107 + 16))(v191, v108, v109);
      (*(v107 + 56))(v134, 0, 1, v109);
      (*(v189 + 104))(v134, *MEMORY[0x277CFCCB8], v190);
      v112 = &v200;
      goto LABEL_15;
    case 3u:
      v135 = *v105;
      v136 = v105[1];
      v117 = v201;
      v100(v194, v201, v91);
      v137 = v180;
      *v180 = v135;
      v137[1] = v136;
      (*(v181 + 104))(v137, *MEMORY[0x277CFCD18], v182);
      v127 = &v203;
      goto LABEL_12;
    case 4u:
      v124 = *v105;
      v125 = v105[1];
      v117 = v201;
      v100(v194, v201, v91);
      v126 = v180;
      *v180 = v124;
      v126[1] = v125;
      (*(v181 + 104))(v126, *MEMORY[0x277CFCD20], v182);
      v127 = &v204;
LABEL_12:
      v138 = *(v127 - 32);
      sub_21A3B1EDC();
      sub_21A360A94(&qword_27CD243E0, MEMORY[0x277CFCD30]);
      v139 = v186;
      sub_21A3B231C();
      (*(v185 + 8))(v138, v139);
      goto LABEL_28;
    case 5u:
      v110 = v201;
      v100(v194, v201, v91);
      (*(v189 + 104))(v191, *MEMORY[0x277CFCCA8], v190);
      v140 = &v194;
      goto LABEL_21;
    case 6u:
      v110 = v201;
      v100(v194, v201, v91);
      (*(v189 + 104))(v191, *MEMORY[0x277CFCCA0], v190);
      v140 = &v195;
      goto LABEL_21;
    case 7u:
      v110 = v201;
      v100(v194, v201, v91);
      (*(v189 + 104))(v191, *MEMORY[0x277CFCCB0], v190);
      v140 = &v196;
      goto LABEL_21;
    case 8u:
      v110 = v201;
      v100(v194, v201, v91);
      (*(v189 + 104))(v191, *MEMORY[0x277CFCC90], v190);
      v140 = &v197;
LABEL_21:
      v148 = *(v140 - 32);
      sub_21A3B1CCC();
      sub_21A360A94(&qword_27CD243F0, MEMORY[0x277CFCC60]);
      v149 = v193;
      sub_21A3B231C();
      (*(v192 + 8))(v148, v149);
      goto LABEL_22;
    case 9u:
      v130 = sub_21A365B50(&qword_27CD243F8, &unk_21A3B4760);
      v131 = v169;
      v132 = &v169[*(v130 + 48)];
      v117 = v201;
      v100(v169, v201, v91);
      *v132 = 0;
      *(v132 + 1) = 0;
      v133 = MEMORY[0x277CFCCE0];
      goto LABEL_19;
    case 0xAu:
      v144 = sub_21A365B50(&qword_27CD243F8, &unk_21A3B4760);
      v131 = v170;
      v145 = &v170[*(v144 + 48)];
      v117 = v201;
      v100(v170, v201, v91);
      *v145 = 0;
      *(v145 + 1) = 0;
      v133 = MEMORY[0x277CFCCE8];
LABEL_19:
      v146 = v178;
      v147 = v179;
      (*(v178 + 104))(v131, *v133, v179);
      sub_21A360A94(&qword_27CD24400, MEMORY[0x277CFCCF8]);
      sub_21A3B231C();
      (*(v146 + 8))(v131, v147);
      goto LABEL_28;
    case 0xBu:
      v113 = v160;
      sub_21A37A884(v202, v160);
      v115 = v187;
      v114 = v188;
      v116 = (*(v187 + 48))(v113, 1, v188);
      v117 = v201;
      if (v116 == 1)
      {
        goto LABEL_8;
      }

      v118 = v158;
      (*(v115 + 32))(v158, v113, v114);
      if (sub_21A3B1D1C())
      {
        goto LABEL_26;
      }

      v119 = v154;
      v103(v154, v117, v91);
      v120 = v156;
      v121 = v157;
      (*(v156 + 104))(v119, *MEMORY[0x277CFCC78], v157);
      sub_21A360A94(&qword_27CD243E8, MEMORY[0x277CFCC88]);
      sub_21A3B231C();
      (*(v120 + 8))(v119, v121);
      v122 = *(v115 + 8);
      v123 = &v190;
      goto LABEL_25;
    case 0xCu:
      v113 = v161;
      sub_21A37A884(v202, v161);
      v115 = v187;
      v114 = v188;
      v128 = (*(v187 + 48))(v113, 1, v188);
      v117 = v201;
      if (v128 == 1)
      {
LABEL_8:
        sub_21A365D1C(v202, &qword_27CD24158, &qword_21A3B3750);
        (*(v200 + 8))(v117, v91);
        return sub_21A365D1C(v113, &qword_27CD24158, &qword_21A3B3750);
      }

      else
      {
        v118 = v159;
        (*(v115 + 32))(v159, v113, v114);
        if (sub_21A3B1D1C())
        {
          v150 = v155;
          v103(v155, v117, v91);
          v151 = v156;
          v152 = v157;
          (*(v156 + 104))(v150, *MEMORY[0x277CFCC70], v157);
          sub_21A360A94(&qword_27CD243E8, MEMORY[0x277CFCC88]);
          sub_21A3B231C();
          (*(v151 + 8))(v150, v152);
          v122 = *(v115 + 8);
          v123 = &v191;
LABEL_25:
          v153 = *(v123 - 32);
        }

        else
        {
LABEL_26:
          v122 = *(v115 + 8);
          v153 = v118;
        }

        v122(v153, v114);
LABEL_28:
        sub_21A365D1C(v202, &qword_27CD24158, &qword_21A3B3750);
        return (*(v200 + 8))(v117, v91);
      }

    default:
      v107 = v172;
      v108 = v171;
      v109 = v173;
      (*(v172 + 32))(v171, v105, v173);
      v110 = v201;
      v103(v194, v201, v91);
      v111 = v191;
      (*(v107 + 16))(v191, v108, v109);
      (*(v107 + 56))(v111, 0, 1, v109);
      (*(v189 + 104))(v111, *MEMORY[0x277CFCCC0], v190);
      v112 = &v198;
LABEL_15:
      v142 = *(v112 - 32);
      sub_21A3B1CCC();
      sub_21A360A94(&qword_27CD243F0, MEMORY[0x277CFCC60]);
      v143 = v193;
      sub_21A3B231C();
      (*(v192 + 8))(v142, v143);
      (*(v107 + 8))(v108, v109);
LABEL_22:
      sub_21A365D1C(v202, &qword_27CD24158, &qword_21A3B3750);
      return (*(v200 + 8))(v110, v91);
  }
}

uint64_t sub_21A37A884(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A37A8F4()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[34];

    v6 = v2[32];
    v7 = v2[33];

    return MEMORY[0x2822009F8](sub_21A37AA08, v6, v7);
  }

  return result;
}

uint64_t sub_21A37AA08()
{
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) != 1)
  {
    v2 = v0[13];
    sub_21A37AFC4(v1, v0[25], type metadata accessor for CookingSupportAppIntentInvocation);
    Strong = swift_weakLoadStrong();
    v4 = v0[25];
    if (Strong)
    {
      v5 = v0[23];
      v7 = v0[14];
      v6 = v0[15];
      (*(v0[19] + 16))(v0[20], v0[25], v0[18]);
      sub_21A37AF60(v4 + *(v5 + 20), v6);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v10 = v0[16];
      v9 = v0[17];
      switch(EnumCaseMultiPayload)
      {
        case 1:
        case 2:
          v31 = v0[15];
          v32 = v0[17];
          v33 = v0[16];
          v34 = sub_21A365B50(&qword_27CD242E0, &qword_21A3B41D0);
          (*(*(v34 - 8) + 32))(v32, v31, v34);
          break;
        case 3:
          v28 = v0[15];
          v30 = *v28;
          v29 = v28[1];
          *v9 = v30;
          v9[1] = v29;
          break;
        case 4:
          v25 = v0[15];
          v27 = *v25;
          v26 = v25[1];
          *v9 = v27;
          v9[1] = v26;
          break;
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          break;
        default:
          v11 = v0[15];
          v12 = v0[17];
          v13 = v0[16];
          v14 = sub_21A3B20BC();
          (*(*(v14 - 8) + 32))(v12, v11, v14);
          break;
      }

      swift_storeEnumTagMultiPayload();
      v35 = v0[25];
      v37 = v0[21];
      v36 = v0[22];
      v38 = v0[17];
      (*(v0[19] + 32))(v36, v0[20], v0[18]);
      sub_21A37AFC4(v38, v36 + *(v37 + 20), type metadata accessor for CookingSupportAppIntentEventAction);
      sub_21A37B02C();
      sub_21A3B230C();

      sub_21A37B084(v36, type metadata accessor for CookingSupportAppIntentEvent);
      sub_21A37B084(v35, type metadata accessor for CookingSupportAppIntentInvocation);
      v39 = v0[30];
      v40 = sub_21A3B255C();
      v0[34] = v40;
      v41 = v0[6];
      sub_21A361030((v0 + 2), v0[5]);
      v42 = *(MEMORY[0x277D856D8] + 4);
      v43 = swift_task_alloc();
      v0[35] = v43;
      *v43 = v0;
      v43[1] = sub_21A37A8F4;
      v44 = v0[26];
      v45 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v44, v40, v45);
    }

    sub_21A37B084(v0[25], type metadata accessor for CookingSupportAppIntentInvocation);
    v15 = v0[26];
  }

  v16 = v0[31];
  v17 = v0[29];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[15];

  sub_21A361318(v0 + 2);

  v23 = v0[1];

  return v23();
}

uint64_t sub_21A37AEBC()
{
  v1 = OBJC_IVAR____TtC14CookingSupport26AppIntentInvocationMonitor___scope;
  v2 = sub_21A3B233C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21A37AF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSupportAppIntentAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A37AFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A37B02C()
{
  result = qword_2811B2C18;
  if (!qword_2811B2C18)
  {
    type metadata accessor for CookingSupportAppIntentEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B2C18);
  }

  return result;
}

uint64_t sub_21A37B084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A37B0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B104, 0, 0);
}

uint64_t sub_21A37B104()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B198, v2, v1);
}

uint64_t sub_21A37B198()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_21A365B50(&qword_27CD24448, qword_21A3B4870);
  v3 = v2[4];
  sub_21A360CEC(v2, v2[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B280, 0, 0);
}

uint64_t sub_21A37B280()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B314, v2, v1);
}

uint64_t sub_21A37B314()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_21A365B50(&qword_27CD24440, &qword_21A3B4858);
  v3 = v2[4];
  sub_21A360CEC(v2, v2[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B3FC, 0, 0);
}

uint64_t sub_21A37B3FC()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B490, v2, v1);
}

uint64_t sub_21A37B490()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_21A365B50(&qword_27CD24438, &qword_21A3B4840);
  v3 = v2[4];
  sub_21A360CEC(v2, v2[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B578, 0, 0);
}

uint64_t sub_21A37B578()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B60C, v2, v1);
}

uint64_t sub_21A37B60C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_21A365B50(&qword_27CD24430, &qword_21A3B4828);
  v3 = v2[4];
  sub_21A360CEC(v2, v2[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B6F4, 0, 0);
}

uint64_t sub_21A37B6F4()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B788, v2, v1);
}

uint64_t sub_21A37B788()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_21A365B50(&qword_27CD24080, &qword_21A3B32E0);
  v3 = v2[4];
  sub_21A360CEC(v2, v2[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B870, 0, 0);
}

uint64_t sub_21A37B870()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B904, v2, v1);
}

uint64_t sub_21A37B904()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_21A365B50(&qword_27CD24420, &qword_21A3B47F8);
  v3 = v2[4];
  sub_21A360CEC(v2, v2[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B9CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B850(a1, v4, v1 + 24);
}

uint64_t sub_21A37BA78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B6D4(a1, v4, v1 + 24);
}

uint64_t sub_21A37BB24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B558(a1, v4, v1 + 24);
}

uint64_t sub_21A37BBD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B3DC(a1, v4, v1 + 24);
}

uint64_t sub_21A37BC7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A3650E8;

  return sub_21A37B260(a1, v4, v1 + 24);
}

uint64_t sub_21A37BD28()
{
  v1 = *(v0 + 16);

  sub_21A361318((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21A37BD68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B0E4(a1, v4, v1 + 24);
}

unint64_t sub_21A37BE18()
{
  result = qword_27CD24450;
  if (!qword_27CD24450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24450);
  }

  return result;
}

unint64_t sub_21A37BE70()
{
  result = qword_27CD24458;
  if (!qword_27CD24458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24458);
  }

  return result;
}

uint64_t sub_21A37BF14()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24B70);
  sub_21A365DC4(v12, qword_27CD24B70);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A37C0FC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[14] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity();
  v2[16] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A37C1C0, 0, 0);
}

uint64_t sub_21A37C1C0()
{
  v19 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  *(v0 + 144) = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD000000000000015, 0x800000021A3B49A0, &v18);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = *(v0 + 104);
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *(v0 + 16) = *v11;
  *(v0 + 32) = v13;
  *(v0 + 48) = v12;
  v14 = *(MEMORY[0x277CB9C38] + 4);
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  v16 = sub_21A37D490();
  *v15 = v0;
  v15[1] = sub_21A37C404;

  return MEMORY[0x28210B518](&type metadata for UnsaveRecipeAppIntent, v16);
}

uint64_t sub_21A37C404()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A37C8E8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[21] = v4;
    *v4 = v3;
    v4[1] = sub_21A37C594;
    v5 = v3[17];
    v6 = v3[13];

    return (sub_21A3996F0)(v5);
  }
}

uint64_t sub_21A37C594()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_21A37C958;
  }

  else
  {
    v3 = sub_21A37C6A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A37C6A8()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v0[14] + 20);
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v8 = *sub_21A360CEC(v0 + 7, v0[10]);
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_21A367634;
  *(v11 + 24) = v9;
  v12 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v13));
  sub_21A36763C(v10 + v12);
  if (v1)
  {

    os_unfair_lock_unlock((v10 + v13));
  }

  else
  {
    v15 = v0[16];
    v14 = v0[17];
    v16 = v0[15];
    v17 = v0[12];
    os_unfair_lock_unlock((v10 + v13));

    sub_21A361318(v0 + 7);
    sub_21A367658(&qword_27CD23EC8);
    sub_21A3B19BC();
    sub_21A36769C(v14, type metadata accessor for RecipeEntity);
    sub_21A36769C(v16, type metadata accessor for CookingSupportAppIntentInvocation);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_21A37C8E8()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21A37C958()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21A37C9C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E38 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24B70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A37CA70()
{
  v0 = sub_21A365B50(&qword_27CD24478, &qword_21A3B49E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD24480, &qword_21A3B49F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24488, qword_21A3B4A20);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A37CC04(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A37C0FC(a1);
}

double sub_21A37CCB0@<D0>(uint64_t a1@<X8>)
{
  sub_21A37CD40(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A37CCF4(uint64_t a1)
{
  v2 = sub_21A37D490();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A37CD40@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_21A3B1C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v56 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v53 = v52 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v52[0] = v52 - v15;
  v16 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v60 = v52 - v19;
  v20 = sub_21A3B20CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21A3B212C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v29 = sub_21A3B24DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B20EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v52[1] = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *MEMORY[0x277CC9110];
  v38 = *(v21 + 104);
  v38(v25, v37, v20);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v38(v25, v37, v20);
  v39 = v60;
  sub_21A3B20FC();
  (*(v33 + 56))(v39, 0, 1, v32);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v52[0], 1, 1, v40);
  v41 = sub_21A3B19AC();
  v42 = *(*(v41 - 8) + 56);
  v42(v53, 1, 1, v41);
  v42(v55, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  *&v61 = v43;
  *(&v61 + 1) = v44;
  *&v62 = v45;
  (*(v57 + 104))(v56, *MEMORY[0x277CBA308], v58);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8);
  v46 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v49 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v51 = v59;
  *v59 = v46;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v49;
  v51[4] = result;
  return result;
}

unint64_t sub_21A37D490()
{
  result = qword_27CD24470;
  if (!qword_27CD24470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24470);
  }

  return result;
}

unint64_t sub_21A37D4E8()
{
  result = qword_27CD24490;
  if (!qword_27CD24490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24490);
  }

  return result;
}

unint64_t sub_21A37D540()
{
  result = qword_27CD24498;
  if (!qword_27CD24498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24498);
  }

  return result;
}

uint64_t sub_21A37D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_21A369020(a3, v25 - v11);
  v13 = sub_21A3B258C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_21A3B1A8C();
  if (v15 == 1)
  {
    sub_21A3612B0(v12);
  }

  else
  {
    sub_21A3B257C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21A3B253C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21A3B24FC() + 32;
      sub_21A3B1A8C();
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_21A3612B0(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A3612B0(a3);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}