uint64_t sub_258E85880()
{
  v2 = sub_258F0A540();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = type metadata accessor for BiomeODDIMetricsConcluder(0);
  v6 = *(v5 + 20);
  sub_258F0A530();
  v7 = sub_258F0A4C0();
  v9 = v8;
  if (v1)
  {
    v10 = v0 + *(v5 + 24);
    v11 = sub_258F0A350();
    v12 = sub_258F0A820();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_258DD8000, v11, v12, "#BiomeODDIMetricsConcluder: SQL file could not be loaded", v13, 2u);
      MEMORY[0x259C9EF40](v13, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v14 = 10;
    swift_willThrow();
  }

  else
  {
    v15 = *(v5 + 24);

    v16 = sub_258F0A350();
    v17 = sub_258F0A810();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_258DE3018(v7, v9, &v21);
      _os_log_impl(&dword_258DD8000, v16, v17, "#BiomeODDIMetricsConcluder: SQL: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x259C9EF40](v19, -1, -1);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }
  }

  return v7;
}

uint64_t sub_258E85AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_258E85AEC, 0, 0);
}

uint64_t sub_258E85AEC()
{
  v1 = v0[6];
  v2 = sub_258E85880();
  v0[7] = 0;
  v0[8] = v3;
  v0[9] = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_258E85BF0;
  v6 = v0[2];
  v5 = v0[3];

  return sub_258E6A310(v6, v5);
}

uint64_t sub_258E85BF0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_258E85CF0, 0, 0);
}

uint64_t sub_258E85CF0()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_258F0A040();

  if (sub_258F0A070())
  {
    v4 = *(v0 + 56);
    if (sub_258F0A060())
    {
      v5 = *(v0 + 40);
      (*(v0 + 32))();
      if (v4)
      {
        v7 = *(v0 + 88);

        v8 = *(v0 + 8);
        v9 = 0;
        goto LABEL_9;
      }

      while (1)
      {

        if ((sub_258F0A070() & 1) == 0 || !sub_258F0A060())
        {
          break;
        }

        v6 = *(v0 + 40);
        (*(v0 + 32))();
      }
    }
  }

  v10 = *(v0 + 88);

  v8 = *(v0 + 8);
  v9 = 1;
LABEL_9:

  return v8(v9);
}

uint64_t sub_258E85E20()
{
  v0 = qword_27F989DD0;

  return v0;
}

uint64_t sub_258E85E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_258F098D0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_258E85EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258E85FAC;

  return sub_258E85AC4(a1, a2, a3, a4);
}

uint64_t sub_258E85FAC(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_258E860B4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v23 - v13;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_258F0A4E0();
  v18 = sub_258F0A4E0();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_258F098B0();

    v20 = sub_258F098D0();
    (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  }

  else
  {
    v20 = sub_258F098D0();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  sub_258E2EAD8(v11, v14, &qword_27F988720, &qword_258F0B830);
  sub_258DE20C0(v14, v7, &qword_27F988720, &qword_258F0B830);
  sub_258F098D0();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v7, 1, v20) == 1)
  {
    sub_258DE2184(v7, &qword_27F988720, &qword_258F0B830);
    result = sub_258F0AB90();
    __break(1u);
  }

  else
  {
    sub_258DE2184(v14, &qword_27F988720, &qword_258F0B830);
    return (*(v21 + 32))(a1, v7, v20);
  }

  return result;
}

uint64_t ODDIMetricsPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  ODDIMetricsPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

void *ODDIMetricsPlugin.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v107 = a1;
  v108 = a4;
  v104 = a3;
  v99 = *v4;
  v98 = type metadata accessor for BiomeODDIMetricsConcluder(0);
  v6 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98, v7);
  v100 = (v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_258F09B00();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = *(v96 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v94 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_258F09A20();
  v93 = *(v95 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v95, v14);
  v92 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258F0A370();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v91 - v24;
  v26 = v17[2];
  v105 = OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_logger;
  v26(&v4[OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_logger], a2, v16);
  v26(v25, a2, v16);
  v27 = type metadata accessor for ODDIMetricsDataProvider();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v109 = v17;
  v31 = v17[4];
  v102 = v17 + 4;
  v103 = v25;
  v101 = v31;
  v31(v30 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger, v25, v16);
  v32 = OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_dataProvider;
  v113 = v4;
  *&v4[OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_dataProvider] = v30;
  v33 = sub_258F0A1F0();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v107 = v107;
  v36 = sub_258F0A1E0();
  v111 = v33;
  v112 = MEMORY[0x277D04548];
  v110 = v36;
  v37 = a2;
  v38 = a2;
  v39 = v26;
  v26(v22, v38, v16);
  v40 = sub_258F09C20();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = v106;
  v44 = sub_258F09BE0();
  v106 = v43;
  if (v43)
  {
    v45 = v109[1];
    v45(v37, v16);

    v46 = v113;
    v45(v113 + v105, v16);
    v47 = *(v46 + v32);

    type metadata accessor for ODDIMetricsPlugin(0);
    v48 = *(*v46 + 48);
    v49 = *(*v46 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v50 = v44;
    v51 = v92;
    sub_258F0A090();
    v52 = v94;
    sub_258F09AC0();
    sub_258F09C00();
    (*(v96 + 8))(v52, v97);
    (*(v93 + 8))(v51, v95);
    v53 = v98;
    v54 = v100;
    sub_258E860B4(v100 + *(v98 + 20));
    v55 = v39;
    v39(v54 + *(v53 + 24), v37, v16);
    type metadata accessor for ODDIDatabaseFactory();
    *v54 = swift_allocObject();
    v56 = v103;
    v55(v103, v37, v16);
    v91[1] = v50;

    v57 = v54;
    v58 = v56;
    v59 = sub_258E7F940(v57, v56, v50);
    v60 = v113;
    *(v113 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_calculator) = v59;
    v61 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v62 = [v61 ODDI];
    swift_unknownObjectRelease();
    v63 = [v62 ScorecardMetrics];
    swift_unknownObjectRelease();
    v64 = [v63 source];

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DF8, &unk_258F12B70);
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v68 = sub_258F09B80();
    v69 = v37;
    v91[0] = v37;
    v55(v58, v37, v16);
    v70 = type metadata accessor for ODDIMetricsBiomeReporter();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    v73 = swift_allocObject();
    v105 = v73;
    *(v73 + 16) = v68;
    v74 = v101;
    v101(v73 + OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger, v58, v16);
    v55(v58, v69, v16);
    v46 = v60;

    v75 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v104, v108);
    v76 = type metadata accessor for ODDIMetricsSELFReporter();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    v79 = swift_allocObject();
    v80 = (v79 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService);
    v80[3] = type metadata accessor for SELFReportingService();
    v80[4] = &protocol witness table for SELFReportingService;
    *v80 = v75;
    *(v79 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v74(v79 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger, v58, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_258F0F6D0;
    v82 = v105;
    *(v81 + 32) = v79;
    *(v81 + 40) = v82;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E00, &qword_258F12B80);
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();

    v110 = sub_258F09BA0();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E08, qword_258F12B88);
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    swift_allocObject();
    v89 = sub_258F09BC0();

    (v109[1])(v91[0], v16);
    *(v46 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_reporter) = v89;
  }

  return v46;
}

uint64_t sub_258E86CAC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E86CCC, 0, 0);
}

uint64_t sub_258E86CCC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258E7F500();
}

uint64_t sub_258E86D70(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E86DA0, 0, 0);
}

uint64_t sub_258E86DA0()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_reporter);
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

uint64_t sub_258E86E6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E86E8C, 0, 0);
}

uint64_t sub_258E86E8C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258E807B4(v3);
}

uint64_t ODDIMetricsPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_reporter);

  return v0;
}

uint64_t ODDIMetricsPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_reporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E870A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E870C4, 0, 0);
}

uint64_t sub_258E870C4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258E7F500();
}

uint64_t sub_258E87168(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E86E8C, 0, 0);
}

uint64_t sub_258E8718C(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E871C0, 0, 0);
}

uint64_t sub_258E871C0()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_reporter);
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

uint64_t sub_258E8731C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ODDIMetricsPlugin.loadData()(uint64_t a1)
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

uint64_t dispatch thunk of ODDIMetricsPlugin.report(_:)(uint64_t a1)
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

uint64_t dispatch thunk of ODDIMetricsPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_258E8778C()
{
  result = type metadata accessor for ODDIDatabaseFactory();
  if (v1 <= 0x3F)
  {
    result = sub_258F098D0();
    if (v2 <= 0x3F)
    {
      result = sub_258F0A370();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_258E87828(_BYTE *a1)
{
  v3 = *(sub_258F09A20() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_258E82E38(a1, *(v1 + 16), v1 + v5, *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v1 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4), *(v1 + ((v6 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4)) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_258E8792C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E87994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258E87AAC(uint64_t a1)
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

uint64_t dispatch thunk of ODDIMetricsReporter.report(_:)(uint64_t a1)
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

uint64_t ODDIMetricsSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258E8B9D0(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t sub_258E87D98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_258E87E00()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_258E87E48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ODDIMetricsSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_258E8B8FC(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

uint64_t sub_258E87FF8(uint64_t a1)
{
  *(v2 + 104) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E60, &qword_258F12E48) - 8) + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v5 = sub_258F0A370();
  *(v2 + 128) = v5;
  v6 = *(v5 - 8);
  *(v2 + 136) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v8 = *(type metadata accessor for EventMetadata(0) - 8);
  *(v2 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E68, &qword_258F12E50) - 8) + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v11 = type metadata accessor for DeviceUsageMetrics(0);
  *(v2 + 200) = v11;
  v12 = *(v11 - 8);
  *(v2 + 208) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = *a1;
  *(v2 + 240) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258E88220, 0, 0);
}

id sub_258E88220()
{
  v199 = v0;
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v0[31] = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v190 = v2;
  v191 = v1;
  v3 = sub_258F0A350();
  v4 = sub_258F0A810();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#ODDIMetricsSELFReporter: Reporter invoked", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[28];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v12 + 16);

    _os_log_impl(&dword_258DD8000, v9, v10, "#ODDIMetricsSELFReporter: Total Results Count %ld", v15, 0xCu);
    MEMORY[0x259C9EF40](v15, -1, -1);
  }

  else
  {
    v16 = v0[28];
  }

  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[28];

  v20 = sub_258F0A350();
  v21 = sub_258F0A810();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[30];
    v23 = v0[25];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v198 = v25;
    *v24 = 136315138;
    v26 = MEMORY[0x259C9DF80](v22, v23);
    v19 = sub_258DE3018(v26, v27, &v198);

    *(v24 + 4) = v19;
    _os_log_impl(&dword_258DD8000, v20, v21, "#ODDIMetricsSELFReporter: Results Data %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x259C9EF40](v25, -1, -1);
    MEMORY[0x259C9EF40](v24, -1, -1);
  }

  v28 = v0[30];
  v29 = MEMORY[0x277D84F98];
  v0[11] = MEMORY[0x277D84F98];
  v0[12] = v29;
  v30 = *(v28 + 16);
  v197 = v0;
  if (v30)
  {
    v31 = 0;
    v33 = v0[25];
    v32 = v0[26];
    v34 = v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    while (1)
    {
      if (v31 >= *(v28 + 16))
      {
        goto LABEL_116;
      }

      v36 = v0[27];
      sub_258E8BAD0(v34 + *(v32 + 72) * v31, v36, type metadata accessor for DeviceUsageMetrics);
      if (*(v36 + *(v33 + 32)) > 1u)
      {
        if (*(v36 + *(v33 + 32)) != 2)
        {
LABEL_18:
          v37 = sub_258F0A350();
          v38 = sub_258F0A820();
          if (os_log_type_enabled(v37, v38))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&dword_258DD8000, v37, v38, "#ODDIMetricsSELFReporter: Invalid productId.", v19, 2u);
            MEMORY[0x259C9EF40](v19, -1, -1);
          }

          v35 = v0;
          goto LABEL_11;
        }

        v35 = v0;
        sub_258E8C1DC(v0[27], v0 + 12, v191 + v190);
      }

      else
      {
        if (!*(v36 + *(v33 + 32)))
        {
          goto LABEL_18;
        }

        v35 = v0;
        sub_258E8BB98(v0[27], v0 + 11, v191 + v190);
      }

LABEL_11:
      ++v31;
      sub_258E8BB38(v35[27], type metadata accessor for DeviceUsageMetrics);
      if (v30 == v31)
      {
        v29 = v0[11];
        break;
      }
    }
  }

  v39 = sub_258F0A350();
  v40 = sub_258F0A810();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = *(v29 + 16);

    _os_log_impl(&dword_258DD8000, v39, v40, "#ODDIMetricsSELFReporter: Assistant Events Count: %ld", v41, 0xCu);
    MEMORY[0x259C9EF40](v41, -1, -1);
  }

  else
  {
  }

  v42 = v0[12];

  v43 = sub_258F0A350();
  v44 = sub_258F0A810();
  v182 = v42;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = *(v42 + 16);

    _os_log_impl(&dword_258DD8000, v43, v44, "#ODDIMetricsSELFReporter: Dictation Events Count: %ld", v45, 0xCu);
    MEMORY[0x259C9EF40](v45, -1, -1);
  }

  else
  {
  }

  v19 = 0;
  v183 = v29;
  v48 = *(v29 + 64);
  v47 = v29 + 64;
  v46 = v48;
  v49 = -1;
  v50 = -1 << *(v47 - 32);
  if (-v50 < 64)
  {
    v49 = ~(-1 << -v50);
  }

  v51 = v49 & v46;
  v189 = v0[13];
  v188 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents;
  v181 = (63 - v50) >> 6;
  v186 = v0[19];
  v187 = (v0[17] + 16);
  v52 = &selRef_setSampledErrorAsset_;
  v185 = v47;
  if ((v49 & v46) == 0)
  {
LABEL_31:
    if (v181 <= v19 + 1)
    {
      v54 = v19 + 1;
    }

    else
    {
      v54 = v181;
    }

    v55 = v54 - 1;
    while (1)
    {
      v53 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v53 >= v181)
      {
        v90 = v0[23];
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E78, &qword_258F12E58);
        (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
        v51 = 0;
        v19 = v55;
        goto LABEL_40;
      }

      v51 = *(v47 + 8 * v53);
      ++v19;
      if (v51)
      {
        v19 = v53;
        goto LABEL_39;
      }
    }

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
    v146 = sub_258F0AA20();
LABEL_96:
    v147 = *(v19 + 104);
    v148 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService;
    *(v19 + 264) = v146;
    *(v19 + 272) = v148;

    v149 = *(v19 + 256);
    if (!v146)
    {
      v176 = *(v19 + 248);
      v177 = *(v19 + 256);

      v178 = sub_258F0A350();
      v179 = sub_258F0A810();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        _os_log_impl(&dword_258DD8000, v178, v179, "#ODDIMetricsSELFReporter: Finished Emitting ODDIMetrics SELF events", v180, 2u);
        MEMORY[0x259C9EF40](v180, -1, -1);
      }

      goto LABEL_108;
    }

    if ((v149 & 0xC000000000000001) != 0)
    {
      v150 = MEMORY[0x259C9E3B0](0);
      v148 = *(v19 + 272);
      v147 = *(v19 + 104);
    }

    else
    {
      if (!*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        return result;
      }

      v150 = *(v149 + 32);
    }

    *(v19 + 280) = v150;
    *(v19 + 288) = 1;
    v151 = v19;
    v152 = *(v19 + 248);
    v153 = (v147 + v148);
    v154 = *(v147 + v148 + 24);
    v155 = v153[4];
    __swift_project_boxed_opaque_existential_1(v153, v154);
    v156 = *(v155 + 8);
    v196 = (v156 + *v156);
    v157 = v156[1];
    v158 = swift_task_alloc();
    *(v151 + 296) = v158;
    *v158 = v151;
    v158[1] = sub_258E895F8;

    return v196(v150, v147 + v152, v154, v155);
  }

  while (1)
  {
    v53 = v19;
LABEL_39:
    v56 = v0[22];
    v57 = v0[23];
    v58 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v59 = v58 | (v53 << 6);
    sub_258E8BAD0(*(v183 + 48) + *(v186 + 72) * v59, v56, type metadata accessor for EventMetadata);
    v60 = *(v183 + 56);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E78, &qword_258F12E58);
    v62 = *(v61 + 48);
    v192 = *(v60 + 16 * v59);
    sub_258E3F8CC(v56, v57);
    *(v57 + v62) = v192;
    (*(*(v61 - 8) + 56))(v57, 0, 1, v61);
    v63 = v192;

    v52 = &selRef_setSampledErrorAsset_;
LABEL_40:
    v64 = v0[24];
    sub_258E2EAD8(v0[23], v64, &qword_27F989E68, &qword_258F12E50);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E78, &qword_258F12E58);
    if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
    {
      break;
    }

    v66 = v0[24];
    v67 = v66 + *(v65 + 48);
    v69 = *v67;
    v68 = *(v67 + 8);
    sub_258E3F8CC(v66, v0[21]);
    v70 = [objc_allocWithZone(MEMORY[0x277D593E0]) v52[10]];
    v71 = v0;
    if (!v70)
    {

      v139 = sub_258F0A350();
      v140 = sub_258F0A820();
      v141 = os_log_type_enabled(v139, v140);
      v142 = v71[21];
      v19 = v71;
      if (v141)
      {
        v143 = v69;
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_258DD8000, v139, v140, "#ODDIMetricsSELFReporter: Failed to generate client event", v144, 2u);
        MEMORY[0x259C9EF40](v144, -1, -1);

LABEL_105:
      }

      else
      {
      }

      goto LABEL_107;
    }

    v72 = v70;
    v74 = v0[21];
    v73 = v0[22];
    v193 = v69;
    v75 = v0[18];
    v76 = v0[16];
    sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
    v77 = v52;
    sub_258E8BAD0(v74, v73, type metadata accessor for EventMetadata);
    (*v187)(v75, v191 + v190, v76);
    v78 = sub_258E8A4CC(v73, v75);
    [v72 setEventMetadata_];

    v79 = objc_allocWithZone(MEMORY[0x277D59228]);
    v80 = v193;
    result = [v79 v77 + 2936];
    if (!result)
    {
      goto LABEL_122;
    }

    v82 = result;
    v83 = v72;
    [result setFixedDimensions_];

    if (v68 >> 62)
    {
      v84 = sub_258F0AA20();
      if (v84)
      {
LABEL_45:
        if (v84 < 1)
        {
          goto LABEL_117;
        }

        for (i = 0; i != v84; ++i)
        {
          if ((v68 & 0xC000000000000001) != 0)
          {
            v86 = MEMORY[0x259C9E3B0](i, v68);
          }

          else
          {
            v86 = *(v68 + 8 * i + 32);
          }

          v87 = v86;
          [v82 addDigests_];
        }

        v83 = v72;
      }
    }

    else
    {
      v84 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v84)
      {
        goto LABEL_45;
      }
    }

    [v83 setAssistantDeviceDigestReported_];
    v0 = v197;
    swift_beginAccess();
    v88 = v83;
    MEMORY[0x259C9DF50]();
    if (*((*(v189 + v188) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v189 + v188) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v92 = *((*(v189 + v188) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258F0A6D0();
    }

    v89 = v197[21];
    sub_258F0A700();
    swift_endAccess();

    sub_258E8BB38(v89, type metadata accessor for EventMetadata);
    v52 = &selRef_setSampledErrorAsset_;
    v47 = v185;
    if (!v51)
    {
      goto LABEL_31;
    }
  }

  v93 = 0;
  v94 = v182 + 64;
  v95 = -1;
  v96 = -1 << *(v182 + 32);
  if (-v96 < 64)
  {
    v95 = ~(-1 << -v96);
  }

  v97 = v95 & *(v182 + 64);
  v98 = (63 - v96) >> 6;
  v184 = v98;
  if (!v97)
  {
LABEL_63:
    if (v98 <= v93 + 1)
    {
      v100 = v93 + 1;
    }

    else
    {
      v100 = v98;
    }

    v101 = v100 - 1;
    v19 = v197;
    while (1)
    {
      v99 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        goto LABEL_115;
      }

      if (v99 >= v98)
      {
        v136 = v197[14];
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E80, qword_258F12E60);
        (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
        v97 = 0;
        v93 = v101;
        goto LABEL_72;
      }

      v97 = *(v94 + 8 * v99);
      ++v93;
      if (v97)
      {
        v93 = v99;
        goto LABEL_71;
      }
    }
  }

  while (1)
  {
    v99 = v93;
    v19 = v197;
LABEL_71:
    v102 = *(v19 + 176);
    v103 = *(v19 + 112);
    v104 = __clz(__rbit64(v97));
    v97 &= v97 - 1;
    v105 = v104 | (v99 << 6);
    sub_258E8BAD0(*(v182 + 48) + *(v186 + 72) * v105, v102, type metadata accessor for EventMetadata);
    v106 = *(v182 + 56);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E80, qword_258F12E60);
    v108 = *(v107 + 48);
    v194 = *(v106 + 16 * v105);
    sub_258E3F8CC(v102, v103);
    *(v103 + v108) = v194;
    v109 = *(*(v107 - 8) + 56);
    v110 = v107;
    v19 = v197;
    v109(v103, 0, 1, v110);
    v111 = v194;

LABEL_72:
    v112 = *(v19 + 120);
    sub_258E2EAD8(*(v19 + 112), v112, &qword_27F989E60, &qword_258F12E48);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E80, qword_258F12E60);
    if ((*(*(v113 - 8) + 48))(v112, 1, v113) == 1)
    {

      swift_beginAccess();
      v145 = *(v189 + v188);
      *(v19 + 256) = v145;
      if (v145 >> 62)
      {
        goto LABEL_119;
      }

      v146 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_96;
    }

    v114 = *(v19 + 120);
    v115 = v114 + *(v113 + 48);
    v117 = *v115;
    v116 = *(v115 + 8);
    sub_258E3F8CC(v114, *(v19 + 160));
    v118 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    if (!v118)
    {
      break;
    }

    v119 = v118;
    v120 = *(v19 + 176);
    v121 = v19;
    v122 = *(v19 + 160);
    v123 = *(v121 + 144);
    v195 = v117;
    v124 = *(v121 + 128);
    sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
    sub_258E8BAD0(v122, v120, type metadata accessor for EventMetadata);
    (*v187)(v123, v191 + v190, v124);
    v125 = sub_258E8A4CC(v120, v123);
    v19 = v119;
    [v119 setEventMetadata_];

    v126 = objc_allocWithZone(MEMORY[0x277D592F8]);
    v127 = v195;
    result = [v126 init];
    if (!result)
    {
      goto LABEL_123;
    }

    v128 = result;
    [result setFixedDimensions_];

    if (v116 >> 62)
    {
      v129 = sub_258F0AA20();
      v130 = v119;
      if (v129)
      {
LABEL_77:
        if (v129 < 1)
        {
          goto LABEL_118;
        }

        for (j = 0; j != v129; ++j)
        {
          if ((v116 & 0xC000000000000001) != 0)
          {
            v132 = MEMORY[0x259C9E3B0](j, v116);
          }

          else
          {
            v132 = *(v116 + 8 * j + 32);
          }

          v133 = v132;
          [v128 addDigests_];
        }
      }
    }

    else
    {
      v129 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v130 = v119;
      if (v129)
      {
        goto LABEL_77;
      }
    }

    [v130 setDictationDeviceDigestReported_];
    v134 = swift_beginAccess();
    MEMORY[0x259C9DF50](v134);
    if (*((*(v189 + v188) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v189 + v188) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v138 = *((*(v189 + v188) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258F0A6D0();
    }

    v135 = v197[20];
    sub_258F0A700();
    swift_endAccess();

    sub_258E8BB38(v135, type metadata accessor for EventMetadata);
    v98 = v184;
    v94 = v182 + 64;
    if (!v97)
    {
      goto LABEL_63;
    }
  }

  v159 = sub_258F0A350();
  v160 = sub_258F0A820();
  v161 = os_log_type_enabled(v159, v160);
  v142 = *(v19 + 160);
  if (v161)
  {
    v162 = v19;
    v163 = swift_slowAlloc();
    *v163 = 0;
    _os_log_impl(&dword_258DD8000, v159, v160, "#ODDIMetricsSELFReporter: Failed to generate client event", v163, 2u);
    v164 = v163;
    v19 = v162;
    MEMORY[0x259C9EF40](v164, -1, -1);

    goto LABEL_105;
  }

LABEL_107:
  sub_258E8BB38(v142, type metadata accessor for EventMetadata);
LABEL_108:
  v165 = *(v19 + 216);
  v166 = *(v19 + 184);
  v167 = *(v19 + 192);
  v169 = *(v19 + 168);
  v168 = *(v19 + 176);
  v170 = v19;
  v171 = *(v19 + 160);
  v172 = v170[18];
  v174 = v170[14];
  v173 = v170[15];

  v175 = v170[1];

  return v175();
}

uint64_t sub_258E895F8()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);

    v5 = sub_258E899E8;
  }

  else
  {
    v5 = sub_258E89714;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_258E89714()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);

  if (v1 == v2)
  {
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);
    v5 = *(v0 + 104);

    v6 = sub_258F0A350();
    v7 = sub_258F0A810();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_258DD8000, v6, v7, "#ODDIMetricsSELFReporter: Finished Emitting ODDIMetrics SELF events", v8, 2u);
      MEMORY[0x259C9EF40](v8, -1, -1);
    }

    v9 = *(v0 + 216);
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);

    v18 = *(v0 + 8);

    v18();
    return;
  }

  v19 = *(v0 + 288);
  v20 = *(v0 + 256);
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x259C9E3B0](*(v0 + 288));
  }

  else
  {
    if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      __break(1u);
      return;
    }

    v21 = *(v20 + 8 * v19 + 32);
  }

  v22 = v21;
  *(v0 + 280) = v21;
  *(v0 + 288) = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = *(v0 + 248);
  v24 = *(v0 + 104);
  v25 = (v24 + *(v0 + 272));
  v26 = v25[3];
  v27 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v28 = *(v27 + 8);
  v31 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 296) = v30;
  *v30 = v0;
  v30[1] = sub_258E895F8;

  v31(v22, v24 + v23, v26, v27);
}

