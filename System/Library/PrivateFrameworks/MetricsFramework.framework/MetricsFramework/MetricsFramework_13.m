uint64_t VTEnrollmentCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_analyticsEventSubmitter));
  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_biomeResultsFactory);

  return v0;
}

uint64_t VTEnrollmentCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_analyticsEventSubmitter));
  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_biomeResultsFactory);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EFB578(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EF9514(a1);
}

uint64_t sub_258EFB614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EFB684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258EFB6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258EFB74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VTEnrollmentData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258EFB7B0()
{
  result = qword_27F98AA60;
  if (!qword_27F98AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AA60);
  }

  return result;
}

uint64_t sub_258EFB804(uint64_t a1)
{
  result = sub_258EFB88C(&qword_27F98AA68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EFB848(uint64_t a1)
{
  result = sub_258EFB88C(&qword_27F98AA70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EFB88C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VTEnrollmentCalculator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258EFB8D0()
{
  result = qword_27F98AA78;
  if (!qword_27F98AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AA78);
  }

  return result;
}

void sub_258EFB93C()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_258DE3B74();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_258F09B00();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of VTEnrollmentCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t SpeakerIdManifestPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_258EFC3B0(a1, a2, a3, a4);

  return v11;
}

uint64_t SpeakerIdManifestPlugin.init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v5 = sub_258EFC3B0(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_258EFBC70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EFBC90, 0, 0);
}

uint64_t sub_258EFBC90()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258EE4F5C();
}

uint64_t sub_258EFBD34(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[4] = v1;
  v2[5] = v3;
  v2[6] = v4;
  return MEMORY[0x2822009F8](sub_258EFBD5C, 0, 0);
}

uint64_t sub_258EFBD5C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_reporter);
  v2 = v0[6];
  v0[2] = v0[5];
  v0[3] = v2;
  v3 = *(*v1 + 80);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_258E44B28;

  return v7(v0 + 2);
}

uint64_t sub_258EFBE98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EFBEB8, 0, 0);
}

uint64_t sub_258EFBEB8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258EE0B30(v3);
}

uint64_t SpeakerIdManifestPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_reporter);

  return v0;
}

uint64_t SpeakerIdManifestPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_reporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EFC0B8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EFC0DC, 0, 0);
}

uint64_t sub_258EFC0DC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258EE4F5C();
}

uint64_t sub_258EFC180(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EFC1A4, 0, 0);
}

uint64_t sub_258EFC1A4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258EE0B30(v3);
}

uint64_t sub_258EFC248(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[4] = *v1;
  v2[5] = v3;
  v2[6] = v4;
  return MEMORY[0x2822009F8](sub_258EFC274, 0, 0);
}

uint64_t sub_258EFC274()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_reporter);
  v2 = v0[6];
  v0[2] = v0[5];
  v0[3] = v2;
  v3 = *(*v1 + 80);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_258E45774;

  return v7(v0 + 2);
}

uint64_t sub_258EFC3B0(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v59 = a4;
  v57 = a1;
  v58 = a3;
  v6 = sub_258F0A370();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v52 - v13;
  v16 = v15;
  v55 = v4;
  v56 = v15;
  v17 = *(v15 + 16);
  v18 = (v4 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_logger);
  v19 = v4;
  v20 = a2;
  v17(v18, a2, v6);
  v54 = a2;
  v17(v14, a2, v6);
  v21 = type metadata accessor for SpeakerIdManifestDataProvider();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = *(v16 + 32);
  v52 = v16 + 32;
  v61 = v25;
  v25(v24 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger, v14, v6);
  *(v19 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_dataProvider) = v24;
  v53 = v17;
  v17(v14, v20, v6);
  v26 = v11;
  v17(v11, v14, v6);
  v27 = type metadata accessor for SamplingUtils();
  v28 = type metadata accessor for CAAnalyticsEventSubmitter();
  v29 = swift_allocObject();
  v60[3] = v28;
  v60[4] = &off_286A2C648;
  v60[0] = v29;
  v30 = type metadata accessor for SpeakerIdManifestCalculator();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v60, v28);
  v35 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v34, v34);
  v37 = (&v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v40 = (v33 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_analyticsEventSubmitter);
  v40[3] = v28;
  v40[4] = &off_286A2C648;
  *v40 = v39;
  v41 = v57;
  sub_258F09AE0();
  *(v33 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults) = v41;
  v61(v33 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger, v26, v6);
  v42 = (v33 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils);
  *v42 = v27;
  v42[1] = &protocol witness table for SamplingUtils;
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  v43 = *(v56 + 8);
  v43(v14, v6);
  v44 = v55;
  *(v55 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_calculator) = v33;
  v45 = v54;
  v53(v14, v54, v6);
  v46 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v58, v59);
  v43(v45, v6);
  v47 = type metadata accessor for SpeakerIdManifestSELFReporter();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  v61(v50 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger, v14, v6);
  *(v50 + 16) = v46;
  result = v44;
  *(v44 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_reporter) = v50;
  return result;
}

uint64_t type metadata accessor for SpeakerIdManifestPlugin()
{
  result = qword_27F98AAC8;
  if (!qword_27F98AAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EFC8A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpeakerIdManifestPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdManifestPlugin.loadData()(uint64_t a1)
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

uint64_t dispatch thunk of SpeakerIdManifestPlugin.report(_:)(uint64_t a1)
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

uint64_t dispatch thunk of SpeakerIdManifestPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_258EFCCA4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriDigestMetricsCalculator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t SpeakerIdSamplingPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  SpeakerIdSamplingPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

uint64_t SpeakerIdSamplingPlugin.init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v122 = a4;
  v116 = a3;
  v123 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v111 = &v105 - v8;
  v110 = sub_258F09B00();
  v109 = *(v110 - 8);
  v9 = *(v109 + 64);
  MEMORY[0x28223BE20](v110, v10);
  v107 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_258F09A20();
  v106 = *(v108 - 8);
  v12 = *(v106 + 64);
  MEMORY[0x28223BE20](v108, v13);
  v105 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258F09A70();
  v124 = *(v15 - 8);
  v16 = v124[8];
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_258F0A370();
  v21 = *(v20 - 1);
  v22 = v21[8];
  v24 = MEMORY[0x28223BE20](v20, v23);
  v120 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v105 - v27;
  v29 = v21[2];
  v29(&v105 - v27, a2, v20);
  v30 = type metadata accessor for SpeakerIdSamplingDataProvider();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v125 = v21;
  v34 = v21[4];
  v114 = v21 + 4;
  v115 = v28;
  v113 = v34;
  v34(v33 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger, v28, v20);
  v35 = v130;
  *(v130 + 16) = v33;
  v118 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_logger;
  v36 = v35;
  v29(v35 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_logger, a2, v20);
  sub_258F09A60();
  v37 = v124[4];
  v117 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_oddId;
  v119 = v15;
  v37(v36 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_oddId, v19, v15);
  v38 = sub_258F0A1F0();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v123;
  v42 = sub_258F0A1E0();
  v128 = v38;
  v129 = MEMORY[0x277D04548];
  v126 = a2;
  v127 = v42;
  v123 = v20;
  v112 = v29;
  v29(v120, a2, v20);
  v43 = sub_258F09C20();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = v121;
  v47 = sub_258F09BE0();
  v121 = v46;
  if (v46)
  {
    v48 = v125[1];
    v49 = v123;
    v48(v126, v123);

    v50 = v130;
    v51 = *(v130 + 16);

    v48(v50 + v118, v49);
    (v124[1])(v50 + v117, v119);
    type metadata accessor for SpeakerIdSamplingPlugin();
    v52 = *(*v50 + 48);
    v53 = *(*v50 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v54 = v47;
    v55 = v105;
    sub_258F0A090();
    v56 = v107;
    sub_258F09AE0();
    sub_258F09C10();
    (*(v109 + 8))(v56, v110);
    (*(v106 + 8))(v55, v108);
    v57 = v115;
    v58 = v123;
    v59 = v112;
    v112(v115, v126, v123);
    v60 = v41;
    v124 = v60;
    v61 = v54;
    v120 = v54;

    v62 = v111;
    sub_258EFCCA4(v111);
    v119 = type metadata accessor for SamplingUtils();
    v63 = type metadata accessor for SpeakerIdSamplingCalculator();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    v66 = swift_allocObject();
    *(v66 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults) = v60;
    v59(v66 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger, v57, v58);
    sub_258DECF90(v62, v66 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL);
    v67 = (v66 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService);
    v67[3] = v43;
    v67[4] = &off_286A2FA30;
    *v67 = v61;
    v68 = (v66 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils);
    *v68 = v119;
    v68[1] = &protocol witness table for SamplingUtils;
    v69 = type metadata accessor for CAAnalyticsEventSubmitter();
    v70 = swift_allocObject();
    v71 = (v66 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter);
    v71[3] = v69;
    v71[4] = &off_286A2C648;
    *v71 = v70;
    sub_258F09F30();
    v72 = sub_258F09F20();
    sub_258DED000(v62);
    v73 = v125[1];
    ++v125;
    v119 = v73;
    v74 = v58;
    v73(v57, v58);
    *(v66 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bugReporter) = v72;
    type metadata accessor for BiomeResultsWrapperFactory();
    *(v66 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_biomeResultsFactory) = swift_allocObject();
    v50 = v130;
    *(v130 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_calculator) = v66;
    v75 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v76 = [v75 OnDeviceAnalytics];
    swift_unknownObjectRelease();
    v77 = [v76 SpeakerIdSampling];
    swift_unknownObjectRelease();
    v78 = [v77 source];

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AAF0, &unk_258F177F8);
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    v82 = sub_258F09B80();
    v83 = v126;
    v59(v57, v126, v58);
    v84 = type metadata accessor for SpeakerIdSamplingBiomeReporter();
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    v87 = swift_allocObject();
    v118 = v87;
    *(v87 + 16) = v82;
    v88 = v113;
    v113(v87 + OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger, v57, v58);
    v59(v57, v83, v58);

    v89 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v116, v122);
    v90 = type metadata accessor for SpeakerIdSamplingSELFReporter();
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    v93 = swift_allocObject();
    v94 = (v93 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService);
    v94[3] = type metadata accessor for SELFReportingService();
    v94[4] = &protocol witness table for SELFReportingService;
    *v94 = v89;
    v88(v93 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger, v57, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_258F0F6D0;
    v96 = v118;
    *(v95 + 32) = v93;
    *(v95 + 40) = v96;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AAF8, &qword_258F17808);
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    swift_allocObject();

    v127 = sub_258F09BA0();
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB00, qword_258F17810);
    v101 = *(v100 + 48);
    v102 = *(v100 + 52);
    swift_allocObject();
    v103 = sub_258F09BC0();

    v119(v126, v74);
    *(v50 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_reporter) = v103;
  }

  return v50;
}

