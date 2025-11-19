uint64_t sub_22BBE4B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB35760();
  v6 = sub_22BDB9B54();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_22BB3AA28(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22BBE4BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB2F474();
  v8 = sub_22BDB9B54();
  result = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22BB336D0(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20) + 24) = (v4 - 1);
  }

  return result;
}

uint64_t sub_22BBE4C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  v6 = sub_22BDB8F54();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = sub_22BDB43E4();
    v12 = sub_22BB314BC(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_22BDB9774();
      v14 = *(a3 + 24);
    }

    v10 = v4 + v14;
  }

  return sub_22BB3AA28(v10, v3, v9);
}

uint64_t sub_22BBE4D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB2F474();
  v8 = sub_22BDB8F54();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_22BDB43E4();
    v14 = sub_22BB314BC(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_22BDB9774();
      v16 = *(a4 + 24);
    }

    v12 = v5 + v16;
  }

  return sub_22BB336D0(v12, v4, v4, v11);
}

uint64_t sub_22BBE4E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB35760();
  v6 = sub_22BDB5664();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BBE4EE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BDB5664();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BB336D0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BBE5010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_22BBE5030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB35760();
  v6 = sub_22BDB96E4();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_22BB3AA28(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22BBE50D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  v8 = sub_22BDB96E4();
  result = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22BB336D0(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BBE51A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22BDB43E4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
      v10 = *(a3 + 52);
    }

    return sub_22BB3AA28(a1 + v10, a2, v9);
  }
}

uint64_t sub_22BBE527C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_22BDB43E4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
      v10 = *(a4 + 52);
    }

    return sub_22BB336D0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22BBE5350(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22BDB5F24();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return sub_22BB3AA28(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = sub_22BDB7F64();
    v14 = sub_22BB314BC(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v9 = sub_22BDB9C14();
      v16 = a3[8];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_22BBE545C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22BDB5F24();
  result = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return result;
    }

    v13 = sub_22BDB7F64();
    v14 = sub_22BB314BC(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = sub_22BDB9C14();
      v16 = a4[8];
    }

    v12 = a1 + v16;
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBE55C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB30F68();
  v6 = sub_22BDB43E4();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v9 = sub_22BDB5AB4();
    v10 = v3 + *(a3 + 20);
  }

  return sub_22BB3AA28(v10, a2, v9);
}

uint64_t sub_22BBE5658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  v8 = sub_22BDB43E4();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = sub_22BDB5AB4();
    v12 = v4 + *(a4 + 20);
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBE56F8(uint64_t a1, uint64_t a2)
{
  sub_22BB30F68();
  v4 = sub_22BDB43E4();

  return sub_22BB3AA28(v2, a2, v4);
}

uint64_t sub_22BBE579C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6968, &qword_22BDCFDE8);

  return sub_22BB3AA28(a1, a2, v4);
}

uint64_t sub_22BBE57F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6968, &qword_22BDCFDE8);

  return sub_22BB336D0(a1, a2, a2, v4);
}

