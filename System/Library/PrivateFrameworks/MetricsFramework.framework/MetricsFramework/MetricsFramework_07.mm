uint64_t ODDIExperimentationCalculator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  v2 = OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_bookmarkService));
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_biomeResultsFactory);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_databaseFactory);

  return v0;
}

uint64_t ODDIExperimentationCalculator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_bookmarkService));
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_biomeResultsFactory);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_databaseFactory);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E6E704@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258E6E78C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258E6A9C0(a1);
}

void _s16MetricsFramework29ODDIExperimentationCalculatorC6logger15bookmarkServiceAC2os6LoggerV_11DeepThought014StreamBookmarkG0CtcfC_0(char *a1, uint64_t a2)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v44 = &v37 - v6;
  v7 = sub_258F0A370();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v8[2];
  v42 = v14;
  v43 = a1;
  v13(v12, a1);
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v16 = sub_258F0A4E0();
  v17 = [v15 initWithSuiteName_];

  if (v17)
  {
    sub_258F09F30();
    v39 = sub_258F09F20();
    type metadata accessor for ODDIExperimentationDatabaseFactory();
    v38 = swift_allocObject();
    type metadata accessor for BiomeResultsWrapperFactory();
    v18 = swift_allocObject();
    v19 = type metadata accessor for ODDIExperimentationCalculator();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    v23 = type metadata accessor for CAAnalyticsEventSubmitter();
    v24 = swift_allocObject();
    v22[5] = v23;
    v22[6] = &off_286A2C648;
    v22[2] = v24;
    v40 = v12;
    v25 = v12;
    v26 = v42;
    (v13)(v22 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger, v25, v42);
    *(v22 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_defaults) = v17;
    v27 = (v22 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_bookmarkService);
    v27[3] = sub_258F09C20();
    v27[4] = &off_286A2FA30;
    *v27 = v41;
    v22[7] = sub_258F09F20();
    *(v22 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_databaseFactory) = v38;
    *(v22 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_biomeResultsFactory) = v18;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    v30 = sub_258F0A4E0();
    v31 = sub_258F0A4E0();
    v32 = [v29 URLForResource:v30 withExtension:v31];

    if (v32)
    {
      v33 = v44;
      sub_258F098B0();

      v34 = 0;
    }

    else
    {
      v34 = 1;
      v33 = v44;
    }

    v35 = v8[1];
    v35(v43, v26);
    v35(v40, v26);
    v36 = sub_258F098D0();
    (*(*(v36 - 8) + 56))(v33, v34, 1, v36);
    sub_258E2EAD8(v33, v22 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_258E6EC18()
{
  result = qword_27F989C00;
  if (!qword_27F989C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989C00);
  }

  return result;
}

uint64_t sub_258E6EC6C(uint64_t a1)
{
  result = sub_258E6ED40(&qword_27F989C08);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ODDIExperimentationCalculator()
{
  result = qword_27F989C20;
  if (!qword_27F989C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E6ECFC(uint64_t a1)
{
  result = sub_258E6ED40(&qword_27F989C10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E6ED40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDIExperimentationCalculator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258E6ED84()
{
  result = qword_27F989C18;
  if (!qword_27F989C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989C18);
  }

  return result;
}

void sub_258E6EDF0()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_258DE3B74();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ODDIExperimentationCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258E6F058(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E6F0F4, 0, 0);
}

uint64_t sub_258E6F0F4()
{
  v0[2] = MEMORY[0x277D84F90];
  v1 = v0[5];
  if (v0[4])
  {
    v2 = v0[5];
    sub_258F0A0A0();
  }

  else
  {
    v3 = sub_258F09A20();
    (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  }

  v4 = v0[3];
  v0[6] = sub_258F0A050();
  v5 = sub_258F09DD0();
  v6 = *(MEMORY[0x277D04480] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_258E6F238;
  v8 = v0[5];

  return MEMORY[0x282159D80](v5, v4, 0xD000000000000019, 0x8000000258F1C950, v8);
}

uint64_t sub_258E6F238(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 64) = a1;

  sub_258E6A84C(v3);

  return MEMORY[0x2822009F8](sub_258E6F358, 0, 0);
}

uint64_t sub_258E6F358()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x259C9DF50]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258F0A6D0();
    }

    sub_258F0A700();

    v3 = v0[2];
  }

  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  v8 = *(sub_258F0A190() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_258F0F8B0;
  sub_258F0A160();
  sub_258F0A160();
  v11 = sub_258F0A1C0();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  sub_258F0A160();
  v15 = objc_allocWithZone(v5);

  v16 = v7;
  v17 = sub_258F0A000();

  v18 = v0[1];

  return v18(v17);
}

uint64_t ODDIExperimentationDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t ODDIExperimentationDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E6F71C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: ODDIMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t ODDIExperimentationDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ODDIExperimentationDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E6F8F8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E6F6FC();
}

uint64_t type metadata accessor for ODDIExperimentationDataProvider()
{
  result = qword_27F989C38;
  if (!qword_27F989C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ODDIExperimentationDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t ODDIExperimentationPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  ODDIExperimentationPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

uint64_t ODDIExperimentationPlugin.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v76 = a4;
  v72 = a3;
  v78 = a1;
  v6 = sub_258F09B00();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_258F09A20();
  v67 = *(v69 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v69, v11);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258F0A370();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v63 - v21;
  v23 = v14[2];
  v73 = OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_logger;
  v23(v4 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_logger, a2, v13);
  v23(v22, a2, v13);
  v24 = type metadata accessor for ODDIExperimentationDataProvider();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v77 = v14;
  v65 = v14[4];
  v66 = v14 + 4;
  v65(v27 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger, v22, v13);
  v28 = OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_dataProvider;
  v82 = v4;
  *(v4 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_dataProvider) = v27;
  v29 = sub_258F0A1F0();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v74 = v78;
  v32 = sub_258F0A1E0();
  v80 = v29;
  v81 = MEMORY[0x277D04548];
  v78 = a2;
  v79 = v32;
  v23(v19, a2, v13);
  v33 = sub_258F09C20();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v75;
  v37 = sub_258F09BE0();
  v75 = v36;
  if (v36)
  {
    v38 = v77[1];
    v38(v78, v13);

    v39 = v82;
    v38((v82 + v73), v13);
    v40 = *(v39 + v28);

    type metadata accessor for ODDIExperimentationPlugin();
    v41 = *(*v39 + 48);
    v42 = *(*v39 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v43 = v37;
    v44 = v64;
    sub_258F0A090();
    v45 = v68;
    sub_258F09AC0();
    sub_258F09C00();
    (*(v70 + 8))(v45, v71);
    (*(v67 + 8))(v44, v69);
    v46 = v78;
    v23(v22, v78, v13);

    _s16MetricsFramework29ODDIExperimentationCalculatorC6logger15bookmarkServiceAC2os6LoggerV_11DeepThought014StreamBookmarkG0CtcfC_0(v22, v43);
    v39 = v82;
    *(v82 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_calculator) = v47;
    v23(v22, v46, v13);
    v48 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v72, v76);
    v49 = type metadata accessor for ODDIExperimentationSELFReporter();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    v52 = swift_allocObject();
    v53 = (v52 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService);
    v53[3] = type metadata accessor for SELFReportingService();
    v53[4] = &protocol witness table for SELFReportingService;
    *v53 = v48;
    *(v52 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v65(v52 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger, v22, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_258F0CA20;
    *(v54 + 32) = v52;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989C60, &qword_258F12218);
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();

    v79 = sub_258F09BA0();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989C68, qword_258F12220);
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    v61 = sub_258F09BC0();

    (v77[1])(v46, v13);
    *(v39 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_reporter) = v61;
  }

  return v39;
}

uint64_t type metadata accessor for ODDIExperimentationPlugin()
{
  result = qword_27F989C90;
  if (!qword_27F989C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E701CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E701EC, 0, 0);
}

uint64_t sub_258E701EC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258E6F6FC();
}

uint64_t sub_258E70290(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E702C0, 0, 0);
}

uint64_t sub_258E702C0()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_reporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DED218;

  return v6(v0 + 16);
}

uint64_t sub_258E7038C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E703AC, 0, 0);
}

uint64_t sub_258E703AC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258E6A9C0(v3);
}

uint64_t ODDIExperimentationPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_reporter);

  return v0;
}

uint64_t ODDIExperimentationPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_reporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E705AC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E705D0, 0, 0);
}

uint64_t sub_258E705D0()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258E6F6FC();
}

uint64_t sub_258E70674(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E70698, 0, 0);
}

uint64_t sub_258E70698()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258E6A9C0(v3);
}

uint64_t sub_258E7073C(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E70770, 0, 0);
}

uint64_t sub_258E70770()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_reporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DEDBC8;

  return v6(v0 + 16);
}

uint64_t sub_258E708D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDIExperimentationPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ODDIExperimentationPlugin.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of ODDIExperimentationPlugin.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of ODDIExperimentationPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258E70D8C(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t dispatch thunk of ODDIExperimentationReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t ODDIExperimentationSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258E72280(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t sub_258E71078(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_258E710E0()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_258E71128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ODDIExperimentationSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_258E721AC(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

uint64_t sub_258E712DC(uint64_t a1)
{
  v2[8] = v1;
  v4 = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *(a1 + 16);
  v2[10] = v6;
  v2[11] = v7;

  return MEMORY[0x2822009F8](sub_258E713A0, 0, 0);
}

uint64_t sub_258E713A0()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[10];
      sub_258E730E0(v6, v8, type metadata accessor for DeviceExperimentMetrics);
      sub_258E72380(v8);
      sub_258E73148(v8, type metadata accessor for DeviceExperimentMetrics);
      v9 = swift_beginAccess();
      MEMORY[0x259C9DF50](v9);
      if (*(*(v4 + v5) + 16) >= *(*(v4 + v5) + 24) >> 1)
      {
        sub_258F0A6D0();
      }

      sub_258F0A700();
      swift_endAccess();
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  v10 = v0[8];
  v11 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v12 = *(v10 + v11);
  v0[12] = v12;
  v13 = *(v12 + 16);
  v0[13] = v13;
  if (v13)
  {
    v14 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService;
    v15 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
    v0[14] = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService;
    v0[15] = v15;

    v17 = 0;
    while (1)
    {
      v0[16] = v17;
      if (v17 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v18 = *(result + 8 * v17 + 32);
      v0[17] = v18;
      if (v18)
      {
        break;
      }

      if (v13 == ++v17)
      {

        goto LABEL_12;
      }
    }

    v25 = v0[8];
    v26 = (v25 + v14);
    v27 = *(v25 + v14 + 24);
    v28 = *(v25 + v14 + 32);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v29 = *(v28 + 8);
    v30 = v18;
    v33 = (v29 + *v29);
    v31 = v29[1];
    v32 = swift_task_alloc();
    v0[18] = v32;
    *v32 = v0;
    v32[1] = sub_258E71730;

    return v33(v30, v25 + v15, v27, v28);
  }

  else
  {
LABEL_12:
    v19 = v0[8] + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
    v20 = sub_258F0A350();
    v21 = sub_258F0A810();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_258DD8000, v20, v21, "#ODDIExperimentationSELFReporter: Finished Emitting ODDIExperimentation SELF events", v22, 2u);
      MEMORY[0x259C9EF40](v22, -1, -1);
    }

    v23 = v0[10];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_258E71730()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);

    v5 = sub_258E71ACC;
  }

  else
  {

    v5 = sub_258E71854;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_258E71854()
{
  v1 = *(v0 + 128) + 5;
  v2 = 1 - *(v0 + 104);
  while (v2 + v1 != 5)
  {
    *(v0 + 128) = v1 - 4;
    v3 = *(v0 + 96);
    if ((v1 - 4) >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 8 * v1);
    *(v0 + 136) = v4;
    ++v1;
    if (v4)
    {
      v5 = *(v0 + 120);
      v6 = *(v0 + 64);
      v7 = (v6 + *(v0 + 112));
      v8 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v10 = *(v9 + 8);
      v11 = v4;
      v21 = (v10 + *v10);
      v12 = v10[1];
      v13 = swift_task_alloc();
      *(v0 + 144) = v13;
      *v13 = v0;
      v13[1] = sub_258E71730;

      v21(v11, v6 + v5, v8, v9);
      return;
    }
  }

  v14 = *(v0 + 96);

  v15 = *(v0 + 64) + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
  v16 = sub_258F0A350();
  v17 = sub_258F0A810();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_258DD8000, v16, v17, "#ODDIExperimentationSELFReporter: Finished Emitting ODDIExperimentation SELF events", v18, 2u);
    MEMORY[0x259C9EF40](v18, -1, -1);
  }

  v19 = *(v0 + 80);

  v20 = *(v0 + 8);

  v20();
}

uint64_t sub_258E71ACC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);

  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#ODDIExperimentationSELFReporter: Unable to report ODDIExperimentation SELF events.", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 80);

  swift_willThrow();

  v9 = *(v0 + 8);
  v10 = *(v0 + 152);

  return v9();
}

uint64_t sub_258E71BD4()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents);
}

uint64_t ODDIExperimentationSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents);

  return v0;
}