uint64_t sub_258E899E8()
{
  v1 = v0[13] + v0[31];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsSELFReporter: Unable to report ODDIMetrics SELF events.", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[20];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];

  swift_willThrow();

  v13 = v0[1];
  v14 = v0[38];

  return v13();
}

id sub_258E89B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F0A370();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DeviceUsageMetrics(0);
  v16 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v21 = result;
    sub_258DEB8C8(0, &qword_27F988AC8, 0x277D59248);
    sub_258E8BAD0(a1, v19, type metadata accessor for DeviceUsageMetrics);
    v51 = a1;
    v48 = v11;
    v22 = *(v11 + 16);
    v22(v15, a2, v10);
    v23 = v21;
    v49 = v10;
    v24 = v23;
    v25 = sub_258E8ABF4(v19, v15);
    [v24 setDimensions_];

    sub_258DEB8C8(0, &qword_27F989EA8, 0x277D59220);
    sub_258E8BAD0(v51, v19, type metadata accessor for DeviceUsageMetrics);
    v50 = a2;
    v26 = a2;
    v27 = v49;
    v22(v15, v26, v49);
    v28 = v51;
    v29 = sub_258E8B1D4(v19, v15);
    [v24 setCounts_];

    v30 = [objc_opt_self() sharedPreferences];
    LODWORD(v25) = [v30 longLivedIdentifierUploadingEnabled];

    if (v25)
    {
      v31 = *(v28 + *(v52 + 140));
      if (v31)
      {
        v32 = *(v31 + 16);
        v33 = v46;
        v34 = v24;
        if (v32)
        {
          v52 = *(v47 + 16);
          v35 = v31 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
          v36 = *(v47 + 72);
          v37 = (v47 + 8);
          do
          {
            (v52)(v9, v35, v33);
            v38 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v39 = sub_258F09A50();
            (*v37)(v9, v33);
            v40 = [v38 initWithNSUUID_];

            [v34 addTurnIds_];
            v35 += v36;
            --v32;
          }

          while (v32);
        }

        v41 = v34;
        v42 = sub_258F0A350();
        v43 = sub_258F0A800();
        v24 = v34;
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 134217984;
          *(v44 + 4) = [v41 turnIdsCount];

          _os_log_impl(&dword_258DD8000, v42, v43, "#ODDIMetricsSELFReporter: Added %ld turnIds to ODDAssistantDigest.", v44, 0xCu);
          MEMORY[0x259C9EF40](v44, -1, -1);
        }

        else
        {

          v42 = v41;
        }

        v28 = v51;
        v27 = v49;
      }
    }

    (*(v48 + 8))(v50, v27);
    sub_258E8BB38(v28, type metadata accessor for DeviceUsageMetrics);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8A010(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F0A370();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DeviceUsageMetrics(0);
  v16 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v21 = result;
    sub_258DEB8C8(0, &qword_27F989EC8, 0x277D59308);
    sub_258E8BAD0(a1, v19, type metadata accessor for DeviceUsageMetrics);
    v51 = a1;
    v48 = v11;
    v22 = *(v11 + 16);
    v22(v15, a2, v10);
    v23 = v21;
    v49 = v10;
    v24 = v23;
    v25 = sub_258E8B524(v19, v15);
    [v24 setDimensions_];

    sub_258DEB8C8(0, &qword_27F989ED0, 0x277D592F0);
    sub_258E8BAD0(v51, v19, type metadata accessor for DeviceUsageMetrics);
    v50 = a2;
    v26 = a2;
    v27 = v49;
    v22(v15, v26, v49);
    v28 = v51;
    v29 = sub_258E8B72C(v19, v15);
    [v24 setCounts_];

    v30 = [objc_opt_self() sharedPreferences];
    LODWORD(v25) = [v30 longLivedIdentifierUploadingEnabled];

    if (v25)
    {
      v31 = *(v28 + *(v52 + 140));
      if (v31)
      {
        v32 = *(v31 + 16);
        v33 = v46;
        v34 = v24;
        if (v32)
        {
          v52 = *(v47 + 16);
          v35 = v31 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
          v36 = *(v47 + 72);
          v37 = (v47 + 8);
          do
          {
            (v52)(v9, v35, v33);
            v38 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v39 = sub_258F09A50();
            (*v37)(v9, v33);
            v40 = [v38 initWithNSUUID_];

            [v34 addTurnIds_];
            v35 += v36;
            --v32;
          }

          while (v32);
        }

        v41 = v34;
        v42 = sub_258F0A350();
        v43 = sub_258F0A800();
        v24 = v34;
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 134217984;
          *(v44 + 4) = [v41 turnIdsCount];

          _os_log_impl(&dword_258DD8000, v42, v43, "#ODDIMetricsSELFReporter: Added %ld turnIds to ODDDictationDigest.", v44, 0xCu);
          MEMORY[0x259C9EF40](v44, -1, -1);
        }

        else
        {

          v42 = v41;
        }

        v28 = v51;
        v27 = v49;
      }
    }

    (*(v48 + 8))(v50, v27);
    sub_258E8BB38(v28, type metadata accessor for DeviceUsageMetrics);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8A4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v50 - v10;
  v12 = sub_258F09A70();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v53 = &v50 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v50 - v23;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v26 = result;
    sub_258F09A60();
    v27 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v28 = sub_258F09A50();
    v29 = [v27 initWithNSUUID_];

    v54 = v13[1];
    v55 = v13 + 1;
    v54(v24, v12);
    [v26 setOddId_];

    v30 = type metadata accessor for EventMetadata(0);
    v31 = (a1 + v30[11]);
    if ((v31[1] & 1) == 0)
    {
      [v26 setEventOrigin_];
    }

    v32 = a1 + v30[7];
    if ((*(v32 + 8) & 1) == 0)
    {
      [v26 setEventTimestampInMsSince1970_];
    }

    v52 = v18;
    v56 = a2;
    if (*(a1 + v30[8]))
    {
      [v26 setAggregationInterval_];
    }

    sub_258DE20C0(a1 + v30[5], v11, &qword_27F988730, &unk_258F0F8E0);
    v33 = v13[6];
    v34 = v33(v11, 1, v12);
    v51 = v13;
    if (v34 == 1)
    {
      sub_258DE2184(v11, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      v35 = v13[4];
      v36 = v53;
      v35(v53, v11, v12);
      v37 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v38 = sub_258F09A50();
      v39 = [v37 initWithNSUUID_];

      [v26 setDeviceAggregationId_];
      v54(v36, v12);
    }

    v40 = v57;
    sub_258DE20C0(a1 + v30[6], v57, &qword_27F988730, &unk_258F0F8E0);
    if (v33(v40, 1, v12) == 1)
    {
      sub_258DE2184(v40, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      v41 = v52;
      (v51[4])(v52, v40, v12);
      v42 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v43 = sub_258F09A50();
      v44 = [v42 initWithNSUUID_];

      [v26 setUserAggregationId_];
      v54(v41, v12);
    }

    v45 = v56;
    v46 = a1 + v30[10];
    if ((*(v46 + 8) & 1) == 0)
    {
      [v26 setUserAggregationIdExpirationTimestampMs_];
    }

    v47 = a1 + v30[9];
    if ((*(v47 + 8) & 1) == 0)
    {
      [v26 setUserAggregationIdRotationTimestampMs_];
    }

    v48 = *(a1 + v30[12]);
    if (v48 != 2)
    {
      [v26 setIsLongLivedIDUploadDisabled_];
    }

    v49 = sub_258F0A370();
    (*(*(v49 - 8) + 8))(v45, v49);
    sub_258E8BB38(a1, type metadata accessor for EventMetadata);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258E8AA08()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents);
}

uint64_t ODDIMetricsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents);

  return v0;
}

uint64_t ODDIMetricsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService));
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_258E8ABF4(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for DeviceUsageMetrics(0);
    v7 = (a1 + v6[9]);
    if (v7[1])
    {
      v8 = *v7;
      v9 = sub_258F0A4E0();
      [v5 setSystemBuild_];
    }

    v10 = (a1 + v6[10]);
    if ((v10[1] & 1) == 0)
    {
      [v5 setDataSharingOptInStatus_];
    }

    v11 = (a1 + v6[11]);
    if ((v11[1] & 1) == 0)
    {
      [v5 setViewInterface_];
    }

    v12 = (a1 + v6[12]);
    if (v12[1])
    {
      v13 = *v12;
      v14 = sub_258F0A4E0();
      [v5 setAudioInterfaceVendorId_];
    }

    v15 = (a1 + v6[13]);
    if (v15[1])
    {
      v16 = *v15;
      v17 = sub_258F0A4E0();
      [v5 setAudioInterfaceProductId_];
    }

    v18 = (a1 + v6[14]);
    if ((v18[1] & 1) == 0)
    {
      [v5 setAsrLocation_];
    }

    v19 = (a1 + v6[15]);
    if ((v19[1] & 1) == 0)
    {
      [v5 setNlLocation_];
    }

    if (*(a1 + v6[16]))
    {
      [v5 setSiriInputLocale_];
    }

    v20 = (a1 + v6[18]);
    if (v20[1])
    {
      v21 = *v20;
      v22 = sub_258F0A4E0();
      [v5 setSubDomain_];
    }

    v23 = (a1 + v6[34]);
    if ((v23[1] & 1) == 0)
    {
      [v5 setResponseCategory_];
    }

    v24 = *(a1 + v6[36]);
    if (v24 != 2)
    {
      [v5 setIsIntelligenceEngineRequest_];
    }

    v25 = *(a1 + v6[37]);
    if (v25)
    {
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = (v25 + 32);
        do
        {
          v28 = *v27++;
          [v5 addRouting_];
          --v26;
        }

        while (v26);
      }
    }

    v29 = (a1 + v6[38]);
    if ((v29[1] & 1) == 0)
    {
      [v5 setInvocationSource_];
    }

    v30 = sub_258F0A370();
    (*(*(v30 - 8) + 8))(a2, v30);
    sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8AED8(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for DeviceUsageMetrics(0);
    v7 = (a1 + v6[21]);
    if ((v7[1] & 1) == 0)
    {
      [v5 setSiriTasksStarted_];
    }

    v8 = (a1 + v6[22]);
    if ((v8[1] & 1) == 0)
    {
      [v5 setSiriTasksCompleted_];
    }

    v9 = (a1 + v6[23]);
    if ((v9[1] & 1) == 0)
    {
      [v5 setFlowTasksStarted_];
    }

    v10 = (a1 + v6[24]);
    if ((v10[1] & 1) == 0)
    {
      [v5 setFlowTasksCompleted_];
    }

    v11 = sub_258F0A370();
    (*(*(v11 - 8) + 8))(a2, v11);
    sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8B020(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for DeviceUsageMetrics(0);
    v7 = (a1 + v6[25]);
    if ((v7[1] & 1) == 0)
    {
      [v5 setReliabilityRequestCount_];
    }

    v8 = (a1 + v6[26]);
    if ((v8[1] & 1) == 0)
    {
      [v5 setReliabilityTurnCount_];
    }

    v9 = (a1 + v6[27]);
    if ((v9[1] & 1) == 0)
    {
      [v5 setClientErrorCount_];
    }

    v10 = (a1 + v6[28]);
    if ((v10[1] & 1) == 0)
    {
      [v5 setUndesiredResponseCount_];
    }

    v11 = (a1 + v6[29]);
    if ((v11[1] & 1) == 0)
    {
      [v5 setFatalResponseCount_];
    }

    v12 = (a1 + v6[30]);
    if ((v12[1] & 1) == 0)
    {
      [v5 setFailureResponseCount_];
    }

    v13 = (a1 + v6[31]);
    if ((v13[1] & 1) == 0)
    {
      [v5 setSiriUnavailableResponseCount_];
    }

    v14 = sub_258F0A370();
    (*(*(v14 - 8) + 8))(a2, v14);
    sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8B1D4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_258F0A370();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceUsageMetrics(0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31 - v16;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = result;
  sub_258E8BAD0(a1, v17, type metadata accessor for DeviceUsageMetrics);
  v20 = objc_allocWithZone(MEMORY[0x277D59400]);
  v21 = v19;
  result = [v20 init];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = &v17[*(v9 + 76)];
  if ((v23[1] & 1) == 0)
  {
    [result setTotalTurnCount_];
  }

  v24 = &v17[*(v9 + 80)];
  if ((v24[1] & 1) == 0)
  {
    [v22 setValidTurnCount_];
  }

  v32 = type metadata accessor for DeviceUsageMetrics;
  sub_258E8BB38(v17, type metadata accessor for DeviceUsageMetrics);
  [v21 setTurnCounts_];

  sub_258DEB8C8(0, &qword_27F989EB0, 0x277D593F0);
  sub_258E8BAD0(a1, v14, type metadata accessor for DeviceUsageMetrics);
  v25 = *(v4 + 16);
  v33 = a1;
  v26 = v34;
  v25(v8, v34, v3);
  v27 = sub_258E8AED8(v14, v8);
  [v21 setTaskCounts_];

  sub_258DEB8C8(0, &qword_27F989EB8, 0x277D593A8);
  v28 = a1;
  v29 = v32;
  sub_258E8BAD0(v28, v14, v32);
  v25(v8, v26, v3);
  v30 = sub_258E8B020(v14, v8);
  [v21 setReliabilityCounts_];

  (*(v4 + 8))(v26, v3);
  sub_258E8BB38(v33, v29);
  return v21;
}

id sub_258E8B524(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for DeviceUsageMetrics(0);
    v7 = (a1 + v6[9]);
    if (v7[1])
    {
      v8 = *v7;
      v9 = sub_258F0A4E0();
      [v5 setSystemBuild_];
    }

    v10 = (a1 + v6[10]);
    if ((v10[1] & 1) == 0)
    {
      [v5 setDataSharingOptInStatus_];
    }

    v11 = (a1 + v6[11]);
    if ((v11[1] & 1) == 0)
    {
      [v5 setViewInterface_];
    }

    v12 = (a1 + v6[12]);
    if (v12[1])
    {
      v13 = *v12;
      v14 = sub_258F0A4E0();
      [v5 setAudioInterfaceVendorId_];
    }

    v15 = (a1 + v6[13]);
    if (v15[1])
    {
      v16 = *v15;
      v17 = sub_258F0A4E0();
      [v5 setAudioInterfaceProductId_];
    }

    v18 = (a1 + v6[14]);
    if ((v18[1] & 1) == 0)
    {
      [v5 setAsrLocation_];
    }

    if (*(a1 + v6[17]))
    {
      [v5 setDictationLocale_];
    }

    v19 = (a1 + v6[38]);
    if ((v19[1] & 1) == 0)
    {
      [v5 setInvocationSource_];
    }

    v20 = sub_258F0A370();
    (*(*(v20 - 8) + 8))(a2, v20);
    sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8B72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUsageMetrics(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  sub_258E8BAD0(a1, v8, type metadata accessor for DeviceUsageMetrics);
  v11 = objc_allocWithZone(MEMORY[0x277D59400]);
  v12 = v10;
  result = [v11 init];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = &v8[*(v4 + 76)];
  if ((v14[1] & 1) == 0)
  {
    [result setTotalTurnCount_];
  }

  v15 = &v8[*(v4 + 80)];
  if ((v15[1] & 1) == 0)
  {
    [v13 setValidTurnCount_];
  }

  sub_258E8BB38(v8, type metadata accessor for DeviceUsageMetrics);
  [v12 setTurnCounts_];

  v16 = sub_258F0A370();
  (*(*(v16 - 8) + 8))(a2, v16);
  sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
  return v12;
}

uint64_t sub_258E8B8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *(a3 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

uint64_t sub_258E8B9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ODDIMetricsSELFReporter();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  return sub_258E8B8FC(a1, v12, v16, a4, a5);
}

uint64_t sub_258E8BAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E8BB38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258E8BB98(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = a2;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v70 - v14;
  v16 = type metadata accessor for EventMetadata(0);
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v71 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v70 - v22;
  v24 = type metadata accessor for DeviceUsageMetrics(0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v73 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v70 - v30;
  sub_258E8BAD0(a1, &v70 - v30, type metadata accessor for DeviceUsageMetrics);
  v76 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (!v76)
  {
    __break(1u);
    goto LABEL_23;
  }

  v32 = &v31[*(v24 + 24)];
  if (*(v32 + 1))
  {
    v33 = *v32;
    v34 = sub_258F0A4E0();
    v72 = v15;
    v35 = v10;
    v36 = v6;
    v37 = a1;
    v38 = v5;
    v39 = a3;
    v40 = v23;
    v41 = v16;
    v42 = v34;
    [v76 setDeviceType_];

    v16 = v41;
    v23 = v40;
    a3 = v39;
    v5 = v38;
    a1 = v37;
    v6 = v36;
    v10 = v35;
    v15 = v72;
  }

  v43 = &v31[*(v24 + 28)];
  if ((v43[1] & 1) == 0)
  {
    [v76 setProgramCode_];
  }

  sub_258E8BB38(v31, type metadata accessor for DeviceUsageMetrics);
  sub_258DE20C0(a1, v15, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v75 + 48))(v15, 1, v16) != 1)
  {
    v75 = v16;
    sub_258E3F8CC(v15, v23);
    v47 = swift_allocObject();
    v48 = v76;
    *(v47 + 16) = v76;
    sub_258DEB8C8(0, &qword_27F989EA0, 0x277D59240);
    v49 = a1;
    v50 = v73;
    sub_258E8BAD0(v49, v73, type metadata accessor for DeviceUsageMetrics);
    (*(v6 + 16))(v10, a3, v5);
    v51 = v48;
    v76 = sub_258E89B54(v50, v10);
    v52 = swift_allocObject();
    *(v52 + 16) = sub_258E8C9B4;
    *(v52 + 24) = v47;
    v53 = v74;
    v54 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *v53;
    v56 = v77;
    v58 = sub_258E2EF70(v23);
    v59 = v56[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      __break(1u);
LABEL_21:
      sub_258F0A6D0();
LABEL_19:
      sub_258F0A700();

      sub_258E8BB38(v23, type metadata accessor for EventMetadata);

      return;
    }

    v62 = v57;
    if (v56[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_258ED8684();
        v56 = v77;
      }

LABEL_16:
      *v53 = v56;
      if ((v62 & 1) == 0)
      {
        v65 = sub_258E8C9B4();
        v67 = v66;
        v68 = v71;
        sub_258E8BAD0(v23, v71, type metadata accessor for EventMetadata);
        sub_258EDA470(v58, v68, v65, v67, v56);
      }

      v69 = v56[7] + 16 * v58;
      MEMORY[0x259C9DF50]();
      if (*((*(v69 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v69 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    sub_258ED56D0(v61, isUniquelyReferenced_nonNull_native);
    v56 = v77;
    v63 = sub_258E2EF70(v23);
    if ((v62 & 1) == (v64 & 1))
    {
      v58 = v63;
      goto LABEL_16;
    }

LABEL_23:
    sub_258F0ADC0();
    __break(1u);
    return;
  }

  sub_258DE2184(v15, &qword_27F9894E0, &unk_258F106A0);
  v44 = sub_258F0A350();
  v45 = sub_258F0A820();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_258DD8000, v44, v45, "#ODDIMetricsSELFReporter: Missing event metadata", v46, 2u);
    MEMORY[0x259C9EF40](v46, -1, -1);
  }
}

void sub_258E8C1DC(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = a2;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v70 - v14;
  v16 = type metadata accessor for EventMetadata(0);
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v71 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v70 - v22;
  v24 = type metadata accessor for DeviceUsageMetrics(0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v73 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v70 - v30;
  sub_258E8BAD0(a1, &v70 - v30, type metadata accessor for DeviceUsageMetrics);
  v76 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (!v76)
  {
    __break(1u);
    goto LABEL_23;
  }

  v32 = &v31[*(v24 + 24)];
  if (*(v32 + 1))
  {
    v33 = *v32;
    v34 = sub_258F0A4E0();
    v72 = v15;
    v35 = v10;
    v36 = v6;
    v37 = a1;
    v38 = v5;
    v39 = a3;
    v40 = v23;
    v41 = v16;
    v42 = v34;
    [v76 setDeviceType_];

    v16 = v41;
    v23 = v40;
    a3 = v39;
    v5 = v38;
    a1 = v37;
    v6 = v36;
    v10 = v35;
    v15 = v72;
  }

  v43 = &v31[*(v24 + 28)];
  if ((v43[1] & 1) == 0)
  {
    [v76 setProgramCode_];
  }

  sub_258E8BB38(v31, type metadata accessor for DeviceUsageMetrics);
  sub_258DE20C0(a1, v15, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v75 + 48))(v15, 1, v16) != 1)
  {
    v75 = v16;
    sub_258E3F8CC(v15, v23);
    v47 = swift_allocObject();
    v48 = v76;
    *(v47 + 16) = v76;
    sub_258DEB8C8(0, &qword_27F989EC0, 0x277D59300);
    v49 = a1;
    v50 = v73;
    sub_258E8BAD0(v49, v73, type metadata accessor for DeviceUsageMetrics);
    (*(v6 + 16))(v10, a3, v5);
    v51 = v48;
    v76 = sub_258E8A010(v50, v10);
    v52 = swift_allocObject();
    *(v52 + 16) = sub_258E8C9E8;
    *(v52 + 24) = v47;
    v53 = v74;
    v54 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *v53;
    v56 = v77;
    v58 = sub_258E2EF70(v23);
    v59 = v56[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      __break(1u);
LABEL_21:
      sub_258F0A6D0();
LABEL_19:
      sub_258F0A700();

      sub_258E8BB38(v23, type metadata accessor for EventMetadata);

      return;
    }

    v62 = v57;
    if (v56[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_258ED8648();
        v56 = v77;
      }

LABEL_16:
      *v53 = v56;
      if ((v62 & 1) == 0)
      {
        v65 = sub_258E8C9B4();
        v67 = v66;
        v68 = v71;
        sub_258E8BAD0(v23, v71, type metadata accessor for EventMetadata);
        sub_258EDA470(v58, v68, v65, v67, v56);
      }

      v69 = v56[7] + 16 * v58;
      MEMORY[0x259C9DF50]();
      if (*((*(v69 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v69 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    sub_258ED56BC(v61, isUniquelyReferenced_nonNull_native);
    v56 = v77;
    v63 = sub_258E2EF70(v23);
    if ((v62 & 1) == (v64 & 1))
    {
      v58 = v63;
      goto LABEL_16;
    }

LABEL_23:
    sub_258F0ADC0();
    __break(1u);
    return;
  }

  sub_258DE2184(v15, &qword_27F9894E0, &unk_258F106A0);
  v44 = sub_258F0A350();
  v45 = sub_258F0A820();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_258DD8000, v44, v45, "#ODDIMetricsSELFReporter: Missing event metadata", v46, 2u);
    MEMORY[0x259C9EF40](v46, -1, -1);
  }
}

uint64_t type metadata accessor for ODDIMetricsSELFReporter()
{
  result = qword_27F989E90;
  if (!qword_27F989E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E8C874()
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

void *sub_258E8C9B4()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

MetricsFramework::ODDIMetricsTaskExecutor::Subtask_optional __swiftcall ODDIMetricsTaskExecutor.Subtask.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0ABE0();

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

unint64_t ODDIMetricsTaskExecutor.Subtask.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x7274654D6964646FLL;
  }

  *v0;
  return result;
}

uint64_t sub_258E8CA98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x7274654D6964646FLL;
  }

  if (v3)
  {
    v5 = 0xEB00000000736369;
  }

  else
  {
    v5 = 0x8000000258F18C50;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x7274654D6964646FLL;
  }

  if (*a2)
  {
    v7 = 0x8000000258F18C50;
  }

  else
  {
    v7 = 0xEB00000000736369;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();
  }

  return v9 & 1;
}

uint64_t sub_258E8CB4C()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E8CBDC()
{
  *v0;
  sub_258F0A5B0();
}

uint64_t sub_258E8CC58()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E8CCE4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258F0ABE0();

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

void sub_258E8CD44(unint64_t *a1@<X8>)
{
  v2 = 0x8000000258F18C50;
  v3 = 0x7274654D6964646FLL;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEB00000000736369;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_258E8CDA8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a1;
  *(v8 + 88) = *a2;
  return MEMORY[0x2822009F8](sub_258E8CDDC, 0, 0);
}

uint64_t sub_258E8CDDC()
{
  v1 = *(v0 + 88);
  if (v1 == 2)
  {
    v2 = *(v0 + 16);
    v3 = *MEMORY[0x277D81758];
    v4 = sub_258F09E50();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = **(v0 + 64);
    if (v1)
    {
      v21 = (*(v7 + 104) + **(v7 + 104));
      v8 = *(*(v7 + 104) + 4);
      v9 = swift_task_alloc();
      *(v0 + 80) = v9;
      *v9 = v0;
      v9[1] = sub_258E8D190;
      v10 = *(v0 + 56);
      v11 = *(v0 + 64);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      v14 = *(v0 + 24);
      v15 = *(v0 + 32);
      v16 = *(v0 + 16);
      v17 = v21;
    }

    else
    {
      v22 = (*(v7 + 96) + **(v7 + 96));
      v18 = *(*(v7 + 96) + 4);
      v19 = swift_task_alloc();
      *(v0 + 72) = v19;
      *v19 = v0;
      v19[1] = sub_258E8D09C;
      v10 = *(v0 + 56);
      v20 = *(v0 + 64);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      v14 = *(v0 + 24);
      v15 = *(v0 + 32);
      v16 = *(v0 + 16);
      v17 = v22;
    }

    return v17(v16, v14, v15, v12, v13, v10);
  }
}

uint64_t sub_258E8D09C()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258E8D190()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258E8D284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258E8D34C, 0, 0);
}

uint64_t sub_258E8D34C()
{
  v1 = v0[6];
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsTaskExecutor: Call ODDIMetrics", v4, 2u);
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
  v14 = type metadata accessor for ODDIMetricsPlugin(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v0[2] = ODDIMetricsPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989ED8, qword_258F12EE8);
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
    v28[1] = sub_258E8D720;

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

uint64_t sub_258E8D720()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 104);
  sub_258E8D87C(*(v2 + 112));

  if (v0)
  {
    v6 = sub_258E4B01C;
  }

  else
  {

    v6 = sub_258E4AF14;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258E8D87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E8D8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258E8D9AC, 0, 0);
}

uint64_t sub_258E8D9AC()
{
  v1 = v0[6];
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsTaskExecutor: Call ODDISegmentsCohorts", v4, 2u);
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
  v14 = type metadata accessor for ODDISegmentsCohortsPlugin(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v0[2] = ODDISegmentsCohortsPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989EE0, &qword_258F12F00);
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
    v28[1] = sub_258E8DD80;

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

uint64_t sub_258E8DD80()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 104);
  sub_258E8D87C(*(v2 + 112));

  if (v0)
  {
    v6 = sub_258E8E72C;
  }

  else
  {

    v6 = sub_258E8E730;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258E8DEF4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 64) = *v7;
  *(v8 + 88) = *a2;
  return MEMORY[0x2822009F8](sub_258E8DF30, 0, 0);
}

uint64_t sub_258E8DF30()
{
  v1 = *(v0 + 88);
  if (v1 == 2)
  {
    v2 = *(v0 + 16);
    v3 = *MEMORY[0x277D81758];
    v4 = sub_258F09E50();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = **(v0 + 64);
    if (v1)
    {
      v21 = (*(v7 + 104) + **(v7 + 104));
      v8 = *(*(v7 + 104) + 4);
      v9 = swift_task_alloc();
      *(v0 + 80) = v9;
      *v9 = v0;
      v9[1] = sub_258E8E728;
      v10 = *(v0 + 56);
      v11 = *(v0 + 64);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      v14 = *(v0 + 24);
      v15 = *(v0 + 32);
      v16 = *(v0 + 16);
      v17 = v21;
    }

    else
    {
      v22 = (*(v7 + 96) + **(v7 + 96));
      v18 = *(*(v7 + 96) + 4);
      v19 = swift_task_alloc();
      *(v0 + 72) = v19;
      *v19 = v0;
      v19[1] = sub_258E8E724;
      v10 = *(v0 + 56);
      v20 = *(v0 + 64);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      v14 = *(v0 + 24);
      v15 = *(v0 + 32);
      v16 = *(v0 + 16);
      v17 = v22;
    }

    return v17(v16, v14, v15, v12, v13, v10);
  }
}

unint64_t sub_258E8E1F4()
{
  result = qword_27F989EE8;
  if (!qword_27F989EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989EE8);
  }

  return result;
}