uint64_t sub_22BBE5848()
{
  v1 = *(v0 + 16);

  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BBE587C()
{
  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BBE58B0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22BBE595C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BBE5994()
{
  sub_22BB3531C(*(v0 + 24), *(v0 + 32));
  sub_22BB3531C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BBE59DC()
{
  v1 = *(v0 + 24);

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BBE5A14()
{
  v1 = *(v0 + 16);

  sub_22BB3531C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BBE5AA0()
{
  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BBE5AD8()
{
  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BBE5B14()
{
  v1 = sub_22BDB43E4();
  sub_22BB30444(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22BBE5BD4()
{
  sub_22BB3531C(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BBE5CA0()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BBE5CD0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BBE5D0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BBE5D50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BBE5D88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22BBE5DC4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BBE5E08()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22BBE5E5C()
{
  v1 = *(v0 + 24);

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BBE5E90()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22BBE5EE8()
{
  v1 = *(v0 + 24);

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BBE5F88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BBE5FC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BBE5FFC()
{
  sub_22BB3531C(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22BBE6104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC587B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t default argument 0 of StandardToolboxConfiguration.makeQueryableToolbox(delegate:planGenerationDelegate:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22BDB80C4();
  v3 = MEMORY[0x277D1D938];
  a1[3] = v2;
  a1[4] = v3;
  sub_22BB8B8A0(a1);
  return _s23IntelligenceFlowRuntime28StandardToolboxConfigurationV011makeMutableE08delegate22planGenerationDelegate0aB14PlannerSupport0hE0Cx_q_tKAG0eL0RzAG0e4PlankL0R_r0_lFfA__0();
}

uint64_t default argument 1 of StandardToolboxConfiguration.makeQueryableToolbox(delegate:planGenerationDelegate:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22BDB77E4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22BB358B4();
  a1[3] = sub_22BDB7814();
  a1[4] = sub_22BBE6218();
  sub_22BB8B8A0(a1);
  return sub_22BDB77F4();
}

unint64_t sub_22BBE6218()
{
  result = qword_281428AD8;
  if (!qword_281428AD8)
  {
    sub_22BDB7814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428AD8);
  }

  return result;
}

uint64_t sub_22BBE6278()
{
  v0 = sub_22BDB77E4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22BB358B4();
  return sub_22BDB77F4();
}

uint64_t sub_22BBE62E8(uint64_t a1, int a2)
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

uint64_t sub_22BBE6308(uint64_t result, int a2, int a3)
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

void sub_22BBE636C(uint64_t a1, unint64_t *a2)
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

void sub_22BBE63C8()
{
  v0 = sub_22BDB77D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB0F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22BB2C000, v5, v6, "IntelligenceFlowDaemonEventHandlers: registerLaunchEvents called: registering for com.apple.notifyd.matching and BiomeLibrary.device.metadata", v7, 2u);
    MEMORY[0x2318A6080](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_22BB6ECB0();
  v8 = sub_22BDBB184();
  v24 = sub_22BBE6760;
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22BBE6E38;
  v23 = &unk_283F73788;
  v9 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v8, v9);
  _Block_release(v9);

  v10 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v11 = [v10 Metadata];
  swift_unknownObjectRelease();
  v12 = sub_22BDBB184();
  v13 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v14 = sub_22BBE6D04(0xD000000000000029, 0x800000022BDD1440, v12, 1);
  v15 = [v11 DSLPublisher];
  v16 = [v15 subscribeOn_];

  v24 = sub_22BBE6980;
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22BBE6B08;
  v23 = &unk_283F737B0;
  v17 = _Block_copy(&aBlock);
  v24 = sub_22BBE6B70;
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22BBE6E38;
  v23 = &unk_283F737D8;
  v18 = _Block_copy(&aBlock);
  v19 = [v16 sinkWithCompletion:v17 receiveInput:v18];
  _Block_release(v18);
  _Block_release(v17);
}

void sub_22BBE6760(void *a1)
{
  v2 = sub_22BDB77D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB9D84();
  if (xpc_dictionary_get_string(a1, v7))
  {
    v8 = sub_22BDBAC84();
    v10 = v9;
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v11 = sub_22BDB77C4();
    v12 = sub_22BDBB0F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22BB32EE0(v8, v10, &v18);
      _os_log_impl(&dword_22BB2C000, v11, v12, "DaemonEventHandlers: Got Darwin notification: %s", v13, 0xCu);
      sub_22BB32FA4(v14);
      MEMORY[0x2318A6080](v14, -1, -1);
      MEMORY[0x2318A6080](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v15 = [objc_opt_self() defaultCenter];
    v16 = sub_22BDBABE4();

    [v15 postNotificationName:v16 object:0];
  }
}

uint64_t sub_22BBE6980(void *a1)
{
  v2 = sub_22BDB77D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v7 = a1;
  v8 = sub_22BDB77C4();
  v9 = sub_22BDBB0F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_22BB2C000, v8, v9, "DaemonEventHandlers: Device upgrade listener completed: %@", v10, 0xCu);
    sub_22BBE6D78(v11);
    MEMORY[0x2318A6080](v11, -1, -1);
    MEMORY[0x2318A6080](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_22BBE6B08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22BBE6B70()
{
  v0 = sub_22BDB77D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB0F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22BB2C000, v5, v6, "DaemonEventHandlers: Got Device upgrade notification.", v7, 2u);
    MEMORY[0x2318A6080](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22BBE6CA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_22BBE6D04(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = sub_22BDBABE4();

  v8 = [v4 initWithIdentifier:v7 targetQueue:a3 waking:a4 & 1];

  return v8;
}

uint64_t sub_22BBE6D78(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&unk_27D8E6A70, &unk_22BDBCDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BBE6DE0(uint64_t *a1, uint64_t *a2)
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

void static IntelligenceFlowDaemon.start()()
{
  v0 = sub_22BBE6DE0(&qword_27D8E2510, &qword_22BDBCA00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_22BDB77D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v12 = sub_22BDB77C4();
  v13 = sub_22BDBB134();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22BB2C000, v12, v13, "Starting intelligenceflowd", v14, 2u);
    MEMORY[0x2318A6080](v14, -1, -1);
  }

  v15 = *(v5 + 8);
  v15(v11, v4);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  sub_22BB336D0(v3, 0, 1, v4);
  sub_22BDB6534();
  sub_22BDB6544();
  sub_22BBE7244();
  sub_22BDB6554();
  type metadata accessor for InternalXPCServiceServer();
  sub_22BBE72EC(&qword_281429EA8, type metadata accessor for InternalXPCServiceServer);
  sub_22BB358DC();
  sub_22BDB6474();
  type metadata accessor for ToolboxXPCServiceServer();
  sub_22BBE72EC(&qword_281429F50, type metadata accessor for ToolboxXPCServiceServer);
  sub_22BB358DC();
  sub_22BDB6474();
  type metadata accessor for QueryDecorationXPCServiceServer();
  sub_22BBE72EC(&qword_281429470, type metadata accessor for QueryDecorationXPCServiceServer);
  sub_22BB358DC();
  sub_22BDB6474();
  sub_22BBE7298();
  sub_22BDB6554();
  type metadata accessor for SnippetStreamingXPCServiceServer();
  sub_22BBE72EC(&qword_281428FE8, type metadata accessor for SnippetStreamingXPCServiceServer);
  sub_22BB358DC();
  sub_22BDB6554();
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v16 = sub_22BDB77C4();
  v17 = sub_22BDBB134();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22BB2C000, v16, v17, "Setting up real time event monitors", v18, 2u);
    MEMORY[0x2318A6080](v18, -1, -1);
  }

  v15(v9, v4);
  sub_22BD30378();
  sub_22BBE63C8();
}

unint64_t sub_22BBE7244()
{
  result = qword_281429F60;
  if (!qword_281429F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281429F60);
  }

  return result;
}

unint64_t sub_22BBE7298()
{
  result = qword_281428C20;
  if (!qword_281428C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428C20);
  }

  return result;
}

uint64_t sub_22BBE72EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowDaemon(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowDaemon(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BBE7438()
{
  sub_22BDBB814();
  MEMORY[0x2318A57F0](0);
  return sub_22BDBB834();
}

uint64_t sub_22BBE7480()
{
  sub_22BDBB814();
  MEMORY[0x2318A57F0](0);
  return sub_22BDBB834();
}

uint64_t static SimilarityFunctions.cosine<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31[1] = a5;
  sub_22BB30418();
  v32 = v10;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v31 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v31 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v31 - v24;
  result = sub_22BBE76A4(v23, v26, v27, (v31 - v24));
  if (!v5)
  {
    sub_22BBE79B8(a1, a3, a4, v19);
    sub_22BBE79B8(a2, a3, a4, v16);
    v29 = *(*(a4 + 16) + 8);
    sub_22BDBB0B4();
    v30 = *(v32 + 8);
    v30(v16, a3);
    v30(v19, a3);
    sub_22BDBAB94();
    v30(v22, a3);
    return (v30)(v25, a3);
  }

  return result;
}

uint64_t sub_22BBE76A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X8>)
{
  v44 = a2;
  v43 = a1;
  sub_22BB30418();
  v36 = v4;
  v37 = v7;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v40 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v39 = &v36 - v15;
  v42 = *(*(v16 + 16) + 8);
  v17 = *(v42 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_22BB33860(AssociatedTypeWitness);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30428();
  swift_getAssociatedConformanceWitness();
  sub_22BDBB714();
  v22 = a4;
  sub_22BDBB6B4();
  v23 = sub_22BDBADF4();
  result = sub_22BDBADF4();
  if (v23 != result)
  {
LABEL_9:
    sub_22BBE7CF8();
    swift_allocError();
    swift_willThrow();
    return (*(v37 + 8))(v22, a3);
  }

  v25 = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v25 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v38 = a4;
  v26 = 0;
  v27 = (v37 + 8);
  v28 = v40;
  while (1)
  {
    sub_22BDBAE34();
    v29 = v41;
    sub_22BDBAE34();
    v30 = a3;
    v31 = v39;
    v32 = v42;
    sub_22BDBB0B4();
    v22 = *v27;
    (*v27)(v29, v30);
    v22(v28, v30);
    v33 = *(v32 + 8);
    sub_22BDBB4E4();
    v34 = v31;
    a3 = v30;
    result = (v22)(v34, v30);
    if (v25 == v26)
    {
      return result;
    }

    if (__OFADD__(v26++, 1))
    {
      __break(1u);
      goto LABEL_9;
    }
  }
}

uint64_t sub_22BBE79B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34[1] = a4;
  v34[2] = a3;
  v6 = *(*(a3 + 16) + 8);
  v7 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_22BB33860(AssociatedTypeWitness);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30418();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v34 - v21;
  v34[0] = v23;
  MEMORY[0x28223BE20](v20);
  v25 = v34 - v24;
  swift_getAssociatedConformanceWitness();
  sub_22BDBB714();
  v35 = v25;
  sub_22BDBB6B4();
  sub_22BB30428();
  v26 = sub_22BDBAD74();
  v37 = v26;
  sub_22BB30428();
  if (v26 == sub_22BDBADF4())
  {
LABEL_2:
    v27 = v35;
    sub_22BDBAB84();
    return (*(v13 + 8))(v27, a2);
  }

  v29 = (v13 + 8);
  while (1)
  {
    sub_22BB30428();
    v30 = sub_22BDBADD4();
    sub_22BDBAD94();
    if ((v30 & 1) == 0)
    {
      break;
    }

    (*(v13 + 16))(v22, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v26, a2);
LABEL_6:
    sub_22BDBAE14();
    sub_22BDBB0B4();
    v31 = *v29;
    (*v29)(v22, a2);
    v32 = *(v6 + 8);
    sub_22BDBB4E4();
    v31(v19, a2);
    sub_22BB30428();
    v33 = sub_22BDBADF4();
    v26 = v37;
    if (v37 == v33)
    {
      goto LABEL_2;
    }
  }

  result = sub_22BDBB364();
  if (v34[0] == 8)
  {
    v36 = result;
    (*(v13 + 16))(v22, &v36, a2);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_22BBE7CF8()
{
  result = qword_27D8E2518;
  if (!qword_27D8E2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2518);
  }

  return result;
}

_BYTE *sub_22BBE7D4C(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BBE7DFC()
{
  result = qword_27D8E2520;
  if (!qword_27D8E2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2520);
  }

  return result;
}

uint64_t sub_22BBE7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for AppEntityCandidateGenerator.Results();
  sub_22BBE9C14(a2, a5 + v9[13], &qword_27D8E2530, &qword_22BDBCBF0);
  result = sub_22BBE9C14(a3, a5 + v9[14], &qword_27D8E2528, &unk_22BDBD190);
  *(a5 + v9[15]) = a4;
  return result;
}

uint64_t sub_22BBE7F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v8 = *(*(sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190) - 8) + 64);
  v6[14] = sub_22BB30ACC();
  v9 = *(*(sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0) - 8) + 64);
  v6[15] = sub_22BB30ACC();
  v10 = sub_22BDBA4B4();
  v6[16] = v10;
  sub_22BB30434(v10);
  v6[17] = v11;
  v13 = *(v12 + 64);
  v6[18] = sub_22BB30ACC();
  v14 = sub_22BDBA594();
  v6[19] = v14;
  sub_22BB30434(v14);
  v6[20] = v15;
  v17 = *(v16 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = a5[3];
  v6[25] = a5[5];
  v18 = type metadata accessor for EntitySearchableItemCandidateGenerator();
  v6[26] = v18;
  sub_22BB30444(v18);
  v6[27] = v19;
  v21 = *(v20 + 64);
  v6[28] = sub_22BB30ACC();
  v22 = sub_22BDB9854();
  v6[29] = v22;
  sub_22BB30434(v22);
  v6[30] = v23;
  v25 = *(v24 + 64);
  v6[31] = sub_22BB30ACC();
  v26 = sub_22BDB9864();
  v6[32] = v26;
  sub_22BB30434(v26);
  v6[33] = v27;
  v29 = *(v28 + 64);
  v6[34] = sub_22BB30ACC();
  v6[35] = a5[2];
  v6[36] = a5[4];
  v30 = type metadata accessor for SearchToolExecutor();
  v6[37] = v30;
  sub_22BB30434(v30);
  v6[38] = v31;
  v33 = *(v32 + 64);
  v6[39] = sub_22BB30ACC();
  v34 = type metadata accessor for SearchToolExecutor.HydratedSearchResults();
  v6[40] = v34;
  v35 = sub_22BDBB254();
  v6[41] = v35;
  sub_22BB30434(v35);
  v6[42] = v36;
  v38 = *(v37 + 64);
  v6[43] = sub_22BB30ACC();
  v39 = *(v34 - 8);
  v6[44] = v39;
  v40 = *(v39 + 64);
  v6[45] = sub_22BB30ACC();
  v41 = sub_22BDBB254();
  v6[46] = v41;
  sub_22BB30434(v41);
  v6[47] = v42;
  v44 = *(v43 + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v45 = sub_22BDB77D4();
  v6[50] = v45;
  sub_22BB30434(v45);
  v6[51] = v46;
  v48 = *(v47 + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBE8360, 0, 0);
}

uint64_t sub_22BBE8360()
{
  v1 = *(v0 + 424);
  sub_22BDB63A4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_22BB2F0A8(&dword_22BB2C000, v5, v6, "Running AppEntityCandidateGenerator");
    MEMORY[0x2318A6080](v4, -1, -1);
  }

  v7 = *(v0 + 424);
  v8 = *(v0 + 400);
  v9 = *(v0 + 408);
  v10 = *(v0 + 392);
  v11 = *(v0 + 368);
  v12 = *(v0 + 376);
  v46 = *(v0 + 208);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);

  *(v0 + 432) = *(v9 + 8);
  v15 = sub_22BB30AE4();
  v16(v15);
  v17 = *(v13 + 60);
  *(v0 + 544) = v17;
  v18 = *(v12 + 16);
  *(v0 + 440) = v18;
  *(v0 + 448) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v10, v14 + v17, v11);
  LODWORD(v13) = sub_22BB3AA28(v10, 1, v46);
  v19 = *(v12 + 8);
  *(v0 + 456) = v19;
  v19(v10, v11);
  sub_22BBE6DE0(&qword_27D8E2538, &qword_22BDBCBF8);
  v20 = sub_22BDBA634();
  v21 = sub_22BB30444(v20);
  v23 = v22;
  v25 = *(v24 + 72);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = *(v0 + 104);
  if (v13 == 1)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22BDBCBD0;
    sub_22BDB81D4();
  }

  else
  {
    v29 = v21;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22BDBCBC0;
    v30 = v28 + v26;
    sub_22BDB81D4();
    v31 = sub_22BDBA604();
    v32 = swift_allocBox();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D72CC0], v31);
    *(v30 + v25) = v32;
    (*(v23 + 104))(v30 + v25, *MEMORY[0x277D72D50], v29);
  }

  v35 = *(v0 + 72);
  v34 = *(v0 + 80);
  (*(*(v0 + 304) + 16))(*(v0 + 312), *(v0 + 104) + *(*(v0 + 96) + 52), *(v0 + 296));
  v36 = sub_22BDB8234();
  sub_22BBFA1E4(v35, v34, v36, v37, v28);

  sub_22BD4477C();
  v39 = v38;
  *(v0 + 464) = v38;

  v40 = swift_task_alloc();
  *(v0 + 472) = v40;
  *v40 = v0;
  v40[1] = sub_22BBE87F8;
  v41 = *(v0 + 344);
  v42 = *(v0 + 312);
  v43 = *(v0 + 296);
  v44 = *(v0 + 88);

  return sub_22BBFAD34(v41, v39, v44, v43);
}

uint64_t sub_22BBE87F8()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = v2[58];
  (*(v2[38] + 8))(v2[39], v2[37]);

  if (v0)
  {
    v6 = sub_22BBE9558;
  }

  else
  {
    v6 = sub_22BBE897C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_22BBE897C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v19 = *(v18 + 344);
  v20 = *(v18 + 320);
  if (sub_22BB3AA28(v19, 1, v20) == 1)
  {
    v21 = *(v18 + 416);
    (*(*(v18 + 336) + 8))(v19, *(v18 + 328));
    sub_22BDB63A4();
    v22 = sub_22BDB77C4();
    v23 = sub_22BDBB104();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      sub_22BB2F0A8(&dword_22BB2C000, v25, v26, "SearchTool returned no candidates");
      MEMORY[0x2318A6080](v24, -1, -1);
    }

    v27 = *(v18 + 432);
    v29 = *(v18 + 408);
    v28 = *(v18 + 416);
    v30 = *(v18 + 400);
    a13 = *(v18 + 280);
    v31 = *(v18 + 192);
    a14 = *(v18 + 200);
    a15 = *(v18 + 288);
    v33 = *(v18 + 112);
    v32 = *(v18 + 120);
    v34 = *(v18 + 64);

    v35 = sub_22BB30AE4();
    v27(v35);
    v36 = type metadata accessor for ResultResponse(0);
    sub_22BB336D0(v32, 1, 1, v36);
    v37 = type metadata accessor for TypedValueUndoContext(0);
    sub_22BB336D0(v33, 1, 1, v37);
    v38 = MEMORY[0x277D84F90];
    v39 = v34;
    v40 = v32;
    v41 = v33;
    v42 = 0;
    goto LABEL_26;
  }

  v44 = *(v18 + 96);
  v43 = *(v18 + 104);
  (*(*(v18 + 352) + 32))(*(v18 + 360), v19, v20);
  sub_22BBE9BB0(v43 + *(v44 + 56), v18 + 16, &qword_27D8E2540, &unk_22BDBCC00);
  v45 = *(v18 + 40);
  if (v45)
  {
    v46 = *(v18 + 360);
    v47 = *(v18 + 264);
    v43 = *(v18 + 272);
    v48 = *(v18 + 248);
    a15 = *(v18 + 256);
    v49 = *(v18 + 232);
    v50 = *(v18 + 240);
    v51 = *(v18 + 104);
    a14 = sub_22BB69FEC((v18 + 16), v45);
    sub_22BDB8234();
    sub_22BDB9834();
    (*(v50 + 104))(v48, *MEMORY[0x277D1E660], v49);
    sub_22BBE9794();
    sub_22BDB9824();
    sub_22BD6EF84();
    (*(v47 + 8))(v43, a15);
    sub_22BB32FA4((v18 + 16));
  }

  else
  {
    sub_22BBE9B48(v18 + 16);
  }

  v53 = *(v18 + 440);
  v52 = *(v18 + 448);
  v54 = *(v18 + 544);
  v55 = *(v18 + 384);
  v56 = *(v18 + 368);
  v57 = *(v18 + 208);
  v58 = *(v18 + 104);
  *(v18 + 56) = MEMORY[0x277D84F90];
  v53(v55, v58 + v54, v56);
  if (sub_22BB3AA28(v55, 1, v57) == 1)
  {
    v59 = *(v18 + 360);
    v60 = *(v18 + 376) + 8;
    (*(v18 + 456))(*(v18 + 384), *(v18 + 368));
    v61 = sub_22BBE9794();
    *(v18 + 56) = v61;
LABEL_25:
    v106 = *(v18 + 352);
    v105 = *(v18 + 360);
    v107 = *(v18 + 320);
    sub_22BB367E4();
    v109 = *(v18 + 112);
    v108 = *(v18 + 120);
    v110 = *(v18 + 64);
    sub_22BBE9BB0(v105 + v107[11], v108, &qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BBE9BB0(v105 + v107[12], v109, &qword_27D8E2528, &unk_22BDBD190);
    v111 = *(v105 + v107[13]);
    v112 = *(v106 + 8);
    v113 = v111;
    v114 = sub_22BB30AE4();
    v112(v114);
    v39 = v110;
    v38 = v61;
    v40 = v108;
    v41 = v109;
    v42 = v111;
LABEL_26:
    sub_22BBE7E58(v38, v40, v41, v42, v39);
    sub_22BB31EB8();

    sub_22BB2F09C();
    sub_22BB35ED4();

    v116(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    return;
  }

  v62 = *(v18 + 360);
  (*(*(v18 + 216) + 32))(*(v18 + 224), *(v18 + 384), *(v18 + 208));
  v63 = sub_22BBE9794();
  *(v18 + 488) = v63;
  v64 = *(v63 + 16);
  *(v18 + 496) = v64;
  if (!v64)
  {
LABEL_24:
    v100 = *(v18 + 216);
    v99 = *(v18 + 224);
    v101 = *(v18 + 208);

    v102 = *(v100 + 8);
    v103 = sub_22BB2F324();
    v104(v103);
    v61 = *(v18 + 56);
    goto LABEL_25;
  }

  v65 = 0;
  *(v18 + 548) = *(*(v18 + 160) + 80);
  *(v18 + 552) = *MEMORY[0x277D72A38];
  while (1)
  {
    sub_22BB389B0(v65);
    if (v66)
    {
      __break(1u);
      return;
    }

    v67 = *(v18 + 552);
    v68 = *(v18 + 548);
    v69 = *(v18 + 152);
    v70 = *(v18 + 160);
    v71 = v70[2];
    sub_22BB3A570();
    v72 = v70[9];
    (v71)(v57, v74 + v72 * v73, v69);
    (v71)(v43, v57, v69);
    v76 = v70[11];
    v75 = (v70 + 11);
    v77 = v76(v43, v69);
    v78 = *(v18 + 176);
    if (v77 == v67)
    {
      break;
    }

    v79 = *(v18 + 184);
    v43 = *(v18 + 168);
    v80 = *(v18 + 152);
    v81 = *(*(v18 + 160) + 8);
    (v81)(*(v18 + 176), v80);
    (v71)(v43, v79, v80);
    v82 = *(v18 + 56);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BB3608C();
      v82 = v86;
    }

    a15 = v72;
    v83 = *(v82 + 16);
    if (v83 >= *(v82 + 24) >> 1)
    {
      v57 = v81;
      v84 = v83 + 1;
      sub_22BD8EBF4();
      v82 = v87;
    }

    else
    {
      v84 = v83 + 1;
      v57 = v81;
    }

    v85 = sub_22BB32640();
    v57(v85);
    *(v82 + 16) = v84;
    (*(v71 + 32))(&v81[v82 + v83 * a15], v43, v80);
    *(v18 + 56) = v82;
    v65 = *(v18 + 504) + 1;
    if (v65 == *(v18 + 496))
    {
      v98 = *(v18 + 488);
      goto LABEL_24;
    }
  }

  v88 = sub_22BB3718C();
  v89(v88);
  v90 = *v78;
  swift_projectBox();
  v91 = sub_22BB38C34();
  v75(v91);

  sub_22BBE6DE0(&qword_27D8E2548, &qword_22BDBD170);
  v92 = sub_22BB375B8();
  *(v18 + 512) = v92;
  v93 = sub_22BB37A9C(v92, xmmword_22BDBCBD0);
  v75(v93);
  v94 = swift_task_alloc();
  *(v18 + 520) = v94;
  *v94 = v18;
  sub_22BB33874(v94);
  sub_22BB35ED4();

  sub_22BBEC08C(v95, v96);
}

uint64_t sub_22BBE9028(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 520);
  v11 = *v2;
  *(*v2 + 528) = v1;

  v6 = v4[64];
  if (v1)
  {
    v7 = v4[61];

    v8 = v4[7];

    v9 = sub_22BBE963C;
  }

  else
  {

    v4[67] = a1;
    v9 = sub_22BBE9170;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_22BBE9170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v20 = *(v18 + 184);
  v21 = *(v18 + 152);
  v22 = *(v18 + 160);
  v24 = *(v18 + 136);
  v23 = *(v18 + 144);
  v25 = *(v18 + 128);
  sub_22BD669CC(*(v18 + 536));
  (*(v24 + 8))(v23, v25);
  v26 = *(v22 + 8);
  v27 = sub_22BB30AE4();
  v28(v27);
  while (1)
  {
    v29 = *(v18 + 504) + 1;
    if (v29 == *(v18 + 496))
    {
      break;
    }

    sub_22BB389B0(v29);
    if (v30)
    {
      __break(1u);
      return;
    }

    v31 = *(v18 + 552);
    v32 = *(v18 + 548);
    v33 = *(v18 + 152);
    v34 = *(v18 + 160);
    v35 = v34 + 16;
    v36 = *(v34 + 16);
    sub_22BB3A570();
    v37 = *(v34 + 72);
    v36(v20, v39 + v37 * v38, v33);
    v36(v21, v20, v33);
    if ((*(v34 + 88))(v21, v33) == v31)
    {
      v75 = *(v18 + 176);
      v76 = sub_22BB3718C();
      v77(v76);
      v78 = *v75;
      swift_projectBox();
      v79 = sub_22BB38C34();
      v31(v79);

      sub_22BBE6DE0(&qword_27D8E2548, &qword_22BDBD170);
      v80 = sub_22BB375B8();
      *(v18 + 512) = v80;
      v81 = sub_22BB37A9C(v80, xmmword_22BDBCBD0);
      v31(v81);
      v82 = swift_task_alloc();
      *(v18 + 520) = v82;
      *v82 = v18;
      sub_22BB33874();
      sub_22BB35ED4();

      sub_22BBEC08C(v83, v84);
      return;
    }

    v40 = *(v18 + 184);
    v41 = *(v18 + 168);
    v21 = *(v18 + 152);
    v42 = *(*(v18 + 160) + 8);
    (v42)(*(v18 + 176), v21);
    v36(v41, v40, v21);
    v43 = *(v18 + 56);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BB3608C();
      v43 = v47;
    }

    v44 = *(v43 + 16);
    a15 = v42;
    v20 = v44 + 1;
    if (v44 >= *(v43 + 24) >> 1)
    {
      sub_22BD8EBF4();
      v43 = v48;
    }

    v45 = sub_22BB32640();
    (v42)(v45);
    *(v43 + 16) = v20;
    v46 = *(v19 + 32);
    v19 += 32;
    v46(&v42[v43 + v44 * v37], v21, v35);
    *(v18 + 56) = v43;
  }

  v49 = *(v18 + 488);
  v51 = *(v18 + 216);
  v50 = *(v18 + 224);
  v52 = *(v18 + 208);

  v53 = *(v51 + 8);
  v54 = sub_22BB2F324();
  v55(v54);
  v57 = *(v18 + 352);
  v56 = *(v18 + 360);
  v58 = *(v18 + 320);
  sub_22BB367E4();
  v60 = *(v18 + 112);
  v59 = *(v18 + 120);
  v62 = *(v18 + 56);
  v61 = *(v18 + 64);
  sub_22BBE9BB0(v56 + v58[11], v59, &qword_27D8E2530, &qword_22BDBCBF0);
  sub_22BBE9BB0(v56 + v58[12], v60, &qword_27D8E2528, &unk_22BDBD190);
  v63 = *(v56 + v58[13]);
  v64 = *(v57 + 8);
  v65 = v63;
  v66 = sub_22BB2F324();
  v64(v66);
  sub_22BBE7E58(v62, v59, v60, v63, v61);
  sub_22BB31EB8();

  sub_22BB2F09C();
  sub_22BB35ED4();

  v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BBE9558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v28 = *(v18 + 480);
  sub_22BB3291C();
  sub_22BB31AA0();

  sub_22BB2F09C();
  sub_22BB35ED4();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

uint64_t sub_22BBE963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v20 = v18[44];
  v19 = v18[45];
  v21 = v18[40];
  v23 = v18[27];
  v22 = v18[28];
  v24 = v18[26];
  v25 = v18[23];
  v26 = v18[19];
  v27 = v18[20];
  (*(v18[17] + 8))(v18[18], v18[16]);
  (*(v27 + 8))(v25, v26);
  (*(v23 + 8))(v22, v24);
  v28 = *(v20 + 8);
  v29 = sub_22BB2F324();
  v30(v29);
  v40 = v18[66];
  sub_22BB3291C();
  sub_22BB31AA0();

  sub_22BB2F09C();
  sub_22BB35ED4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, v40, a16, a17, a18);
}

uint64_t sub_22BBE9794()
{
  v1 = sub_22BDBA594();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22BDBA3A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 16);
  v11(v5, v0, v1);
  if ((*(v2 + 88))(v5, v1) == *MEMORY[0x277D729E0])
  {
    (*(v2 + 96))(v5, v1);
    v12 = *v5;
    v13 = swift_projectBox();
    (*(v7 + 16))(v10, v13, v6);

    v14 = sub_22BDBA394();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v16 = *(v2 + 8);
    v15 = v2 + 8;
    v16(v5, v1);
    sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
    v17 = *(v15 + 64);
    v18 = (*(v15 + 72) + 32) & ~*(v15 + 72);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22BDBCBD0;
    v11((v14 + v18), v0, v1);
  }

  return v14;
}

uint64_t sub_22BBE99FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22BDB8254();
  sub_22BB30ED8(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for AppEntityCandidateGenerator();
  v13 = v12[13];
  v14 = type metadata accessor for SearchToolExecutor();
  sub_22BB30ED8(v14);
  (*(v15 + 32))(a5 + v13, a2);
  v16 = a5 + v12[14];
  v17 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a3 + 32);
  v18 = v12[15];
  type metadata accessor for EntitySearchableItemCandidateGenerator();
  v19 = sub_22BDBB254();
  sub_22BB30ED8(v19);
  return (*(v20 + 32))(a5 + v18, a4);
}

uint64_t sub_22BBE9B48(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2540, &unk_22BDBCC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BBE9BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB30ED8(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_22BBE9C14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB30ED8(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

void sub_22BBE9C78(void *a1)
{
  sub_22BDB8254();
  if (v2 <= 0x3F)
  {
    v3 = a1[2];
    v4 = a1[4];
    type metadata accessor for SearchToolExecutor();
    if (v5 <= 0x3F)
    {
      sub_22BBEB27C();
      if (v6 <= 0x3F)
      {
        v7 = a1[3];
        v8 = a1[5];
        type metadata accessor for EntitySearchableItemCandidateGenerator();
        sub_22BDBB254();
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22BBE9D48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v96 = sub_22BDB8254();
  v108 = *(v96 - 8);
  v114 = *(v108 + 84);
  v91 = sub_22BDB8E14();
  v106 = *(v91 - 8);
  v4 = *(v106 + 84);
  v90 = sub_22BDBA014();
  v105 = *(v90 - 8);
  v5 = *(v105 + 84);
  v94 = v4;
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v105 + 84);
  }

  v85 = *(a3 + 16);
  v104 = *(v85 - 8);
  v88 = *(v104 + 84);
  if (v88 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(v104 + 84);
  }

  v78 = sub_22BDB8274();
  v101 = *(v78 - 8);
  v113 = *(v101 + 84);
  if (v113)
  {
    v8 = v113 - 1;
  }

  else
  {
    v8 = 0;
  }

  v80 = sub_22BDBA234();
  v100 = *(v80 - 8);
  v112 = *(v100 + 84);
  v9 = v112 - 1;
  if (!v112)
  {
    v9 = 0;
  }

  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v83 = v8;
  v84 = v10;
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v82 = v11;
  if (v11 > v7)
  {
    v7 = v11;
  }

  v77 = sub_22BDB89A4();
  v98 = *(v77 - 8);
  v12 = *(v98 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v81 = v13;
  if (v13 > v7)
  {
    v7 = v13;
  }

  v75 = sub_22BDB9774();
  v99 = *(v75 - 8);
  v76 = *(v99 + 84);
  if (v7 <= v76)
  {
    v14 = *(v99 + 84);
  }

  else
  {
    v14 = v7;
  }

  v74 = sub_22BDB9C14();
  v15 = *(v74 - 8);
  v73 = *(v15 + 84);
  if (v14 <= v73)
  {
    v16 = *(v15 + 84);
  }

  else
  {
    v16 = v14;
  }

  v79 = v16;
  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v95 = v17;
  if (v17 <= v114)
  {
    v18 = v114;
  }

  else
  {
    v18 = v17;
  }

  v89 = sub_22BDBA764();
  v19 = *(v89 - 8);
  v20 = *(v19 + 84);
  v92 = v20;
  v93 = v5;
  if (v5 > v20)
  {
    v20 = v5;
  }

  v87 = *(a3 + 24);
  v21 = *(v87 - 8);
  v86 = *(v21 + 84);
  if (v86 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = *(v21 + 84);
  }

  v23 = v22 - 1;
  if (!v22)
  {
    v23 = 0;
  }

  if (v18 > v23)
  {
    v23 = v18;
  }

  v103 = v23;
  v110 = *(v108 + 64);
  v24 = *(v105 + 80);
  v25 = *(v104 + 80);
  v26 = *(v100 + 80);
  v27 = *(v98 + 80);
  v28 = *(v99 + 80);
  v29 = *(v15 + 80);
  v30 = *(v105 + 64);
  v31 = *(v104 + 64);
  if (v113)
  {
    v32 = *(v101 + 64);
  }

  else
  {
    v32 = *(v101 + 64) + 1;
  }

  if (v112)
  {
    v33 = *(v100 + 64);
  }

  else
  {
    v33 = *(v100 + 64) + 1;
  }

  v107 = v12;
  if (v12)
  {
    v34 = *(v98 + 64);
  }

  else
  {
    v34 = *(v98 + 64) + 1;
  }

  v109 = v22;
  v35 = *(v99 + 64);
  v36 = *(v19 + 80);
  v37 = *(v21 + 80);
  result = a2;
  if (v22)
  {
    v39 = *(v21 + 64);
  }

  else
  {
    v39 = *(v21 + 64) + 1;
  }

  if (!a2)
  {
    return result;
  }

  v40 = *(v105 + 80);
  v41 = *(v101 + 80) & 0xF8 | v26 | 7;
  v42 = *(v106 + 80) & 0xF8 | *(v105 + 80) | v25 | v41 | v27 | v28 | v29;
  v43 = v110 + v42;
  v44 = *(v106 + 64) + v24;
  v45 = v33 + v27 + ((v26 + 16 + ((((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26);
  v46 = ((v29 + 8 + ((((v35 + 7 + ((v28 + 40 + ((v34 + 7 + ((v45 + ((v31 + v41 + ((v30 + v25 + (v44 & ~v40)) & ~v25)) & ~v41)) & ~v27)) & 0xFFFFFFFFFFFFFFF8)) & ~v28)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + *(v15 + 64);
  v47 = v36 | v24;
  v48 = *(v21 + 80);
  v49 = (v47 | v37);
  v50 = v49 + 40;
  v51 = *(*(v89 - 8) + 64) + v24;
  v52 = v30 + v37;
  v53 = a1;
  if (a2 > v103)
  {
    v54 = v39 + ((v52 + (v51 & ~v40)) & ~v48) + ((v50 + ((v46 + (v43 & ~v42) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v49);
    v55 = 8 * v54;
    if (v54 > 3)
    {
      goto LABEL_60;
    }

    v57 = ((a2 - v103 + ~(-1 << v55)) >> v55) + 1;
    if (HIWORD(v57))
    {
      v56 = *(a1 + v54);
      if (!v56)
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }

    if (v57 > 0xFF)
    {
      v56 = *(a1 + v54);
      if (!*(a1 + v54))
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }

    if (v57 >= 2)
    {
LABEL_60:
      v56 = *(a1 + v54);
      if (!*(a1 + v54))
      {
        goto LABEL_75;
      }

LABEL_67:
      v58 = (v56 - 1) << v55;
      if (v54 > 3)
      {
        v58 = 0;
      }

      if (v54)
      {
        if (v54 > 3)
        {
          LODWORD(v54) = 4;
        }

        switch(v54)
        {
          case 2:
            LODWORD(v54) = *a1;
            break;
          case 3:
            LODWORD(v54) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v54) = *a1;
            break;
          default:
            LODWORD(v54) = *a1;
            break;
        }
      }

      return v103 + (v54 | v58) + 1;
    }
  }

LABEL_75:
  v59 = v114;
  if (v114 == v103)
  {
    v60 = v96;
    goto LABEL_77;
  }

  v61 = ~v40;
  v53 = (a1 + v43) & ~v42;
  if (v103 == v95)
  {
    v59 = v94;
    if (v94 == v95)
    {
      v60 = v91;
      goto LABEL_77;
    }

    v53 = (v44 + v53) & v61;
    v59 = v93;
    if (v93 == v95)
    {
      v60 = v90;
      goto LABEL_77;
    }

    v53 = (v30 + v25 + v53) & ~v25;
    v59 = v88;
    if (v88 == v95)
    {
      v60 = v85;
      goto LABEL_77;
    }

    v67 = (v31 + v41 + v53) & ~v41;
    if (v84 == v95)
    {
      if (v83 == v82)
      {
        v68 = v113;
        if (v113 >= 2)
        {
          v69 = v78;
          goto LABEL_108;
        }

        return 0;
      }

      v67 = (v26 + 16 + ((((v32 + 7 + v67) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
      v68 = v112;
      v69 = v80;
LABEL_108:
      v70 = sub_22BB3AA28(v67, v68, v69);
      if (v70 >= 2)
      {
        return v70 - 1;
      }

      else
      {
        return 0;
      }
    }

    v67 = (v45 + v67) & ~v27;
    if (v81 == v95)
    {
      v68 = v107;
      if (v107 < 2)
      {
        return 0;
      }

      v69 = v77;
      goto LABEL_108;
    }

    v71 = (v34 + 7 + v67) & 0xFFFFFFFFFFFFFFF8;
    if ((v79 & 0x80000000) != 0)
    {
      v53 = (v28 + 40 + v71) & ~v28;
      v59 = v76;
      if (v76 == v95)
      {
        v60 = v75;
      }

      else
      {
        v53 = (v29 + 8 + ((((v35 + 7 + v53) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v29;
        v59 = v73;
        v60 = v74;
      }

LABEL_77:

      return sub_22BB3AA28(v53, v59, v60);
    }

    v72 = *(v71 + 24);
    if (v72 >= 0xFFFFFFFF)
    {
      LODWORD(v72) = -1;
    }

    return (v72 + 1);
  }

  else
  {
    if (!v109)
    {
      return 0;
    }

    v62 = (v50 + ((v53 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v49;
    v63 = v92;
    if (v92 == v109)
    {
      v64 = v89;
    }

    else
    {
      v62 = (v51 + v62) & v61;
      v63 = v93;
      if (v93 == v109)
      {
        v64 = v90;
      }

      else
      {
        v62 = (v52 + v62) & ~v48;
        v63 = v86;
        v64 = v87;
      }
    }

    v65 = sub_22BB3AA28(v62, v63, v64);
    v66 = v65 != 0;
    result = (v65 - 1);
    if (result == 0 || !v66)
    {
      return 0;
    }
  }

  return result;
}

void sub_22BBEA6A0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v103 = sub_22BDB8254();
  v112 = *(v103 - 8);
  v5 = *(v112 + 84);
  v100 = sub_22BDB8E14();
  v120 = *(v100 - 8);
  v6 = *(v120 + 84);
  v99 = sub_22BDBA014();
  v118 = *(v99 - 8);
  v7 = *(v118 + 84);
  v101 = v6;
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v118 + 84);
  }

  v96 = *(a4 + 16);
  v115 = *(v96 - 8);
  v98 = *(v115 + 84);
  if (v98 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v115 + 84);
  }

  v88 = sub_22BDB8274();
  v106 = *(v88 - 8);
  v125 = *(v106 + 84);
  if (v125)
  {
    v10 = v125 - 1;
  }

  else
  {
    v10 = 0;
  }

  v87 = sub_22BDBA234();
  v105 = *(v87 - 8);
  v124 = *(v105 + 84);
  v11 = v124 - 1;
  if (!v124)
  {
    v11 = 0;
  }

  if (v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v95 = v12;
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v93 = v13;
  if (v13 > v9)
  {
    v9 = v13;
  }

  v90 = sub_22BDB89A4();
  v14 = *(v90 - 8);
  v126 = *(v14 + 84);
  v15 = v126 - 1;
  if (!v126)
  {
    v15 = 0;
  }

  v92 = v15;
  if (v15 > v9)
  {
    v9 = v15;
  }

  v85 = sub_22BDB9774();
  v110 = *(v85 - 8);
  v86 = *(v110 + 84);
  if (v9 <= v86)
  {
    v9 = *(v110 + 84);
  }

  v84 = sub_22BDB9C14();
  v109 = *(v84 - 8);
  v83 = *(v109 + 84);
  if (v9 <= v83)
  {
    v16 = *(v109 + 84);
  }

  else
  {
    v16 = v9;
  }

  v89 = v16;
  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v104 = v5;
  v102 = v17;
  if (v17 <= v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = v17;
  }

  v127 = 0;
  v94 = sub_22BDBA764();
  v19 = *(v94 - 8);
  v20 = *(a4 + 24);
  v108 = v7;
  v97 = *(v19 + 84);
  if (v7 <= v97)
  {
    v21 = *(v19 + 84);
  }

  else
  {
    v21 = v7;
  }

  v91 = v20;
  v22 = *(v20 - 8);
  v23 = *(v14 + 64);
  v114 = *(v112 + 64);
  v24 = *(v118 + 80);
  v25 = *(v115 + 80);
  v26 = *(v105 + 80);
  v27 = *(v106 + 80) & 0xF8 | v26 | 7;
  v28 = *(v14 + 80);
  v29 = *(v110 + 80);
  v30 = *(v109 + 80);
  v31 = *(v120 + 80) & 0xF8 | v24 | v25 | v27 | v28 | v29 | v30;
  v32 = *(v118 + 64);
  v33 = *(v115 + 64);
  v119 = *(v22 + 84);
  if (v119 > v21)
  {
    v21 = *(v22 + 84);
  }

  if (v21)
  {
    v34 = v21 - 1;
  }

  else
  {
    v34 = 0;
  }

  v121 = v34;
  if (v18 <= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v18;
  }

  if (v125)
  {
    v36 = *(v106 + 64);
  }

  else
  {
    v36 = *(v106 + 64) + 1;
  }

  if (v124)
  {
    v37 = *(v105 + 64);
  }

  else
  {
    v37 = *(v105 + 64) + 1;
  }

  v116 = v36 + 7;
  v117 = v26 + 16;
  v113 = v37;
  v38 = ((v26 + 16 + ((((v36 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + v37 + v28;
  v39 = *(v110 + 64);
  if (v126)
  {
    v40 = v23;
  }

  else
  {
    v40 = v23 + 1;
  }

  v41 = *(v120 + 64) + v24;
  v42 = v32 + v25;
  v43 = v33 + v27;
  v111 = v39 + 7;
  v44 = ((v30 + 8 + ((((v39 + 7 + ((v29 + 40 + ((v40 + 7 + ((v38 + ((v33 + v27 + ((v32 + v25 + (v41 & ~v24)) & ~v25)) & ~v27)) & ~v28)) & 0xFFFFFFFFFFFFFFF8)) & ~v29)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v30) + *(v109 + 64);
  v45 = *(v22 + 80);
  v46 = *(v19 + 80) | v24;
  v47 = *(*(v94 - 8) + 64) + v24;
  v48 = *(*(v20 - 8) + 64);
  LOBYTE(v51) = v46 | v45;
  v49 = v32 + v45;
  v50 = ((v49 + (v47 & ~v24)) & ~v45) + v48;
  v51 = v51;
  v52 = (v51 + 40 + ((v44 + ((v114 + v31) & ~v31) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v51;
  if (v21)
  {
    v53 = ((v49 + (v47 & ~v24)) & ~v45) + v48;
  }

  else
  {
    v53 = v50 + 1;
  }

  v54 = v52 + v53;
  v55 = 8 * (v52 + v53);
  if (a3 > v35)
  {
    if (v54 <= 3)
    {
      v57 = ((a3 - v35 + ~(-1 << v55)) >> v55) + 1;
      if (HIWORD(v57))
      {
        v56 = 4;
      }

      else
      {
        if (v57 < 0x100)
        {
          v58 = 1;
        }

        else
        {
          v58 = 2;
        }

        if (v57 >= 2)
        {
          v56 = v58;
        }

        else
        {
          v56 = 0;
        }
      }
    }

    else
    {
      v56 = 1;
    }

    v127 = v56;
  }

  if (v35 < a2)
  {
    v59 = ~v35 + a2;
    if (v54 < 4)
    {
      v60 = (v59 >> v55) + 1;
      if (v54)
      {
        v65 = v59 & ~(-1 << v55);
        bzero(a1, v54);
        if (v54 == 3)
        {
          *a1 = v65;
          a1[2] = BYTE2(v65);
        }

        else
        {
          if (v54 != 2)
          {
            v74 = v127;
            *a1 = v59;
LABEL_103:
            switch(v74)
            {
              case 1:
                a1[v54] = v60;
                break;
              case 2:
                *&a1[v54] = v60;
                break;
              case 3:
                goto LABEL_158;
              case 4:
                *&a1[v54] = v60;
                break;
              default:
                return;
            }

            return;
          }

          *a1 = v65;
        }
      }
    }

    else
    {
      bzero(a1, v54);
      *a1 = v59;
      v60 = 1;
    }

    v74 = v127;
    goto LABEL_103;
  }

  v61 = ~v26;
  v62 = ~v24;
  v63 = ~v27;
  v64 = ~v28;
  switch(v127)
  {
    case 1:
      a1[v54] = 0;
      if (a2)
      {
        goto LABEL_82;
      }

      return;
    case 2:
      *&a1[v54] = 0;
      if (a2)
      {
        goto LABEL_82;
      }

      return;
    case 3:
LABEL_158:
      __break(1u);
      return;
    case 4:
      *&a1[v54] = 0;
      goto LABEL_81;
    default:
LABEL_81:
      if (!a2)
      {
        return;
      }

LABEL_82:
      v66 = v104;
      if (v104 == v35)
      {
        v67 = a1;
        v68 = a2;
        v69 = v103;
LABEL_84:

        sub_22BB336D0(v67, v68, v66, v69);
        return;
      }

      v67 = &a1[v114 + v31] & ~v31;
      if (v35 == v102)
      {
        v66 = v101;
        if (v101 == v102)
        {
          v68 = a2;
          v69 = v100;
          goto LABEL_84;
        }

        v67 = (v41 + v67) & v62;
        v66 = v108;
        if (v108 == v102)
        {
          v68 = a2;
LABEL_111:
          v69 = v99;
          goto LABEL_84;
        }

        v67 = (v42 + v67) & ~v25;
        v66 = v98;
        if (v98 == v102)
        {
          v68 = a2;
          v69 = v96;
          goto LABEL_84;
        }

        v77 = ((v43 + v67) & v63);
        if (v95 != v102)
        {
          v67 = &v77[v38] & v64;
          if (v92 == v102)
          {
            v68 = a2 + 1;
            v66 = v126;
            v69 = v90;
          }

          else
          {
            v82 = (v40 + 7 + v67) & 0xFFFFFFFFFFFFFFF8;
            if ((v89 & 0x80000000) == 0)
            {
              if ((a2 & 0x80000000) != 0)
              {
                *(v82 + 8) = 0u;
                *(v82 + 24) = 0u;
                *v82 = a2 & 0x7FFFFFFF;
              }

              else
              {
                *(v82 + 24) = a2 - 1;
              }

              return;
            }

            v67 = (v29 + 40 + v82) & ~v29;
            v66 = v86;
            if (v86 == v102)
            {
              v68 = a2;
              v69 = v85;
            }

            else
            {
              v67 = (v30 + 8 + ((((v111 + v67) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v30;
              v68 = a2;
              v66 = v83;
              v69 = v84;
            }
          }

          goto LABEL_84;
        }

        if (v93 >= a2)
        {
          if (v10 == v93)
          {
            v68 = a2 + 1;
            v67 = (v43 + v67) & v63;
            v66 = v125;
            v69 = v88;
          }

          else
          {
            v67 = (v117 + (((&v77[v116] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v61;
            v68 = a2 + 1;
            v66 = v124;
            v69 = v87;
          }

          goto LABEL_84;
        }

        v78 = ((v117 + (((v116 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v61) + v113;
        if (v78 <= 3)
        {
          v79 = ~(-1 << (8 * (((v117 + (((v116 & 0xF8) + 23) & 0xF8)) & v61) + v113)));
        }

        else
        {
          v79 = -1;
        }

        if (v78)
        {
          v80 = v79 & (~v93 + a2);
          if (v78 <= 3)
          {
            v81 = ((v117 + (((v116 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v61) + v113;
          }

          else
          {
            v81 = 4;
          }

          bzero(v77, v78);
          switch(v81)
          {
            case 2:
              *v77 = v80;
              break;
            case 3:
              *v77 = v80;
              v77[2] = BYTE2(v80);
              break;
            case 4:
              *v77 = v80;
              break;
            default:
              *v77 = v80;
              break;
          }
        }
      }

      else
      {
        v70 = (v51 + 40 + ((v67 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v51;
        if (v121 >= a2)
        {
          if (a2 < v21)
          {
            v66 = v97;
            if (v97 == v21)
            {
              v68 = a2 + 1;
              v67 = (v51 + 40 + ((v67 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v51;
              v69 = v94;
              goto LABEL_84;
            }

            v67 = (v47 + v70) & v62;
            v66 = v108;
            if (v108 != v21)
            {
              v67 = (v49 + v67) & ~v45;
              v68 = a2 + 1;
              v66 = v119;
              v69 = v91;
              goto LABEL_84;
            }

            v68 = a2 + 1;
            goto LABEL_111;
          }

          if (v50 <= 3)
          {
            v75 = ~(-1 << (8 * v50));
          }

          else
          {
            v75 = -1;
          }

          if (v50)
          {
            v72 = v75 & (a2 - v21);
            if (v50 <= 3)
            {
              v76 = v50;
            }

            else
            {
              v76 = 4;
            }

            bzero(((v51 + 40 + ((v67 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v51), v50);
            switch(v76)
            {
              case 2:
LABEL_141:
                *v70 = v72;
                break;
              case 3:
LABEL_139:
                *v70 = v72;
                *(v70 + 2) = BYTE2(v72);
                break;
              case 4:
LABEL_140:
                *v70 = v72;
                break;
              default:
LABEL_125:
                *v70 = v72;
                break;
            }
          }
        }

        else
        {
          if (v53 <= 3)
          {
            v71 = ~(-1 << (8 * v53));
          }

          else
          {
            v71 = -1;
          }

          if (v53)
          {
            v72 = v71 & (~v121 + a2);
            if (v53 <= 3)
            {
              v73 = v53;
            }

            else
            {
              v73 = 4;
            }

            bzero(((v51 + 40 + ((v67 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v51), v53);
            switch(v73)
            {
              case 2:
                goto LABEL_141;
              case 3:
                goto LABEL_139;
              case 4:
                goto LABEL_140;
              default:
                goto LABEL_125;
            }
          }
        }
      }

      return;
  }
}

void sub_22BBEB27C()
{
  if (!qword_27D8E25D8)
  {
    sub_22BBEB2E0(qword_27D8E25E0, qword_22BDBCC40);
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8E25D8);
    }
  }
}

uint64_t sub_22BBEB2E0(uint64_t *a1, uint64_t *a2)
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

void sub_22BBEB328()
{
  sub_22BBEB4C4(319, &qword_2814287F8, MEMORY[0x277D72A78], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22BBEB4C4(319, qword_28142D9D8, type metadata accessor for ResultResponse, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22BBEB4C4(319, qword_28142A3C0, type metadata accessor for TypedValueUndoContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22BBEB4C4(319, &qword_281428798, sub_22BBEB528, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22BBEB4C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22BBEB528()
{
  result = qword_2814287A0;
  if (!qword_2814287A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814287A0);
  }

  return result;
}

uint64_t sub_22BBEB570()
{
  sub_22BDB8FD4();
  result = sub_22BDB8FC4();
  qword_27D906300 = result;
  return result;
}

uint64_t sub_22BBEB5C8()
{
  v1[2] = v0;
  v2 = sub_22BDB77D4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBEB694, 0, 0);
}

uint64_t sub_22BBEB694()
{
  if (qword_27D8E2270 != -1)
  {
    swift_once();
  }

  v1 = qword_27D906300;
  v0[7] = qword_27D906300;
  if (v1)
  {
    v2 = v0[2];

    v3 = sub_22BDB8234();
    v5 = v4;
    v0[8] = v4;
    v6 = *(MEMORY[0x277D1E208] + 4);
    v21 = (*MEMORY[0x277D1E208] + MEMORY[0x277D1E208]);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_22BBEB8A0;

    return v21(v3, v5);
  }

  else
  {
    v9 = v0[5];
    sub_22BDB63A4();
    v10 = sub_22BDB77C4();
    v11 = sub_22BDBB114();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[3];
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22BB2C000, v10, v11, "Failed to initialize SiriEntityMatcherShim: asset not available. Returning empty search results", v16, 2u);
      MEMORY[0x2318A6080](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    v18 = v0[5];
    v17 = v0[6];

    v19 = v0[1];
    v20 = MEMORY[0x277D84F90];

    return v19(v20);
  }
}

uint64_t sub_22BBEB8A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v8 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = sub_22BBEBBD8;
  }

  else
  {
    v6 = v3[8];

    v5 = sub_22BBEB9BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22BBEB9BC()
{
  v28 = v0;
  v1 = v0[10];
  v2 = v0[6];
  sub_22BDB63A4();

  v3 = sub_22BDB77C4();
  v4 = sub_22BDBB134();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 134218242;
    *(v10 + 4) = *(v6 + 16);

    *(v10 + 12) = 2080;
    v12 = sub_22BDB6194();
    v13 = MEMORY[0x2318A4D50](v6, v12);
    v15 = sub_22BB32EE0(v13, v14, &v27);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_22BB2C000, v3, v4, "Siri Entity Matcher results (%ld): %s", v10, 0x16u);
    sub_22BB32FA4(v11);
    MEMORY[0x2318A6080](v11, -1, -1);
    MEMORY[0x2318A6080](v10, -1, -1);
  }

  else
  {
    v16 = v0[10];
  }

  (*(v9 + 8))(v7, v8);
  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[7];
  v20 = v0[2];
  *(swift_task_alloc() + 16) = v20;
  sub_22BCA7954();
  v22 = v21;

  v24 = v0[5];
  v23 = v0[6];

  v25 = v0[1];

  return v25(v22);
}

uint64_t sub_22BBEBBD8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

uint64_t sub_22BBEBC60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26[2] = a1;
  v28 = a2;
  v27 = sub_22BDBA634();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v27);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v26 - v12;
  v14 = sub_22BDBA594();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6184();
  if (sub_22BB3AA28(v13, 1, v14) == 1)
  {
    sub_22BBEBF44(v13);
    v19 = 1;
LABEL_6:
    v24 = v28;
    return sub_22BB336D0(v24, v19, 1, v14);
  }

  v26[1] = v2;
  v26[0] = *(v15 + 32);
  (v26[0])(v18, v13, v14);
  sub_22BDBA524();
  sub_22BDB81D4();
  v20 = sub_22BDBA614();
  v21 = *(v3 + 8);
  v22 = v7;
  v23 = v27;
  v21(v22, v27);
  v21(v9, v23);
  if ((v20 & 1) == 0)
  {
    (*(v15 + 8))(v18, v14);
    v19 = 1;
    goto LABEL_6;
  }

  v24 = v28;
  (v26[0])(v28, v18, v14);
  v19 = 0;
  return sub_22BB336D0(v24, v19, 1, v14);
}

uint64_t sub_22BBEBF44(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for EntityMatcherCandidateGenerator()
{
  result = qword_27D8E2670;
  if (!qword_27D8E2670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBEC020()
{
  result = sub_22BDB8254();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BBEC08C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22BDB77D4();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBEC168, 0, 0);
}

uint64_t sub_22BBEC168()
{
  v75 = v0;
  v1 = v0[10];
  v2 = v0[3];
  sub_22BDB63A4();

  v3 = sub_22BDB77C4();
  v4 = sub_22BDBB134();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[6];
  v8 = v0[7];
  if (v5)
  {
    v9 = v0[3];
    v10 = sub_22BB31AD8();
    v11 = swift_slowAlloc();
    v74[0] = v11;
    *v10 = 136315138;
    v12 = sub_22BDBA4B4();
    v13 = MEMORY[0x2318A4D50](v9, v12);
    v15 = sub_22BB32EE0(v13, v14, v74);

    *(v10 + 4) = v15;
    sub_22BB30B08(&dword_22BB2C000, v16, v17, "EntitySearchableItemCandidateGenerator: Converting search results to expected entity values: %s");
    sub_22BB32FA4(v11);
    sub_22BB30AF0();
    sub_22BB30458();

    v18 = *(v8 + 8);
    result = v18(v6, v7);
  }

  else
  {

    v18 = *(v8 + 8);
    result = v18(v6, v7);
  }

  v20 = 0;
  v0[11] = v18;
  v21 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  v22 = *(v0[3] + 16);
  v23 = MEMORY[0x277D84F90];
LABEL_5:
  v0[12] = v23;
  while (v22 != v20)
  {
    if (v20 >= v22)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v24 = sub_22BDBA4B4();
    v26 = *(v24 - 8);
    result = v24 - 8;
    v25 = v26;
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_30;
    }

    v28 = v0[3] + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20;
    result = sub_22BBECBF4(v74);
    ++v20;
    if (v74[0])
    {
      MEMORY[0x2318A4D10](result);
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22BDBADA4();
      }

      result = sub_22BDBADE4();
      v23 = v73;
      v20 = v27;
      goto LABEL_5;
    }
  }

  v0[2] = v21;
  result = sub_22BBC20A8(v23);
  v0[13] = result;
  if (!result)
  {

    v31 = v0[8];
    sub_22BDB63A4();

    v32 = sub_22BDB77C4();
    v33 = sub_22BDBB134();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[11];
    v37 = v0[7];
    v36 = v0[8];
    v38 = v0[6];
    if (v34)
    {
      v72 = v0[11];
      v39 = sub_22BB31AD8();
      v40 = swift_slowAlloc();
      v74[0] = v40;
      *v39 = 136315138;
      v41 = sub_22BDBA594();
      v42 = MEMORY[0x2318A4D50](MEMORY[0x277D84F90], v41);
      v44 = sub_22BB32EE0(v42, v43, v74);

      *(v39 + 4) = v44;
      sub_22BB30B08(&dword_22BB2C000, v45, v46, "EntitySearchableItemCandidateGenerator: Found candidates: %s");
      sub_22BB32FA4(v40);
      sub_22BB30AF0();
      sub_22BB30458();

      v72(v36, v38);
    }

    else
    {

      v35(v36, v38);
    }

    v67 = v0[9];
    v66 = v0[10];
    v68 = v0[8];

    v69 = v0[1];
    sub_22BB32660();

    __asm { BRAA            X2, X16 }
  }

  v29 = v0[12];
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x2318A5340](0);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v30 = *(v29 + 32);
  }

  v47 = v30;
  v0[14] = v30;
  v0[15] = 1;
  v48 = v0[9];
  sub_22BDB63A4();
  v49 = v47;
  v50 = sub_22BDB77C4();
  v51 = sub_22BDBB134();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = sub_22BB31AD8();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v49;
    *v53 = v49;
    v54 = v49;
    sub_22BB30F08(&dword_22BB2C000, v55, v56, "EntitySearchableItemCandidateGenerator: Searching for CSSI: %@");
    sub_22BB58728(v53, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB30AF0();
  }

  v57 = sub_22BB31F04();
  v58(v57);
  v59 = v49;
  v60 = swift_task_alloc();
  sub_22BB375E0(v60);
  *v51 = v0;
  sub_22BB358E8();
  sub_22BB32660();

  return sub_22BBF60C8(v61, v62, v63, v64);
}

uint64_t sub_22BBEC6D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v11 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v6 = *(v4 + 112);
    v7 = *(v4 + 96);
    v8 = *(v4 + 16);

    v9 = sub_22BBECB6C;
  }

  else
  {

    *(v4 + 144) = a1;
    v9 = sub_22BBEC81C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_22BBEC81C()
{
  v48 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_22BD669CC(v0[18]);

  if (v1 == v3)
  {
    v4 = v0[12];

    v5 = v0[2];
    v6 = v0[8];
    sub_22BDB63A4();

    v7 = sub_22BDB77C4();
    v8 = sub_22BDBB134();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[11];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    if (v9)
    {
      v46 = v0[11];
      v14 = sub_22BB31AD8();
      v45 = v12;
      v15 = swift_slowAlloc();
      v47 = v15;
      *v14 = 136315138;
      v16 = sub_22BDBA594();
      v17 = MEMORY[0x2318A4D50](v5, v16);
      v19 = sub_22BB32EE0(v17, v18, &v47);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_22BB2C000, v7, v8, "EntitySearchableItemCandidateGenerator: Found candidates: %s", v14, 0xCu);
      sub_22BB32FA4(v15);
      sub_22BB30AF0();
      sub_22BB30AF0();

      v46(v45, v13);
    }

    else
    {

      v10(v12, v13);
    }

    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];

    v26 = v0[1];

    v26(v5);
    return;
  }

  v20 = v0[15];
  v21 = v0[12];
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x2318A5340](v0[15]);
  }

  else
  {
    if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      __break(1u);
      return;
    }

    v22 = *(v21 + 8 * v20 + 32);
  }

  v27 = v22;
  v0[14] = v22;
  v0[15] = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v28 = v0[9];
  sub_22BDB63A4();
  v29 = v27;
  v30 = sub_22BDB77C4();
  v31 = sub_22BDBB134();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_22BB31AD8();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    sub_22BB30F08(&dword_22BB2C000, v35, v36, "EntitySearchableItemCandidateGenerator: Searching for CSSI: %@");
    sub_22BB58728(v33, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB30AF0();
  }

  v37 = sub_22BB31F04();
  v38(v37);
  v39 = v29;
  v40 = swift_task_alloc();
  sub_22BB375E0(v40);
  *v31 = v0;
  v41 = sub_22BB358E8();

  sub_22BBF60C8(v41, v42, v43, v44);
}

uint64_t sub_22BBECB6C()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22BBECBF4@<X0>(uint64_t *a1@<X8>)
{
  v65 = a1;
  v1 = sub_22BDB77D4();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BDBA514();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22BDBA4F4();
  v58 = *(v62 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v54 - v12;
  v14 = sub_22BDBA594();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v64 = &v54 - v19;
  v20 = sub_22BDBA634();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDBA3D4();
  if (qword_27D8E2298 != -1)
  {
    swift_once();
  }

  sub_22BBED810(v20, qword_27D8E36C0);
  v25 = sub_22BDBA614();
  result = (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    goto LABEL_12;
  }

  v27 = sub_22BDBA444();
  sub_22BD80E68(v27, v13);

  if (sub_22BB3AA28(v13, 1, v14) == 1)
  {
    result = sub_22BB58728(v13, &qword_27D8E2668, &unk_22BDBCCD0);
LABEL_12:
    v44 = 0;
    goto LABEL_13;
  }

  v28 = v63;
  v29 = v64;
  (*(v63 + 32))(v64, v13, v14);
  (*(v28 + 16))(v18, v29, v14);
  if ((*(v28 + 88))(v18, v14) != *MEMORY[0x277D72A58])
  {
    v43 = *(v28 + 8);
    v43(v29, v14);
    result = (v43)(v18, v14);
    goto LABEL_12;
  }

  (*(v28 + 96))(v18, v14);
  v30 = *v18;
  v31 = swift_projectBox();
  v33 = v60;
  v32 = v61;
  (*(v60 + 16))(v7, v31, v61);
  if ((*(v33 + 88))(v7, v32) != *MEMORY[0x277D72998])
  {
    (*(v28 + 8))(v29, v14);
    (*(v33 + 8))(v7, v32);

    goto LABEL_12;
  }

  (*(v33 + 96))(v7, v32);
  v35 = v58;
  v34 = v59;
  (*(v58 + 32))(v59, v7, v62);

  sub_22BBED848(0, &qword_27D8E2690, 0x277CCAAC8);
  sub_22BBED848(0, qword_27D8E2698, 0x277CC34B0);
  v36 = sub_22BDBA4E4();
  v37 = [v36 data];

  v38 = sub_22BDB4304();
  v40 = v39;

  v41 = v66;
  v42 = sub_22BDBB144();
  if (v41)
  {
    sub_22BB3531C(v38, v40);
    (*(v35 + 8))(v34, v62);
    return (*(v63 + 8))(v64, v14);
  }

  v44 = v42;
  v45 = v62;
  sub_22BB3531C(v38, v40);
  if (v44)
  {
    (*(v35 + 8))(v59, v45);
    result = (*(v63 + 8))(v64, v14);
  }

  else
  {
    v46 = v55;
    sub_22BDB63A4();
    v47 = sub_22BDB77C4();
    v48 = sub_22BDBB114();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v59;
    v51 = v64;
    if (v49)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_22BB2C000, v47, v48, "EntitySearchableItemCandidateGenerator: Unable to decode CSSearchableItem data in encodedSearchableItem", v52, 2u);
      v53 = v52;
      v51 = v64;
      MEMORY[0x2318A6080](v53, -1, -1);
    }

    (*(v56 + 8))(v46, v57);
    (*(v35 + 8))(v50, v45);
    result = (*(v63 + 8))(v51, v14);
    v44 = 0;
  }

LABEL_13:
  *v65 = v44;
  return result;
}

uint64_t sub_22BBED398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Executor = type metadata accessor for QueryExecutor();
  v5 = sub_22BB2F330(Executor);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_22BBED3FC()
{
  v0 = sub_22BBE6DE0(&qword_27D8E2680, &qword_22BDBCCB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v39 - v2;
  v48 = sub_22BDBA674();
  v4 = sub_22BB30444(v48);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDBA704();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  result = sub_22BDBA5B4();
  v22 = v10;
  v23 = result;
  v24 = 0;
  v25 = result + 56;
  v26 = 1 << *(result + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(result + 56);
  v29 = (v26 + 63) >> 6;
  v51 = v13 + 32;
  v52 = v13 + 16;
  v50 = v13 + 88;
  v49 = *MEMORY[0x277D72FA0];
  v44 = (v13 + 96);
  v45 = (v13 + 8);
  v42 = (v6 + 8);
  v43 = (v6 + 32);
  v40 = v22;
  v41 = v20;
  v46 = result;
  while (v28)
  {
    v30 = v24;
LABEL_9:
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    (*(v13 + 16))(v20, *(v23 + 48) + *(v13 + 72) * (v31 | (v30 << 6)), v22);
    (*(v13 + 32))(v18, v20, v22);
    v32 = (*(v13 + 88))(v18, v22);
    if (v32 == v49)
    {
      (*v44)(v18, v22);
      v33 = sub_22BBE6DE0(&qword_27D8E2688, &qword_22BDBCCB8);
      v34 = v47;
      v35 = v48;
      (*v43)(v47, &v18[*(v33 + 48)], v48);
      v36 = sub_22BDBA6C4();
      sub_22BB2F330(v36);
      (*(v37 + 8))(v18);
      sub_22BDBA654();
      (*v42)(v34, v35);
      v38 = sub_22BDBA894();
      if (sub_22BB3AA28(v3, 1, v38) != 1)
      {

        sub_22BB58728(v3, &qword_27D8E2680, &qword_22BDBCCB0);
        return 1;
      }

      result = sub_22BB58728(v3, &qword_27D8E2680, &qword_22BDBCCB0);
      v24 = v30;
      v22 = v40;
      v20 = v41;
      v23 = v46;
    }

    else
    {
      result = (*v45)(v18, v22);
      v24 = v30;
    }
  }

  while (1)
  {
    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v30 >= v29)
    {

      return 0;
    }

    v28 = *(v25 + 8 * v30);
    ++v24;
    if (v28)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BBED810(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22BBED848(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22BBED890(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for QueryExecutor();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BBED900(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_22BDBA764();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_22BDBA014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 > v12)
  {
    v12 = *(v14 + 84);
  }

  v16 = *(v10 + 80);
  v17 = *(*(v9 - 8) + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v7 + 64) + v16;
  if (a2 <= v12)
  {
LABEL_27:
    if (v8 == v12)
    {
      v28 = a1;
      v11 = v8;
      v13 = v6;
    }

    else
    {
      v28 = (a1 + v20) & ~v16;
      if (v11 == v12)
      {
        v13 = v9;
      }

      else
      {
        v28 = (v28 + v17 + v18) & ~v18;
        v11 = v15;
      }
    }

    return sub_22BB3AA28(v28, v11, v13);
  }

  v21 = ((v17 + (v20 & ~v16) + v18) & ~v18) + v19;
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v12 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 < 2)
    {
LABEL_26:
      if (v12)
      {
        goto LABEL_27;
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_26;
  }

LABEL_16:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = v21;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v12 + (v27 | v25) + 1;
}

void sub_22BBEDBC0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_22BDBA764();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_22BDBA014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(a4 + 16);
  v15 = *(v14 - 8);
  if (v13 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = *(v15 + 84);
  if (v17 > v16)
  {
    v16 = *(v15 + 84);
  }

  v18 = *(v12 + 80);
  v19 = *(v9 + 64) + v18;
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v15 + 80);
  v22 = ((v20 + (v19 & ~v18) + v21) & ~v21) + *(v15 + 64);
  v23 = 8 * v22;
  if (a3 <= v16)
  {
    v24 = 0;
  }

  else if (v22 <= 3)
  {
    v27 = ((a3 - v16 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v16 >= a2)
  {
    switch(v24)
    {
      case 1:
        a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v22] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v10 == v16)
          {
            v30 = a1;
            v31 = a2;
            v13 = v10;
            v14 = v8;
          }

          else
          {
            v30 = &a1[v19] & ~v18;
            if (v13 == v16)
            {
              v31 = a2;
              v14 = v11;
            }

            else
            {
              v30 = (v30 + v20 + v21) & ~v21;
              v31 = a2;
              v13 = v17;
            }
          }

          sub_22BB336D0(v30, v31, v13, v14);
        }

        break;
    }
  }

  else
  {
    v25 = ~v16 + a2;
    if (v22 < 4)
    {
      v26 = (v25 >> v23) + 1;
      if (v22)
      {
        v29 = v25 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else if (v22 == 2)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v25;
      v26 = 1;
    }

    switch(v24)
    {
      case 1:
        a1[v22] = v26;
        break;
      case 2:
        *&a1[v22] = v26;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v22] = v26;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22BBEDF18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  v2[4] = sub_22BB30ACC();
  v6 = sub_22BDBA594();
  v2[5] = v6;
  sub_22BB30434(v6);
  v2[6] = v7;
  v9 = *(v8 + 64);
  v2[7] = sub_22BB31AF0();
  v2[8] = swift_task_alloc();
  v10 = sub_22BBE6DE0(&qword_27D8E2720, &qword_22BDBCD30);
  v2[9] = v10;
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  v2[10] = sub_22BB30ACC();
  v13 = sub_22BDB4854();
  v2[11] = v13;
  sub_22BB30434(v13);
  v2[12] = v14;
  v16 = *(v15 + 64);
  v2[13] = sub_22BB30ACC();
  v17 = sub_22BDB4434();
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  v2[14] = sub_22BB30ACC();
  v20 = sub_22BDB4414();
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  v2[15] = sub_22BB31AF0();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v23 = sub_22BDB4874();
  v2[18] = v23;
  sub_22BB30434(v23);
  v2[19] = v24;
  v26 = *(v25 + 64);
  v2[20] = sub_22BB30ACC();
  v27 = sub_22BBE6DE0(&qword_27D8E2728, &qword_22BDBCD38);
  sub_22BB2F0C8(v27);
  v29 = *(v28 + 64);
  v2[21] = sub_22BB30ACC();
  v30 = sub_22BBE6DE0(&qword_27D8E2730, &qword_22BDBCD40);
  sub_22BB2F0C8(v30);
  v32 = *(v31 + 64);
  v2[22] = sub_22BB30ACC();
  v33 = sub_22BBE6DE0(&qword_27D8E2738, &qword_22BDBCD48);
  sub_22BB2F0C8(v33);
  v35 = *(v34 + 64);
  v2[23] = sub_22BB30ACC();
  v36 = sub_22BBE6DE0(&qword_27D8E2740, &qword_22BDBCD50);
  sub_22BB2F0C8(v36);
  v38 = *(v37 + 64);
  v2[24] = sub_22BB30ACC();
  v39 = sub_22BBE6DE0(&qword_27D8E2748, &qword_22BDBCD58);
  sub_22BB2F0C8(v39);
  v41 = *(v40 + 64);
  v2[25] = sub_22BB30ACC();
  v42 = sub_22BBE6DE0(&qword_27D8E2750, &qword_22BDBCD60);
  sub_22BB2F0C8(v42);
  v44 = *(v43 + 64);
  v2[26] = sub_22BB30ACC();
  v45 = sub_22BBE6DE0(&qword_27D8E2758, &qword_22BDBCD68);
  sub_22BB2F0C8(v45);
  v47 = *(v46 + 64);
  v2[27] = sub_22BB30ACC();
  v48 = sub_22BBE6DE0(&qword_27D8E2760, &qword_22BDBCD70);
  sub_22BB2F0C8(v48);
  v50 = *(v49 + 64);
  v2[28] = sub_22BB30ACC();
  v51 = sub_22BBE6DE0(&qword_27D8E2768, &qword_22BDBCD78);
  sub_22BB2F0C8(v51);
  v53 = *(v52 + 64);
  v2[29] = sub_22BB30ACC();
  v54 = sub_22BBE6DE0(&qword_27D8E2770, &qword_22BDBCD80);
  sub_22BB2F0C8(v54);
  v56 = *(v55 + 64);
  v2[30] = sub_22BB30ACC();
  v57 = sub_22BBE6DE0(&qword_27D8E2778, &qword_22BDBCD88);
  sub_22BB2F0C8(v57);
  v59 = *(v58 + 64);
  v2[31] = sub_22BB30ACC();
  v60 = sub_22BBE6DE0(&qword_27D8E2780, &qword_22BDBCD90);
  sub_22BB2F0C8(v60);
  v62 = *(v61 + 64);
  v2[32] = sub_22BB30ACC();
  v63 = sub_22BBE6DE0(&qword_27D8E2788, &qword_22BDBCD98);
  sub_22BB2F0C8(v63);
  v65 = *(v64 + 64);
  v2[33] = sub_22BB30ACC();
  v66 = sub_22BBE6DE0(&qword_27D8E2790, &qword_22BDBCDA0);
  sub_22BB2F0C8(v66);
  v68 = *(v67 + 64);
  v2[34] = sub_22BB30ACC();
  v69 = sub_22BDB4944();
  v2[35] = v69;
  sub_22BB30434(v69);
  v2[36] = v70;
  v72 = *(v71 + 64);
  v2[37] = sub_22BB31AF0();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v73 = sub_22BDB4834();
  v2[40] = v73;
  sub_22BB30434(v73);
  v2[41] = v74;
  v76 = *(v75 + 64);
  v2[42] = sub_22BB30ACC();
  v77 = sub_22BDB77D4();
  v2[43] = v77;
  sub_22BB30434(v77);
  v2[44] = v78;
  v80 = *(v79 + 64);
  v2[45] = sub_22BB31AF0();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBEE49C, 0, 0);
}

uint64_t sub_22BBEE49C()
{
  v191 = v0;
  v1 = v0[47];
  sub_22BDB63A4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22BB2C000, v2, v3, "Running LocationCandidateGenerator", v4, 2u);
    sub_22BB30AF0();
  }

  v5 = v0[47];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v168 = v0[39];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[31];
  v12 = v0[32];
  v185 = v0[29];
  v188 = v0[30];
  v181 = v0[28];
  v144 = v0[27];
  v146 = v0[26];
  v148 = v0[25];
  v151 = v0[24];
  v154 = v0[23];
  v162 = v0[21];
  v164 = v0[17];
  v166 = v0[16];
  v170 = v0[15];
  v172 = v0[14];
  v157 = v0[22];
  v159 = v0[3];
  v175 = v0[2];

  v178 = *(v6 + 8);
  v178(v5, v7);
  sub_22BDB4824();
  v13 = sub_22BDB48D4();
  sub_22BB3591C(v9, v14, v15, v13);
  v16 = sub_22BDB48E4();
  sub_22BB3591C(v10, v17, v18, v16);
  v19 = sub_22BDB48F4();
  sub_22BB3591C(v12, v20, v21, v19);
  v22 = sub_22BDB48B4();
  sub_22BB3591C(v11, v23, v24, v22);
  v25 = sub_22BDB4884();
  sub_22BB3591C(v188, v26, v27, v25);
  v28 = sub_22BDB4904();
  sub_22BB3591C(v185, v29, v30, v28);
  v31 = sub_22BDB48A4();
  sub_22BB3591C(v181, v32, v33, v31);
  v34 = sub_22BDB4954();
  sub_22BB3591C(v144, v35, v36, v34);
  v37 = sub_22BDB4914();
  sub_22BB3591C(v146, v38, v39, v37);
  v40 = sub_22BDB47F4();
  sub_22BB3591C(v148, v41, v42, v40);
  v43 = sub_22BDB47E4();
  sub_22BB3591C(v151, v44, v45, v43);
  v46 = sub_22BDB4804();
  sub_22BB3591C(v154, v47, v48, v46);
  v49 = sub_22BDB47D4();
  sub_22BB336D0(v157, 1, 1, v49);
  v50 = sub_22BDB8234();
  v52 = v51;
  v53 = sub_22BDB48C4();
  sub_22BB336D0(v162, 1, 1, v53);
  sub_22BDB4934();
  sub_22BDB4404();
  sub_22BDB4404();
  sub_22BDB4404();
  sub_22BDB4424();
  if (v175)
  {
    v54 = v0[2];
    v55 = [v54 location];
    if (v55)
    {
      v56 = v55;
      [v55 coordinate];
    }

    v57 = [v54 location];
    if (v57)
    {
      v58 = v57;
      [v57 coordinate];
    }
  }

  v59 = v0[46];
  v61 = v0[38];
  v60 = v0[39];
  v63 = v0[35];
  v62 = v0[36];
  v64 = v0[20];
  v66 = v0[16];
  v65 = v0[17];
  v68 = v0[14];
  v67 = v0[15];
  v69 = v0[13];
  sub_22BDB4864();
  sub_22BDB4844();
  sub_22BDB63A4();
  v70 = *(v62 + 16);
  v70(v61, v60, v63);
  v71 = sub_22BDB77C4();
  v72 = sub_22BDBB104();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v0[46];
  v75 = v0[43];
  v76 = v0[44];
  v77 = v0[38];
  if (v73)
  {
    v173 = v72;
    v186 = v0[46];
    v79 = v0[36];
    v78 = v0[37];
    v80 = v0[35];
    v182 = v0[43];
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v190 = v82;
    *v81 = 136315138;
    v70(v78, v77, v80);
    v83 = sub_22BDBAC14();
    v85 = v84;
    v189 = *(v79 + 8);
    v189(v77, v80);
    v86 = sub_22BB32EE0(v83, v85, &v190);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_22BB2C000, v71, v173, "Running location search with input: %s", v81, 0xCu);
    sub_22BB32FA4(v82);
    sub_22BB30AF0();
    sub_22BB30AF0();

    v88 = v182;
    v87 = v186;
  }

  else
  {
    v90 = v0[35];
    v89 = v0[36];

    v189 = *(v89 + 8);
    v189(v77, v90);
    v87 = v74;
    v88 = v75;
  }

  v178(v87, v88);
  v91 = v0[42];
  v92 = v0[39];
  v93 = v0[20];
  v94 = v0[13];
  v95 = sub_22BDB4814();
  v96 = v0[45];
  sub_22BDB63A4();

  v97 = sub_22BDB77C4();
  v98 = sub_22BDBB104();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    *(v99 + 4) = *(v95 + 16);

    _os_log_impl(&dword_22BB2C000, v97, v98, "Got %ld location search results", v99, 0xCu);
    sub_22BB30AF0();
  }

  else
  {
  }

  v100 = v0[9];
  v101 = v0[6];
  v102 = v0[44] + 8;
  result = (v178)(v0[45], v0[43]);
  v104 = 0;
  v179 = v101;
  v183 = (v101 + 32);
  v187 = MEMORY[0x277D84F90];
  v105 = *(v95 + 16);
  while (v105 != v104)
  {
    if (v104 >= *(v95 + 16))
    {
      __break(1u);
      return result;
    }

    v106 = v0[10];
    v108 = v0[4];
    v107 = v0[5];
    v109 = sub_22BBE6DE0(&qword_27D8E2798, &qword_22BDBCDA8);
    v110 = *(v109 - 8);
    v111 = *(v110 + 16);
    v112 = v95 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v104;
    v113 = *(v100 + 48);
    *v106 = v104;
    v111(v106 + v113, v112, v109);
    sub_22BBEF114(v104, v106 + v113, v108);
    sub_22BB58780(v106, &qword_27D8E2720, &qword_22BDBCD30);
    if (sub_22BB3AA28(v108, 1, v107) == 1)
    {
      result = sub_22BB58780(v0[4], &qword_27D8E2668, &unk_22BDBCCD0);
      ++v104;
    }

    else
    {
      v114 = v0[8];
      v176 = v0[7];
      v115 = v0[5];
      v116 = *v183;
      (*v183)(v114, v0[4], v115);
      v116(v176, v114, v115);
      v117 = v116;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = *(v187 + 16);
        sub_22BD8EBF4();
        v187 = v122;
      }

      v118 = *(v187 + 16);
      if (v118 >= *(v187 + 24) >> 1)
      {
        sub_22BD8EBF4();
        v187 = v123;
      }

      ++v104;
      v119 = v0[7];
      v120 = v0[5];
      *(v187 + 16) = v118 + 1;
      result = v117(v187 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v118, v119, v120);
    }
  }

  v137 = v0[47];
  v138 = v0[46];
  v125 = v0[41];
  v124 = v0[42];
  v135 = v0[39];
  v136 = v0[40];
  v139 = v0[45];
  v140 = v0[38];
  v133 = v0[36];
  v134 = v0[35];
  v141 = v0[37];
  v142 = v0[34];
  v143 = v0[33];
  v145 = v0[32];
  v147 = v0[31];
  v149 = v0[30];
  v150 = v0[29];
  v152 = v0[28];
  v153 = v0[27];
  v155 = v0[26];
  v156 = v0[25];
  v158 = v0[24];
  v160 = v0[23];
  v161 = v0[22];
  v126 = v0[19];
  v127 = v0[20];
  v128 = v0[18];
  v163 = v0[21];
  v165 = v0[17];
  v167 = v0[16];
  v169 = v0[15];
  v129 = v0[13];
  v131 = v0[11];
  v130 = v0[12];
  v171 = v0[14];
  v174 = v0[10];
  v177 = v0[8];
  v180 = v0[7];
  v184 = v0[4];

  (*(v130 + 8))(v129, v131);
  (*(v126 + 8))(v127, v128);
  v189(v135, v134);
  (*(v125 + 8))(v124, v136);

  v132 = v0[1];

  return v132(v187);
}

uint64_t sub_22BBEF114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a1;
  v51 = a3;
  v4 = sub_22BBE6DE0(&qword_27D8E2798, &qword_22BDBCDA8);
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - v6;
  v8 = sub_22BDB77D4();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v15 = sub_22BDB4944();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB4894();
  v20 = sub_22BDB4924();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    sub_22BDB63A4();
    v21 = v20;
    v22 = sub_22BDB77C4();
    v23 = sub_22BDBB104();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 134218242;
      *(v24 + 4) = v48;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      *v25 = v20;
      v26 = v21;
      _os_log_impl(&dword_22BB2C000, v22, v23, "converted results[%ld] to placemark: %@", v24, 0x16u);
      sub_22BB58780(v25, &unk_27D8E6A70, &unk_22BDBCDB0);
      MEMORY[0x2318A6080](v25, -1, -1);
      MEMORY[0x2318A6080](v24, -1, -1);
    }

    (*(v49 + 8))(v14, v50);
    v27 = sub_22BDBA514();
    v28 = swift_allocBox();
    v30 = v29;
    sub_22BDBA504();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D729D0], v27);
    v31 = v51;
    *v51 = v28;
    v32 = *MEMORY[0x277D72A58];
    v33 = sub_22BDBA594();
    (*(*(v33 - 8) + 104))(v31, v32, v33);
    v34 = v31;
    v35 = 0;
    v36 = v33;
  }

  else
  {
    sub_22BDB63A4();
    v37 = v47;
    (*(v47 + 16))(v7, a2, v4);
    v38 = sub_22BDB77C4();
    v39 = sub_22BDBB104();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v52 = v41;
      *v40 = 134218242;
      *(v40 + 4) = v48;
      *(v40 + 12) = 2080;
      sub_22BBEF670();
      v42 = sub_22BDBB684();
      v44 = v43;
      (*(v37 + 8))(v7, v4);
      v45 = sub_22BB32EE0(v42, v44, &v52);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_22BB2C000, v38, v39, "Skipping location result [%ld] - not convertible to CLPlacemark %s", v40, 0x16u);
      sub_22BB32FA4(v41);
      MEMORY[0x2318A6080](v41, -1, -1);
      MEMORY[0x2318A6080](v40, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v7, v4);
    }

    (*(v49 + 8))(v12, v50);
    v36 = sub_22BDBA594();
    v34 = v51;
    v35 = 1;
  }

  return sub_22BB336D0(v34, v35, 1, v36);
}

unint64_t sub_22BBEF670()
{
  result = qword_27D8E27A0;
  if (!qword_27D8E27A0)
  {
    sub_22BBEB2E0(&qword_27D8E2798, &qword_22BDBCDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E27A0);
  }

  return result;
}

uint64_t type metadata accessor for LocationCandidateGenerator()
{
  result = qword_27D8E27A8;
  if (!qword_27D8E27A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBEF748()
{
  v0 = sub_22BDBA634();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22BDBA604();
  v6 = swift_allocBox();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D72CC0], v5);
  *v4 = v6;
  (*(v1 + 104))(v4, *MEMORY[0x277D72D50], v0);
  v8 = sub_22BBFB614();
  (*(v1 + 8))(v4, v0);
  if (v8)
  {
    return v8;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_22BBEF89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v6 = sub_22BBE6DE0(&qword_27D8E27B8, &unk_22BDBD9D0);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  v4[17] = sub_22BB30ACC();
  v9 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  v4[18] = sub_22BB30ACC();
  v12 = sub_22BBE6DE0(&qword_27D8E27C8, &qword_22BDBCDF8);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  v4[19] = sub_22BB30ACC();
  v15 = sub_22BBE6DE0(&qword_27D8E27D0, &unk_22BDBCE00);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  v4[20] = sub_22BB30ACC();
  v4[21] = *(a3 + 16);
  v4[22] = *(a3 + 24);
  v18 = type metadata accessor for SearchToolExecutor.HydratedSearchResults();
  v4[23] = v18;
  v19 = sub_22BDBB254();
  v4[24] = v19;
  sub_22BB30434(v19);
  v4[25] = v20;
  v22 = *(v21 + 64);
  v4[26] = sub_22BB30ACC();
  v23 = *(v18 - 8);
  v4[27] = v23;
  v24 = *(v23 + 64);
  v4[28] = sub_22BB30ACC();
  v25 = sub_22BDBA634();
  v4[29] = v25;
  sub_22BB30434(v25);
  v4[30] = v26;
  v28 = *(v27 + 64);
  v4[31] = sub_22BB30ACC();
  v29 = sub_22BDBA3A4();
  v4[32] = v29;
  sub_22BB30434(v29);
  v4[33] = v30;
  v32 = *(v31 + 64);
  v4[34] = sub_22BB30ACC();
  v33 = sub_22BDBA594();
  v4[35] = v33;
  sub_22BB30434(v33);
  v4[36] = v34;
  v36 = *(v35 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v37 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  sub_22BB2F0C8(v37);
  v39 = *(v38 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v40 = sub_22BDB77D4();
  v4[42] = v40;
  sub_22BB30434(v40);
  v4[43] = v41;
  v43 = *(v42 + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBEFC20, 0, 0);
}

uint64_t sub_22BBEFC20()
{
  v117 = v0;
  v1 = *(v0 + 368);
  sub_22BDB63A4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22BB2C000, v2, v3, "Running SearchToolCandidateGenerator", v4, 2u);
    MEMORY[0x2318A6080](v4, -1, -1);
  }

  v5 = *(v0 + 368);
  v6 = *(v0 + 336);
  v7 = *(v0 + 344);
  v110 = *(v0 + 328);
  v106 = *(v0 + 320);
  v8 = *(v0 + 288);
  v9 = *(v0 + 264);
  v10 = *(v0 + 128);

  v11 = *(v7 + 8);
  *(v0 + 376) = v11;
  v11(v5, v6);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v12 = sub_22BDBAB14();
  result = MEMORY[0x2318A21C0]();
  v14 = 0;
  v15 = result + 64;
  v107 = result;
  v16 = -1;
  v17 = -1 << *(result + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(result + 64);
  v19 = (63 - v17) >> 6;
  v112 = (v8 + 32);
  v113 = (v8 + 16);
  v111 = *MEMORY[0x277D729E0];
  *(v0 + 408) = *MEMORY[0x277D729E0];
  v102 = (v9 + 16);
  v104 = v0;
  v105 = v8;
  v101 = (v8 + 104);
  v108 = v19;
  for (i = result + 64; ; v15 = i)
  {
    *(v0 + 384) = v12;
    if (!v18)
    {
      while (1)
      {
        v20 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v20 >= v19)
        {
          v83 = *(v0 + 320);
          v84 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
          sub_22BB31B08(v83, v85, v86, v84);
          v18 = 0;
          goto LABEL_13;
        }

        v18 = *(v15 + 8 * v20);
        ++v14;
        if (v18)
        {
          v114 = v12;
          v14 = v20;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v114 = v12;
    v20 = v14;
LABEL_12:
    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v23 = *(v0 + 280);
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v24 | (v20 << 6);
    v26 = (*(v107 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    (*(v105 + 16))(v22, *(v107 + 56) + *(v105 + 72) * v25, v23);
    v29 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
    v30 = *(v29 + 48);
    *v21 = v27;
    v0 = v104;
    *(v106 + 8) = v28;
    (*(v105 + 32))(&v21[v30], v22, v23);
    sub_22BB336D0(v21, 0, 1, v29);

    v12 = v114;
LABEL_13:
    v31 = *(v0 + 328);
    sub_22BBF1708(*(v0 + 320), v31);
    v32 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
    if (sub_22BB3AA28(v31, 1, v32) == 1)
    {
      break;
    }

    v33 = *(v0 + 328);
    v34 = *v33;
    v35 = *(v110 + 8);
    (*v112)(*(v0 + 304), &v33[*(v32 + 48)], *(v0 + 280));
    v115 = v34;
    v36 = v34 == 0x6E65644965707974 && v35 == 0xEF73726569666974;
    if (v36 || (sub_22BDBB6D4() & 1) != 0)
    {
      v38 = *(v0 + 296);
      v37 = *(v0 + 304);
      v39 = *(v0 + 280);
      v40 = sub_22BB31F1C();
      v41(v40);
      v42 = sub_22BB31F1C();
      v44 = v43(v42, v39);
      v45 = *(v0 + 296);
      v46 = *(v0 + 280);
      if (v44 == v111)
      {
        v47 = *(v0 + 272);
        v48 = *(v0 + 256);
        v50 = *(v0 + 120);
        v49 = *(v0 + 128);
        v51 = sub_22BB31F1C();
        v52(v51);
        v53 = *v45;
        v54 = swift_projectBox();
        (*v102)(v47, v54, v48);

        v116[0] = sub_22BDBA394();
        sub_22BBF0FAC(v116, v50);
        v55 = *(v0 + 272);
        v56 = *(v0 + 280);
        v58 = *(v0 + 248);
        v57 = *(v0 + 256);
        v103 = swift_allocBox();
        sub_22BDBA384();
        sub_22BDBA374();
        *(v0 + 40) = v56;
        *(v0 + 48) = MEMORY[0x277D72A68];
        *sub_22BB8B8A0((v0 + 16)) = v103;
        (*v101)();
        v59 = sub_22BB31F1C();
        v60(v59, v57);
        goto LABEL_23;
      }

      v61 = sub_22BB338A4();
      v62(v61);
    }

    v63 = *(v0 + 304);
    v64 = *(v0 + 280);
    *(v0 + 40) = v64;
    *(v0 + 48) = MEMORY[0x277D72A68];
    v65 = sub_22BB8B8A0((v0 + 16));
    (*v113)(v65, v63, v64);
LABEL_23:
    sub_22BB69088(v0 + 16, v0 + 56);
    swift_isUniquelyReferenced_nonNull_native();
    v116[0] = v12;
    v66 = v35;
    result = sub_22BD8446C();
    if (__OFADD__(v12[2], (v67 & 1) == 0))
    {
      goto LABEL_40;
    }

    v68 = result;
    v69 = v67;
    sub_22BBE6DE0(&qword_27D8E27F0, &qword_22BDBCE18);
    if (sub_22BDBB4A4())
    {
      v70 = sub_22BD8446C();
      if ((v69 & 1) != (v71 & 1))
      {
        sub_22BB341A0();

        return sub_22BDBB744();
      }

      v68 = v70;
    }

    v72 = *(v0 + 304);
    v73 = *(v0 + 280);
    if (v69)
    {

      v12 = v116[0];
      v74 = (*(v116[0] + 56) + 40 * v68);
      sub_22BB32FA4(v74);
      sub_22BB382E8((v0 + 56), v74);
      v75 = sub_22BB338A4();
      v76(v75, v73);
    }

    else
    {
      v12 = v116[0];
      *(v116[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
      v77 = (v12[6] + 16 * v68);
      *v77 = v115;
      v77[1] = v66;
      sub_22BB382E8((v0 + 56), v12[7] + 40 * v68);
      v78 = sub_22BB338A4();
      result = v79(v78, v73);
      v80 = v12[2];
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      if (v81)
      {
        goto LABEL_41;
      }

      v12[2] = v82;
    }

    result = sub_22BB32FA4((v0 + 16));
    v19 = v108;
  }

  v87 = *(v0 + 168);
  v88 = *(v0 + 176);
  v89 = *(v0 + 120);
  v90 = *(v0 + 128);

  v91 = *(v89 + 36);
  v92 = swift_task_alloc();
  *(v0 + 392) = v92;
  type metadata accessor for SearchToolExecutor();
  *v92 = v0;
  v92[1] = sub_22BBF087C;
  v93 = *(v0 + 208);
  v94 = *(v0 + 112);
  sub_22BB341A0();

  return sub_22BBFAD34(v95, v96, v97, v98);
}

uint64_t sub_22BBF087C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_22BBF0E7C;
  }

  else
  {
    v5 = *(v2 + 384);

    v4 = sub_22BBF0998;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22BBF0998()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  if (sub_22BB3AA28(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 360);
    (*(*(v0 + 200) + 8))(v1, *(v0 + 192));
    sub_22BDB63A4();
    v4 = sub_22BDB77C4();
    v5 = sub_22BDBB104();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22BB2C000, v4, v5, "Unable to execute SearchTool or hydrate entities", v6, 2u);
      MEMORY[0x2318A6080](v6, -1, -1);
    }

    v73 = *(v0 + 408);
    v7 = *(v0 + 376);
    v8 = *(v0 + 360);
    v10 = *(v0 + 336);
    v9 = *(v0 + 344);
    v11 = *(v0 + 288);
    v70 = *(v0 + 312);
    v71 = *(v0 + 280);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v14 = *(v0 + 240);
    v69 = *(v0 + 232);
    v72 = *(v0 + 160);
    v75 = *(v0 + 152);
    v77 = *(v0 + 144);
    v80 = *(v0 + 136);
    v82 = *(v0 + 104);

    v7(v8, v10);
    v15 = swift_allocBox();
    v16 = sub_22BDBA604();
    v17 = swift_allocBox();
    v18 = *MEMORY[0x277D72CC8];
    sub_22BB30474(v16);
    (*(v19 + 104))();
    *v12 = v17;
    (*(v14 + 104))(v12, *MEMORY[0x277D72D50], v69);
    sub_22BDBA374();
    *v70 = v15;
    (*(v11 + 104))(v70, v73, v71);
    v20 = sub_22BDB4D94();
    sub_22BB3591C(v72, v21, v22, v20);
    v23 = sub_22BDB4D54();
    sub_22BB3591C(v75, v24, v25, v23);
    v26 = sub_22BDB4C34();
    sub_22BB3591C(v77, v27, v28, v26);
    v29 = sub_22BDB4BB4();
    sub_22BB31B08(v80, v30, v31, v29);
    sub_22BDB4DB4();
    sub_22BDB4DC4();
    sub_22BDB4DA4();
    Output = type metadata accessor for QueryOutput();
    v33 = Output[5];
    v34 = type metadata accessor for ResultResponse(0);
    v35 = v82 + v33;
    v36 = v82;
    sub_22BB31B08(v35, v37, v38, v34);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = *(v0 + 312);
    v42 = *(v0 + 280);
    v43 = *(v0 + 288);
    v44 = *(v0 + 224);
    v83 = *(v0 + 216);
    v46 = *(v0 + 152);
    v45 = *(v0 + 160);
    v47 = *(v0 + 144);
    v74 = v47;
    v78 = *(v0 + 136);
    v36 = *(v0 + 104);
    (*(v83 + 32))(v44, v1, v2);
    (*(v43 + 16))(v41, v44, v42);
    v48 = sub_22BDB4D94();
    sub_22BB3591C(v45, v49, v50, v48);
    v51 = sub_22BDB4D54();
    sub_22BB31B08(v46, v52, v53, v51);
    v54 = v2[10];
    v55 = *(v44 + v2[9]);
    v57 = *(v44 + v54);
    v56 = *(v44 + v54 + 8);
    v58 = sub_22BDB4C34();
    sub_22BB3591C(v74, v59, v60, v58);
    v61 = sub_22BDB4BB4();
    sub_22BB31B08(v78, v62, v63, v61);

    sub_22BDB4DA4();
    v64 = v2[11];
    Output = type metadata accessor for QueryOutput();
    sub_22BBF17C4(v44 + v64, v36 + Output[5]);
    v39 = *(v44 + v2[13]);
    v65 = *(v83 + 8);
    v66 = v39;
    v65(v44, v2);
    v40 = 1;
  }

  *(v36 + Output[6]) = v39;
  *(v36 + Output[7]) = v40;
  sub_22BB32934();
  v76 = *(v0 + 160);
  v79 = *(v0 + 152);
  v81 = *(v0 + 144);
  v84 = *(v0 + 136);

  sub_22BB2F09C();

  return v67();
}

uint64_t sub_22BBF0E7C()
{
  v1 = v0[48];

  v13 = v0[50];
  sub_22BB30F28();
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
  v7 = v0[28];
  v8 = v0[26];
  v9 = v0[20];
  v10 = v0[19];
  v11 = v0[18];
  v12 = v0[17];

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BBF0FAC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_22BDB77D4();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = *(a2 + 24);
  v20 = *(a2 + 16);
  v21 = v10;
  v22 = v2;

  sub_22BDA253C();
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = *(v9 + 16);
  if (v13 || !v14)
  {
    if (v14 != v13)
    {
      sub_22BDB63A4();
      v15 = sub_22BDB77C4();
      v16 = sub_22BDBB114();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_22BB2C000, v15, v16, "SearchToolCandidateGenerator: Removed disallowed typeIdentifier filters", v17, 2u);
        MEMORY[0x2318A6080](v17, -1, -1);
      }

      (*(v23 + 8))(v8, v5);
    }

    *a1 = v12;
  }

  else
  {

    type metadata accessor for SearchToolCandidateGenerator.SearchToolCandidateGeneratorError();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22BBF11D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a4;
  v21[3] = a2;
  v5 = sub_22BDBA594();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22BDBA4B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D72A38])
  {
    (*(v6 + 96))(v9, v5);
    v15 = *v9;
    v16 = swift_projectBox();
    (*(v11 + 16))(v14, v16, v10);

    type metadata accessor for SearchToolCandidateGenerator();
    v17 = sub_22BBEF748();
    MEMORY[0x28223BE20](v17);
    v21[-2] = v14;
    v18 = sub_22BD72628(sub_22BBF1888, &v21[-4], v17);

    v19 = !v18;
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v19 = 1;
  }

  return v19 & 1;
}

uint64_t sub_22BBF1470()
{
  v0 = sub_22BDBA634();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  sub_22BDBA3D4();
  sub_22BDBA3D4();
  v8 = sub_22BDBA614();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8)
  {
    sub_22BDBA444();
    sub_22BDBA444();
    sub_22BC90C1C();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_22BBF15F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB8204();
  sub_22BB30474(v6);
  (*(v7 + 32))(a3, a1);
  v8 = *(type metadata accessor for SearchToolCandidateGenerator() + 36);
  v9 = type metadata accessor for SearchToolExecutor();
  sub_22BB30474(v9);
  v11 = *(v10 + 32);

  return v11(a3 + v8, a2);
}

uint64_t sub_22BBF16CC()
{
  sub_22BDBB814();
  sub_22BBE604C();
  return sub_22BDBB834();
}

uint64_t sub_22BBF1708(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for QueryOutput()
{
  result = qword_27D8E2900;
  if (!qword_27D8E2900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBF17C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_22BBF18B0(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BBF194C(uint64_t a1)
{
  result = sub_22BDB8204();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = type metadata accessor for SearchToolExecutor();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BBF19D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v77 = sub_22BDB8204();
  v86 = *(v77 - 8);
  v83 = *(v86 + 84);
  v75 = sub_22BDB8E14();
  v85 = *(v75 - 8);
  v4 = *(v85 + 84);
  v73 = sub_22BDBA014();
  v84 = *(v73 - 8);
  v5 = *(v84 + 84);
  v76 = v4;
  v74 = v5;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v71 = *(a3 + 16);
  v82 = *(v71 - 8);
  v72 = *(v82 + 84);
  if (v72 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(v82 + 84);
  }

  v66 = sub_22BDB8274();
  v81 = *(v66 - 8);
  v90 = *(v81 + 84);
  if (v90)
  {
    v7 = v90 - 1;
  }

  else
  {
    v7 = 0;
  }

  v65 = sub_22BDBA234();
  v80 = *(v65 - 8);
  v89 = *(v80 + 84);
  v8 = v89 - 1;
  if (!v89)
  {
    v8 = 0;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v69 = v7;
  v70 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v68 = v10;
  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v64 = sub_22BDB89A4();
  v79 = *(v64 - 8);
  v12 = *(v79 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v67 = v13;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v62 = sub_22BDB9774();
  v15 = *(v62 - 8);
  v63 = *(v15 + 84);
  if (v14 <= v63)
  {
    v14 = *(v15 + 84);
  }

  v61 = sub_22BDB9C14();
  v16 = *(v61 - 8);
  v17 = *(v16 + 84);
  if (v14 <= v17)
  {
    v18 = *(v16 + 84);
  }

  else
  {
    v18 = v14;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v81 + 64);
  v21 = *(v84 + 80);
  v22 = *(v82 + 80);
  v23 = *(v80 + 80);
  v24 = *(v79 + 80);
  v25 = *(v15 + 80);
  v26 = *(v16 + 80);
  v27 = *(v15 + 64);
  if (v19 <= v83)
  {
    v28 = v83;
  }

  else
  {
    v28 = v19;
  }

  if (!v90)
  {
    ++v20;
  }

  if (v89)
  {
    v29 = *(v80 + 64);
  }

  else
  {
    v29 = *(v80 + 64) + 1;
  }

  v87 = v12;
  if (v12)
  {
    v30 = *(v79 + 64);
  }

  else
  {
    v30 = *(v79 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = *(v81 + 80) & 0xF8 | v23 | 7;
  v32 = *(v85 + 80) & 0xF8 | v21 | v22 | v31 | v24 | v25 | v26;
  v33 = *(v86 + 64) + v32;
  v34 = *(v85 + 64) + v21;
  v35 = *(v84 + 64) + v22;
  v36 = *(v82 + 64) + v31;
  v37 = v20 + 7;
  v38 = v29 + v24 + ((v23 + 16 + ((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23);
  v39 = v30 + 7;
  v40 = v25 + 40;
  v41 = v27 + 7;
  v42 = v26 + 8;
  if (a2 <= v28)
  {
    goto LABEL_65;
  }

  v43 = (v42 + ((((v41 + ((v40 + ((v39 + ((v38 + ((v36 + ((v35 + (v34 & ~v21)) & ~v22)) & ~v31)) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
  v44 = *(*(v61 - 8) + 64) + (v33 & ~v32);
  v45 = v44 + v43;
  v46 = 8 * (v44 + v43);
  if ((v44 + v43) > 3)
  {
    goto LABEL_47;
  }

  v49 = ((a2 - v28 + ~(-1 << v46)) >> v46) + 1;
  if (HIWORD(v49))
  {
    v47 = *(a1 + v45);
    if (v47)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (v49 <= 0xFF)
    {
      if (v49 < 2)
      {
        goto LABEL_65;
      }

LABEL_47:
      v47 = *(a1 + v45);
      if (!*(a1 + v45))
      {
        goto LABEL_65;
      }

LABEL_55:
      v50 = (v47 - 1) << v46;
      if (v45 > 3)
      {
        v50 = 0;
      }

      if (v45)
      {
        if (v45 <= 3)
        {
          v51 = v44 + v43;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 2:
            v52 = *a1;
            break;
          case 3:
            v52 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v52 = *a1;
            break;
          default:
            v52 = *a1;
            break;
        }
      }

      else
      {
        v52 = 0;
      }

      return v28 + (v52 | v50) + 1;
    }

    v47 = *(a1 + v45);
    if (*(a1 + v45))
    {
      goto LABEL_55;
    }
  }

LABEL_65:
  if (v83 >= v19)
  {
    v54 = v77;
    v53 = a1;
    v17 = v83;
    goto LABEL_69;
  }

  v53 = (a1 + v33) & ~v32;
  if (v76 == v19)
  {
    v17 = v76;
    v54 = v75;
    goto LABEL_69;
  }

  v53 = (v34 + v53) & ~v21;
  if (v74 == v19)
  {
    v17 = v74;
    v54 = v73;
    goto LABEL_69;
  }

  v53 = (v35 + v53) & ~v22;
  if (v72 == v19)
  {
    v17 = v72;
    v54 = v71;
    goto LABEL_69;
  }

  v55 = (v36 + v53) & ~v31;
  if (v70 == v19)
  {
    if (v69 == v68)
    {
      v56 = v90;
      v57 = v66;
    }

    else
    {
      v55 = (v23 + 16 + ((((v37 + v55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23;
      v56 = v89;
      v57 = v65;
    }

    goto LABEL_86;
  }

  v55 = (v38 + v55) & ~v24;
  if (v67 == v19)
  {
    v56 = v87;
    v57 = v64;
LABEL_86:
    v58 = sub_22BB3AA28(v55, v56, v57);
    if (v58 >= 2)
    {
      return v58 - 1;
    }

    else
    {
      return 0;
    }
  }

  v59 = (v39 + v55) & 0xFFFFFFFFFFFFFFF8;
  if ((v18 & 0x80000000) != 0)
  {
    v53 = (v40 + v59) & ~v25;
    if (v63 == v19)
    {
      v17 = v63;
      v54 = v62;
    }

    else
    {
      v53 = (v42 + ((((v41 + v53) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
      v54 = v61;
    }

LABEL_69:

    return sub_22BB3AA28(v53, v17, v54);
  }

  v60 = *(v59 + 24);
  if (v60 >= 0xFFFFFFFF)
  {
    LODWORD(v60) = -1;
  }

  return (v60 + 1);
}

void sub_22BBF2160(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v97 = sub_22BDB8204();
  v105 = *(v97 - 8);
  v104 = *(v105 + 84);
  v95 = sub_22BDB8E14();
  v109 = *(v95 - 8);
  v5 = *(v109 + 84);
  v93 = sub_22BDBA014();
  v107 = *(v93 - 8);
  v6 = *(v107 + 84);
  v96 = v5;
  v94 = v6;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v91 = *(a4 + 16);
  v106 = *(v91 - 8);
  v92 = *(v106 + 84);
  if (v92 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(v106 + 84);
  }

  v84 = sub_22BDB8274();
  v8 = *(v84 - 8);
  v101 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v82 = sub_22BDBA234();
  v98 = *(v82 - 8);
  v100 = v98;
  v11 = *(v98 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v87 = v10;
  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v89 = v14;
  v90 = v13;
  if (v14 > v7)
  {
    v7 = v14;
  }

  v86 = sub_22BDB89A4();
  v103 = *(v86 - 8);
  v15 = *(v103 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  v88 = v16;
  if (v16 <= v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = v16;
  }

  v79 = sub_22BDB9774();
  v102 = *(v79 - 8);
  v80 = *(v102 + 84);
  if (v17 <= v80)
  {
    v17 = *(v102 + 84);
  }

  v18 = sub_22BDB9C14();
  v116 = 0;
  v19 = *(v18 - 8);
  v20 = *(v8 + 64);
  v78 = *(v19 + 84);
  if (v17 <= v78)
  {
    v21 = *(v19 + 84);
  }

  else
  {
    v21 = v17;
  }

  v85 = v21;
  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = v104;
  if (v22 <= v104)
  {
    v24 = v104;
  }

  else
  {
    v24 = v22;
  }

  v83 = v9;
  if (!v9)
  {
    ++v20;
  }

  v81 = v11;
  if (v11)
  {
    v25 = *(v98 + 64);
  }

  else
  {
    v25 = *(v98 + 64) + 1;
  }

  v99 = v15;
  v26 = v15 == 0;
  v27 = *(v107 + 80);
  v28 = *(v106 + 80);
  v29 = *(v100 + 80);
  v30 = *(v101 + 80) & 0xF8 | v29 | 7;
  v31 = *(v103 + 80);
  v32 = *(v102 + 80);
  v33 = *(v19 + 80);
  v34 = *(v109 + 80) & 0xF8 | v27 | v28 | v30 | v31 | v32 | v33;
  v35 = *(v105 + 64) + v34;
  v36 = *(v109 + 64) + v27;
  v37 = *(v107 + 64);
  v38 = *(v106 + 64);
  v39 = v20 + 7;
  v110 = v25;
  v111 = v29 + 16;
  v40 = ((v29 + 16 + (((v39 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + v25 + v31;
  v41 = v37 + v28;
  v42 = v38 + v30;
  v43 = (v40 + ((v38 + v30 + ((v37 + v28 + (v36 & ~v27)) & ~v28)) & ~v30)) & ~v31;
  if (v26)
  {
    v44 = *(v103 + 64) + 1;
  }

  else
  {
    v44 = *(v103 + 64);
  }

  v45 = v44 + 7;
  v46 = (v32 + 40 + ((v44 + 7 + v43) & 0xFFFFFFFFFFFFFFF8)) & ~v32;
  v47 = *(v102 + 64) + 7;
  v48 = v47 + v46;
  v49 = *(*(v18 - 8) + 64);
  v50 = v33 + 8;
  v51 = v49 + (v35 & ~v34) + ((v33 + 8 + (((v48 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v33);
  v52 = 8 * v51;
  if (a3 > v24)
  {
    if (v51 <= 3)
    {
      v54 = ((a3 - v24 + ~(-1 << v52)) >> v52) + 1;
      if (HIWORD(v54))
      {
        v53 = 4;
      }

      else
      {
        if (v54 < 0x100)
        {
          v55 = 1;
        }

        else
        {
          v55 = 2;
        }

        if (v54 >= 2)
        {
          v53 = v55;
        }

        else
        {
          v53 = 0;
        }
      }
    }

    else
    {
      v53 = 1;
    }

    v116 = v53;
  }

  if (v24 < a2)
  {
    v56 = ~v24 + a2;
    if (v51 < 4)
    {
      v58 = (v56 >> v52) + 1;
      v57 = a1;
      if (v51)
      {
        v64 = v56 & ~(-1 << v52);
        bzero(a1, v49 + (v35 & ~v34) + ((v33 + 8 + (((v48 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v33));
        if (v51 == 3)
        {
          *a1 = v64;
          a1[2] = BYTE2(v64);
        }

        else
        {
          if (v51 != 2)
          {
            v73 = v116;
            *a1 = v56;
LABEL_88:
            switch(v73)
            {
              case 1:
                v57[v51] = v58;
                break;
              case 2:
                *&v57[v51] = v58;
                break;
              case 3:
                goto LABEL_123;
              case 4:
                *&v57[v51] = v58;
                break;
              default:
                return;
            }

            return;
          }

          *a1 = v64;
        }
      }
    }

    else
    {
      v57 = a1;
      bzero(a1, v49 + (v35 & ~v34) + ((v33 + 8 + (((v48 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v33));
      *a1 = v56;
      v58 = 1;
    }

    v73 = v116;
    goto LABEL_88;
  }

  v108 = v18;
  v113 = ~v29;
  v59 = ~v33;
  v60 = ~v34;
  v61 = ~v28;
  v62 = ~v30;
  v63 = a1;
  switch(v116)
  {
    case 1:
      a1[v51] = 0;
      if (a2)
      {
        goto LABEL_67;
      }

      return;
    case 2:
      *&a1[v51] = 0;
      if (a2)
      {
        goto LABEL_67;
      }

      return;
    case 3:
LABEL_123:
      __break(1u);
      return;
    case 4:
      *&a1[v51] = 0;
      goto LABEL_66;
    default:
LABEL_66:
      if (!a2)
      {
        return;
      }

LABEL_67:
      if (v104 >= v22)
      {
        v71 = a2;
        v72 = v97;
LABEL_79:

        sub_22BB336D0(v63, v71, v23, v72);
        return;
      }

      v65 = &a1[v35] & v60;
      if (v22 < a2)
      {
        v66 = ((v50 + (((v48 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8)) & v59) + v49;
        v67 = -1 << (8 * (((v50 + (((v48 & 0xF8) + 47) & 0xF8)) & v59) + v49));
        if (v66 <= 3)
        {
          v68 = ~v67;
        }

        else
        {
          v68 = -1;
        }

        if (v66)
        {
          v69 = v68 & (~v22 + a2);
          if (v66 <= 3)
          {
            v70 = v66;
          }

          else
          {
            v70 = 4;
          }

          bzero((&a1[v35] & v60), v66);
          switch(v70)
          {
            case 2:
              goto LABEL_108;
            case 3:
              goto LABEL_109;
            case 4:
              goto LABEL_110;
            default:
              goto LABEL_77;
          }
        }

        return;
      }

      v23 = v96;
      if (v96 == v22)
      {
        v63 = &a1[v35] & v60;
        v71 = a2;
        v72 = v95;
        goto LABEL_79;
      }

      v63 = (v36 + v65) & ~v27;
      v23 = v94;
      if (v94 == v22)
      {
        v71 = a2;
        v72 = v93;
        goto LABEL_79;
      }

      v63 = (v41 + v63) & v61;
      v23 = v92;
      if (v92 == v22)
      {
        v71 = a2;
        v72 = v91;
        goto LABEL_79;
      }

      v65 = (v42 + v63) & v62;
      if (v90 != v22)
      {
        v63 = (v40 + v65) & ~v31;
        if (v88 == v22)
        {
          v71 = a2 + 1;
          v23 = v99;
          v72 = v86;
        }

        else
        {
          v77 = (v45 + v63) & 0xFFFFFFFFFFFFFFF8;
          if ((v85 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *(v77 + 8) = 0u;
              *(v77 + 24) = 0u;
              *v77 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v77 + 24) = a2 - 1;
            }

            return;
          }

          v63 = (v32 + 40 + v77) & ~v32;
          v23 = v80;
          if (v80 == v22)
          {
            v71 = a2;
            v72 = v79;
          }

          else
          {
            v63 = (v50 + ((((v47 + v63) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v59;
            v71 = a2;
            v23 = v78;
            v72 = v108;
          }
        }

        goto LABEL_79;
      }

      if (v89 >= a2)
      {
        if (v87 == v89)
        {
          v71 = a2 + 1;
          v63 = (v42 + v63) & v62;
          v23 = v83;
          v72 = v84;
        }

        else
        {
          v63 = (v111 + ((((v39 + v65) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v113;
          v71 = a2 + 1;
          v23 = v81;
          v72 = v82;
        }

        goto LABEL_79;
      }

      v74 = ((v111 + (((v39 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v113) + v110;
      if (v74 <= 3)
      {
        v75 = ~(-1 << (8 * (((v111 + (((v39 & 0xF8) + 23) & 0xF8)) & v113) + v110)));
      }

      else
      {
        v75 = -1;
      }

      if (v74)
      {
        v69 = v75 & (~v89 + a2);
        if (v74 <= 3)
        {
          v76 = ((v111 + (((v39 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v113) + v110;
        }

        else
        {
          v76 = 4;
        }

        bzero(((v42 + v63) & v62), v74);
        switch(v76)
        {
          case 2:
LABEL_108:
            *v65 = v69;
            break;
          case 3:
LABEL_109:
            *v65 = v69;
            *(v65 + 2) = BYTE2(v69);
            break;
          case 4:
LABEL_110:
            *v65 = v69;
            break;
          default:
LABEL_77:
            *v65 = v69;
            break;
        }
      }

      return;
  }
}

void sub_22BBF2AF0()
{
  sub_22BDB4E24();
  if (v0 <= 0x3F)
  {
    sub_22BBF2BCC(319, qword_28142D9D8, type metadata accessor for ResultResponse);
    if (v1 <= 0x3F)
    {
      sub_22BBF2BCC(319, &qword_281428798, sub_22BBEB528);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BBF2BCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBB254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BBF2C3C()
{
  sub_22BB2F0D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22BDB77D4();
  v1[5] = v4;
  sub_22BB30434(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_22BB30ACC();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BBF2CE8()
{
  v1 = v0[3];
  v2 = v0[4];
  *(v2 + 16) = v0[2];
  sub_22BBF5EFC(v1, v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime23AnswerSynthesisResolver_invocationOptions);
  sub_22BB3B294(MEMORY[0x277D36FF8]);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22BBF2DA4;
  v4 = v0[2];

  return v6();
}

uint64_t sub_22BBF2DA4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 72) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BBF2EA0()
{
  v0[10] = *(v0[4] + 16);
  sub_22BB3B294(MEMORY[0x277D37000]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_22BBF2F48;

  return v3();
}

uint64_t sub_22BBF2F48()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BBF304C()
{
  sub_22BB2F0D4();
  v1 = v0[2];
  v2 = v0[3];

  sub_22BBF5F60(v2);
  v3 = v0[7];

  v4 = sub_22BB69938();

  return v5(v4);
}

uint64_t sub_22BBF30B4()
{
  v2 = v0[9];
  v3 = v0[7];
  sub_22BDB63F4();
  v4 = v2;
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB114();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22BB31AD8();
    v7 = sub_22BB2F340();
    *v1 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB94CA4(v9);
    sub_22BB30F08(&dword_22BB2C000, v10, v11, "Failed to preheat AnswerSynthesisClient: %@");
    sub_22BB58728(v7, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB30AF0();
  }

  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  v16 = v0[2];
  v15 = v0[3];

  sub_22BBF5F60(v15);
  v17 = *(v13 + 8);
  v18 = sub_22BB2F0E0();
  v19(v18);
  v20 = v0[7];

  v21 = sub_22BB69938();

  return v22(v21);
}

uint64_t sub_22BBF3208()
{
  v2 = v0[10];

  v3 = v0[12];
  v4 = v0[7];
  sub_22BDB63F4();
  v5 = v3;
  v6 = sub_22BDB77C4();
  v7 = sub_22BDBB114();

  if (os_log_type_enabled(v6, v7))
  {
    sub_22BB31AD8();
    v8 = sub_22BB2F340();
    *v1 = 138412290;
    v9 = v3;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB94CA4(v10);
    sub_22BB30F08(&dword_22BB2C000, v11, v12, "Failed to preheat AnswerSynthesisClient: %@");
    sub_22BB58728(v8, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB30AF0();
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  v17 = v0[2];
  v16 = v0[3];

  sub_22BBF5F60(v16);
  v18 = *(v14 + 8);
  v19 = sub_22BB2F0E0();
  v20(v19);
  v21 = v0[7];

  v22 = sub_22BB69938();

  return v23(v22);
}

uint64_t sub_22BBF3364()
{
  sub_22BB2F0D4();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = sub_22BDBA634();
  v1[36] = v5;
  sub_22BB30434(v5);
  v1[37] = v6;
  v8 = *(v7 + 64);
  v1[38] = sub_22BB30ACC();
  v9 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  v1[39] = sub_22BB30ACC();
  v12 = sub_22BDB77D4();
  v1[40] = v12;
  sub_22BB30434(v12);
  v1[41] = v13;
  v15 = *(v14 + 64);
  v1[42] = sub_22BB31AF0();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v16 = sub_22BBE6DE0(&qword_27D8E2930, &qword_22BDBCFA8);
  sub_22BB2F0C8(v16);
  v18 = *(v17 + 64);
  v1[48] = sub_22BB30ACC();
  v19 = sub_22BDB4B34();
  v1[49] = v19;
  sub_22BB30434(v19);
  v1[50] = v20;
  v22 = *(v21 + 64);
  v1[51] = sub_22BB31AF0();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v23 = sub_22BBE6DE0(&qword_27D8E2938, &unk_22BDBCFB0);
  sub_22BB2F0C8(v23);
  v25 = *(v24 + 64);
  v1[55] = sub_22BB31AF0();
  v1[56] = swift_task_alloc();
  v26 = sub_22BDBA594();
  v1[57] = v26;
  sub_22BB30434(v26);
  v1[58] = v27;
  v29 = *(v28 + 64);
  v1[59] = sub_22BB31AF0();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v30 = sub_22BDBA3A4();
  v1[63] = v30;
  sub_22BB30434(v30);
  v1[64] = v31;
  v33 = *(v32 + 64);
  v1[65] = sub_22BB30ACC();
  v34 = sub_22BDBA514();
  v1[66] = v34;
  sub_22BB30434(v34);
  v1[67] = v35;
  v37 = *(v36 + 64);
  v1[68] = sub_22BB30ACC();
  v38 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v38);
  v40 = *(v39 + 64);
  v1[69] = sub_22BB31AF0();
  v1[70] = swift_task_alloc();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_22BBF36D8()
{
  v205 = v0;
  sub_22BD80E80(*(v0 + 272), v0 + 56);
  if (!*(v0 + 80))
  {
    v100 = &unk_27D8E2940;
    v101 = &unk_22BDBCFC0;
    v102 = v0 + 56;
LABEL_26:
    sub_22BB58728(v102, v100, v101);
LABEL_27:
    v107 = *(v0 + 344);
    sub_22BDB63F4();
    v108 = sub_22BDB77C4();
    v109 = sub_22BDBB114();
    if (sub_22BB333C0(v109))
    {
      v110 = sub_22BB37F30();
      sub_22BB360F0(v110);
      sub_22BB2F0A8(&dword_22BB2C000, v111, v112, "Missing rewrittenQuery");
      sub_22BB30AF0();
    }

    v113 = *(v0 + 344);
    v114 = *(v0 + 320);
    v115 = *(v0 + 328);

    v116 = *(v115 + 8);
    v117 = sub_22BB30AE4();
    v118(v117);
    type metadata accessor for ExecutorError(0);
    sub_22BBF5FBC();
    sub_22BB37F10();
    sub_22BB38C48();
    swift_willThrow();
    goto LABEL_30;
  }

  v1 = *(v0 + 560);
  v2 = *(v0 + 456);
  sub_22BB382E8((v0 + 56), v0 + 16);
  sub_22BB69088(v0 + 16, v0 + 96);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v3 = sub_22BB52878();
  v4 = *(v0 + 560);
  if (!v3)
  {
    v103 = *(v0 + 456);
    sub_22BB32FA4((v0 + 16));
    sub_22BB30B28();
    sub_22BB336D0(v104, v105, v106, v103);
    v100 = &qword_27D8E2668;
    v101 = &unk_22BDBCCD0;
    v102 = v4;
    goto LABEL_26;
  }

  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v7 = *(v0 + 560);
  sub_22BB331C8();
  sub_22BB336D0(v8, v9, v10, v5);
  v11 = *(v6 + 88);
  v12 = sub_22BB30AE4();
  v13 = v11(v12);
  v14 = *(v0 + 560);
  if (v13 != *MEMORY[0x277D72A58])
  {
    v124 = *(v0 + 456);
    v125 = *(v0 + 464);
    sub_22BB32FA4((v0 + 16));
    (*(v125 + 8))(v14, v124);
    goto LABEL_27;
  }

  v200 = v11;
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v18 = *(*(v0 + 464) + 96);
  v18(v14, *(v0 + 456));
  v19 = *v14;
  v20 = swift_projectBox();
  (*(v16 + 16))(v15, v20, v17);
  v21 = *(v16 + 88);
  v22 = sub_22BB2F0E0();
  v24 = v23(v22);
  v25 = *(v0 + 544);
  v26 = *(v0 + 536);
  v27 = *(v0 + 528);
  if (v24 != *MEMORY[0x277D729B8])
  {
    sub_22BB32FA4((v0 + 16));
    v126 = *(v26 + 8);
    v127 = sub_22BB2F0E0();
    v128(v127);

    goto LABEL_27;
  }

  v28 = *(v0 + 272);
  v29 = *(v26 + 96);
  v30 = sub_22BB2F0E0();
  v31(v30);
  v32 = *v25;
  v33 = v25[1];
  v177 = v32;
  *(v0 + 568) = v33;

  sub_22BD80E80(v28, v0 + 176);
  if (!*(v0 + 200))
  {

    v129 = &unk_27D8E2940;
    v130 = &unk_22BDBCFC0;
    v131 = v0 + 176;
LABEL_37:
    sub_22BB58728(v131, v129, v130);
    goto LABEL_38;
  }

  v178 = v33;
  v34 = *(v0 + 552);
  v35 = *(v0 + 456);
  sub_22BB382E8((v0 + 176), v0 + 136);
  sub_22BB69088(v0 + 136, v0 + 216);
  v36 = sub_22BB52878();
  v37 = *(v0 + 552);
  v38 = *(v0 + 456);
  if (!v36)
  {
    sub_22BB32FA4((v0 + 136));

    sub_22BB30B28();
    sub_22BB336D0(v132, v133, v134, v38);
    v129 = &qword_27D8E2668;
    v130 = &unk_22BDBCCD0;
    v131 = v37;
    goto LABEL_37;
  }

  v39 = *(v0 + 552);
  sub_22BB331C8();
  sub_22BB336D0(v40, v41, v42, v38);
  v43 = sub_22BB2F324();
  v44 = v200(v43);
  *(v0 + 656) = v44;
  v45 = *(v0 + 552);
  if (v44 == *MEMORY[0x277D729E0])
  {
    v46 = *(v0 + 520);
    v47 = *(v0 + 504);
    v48 = *(v0 + 512);
    v49 = *(v0 + 464);
    v50 = *(v0 + 400);
    v51 = *(v0 + 328);
    v18(*(v0 + 552), *(v0 + 456));
    v52 = *v45;
    v53 = swift_projectBox();
    (*(v48 + 16))(v46, v53, v47);

    result = sub_22BDBA394();
    v55 = 0;
    v196 = *(result + 16);
    v56 = v49 + 16;
    v191 = *MEMORY[0x277D72A38];
    v187 = (v51 + 8);
    v185 = *MEMORY[0x277D374E0];
    *(v0 + 660) = *MEMORY[0x277D374E0];
    v183 = (v50 + 104);
    v175 = v50;
    v176 = (v50 + 32);
    v198 = MEMORY[0x277D84F90];
    v193 = result;
    while (1)
    {
      *(v0 + 576) = v198;
      if (v196 == v55)
      {
        break;
      }

      if (v55 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v57 = *(v0 + 488);
      v203 = v55;
      v58 = v56;
      v59 = *(v49 + 16);
      (v59)(*(v0 + 496), result + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v55, *(v0 + 456));
      v60 = sub_22BB52868();
      v59(v60);
      v61 = sub_22BB30AE4();
      v62 = v200(v61);
      v63 = *(v49 + 8);
      v64 = sub_22BB30AE4();
      v63(v64);
      if (v62 == v191)
      {
        v66 = *(v0 + 384);
        v65 = *(v0 + 392);
        (v59)(v66, *(v0 + 496), *(v0 + 456));
        (*v183)(v66, v185, v65);
        v67 = 0;
        v56 = v58;
      }

      else
      {
        v68 = *(v0 + 480);
        v69 = *(v0 + 456);
        v70 = *(v0 + 376);
        sub_22BDB63F4();
        v71 = sub_22BB52868();
        v59(v71);
        v72 = sub_22BDB77C4();
        v73 = sub_22BDBB104();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 480);
        v76 = *(v0 + 456);
        v77 = *(v0 + 376);
        v189 = *(v0 + 320);
        if (v74)
        {
          v78 = sub_22BB31AD8();
          v79 = swift_slowAlloc();
          v204 = v79;
          *v78 = 136315138;
          v179 = sub_22BDBA554();
          v181 = v77;
          v81 = v80;
          (v63)(v75, v76);
          v82 = sub_22BB32EE0(v179, v81, &v204);

          *(v78 + 4) = v82;
          _os_log_impl(&dword_22BB2C000, v72, v73, "Filtering out non-entity non-question values from collection: %s", v78, 0xCu);
          sub_22BB32FA4(v79);
          v56 = v49 + 16;
          sub_22BB30AF0();
          sub_22BB30AF0();

          (*v187)(v181, v189);
        }

        else
        {
          v56 = v58;

          (v63)(v75, v76);
          (*v187)(v77, v189);
        }

        v67 = 1;
      }

      v83 = *(v0 + 496);
      v84 = *(v0 + 456);
      v86 = *(v0 + 384);
      v85 = *(v0 + 392);
      sub_22BB336D0(v86, v67, 1, v85);
      v87 = sub_22BB2F324();
      v63(v87);
      if (sub_22BB3AA28(v86, 1, v85) == 1)
      {
        sub_22BB58728(*(v0 + 384), &qword_27D8E2930, &qword_22BDBCFA8);
        v55 = v203 + 1;
        result = v193;
      }

      else
      {
        v88 = v56;
        v89 = *(v0 + 424);
        v90 = *v176;
        (*v176)(*(v0 + 432), *(v0 + 384), *(v0 + 392));
        v91 = sub_22BB52868();
        v90(v91);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BB3267C(isUniquelyReferenced_nonNull_native, v93, v94, v198);
          sub_22BD8F300();
          v198 = v98;
        }

        v95 = *(v198 + 16);
        if (v95 >= *(v198 + 24) >> 1)
        {
          sub_22BD8F300();
          v198 = v99;
        }

        v55 = v203 + 1;
        v96 = *(v0 + 424);
        v97 = *(v0 + 392);
        *(v198 + 16) = v95 + 1;
        (v90)(v198 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v95, v96, v97);
        result = v193;
        v56 = v88;
      }
    }

    v152 = *(v0 + 448);
    v153 = *(v0 + 280);

    sub_22BBF52A8(v153, v152);
    v154 = v153 + OBJC_IVAR____TtC23IntelligenceFlowRuntime23AnswerSynthesisResolver_invocationOptions;
    v155 = (v154 + *(type metadata accessor for InvocationOptions(0) + 20));
    *(v0 + 584) = *v155;
    v156 = v155[1];
    *(v0 + 592) = v156;
    if (v156)
    {
      sub_22BB8AE8C(*(v0 + 448), *(v0 + 440), &qword_27D8E2938, &unk_22BDBCFB0);
      v157 = sub_22BDB46D4();
      v158 = *(v157 + 48);
      v159 = *(v157 + 52);
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      v160 = sub_22BDB46C4();
      *(v0 + 600) = v160;
      v161 = swift_task_alloc();
      *(v0 + 608) = v161;
      *v161 = v0;
      v161[1] = sub_22BBF4300;
      v162 = *(v0 + 280);

      return sub_22BBF557C(v162, v177, v178, v198, v160);
    }

    v163 = *(v0 + 360);

    sub_22BDB63F4();
    v164 = sub_22BDB77C4();
    v165 = sub_22BDBB114();
    if (sub_22BB333C0(v165))
    {
      v166 = sub_22BB37F30();
      sub_22BB360F0(v166);
      sub_22BB2F0A8(&dword_22BB2C000, v167, v168, "Missing locale");
      sub_22BB30AF0();
    }

    v169 = *(v0 + 520);
    v170 = *(v0 + 504);
    v171 = *(v0 + 512);
    v172 = *(v0 + 448);
    v173 = *(v0 + 360);
    v174 = *(v0 + 320);

    (*v187)(v173, v174);
    type metadata accessor for ExecutorError(0);
    sub_22BBF5FBC();
    sub_22BB37F10();
    sub_22BB38C48();
    swift_willThrow();
    sub_22BB58728(v172, &qword_27D8E2938, &unk_22BDBCFB0);
    (*(v171 + 8))(v169, v170);
    sub_22BB32FA4((v0 + 136));
    goto LABEL_41;
  }

  v147 = *(v0 + 456);
  v148 = *(v0 + 464);
  sub_22BB32FA4((v0 + 136));

  v149 = *(v148 + 8);
  v150 = sub_22BB2F324();
  v151(v150);
LABEL_38:
  v135 = *(v0 + 352);
  sub_22BDB63F4();
  v136 = sub_22BDB77C4();
  v137 = sub_22BDBB114();
  if (sub_22BB333C0(v137))
  {
    v138 = sub_22BB37F30();
    sub_22BB360F0(v138);
    sub_22BB2F0A8(&dword_22BB2C000, v139, v140, "Missing extractionCandidates");
    sub_22BB30AF0();
  }

  v141 = *(v0 + 352);
  v142 = *(v0 + 320);
  v143 = *(v0 + 328);

  v144 = *(v143 + 8);
  v145 = sub_22BB30AE4();
  v146(v145);
  type metadata accessor for ExecutorError(0);
  sub_22BBF5FBC();
  sub_22BB37F10();
  sub_22BB38C48();
  swift_willThrow();
LABEL_41:
  sub_22BB32FA4((v0 + 16));
LABEL_30:
  sub_22BB54124();
  v119 = *(v0 + 472);
  v120 = *(v0 + 480);
  v122 = *(v0 + 440);
  v121 = *(v0 + 448);
  v180 = *(v0 + 432);
  v182 = *(v0 + 424);
  v184 = *(v0 + 416);
  v186 = *(v0 + 408);
  v188 = *(v0 + 384);
  v190 = *(v0 + 376);
  v192 = *(v0 + 368);
  v194 = *(v0 + 360);
  v195 = *(v0 + 352);
  v197 = *(v0 + 344);
  v199 = *(v0 + 336);
  v201 = *(v0 + 312);
  v202 = *(v0 + 304);

  sub_22BB2F09C();

  return v123();
}

uint64_t sub_22BBF4300()
{
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 608);
  *v4 = *v1;
  v3[77] = v7;
  v3[78] = v0;

  if (v0)
  {
    v8 = v3[74];
    v9 = v3[72];
    v10 = v3[71];
  }

  else
  {
    v11 = v3[72];
    v12 = v3[71];
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BBF4448()
{
  v27 = v0;
  v1 = v0[77];
  v2 = v0[46];
  sub_22BDB63F4();

  v3 = sub_22BDB77C4();
  v4 = sub_22BDBB0F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v6 = v0[46];
    v7 = v0[40];
    v8 = v0[41];
    v9 = sub_22BB31AD8();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v11 = sub_22BDB4B14();
    v12 = MEMORY[0x2318A4D50](v5, v11);
    v14 = sub_22BB32EE0(v12, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_22BB2C000, v3, v4, "Received [AnswerSynthesisResult] %s", v9, 0xCu);
    sub_22BB32FA4(v10);
    sub_22BB30AF0();
    sub_22BB30458();

    v15 = *(v8 + 8);
    v16 = sub_22BB30AE4();
    v15(v16);
  }

  else
  {
    v17 = v0[46];
    v18 = v0[40];
    v19 = v0[41];

    v15 = *(v19 + 8);
    v20 = sub_22BB30AE4();
    v15(v20);
  }

  v0[79] = v15;
  v21 = *(v0[35] + 16);
  v22 = *(MEMORY[0x277D36FF0] + 4);
  v25 = (*MEMORY[0x277D36FF0] + MEMORY[0x277D36FF0]);
  v23 = swift_task_alloc();
  v0[80] = v23;
  *v23 = v0;
  v23[1] = sub_22BBF462C;

  return v25();
}

uint64_t sub_22BBF462C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 640);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 648) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BBF4728()
{
  v6 = sub_22BBC20A8(v2[77]);
  v7 = v2[77];
  if (v6)
  {
    v8 = v7 & 0xC000000000000001;
    sub_22BD72584(0, (v7 & 0xC000000000000001) == 0, v7);
    v9 = v2[77];
    if (v8)
    {
      v10 = MEMORY[0x2318A5340](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = sub_22BDB4B04();

    v12 = *(v11 + 16);
    if (v12)
    {
      sub_22BB338B4();
      v90 = MEMORY[0x277D84F90];
      do
      {
        v13 = sub_22BB341BC();
        v14(v13);
        v15 = sub_22BB396C0();
        v16(v15);
        if ((*v5)(v3, v4) == v10)
        {
          v17 = sub_22BB30F3C();
          v18(v17);
          v19 = sub_22BB587E0();
          v10(v19);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v23 = v90;
          }

          else
          {
            sub_22BB3267C(isUniquelyReferenced_nonNull_native, v21, v22, v90);
            sub_22BD8EBF4();
            v23 = isUniquelyReferenced_nonNull_native;
          }

          v3 = *(v23 + 16);
          if (v3 >= *(v23 + 24) >> 1)
          {
            sub_22BB6B598();
            v23 = isUniquelyReferenced_nonNull_native;
          }

          v24 = sub_22BB31F28(isUniquelyReferenced_nonNull_native, v21, v22, v23);
          v10(v24);
        }

        else
        {
          v25 = sub_22BB333DC();
          v26(v25);
        }

        v1 += v89;
        --v12;
      }

      while (v12);

      v8 = v88;
    }

    else
    {
    }

    sub_22BD72584(0, v8 == 0, v2[77]);
    v28 = v2[77];
    if (v8)
    {
      MEMORY[0x2318A5340](0, v28);
    }

    else
    {
      v29 = *(v28 + 32);
    }

    v0 = sub_22BDB4AF4();
    sub_22BB72EB4();
    sub_22BD72584(0, v8 == 0, v2[77]);
    v1 = v2[77];
    if (v8)
    {
      MEMORY[0x2318A5340](0, v2[77]);
      v1 = v2[77];
    }

    else
    {
      v30 = *(v1 + 32);
    }

    v79 = sub_22BDB4AE4();
    sub_22BB72EB4();
  }

  else
  {
    v27 = v2[77];

    v79 = 0;
  }

  sub_22BB30480();
  v31 = sub_22BB35398();
  sub_22BDBA694();
  sub_22BB30B28();
  v36 = sub_22BB336D0(v32, v33, v34, v35);
  v44 = sub_22BB3A8FC(v36, v37, v38, v39, v40, v41, v42, v43, v72, v76, v79);
  sub_22BB37468(v44);
  swift_allocBox();
  swift_allocObject();
  sub_22BB6BC7C();
  sub_22BB360D0(v45, v46, v73);
  (*(v1 + 104))(v0, *MEMORY[0x277D72D28]);
  sub_22BDBA374();

  v47 = sub_22BB58728(v82, &qword_27D8E2938, &unk_22BDBCFB0);
  v55 = sub_22BB33FAC(v47, v48, v49, v50, v51, v52, v53, v54, v74, v77, v80, v82, v84, v86, v3, v87);
  v56(v55);
  sub_22BB32FA4(v2 + 17);
  v57 = sub_22BB32FA4(v2 + 2);
  v65 = sub_22BB6B968(v57, v58, v59, v60, v61, v62, v63, v64, v75, v78, v81, v83, v85);
  v66(v65);
  sub_22BB331C8();
  sub_22BB336D0(v67, v68, v69, v31);

  sub_22BB2F09C();

  return v70();
}

uint64_t sub_22BBF4B94()
{
  v1 = v0[75];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[56];

  sub_22BB58728(v5, &qword_27D8E2938, &unk_22BDBCFB0);
  v6 = *(v4 + 8);
  v7 = sub_22BB2F324();
  v8(v7);
  sub_22BB32FA4(v0 + 17);
  sub_22BB32FA4(v0 + 2);
  v28 = v0[78];
  sub_22BB54124();
  v9 = v0[59];
  v10 = v0[60];
  v12 = v0[55];
  v11 = v0[56];
  v15 = v0[54];
  v16 = v0[53];
  v17 = v0[52];
  v18 = v0[51];
  v19 = v0[48];
  v20 = v0[47];
  v21 = v0[46];
  v22 = v0[45];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[39];
  v27 = v0[38];

  sub_22BB2F09C();

  return v13();
}

uint64_t sub_22BBF4D5C()
{
  v5 = *(v0 + 648);
  v6 = *(v0 + 336);
  sub_22BDB63F4();
  v7 = v5;
  v8 = sub_22BDB77C4();
  v9 = sub_22BDBB114();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 648);
  if (v10)
  {
    sub_22BB31AD8();
    v2 = sub_22BB2F340();
    *v1 = 138412290;
    v12 = v11;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB94CA4(v13);
    sub_22BB30F08(&dword_22BB2C000, v14, v15, "AnswerSynthesisClient failed to deactivate: %@");
    sub_22BB58728(v2, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB30AF0();
  }

  else
  {
  }

  v16 = *(v0 + 328) + 8;
  (*(v0 + 632))(*(v0 + 336), *(v0 + 320));
  v17 = sub_22BBC20A8(*(v0 + 616));
  v18 = *(v0 + 616);
  if (v17)
  {
    v19 = v18 & 0xC000000000000001;
    sub_22BD72584(0, (v18 & 0xC000000000000001) == 0, v18);
    v20 = *(v0 + 616);
    if (v19)
    {
      v21 = MEMORY[0x2318A5340](0, v20);
    }

    else
    {
      v21 = *(v20 + 32);
    }

    v22 = sub_22BDB4B04();

    v23 = *(v22 + 16);
    if (v23)
    {
      sub_22BB338B4();
      v101 = MEMORY[0x277D84F90];
      do
      {
        v24 = sub_22BB341BC();
        v25(v24);
        v26 = sub_22BB396C0();
        v27(v26);
        if ((*v4)(v2, v3) == v21)
        {
          v28 = sub_22BB30F3C();
          v29(v28);
          v30 = sub_22BB587E0();
          v21(v30);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v34 = v101;
          }

          else
          {
            sub_22BB3267C(isUniquelyReferenced_nonNull_native, v32, v33, v101);
            sub_22BD8EBF4();
            v34 = isUniquelyReferenced_nonNull_native;
          }

          v2 = *(v34 + 16);
          if (v2 >= *(v34 + 24) >> 1)
          {
            sub_22BB6B598();
            v34 = isUniquelyReferenced_nonNull_native;
          }

          v35 = sub_22BB31F28(isUniquelyReferenced_nonNull_native, v32, v33, v34);
          v21(v35);
        }

        else
        {
          v36 = sub_22BB333DC();
          v37(v36);
        }

        v9 += v100;
        --v23;
      }

      while (v23);

      v19 = v99;
    }

    else
    {
    }

    sub_22BD72584(0, v19 == 0, *(v0 + 616));
    v39 = *(v0 + 616);
    if (v19)
    {
      MEMORY[0x2318A5340](0, v39);
    }

    else
    {
      v40 = *(v39 + 32);
    }

    v11 = sub_22BDB4AF4();
    sub_22BB72EB4();
    sub_22BD72584(0, v19 == 0, *(v0 + 616));
    v9 = *(v0 + 616);
    if (v19)
    {
      MEMORY[0x2318A5340](0, *(v0 + 616));
      v9 = *(v0 + 616);
    }

    else
    {
      v41 = *(v9 + 32);
    }

    v90 = sub_22BDB4AE4();
    sub_22BB72EB4();
  }

  else
  {
    v38 = *(v0 + 616);

    v90 = 0;
  }

  sub_22BB30480();
  v42 = sub_22BB35398();
  sub_22BDBA694();
  sub_22BB30B28();
  v47 = sub_22BB336D0(v43, v44, v45, v46);
  v55 = sub_22BB3A8FC(v47, v48, v49, v50, v51, v52, v53, v54, v83, v87, v90);
  sub_22BB37468(v55);
  swift_allocBox();
  swift_allocObject();
  sub_22BB6BC7C();
  sub_22BB360D0(v56, v57, v84);
  (*(v9 + 104))(v11, *MEMORY[0x277D72D28]);
  sub_22BDBA374();

  v58 = sub_22BB58728(v93, &qword_27D8E2938, &unk_22BDBCFB0);
  v66 = sub_22BB33FAC(v58, v59, v60, v61, v62, v63, v64, v65, v85, v88, v91, v93, v95, v97, v2, v98);
  v67(v66);
  sub_22BB32FA4((v0 + 136));
  v68 = sub_22BB32FA4((v0 + 16));
  v76 = sub_22BB6B968(v68, v69, v70, v71, v72, v73, v74, v75, v86, v89, v92, v94, v96);
  v77(v76);
  sub_22BB331C8();
  sub_22BB336D0(v78, v79, v80, v42);

  sub_22BB2F09C();

  return v81();
}

uint64_t sub_22BBF52A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = sub_22BDB77D4();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E2968, &unk_22BDBD220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_22BDB8274();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB8AE8C(a1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime23AnswerSynthesisResolver_invocationOptions, v11, &qword_27D8E2968, &unk_22BDBD220);
  if (sub_22BB3AA28(v11, 1, v12) == 1)
  {
    sub_22BB58728(v11, &qword_27D8E2968, &unk_22BDBD220);
    sub_22BDB63F4();
    v17 = sub_22BDB77C4();
    v18 = sub_22BDBB114();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22BB2C000, v17, v18, "Missing interactionMode from invocationOptions", v19, 2u);
      MEMORY[0x2318A6080](v19, -1, -1);
    }

    (*(v4 + 8))(v7, v24);
    v20 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_22BBF5BF0(v16, a2);
    (*(v13 + 8))(v16, v12);
    v20 = 0;
  }

  v21 = sub_22BDB4104();
  return sub_22BB336D0(a2, v20, 1, v21);
}

uint64_t sub_22BBF557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_22BBE6DE0(&qword_27D8E2958, &qword_22BDBCFD8) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = *(*(sub_22BBE6DE0(&qword_27D8E2960, &qword_22BDBCFE0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = sub_22BDB77D4();
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF56C0, 0, 0);
}

uint64_t sub_22BBF56C0()
{
  v1 = v0[12];
  sub_22BDB63F4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (sub_22BB333C0(v3))
  {
    v4 = sub_22BB37F30();
    sub_22BB360F0(v4);
    sub_22BB2F0A8(&dword_22BB2C000, v5, v6, "Calling extractAnswer XPC from AnswerSynthesisResolver");
    sub_22BB30AF0();
  }

  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[2];

  v0[13] = *(v9 + 8);
  v13 = sub_22BB30AE4();
  v14(v13);
  v15 = *(v12 + 16);
  sub_22BDB46B4();
  sub_22BB30B28();
  sub_22BB336D0(v16, v17, v18, v19);
  sub_22BDB4B24();
  sub_22BB30B28();
  sub_22BB336D0(v20, v21, v22, v23);
  v24 = *(MEMORY[0x277D36FE8] + 4);
  v33 = (*MEMORY[0x277D36FE8] + MEMORY[0x277D36FE8]);
  v25 = swift_task_alloc();
  v0[14] = v25;
  *v25 = v0;
  v25[1] = sub_22BBF582C;
  v27 = v0[7];
  v26 = v0[8];
  v28 = v0[5];
  v29 = v0[6];
  v31 = v0[3];
  v30 = v0[4];

  return v33(v31, v30, v26, v28, v27, v29);
}

uint64_t sub_22BBF582C(uint64_t a1)
{
  sub_22BB32690();
  v5 = v4;
  sub_22BB3053C();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v2;
  sub_22BB3052C();
  *v10 = v9;
  v5[15] = v1;

  if (v1)
  {
    v11 = v5[8];
    sub_22BB58728(v5[7], &qword_27D8E2958, &qword_22BDBCFD8);
    sub_22BB58728(v11, &qword_27D8E2960, &qword_22BDBCFE0);
    sub_22BB31B20();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v16 = v5[11];
    v15 = v5[12];
    v17 = v5[8];
    sub_22BB58728(v5[7], &qword_27D8E2958, &qword_22BDBCFD8);
    sub_22BB58728(v17, &qword_27D8E2960, &qword_22BDBCFE0);

    v18 = *(v9 + 8);

    return v18(a1);
  }
}

uint64_t sub_22BBF59F8()
{
  v2 = v0[15];
  v3 = v0[11];
  sub_22BDB63F4();
  v4 = v2;
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB114();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    sub_22BB31AD8();
    v8 = sub_22BB2F340();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB94CA4(v10);
    _os_log_impl(&dword_22BB2C000, v5, v6, "AnswerSynthesisClient failed to extractAnswer %@", v1, 0xCu);
    sub_22BB58728(v8, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB30AF0();
  }

  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[7];

  v13(v14, v16);
  swift_willThrow();

  sub_22BB2F09C();
  v20 = v0[15];

  return v19();
}

id sub_22BBF5B7C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_22BDBABE4();

  v2 = [v0 initWithLocaleIdentifier_];

  return v2;
}

uint64_t sub_22BBF5BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB8274();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D1DC20])
  {
    v10 = MEMORY[0x277CBA0B0];
LABEL_9:
    v11 = *v10;
    v12 = sub_22BDB4104();
    sub_22BB2F330(v12);
    return (*(v13 + 104))(a2, v11);
  }

  if (v9 == *MEMORY[0x277D1DC30])
  {
    v10 = MEMORY[0x277CBA0C0];
    goto LABEL_9;
  }

  if (v9 == *MEMORY[0x277D1DC28])
  {
    v10 = MEMORY[0x277CBA0B8];
    goto LABEL_9;
  }

  if (v9 == *MEMORY[0x277D1DC18])
  {
    v10 = MEMORY[0x277CBA0A8];
    goto LABEL_9;
  }

  result = sub_22BDBB6C4();
  __break(1u);
  return result;
}

uint64_t sub_22BBF5D9C()
{
  v1 = v0[2];

  sub_22BBF5F60(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime23AnswerSynthesisResolver_invocationOptions);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t type metadata accessor for AnswerSynthesisResolver()
{
  result = qword_27D8E2918;
  if (!qword_27D8E2918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBF5E5C()
{
  result = type metadata accessor for InvocationOptions(319);
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

uint64_t sub_22BBF5EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvocationOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBF5F60(uint64_t a1)
{
  v2 = type metadata accessor for InvocationOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BBF5FBC()
{
  result = qword_27D8E2948;
  if (!qword_27D8E2948)
  {
    type metadata accessor for ExecutorError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2948);
  }

  return result;
}

unint64_t sub_22BBF6014()
{
  result = qword_27D8E2950;
  if (!qword_27D8E2950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8E2950);
  }

  return result;
}

uint64_t sub_22BBF6058(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBF60C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5[2] = a4;
  v5[3] = v4;
  v10 = sub_22BDB77D4();
  v5[4] = v10;
  sub_22BB30434(v10);
  v5[5] = v11;
  v13 = *(v12 + 64) + 15;
  v5[6] = swift_task_alloc();
  v14 = *(a4 + 16);
  v15 = *(a4 + 24);
  v16 = type metadata accessor for QueryExecutor.ToolKitEntityQuery();
  v5[7] = v16;
  v17 = sub_22BDBB254();
  v5[8] = v17;
  sub_22BB30434(v17);
  v5[9] = v18;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v5[10] = v21;
  v22 = *(v16 - 8);
  v5[11] = v22;
  v23 = *(v22 + 64) + 15;
  v5[12] = swift_task_alloc();
  swift_task_alloc();
  sub_22BB30B34();
  v5[13] = v24;
  *v24 = v25;
  v24[1] = sub_22BBF62A8;

  return sub_22BBF6984(v21, a1, a2, a3, a4);
}

uint64_t sub_22BBF62A8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = *(v2 + 104);
  v4 = *v1;
  sub_22BB3052C();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BBF63A8()
{
  sub_22BB2F35C();
  v1 = v0[10];
  v2 = v0[7];
  if (sub_22BB3AA28(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    (*(v0[9] + 8))(v1, v0[8]);
    sub_22BDB63A4();
    v4 = sub_22BDB77C4();
    v5 = sub_22BDBB114();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22BB2C000, v4, v5, "fetchPredicates returned no predicate results. Returning empty values array", v6, 2u);
      sub_22BB30AF0();
    }

    v7 = v0[12];
    v8 = v0[10];
    (*(v0[5] + 8))(v0[6], v0[4]);

    v9 = v0[1];
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v1, v2);
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_22BBF6588;
    v13 = v0[12];
    v14 = v0[2];
    v15 = v0[3];

    return sub_22BBF73DC(v13, v14);
  }
}

uint64_t sub_22BBF6588()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  v6 = *(v4 + 120);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BBF669C()
{
  sub_22BB2F35C();
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[6];
  (*(v0[11] + 8))(v0[12], v0[7]);

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_22BBF673C()
{
  sub_22BB2F35C();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BBF67B8()
{
  sub_22BB2F35C();
  (*(v0[11] + 8))(v0[12], v0[7]);
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BBF684C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22BDBA764();
  sub_22BB2F330(v10);
  (*(v11 + 32))(a5, a1);
  Executor = type metadata accessor for QueryExecutor();
  v13 = *(Executor + 36);
  v14 = sub_22BDBA014();
  sub_22BB2F330(v14);
  (*(v15 + 32))(a5 + v13, a2);
  v16 = *(*(a4 - 8) + 32);
  v17 = a5 + *(Executor + 40);

  return v16(v17, a3, a4);
}

uint64_t sub_22BBF6984(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = a5;
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 33) = a4;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v8 = sub_22BDBA764();
  *(v6 + 80) = v8;
  v9 = *(v8 - 8);
  *(v6 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v11 = *(v7 - 8);
  v7 -= 8;
  *(v6 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  v13 = sub_22BDB77D4();
  *(v6 + 120) = v13;
  v14 = *(v13 - 8);
  *(v6 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = *(v7 + 32);
  *(v6 + 152) = *(v7 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 160) = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  *(v6 + 168) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v19 = type metadata accessor for QualifiedToolKitQuery();
  *(v6 + 184) = v19;
  v20 = sub_22BDBB254();
  *(v6 + 192) = v20;
  v21 = *(v20 - 8);
  *(v6 + 200) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  v23 = *(v19 - 8);
  *(v6 + 216) = v23;
  v24 = *(v23 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF6C9C, 0, 0);
}

void sub_22BBF6C9C()
{
  sub_22BB30F5C();
  v18 = *(v0 + 144);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v1 + 36);
  v3 = *(v1 + 40);
  sub_22BDBA744();
  *(v0 + 232) = v5;
  v6 = *(v18 + 64);
  v15 = v6 + *v6;
  v7 = v6[1];
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 240) = v8;
  *v8 = v9;
  v8[1] = sub_22BBF6DF4;
  v10 = *(v0 + 208);
  v11 = *(v0 + 152);
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);
  v14 = *(v0 + 33);
  v17 = *(v0 + 144);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BBF6DF4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  v4 = *(v2 + 240);
  v5 = *v1;
  sub_22BB3052C();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (!v0)
  {
    v7 = *(v3 + 232);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BBF6EFC()
{
  v62 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  if (sub_22BB3AA28(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 33);
    (*(*(v0 + 200) + 8))(v1, *(v0 + 192));
    sub_22BDB63A4();
    (*(v5 + 16))(v4, v6, v7);
    sub_22BBF9494(v9, v8, v10);
    v11 = sub_22BDB77C4();
    v12 = sub_22BDBB114();
    sub_22BBF94C0(v9, v8, v10);
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    if (v13)
    {
      v57 = v12;
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      v59 = *(v0 + 120);
      v21 = *(v0 + 80);
      v54 = *(v0 + 64);
      v56 = *(v0 + 56);
      v22 = *(v0 + 48);
      v55 = *(v0 + 33);
      v58 = *(v0 + 136);
      v23 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v23 = 136315394;
      (*(v20 + 16))(v19, v16, v21);
      v24 = sub_22BDBAC14();
      v26 = v25;
      (*(v18 + 8))(v16, v54);
      v27 = sub_22BB32EE0(v24, v26, &v61);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v0 + 16) = v22;
      *(v0 + 24) = v56;
      *(v0 + 32) = v55;
      sub_22BBF9494(v22, v56, v55);
      v28 = sub_22BDBAC14();
      v30 = sub_22BB32EE0(v28, v29, &v61);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_22BB2C000, v11, v57, "Unable to find any predicates + valueSet for parameter: %s with query %s", v23, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();

      (*(v15 + 8))(v58, v59);
    }

    else
    {
      v42 = *(v0 + 64);

      (*(v18 + 8))(v16, v42);
      (*(v15 + 8))(v14, v17);
    }

    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    v45 = *(v0 + 40);
    v39 = type metadata accessor for QueryExecutor.ToolKitEntityQuery();
    v40 = v45;
    v41 = 1;
  }

  else
  {
    v32 = *(v0 + 216);
    v31 = *(v0 + 224);
    v33 = *(v0 + 168);
    v34 = *(v0 + 176);
    v35 = *(v0 + 152);
    v36 = *(v0 + 160);
    v37 = *(v0 + 144);
    v60 = *(v0 + 40);
    (*(v32 + 32))(v31, v1, v2);
    (*(v33 + 16))(v34, v31, v36);
    sub_22BBE6DE0(qword_27D8E2998, qword_22BDBD060);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_22BDBCBD0;
    sub_22BB69088(v31 + *(v2 + 28), v38 + 32);
    (*(v32 + 8))(v31, v2);
    sub_22BBF7864(v34, v38, v60);
    v39 = type metadata accessor for QueryExecutor.ToolKitEntityQuery();
    v40 = v60;
    v41 = 0;
  }

  sub_22BB336D0(v40, v41, 1, v39);
  v46 = *(v0 + 224);
  v47 = *(v0 + 208);
  v48 = *(v0 + 176);
  v49 = *(v0 + 136);
  v50 = *(v0 + 112);
  v51 = *(v0 + 96);

  sub_22BB2F09C();

  return v52();
}

uint64_t sub_22BBF732C()
{
  sub_22BB30F5C();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[22];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[12];

  sub_22BB2F09C();
  v9 = v0[31];

  return v8();
}

uint64_t sub_22BBF73DC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22BDB77D4();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF74A0, 0, 0);
}

uint64_t sub_22BBF74A0()
{
  sub_22BB30F5C();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_22BBE6DE0(&qword_27D8E2970, &qword_22BDBD008);
  v5 = swift_task_alloc();
  v0[9] = v5;
  v5[2] = *(v2 + 16);
  v5[3] = *(v2 + 24);
  v5[4] = v3;
  v5[5] = v1;
  v6 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v0[10] = v7;
  *v7 = v8;
  v7[1] = sub_22BBF75B8;

  return MEMORY[0x282200600](v0 + 2, v4, v4, 0, 0, &unk_22BDBD018, v5, v4);
}

uint64_t sub_22BBF75B8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BBF76BC()
{
  v22 = v0;
  v1 = v0[8];
  v2 = v0[2];
  sub_22BDB63A4();
  v3 = sub_22BDB77C4();
  v4 = sub_22BDBB134();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  if (v5)
  {
    v20 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = sub_22BDBA594();

    v13 = MEMORY[0x2318A4D50](v12, v11);
    v15 = v14;

    v16 = sub_22BB32EE0(v13, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_22BB2C000, v3, v4, "QueryExecutor: final aggregated results: %s", v9, 0xCu);
    sub_22BB32FA4(v10);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v6 + 8))(v20, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v17 = v0[8];

  v18 = v0[1];

  return v18(v2);
}

uint64_t sub_22BBF7864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BB2F330(AssociatedTypeWitness);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for QueryExecutor.ToolKitEntityQuery();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_22BBF7950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = type metadata accessor for QueryExecutor.ToolKitEntityQuery();
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v6[23] = *(v8 + 64);
  v6[24] = swift_task_alloc();
  Executor = type metadata accessor for QueryExecutor();
  v6[25] = Executor;
  v10 = *(Executor - 8);
  v6[26] = v10;
  v6[27] = *(v10 + 64);
  v6[28] = swift_task_alloc();
  v11 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v12 = sub_22BBE6DE0(&qword_27D8E2980, &qword_22BDBD028);
  v6[31] = v12;
  v13 = *(v12 - 8);
  v6[32] = v13;
  v14 = *(v13 + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF7B48, 0, 0);
}

uint64_t sub_22BBF7B48()
{
  v1 = *(*(v0 + 136) + *(*(v0 + 168) + 36));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 208);
    v4 = v1 + 32;
    v34 = *(v0 + 176);
    v35 = v3;
    v36 = **(v0 + 128);
    v33 = *(v0 + 184) + 7;
    v5 = sub_22BDBAEF4();
    v32 = v5;
    do
    {
      v41 = v2;
      v6 = *(v0 + 224);
      v7 = *(v0 + 192);
      v8 = *(v0 + 200);
      v39 = v7;
      v9 = *(v0 + 168);
      v37 = *(v0 + 216);
      v38 = v9;
      v10 = *(v0 + 136);
      v11 = *(v0 + 144);
      v40 = *(v0 + 152);
      sub_22BB336D0(*(v0 + 240), 1, 1, v5);
      (*(v35 + 16))(v6, v11, v8);
      (*(v34 + 16))(v7, v10, v9);
      sub_22BB69088(v4, v0 + 16);
      v12 = (*(v35 + 80) + 48) & ~*(v35 + 80);
      v13 = (v37 + *(v34 + 80) + v12) & ~*(v34 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v40;
      (*(v35 + 32))(v14 + v12, v6, v8);
      (*(v34 + 32))(v14 + v13, v39, v38);
      sub_22BB382E8((v0 + 16), v14 + ((v33 + v13) & 0xFFFFFFFFFFFFFFF8));

      if (swift_taskGroup_addPending())
      {
        v16 = *(v0 + 232);
        sub_22BBB5584(*(v0 + 240), v16);
        v5 = v32;
        v17 = sub_22BB3AA28(v16, 1, v32);
        v18 = *(v0 + 232);
        if (v17 == 1)
        {
          sub_22BB58728(*(v0 + 232), &qword_27D8E2978, &qword_22BDBD020);
        }

        else
        {
          sub_22BDBAEE4();
          (*(*(v32 - 8) + 8))(v18, v32);
        }

        if (*v15)
        {
          v19 = *(v14 + 24);
          v20 = *v15;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = sub_22BDBAE44();
          v23 = v22;
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = &unk_22BDBD038;
        *(v24 + 24) = v14;
        sub_22BBE6DE0(&qword_27D8E2970, &qword_22BDBD008);
        v25 = v23 | v21;
        if (v23 | v21)
        {
          v25 = v0 + 56;
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v21;
          *(v0 + 80) = v23;
        }

        *(v0 + 88) = 1;
        *(v0 + 96) = v25;
        *(v0 + 104) = v36;
        swift_task_create();
      }

      else
      {

        v5 = v32;
      }

      sub_22BB58728(*(v0 + 240), &qword_27D8E2978, &qword_22BDBD020);
      v4 += 40;
      v2 = v41 - 1;
    }

    while (v41 != 1);
  }

  v26 = *(v0 + 264);
  v27 = **(v0 + 128);
  sub_22BBE6DE0(&qword_27D8E2970, &qword_22BDBD008);
  sub_22BDBAE84();
  *(v0 + 272) = MEMORY[0x277D84F90];
  v28 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 280) = v29;
  *v29 = v30;
  sub_22BB3295C(v29);
  sub_22BB31B20();

  return MEMORY[0x2822002E8]();
}

uint64_t sub_22BBF7F98()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 280);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BBF8080()
{
  v1 = v0[14];
  v2 = v0[34];
  if (v1)
  {
    v3 = *(v1 + 16);
    v4 = *(v2 + 16);
    if (__OFADD__(v4, v3))
    {
      __break(1u);
    }

    else
    {
      v5 = v0[34];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = v0[34];
      if (!isUniquelyReferenced_nonNull_native || v4 + v3 > *(v7 + 24) >> 1)
      {
        v8 = v0[34];
        sub_22BD8EBF4();
        v7 = v9;
      }

      if (*(v1 + 16))
      {
        v10 = (*(v7 + 24) >> 1) - *(v7 + 16);
        v11 = *(sub_22BDBA594() - 8);
        if (v10 >= v3)
        {
          v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
          v13 = *(v11 + 72);
          swift_arrayInitWithCopy();

          if (!v3)
          {
            goto LABEL_15;
          }

          v14 = *(v7 + 16);
          v15 = __OFADD__(v14, v3);
          v16 = v14 + v3;
          if (!v15)
          {
            *(v7 + 16) = v16;
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return MEMORY[0x2822002E8]();
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (!v3)
      {
LABEL_15:
        v0[34] = v7;
        v24 = *(MEMORY[0x277D856B0] + 4);
        swift_task_alloc();
        sub_22BB30B34();
        v0[35] = v25;
        *v25 = v26;
        sub_22BB3295C();
        sub_22BB31B20();

        return MEMORY[0x2822002E8]();
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v17 = v0[30];
  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[24];
  v21 = v0[15];
  (*(v0[32] + 8))(v0[33], v0[31]);
  *v21 = v2;

  sub_22BB2F09C();

  return v22();
}

uint64_t sub_22BBF82A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a1;
  v8[11] = a4;
  v9 = sub_22BDB77D4();
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v11 = *(v10 + 64) + 15;
  v8[18] = swift_task_alloc();
  v12 = *(*(sub_22BBE6DE0(&qword_27D8E2988, &unk_22BDBD050) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v13 = sub_22BDBA014();
  v8[20] = v13;
  v14 = *(v13 - 8);
  v8[21] = v14;
  v15 = *(v14 + 64) + 15;
  v8[22] = swift_task_alloc();
  v16 = sub_22BDBA044();
  v8[23] = v16;
  v17 = *(v16 - 8);
  v8[24] = v17;
  v18 = *(v17 + 64) + 15;
  v8[25] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v8[26] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[27] = AssociatedTypeWitness;
  v20 = *(AssociatedTypeWitness - 8);
  v8[28] = v20;
  v21 = *(v20 + 64) + 15;
  v8[29] = swift_task_alloc();
  v22 = swift_checkMetadataState();
  v8[30] = v22;
  v23 = *(v22 - 8);
  v8[31] = v23;
  v24 = *(v23 + 64) + 15;
  v8[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF858C, 0, 0);
}

uint64_t sub_22BBF858C()
{
  if (sub_22BDBAFF4())
  {
    sub_22BB338F8();
    **(v0 + 80) = v11;

    sub_22BB2F09C();

    return v12();
  }

  else
  {
    v1 = *(v0 + 256);
    v2 = *(v0 + 224);
    v22 = *(v0 + 216);
    v23 = *(v0 + 232);
    v3 = *(v0 + 168);
    v24 = *(v0 + 160);
    v25 = *(v0 + 176);
    v26 = *(v0 + 152);
    v28 = *(v0 + 200);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    Executor = type metadata accessor for QueryExecutor();
    v9 = v7 + *(Executor + 40);
    (*(v5 + 32))(v4, v5);
    (*(v2 + 16))(v23, v6, v22);
    (*(v3 + 16))(v25, v7 + *(Executor + 36), v24);
    sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
    sub_22BDBAB14();
    v10 = sub_22BDBA264();
    sub_22BB336D0(v26, 1, 1, v10);
    sub_22BDBA024();
    v29 = *(v0 + 208);
    sub_22BB69088(*(v0 + 104), v0 + 16);
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 1;
    v14 = *(v29 + 72);
    v27 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 264) = v16;
    *v16 = v0;
    v16[1] = sub_22BBF89A8;
    v17 = *(v0 + 256);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);

    return v27(v19, v20, v0 + 16, v18, v21);
  }
}

uint64_t sub_22BBF89A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  sub_22BB3052C();
  *v5 = v4;
  v6 = v3[33];
  v7 = v3[31];
  v8 = v3[28];
  v9 = v3[24];
  *v5 = *v2;
  v4[34] = v1;

  v10 = (v9 + 8);
  v11 = (v8 + 8);
  v12 = (v7 + 8);
  v23 = v3[32];
  v22 = v3[30];
  v13 = v3[29];
  v14 = v3[27];
  v15 = v3[25];
  v16 = v3[23];
  if (!v1)
  {
    v4[35] = a1;
  }

  sub_22BB58728((v4 + 2), &qword_27D8E2990, &qword_22BDBFAF0);
  (*v10)(v15, v16);
  (*v11)(v13, v14);
  (*v12)(v23, v22);
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22BBF8C5C()
{
  sub_22BB30F5C();
  v1 = *(v0 + 280);
  sub_22BB338F8();
  **(v0 + 80) = v2;

  sub_22BB2F09C();

  return v3();
}

uint64_t sub_22BBF8CF8()
{
  sub_22BB30F5C();
  v1 = *(v0 + 272);
  v2 = *(v0 + 144);
  sub_22BDB63A4();
  v3 = v1;
  v4 = sub_22BDB77C4();
  v5 = sub_22BDBB114();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22BB2C000, v4, v5, "No candidates found : %@", v6, 0xCu);
    sub_22BB58728(v7, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 128);

  (*(v11 + 8))(v10, v12);
  sub_22BB338F8();
  **(v0 + 80) = MEMORY[0x277D84F90];

  sub_22BB2F09C();

  return v13();
}

uint64_t sub_22BBF8E94()
{
  sub_22BB30F5C();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v8 = v0[5];
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_22BB3C48C;

  return sub_22BBF7950(v5, v3, v9, v8, v6, v7);
}

uint64_t sub_22BBF8F54(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  Executor = type metadata accessor for QueryExecutor();
  sub_22BB30434(Executor);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = type metadata accessor for QueryExecutor.ToolKitEntityQuery();
  sub_22BB30434(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = (*(v15 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v1[2];
  v18 = v1[3];
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_22BBF90EC;

  return sub_22BBF82A8(a1, v17, v18, v1 + v9, v1 + v14, v1 + v16, v6, v5);
}

uint64_t sub_22BBF90EC()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BBF91CC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22BBF92C0;

  return v6(v2 + 16);
}

uint64_t sub_22BBF92C0()
{
  sub_22BB2F35C();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_22BBF93E4()
{
  sub_22BB2F35C();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_22BBF90EC;

  return sub_22BBF91CC(v3, v5);
}

id sub_22BBF9494(id result, id a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }
  }

  return result;
}

void sub_22BBF94C0(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

__n128 sub_22BBF94F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22BBF950C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_22BBF954C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_22BBF95A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_22BBF9AD8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BBF969C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  v8 = *(*(result - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(result - 8) + 84);
  }

  v10 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
LABEL_26:
    if (v8 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {

      return sub_22BB3AA28(a1, v8, result);
    }
  }

  else
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = a2 - v9 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(a1 + v11);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(a1 + v11);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(a1 + v11);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *a1;
        }

        result = v9 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_22BBF9890(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = a3 - v11 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v11 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 <= v11)
  {
    switch(v17)
    {
      case 1:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v13) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v10 < 0x7FFFFFFF)
          {
            v20 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else
          {

            sub_22BB336D0(a1, a2, v10, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((v12 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v11 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    switch(v17)
    {
      case 1:
        *(a1 + v13) = v18;
        break;
      case 2:
        *(a1 + v13) = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v13) = v18;
        break;
      default:
        return;
    }
  }
}