uint64_t type metadata accessor for SpeakerIdSamplingPlugin()
{
  result = qword_27F98AB28;
  if (!qword_27F98AB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EFD890(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EFD8B0, 0, 0);
}

uint64_t sub_258EFD8B0()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258EF160C();
}

uint64_t sub_258EFD94C(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EFD97C, 0, 0);
}

uint64_t sub_258EFD97C()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_reporter);
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

uint64_t sub_258EFDA48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EFDA68, 0, 0);
}

uint64_t sub_258EFDA68()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258EE7B98(v3);
}

uint64_t SpeakerIdSamplingPlugin.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_oddId;
  v5 = sub_258F09A70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_calculator);

  v7 = *(v0 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_reporter);

  return v0;
}

uint64_t SpeakerIdSamplingPlugin.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_oddId;
  v5 = sub_258F09A70();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_calculator];

  v7 = *&v0[OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_reporter];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EFDCD8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EFDCFC, 0, 0);
}

uint64_t sub_258EFDCFC()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258EF160C();
}

uint64_t sub_258EFDD98(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EFDDBC, 0, 0);
}

uint64_t sub_258EFDDBC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258EE7B98(v3);
}

uint64_t sub_258EFDE60(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EFDE94, 0, 0);
}

uint64_t sub_258EFDE94()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_reporter);
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

uint64_t sub_258EFDFFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpeakerIdSamplingPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258EFE048()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_258F09A70();
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

uint64_t dispatch thunk of SpeakerIdSamplingPlugin.loadData()(uint64_t a1)
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

uint64_t dispatch thunk of SpeakerIdSamplingPlugin.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of SpeakerIdSamplingPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258EFE4E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E656DLL;
  v3 = 0xD000000000000011;
  v4 = 0x6C6C6F726E457476;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000019;
    }

    else
    {
      v6 = 0x6C6C6F726E457476;
    }

    if (v5 == 2)
    {
      v7 = 0x8000000258F18F10;
    }

    else
    {
      v7 = 0xEC000000746E656DLL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5)
    {
      v7 = 0x8000000258F18EF0;
    }

    else
    {
      v7 = 0x8000000258F18ED0;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000019;
    v2 = 0x8000000258F18F10;
  }

  v8 = 0x8000000258F18EF0;
  if (!a2)
  {
    v3 = 0xD000000000000012;
    v8 = 0x8000000258F18ED0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258F0AD80();
  }

  return v11 & 1;
}

uint64_t sub_258EFE608(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00737574617453;
  v3 = 0xD000000000000012;
  v4 = 0x7465737341524941;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000019;
    }

    else
    {
      v6 = 0x7465737341524941;
    }

    if (v5 == 2)
    {
      v7 = 0x8000000258F18980;
    }

    else
    {
      v7 = 0xEE00737574617453;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (v5)
    {
      v7 = 0x8000000258F18960;
    }

    else
    {
      v7 = 0x8000000258F18940;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000019;
    v2 = 0x8000000258F18980;
  }

  v8 = 0x8000000258F18960;
  if (!a2)
  {
    v3 = 0xD000000000000016;
    v8 = 0x8000000258F18940;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258F0AD80();
  }

  return v11 & 1;
}

MetricsFramework::SpeakerIdWorkerError_optional __swiftcall SpeakerIdWorkerError.init(rawValue:)(Swift::String rawValue)
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

unint64_t SpeakerIdWorkerError.rawValue.getter()
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

uint64_t sub_258EFE9AC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SpeakerIdWorkerError.rawValue.getter();
  v4 = v3;
  if (v2 == SpeakerIdWorkerError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_258F0AD80();
  }

  return v7 & 1;
}