unint64_t sub_258E8E24C()
{
  result = qword_280CC5008[0];
  if (!qword_280CC5008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CC5008);
  }

  return result;
}

uint64_t dispatch thunk of ODDIMetricsTaskExecutor.execute(for:defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 88);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_258DEE37C;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ODDIMetricsTaskExecutor.executeODDIMetrics(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 96);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258DE1DC4;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ODDIMetricsTaskExecutor.executeODDISegmentsCohorts(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 104);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258DEE37C;

  return v18(a1, a2, a3, a4, a5, a6);
}

MetricsFramework::ODDIMetricsWorkerError_optional __swiftcall ODDIMetricsWorkerError.init(rawValue:)(Swift::String rawValue)
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

unint64_t ODDIMetricsWorkerError.rawValue.getter()
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

uint64_t sub_258E8E9A4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ODDIMetricsWorkerError.rawValue.getter();
  v4 = v3;
  if (v2 == ODDIMetricsWorkerError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_258F0AD80();
  }

  return v7 & 1;
}

uint64_t sub_258E8EA40()
{
  v1 = *v0;
  sub_258F0AE40();
  ODDIMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E8EAA8()
{
  v2 = *v0;
  ODDIMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258E8EB0C()
{
  v1 = *v0;
  sub_258F0AE40();
  ODDIMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258E8EB7C@<X0>(unint64_t *a1@<X8>)
{
  result = ODDIMetricsWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ODDIMetricsWorker.init()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();

  return sub_258F0A360();
}

uint64_t ODDIMetricsWorker.doWork<A>(executor:context:subtask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[21] = a7;
  v8[22] = v7;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  v9 = sub_258F0A770();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_getAssociatedTypeWitness();
  v12 = sub_258F0A920();
  v8[27] = v12;
  v13 = *(v12 - 8);
  v8[28] = v13;
  v14 = *(v13 + 64) + 15;
  v8[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E8ED74, 0, 0);
}

uint64_t sub_258E8ED74()
{
  v120 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  v3 = sub_258F0A350();
  v4 = sub_258F0A800();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v119 = v7;
    *v6 = 136315394;
    v8 = sub_258F09E80();
    v10 = sub_258DE3018(v8, v9, &v119);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_258F09E90();
    v13 = sub_258DE3018(v11, v12, &v119);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_258DD8000, v3, v4, "TaskId: %s, TaskName: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v7, -1, -1);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v14 = *(v0 + 176);
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = *(v0 + 120);
  *v17 = 0;
  v18 = *MEMORY[0x277D81760];
  *(v0 + 344) = v18;
  v19 = sub_258F09E50();
  *(v0 + 240) = v19;
  v20 = *(v19 - 8);
  *(v0 + 248) = v20;
  v21 = *(v20 + 104);
  *(v0 + 256) = v21;
  *(v0 + 264) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v21(v17, v18, v19);
  v22 = *(v15 + 16);
  v116 = *(v15 + 24);
  (*(v116 + 8))(v22);
  v23 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v24 = sub_258F0A4E0();

  v25 = [v23 initWithSuiteName_];
  *(v0 + 272) = v25;

  v26 = sub_258F09E80();
  v28 = v27;
  v29 = sub_258F09E90();
  sub_258E90AE0(v26, v28, v29, v30);

  v114 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989EF0, &unk_258F13050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0B820;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x8000000258F189B0;
  *(inited + 48) = (*(v116 + 40))(v22);
  v40 = sub_258DFBE24(inited);
  swift_setDeallocating();
  sub_258E90C74(inited + 32);
  if (v25)
  {
    v41 = *(v0 + 208);
    v42 = *(v0 + 160);
    v115 = *(v0 + 168);
    v43 = *(v0 + 144);
    v113 = *(v0 + 232);
    v25;
    sub_258F09E80();
    v44 = sub_258F09E90();
    v46 = v45;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v48 = swift_getAssociatedConformanceWitness();
    sub_258E90CDC(v44, v46, v43, v22, v41, v116, AssociatedConformanceWitness, v48);

    v49 = objc_allocWithZone(sub_258F09EA0());
    v50 = sub_258F09E70();
    *(v0 + 280) = v50;
    v51 = sub_258F09E00();
    *(v0 + 288) = v51;
    v52 = *(v51 - 8);
    *(v0 + 296) = v52;
    v53 = *(v52 + 64) + 15;
    *(v0 + 304) = swift_task_alloc();
    v54 = v50;
    sub_258DFA2E0(v40);

    sub_258F09DF0();
    v55 = *(v114 + 64) + 15;
    *(v0 + 312) = swift_task_alloc();
    v56 = *(v41 - 8);
    (*(v56 + 16))(v113, v43, v41);
    (*(v56 + 56))(v113, 0, 1, v41);
    (*(v116 + 32))(v22, v116);
    *(v0 + 320) = v57;
    v58 = *(v115 + 32);
    v117 = v58 + *v58;
    v59 = v58[1];
    v60 = swift_task_alloc();
    *(v0 + 328) = v60;
    *v60 = v0;
    v60[1] = sub_258E8FAFC;
    v61 = *(v0 + 232);
    v62 = *(v0 + 176);
    v63 = *(v0 + 160);
    v64 = *(v0 + 128);
    v122 = *(v0 + 168);

    __asm { BRAA            X8, X16 }
  }

  v71 = *(v0 + 176);

  v72 = sub_258F0A350();
  v73 = sub_258F0A820();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_258DD8000, v72, v73, "Can't get user defaults initialized", v74, 2u);
    MEMORY[0x259C9EF40](v74, -1, -1);
  }

  sub_258E75C14();
  v37 = swift_allocError();
  *v75 = 5;
  swift_willThrow();
  *(v0 + 72) = v37;
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

      v37 = *(v0 + 72);
      v38 = 3;
LABEL_34:
      v118 = v38;
      goto LABEL_35;
    }

    if (MEMORY[0x277D81748] && v36 == *MEMORY[0x277D81748])
    {

      v37 = *(v0 + 72);
      v38 = 4;
      goto LABEL_34;
    }

    (*(v32 + 8))(v34, v31);
  }

  *(v0 + 80) = v37;
  v65 = sub_258F0A1D0();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64) + 15;
  v68 = swift_task_alloc();
  v69 = v37;
  if (swift_dynamicCast())
  {
    v70 = (*(v66 + 88))(v68, v65);
    if (MEMORY[0x277D04530] && v70 == *MEMORY[0x277D04530])
    {

      v37 = *(v0 + 80);
      v38 = 6;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04538] && v70 == *MEMORY[0x277D04538])
    {

      v37 = *(v0 + 80);
      v38 = 7;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04540] && v70 == *MEMORY[0x277D04540])
    {

      v37 = *(v0 + 80);
      v38 = 8;
      goto LABEL_34;
    }

    (*(v66 + 8))(v68, v65);
  }

  *(v0 + 88) = v37;
  v76 = v37;
  if (swift_dynamicCast())
  {

    v118 = *(v0 + 348);
    v37 = *(v0 + 88);
LABEL_35:

    v83 = *(v0 + 264);
    v82 = *(v0 + 272);
    v84 = *(v0 + 248);
    v85 = *(v0 + 256);
    v86 = *(v0 + 240);
    v87 = *(v0 + 344);
    v88 = *(v0 + 120);
    v89 = *(v84 + 64) + 15;
    v90 = swift_task_alloc();
    sub_258E75C14();
    v91 = swift_allocError();
    *v92 = v118;

    (*(v84 + 8))(v88, v86);
    *v90 = v91;
    v85(v90, v87, v86);
    (*(v84 + 32))(v88, v90, v86);

    goto LABEL_36;
  }

  *(v0 + 96) = v37;
  v77 = sub_258F09E60();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64) + 15;
  v80 = swift_task_alloc();
  v81 = v37;
  if (swift_dynamicCast())
  {

    (*(v78 + 8))(v80, v77);

    v37 = *(v0 + 96);
    v38 = 2;
    goto LABEL_34;
  }

  *(v0 + 104) = v37;
  v97 = sub_258F09E10();
  v98 = *(v97 - 8);
  v99 = *(v98 + 64) + 15;
  v100 = swift_task_alloc();
  v101 = v37;
  if (swift_dynamicCast())
  {

    (*(v98 + 8))(v100, v97);

    v118 = 0;
    v37 = *(v0 + 104);
    goto LABEL_35;
  }

  v102 = *(v0 + 200);
  v103 = *(v0 + 184);

  *(v0 + 112) = v37;
  v104 = v37;
  if (!swift_dynamicCast())
  {

    v38 = 1;
    goto LABEL_34;
  }

  v106 = *(v0 + 264);
  v105 = *(v0 + 272);
  v107 = *(v0 + 256);
  v108 = *(v0 + 240);
  v110 = *(v0 + 192);
  v109 = *(v0 + 200);
  v111 = *(v0 + 184);
  v112 = *(v0 + 120);
  (*(*(v0 + 248) + 8))(v112, v108);

  v107(v112, *MEMORY[0x277D81770], v108);
  (*(v110 + 8))(v109, v111);

LABEL_36:
  v93 = *(v0 + 232);
  v94 = *(v0 + 200);

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_258E8FAFC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = v2[40];
  (*(v2[28] + 8))(v2[29], v2[27]);

  if (v0)
  {
    v6 = sub_258E9040C;
  }

  else
  {
    v6 = sub_258E8FC80;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258E8FC80()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  (*(v4 + 8))(v8, v3);
  (*(v4 + 32))(v8, v2, v3);

  v9 = sub_258F09E80();
  v11 = v10;
  v12 = sub_258F09E90();
  sub_258E90AE0(v9, v11, v12, v13);
  v14 = *(v0 + 280);
  v15 = *(v0 + 272);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

  if (!v1)
  {

LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 72) = v1;
  v16 = sub_258F09E20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v21 = (*(v17 + 88))(v19, v16);
    if (MEMORY[0x277D81740] && v21 == *MEMORY[0x277D81740])
    {

      v22 = 3;
LABEL_26:
      v66 = v22;
      goto LABEL_27;
    }

    if (MEMORY[0x277D81748] && v21 == *MEMORY[0x277D81748])
    {

      v22 = 4;
      goto LABEL_26;
    }

    (*(v17 + 8))(v19, v16);
  }

  *(v0 + 80) = v1;
  v23 = sub_258F0A1D0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64) + 15;
  v26 = swift_task_alloc();
  v27 = v1;
  if (swift_dynamicCast())
  {
    v28 = (*(v24 + 88))(v26, v23);
    if (MEMORY[0x277D04530] && v28 == *MEMORY[0x277D04530])
    {

      v22 = 6;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04538] && v28 == *MEMORY[0x277D04538])
    {

      v22 = 7;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04540] && v28 == *MEMORY[0x277D04540])
    {

      v22 = 8;
      goto LABEL_26;
    }

    (*(v24 + 8))(v26, v23);
  }

  *(v0 + 88) = v1;
  v29 = v1;
  if (swift_dynamicCast())
  {

    v66 = *(v0 + 348);
LABEL_27:
    v36 = *(v0 + 264);
    v35 = *(v0 + 272);
    v37 = *(v0 + 248);
    v38 = *(v0 + 256);
    v39 = *(v0 + 240);
    v40 = *(v0 + 344);
    v41 = *(v0 + 120);
    v42 = *(v37 + 64) + 15;
    v43 = swift_task_alloc();
    sub_258E75C14();
    v44 = swift_allocError();
    *v45 = v66;

    (*(v37 + 8))(v41, v39);
    *v43 = v44;
    v38(v43, v40, v39);
    (*(v37 + 32))(v41, v43, v39);
    goto LABEL_28;
  }

  *(v0 + 96) = v1;
  v30 = sub_258F09E60();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64) + 15;
  v33 = swift_task_alloc();
  v34 = v1;
  if (swift_dynamicCast())
  {

    (*(v31 + 8))(v33, v30);

    v22 = 2;
    goto LABEL_26;
  }

  *(v0 + 104) = v1;
  v50 = sub_258F09E10();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64) + 15;
  v53 = swift_task_alloc();
  v54 = v1;
  if (swift_dynamicCast())
  {

    (*(v51 + 8))(v53, v50);

    v66 = 0;
    goto LABEL_27;
  }

  v55 = *(v0 + 200);
  v56 = *(v0 + 184);

  *(v0 + 112) = v1;
  v57 = v1;
  if (!swift_dynamicCast())
  {

    v22 = 1;
    goto LABEL_26;
  }

  v59 = *(v0 + 264);
  v58 = *(v0 + 272);
  v60 = *(v0 + 256);
  v61 = *(v0 + 240);
  v63 = *(v0 + 192);
  v62 = *(v0 + 200);
  v64 = *(v0 + 184);
  v65 = *(v0 + 120);
  (*(*(v0 + 248) + 8))(v65, v61);

  v60(v65, *MEMORY[0x277D81770], v61);
  (*(v63 + 8))(v62, v64);

LABEL_29:
  v46 = *(v0 + 232);
  v47 = *(v0 + 200);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_258E9040C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);

  (*(v4 + 8))(v1, v3);

  v6 = *(v0 + 336);
  *(v0 + 72) = v6;
  v7 = (v0 + 72);
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
      v58 = v14;
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

  *(v0 + 80) = v6;
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

      v6 = *(v0 + 80);
      v14 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v20 == *MEMORY[0x277D04538])
    {

      v6 = *(v0 + 80);
      v14 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v20 == *MEMORY[0x277D04540])
    {

      v6 = *(v0 + 80);
      v14 = 8;
      goto LABEL_24;
    }

    (*(v16 + 8))(v18, v15);
  }

  *(v0 + 88) = v6;
  v21 = v6;
  if (swift_dynamicCast())
  {

    v58 = *(v0 + 348);
    v6 = *(v0 + 88);
LABEL_25:

    v28 = *(v0 + 264);
    v27 = *(v0 + 272);
    v29 = *(v0 + 248);
    v30 = *(v0 + 256);
    v31 = *(v0 + 240);
    v32 = *(v0 + 344);
    v33 = *(v0 + 120);
    v34 = *(v29 + 64) + 15;
    v35 = swift_task_alloc();
    sub_258E75C14();
    v36 = swift_allocError();
    *v37 = v58;

    (*(v29 + 8))(v33, v31);
    *v35 = v36;
    v30(v35, v32, v31);
    (*(v29 + 32))(v33, v35, v31);

    goto LABEL_26;
  }

  *(v0 + 96) = v6;
  v22 = sub_258F09E60();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64) + 15;
  v25 = swift_task_alloc();
  v26 = v6;
  if (swift_dynamicCast())
  {

    (*(v23 + 8))(v25, v22);

    v6 = *(v0 + 96);
    v14 = 2;
    goto LABEL_24;
  }

  *(v0 + 104) = v6;
  v42 = sub_258F09E10();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64) + 15;
  v45 = swift_task_alloc();
  v46 = v6;
  if (swift_dynamicCast())
  {

    (*(v43 + 8))(v45, v42);

    v58 = 0;
    v6 = *(v0 + 104);
    goto LABEL_25;
  }

  v47 = *(v0 + 200);
  v48 = *(v0 + 184);

  *(v0 + 112) = v6;
  v49 = v6;
  if (!swift_dynamicCast())
  {

    v14 = 1;
    goto LABEL_24;
  }

  v51 = *(v0 + 264);
  v50 = *(v0 + 272);
  v52 = *(v0 + 256);
  v53 = *(v0 + 240);
  v55 = *(v0 + 192);
  v54 = *(v0 + 200);
  v56 = *(v0 + 184);
  v57 = *(v0 + 120);
  (*(*(v0 + 248) + 8))(v57, v53);

  v52(v57, *MEMORY[0x277D81770], v53);
  (*(v55 + 8))(v54, v56);

LABEL_26:
  v38 = *(v0 + 232);
  v39 = *(v0 + 200);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_258E90AE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {

    v9 = sub_258F0A350();
    v10 = sub_258F0A800();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_258DE3018(a1, a2, &v13);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_258DE3018(a3, a4, &v13);
      _os_log_impl(&dword_258DD8000, v9, v10, "TaskId: %s, TaskName: %s: asked to stop!", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    sub_258F0A770();
    sub_258DFCC98();
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_258E90C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B08, &unk_258F0CD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E90CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v16 = v19 - v15;
  v20 = a1;
  v21 = a2;

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);
  v19[0] = v20;
  v19[1] = v21;
  sub_258F0A670();
  sub_258E9119C();
  v17 = *(*(*(a8 + 8) + 8) + 8);
  sub_258F0A7F0();
  (*(v12 + 8))(v16, AssociatedTypeWitness);

  return v20;
}

unint64_t sub_258E90E58()
{
  result = qword_27F989EF8;
  if (!qword_27F989EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989EF8);
  }

  return result;
}

unint64_t sub_258E90EB4()
{
  result = qword_27F989F00;
  if (!qword_27F989F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989F00);
  }

  return result;
}

uint64_t dispatch thunk of ODDIMetricsTaskExecutorBase.execute(for:defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 32);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_258DE1DC4;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_258E910F0()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_258E9119C()
{
  result = qword_27F989F08;
  if (!qword_27F989F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989F08);
  }

  return result;
}

uint64_t sub_258E912D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v5[40] = a4;
  v5[41] = v4;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v6 = *(type metadata accessor for PoirotODDIMetricsConcluder(0) - 8);
  v5[42] = v6;
  v5[43] = *(v6 + 64);
  v5[44] = swift_task_alloc();
  v7 = sub_258F09D50();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F88, &qword_258F13530) - 8) + 64) + 15;
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v11 = sub_258F098A0();
  v5[50] = v11;
  v12 = *(v11 - 8);
  v5[51] = v12;
  v13 = *(v12 + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v15 = sub_258F098D0();
  v5[55] = v15;
  v16 = *(v15 - 8);
  v5[56] = v16;
  v17 = *(v16 + 64) + 15;
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840) - 8) + 64) + 15;
  v5[60] = swift_task_alloc();
  v19 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_258E915B8, 0, 0);
}