uint64_t ODDIExperimentationSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService));
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_258E71DC0(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v43 - v7;
  v9 = sub_258F09A70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (*a1)
  {
    v16 = type metadata accessor for DeviceExperimentMetrics(0);
    v17 = (a2 + v16[5]);
    if (*(v17 + 4))
    {
      v18 = 0;
    }

    else
    {
      v18 = *v17;
    }

    [v15 setDigestType_];
    v19 = [objc_allocWithZone(MEMORY[0x277D59348]) init];
    v20 = v19;
    v21 = (a2 + v16[6]);
    if (v21[1])
    {
      v22 = v19 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v46 = v9;
      v23 = v14;
      v24 = *v21;
      v25 = v19;
      v45 = a2;
      v26 = v10;
      v27 = v20;
      v28 = v15;
      v29 = v25;
      v14 = v23;
      v30 = sub_258F0A4E0();
      [v29 setExperimentId_];

      v15 = v28;
      v20 = v27;
      v10 = v26;
      a2 = v45;
      v9 = v46;
    }

    sub_258DE20C0(a2 + v16[7], v8, &qword_27F988730, &unk_258F0F8E0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_258DE2184(v8, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      (*(v10 + 32))(v14, v8, v9);
      if (v20)
      {
        v31 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v32 = v20;
        v46 = v9;
        v44 = v14;
        v33 = sub_258F09A50();
        v34 = [v31 initWithNSUUID_];

        [v32 setTreatmentId_];
        (*(v10 + 8))(v44, v46);
      }

      else
      {
        (*(v10 + 8))(v14, v9);
      }
    }

    v35 = a2 + v16[8];
    if ((*(v35 + 8) & 1) == 0)
    {
      [v20 setDeploymentId_];
    }

    [v15 setExperimentFixedDimensions_];
    v36 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
    v37 = v36;
    v38 = (a2 + v16[9]);
    if (v38[1] && v36)
    {
      v39 = *v38;
      v40 = v36;
      v41 = sub_258F0A4E0();
      [v40 setDeviceType_];
    }

    v42 = (a2 + v16[10]);
    if ((v42[1] & 1) == 0)
    {
      [v37 setProgramCode_];
    }

    [v15 setFixedDimensions_];
  }
}

uint64_t sub_258E721AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *(a3 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

uint64_t sub_258E72280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ODDIExperimentationSELFReporter();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  return sub_258E721AC(a1, v12, v16, a4, a5);
}

uint64_t sub_258E72380(uint64_t a1)
{
  v2 = sub_258F09A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v113 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v109 - v9;
  v11 = type metadata accessor for ExperimentDigest(0);
  v12 = *(v11 - 8);
  v120 = v11;
  v121 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v123 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v109 - v19;
  v21 = type metadata accessor for EventMetadata(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258DE20C0(a1, v20, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_258DE2184(v20, &qword_27F9894E0, &unk_258F106A0);
    return 0;
  }

  sub_258E3F8CC(v20, v26);
  v27 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  if (!v27)
  {
    sub_258E73148(v26, type metadata accessor for EventMetadata);
    return v27;
  }

  v110 = v26;
  v111 = v3;
  v118 = v2;
  v28 = &v26[*(v21 + 44)];
  v29 = *v28;
  LOBYTE(v129) = v28[4];
  v30 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(v29 | (v129 << 32));
  [v27 setEventMetadata_];

  v119 = [objc_allocWithZone(MEMORY[0x277D59260]) init];
  v129 = v119;
  v112 = [objc_allocWithZone(MEMORY[0x277D59320]) init];
  v128 = v112;
  sub_258E71DC0(&v129, a1);
  sub_258E71DC0(&v128, a1);
  result = type metadata accessor for DeviceExperimentMetrics(0);
  v32 = *(a1 + *(result + 44));
  v33 = v121;
  v34 = v123;
  if (!v32 || (v35 = *(v32 + 16)) == 0)
  {
LABEL_65:
    sub_258E73148(v110, type metadata accessor for EventMetadata);

    return v27;
  }

  v36 = 0;
  v124 = v32 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
  v116 = v32;
  v117 = v27;
  v114 = v111 + 16;
  v115 = v35;
  v127 = (v111 + 8);
  v109 = v10;
  while (v36 < *(v32 + 16))
  {
    sub_258E730E0(v124 + *(v33 + 72) * v36, v34, type metadata accessor for ExperimentDigest);
    v40 = v34[1];
    if (v40)
    {
      v41 = *v34;
      v42 = *v34 == 0x4E41545349535341 && v40 == 0xE900000000000054;
      if (v42 || (v43 = *v34, v44 = v34[1], (sub_258F0AD80() & 1) != 0))
      {
        v45 = [objc_allocWithZone(MEMORY[0x277D59258]) init];
        if (!v45)
        {
          goto LABEL_9;
        }

        v46 = v45;
        v122 = v36;
        v47 = sub_258E3C4B8(v34);
        [v46 setDimensions_];

        v48 = sub_258E3C71C(v34);
        [v46 setCounts_];

        v49 = sub_258E3C8A0(v34);
        [v46 setTuples_];

        v50 = [objc_opt_self() sharedPreferences];
        v51 = [v50 longLivedIdentifierUploadingEnabled];

        v52 = v118;
        v53 = v46;
        v54 = v10;
        v55 = 0x277D5A000uLL;
        v56 = 0x1FC1B4000uLL;
        if (v51)
        {
          v57 = *&v123[v120[38]];
          if (v57)
          {
            v58 = *(v57 + 16);
            if (v58)
            {
              v59 = v57 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
              v60 = *(v111 + 72);
              v125 = *(v111 + 16);
              v126 = v60;
              do
              {
                v125(v54, v59, v52);
                v61 = objc_allocWithZone(*(v55 + 3192));
                v62 = v53;
                v63 = v56;
                v64 = v55;
                v65 = sub_258F09A50();
                (*v127)(v54, v52);
                v66 = [v61 initWithNSUUID_];

                v55 = v64;
                v56 = v63;
                v53 = v62;
                [v62 (v56 + 33)];

                v59 += v126;
                --v58;
              }

              while (v58);
            }
          }
        }

        v37 = v119;
        [v119 addDigests_];
        v38 = &selRef_setAssistantExperimentDigestReported_;
        v39 = v37;
        v33 = v121;
        v32 = v116;
        v10 = v54;
      }

      else
      {
        if ((v41 != 0x4F49544154434944 || v40 != 0xE90000000000004ELL) && (sub_258F0AD80() & 1) == 0)
        {
          goto LABEL_9;
        }

        v67 = [objc_allocWithZone(MEMORY[0x277D59318]) init];
        if (!v67)
        {
          goto LABEL_9;
        }

        v68 = v67;
        v69 = sub_258E3DFA8(v34);
        [v68 setDimensions_];

        v70 = [objc_allocWithZone(MEMORY[0x277D59310]) init];
        if (v70)
        {
          v71 = [objc_allocWithZone(MEMORY[0x277D59400]) init];
          v72 = v71;
          v73 = v120;
          if (v71)
          {
            v74 = (v34 + v120[23]);
            if ((v74[1] & 1) == 0)
            {
              [v71 setTotalTurnCount_];
            }

            v75 = (v34 + v73[24]);
            if ((v75[1] & 1) == 0)
            {
              [v72 setValidTurnCount_];
            }
          }

          [v70 setTurnCounts_];

          v76 = [objc_allocWithZone(MEMORY[0x277D593F0]) init];
          v77 = v76;
          if (v76)
          {
            v78 = (v34 + v73[25]);
            if ((v78[1] & 1) == 0)
            {
              [v76 setSiriTasksStarted_];
            }

            v79 = (v34 + v73[26]);
            if ((v79[1] & 1) == 0)
            {
              [v77 setSiriTasksCompleted_];
            }

            v80 = (v34 + v73[27]);
            if ((v80[1] & 1) == 0)
            {
              [v77 setFlowTasksStarted_];
            }

            v81 = (v34 + v73[28]);
            if ((v81[1] & 1) == 0)
            {
              [v77 setFlowTasksCompleted_];
            }
          }

          [v70 setTaskCounts_];

          v82 = [objc_allocWithZone(MEMORY[0x277D593A8]) init];
          v83 = v82;
          if (v82)
          {
            v84 = (v34 + v73[29]);
            if ((v84[1] & 1) == 0)
            {
              [v82 setReliabilityRequestCount_];
            }

            v85 = (v34 + v73[30]);
            if ((v85[1] & 1) == 0)
            {
              [v83 setReliabilityTurnCount_];
            }

            v86 = (v34 + v73[31]);
            if ((v86[1] & 1) == 0)
            {
              [v83 setClientErrorCount_];
            }

            v87 = (v34 + v73[32]);
            if ((v87[1] & 1) == 0)
            {
              [v83 setUndesiredResponseCount_];
            }

            v88 = (v34 + v73[33]);
            if ((v88[1] & 1) == 0)
            {
              [v83 setFatalResponseCount_];
            }

            v89 = (v34 + v73[34]);
            if ((v89[1] & 1) == 0)
            {
              [v83 setFailureResponseCount_];
            }

            v90 = (v34 + v73[35]);
            if ((v90[1] & 1) == 0)
            {
              [v83 setSiriUnavailableResponseCount_];
            }
          }

          [v70 setReliabilityCounts_];
        }

        v122 = v36;
        [v68 setCounts_];

        v91 = sub_258E3E254(v34);
        [v68 setTuples_];

        v92 = [objc_opt_self() sharedPreferences];
        v93 = [v92 longLivedIdentifierUploadingEnabled];

        v95 = v113;
        v94 = v114;
        v96 = v118;
        v97 = v68;
        if (v93)
        {
          v98 = *&v123[v120[38]];
          if (v98)
          {
            v99 = *(v98 + 16);
            if (v99)
            {
              v100 = v98 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
              v101 = *(v111 + 72);
              v125 = *(v111 + 16);
              v126 = v101;
              do
              {
                v102 = v96;
                v103 = v94;
                v125(v95, v100, v96);
                v104 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                v105 = v97;
                v106 = sub_258F09A50();
                (*v127)(v95, v102);
                v107 = [v104 initWithNSUUID_];

                v97 = v105;
                [v105 addTurnIds_];

                v96 = v102;
                v94 = v103;
                v100 += v126;
                --v99;
              }

              while (v99);
            }
          }
        }

        v108 = v112;
        [v112 addDigests_];
        v38 = &selRef_setDictationExperimentDigestsReported_;
        v39 = v108;
        v33 = v121;
        v32 = v116;
        v10 = v109;
        v53 = v97;
      }

      v36 = v122;
      v27 = v117;
      [v117 *v38];

      v34 = v123;
      v35 = v115;
    }

LABEL_9:
    ++v36;
    result = sub_258E73148(v34, type metadata accessor for ExperimentDigest);
    if (v36 == v35)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ODDIExperimentationSELFReporter()
{
  result = qword_27F989CB0;
  if (!qword_27F989CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E72F64()
{
  result = sub_258F0A370();
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

uint64_t sub_258E730E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E73148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258E731A8()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_280CC4A38);
  __swift_project_value_buffer(v0, qword_280CC4A38);
  return sub_258F0A360();
}

MetricsFramework::ODDIExperimentationWorkerError_optional __swiftcall ODDIExperimentationWorkerError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODDIExperimentationWorkerError.rawValue.getter()
{
  result = 0x74754F64656D6974;
  switch(*v0)
  {
    case 1:
      result = 0x7463657078656E75;
      break;
    case 2:
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 3:
    case 0xF:
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 4:
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6B72616D6B6F6F62;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x4E656C69466C7173;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x72576664556C7173;
      break;
    case 0xD:
      result = 0x78456664556C7173;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258E73498(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ODDIExperimentationWorkerError.rawValue.getter();
  v4 = v3;
  if (v2 == ODDIExperimentationWorkerError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_258F0AD80();
  }

  return v7 & 1;
}

uint64_t sub_258E73534()
{
  v1 = *v0;
  sub_258F0AE40();
  ODDIExperimentationWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E7359C()
{
  v2 = *v0;
  ODDIExperimentationWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258E73600()
{
  v1 = *v0;
  sub_258F0AE40();
  ODDIExperimentationWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258E73670@<X0>(unint64_t *a1@<X8>)
{
  result = ODDIExperimentationWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ODDIExperimentationWorker.Subtask.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_258F0ABE0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_258E7370C()
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E73780()
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E737D4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258F0ABE0();

  *a2 = v5 != 0;
  return result;
}

uint64_t ODDIExperimentationWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_258F0A770();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E73978, 0, 0);
}

uint64_t sub_258E73978()
{
  v105 = v0;
  if (qword_280CC4A30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_258F0A370();
  v3 = __swift_project_value_buffer(v2, qword_280CC4A38);
  v4 = v1;
  v5 = sub_258F0A350();
  v6 = sub_258F0A800();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v104[0] = v9;
    *v8 = 136315394;
    v10 = sub_258F09E80();
    v12 = sub_258DE3018(v10, v11, v104);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_258F09E90();
    v15 = sub_258DE3018(v13, v14, v104);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_258DD8000, v5, v6, "TaskId: %s, TaskName: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 88);
  v18 = *(v0 + 64);
  *v18 = 0;
  v19 = *MEMORY[0x277D81760];
  *(v0 + 216) = v19;
  v20 = sub_258F09E50();
  *(v0 + 120) = v20;
  v21 = *(v20 - 8);
  *(v0 + 128) = v21;
  v22 = *(v21 + 104);
  *(v0 + 136) = v22;
  *(v0 + 144) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v18, v19, v20);
  v23 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v24 = sub_258F0A4E0();
  v25 = [v23 initWithSuiteName_];
  *(v0 + 152) = v25;

  v26 = sub_258F09E80();
  v28 = v27;
  v29 = sub_258F09E90();
  sub_258E75518(v26, v28, v29, v30);

  v39 = sub_258DFBE24(&unk_286A28FF8);
  sub_258DE2184(&unk_286A29018, &qword_27F988B08, &unk_258F0CD90);
  if (v25)
  {
    v41 = *(v0 + 72);
    v40 = *(v0 + 80);
    v102 = v25;
    sub_258F09E80();
    v104[0] = sub_258F09E90();
    v104[1] = v42;

    MEMORY[0x259C9DEB0](46, 0xE100000000000000);

    MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F18C00);

    v43 = objc_allocWithZone(sub_258F09EA0());
    v44 = sub_258F09E70();
    *(v0 + 160) = v44;
    v45 = sub_258F09E00();
    *(v0 + 168) = v45;
    v46 = *(v45 - 8);
    *(v0 + 176) = v46;
    v47 = *(v46 + 64) + 15;
    v48 = swift_task_alloc();
    *(v0 + 184) = v48;
    v49 = v44;
    sub_258DFA2E0(v39);

    sub_258F09DF0();
    v50 = *(v21 + 64) + 15;
    v51 = swift_task_alloc();
    *(v0 + 192) = v51;
    v101 = (*(*v41 + 88) + **(*v41 + 88));
    v52 = *(*(*v41 + 88) + 4);
    v53 = swift_task_alloc();
    *(v0 + 200) = v53;
    *v53 = v0;
    v53[1] = sub_258E745D0;
    v54 = *(v0 + 72);

    return v101(v51, v102, v48, v3, 0xD00000000000002BLL, 0x8000000258F1CB20);
  }

  v62 = sub_258F0A350();
  v63 = sub_258F0A820();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_258DD8000, v62, v63, "Can't get user defaults initialized", v64, 2u);
    MEMORY[0x259C9EF40](v64, -1, -1);
  }

  sub_258E75C14();
  v37 = swift_allocError();
  *v65 = 5;
  swift_willThrow();
  *(v0 + 16) = v37;
  v31 = sub_258F09E20();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64) + 15;
  v34 = swift_task_alloc();
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v36 = (*(v32 + 88))(v34, v31);
    if (MEMORY[0x277D81740] && v36 == *MEMORY[0x277D81740])
    {

      v37 = *(v0 + 16);
      v38 = 3;
LABEL_36:
      v103 = v38;
      goto LABEL_37;
    }

    if (MEMORY[0x277D81748] && v36 == *MEMORY[0x277D81748])
    {

      v37 = *(v0 + 16);
      v38 = 4;
      goto LABEL_36;
    }

    (*(v32 + 8))(v34, v31);
  }

  *(v0 + 24) = v37;
  v56 = sub_258F0A1D0();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64) + 15;
  v59 = swift_task_alloc();
  v60 = v37;
  if (swift_dynamicCast())
  {
    v61 = (*(v57 + 88))(v59, v56);
    if (MEMORY[0x277D04530] && v61 == *MEMORY[0x277D04530])
    {

      v37 = *(v0 + 24);
      v38 = 6;
      goto LABEL_36;
    }

    if (MEMORY[0x277D04538] && v61 == *MEMORY[0x277D04538])
    {

      v37 = *(v0 + 24);
      v38 = 7;
      goto LABEL_36;
    }

    if (MEMORY[0x277D04540] && v61 == *MEMORY[0x277D04540])
    {

      v37 = *(v0 + 24);
      v38 = 8;
      goto LABEL_36;
    }

    (*(v57 + 8))(v59, v56);
  }

  *(v0 + 32) = v37;
  v66 = v37;
  if (!swift_dynamicCast())
  {

    *(v0 + 40) = v37;
    v67 = sub_258F09E60();
    v68 = *(v67 - 8);
    v69 = *(v68 + 64) + 15;
    v70 = swift_task_alloc();
    v71 = v37;
    if (swift_dynamicCast())
    {

      (*(v68 + 8))(v70, v67);

      v37 = *(v0 + 40);
      v38 = 2;
    }

    else
    {

      *(v0 + 48) = v37;
      v85 = sub_258F09E10();
      v86 = *(v85 - 8);
      v87 = *(v86 + 64) + 15;
      v88 = swift_task_alloc();
      v89 = v37;
      if (swift_dynamicCast())
      {

        (*(v86 + 8))(v88, v85);

        v103 = 0;
        v37 = *(v0 + 48);
        goto LABEL_37;
      }

      v90 = *(v0 + 112);
      v91 = *(v0 + 96);

      *(v0 + 56) = v37;
      v92 = v37;
      if (swift_dynamicCast())
      {
        v94 = *(v0 + 144);
        v93 = *(v0 + 152);
        v95 = *(v0 + 136);
        v97 = *(v0 + 112);
        v96 = *(v0 + 120);
        v98 = *(v0 + 96);
        v99 = *(v0 + 104);
        v100 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v100, v96);

        v95(v100, *MEMORY[0x277D81770], v96);
        (*(v99 + 8))(v97, v98);

        goto LABEL_38;
      }

      v38 = 1;
    }

    goto LABEL_36;
  }

  v103 = *(v0 + 220);
  v37 = *(v0 + 32);
LABEL_37:

  v73 = *(v0 + 144);
  v72 = *(v0 + 152);
  v74 = *(v0 + 128);
  v75 = *(v0 + 136);
  v76 = *(v0 + 120);
  v77 = *(v0 + 216);
  v78 = *(v0 + 64);
  v79 = *(v74 + 64) + 15;
  v80 = swift_task_alloc();
  sub_258E756F4();
  v81 = swift_allocError();
  *v82 = v103;

  (*(v74 + 8))(v78, v76);
  *v80 = v81;
  v75(v80, v77, v76);
  (*(v74 + 32))(v78, v80, v76);

LABEL_38:
  v83 = *(v0 + 112);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_258E745D0()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_258E74E54;
  }

  else
  {
    v3 = sub_258E746E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E746E4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  (*(v4 + 8))(v7, v3);
  (*(v4 + 32))(v7, v2, v3);

  v8 = sub_258F09E80();
  v10 = v9;
  v11 = sub_258F09E90();
  sub_258E75518(v8, v10, v11, v12);
  v13 = *(v0 + 160);
  v14 = *(v0 + 152);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  if (!v1)
  {

LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 16) = v1;
  v15 = sub_258F09E20();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v19 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v20 = (*(v16 + 88))(v18, v15);
    if (MEMORY[0x277D81740] && v20 == *MEMORY[0x277D81740])
    {

      v21 = 3;
LABEL_26:
      v64 = v21;
      goto LABEL_27;
    }

    if (MEMORY[0x277D81748] && v20 == *MEMORY[0x277D81748])
    {

      v21 = 4;
      goto LABEL_26;
    }

    (*(v16 + 8))(v18, v15);
  }

  *(v0 + 24) = v1;
  v22 = sub_258F0A1D0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64) + 15;
  v25 = swift_task_alloc();
  v26 = v1;
  if (swift_dynamicCast())
  {
    v27 = (*(v23 + 88))(v25, v22);
    if (MEMORY[0x277D04530] && v27 == *MEMORY[0x277D04530])
    {

      v21 = 6;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04538] && v27 == *MEMORY[0x277D04538])
    {

      v21 = 7;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04540] && v27 == *MEMORY[0x277D04540])
    {

      v21 = 8;
      goto LABEL_26;
    }

    (*(v23 + 8))(v25, v22);
  }

  *(v0 + 32) = v1;
  v28 = v1;
  if (swift_dynamicCast())
  {

    v64 = *(v0 + 220);
LABEL_27:
    v35 = *(v0 + 144);
    v34 = *(v0 + 152);
    v36 = *(v0 + 128);
    v37 = *(v0 + 136);
    v38 = *(v0 + 120);
    v39 = *(v0 + 216);
    v40 = *(v0 + 64);
    v41 = *(v36 + 64) + 15;
    v42 = swift_task_alloc();
    sub_258E756F4();
    v43 = swift_allocError();
    *v44 = v64;

    (*(v36 + 8))(v40, v38);
    *v42 = v43;
    v37(v42, v39, v38);
    (*(v36 + 32))(v40, v42, v38);
    goto LABEL_28;
  }

  *(v0 + 40) = v1;
  v29 = sub_258F09E60();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64) + 15;
  v32 = swift_task_alloc();
  v33 = v1;
  if (swift_dynamicCast())
  {

    (*(v30 + 8))(v32, v29);

    v21 = 2;
    goto LABEL_26;
  }

  *(v0 + 48) = v1;
  v48 = sub_258F09E10();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64) + 15;
  v51 = swift_task_alloc();
  v52 = v1;
  if (swift_dynamicCast())
  {

    (*(v49 + 8))(v51, v48);

    v64 = 0;
    goto LABEL_27;
  }

  v53 = *(v0 + 112);
  v54 = *(v0 + 96);

  *(v0 + 56) = v1;
  v55 = v1;
  if (!swift_dynamicCast())
  {

    v21 = 1;
    goto LABEL_26;
  }

  v57 = *(v0 + 144);
  v56 = *(v0 + 152);
  v58 = *(v0 + 136);
  v59 = *(v0 + 112);
  v60 = *(v0 + 120);
  v61 = *(v0 + 96);
  v62 = *(v0 + 104);
  v63 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v63, v60);

  v58(v63, *MEMORY[0x277D81770], v60);
  (*(v62 + 8))(v59, v61);

LABEL_29:
  v45 = *(v0 + 112);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_258E74E54()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);

  (*(v4 + 8))(v1, v3);

  v6 = *(v0 + 208);
  *(v0 + 16) = v6;
  v7 = (v0 + 16);
  v8 = sub_258F09E20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v13 = (*(v9 + 88))(v11, v8);
    if (MEMORY[0x277D81740] && v13 == *MEMORY[0x277D81740])
    {

      v6 = *v7;
      v14 = 3;
LABEL_24:
      v57 = v14;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v13 == *MEMORY[0x277D81748])
    {

      v6 = *v7;
      v14 = 4;
      goto LABEL_24;
    }

    (*(v9 + 8))(v11, v8);
  }

  *(v0 + 24) = v6;
  v15 = sub_258F0A1D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v19 = v6;
  if (swift_dynamicCast())
  {
    v20 = (*(v16 + 88))(v18, v15);
    if (MEMORY[0x277D04530] && v20 == *MEMORY[0x277D04530])
    {

      v6 = *(v0 + 24);
      v14 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v20 == *MEMORY[0x277D04538])
    {

      v6 = *(v0 + 24);
      v14 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v20 == *MEMORY[0x277D04540])
    {

      v6 = *(v0 + 24);
      v14 = 8;
      goto LABEL_24;
    }

    (*(v16 + 8))(v18, v15);
  }

  *(v0 + 32) = v6;
  v21 = v6;
  if (swift_dynamicCast())
  {

    v57 = *(v0 + 220);
    v6 = *(v0 + 32);
LABEL_25:

    v28 = *(v0 + 144);
    v27 = *(v0 + 152);
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    v31 = *(v0 + 120);
    v32 = *(v0 + 216);
    v33 = *(v0 + 64);
    v34 = *(v29 + 64) + 15;
    v35 = swift_task_alloc();
    sub_258E756F4();
    v36 = swift_allocError();
    *v37 = v57;

    (*(v29 + 8))(v33, v31);
    *v35 = v36;
    v30(v35, v32, v31);
    (*(v29 + 32))(v33, v35, v31);

    goto LABEL_26;
  }

  *(v0 + 40) = v6;
  v22 = sub_258F09E60();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64) + 15;
  v25 = swift_task_alloc();
  v26 = v6;
  if (swift_dynamicCast())
  {

    (*(v23 + 8))(v25, v22);

    v6 = *(v0 + 40);
    v14 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v6;
  v41 = sub_258F09E10();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64) + 15;
  v44 = swift_task_alloc();
  v45 = v6;
  if (swift_dynamicCast())
  {

    (*(v42 + 8))(v44, v41);

    v57 = 0;
    v6 = *(v0 + 48);
    goto LABEL_25;
  }

  v46 = *(v0 + 112);
  v47 = *(v0 + 96);

  *(v0 + 56) = v6;
  v48 = v6;
  if (!swift_dynamicCast())
  {

    v14 = 1;
    goto LABEL_24;
  }

  v50 = *(v0 + 144);
  v49 = *(v0 + 152);
  v51 = *(v0 + 136);
  v53 = *(v0 + 112);
  v52 = *(v0 + 120);
  v54 = *(v0 + 96);
  v55 = *(v0 + 104);
  v56 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v56, v52);

  v51(v56, *MEMORY[0x277D81770], v52);
  (*(v55 + 8))(v53, v54);

LABEL_26:
  v38 = *(v0 + 112);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_258E75518(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    if (qword_280CC4A30 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_280CC4A38);

    v10 = sub_258F0A350();
    v11 = sub_258F0A800();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258DE3018(a1, a2, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258DE3018(a3, a4, &v14);
      _os_log_impl(&dword_258DD8000, v10, v11, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    sub_258F0A770();
    sub_258DFCC98();
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_258E756F4()
{
  result = qword_27F989CC0;
  if (!qword_27F989CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CC0);
  }

  return result;
}

uint64_t sub_258E75760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_258F0A370();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E75828, 0, 0);
}

uint64_t sub_258E75828()
{
  v1 = v0[6];
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIExperimentationTaskExecutor: Call ODDIExperimentation", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v0[12] = v13;
  (*(v6 + 16))(v5, v10, v8);
  v14 = type metadata accessor for ODDIExperimentationPlugin();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v0[2] = ODDIExperimentationPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989CD0, &unk_258F12548);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_258F09E40();
  v0[13] = v21;
  if (v21)
  {
    v22 = v0[5];
    v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v24 = swift_task_alloc();
    v0[14] = v24;
    v25 = sub_258F09E00();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v24, v22, v25);
    (*(v26 + 56))(v24, 0, 1, v25);
    v27 = *(MEMORY[0x277D81750] + 4);
    v28 = swift_task_alloc();
    v0[15] = v28;
    *v28 = v0;
    v28[1] = sub_258E4ADA8;

    return MEMORY[0x2821ED078](v13, v24);
  }

  else
  {
    v29 = v0[3];
    v30 = sub_258F09E50();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v13, 1, 1, v30);
    (*(v31 + 104))(v29, *MEMORY[0x277D81758], v30);
    v33 = v0[11];
    v32 = v0[12];

    v34 = v0[1];

    return v34();
  }
}

unint64_t sub_258E75C14()
{
  result = qword_27F989CC8;
  if (!qword_27F989CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CC8);
  }

  return result;
}

unint64_t sub_258E75C6C()
{
  result = qword_27F989CD8;
  if (!qword_27F989CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CD8);
  }

  return result;
}

unint64_t sub_258E75CC8()
{
  result = qword_27F989CE0;
  if (!qword_27F989CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CE0);
  }

  return result;
}

unint64_t sub_258E75D20()
{
  result = qword_27F989CE8;
  if (!qword_27F989CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CE8);
  }

  return result;
}