uint64_t sub_258EFEA48()
{
  v1 = *v0;
  sub_258F0AE40();
  SpeakerIdWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258EFEAB0()
{
  v2 = *v0;
  SpeakerIdWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258EFEB14()
{
  v1 = *v0;
  sub_258F0AE40();
  SpeakerIdWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258EFEB84@<X0>(unint64_t *a1@<X8>)
{
  result = SpeakerIdWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MetricsFramework::SpeakerIdSamplingWorker::Subtask_optional __swiftcall SpeakerIdSamplingWorker.Subtask.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0ABE0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SpeakerIdSamplingWorker.Subtask.rawValue.getter()
{
  v1 = 0x6C6C6F726E457476;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_258EFEDD4()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258EFEEA8()
{
  *v0;
  *v0;
  sub_258F0A5B0();
}

uint64_t sub_258EFEF68()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

void sub_258EFF044(unint64_t *a1@<X8>)
{
  v2 = 0xEC000000746E656DLL;
  v3 = 0x6C6C6F726E457476;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000019;
    v2 = 0x8000000258F18F10;
  }

  v4 = 0x8000000258F18ED0;
  if (*v1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v1)
  {
    v4 = 0x8000000258F18EF0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t SpeakerIdSamplingWorker.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_258F09AE0();
  v4 = *(type metadata accessor for SpeakerIdSamplingWorker() + 20);
  v5 = sub_258F0A370();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t type metadata accessor for SpeakerIdSamplingWorker()
{
  result = qword_27F98AB70;
  if (!qword_27F98AB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpeakerIdSamplingWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](sub_258EFF268, 0, 0);
}

uint64_t sub_258EFF268()
{
  v105 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(type metadata accessor for SpeakerIdSamplingWorker() + 20);
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
  sub_258F00DD4(v26, v28, v29, v30);

  v39 = sub_258DFBE24(&unk_286A29C70);
  sub_258DE2184(&unk_286A29C90, &qword_27F988B08, &unk_258F0CD90);
  if (v25)
  {
    v41 = *(v0 + 72);
    v40 = *(v0 + 80);
    v102 = v25;
    sub_258F09E80();
    v104[0] = sub_258F09E90();
    v104[1] = v42;

    MEMORY[0x259C9DEB0](46, 0xE100000000000000);

    MEMORY[0x259C9DEB0](0x6C6C6F726E457476, 0xEC000000746E656DLL);

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
    v101 = (*(*v41 + 112) + **(*v41 + 112));
    v52 = *(*(*v41 + 112) + 4);
    v53 = swift_task_alloc();
    *(v0 + 200) = v53;
    *v53 = v0;
    v53[1] = sub_258EFFE8C;
    v54 = *(v0 + 72);

    return v101(v51, v102, v48, v2 + v3, 0xD000000000000029, 0x8000000258F20760);
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

  sub_258EB875C();
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
LABEL_34:
      v103 = v38;
      goto LABEL_35;
    }

    if (MEMORY[0x277D81748] && v36 == *MEMORY[0x277D81748])
    {

      v37 = *(v0 + 16);
      v38 = 4;
      goto LABEL_34;
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
      goto LABEL_34;
    }

    if (MEMORY[0x277D04538] && v61 == *MEMORY[0x277D04538])
    {

      v37 = *(v0 + 24);
      v38 = 7;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04540] && v61 == *MEMORY[0x277D04540])
    {

      v37 = *(v0 + 24);
      v38 = 8;
      goto LABEL_34;
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
        goto LABEL_35;
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

        goto LABEL_36;
      }

      v38 = 1;
    }

    goto LABEL_34;
  }

  v103 = *(v0 + 220);
  v37 = *(v0 + 32);
LABEL_35:

  v73 = *(v0 + 144);
  v72 = *(v0 + 152);
  v74 = *(v0 + 128);
  v75 = *(v0 + 136);
  v76 = *(v0 + 120);
  v77 = *(v0 + 216);
  v78 = *(v0 + 64);
  v79 = *(v74 + 64) + 15;
  v80 = swift_task_alloc();
  sub_258EB875C();
  v81 = swift_allocError();
  *v82 = v103;

  (*(v74 + 8))(v78, v76);
  *v80 = v81;
  v75(v80, v77, v76);
  (*(v74 + 32))(v78, v80, v76);

LABEL_36:
  v83 = *(v0 + 112);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_258EFFE8C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_258F00710;
  }

  else
  {
    v3 = sub_258EFFFA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EFFFA0()
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
  sub_258F00DD4(v8, v10, v11, v12);
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
    sub_258EB875C();
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

uint64_t sub_258F00710()
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
    sub_258EB875C();
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

uint64_t sub_258F00DD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    v9 = *(type metadata accessor for SpeakerIdSamplingWorker() + 20);

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

uint64_t sub_258F00F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258F01058, 0, 0);
}

uint64_t sub_258F01058()
{
  v1 = *(v0 + 48);
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingWorker: Call executeSpeakerIdSelection", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 32);

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  (*(v6 + 16))(v5, v10, v8);
  v14 = type metadata accessor for SpeakerIdSelectionPlugin();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_258F031C0(v11, v5, v9, v7);

  *(v0 + 16) = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB38, qword_258F179B8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_258F09E40();
  *(v0 + 104) = v22;
  if (v22)
  {
    v23 = *(v0 + 40);
    v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v25 = swift_task_alloc();
    *(v0 + 112) = v25;
    v26 = sub_258F09E00();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v25, v23, v26);
    (*(v27 + 56))(v25, 0, 1, v26);
    v28 = *(MEMORY[0x277D81750] + 4);
    v29 = swift_task_alloc();
    *(v0 + 120) = v29;
    *v29 = v0;
    v29[1] = sub_258F01438;

    return MEMORY[0x2821ED078](v13, v25);
  }

  else
  {
    v30 = *(v0 + 24);
    v31 = sub_258F09E50();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v13, 1, 1, v31);
    (*(v32 + 104))(v30, *MEMORY[0x277D81758], v31);
    v34 = *(v0 + 88);
    v33 = *(v0 + 96);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_258F01438()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 104);
  sub_258DE2184(*(v2 + 112), &qword_27F988B20, &unk_258F0CDB0);

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

uint64_t sub_258F015A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258F0166C, 0, 0);
}

uint64_t sub_258F0166C()
{
  v1 = v0[6];
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingWorker: Call executeSpeakerIdSampling", v4, 2u);
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
  v14 = type metadata accessor for SpeakerIdSamplingPlugin();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v0[2] = SpeakerIdSamplingPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB40, &unk_258F179D0);
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
    v28[1] = sub_258F01438;

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

uint64_t sub_258F01A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258F01B08, 0, 0);
}

uint64_t sub_258F01B08()
{
  v1 = *(v0 + 48);
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingWorker: Call executeSpeakerIdManifest", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 32);

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  (*(v6 + 16))(v5, v10, v8);
  v14 = type metadata accessor for SpeakerIdManifestPlugin();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_258EFC3B0(v11, v5, v9, v7);

  *(v0 + 16) = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB48, &unk_258F179E0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_258F09E40();
  *(v0 + 104) = v22;
  if (v22)
  {
    v23 = *(v0 + 40);
    v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v25 = swift_task_alloc();
    *(v0 + 112) = v25;
    v26 = sub_258F09E00();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v25, v23, v26);
    (*(v27 + 56))(v25, 0, 1, v26);
    v28 = *(MEMORY[0x277D81750] + 4);
    v29 = swift_task_alloc();
    *(v0 + 120) = v29;
    *v29 = v0;
    v29[1] = sub_258E4ADA8;

    return MEMORY[0x2821ED078](v13, v25);
  }

  else
  {
    v30 = *(v0 + 24);
    v31 = sub_258F09E50();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v13, 1, 1, v31);
    (*(v32 + 104))(v30, *MEMORY[0x277D81758], v31);
    v34 = *(v0 + 88);
    v33 = *(v0 + 96);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_258F01EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258F01FB0, 0, 0);
}

uint64_t sub_258F01FB0()
{
  v1 = v0[6];
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingWorker: Call executeVTEnrollment", v4, 2u);
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
  v14 = type metadata accessor for VTEnrollmentPlugin();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v0[2] = VTEnrollmentPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB50, &qword_258F179F0);
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
    v28[1] = sub_258F01438;

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

unint64_t sub_258F023A0()
{
  result = qword_27F98AB58;
  if (!qword_27F98AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AB58);
  }

  return result;
}

unint64_t sub_258F023FC()
{
  result = qword_27F98AB60;
  if (!qword_27F98AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AB60);
  }

  return result;
}

unint64_t sub_258F02454()
{
  result = qword_27F98AB68;
  if (!qword_27F98AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AB68);
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSamplingTaskExecutor.executeSpeakerIdSelection(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 88);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258DEE37C;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SpeakerIdSamplingTaskExecutor.executeSpeakerIdSampling(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 96);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258DEE37C;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SpeakerIdSamplingTaskExecutor.executeSpeakerIdManifest(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 104);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258DE1DC4;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SpeakerIdSamplingTaskExecutor.executeVTEnrollment(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 112);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258DEE37C;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t SpeakerIdSelectionPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_258F031C0(a1, a2, a3, a4);

  return v11;
}

uint64_t SpeakerIdSelectionPlugin.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = sub_258F031C0(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_258F02B70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258F02B90, 0, 0);
}

uint64_t sub_258F02B90()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258EF7DD8();
}

uint64_t sub_258F02C34(_OWORD *a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_258F02C5C, 0, 0);
}

uint64_t sub_258F02C5C()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_reporter);
  *(v0 + 16) = *(v0 + 40);
  v2 = *(MEMORY[0x277D04430] + 4);
  v5 = (*MEMORY[0x277D04430] + MEMORY[0x277D04430]);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_258E44B28;

  return v5(v0 + 16);
}

uint64_t sub_258F02D20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258F02D40, 0, 0);
}

uint64_t sub_258F02D40()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258EF56A4(v3);
}

uint64_t SpeakerIdSelectionPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_reporter);

  return v0;
}

uint64_t SpeakerIdSelectionPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_reporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258F02F40(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258F02F64, 0, 0);
}

uint64_t sub_258F02F64()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258EF7DD8();
}

uint64_t sub_258F03008(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258F0302C, 0, 0);
}

uint64_t sub_258F0302C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258EF56A4(v3);
}

uint64_t sub_258F030D0(_OWORD *a1)
{
  *(v2 + 32) = *v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_258F030FC, 0, 0);
}

uint64_t sub_258F030FC()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_reporter);
  *(v0 + 16) = *(v0 + 40);
  v2 = *(MEMORY[0x277D04430] + 4);
  v5 = (*MEMORY[0x277D04430] + MEMORY[0x277D04430]);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_258E45774;

  return v5(v0 + 16);
}