uint64_t sub_258E915B8()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[60];
  if (v0[38])
  {
    v2 = v0[60];
    sub_258F0A0A0();
  }

  else
  {
    v3 = sub_258F09A20();
    (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  }

  v4 = v0[37];
  sub_258F0A050();
  v5 = sub_258F09DD0();
  v6 = *(MEMORY[0x277D04480] + 4);
  v7 = swift_task_alloc();
  v0[61] = v7;
  *v7 = v0;
  v7[1] = sub_258E9170C;
  v8 = v0[60];
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282159D80](v5, v4, 0, 0, v8);
}

uint64_t sub_258E9170C(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 488);
  v3 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 496) = a1;

  sub_258DE2184(v3, &qword_27F988728, &unk_258F0B840);
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_258E91868, 0, 0);
}

uint64_t sub_258E91868()
{
  v128 = *MEMORY[0x277D85DE8];
  v1 = v0[62];
  if (v1)
  {
    type metadata accessor for ODDIPoirotMetricsPlugin(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = [v3 resourceURL];

    if (v4)
    {
      v5 = v0[53];
      sub_258F098B0();

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = v0[55];
    v8 = v0[56];
    v10 = v0[53];
    v9 = v0[54];
    (*(v8 + 56))(v10, v6, 1, v7);
    sub_258E25BDC(v10, v9);
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      sub_258DE2184(v0[54], &qword_27F988720, &qword_258F0B830);
      result = sub_258F0AB90();
      v12 = *MEMORY[0x277D85DE8];
      return result;
    }

    v119 = v1;
    v14 = v0[58];
    v13 = v0[59];
    v15 = v0[56];
    v114 = v0[57];
    v16 = v0[54];
    v17 = v0[55];
    v18 = v0[51];
    v19 = v0[52];
    v20 = v0[50];
    v117 = v0[49];
    v21 = v0[48];
    v22 = v0[46];
    v120 = v22;
    v122 = v0[47];
    v125 = v0[45];
    (*(v18 + 104))(v19, *MEMORY[0x277CC91D8], v20);
    sub_258DEF388();
    sub_258F098C0();
    (*(v18 + 8))(v19, v20);
    v116 = *(v15 + 8);
    v116(v16, v17);
    (*(v15 + 32))(v13, v14, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F90, &qword_258F13538);
    (*(v15 + 16))(v114, v13, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F98, &qword_258F13540);
    v23 = *(sub_258F09D20() - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    *(swift_allocObject() + 16) = xmmword_258F0B820;
    v26 = v119;
    sub_258F09D10();
    v27 = sub_258F09D60();
    v28 = *(*(v27 - 8) + 56);
    v28(v117, 1, 1, v27);
    v28(v21, 1, 1, v27);
    (*(v120 + 104))(v122, *MEMORY[0x277D3DF70], v125);
    sub_258F09D00();
    v1 = v119;
    v29 = sub_258F09CE0();
    v113 = v26;
    v30 = MEMORY[0x259C9DA60]();
    v31 = *(v30 + 16);
    v118 = v29;
    if (v31)
    {
      v32 = sub_258F0A190();
      v33 = *(v32 - 8);
      v34 = v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v126 = *(v33 + 72);
      v121 = (v33 + 16);
      v123 = *(v33 + 64) + 15;
      v35 = (v33 + 8);
      v115 = v32;
      do
      {
        v37 = swift_task_alloc();
        (*v121)(v37, v34, v32);
        if (v29)
        {
          v38 = v29;
          sub_258F0A170();
          v39 = sub_258F0A4E0();

          v40 = sub_258F0A180();
          v41 = sub_258F0A150();
          v43 = v42;
          v44 = swift_allocObject();
          *(v44 + 16) = v41;
          *(v44 + 24) = v43;
          v0[30] = sub_258E94910;
          v0[31] = v44;
          v0[26] = MEMORY[0x277D85DD0];
          v0[27] = 1107296256;
          v0[28] = sub_258E92604;
          v0[29] = &block_descriptor_48;
          v45 = _Block_copy(v0 + 26);
          v46 = v0[31];

          v0[36] = 0;
          LODWORD(v40) = [v38 registerFunctionWithName:v39 numArgs:v40 function:v45 error:v0 + 36];
          _Block_release(v45);

          v47 = v0[36];
          if (v40)
          {
            v36 = v47;
          }

          else
          {
            v48 = v47;
            v49 = sub_258F09890();

            swift_willThrow();
          }

          v29 = v118;
          v32 = v115;
        }

        (*v35)(v37, v32);

        v34 += v126;
        --v31;
      }

      while (v31);

      v1 = v119;
    }

    else
    {
    }

    if (v29)
    {
      v50 = v118;
      v51 = sub_258F0A4E0();
      v0[24] = sub_258E9277C;
      v0[25] = 0;
      v0[20] = MEMORY[0x277D85DD0];
      v0[21] = 1107296256;
      v0[22] = sub_258E92604;
      v0[23] = &block_descriptor_42;
      v52 = _Block_copy(v0 + 20);
      v53 = v0[25];

      v0[35] = 0;
      v54 = [v50 registerFunctionWithName:v51 numArgs:1 function:v52 error:v0 + 35];
      _Block_release(v52);

      v55 = v0[35];
      if (v54)
      {
        v56 = v55;
      }

      else
      {
        v57 = v55;
        v58 = sub_258F09890();

        swift_willThrow();
      }

      v59 = v50;
      v60 = sub_258F0A4E0();
      v0[18] = sub_258E92794;
      v0[19] = 0;
      v0[14] = MEMORY[0x277D85DD0];
      v0[15] = 1107296256;
      v0[16] = sub_258E92604;
      v0[17] = &block_descriptor_39;
      v61 = _Block_copy(v0 + 14);
      v62 = v0[19];

      v0[34] = 0;
      v63 = [v59 registerFunctionWithName:v60 numArgs:1 function:v61 error:v0 + 34];
      _Block_release(v61);

      v64 = v0[34];
      if (v63)
      {
        v65 = v64;
      }

      else
      {
        v66 = v64;
        v67 = sub_258F09890();

        swift_willThrow();
      }

      v68 = v59;
      v69 = sub_258F0A4E0();
      v70 = sub_258F0A1C0();
      v72 = v71;
      v73 = swift_allocObject();
      *(v73 + 16) = v70;
      *(v73 + 24) = v72;
      v0[12] = sub_258E94948;
      v0[13] = v73;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_258E92604;
      v0[11] = &block_descriptor_36;
      v74 = _Block_copy(v0 + 8);
      v75 = v0[13];

      v0[33] = 0;
      LODWORD(v72) = [v68 registerFunctionWithName:v69 numArgs:2 function:v74 error:v0 + 33];
      _Block_release(v74);

      v76 = v0[33];
      if (v72)
      {
        v77 = v76;
      }

      else
      {
        v78 = v76;
        v79 = sub_258F09890();

        swift_willThrow();
      }

      v80 = v68;
      v81 = sub_258F0A4E0();
      v82 = sub_258F0A1B0();
      v84 = v83;
      v85 = swift_allocObject();
      *(v85 + 16) = v82;
      *(v85 + 24) = v84;
      v0[6] = sub_258E94894;
      v0[7] = v85;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_258E92604;
      v0[5] = &block_descriptor_4;
      v86 = _Block_copy(v0 + 2);
      v87 = v0[7];

      v0[32] = 0;
      LODWORD(v82) = [v80 registerFunctionWithName:v81 numArgs:2 function:v86 error:v0 + 32];
      _Block_release(v86);

      v88 = v0[32];
      if (v82)
      {
        v89 = v88;
      }

      else
      {
        v90 = v88;
        v91 = sub_258F09890();

        swift_willThrow();
      }
    }

    v93 = v0[43];
    v92 = v0[44];
    v94 = v0[42];
    v96 = v0[39];
    v95 = v0[40];
    sub_258E94730(v0[41], v92);
    v97 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v98 = (v93 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    sub_258E94794(v92, v99 + v97);
    v100 = (v99 + v98);
    *v100 = v96;
    v100[1] = v95;

    sub_258F09CF0();
    v116(v0[59], v0[55]);
  }

  v124 = v1 != 0;
  v102 = v0[59];
  v101 = v0[60];
  v104 = v0[57];
  v103 = v0[58];
  v106 = v0[53];
  v105 = v0[54];
  v107 = v0[52];
  v109 = v0[48];
  v108 = v0[49];
  v110 = v0[47];
  v127 = v0[44];

  v111 = v0[1];
  v112 = *MEMORY[0x277D85DE8];

  return v111(v124);
}

id sub_258E92604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_258F0A6B0();

  v5(v15, v6, a3);

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8, v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_258F0AD70();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

double sub_258E927AC@<D0>(uint64_t (*a1)(void)@<X2>, _OWORD *a2@<X8>)
{
  v3 = a1();
  if (v4)
  {
    v7 = MEMORY[0x277D837D0];
    *&v6 = v3;
    *(&v6 + 1) = v4;
    sub_258DEB8B8(&v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_258E92808(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v77 = a3;
  v78 = a4;
  v6 = sub_258F09D80();
  v7 = *(v6 - 8);
  v88 = v6;
  v89 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v87 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_258F09D40();
  v82 = *(v80 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v80, v12);
  v79 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258F09DB0();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v67 - v22;
  sub_258F09DC0();
  v24 = *(type metadata accessor for PoirotODDIMetricsConcluder(0) + 20);
  v25 = v15[2];
  v68 = v23;
  v25(v20, v23, v14);
  v26 = sub_258F0A350();
  v27 = sub_258F0A800();
  v28 = os_log_type_enabled(v26, v27);
  v81 = v15;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    v30 = sub_258F09DA0();
    v67 = v15[1];
    v67(v20, v14);
    *(v29 + 4) = v30;
    _os_log_impl(&dword_258DD8000, v26, v27, "ODDIMetricsQuery yielded %ld rows)", v29, 0xCu);
    MEMORY[0x259C9EF40](v29, -1, -1);
  }

  else
  {
    v67 = v15[1];
    v67(v20, v14);
  }

  v31 = sub_258F09D90();
  v76 = *(v31 + 16);
  if (v32 != v76)
  {
    v33 = v32;
    v34 = v31;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
    result = v34;
    v74 = v34 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v73 = v82 + 16;
    v72 = v82 + 8;
    v85 = v89 + 8;
    v86 = v89 + 16;
    v36 = v33;
    v71 = v14;
    v70 = v34;
    v69 = v33;
    while (2)
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v36 >= *(result + 16))
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v84 = v5;
      v37 = v82;
      v39 = v79;
      v38 = v80;
      (*(v82 + 16))(v79, v74 + *(v82 + 72) * v36, v80);
      v83 = v36 + 1;
      v40 = sub_258F09D30();
      (*(v37 + 8))(v39, v38);
      result = sub_258F0ABB0();
      v41 = result;
      v42 = 0;
      v44 = v40 + 64;
      v43 = *(v40 + 64);
      v91 = result;
      v92 = v40;
      v45 = 1 << *(v40 + 32);
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v47 = v46 & v43;
      v48 = (v45 + 63) >> 6;
      v90 = result + 64;
      if (v47)
      {
        while (1)
        {
          v49 = __clz(__rbit64(v47));
          v93 = (v47 - 1) & v47;
LABEL_18:
          v52 = v49 | (v42 << 6);
          v53 = *(v92 + 56);
          v54 = (*(v92 + 48) + 16 * v52);
          v55 = v54[1];
          v95 = *v54;
          v56 = v88;
          v57 = v89;
          v58 = v87;
          (*(v89 + 16))(v87, v53 + *(v89 + 72) * v52, v88);

          sub_258F09D70();
          (*(v57 + 8))(v58, v56);
          v41 = v91;
          *(v90 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
          v59 = (v41[6] + 16 * v52);
          *v59 = v95;
          v59[1] = v55;
          result = sub_258DEB8B8(&v94, (v41[7] + 32 * v52));
          v60 = v41[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            break;
          }

          v41[2] = v62;
          v47 = v93;
          if (!v93)
          {
            goto LABEL_13;
          }
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_13:
      v50 = v42;
      while (1)
      {
        v42 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          __break(1u);
          goto LABEL_27;
        }

        if (v42 >= v48)
        {
          break;
        }

        v51 = *(v44 + 8 * v42);
        ++v50;
        if (v51)
        {
          v49 = __clz(__rbit64(v51));
          v93 = (v51 - 1) & v51;
          goto LABEL_18;
        }
      }

      v63 = sub_258DFA528(v41);

      v64 = v84;
      v77(v63);
      v5 = v64;
      if (v64)
      {

        v65 = v68;
        v66 = v71;
        return (v67)(v65, v66);
      }

      v36 = v83;
      v14 = v71;
      result = v70;
      v33 = v69;
      if (v83 != v76)
      {
        continue;
      }

      break;
    }
  }

  v65 = v68;
  v66 = v14;
  return (v67)(v65, v66);
}

uint64_t sub_258E92E84()
{
  v0 = qword_27F989F10;

  return v0;
}

uint64_t sub_258E92F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258E85FAC;

  return sub_258E912D4(a1, a2, a3, a4);
}

void *sub_258E92FF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_258E2E9B4(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_258E93094()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_258E930CC(void *a1)
{
  v3 = *v1;
  v4 = sub_258F0A130();
  v6 = v5;
  swift_beginAccess();
  v7 = a1;
  v8 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_258ED7530(v7, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_258E931A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_258E931C8, 0, 0);
}

uint64_t sub_258E931C8()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v1();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_258E93234()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x277D84F98];
}

uint64_t ODDIPoirotMetricsPlugin.__allocating_init(taskParams:defaults:logger:fbfBundleId:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  ODDIPoirotMetricsPlugin.init(taskParams:defaults:logger:fbfBundleId:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t ODDIPoirotMetricsPlugin.init(taskParams:defaults:logger:fbfBundleId:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v93 = a5;
  v79 = a4;
  v100 = a2;
  v87 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  v8 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87, v9);
  v88 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258F09B00();
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v83 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_258F09A20();
  v82 = *(v84 - 8);
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v84, v16);
  v81 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_258F0A370();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v22 = MEMORY[0x28223BE20](v18, v21);
  v90 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v78 - v25;
  v27 = sub_258F09CD0();
  v28 = *(*(v27 - 8) + 48);
  v95 = a1;
  v29 = v28(a1, 1, v27);
  v30 = v19[2];
  v89 = OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_logger;
  v30(v5 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_logger, a3, v18);
  v31 = a3;
  v91 = v30;
  v30(v26, a3, v18);
  v32 = v18;
  v33 = type metadata accessor for ODDIMetricsDataProvider();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v94 = v19;
  v37 = v19[4];
  v78[1] = v19 + 4;
  v78[0] = v37;
  v37(v36 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger, v26, v18);
  v38 = OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_dataProvider;
  v96 = v5;
  *(v5 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_dataProvider) = v36;
  v80 = v29;
  if (v29 == 1)
  {
    v39 = sub_258F0A1F0();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = v100;
    v43 = sub_258F0A1E0();
    v44 = MEMORY[0x277D04548];
  }

  else
  {
    v39 = type metadata accessor for NoActionBookmarkStore();
    v43 = swift_allocObject();
    *(v43 + 16) = sub_258DFBF44(MEMORY[0x277D84F90]);
    v44 = sub_258E94194(&qword_27F989F48, v45, type metadata accessor for NoActionBookmarkStore);
  }

  v98 = v39;
  v99 = v44;
  v97 = v43;
  v46 = v91;
  v91(v90, v31, v18);
  v47 = sub_258F09C20();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = v92;
  v51 = sub_258F09BE0();
  if (v50)
  {
    v52 = v94[1];
    v52(v31, v18);

    sub_258DE2184(v95, &qword_27F989F30, qword_258F132E0);
    v53 = v96;
    v52(v96 + v89, v18);
    v54 = *(v53 + v38);

    type metadata accessor for ODDIPoirotMetricsPlugin(0);
    v55 = *(*v53 + 48);
    v56 = *(*v53 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v57 = v51;
    v92 = 0;
    v58 = v81;
    sub_258F0A090();
    v59 = v83;
    sub_258F09AC0();
    sub_258F09C00();
    (*(v85 + 8))(v59, v86);
    (*(v82 + 8))(v58, v84);
    v60 = v88;
    v46(&v88[*(v87 + 20)], v31, v32);
    sub_258E93AD4(v95, v60);
    v46(v26, v31, v32);

    v61 = sub_258E7FC74(v60, v26, v57);
    *(v96 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_calculator) = v61;
    if (v80 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_258F0CA20;
      v46(v26, v31, v32);
      v63 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v79, v93);
      v64 = type metadata accessor for ODDIMetricsSELFReporter();
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      v67 = swift_allocObject();
      v68 = (v67 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService);
      v68[3] = type metadata accessor for SELFReportingService();
      v68[4] = &protocol witness table for SELFReportingService;
      *v68 = v63;
      *(v67 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
      (v78[0])(v67 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger, v26, v32);
      *(v62 + 32) = v67;
    }

    else
    {
    }

    v69 = v100;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E00, &qword_258F12B80);
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    v97 = sub_258F09BA0();
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E08, qword_258F12B88);
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    v76 = sub_258F09BC0();

    (v94[1])(v31, v32);
    sub_258DE2184(v95, &qword_27F989F30, qword_258F132E0);
    v53 = v96;
    *(v96 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_reporter) = v76;
  }

  return v53;
}

uint64_t sub_258E93AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E93B44(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E93B64, 0, 0);
}

uint64_t sub_258E93B64()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258E7F500();
}

uint64_t sub_258E93C08(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E93C38, 0, 0);
}

uint64_t sub_258E93C38()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_reporter);
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

uint64_t sub_258E93D04(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E93D24, 0, 0);
}

uint64_t sub_258E93D24()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258E81A14(v3);
}

uint64_t ODDIPoirotMetricsPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_reporter);

  return v0;
}

uint64_t ODDIPoirotMetricsPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_reporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E93F38(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E93F5C, 0, 0);
}

uint64_t sub_258E93F5C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258E7F500();
}

uint64_t sub_258E94000(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E93D24, 0, 0);
}

uint64_t sub_258E94024(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E94058, 0, 0);
}

uint64_t sub_258E94058()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_reporter);
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

uint64_t sub_258E94194(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ODDIPoirotMetricsPlugin.loadData()(uint64_t a1)
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

uint64_t dispatch thunk of ODDIPoirotMetricsPlugin.report(_:)(uint64_t a1)
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

uint64_t dispatch thunk of ODDIPoirotMetricsPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
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

void sub_258E94654()
{
  sub_258E946D8();
  if (v0 <= 0x3F)
  {
    sub_258F0A370();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258E946D8()
{
  if (!qword_280CC5DF8)
  {
    sub_258F09CD0();
    v0 = sub_258F0A920();
    if (!v1)
    {
      atomic_store(v0, &qword_280CC5DF8);
    }
  }
}

uint64_t sub_258E94730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E94794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E947F8(uint64_t a1)
{
  v3 = *(type metadata accessor for PoirotODDIMetricsConcluder(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_258E92808(a1, v1 + v4, *v5, *(v5 + 8));
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_258E948B0@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  if (v6)
  {
    v9 = MEMORY[0x277D837D0];
    *&v8 = v5;
    *(&v8 + 1) = v6;
    sub_258DEB8B8(&v8, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_258E94910()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t ODDIPoirotMetricsTaskExecutor.Subtask.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_258F0ABE0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_258E949D4()
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E94A50()
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E94AA8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258F0ABE0();

  *a2 = v5 != 0;
  return result;
}

uint64_t ODDIPoirotMetricsTaskExecutor.__allocating_init(taskParams:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_258E94B94(a1, v5 + OBJC_IVAR____TtC16MetricsFramework29ODDIPoirotMetricsTaskExecutor_taskParams);
  return v5;
}

uint64_t sub_258E94B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E94C04(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 24) = a1;
  v10 = sub_258F0A370();
  *(v8 + 80) = v10;
  v11 = *(v10 - 8);
  *(v8 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 152) = *a2;

  return MEMORY[0x2822009F8](sub_258E94D14, 0, 0);
}

uint64_t sub_258E94D14()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 24);
    v2 = *MEMORY[0x277D81758];
    v3 = sub_258F09E50();
    (*(*(v3 - 8) + 104))(v1, v2, v3);
    goto LABEL_3;
  }

  v7 = *(v0 + 48);
  v8 = sub_258F0A350();
  v9 = sub_258F0A810();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_258DD8000, v8, v9, "#ODDIPoirotMetricsTaskExecutor: Call Poirot ODDIMetrics", v10, 2u);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  v17 = *(v0 + 48);
  v40 = *(v0 + 56);
  v18 = *(v0 + 32);

  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v20 = swift_task_alloc();
  *(v0 + 112) = v20;
  sub_258E93AD4(v16 + OBJC_IVAR____TtC16MetricsFramework29ODDIPoirotMetricsTaskExecutor_taskParams, v12);
  (*(v14 + 16))(v11, v17, v13);
  v21 = type metadata accessor for ODDIPoirotMetricsPlugin(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  *(v0 + 16) = ODDIPoirotMetricsPlugin.init(taskParams:defaults:logger:fbfBundleId:)(v12, v18, v11, v40, v15);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FA8, &unk_258F13558);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_258F09E40();
  *(v0 + 120) = v28;
  if (!v28)
  {
    v36 = *(v0 + 24);
    v37 = sub_258F09E50();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v20, 1, 1, v37);
    (*(v38 + 104))(v36, *MEMORY[0x277D81758], v37);
    v39 = *(v0 + 112);

LABEL_3:
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);

    v6 = *(v0 + 8);

    return v6();
  }

  v29 = *(v0 + 40);
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
  v31 = swift_task_alloc();
  *(v0 + 128) = v31;
  v32 = sub_258F09E00();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v31, v29, v32);
  (*(v33 + 56))(v31, 0, 1, v32);
  v34 = *(MEMORY[0x277D81750] + 4);
  v35 = swift_task_alloc();
  *(v0 + 136) = v35;
  *v35 = v0;
  v35[1] = sub_258E95178;

  return MEMORY[0x2821ED078](v20, v31);
}