uint64_t type metadata accessor for ODDIExperimentationWorker()
{
  result = qword_280CC4E58;
  if (!qword_280CC4E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E75DF8()
{
  result = sub_258F09B00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ODDIExperimentationTaskExecutor.executeODDIExperimentation(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 88);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258DE1DC4;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t ODDIMetricsBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t ODDIMetricsBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258E76120(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(type metadata accessor for DeviceUsageMetrics(0) - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *(a1 + 16);
  v2[4] = v6;
  v2[5] = v7;

  return MEMORY[0x2822009F8](sub_258E761E4, 0, 0);
}

uint64_t sub_258E761E4()
{
  v1 = v0[2] + OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: ODDIMetricsBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[5];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[3];
    v8 = *(v0[2] + 16);
    v9 = v0[5] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      v11 = v0[4];
      sub_258E76CD0(v9, v11);
      v12 = _s16MetricsFramework24ODDIMetricsBiomeReporterC06createD5Event05usageA0So015BMSiriScorecardA0CAA011DeviceUsageA0V_tFZ_0(v11);
      sub_258E76D34(v11);
      sub_258F09B90();

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_258E76340()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t ODDIMetricsBiomeReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t ODDIMetricsBiomeReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id _s16MetricsFramework24ODDIMetricsBiomeReporterC06createD5Event05usageA0So015BMSiriScorecardA0CAA011DeviceUsageA0V_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceUsageMetrics(0);
  v3 = *(a1 + v2[37]);
  if (v3)
  {
    v112 = MEMORY[0x277D84F90];
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      do
      {
        v6 = *v5++;
        if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_])
        {
          MEMORY[0x259C9DF50]();
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v7 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_258F0A6D0();
          }

          sub_258F0A700();
        }

        --v4;
      }

      while (v4);
    }
  }

  v94 = _s16MetricsFramework13EventMetadataV07toBiomeC009scorecardD0So015BMSiriScorecardacD0CACSg_tFZ_0(a1);
  v8 = (a1 + v2[6]);
  v9 = v8[1];
  v80 = *v8;
  v10 = (a1 + v2[7]);
  v87 = v9;
  if (v10[1])
  {
    v93 = 0;
  }

  else
  {
    v11 = *v10;
    v93 = sub_258F0AE20();
  }

  if (*(a1 + v2[8]) == 3)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_258F0A7D0();
  }

  v12 = (a1 + v2[9]);
  v13 = v12[1];
  v79 = *v12;
  v14 = (a1 + v2[10]);
  v85 = v13;
  if (v14[1])
  {
    v91 = 0;
  }

  else
  {
    v15 = *v14;
    v91 = sub_258F0AE20();
  }

  v16 = (a1 + v2[11]);
  if (v16[1])
  {
    v90 = 0;
  }

  else
  {
    v17 = *v16;
    v90 = sub_258F0AE20();
  }

  v18 = (a1 + v2[12]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (a1 + v2[13]);
  v78 = *v21;
  v22 = v21[1];
  v23 = (a1 + v2[14]);
  v82 = v20;
  v84 = v22;
  if (v23[1])
  {
    v109 = 0;
  }

  else
  {
    v24 = *v23;
    v109 = sub_258F0AE20();
  }

  v25 = (a1 + v2[15]);
  if (v25[1])
  {
    v89 = 0;
  }

  else
  {
    v26 = *v25;
    v89 = sub_258F0AE20();
  }

  v27 = v2[16];
  v28 = *(a1 + v27);
  if (v28)
  {
    [*(a1 + v27) languageCode];
    v29 = sub_258F0AE20();
    [v28 countryCode];
    v28 = sub_258F0AE20();
  }

  else
  {
    v29 = 0;
  }

  v111 = [objc_allocWithZone(MEMORY[0x277CF15D0]) initWithLanguageCode:v29 countryCode:v28];

  v30 = v2[17];
  v31 = *(a1 + v30);
  if (v31)
  {
    [*(a1 + v30) languageCode];
    v32 = sub_258F0AE20();
    [v31 countryCode];
    v31 = sub_258F0AE20();
  }

  else
  {
    v32 = 0;
  }

  v110 = [objc_allocWithZone(MEMORY[0x277CF15D0]) initWithLanguageCode:v32 countryCode:v31];

  v33 = (a1 + v2[18]);
  v34 = v33[1];
  v77 = *v33;
  v35 = (a1 + v2[19]);
  v81 = v34;
  if (v35[1])
  {
    v104 = 0;
  }

  else
  {
    v36 = *v35;
    v104 = sub_258F0AEB0();
  }

  v37 = (a1 + v2[20]);
  if (v37[1])
  {
    v102 = 0;
  }

  else
  {
    v38 = *v37;
    v102 = sub_258F0AEB0();
  }

  v39 = (a1 + v2[21]);
  if (v39[1])
  {
    v101 = 0;
  }

  else
  {
    v40 = *v39;
    v101 = sub_258F0AEB0();
  }

  v41 = (a1 + v2[22]);
  if (v41[1])
  {
    v99 = 0;
  }

  else
  {
    v42 = *v41;
    v99 = sub_258F0AEB0();
  }

  v43 = (a1 + v2[23]);
  if (v43[1])
  {
    v108 = 0;
  }

  else
  {
    v44 = *v43;
    v108 = sub_258F0AEB0();
  }

  v45 = (a1 + v2[24]);
  if (v45[1])
  {
    v107 = 0;
  }

  else
  {
    v46 = *v45;
    v107 = sub_258F0AEB0();
  }

  v47 = (a1 + v2[25]);
  if (v47[1])
  {
    v106 = 0;
  }

  else
  {
    v48 = *v47;
    v106 = sub_258F0AEB0();
  }

  v49 = (a1 + v2[26]);
  if (v49[1])
  {
    v105 = 0;
  }

  else
  {
    v50 = *v49;
    v105 = sub_258F0AEB0();
  }

  v51 = (a1 + v2[27]);
  if (v51[1])
  {
    v103 = 0;
  }

  else
  {
    v52 = *v51;
    v103 = sub_258F0AEB0();
  }

  v53 = (a1 + v2[28]);
  if (v53[1])
  {
    v100 = 0;
  }

  else
  {
    v54 = *v53;
    v100 = sub_258F0AEB0();
  }

  v55 = (a1 + v2[29]);
  if (v55[1])
  {
    v98 = 0;
  }

  else
  {
    v56 = *v55;
    v98 = sub_258F0AEB0();
  }

  v57 = (a1 + v2[30]);
  if (v57[1])
  {
    v97 = 0;
  }

  else
  {
    v58 = *v57;
    v97 = sub_258F0AEB0();
  }

  v59 = (a1 + v2[31]);
  if (v59[1])
  {
    v95 = 0;
  }

  else
  {
    v60 = *v59;
    v95 = sub_258F0AEB0();
  }

  v61 = (a1 + v2[33]);
  v63 = *v61;
  v62 = v61[1];
  v64 = (a1 + v2[34]);
  if (v64[1])
  {
    v96 = 0;
  }

  else
  {
    v65 = *v64;
    v96 = sub_258F0AE20();
  }

  if (*(a1 + v2[36]) == 2)
  {
    v66 = 0;
  }

  else
  {
    v66 = sub_258F0A730();
  }

  v67 = (a1 + v2[38]);
  if (v67[1])
  {
    v68 = 0;
    if (v87)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v71 = *v67;
    v68 = sub_258F0AE20();
    if (v87)
    {
LABEL_80:
      v69 = sub_258F0A4E0();
      if (v85)
      {
        goto LABEL_81;
      }

LABEL_85:
      v88 = 0;
      if (v82)
      {
        goto LABEL_82;
      }

      goto LABEL_86;
    }
  }

  v69 = 0;
  if (!v85)
  {
    goto LABEL_85;
  }

LABEL_81:
  v88 = sub_258F0A4E0();
  if (v82)
  {
LABEL_82:
    v70 = sub_258F0A4E0();
    goto LABEL_87;
  }

LABEL_86:
  v70 = 0;
LABEL_87:
  if (v84)
  {
    v72 = sub_258F0A4E0();
    if (v81)
    {
      goto LABEL_89;
    }

LABEL_92:
    v73 = 0;
    if (v62)
    {
      goto LABEL_90;
    }

LABEL_93:
    v74 = 0;
    goto LABEL_94;
  }

  v72 = 0;
  if (!v81)
  {
    goto LABEL_92;
  }

LABEL_89:
  v73 = sub_258F0A4E0();
  if (!v62)
  {
    goto LABEL_93;
  }

LABEL_90:
  v74 = sub_258F0A4E0();
LABEL_94:
  v75 = objc_allocWithZone(MEMORY[0x277CF15B8]);
  sub_258E76E10();
  v86 = sub_258F0A6A0();

  v83 = [v75 initWithEventMetadata:v94 deviceType:v69 programCode:v93 productId:v92 systemBuild:v88 dataSharingOptInStatus:v91 viewInterface:v90 audioInterfaceVendorId:v70 audioInterfaceProductId:v72 asrLocation:v109 nlLocation:v89 siriInputLocale:v111 dictationLocale:v110 subDomain:v73 totalTurnCount:v104 validTurnCount:v102 siriTasksStarted:v101 siriTasksCompleted:v99 flowTasksStarted:v108 flowTasksCompleted:v107 reliabilityRequestCount:v106 reliabilityTurnCount:v105 clientErrorCount:v103 undesiredResponseCount:v100 fatalResponseCount:v98 failureResponseCount:v97 siriUnavailableResponseCount:v95 siriResponseId:v74 responseCategory:v96 isIntelligenceEngineRequest:v66 intelligenceEngineRouting:v86 invocationSource:v68];

  return v83;
}