uint64_t sub_258F031C0(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a4;
  v72 = a3;
  v70 = a1;
  v6 = sub_258F0A370();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v66 - v13;
  v16 = v15;
  v77 = v15;
  v17 = *(v15 + 16);
  v75 = v4;
  v17(v4 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_logger, a2, v6);
  v71 = a2;
  v17(v14, a2, v6);
  v18 = type metadata accessor for SpeakerIdSelectionDataProvider();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = *(v16 + 32);
  v74 = v16 + 32;
  v68 = v22;
  v22(v21 + OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger, v14, v6);
  *(v4 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_dataProvider) = v21;
  v69 = v17;
  v17(v14, a2, v6);
  v67 = type metadata accessor for SamplingUtils();
  v23 = v11;
  v17(v11, v14, v6);
  v24 = type metadata accessor for CAAnalyticsEventSubmitter();
  v25 = swift_allocObject();
  v76[3] = v24;
  v76[4] = &off_286A2C648;
  v76[0] = v25;
  v26 = type metadata accessor for SpeakerIdSelectionCalculator();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v76, v24);
  v31 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v30, v30);
  v33 = (&v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v33;
  v36 = (v29 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_analyticsEventSubmitter);
  v36[3] = v24;
  v36[4] = &off_286A2C648;
  *v36 = v35;
  v37 = v70;
  sub_258F09AE0();
  v38 = v68;
  v68(v29 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger, v23, v6);
  *(v29 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults) = v37;
  v39 = (v29 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils);
  *v39 = v67;
  v39[1] = &protocol witness table for SamplingUtils;
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  v40 = *(v77 + 8);
  v77 += 8;
  v70 = v40;
  (v40)(v14, v6);
  *(v75 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_calculator) = v29;
  v41 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v42 = [v41 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v43 = [v42 SpeakerIdSampling];
  swift_unknownObjectRelease();
  v44 = [v43 source];

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AAF0, &unk_258F177F8);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_258F09B80();
  v49 = v71;
  v50 = v69;
  v69(v14, v71, v6);
  v51 = type metadata accessor for SpeakerIdSelectionBiomeReporter();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  *(v54 + 16) = v48;
  v38(v54 + OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger, v14, v6);
  v50(v14, v49, v6);

  v55 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v72, v73);
  v56 = type metadata accessor for SpeakerIdSelectionSELFReporter();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v38(v59 + OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger, v14, v6);
  *(v59 + 16) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_258F0F6D0;
  *(v60 + 32) = v59;
  *(v60 + 40) = v54;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98ABC8, &qword_258F17E48);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v64 = sub_258F09BA0();

  (v70)(v49, v6);
  result = v75;
  *(v75 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_reporter) = v64;
  return result;
}

uint64_t type metadata accessor for SpeakerIdSelectionPlugin()
{
  result = qword_27F98ABB8;
  if (!qword_27F98ABB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258F0385C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpeakerIdSelectionPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSelectionPlugin.loadData()(uint64_t a1)
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

uint64_t dispatch thunk of SpeakerIdSelectionPlugin.report(_:)(uint64_t a1)
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

uint64_t dispatch thunk of SpeakerIdSelectionPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_258F03C60@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VTEnrollmentCalculator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t VTEnrollmentPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  VTEnrollmentPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

uint64_t VTEnrollmentPlugin.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v115 = a4;
  v109 = a3;
  v124 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v107 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v108 = &v97 - v12;
  v103 = sub_258F09B00();
  v102 = *(v103 - 8);
  v13 = v102[8];
  MEMORY[0x28223BE20](v103, v14);
  v100 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_258F09A20();
  v99 = *(v101 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x28223BE20](v101, v17);
  v98 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_258F0A370();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v23 = MEMORY[0x28223BE20](v19, v22);
  v104 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v97 - v30;
  v33 = v20 + 2;
  v32 = v20[2];
  v111 = OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_logger;
  v32(v4 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_logger, a2, v19);
  v32(v31, a2, v19);
  v34 = type metadata accessor for VTEnrollmentDataProvider();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v116 = v20;
  v38 = v20[4];
  v113 = v31;
  v106 = v20 + 4;
  v105 = v38;
  v38(v37 + OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger, v31, v19);
  v117 = v4;
  v110 = OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_dataProvider;
  *(v4 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_dataProvider) = v37;
  v39 = sub_258F0A1F0();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v124;
  v43 = sub_258F0A1E0();
  v122 = v39;
  v123 = MEMORY[0x277D04548];
  v121[0] = v43;
  v124 = a2;
  v44 = a2;
  v45 = v19;
  v112 = v32;
  v32(v28, v44, v19);
  v46 = sub_258F09C20();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = v114;
  v50 = sub_258F09BE0();
  if (v49)
  {
    v51 = v116[1];
    v51(v124, v45);

    v52 = v117;
    v51(&v111[v117], v45);
    v53 = *(v52 + v110);

    type metadata accessor for VTEnrollmentPlugin();
    v54 = *(*v52 + 48);
    v55 = *(*v52 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v56 = v50;
    v57 = v98;
    sub_258F0A090();
    v58 = v100;
    sub_258F09AC0();
    v114 = v56;
    sub_258F09C10();
    (v102[1])(v58, v103);
    (*(v99 + 8))(v57, v101);
    v59 = v112;
    v60 = v113;
    v61 = v19;
    v112(v113, v124, v19);
    v97 = v33;
    v62 = v59;
    v111 = v42;

    v63 = v108;
    sub_258F03C60(v108);
    v64 = v104;
    v62(v104, v60, v19);
    v65 = v63;
    v66 = v107;
    sub_258DECF90(v63, v107);
    type metadata accessor for BiomeResultsWrapperFactory();
    v103 = swift_allocObject();
    v67 = type metadata accessor for CAAnalyticsEventSubmitter();
    v68 = swift_allocObject();
    v122 = v67;
    v123 = &off_286A2C648;
    v121[0] = v68;
    v69 = type metadata accessor for VTEnrollmentCalculator();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    v72 = swift_allocObject();
    v73 = __swift_mutable_project_boxed_opaque_existential_1(v121, v67);
    v102 = &v97;
    v74 = *(*(v67 - 8) + 64);
    MEMORY[0x28223BE20](v73, v73);
    v110 = 0;
    v76 = (&v97 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76);
    v78 = *v76;
    v119 = v67;
    v120 = &off_286A2C648;
    *&v118 = v78;
    sub_258F09AC0();
    v79 = v112;
    v112(v72 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_logger, v64, v61);
    sub_258DECF90(v66, v72 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL);
    v80 = (v72 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_bookmarkService);
    v80[3] = v46;
    v80[4] = &off_286A2FA30;
    *v80 = v114;
    sub_258DED000(v66);
    v81 = v116[1];
    v81(v64, v61);
    sub_258DED000(v65);
    v82 = v113;
    v81(v113, v61);
    *(v72 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_biomeResultsFactory) = v103;
    sub_258DEE384(&v118, v72 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_analyticsEventSubmitter);
    *(v72 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_defaults) = v111;
    __swift_destroy_boxed_opaque_existential_1Tm(v121);
    v52 = v117;
    *(v117 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_calculator) = v72;
    v79(v82, v124, v61);
    v83 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v109, v115);
    v84 = type metadata accessor for VTEnrollmentSELFReporter();
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    v87 = swift_allocObject();
    v105(v87 + OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger, v82, v61);
    *(v87 + 16) = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_258F0CA20;
    *(v88 + 32) = v87;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98ABE8, &qword_258F17E50);
    v90 = *(v89 + 48);
    v91 = *(v89 + 52);
    swift_allocObject();

    v121[0] = sub_258F09BA0();
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98ABF0, qword_258F17E58);
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_allocObject();
    v95 = sub_258F09BC0();

    v81(v124, v61);
    *(v52 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_reporter) = v95;
  }

  return v52;
}

uint64_t sub_258F04730(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258F04750, 0, 0);
}

uint64_t sub_258F04750()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258F06A98();
}

uint64_t sub_258F047F4(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258F04824, 0, 0);
}

uint64_t sub_258F04824()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_reporter);
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

uint64_t sub_258F048F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258F04910, 0, 0);
}

uint64_t sub_258F04910()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258EF9514(v3);
}

uint64_t VTEnrollmentPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_reporter);

  return v0;
}

uint64_t VTEnrollmentPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_reporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258F04B10(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258F04B34, 0, 0);
}

uint64_t sub_258F04B34()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258F06A98();
}

uint64_t sub_258F04BD8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258F04BFC, 0, 0);
}

uint64_t sub_258F04BFC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_calculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258EF9514(v3);
}

uint64_t sub_258F04CA0(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258F04CD4, 0, 0);
}