uint64_t sub_258E95178()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 120);
  sub_258DE2184(*(v2 + 128), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v6 = sub_258E953F4;
  }

  else
  {

    v6 = sub_258E952E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258E952E4()
{
  v1 = v0[14];
  v2 = v0[3];
  v3 = sub_258F09E50();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[14];

  v7 = v0[12];
  v6 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_258E953F4()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t ODDIPoirotMetricsTaskExecutor.__deallocating_deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIPoirotMetricsTaskExecutor_taskParams, &qword_27F989F30, qword_258F132E0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E95528(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_258DE1DC4;

  return sub_258E94C04(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_258E95614()
{
  result = qword_27F989FB0;
  if (!qword_27F989FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989FB0);
  }

  return result;
}

unint64_t sub_258E9566C()
{
  result = qword_27F989FB8;
  if (!qword_27F989FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989FB8);
  }

  return result;
}

uint64_t type metadata accessor for ODDIPoirotMetricsTaskExecutor()
{
  result = qword_280CC5CB8;
  if (!qword_280CC5CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258E95714()
{
  sub_258E946D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ODDIPoirotMetricsTaskExecutor.execute(for:defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 96);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_258DE1DC4;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t ODDISegmentsCohortResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ODDISegmentsCohortResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ODDISegmentsCohortResults.deviceSegmentsCohorts.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ODDISegmentsCohortResults.init(eventStreamMetadata:conversationStreamMetadata:deviceSegmentsCohorts:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_258E95B68()
{
  v1 = *(*(*v0 + 88) + 40);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

uint64_t sub_258E95C10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t *ODDISegmentsCohortsCalculator.__allocating_init(concluder:logger:bookmarkService:)(char *a1, uint64_t a2, uint64_t a3)
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
  v24 = sub_258E98F24(v18, v12, v28, v23);

  v25 = v14[1];
  v25(v18, v13);
  (*(v7 + 8))(v29, v6);
  v25(v30, v13);
  return v24;
}

uint64_t sub_258E95F6C(uint64_t a1)
{
  v2[113] = v1;
  v2[112] = a1;
  v2[114] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0) - 8) + 64) + 15;
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v4 = type metadata accessor for DeviceSegmentsCohorts(0);
  v2[117] = v4;
  v5 = *(v4 - 8);
  v2[118] = v5;
  v6 = *(v5 + 64) + 15;
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v8 = sub_258F09B00();
  v2[124] = v8;
  v9 = *(v8 - 8);
  v2[125] = v9;
  v10 = *(v9 + 64) + 15;
  v2[126] = swift_task_alloc();
  v11 = sub_258F09A20();
  v2[127] = v11;
  v12 = *(v11 - 8);
  v2[128] = v12;
  v13 = *(v12 + 64) + 15;
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E9621C, 0, 0);
}

void sub_258E9621C()
{
  v239 = v0;
  v1 = *(**(v0 + 904) + 112);
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDISegmentCohortCalculator: SQL calculator invoked: ", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 912);
  v6 = *(v0 + 904);

  v7 = *(v6 + *(*v6 + 128));
  (*(*(v5 + 88) + 24))(*(v5 + 80), *(v5 + 88));
  v8 = sub_258F0A4E0();

  v9 = [v7 BOOLForKey_];

  v10 = sub_258F0A350();
  v11 = sub_258F0A810();
  if (os_log_type_enabled(v10, v11))
  {
    if (v9)
    {
      v12 = "#ODDISegmentCohortCalculator: Include current date data for aggregation.";
    }

    else
    {
      v12 = "#ODDISegmentCohortCalculator: current date data NOT included for aggregation.";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_258DD8000, v10, v11, v12, v13, 2u);
    MEMORY[0x259C9EF40](v13, -1, -1);
  }

  v14 = *(v0 + 904);

  sub_258E98654();
  v15 = *(v0 + 904);
  v16 = type metadata accessor for ODDISegmentsCohortsCalculator();
  WitnessTable = swift_getWitnessTable();
  v181 = sub_258E3A5B0(v16, WitnessTable);
  v18 = (*(v0 + 904) + *(**(v0 + 904) + 136));
  v19 = *__swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v20 = sub_258F09BD0();
  sub_258F0A100();
  v22 = v21;

  v23 = *(v0 + 1104);
  v191 = v0;
  if (v22)
  {
    v24 = *(v0 + 1080);
    v217 = *(v0 + 1024);
    v220 = *(v0 + 1096);
    v226 = *(v0 + 1016);
    v25 = *(v0 + 1008);
    v26 = *(v0 + 1000);
    v27 = *(v0 + 992);
    v212 = *(v0 + 904);
    v214 = *(v0 + 1088);
    sub_258F0A090();
    swift_getWitnessTable();
    sub_258E3B9F0();
    sub_258F09960();
    v210 = *(v26 + 8);
    v210(v25, v27);
    v218 = *(v217 + 8);
    v218(v24, v226);
    sub_258E3B9F0();
    sub_258F09940();
    v210(v25, v27);
    v218(v214, v226);
    sub_258E3B9F0();
    sub_258F09950();
    v210(v25, v27);
    v218(v220, v226);
  }

  else
  {
    sub_258F09910();
  }

  v28 = *(v0 + 1072);
  v221 = *(v0 + 1104);
  v223 = *(v0 + 1064);
  v227 = *(v0 + 1056);
  v29 = *(v0 + 1008);
  v30 = *(v0 + 1000);
  v31 = *(v0 + 992);
  v32 = *(v0 + 904);
  sub_258F09AC0();
  sub_258F09960();
  v33 = *(v30 + 8);
  v33(v29, v31);
  sub_258F0A140();
  sub_258F09920();
  v230 = sub_258F0A120();
  swift_getWitnessTable();
  sub_258E3B9F0();
  sub_258F09960();
  v33(v29, v31);
  sub_258E3B9F0();
  sub_258F09BB0();
  v178 = v33;
  v33(v29, v31);
  v34 = sub_258E98220(v223, v227);
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FC0, &qword_258F13C30);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_258F0B820;
  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 64) = sub_258E98FA8();
  *(v37 + 32) = v34;
  *(v37 + 40) = v36;
  v38 = sub_258F0A520();
  v40 = v39;

  v41 = sub_258F0A350();
  v42 = sub_258F0A810();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v238[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_258DE3018(v38, v40, v238);
    _os_log_impl(&dword_258DD8000, v41, v42, "SQL with dates: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x259C9EF40](v44, -1, -1);
    MEMORY[0x259C9EF40](v43, -1, -1);
  }

  v45 = v0;
  v46 = *(v0 + 1048);
  sub_258F0A050();
  v180 = v230;
  v179 = sub_258F0A020();
  sub_258F0A040();

  sub_258F0A090();
  if ((sub_258F0A070() & 1) == 0)
  {
    v219 = 0;
    v211 = 0;
    v213 = 0;
    v47 = MEMORY[0x277D84F90];
LABEL_125:

    v167 = sub_258F0A350();
    v168 = sub_258F0A810();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 134217984;
      *(v169 + 4) = v47[2];

      _os_log_impl(&dword_258DD8000, v167, v168, "SiriSegmentCohortCalculator query yielded %ld results", v169, 0xCu);
      MEMORY[0x259C9EF40](v169, -1, -1);
    }

    else
    {
    }

    v193 = v45[138];
    v197 = v45[137];
    v199 = v45[136];
    v201 = v45[135];
    v189 = v45[133];
    v190 = v45[134];
    v185 = v45[132];
    v187 = v45[131];
    v203 = v45[130];
    v205 = v45[129];
    v170 = v45[128];
    v186 = v45[127];
    v207 = v45[126];
    v209 = v45[123];
    v216 = v45[122];
    v225 = v45[121];
    v229 = v45[120];
    v233 = v45[119];
    v236 = v45[116];
    v237 = v45[115];
    v184 = v45[113];
    v188 = v45[112];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v171 = swift_allocObject();
    v171[4] = v213;
    v171[5] = 0xD000000000000017;
    v171[6] = 0x8000000258F1AF40;
    v171[7] = v211;
    v171[8] = 0xD000000000000015;
    v171[9] = 0x8000000258F1D230;
    v171[10] = v219;
    v171[11] = 0xD00000000000001CLL;
    v171[12] = 0x8000000258F1D250;

    sub_258E98178(v213, 0xD000000000000017, 0x8000000258F1AF40, v184);

    sub_258E98178(v211, 0xD000000000000015, 0x8000000258F1D230, v184);

    sub_258E98178(v219, 0xD00000000000001CLL, 0x8000000258F1D250, v184);

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258F0A0F0();
    v172 = sub_258F09B70();

    v173 = *(v170 + 8);
    v173(v187, v186);
    v173(v185, v186);
    v173(v189, v186);
    v173(v190, v186);
    v173(v193, v186);
    *v188 = v172;
    v188[1] = MEMORY[0x277D84F90];
    v188[2] = v47;

    v174 = *(v191 + 8);

    v174();
    return;
  }

  v219 = 0;
  v211 = 0;
  v213 = 0;
  v182 = *(v0 + 936);
  v183 = *(v0 + 944);
  v177 = *(v0 + 904);
  v176 = *(*v177 + 144);
  v175 = (*(v0 + 1024) + 8);
  v47 = MEMORY[0x277D84F90];
  while (1)
  {
    v48 = sub_258F0A060();
    if (!v48)
    {
      goto LABEL_20;
    }

    v49 = v48;
    v50 = sub_258F0A350();
    v51 = sub_258F0A810();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v238[0] = v53;
      *v52 = 136315138;
      v54 = sub_258F0A420();
      v56 = v47;
      v57 = sub_258DE3018(v54, v55, v238);

      *(v52 + 4) = v57;
      v47 = v56;
      _os_log_impl(&dword_258DD8000, v50, v51, "SiriSegmentCohort row data: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x259C9EF40](v53, -1, -1);
      MEMORY[0x259C9EF40](v52, -1, -1);
    }

    v45[102] = 0xD000000000000010;
    v45[103] = 0x8000000258F1D270;
    sub_258F0AA80();
    if (*(v49 + 16) && (v58 = sub_258E2EA2C((v45 + 7)), (v59 & 1) != 0))
    {
      sub_258DE4090(*(v49 + 56) + 32 * v58, (v45 + 47));
      sub_258E0F590((v45 + 7));
      if (swift_dynamicCast())
      {
        v60 = *(v45 + 1121);
      }

      else
      {
        v60 = 2;
      }
    }

    else
    {
      sub_258E0F590((v45 + 7));
      v60 = 2;
    }

    v45[90] = 0xD000000000000015;
    v45[91] = 0x8000000258F1D290;
    sub_258F0AA80();
    if (!*(v49 + 16) || (v61 = sub_258E2EA2C((v45 + 22)), (v62 & 1) == 0))
    {
      sub_258E0F590((v45 + 22));
LABEL_37:
      v63 = 2;
LABEL_38:
      v64 = 1;
      if (v60 == 2)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    sub_258DE4090(*(v49 + 56) + 32 * v61, (v45 + 75));
    sub_258E0F590((v45 + 22));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    if ((v45[140] & 1) == 0)
    {
      v63 = 0;
      goto LABEL_38;
    }

    v63 = 1;
    v64 = 2;
    if (v60 == 2)
    {
      goto LABEL_41;
    }

LABEL_39:
    if (v60)
    {
      v65 = 2;
LABEL_45:
      v224 = v65;
      goto LABEL_46;
    }

LABEL_41:
    if (v63 == 2 || (v63 & 1) == 0)
    {
      v65 = 1;
      goto LABEL_45;
    }

    v224 = 0;
LABEL_46:
    v45[96] = 0xD000000000000025;
    v45[97] = 0x8000000258F1AD60;
    sub_258F0AA80();
    if (!*(v49 + 16) || (v66 = sub_258E2EA2C((v45 + 37)), (v67 & 1) == 0))
    {
      sub_258E0F590((v45 + 37));
LABEL_52:
      v68 = 0;
      if (v60 == 2)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    sub_258DE4090(*(v49 + 56) + 32 * v66, (v45 + 71));
    sub_258E0F590((v45 + 37));
    if (!swift_dynamicCast())
    {
      goto LABEL_52;
    }

    v68 = *(v191 + 1116);
    if (v60 == 2)
    {
      goto LABEL_59;
    }

LABEL_53:
    if (v63 != 2 && (v60 & 1) == 0 && !v68 && (v63 & 1) != 0)
    {

      v69 = sub_258F0A350();
      v70 = sub_258F0A810();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v238[0] = v72;
        *v71 = 67109634;
        *(v71 + 8) = 2080;
        *(v71 + 10) = sub_258DE3018(0x65736C6166, 0xE500000000000000, v238);
        *(v71 + 18) = 2080;
        *(v71 + 20) = sub_258DE3018(1702195828, 0xE400000000000000, v238);
        _os_log_impl(&dword_258DD8000, v69, v70, "#ODDISegmentCohortCalculator: Skip creating message daysWithTwoValidAssistantTurnsPerWeek: %u, isTwoByThree: %s, dataIncomplete: %s.", v71, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v72, -1, -1);
        MEMORY[0x259C9EF40](v71, -1, -1);
      }

      goto LABEL_20;
    }

    v208 = v68;
    v73 = v45[123];
    v74 = sub_258F09A70();
    v231 = *(*(v74 - 8) + 56);
    v234 = v74;
    v231(v73, 1, 1);
    v45[100] = 0xD000000000000015;
    v45[101] = 0x8000000258F189D0;
    sub_258F0AA80();
    if (!*(v49 + 16))
    {
      goto LABEL_63;
    }

LABEL_59:
    v75 = sub_258E2EA2C((v45 + 2));
    if (v76)
    {
      sub_258DE4090(*(v49 + 56) + 32 * v75, (v45 + 63));
      sub_258E0F590((v45 + 2));
      if (swift_dynamicCast())
      {
        v77 = v45[123];
        v78 = v45[122];
        v79 = v45[108];
        v80 = v45[109];
        sub_258F09A30();

        sub_258DE2184(v77, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v78, v77, &qword_27F988730, &unk_258F0F8E0);
        goto LABEL_68;
      }
    }

    else
    {
LABEL_63:
      sub_258E0F590((v45 + 2));
    }

    v81 = sub_258F0A350();
    v82 = sub_258F0A820();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_258DD8000, v81, v82, "observed NilDeviceAggregationId", v83, 2u);
      MEMORY[0x259C9EF40](v83, -1, -1);
    }

    if (__OFADD__(v213, 1))
    {
      goto LABEL_134;
    }

    ++v213;
LABEL_68:
    (v231)(v45[121], 1, 1, v234);
    v45[94] = 0xD000000000000013;
    v45[95] = 0x8000000258F1A5E0;
    sub_258F0AA80();
    if (*(v49 + 16) && (v84 = sub_258E2EA2C((v45 + 42)), (v85 & 1) != 0))
    {
      sub_258DE4090(*(v49 + 56) + 32 * v84, (v45 + 59));
      sub_258E0F590((v45 + 42));
      if (swift_dynamicCast())
      {
        v86 = v45[122];
        v87 = v45[121];
        v88 = v45[106];
        v89 = v45[107];
        sub_258F09A30();

        sub_258DE2184(v87, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v86, v87, &qword_27F988730, &unk_258F0F8E0);
        goto LABEL_77;
      }
    }

    else
    {
      sub_258E0F590((v45 + 42));
    }

    v90 = sub_258F0A350();
    v91 = sub_258F0A820();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_258DD8000, v90, v91, "observed NilUserAggregationId", v92, 2u);
      MEMORY[0x259C9EF40](v92, -1, -1);
    }

    if (__OFADD__(v211, 1))
    {
      goto LABEL_135;
    }

    ++v211;
LABEL_77:
    v45[92] = 0xD000000000000029;
    v45[93] = 0x8000000258F18AC0;
    sub_258F0AA80();
    if (*(v49 + 16) && (v93 = sub_258E2EA2C((v45 + 32)), (v94 & 1) != 0))
    {
      sub_258DE4090(*(v49 + 56) + 32 * v93, (v45 + 67));
      sub_258E0F590((v45 + 32));
      v95 = swift_dynamicCast();
      if (v95)
      {
        v96 = *(v191 + 888);
      }

      else
      {
        v96 = 0;
      }

      v97 = v95 ^ 1;
    }

    else
    {
      sub_258E0F590((v45 + 32));
      v96 = 0;
      v97 = 1;
    }

    v45[88] = 0xD00000000000002BLL;
    v45[89] = 0x8000000258F18AF0;
    sub_258F0AA80();
    if (*(v49 + 16) && (v98 = sub_258E2EA2C((v45 + 27)), (v99 & 1) != 0))
    {
      sub_258DE4090(*(v49 + 56) + 32 * v98, (v45 + 79));
      sub_258E0F590((v45 + 27));
      v100 = swift_dynamicCast();
      if (v100)
      {
        v101 = *(v191 + 880);
      }

      else
      {
        v101 = 0;
      }

      v102 = v100 ^ 1;
    }

    else
    {
      sub_258E0F590((v45 + 27));
      v101 = 0;
      v102 = 1;
    }

    v198 = v102;
    v215 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
    v45[86] = 0x61645F746E657665;
    v45[87] = 0xEA00000000006574;
    sub_258F0AA80();
    v222 = v47;
    v206 = v64;
    v204 = v96;
    v202 = v97;
    v200 = v101;
    if (!*(v49 + 16) || (v103 = sub_258E2EA2C((v45 + 17)), (v104 & 1) == 0))
    {

      sub_258E0F590((v45 + 17));
LABEL_99:
      if (__OFADD__(v219, 1))
      {
        goto LABEL_133;
      }

      ++v219;
      goto LABEL_101;
    }

    sub_258DE4090(*(v49 + 56) + 32 * v103, (v45 + 51));
    sub_258E0F590((v45 + 17));
    if ((swift_dynamicCast() & 1) == 0 || (v105 = v45[98], v106 = v45[99], v107 = *(v177 + v176), v108 = sub_258F0A4E0(), , v109 = [v107 dateFromString_], v108, !v109))
    {

      goto LABEL_99;
    }

    v194 = v45[133];
    v110 = v45[130];
    v111 = v45[129];
    v112 = v45[126];
    v113 = v45;
    v114 = v45[124];
    v115 = v113[113];
    sub_258F09A00();

    sub_258E3B9F0();
    sub_258F09950();
    v178(v112, v114);
    if (sub_258F099C0())
    {
      v116 = v113[130];
      v117 = v113[129];
      v118 = v113[127];
      v119 = v113[123];
      v120 = v113[121];

      v121 = *v175;
      (*v175)(v117, v118);
      v121(v116, v118);
      sub_258DE2184(v120, &qword_27F988730, &unk_258F0F8E0);
      sub_258DE2184(v119, &qword_27F988730, &unk_258F0F8E0);
      v45 = v113;
      v47 = v222;
      goto LABEL_20;
    }

    if (v215)
    {
      v151 = *(v191 + 1096);
      v152 = *(v191 + 1040);
      v196 = *(v191 + 1016);
      v153 = *(v191 + 1008);
      v154 = *(v191 + 992);
      v155 = *(v191 + 904);
      v156 = v215;
      sub_258E3B9F0();
      sub_258F09930();
      v178(v153, v154);
      sub_258F099E0();
      v158 = v157;
      v159 = v157;
      v160 = *v175;
      (*v175)(v151, v196);
      if ((*&v159 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_136;
      }

      if (v158 <= -1.0)
      {
        goto LABEL_137;
      }

      v45 = v191;
      if (v158 >= 1.84467441e19)
      {
        goto LABEL_138;
      }

      [v156 setStartTimestampInSecondsSince1970_];

      *(v191 + 832) = 0xD000000000000018;
      *(v191 + 840) = 0x8000000258F1A780;
      v161 = v156;
      sub_258F0AA80();
      if (*(v49 + 16) && (v162 = sub_258E2EA2C(v191 + 96), (v163 & 1) != 0))
      {
        sub_258DE4090(*(v49 + 56) + 32 * v162, v191 + 440);
        sub_258E0F590(v191 + 96);

        v164 = swift_dynamicCast() ? *(v191 + 1112) : 86400;
      }

      else
      {
        v164 = 86400;

        sub_258E0F590(v191 + 96);
      }

      [v161 setNumberOfSeconds_];
    }

    else
    {

      v160 = *v175;
      v45 = v191;
    }

    v165 = v45[130];
    v166 = v45[127];
    v160(v45[129], v166);
    v160(v165, v166);
LABEL_101:
    v122 = v45[131];
    v123 = v45[123];
    v124 = v45[121];
    v125 = v45[116];
    v126 = type metadata accessor for DeviceSegmentsCohortsImpl(0);
    v127 = *(v126 + 48);
    v128 = *(v126 + 52);
    v129 = swift_allocObject();
    v130 = v129 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata;
    v131 = type metadata accessor for EventMetadata(0);
    v132 = *(*(v131 - 1) + 56);
    v132(v130, 1, 1, v131);
    *(v129 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceSegmentsReported) = 0;
    sub_258F09A60();
    (v231)(v125, 0, 1, v234);
    sub_258DE20C0(v123, v125 + v131[5], &qword_27F988730, &unk_258F0F8E0);
    sub_258DE20C0(v124, v125 + v131[6], &qword_27F988730, &unk_258F0F8E0);
    sub_258F099E0();
    if ((*&v133 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v133 <= -1.0)
    {
      goto LABEL_130;
    }

    if (v133 >= 1.84467441e19)
    {
      goto LABEL_131;
    }

    if (!is_mul_ok(v133, 0x3E8uLL))
    {
      goto LABEL_132;
    }

    v192 = 1000 * v133;
    v45 = v191;
    v228 = *(v191 + 960);
    v232 = *(v191 + 952);
    v134 = *(v191 + 928);
    v195 = *(v191 + 920);
    v135 = objc_opt_self();
    v235 = v215;
    v136 = [v135 sharedPreferences];
    v137 = [v136 longLivedIdentifierUploadingEnabled];

    v138 = v134 + v131[7];
    *v138 = v192;
    *(v138 + 8) = 0;
    *(v134 + v131[8]) = v215;
    v139 = v134 + v131[9];
    *v139 = v204;
    *(v139 + 8) = v202;
    v140 = v134 + v131[10];
    *v140 = v200;
    *(v140 + 8) = v198;
    v141 = v134 + v131[11];
    *v141 = 3;
    *(v141 + 4) = 0;
    *(v134 + v131[12]) = v137 ^ 1;
    v132(v134, 0, 1, v131);
    sub_258E2EAD8(v134, v195, &qword_27F9894E0, &unk_258F106A0);
    swift_beginAccess();
    sub_258E98FFC(v195, v130);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FD0, &qword_258F13730);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_258F0B820;
    *(v142 + 32) = v224;
    *(v142 + 36) = 0;
    *(v142 + 40) = v206;
    *(v142 + 44) = 0;
    *(v142 + 48) = v208;
    *(v142 + 52) = 0;
    *(v142 + 56) = 0;
    *(v142 + 60) = 1;
    sub_258DE20C0(v130, v228, &qword_27F9894E0, &unk_258F106A0);
    swift_setDeallocating();
    sub_258DE2184(v129 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
    v143 = *(*v129 + 48);
    v144 = *(*v129 + 52);
    swift_deallocClassInstance();
    *(v228 + *(v182 + 20)) = v142;
    *(v228 + *(v182 + 24)) = 0;
    sub_258E9906C(v228, v232);
    v47 = v222;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_258DE2A9C(0, v222[2] + 1, 1, v222);
    }

    v146 = v47[2];
    v145 = v47[3];
    if (v146 >= v145 >> 1)
    {
      v47 = sub_258DE2A9C(v145 > 1, v146 + 1, 1, v47);
    }

    v147 = *(v191 + 984);
    v148 = *(v191 + 968);
    v149 = *(v191 + 960);
    v150 = *(v191 + 952);

    sub_258E990D0(v149);
    sub_258DE2184(v148, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v147, &qword_27F988730, &unk_258F0F8E0);
    v47[2] = v146 + 1;
    sub_258E9912C(v150, v47 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v146);
LABEL_20:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_125;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

uint64_t sub_258E98178(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(*a4 + 80);
  v8 = *(*a4 + 88);
  v9 = type metadata accessor for ODDISegmentsCohortsCalculator();
  WitnessTable = swift_getWitnessTable();
  return sub_258E38C54(a1, a2, a3, v9, WitnessTable);
}

uint64_t sub_258E98220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = *v3;
  v47 = sub_258F09B00();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258F09A20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v46 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v40 - v18;
  (*(v12 + 16))(&v40 - v18, a1, v11);
  v20 = sub_258E996E0();
  v49 = a2;
  v45 = v20;
  v21 = sub_258F0A4A0();
  v41 = v12;
  if (v21)
  {
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = *(v3 + *(*v3 + 144));
    v43 = (v6 + 8);
    v44 = v25;
    v42 = (v12 + 8);
    v26 = (v12 + 32);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v50 = 39;
      v51 = 0xE100000000000000;
      v27 = sub_258F099A0();
      v28 = [v44 stringFromDate_];

      v29 = sub_258F0A4F0();
      v31 = v30;

      MEMORY[0x259C9DEB0](v29, v31);

      MEMORY[0x259C9DEB0](39, 0xE100000000000000);
      v32 = v50;
      v33 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_258DE2990(0, *(v22 + 2) + 1, 1, v22);
      }

      v35 = *(v22 + 2);
      v34 = *(v22 + 3);
      if (v35 >= v34 >> 1)
      {
        v22 = sub_258DE2990((v34 > 1), v35 + 1, 1, v22);
      }

      *(v22 + 2) = v35 + 1;
      v36 = &v22[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v33;
      v37 = *(v48 + 80);
      v38 = *(v48 + 88);
      type metadata accessor for ODDISegmentsCohortsCalculator();
      swift_getWitnessTable();
      sub_258E3B9F0();
      v39 = v46;
      sub_258F09960();
      (*v43)(v10, v47);
      (*v42)(v19, v11);
      (*v26)(v19, v39, v11);
    }

    while ((sub_258F0A4A0() & 1) == 0);
  }

  v50 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  sub_258E99738();
  v23 = sub_258F0A490();

  (*(v41 + 8))(v19, v11);
  return v23;
}