uint64_t sub_258E76CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUsageMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E76D34(uint64_t a1)
{
  v2 = type metadata accessor for DeviceUsageMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ODDIMetricsBiomeReporter()
{
  result = qword_27F989CF8;
  if (!qword_27F989CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258E76E10()
{
  result = qword_27F988A10;
  if (!qword_27F988A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F988A10);
  }

  return result;
}

uint64_t ODDIMetricsResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ODDIMetricsResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ODDIMetricsResults.metricsResults.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ODDIMetricsResults.init(eventStreamMetadata:conversationStreamMetadata:metricsResults:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_258E76F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280CC6078;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *ODDIMetricsCalculator.__allocating_init(concluder:logger:bookmarkService:)(char *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = sub_258F0A370();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 80);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v10, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v14[2];
  v30 = a1;
  v19(v18, a1, v13);
  v20 = *(v7 + 16);
  v29 = a2;
  v20(v12, a2, v6);
  (*(*(v3 + 88) + 16))(v13, *(v3 + 88));
  v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v22 = sub_258F0A4E0();

  v23 = [v21 initWithSuiteName_];

  if (!v23)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  sub_258F09F30();
  sub_258F09F20();
  v24 = sub_258E7EB2C(v18, v12, v28, v23);

  v25 = v14[1];
  v25(v18, v13);
  (*(v7 + 8))(v29, v6);
  v25(v30, v13);
  return v24;
}

unint64_t sub_258E772E0(uint64_t a1)
{
  sub_258DE20C0(a1, v25, &qword_27F989868, &unk_258F12D70);
  if (v26)
  {
    if (swift_dynamicCast())
    {
      v2 = 0;
      v3 = v22;
      return v3 | (v2 << 32);
    }
  }

  else
  {
    sub_258DE2184(v25, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, v20, &qword_27F989868, &unk_258F12D70);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DA0, &qword_258F12D80);
    if (swift_dynamicCast())
    {
      if (*(&v23 + 1))
      {
        sub_258DDA76C(&v22, v25);
        v4 = v26;
        v5 = __swift_project_boxed_opaque_existential_1(v25, v26);
        v6 = *(*(v4 - 8) + 64);
        MEMORY[0x28223BE20](v5, v5);
        (*(v8 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_258E7F258();
        sub_258F0AB80();
        v3 = v22;
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        v2 = 0;
        return v3 | (v2 << 32);
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }
  }

  else
  {
    sub_258DE2184(v20, &qword_27F989868, &unk_258F12D70);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
  }

  sub_258DE2184(&v22, &qword_27F989D98, &unk_258F12A80);
  sub_258DE20C0(a1, &v22, &qword_27F989868, &unk_258F12D70);
  if (*(&v23 + 1))
  {
    sub_258DEB8B8(&v22, v25);
    sub_258DE4090(v25, &v22);
    v9 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      sub_258DE4090(&v22, v20);
      v13 = sub_258F0A550();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      v16 = sub_258DE3018(v13, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_258DD8000, v9, v10, "#ODDIMetricsCalculator: value of the unexpected type casting to UInt32: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    sub_258DE2184(&v22, &qword_27F989868, &unk_258F12D70);
  }

  v3 = 0;
  v2 = 1;
  return v3 | (v2 << 32);
}

uint64_t sub_258E77690(uint64_t a1)
{
  sub_258DE20C0(a1, v24, &qword_27F989868, &unk_258F12D70);
  if (v25)
  {
    if (swift_dynamicCast())
    {
      return v21;
    }
  }

  else
  {
    sub_258DE2184(v24, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, v19, &qword_27F989868, &unk_258F12D70);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DA0, &qword_258F12D80);
    if (swift_dynamicCast())
    {
      if (*(&v22 + 1))
      {
        sub_258DDA76C(&v21, v24);
        v3 = v25;
        v4 = __swift_project_boxed_opaque_existential_1(v24, v25);
        v5 = *(*(v3 - 8) + 64);
        MEMORY[0x28223BE20](v4, v4);
        (*(v7 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_258E7F204();
        sub_258F0AB80();
        v8 = v21;
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        return v8;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    sub_258DE2184(v19, &qword_27F989868, &unk_258F12D70);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
  }

  sub_258DE2184(&v21, &qword_27F989D98, &unk_258F12A80);
  sub_258DE20C0(a1, v24, &qword_27F989868, &unk_258F12D70);
  if (v25)
  {
    result = swift_dynamicCast();
    if (result)
    {
      if ((v21 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (*&v21 > -1.0)
      {
        if (*&v21 < 1.84467441e19)
        {
          return *&v21;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_258DE2184(v24, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, &v21, &qword_27F989868, &unk_258F12D70);
  if (*(&v22 + 1))
  {
    sub_258DEB8B8(&v21, v24);
    sub_258DE4090(v24, &v21);
    v9 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      sub_258DE4090(&v21, v19);
      v13 = sub_258F0A550();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(&v21);
      v16 = sub_258DE3018(v13, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_258DD8000, v9, v10, "#ODDIMetricsCalculator: value of the unexpected type casting to UInt64: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    sub_258DE2184(&v21, &qword_27F989868, &unk_258F12D70);
  }

  return 0;
}

uint64_t sub_258E77ADC(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v2[44] = *v1;
  v3 = sub_258F09B00();
  v2[45] = v3;
  v4 = *(v3 - 8);
  v2[46] = v4;
  v5 = *(v4 + 64) + 15;
  v2[47] = swift_task_alloc();
  v6 = sub_258F09A20();
  v2[48] = v6;
  v7 = *(v6 - 8);
  v2[49] = v7;
  v2[50] = *(v7 + 64);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E77C70, 0, 0);
}

uint64_t sub_258E77C70()
{
  v104 = v0;
  v1 = v0[43];
  v0[58] = qword_280CC6078;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsCalculator: SQL calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v0[43];
  v5 = v0[44];

  v7 = *(v6 + qword_280CC6070);
  v8 = *(v5 + 80);
  v102 = *(v5 + 88);
  v79 = *(v102 + 24);
  (v79)(v8);
  v9 = sub_258F0A4E0();

  v82 = v7;
  v10 = [v7 BOOLForKey_];

  v11 = sub_258F0A350();
  v12 = sub_258F0A810();
  if (os_log_type_enabled(v11, v12))
  {
    if (v10)
    {
      v13 = "#ODDIMetricsCalculator: Include current date data for aggregation.";
    }

    else
    {
      v13 = "#ODDIMetricsCalculator: current date data NOT included for aggregation.";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_258DD8000, v11, v12, v13, v14, 2u);
    MEMORY[0x259C9EF40](v14, -1, -1);
  }

  v15 = v0[57];
  v16 = v0[46];
  v17 = v0[47];
  v96 = v0[56];
  v98 = v0[45];
  v93 = v0[43];

  v18 = swift_allocObject();
  v0[59] = v18;
  v91 = v18;
  *(v18 + 16) = MEMORY[0x277D84F90];
  v19 = swift_allocObject();
  v0[60] = v19;
  v90 = v19;
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v0[61] = v20;
  v89 = v20;
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  v0[62] = v21;
  v92 = v21;
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  v0[63] = v22;
  v88 = v22;
  *(v22 + 16) = 0;
  v23 = swift_allocObject();
  v0[64] = v23;
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  v0[65] = v24;
  *(v24 + 16) = 0;
  sub_258F09B50();
  v101 = v8;
  v25 = type metadata accessor for ODDIMetricsCalculator();
  v0[66] = v25;
  v0[67] = swift_getWitnessTable();
  sub_258E3B9F0();
  sub_258F09930();
  v26 = *(v16 + 8);
  v0[68] = v26;
  v0[69] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v17, v98);
  WitnessTable = swift_getWitnessTable();
  v28 = sub_258E3A5B0(v25, WitnessTable);
  v0[70] = v28;
  v29 = v26;
  v77 = v24;
  v78 = v28;
  v94 = v23;
  v79();
  v30 = sub_258F0A4E0();

  v31 = [v82 BOOLForKey_];

  v32 = v0[55];
  if (v31)
  {
    v33 = v0[55];
    sub_258F09A10();
  }

  else
  {
    v34 = v0[47];
    v35 = v0[45];
    v36 = v0[43];
    sub_258E3B9F0();
    sub_258F09BB0();
    v29(v34, v35);
  }

  v37 = *(v0[49] + 16);
  v37(v0[54], v0[55], v0[48]);
  v38 = sub_258F0A350();
  v39 = sub_258F0A800();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[54];
  v43 = v0[48];
  v42 = v0[49];
  if (v40)
  {
    v99 = v37;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v103 = v45;
    *v44 = 136315138;
    sub_258DF40CC();
    v46 = sub_258F0AD60();
    v48 = v47;
    (*(v42 + 8))(v41, v43);
    v49 = sub_258DE3018(v46, v48, &v103);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_258DD8000, v38, v39, "#ODDIMetricsCalculator: EndTime: %s.", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x259C9EF40](v45, -1, -1);
    v50 = v44;
    v37 = v99;
    MEMORY[0x259C9EF40](v50, -1, -1);
  }

  else
  {

    (*(v42 + 8))(v41, v43);
  }

  v51 = v0[56];
  v52 = v0[55];
  v54 = v0[52];
  v53 = v0[53];
  v76 = v53;
  v81 = v54;
  v83 = v0[57];
  v85 = v0[50];
  v80 = v0[49];
  v55 = v0[48];
  v56 = v0[43];
  v57 = sub_258F0A0E0();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  sub_258F0A0D0();
  v100 = sub_258F0A0B0();
  v0[71] = v100;

  v87 = *(*v56 + 136);
  v60 = v56;
  v61 = v55;
  v37(v53, v51, v55);
  v37(v54, v83, v55);
  v62 = *(v80 + 80);
  v63 = (v62 + 40) & ~v62;
  v64 = v85 + 7;
  v65 = (v63 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = ((v86 + 15) & 0xFFFFFFFFFFFFFFF8);
  v67 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v62 + v67 + 8) & ~v62;
  v75 = (v68 + v64) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v0[72] = v69;
  *(v69 + 16) = v101;
  *(v69 + 24) = v102;
  *(v69 + 32) = v60;
  v70 = *(v80 + 32);
  v70(v69 + v63, v76, v61);
  *(v69 + v65) = v94;
  *(v69 + v97) = v77;
  *(v69 + v66) = v90;
  *(v69 + v86) = v89;
  *&v84[v69] = v92;
  *(v69 + v67) = v88;
  v70(v69 + v68, v81, v61);
  *(v69 + v75) = v91;
  v71 = *(v102 + 48);

  v95 = (v71 + *v71);
  v72 = v71[1];
  v73 = swift_task_alloc();
  v0[73] = v73;
  *v73 = v0;
  v73[1] = sub_258E78630;

  return v95(v78, v100, sub_258E7EBB0, v69, v101, v102);
}

uint64_t sub_258E78630()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 576);
  v6 = *(v2 + 568);

  if (v0)
  {
    v7 = sub_258E78CF4;
  }

  else
  {
    v7 = sub_258E78794;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_258E78794()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[43];

  v4 = sub_258F0A350();
  v5 = sub_258F0A810();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[59];
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(*(v6 + 16) + 16);

    _os_log_impl(&dword_258DD8000, v4, v5, "#ODDIMetricsCalculator: Query yielded %ld results", v7, 0xCu);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  else
  {
    v8 = v0[59];
  }

  v37 = v0[71];
  v30 = v0[70];
  v33 = v0[68];
  v34 = v0[69];
  v9 = v0[67];
  v10 = v0[66];
  v44 = v0[65];
  v11 = v0[63];
  v12 = v0[64];
  v13 = v0[61];
  v14 = v0[62];
  v15 = v0[60];
  v39 = v0[59];
  v38 = v0[57];
  v35 = v0[55];
  v36 = v0[56];
  v41 = v0[54];
  v42 = v0[53];
  v43 = v0[52];
  v31 = v0[49];
  v32 = v0[48];
  v27 = v0[47];
  v28 = v0[51];
  v29 = v0[45];
  v16 = v0[43];
  v40 = v0[42];
  swift_beginAccess();
  sub_258E38C54(*(v15 + 16), 0x69737361206C696ELL, 0xEF6449746E617473, v10, v9);
  swift_beginAccess();
  sub_258E38C54(*(v11 + 16), 0xD000000000000014, 0x8000000258F1CBD0, v10, v9);
  swift_beginAccess();
  v17 = *(v12 + 16);
  v0[6] = v17;
  v26 = v17;
  v0[7] = 0xD000000000000021;
  v0[8] = 0x8000000258F1C520;
  swift_beginAccess();
  v25 = *(v13 + 16);
  v0[9] = v25;
  v0[10] = 0xD00000000000001CLL;
  v0[11] = 0x8000000258F1C550;
  swift_beginAccess();
  v18 = *(v14 + 16);
  v0[12] = v18;
  v0[13] = 0xD00000000000001ALL;
  v0[14] = 0x8000000258F1CBF0;
  swift_beginAccess();
  v24 = *(v44 + 16);
  v0[15] = v24;
  v0[16] = 0xD00000000000002CLL;
  v0[17] = 0x8000000258F1C570;

  sub_258E7E58C(v26, 0xD000000000000021, 0x8000000258F1C520, v16);

  sub_258E7E58C(v25, 0xD00000000000001CLL, 0x8000000258F1C550, v16);

  sub_258E7E58C(v18, 0xD00000000000001ALL, 0x8000000258F1CBF0, v16);

  sub_258E7E58C(v24, 0xD00000000000002CLL, 0x8000000258F1C570, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
  swift_arrayDestroy();
  sub_258F0A0F0();
  sub_258E3B9F0();
  sub_258F09BB0();
  v33(v27, v29);
  v19 = sub_258F09B60();
  v20 = *(v31 + 8);
  v20(v28, v32);

  v20(v35, v32);
  v20(v36, v32);
  v20(v38, v32);
  swift_beginAccess();
  v21 = *(v39 + 16);

  *v40 = MEMORY[0x277D84F90];
  v40[1] = v19;
  v40[2] = v21;

  v22 = v0[1];

  return v22();
}

uint64_t sub_258E78CF4()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 440);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);

  v5 = *(v4 + 8);
  v5(v2, v3);
  v22 = *(v0 + 592);
  v6 = *(v0 + 520);
  v7 = *(v0 + 512);
  v14 = *(v0 + 504);
  v15 = *(v0 + 496);
  v9 = *(v0 + 472);
  v8 = *(v0 + 480);
  v10 = *(v0 + 456);
  v16 = *(v0 + 488);
  v17 = *(v0 + 440);
  v18 = *(v0 + 432);
  v19 = *(v0 + 424);
  v20 = *(v0 + 416);
  v21 = *(v0 + 408);
  v11 = *(v0 + 384);
  v5(*(v0 + 448), v11);
  v5(v10, v11);

  v12 = *(v0 + 8);

  return v12();
}

void sub_258E78E84(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t *a9, void *a10, uint64_t **a11)
{
  v12 = v11;
  v234 = a8;
  v235 = a7;
  v236 = a6;
  v233 = a5;
  v246 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v237 = v229 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v229 - v22;
  v24 = type metadata accessor for DeviceUsageMetrics(0);
  v240 = *(v24 - 8);
  v25 = *(v240 + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v29 = v229 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = v229 - v31;
  v244 = type metadata accessor for EventMetadata(0);
  v242 = *(v244 - 8);
  v33 = *(v242 + 64);
  MEMORY[0x28223BE20](v244, v34);
  v251 = v229 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v36 - 8, v38);
  v245 = v229 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v248 = v229 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v249 = v229 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v247 = v229 - v48;
  v238 = type metadata accessor for CommonDigestElements();
  v49 = *(*(v238 - 8) + 64);
  MEMORY[0x28223BE20](v238, v50);
  v265 = v229 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = qword_280CC6078;

  v252 = a2;
  v250 = v52;
  v53 = sub_258F0A350();
  v54 = sub_258F0A810();

  v55 = os_log_type_enabled(v53, v54);
  v241 = v32;
  v239 = v29;
  v243 = v23;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = v12;
    v58 = swift_slowAlloc();
    v262 = v58;
    *v56 = 136315138;
    v59 = sub_258F0A420();
    v61 = sub_258DE3018(v59, v60, &v262);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_258DD8000, v53, v54, "ODDMetrics row data: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v62 = v58;
    v12 = v57;
    MEMORY[0x259C9EF40](v62, -1, -1);
    MEMORY[0x259C9EF40](v56, -1, -1);
  }

  v63 = v252;
  v64 = v252;
  v65 = sub_258E2ACAC(a1, a3, 0xD000000000000026, 0x8000000258F1CC20);
  v67 = v65;
  if ((v66 & 0x10000) != 0)
  {

    return;
  }

  if (v66)
  {
    v68 = v66;
    v64 = v246;
    swift_beginAccess();
    if (__OFADD__(*v64, 1))
    {
      __break(1u);
      goto LABEL_167;
    }

    ++*v64;
    LOWORD(v66) = v68;
  }

  if ((v66 & 0x100) != 0)
  {
    v69 = v233;
    swift_beginAccess();
    if (!__OFADD__(*v69, 1))
    {
      ++*v69;
      goto LABEL_10;
    }

LABEL_167:
    __break(1u);
LABEL_168:
    if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
    {
      v119 = 10;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
    {
      v119 = 11;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
    {
      v119 = 12;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
    {
      v119 = 13;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
    {
      v119 = 14;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
    {
      v119 = 15;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
    {
      v119 = 16;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
    {
      v119 = 17;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
    {
      v119 = 18;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
    {
      v119 = 19;
      goto LABEL_356;
    }

LABEL_189:
    if ([v64 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
    {
      v119 = 20;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
    {
      v119 = 21;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
    {
      v119 = 22;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
    {
      v119 = 23;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
    {
      v119 = 24;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
    {
      v119 = 25;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
    {
      v119 = 26;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
    {
      v119 = 27;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
    {
      v119 = 28;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
    {
      v119 = 29;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
    {
      v119 = 30;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
    {
      v119 = 31;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
    {
      v119 = 32;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
    {
      v119 = 33;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
    {
      v119 = 34;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
    {
      v119 = 35;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
    {
      v119 = 36;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
    {
      v119 = 37;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
    {
      v119 = 38;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
    {
      v119 = 39;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
    {
      v119 = 40;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
    {
      v119 = 41;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
    {
      v119 = 42;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
    {
      v119 = 43;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
    {
      v119 = 44;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
    {
      v119 = 45;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
    {
      v119 = 46;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
    {
      v119 = 47;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
    {
      v119 = 48;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
    {
      v119 = 49;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
    {
      v119 = 50;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
    {
      v119 = 51;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
    {
      v119 = 52;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
    {
      v119 = 53;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
    {
      v119 = 54;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
    {
      v119 = 55;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
    {
      v119 = 56;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
    {
      v119 = 57;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
    {
      v119 = 58;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
    {
      v119 = 59;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
    {
      v119 = 60;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
    {
      v119 = 61;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
    {
      v119 = 62;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
    {
      v119 = 63;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
    {
      v119 = 64;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
    {
      v119 = 65;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v119 = 66;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v119 = 67;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
    {
      v119 = 68;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
    {
      v119 = 69;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
    {
      v119 = 70;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
    {
      v119 = 71;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
    {
      v119 = 72;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
    {
      v119 = 73;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
    {
      v119 = 74;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
    {
      v119 = 75;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
    {
      v119 = 76;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
    {
      v119 = 77;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
    {
      v119 = 78;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
    {
      v119 = 79;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
    {
      v119 = 80;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
    {
      v119 = 81;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
    {
      v119 = 82;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
    {
      v119 = 83;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
    {
      v119 = 84;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
    {
      v119 = 85;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
    {
      v119 = 87;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
    {
      v119 = 88;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
    {
      v119 = 89;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
    {
      v119 = 90;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
    {
      v119 = 91;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
    {
      v119 = 92;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
    {
      v119 = 93;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
    {
      v119 = 94;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
    {
      v119 = 95;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
    {
      v119 = 96;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
    {
      v119 = 97;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
    {
      v119 = 98;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
    {
      v119 = 99;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
    {
      v119 = 100;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
    {
      v119 = 101;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
    {
      v119 = 102;
    }

    else if ([v64 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
    {
      v119 = 103;
    }

    else
    {
      v119 = 0;
    }

    goto LABEL_356;
  }

LABEL_10:
  sub_258E2BA80(a1, v265);
  v70 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v261[0] = 0xD000000000000015;
  v261[1] = 0x8000000258F1BA40;
  sub_258F0AA80();
  v71 = *(a1 + 16);
  v232 = v67;
  if (v71 && (v72 = sub_258E2EA2C(&v262), (v73 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v72, &v263);
    sub_258E0F590(&v262);
    if (swift_dynamicCast())
    {
      v74 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v261[0], v261[1]);

      v233 = v74;
    }

    else
    {
      v233 = v70;
    }
  }

  else
  {
    v233 = v70;
    sub_258E0F590(&v262);
  }

  v75 = sub_258F09A70();
  v67 = *(*(v75 - 8) + 56);
  v246 = v75;
  (v67)(v247, 1, 1);
  strcpy(v261, "assistant_id");
  BYTE5(v261[1]) = 0;
  HIWORD(v261[1]) = -5120;
  sub_258F0AA80();
  if (*(a1 + 16) && (v76 = sub_258E2EA2C(&v262), (v77 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v76, &v263);
    sub_258E0F590(&v262);
    if (swift_dynamicCast())
    {
      v78 = v245;
      sub_258F09A30();

      v79 = v247;
      sub_258DE2184(v247, &qword_27F988730, &unk_258F0F8E0);
      sub_258E2EAD8(v78, v79, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_25;
    }
  }

  else
  {
    sub_258E0F590(&v262);
  }

  v80 = sub_258F0A350();
  v64 = sub_258F0A820();
  if (os_log_type_enabled(v80, v64))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_258DD8000, v80, v64, "observed NilAssistantId", v81, 2u);
    MEMORY[0x259C9EF40](v81, -1, -1);
  }

  v82 = v236;
  swift_beginAccess();
  if (__OFADD__(*v82, 1))
  {
    __break(1u);
    goto LABEL_161;
  }

  ++*v82;
LABEL_25:
  (v67)(v249, 1, 1, v246);
  v259 = 0xD000000000000015;
  v260 = 0x8000000258F189D0;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v83 = sub_258E2EA2C(&v262), (v84 & 1) == 0))
  {
    sub_258E0F590(&v262);
LABEL_30:
    v87 = sub_258F0A350();
    v64 = sub_258F0A820();
    if (os_log_type_enabled(v87, v64))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_258DD8000, v87, v64, "observed NilDeviceAggregationId", v88, 2u);
      MEMORY[0x259C9EF40](v88, -1, -1);
    }

    v89 = v235;
    swift_beginAccess();
    if (!__OFADD__(*v89, 1))
    {
      ++*v89;
      goto LABEL_34;
    }

LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v83, &v263);
  sub_258E0F590(&v262);
  if (!swift_dynamicCast())
  {
    goto LABEL_30;
  }

  v85 = v245;
  sub_258F09A30();

  v64 = &unk_258F0F8E0;
  v86 = v249;
  sub_258DE2184(v249, &qword_27F988730, &unk_258F0F8E0);
  sub_258E2EAD8(v85, v86, &qword_27F988730, &unk_258F0F8E0);
LABEL_34:
  (v67)(v248, 1, 1, v246);
  v257 = 0xD000000000000013;
  v258 = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v64 = a1, v90 = sub_258E2EA2C(&v262), (v91 & 1) == 0))
  {
    sub_258E0F590(&v262);
LABEL_39:
    v94 = v234;
    swift_beginAccess();
    if (!__OFADD__(*v94, 1))
    {
      ++*v94;
      goto LABEL_41;
    }

LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v90, &v263);
  sub_258E0F590(&v262);
  if (!swift_dynamicCast())
  {
    goto LABEL_39;
  }

  v92 = v245;
  sub_258F09A30();

  v93 = v248;
  sub_258DE2184(v248, &qword_27F988730, &unk_258F0F8E0);
  sub_258E2EAD8(v92, v93, &qword_27F988730, &unk_258F0F8E0);
LABEL_41:
  *&v263 = 0xD000000000000029;
  *(&v263 + 1) = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(a1 + 16) && (v95 = sub_258E2EA2C(&v262), (v96 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v95, &v263);
    sub_258E0F590(&v262);
  }

  else
  {
    sub_258E0F590(&v262);
    v263 = 0u;
    v264 = 0u;
  }

  v235 = sub_258E80360(&v263);
  LODWORD(v234) = v97;
  sub_258DE2184(&v263, &qword_27F989868, &unk_258F12D70);
  *&v263 = 0xD00000000000002BLL;
  *(&v263 + 1) = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(a1 + 16) && (v98 = sub_258E2EA2C(&v262), (v99 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v98, &v263);
    sub_258E0F590(&v262);
  }

  else
  {
    sub_258E0F590(&v262);
    v263 = 0u;
    v264 = 0u;
  }

  v231 = sub_258E80360(&v263);
  v230 = v100;
  sub_258DE2184(&v263, &qword_27F989868, &unk_258F12D70);
  v255 = 0xD000000000000016;
  v256 = 0x8000000258F1BA60;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v101 = sub_258E2EA2C(&v262), (v102 & 1) == 0))
  {
    sub_258E0F590(&v262);
LABEL_55:
    v106 = sub_258F0A350();
    v64 = sub_258F0A820();
    if (os_log_type_enabled(v106, v64))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_258DD8000, v106, v64, "observed NilResponseCategory", v107, 2u);
      v108 = v107;
      v63 = v252;
      MEMORY[0x259C9EF40](v108, -1, -1);
    }

    swift_beginAccess();
    v109 = *a9 + 1;
    if (!__OFADD__(*a9, 1))
    {
      HIDWORD(v229[0]) = 0;
      *a9 = v109;
      LODWORD(v229[0]) = 1;
      goto LABEL_59;
    }

LABEL_163:
    __break(1u);
LABEL_164:
    if ([v64 isEqualToString:{@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON", v229[0]}])
    {
      v119 = 9;
      goto LABEL_356;
    }

    goto LABEL_168;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v101, &v263);
  sub_258E0F590(&v262);
  if (!swift_dynamicCast())
  {
    goto LABEL_55;
  }

  v103 = v255;
  v104 = v256;

  v105._countAndFlagsBits = v103;
  v105._object = v104;
  SiriReponseCategory.init(rawValue:)(v105);
  v64 = v262;
  if (v262 == 21)
  {
    __break(1u);
    goto LABEL_189;
  }

  LOBYTE(v263) = v64;
  HIDWORD(v229[0]) = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(&v263);
  LODWORD(v229[0]) = 0;
LABEL_59:
  v236 = a10;
  v253 = 0x6974756F725F6569;
  v254 = 0xEA0000000000676ELL;
  sub_258F0AA80();
  if (*(a1 + 16) && (v110 = sub_258E2EA2C(&v262), (v111 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v110, &v263);
    sub_258E0F590(&v262);
    if (swift_dynamicCast())
    {
      v63 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v253, v254);

      goto LABEL_67;
    }
  }

  else
  {
    sub_258E0F590(&v262);
  }

  v112 = sub_258F0A350();
  v113 = sub_258F0A800();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_258DD8000, v112, v113, "#ODDIMetricsCalculator: No ieRouting found.", v114, 2u);
    MEMORY[0x259C9EF40](v114, -1, -1);
  }

  v63 = 0;
LABEL_67:
  v253 = 0xD000000000000011;
  v254 = 0x8000000258F1BA80;
  sub_258F0AA80();
  v115 = *(a1 + 16);
  v229[1] = v12;
  if (!v115 || (v116 = sub_258E2EA2C(&v262), (v117 & 1) == 0))
  {
    sub_258E0F590(&v262);
    goto LABEL_73;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v116, &v263);
  sub_258E0F590(&v262);
  if (!swift_dynamicCast())
  {
LABEL_73:
    v119 = 0;
    v120 = 1;
    goto LABEL_74;
  }

  v118 = sub_258F0A4E0();

  v64 = v118;
  if (([v64 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"] & 1) == 0)
  {
    if ([v64 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
    {
      v119 = 1;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
    {
      v119 = 2;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
    {
      v119 = 3;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
    {
      v119 = 4;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
    {
      v119 = 5;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
    {
      v119 = 6;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
    {
      v119 = 7;
      goto LABEL_356;
    }

    if ([v64 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
    {
      v119 = 8;
      goto LABEL_356;
    }

    goto LABEL_164;
  }

  v119 = 0;
LABEL_356:

  v120 = 0;
LABEL_74:
  v121 = v251;
  (v67)(v251, 1, 1, v246);
  v122 = v244;
  v123 = &qword_27F988730;
  sub_258DE20C0(v249, v121 + *(v244 + 20), &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v248, v121 + *(v122 + 24), &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v124 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_156;
  }

  if (v124 <= -1.0)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v124 >= 1.84467441e19)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  if (is_mul_ok(v124, 0x3E8uLL))
  {
    LODWORD(v250) = v120;
    v125 = v119;
    v126 = v63;
    v127 = 1000 * v124;
    v128 = [objc_opt_self() sharedPreferences];
    v129 = [v128 longLivedIdentifierUploadingEnabled];

    v130 = v251;
    v131 = v251 + *(v122 + 28);
    *v131 = v127;
    *(v131 + 8) = 0;
    *(v130 + *(v122 + 32)) = v232;
    v132 = v130 + *(v122 + 36);
    *v132 = v235;
    *(v132 + 8) = v234 & 1;
    v133 = v130 + *(v122 + 40);
    *v133 = v231;
    *(v133 + 8) = v230 & 1;
    v134 = v130 + *(v122 + 44);
    *v134 = 3;
    *(v134 + 4) = 0;
    *(v130 + *(v122 + 48)) = v129 ^ 1;
    v135 = type metadata accessor for DeviceUsageMetricsBuilderImpl(0);
    v136 = *(v135 + 48);
    v137 = *(v135 + 52);
    swift_allocObject();
    v138 = DeviceUsageMetricsBuilderImpl.init()();
    v139 = v245;
    sub_258DE20C0(v247, v245, &qword_27F988730, &unk_258F0F8E0);
    v140 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
    swift_beginAccess();
    sub_258E2EA70(v139, v138 + v140, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    v253 = 0x5F746375646F7270;
    v254 = 0xEA00000000006469;
    sub_258F0AA80();
    if (*(a1 + 16) && (v141 = sub_258E2EA2C(&v262), (v142 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 56) + 32 * v141, &v263);
      sub_258E0F590(&v262);
      if (swift_dynamicCast())
      {
        v143 = v253;
        v144 = v254;
        v145 = v126;
        if (v253 != 0x4E41545349535341 || v254 != 0xE900000000000054)
        {
          v149 = v125;
          if (sub_258F0AD80())
          {

            v146 = 1;
            v147 = v243;
            v148 = v242;
          }

          else
          {
            if (v143 == 0x4F49544154434944 && v144 == 0xE90000000000004ELL)
            {

              v146 = 2;
            }

            else
            {
              v226 = sub_258F0AD80();

              if (v226)
              {
                v146 = 2;
              }

              else
              {
                v146 = 0;
              }
            }

            v147 = v243;
            v148 = v242;
          }

LABEL_87:
          *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = v146;
          sub_258E7F2AC(v251, v147, type metadata accessor for EventMetadata);
          (*(v148 + 56))(v147, 0, 1, v122);
          v150 = v237;
          sub_258E2EAD8(v147, v237, &qword_27F9894E0, &unk_258F106A0);
          v151 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
          swift_beginAccess();
          sub_258E2EA70(v150, v138 + v151, &qword_27F9894E0, &unk_258F106A0);
          swift_endAccess();
          strcpy(&v263, "device_type");
          HIDWORD(v263) = -352321536;
          sub_258F0AA80();
          if (*(a1 + 16) && (v152 = sub_258E2EA2C(&v262), (v153 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v152, &v263);
            sub_258E0F590(&v262);
            v154 = swift_dynamicCast();
            v155 = v253;
            v156 = v254;
            if (!v154)
            {
              v155 = 0;
              v156 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v262);
            v155 = 0;
            v156 = 0;
          }

          v157 = (v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
          v158 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType + 8);
          *v157 = v155;
          v157[1] = v156;

          strcpy(&v263, "system_build");
          BYTE13(v263) = 0;
          HIWORD(v263) = -5120;
          sub_258F0AA80();
          if (*(a1 + 16) && (v159 = sub_258E2EA2C(&v262), (v160 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v159, &v263);
            sub_258E0F590(&v262);
            v161 = swift_dynamicCast();
            v162 = v253;
            v163 = v254;
            if (!v161)
            {
              v162 = 0;
              v163 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v262);
            v162 = 0;
            v163 = 0;
          }

          v164 = (v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
          v165 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild + 8);
          *v164 = v162;
          v164[1] = v163;

          v166 = v265;
          v167 = *(v265 + 44);
          v168 = v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
          *v168 = *(v265 + 40);
          *(v168 + 4) = v167;
          v169 = *(v166 + 12);
          v170 = v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
          *v170 = *(v166 + 8);
          *(v170 + 4) = v169;
          v171 = *(v166 + 32);
          v172 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
          *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = v171;

          v173 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
          v174 = v233;
          *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = v233;
          v175 = v171;

          v176 = *(v166 + 4);
          v177 = v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
          *v177 = *v166;
          *(v177 + 4) = v176;
          *&v263 = 0xD000000000000012;
          *(&v263 + 1) = 0x8000000258F1A600;
          v67 = v174;
          sub_258F0AA80();
          if (*(a1 + 16) && (v178 = sub_258E2EA2C(&v262), (v179 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v178, &v263);
            sub_258E0F590(&v262);
            v180 = swift_dynamicCast();
            v181 = v253;
            v182 = v254;
            if (!v180)
            {
              v181 = 0;
              v182 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v262);
            v181 = 0;
            v182 = 0;
          }

          v183 = (v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
          v184 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId + 8);
          *v183 = v181;
          v183[1] = v182;

          *&v263 = 0xD000000000000013;
          *(&v263 + 1) = 0x8000000258F1A620;
          sub_258F0AA80();
          if (*(a1 + 16) && (v185 = sub_258E2EA2C(&v262), (v186 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v185, &v263);
            sub_258E0F590(&v262);
            v187 = swift_dynamicCast();
            v188 = v253;
            v189 = v254;
            if (!v187)
            {
              v188 = 0;
              v189 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v262);
            v188 = 0;
            v189 = 0;
          }

          v190 = (v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
          v191 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId + 8);
          *v190 = v188;
          v190[1] = v189;

          v192 = v265;
          v193 = *(v265 + 20);
          v194 = v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
          *v194 = *(v265 + 16);
          *(v194 + 4) = v193;
          v195 = *(v192 + 28);
          v196 = v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
          *v196 = *(v192 + 24);
          *(v196 + 4) = v195;
          strcpy(&v263, "sub_domain");
          BYTE11(v263) = 0;
          HIDWORD(v263) = -369098752;
          sub_258F0AA80();
          if (*(a1 + 16) && (v197 = sub_258E2EA2C(&v262), (v198 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v197, &v263);
            sub_258E0F590(&v262);
            v199 = swift_dynamicCast();
            v200 = v253;
            v201 = v254;
            if (!v199)
            {
              v200 = 0;
              v201 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v262);
            v200 = 0;
            v201 = 0;
          }

          v202 = (v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
          v203 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain + 8);
          *v202 = v200;
          v202[1] = v201;

          strcpy(&v263, "turn_cnt");
          BYTE9(v263) = 0;
          WORD5(v263) = 0;
          HIDWORD(v263) = -402653184;
          sub_258F0AA80();
          if (*(a1 + 16) && (v204 = sub_258E2EA2C(&v262), (v205 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v204, &v263);
            sub_258E0F590(&v262);
          }

          else
          {
            sub_258E0F590(&v262);
            v263 = 0u;
            v264 = 0u;
          }

          v122 = a11;
          v206 = sub_258E7FFA8(&v263);
          sub_258DE2184(&v263, &qword_27F989868, &unk_258F12D70);
          v207 = v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
          *v207 = v206;
          *(v207 + 4) = BYTE4(v206) & 1;
          strcpy(&v263, "user_turn_cnt");
          HIWORD(v263) = -4864;
          sub_258F0AA80();
          if (*(a1 + 16) && (v208 = sub_258E2EA2C(&v262), (v209 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v208, &v263);
            sub_258E0F590(&v262);
          }

          else
          {
            sub_258E0F590(&v262);
            v263 = 0u;
            v264 = 0u;
          }

          v210 = sub_258E7FFA8(&v263);
          sub_258DE2184(&v263, &qword_27F989868, &unk_258F12D70);
          v211 = v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
          *v211 = v210;
          *(v211 + 4) = BYTE4(v210) & 1;
          *&v263 = 0xD000000000000010;
          *(&v263 + 1) = 0x8000000258F1CC50;
          sub_258F0AA80();
          if (*(a1 + 16) && (v212 = sub_258E2EA2C(&v262), (v213 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v212, &v263);
            sub_258E0F590(&v262);
            v214 = swift_dynamicCast();
            v215 = v253;
            v216 = v254;
            if (!v214)
            {
              v215 = 0;
              v216 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v262);
            v215 = 0;
            v216 = 0;
          }

          v120 = v239;
          v217 = (v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
          v218 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId + 8);
          *v217 = v215;
          v217[1] = v216;

          v219 = v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
          *v219 = HIDWORD(v229[0]);
          *(v219 + 4) = v229[0];
          v220 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds);
          *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = *(v265 + *(v238 + 44));

          *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = sub_258E7E3B0(a1);
          v221 = *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting);
          *(v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = v145;

          v222 = v138 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
          *v222 = v149;
          *(v222 + 4) = v250;
          v63 = v241;
          sub_258E4D51C(v241);

          sub_258E7F2AC(v63, v120, type metadata accessor for DeviceUsageMetrics);
          swift_beginAccess();
          v123 = *a11;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a11 = v123;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_126;
          }

          goto LABEL_159;
        }

        v146 = 1;
        v147 = v243;
        v148 = v242;
LABEL_86:
        v149 = v125;
        goto LABEL_87;
      }
    }

    else
    {
      sub_258E0F590(&v262);
    }

    v147 = v243;
    v148 = v242;
    v145 = v126;
    v146 = 0;
    goto LABEL_86;
  }

LABEL_158:
  __break(1u);
LABEL_159:
  v227 = v123[2];

  v228 = sub_258DE2968(0, v227 + 1, 1, v123);
  *v122 = v228;

  v123 = v228;
LABEL_126:
  v225 = v123[2];
  v224 = v123[3];
  if (v225 >= v224 >> 1)
  {
    v123 = sub_258DE2968(v224 > 1, v225 + 1, 1, v123);
  }

  v123[2] = v225 + 1;
  sub_258E7F314(v120, v123 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v225);
  *v122 = v123;
  swift_endAccess();

  sub_258E7F378(v63, type metadata accessor for DeviceUsageMetrics);
  sub_258E7F378(v251, type metadata accessor for EventMetadata);
  sub_258DE2184(v248, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v249, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v247, &qword_27F988730, &unk_258F0F8E0);
  sub_258E7F378(v265, type metadata accessor for CommonDigestElements);
}

void sub_258E7B8D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v253 = a8;
  v254 = a7;
  v255 = a6;
  v251 = a5;
  v252 = a4;
  v266 = a3;
  v15 = *a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v257 = v247 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v247 - v22;
  v24 = type metadata accessor for DeviceUsageMetrics(0);
  v260 = *(v24 - 8);
  v25 = *(v260 + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v29 = v247 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v261 = v247 - v31;
  v264 = type metadata accessor for EventMetadata(0);
  v262 = *(v264 - 8);
  v32 = *(v262 + 64);
  MEMORY[0x28223BE20](v264, v33);
  v35 = (v247 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v36 - 8, v38);
  v268 = v247 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v269 = (v247 - v43);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v265 = v247 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v267 = (v247 - v48);
  v258 = type metadata accessor for CommonDigestElements();
  v49 = *(*(v258 - 8) + 64);
  MEMORY[0x28223BE20](v258, v50);
  v271 = v247 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = qword_280CC6078;

  v272 = a2;
  v270 = v52;
  v53 = sub_258F0A350();
  v54 = sub_258F0A810();

  v55 = os_log_type_enabled(v53, v54);
  v285 = a1;
  v259 = v29;
  v263 = v23;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v282 = v57;
    *v56 = 136315138;
    v58 = sub_258F0A420();
    v60 = v35;
    v61 = v12;
    v62 = sub_258DE3018(v58, v59, &v282);

    *(v56 + 4) = v62;
    v12 = v61;
    v35 = v60;
    a1 = v285;
    _os_log_impl(&dword_258DD8000, v53, v54, "ODDMetrics row data: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x259C9EF40](v57, -1, -1);
    MEMORY[0x259C9EF40](v56, -1, -1);
  }

  v64 = *(v15 + 80);
  v63 = *(v15 + 88);
  v65 = (*(v63 + 24))(v64, v63);
  v67 = v66;
  v256 = v63;
  v68 = type metadata accessor for ODDIMetricsCalculator();
  WitnessTable = swift_getWitnessTable();
  v70 = v65;
  v71 = v272;
  v72 = sub_258E3A7C4(a1, v266, v70, v67, v68, WitnessTable);
  v74 = v73;

  if ((v74 & 0x10000) != 0)
  {

    return;
  }

  if (v74)
  {
    v71 = v252;
    swift_beginAccess();
    v75 = *(v71 + 16);
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v76)
    {
      __break(1u);
      goto LABEL_165;
    }

    *(v71 + 16) = v77;
  }

  if ((v74 & 0x100) != 0)
  {
    v78 = v251;
    swift_beginAccess();
    v79 = *(v78 + 2);
    v76 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (!v76)
    {
      *(v78 + 2) = v80;
      goto LABEL_10;
    }

LABEL_165:
    __break(1u);
LABEL_166:
    if ([v71 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
    {
      v139 = 10;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
    {
      v139 = 11;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
    {
      v139 = 12;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
    {
      v139 = 13;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
    {
      v139 = 14;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
    {
      v139 = 15;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
    {
      v139 = 16;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
    {
      v139 = 17;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
    {
      v139 = 18;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
    {
      v139 = 19;
      goto LABEL_354;
    }

LABEL_187:
    if ([v71 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
    {
      v139 = 20;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
    {
      v139 = 21;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
    {
      v139 = 22;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
    {
      v139 = 23;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
    {
      v139 = 24;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
    {
      v139 = 25;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
    {
      v139 = 26;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
    {
      v139 = 27;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
    {
      v139 = 28;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
    {
      v139 = 29;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
    {
      v139 = 30;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
    {
      v139 = 31;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
    {
      v139 = 32;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
    {
      v139 = 33;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
    {
      v139 = 34;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
    {
      v139 = 35;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
    {
      v139 = 36;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
    {
      v139 = 37;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
    {
      v139 = 38;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
    {
      v139 = 39;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
    {
      v139 = 40;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
    {
      v139 = 41;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
    {
      v139 = 42;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
    {
      v139 = 43;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
    {
      v139 = 44;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
    {
      v139 = 45;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
    {
      v139 = 46;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
    {
      v139 = 47;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
    {
      v139 = 48;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
    {
      v139 = 49;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
    {
      v139 = 50;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
    {
      v139 = 51;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
    {
      v139 = 52;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
    {
      v139 = 53;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
    {
      v139 = 54;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
    {
      v139 = 55;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
    {
      v139 = 56;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
    {
      v139 = 57;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
    {
      v139 = 58;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
    {
      v139 = 59;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
    {
      v139 = 60;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
    {
      v139 = 61;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
    {
      v139 = 62;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
    {
      v139 = 63;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
    {
      v139 = 64;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
    {
      v139 = 65;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v139 = 66;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v139 = 67;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
    {
      v139 = 68;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
    {
      v139 = 69;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
    {
      v139 = 70;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
    {
      v139 = 71;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
    {
      v139 = 72;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
    {
      v139 = 73;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
    {
      v139 = 74;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
    {
      v139 = 75;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
    {
      v139 = 76;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
    {
      v139 = 77;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
    {
      v139 = 78;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
    {
      v139 = 79;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
    {
      v139 = 80;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
    {
      v139 = 81;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
    {
      v139 = 82;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
    {
      v139 = 83;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
    {
      v139 = 84;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
    {
      v139 = 85;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
    {
      v139 = 87;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
    {
      v139 = 88;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
    {
      v139 = 89;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
    {
      v139 = 90;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
    {
      v139 = 91;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
    {
      v139 = 92;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
    {
      v139 = 93;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
    {
      v139 = 94;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
    {
      v139 = 95;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
    {
      v139 = 96;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
    {
      v139 = 97;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
    {
      v139 = 98;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
    {
      v139 = 99;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
    {
      v139 = 100;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
    {
      v139 = 101;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
    {
      v139 = 102;
    }

    else if ([v71 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
    {
      v139 = 103;
    }

    else
    {
      v139 = 0;
    }

    goto LABEL_354;
  }

LABEL_10:
  v252 = v64;
  v64 = 0xD000000000000013;
  v81 = v285;
  sub_258E394E8(v285, v68, WitnessTable, v271);
  v67 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v281[0] = 0xD000000000000015;
  v281[1] = 0x8000000258F1BA40;
  sub_258F0AA80();
  v82 = *(v81 + 16);
  v250 = v72;
  if (v82 && (v83 = sub_258E2EA2C(&v282), (v84 & 1) != 0))
  {
    sub_258DE4090(*(v81 + 56) + 32 * v83, &v283);
    sub_258E0F590(&v282);
    if (swift_dynamicCast())
    {
      v85 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v281[0], v281[1]);

      v81 = v285;

      v251 = v85;
    }

    else
    {
      v251 = v67;
    }
  }

  else
  {
    v251 = v67;
    sub_258E0F590(&v282);
  }

  v86 = sub_258F09A70();
  v87 = *(v86 - 8);
  v72 = *(v87 + 56);
  WitnessTable = v87 + 56;
  (v72)(v267, 1, 1, v86);
  strcpy(v281, "assistant_id");
  BYTE5(v281[1]) = 0;
  HIWORD(v281[1]) = -5120;
  sub_258F0AA80();
  v88 = *(v81 + 16);
  v266 = v86;
  if (v88 && (v89 = sub_258E2EA2C(&v282), (v90 & 1) != 0))
  {
    sub_258DE4090(*(v81 + 56) + 32 * v89, &v283);
    sub_258E0F590(&v282);
    if (swift_dynamicCast())
    {
      v91 = v265;
      sub_258F09A30();

      v67 = v267;
      sub_258DE2184(v267, &qword_27F988730, &unk_258F0F8E0);
      v92 = v91;
      v86 = v266;
      sub_258E2EAD8(v92, v67, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_25;
    }
  }

  else
  {
    sub_258E0F590(&v282);
  }

  v93 = sub_258F0A350();
  v71 = sub_258F0A820();
  if (os_log_type_enabled(v93, v71))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_258DD8000, v93, v71, "observed NilAssistantId", v67, 2u);
    MEMORY[0x259C9EF40](v67, -1, -1);
  }

  v94 = v255;
  swift_beginAccess();
  v95 = *(v94 + 16);
  v76 = __OFADD__(v95, 1);
  v96 = v95 + 1;
  if (v76)
  {
    __break(1u);
    goto LABEL_159;
  }

  *(v94 + 16) = v96;
LABEL_25:
  (v72)(v269, 1, 1, v86);
  v279 = 0xD000000000000015;
  v280 = 0x8000000258F189D0;
  sub_258F0AA80();
  v97 = v285;
  if (!*(v285 + 16) || (v98 = sub_258E2EA2C(&v282), (v99 & 1) == 0))
  {
    sub_258E0F590(&v282);
LABEL_30:
    v102 = sub_258F0A350();
    v71 = sub_258F0A820();
    if (os_log_type_enabled(v102, v71))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_258DD8000, v102, v71, "observed NilDeviceAggregationId", v67, 2u);
      MEMORY[0x259C9EF40](v67, -1, -1);
    }

    v103 = v254;
    swift_beginAccess();
    v104 = *(v103 + 16);
    v76 = __OFADD__(v104, 1);
    v105 = v104 + 1;
    if (!v76)
    {
      *(v103 + 16) = v105;
      goto LABEL_34;
    }

LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  sub_258DE4090(*(v97 + 56) + 32 * v98, &v283);
  sub_258E0F590(&v282);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v100 = v265;
  sub_258F09A30();

  v67 = v269;
  sub_258DE2184(v269, &qword_27F988730, &unk_258F0F8E0);
  v101 = v100;
  v86 = v266;
  sub_258E2EAD8(v101, v67, &qword_27F988730, &unk_258F0F8E0);
LABEL_34:
  (v72)(v268, 1, 1, v86);
  v277 = 0xD000000000000013;
  v278 = 0x8000000258F1A5E0;
  sub_258F0AA80();
  v106 = v285;
  if (!*(v285 + 16) || (v107 = sub_258E2EA2C(&v282), (v108 & 1) == 0))
  {
    sub_258E0F590(&v282);
LABEL_39:
    v71 = v253;
    swift_beginAccess();
    v111 = *(v71 + 16);
    v76 = __OFADD__(v111, 1);
    v112 = v111 + 1;
    if (!v76)
    {
      *(v71 + 16) = v112;
      goto LABEL_41;
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  sub_258DE4090(*(v106 + 56) + 32 * v107, &v283);
  sub_258E0F590(&v282);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v109 = v265;
  sub_258F09A30();

  v110 = v268;
  sub_258DE2184(v268, &qword_27F988730, &unk_258F0F8E0);
  v106 = v285;
  sub_258E2EAD8(v109, v110, &qword_27F988730, &unk_258F0F8E0);
LABEL_41:
  v67 = &v283;
  *&v283 = 0xD000000000000029;
  *(&v283 + 1) = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(v106 + 16) && (v113 = sub_258E2EA2C(&v282), (v114 & 1) != 0))
  {
    sub_258DE4090(*(v106 + 56) + 32 * v113, &v283);
    sub_258E0F590(&v282);
  }

  else
  {
    sub_258E0F590(&v282);
    v283 = 0u;
    v284 = 0u;
  }

  v254 = sub_258E77690(&v283);
  LODWORD(v253) = v115;
  sub_258DE2184(&v283, &qword_27F989868, &unk_258F12D70);
  *&v283 = 0xD00000000000002BLL;
  *(&v283 + 1) = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(v106 + 16) && (v116 = sub_258E2EA2C(&v282), (v117 & 1) != 0))
  {
    sub_258DE4090(*(v106 + 56) + 32 * v116, &v283);
    sub_258E0F590(&v282);
  }

  else
  {
    sub_258E0F590(&v282);
    v283 = 0u;
    v284 = 0u;
  }

  v249 = sub_258E77690(&v283);
  v248 = v118;
  sub_258DE2184(&v283, &qword_27F989868, &unk_258F12D70);
  v275 = 0xD000000000000016;
  v276 = 0x8000000258F1BA60;
  sub_258F0AA80();
  if (!*(v106 + 16) || (v119 = sub_258E2EA2C(&v282), (v120 & 1) == 0))
  {
    sub_258E0F590(&v282);
LABEL_55:
    v125 = sub_258F0A350();
    v71 = sub_258F0A820();
    if (os_log_type_enabled(v125, v71))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_258DD8000, v125, v71, "observed NilResponseCategory", v67, 2u);
      MEMORY[0x259C9EF40](v67, -1, -1);
    }

    swift_beginAccess();
    v126 = *(a9 + 16);
    v76 = __OFADD__(v126, 1);
    v127 = v126 + 1;
    if (!v76)
    {
      LODWORD(v247[0]) = 0;
      *(a9 + 16) = v127;
      v124 = 1;
      goto LABEL_59;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    if ([v71 isEqualToString:{@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON", v247[0]}])
    {
      v139 = 9;
      goto LABEL_354;
    }

    goto LABEL_166;
  }

  sub_258DE4090(*(v106 + 56) + 32 * v119, &v283);
  sub_258E0F590(&v282);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  v121 = v275;
  v122 = v276;

  v123._countAndFlagsBits = v121;
  v123._object = v122;
  SiriReponseCategory.init(rawValue:)(v123);
  v71 = v282;
  if (v282 == 21)
  {
    __break(1u);
    goto LABEL_187;
  }

  LOBYTE(v283) = v71;
  LODWORD(v247[0]) = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(&v283);
  v124 = 0;
LABEL_59:
  v255 = a10;
  v273 = 0x6974756F725F6569;
  v274 = 0xEA0000000000676ELL;
  sub_258F0AA80();
  v128 = v285;
  if (*(v285 + 16) && (v129 = sub_258E2EA2C(&v282), (v130 & 1) != 0))
  {
    sub_258DE4090(*(v128 + 56) + 32 * v129, &v283);
    sub_258E0F590(&v282);
    if (swift_dynamicCast())
    {
      v67 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v273, v274);

      goto LABEL_67;
    }
  }

  else
  {
    sub_258E0F590(&v282);
  }

  v131 = sub_258F0A350();
  v132 = sub_258F0A800();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&dword_258DD8000, v131, v132, "#ODDIMetricsCalculator: No ieRouting found.", v133, 2u);
    MEMORY[0x259C9EF40](v133, -1, -1);
  }

  v67 = 0;
LABEL_67:
  v273 = 0xD000000000000011;
  v274 = 0x8000000258F1BA80;
  sub_258F0AA80();
  v134 = v285;
  v135 = *(v285 + 16);
  v247[1] = v12;
  HIDWORD(v247[0]) = v124;
  if (!v135 || (v136 = sub_258E2EA2C(&v282), (v137 & 1) == 0))
  {
    sub_258E0F590(&v282);
    goto LABEL_73;
  }

  sub_258DE4090(*(v134 + 56) + 32 * v136, &v283);
  sub_258E0F590(&v282);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_73:
    v139 = 0;
    LODWORD(v270) = 1;
    goto LABEL_74;
  }

  v138 = sub_258F0A4E0();

  v71 = v138;
  if (([v71 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"] & 1) == 0)
  {
    if ([v71 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
    {
      v139 = 1;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
    {
      v139 = 2;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
    {
      v139 = 3;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
    {
      v139 = 4;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
    {
      v139 = 5;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
    {
      v139 = 6;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
    {
      v139 = 7;
      goto LABEL_354;
    }

    if ([v71 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
    {
      v139 = 8;
      goto LABEL_354;
    }

    goto LABEL_162;
  }

  v139 = 0;
LABEL_354:

  LODWORD(v270) = 0;
LABEL_74:
  (v72)(v35, 1, 1, v266);
  v140 = v264;
  v141 = &qword_27F988730;
  sub_258DE20C0(v269, v35 + *(v264 + 20), &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v268, v35 + v140[6], &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v142 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_154;
  }

  if (v142 <= -1.0)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v142 >= 1.84467441e19)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (is_mul_ok(v142, 0x3E8uLL))
  {
    LODWORD(v266) = v139;
    v143 = v67;
    v144 = 1000 * v142;
    v145 = (*(v256 + 32))();
    v146 = [objc_opt_self() sharedPreferences];
    v147 = [v146 longLivedIdentifierUploadingEnabled];

    v148 = v35 + v140[7];
    *v148 = v144;
    v148[8] = 0;
    *(v35 + v140[8]) = v250;
    v149 = v35 + v140[9];
    *v149 = v254;
    v149[8] = v253 & 1;
    v150 = v35 + v140[10];
    *v150 = v249;
    v150[8] = v248 & 1;
    v151 = v35 + v140[11];
    *v151 = v145;
    v151[4] = 0;
    *(v35 + v140[12]) = v147 ^ 1;
    v152 = type metadata accessor for DeviceUsageMetricsBuilderImpl(0);
    v153 = *(v152 + 48);
    v154 = *(v152 + 52);
    swift_allocObject();
    v155 = DeviceUsageMetricsBuilderImpl.init()();
    v156 = v265;
    sub_258DE20C0(v267, v265, &qword_27F988730, &unk_258F0F8E0);
    v157 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
    swift_beginAccess();
    sub_258E2EA70(v156, v155 + v157, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    v273 = 0x5F746375646F7270;
    v274 = 0xEA00000000006469;
    sub_258F0AA80();
    v158 = v285;
    if (*(v285 + 16) && (v159 = sub_258E2EA2C(&v282), (v160 & 1) != 0))
    {
      sub_258DE4090(*(v158 + 56) + 32 * v159, &v283);
      sub_258E0F590(&v282);
      if (swift_dynamicCast())
      {
        v161 = v273;
        v162 = v274;
        if (v273 == 0x4E41545349535341 && v274 == 0xE900000000000054 || (sub_258F0AD80() & 1) != 0)
        {

          v163 = 1;
LABEL_85:
          v164 = v263;
          v165 = v262;
LABEL_89:
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = v163;
          sub_258E7F2AC(v35, v164, type metadata accessor for EventMetadata);
          (*(v165 + 56))(v164, 0, 1, v140);
          v166 = v257;
          sub_258E2EAD8(v164, v257, &qword_27F9894E0, &unk_258F106A0);
          v167 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
          swift_beginAccess();
          sub_258E2EA70(v166, v155 + v167, &qword_27F9894E0, &unk_258F106A0);
          swift_endAccess();
          strcpy(&v283, "device_type");
          HIDWORD(v283) = -352321536;
          sub_258F0AA80();
          v168 = v285;
          if (*(v285 + 16) && (v169 = sub_258E2EA2C(&v282), (v170 & 1) != 0))
          {
            sub_258DE4090(*(v168 + 56) + 32 * v169, &v283);
            sub_258E0F590(&v282);
            v171 = swift_dynamicCast();
            v172 = v273;
            v173 = v274;
            if (!v171)
            {
              v172 = 0;
              v173 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v282);
            v172 = 0;
            v173 = 0;
          }

          v174 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
          v175 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType + 8);
          *v174 = v172;
          v174[1] = v173;

          strcpy(&v283, "system_build");
          BYTE13(v283) = 0;
          HIWORD(v283) = -5120;
          sub_258F0AA80();
          if (*(v168 + 16) && (v176 = sub_258E2EA2C(&v282), (v177 & 1) != 0))
          {
            sub_258DE4090(*(v168 + 56) + 32 * v176, &v283);
            sub_258E0F590(&v282);
            v178 = swift_dynamicCast();
            v179 = v273;
            v180 = v274;
            if (!v178)
            {
              v179 = 0;
              v180 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v282);
            v179 = 0;
            v180 = 0;
          }

          v181 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
          v182 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild + 8);
          *v181 = v179;
          v181[1] = v180;

          v183 = v271;
          v184 = *(v271 + 44);
          v185 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
          *v185 = *(v271 + 40);
          *(v185 + 4) = v184;
          v186 = *(v183 + 12);
          v187 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
          *v187 = *(v183 + 8);
          *(v187 + 4) = v186;
          v188 = *(v183 + 32);
          v189 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = v188;

          v190 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
          v191 = v251;
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = v251;
          v192 = v188;

          v193 = *(v183 + 4);
          v194 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
          *v194 = *v183;
          *(v194 + 4) = v193;
          *&v283 = v64 - 1;
          *(&v283 + 1) = 0x8000000258F1A600;
          v72 = v191;
          sub_258F0AA80();
          v195 = v285;
          if (*(v285 + 16) && (v196 = sub_258E2EA2C(&v282), (v197 & 1) != 0))
          {
            sub_258DE4090(*(v195 + 56) + 32 * v196, &v283);
            sub_258E0F590(&v282);
            v198 = swift_dynamicCast();
            v199 = v273;
            v200 = v274;
            if (!v198)
            {
              v199 = 0;
              v200 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v282);
            v199 = 0;
            v200 = 0;
          }

          v201 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
          v202 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId + 8);
          *v201 = v199;
          v201[1] = v200;

          *&v283 = v64;
          *(&v283 + 1) = 0x8000000258F1A620;
          sub_258F0AA80();
          if (*(v195 + 16) && (v203 = sub_258E2EA2C(&v282), (v204 & 1) != 0))
          {
            sub_258DE4090(*(v195 + 56) + 32 * v203, &v283);
            sub_258E0F590(&v282);
            v205 = swift_dynamicCast();
            v206 = v273;
            v207 = v274;
            if (!v205)
            {
              v206 = 0;
              v207 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v282);
            v206 = 0;
            v207 = 0;
          }

          v208 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
          v209 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId + 8);
          *v208 = v206;
          v208[1] = v207;

          v210 = v271;
          v211 = *(v271 + 20);
          v212 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
          *v212 = *(v271 + 16);
          *(v212 + 4) = v211;
          v213 = *(v210 + 28);
          v214 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
          *v214 = *(v210 + 24);
          *(v214 + 4) = v213;
          strcpy(&v283, "sub_domain");
          BYTE11(v283) = 0;
          HIDWORD(v283) = -369098752;
          sub_258F0AA80();
          if (*(v195 + 16) && (v215 = sub_258E2EA2C(&v282), (v216 & 1) != 0))
          {
            sub_258DE4090(*(v195 + 56) + 32 * v215, &v283);
            sub_258E0F590(&v282);
            v217 = swift_dynamicCast();
            v218 = v273;
            v219 = v274;
            if (!v217)
            {
              v218 = 0;
              v219 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v282);
            v218 = 0;
            v219 = 0;
          }

          v220 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
          v221 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain + 8);
          *v220 = v218;
          v220[1] = v219;

          strcpy(&v283, "turn_cnt");
          BYTE9(v283) = 0;
          WORD5(v283) = 0;
          HIDWORD(v283) = -402653184;
          sub_258F0AA80();
          if (*(v195 + 16) && (v222 = sub_258E2EA2C(&v282), (v223 & 1) != 0))
          {
            sub_258DE4090(*(v195 + 56) + 32 * v222, &v283);
            sub_258E0F590(&v282);
          }

          else
          {
            sub_258E0F590(&v282);
            v283 = 0u;
            v284 = 0u;
          }

          v224 = sub_258E772E0(&v283);
          sub_258DE2184(&v283, &qword_27F989868, &unk_258F12D70);
          v225 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
          *v225 = v224;
          *(v225 + 4) = BYTE4(v224) & 1;
          strcpy(&v283, "user_turn_cnt");
          HIWORD(v283) = -4864;
          sub_258F0AA80();
          v226 = v285;
          if (*(v285 + 16) && (v227 = sub_258E2EA2C(&v282), (v228 & 1) != 0))
          {
            sub_258DE4090(*(v226 + 56) + 32 * v227, &v283);
            sub_258E0F590(&v282);
          }

          else
          {
            sub_258E0F590(&v282);
            v283 = 0u;
            v284 = 0u;
          }

          WitnessTable = a11;
          v229 = sub_258E772E0(&v283);
          sub_258DE2184(&v283, &qword_27F989868, &unk_258F12D70);
          v230 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
          *v230 = v229;
          *(v230 + 4) = BYTE4(v229) & 1;
          *&v283 = v64 - 3;
          *(&v283 + 1) = 0x8000000258F1CC50;
          sub_258F0AA80();
          v231 = v285;
          if (*(v285 + 16) && (v232 = sub_258E2EA2C(&v282), (v233 & 1) != 0))
          {
            sub_258DE4090(*(v231 + 56) + 32 * v232, &v283);
            sub_258E0F590(&v282);
            v234 = swift_dynamicCast();
            v235 = v273;
            v236 = v274;
            if (!v234)
            {
              v235 = 0;
              v236 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v282);
            v235 = 0;
            v236 = 0;
          }

          v64 = v259;
          v140 = v35;
          v237 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
          v238 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId + 8);
          *v237 = v235;
          v237[1] = v236;

          v239 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
          *v239 = v247[0];
          *(v239 + 4) = BYTE4(v247[0]);
          v240 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds);
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = *(v271 + *(v258 + 44));

          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = sub_258E7E3B0(v285);
          v241 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting);
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = v143;

          v242 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
          *v242 = v266;
          *(v242 + 4) = v270;
          v139 = v261;
          sub_258E4D51C(v261);

          sub_258E7F2AC(v139, v64, type metadata accessor for DeviceUsageMetrics);
          swift_beginAccess();
          v141 = *(a11 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a11 + 16) = v141;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_128;
          }

          goto LABEL_157;
        }

        if (v161 == 0x4F49544154434944 && v162 == 0xE90000000000004ELL)
        {

          v163 = 2;
          goto LABEL_85;
        }

        v246 = sub_258F0AD80();

        v164 = v263;
        v165 = v262;
        if (v246)
        {
          v163 = 2;
          goto LABEL_89;
        }

LABEL_88:
        v163 = 0;
        goto LABEL_89;
      }
    }

    else
    {
      sub_258E0F590(&v282);
    }

    v164 = v263;
    v165 = v262;
    goto LABEL_88;
  }

LABEL_156:
  __break(1u);
LABEL_157:
  v141 = sub_258DE2968(0, v141[2] + 1, 1, v141);
  *(WitnessTable + 16) = v141;
LABEL_128:
  v245 = v141[2];
  v244 = v141[3];
  if (v245 >= v244 >> 1)
  {
    v141 = sub_258DE2968(v244 > 1, v245 + 1, 1, v141);
  }

  v141[2] = v245 + 1;
  sub_258E7F314(v64, v141 + ((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v245);
  *(WitnessTable + 16) = v141;
  swift_endAccess();

  sub_258E7F378(v139, type metadata accessor for DeviceUsageMetrics);
  sub_258E7F378(v140, type metadata accessor for EventMetadata);
  sub_258DE2184(v268, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v269, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v267, &qword_27F988730, &unk_258F0F8E0);
  sub_258E7F378(v271, type metadata accessor for CommonDigestElements);
}

uint64_t sub_258E7E3B0(uint64_t a1)
{
  sub_258F0AA80();
  if (*(a1 + 16) && (v2 = sub_258E2EA2C(v9), (v3 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v2, v10);
    sub_258E0F590(v9);
    if (swift_dynamicCast())
    {
      return 27;
    }
  }

  else
  {
    sub_258E0F590(v9);
  }

  sub_258F0AA80();
  if (*(a1 + 16) && (v5 = sub_258E2EA2C(v9), (v6 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v5, v10);
    sub_258E0F590(v9);
    if (swift_dynamicCast())
    {
      return 1;
    }
  }

  else
  {
    sub_258E0F590(v9);
  }

  sub_258F0AA80();
  if (*(a1 + 16) && (v7 = sub_258E2EA2C(v9), (v8 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v7, v10);
    sub_258E0F590(v9);
    if (swift_dynamicCast())
    {
      return 1;
    }
  }

  else
  {
    sub_258E0F590(v9);
  }

  return 2;
}

uint64_t sub_258E7E58C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = sub_258F09F50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v8 + 80);
  v16 = *(v8 + 88);
  v17 = type metadata accessor for ODDIMetricsCalculator();
  WitnessTable = swift_getWitnessTable();
  sub_258E38C54(a1, a2, a3, v17, WitnessTable);
  v20[1] = a4;
  (*(v10 + 104))(v14, *MEMORY[0x277D5D9D8], v9);
  sub_258E3B420(a1, a2, a3, v14, v17, &off_286A2D6F8);
  return (*(v10 + 8))(v14, v9);
}

uint64_t *ODDIMetricsCalculator.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[7];

  v3 = qword_280CC6078;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_280CC6080));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t ODDIMetricsCalculator.__deallocating_deinit()
{
  ODDIMetricsCalculator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E7E870()
{
  v1 = *v0;
  sub_258E7E988();
}

id sub_258E7E8B0()
{
  v0 = sub_258E7E978();

  return v0;
}

uint64_t sub_258E7E8DC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258E77ADC(a1);
}

char *sub_258E7E990(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for CAAnalyticsEventSubmitter();
  v12 = swift_allocObject();
  *(v5 + 5) = v11;
  *(v5 + 6) = &off_286A2C648;
  *(v5 + 2) = v12;
  (*(*(*(v10 + 80) - 8) + 16))(&v5[*(v10 + 136)], a1);
  v13 = qword_280CC6078;
  v14 = sub_258F0A370();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v5[v13], a2, v14);
  *&v5[qword_280CC6070] = a4;
  v16 = &v5[qword_280CC6080];
  *(v16 + 3) = sub_258F09C20();
  *(v16 + 4) = &off_286A2FA30;
  *v16 = a3;
  sub_258F09F30();
  v17 = a4;

  v18 = sub_258F09F20();
  (*(v15 + 8))(a2, v14);
  *(v5 + 7) = v18;
  return v5;
}

char *sub_258E7EB2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ODDIMetricsCalculator();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_258E7E990(a1, a2, a3, a4);
}

void sub_258E7EBB0(uint64_t a1)
{
  v3 = *(sub_258F09A20() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_258E7B8D8(a1, *(v1 + 32), v1 + v5, *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v1 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4), *(v1 + ((v6 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4)) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_258E7ECB4()
{
  result = qword_27F989D08;
  if (!qword_27F989D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989D08);
  }

  return result;
}

uint64_t sub_258E7ED08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E7ED44(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E7ED80(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E7EDBC()
{
  result = qword_27F989D10[0];
  if (!qword_27F989D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F989D10);
  }

  return result;
}

uint64_t dispatch thunk of ODDIMetricsConcluding.conclude(with:endTimes:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_258E08B24;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_258E7EFCC(uint64_t a1)
{
  result = sub_258F0A370();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of ODDIMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

unint64_t sub_258E7F204()
{
  result = qword_27F989DA8;
  if (!qword_27F989DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989DA8);
  }

  return result;
}

unint64_t sub_258E7F258()
{
  result = qword_27F989DB0;
  if (!qword_27F989DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989DB0);
  }

  return result;
}

uint64_t sub_258E7F2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E7F314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUsageMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E7F378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ODDIMetricsDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t ODDIMetricsDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E7F520()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: ODDIMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t ODDIMetricsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ODDIMetricsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E7F6FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E7F500();
}

uint64_t type metadata accessor for ODDIMetricsDataProvider()
{
  result = qword_27F989DC0;
  if (!qword_27F989DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ODDIMetricsDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

char *sub_258E7F940(uint64_t a1, char *a2, uint64_t a3)
{
  v31 = a3;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BiomeODDIMetricsConcluder(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_258E8792C(a1, v15, type metadata accessor for BiomeODDIMetricsConcluder);
  v16 = v6[2];
  v32 = a2;
  v30 = v16;
  v16(v10, a2, v5);
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v18 = sub_258F0A4E0();

  v19 = [v17 initWithSuiteName_];

  if (!v19)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  sub_258F09F30();
  sub_258F09F20();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E58, qword_258F12D90);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = type metadata accessor for CAAnalyticsEventSubmitter();
  v25 = swift_allocObject();
  *(v23 + 5) = v24;
  *(v23 + 6) = &off_286A2C648;
  *(v23 + 2) = v25;
  sub_258E8792C(v15, &v23[*(*v23 + 136)], type metadata accessor for BiomeODDIMetricsConcluder);
  v30(&v23[qword_280CC6078], v10, v5);
  *&v23[qword_280CC6070] = v19;
  v26 = &v23[qword_280CC6080];
  *(v26 + 3) = sub_258F09C20();
  *(v26 + 4) = &off_286A2FA30;
  *v26 = v31;
  v27 = sub_258F09F20();

  v28 = v6[1];
  v28(v32, v5);
  sub_258E87994(v33, type metadata accessor for BiomeODDIMetricsConcluder);
  v28(v10, v5);
  sub_258E87994(v15, type metadata accessor for BiomeODDIMetricsConcluder);
  *(v23 + 7) = v27;
  return v23;
}

char *sub_258E7FC74(uint64_t a1, char *a2, uint64_t a3)
{
  v31 = a3;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_258E8792C(a1, v15, type metadata accessor for PoirotODDIMetricsConcluder);
  v16 = v6[2];
  v32 = a2;
  v30 = v16;
  v16(v10, a2, v5);
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v18 = sub_258F0A4E0();

  v19 = [v17 initWithSuiteName_];

  if (!v19)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  sub_258F09F30();
  sub_258F09F20();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E50, &qword_258F12D88);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = type metadata accessor for CAAnalyticsEventSubmitter();
  v25 = swift_allocObject();
  *(v23 + 5) = v24;
  *(v23 + 6) = &off_286A2C648;
  *(v23 + 2) = v25;
  sub_258E8792C(v15, &v23[*(*v23 + 136)], type metadata accessor for PoirotODDIMetricsConcluder);
  v30(&v23[qword_280CC6078], v10, v5);
  *&v23[qword_280CC6070] = v19;
  v26 = &v23[qword_280CC6080];
  *(v26 + 3) = sub_258F09C20();
  *(v26 + 4) = &off_286A2FA30;
  *v26 = v31;
  v27 = sub_258F09F20();

  v28 = v6[1];
  v28(v32, v5);
  sub_258E87994(v33, type metadata accessor for PoirotODDIMetricsConcluder);
  v28(v10, v5);
  sub_258E87994(v15, type metadata accessor for PoirotODDIMetricsConcluder);
  *(v23 + 7) = v27;
  return v23;
}

unint64_t sub_258E7FFAC(uint64_t a1)
{
  sub_258DE20C0(a1, v25, &qword_27F989868, &unk_258F12D70);
  if (v26)
  {
    if (swift_dynamicCast())
    {
      v2 = 0;
      v3 = v22;
      return v3 | (v2 << 32);
    }
  }

  else
  {
    sub_258DE2184(v25, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, v20, &qword_27F989868, &unk_258F12D70);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DA0, &qword_258F12D80);
    if (swift_dynamicCast())
    {
      if (*(&v23 + 1))
      {
        sub_258DDA76C(&v22, v25);
        v4 = v26;
        v5 = __swift_project_boxed_opaque_existential_1(v25, v26);
        v6 = *(*(v4 - 8) + 64);
        MEMORY[0x28223BE20](v5, v5);
        (*(v8 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_258E7F258();
        sub_258F0AB80();
        v3 = v22;
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        v2 = 0;
        return v3 | (v2 << 32);
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }
  }

  else
  {
    sub_258DE2184(v20, &qword_27F989868, &unk_258F12D70);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
  }

  sub_258DE2184(&v22, &qword_27F989D98, &unk_258F12A80);
  sub_258DE20C0(a1, &v22, &qword_27F989868, &unk_258F12D70);
  if (*(&v23 + 1))
  {
    sub_258DEB8B8(&v22, v25);
    sub_258DE4090(v25, &v22);
    v9 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      sub_258DE4090(&v22, v20);
      v13 = sub_258F0A550();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      v16 = sub_258DE3018(v13, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_258DD8000, v9, v10, "#ODDIMetricsCalculator: value of the unexpected type casting to UInt32: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    sub_258DE2184(&v22, &qword_27F989868, &unk_258F12D70);
  }

  v3 = 0;
  v2 = 1;
  return v3 | (v2 << 32);
}

uint64_t sub_258E80364(uint64_t a1)
{
  sub_258DE20C0(a1, v24, &qword_27F989868, &unk_258F12D70);
  if (v25)
  {
    if (swift_dynamicCast())
    {
      return v21;
    }
  }

  else
  {
    sub_258DE2184(v24, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, v19, &qword_27F989868, &unk_258F12D70);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DA0, &qword_258F12D80);
    if (swift_dynamicCast())
    {
      if (*(&v22 + 1))
      {
        sub_258DDA76C(&v21, v24);
        v3 = v25;
        v4 = __swift_project_boxed_opaque_existential_1(v24, v25);
        v5 = *(*(v3 - 8) + 64);
        MEMORY[0x28223BE20](v4, v4);
        (*(v7 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_258E7F204();
        sub_258F0AB80();
        v8 = v21;
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        return v8;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    sub_258DE2184(v19, &qword_27F989868, &unk_258F12D70);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
  }

  sub_258DE2184(&v21, &qword_27F989D98, &unk_258F12A80);
  sub_258DE20C0(a1, v24, &qword_27F989868, &unk_258F12D70);
  if (v25)
  {
    result = swift_dynamicCast();
    if (result)
    {
      if ((v21 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (*&v21 > -1.0)
      {
        if (*&v21 < 1.84467441e19)
        {
          return *&v21;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_258DE2184(v24, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, &v21, &qword_27F989868, &unk_258F12D70);
  if (*(&v22 + 1))
  {
    sub_258DEB8B8(&v21, v24);
    sub_258DE4090(v24, &v21);
    v9 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      sub_258DE4090(&v21, v19);
      v13 = sub_258F0A550();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(&v21);
      v16 = sub_258DE3018(v13, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_258DD8000, v9, v10, "#ODDIMetricsCalculator: value of the unexpected type casting to UInt64: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    sub_258DE2184(&v21, &qword_27F989868, &unk_258F12D70);
  }

  return 0;
}

uint64_t sub_258E807B4(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_258F09F40();
  v2[51] = v3;
  v4 = *(v3 - 8);
  v2[52] = v4;
  v5 = *(v4 + 64) + 15;
  v2[53] = swift_task_alloc();
  v6 = sub_258F09F50();
  v2[54] = v6;
  v7 = *(v6 - 8);
  v2[55] = v7;
  v8 = *(v7 + 64) + 15;
  v2[56] = swift_task_alloc();
  v9 = sub_258F09B00();
  v2[57] = v9;
  v10 = *(v9 - 8);
  v2[58] = v10;
  v11 = *(v10 + 64) + 15;
  v2[59] = swift_task_alloc();
  v12 = sub_258F09A20();
  v2[60] = v12;
  v13 = *(v12 - 8);
  v2[61] = v13;
  v14 = *(v13 + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E809D0, 0, 0);
}

uint64_t sub_258E809D0()
{
  v60 = v0;
  v1 = *(v0 + 400);
  *(v0 + 552) = qword_280CC6078;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsCalculator: SQL calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 400);

  v6 = *(v5 + qword_280CC6070);
  v7 = sub_258F0A4E0();
  v55 = v6;
  v8 = [v6 BOOLForKey_];

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v9, v10))
  {
    if (v8)
    {
      v11 = "#ODDIMetricsCalculator: Include current date data for aggregation.";
    }

    else
    {
      v11 = "#ODDIMetricsCalculator: current date data NOT included for aggregation.";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v9, v10, v11, v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v16 = *(v0 + 464);
  v15 = *(v0 + 472);
  v17 = *(v0 + 456);
  v18 = *(v0 + 400);

  *(v0 + 336) = MEMORY[0x277D84F90];
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v19 = *(v16 + 8);
  *(v0 + 560) = v19;
  *(v0 + 568) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v15, v17);
  v20 = sub_258DE41D4();
  *(v0 + 576) = v20;
  v54 = v20;
  v21 = sub_258F0A4E0();
  LOBYTE(v14) = [v55 BOOLForKey_];

  v22 = *(v0 + 528);
  if (v14)
  {
    v23 = *(v0 + 528);
    sub_258F09A10();
  }

  else
  {
    v24 = *(v0 + 472);
    v25 = *(v0 + 456);
    sub_258F09AC0();
    sub_258F09BB0();
    v19(v24, v25);
  }

  v58 = *(*(v0 + 488) + 16);
  v58(*(v0 + 520), *(v0 + 528), *(v0 + 480));
  v26 = sub_258F0A350();
  v27 = sub_258F0A800();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 520);
  v31 = *(v0 + 480);
  v30 = *(v0 + 488);
  if (v28)
  {
    v32 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v32 = 136315138;
    sub_258E8731C(&qword_27F988750, MEMORY[0x277CC9578]);
    v33 = sub_258F0AD60();
    v35 = v34;
    v56 = v27;
    v36 = *(v30 + 8);
    v36(v29, v31);
    v37 = sub_258DE3018(v33, v35, &v59);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_258DD8000, v26, v56, "#ODDIMetricsCalculator: EndTime: %s.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x259C9EF40](v57, -1, -1);
    MEMORY[0x259C9EF40](v32, -1, -1);
  }

  else
  {

    v36 = *(v30 + 8);
    v36(v29, v31);
  }

  *(v0 + 584) = v36;
  v38 = *(v0 + 544);
  v39 = *(v0 + 536);
  v40 = *(v0 + 528);
  v42 = *(v0 + 504);
  v41 = *(v0 + 512);
  v43 = *(v0 + 480);
  v44 = *(v0 + 400);
  v45 = sub_258F0A0E0();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  sub_258F0A0D0();
  v48 = sub_258F0A0B0();
  *(v0 + 592) = v48;

  v49 = *(*v44 + 136);
  v58(v41, v39, v43);
  v58(v42, v38, v43);

  v50 = sub_258E85880();
  *(v0 + 600) = 0;
  *(v0 + 608) = v51;
  *(v0 + 616) = v50;
  v52 = swift_task_alloc();
  *(v0 + 624) = v52;
  *v52 = v0;
  v52[1] = sub_258E810E4;

  return sub_258E6A310(v54, v48);
}

uint64_t sub_258E810E4(uint64_t a1)
{
  v2 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = a1;

  return MEMORY[0x2822009F8](sub_258E811E4, 0, 0);
}

uint64_t sub_258E811E4()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  sub_258F0A040();

  if (sub_258F0A070())
  {
    v4 = *(v88 + 600);
    v5 = sub_258F0A060();
    if (v5)
    {
      sub_258E78E84(v5, *(v88 + 400), *(v88 + 512), v88 + 376, (v88 + 384), (v88 + 344), v88 + 352, (v88 + 360), (v0 + 368), *(v88 + 504), (v0 + 336));
      if (v4)
      {
        v7 = *(v88 + 632);
        v8 = *(v88 + 400);

        v9 = *(v88 + 592);
        v10 = *(v88 + 584);
        v11 = *(v88 + 576);
        v83 = *(v88 + 544);
        v12 = *(v88 + 536);
        v13 = *(v88 + 528);
        v14 = *(v88 + 504);
        v15 = *(v88 + 480);
        v10(*(v88 + 512), v15);
        v10(v14, v15);

        v10(v13, v15);
        v10(v12, v15);
        v10(v83, v15);
        v16 = *(v88 + 336);

        v17 = *(v88 + 544);
        v18 = *(v88 + 536);
        v19 = *(v88 + 528);
        v20 = *(v88 + 520);
        v22 = *(v88 + 504);
        v21 = *(v88 + 512);
        v23 = *(v88 + 496);
        v24 = *(v88 + 472);
        v25 = *(v88 + 448);
        v84 = *(v88 + 424);

        v26 = *(v88 + 8);
        goto LABEL_20;
      }

      while (1)
      {

        if ((sub_258F0A070() & 1) == 0)
        {
          break;
        }

        v6 = sub_258F0A060();
        if (!v6)
        {
          break;
        }

        sub_258E78E84(v6, *(v88 + 400), *(v88 + 512), v88 + 376, (v88 + 384), (v88 + 344), v88 + 352, (v88 + 360), (v0 + 368), *(v88 + 504), (v0 + 336));
      }
    }
  }

  v85 = (v0 + 368);
  v72 = v0 + 336;
  v27 = *(v88 + 632);
  v28 = *(v88 + 592);
  v29 = *(v88 + 584);
  v30 = *(v88 + 552);
  v32 = *(v88 + 504);
  v31 = *(v88 + 512);
  v33 = *(v88 + 480);
  v34 = *(v88 + 488);
  v35 = *(v88 + 400);

  v29(v31, v33);
  v29(v32, v33);
  v36 = sub_258F0A350();
  v37 = sub_258F0A810();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    swift_beginAccess();
    *(v38 + 4) = *(*v72 + 16);
    _os_log_impl(&dword_258DD8000, v36, v37, "#ODDIMetricsCalculator: Query yielded %ld results", v38, 0xCu);
    MEMORY[0x259C9EF40](v38, -1, -1);
  }

  swift_beginAccess();
  v39 = *(v88 + 344);
  v40 = v88;
  if (v39 >= 1)
  {
    v41 = *(v88 + 400);
    sub_258E2D30C(v39, 0x69737361206C696ELL, 0xEF6449746E617473);
    v40 = v88;
  }

  swift_beginAccess();
  if (*v85 >= 1)
  {
    v42 = *(v88 + 400);
    sub_258E2D30C(*v85, 0xD000000000000014, 0x8000000258F1CBD0);
    v40 = v88;
  }

  v43 = v40[55];
  v44 = v40[52];
  v79 = v40[50];
  swift_beginAccess();
  *(v88 + 48) = v40[47];
  *(v88 + 56) = 0xD000000000000021;
  *(v88 + 64) = 0x8000000258F1C520;
  swift_beginAccess();
  *(v88 + 72) = *(v88 + 352);
  *(v88 + 80) = 0xD00000000000001CLL;
  *(v88 + 88) = 0x8000000258F1C550;
  swift_beginAccess();
  *(v88 + 96) = *(v88 + 360);
  *(v88 + 104) = 0xD00000000000001ALL;
  *(v88 + 112) = 0x8000000258F1CBF0;
  swift_beginAccess();
  v45 = 0;
  *(v88 + 120) = *(v88 + 384);
  *(v88 + 128) = 0xD00000000000002CLL;
  *(v88 + 136) = 0x8000000258F1C570;
  v46 = v88;
  v86 = *MEMORY[0x277D5D9D8];
  v81 = (v43 + 104);
  v47 = (v43 + 8);
  v77 = *MEMORY[0x277D5D9B8];
  v73 = (v44 + 8);
  v75 = (v44 + 104);
  do
  {
    v48 = v46[v45 + 6];
    v49 = v46[v45 + 7];
    v50 = v46[v45 + 8];

    v51 = v46[56];
    v52 = v46[54];
    if (v48 < 1)
    {
      (*v81)(v46[56], v86, v46[54]);
    }

    else
    {
      v53 = v46[53];
      v54 = v46[51];
      v55 = *(v88 + 400);
      sub_258E2D30C(v48, v49, v50);
      (*v81)(v51, v86, v52);
      v56 = *(v79 + 56);
      (*v75)(v53, v77, v54);
      sub_258F09F10();
      v46 = v88;
      (*v73)(v53, v54);
    }

    (*v47)(v46[56], v46[54]);

    v45 += 3;
  }

  while (v45 != 12);
  v57 = v46[74];
  v58 = v46[73];
  v59 = v46;
  v60 = v46[72];
  v61 = v59[71];
  v62 = v59[70];
  v74 = v59[67];
  v76 = v59[68];
  v70 = v59[66];
  v78 = v59[65];
  v80 = v59[64];
  v82 = v59[63];
  v63 = v59[62];
  v64 = v59[59];
  v65 = v59[60];
  v66 = v59[57];
  v87 = v59[56];
  v89 = v59[53];
  v67 = v59[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
  swift_arrayDestroy();
  sub_258F0A0F0();
  sub_258F09AC0();
  sub_258F09BB0();
  v62(v64, v66);
  v71 = sub_258F09B60();
  v58(v63, v65);

  v58(v70, v65);
  v58(v74, v65);
  v58(v76, v65);
  swift_beginAccess();
  v68 = v59[42];
  *v67 = MEMORY[0x277D84F90];
  v67[1] = v71;
  v67[2] = v68;

  v26 = v59[1];
LABEL_20:

  return v26();
}

uint64_t sub_258E81A14(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = sub_258F09F40();
  v2[44] = v3;
  v4 = *(v3 - 8);
  v2[45] = v4;
  v5 = *(v4 + 64) + 15;
  v2[46] = swift_task_alloc();
  v6 = sub_258F09F50();
  v2[47] = v6;
  v7 = *(v6 - 8);
  v2[48] = v7;
  v8 = *(v7 + 64) + 15;
  v2[49] = swift_task_alloc();
  v9 = sub_258F09B00();
  v2[50] = v9;
  v10 = *(v9 - 8);
  v2[51] = v10;
  v11 = *(v10 + 64) + 15;
  v2[52] = swift_task_alloc();
  v12 = sub_258F09A20();
  v2[53] = v12;
  v13 = *(v12 - 8);
  v2[54] = v13;
  v2[55] = *(v13 + 64);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E81C38, 0, 0);
}

uint64_t sub_258E81C38()
{
  v90 = v0;
  v1 = v0[43];
  v0[63] = qword_280CC6078;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsCalculator: SQL calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[43];

  v6 = *(v5 + qword_280CC6070);
  v7 = sub_258F0A4E0();
  v79 = v6;
  v8 = [v6 BOOLForKey_];

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v9, v10))
  {
    if (v8)
    {
      v11 = "#ODDIMetricsCalculator: Include current date data for aggregation.";
    }

    else
    {
      v11 = "#ODDIMetricsCalculator: current date data NOT included for aggregation.";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v9, v10, v11, v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  v14 = v0[61];
  v13 = v0[62];
  v15 = v0[51];
  v16 = v0[52];
  v85 = v0[50];
  v87 = v0[43];

  v17 = swift_allocObject();
  v0[64] = v17;
  v84 = v17;
  *(v17 + 16) = MEMORY[0x277D84F90];
  v18 = swift_allocObject();
  v0[65] = v18;
  v83 = v18;
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  v0[66] = v19;
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v0[67] = v20;
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  v0[68] = v21;
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  v0[69] = v22;
  *(v22 + 16) = 0;
  v23 = swift_allocObject();
  v0[70] = v23;
  *(v23 + 16) = 0;
  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v24 = *(v15 + 8);
  v0[71] = v24;
  v0[72] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v16, v85);
  v25 = sub_258DE41D4();
  v0[73] = v25;
  v74 = v22;
  v76 = v21;
  v86 = v20;
  v88 = v19;
  v75 = v25;
  v26 = sub_258F0A4E0();
  LOBYTE(v20) = [v79 BOOLForKey_];

  v27 = v0[60];
  if (v20)
  {
    v28 = v0[60];
    sub_258F09A10();
  }

  else
  {
    v29 = v0[52];
    v30 = v0[50];
    sub_258F09AC0();
    sub_258F09BB0();
    v24(v29, v30);
  }

  v82 = v23;
  v77 = *(v0[54] + 16);
  v77(v0[59], v0[60], v0[53]);
  v31 = sub_258F0A350();
  v32 = sub_258F0A800();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[59];
  v35 = v0[53];
  v36 = v0[54];
  if (v33)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v89 = v38;
    *v37 = 136315138;
    sub_258E8731C(&qword_27F988750, MEMORY[0x277CC9578]);
    v39 = sub_258F0AD60();
    v41 = v40;
    (*(v36 + 8))(v34, v35);
    v42 = sub_258DE3018(v39, v41, &v89);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_258DD8000, v31, v32, "#ODDIMetricsCalculator: EndTime: %s.", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x259C9EF40](v38, -1, -1);
    MEMORY[0x259C9EF40](v37, -1, -1);
  }

  else
  {

    (*(v36 + 8))(v34, v35);
  }

  v43 = v0[61];
  v44 = v0[60];
  v46 = v0[57];
  v45 = v0[58];
  v67 = v45;
  v68 = v46;
  v69 = v0[62];
  v47 = v0[54];
  v71 = v0[55];
  v48 = v0[53];
  v49 = v0[43];
  v50 = sub_258F0A0E0();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  sub_258F0A0D0();
  v73 = sub_258F0A0B0();
  v0[74] = v73;

  v81 = *(*v49 + 136);
  v53 = v49;
  v77(v45, v43, v48);
  v54 = v46;
  v55 = v48;
  v77(v54, v69, v48);
  v56 = *(v47 + 80);
  v57 = (v56 + 24) & ~v56;
  v58 = v71 + 7;
  v59 = (v57 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = ((v59 + 15) & 0xFFFFFFFFFFFFFFF8);
  v78 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v56 + v61 + 8) & ~v56;
  v70 = (v62 + v58) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v0[75] = v63;
  *(v63 + 16) = v53;
  v64 = *(v47 + 32);
  v64(v63 + v57, v67, v55);
  *(v63 + v59) = v74;
  *&v80[v63] = v82;
  *(v63 + v78) = v83;
  *(v63 + v72) = v88;
  *(v63 + v60) = v86;
  *(v63 + v61) = v76;
  v64(v63 + v62, v68, v55);
  *(v63 + v70) = v84;

  v65 = swift_task_alloc();
  v0[76] = v65;
  *v65 = v0;
  v65[1] = sub_258E82508;

  return sub_258E912D4(v75, v73, sub_258E87828, v63);
}

uint64_t sub_258E82508()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = *(v2 + 600);
  v6 = *(v2 + 592);

  if (v0)
  {
    v7 = sub_258E82C80;
  }

  else
  {
    v7 = sub_258E8266C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_258E8266C()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[43];

  v4 = sub_258F0A350();
  v5 = sub_258F0A810();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[64];
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(*(v6 + 16) + 16);

    _os_log_impl(&dword_258DD8000, v4, v5, "#ODDIMetricsCalculator: Query yielded %ld results", v7, 0xCu);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  else
  {
    v8 = v0[64];
  }

  v9 = v0[65];
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (v10 >= 1)
  {
    v11 = v0[43];
    sub_258E2D55C(v10, 0x69737361206C696ELL, 0xEF6449746E617473);
  }

  v12 = v0[68];
  swift_beginAccess();
  v13 = *(v12 + 16);
  if (v13 >= 1)
  {
    v14 = v0[43];
    sub_258E2D55C(v13, 0xD000000000000014, 0x8000000258F1CBD0);
  }

  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[67];
  v18 = v0[66];
  v19 = v0[48];
  v20 = v0[45];
  v60 = v0[43];
  swift_beginAccess();
  v0[6] = *(v16 + 16);
  v0[7] = 0xD000000000000021;
  v0[8] = 0x8000000258F1C520;
  swift_beginAccess();
  v0[9] = *(v18 + 16);
  v0[10] = 0xD00000000000001CLL;
  v0[11] = 0x8000000258F1C550;
  swift_beginAccess();
  v0[12] = *(v17 + 16);
  v0[13] = 0xD00000000000001ALL;
  v0[14] = 0x8000000258F1CBF0;
  swift_beginAccess();
  v21 = 0;
  v0[15] = *(v15 + 16);
  v0[16] = 0xD00000000000002CLL;
  v0[17] = 0x8000000258F1C570;
  v66 = *MEMORY[0x277D5D9D8];
  v62 = (v19 + 8);
  v64 = (v19 + 104);
  v58 = *MEMORY[0x277D5D9B8];
  v54 = (v20 + 8);
  v56 = (v20 + 104);
  do
  {
    v22 = v0[v21 + 6];
    v23 = v0[v21 + 7];
    v24 = v0[v21 + 8];

    v25 = v0[49];
    v26 = v0[47];
    if (v22 < 1)
    {
      (*v64)(v0[49], v66, v0[47]);
    }

    else
    {
      v27 = v0[46];
      v29 = v0[43];
      v28 = v0[44];
      sub_258E2D55C(v22, v23, v24);
      (*v64)(v25, v66, v26);
      v30 = *(v60 + 56);
      (*v56)(v27, v58, v28);
      sub_258F09F10();
      (*v54)(v27, v28);
    }

    (*v62)(v0[49], v0[47]);

    v21 += 3;
  }

  while (v21 != 12);
  v31 = v0[73];
  v32 = v0[71];
  v49 = v0[70];
  v50 = v0[69];
  v51 = v0[68];
  v52 = v0[67];
  v55 = v0[66];
  v57 = v0[65];
  v48 = v0[64];
  v33 = v0[61];
  v46 = v0[74];
  v47 = v0[62];
  v44 = v0[72];
  v45 = v0[60];
  v59 = v0[59];
  v61 = v0[58];
  v63 = v0[57];
  v34 = v0[56];
  v35 = v0[53];
  v36 = v0[54];
  v37 = v0[52];
  v38 = v0[50];
  v65 = v0[49];
  v67 = v0[46];
  v39 = v0[42];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
  swift_arrayDestroy();
  sub_258F0A0F0();
  sub_258F09AC0();
  sub_258F09BB0();
  v32(v37, v38);
  v53 = sub_258F09B60();
  v40 = *(v36 + 8);
  v40(v34, v35);

  v40(v45, v35);
  v40(v33, v35);
  v40(v47, v35);
  swift_beginAccess();
  v41 = *(v48 + 16);

  *v39 = MEMORY[0x277D84F90];
  v39[1] = v53;
  v39[2] = v41;

  v42 = v0[1];

  return v42();
}

uint64_t sub_258E82C80()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 480);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);

  v5 = *(v4 + 8);
  v5(v2, v3);
  v24 = *(v0 + 616);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v14 = *(v0 + 544);
  v15 = *(v0 + 536);
  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  v10 = *(v0 + 496);
  v16 = *(v0 + 528);
  v17 = *(v0 + 480);
  v18 = *(v0 + 472);
  v19 = *(v0 + 464);
  v20 = *(v0 + 456);
  v21 = *(v0 + 448);
  v11 = *(v0 + 424);
  v22 = *(v0 + 392);
  v23 = *(v0 + 368);
  v5(*(v0 + 488), v11);
  v5(v10, v11);

  v12 = *(v0 + 8);

  return v12();
}

void sub_258E82E38(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v253 = a8;
  v254 = a7;
  v255 = a6;
  v252 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v256 = &v245[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v245[-v23];
  v25 = type metadata accessor for DeviceUsageMetrics(0);
  v259 = *(v25 - 8);
  v26 = *(v259 + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v30 = &v245[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28, v31);
  v260 = &v245[-v32];
  v33 = type metadata accessor for EventMetadata(0);
  v261 = *(v33 - 8);
  v34 = *(v261 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v270 = &v245[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37 - 8, v39);
  v264 = &v245[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v40, v42);
  v267 = &v245[-v44];
  v46 = MEMORY[0x28223BE20](v43, v45);
  v268 = &v245[-v47];
  MEMORY[0x28223BE20](v46, v48);
  v266 = &v245[-v49];
  v257 = type metadata accessor for CommonDigestElements();
  v50 = *(*(v257 - 8) + 64);
  MEMORY[0x28223BE20](v257, v51);
  v284 = &v245[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = qword_280CC6078;

  v271 = a2;
  v269 = v53;
  v54 = sub_258F0A350();
  v55 = sub_258F0A810();

  v56 = os_log_type_enabled(v54, v55);
  v265 = v12;
  v258 = v30;
  v262 = v24;
  v263 = v33;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = a3;
    v59 = a5;
    v60 = swift_slowAlloc();
    v281 = v60;
    *v57 = 136315138;
    v61 = sub_258F0A420();
    v63 = sub_258DE3018(v61, v62, &v281);

    *(v57 + 4) = v63;
    _os_log_impl(&dword_258DD8000, v54, v55, "ODDMetrics row data: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    v64 = v60;
    a5 = v59;
    a3 = v58;
    MEMORY[0x259C9EF40](v64, -1, -1);
    MEMORY[0x259C9EF40](v57, -1, -1);
  }

  v65 = a3;
  v66 = v271;
  v67 = v271;
  v68 = sub_258E2ACD4(a1, v65, 0xD00000000000002CLL, 0x8000000258F1CEA0);
  v70 = v68;
  if ((v69 & 0x10000) != 0)
  {

    return;
  }

  if (v69)
  {
    v71 = v69;
    v67 = v252;
    swift_beginAccess();
    v72 = *(v67 + 16);
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (v73)
    {
      __break(1u);
      goto LABEL_165;
    }

    *(v67 + 16) = v74;
    LOWORD(v69) = v71;
  }

  if ((v69 & 0x100) != 0)
  {
    swift_beginAccess();
    v75 = *(a5 + 16);
    v73 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (!v73)
    {
      *(a5 + 16) = v76;
      goto LABEL_10;
    }

LABEL_165:
    __break(1u);
LABEL_166:
    if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
    {
      v136 = 10;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
    {
      v136 = 11;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
    {
      v136 = 12;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
    {
      v136 = 13;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
    {
      v136 = 14;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
    {
      v136 = 15;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
    {
      v136 = 16;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
    {
      v136 = 17;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
    {
      v136 = 18;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
    {
      v136 = 19;
      goto LABEL_354;
    }

LABEL_187:
    if ([v67 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
    {
      v136 = 20;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
    {
      v136 = 21;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
    {
      v136 = 22;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
    {
      v136 = 23;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
    {
      v136 = 24;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
    {
      v136 = 25;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
    {
      v136 = 26;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
    {
      v136 = 27;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
    {
      v136 = 28;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
    {
      v136 = 29;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
    {
      v136 = 30;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
    {
      v136 = 31;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
    {
      v136 = 32;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
    {
      v136 = 33;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
    {
      v136 = 34;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
    {
      v136 = 35;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
    {
      v136 = 36;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
    {
      v136 = 37;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
    {
      v136 = 38;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
    {
      v136 = 39;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
    {
      v136 = 40;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
    {
      v136 = 41;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
    {
      v136 = 42;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
    {
      v136 = 43;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
    {
      v136 = 44;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
    {
      v136 = 45;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
    {
      v136 = 46;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
    {
      v136 = 47;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
    {
      v136 = 48;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
    {
      v136 = 49;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
    {
      v136 = 50;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
    {
      v136 = 51;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
    {
      v136 = 52;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
    {
      v136 = 53;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
    {
      v136 = 54;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
    {
      v136 = 55;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
    {
      v136 = 56;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
    {
      v136 = 57;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
    {
      v136 = 58;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
    {
      v136 = 59;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
    {
      v136 = 60;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
    {
      v136 = 61;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
    {
      v136 = 62;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
    {
      v136 = 63;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
    {
      v136 = 64;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
    {
      v136 = 65;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v136 = 66;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v136 = 67;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
    {
      v136 = 68;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
    {
      v136 = 69;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
    {
      v136 = 70;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
    {
      v136 = 71;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
    {
      v136 = 72;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
    {
      v136 = 73;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
    {
      v136 = 74;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
    {
      v136 = 75;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
    {
      v136 = 76;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
    {
      v136 = 77;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
    {
      v136 = 78;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
    {
      v136 = 79;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
    {
      v136 = 80;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
    {
      v136 = 81;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
    {
      v136 = 82;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
    {
      v136 = 83;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
    {
      v136 = 84;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
    {
      v136 = 85;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
    {
      v136 = 87;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
    {
      v136 = 88;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
    {
      v136 = 89;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
    {
      v136 = 90;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
    {
      v136 = 91;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
    {
      v136 = 92;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
    {
      v136 = 93;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
    {
      v136 = 94;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
    {
      v136 = 95;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
    {
      v136 = 96;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
    {
      v136 = 97;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
    {
      v136 = 98;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
    {
      v136 = 99;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
    {
      v136 = 100;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
    {
      v136 = 101;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
    {
      v136 = 102;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
    {
      v136 = 103;
    }

    else
    {
      v136 = 0;
    }

    goto LABEL_354;
  }

LABEL_10:
  sub_258E2BA80(a1, v284);
  v77 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v280[0] = 0xD000000000000015;
  v280[1] = 0x8000000258F1BA40;
  sub_258F0AA80();
  v78 = *(a1 + 2);
  v251 = v70;
  if (v78 && (v79 = sub_258E2EA2C(&v281), (v80 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v79, &v282);
    sub_258E0F590(&v281);
    if (swift_dynamicCast())
    {
      v81 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v280[0], v280[1]);

      v250 = v81;
    }

    else
    {
      v250 = v77;
    }
  }

  else
  {
    v250 = v77;
    sub_258E0F590(&v281);
  }

  v82 = sub_258F09A70();
  v70 = *(*(v82 - 8) + 56);
  (v70)(v266, 1, 1, v82);
  strcpy(v280, "assistant_id");
  BYTE5(v280[1]) = 0;
  HIWORD(v280[1]) = -5120;
  sub_258F0AA80();
  v83 = *(a1 + 2);
  v252 = v82;
  if (v83 && (v84 = sub_258E2EA2C(&v281), (v85 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v84, &v282);
    sub_258E0F590(&v281);
    if (swift_dynamicCast())
    {
      v86 = v264;
      sub_258F09A30();

      v87 = v266;
      sub_258DE2184(v266, &qword_27F988730, &unk_258F0F8E0);
      v88 = v86;
      v82 = v252;
      sub_258E2EAD8(v88, v87, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_25;
    }
  }

  else
  {
    sub_258E0F590(&v281);
  }

  v89 = sub_258F0A350();
  v67 = sub_258F0A820();
  if (os_log_type_enabled(v89, v67))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_258DD8000, v89, v67, "observed NilAssistantId", v90, 2u);
    MEMORY[0x259C9EF40](v90, -1, -1);
  }

  v91 = v255;
  swift_beginAccess();
  v92 = *(v91 + 16);
  v73 = __OFADD__(v92, 1);
  v93 = v92 + 1;
  if (v73)
  {
    __break(1u);
    goto LABEL_159;
  }

  *(v91 + 16) = v93;
LABEL_25:
  (v70)(v268, 1, 1, v82);
  v278 = 0xD000000000000015;
  v279 = 0x8000000258F189D0;
  sub_258F0AA80();
  if (!*(a1 + 2) || (v94 = sub_258E2EA2C(&v281), (v95 & 1) == 0))
  {
    sub_258E0F590(&v281);
LABEL_30:
    v99 = sub_258F0A350();
    v67 = sub_258F0A820();
    if (os_log_type_enabled(v99, v67))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_258DD8000, v99, v67, "observed NilDeviceAggregationId", v100, 2u);
      MEMORY[0x259C9EF40](v100, -1, -1);
    }

    v101 = v254;
    swift_beginAccess();
    v102 = *(v101 + 16);
    v73 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (!v73)
    {
      *(v101 + 16) = v103;
      goto LABEL_34;
    }

LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  sub_258DE4090(*(a1 + 7) + 32 * v94, &v282);
  sub_258E0F590(&v281);
  if (!swift_dynamicCast())
  {
    goto LABEL_30;
  }

  v96 = v264;
  sub_258F09A30();

  v67 = &unk_258F0F8E0;
  v97 = v268;
  sub_258DE2184(v268, &qword_27F988730, &unk_258F0F8E0);
  v98 = v96;
  v82 = v252;
  sub_258E2EAD8(v98, v97, &qword_27F988730, &unk_258F0F8E0);
LABEL_34:
  (v70)(v267, 1, 1, v82);
  v276 = 0xD000000000000013;
  v277 = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (!*(a1 + 2) || (v67 = a1, v104 = sub_258E2EA2C(&v281), (v105 & 1) == 0))
  {
    sub_258E0F590(&v281);
LABEL_39:
    v108 = v253;
    swift_beginAccess();
    v109 = *(v108 + 16);
    v73 = __OFADD__(v109, 1);
    v110 = v109 + 1;
    if (!v73)
    {
      *(v108 + 16) = v110;
      goto LABEL_41;
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  sub_258DE4090(*(a1 + 7) + 32 * v104, &v282);
  sub_258E0F590(&v281);
  if (!swift_dynamicCast())
  {
    goto LABEL_39;
  }

  v106 = v264;
  sub_258F09A30();

  v107 = v267;
  sub_258DE2184(v267, &qword_27F988730, &unk_258F0F8E0);
  sub_258E2EAD8(v106, v107, &qword_27F988730, &unk_258F0F8E0);
LABEL_41:
  *&v282 = 0xD000000000000029;
  *(&v282 + 1) = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(a1 + 2) && (v111 = sub_258E2EA2C(&v281), (v112 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v111, &v282);
    sub_258E0F590(&v281);
  }

  else
  {
    sub_258E0F590(&v281);
    v282 = 0u;
    v283 = 0u;
  }

  v254 = sub_258E80364(&v282);
  LODWORD(v253) = v113;
  sub_258DE2184(&v282, &qword_27F989868, &unk_258F12D70);
  *&v282 = 0xD00000000000002BLL;
  *(&v282 + 1) = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(a1 + 2) && (v114 = sub_258E2EA2C(&v281), (v115 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v114, &v282);
    sub_258E0F590(&v281);
  }

  else
  {
    sub_258E0F590(&v281);
    v282 = 0u;
    v283 = 0u;
  }

  v249 = sub_258E80364(&v282);
  v248 = v116;
  sub_258DE2184(&v282, &qword_27F989868, &unk_258F12D70);
  v274 = 0xD000000000000016;
  v275 = 0x8000000258F1BA60;
  sub_258F0AA80();
  if (!*(a1 + 2) || (v117 = sub_258E2EA2C(&v281), (v118 & 1) == 0))
  {
    sub_258E0F590(&v281);
LABEL_55:
    v123 = sub_258F0A350();
    v67 = sub_258F0A820();
    if (os_log_type_enabled(v123, v67))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_258DD8000, v123, v67, "observed NilResponseCategory", v124, 2u);
      MEMORY[0x259C9EF40](v124, -1, -1);
    }

    swift_beginAccess();
    v125 = *(a9 + 16);
    v73 = __OFADD__(v125, 1);
    v126 = v125 + 1;
    if (!v73)
    {
      v247 = 0;
      *(a9 + 16) = v126;
      v122 = 1;
      goto LABEL_59;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    if ([v67 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
    {
      v136 = 9;
      goto LABEL_354;
    }

    goto LABEL_166;
  }

  sub_258DE4090(*(a1 + 7) + 32 * v117, &v282);
  sub_258E0F590(&v281);
  if (!swift_dynamicCast())
  {
    goto LABEL_55;
  }

  v119 = v274;
  v120 = v275;

  v121._countAndFlagsBits = v119;
  v121._object = v120;
  SiriReponseCategory.init(rawValue:)(v121);
  v67 = v281;
  if (v281 == 21)
  {
    __break(1u);
    goto LABEL_187;
  }

  LOBYTE(v282) = v67;
  v247 = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(&v282);
  v122 = 0;
LABEL_59:
  v255 = a10;
  v272 = 0x6974756F725F6569;
  v273 = 0xEA0000000000676ELL;
  sub_258F0AA80();
  if (*(a1 + 2) && (v127 = sub_258E2EA2C(&v281), (v128 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v127, &v282);
    sub_258E0F590(&v281);
    if (swift_dynamicCast())
    {
      v66 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v272, v273);

      goto LABEL_67;
    }
  }

  else
  {
    sub_258E0F590(&v281);
  }

  v129 = sub_258F0A350();
  v130 = sub_258F0A800();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&dword_258DD8000, v129, v130, "#ODDIMetricsCalculator: No ieRouting found.", v131, 2u);
    MEMORY[0x259C9EF40](v131, -1, -1);
  }

  v66 = 0;
LABEL_67:
  v272 = 0xD000000000000011;
  v273 = 0x8000000258F1BA80;
  sub_258F0AA80();
  v132 = *(a1 + 2);
  v246 = v122;
  if (!v132 || (v133 = sub_258E2EA2C(&v281), (v134 & 1) == 0))
  {
    sub_258E0F590(&v281);
    goto LABEL_73;
  }

  sub_258DE4090(*(a1 + 7) + 32 * v133, &v282);
  sub_258E0F590(&v281);
  if (!swift_dynamicCast())
  {
LABEL_73:
    v136 = 0;
    v137 = 1;
    goto LABEL_74;
  }

  v135 = sub_258F0A4E0();

  v67 = v135;
  if (([v67 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"] & 1) == 0)
  {
    if ([v67 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
    {
      v136 = 1;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
    {
      v136 = 2;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
    {
      v136 = 3;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
    {
      v136 = 4;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
    {
      v136 = 5;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
    {
      v136 = 6;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
    {
      v136 = 7;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
    {
      v136 = 8;
      goto LABEL_354;
    }

    goto LABEL_162;
  }

  v136 = 0;
LABEL_354:

  v137 = 0;
LABEL_74:
  v138 = v270;
  (v70)(v270, 1, 1, v252);
  v139 = v263;
  v140 = &qword_27F988730;
  sub_258DE20C0(v268, &v138[*(v263 + 20)], &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v267, &v138[*(v139 + 24)], &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v141 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_154;
  }

  if (v141 <= -1.0)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v141 >= 1.84467441e19)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (is_mul_ok(v141, 0x3E8uLL))
  {
    LODWORD(v269) = v137;
    v142 = v136;
    v143 = v66;
    v144 = 1000 * v141;
    v145 = [objc_opt_self() sharedPreferences];
    v146 = [v145 longLivedIdentifierUploadingEnabled];

    v147 = v270;
    v148 = &v270[*(v139 + 28)];
    *v148 = v144;
    v148[8] = 0;
    *&v147[*(v139 + 32)] = v251;
    v149 = &v147[*(v139 + 36)];
    *v149 = v254;
    v149[8] = v253 & 1;
    v150 = &v147[*(v139 + 40)];
    *v150 = v249;
    v150[8] = v248 & 1;
    v151 = &v147[*(v139 + 44)];
    *v151 = 2;
    v151[4] = 0;
    v147[*(v139 + 48)] = v146 ^ 1;
    v152 = type metadata accessor for DeviceUsageMetricsBuilderImpl(0);
    v153 = *(v152 + 48);
    v154 = *(v152 + 52);
    swift_allocObject();
    v155 = DeviceUsageMetricsBuilderImpl.init()();
    v156 = v264;
    sub_258DE20C0(v266, v264, &qword_27F988730, &unk_258F0F8E0);
    v157 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
    swift_beginAccess();
    sub_258E2EA70(v156, v155 + v157, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    v272 = 0x5F746375646F7270;
    v273 = 0xEA00000000006469;
    sub_258F0AA80();
    if (*(a1 + 2) && (v158 = sub_258E2EA2C(&v281), (v159 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 7) + 32 * v158, &v282);
      sub_258E0F590(&v281);
      if (swift_dynamicCast())
      {
        v160 = v272;
        v161 = v273;
        v162 = v143;
        if (v272 == 0x4E41545349535341 && v273 == 0xE900000000000054)
        {

          v163 = 1;
          v164 = v262;
          v165 = v261;
          v166 = v142;
LABEL_87:
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = v163;
          sub_258E8792C(v270, v164, type metadata accessor for EventMetadata);
          (*(v165 + 56))(v164, 0, 1, v139);
          v167 = v256;
          sub_258E2EAD8(v164, v256, &qword_27F9894E0, &unk_258F106A0);
          v168 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
          swift_beginAccess();
          sub_258E2EA70(v167, v155 + v168, &qword_27F9894E0, &unk_258F106A0);
          swift_endAccess();
          strcpy(&v282, "device_type");
          HIDWORD(v282) = -352321536;
          sub_258F0AA80();
          if (*(a1 + 2) && (v169 = sub_258E2EA2C(&v281), (v170 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v169, &v282);
            sub_258E0F590(&v281);
            v171 = swift_dynamicCast();
            v172 = v272;
            v173 = v273;
            if (!v171)
            {
              v172 = 0;
              v173 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v281);
            v172 = 0;
            v173 = 0;
          }

          v174 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
          v175 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType + 8);
          *v174 = v172;
          v174[1] = v173;

          strcpy(&v282, "system_build");
          BYTE13(v282) = 0;
          HIWORD(v282) = -5120;
          sub_258F0AA80();
          if (*(a1 + 2) && (v176 = sub_258E2EA2C(&v281), (v177 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v176, &v282);
            sub_258E0F590(&v281);
            v178 = swift_dynamicCast();
            v179 = v272;
            v180 = v273;
            if (!v178)
            {
              v179 = 0;
              v180 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v281);
            v179 = 0;
            v180 = 0;
          }

          v181 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
          v182 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild + 8);
          *v181 = v179;
          v181[1] = v180;

          v183 = v284;
          v184 = v284[44];
          v185 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
          *v185 = *(v284 + 10);
          *(v185 + 4) = v184;
          v186 = v183[12];
          v187 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
          *v187 = *(v183 + 2);
          *(v187 + 4) = v186;
          v188 = *(v183 + 4);
          v189 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = v188;

          v190 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
          v191 = v250;
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = v250;
          v192 = v188;

          v193 = v183[4];
          v194 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
          *v194 = *v183;
          *(v194 + 4) = v193;
          *&v282 = 0xD000000000000012;
          *(&v282 + 1) = 0x8000000258F1A600;
          v70 = v191;
          sub_258F0AA80();
          if (*(a1 + 2) && (v195 = sub_258E2EA2C(&v281), (v196 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v195, &v282);
            sub_258E0F590(&v281);
            v197 = swift_dynamicCast();
            v198 = v272;
            v199 = v273;
            if (!v197)
            {
              v198 = 0;
              v199 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v281);
            v198 = 0;
            v199 = 0;
          }

          v200 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
          v201 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId + 8);
          *v200 = v198;
          v200[1] = v199;

          *&v282 = 0xD000000000000013;
          *(&v282 + 1) = 0x8000000258F1A620;
          sub_258F0AA80();
          if (*(a1 + 2) && (v202 = sub_258E2EA2C(&v281), (v203 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v202, &v282);
            sub_258E0F590(&v281);
            v204 = swift_dynamicCast();
            v205 = v272;
            v206 = v273;
            if (!v204)
            {
              v205 = 0;
              v206 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v281);
            v205 = 0;
            v206 = 0;
          }

          v207 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
          v208 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId + 8);
          *v207 = v205;
          v207[1] = v206;

          v209 = v284;
          v210 = v284[20];
          v211 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
          *v211 = *(v284 + 4);
          *(v211 + 4) = v210;
          v212 = v209[28];
          v213 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
          *v213 = *(v209 + 6);
          *(v213 + 4) = v212;
          strcpy(&v282, "sub_domain");
          BYTE11(v282) = 0;
          HIDWORD(v282) = -369098752;
          sub_258F0AA80();
          if (*(a1 + 2) && (v214 = sub_258E2EA2C(&v281), (v215 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v214, &v282);
            sub_258E0F590(&v281);
            v216 = swift_dynamicCast();
            v217 = v272;
            v218 = v273;
            if (!v216)
            {
              v217 = 0;
              v218 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v281);
            v217 = 0;
            v218 = 0;
          }

          v219 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
          v220 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain + 8);
          *v219 = v217;
          v219[1] = v218;

          strcpy(&v282, "turn_cnt");
          BYTE9(v282) = 0;
          WORD5(v282) = 0;
          HIDWORD(v282) = -402653184;
          sub_258F0AA80();
          if (*(a1 + 2) && (v221 = sub_258E2EA2C(&v281), (v222 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v221, &v282);
            sub_258E0F590(&v281);
          }

          else
          {
            sub_258E0F590(&v281);
            v282 = 0u;
            v283 = 0u;
          }

          v223 = sub_258E7FFAC(&v282);
          sub_258DE2184(&v282, &qword_27F989868, &unk_258F12D70);
          v224 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
          *v224 = v223;
          *(v224 + 4) = BYTE4(v223) & 1;
          strcpy(&v282, "user_turn_cnt");
          HIWORD(v282) = -4864;
          sub_258F0AA80();
          if (*(a1 + 2) && (v225 = sub_258E2EA2C(&v281), (v226 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v225, &v282);
            sub_258E0F590(&v281);
          }

          else
          {
            sub_258E0F590(&v281);
            v282 = 0u;
            v283 = 0u;
          }

          v139 = a11;
          v227 = sub_258E7FFAC(&v282);
          sub_258DE2184(&v282, &qword_27F989868, &unk_258F12D70);
          v228 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
          *v228 = v227;
          *(v228 + 4) = BYTE4(v227) & 1;
          *&v282 = 0xD000000000000010;
          *(&v282 + 1) = 0x8000000258F1CC50;
          sub_258F0AA80();
          if (*(a1 + 2) && (v229 = sub_258E2EA2C(&v281), (v230 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v229, &v282);
            sub_258E0F590(&v281);
            v231 = swift_dynamicCast();
            v232 = v272;
            v233 = v273;
            if (!v231)
            {
              v232 = 0;
              v233 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v281);
            v232 = 0;
            v233 = 0;
          }

          v234 = v269;
          v235 = (v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
          v236 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId + 8);
          *v235 = v232;
          v235[1] = v233;

          v237 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
          *v237 = v247;
          *(v237 + 4) = v246;
          v238 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds);
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = *&v284[*(v257 + 44)];

          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = sub_258E7E3B0(a1);
          v239 = *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting);
          *(v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = v162;

          v240 = v155 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
          *v240 = v166;
          *(v240 + 4) = v234;
          a1 = v260;
          sub_258E4D51C(v260);

          v136 = v258;
          sub_258E8792C(a1, v258, type metadata accessor for DeviceUsageMetrics);
          swift_beginAccess();
          v140 = *(a11 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a11 + 16) = v140;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_126;
          }

          goto LABEL_157;
        }

        v166 = v142;
        if (sub_258F0AD80())
        {

          v163 = 1;
          v164 = v262;
          v165 = v261;
          goto LABEL_87;
        }

        if (v160 == 0x4F49544154434944 && v161 == 0xE90000000000004ELL)
        {

          v163 = 2;
          v164 = v262;
          v165 = v261;
          goto LABEL_87;
        }

        v244 = sub_258F0AD80();

        v164 = v262;
        v165 = v261;
        if (v244)
        {
          v163 = 2;
          goto LABEL_87;
        }

LABEL_86:
        v163 = 0;
        goto LABEL_87;
      }
    }

    else
    {
      sub_258E0F590(&v281);
    }

    v164 = v262;
    v165 = v261;
    v162 = v143;
    v166 = v142;
    goto LABEL_86;
  }

LABEL_156:
  __break(1u);
LABEL_157:
  v140 = sub_258DE2968(0, v140[2] + 1, 1, v140);
  *(v139 + 16) = v140;
LABEL_126:
  v243 = v140[2];
  v242 = v140[3];
  if (v243 >= v242 >> 1)
  {
    v140 = sub_258DE2968(v242 > 1, v243 + 1, 1, v140);
  }

  v140[2] = v243 + 1;
  sub_258E7F314(v136, v140 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v243);
  *(v139 + 16) = v140;
  swift_endAccess();

  sub_258E87994(a1, type metadata accessor for DeviceUsageMetrics);
  sub_258E87994(v270, type metadata accessor for EventMetadata);
  sub_258DE2184(v267, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v268, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v266, &qword_27F988730, &unk_258F0F8E0);
  sub_258E87994(v284, type metadata accessor for CommonDigestElements);
}