uint64_t sub_258F04CD4()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_reporter);
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

uint64_t type metadata accessor for VTEnrollmentPlugin()
{
  result = qword_27F98AC18;
  if (!qword_27F98AC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258F04E88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VTEnrollmentPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of VTEnrollmentPlugin.loadData()(uint64_t a1)
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

uint64_t dispatch thunk of VTEnrollmentPlugin.report(_:)(uint64_t a1)
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

uint64_t dispatch thunk of VTEnrollmentPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
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

uint64_t FunnelEventMetadata.hash(into:)()
{
  v1 = v0;
  v2 = sub_258F09A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v27 - v15;
  sub_258DE20C0(v1, &v27 - v15, &qword_27F988730, &unk_258F0F8E0);
  v28 = *(v3 + 48);
  if (v28(v16, 1, v2) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v3 + 32))(v7, v16, v2);
    sub_258F0AE60();
    sub_258F062C0(&qword_27F988CC8, MEMORY[0x277CC95F0]);
    sub_258F0A450();
    (*(v3 + 8))(v7, v2);
  }

  v17 = type metadata accessor for FunnelEventMetadata(0);
  v18 = v1 + v17[5];
  if (*(v18 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v19 = *v18;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v19);
  }

  v20 = *(v1 + v17[6]);
  sub_258F0AE60();
  if (v20)
  {
    v21 = v20;
    sub_258F0A8F0();
  }

  sub_258DE20C0(v1 + v17[7], v13, &qword_27F988730, &unk_258F0F8E0);
  if (v28(v13, 1, v2) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v3 + 32))(v7, v13, v2);
    sub_258F0AE60();
    sub_258F062C0(&qword_27F988CC8, MEMORY[0x277CC95F0]);
    sub_258F0A450();
    (*(v3 + 8))(v7, v2);
  }

  v22 = v1 + v17[8];
  if (*(v22 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v23 = *v22;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v23);
  }

  v24 = v1 + v17[9];
  if (*(v24 + 8) == 1)
  {
    return sub_258F0AE60();
  }

  v26 = *v24;
  sub_258F0AE60();
  return MEMORY[0x259C9E740](v26);
}

uint64_t FunnelEventMetadata.hashValue.getter()
{
  sub_258F0AE40();
  FunnelEventMetadata.hash(into:)();
  return sub_258F0AE90();
}

uint64_t sub_258F056C4()
{
  sub_258F0AE40();
  FunnelEventMetadata.hash(into:)();
  return sub_258F0AE90();
}

uint64_t sub_258F05708()
{
  sub_258F0AE40();
  FunnelEventMetadata.hash(into:)();
  return sub_258F0AE90();
}

uint64_t sub_258F05748@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata;
  swift_beginAccess();
  sub_258DE20C0(v1 + v3, a1, &qword_27F98AA58, &unk_258F174B0);
  v4 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType + 8);
  v34 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType);
  v32 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_programCode + 4);
  v33 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_programCode);
  v5 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild + 8);
  v31 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild);
  v29 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_viewInterface + 4);
  v30 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_viewInterface);
  v6 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_siriInputLocale);
  v27 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentMode + 4);
  v28 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentMode);
  v25 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_voiceTriggerType + 4);
  v26 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_voiceTriggerType);
  v7 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcome);
  v8 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcome + 4);
  LODWORD(v3) = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_pageNumberCompleted);
  v9 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_pageNumberCompleted + 4);
  v10 = v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_trainingOutcome;
  v11 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_trainingOutcome);
  v12 = *(v10 + 4);
  v13 = type metadata accessor for VTEnrollmentData(0);
  v14 = (a1 + v13[5]);
  *v14 = v34;
  v14[1] = v4;
  v15 = a1 + v13[6];
  *v15 = v33;
  *(v15 + 4) = v32;
  v16 = (a1 + v13[7]);
  *v16 = v31;
  v16[1] = v5;
  v17 = a1 + v13[8];
  *v17 = v30;
  *(v17 + 4) = v29;
  *(a1 + v13[9]) = v6;
  v18 = a1 + v13[10];
  *v18 = v28;
  *(v18 + 4) = v27;
  v19 = a1 + v13[11];
  *v19 = v26;
  *(v19 + 4) = v25;
  v20 = a1 + v13[12];
  *v20 = v7;
  *(v20 + 4) = v8;
  v21 = a1 + v13[13];
  *v21 = v3;
  *(v21 + 4) = v9;
  v22 = a1 + v13[14];
  *v22 = v11;
  *(v22 + 4) = v12;
  v23 = v6;
}

uint64_t VTEnrollmentDataBuilderImpl.deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata, &qword_27F98AA58, &unk_258F174B0);
  v1 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild + 8);

  return v0;
}

uint64_t VTEnrollmentDataBuilderImpl.__deallocating_deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata, &qword_27F98AA58, &unk_258F174B0);
  v1 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258F05A78()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata;
  v2 = type metadata accessor for FunnelEventMetadata(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_programCode;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcomeprogramCode;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = (v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild);
  *v6 = 0;
  v6[1] = 0;
  v7 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_viewInterface;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_siriInputLocale) = 0;
  v8 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentMode;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_voiceTriggerType;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcome;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_pageNumberCompleted;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_trainingOutcome;
  *v12 = 0;
  *(v12 + 4) = 1;
  return v0;
}