uint64_t sub_258E98654()
{
  v2 = v0;
  v3 = sub_258F0A540();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_258F098D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(*v0 + 88) + 40);
  v13 = *(*v0 + 80);
  v14 = v0 + *(*v0 + 96);
  v12(v13);
  sub_258F0A530();
  v15 = sub_258F0A4C0();
  v17 = v16;
  if (v1)
  {
    (*(v7 + 8))(v11, v6);
    v18 = v2 + *(*v2 + 112);
    v19 = sub_258F0A350();
    v20 = sub_258F0A820();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_258DD8000, v19, v20, "#ODDISegmentsCohortsCalculator: SQL file could not be loaded", v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v22 = 10;
    swift_willThrow();
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    v23 = *(*v2 + 112);

    v24 = sub_258F0A350();
    v25 = sub_258F0A810();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_258DE3018(v15, v17, &v30);
      _os_log_impl(&dword_258DD8000, v24, v25, "#ODDISegmentsCohortsCalculator: SQL: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x259C9EF40](v27, -1, -1);
      MEMORY[0x259C9EF40](v26, -1, -1);
    }
  }

  return v15;
}

uint64_t ODDISegmentsCohortsCalculator.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 104)));
  v1 = *(*v0 + 112);
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + *(*v0 + 120));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t ODDISegmentsCohortsCalculator.__deallocating_deinit()
{
  ODDISegmentsCohortsCalculator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E98B60()
{
  v1 = *v0;
  sub_258E98CB4();
}

id sub_258E98BA0()
{
  v0 = sub_258E98C98();

  return v0;
}

uint64_t sub_258E98BCC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258E95F6C(a1);
}

uint64_t sub_258E98C68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t *sub_258E98CD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = (v5 + *(*v5 + 104));
  v12 = type metadata accessor for CAAnalyticsEventSubmitter();
  v13 = swift_allocObject();
  v11[3] = v12;
  v11[4] = &off_286A2C648;
  *v11 = v13;
  (*(*(*(v10 + 80) - 8) + 16))(v5 + *(*v5 + 96), a1);
  v14 = *(*v5 + 112);
  v15 = sub_258F0A370();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5 + v14, a2, v15);
  *(v5 + *(*v5 + 128)) = a4;
  v17 = (v5 + *(*v5 + 136));
  v17[3] = sub_258F09C20();
  v17[4] = &off_286A2FA30;
  *v17 = a3;
  sub_258F09F30();
  v18 = a4;

  *(v5 + *(*v5 + 120)) = sub_258F09F20();
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v5 + *(*v5 + 144)) = v19;
  v20 = sub_258F0A4E0();
  [v19 setDateFormat_];

  (*(v16 + 8))(a2, v15);
  return v5;
}

uint64_t *sub_258E98F24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ODDISegmentsCohortsCalculator();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_258E98CD0(a1, a2, a3, a4);
}

unint64_t sub_258E98FA8()
{
  result = qword_27F989FC8;
  if (!qword_27F989FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989FC8);
  }

  return result;
}

uint64_t sub_258E98FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E9906C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSegmentsCohorts(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E990D0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceSegmentsCohorts(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E9912C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSegmentsCohorts(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258E99190()
{
  result = qword_27F989FD8;
  if (!qword_27F989FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989FD8);
  }

  return result;
}

uint64_t sub_258E991E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E99220(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E9925C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E99298()
{
  result = qword_27F989FE0[0];
  if (!qword_27F989FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F989FE0);
  }

  return result;
}

uint64_t dispatch thunk of ODDISegmentsCohortConcluding.conclude(with:endTimes:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_258E994A8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_258F0A370();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of ODDISegmentsCohortsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

unint64_t sub_258E996E0()
{
  result = qword_27F989870;
  if (!qword_27F989870)
  {
    sub_258F09A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989870);
  }

  return result;
}

unint64_t sub_258E99738()
{
  result = qword_27F988DB8;
  if (!qword_27F988DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988DB0, &unk_258F13940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DB8);
  }

  return result;
}

uint64_t ODDISegmentsCohortsDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t ODDISegmentsCohortsDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E998B4()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: ODDISegmentsCohortsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t ODDISegmentsCohortsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ODDISegmentsCohortsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E99A90()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E99894();
}

uint64_t type metadata accessor for ODDISegmentsCohortsDataProvider()
{
  result = qword_27F98A070;
  if (!qword_27F98A070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ODDISegmentsCohortsDataProvider.loadData()(uint64_t a1)
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

uint64_t ODDISegmentsCohortsPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  ODDISegmentsCohortsPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_258E99D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5, v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ODDISegmentsCohortsConcluder(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_258E9E160(a1, v15, type metadata accessor for ODDISegmentsCohortsConcluder);
  v16 = v6[2];
  v35 = v10;
  v36 = a2;
  v16(v10, a2, v5);
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v18 = sub_258F0A4E0();

  v19 = [v17 initWithSuiteName_];

  if (!v19)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  sub_258F09F30();
  v33[1] = sub_258F09F20();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A0F8, qword_258F13C38);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = (v23 + *(*v23 + 104));
  v25 = type metadata accessor for CAAnalyticsEventSubmitter();
  v26 = swift_allocObject();
  v24[3] = v25;
  v24[4] = &off_286A2C648;
  *v24 = v26;
  sub_258E9E160(v15, v23 + *(*v23 + 96), type metadata accessor for ODDISegmentsCohortsConcluder);
  v27 = v35;
  v16((v23 + *(*v23 + 112)), v35, v5);
  *(v23 + *(*v23 + 128)) = v19;
  v28 = (v23 + *(*v23 + 136));
  v28[3] = sub_258F09C20();
  v28[4] = &off_286A2FA30;
  *v28 = v34;
  *(v23 + *(*v23 + 120)) = sub_258F09F20();
  v29 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v23 + *(*v23 + 144)) = v29;
  v30 = sub_258F0A4E0();
  [v29 setDateFormat_];

  v31 = v6[1];
  v31(v36, v5);
  sub_258E9E1C8(v37, type metadata accessor for ODDISegmentsCohortsConcluder);
  v31(v27, v5);
  sub_258E9E1C8(v15, type metadata accessor for ODDISegmentsCohortsConcluder);
  return v23;
}

uint64_t sub_258E9A110(uint64_t a1)
{
  v2[113] = v1;
  v2[112] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0) - 8) + 64) + 15;
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v4 = type metadata accessor for DeviceSegmentsCohorts(0);
  v2[116] = v4;
  v5 = *(v4 - 8);
  v2[117] = v5;
  v6 = *(v5 + 64) + 15;
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v8 = sub_258F09B00();
  v2[123] = v8;
  v9 = *(v8 - 8);
  v2[124] = v9;
  v10 = *(v9 + 64) + 15;
  v2[125] = swift_task_alloc();
  v11 = sub_258F09A20();
  v2[126] = v11;
  v12 = *(v11 - 8);
  v2[127] = v12;
  v13 = *(v12 + 64) + 15;
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E9A398, 0, 0);
}

void sub_258E9A398()
{
  v244 = v0;
  v1 = *(**(v0 + 904) + 112);
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDISegmentCohortCalculator: SQL calculator invoked: ", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 904);

  v6 = *(v5 + *(*v5 + 128));
  v7 = sub_258F0A4E0();
  v8 = [v6 BOOLForKey_];

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v9, v10))
  {
    if (v8)
    {
      v11 = "#ODDISegmentCohortCalculator: Include current date data for aggregation.";
    }

    else
    {
      v11 = "#ODDISegmentCohortCalculator: current date data NOT included for aggregation.";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v9, v10, v11, v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  v13 = *(v0 + 904);

  sub_258E9C590();
  v14 = *(v0 + 904);
  v202 = sub_258DE04C8();
  v15 = (*(v0 + 904) + *(**(v0 + 904) + 136));
  v16 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v17 = sub_258F09BD0();
  sub_258F0A100();
  v19 = v18;

  v20 = *(v0 + 1096);
  v205 = v0;
  if (v19)
  {
    v21 = *(v0 + 1080);
    v228 = v21;
    v232 = *(v0 + 1088);
    v22 = *(v0 + 1072);
    v23 = *(v0 + 1016);
    v24 = *(v0 + 1008);
    v25 = *(v0 + 1000);
    v26 = *(v0 + 992);
    v27 = *(v0 + 984);
    sub_258F0A090();
    sub_258F09AC0();
    sub_258F09960();
    v28 = *(v26 + 8);
    v28(v25, v27);
    v29 = *(v23 + 8);
    v29(v22, v24);
    sub_258F09AC0();
    sub_258F09940();
    v28(v25, v27);
    v29(v228, v24);
    sub_258F09AC0();
    sub_258F09950();
    v28(v25, v27);
    v29(v232, v24);
  }

  else
  {
    sub_258F09910();
  }

  v30 = *(v0 + 1096);
  v31 = *(v0 + 1064);
  v32 = *(v0 + 1048);
  v33 = *(v0 + 1000);
  v34 = *(v0 + 992);
  v35 = *(v0 + 984);
  v233 = *(v0 + 1056);
  v236 = *(v0 + 904);
  sub_258F09AC0();
  sub_258F09960();
  v36 = *(v34 + 8);
  v36(v33, v35);
  sub_258F0A140();
  sub_258F09920();
  v37 = sub_258F0A120();
  sub_258F09AC0();
  sub_258F09960();
  v36(v33, v35);
  sub_258F09AC0();
  sub_258F09BB0();
  v199 = v36;
  v36(v33, v35);
  v38 = sub_258E9C198(v233, v32);
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FC0, &qword_258F13C30);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_258F0B820;
  *(v41 + 56) = MEMORY[0x277D837D0];
  *(v41 + 64) = sub_258E98FA8();
  *(v41 + 32) = v38;
  *(v41 + 40) = v40;
  v42 = sub_258F0A520();
  v44 = v43;

  v45 = sub_258F0A350();
  v46 = sub_258F0A810();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v243[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_258DE3018(v42, v44, v243);
    _os_log_impl(&dword_258DD8000, v45, v46, "SQL with dates: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x259C9EF40](v48, -1, -1);
    MEMORY[0x259C9EF40](v47, -1, -1);
  }

  v49 = v0;
  v50 = *(v0 + 1040);
  sub_258F0A050();
  v201 = v37;
  v200 = sub_258F0A020();
  sub_258F0A040();

  sub_258F0A090();
  v51 = sub_258F0A070();
  v52 = MEMORY[0x277D84F90];
  if ((v51 & 1) == 0)
  {
    v224 = 0;
    v226 = 0;
    v221 = 0;
LABEL_125:

    v176 = sub_258F0A350();
    v177 = sub_258F0A810();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 134217984;
      *(v178 + 4) = v52[2];

      _os_log_impl(&dword_258DD8000, v176, v177, "SiriSegmentCohortCalculator query yielded %ld results", v178, 0xCu);
      MEMORY[0x259C9EF40](v178, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v179 = swift_allocObject();
    v179[4] = v221;
    v179[5] = 0xD000000000000017;
    v179[6] = 0x8000000258F1AF40;
    v180 = v224;
    v179[7] = v224;
    v179[8] = 0xD000000000000015;
    v179[9] = 0x8000000258F1D230;
    v179[10] = v226;
    v179[11] = 0xD00000000000001CLL;
    v179[12] = 0x8000000258F1D250;
    if (v221 >= 1)
    {
      v181 = *(v49 + 904);

      sub_258E2D7AC(v221, 0xD000000000000017, 0x8000000258F1AF40);

      v180 = v224;
    }

    if (v180 >= 1)
    {
      v182 = *(v49 + 904);
      v183 = v180;

      sub_258E2D7AC(v183, 0xD000000000000015, 0x8000000258F1D230);
    }

    if (v226 >= 1)
    {
      v184 = *(v49 + 904);

      sub_258E2D7AC(v226, 0xD00000000000001CLL, 0x8000000258F1D250);
    }

    v185 = *(v49 + 1096);
    v214 = *(v49 + 1088);
    v216 = *(v49 + 1080);
    v186 = *(v49 + 1064);
    v187 = v49;
    v188 = *(v49 + 1056);
    v189 = *(v49 + 1048);
    v210 = *(v49 + 1040);
    v218 = *(v49 + 1072);
    v220 = *(v49 + 1032);
    v190 = *(v49 + 1024);
    v191 = *(v49 + 1016);
    v192 = v187[126];
    v223 = v187[125];
    v225 = v187[122];
    v227 = v187[121];
    v231 = v187[120];
    v235 = v187[119];
    v239 = v187[118];
    v240 = v187[115];
    v242 = v187[114];
    v193 = v187[112];
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258F0A0F0();
    v212 = sub_258F09B70();

    v194 = *(v191 + 8);
    v194(v210, v192);
    v194(v189, v192);
    v194(v188, v192);
    v194(v186, v192);
    v194(v185, v192);
    *v193 = v212;
    v193[1] = MEMORY[0x277D84F90];
    v193[2] = v52;

    v195 = v187[1];

    v195();
    return;
  }

  v224 = 0;
  v226 = 0;
  v221 = 0;
  v203 = *(v0 + 928);
  v204 = *(v0 + 936);
  v198 = *(v0 + 904);
  v197 = *(*v198 + 144);
  v196 = (*(v0 + 1016) + 8);
  while (1)
  {
    v241 = v52;
    v53 = sub_258F0A060();
    if (!v53)
    {
      goto LABEL_20;
    }

    v54 = v53;
    v55 = sub_258F0A350();
    v56 = sub_258F0A810();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v243[0] = v58;
      *v57 = 136315138;
      v59 = sub_258F0A420();
      v61 = sub_258DE3018(v59, v60, v243);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_258DD8000, v55, v56, "SiriSegmentCohort row data: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x259C9EF40](v58, -1, -1);
      MEMORY[0x259C9EF40](v57, -1, -1);
    }

    *(v49 + 816) = 0xD000000000000010;
    *(v49 + 824) = 0x8000000258F1D270;
    sub_258F0AA80();
    if (*(v54 + 16) && (v62 = sub_258E2EA2C(v49 + 56), (v63 & 1) != 0))
    {
      sub_258DE4090(*(v54 + 56) + 32 * v62, v49 + 376);
      sub_258E0F590(v49 + 56);
      if (swift_dynamicCast())
      {
        v64 = *(v49 + 1113);
      }

      else
      {
        v64 = 2;
      }
    }

    else
    {
      sub_258E0F590(v49 + 56);
      v64 = 2;
    }

    *(v49 + 720) = 0xD000000000000015;
    *(v49 + 728) = 0x8000000258F1D290;
    sub_258F0AA80();
    if (!*(v54 + 16) || (v65 = sub_258E2EA2C(v49 + 176), (v66 & 1) == 0))
    {
      sub_258E0F590(v49 + 176);
LABEL_40:
      v67 = 2;
      v68 = 1;
      if (v64 == 2)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    sub_258DE4090(*(v54 + 56) + 32 * v65, v49 + 600);
    sub_258E0F590(v49 + 176);
    if (!swift_dynamicCast())
    {
      goto LABEL_40;
    }

    v67 = *(v49 + 1112);
    if (*(v49 + 1112))
    {
      v68 = 2;
    }

    else
    {
      v68 = 1;
    }

    if (v64 == 2)
    {
      goto LABEL_43;
    }

LABEL_41:
    if (v64)
    {
      v69 = 2;
      goto LABEL_47;
    }

LABEL_43:
    v69 = v67 == 2 || (v67 & 1) == 0;
LABEL_47:
    *(v49 + 768) = 0xD000000000000025;
    *(v49 + 776) = 0x8000000258F1AD60;
    sub_258F0AA80();
    if (!*(v54 + 16) || (v70 = sub_258E2EA2C(v49 + 296), (v71 & 1) == 0))
    {
      sub_258E0F590(v49 + 296);
LABEL_52:
      v72 = 0;
      goto LABEL_53;
    }

    sub_258DE4090(*(v54 + 56) + 32 * v70, v49 + 568);
    sub_258E0F590(v49 + 296);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_52;
    }

    v72 = *(v205 + 1108);
LABEL_53:
    if (v64 != 2 && !v72 && (v64 & 1) == 0 && v67 != 2 && (v67 & 1) != 0)
    {

      v73 = sub_258F0A350();
      v74 = sub_258F0A810();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v243[0] = v76;
        *v75 = 67109634;
        *(v75 + 8) = 2080;
        *(v75 + 10) = sub_258DE3018(0x65736C6166, 0xE500000000000000, v243);
        *(v75 + 18) = 2080;
        *(v75 + 20) = sub_258DE3018(1702195828, 0xE400000000000000, v243);
        _os_log_impl(&dword_258DD8000, v73, v74, "#ODDISegmentCohortCalculator: Skip creating message daysWithTwoValidAssistantTurnsPerWeek: %u, isTwoByThree: %s, dataIncomplete: %s.", v75, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v76, -1, -1);
        MEMORY[0x259C9EF40](v75, -1, -1);
      }

LABEL_20:
      v52 = v241;
      goto LABEL_21;
    }

    v219 = v72;
    v77 = *(v49 + 976);
    v78 = sub_258F09A70();
    v237 = *(*(v78 - 8) + 56);
    v237(v77, 1, 1, v78);
    *(v49 + 800) = 0xD000000000000015;
    *(v49 + 808) = 0x8000000258F189D0;
    sub_258F0AA80();
    v229 = v78;
    if (!*(v54 + 16))
    {
      goto LABEL_64;
    }

    v79 = sub_258E2EA2C(v49 + 16);
    if (v80)
    {
      sub_258DE4090(*(v54 + 56) + 32 * v79, v49 + 504);
      sub_258E0F590(v49 + 16);
      if (swift_dynamicCast())
      {
        v81 = *(v49 + 976);
        v82 = *(v49 + 960);
        v83 = *(v49 + 864);
        v84 = *(v49 + 872);
        sub_258F09A30();

        sub_258DE2184(v81, &qword_27F988730, &unk_258F0F8E0);
        v78 = v229;
        sub_258E2EAD8(v82, v81, &qword_27F988730, &unk_258F0F8E0);
        goto LABEL_69;
      }
    }

    else
    {
LABEL_64:
      sub_258E0F590(v49 + 16);
    }

    v85 = sub_258F0A350();
    v86 = sub_258F0A820();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_258DD8000, v85, v86, "observed NilDeviceAggregationId", v87, 2u);
      v88 = v87;
      v78 = v229;
      MEMORY[0x259C9EF40](v88, -1, -1);
    }

    if (__OFADD__(v221, 1))
    {
      goto LABEL_140;
    }

    ++v221;
LABEL_69:
    v237(*(v49 + 968), 1, 1, v78);
    *(v49 + 752) = 0xD000000000000013;
    *(v49 + 760) = 0x8000000258F1A5E0;
    sub_258F0AA80();
    v217 = v69;
    if (*(v54 + 16) && (v89 = sub_258E2EA2C(v49 + 336), (v90 & 1) != 0))
    {
      sub_258DE4090(*(v54 + 56) + 32 * v89, v49 + 472);
      sub_258E0F590(v49 + 336);
      if (swift_dynamicCast())
      {
        v91 = *(v49 + 968);
        v92 = *(v49 + 960);
        v93 = *(v49 + 848);
        v94 = *(v49 + 856);
        sub_258F09A30();

        sub_258DE2184(v91, &qword_27F988730, &unk_258F0F8E0);
        v78 = v229;
        sub_258E2EAD8(v92, v91, &qword_27F988730, &unk_258F0F8E0);
        v95 = v226;
        goto LABEL_78;
      }
    }

    else
    {
      sub_258E0F590(v49 + 336);
    }

    v96 = sub_258F0A350();
    v97 = sub_258F0A820();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_258DD8000, v96, v97, "observed NilUserAggregationId", v98, 2u);
      v99 = v98;
      v78 = v229;
      MEMORY[0x259C9EF40](v99, -1, -1);
    }

    v95 = v226;
    if (__OFADD__(v224, 1))
    {
      goto LABEL_141;
    }

    ++v224;