BOOL _s16MetricsFramework19FunnelEventMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE8, &qword_258F114B8);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v70 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v68 - v24;
  v26 = *(v23 + 48);
  v73 = a1;
  sub_258DE20C0(a1, &v68 - v24, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(a2, &v25[v26], &qword_27F988730, &unk_258F0F8E0);
  v72 = v5;
  v27 = *(v5 + 48);
  if (v27(v25, 1, v4) == 1)
  {
    if (v27(&v25[v26], 1, v4) == 1)
    {
      sub_258DE2184(v25, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_10;
    }

LABEL_6:
    v28 = v25;
LABEL_7:
    sub_258DE2184(v28, &qword_27F989AE8, &qword_258F114B8);
    return 0;
  }

  sub_258DE20C0(v25, v16, &qword_27F988730, &unk_258F0F8E0);
  if (v27(&v25[v26], 1, v4) == 1)
  {
    (*(v72 + 8))(v16, v4);
    goto LABEL_6;
  }

  v68 = v27;
  v31 = v71;
  v30 = v72;
  (*(v72 + 32))(v71, &v25[v26], v4);
  sub_258F062C0(&qword_27F988CD0, MEMORY[0x277CC95F0]);
  v32 = sub_258F0A4B0();
  v33 = *(v30 + 8);
  v33(v31, v4);
  v33(v16, v4);
  v27 = v68;
  sub_258DE2184(v25, &qword_27F988730, &unk_258F0F8E0);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v34 = type metadata accessor for FunnelEventMetadata(0);
  v35 = v34[5];
  v36 = (v73 + v35);
  v37 = *(v73 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v34[6];
  v41 = *(v73 + v40);
  v42 = *(a2 + v40);
  if (v41)
  {
    if (!v42)
    {
      return 0;
    }

    v43 = v34;
    sub_258DEB8C8(0, &qword_280CC49E0, 0x277D593F8);
    v44 = v42;
    v45 = v41;
    v46 = sub_258F0A8E0();

    v34 = v43;
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v47 = v34;
  v48 = a2;
  v49 = v34[7];
  v50 = *(v17 + 48);
  v51 = v70;
  sub_258DE20C0(v73 + v49, v70, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v48 + v49, v51 + v50, &qword_27F988730, &unk_258F0F8E0);
  if (v27(v51, 1, v4) == 1)
  {
    if (v27((v51 + v50), 1, v4) == 1)
    {
      sub_258DE2184(v51, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v52 = v69;
  sub_258DE20C0(v51, v69, &qword_27F988730, &unk_258F0F8E0);
  if (v27((v51 + v50), 1, v4) == 1)
  {
    (*(v72 + 8))(v52, v4);
LABEL_26:
    v28 = v51;
    goto LABEL_7;
  }

  v53 = v72;
  v54 = v51 + v50;
  v55 = v71;
  (*(v72 + 32))(v71, v54, v4);
  sub_258F062C0(&qword_27F988CD0, MEMORY[0x277CC95F0]);
  v56 = sub_258F0A4B0();
  v57 = *(v53 + 8);
  v57(v55, v4);
  v57(v52, v4);
  sub_258DE2184(v51, &qword_27F988730, &unk_258F0F8E0);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v58 = v47[8];
  v59 = (v73 + v58);
  v60 = *(v73 + v58 + 8);
  v61 = (v48 + v58);
  v62 = *(v48 + v58 + 8);
  if (v60)
  {
    if (!v62)
    {
      return 0;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  v63 = v47[9];
  v64 = (v73 + v63);
  v65 = *(v73 + v63 + 8);
  v66 = (v48 + v63);
  v67 = *(v48 + v63 + 8);
  if ((v65 & 1) == 0)
  {
    if (*v64 != *v66)
    {
      v67 = 1;
    }

    return (v67 & 1) == 0;
  }

  return (v67 & 1) != 0;
}

uint64_t sub_258F062C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258F064AC()
{
  sub_258F06838(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D58);
    if (v1 <= 0x3F)
    {
      sub_258E56A6C(319, &qword_27F989AA0, &qword_280CC49E0, 0x277D593F8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258F065F4()
{
  sub_258F06838(319, &qword_27F98AC70, type metadata accessor for FunnelEventMetadata);
  if (v0 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D40);
    if (v1 <= 0x3F)
    {
      sub_258F06838(319, &qword_27F9896C0, type metadata accessor for SISchemaProgramCode);
      if (v2 <= 0x3F)
      {
        sub_258F06838(319, &qword_27F989690, type metadata accessor for SISchemaAssistantViewMode);
        if (v3 <= 0x3F)
        {
          sub_258E56A6C(319, &qword_27F9896B0, &qword_27F9896B8, 0x277D5A900);
          if (v4 <= 0x3F)
          {
            sub_258F06838(319, &qword_27F98AC78, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode);
            if (v5 <= 0x3F)
            {
              sub_258F06838(319, &qword_27F98AC80, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType);
              if (v6 <= 0x3F)
              {
                sub_258F06838(319, &qword_27F98AC88, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome);
                if (v7 <= 0x3F)
                {
                  sub_258E0F074(319, &qword_27F989718);
                  if (v8 <= 0x3F)
                  {
                    sub_258F06838(319, &qword_27F98AC90, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_258F06838(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258F0A920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258F068B4()
{
  sub_258F06838(319, &qword_27F98AC70, type metadata accessor for FunnelEventMetadata);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t VTEnrollmentDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t VTEnrollmentDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258F06AB8()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: VTEnrollmentDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t VTEnrollmentDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t VTEnrollmentDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258F06C94()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258F06A98();
}

uint64_t type metadata accessor for VTEnrollmentDataProvider()
{
  result = qword_27F98ACF0;
  if (!qword_27F98ACF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of VTEnrollmentDataProvider.loadData()(uint64_t a1)
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

uint64_t VTEnrollmentSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + 16) = a2;
  return v7;
}

uint64_t sub_258F07018(uint64_t a1)
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

uint64_t VTEnrollmentSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_258F071B4(uint64_t a1)
{
  *(v2 + 104) = v1;
  v4 = sub_258F0A370();
  *(v2 + 112) = v4;
  v5 = *(v4 - 8);
  *(v2 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD08, &unk_258F18260) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0) - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v9 = type metadata accessor for FunnelEventMetadata(0);
  *(v2 + 160) = v9;
  v10 = *(v9 - 8);
  *(v2 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  v12 = type metadata accessor for VTEnrollmentData(0);
  *(v2 + 208) = v12;
  v13 = *(v12 - 8);
  *(v2 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = *a1;
  *(v2 + 280) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258F07414, 0, 0);
}

void sub_258F07414()
{
  v172 = v0;
  v1 = *(v0 + 104);
  *(v0 + 288) = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#VTEnrollmentSELFReporter: Reporter invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v7 = *(v0 + 264);

  v8 = sub_258F0A350();
  v9 = sub_258F0A810();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 272);
  v11 = *(v0 + 280);
  v13 = *(v0 + 264);
  if (v10)
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v11 + 16);

    _os_log_impl(&dword_258DD8000, v8, v9, "#VTEnrollmentSELFReporter: result %ld", v14, 0xCu);
    MEMORY[0x259C9EF40](v14, -1, -1);
  }

  else
  {
    v15 = *(v0 + 264);
  }

  v17 = *(v0 + 272);
  v16 = *(v0 + 280);
  v18 = *(v0 + 264);

  v19 = sub_258F0A350();
  v20 = sub_258F0A810();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 280);
    v22 = *(v0 + 208);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v171 = v24;
    *v23 = 136315138;
    v25 = MEMORY[0x259C9DF80](v21, v22);
    v27 = sub_258DE3018(v25, v26, &v171);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_258DD8000, v19, v20, "#VTEnrollmentSELFReporter: result.vtEnrollmentData %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x259C9EF40](v24, -1, -1);
    MEMORY[0x259C9EF40](v23, -1, -1);
  }

  v28 = *(v0 + 280);
  *(v0 + 96) = MEMORY[0x277D84F98];
  v29 = &selRef_setSampledErrorAsset_;
  v163 = *(v28 + 16);
  v165 = v28;
  if (v163)
  {
    v30 = 0;
    v161 = (*(v0 + 168) + 48);
    v31 = *(v0 + 208);
    v162 = *(v0 + 216);
    while (1)
    {
      if (v30 >= *(v165 + 16))
      {
        __break(1u);
LABEL_84:
        v133 = sub_258F0AA20();
        if (!v133)
        {
          goto LABEL_72;
        }

LABEL_65:
        if (v133 >= 1)
        {

          for (i = 0; i != v133; ++i)
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              v135 = MEMORY[0x259C9E3B0](i, v31);
            }

            else
            {
              v135 = *(v31 + 8 * i + 32);
            }

            v136 = v135;
            [v19 addDigests:v135];
          }

          goto LABEL_72;
        }

        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        return;
      }

      v33 = *(v0 + 248);
      v32 = *(v0 + 256);
      sub_258F09514(*(v0 + 280) + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v30, v32, type metadata accessor for VTEnrollmentData);
      sub_258F09514(v32, v33, type metadata accessor for VTEnrollmentData);
      v34 = [objc_allocWithZone(MEMORY[0x277D59490]) v29[10]];
      if (!v34)
      {
        goto LABEL_87;
      }

      v35 = v34;
      sub_258F09514(*(v0 + 248), *(v0 + 240), type metadata accessor for VTEnrollmentData);
      v36 = objc_allocWithZone(MEMORY[0x277D59498]);
      v37 = v35;
      v38 = [v36 v29[10]];
      if (!v38)
      {
        goto LABEL_88;
      }

      v39 = v38;
      sub_258F09514(*(v0 + 240), *(v0 + 232), type metadata accessor for VTEnrollmentData);
      v40 = [objc_allocWithZone(MEMORY[0x277D59480]) v29[10]];
      if (!v40)
      {
        goto LABEL_89;
      }

      v41 = v40;
      v42 = *(v0 + 232);
      v43 = (v42 + *(v31 + 28));
      if (v43[1])
      {
        v44 = *v43;
        v45 = sub_258F0A4E0();
        [v41 setSystemBuild_];

        v42 = *(v0 + 232);
      }

      v46 = (v42 + *(v31 + 32));
      if ((v46[1] & 1) == 0)
      {
        [v41 setViewInterface_];
        v42 = *(v0 + 232);
      }

      if (*(v42 + *(v31 + 36)))
      {
        [v41 setSiriInputLocale_];
        v42 = *(v0 + 232);
      }

      v47 = *(v0 + 240);
      sub_258EFB6EC(v42, type metadata accessor for VTEnrollmentData);
      [v39 setCoreDimensions_];

      v48 = (v47 + *(v31 + 40));
      if ((v48[1] & 1) == 0)
      {
        [v39 setEnrollmentMode_];
      }

      v49 = *(v0 + 240);
      v50 = (v49 + *(v31 + 44));
      if ((v50[1] & 1) == 0)
      {
        [v39 setVoiceTriggerType_];
        v49 = *(v0 + 240);
      }

      v51 = (v49 + *(v31 + 48));
      if ((v51[1] & 1) == 0)
      {
        [v39 setEnrollmentOutcome_];
        v49 = *(v0 + 240);
      }

      v52 = (v49 + *(v31 + 52));
      if ((v52[1] & 1) == 0)
      {
        [v39 setPageNumberCompleted_];
        v49 = *(v0 + 240);
      }

      v168 = v30;
      v53 = (v49 + *(v31 + 56));
      if ((v53[1] & 1) == 0)
      {
        [v39 setTrainingOutcome_];
        v49 = *(v0 + 240);
      }

      v55 = *(v0 + 248);
      v54 = *(v0 + 256);
      v56 = *(v0 + 224);
      sub_258EFB6EC(v49, type metadata accessor for VTEnrollmentData);
      [v37 setDimensions_];

      sub_258EFB6EC(v55, type metadata accessor for VTEnrollmentData);
      sub_258F09514(v54, v56, type metadata accessor for VTEnrollmentData);
      v57 = [objc_allocWithZone(MEMORY[0x277D59350]) v29[10]];
      if (!v57)
      {
        goto LABEL_90;
      }

      v58 = v57;
      v59 = *(v0 + 224);
      v60 = (v59 + *(v31 + 20));
      if (v60[1])
      {
        v61 = *v60;
        v62 = sub_258F0A4E0();
        [v58 setDeviceType_];

        v59 = *(v0 + 224);
      }

      v63 = (v59 + *(v31 + 24));
      if ((v63[1] & 1) == 0)
      {
        [v58 setProgramCode_];
        v59 = *(v0 + 224);
      }

      v64 = *(v0 + 256);
      v66 = *(v0 + 152);
      v65 = *(v0 + 160);
      sub_258EFB6EC(v59, type metadata accessor for VTEnrollmentData);
      sub_258DE20C0(v64, v66, &qword_27F98AA58, &unk_258F174B0);
      v67 = (*v161)(v66, 1, v65);
      v19 = *(v0 + 152);
      if (v67 != 1)
      {
        break;
      }

      sub_258EFB6EC(*(v0 + 256), type metadata accessor for VTEnrollmentData);

      sub_258DE2184(v19, &qword_27F98AA58, &unk_258F174B0);
LABEL_11:
      ++v30;
      if (v163 == v168 + 1)
      {
        goto LABEL_47;
      }
    }

    sub_258F08E64(*(v0 + 152), *(v0 + 200));
    if (*(*(v0 + 96) + 16))
    {
      sub_258E2F028(*(v0 + 200));
      if (v68)
      {
LABEL_42:
        v73 = *(v0 + 192);
        sub_258F09514(*(v0 + 200), v73, type metadata accessor for FunnelEventMetadata);
        v75 = sub_258ED061C((v0 + 16), v73);
        if (*v74)
        {
          v76 = v74;
          v77 = v37;
          MEMORY[0x259C9DF50]();
          if (*((v76[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_258F0A6D0();
          }

          sub_258F0A700();
        }

        v75();
        v19 = *(v0 + 256);
        v79 = *(v0 + 192);
        v78 = *(v0 + 200);

        sub_258EFB6EC(v79, type metadata accessor for FunnelEventMetadata);
        sub_258EFB6EC(v78, type metadata accessor for FunnelEventMetadata);
        sub_258EFB6EC(v19, type metadata accessor for VTEnrollmentData);
        v29 = &selRef_setSampledErrorAsset_;
        goto LABEL_11;
      }

      v69 = *(v0 + 96);
    }

    v70 = *(v0 + 200);
    v71 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v171 = *(v0 + 96);
    sub_258ED7EB4(v71, MEMORY[0x277D84F90], v70, isUniquelyReferenced_nonNull_native);
    *(v0 + 96) = v171;
    goto LABEL_42;
  }

LABEL_47:
  v80 = sub_258F0A350();
  v81 = sub_258F0A810();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = *(v0 + 160);
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v171 = v84;
    *v83 = 136315138;
    swift_beginAccess();
    v85 = *(v0 + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD20, &unk_258F18278);
    sub_258F095EC();
    v86 = sub_258F0A420();
    v88 = v87;

    v89 = sub_258DE3018(v86, v88, &v171);

    *(v83 + 4) = v89;
    _os_log_impl(&dword_258DD8000, v80, v81, "#VTEnrollmentSELFReporter: Event to be emitted: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x259C9EF40](v84, -1, -1);
    MEMORY[0x259C9EF40](v83, -1, -1);
  }

  swift_beginAccess();
  v90 = *(v0 + 96);
  *(v0 + 296) = v90;
  v91 = *(v90 + 32);
  *(v0 + 368) = v91;
  v92 = -1;
  v93 = -1 << v91;
  if (-(-1 << v91) < 64)
  {
    v92 = ~(-1 << -v93);
  }

  v94 = v92 & *(v90 + 64);

  if (v94)
  {
    v95 = 0;
LABEL_56:
    v98 = *(v0 + 184);
    v99 = *(v0 + 136);
    v100 = __clz(__rbit64(v94));
    v101 = (v94 - 1) & v94;
    v102 = v100 | (v95 << 6);
    sub_258F09514(*(v90 + 48) + *(*(v0 + 168) + 72) * v102, v98, type metadata accessor for FunnelEventMetadata);
    v103 = *(v90 + 56);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
    v105 = *(v104 + 48);
    v169 = *(v103 + 16 * v102);
    sub_258F08E64(v98, v99);
    *(v99 + v105) = v169;
    (*(*(v104 - 8) + 56))(v99, 0, 1, v104);
    v106 = v169;

    v97 = v95;
  }

  else
  {
    v96 = 0;
    v97 = ((63 - v93) >> 6) - 1;
    while (v97 != v96)
    {
      v95 = v96 + 1;
      v94 = *(v90 + 72 + 8 * v96++);
      if (v94)
      {
        goto LABEL_56;
      }
    }

    v141 = *(v0 + 136);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
    (*(*(v142 - 8) + 56))(v141, 1, 1, v142);
    v101 = 0;
  }

  *(v0 + 304) = v101;
  *(v0 + 312) = v97;
  v107 = *(v0 + 144);
  sub_258F0957C(*(v0 + 136), v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
  if ((*(*(v108 - 8) + 48))(v107, 1, v108) == 1)
  {
    v110 = *(v0 + 288);
    v109 = *(v0 + 296);
    v111 = *(v0 + 104);

    v112 = sub_258F0A350();
    v113 = sub_258F0A810();
    v114 = os_log_type_enabled(v112, v113);
    v115 = *(v0 + 296);
    if (v114)
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_258DD8000, v112, v113, "#VTEnrollmentSELFReporter: Reporter completed.", v116, 2u);
      MEMORY[0x259C9EF40](v116, -1, -1);
    }

    goto LABEL_80;
  }

  v117 = *(v0 + 176);
  v118 = *(v0 + 144);
  v119 = v118 + *(v108 + 48);
  v120 = *v119;
  *(v0 + 320) = *v119;
  v31 = *(v119 + 8);
  *(v0 + 328) = v31;
  sub_258F08E64(v118, v117);
  v121 = [objc_allocWithZone(MEMORY[0x277D59488]) v29[10]];
  *(v0 + 336) = v121;
  v122 = *(v0 + 288);
  if (!v121)
  {
    v143 = *(v0 + 104) + v122;
    v144 = sub_258F0A350();
    v145 = sub_258F0A820();
    v146 = os_log_type_enabled(v144, v145);
    v147 = *(v0 + 296);
    v148 = *(v0 + 176);
    if (v146)
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&dword_258DD8000, v144, v145, "#VTEnrollmentSELFReporter: Failed to generate client event", v149, 2u);
      MEMORY[0x259C9EF40](v149, -1, -1);
    }

    else
    {
    }

    sub_258EFB6EC(v148, type metadata accessor for FunnelEventMetadata);
LABEL_80:

    v151 = *(v0 + 248);
    v150 = *(v0 + 256);
    v153 = *(v0 + 232);
    v152 = *(v0 + 240);
    v154 = *(v0 + 224);
    v156 = *(v0 + 192);
    v155 = *(v0 + 200);
    v158 = *(v0 + 176);
    v157 = *(v0 + 184);
    v159 = *(v0 + 152);
    v164 = *(v0 + 144);
    v167 = *(v0 + 136);
    v170 = *(v0 + 128);

    v160 = *(v0 + 8);

    v160();
    return;
  }

  v123 = v121;
  v125 = *(v0 + 176);
  v124 = *(v0 + 184);
  v127 = *(v0 + 120);
  v126 = *(v0 + 128);
  v128 = *(v0 + 104);
  v166 = *(v0 + 112);
  sub_258DEB8C8(0, &qword_27F98AD18, 0x277D59478);
  sub_258F09514(v125, v124, type metadata accessor for FunnelEventMetadata);
  (*(v127 + 16))(v126, v128 + v122, v166);
  v129 = sub_258F08EC8(v124, v126);
  [v123 setEventMetadata_];

  v130 = objc_allocWithZone(MEMORY[0x277D594A0]);
  v131 = v120;
  v132 = [v130 init];
  *(v0 + 344) = v132;
  if (!v132)
  {
    goto LABEL_91;
  }

  v19 = v132;
  v29 = v123;
  [v132 setFixedDimensions:v131];

  if (v31 >> 62)
  {
    goto LABEL_84;
  }

  v133 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v133)
  {
    goto LABEL_65;
  }

LABEL_72:
  v137 = *(v0 + 288);
  v138 = *(v0 + 104);
  [(SEL *)v29 setVoiceTriggerEnrollmentFunnelReported:v19];
  v139 = *(v138 + 16);
  v140 = swift_task_alloc();
  *(v0 + 352) = v140;
  *v140 = v0;
  v140[1] = sub_258F08474;

  sub_258EB747C(v29, v138 + v137);
}

uint64_t sub_258F08474()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_258F08C80;
  }

  else
  {
    v3 = sub_258F08588;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258F08588()
{
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 176);

  sub_258EFB6EC(v5, type metadata accessor for FunnelEventMetadata);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  if (!v6)
  {
    v9 = ((1 << *(v0 + 368)) + 63) >> 6;
    if (v9 <= (v7 + 1))
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = ((1 << *(v0 + 368)) + 63) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v54 = *(v0 + 136);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
        (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
        v15 = 0;
        goto LABEL_12;
      }

      v8 = *(v0 + 296);
      v6 = *(v8 + 8 * v12 + 64);
      ++v7;
      if (v6)
      {
        v7 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v8 = *(v0 + 296);
LABEL_11:
  v13 = *(v0 + 184);
  v14 = *(v0 + 136);
  v15 = (v6 - 1) & v6;
  v16 = __clz(__rbit64(v6)) | (v7 << 6);
  sub_258F09514(*(v8 + 48) + *(*(v0 + 168) + 72) * v16, v13, type metadata accessor for FunnelEventMetadata);
  v17 = *(v8 + 56);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
  v19 = *(v18 + 48);
  v77 = *(v17 + 16 * v16);
  sub_258F08E64(v13, v14);
  *(v14 + v19) = v77;
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  v20 = v77;

  v11 = v7;
LABEL_12:
  *(v0 + 304) = v15;
  *(v0 + 312) = v11;
  v21 = *(v0 + 144);
  sub_258F0957C(*(v0 + 136), v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    v24 = *(v0 + 288);
    v23 = *(v0 + 296);
    v25 = *(v0 + 104);

    v26 = sub_258F0A350();
    v27 = sub_258F0A810();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 296);
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_258DD8000, v26, v27, "#VTEnrollmentSELFReporter: Reporter completed.", v30, 2u);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    goto LABEL_35;
  }

  v31 = *(v0 + 176);
  v32 = *(v0 + 144);
  v33 = v32 + *(v22 + 48);
  v34 = *v33;
  *(v0 + 320) = *v33;
  v11 = *(v33 + 8);
  *(v0 + 328) = v11;
  sub_258F08E64(v32, v31);
  v35 = [objc_allocWithZone(MEMORY[0x277D59488]) init];
  *(v0 + 336) = v35;
  v36 = *(v0 + 288);
  if (!v35)
  {
    v56 = *(v0 + 104) + v36;
    v57 = sub_258F0A350();
    v58 = sub_258F0A820();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 296);
    v61 = *(v0 + 176);
    if (v59)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_258DD8000, v57, v58, "#VTEnrollmentSELFReporter: Failed to generate client event", v62, 2u);
      MEMORY[0x259C9EF40](v62, -1, -1);
    }

    else
    {
    }

    sub_258EFB6EC(v61, type metadata accessor for FunnelEventMetadata);
LABEL_35:

    v64 = *(v0 + 248);
    v63 = *(v0 + 256);
    v66 = *(v0 + 232);
    v65 = *(v0 + 240);
    v67 = *(v0 + 224);
    v69 = *(v0 + 192);
    v68 = *(v0 + 200);
    v71 = *(v0 + 176);
    v70 = *(v0 + 184);
    v72 = *(v0 + 152);
    v74 = *(v0 + 144);
    v76 = *(v0 + 136);
    v78 = *(v0 + 128);

    v73 = *(v0 + 8);

    v73();
    return;
  }

  v1 = v35;
  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v40 = *(v0 + 120);
  v39 = *(v0 + 128);
  v41 = *(v0 + 104);
  v75 = *(v0 + 112);
  sub_258DEB8C8(0, &qword_27F98AD18, 0x277D59478);
  sub_258F09514(v38, v37, type metadata accessor for FunnelEventMetadata);
  (*(v40 + 16))(v39, v41 + v36, v75);
  v42 = sub_258F08EC8(v37, v39);
  [v1 setEventMetadata_];

  v43 = objc_allocWithZone(MEMORY[0x277D594A0]);
  v44 = v34;
  v45 = [v43 init];
  *(v0 + 344) = v45;
  if (!v45)
  {
    goto LABEL_42;
  }

  v3 = v45;
  [v45 setFixedDimensions_];

  if (v11 >> 62)
  {
LABEL_39:
    v46 = sub_258F0AA20();
    if (v46)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v46 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46)
  {
LABEL_20:
    if (v46 >= 1)
    {

      for (i = 0; i != v46; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x259C9E3B0](i, v11);
        }

        else
        {
          v48 = *(v11 + 8 * i + 32);
        }

        v49 = v48;
        [v3 addDigests_];
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

LABEL_27:
  v50 = *(v0 + 288);
  v51 = *(v0 + 104);
  [v1 setVoiceTriggerEnrollmentFunnelReported_];
  v52 = *(v51 + 16);
  v53 = swift_task_alloc();
  *(v0 + 352) = v53;
  *v53 = v0;
  v53[1] = sub_258F08474;

  sub_258EB747C(v1, v51 + v50);
}

uint64_t sub_258F08C80()
{
  v1 = v0[13] + v0[36];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#VTEnrollmentSELFReporter: Unable to report ODFunnelEvent.", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[40];
  v9 = v0[41];
  v10 = v0[37];
  v11 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[25];
  v21 = v0[24];
  v12 = v0[22];
  v22 = v0[23];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[16];

  swift_willThrow();

  sub_258EFB6EC(v12, type metadata accessor for FunnelEventMetadata);

  v13 = v0[1];
  v14 = v0[45];

  return v13();
}

uint64_t sub_258F08E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FunnelEventMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_258F08EC8(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v35 - v6;
  v8 = sub_258F09A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v35 - v16;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v19 = result;
    sub_258F09A60();
    v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v21 = sub_258F09A50();
    v22 = [v20 initWithNSUUID_];

    v23 = *(v9 + 8);
    v23(v17, v8);
    [v19 setOdfunnelId_];

    v24 = type metadata accessor for FunnelEventMetadata(0);
    v25 = a1 + v24[5];
    if ((*(v25 + 8) & 1) == 0)
    {
      [v19 setEventTimestampInMsSince1970_];
    }

    if (*(a1 + v24[6]))
    {
      [v19 setAggregationInterval_];
    }

    sub_258DE20C0(a1 + v24[7], v7, &qword_27F988730, &unk_258F0F8E0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_258DE2184(v7, &qword_27F988730, &unk_258F0F8E0);
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v26 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      v27 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v28 = sub_258F09A50();
      v29 = [v27 initWithNSUUID_];

      [v19 setDeviceAggregationId_];
      v23(v14, v8);
    }

    v30 = a1 + v24[9];
    if (*(v30 + 8))
    {
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v31 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      [v19 setUserAggregationIdExpirationTimestampMs_];
    }

    v32 = a1 + v24[8];
    if (*(v32 + 8))
    {
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v33 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      [v19 setUserAggregationIdRotationTimestampMs_];
    }

    v34 = sub_258F0A370();
    (*(*(v34 - 8) + 8))(v36, v34);
    sub_258EFB6EC(a1, type metadata accessor for FunnelEventMetadata);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258F09384()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t VTEnrollmentSELFReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t VTEnrollmentSELFReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258F09514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258F0957C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD08, &unk_258F18260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258F095EC()
{
  result = qword_27F98AD28;
  if (!qword_27F98AD28)
  {
    type metadata accessor for FunnelEventMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AD28);
  }

  return result;
}

uint64_t dispatch thunk of VTEnrollmentReporter.report(_:)(uint64_t a1)
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

uint64_t type metadata accessor for VTEnrollmentSELFReporter()
{
  result = qword_27F98AD30;
  if (!qword_27F98AD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}