LABEL_78:
    *(v49 + 736) = 0xD000000000000029;
    *(v49 + 744) = 0x8000000258F18AC0;
    sub_258F0AA80();
    if (*(v54 + 16) && (v100 = sub_258E2EA2C(v49 + 256), (v101 & 1) != 0))
    {
      sub_258DE4090(*(v54 + 56) + 32 * v100, v49 + 536);
      sub_258E0F590(v49 + 256);
      v102 = swift_dynamicCast();
      v103 = *(v205 + 888);
      if (!v102)
      {
        v103 = 0;
      }

      v215 = v103;
      v104 = v102 ^ 1;
    }

    else
    {
      sub_258E0F590(v49 + 256);
      v215 = 0;
      v104 = 1;
    }

    v213 = v104;
    *(v49 + 704) = 0xD00000000000002BLL;
    *(v49 + 712) = 0x8000000258F18AF0;
    sub_258F0AA80();
    if (*(v54 + 16) && (v105 = sub_258E2EA2C(v49 + 216), (v106 & 1) != 0))
    {
      sub_258DE4090(*(v54 + 56) + 32 * v105, v49 + 632);
      sub_258E0F590(v49 + 216);
      v107 = swift_dynamicCast();
      if (v107)
      {
        v108 = *(v205 + 880);
      }

      else
      {
        v108 = 0;
      }

      v109 = v107 ^ 1;
    }

    else
    {
      sub_258E0F590(v49 + 216);
      v108 = 0;
      v109 = 1;
    }

    v211 = v109;
    v222 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
    *(v49 + 688) = 0x61645F746E657665;
    *(v49 + 696) = 0xEA00000000006574;
    sub_258F0AA80();
    v209 = v68;
    v208 = v108;
    if (!*(v54 + 16) || (v110 = sub_258E2EA2C(v49 + 136), (v111 & 1) == 0))
    {

      sub_258E0F590(v49 + 136);
LABEL_98:
      v128 = __OFADD__(v95, 1);
      v129 = v95 + 1;
      if (v128)
      {
        goto LABEL_139;
      }

      v226 = v129;
      goto LABEL_100;
    }

    sub_258DE4090(*(v54 + 56) + 32 * v110, v49 + 408);
    sub_258E0F590(v49 + 136);
    if (!swift_dynamicCast())
    {

      goto LABEL_98;
    }

    v112 = *(v49 + 784);
    v113 = *(v49 + 792);
    v114 = *(v198 + v197);
    v115 = sub_258F0A4E0();

    v116 = [v114 dateFromString_];

    if (!v116)
    {

      v78 = v229;
      goto LABEL_98;
    }

    v117 = *(v49 + 1056);
    v118 = *(v49 + 1032);
    v119 = *(v49 + 1024);
    v120 = *(v49 + 1000);
    v121 = *(v49 + 984);
    sub_258F09A00();

    sub_258F09AC0();
    sub_258F09950();
    v199(v120, v121);
    if (sub_258F099C0())
    {
      v122 = *(v49 + 1032);
      v123 = *(v49 + 1024);
      v124 = *(v49 + 1008);
      v125 = *(v49 + 976);
      v126 = *(v49 + 968);

      v127 = *v196;
      (*v196)(v123, v124);
      v127(v122, v124);
      sub_258DE2184(v126, &qword_27F988730, &unk_258F0F8E0);
      sub_258DE2184(v125, &qword_27F988730, &unk_258F0F8E0);
      v52 = v241;
      goto LABEL_21;
    }

    if (v222)
    {
      v160 = *(v49 + 1088);
      v161 = *(v49 + 1032);
      v162 = *(v49 + 1008);
      v163 = *(v49 + 1000);
      v164 = *(v49 + 984);
      v165 = v222;
      sub_258F09AC0();
      sub_258F09930();
      v199(v163, v164);
      sub_258F099E0();
      v167 = v166;
      v168 = v166;
      v169 = *v196;
      (*v196)(v160, v162);
      if ((*&v168 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_142;
      }

      if (v167 <= -1.0)
      {
        goto LABEL_143;
      }

      v78 = v229;
      if (v167 >= 1.84467441e19)
      {
        goto LABEL_144;
      }

      [v165 setStartTimestampInSecondsSince1970_];

      *(v49 + 832) = 0xD000000000000018;
      *(v49 + 840) = 0x8000000258F1A780;
      v170 = v165;
      sub_258F0AA80();
      if (*(v54 + 16) && (v171 = sub_258E2EA2C(v49 + 96), (v172 & 1) != 0))
      {
        sub_258DE4090(*(v54 + 56) + 32 * v171, v49 + 440);
        sub_258E0F590(v49 + 96);

        v173 = (swift_dynamicCast() & 1) != 0 ? *(v205 + 1104) : 86400;
      }

      else
      {
        v173 = 86400;

        sub_258E0F590(v49 + 96);
      }

      [v170 setNumberOfSeconds_];
    }

    else
    {

      v169 = *v196;
      v78 = v229;
    }

    v174 = *(v49 + 1032);
    v175 = *(v49 + 1008);
    v169(*(v49 + 1024), v175);
    v169(v174, v175);
LABEL_100:
    v130 = *(v49 + 1040);
    v131 = v49;
    v132 = *(v49 + 976);
    v133 = *(v131 + 968);
    v134 = *(v131 + 920);
    v135 = type metadata accessor for DeviceSegmentsCohortsImpl(0);
    v136 = *(v135 + 48);
    v137 = *(v135 + 52);
    v138 = swift_allocObject();
    v139 = v138 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata;
    v140 = type metadata accessor for EventMetadata(0);
    v141 = *(*(v140 - 1) + 56);
    v141(v139, 1, 1, v140);
    *(v138 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceSegmentsReported) = 0;
    sub_258F09A60();
    v237(v134, 0, 1, v78);
    sub_258DE20C0(v132, v134 + v140[5], &qword_27F988730, &unk_258F0F8E0);
    sub_258DE20C0(v133, v134 + v140[6], &qword_27F988730, &unk_258F0F8E0);
    sub_258F099E0();
    if ((*&v142 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v142 <= -1.0)
    {
      goto LABEL_136;
    }

    if (v142 >= 1.84467441e19)
    {
      goto LABEL_137;
    }

    if (!is_mul_ok(v142, 0x3E8uLL))
    {
      goto LABEL_138;
    }

    v206 = 1000 * v142;
    v49 = v205;
    v230 = *(v205 + 952);
    v234 = *(v205 + 944);
    v143 = *(v205 + 920);
    v207 = *(v205 + 912);
    v144 = objc_opt_self();
    v238 = v222;
    v145 = [v144 sharedPreferences];
    v146 = [v145 longLivedIdentifierUploadingEnabled];

    v147 = v143 + v140[7];
    *v147 = v206;
    *(v147 + 8) = 0;
    *(v143 + v140[8]) = v222;
    v148 = v143 + v140[9];
    *v148 = v215;
    *(v148 + 8) = v213;
    v149 = v143 + v140[10];
    *v149 = v208;
    *(v149 + 8) = v211;
    v150 = v143 + v140[11];
    *v150 = 3;
    *(v150 + 4) = 0;
    *(v143 + v140[12]) = v146 ^ 1;
    v141(v143, 0, 1, v140);
    sub_258E2EAD8(v143, v207, &qword_27F9894E0, &unk_258F106A0);
    swift_beginAccess();
    sub_258E98FFC(v207, v139);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FD0, &qword_258F13730);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_258F0B820;
    *(v151 + 32) = v217;
    *(v151 + 36) = 0;
    *(v151 + 40) = v209;
    *(v151 + 44) = 0;
    *(v151 + 48) = v219;
    *(v151 + 52) = 0;
    *(v151 + 56) = 0;
    *(v151 + 60) = 1;
    sub_258DE20C0(v139, v230, &qword_27F9894E0, &unk_258F106A0);
    swift_setDeallocating();
    sub_258DE2184(v138 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
    v152 = *(*v138 + 48);
    v153 = *(*v138 + 52);
    swift_deallocClassInstance();
    *(v230 + *(v203 + 20)) = v151;
    *(v230 + *(v203 + 24)) = 0;
    sub_258E9E160(v230, v234, type metadata accessor for DeviceSegmentsCohorts);
    v52 = v241;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_258DE2A9C(0, v241[2] + 1, 1, v241);
    }

    v155 = v52[2];
    v154 = v52[3];
    if (v155 >= v154 >> 1)
    {
      v52 = sub_258DE2A9C(v154 > 1, v155 + 1, 1, v52);
    }

    v156 = *(v205 + 976);
    v157 = *(v205 + 968);
    v158 = *(v205 + 952);
    v159 = *(v205 + 944);

    sub_258E9E1C8(v158, type metadata accessor for DeviceSegmentsCohorts);
    sub_258DE2184(v157, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v156, &qword_27F988730, &unk_258F0F8E0);
    v52[2] = v155 + 1;
    sub_258E9912C(v159, v52 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v155);
LABEL_21:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_125;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_258E9C198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = sub_258F09B00();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258F09A20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v39 - v18;
  (*(v12 + 16))(&v39 - v18, a1, v11);
  v20 = sub_258E9DCF0(&qword_27F989870, MEMORY[0x277CC9578]);
  v46 = a2;
  v43 = v20;
  v21 = sub_258F0A4A0();
  v40 = v12;
  if (v21)
  {
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = *(v3 + *(*v3 + 144));
    v41 = (v6 + 8);
    v42 = v25;
    v26 = (v12 + 8);
    v27 = (v12 + 32);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v47 = 39;
      v48 = 0xE100000000000000;
      v28 = sub_258F099A0();
      v29 = [v42 stringFromDate_];

      v30 = sub_258F0A4F0();
      v32 = v31;

      MEMORY[0x259C9DEB0](v30, v32);

      MEMORY[0x259C9DEB0](39, 0xE100000000000000);
      v33 = v47;
      v34 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_258DE2990(0, *(v22 + 2) + 1, 1, v22);
      }

      v36 = *(v22 + 2);
      v35 = *(v22 + 3);
      if (v36 >= v35 >> 1)
      {
        v22 = sub_258DE2990((v35 > 1), v36 + 1, 1, v22);
      }

      *(v22 + 2) = v36 + 1;
      v37 = &v22[16 * v36];
      *(v37 + 4) = v33;
      *(v37 + 5) = v34;
      sub_258F09AC0();
      v38 = v44;
      sub_258F09960();
      (*v41)(v10, v45);
      (*v26)(v19, v11);
      (*v27)(v19, v38, v11);
    }

    while ((sub_258F0A4A0() & 1) == 0);
  }

  v47 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  sub_258E99738();
  v23 = sub_258F0A490();

  (*(v40 + 8))(v19, v11);
  return v23;
}

uint64_t sub_258E9C590()
{
  v2 = sub_258F0A540();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = *(*v0 + 96);
  v6 = v0 + *(type metadata accessor for ODDISegmentsCohortsConcluder(0) + 20);
  sub_258F0A530();
  v7 = sub_258F0A4C0();
  v9 = v8;
  if (v1)
  {
    v10 = v0 + *(*v0 + 112);
    v11 = sub_258F0A350();
    v12 = sub_258F0A820();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_258DD8000, v11, v12, "#ODDISegmentsCohortsCalculator: SQL file could not be loaded", v13, 2u);
      MEMORY[0x259C9EF40](v13, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v14 = 10;
    swift_willThrow();
  }

  else
  {
    v15 = *(*v0 + 112);

    v16 = sub_258F0A350();
    v17 = sub_258F0A810();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_258DE3018(v7, v9, &v21);
      _os_log_impl(&dword_258DD8000, v16, v17, "#ODDISegmentsCohortsCalculator: SQL: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x259C9EF40](v19, -1, -1);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }
  }

  return v7;
}

uint64_t sub_258E9C808()
{
  v2 = sub_258F0A540();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = type metadata accessor for ODDISegmentsCohortsConcluder(0);
  v6 = *(v5 + 20);
  sub_258F0A530();
  v7 = sub_258F0A4C0();
  v9 = v8;
  if (v1)
  {
    v10 = v0 + *(v5 + 24);
    v11 = sub_258F0A350();
    v12 = sub_258F0A820();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_258DD8000, v11, v12, "#ODDISegmentsCohortsConcluder: SQL file could not be loaded", v13, 2u);
      MEMORY[0x259C9EF40](v13, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v14 = 10;
    swift_willThrow();
  }

  else
  {
    v15 = *(v5 + 24);

    v16 = sub_258F0A350();
    v17 = sub_258F0A810();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_258DE3018(v7, v9, &v21);
      _os_log_impl(&dword_258DD8000, v16, v17, "#ODDISegmentsCohortsConcluder: SQL: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x259C9EF40](v19, -1, -1);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }
  }

  return v7;
}

uint64_t sub_258E9CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_258E9CA74, 0, 0);
}

uint64_t sub_258E9CA74()
{
  v1 = v0[6];
  v2 = sub_258E9C808();
  v0[7] = 0;
  v0[8] = v3;
  v0[9] = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_258E85BF0;
  v6 = v0[2];
  v5 = v0[3];

  return sub_258E6A310(v6, v5);
}

uint64_t sub_258E9CB84()
{
  v0 = qword_27F98A080;

  return v0;
}

uint64_t sub_258E9CBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258E85FAC;

  return sub_258E9CA4C(a1, a2, a3, a4);
}

uint64_t sub_258E9CC9C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v23 - v13;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_258F0A4E0();
  v18 = sub_258F0A4E0();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_258F098B0();

    v20 = sub_258F098D0();
    (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  }

  else
  {
    v20 = sub_258F098D0();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  sub_258E2EAD8(v11, v14, &qword_27F988720, &qword_258F0B830);
  sub_258DE20C0(v14, v7, &qword_27F988720, &qword_258F0B830);
  sub_258F098D0();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v7, 1, v20) == 1)
  {
    sub_258DE2184(v7, &qword_27F988720, &qword_258F0B830);
    result = sub_258F0AB90();
    __break(1u);
  }

  else
  {
    sub_258DE2184(v14, &qword_27F988720, &qword_258F0B830);
    return (*(v21 + 32))(a1, v7, v20);
  }

  return result;
}

void *ODDISegmentsCohortsPlugin.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v85 = a4;
  v5 = v4;
  v81 = a3;
  v91 = a1;
  v79 = *v4;
  v78 = type metadata accessor for ODDISegmentsCohortsConcluder(0);
  v7 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78, v8);
  v80 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_258F09B00();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v72 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_258F09A20();
  v71 = *(v74 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v74, v15);
  v70 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258F0A370();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v70 - v25;
  v27 = v18[2];
  v82 = OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_logger;
  v27(v4 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_logger, a2, v17);
  v27(v26, a2, v17);
  v28 = type metadata accessor for ODDISegmentsCohortsDataProvider();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v86 = v18;
  v32 = v18[4];
  v75 = v18 + 4;
  v73 = v32;
  v32(v31 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger, v26, v17);
  v33 = OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_dataProvider;
  v87 = v5;
  *(v5 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_dataProvider) = v31;
  v34 = sub_258F0A1F0();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v83 = v91;
  v37 = sub_258F0A1E0();
  v89 = v34;
  v90 = MEMORY[0x277D04548];
  v88 = v37;
  v91 = a2;
  v27(v23, a2, v17);
  v38 = sub_258F09C20();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v84;
  v42 = sub_258F09BE0();
  v84 = v41;
  if (v41)
  {
    v43 = v86[1];
    v43(v91, v17);

    v44 = v87;
    v43(v87 + v82, v17);
    v45 = *(v44 + v33);

    type metadata accessor for ODDISegmentsCohortsPlugin(0);
    v46 = *(*v44 + 48);
    v47 = *(*v44 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v42;
    v49 = v70;
    sub_258F0A090();
    v50 = v72;
    sub_258F09AC0();
    sub_258F09C00();
    (*(v76 + 8))(v50, v77);
    (*(v71 + 8))(v49, v74);
    v51 = v78;
    v52 = v80;
    sub_258E9CC9C(v80 + *(v78 + 20));
    v53 = v52 + *(v51 + 24);
    v54 = v91;
    v27(v53, v91, v17);
    type metadata accessor for ODDIDatabaseFactory();
    *v52 = swift_allocObject();
    v27(v26, v54, v17);

    v55 = sub_258E99D44(v52, v26, v48);
    v44 = v87;
    *(v87 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_calculator) = v55;
    v27(v26, v54, v17);
    v56 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v81, v85);
    v57 = type metadata accessor for ODDISegmentsCohortsSELFReporter();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    v60 = swift_allocObject();
    v73(v60 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger, v26, v17);
    *(v60 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_258F0CA20;
    *(v61 + 32) = v60;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A0A8, &qword_258F13A38);
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();

    v88 = sub_258F09BA0();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A0B0, qword_258F13A40);
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v68 = sub_258F09BC0();

    (v86[1])(v54, v17);
    *(v44 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_reporter) = v68;
  }

  return v44;
}

uint64_t sub_258E9D680(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E9D6A0, 0, 0);
}

uint64_t sub_258E9D6A0()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258E99894();
}

uint64_t sub_258E9D744(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E9D774, 0, 0);
}

uint64_t sub_258E9D774()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_reporter);
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

uint64_t sub_258E9D840(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E9D860, 0, 0);
}

uint64_t sub_258E9D860()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258E9A110(v3);
}

uint64_t ODDISegmentsCohortsPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_reporter);

  return v0;
}

uint64_t ODDISegmentsCohortsPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_reporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E9DA74(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E9DA98, 0, 0);
}

uint64_t sub_258E9DA98()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258E99894();
}

uint64_t sub_258E9DB3C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E9D860, 0, 0);
}

uint64_t sub_258E9DB60(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E9DB94, 0, 0);
}

uint64_t sub_258E9DB94()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_reporter);
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

uint64_t sub_258E9DCF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ODDISegmentsCohortsPlugin.loadData()(uint64_t a1)
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

uint64_t dispatch thunk of ODDISegmentsCohortsPlugin.report(_:)(uint64_t a1)
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

uint64_t dispatch thunk of ODDISegmentsCohortsPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_258E9E160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E9E1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258E9E2E0(uint64_t a1)
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

uint64_t dispatch thunk of ODDISegmentsCohortsReporter.report(_:)(uint64_t a1)
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

uint64_t ODDISegmentsCohortsSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService) = a2;
  return v7;
}

uint64_t ODDISegmentsCohortsSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService) = a2;
  return v2;
}

uint64_t sub_258E9E674(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(type metadata accessor for DeviceSegmentsCohorts(0) - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *(a1 + 16);
  v2[4] = v6;
  v2[5] = v7;

  return MEMORY[0x2822009F8](sub_258E9E738, 0, 0);
}

uint64_t sub_258E9E738()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
    *(v0 + 56) = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService;
    *(v0 + 64) = v4;
    *(v0 + 128) = *(v3 + 80);
    *(v0 + 72) = 0;
    if (*(v1 + 16))
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v0 + 32);
        sub_258E9906C(v1 + ((*(v0 + 128) + 32) & ~*(v0 + 128)) + *(*(v0 + 24) + 72) * v5, v6);
        v7 = sub_258E9ED88();
        *(v0 + 80) = v7;
        sub_258E9F5EC(v6, type metadata accessor for DeviceSegmentsCohorts);
        result = v7 >> 62 ? sub_258F0AA20() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 88) = result;
        v9 = *(v0 + 80);
        if (result)
        {
          break;
        }

        v10 = *(v0 + 72);
        v11 = *(v0 + 48);
        v12 = *(v0 + 80);

        if (v10 + 1 == v11)
        {
          goto LABEL_11;
        }

        v5 = *(v0 + 72) + 1;
        *(v0 + 72) = v5;
        v1 = *(v0 + 40);
        if (v5 >= *(v1 + 16))
        {
          goto LABEL_20;
        }
      }

      if ((v9 & 0xC000000000000001) == 0)
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v15 = *(v9 + 32);
        goto LABEL_17;
      }
    }

    else
    {
LABEL_20:
      __break(1u);
    }

    v15 = MEMORY[0x259C9E3B0](0);
LABEL_17:
    v16 = v15;
    *(v0 + 96) = v15;
    *(v0 + 104) = 1;
    v17 = *(v0 + 64);
    v18 = *(v0 + 16);
    v19 = *(v18 + *(v0 + 56));
    v20 = swift_task_alloc();
    *(v0 + 112) = v20;
    *v20 = v0;
    v20[1] = sub_258E9E95C;

    return sub_258EB5738(v16, v18 + v17);
  }

LABEL_11:
  v13 = *(v0 + 32);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_258E9E95C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);

    v5 = sub_258E9EC88;
  }

  else
  {
    v5 = sub_258E9EA78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_258E9EA78()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (v1 != v2)
  {
    v5 = *(v0 + 104);
LABEL_10:
    v12 = *(v0 + 80);
    if ((v12 & 0xC000000000000001) != 0)
    {
LABEL_21:
      v13 = MEMORY[0x259C9E3B0](v5);
    }

    else
    {
      if (v5 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v13 = *(v12 + 8 * v5 + 32);
    }

    v14 = v13;
    *(v0 + 96) = v13;
    *(v0 + 104) = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      v15 = *(v0 + 64);
      v16 = *(v0 + 16);
      v17 = *(v16 + *(v0 + 56));
      v18 = swift_task_alloc();
      *(v0 + 112) = v18;
      *v18 = v0;
      v18[1] = sub_258E9E95C;

      sub_258EB5738(v14, v16 + v15);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  while (1)
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 48);

    if (v4 + 1 == v5)
    {
      break;
    }

    v6 = *(v0 + 72) + 1;
    *(v0 + 72) = v6;
    v7 = *(v0 + 40);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(v0 + 32);
    sub_258E9906C(v7 + ((*(v0 + 128) + 32) & ~*(v0 + 128)) + *(*(v0 + 24) + 72) * v6, v8);
    v9 = sub_258E9ED88();
    *(v0 + 80) = v9;
    sub_258E9F5EC(v8, type metadata accessor for DeviceSegmentsCohorts);
    if (v9 >> 62)
    {
      v11 = sub_258F0AA20();
      *(v0 + 88) = v11;
      if (v11)
      {
LABEL_8:
        v5 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 88) = v10;
      if (v10)
      {
        goto LABEL_8;
      }
    }
  }

  v19 = *(v0 + 32);

  v20 = *(v0 + 8);

  v20();
}

uint64_t sub_258E9EC88()
{
  v1 = v0[2] + v0[8];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[4];

  swift_willThrow();

  v8 = v0[1];
  v9 = v0[15];

  return v8();
}

uint64_t sub_258E9ED88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v57 - v5;
  v7 = type metadata accessor for EventMetadata(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x277D84F90];
  sub_258E9F57C(v1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_258E4B7F0(v6);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_258E3F8CC(v6, v12);
    v14 = type metadata accessor for DeviceSegmentsCohorts(0);
    v15 = *&v1[*(v14 + 20)];
    if (v15 && (v16 = [objc_allocWithZone(MEMORY[0x277D593E0]) init]) != 0)
    {
      v17 = v16;
      v58 = v14;
      v59 = v1;
      v61 = 0;
      v60 = v12;
      v18 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(3);
      v57 = v17;
      [v17 setEventMetadata_];

      v19 = [objc_allocWithZone(MEMORY[0x277D592E8]) init];
      v20 = *(v15 + 16);
      if (v20)
      {
        v21 = (v15 + 44);
        do
        {
          v22 = *(v21 - 3);
          v23 = *(v21 - 8);
          v24 = *(v21 - 1);
          v25 = *v21;
          v26 = [objc_allocWithZone(MEMORY[0x277D592E0]) init];
          if (v26)
          {
            if (v23)
            {
              v27 = 0;
            }

            else
            {
              v27 = v22;
            }

            v28 = v26;
            [v26 setSegmentType_];
            if (v25)
            {
              v29 = 0;
            }

            else
            {
              v29 = v24;
            }

            [v28 setSegmentDataAvailabilityState_];
            v30 = v19;
            [v30 addSegments_];
          }

          v21 += 32;
          --v20;
        }

        while (v20);
      }

      v31 = v57;
      [v57 setDeviceSegmentsReported_];
      v32 = v31;
      MEMORY[0x259C9DF50]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_258F0A6D0();
      }

      sub_258F0A700();

      v13 = v63;
      v1 = v59;
      v12 = v60;
      v14 = v58;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v33 = *&v1[*(v14 + 24)];
    if (v33 && (v34 = [objc_allocWithZone(MEMORY[0x277D593E0]) init]) != 0)
    {
      v35 = v34;
      v62 = 0;
      v60 = v12;
      v36 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(3);
      v59 = v35;
      [v35 setEventMetadata_];

      v37 = [objc_allocWithZone(MEMORY[0x277D592D8]) init];
      v38 = *(v33 + 16);
      if (v38)
      {
        v39 = (v33 + 48);
        do
        {
          v40 = *(v39 - 4);
          v41 = *(v39 - 12);
          v42 = *(v39 - 2);
          v43 = *(v39 - 4);
          v44 = *v39;
          v45 = objc_allocWithZone(MEMORY[0x277D592D0]);
          v46 = v44;
          v47 = [v45 0x2798CCB78];
          if (v47)
          {
            if (v41)
            {
              v48 = 0;
            }

            else
            {
              v48 = v40;
            }

            v49 = v47;
            [v47 setCohortType_];
            if (v43)
            {
              v50 = 0;
            }

            else
            {
              v50 = v42;
            }

            [v49 setCohortDataAvailabilityState_];
            [v49 setCohortInterval_];
            v51 = v37;
            [v51 addCohorts_];

            v46 = v49;
          }

          v39 += 3;

          --v38;
        }

        while (v38);
      }

      v52 = v59;
      [v59 setDeviceCohortsReported_];
      v53 = v52;
      MEMORY[0x259C9DF50]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_258F0A6D0();
      }

      sub_258F0A700();

      sub_258E9F5EC(v60, type metadata accessor for EventMetadata);
      return v63;
    }

    else
    {
      sub_258E9F5EC(v12, type metadata accessor for EventMetadata);
    }
  }

  return v13;
}

uint64_t sub_258E9F2A4()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService);
}

uint64_t ODDISegmentsCohortsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService);

  return v0;
}

uint64_t ODDISegmentsCohortsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ODDISegmentsCohortsSELFReporter()
{
  result = qword_27F98A110;
  if (!qword_27F98A110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E9F4B4()
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

uint64_t sub_258E9F57C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E9F5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of ReportingService.reportEvent(event:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_258DE1DC4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ReportingService.reportODSampleEvent(event:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_258DEE37C;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_258E9F8B0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x75426D6574737973;
      break;
    case 4:
      result = 0x7954656369766564;
      break;
    case 5:
      result = 0x436D6172676F7270;
      break;
    case 6:
      result = 0x75706E4969726973;
      break;
    case 8:
      result = 0x5474736575716572;
      break;
    case 9:
      result = 0x6E656E6F706D6F63;
      break;
    case 10:
      result = 0x65646F4D6C6ELL;
      break;
    case 11:
      result = 0x65646F4D727361;
      break;
    case 12:
      result = 0x65757165526D756ELL;
      break;
    case 13:
      result = 0x6552414E526D756ELL;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x7465537465737361;
      break;
    case 16:
      result = 0xD00000000000002CLL;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258E9FB04(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_258E9F8B0(*a1);
  v5 = v4;
  if (v3 == sub_258E9F8B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258F0AD80();
  }

  return v8 & 1;
}

uint64_t sub_258E9FB8C()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258E9F8B0(v1);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E9FBF0()
{
  sub_258E9F8B0(*v0);
  sub_258F0A5B0();
}

uint64_t sub_258E9FC44()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258E9F8B0(v1);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E9FCA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_258EA35F0();
  *a2 = result;
  return result;
}

unint64_t sub_258E9FCD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_258E9F8B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_258E9FD1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258EA35F0();
  *a1 = result;
  return result;
}

uint64_t sub_258E9FD60(uint64_t a1)
{
  v2 = sub_258EA2328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E9FD9C(uint64_t a1)
{
  v2 = sub_258EA2328();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_258E9FDD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_258F0A370();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if ((sub_258F0A070() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = *(v4 + 16);
  v10 = MEMORY[0x277D84F90];
  v9(v8, a2, v3);
  while (1)
  {

    sub_258E9FF90(v11, v8, v16);
    memcpy(v17, v16, 0x110uLL);
    if (sub_258E34E74(v17) != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_258DE2AC4(0, *(v10 + 2) + 1, 1, v10);
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_258DE2AC4((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      memcpy(&v10[272 * v13 + 32], v17, 0x110uLL);
    }

    if ((sub_258F0A070() & 1) == 0)
    {
      break;
    }

    v9(v8, a2, v3);
  }

  return v10;
}

void *sub_258E9FF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v227 = a3;
  v252 = *MEMORY[0x277D85DE8];
  v5 = sub_258F0A540();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258F0A060();
  v230 = a2;
  if (v11)
  {
    v12 = v11;
    v189 = v10;

    v13 = sub_258F0A350();
    v14 = sub_258F0A810();

    v15 = os_log_type_enabled(v13, v14);
    v226 = a1;
    v228 = v6;
    *&v229 = v5;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v251[0] = v17;
      *v16 = 136315138;
      v18 = sub_258F0A420();
      v20 = sub_258DE3018(v18, v19, v251);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_258DD8000, v13, v14, "row data: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x259C9EF40](v17, -1, -1);
      MEMORY[0x259C9EF40](v16, -1, -1);
    }

    v21 = *(v12 + 16);
    v233 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_258E14BA8(0, v21, 0);
    v22 = v12;
    v23 = v233;
    sub_258EA3354(v22, v22, v249);
    v231 = v22;
    if (v21)
    {

      while (1)
      {
        sub_258EA33C0(v251);
        if (!*(&v251[1] + 1))
        {
          break;
        }

        sub_258DE4090(&v251[2] + 8, v239);
        if (swift_dynamicCast())
        {

          *&v239[0] = 0;
          *(&v239[0] + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v239[0] = 0;
          *(&v239[0] + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v24 = v239[0];
        *&v239[0] = 34;
        *(&v239[0] + 1) = 0xE100000000000000;
        v25 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v25);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v24, *(&v24 + 1));

        v26 = v239[0];
        sub_258DE2184(v251, &qword_27F988DA0, &unk_258F0FFA0);
        v233 = v23;
        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_258E14BA8((v27 > 1), v28 + 1, 1);
          v23 = v233;
        }

        *(v23 + 16) = v28 + 1;
        *(v23 + 16 * v28 + 32) = v26;
        if (!--v21)
        {
          goto LABEL_18;
        }
      }

LABEL_253:
      __break(1u);
    }

LABEL_18:
    sub_258EA33C0(&v241);
    while (*(&v242 + 1))
    {
      v247[0] = v243;
      v247[1] = v244;
      v248 = v245;
      v246[0] = v241;
      v246[1] = v242;
      sub_258DE4090(v247 + 8, v251);
      if (swift_dynamicCast())
      {

        *&v251[0] = 0;
        *(&v251[0] + 1) = 0xE000000000000000;
        MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        sub_258F0AB70();
        MEMORY[0x259C9DEB0](34, 0xE100000000000000);
      }

      else
      {
        *&v251[0] = 0;
        *(&v251[0] + 1) = 0xE000000000000000;
        sub_258F0AB70();
      }

      v34 = v251[0];
      *&v251[0] = 34;
      *(&v251[0] + 1) = 0xE100000000000000;
      v35 = sub_258F0AA50();
      MEMORY[0x259C9DEB0](v35);

      MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
      MEMORY[0x259C9DEB0](v34, *(&v34 + 1));

      v36 = v251[0];
      sub_258DE2184(v246, &qword_27F988DA0, &unk_258F0FFA0);
      v233 = v23;
      v38 = *(v23 + 16);
      v37 = *(v23 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_258E14BA8((v37 > 1), v38 + 1, 1);
        v23 = v233;
      }

      *(v23 + 16) = v38 + 1;
      *(v23 + 16 * v38 + 32) = v36;
      sub_258EA33C0(&v241);
    }

    v239[2] = v249[2];
    v239[3] = v249[3];
    v239[4] = v249[4];
    v240 = v250;
    v239[0] = v249[0];
    v239[1] = v249[1];
    sub_258DE2184(v239, &qword_27F988D98, &qword_258F14070);
    sub_258DE2184(&v241, &qword_27F988DA8, &unk_258F0D740);
    *&v251[0] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
    sub_258E0F5E4(&qword_27F988DB8, &qword_27F988DB0, &unk_258F13940);
    v39 = sub_258F0A490();
    v41 = v40;

    v42 = sub_258F0A350();
    v43 = sub_258F0A810();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v251[0] = v45;
      *v44 = 136315138;
      v46 = sub_258DE3018(v39, v41, v251);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_258DD8000, v42, v43, "Request no asset raw query results: \n{%s}", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x259C9EF40](v45, -1, -1);
      MEMORY[0x259C9EF40](v44, -1, -1);
    }

    else
    {
    }

    strcpy(&v237, "eventDate");
    WORD5(v237) = 0;
    HIDWORD(v237) = -385875968;
    sub_258F0AA80();
    v47 = v231;
    if (v231[2] && (v48 = sub_258E2EA2C(v251), (v49 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v48, &v237);
      sub_258E0F590(v251);
      v50 = swift_dynamicCast();
      if (v50)
      {
        v51 = v235;
      }

      else
      {
        v51 = 0;
      }

      if (v50)
      {
        v52 = *(&v235 + 1);
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      sub_258E0F590(v251);
      v51 = 0;
      v52 = 0;
    }

    *&v237 = 0xD000000000000015;
    *(&v237 + 1) = 0x8000000258F18C70;
    sub_258F0AA80();
    if (*(v47 + 16) && (v53 = sub_258E2EA2C(v251), (v54 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v53, &v237);
      sub_258E0F590(v251);
      v55 = swift_dynamicCast();
      v56 = v235;
      if (!v55)
      {
        v56 = 0;
      }

      v224 = v56;
      v57 = v55 ^ 1;
    }

    else
    {
      sub_258E0F590(v251);
      v224 = 0;
      v57 = 1;
    }

    v225 = v57;
    *&v237 = 0xD000000000000013;
    *(&v237 + 1) = 0x8000000258F18690;
    sub_258F0AA80();
    if (*(v47 + 16) && (v58 = sub_258E2EA2C(v251), (v59 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v58, &v237);
      sub_258E0F590(v251);
      v60 = swift_dynamicCast();
      if (v60)
      {
        v61 = v235;
      }

      else
      {
        v61 = 0;
      }

      if (v60)
      {
        v62 = *(&v235 + 1);
      }

      else
      {
        v62 = 0;
      }

      v222 = v62;
      v223 = v61;
    }

    else
    {
      sub_258E0F590(v251);
      v222 = 0;
      v223 = 0;
    }

    strcpy(&v237, "systemBuild");
    HIDWORD(v237) = -352321536;
    sub_258F0AA80();
    if (*(v47 + 16) && (v63 = sub_258E2EA2C(v251), (v64 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v63, &v237);
      sub_258E0F590(v251);
      v65 = swift_dynamicCast();
      if (v65)
      {
        v66 = v235;
      }

      else
      {
        v66 = 0;
      }

      if (v65)
      {
        v67 = *(&v235 + 1);
      }

      else
      {
        v67 = 0;
      }

      v220 = v67;
      v221 = v66;
    }

    else
    {
      sub_258E0F590(v251);
      v220 = 0;
      v221 = 0;
    }

    strcpy(&v237, "deviceType");
    BYTE11(v237) = 0;
    HIDWORD(v237) = -369098752;
    sub_258F0AA80();
    if (*(v47 + 16) && (v68 = sub_258E2EA2C(v251), (v69 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v68, &v237);
      sub_258E0F590(v251);
      v70 = swift_dynamicCast();
      if (v70)
      {
        v71 = v235;
      }

      else
      {
        v71 = 0;
      }

      if (v70)
      {
        v72 = *(&v235 + 1);
      }

      else
      {
        v72 = 0;
      }

      v218 = v72;
      v219 = v71;
    }

    else
    {
      sub_258E0F590(v251);
      v218 = 0;
      v219 = 0;
    }

    strcpy(&v237, "programCode");
    HIDWORD(v237) = -352321536;
    sub_258F0AA80();
    if (*(v47 + 16) && (v73 = sub_258E2EA2C(v251), (v74 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v73, &v237);
      sub_258E0F590(v251);
      v75 = swift_dynamicCast();
      if (v75)
      {
        v76 = v235;
      }

      else
      {
        v76 = 0;
      }

      if (v75)
      {
        v77 = *(&v235 + 1);
      }

      else
      {
        v77 = 0;
      }

      v216 = v77;
      v217 = v76;
    }

    else
    {
      sub_258E0F590(v251);
      v216 = 0;
      v217 = 0;
    }

    *&v237 = 0x75706E4969726973;
    *(&v237 + 1) = 0xEF656C61636F4C74;
    sub_258F0AA80();
    if (*(v47 + 16) && (v78 = sub_258E2EA2C(v251), (v79 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v78, &v237);
      sub_258E0F590(v251);
      v80 = swift_dynamicCast();
      if (v80)
      {
        v81 = v235;
      }

      else
      {
        v81 = 0;
      }

      if (v80)
      {
        v82 = *(&v235 + 1);
      }

      else
      {
        v82 = 0;
      }

      v214 = v82;
      v215 = v81;
    }

    else
    {
      sub_258E0F590(v251);
      v214 = 0;
      v215 = 0;
    }

    *&v237 = 0xD000000000000015;
    *(&v237 + 1) = 0x8000000258F186C0;
    sub_258F0AA80();
    if (*(v47 + 16) && (v83 = sub_258E2EA2C(v251), (v84 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v83, &v237);
      sub_258E0F590(v251);
      v85 = swift_dynamicCast();
      if (v85)
      {
        v86 = v235;
      }

      else
      {
        v86 = 0;
      }

      if (v85)
      {
        v87 = *(&v235 + 1);
      }

      else
      {
        v87 = 0;
      }

      v212 = v87;
      v213 = v86;
    }

    else
    {
      sub_258E0F590(v251);
      v212 = 0;
      v213 = 0;
    }

    strcpy(&v237, "requestType");
    HIDWORD(v237) = -352321536;
    sub_258F0AA80();
    if (*(v47 + 16))
    {
      v88 = sub_258E2EA2C(v251);
      v89 = v230;
      if (v90)
      {
        sub_258DE4090(*(v47 + 56) + 32 * v88, &v237);
      }

      else
      {
        v237 = 0u;
        v238 = 0u;
      }
    }

    else
    {
      v237 = 0u;
      v238 = 0u;
      v89 = v230;
    }

    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v91 = swift_dynamicCast();
      if (v91)
      {
        v92 = v235;
      }

      else
      {
        v92 = 0;
      }

      if (v91)
      {
        v93 = *(&v235 + 1);
      }

      else
      {
        v93 = 0;
      }

      v210 = v93;
      v211 = v92;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v210 = 0;
      v211 = 0;
    }

    strcpy(&v237, "componentName");
    HIWORD(v237) = -4864;
    sub_258F0AA80();
    if (*(v47 + 16) && (v94 = sub_258E2EA2C(v251), (v95 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v94, &v237);
    }

    else
    {
      v237 = 0u;
      v238 = 0u;
    }

    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v96 = swift_dynamicCast();
      if (v96)
      {
        v97 = v235;
      }

      else
      {
        v97 = 0;
      }

      if (v96)
      {
        v98 = *(&v235 + 1);
      }

      else
      {
        v98 = 0;
      }

      v208 = v98;
      v209 = v97;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v208 = 0;
      v209 = 0;
    }

    *&v237 = 0x65646F4D6C6ELL;
    *(&v237 + 1) = 0xE600000000000000;
    sub_258F0AA80();
    if (*(v47 + 16) && (v99 = sub_258E2EA2C(v251), (v100 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v99, &v237);
    }

    else
    {
      v237 = 0u;
      v238 = 0u;
    }

    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v101 = swift_dynamicCast();
      if (v101)
      {
        v102 = v235;
      }

      else
      {
        v102 = 0;
      }

      if (v101)
      {
        v103 = *(&v235 + 1);
      }

      else
      {
        v103 = 0;
      }

      v206 = v103;
      v207 = v102;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v206 = 0;
      v207 = 0;
    }

    strcpy(&v237, "asrMode");
    *(&v237 + 1) = 0xE700000000000000;
    sub_258F0AA80();
    if (*(v47 + 16) && (v104 = sub_258E2EA2C(v251), (v105 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v104, &v237);
    }

    else
    {
      v237 = 0u;
      v238 = 0u;
    }

    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v106 = swift_dynamicCast();
      if (v106)
      {
        v107 = v235;
      }

      else
      {
        v107 = 0;
      }

      if (v106)
      {
        v108 = *(&v235 + 1);
      }

      else
      {
        v108 = 0;
      }

      v204 = v108;
      v205 = v107;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v204 = 0;
      v205 = 0;
    }

    strcpy(&v237, "numRequests");
    HIDWORD(v237) = -352321536;
    sub_258F0AA80();
    if (*(v47 + 16) && (v109 = sub_258E2EA2C(v251), (v110 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v109, &v237);
    }

    else
    {
      v237 = 0u;
      v238 = 0u;
    }

    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v111 = swift_dynamicCast();
      v112 = v235;
      if (!v111)
      {
        v112 = 0;
      }

      v203 = v112;
      v113 = v111 ^ 1;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v203 = 0;
      v113 = 1;
    }

    v202 = v113;
    strcpy(&v237, "numRNARequests");
    HIBYTE(v237) = -18;
    sub_258F0AA80();
    if (*(v47 + 16) && (v114 = sub_258E2EA2C(v251), (v115 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v114, &v237);
    }

    else
    {
      v237 = 0u;
      v238 = 0u;
    }

    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v116 = swift_dynamicCast();
      v117 = v235;
      if (!v116)
      {
        v117 = 0;
      }

      v201 = v117;
      v118 = v116 ^ 1;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v201 = 0;
      v118 = 1;
    }

    v200 = v118;
    *&v237 = 0xD000000000000016;
    *(&v237 + 1) = 0x8000000258F18CD0;
    sub_258F0AA80();
    if (*(v47 + 16) && (v119 = sub_258E2EA2C(v251), (v120 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v119, &v237);
    }

    else
    {
      v237 = 0u;
      v238 = 0u;
    }

    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v121 = swift_dynamicCast();
      v122 = v235;
      if (!v121)
      {
        v122 = 0;
      }

      v199 = v122;
      v123 = v121 ^ 1;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v199 = 0;
      v123 = 1;
    }

    v198 = v123;
    strcpy(&v237, "assetSetName");
    BYTE13(v237) = 0;
    HIWORD(v237) = -5120;
    sub_258F0AA80();
    if (*(v47 + 16) && (v124 = sub_258E2EA2C(v251), (v125 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v124, &v237);
    }

    else
    {
      v237 = 0u;
      v238 = 0u;
    }

    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v126 = swift_dynamicCast();
      if (v126)
      {
        v127 = v235;
      }

      else
      {
        v127 = 0;
      }

      if (v126)
      {
        v128 = *(&v235 + 1);
      }

      else
      {
        v128 = 0;
      }

      v196 = v128;
      v197 = v127;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v196 = 0;
      v197 = 0;
    }

    *&v237 = 0xD000000000000013;
    *(&v237 + 1) = 0x8000000258F18A80;
    sub_258F0AA80();
    if (*(v47 + 16) && (v129 = sub_258E2EA2C(v251), (v130 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v129, &v237);
    }

    else
    {
      v237 = 0u;
      v238 = 0u;
    }

    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v131 = swift_dynamicCast();
      if (v131)
      {
        v132 = v235;
      }

      else
      {
        v132 = 0;
      }

      if (v131)
      {
        v133 = *(&v235 + 1);
      }

      else
      {
        v133 = 0;
      }

      v194 = v133;
      v195 = v132;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v194 = 0;
      v195 = 0;
    }

    *&v237 = 0xD00000000000002CLL;
    *(&v237 + 1) = 0x8000000258F18A50;
    sub_258F0AA80();
    sub_258E262F8(v251, v47, &v237);
    sub_258E0F590(v251);
    if (*(&v238 + 1))
    {
      v134 = swift_dynamicCast();
      v135 = v235;
      if (!v134)
      {
        v135 = 0;
      }

      v193 = v135;
      v136 = v134 ^ 1;
    }

    else
    {
      sub_258DE2184(&v237, &qword_27F989868, &unk_258F12D70);
      v193 = 0;
      v136 = 1;
    }

    v192 = v136;
    *&v235 = 0xD000000000000012;
    *(&v235 + 1) = 0x8000000258F18CF0;
    sub_258F0AA80();
    sub_258E262F8(v251, v47, &v235);

    sub_258E0F590(v251);
    if (!v236)
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v146 = sub_258F0A350();
      v147 = sub_258F0A810();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = v52;
        v149 = v89;
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_258DD8000, v146, v147, "assetFailureReason is nil or empty", v150, 2u);
        MEMORY[0x259C9EF40](v150, -1, -1);

        v151 = sub_258F0A370();
        v152 = v149;
        v52 = v148;
        (*(*(v151 - 8) + 8))(v152, v151);
      }

      else
      {

        v164 = sub_258F0A370();
        (*(*(v164 - 8) + 8))(v89, v164);
      }

      v165 = MEMORY[0x277D84F90];
LABEL_250:
      *&v251[1] = v224;
      *&v251[2] = v223;
      *(&v251[2] + 1) = v222;
      *&v251[3] = v221;
      *(&v251[3] + 1) = v220;
      *&v251[4] = v219;
      *(&v251[4] + 1) = v218;
      LOBYTE(v237) = v202;
      LOBYTE(v235) = v200;
      LOBYTE(v234[0]) = v198;
      *&v251[0] = v51;
      *(&v251[0] + 1) = v52;
      BYTE8(v251[1]) = v225;
      *&v251[5] = v217;
      *(&v251[5] + 1) = v216;
      *&v251[6] = v215;
      *(&v251[6] + 1) = v214;
      *&v251[7] = v213;
      *(&v251[7] + 1) = v212;
      *&v251[8] = v211;
      *(&v251[8] + 1) = v210;
      *&v251[9] = v209;
      *(&v251[9] + 1) = v208;
      *&v251[10] = v205;
      *(&v251[10] + 1) = v204;
      *&v251[11] = v207;
      *(&v251[11] + 1) = v206;
      LODWORD(v251[12]) = v203;
      BYTE4(v251[12]) = v202;
      DWORD2(v251[12]) = v201;
      BYTE12(v251[12]) = v200;
      LODWORD(v251[13]) = v199;
      BYTE4(v251[13]) = v198;
      *(&v251[13] + 1) = v197;
      *&v251[14] = v196;
      *(&v251[14] + 1) = v193;
      LOBYTE(v251[15]) = v192;
      *(&v251[15] + 1) = v195;
      *&v251[16] = v194;
      *(&v251[16] + 1) = v165;
      nullsub_1(v251);
      goto LABEL_251;
    }

    sub_258DEB8B8(&v235, &v237);
    sub_258DE4090(&v237, v251);
    v137 = sub_258F0A350();
    v138 = sub_258F0A810();
    v139 = os_log_type_enabled(v137, v138);
    v190 = v52;
    v191 = v51;
    if (v139)
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *&v235 = v141;
      *v140 = 136315138;
      __swift_project_boxed_opaque_existential_1(v251, *(&v251[1] + 1));
      swift_getDynamicType();
      v142 = sub_258F0AF10();
      v144 = v143;
      __swift_destroy_boxed_opaque_existential_1Tm(v251);
      v145 = sub_258DE3018(v142, v144, &v235);

      *(v140 + 4) = v145;
      _os_log_impl(&dword_258DD8000, v137, v138, "assetFailureReason type: %s", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      MEMORY[0x259C9EF40](v141, -1, -1);
      MEMORY[0x259C9EF40](v140, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v251);
    }

    sub_258DE4090(&v237, v251);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A168, &qword_258F14078);
    v153 = swift_dynamicCast();
    v154 = v230;
    if (v153)
    {
      v155 = v235;
      v234[0] = v235;
    }

    else
    {
      sub_258DE4090(&v237, v234);
      if (!swift_dynamicCast() || (v156 = v189, sub_258F0A530(), v157 = sub_258F0A500(), v159 = v158, , (*(v228 + 8))(v156, v229), v159 >> 60 == 15))
      {
        v157 = 0;
        v159 = 0xC000000000000000;
      }

      v160 = objc_opt_self();
      v161 = sub_258F098F0();
      sub_258DEB978(v157, v159);
      v234[0] = 0;
      v162 = [v160 JSONObjectWithData:v161 options:0 error:v234];

      v163 = v234[0];
      if (!v162)
      {
        v166 = v163;
        v167 = sub_258F09890();

        swift_willThrow();
        v165 = MEMORY[0x277D84F90];
        goto LABEL_240;
      }

      sub_258F0A9C0();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v155 = v234[0];
      }

      else
      {
        v155 = 0;
        v234[0] = 0;
      }

      v154 = v230;
    }

    v165 = MEMORY[0x277D84F90];
    if (!v155)
    {
LABEL_242:
      v173 = v165[2];
      swift_bridgeObjectRetain_n();
      if (v173)
      {
        v175 = 0;
        v176 = v165 + 5;
        *&v174 = 134218498;
        v229 = v174;
        v231 = v165;
        v228 = v173;
        while (v175 < v165[2])
        {
          v178 = *(v176 - 1);
          v177 = *v176;

          v179 = sub_258F0A350();
          v180 = sub_258F0A810();
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            *&v251[0] = v182;
            *v181 = v229;
            *(v181 + 4) = v175;
            *(v181 + 12) = 2080;
            v183 = sub_258DE3018(v178, v177, v251);

            *(v181 + 14) = v183;
            *(v181 + 22) = 2080;
            *(v181 + 24) = sub_258DE3018(0x676E69727453, 0xE600000000000000, v251);
            _os_log_impl(&dword_258DD8000, v179, v180, "assetFailureReason[%ld] = %s (type: %s)", v181, 0x20u);
            swift_arrayDestroy();
            v184 = v182;
            v173 = v228;
            v154 = v230;
            MEMORY[0x259C9EF40](v184, -1, -1);
            MEMORY[0x259C9EF40](v181, -1, -1);
          }

          else
          {
          }

          ++v175;
          v176 += 2;
          v165 = v231;
          if (v173 == v175)
          {
            goto LABEL_249;
          }
        }

        __break(1u);
        goto LABEL_253;
      }

LABEL_249:

      v185 = sub_258F0A370();
      (*(*(v185 - 8) + 8))(v154, v185);
      __swift_destroy_boxed_opaque_existential_1Tm(&v237);

      v52 = v190;
      v51 = v191;
      goto LABEL_250;
    }

    v168 = v155[2];
    if (!v168)
    {

      goto LABEL_242;
    }

    v232 = MEMORY[0x277D84F90];
    sub_258E14BA8(0, v168, 0);
    v165 = v232;
    v231 = v155;
    v169 = (v155 + 4);
    do
    {
      sub_258DE4090(v169, v251);
      *&v235 = 0;
      *(&v235 + 1) = 0xE000000000000000;
      sub_258F0AB70();
      v170 = v235;
      __swift_destroy_boxed_opaque_existential_1Tm(v251);
      v232 = v165;
      v172 = v165[2];
      v171 = v165[3];
      if (v172 >= v171 >> 1)
      {
        sub_258E14BA8((v171 > 1), v172 + 1, 1);
        v165 = v232;
      }

      v165[2] = v172 + 1;
      *&v165[2 * v172 + 4] = v170;
      v169 += 32;
      --v168;
    }

    while (v168);

LABEL_240:
    v154 = v230;
    goto LABEL_242;
  }

  v29 = sub_258F0A350();
  v30 = sub_258F0A840();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_258DD8000, v29, v30, "failed to get row", v31, 2u);
    v32 = v31;
    a2 = v230;
    MEMORY[0x259C9EF40](v32, -1, -1);
  }

  v33 = sub_258F0A370();
  (*(*(v33 - 8) + 8))(a2, v33);
  sub_258EA3644(v251);
LABEL_251:
  result = memcpy(v227, v251, 0x110uLL);
  v187 = *MEMORY[0x277D85DE8];
  return result;
}