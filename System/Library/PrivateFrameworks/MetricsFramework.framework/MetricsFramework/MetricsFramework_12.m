void sub_258EE22D8(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x259C9DF50]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258F0A6D0();
    }

    sub_258F0A700();
    swift_endAccess();
    v6 = v5;
    v7 = sub_258F0A350();
    v8 = sub_258F0A810();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v4;
      v11 = v6;
      _os_log_impl(&dword_258DD8000, v7, v8, "#SpeakerIdManifestCalculator: Current eventBody: %@ from BiomeStream", v9, 0xCu);
      sub_258DE2184(v10, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v10, -1, -1);
      MEMORY[0x259C9EF40](v9, -1, -1);
      v6 = v7;
      v7 = v11;
    }
  }
}

id sub_258EE2484(char a1)
{
  v3 = sub_258F0A370();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
  if (!v9)
  {
    v17 = sub_258F0A350();
    v18 = sub_258F0A820();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_258DD8000, v17, v18, "#SpeakerIdManifestCalculator: Failed to generate selection event", v19, 2u);
      MEMORY[0x259C9EF40](v19, -1, -1);
    }

    return 0;
  }

  v10 = v9;
  result = [objc_allocWithZone(MEMORY[0x277D59538]) init];
  if (result)
  {
    v12 = result;
    [result setIsDeviceSelected_];
    [v10 setSpeakerIdModelDeviceSelected_];

    sub_258DEB8C8(0, &qword_27F98A858, 0x277D59530);
    (*(v4 + 16))(v8, v1 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger, v3);
    v13 = sub_258EF1CE4(v8);
    [v10 setEventMetadata_];

    v14 = sub_258F0A350();
    v15 = sub_258F0A810();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_258DD8000, v14, v15, "#SpeakerIdManifestCalculator: Created ODSAMPLESiriSchemaODSAMPLEClientEvent for the device selection", v16, 2u);
      MEMORY[0x259C9EF40](v16, -1, -1);
    }

    return v10;
  }

  __break(1u);
  return result;
}

NSObject *sub_258EE2700(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_258F0A370();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a3 + 16))
  {
    v17 = sub_258F0A350();
    v24 = sub_258F0A810();
    if (os_log_type_enabled(v17, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "#SpeakerIdManifestCalculator: input sampleIds being empty, will not be genreating manifest event";
LABEL_10:
      _os_log_impl(&dword_258DD8000, v17, v24, v26, v25, 2u);
      MEMORY[0x259C9EF40](v25, -1, -1);
    }

LABEL_14:

    return 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
  if (!v16)
  {
    v17 = sub_258F0A350();
    v24 = sub_258F0A820();
    if (os_log_type_enabled(v17, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "#SpeakerIdManifestCalculator: Failed to generate event";
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v17 = v16;
  if (!a2)
  {
    v27 = sub_258F0A350();
    v28 = sub_258F0A820();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_258DD8000, v27, v28, "#SpeakerIdManifestCalculator: enrollmentId being nil", v29, 2u);
      MEMORY[0x259C9EF40](v29, -1, -1);
    }

    goto LABEL_14;
  }

  v48 = a4;
  v18 = *(v5 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults);
  v50[0] = a1;
  v50[1] = a2;

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v19 = sub_258F0A4E0();
  v49 = a1;
  v20 = v19;

  v21 = [v18 stringForKey_];

  v22 = &unk_27F98A000;
  if (v21)
  {
    v49 = sub_258F0A4F0();
    a2 = v23;
LABEL_17:

    goto LABEL_18;
  }

  v21 = sub_258F0A350();
  v30 = sub_258F0A840();
  if (!os_log_type_enabled(v21, v30))
  {
    goto LABEL_17;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v47 = v21;
  v33 = v32;
  v50[0] = v32;
  *v31 = 136315138;
  *(v31 + 4) = sub_258DE3018(v49, a2, v50);
  v34 = v30;
  v35 = v47;
  _os_log_impl(&dword_258DD8000, v47, v34, "#SpeakerIdManifestCalculator: userSamplingId is not written into plist for legacy code, using enrollmentId: %s", v31, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  MEMORY[0x259C9EF40](v33, -1, -1);
  v36 = v31;
  v22 = &unk_27F98A000;
  MEMORY[0x259C9EF40](v36, -1, -1);

LABEL_18:
  sub_258DEB8C8(0, &qword_27F98A850, 0x277D59540);
  v37 = v22[484];
  v38 = *(v11 + 16);
  v38(v15, v5 + v37, v10);

  sub_258EE2C00(v49, a2, a3, v48, v15);
  v40 = v39;
  [v17 setSpeakerIdModelSampleManifestReported:v39];

  sub_258DEB8C8(0, &qword_27F98A858, 0x277D59530);
  v38(v15, v5 + v37, v10);
  v41 = sub_258EF1CE4(v15);
  [v17 setEventMetadata:v41];

  v42 = sub_258F0A350();
  v43 = sub_258F0A810();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_258DD8000, v42, v43, "#SpeakerIdManifestCalculator: Created ODSAMPLESiriSchemaODSAMPLEClientEvent for the device", v44, 2u);
    MEMORY[0x259C9EF40](v44, -1, -1);
  }

  return v17;
}

void sub_258EE2C00(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v46 = a4;
  v44[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v45 = v44 - v9;
  v51 = sub_258F09A70();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v51, v12);
  v44[0] = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v44 - v16;
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v18)
  {
    v19 = a3;
    v22 = *(a3 + 56);
    v21 = a3 + 56;
    v20 = v22;
    v23 = 1 << *(v21 - 24);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v20;
    v26 = (v23 + 63) >> 6;
    v49 = v10 + 16;
    v50 = v10 + 8;
    v52 = v18;
    v27 = 0;
    if (v25)
    {
      while (1)
      {
        v28 = v27;
LABEL_10:
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v30 = v51;
        (*(v10 + 16))(v17, *(v19 + 48) + *(v10 + 72) * (v29 | (v28 << 6)), v51);
        v31 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v32 = sub_258F09A50();
        (*(v10 + 8))(v17, v30);
        v33 = [v31 initWithNSUUID_];

        [v52 addOdsampleIds_];
        if (!v25)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v28 >= v26)
      {
        break;
      }

      v25 = *(v21 + 8 * v28);
      ++v27;
      if (v25)
      {
        v27 = v28;
        goto LABEL_10;
      }
    }

    v34 = v52;
    [v52 setCollectionStatus_];

    if (v47)
    {
      v35 = v45;
      sub_258F09A30();

      v36 = v51;
      if ((*(v10 + 48))(v35, 1, v51) == 1)
      {
        v37 = sub_258F0A370();
        (*(*(v37 - 8) + 8))(v48, v37);
        sub_258DE2184(v35, &qword_27F988730, &unk_258F0F8E0);
      }

      else
      {
        v39 = v44[0];
        (*(v10 + 32))(v44[0], v35, v36);
        v40 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v41 = sub_258F09A50();
        v42 = [v40 initWithNSUUID_];

        [v52 setUserSamplingId_];
        v43 = sub_258F0A370();
        (*(*(v43 - 8) + 8))(v48, v43);
        (*(v10 + 8))(v39, v36);
      }
    }

    else
    {
      v38 = sub_258F0A370();
      (*(*(v38 - 8) + 8))(v48, v38);
    }
  }

  else
  {
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_258EE3048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = a4;
  v9 = sub_258F09A20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults);
  v22 = a1;
  v23 = a2;

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v16 = sub_258F0A4E0();

  [v15 setValue:0 forKey:v16];

  v17 = *(v4 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils);
  v18 = *(v5 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils + 8);
  (*(v18 + 48))(a3, v21, v17, v18);
  sub_258F09A10();
  (*(v18 + 88))(v14, v17, v18);
  (*(v10 + 8))(v14, v9);
  v22 = a1;
  v23 = a2;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD00000000000001DLL, 0x8000000258F1D6E0);

  _s16MetricsFramework13SamplingUtilsC23setManifestCurrentCount6forKey_2inySS_SiSo14NSUserDefaultsCtFZ_0(v22, v23, 0, v15);
}

void sub_258EE3270(uint64_t a1, unint64_t a2)
{
  if (a2)
  {

    v4 = sub_258F0A350();
    v5 = sub_258F0A810();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_258DE3018(a1, a2, aBlock);
      _os_log_impl(&dword_258DD8000, v4, v5, "#SpeakerIdManifestCalculator: Pruning the uploaded samples for enrollmentId %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C9EF40](v7, -1, -1);
      MEMORY[0x259C9EF40](v6, -1, -1);
    }

    v8 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v9 = [v8 OnDeviceAnalytics];
    swift_unknownObjectRelease();
    v10 = [v9 SpeakerIdSampling];
    swift_unknownObjectRelease();
    v11 = [v10 pruner];
    v12 = sub_258F0A4E0();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_258EE4040;
    *(v14 + 24) = v13;
    aBlock[4] = sub_258EE4048;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_258EE37BC;
    aBlock[3] = &block_descriptor_7;
    v15 = _Block_copy(aBlock);

    [v11 deleteWithPolicy:v12 eventsPassingTest:v15];

    _Block_release(v15);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {

      v16 = sub_258F0A350();
      v17 = sub_258F0A810();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_258DE3018(a1, a2, aBlock);
        _os_log_impl(&dword_258DD8000, v16, v17, "#SpeakerIdManifestCalculator: Biome Samples Event pruning for enrollmentId %s completed", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x259C9EF40](v19, -1, -1);
        MEMORY[0x259C9EF40](v18, -1, -1);
      }
    }
  }

  else
  {
    oslog = sub_258F0A350();
    v20 = sub_258F0A820();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_258DD8000, oslog, v20, "#SpeakerIdManifestCalculator: Unable to prune the samples for the invalid enrollmentId", v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }
  }
}

uint64_t sub_258EE36F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v6 = [a1 eventBody]) != 0 && (v7 = v6, v8 = objc_msgSend(v6, sel_enrollmentIdentifier), v7, v8))
  {
    v9 = sub_258F0A4F0();
    v11 = v10;

    if (v9 == a3 && v11 == a4)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_258F0AD80();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_258EE37BC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

NSObject *sub_258EE3818(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v8 = *a3;

    sub_258EE4C60(a4, v8, &v17);

    sub_258EE408C(&v17);
    v25 = v17;
    v26 = v18;
    sub_258DE2184(&v25, &qword_27F98A860, &qword_258F16850);
    v23 = v19;
    v24 = v20;
    sub_258DE2184(&v23, &qword_27F98A860, &qword_258F16850);
    v22 = v21;
    sub_258DE2184(&v22, &qword_27F98A868, &qword_258F16858);
    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a4;
      _os_log_impl(&dword_258DD8000, v9, v10, "#SpeakerIdManifestCalculator: SpeakerIdManifestCalculator we have more than allowed samples, Dropping : %ld samples", v11, 0xCu);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }
  }

  v12 = sub_258EE2700(a1, a2, *a3, 2u);
  sub_258EE3270(a1, a2);
  v13 = sub_258F0A350();
  v14 = sub_258F0A810();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_258DD8000, v13, v14, "#SpeakerIdManifestCalculator: Created ODSAMPLECOLLECTIONSTATUS_COMPLETED event", v15, 2u);
    MEMORY[0x259C9EF40](v15, -1, -1);
  }

  return v12;
}

uint64_t SpeakerIdManifestCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_analyticsEventSubmitter));
  return v0;
}

uint64_t SpeakerIdManifestCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_analyticsEventSubmitter));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EE3C5C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EE0B30(a1);
}

uint64_t sub_258EE3CF8(uint64_t a1)
{
  result = sub_258EE4E08(&qword_27F98A828, type metadata accessor for SpeakerIdManifestCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258EE3D50()
{
  result = qword_27F98A830;
  if (!qword_27F98A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A830);
  }

  return result;
}

unint64_t sub_258EE3DA4()
{
  result = qword_27F98A838;
  if (!qword_27F98A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A838);
  }

  return result;
}

uint64_t sub_258EE3E10()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_258F09B00();
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

uint64_t dispatch thunk of SpeakerIdManifestCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258EE4048()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258EE408C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v26 - v6;
  v30 = sub_258F09A70();
  v8 = *(*(v30 - 8) + 64);
  result = MEMORY[0x28223BE20](v30, v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v15 = *a1;
    v14 = *(a1 + 8);
    v16 = *(a1 + 16);
    v36 = *(a1 + 24);
    v37 = *(a1 + 40);
    v17 = v36;
    v29 = v37;
    v18 = *(a1 + 48);
    v35 = v16;
    v19 = *(a1 + 32);
    v27 = *(a1 + 24);
    v28 = v11;
    v26 = v19;
    v34 = v37;
    sub_258EE4D80(v15, v14, v16);
    v31 = v14;
    v32 = v15;
    sub_258EE4D80(v15, v14, v16);
    sub_258EE4D8C(&v36, v33);

    if (v16 & 1) != 0 || (v29)
    {
LABEL_11:
      __break(1u);
LABEL_12:
      v25 = v34;
      sub_258EE4DFC(v32, v31, v35);
      sub_258EE4DFC(v27, v26, v25);

      return sub_258EE4DFC(v17, v16, 0);
    }

    else
    {
      v20 = (v28 + 8);
      v16 = v31;
      v21 = v32;
      while (v16 == DWORD2(v17))
      {
        if (v21 == v17)
        {
          goto LABEL_12;
        }

        if (v21 < v32)
        {
          goto LABEL_15;
        }

        if (DWORD2(v17) != v31)
        {
          goto LABEL_16;
        }

        if (v21 >= v17)
        {
          goto LABEL_17;
        }

        sub_258EE4BA0(v21, v16, v18, v13);
        v21 = sub_258EE4B18(v21, v16, 0, v18);
        v16 = v22;
        v24 = v23;
        sub_258EE4320(v13, v7);
        (*v20)(v13, v30);
        result = sub_258DE2184(v7, &qword_27F988730, &unk_258F0F8E0);
        if (v24)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_258EE4320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_258EE4E08(&qword_27F988CC8, MEMORY[0x277CC95F0]);
  v36 = a1;
  v14 = sub_258F0A440();
  v15 = v12 + 56;
  v34 = v12 + 56;
  v35 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v31 = v3;
    v32 = v7;
    v33 = a2;
    v18 = ~v16;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    while (1)
    {
      v19(v11, *(v35 + 48) + v22 * v17, v6);
      sub_258EE4E08(&qword_27F988CD0, MEMORY[0x277CC95F0]);
      v23 = sub_258F0A4B0();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v34 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v24 = 1;
        v7 = v32;
        a2 = v33;
        return (*(v7 + 56))(a2, v24, 1, v6);
      }
    }

    v25 = v31;
    v26 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v25;
    v37 = *v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_258E07370();
      v28 = v37;
    }

    v7 = v32;
    a2 = v33;
    (*(v32 + 32))(v33, *(v28 + 48) + v22 * v17, v6);
    sub_258EE45C8(v17);
    v24 = 0;
    *v25 = v37;
  }

  else
  {
    v24 = 1;
  }

  return (*(v7 + 56))(a2, v24, 1, v6);
}

uint64_t sub_258EE45C8(int64_t a1)
{
  v3 = sub_258F09A70();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;
    v15 = *v1;

    v16 = sub_258F0A9E0();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v17 = v14;
      v18 = (v16 + 1) & v14;
      v39 = v4[2];
      v40 = v4 + 2;
      v19 = v4[9];
      v37 = (v4 + 1);
      v38 = v11;
      v20 = v19;
      do
      {
        v21 = v20;
        v22 = v20 * v13;
        v39(v9, *(v10 + 48) + v20 * v13, v3);
        v23 = v10;
        v24 = v18;
        v25 = v17;
        v26 = v23;
        v27 = *(v23 + 40);
        sub_258EE4E08(&qword_27F988CC8, MEMORY[0x277CC95F0]);
        v28 = sub_258F0A440();
        (*v37)(v9, v3);
        v29 = v28 & v25;
        v17 = v25;
        v18 = v24;
        if (a1 >= v24)
        {
          if (v29 >= v24 && a1 >= v29)
          {
LABEL_16:
            v10 = v26;
            v32 = *(v26 + 48);
            v20 = v21;
            v33 = v21 * a1;
            if (v21 * a1 < v22 || v32 + v21 * a1 >= (v32 + v22 + v21))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v13;
            }

            else
            {
              a1 = v13;
              if (v33 != v22)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v13;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v29 >= v24 || a1 >= v29)
        {
          goto LABEL_16;
        }

        v10 = v26;
        v20 = v21;
LABEL_5:
        v13 = (v13 + 1) & v17;
        v11 = v38;
      }

      while (((*(v38 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v10 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v36;
    ++*(v10 + 36);
  }

  return result;
}

unint64_t sub_258EE48D0(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_258EE4D80(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258EE4A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = sub_258F0A9D0();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_258EE4B18(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      result = sub_258F0A9F0();
      v5 = *(a4 + 36);
      return result;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_258EE4BA0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_258F09A70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_258EE4C60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = sub_258F0A9D0();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = sub_258EE48D0(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = sub_258F0A9D0();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = sub_258EE4A34(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_258EE4D80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_258EE4D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A860, &qword_258F16850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EE4DFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_258EE4E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SpeakerIdManifestDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SpeakerIdManifestDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EE4F7C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SpeakerIdManifestDataRecord", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t SpeakerIdManifestDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdManifestDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EE5158()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EE4F5C();
}

uint64_t type metadata accessor for SpeakerIdManifestDataProvider()
{
  result = qword_27F98A878;
  if (!qword_27F98A878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdManifestDataProvider.loadData()(uint64_t a1)
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

uint64_t sub_258EE53B8()
{
  sub_258EB875C();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258EE5460(uint64_t a1)
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

uint64_t SpeakerIdManifestSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + 16) = a2;
  return v7;
}

uint64_t SpeakerIdManifestSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_258EE5688(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_258EE56B0, 0, 0);
}

void sub_258EE56B0()
{
  v61 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v0[5] = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v3 = sub_258F0A350();
  v4 = sub_258F0A810();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#SpeakerIdManifestSELFReporter: Reporter invoked", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = v0[3];
  v7 = v0[4];

  v8 = v6;

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[4];
  if (v11)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v12 + 16);

    _os_log_impl(&dword_258DD8000, v9, v10, "#SpeakerIdManifestSELFReporter: result %ld", v13, 0xCu);
    MEMORY[0x259C9EF40](v13, -1, -1);
  }

  else
  {
    v14 = v0[4];

    v9 = v8;
  }

  v15 = v0[4];

  v16 = v8;

  v17 = sub_258F0A350();
  v18 = sub_258F0A810();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[4];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = v21;
    *v20 = 136315138;

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A890, &unk_258F17380);
    v23 = MEMORY[0x259C9DF80](v19, v22);
    v59 = v18;
    v24 = v16;
    v25 = v2;
    v27 = v26;

    v28 = sub_258DE3018(v23, v27, &v60);
    v2 = v25;
    v16 = v24;

    *(v20 + 4) = v28;
    _os_log_impl(&dword_258DD8000, v17, v59, "#SpeakerIdManifestSELFReporter: result.selection %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x259C9EF40](v21, -1, -1);
    MEMORY[0x259C9EF40](v20, -1, -1);
  }

  v29 = v0[4];
  v30 = v16;

  v31 = sub_258F0A350();
  v32 = sub_258F0A810();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v30;
    *v35 = v33;
    v36 = v30;
    _os_log_impl(&dword_258DD8000, v31, v32, "#SpeakerIdManifestSELFReporter: result.speakerIdSelectionEvents %@", v34, 0xCu);
    sub_258EB8CAC(v35);
    MEMORY[0x259C9EF40](v35, -1, -1);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }

  v37 = v0[3];

  if (v37)
  {
    v38 = *(v0[2] + 16);
    v39 = v30;
    v40 = swift_task_alloc();
    v0[6] = v40;
    *v40 = v0;
    v40[1] = sub_258EE5CAC;
    v41 = v1 + v2;
    v42 = v39;
LABEL_12:

    sub_258EB6B24(v42, v41);
  }

  else
  {
    v43 = sub_258F0A350();
    v44 = sub_258F0A800();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_258DD8000, v43, v44, "#SpeakerIdManifestSELFReporter: DeviceSelectionEvent is nil", v45, 2u);
      MEMORY[0x259C9EF40](v45, -1, -1);
    }

    v46 = *(v0[4] + 16);
    v0[8] = v46;
    if (v46)
    {
      v47 = 0;
      while (1)
      {
        v0[9] = v47;
        v48 = v0[4];
        if (v47 >= *(v48 + 16))
        {
          break;
        }

        v49 = *(v48 + 8 * v47 + 32);
        v0[10] = v49;
        v50 = v0[5];
        v51 = v0[2];
        if (v49)
        {
          v56 = *(v51 + 16);
          v57 = v49;
          v58 = swift_task_alloc();
          v0[11] = v58;
          *v58 = v0;
          v58[1] = sub_258EE5F90;
          v41 = v51 + v50;
          v42 = v57;
          goto LABEL_12;
        }

        v52 = sub_258F0A350();
        v53 = sub_258F0A800();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_258DD8000, v52, v53, "#SpeakerIdManifestSELFReporter: SpeakerId Sampling Manifest Event is nil", v54, 2u);
          MEMORY[0x259C9EF40](v54, -1, -1);
        }

        v47 = v0[9] + 1;
        if (v47 == v0[8])
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v55 = v0[1];

      v55();
    }
  }
}

uint64_t sub_258EE5CAC()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_258EE6278;
  }

  else
  {
    v3 = sub_258EE5DC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258EE5DC0()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      *(v0 + 72) = v2;
      v3 = *(v0 + 32);
      if (v2 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 8 * v2 + 32);
      *(v0 + 80) = v4;
      v5 = *(v0 + 40);
      v6 = *(v0 + 16);
      if (v4)
      {
        break;
      }

      v7 = sub_258F0A350();
      v8 = sub_258F0A800();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_258DD8000, v7, v8, "#SpeakerIdManifestSELFReporter: SpeakerId Sampling Manifest Event is nil", v9, 2u);
        MEMORY[0x259C9EF40](v9, -1, -1);
      }

      v2 = *(v0 + 72) + 1;
      if (v2 == *(v0 + 64))
      {
        goto LABEL_8;
      }
    }

    v11 = *(v6 + 16);
    v12 = v4;
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = sub_258EE5F90;

    sub_258EB6B24(v12, v6 + v5);
  }

  else
  {
LABEL_8:
    v10 = *(v0 + 8);

    v10();
  }
}

uint64_t sub_258EE5F90()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_258EE6360;
  }

  else
  {

    v4 = sub_258EE60AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_258EE60AC()
{
  v1 = *(v0 + 72) + 1;
  if (v1 == *(v0 + 64))
  {
LABEL_2:
    v2 = *(v0 + 8);

    v2();
  }

  else
  {
    while (1)
    {
      *(v0 + 72) = v1;
      v3 = *(v0 + 32);
      if (v1 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 8 * v1 + 32);
      *(v0 + 80) = v4;
      v5 = *(v0 + 40);
      v6 = *(v0 + 16);
      if (v4)
      {
        break;
      }

      v7 = sub_258F0A350();
      v8 = sub_258F0A800();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_258DD8000, v7, v8, "#SpeakerIdManifestSELFReporter: SpeakerId Sampling Manifest Event is nil", v9, 2u);
        MEMORY[0x259C9EF40](v9, -1, -1);
      }

      v1 = *(v0 + 72) + 1;
      if (v1 == *(v0 + 64))
      {
        goto LABEL_2;
      }
    }

    v10 = *(v6 + 16);
    v11 = v4;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_258EE5F90;

    sub_258EB6B24(v11, v6 + v5);
  }
}

uint64_t sub_258EE6278()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#SpeakerIdManifestSELFReporter: Unable to report SpeakerId Selection Events", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = *(v0 + 56);

  swift_willThrow();
  v7 = *(v0 + 56);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_258EE6360()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#SpeakerIdManifestSELFReporter: Unable to report SpeakerId Sampling Manifest Events", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 80);

  swift_willThrow();
  v8 = *(v0 + 96);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_258EE6454()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t SpeakerIdManifestSELFReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SpeakerIdManifestSELFReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of SpeakerIdManifestReporter.report(_:)(uint64_t a1)
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

uint64_t type metadata accessor for SpeakerIdManifestSELFReporter()
{
  result = qword_27F98A898;
  if (!qword_27F98A898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpeakerIdSamplingBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t SpeakerIdSamplingBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258EE68C0(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v5 = sub_258F09A20();
  v2[4] = v5;
  v6 = *(v5 - 8);
  v2[5] = v6;
  v7 = *(v6 + 64) + 15;
  v2[6] = swift_task_alloc();
  v8 = type metadata accessor for SpeakerIdSamplingData(0);
  v2[7] = v8;
  v9 = *(v8 - 8);
  v2[8] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *(a1 + 16);
  v2[9] = v11;
  v2[10] = v12;

  return MEMORY[0x2822009F8](sub_258EE6A1C, 0, 0);
}

uint64_t sub_258EE6A1C()
{
  v1 = v0[2] + OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SpeakerIdSamplingBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[10];

  v6 = *(v5 + 16);
  if (v6)
  {
    v44 = v0[9];
    v8 = v0[7];
    v7 = v0[8];
    v42 = *(v0[2] + 16);
    v43 = v8;
    v9 = v0[10] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v40 = (v0[5] + 8);
    v41 = *(v7 + 72);
    do
    {
      v15 = v0[9];
      v16 = v0[6];
      v17 = v0[3];
      sub_258EE73AC(v9, v15);
      v18 = *(v44 + 8);
      *(v44 + 16);
      sub_258F099D0();
      sub_258E3A540(v15 + *(v8 + 120), v17);
      v19 = sub_258F09A70();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v17, 1, v19) == 1)
      {
        sub_258E3A4D8(v0[3]);
      }

      else
      {
        v21 = v0[3];
        v22 = sub_258F09A40();
        v24 = v23;
        (*(v20 + 8))(v21, v19);
        v25 = sub_258DE2990(0, 1, 1, MEMORY[0x277D84F90]);
        v27 = *(v25 + 2);
        v26 = *(v25 + 3);
        if (v27 >= v26 >> 1)
        {
          v25 = sub_258DE2990((v26 > 1), v27 + 1, 1, v25);
        }

        *(v25 + 2) = v27 + 1;
        v28 = &v25[16 * v27];
        *(v28 + 4) = v22;
        *(v28 + 5) = v24;
      }

      v29 = v0[6];
      v30 = (v0[9] + *(v8 + 112));
      v31 = *v30;
      v32 = v30[1];
      v33 = sub_258F099A0();
      v34 = sub_258F0A6A0();

      if (v32)
      {
        v10 = sub_258F0A4E0();
      }

      else
      {
        v10 = 0;
      }

      v11 = v0[9];
      v12 = v0[6];
      v13 = v0[4];
      v14 = [objc_allocWithZone(MEMORY[0x277CF15D8]) initWithTimestamp:v33 onDeviceSampleIdentifiers:v34 enrollmentIdentifier:v10];

      (*v40)(v12, v13);
      sub_258F09B90();

      sub_258EE7410(v11);
      v9 += v41;
      --v6;
      v8 = v43;
    }

    while (v6);
  }

  v35 = v0[9];
  v36 = v0[6];
  v37 = v0[3];

  v38 = v0[1];

  return v38();
}

id static SpeakerIdSamplingBiomeReporter.createBiomeEvent(result:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v33 - v10;
  v12 = sub_258F09A20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 8);
  *(a1 + 16);
  sub_258F099D0();
  v19 = type metadata accessor for SpeakerIdSamplingData(0);
  sub_258E3A540(a1 + *(v19 + 120), v11);
  v20 = sub_258F09A70();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v11, 1, v20) == 1)
  {
    sub_258E3A4D8(v11);
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v34 = sub_258F09A40();
    v24 = v23;
    (*(v21 + 8))(v11, v20);
    v22 = sub_258DE2990(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = *(v22 + 2);
    v25 = *(v22 + 3);
    if (v26 >= v25 >> 1)
    {
      v22 = sub_258DE2990((v25 > 1), v26 + 1, 1, v22);
    }

    *(v22 + 2) = v26 + 1;
    v27 = &v22[16 * v26];
    *(v27 + 4) = v34;
    *(v27 + 5) = v24;
  }

  (*(v13 + 16))(v6, v17, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  v28 = (a1 + *(v19 + 112));
  v29 = *v28;
  v30 = v28[1];
  objc_allocWithZone(MEMORY[0x277CF15D8]);

  v31 = sub_258EE7258(v6, v22, v29, v30);
  (*(v13 + 8))(v17, v12);
  return v31;
}

uint64_t sub_258EE70C8()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t SpeakerIdSamplingBiomeReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SpeakerIdSamplingBiomeReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_258EE7258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_258F09A20();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(a1, 1, v8) != 1)
  {
    v10 = sub_258F099A0();
    (*(v9 + 8))(a1, v8);
  }

  v11 = sub_258F0A6A0();

  if (a4)
  {
    v12 = sub_258F0A4E0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 initWithTimestamp:v10 onDeviceSampleIdentifiers:v11 enrollmentIdentifier:v12];

  return v13;
}

uint64_t sub_258EE73AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakerIdSamplingData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EE7410(uint64_t a1)
{
  v2 = type metadata accessor for SpeakerIdSamplingData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SpeakerIdSamplingBiomeReporter()
{
  result = qword_27F98A8B0;
  if (!qword_27F98A8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_258EE74EC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D5A950]) init];
  sub_258F0AA80();
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_258E2EA2C(v13);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v3, v14);
  sub_258E0F590(v13);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  sub_258F0AA80();
  if (*(a1 + 16) && (v5 = sub_258E2EA2C(v13), (v6 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v5, v14);
    sub_258E0F590(v13);
    if (swift_dynamicCast())
    {
      v7 = v2;
      LODWORD(v8) = 1769234796;
      [v7 setLatitude:v8];
      LODWORD(v9) = 1735290732;
      [v7 setLongitude:v9];
      goto LABEL_11;
    }
  }

  else
  {
LABEL_8:
    sub_258E0F590(v13);
  }

LABEL_9:
  v7 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v7, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_258DD8000, v7, v10, "#SpeakerIdSamplingCalculator: Unable to fetch location for the current request", v11, 2u);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

LABEL_11:

  return v2;
}

uint64_t SpeakerIdSamplingResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SpeakerIdSamplingResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SpeakerIdSamplingResults.SpeakerIdSamplingData.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SpeakerIdSamplingCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:samplingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults) = a1;
  v17 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v18 = sub_258F0A370();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16 + v17, a2, v18);
  sub_258DE20C0(a3, v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v20 = (v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService);
  v20[3] = sub_258F09C20();
  v20[4] = &off_286A2FA30;
  *v20 = a4;
  v21 = (v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils);
  *v21 = a5;
  v21[1] = a6;
  v22 = type metadata accessor for CAAnalyticsEventSubmitter();
  v23 = swift_allocObject();
  v24 = (v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter);
  v24[3] = v22;
  v24[4] = &off_286A2C648;
  *v24 = v23;
  sub_258F09F30();
  v25 = sub_258F09F20();
  sub_258DE2184(a3, &qword_27F988720, &qword_258F0B830);
  (*(v19 + 8))(a2, v18);
  *(v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bugReporter) = v25;
  type metadata accessor for BiomeResultsWrapperFactory();
  *(v16 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_biomeResultsFactory) = swift_allocObject();
  return v16;
}

uint64_t SpeakerIdSamplingCalculator.init(defaults:logger:sqlFileURL:bookmarkService:samplingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *(v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults) = a1;
  v13 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v14 = sub_258F0A370();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v7 + v13, a2, v14);
  sub_258DE20C0(a3, v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v16 = (v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService);
  v16[3] = sub_258F09C20();
  v16[4] = &off_286A2FA30;
  *v16 = a4;
  v17 = (v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils);
  *v17 = a5;
  v17[1] = a6;
  v18 = type metadata accessor for CAAnalyticsEventSubmitter();
  v19 = swift_allocObject();
  v20 = (v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter);
  v20[3] = v18;
  v20[4] = &off_286A2C648;
  *v20 = v19;
  sub_258F09F30();
  v21 = sub_258F09F20();
  sub_258DE2184(a3, &qword_27F988720, &qword_258F0B830);
  (*(v15 + 8))(a2, v14);
  *(v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bugReporter) = v21;
  type metadata accessor for BiomeResultsWrapperFactory();
  *(v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_biomeResultsFactory) = swift_allocObject();
  return v7;
}

uint64_t sub_258EE7B98(uint64_t a1)
{
  v2[238] = v1;
  v2[237] = a1;
  v3 = type metadata accessor for SpeakerIdSamplingData(0);
  v2[239] = v3;
  v4 = *(v3 - 8);
  v2[240] = v4;
  v5 = *(v4 + 64) + 15;
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v6 = sub_258F09A70();
  v2[243] = v6;
  v7 = *(v6 - 8);
  v2[244] = v7;
  v8 = *(v7 + 64) + 15;
  v2[245] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  v2[249] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8C8, &qword_258F16AA8) - 8) + 64) + 15;
  v2[250] = swift_task_alloc();
  v2[251] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840) - 8) + 64) + 15;
  v2[252] = swift_task_alloc();
  v2[253] = swift_task_alloc();
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();
  v2[258] = swift_task_alloc();
  v2[259] = swift_task_alloc();
  v12 = sub_258F09B00();
  v2[260] = v12;
  v13 = *(v12 - 8);
  v2[261] = v13;
  v14 = *(v13 + 64) + 15;
  v2[262] = swift_task_alloc();
  v15 = sub_258F09A20();
  v2[263] = v15;
  v16 = *(v15 - 8);
  v2[264] = v16;
  v17 = *(v16 + 64) + 15;
  v2[265] = swift_task_alloc();
  v2[266] = swift_task_alloc();
  v2[267] = swift_task_alloc();
  v2[268] = swift_task_alloc();
  v2[269] = swift_task_alloc();
  v2[270] = swift_task_alloc();
  v2[271] = swift_task_alloc();
  v2[272] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EE7EFC, 0, 0);
}

void sub_258EE7EFC()
{
  v405 = v0;
  v401 = *(v0 + 1904);
  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "Sampling Calculator invoked: SpeakerIdSamplingCalculator", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v4 = *(v0 + 2176);
  v5 = *(v0 + 2112);
  v6 = *(v0 + 2104);
  v7 = *(v0 + 2096);
  v8 = *(v0 + 2088);
  v9 = *(v0 + 2080);
  v10 = *(v0 + 1904);

  sub_258F09AC0();
  sub_258F09BB0();
  (*(v8 + 8))(v7, v9);
  v11 = sub_258F09B70();
  v360 = *(v5 + 8);
  v360(v4, v6);
  v12 = *(v10 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils);
  v13 = *(v10 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils + 8);
  v14 = (*(v13 + 72))(v12, v13);
  if (!v15)
  {
    v358 = v11;
    v29 = sub_258F0A350();
    v30 = sub_258F0A820();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_258DD8000, v29, v30, "SpeakerIdSelectionCalculator: Unable to retrieve the siri language.", v31, 2u);
      MEMORY[0x259C9EF40](v31, -1, -1);
    }

    goto LABEL_12;
  }

  v16 = v14;
  v17 = v15;
  v364 = (*(v13 + 16))(v14, v15, v12, v13);
  v18 = v13;
  v20 = v19;
  v361 = v18;
  if ((*(v18 + 8))(v16, v17, v12) != 1)
  {
    v358 = v11;

LABEL_12:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v357 = v16;
  v363 = v20;
  v359 = v17;
  v21 = sub_258F0A350();
  v22 = sub_258F0A810();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_258DD8000, v21, v22, "SQL calculator invoked: SpeakerIdSamplingCalculator", v23, 2u);
    MEMORY[0x259C9EF40](v23, -1, -1);
  }

  v24 = *(v0 + 2112);
  v25 = *(v0 + 2104);
  v26 = *(v0 + 2072);
  v27 = *(v0 + 1904);

  v28 = *(v24 + 56);
  v28(v26, 1, 1, v25);
  sub_258DE03B0();
  v46 = *(v0 + 1904);
  v47 = sub_258DE069C();
  v365 = v28;
  v358 = v11;
  v48 = *(v0 + 1904);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  v49 = *(sub_258F0A190() - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  *(swift_allocObject() + 16) = xmmword_258F0B820;
  v52 = sub_258F0A1B0();
  v54 = v53;
  v55 = swift_allocObject();
  *(v55 + 16) = v52;
  *(v55 + 24) = v54;
  sub_258F0A160();
  v56 = *(v48 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults);
  v344 = v47;
  v57 = sub_258F0A4E0();
  v58 = [v56 BOOLForKey_];

  v59 = sub_258F0A350();
  v60 = sub_258F0A810();
  v61 = os_log_type_enabled(v59, v60);
  if (v58)
  {
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v403 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A720, &v403);
      _os_log_impl(&dword_258DD8000, v59, v60, "%s: Include current date data for aggregation.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x259C9EF40](v63, -1, -1);
      MEMORY[0x259C9EF40](v62, -1, -1);
    }

    v64 = v344;
  }

  else
  {
    if (v61)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v403 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A720, &v403);
      _os_log_impl(&dword_258DD8000, v59, v60, "%s: current date data NOT included for aggregation.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x259C9EF40](v66, -1, -1);
      MEMORY[0x259C9EF40](v65, -1, -1);
    }

    v64 = v344;
    v67 = v344;
  }

  sub_258F0A050();

  v68 = sub_258F0A010();
  v69 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  _s16MetricsFramework13SamplingUtilsC03getC16CountPerDayLimit4fromSiSo14NSUserDefaultsC_tFZ_0(v56);
  if (!v363)
  {

    v83 = sub_258F0A350();
    v84 = sub_258F0A820();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_258DD8000, v83, v84, "#SpeakerIdSamplingCalculator: enrollmentId is nil", v85, 2u);
      MEMORY[0x259C9EF40](v85, -1, -1);
    }

    v86 = *(v0 + 2072);

    sub_258DE2184(v86, &qword_27F988728, &unk_258F0B840);
    goto LABEL_12;
  }

  v342 = v70;
  v397 = v71;
  v72 = *(v0 + 2112);
  v73 = *(v0 + 2104);
  v74 = *(v0 + 2064);
  type metadata accessor for SamplingUtils();
  v403 = v364;
  v404 = v363;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x6F697463656C6553, 0xED0000657461446ELL);

  v75 = v404;
  v394 = v403;
  static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)(v56, v74);
  v76 = *(v72 + 48);
  if (v76(v74, 1, v73) == 1)
  {
    v77 = *(v0 + 2064);

    sub_258DE2184(v77, &qword_27F988728, &unk_258F0B840);

    v78 = sub_258F0A350();
    v79 = sub_258F0A820();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v403 = v81;
      *v80 = 136315138;
      v82 = sub_258DE3018(v394, v75, &v403);

      *(v80 + 4) = v82;
      _os_log_impl(&dword_258DD8000, v78, v79, "#SpeakerIdSamplingCalculator: samplingStartDate for device selection key: %s is nil", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x259C9EF40](v81, -1, -1);
      MEMORY[0x259C9EF40](v80, -1, -1);
    }

    else
    {
    }

    sub_258DE2184(*(v0 + 2072), &qword_27F988728, &unk_258F0B840);
    goto LABEL_12;
  }

  v355 = v76;
  v87 = *(v0 + 2168);
  v88 = *(v0 + 2112);
  v89 = *(v0 + 2104);
  v90 = *(v0 + 2064);
  v91 = *(v0 + 1904);

  v92 = *(v88 + 32);
  v92(v87, v90, v89);

  v93 = sub_258EEB624(v397, v69, v87, v357, v359);

  sub_258DFD060(v342, 0);
  v354 = v92;
  v94 = 0;
  v382 = (v0 + 1088);
  v384 = (v0 + 1056);
  v378 = (v0 + 1248);
  v380 = (v0 + 1184);
  v95 = *(v0 + 1952);
  v362 = *(v0 + 1920);
  v96 = v93 + 64;
  v97 = -1;
  v98 = -1 << *(v93 + 32);
  if (-v98 < 64)
  {
    v97 = ~(-1 << -v98);
  }

  v99 = v97 & *(v93 + 64);
  v343 = (63 - v98) >> 6;
  v345 = *(v0 + 2112);
  v352 = (v345 + 16);
  v388 = (v95 + 56);
  v356 = (v95 + 48);
  v350 = (v95 + 8);
  v351 = (v95 + 16);
  v395 = MEMORY[0x277D84F90];
  v346 = v93 + 64;
  v347 = v93;
  while (1)
  {
    if (v99)
    {
      v349 = v94;
      v102 = v94;
      goto LABEL_47;
    }

    v103 = v343 <= v94 + 1 ? v94 + 1 : v343;
    v104 = v103 - 1;
    do
    {
      v102 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        __break(1u);
        return;
      }

      if (v102 >= v343)
      {
        v318 = *(v0 + 2000);
        v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
        (*(*(v319 - 8) + 56))(v318, 1, 1, v319);
        v348 = 0;
        v349 = v104;
        goto LABEL_48;
      }

      v99 = *(v96 + 8 * v102);
      ++v94;
    }

    while (!v99);
    v349 = v102;
LABEL_47:
    v105 = *(v0 + 2176);
    v106 = *(v0 + 2104);
    v107 = *(v0 + 2000);
    v348 = (v99 - 1) & v99;
    v108 = __clz(__rbit64(v99)) | (v102 << 6);
    (*(v345 + 16))(v105, *(v93 + 48) + *(v345 + 72) * v108, v106);
    v109 = *(*(v93 + 56) + 8 * v108);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
    v111 = *(v110 + 48);
    v354(v107, v105, v106);
    *(v107 + v111) = v109;
    (*(*(v110 - 8) + 56))(v107, 0, 1, v110);

LABEL_48:
    v112 = *(v0 + 2008);
    sub_258E2EAD8(*(v0 + 2000), v112, &qword_27F98A8C8, &qword_258F16AA8);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
    if ((*(*(v113 - 8) + 48))(v112, 1, v113) == 1)
    {
      break;
    }

    v114 = *(v0 + 2160);
    v115 = *(v0 + 2152);
    v116 = *(v0 + 2104);
    v353 = *(*(v0 + 2008) + *(v113 + 48));
    (v354)(v114);
    v117 = *v352;
    (*v352)(v115, v114, v116);
    v118 = sub_258F0A350();
    v119 = sub_258F0A810();
    v120 = os_log_type_enabled(v118, v119);
    v121 = *(v0 + 2152);
    v122 = *(v0 + 2104);
    if (v120)
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v403 = v124;
      *v123 = 136315138;
      sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
      v125 = sub_258F0AD60();
      v127 = v126;
      v360(v121, v122);
      v128 = sub_258DE3018(v125, v127, &v403);

      *(v123 + 4) = v128;
      _os_log_impl(&dword_258DD8000, v118, v119, "#SpeakerIdSamplingCalculator: processing for date %s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v124);
      MEMORY[0x259C9EF40](v124, -1, -1);
      MEMORY[0x259C9EF40](v123, -1, -1);
    }

    else
    {

      v360(v121, v122);
    }

    v129 = *(v0 + 2104);
    v130 = *(v0 + 2056);
    sub_258DE20C0(*(v0 + 2072), v130, &qword_27F988728, &unk_258F0B840);
    LODWORD(v129) = v355(v130, 1, v129);
    sub_258DE2184(v130, &qword_27F988728, &unk_258F0B840);
    if (v129 == 1)
    {
      goto LABEL_58;
    }

    v131 = *(v0 + 2104);
    v132 = *(v0 + 2048);
    sub_258DE20C0(*(v0 + 2072), v132, &qword_27F988728, &unk_258F0B840);
    v133 = v355(v132, 1, v131);
    v134 = *(v0 + 2104);
    v135 = *(v0 + 2048);
    if (v133 == 1)
    {
      v136 = *(v0 + 2144);
      sub_258F09970();
      if (v355(v135, 1, v134) != 1)
      {
        sub_258DE2184(*(v0 + 2048), &qword_27F988728, &unk_258F0B840);
      }
    }

    else
    {
      v354(*(v0 + 2144), *(v0 + 2048), *(v0 + 2104));
    }

    v137 = *(v0 + 2160);
    v138 = *(v0 + 2144);
    v139 = *(v0 + 2104);
    v140 = sub_258F099B0();
    v360(v138, v139);
    if (v140)
    {
LABEL_58:
      v141 = *(v0 + 2160);
      v142 = *(v0 + 2136);
      v143 = *(v0 + 2104);
      v144 = *(v0 + 2072);
      sub_258DE2184(v144, &qword_27F988728, &unk_258F0B840);
      v117(v144, v141, v143);
      v365(v144, 0, 1, v143);
      v117(v142, v141, v143);
      v145 = sub_258F0A350();
      v146 = sub_258F0A810();
      v147 = os_log_type_enabled(v145, v146);
      v148 = *(v0 + 2136);
      v149 = *(v0 + 2104);
      if (v147)
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v403 = v151;
        *v150 = 136315138;
        sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
        v152 = sub_258F0AD60();
        v154 = v153;
        v360(v148, v149);
        v155 = sub_258DE3018(v152, v154, &v403);

        *(v150 + 4) = v155;
        _os_log_impl(&dword_258DD8000, v145, v146, "#SpeakerIdSamplingCalculator: mostRecentDate %s", v150, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v151);
        MEMORY[0x259C9EF40](v151, -1, -1);
        MEMORY[0x259C9EF40](v150, -1, -1);
      }

      else
      {

        v360(v148, v149);
      }
    }

    v156 = *(v353 + 16);
    if (v156)
    {
      v157 = (v353 + 32);
      while (1)
      {
        v390 = v157;
        v392 = v156;
        v158 = *v157;

        v159 = sub_258F0A350();
        v160 = sub_258F0A810();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v403 = v162;
          *v161 = 136315138;
          v163 = sub_258F0A420();
          v165 = sub_258DE3018(v163, v164, &v403);

          *(v161 + 4) = v165;
          _os_log_impl(&dword_258DD8000, v159, v160, "#SpeakerIdSamplingCalculator: Current Sample %s", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v162);
          MEMORY[0x259C9EF40](v162, -1, -1);
          MEMORY[0x259C9EF40](v161, -1, -1);
        }

        v365(*(v0 + 2040), 1, 1, *(v0 + 2104));
        *(v0 + 1640) = 0xD000000000000017;
        *(v0 + 1648) = 0x8000000258F1EC00;
        sub_258F0AA80();
        if (*(v158 + 16) && (v166 = sub_258E2EA2C(v0 + 56), (v167 & 1) != 0))
        {
          sub_258DE4090(*(v158 + 56) + 32 * v166, v0 + 736);
        }

        else
        {
          *(v0 + 736) = 0u;
          *(v0 + 752) = 0u;
        }

        sub_258E0F590(v0 + 56);
        if (!*(v0 + 760))
        {
          break;
        }

        sub_258E76E10();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_76;
        }

        v168 = *(v0 + 2104);
        v169 = *(v0 + 2040);
        v170 = *(v0 + 2032);
        v171 = *(v0 + 1888);
        v398 = [v171 unsignedLongLongValue];
        sub_258F099D0();

        sub_258DE2184(v169, &qword_27F988728, &unk_258F0B840);
        v365(v170, 0, 1, v168);
        sub_258E2EAD8(v170, v169, &qword_27F988728, &unk_258F0B840);
LABEL_77:
        v172 = *(v0 + 1984);
        v173 = *(v0 + 1944);
        v174 = *v388;
        (*v388)(*(v0 + 1992), 1, 1, v173);
        v386 = v174;
        v174(v172, 1, 1, v173);
        *(v0 + 1496) = 0x5F74736575716572;
        *(v0 + 1504) = 0xEA00000000006469;
        sub_258F0AA80();
        if (*(v158 + 16) && (v175 = sub_258E2EA2C(v0 + 176), (v176 & 1) != 0))
        {
          sub_258DE4090(*(v158 + 56) + 32 * v175, v0 + 864);
        }

        else
        {
          *(v0 + 864) = 0u;
          *(v0 + 880) = 0u;
        }

        sub_258E0F590(v0 + 176);
        if (!*(v0 + 888))
        {
          sub_258DE2184(v0 + 864, &qword_27F989868, &unk_258F12D70);
LABEL_88:
          v191 = sub_258EEF518(v158);
          v376 = sub_258EEF5F8(v158);
          *(v0 + 1864) = 0x615F6E6F69746F6DLL;
          *(v0 + 1872) = 0xEF79746976697463;
          sub_258F0AA80();
          if (*(v158 + 16) && (v192 = sub_258E2EA2C(v0 + 296), (v193 & 1) != 0))
          {
            sub_258DE4090(*(v158 + 56) + 32 * v192, v380);
          }

          else
          {
            *v380 = 0u;
            *(v0 + 1200) = 0u;
          }

          sub_258E0F590(v0 + 296);
          if (*(v0 + 1208))
          {
            if (swift_dynamicCast())
            {
              v194 = *(v0 + 1720);
              v195 = *(v0 + 1728);
              v196 = sub_258F0A4E0();

              v197 = v196;
              if ([v197 isEqualToString:@"ORCHMOTIONACTIVITY_UNKNOWN"])
              {
                v373 = 0;
              }

              else
              {
                if ([v197 isEqualToString:@"ORCHMOTIONACTIVITY_MOVING"])
                {
                  v214 = 1;
                }

                else if ([v197 isEqualToString:@"ORCHMOTIONACTIVITY_STATIONARY"])
                {
                  v214 = 2;
                }

                else if ([v197 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_MOVING"])
                {
                  v214 = 3;
                }

                else if ([v197 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_STATIC"])
                {
                  v214 = 4;
                }

                else if ([v197 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_STATIONARY"])
                {
                  v214 = 5;
                }

                else
                {
                  v214 = 0;
                }

                v373 = v214;
              }

LABEL_121:
              *(v0 + 1480) = 0x6F635F6F69647561;
              *(v0 + 1488) = 0xEB00000000636564;
              sub_258F0AA80();
              if (*(v158 + 16) && (v225 = sub_258E2EA2C(v0 + 416), (v226 & 1) != 0))
              {
                sub_258DE4090(*(v158 + 56) + 32 * v225, v378);
              }

              else
              {
                *v378 = 0u;
                *(v0 + 1264) = 0u;
              }

              sub_258E0F590(v0 + 416);
              if (*(v0 + 1272))
              {
                if (swift_dynamicCast())
                {
                  v227 = *(v0 + 1736);
                  v228 = *(v0 + 1744);
                  v229 = sub_258F0A4E0();

                  v230 = v229;
                  if ([v230 isEqualToString:@"MHASRAUDIOCODEC_UNKNOWN"])
                  {
                    v370 = 0;
                  }

                  else
                  {
                    if ([v230 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_8000HZ_VALUE"])
                    {
                      v231 = 1;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_11025HZ_VALUE"])
                    {
                      v231 = 2;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_16000HZ_VALUE"])
                    {
                      v231 = 3;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_22050HZ_VALUE"])
                    {
                      v231 = 4;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_32000HZ_VALUE"])
                    {
                      v231 = 5;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_NB_QUALITY7_VALUE"])
                    {
                      v231 = 6;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_WB_QUALITY8_VALUE"])
                    {
                      v231 = 7;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_8000HZ_VALUE"])
                    {
                      v231 = 8;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_16000HZ_VALUE"])
                    {
                      v231 = 9;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_8000HZ_VALUE"])
                    {
                      v231 = 10;
                    }

                    else if ([v230 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_16000HZ_VALUE"])
                    {
                      v231 = 11;
                    }

                    else
                    {
                      v231 = 0;
                    }

                    v370 = v231;
                  }

LABEL_156:
                  strcpy((v0 + 1544), "audio_source");
                  *(v0 + 1557) = 0;
                  *(v0 + 1558) = -5120;
                  sub_258F0AA80();
                  if (*(v158 + 16) && (v232 = sub_258E2EA2C(v0 + 536), (v233 & 1) != 0))
                  {
                    sub_258DE4090(*(v158 + 56) + 32 * v232, v384);
                  }

                  else
                  {
                    *v384 = 0u;
                    *(v0 + 1072) = 0u;
                  }

                  sub_258E0F590(v0 + 536);
                  if (*(v0 + 1080))
                  {
                    if (swift_dynamicCast())
                    {
                      v234 = *(v0 + 1752);
                      v235 = *(v0 + 1760);
                      v236 = sub_258F0A4E0();

                      v237 = v236;
                      if ([v237 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_UNKNOWN"])
                      {
                        v368 = 0;
                      }

                      else
                      {
                        if ([v237 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_LINEIN"])
                        {
                          v238 = 1;
                        }

                        else if ([v237 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BUILTIN_MIC"])
                        {
                          v238 = 2;
                        }

                        else if ([v237 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_WIREDHEADSET_MIC"])
                        {
                          v238 = 3;
                        }

                        else if ([v237 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BLUETOOTH_HANDSFREE_DEVICE"])
                        {
                          v238 = 4;
                        }

                        else if ([v237 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_USB_AUDIO"])
                        {
                          v238 = 5;
                        }

                        else if ([v237 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_CAR_AUDIO"])
                        {
                          v238 = 6;
                        }

                        else if ([v237 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BLUETOOTH_DOAP_DEVICE"])
                        {
                          v238 = 7;
                        }

                        else if ([v237 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_ENHANCED_CARPLAY_DEVICE"])
                        {
                          v238 = 8;
                        }

                        else
                        {
                          v238 = 0;
                        }

                        v368 = v238;
                      }

LABEL_185:
                      *(v0 + 1592) = 0x6B7361745F727361;
                      *(v0 + 1600) = 0xE800000000000000;
                      sub_258F0AA80();
                      if (*(v158 + 16) && (v239 = sub_258E2EA2C(v0 + 656), (v240 & 1) != 0))
                      {
                        sub_258DE4090(*(v158 + 56) + 32 * v239, v0 + 960);
                      }

                      else
                      {
                        *(v0 + 960) = 0u;
                        *(v0 + 976) = 0u;
                      }

                      sub_258E0F590(v0 + 656);
                      if (*(v0 + 984))
                      {
                        if (swift_dynamicCast())
                        {
                          v241 = *(v0 + 1400);
                          v242 = *(v0 + 1408);
                          v243 = sub_258F0A4E0();

                          v244 = v243;
                          if ([v244 isEqualToString:@"ASRDATAPACKTASK_UNKNOWN"])
                          {
                            v245 = 0;
                          }

                          else if ([v244 isEqualToString:@"ASRDATAPACKTASK_SEARCH_OR_MESSAGING"])
                          {
                            v245 = 1;
                          }

                          else if ([v244 isEqualToString:@"ASRDATAPACKTASK_DICTATION"])
                          {
                            v245 = 2;
                          }

                          else if ([v244 isEqualToString:@"ASRDATAPACKTASK_WEB_SEARCH"])
                          {
                            v245 = 3;
                          }

                          else if ([v244 isEqualToString:@"ASRDATAPACKTASK_TSHOT"])
                          {
                            v245 = 4;
                          }

                          else if ([v244 isEqualToString:@"ASRDATAPACKTASK_SIRI_DICTATION"])
                          {
                            v245 = 5;
                          }

                          else if ([v244 isEqualToString:@"ASRDATAPACKTASK_DICTATION_WITH_VOICE_COMMAND"])
                          {
                            v245 = 6;
                          }

                          else if ([v244 isEqualToString:@"ASRDATAPACKTASK_BETO"])
                          {
                            v245 = 7;
                          }

                          else if ([v244 isEqualToString:@"ASRDATAPACKTASK_BETO_DICTATION"])
                          {
                            v245 = 8;
                          }

                          else
                          {
                            v245 = 0;
                          }

                          goto LABEL_213;
                        }
                      }

                      else
                      {
                        sub_258DE2184(v0 + 960, &qword_27F989868, &unk_258F12D70);
                      }

                      v245 = 0;
LABEL_213:
                      *(v0 + 1624) = 0xD000000000000015;
                      *(v0 + 1632) = 0x8000000258F1EC20;
                      sub_258F0AA80();
                      if (*(v158 + 16) && (v246 = sub_258E2EA2C(v0 + 16), (v247 & 1) != 0))
                      {
                        sub_258DE4090(*(v158 + 56) + 32 * v246, v382);
                      }

                      else
                      {
                        *v382 = 0u;
                        *(v0 + 1104) = 0u;
                      }

                      sub_258E0F590(v0 + 16);
                      if (*(v0 + 1112))
                      {
                        if (swift_dynamicCast())
                        {
                          v248 = *(v0 + 1848);
                          v249 = *(v0 + 1856);
                          v250 = sub_258F0A4E0();

                          v251 = v250;
                          if ([v251 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_UNKNOWN"])
                          {
                            v252 = 0;
                          }

                          else if ([v251 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_MITIGATED"])
                          {
                            v252 = 1;
                          }

                          else if ([v251 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_CANCEL_COMMAND"])
                          {
                            v252 = 2;
                          }

                          else
                          {
                            v252 = 0;
                          }

LABEL_229:
                          strcpy((v0 + 1576), "trigger_phrase");
                          *(v0 + 1591) = -18;
                          sub_258F0AA80();
                          if (*(v158 + 16))
                          {
                            v253 = sub_258E2EA2C(v0 + 696);
                            v254 = v398;
                            if (v255)
                            {
                              sub_258DE4090(*(v158 + 56) + 32 * v253, v0 + 832);
                            }

                            else
                            {
                              *(v0 + 832) = 0u;
                              *(v0 + 848) = 0u;
                            }
                          }

                          else
                          {
                            *(v0 + 832) = 0u;
                            *(v0 + 848) = 0u;
                            v254 = v398;
                          }

                          sub_258E0F590(v0 + 696);
                          if (*(v0 + 856))
                          {
                            if (swift_dynamicCast())
                            {
                              v256 = _s16MetricsFramework13SamplingUtilsC24getSISchemaTriggerPhrase3forSo0fgH0VSS_tFZ_0(*(v0 + 1832), *(v0 + 1840));

LABEL_239:
                              v257 = *(v0 + 1904);
                              v366 = sub_258EE74EC(v158);
                              v258 = type metadata accessor for SpeakerIdSamplingDataBuilderImpl(0);
                              v259 = *(v258 + 48);
                              v260 = *(v258 + 52);
                              swift_allocObject();
                              v261 = sub_258EF13A8();
                              v262 = (v261 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId);
                              v263 = *(v261 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId + 8);
                              *v262 = v364;
                              v262[1] = v363;

                              *(v261 + 24) = v254;
                              *(v261 + 32) = 0;
                              *(v0 + 1560) = 0x745F656369766564;
                              *(v0 + 1568) = 0xEB00000000657079;

                              sub_258F0AA80();
                              sub_258E262F8(v0 + 616, v158, (v0 + 928));
                              sub_258E0F590(v0 + 616);
                              if (*(v0 + 952))
                              {
                                v264 = swift_dynamicCast();
                                v265 = *(v0 + 1816);
                                v266 = *(v0 + 1824);
                                if (!v264)
                                {
                                  v265 = 0;
                                  v266 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v0 + 928, &qword_27F989868, &unk_258F12D70);
                                v265 = 0;
                                v266 = 0;
                              }

                              v267 = *(v261 + 48);
                              *(v261 + 40) = v265;
                              *(v261 + 48) = v266;

                              strcpy((v0 + 1528), "system_build");
                              *(v0 + 1541) = 0;
                              *(v0 + 1542) = -5120;
                              sub_258F0AA80();
                              sub_258E262F8(v0 + 576, v158, (v0 + 992));
                              sub_258E0F590(v0 + 576);
                              if (*(v0 + 1016))
                              {
                                v268 = swift_dynamicCast();
                                v269 = *(v0 + 1800);
                                v270 = *(v0 + 1808);
                                if (!v268)
                                {
                                  v269 = 0;
                                  v270 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v0 + 992, &qword_27F989868, &unk_258F12D70);
                                v269 = 0;
                                v270 = 0;
                              }

                              v271 = *(v261 + 64);
                              *(v261 + 56) = v269;
                              *(v261 + 64) = v270;

                              v272 = *(v261 + 104);
                              *(v261 + 104) = v191;

                              *(v0 + 1512) = 0xD000000000000019;
                              *(v0 + 1520) = 0x8000000258F1EC40;
                              v399 = v191;
                              sub_258F0AA80();
                              sub_258E262F8(v0 + 496, v158, (v0 + 1024));
                              sub_258E0F590(v0 + 496);
                              if (*(v0 + 1048))
                              {
                                v273 = swift_dynamicCast();
                                v274 = *(v0 + 1784);
                                v275 = *(v0 + 1792);
                                if (!v273)
                                {
                                  v274 = 0;
                                  v275 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v0 + 1024, &qword_27F989868, &unk_258F12D70);
                                v274 = 0;
                                v275 = 0;
                              }

                              v276 = *(v261 + 80);
                              *(v261 + 72) = v274;
                              *(v261 + 80) = v275;

                              *(v0 + 1448) = 0xD00000000000001ALL;
                              *(v0 + 1456) = 0x8000000258F1EC60;
                              sub_258F0AA80();
                              sub_258E262F8(v0 + 456, v158, (v0 + 1120));
                              sub_258E0F590(v0 + 456);
                              if (*(v0 + 1144))
                              {
                                v277 = swift_dynamicCast();
                                v278 = *(v0 + 1768);
                                v279 = *(v0 + 1776);
                                if (!v277)
                                {
                                  v278 = 0;
                                  v279 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v0 + 1120, &qword_27F989868, &unk_258F12D70);
                                v278 = 0;
                                v279 = 0;
                              }

                              v280 = *(v261 + 96);
                              *(v261 + 88) = v278;
                              *(v261 + 96) = v279;

                              *(v261 + 112) = v376;
                              *(v261 + 116) = BYTE4(v376) & 1;
                              *(v261 + 120) = v373;
                              *(v261 + 124) = 0;
                              *(v0 + 1432) = 0xD000000000000012;
                              *(v0 + 1440) = 0x8000000258F1EC80;
                              sub_258F0AA80();
                              sub_258E262F8(v0 + 376, v158, (v0 + 1216));
                              sub_258E0F590(v0 + 376);
                              if (*(v0 + 1240))
                              {
                                v281 = swift_dynamicCast();
                                v282 = *(v0 + 2184);
                                if (!v281)
                                {
                                  v282 = 2;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v0 + 1216, &qword_27F989868, &unk_258F12D70);
                                v282 = 2;
                              }

                              *(v261 + 125) = v282;
                              *(v0 + 1416) = 0xD000000000000010;
                              *(v0 + 1424) = 0x8000000258F1ECA0;
                              sub_258F0AA80();
                              sub_258E262F8(v0 + 336, v158, (v0 + 768));
                              sub_258E0F590(v0 + 336);
                              if (*(v0 + 792))
                              {
                                v283 = swift_dynamicCast();
                                v284 = *(v0 + 2185);
                                if (!v283)
                                {
                                  v284 = 2;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v0 + 768, &qword_27F989868, &unk_258F12D70);
                                v284 = 2;
                              }

                              *(v261 + 126) = v284;
                              *(v0 + 1464) = 0xD000000000000012;
                              *(v0 + 1472) = 0x8000000258F1ECC0;
                              sub_258F0AA80();
                              sub_258E262F8(v0 + 256, v158, (v0 + 1280));
                              sub_258E0F590(v0 + 256);
                              if (*(v0 + 1304))
                              {
                                v285 = swift_dynamicCast();
                                v286 = *(v0 + 2186);
                                if (!v285)
                                {
                                  v286 = 2;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v0 + 1280, &qword_27F989868, &unk_258F12D70);
                                v286 = 2;
                              }

                              *(v261 + 127) = v286;
                              *(v261 + 128) = v370;
                              *(v261 + 132) = 0;
                              *(v261 + 136) = v368;
                              *(v261 + 140) = 0;
                              *(v261 + 144) = v245;
                              *(v261 + 148) = 0;
                              *(v0 + 1384) = 0xD000000000000019;
                              *(v0 + 1392) = 0x8000000258F1ECE0;
                              sub_258F0AA80();
                              sub_258E262F8(v0 + 216, v158, (v0 + 1152));
                              sub_258E0F590(v0 + 216);
                              if (*(v0 + 1176))
                              {
                                v287 = swift_dynamicCast();
                                v288 = *(v0 + 1880);
                                if (!v287)
                                {
                                  v288 = 0;
                                }

                                v289 = v287 ^ 1;
                              }

                              else
                              {
                                sub_258DE2184(v0 + 1152, &qword_27F989868, &unk_258F12D70);
                                v288 = 0;
                                v289 = 1;
                              }

                              v290 = *(v0 + 1992);
                              v291 = *(v0 + 1984);
                              v292 = *(v0 + 1976);
                              v293 = *(v0 + 1968);
                              v294 = *(v0 + 1944);
                              *(v261 + 152) = v288;
                              *(v261 + 160) = v289;
                              *(v261 + 224) = v252;
                              *(v261 + 228) = 0;
                              v295 = v261 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase;
                              *v295 = v256;
                              *(v295 + 4) = 0;
                              sub_258DE20C0(v291, v292, &qword_27F988730, &unk_258F0F8E0);
                              v296 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId;
                              swift_beginAccess();
                              sub_258EF0230(v292, v261 + v296);
                              swift_endAccess();
                              v297 = *(v261 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_location);
                              *(v261 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_location) = v366;

                              v298 = v366;
                              sub_258F09A60();
                              v386(v292, 0, 1, v294);
                              sub_258E2EAD8(v292, v293, &qword_27F988730, &unk_258F0F8E0);
                              v299 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId;
                              swift_beginAccess();
                              sub_258EF0230(v293, v261 + v299);
                              swift_endAccess();
                              sub_258DE20C0(v290, v292, &qword_27F988730, &unk_258F0F8E0);
                              v300 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_requestId;
                              swift_beginAccess();
                              sub_258EF0230(v292, v261 + v300);
                              swift_endAccess();
                              strcpy((v0 + 1608), "post_itn_1best");
                              *(v0 + 1623) = -18;
                              sub_258F0AA80();
                              sub_258E262F8(v0 + 136, v158, (v0 + 896));
                              sub_258E0F590(v0 + 136);
                              if (*(v0 + 920))
                              {
                                v301 = swift_dynamicCast();
                                v302 = *(v0 + 1688);
                                v303 = *(v0 + 1696);
                                if (!v301)
                                {
                                  v302 = 0;
                                  v303 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v0 + 896, &qword_27F989868, &unk_258F12D70);
                                v302 = 0;
                                v303 = 0;
                              }

                              v304 = *(v261 + 176);
                              *(v261 + 168) = v302;
                              *(v261 + 176) = v303;

                              *(v0 + 1656) = 0x616D6F645F627573;
                              *(v0 + 1664) = 0xEA00000000006E69;
                              sub_258F0AA80();
                              sub_258E262F8(v0 + 96, v158, (v0 + 800));

                              sub_258E0F590(v0 + 96);
                              if (*(v0 + 824))
                              {
                                v305 = swift_dynamicCast();
                                v306 = *(v0 + 1672);
                                v307 = *(v0 + 1680);
                                if (!v305)
                                {
                                  v306 = 0;
                                  v307 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v0 + 800, &qword_27F989868, &unk_258F12D70);
                                v306 = 0;
                                v307 = 0;
                              }

                              v308 = *(v0 + 1936);
                              v309 = *(v0 + 1928);
                              v310 = *(v261 + 192);
                              *(v261 + 184) = v306;
                              *(v261 + 192) = v307;

                              sub_258EF07B8(v308);

                              sub_258EE73AC(v308, v309);
                              v311 = v395;
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v311 = sub_258DE2D68(0, v395[2] + 1, 1, v395);
                              }

                              v313 = v311[2];
                              v312 = v311[3];
                              if (v313 >= v312 >> 1)
                              {
                                v395 = sub_258DE2D68(v312 > 1, v313 + 1, 1, v311);
                              }

                              else
                              {
                                v395 = v311;
                              }

                              v314 = *(v0 + 2040);
                              v315 = *(v0 + 1992);
                              v316 = *(v0 + 1936);
                              v317 = *(v0 + 1928);

                              sub_258EE7410(v316);
                              sub_258DE2184(v315, &qword_27F988730, &unk_258F0F8E0);
                              sub_258DE2184(v314, &qword_27F988728, &unk_258F0B840);
                              v395[2] = v313 + 1;
                              sub_258EF02A0(v317, v395 + ((*(v362 + 80) + 32) & ~*(v362 + 80)) + *(v362 + 72) * v313);
                              goto LABEL_65;
                            }
                          }

                          else
                          {
                            sub_258DE2184(v0 + 832, &qword_27F989868, &unk_258F12D70);
                          }

                          v256 = 0;
                          goto LABEL_239;
                        }
                      }

                      else
                      {
                        sub_258DE2184(v382, &qword_27F989868, &unk_258F12D70);
                      }

                      v252 = 0;
                      goto LABEL_229;
                    }
                  }

                  else
                  {
                    sub_258DE2184(v384, &qword_27F989868, &unk_258F12D70);
                  }

                  v368 = 0;
                  goto LABEL_185;
                }
              }

              else
              {
                sub_258DE2184(v378, &qword_27F989868, &unk_258F12D70);
              }

              v370 = 0;
              goto LABEL_156;
            }
          }

          else
          {
            sub_258DE2184(v380, &qword_27F989868, &unk_258F12D70);
          }

          v373 = 0;
          goto LABEL_121;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_88;
        }

        v177 = *(v0 + 1992);
        v178 = *(v0 + 1984);
        v179 = *(v0 + 1976);
        v180 = *(v0 + 1704);
        v181 = *(v0 + 1712);
        sub_258F09A30();
        sub_258DE2184(v177, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v179, v177, &qword_27F988730, &unk_258F0F8E0);
        v182 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970_];
        (*(v361 + 96))(v180, v181, v357, v359, v182);

        sub_258EF0230(v179, v178);

        v183 = sub_258F0A350();
        v184 = sub_258F0A810();

        v375 = v180;
        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          v372 = swift_slowAlloc();
          v403 = v372;
          *v185 = 136315906;
          *(v185 + 4) = sub_258DE3018(v180, v181, &v403);
          *(v185 + 12) = 2080;
          *(v185 + 14) = sub_258DE3018(v357, v359, &v403);
          *(v185 + 22) = 2112;
          v187 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970_];
          *(v185 + 24) = v187;
          *v186 = v187;
          *(v185 + 32) = 2048;
          *(v185 + 34) = v398;
          _os_log_impl(&dword_258DD8000, v183, v184, "#SpeakerIdSamplingCalculator: SpeakerIdSamplingCalculator requestIdString: %s, siriLanguage: %s, date: %@ startDatestampInDaysSince1970: %llu)", v185, 0x2Au);
          sub_258DE2184(v186, &qword_27F988C78, &qword_258F11A20);
          MEMORY[0x259C9EF40](v186, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x259C9EF40](v372, -1, -1);
          MEMORY[0x259C9EF40](v185, -1, -1);
        }

        v188 = v181;
        v189 = *(v0 + 1984);
        v190 = *(v0 + 1944);
        if ((*v356)(v189, 1, v190))
        {
        }

        else
        {
          v198 = *(v0 + 2104);
          v199 = *(v0 + 2040);
          v200 = *(v0 + 2024);
          v201 = *(v0 + 1960);
          (*v351)(v201, v189, v190);
          v202 = sub_258F09A40();
          v204 = v203;
          (*v350)(v201, v190);
          sub_258DE20C0(v199, v200, &qword_27F988728, &unk_258F0B840);
          if (v355(v200, 1, v198) == 1)
          {
            v205 = *(v0 + 2024);

            sub_258DE2184(v205, &qword_27F988728, &unk_258F0B840);
          }

          else
          {
            v215 = *(v0 + 2128);
            v354(v215, *(v0 + 2024), *(v0 + 2104));
            v216 = (*(v361 + 80))(v375, v188, v202, v204, v215);

            if (v216)
            {

              v217 = sub_258F0A350();
              v218 = sub_258F0A810();

              v219 = os_log_type_enabled(v217, v218);
              v220 = *(v0 + 2128);
              v221 = *(v0 + 2104);
              if (v219)
              {
                v222 = swift_slowAlloc();
                v223 = swift_slowAlloc();
                v403 = v223;
                *v222 = 136315138;
                v224 = sub_258DE3018(v375, v188, &v403);

                *(v222 + 4) = v224;
                _os_log_impl(&dword_258DD8000, v217, v218, "#SpeakerIdSamplingCalculator: upload: %s audio to server succeed", v222, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v223);
                MEMORY[0x259C9EF40](v223, -1, -1);
                MEMORY[0x259C9EF40](v222, -1, -1);
              }

              else
              {
              }

              v360(v220, v221);
              goto LABEL_88;
            }

            v360(*(v0 + 2128), *(v0 + 2104));
          }
        }

        v206 = sub_258F0A350();
        v207 = sub_258F0A810();

        v208 = os_log_type_enabled(v206, v207);
        v209 = *(v0 + 2040);
        v210 = *(v0 + 1992);
        if (v208)
        {
          v211 = swift_slowAlloc();
          v212 = swift_slowAlloc();
          v403 = v212;
          *v211 = 136315138;
          v213 = sub_258DE3018(v375, v188, &v403);

          *(v211 + 4) = v213;
          _os_log_impl(&dword_258DD8000, v206, v207, "#SpeakerIdSamplingCalculator: Unable to submit request: %s to upload audio, skipping current sample.", v211, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v212);
          MEMORY[0x259C9EF40](v212, -1, -1);
          MEMORY[0x259C9EF40](v211, -1, -1);
        }

        else
        {
        }

        sub_258DE2184(v210, &qword_27F988730, &unk_258F0F8E0);
        sub_258DE2184(v209, &qword_27F988728, &unk_258F0B840);
LABEL_65:
        sub_258DE2184(*(v0 + 1984), &qword_27F988730, &unk_258F0F8E0);
        v157 = v390 + 1;
        v156 = v392 - 1;
        if (v392 == 1)
        {
          goto LABEL_36;
        }
      }

      sub_258DE2184(v0 + 736, &qword_27F989868, &unk_258F12D70);
LABEL_76:
      v398 = 0;
      goto LABEL_77;
    }

LABEL_36:
    v100 = *(v0 + 2160);
    v101 = *(v0 + 2104);

    v360(v100, v101);
    v96 = v346;
    v93 = v347;
    v99 = v348;
    v94 = v349;
  }

  v320 = *(v0 + 2104);
  v321 = *(v0 + 2072);
  v322 = *(v0 + 2016);

  sub_258DE20C0(v321, v322, &qword_27F988728, &unk_258F0B840);
  if (v355(v322, 1, v320) == 1)
  {
    sub_258DE2184(*(v0 + 2016), &qword_27F988728, &unk_258F0B840);
  }

  else
  {
    v323 = *(v0 + 2120);
    v324 = *(v0 + 2104);
    v354(v323, *(v0 + 2016), v324);
    (*(v361 + 88))(v323);
    v360(v323, v324);
  }

  v325 = sub_258F0A350();
  v326 = sub_258F0A810();
  if (os_log_type_enabled(v325, v326))
  {
    v327 = swift_slowAlloc();
    *v327 = 134217984;
    *(v327 + 4) = v395[2];
    _os_log_impl(&dword_258DD8000, v325, v326, "#SpeakerIdSamplingCalculator: SQL calculator completed: SpeakerIdSamplingCalculator query yielded %ld results", v327, 0xCu);
    MEMORY[0x259C9EF40](v327, -1, -1);
  }

  v328 = sub_258F0A350();
  v329 = sub_258F0A810();
  v330 = os_log_type_enabled(v328, v329);
  v331 = *(v0 + 2168);
  v332 = *(v0 + 2104);
  v333 = *(v0 + 2072);
  if (v330)
  {
    v334 = *(v0 + 1912);
    v335 = swift_slowAlloc();
    v336 = swift_slowAlloc();
    *v335 = 136315138;
    v403 = v336;

    v338 = MEMORY[0x259C9DF80](v337, v334);
    v340 = v339;

    v341 = sub_258DE3018(v338, v340, &v403);

    *(v335 + 4) = v341;
    _os_log_impl(&dword_258DD8000, v328, v329, "#SpeakerIdSamplingCalculator: output %s", v335, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v336);
    MEMORY[0x259C9EF40](v336, -1, -1);
    MEMORY[0x259C9EF40](v335, -1, -1);
  }

  v360(v331, v332);
  sub_258DE2184(v333, &qword_27F988728, &unk_258F0B840);
  v32 = v395;
LABEL_13:
  v33 = MEMORY[0x277D84F90];
  v34 = *(v0 + 2176);
  v35 = *(v0 + 2168);
  v36 = *(v0 + 2160);
  v37 = *(v0 + 2152);
  v38 = *(v0 + 2144);
  v39 = *(v0 + 2136);
  v40 = *(v0 + 2128);
  v41 = *(v0 + 2120);
  v42 = *(v0 + 2096);
  v43 = *(v0 + 2072);
  v367 = *(v0 + 2064);
  v369 = *(v0 + 2056);
  v371 = *(v0 + 2048);
  v374 = *(v0 + 2040);
  v377 = *(v0 + 2032);
  v379 = *(v0 + 2024);
  v381 = *(v0 + 2016);
  v383 = *(v0 + 2008);
  v385 = *(v0 + 2000);
  v387 = *(v0 + 1992);
  v389 = *(v0 + 1984);
  v391 = *(v0 + 1976);
  v393 = *(v0 + 1968);
  v396 = *(v0 + 1960);
  v400 = *(v0 + 1936);
  v402 = *(v0 + 1928);
  v44 = *(v0 + 1896);
  *v44 = v358;
  v44[1] = v33;
  v44[2] = v32;

  v45 = *(v0 + 8);

  v45();
}

uint64_t sub_258EEB624(unint64_t a1, uint64_t a2, char *a3, void (**a4)(char *, uint64_t, uint64_t), unint64_t a5)
{
  v172 = a4;
  v148 = a3;
  v171 = a2;
  v142 = a1;
  v7 = sub_258F09AF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v163 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_258F09B00();
  v12 = *(v159 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v159, v14);
  v16 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v134 - v20;
  v145 = sub_258F09A20();
  v154 = *(v145 - 8);
  v22 = *(v154 + 64);
  v24 = MEMORY[0x28223BE20](v145, v23);
  v141 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v134 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v139 = &v134 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v147 = &v134 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v169 = &v134 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v149 = &v134 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8C8, &qword_258F16AA8);
  v42 = *(*(v41 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v41 - 8, v43);
  v167 = &v134 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v166 = &v134 - v47;
  v168 = v5;
  v143 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v48 = sub_258F0A350();
  v49 = sub_258F0A810();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v29;
    v51 = a5;
    v52 = v12;
    v53 = v48;
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_258DD8000, v53, v49, "#SpeakerIdSamplingCalculator: randomRowsForEachDate", v54, 2u);
    v55 = v54;
    v48 = v53;
    v12 = v52;
    a5 = v51;
    v29 = v50;
    MEMORY[0x259C9EF40](v55, -1, -1);
  }

  v56 = sub_258EED418(v171);
  v57 = sub_258EEC45C(v172, a5, v56);

  result = sub_258DFC258(MEMORY[0x277D84F90]);
  v144 = result;
  v60 = 0;
  v61 = *(v57 + 64);
  v146 = v57 + 64;
  v153 = v57;
  v62 = 1 << *(v57 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & v61;
  v162 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults;
  v65 = (v62 + 63) >> 6;
  v152 = (v154 + 16);
  v172 = (v154 + 32);
  v161 = *MEMORY[0x277CC9968];
  v160 = (v8 + 104);
  v157 = (v12 + 8);
  v158 = (v8 + 8);
  v156 = (v154 + 48);
  v165 = (v154 + 8);
  *&v59 = 136315394;
  v138 = v59;
  v164 = v7;
  v150 = v16;
  v155 = v65;
  v140 = v29;
  v151 = v21;
  while (1)
  {
    v66 = v60;
    v67 = v145;
    if (!v64)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v68 = v66;
LABEL_16:
        v70 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        v71 = v70 | (v68 << 6);
        v72 = v153;
        v73 = v154;
        v74 = v149;
        (*(v154 + 16))(v149, *(v153 + 48) + *(v154 + 72) * v71, v67);
        v75 = *(*(v72 + 56) + 8 * v71);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
        v77 = *(v76 + 48);
        v78 = *(v73 + 32);
        v79 = v167;
        v78(v167, v74, v67);
        *&v79[v77] = v75;
        (*(*(v76 - 8) + 56))(v79, 0, 1, v76);

        v171 = v68;
        v16 = v150;
        v21 = v151;
LABEL_17:
        v80 = v79;
        v81 = v166;
        sub_258E2EAD8(v80, v166, &qword_27F98A8C8, &qword_258F16AA8);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
        v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
        v84 = v169;
        if (v83 == 1)
        {

          v125 = sub_258F0A350();
          v126 = sub_258F0A810();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v173 = v128;
            *v127 = 136315138;
            v129 = v144;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A908, &unk_258F16C98);
            sub_258EF0768(&qword_27F989518, MEMORY[0x277CC9578]);
            v130 = sub_258F0A420();
            v132 = v131;

            v133 = sub_258DE3018(v130, v132, &v173);

            *(v127 + 4) = v133;
            _os_log_impl(&dword_258DD8000, v125, v126, "#SpeakerIdSamplingCalculator: randomRowsForEachDate rows: %s", v127, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v128);
            MEMORY[0x259C9EF40](v128, -1, -1);
            MEMORY[0x259C9EF40](v127, -1, -1);
          }

          else
          {

            return v144;
          }

          return v129;
        }

        v85 = v21;
        v170 = *(v81 + *(v82 + 48));
        v86 = *v172;
        (*v172)(v169, v81, v67);
        _s16MetricsFramework13SamplingUtilsC03getC30CycleDaysLimitForUserSelection4fromSiSo14NSUserDefaultsC_tFZ_0(*(v168 + v162));
        v88 = v87;
        sub_258F09AE0();
        v89 = v16;
        v90 = v163;
        v91 = v164;
        result = (*v160)(v163, v161, v164);
        if (v88 == 0x8000000000000000)
        {
          goto LABEL_44;
        }

        sub_258F09AD0();
        (*v158)(v90, v91);
        (*v157)(v89, v159);
        v16 = v89;
        if ((*v156)(v85, 1, v67) != 1)
        {
          break;
        }

        (*v165)(v84, v67);
        result = sub_258DE2184(v85, &qword_27F988728, &unk_258F0B840);
        v66 = v171;
        v21 = v85;
        v65 = v155;
        if (!v64)
        {
          goto LABEL_10;
        }
      }

      v92 = v147;
      v86(v147, v85, v67);
      sub_258EF0768(&qword_27F989870, MEMORY[0x277CC9578]);
      v93 = sub_258F0A4A0();
      v94 = *v165;
      (*v165)(v92, v67);
      if ((v93 & 1) == 0)
      {
        break;
      }

      v21 = v85;
      v94(v169, v67);

      v66 = v171;
      v65 = v155;
      if (!v64)
      {
        goto LABEL_10;
      }
    }

    v96 = *v152;
    v97 = v139;
    (*v152)(v139, v169, v67);
    v98 = v67;
    v99 = v140;
    v96(v140, v148, v98);
    v100 = sub_258F0A350();
    v101 = sub_258F0A810();
    v102 = os_log_type_enabled(v100, v101);
    v137 = v96;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v173 = v135;
      *v103 = v138;
      sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
      v136 = v101;
      v134 = sub_258F0AD60();
      v105 = v104;
      v94(v97, v98);
      v134 = sub_258DE3018(v134, v105, &v173);

      *(v103 + 4) = v134;
      *(v103 + 12) = 2080;
      v106 = sub_258F0AD60();
      v108 = v107;
      v94(v99, v98);
      v109 = sub_258DE3018(v106, v108, &v173);

      *(v103 + 14) = v109;
      _os_log_impl(&dword_258DD8000, v100, v136, "#SpeakerIdSamplingCalculator: date picked: %s is within collection cycle of collectingDate: %s", v103, 0x16u);
      v110 = v135;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v110, -1, -1);
      MEMORY[0x259C9EF40](v103, -1, -1);
    }

    else
    {

      v94(v99, v98);
      v94(v97, v98);
    }

    v111 = v141;
    v112 = v170;
    v137(v141, v169, v98);
    v173 = v112;

    sub_258EEF3A4();
    v113 = v173;
    v114 = *(v112 + 16);

    v115 = v142;
    if ((v142 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    if (v114 < v142)
    {
      v115 = v114;
    }

    v116 = *(v113 + 16);
    if (v116 >= v115)
    {
      v117 = v115;
    }

    else
    {
      v117 = *(v113 + 16);
    }

    if (v115)
    {
      v118 = v117;
    }

    else
    {
      v118 = 0;
    }

    if (v116 != v118)
    {
      sub_258EEF20C(v113, v113 + 32, 0, (2 * v118) | 1);
      v124 = v123;

      v113 = v124;
    }

    v21 = v151;
    v119 = v144;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v173 = v119;
    sub_258ED7CC4(v113, v111, isUniquelyReferenced_nonNull_native);
    v121 = v111;
    v122 = v145;
    v94(v121, v145);
    v144 = v173;
    result = (v94)(v169, v122);
    v65 = v155;
    v60 = v171;
  }

LABEL_10:
  if (v65 <= v66 + 1)
  {
    v69 = v66 + 1;
  }

  else
  {
    v69 = v65;
  }

  while (1)
  {
    v68 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v68 >= v65)
    {
      v171 = v69 - 1;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
      v79 = v167;
      (*(*(v95 - 8) + 56))(v167, 1, 1, v95);
      v64 = 0;
      goto LABEL_17;
    }

    v64 = *(v146 + 8 * v68);
    ++v66;
    if (v64)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_258EEC45C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v149 = a1;
  v6 = sub_258F09A20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v139 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v140 = &v138 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v155 = &v138 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v166 = &v138 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v144 = &v138 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8C8, &qword_258F16AA8);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v151 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v150 = &v138 - v29;
  v141 = sub_258DFC258(MEMORY[0x277D84F90]);
  v30 = *(a3 + 64);
  v142 = a3 + 64;
  v31 = 1 << *(a3 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v157 = v3;
  v148 = (v3 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils);
  v156 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v152 = (v31 + 63) >> 6;
  v164 = (v7 + 16);
  v159 = (v7 + 32);
  v145 = v7;
  v165 = (v7 + 8);
  v146 = a3;

  v34 = 0;
  v35 = 0;
  *&v36 = 136315394;
  v138 = v36;
  *&v36 = 136315650;
  v143 = v36;
  v158 = v6;
  v147 = a2;
LABEL_4:
  while (1)
  {
    v37 = v34;
    v38 = v152;
    if (!v33)
    {
      break;
    }

    while (1)
    {
      v39 = a2;
      v40 = v37;
LABEL_13:
      v162 = (v33 - 1) & v33;
      v42 = __clz(__rbit64(v33)) | (v40 << 6);
      v43 = v146;
      v44 = v145;
      v45 = v144;
      (*(v145 + 16))(v144, *(v146 + 48) + *(v145 + 72) * v42, v6);
      v46 = *(*(v43 + 56) + 8 * v42);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
      v48 = v6;
      v49 = *(v47 + 48);
      v50 = *(v44 + 32);
      v51 = v151;
      v50(v151, v45, v48);
      *(v51 + v49) = v46;
      (*(*(v47 - 8) + 56))(v51, 0, 1, v47);

      v161 = v40;
LABEL_14:
      v52 = v150;
      sub_258E2EAD8(v51, v150, &qword_27F98A8C8, &qword_258F16AA8);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
      if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
      {

        return v141;
      }

      v54 = *(v52 + *(v53 + 48));
      v55 = v166;
      v6 = v158;
      (*v159)(v166, v52, v158);
      v56 = *v148;
      a2 = v39;
      v57 = (*(v148[1] + 144))(v149, v39, v55);
      if (!v57)
      {
        break;
      }

      v58 = v57;
      v59 = *(v54 + 16);
      v160 = v54;
      if (v59)
      {
        v60 = (v54 + 32);
        v167 = MEMORY[0x277D84F90];
        do
        {
          v61 = *v60;
          v168 = 0x5F74736575716572;
          v169 = 0xEA00000000006469;

          sub_258F0AA80();
          if (*(v61 + 16) && (v62 = sub_258E2EA2C(v170), (v63 & 1) != 0))
          {
            sub_258DE4090(*(v61 + 56) + 32 * v62, v171);
            sub_258E0F590(v170);
            v64 = swift_dynamicCast();
            if (v64)
            {
              v66 = v168;
              v67 = v169;
              v170[0] = v168;
              v170[1] = v169;
              MEMORY[0x28223BE20](v64, v65);
              *(&v138 - 2) = v170;
              if (sub_258EEF2F8(sub_258EF0710, (&v138 - 2), v58))
              {

                v68 = v167;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v68 = sub_258DE2C0C(0, v68[2] + 1, 1, v68);
                }

                v70 = v68[2];
                v69 = v68[3];
                v167 = v68;
                if (v70 >= v69 >> 1)
                {
                  v167 = sub_258DE2C0C((v69 > 1), v70 + 1, 1, v167);
                }

                v71 = v167;
                v167[2] = v70 + 1;
                v71[v70 + 4] = v61;
              }

              else
              {

                v72 = v155;
                (*v164)(v155, v166, v6);

                v73 = v6;
                v74 = sub_258F0A350();
                v75 = sub_258F0A840();

                LODWORD(v163) = v75;
                if (os_log_type_enabled(v74, v75))
                {
                  v76 = swift_slowAlloc();
                  v154 = v35;
                  v77 = v76;
                  v153 = swift_slowAlloc();
                  v170[0] = v153;
                  *v77 = v143;
                  v78 = sub_258DE3018(v66, v67, v170);

                  *(v77 + 4) = v78;
                  *(v77 + 12) = 2080;
                  v79 = MEMORY[0x259C9DF80](v58, MEMORY[0x277D837D0]);
                  v81 = sub_258DE3018(v79, v80, v170);

                  *(v77 + 14) = v81;
                  *(v77 + 22) = 2080;
                  sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
                  v82 = v158;
                  v83 = sub_258F0AD60();
                  v85 = v84;
                  (*v165)(v72, v82);
                  v86 = sub_258DE3018(v83, v85, v170);

                  *(v77 + 24) = v86;
                  _os_log_impl(&dword_258DD8000, v74, v163, "#SpeakerIdSamplingCalculator: Canot get requestId: %s in activeRequests: %s for date: %s", v77, 0x20u);
                  v87 = v153;
                  swift_arrayDestroy();
                  MEMORY[0x259C9EF40](v87, -1, -1);
                  v35 = v154;
                  MEMORY[0x259C9EF40](v77, -1, -1);

                  v6 = v82;
                }

                else
                {

                  (*v165)(v72, v73);
                  v6 = v73;
                }
              }
            }

            else
            {
            }
          }

          else
          {

            sub_258E0F590(v170);
          }

          ++v60;
          --v59;
        }

        while (v59);
      }

      else
      {
        v167 = MEMORY[0x277D84F90];
      }

      if (v167[2])
      {
        v101 = *v164;
        v102 = v140;
        (*v164)(v140, v166, v6);
        v103 = v141;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v170[0] = v103;
        v105 = sub_258E2EED8(v102);
        v107 = *(v103 + 16);
        v108 = (v106 & 1) == 0;
        v109 = __OFADD__(v107, v108);
        v110 = v107 + v108;
        a2 = v147;
        if (v109)
        {
          goto LABEL_66;
        }

        v111 = v106;
        if (*(v103 + 24) >= v110)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v136 = v105;
            sub_258ED8E34();
            v105 = v136;
          }
        }

        else
        {
          sub_258ED6738(v110, isUniquelyReferenced_nonNull_native);
          v105 = sub_258E2EED8(v140);
          if ((v111 & 1) != (v112 & 1))
          {
            goto LABEL_69;
          }
        }

        v6 = v158;
        v141 = v170[0];
        if (v111)
        {
          v128 = *(v170[0] + 56);
          v129 = *(v128 + 8 * v105);
          *(v128 + 8 * v105) = v167;
        }

        else
        {
          *(v170[0] + 8 * (v105 >> 6) + 64) |= 1 << v105;
          v130 = v105;
          v101((*(v141 + 48) + *(v145 + 72) * v105), v140, v6);
          v131 = v141;
          *(*(v141 + 56) + 8 * v130) = v167;
          v132 = *(v131 + 16);
          v109 = __OFADD__(v132, 1);
          v133 = v132 + 1;
          if (v109)
          {
            goto LABEL_68;
          }

          *(v131 + 16) = v133;
        }

        v134 = *v165;
        (*v165)(v140, v6);
        v134(v166, v6);
        v34 = v161;
        v33 = v162;
        goto LABEL_4;
      }

      (*v165)(v166, v6);

      v37 = v161;
      v33 = v162;
      a2 = v147;
      v38 = v152;
      if (!v162)
      {
        goto LABEL_6;
      }
    }

    v89 = *v164;
    v90 = v139;
    (*v164)(v139, v166, v6);

    v91 = sub_258F0A350();
    v92 = sub_258F0A810();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = v90;
      v94 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v170[0] = v163;
      *v94 = v138;
      *(v94 + 4) = sub_258DE3018(v149, a2, v170);
      *(v94 + 12) = 2080;
      sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
      v95 = sub_258F0AD60();
      v154 = v89;
      v96 = a2;
      v98 = v97;
      v167 = *v165;
      (v167)(v93, v6);
      v99 = sub_258DE3018(v95, v98, v170);
      a2 = v96;
      v89 = v154;

      *(v94 + 14) = v99;
      _os_log_impl(&dword_258DD8000, v91, v92, "#SpeakerIdSamplingCalculator: Cannot get active requests for locale: %s and date: %s, using the row from sql", v94, 0x16u);
      v100 = v163;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v100, -1, -1);
      MEMORY[0x259C9EF40](v94, -1, -1);
    }

    else
    {

      v167 = *v165;
      (v167)(v90, v6);
    }

    v33 = v162;
    v113 = v141;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v170[0] = v113;
    v115 = sub_258E2EED8(v166);
    v117 = *(v113 + 16);
    v118 = (v116 & 1) == 0;
    v109 = __OFADD__(v117, v118);
    v119 = v117 + v118;
    if (v109)
    {
      goto LABEL_65;
    }

    v120 = v116;
    if (*(v113 + 24) >= v119)
    {
      if ((v114 & 1) == 0)
      {
        v135 = v115;
        sub_258ED8E34();
        v115 = v135;
      }
    }

    else
    {
      sub_258ED6738(v119, v114);
      v115 = sub_258E2EED8(v166);
      if ((v120 & 1) != (v121 & 1))
      {
        goto LABEL_69;
      }
    }

    v6 = v158;
    v141 = v170[0];
    if (v120)
    {
      v122 = *(v170[0] + 56);
      v123 = *(v122 + 8 * v115);
      *(v122 + 8 * v115) = v54;
    }

    else
    {
      *(v170[0] + 8 * (v115 >> 6) + 64) |= 1 << v115;
      v124 = v115;
      v89((*(v141 + 48) + *(v145 + 72) * v115), v166, v6);
      v125 = v141;
      *(*(v141 + 56) + 8 * v124) = v54;
      v126 = *(v125 + 16);
      v109 = __OFADD__(v126, 1);
      v127 = v126 + 1;
      if (v109)
      {
        goto LABEL_67;
      }

      *(v125 + 16) = v127;
    }

    (v167)(v166, v6);
    v34 = v161;
  }

LABEL_6:
  if (v38 <= v37 + 1)
  {
    v41 = v37 + 1;
  }

  else
  {
    v41 = v38;
  }

  while (1)
  {
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v40 >= v38)
    {
      v39 = a2;
      v161 = v41 - 1;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
      v51 = v151;
      (*(*(v88 - 8) + 56))(v151, 1, 1, v88);
      v162 = 0;
      goto LABEL_14;
    }

    v33 = *(v142 + 8 * v40);
    ++v37;
    if (v33)
    {
      v39 = a2;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = sub_258F0ADC0();
  __break(1u);
  return result;
}

unint64_t sub_258EED418(uint64_t a1)
{
  v2 = v1;
  v238 = sub_258F09A20();
  v4 = *(v238 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v238, v6);
  v9 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v226 = &v218 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v224 = &v218 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v227 = &v218 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v223 = &v218 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v218 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v218 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v231 = &v218 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v218 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v243 = &v218 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v236 = &v218 - v41;
  v252 = sub_258DFC258(MEMORY[0x277D84F90]);
  v244 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v42 = sub_258F0A350();
  v43 = sub_258F0A810();
  v44 = os_log_type_enabled(v42, v43);
  v239 = v36;
  if (v44)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_258DD8000, v42, v43, "#SpeakerIdSamplingCalculator: groupRowsByDate", v45, 2u);
    v46 = v45;
    v36 = v239;
    MEMORY[0x259C9EF40](v46, -1, -1);
  }

  if (sub_258F0A070())
  {
    v229 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults;
    v245 = 0x8000000258F1EC00;
    v241 = (v4 + 16);
    v242 = (v4 + 8);
    v221 = "dSamplingBiomeReporter";
    *&v47 = 136315138;
    v225 = v47;
    *&v47 = 136315394;
    v230 = v47;
    v222 = xmmword_258F0B820;
    v233 = v2;
    v220 = v9;
    v234 = v25;
    v235 = v29;
    v228 = a1;
    do
    {
      v48 = sub_258F0A060();
      if (v48)
      {
        v49 = v48;
        v247[0] = 0xD000000000000017;
        v247[1] = v245;
        sub_258F0AA80();
        if (*(v49 + 16) && (v50 = sub_258E2EA2C(&v248), (v51 & 1) != 0))
        {
          sub_258DE4090(*(v49 + 56) + 32 * v50, &v250);
          sub_258E0F590(&v248);
          sub_258E76E10();
          if (swift_dynamicCast())
          {
            v52 = v247[0];

            v53 = sub_258F0A350();
            v54 = sub_258F0A810();

            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v248 = v56;
              *v55 = v225;
              v57 = sub_258F0A420();
              v59 = sub_258DE3018(v57, v58, &v248);
              v29 = v235;

              *(v55 + 4) = v59;
              v25 = v234;
              _os_log_impl(&dword_258DD8000, v53, v54, "#SpeakerIdSamplingCalculator: groupRowsByDate current row %s", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v56);
              v60 = v56;
              v2 = v233;
              MEMORY[0x259C9EF40](v60, -1, -1);
              v61 = v55;
              v36 = v239;
              MEMORY[0x259C9EF40](v61, -1, -1);
            }

            v232 = v52;
            [v52 unsignedLongLongValue];
            v62 = v236;
            sub_258F099D0();
            type metadata accessor for SamplingUtils();
            static SamplingUtils.convertGMTDateToLocalStartOfDay(date:)(v62, v243);
            v63 = v231;
            sub_258F09B50();
            static SamplingUtils.convertGMTDateToLocalStartOfDay(date:)(v63, v36);
            v64 = *v242;
            v65 = v63;
            v66 = v238;
            (*v242)(v65, v238);
            v237 = *v241;
            (v237)(v29, v62, v66);

            v67 = sub_258F0A350();
            v68 = sub_258F0A810();

            v69 = os_log_type_enabled(v67, v68);
            v240 = v64;
            if (v69)
            {
              v70 = swift_slowAlloc();
              v71 = v29;
              v72 = v66;
              v73 = swift_slowAlloc();
              v246 = v73;
              *v70 = v230;
              sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
              v74 = sub_258F0AD60();
              v75 = v72;
              v76 = v74;
              v78 = v77;
              v64(v71, v75);
              v79 = sub_258DE3018(v76, v78, &v246);

              *(v70 + 4) = v79;
              *(v70 + 12) = 2080;
              v250 = 0x5F74736575716572;
              v251 = 0xEA00000000006469;
              sub_258F0AA80();
              if (*(v49 + 16) && (v80 = sub_258E2EA2C(&v248), (v81 & 1) != 0))
              {
                sub_258DE4090(*(v49 + 56) + 32 * v80, &v250);
                sub_258E0F590(&v248);
                v82 = swift_dynamicCast();
                v83 = v247[0];
                v84 = v247[1];
                if (!v82)
                {
                  v83 = 0;
                  v84 = 0;
                }
              }

              else
              {
                sub_258E0F590(&v248);
                v83 = 0;
                v84 = 0;
              }

              v248 = v83;
              v249 = v84;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
              v85 = sub_258F0A550();
              v87 = sub_258DE3018(v85, v86, &v246);

              *(v70 + 14) = v87;
              _os_log_impl(&dword_258DD8000, v67, v68, "event date: %s with requestId: %s", v70, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x259C9EF40](v73, -1, -1);
              MEMORY[0x259C9EF40](v70, -1, -1);

              v2 = v233;
              v25 = v234;
              v66 = v238;
            }

            else
            {

              v64(v29, v66);
            }

            (v237)(v25, v243, v66);

            v88 = sub_258F0A350();
            v89 = sub_258F0A810();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              v246 = v91;
              *v90 = v230;
              sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
              v92 = sub_258F0AD60();
              v93 = v25;
              v95 = v94;
              v240(v93, v66);
              v96 = sub_258DE3018(v92, v95, &v246);

              *(v90 + 4) = v96;
              *(v90 + 12) = 2080;
              v250 = 0x5F74736575716572;
              v251 = 0xEA00000000006469;
              sub_258F0AA80();
              if (*(v49 + 16) && (v97 = sub_258E2EA2C(&v248), (v98 & 1) != 0))
              {
                sub_258DE4090(*(v49 + 56) + 32 * v97, &v250);
                sub_258E0F590(&v248);
                v99 = swift_dynamicCast();
                v100 = v247[0];
                v101 = v247[1];
                if (!v99)
                {
                  v100 = 0;
                  v101 = 0;
                }
              }

              else
              {
                sub_258E0F590(&v248);
                v100 = 0;
                v101 = 0;
              }

              v248 = v100;
              v249 = v101;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
              v102 = sub_258F0A550();
              v104 = sub_258DE3018(v102, v103, &v246);

              *(v90 + 14) = v104;
              _os_log_impl(&dword_258DD8000, v88, v89, "event startOfDate: %s with requestId: %s", v90, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x259C9EF40](v91, -1, -1);
              MEMORY[0x259C9EF40](v90, -1, -1);

              v2 = v233;
            }

            else
            {

              v240(v25, v66);
            }

            v36 = v239;
            v105 = *(v2 + v229);
            v106 = _s16MetricsFramework13SamplingUtilsC19getBypassSatTrigger8defaultsSbSo14NSUserDefaultsC_tFZ_0(v105);
            v29 = v235;
            if ((v106 & 1) == 0)
            {
              strcpy(v247, "sat_triggered");
              HIWORD(v247[1]) = -4864;
              sub_258F0AA80();
              if (!*(v49 + 16) || (v125 = sub_258E2EA2C(&v248), (v126 & 1) == 0))
              {
                sub_258E0F590(&v248);
LABEL_51:
                v138 = v227;
                v139 = v243;
                (v237)(v227, v243, v66);

                v140 = sub_258F0A350();
                v141 = sub_258F0A810();

                if (os_log_type_enabled(v140, v141))
                {
                  v142 = swift_slowAlloc();
                  v143 = swift_slowAlloc();
                  v246 = v143;
                  *v142 = v230;
                  v250 = 0x5F74736575716572;
                  v251 = 0xEA00000000006469;
                  sub_258F0AA80();
                  v144 = *(v49 + 16);
                  LODWORD(v237) = v141;
                  if (v144 && (v145 = sub_258E2EA2C(&v248), (v146 & 1) != 0))
                  {
                    sub_258DE4090(*(v49 + 56) + 32 * v145, &v250);
                    sub_258E0F590(&v248);

                    v147 = swift_dynamicCast();
                    v148 = v247[0];
                    v149 = v247[1];
                    if (!v147)
                    {
                      v148 = 0;
                      v149 = 0;
                    }
                  }

                  else
                  {

                    sub_258E0F590(&v248);
                    v148 = 0;
                    v149 = 0;
                  }

                  v159 = v240;
                  v248 = v148;
                  v249 = v149;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
                  v160 = sub_258F0A550();
                  v162 = sub_258DE3018(v160, v161, &v246);

                  *(v142 + 4) = v162;
                  *(v142 + 12) = 2080;
                  sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
                  v163 = v227;
                  v164 = v238;
                  v165 = sub_258F0AD60();
                  v167 = v166;
                  v159(v163, v164);
                  v168 = sub_258DE3018(v165, v167, &v246);

                  *(v142 + 14) = v168;
                  _os_log_impl(&dword_258DD8000, v140, v237, "#SpeakerIdSamplingCalculator: skipping grouping for %s for %s because sat_triggered can't be found", v142, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x259C9EF40](v143, -1, -1);
                  MEMORY[0x259C9EF40](v142, -1, -1);

                  v36 = v239;
                  v159(v239, v164);
                  v159(v243, v164);
                  v159(v236, v164);
LABEL_62:
                  v2 = v233;
                }

                else
                {

                  v156 = v66;
                  v157 = v66;
                  v158 = v240;
                  v240(v138, v156);
                  v158(v36, v157);
                  v158(v139, v157);
                  v158(v236, v157);
                }

                v25 = v234;
                v29 = v235;
                continue;
              }

              sub_258DE4090(*(v49 + 56) + 32 * v125, &v250);
              sub_258E0F590(&v248);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_51;
              }

              if ((v247[0] & 1) == 0)
              {
                v127 = v223;
                v128 = v243;
                (v237)(v223, v243, v66);

                v129 = sub_258F0A350();
                v130 = sub_258F0A810();

                if (os_log_type_enabled(v129, v130))
                {
                  v237 = v129;
                  v131 = swift_slowAlloc();
                  v132 = swift_slowAlloc();
                  v246 = v132;
                  *v131 = v230;
                  v250 = 0x5F74736575716572;
                  v251 = 0xEA00000000006469;
                  sub_258F0AA80();
                  if (*(v49 + 16) && (v133 = sub_258E2EA2C(&v248), (v134 & 1) != 0))
                  {
                    sub_258DE4090(*(v49 + 56) + 32 * v133, &v250);
                    sub_258E0F590(&v248);

                    v135 = swift_dynamicCast();
                    v136 = v247[0];
                    v137 = v247[1];
                    if (!v135)
                    {
                      v136 = 0;
                      v137 = 0;
                    }
                  }

                  else
                  {

                    sub_258E0F590(&v248);
                    v136 = 0;
                    v137 = 0;
                  }

                  v248 = v136;
                  v249 = v137;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
                  v198 = sub_258F0A550();
                  v200 = sub_258DE3018(v198, v199, &v246);

                  *(v131 + 4) = v200;
                  *(v131 + 12) = 2080;
                  sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
                  v201 = v223;
                  v202 = v238;
                  v203 = sub_258F0AD60();
                  v205 = v204;
                  v206 = v240;
                  v240(v201, v202);
                  v207 = sub_258DE3018(v203, v205, &v246);

                  *(v131 + 14) = v207;
                  v208 = v237;
                  _os_log_impl(&dword_258DD8000, v237, v130, "#SpeakerIdSamplingCalculator: skipping grouping for %s for %s because request is not sat triggered", v131, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x259C9EF40](v132, -1, -1);
                  MEMORY[0x259C9EF40](v131, -1, -1);

                  v206(v36, v202);
                  v206(v243, v202);
                  v206(v236, v202);
                  goto LABEL_62;
                }

                v194 = v127;
                v195 = v66;
                v196 = v66;
                v197 = v240;
                v240(v194, v195);
                v197(v36, v196);
                v197(v128, v196);
                v197(v236, v196);
                v2 = v233;
                goto LABEL_58;
              }
            }

            if ((sub_258F099F0() & 1) != 0 && (v107 = sub_258F0A4E0(), v108 = [v105 BOOLForKey_], v107, (v108 & 1) == 0))
            {

              v169 = v224;
              v170 = v237;
              (v237)(v224, v36, v66);
              v171 = v226;
              v172 = v243;
              (v170)(v226, v243, v66);
              v173 = sub_258F0A350();
              v174 = sub_258F0A810();
              if (os_log_type_enabled(v173, v174))
              {
                v175 = v169;
                v176 = swift_slowAlloc();
                v237 = swift_slowAlloc();
                v248 = v237;
                *v176 = v230;
                sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578]);
                v219 = v173;
                v177 = sub_258F0AD60();
                v179 = v178;
                v180 = v240;
                v240(v175, v66);
                v181 = sub_258DE3018(v177, v179, &v248);
                v29 = v235;

                *(v176 + 4) = v181;
                *(v176 + 12) = 2080;
                v182 = v226;
                v183 = sub_258F0AD60();
                v185 = v184;
                v180(v182, v66);
                v186 = sub_258DE3018(v183, v185, &v248);

                *(v176 + 14) = v186;
                v187 = v219;
                _os_log_impl(&dword_258DD8000, v219, v174, "#SpeakerIdSamplingCalculator: skipping grouping data for today: %s for event date: %s", v176, 0x16u);
                v188 = v237;
                swift_arrayDestroy();
                v2 = v233;
                MEMORY[0x259C9EF40](v188, -1, -1);
                MEMORY[0x259C9EF40](v176, -1, -1);

                v189 = v239;
                v180(v239, v66);
                v180(v243, v66);
                v180(v236, v66);
                v25 = v234;
                v36 = v189;
                continue;
              }

              v190 = v171;
              v191 = v66;
              v153 = v66;
              v154 = v240;
              v240(v190, v191);
              v154(v169, v153);
              v154(v36, v153);
              v155 = v172;
            }

            else
            {
              v109 = v252;
              v110 = v243;
              if (*(v252 + 16))
              {
                sub_258E2EED8(v243);
                if (v111)
                {
                  v112 = v220;
                  (v237)(v220, v110, v66);
                  v113 = v66;
                  v114 = v112;
                  v116 = sub_258ED048C(&v248);
                  v117 = *v115;
                  if (*v115)
                  {
                    v118 = v115;
                    v119 = *v115;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v118 = v117;
                    v25 = v234;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v117 = sub_258DE2C0C(0, v117[2] + 1, 1, v117);
                      *v118 = v117;
                    }

                    v122 = v117[2];
                    v121 = v117[3];
                    if (v122 >= v121 >> 1)
                    {
                      v117 = sub_258DE2C0C((v121 > 1), v122 + 1, 1, v117);
                      *v118 = v117;
                    }

                    v117[2] = v122 + 1;
                    v117[v122 + 4] = v49;
                    (v116)(&v248, 0);

                    v123 = v238;
                    v124 = v240;
                    v240(v220, v238);
                    v36 = v239;
                    v124(v239, v123);
                    v124(v243, v123);
                    v124(v236, v123);
                    v2 = v233;
                    continue;
                  }

                  (v116)(&v248, 0);

                  v192 = v114;
                  v193 = v240;
                  v240(v192, v113);
                  v36 = v239;
                  v193(v239, v113);
                  v193(v110, v113);
                  v193(v236, v113);
                  goto LABEL_58;
                }
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988890, &unk_258F0C040);
              v150 = swift_allocObject();
              *(v150 + 16) = v222;
              *(v150 + 32) = v49;
              v151 = swift_isUniquelyReferenced_nonNull_native();
              v248 = v109;
              sub_258ED7CC4(v150, v110, v151);

              v252 = v248;
              v152 = v66;
              v153 = v66;
              v154 = v240;
              v240(v36, v152);
              v155 = v110;
            }

            v154(v155, v153);
            v154(v236, v153);
LABEL_58:
            v25 = v234;
            continue;
          }
        }

        else
        {

          sub_258E0F590(&v248);
        }
      }
    }

    while ((sub_258F0A070() & 1) != 0);
  }

  v209 = sub_258F0A350();
  v210 = sub_258F0A810();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    v248 = v212;
    *v211 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A908, &unk_258F16C98);
    sub_258EF0768(&qword_27F989518, MEMORY[0x277CC9578]);
    v213 = sub_258F0A420();
    v215 = v214;

    v216 = sub_258DE3018(v213, v215, &v248);

    *(v211 + 4) = v216;
    _os_log_impl(&dword_258DD8000, v209, v210, "#SpeakerIdSamplingCalculator: groupRowsByDate results %s", v211, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v212);
    MEMORY[0x259C9EF40](v212, -1, -1);
    MEMORY[0x259C9EF40](v211, -1, -1);
  }

  swift_beginAccess();
  return v252;
}

uint64_t SpeakerIdSamplingCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bugReporter);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_biomeResultsFactory);

  return v0;
}

uint64_t SpeakerIdSamplingCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bugReporter);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_biomeResultsFactory);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EEF0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258EEF170(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EE7B98(a1);
}

void sub_258EEF20C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988898, &qword_258F14EF0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988890, &unk_258F0C040);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_258EEF2F8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_258EEF3A4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v15 = 0;
      MEMORY[0x259C9EF50](&v15, 8);
      v6 = (v15 * v2) >> 64;
      if (v2 > v15 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v15 * v2)
        {
          do
          {
            v15 = 0;
            MEMORY[0x259C9EF50](&v15, 8);
          }

          while (v7 > v15 * v2);
          v6 = (v15 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = v1[2];
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = v1[v4 + 4];
        v11 = v1[v8 + 4];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_258E07F08(v1);
        }

        if (v4 >= v1[2])
        {
          goto LABEL_21;
        }

        v12 = v1 + 4;
        v13 = v1[v4 + 4];
        v1[v4 + 4] = v11;

        if (v8 >= v1[2])
        {
          goto LABEL_22;
        }

        v14 = v12[v8];
        v12[v8] = v10;

        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

id sub_258EEF518(uint64_t a1)
{
  sub_258F0AA80();
  if (*(a1 + 16) && (v2 = sub_258E2EA2C(v6), (v3 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v2, v7);
    sub_258E0F590(v6);
    if (swift_dynamicCast())
    {
      v4 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(0xD000000000000011, 0x8000000258F18A30);

      return v4;
    }
  }

  else
  {
    sub_258E0F590(v6);
  }

  return 0;
}

uint64_t sub_258EEF5F8(uint64_t a1)
{
  sub_258F0AA80();
  if (!*(a1 + 16) || (v2 = sub_258E2EA2C(v8), (v3 & 1) == 0))
  {
    sub_258E0F590(v8);
    goto LABEL_7;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v2, v9);
  sub_258E0F590(v8);
  if (!swift_dynamicCast())
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = sub_258F0A4E0();

  v5 = v4;
  if ([v5 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
  {
    v6 = 6;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
  {
    v6 = 7;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
  {
    v6 = 8;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
  {
    v6 = 9;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
  {
    v6 = 10;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
  {
    v6 = 11;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
  {
    v6 = 12;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
  {
    v6 = 13;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
  {
    v6 = 14;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
  {
    v6 = 15;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
  {
    v6 = 16;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
  {
    v6 = 17;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
  {
    v6 = 18;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
  {
    v6 = 19;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
  {
    v6 = 20;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
  {
    v6 = 21;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
  {
    v6 = 22;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
  {
    v6 = 23;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
  {
    v6 = 24;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
  {
    v6 = 25;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
  {
    v6 = 26;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
  {
    v6 = 27;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
  {
    v6 = 28;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
  {
    v6 = 29;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
  {
    v6 = 30;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
  {
    v6 = 31;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
  {
    v6 = 32;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
  {
    v6 = 33;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
  {
    v6 = 34;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
  {
    v6 = 35;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
  {
    v6 = 36;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
  {
    v6 = 37;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
  {
    v6 = 38;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
  {
    v6 = 39;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
  {
    v6 = 40;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
  {
    v6 = 41;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
  {
    v6 = 42;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
  {
    v6 = 43;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
  {
    v6 = 44;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
  {
    v6 = 45;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
  {
    v6 = 46;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
  {
    v6 = 47;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
  {
    v6 = 48;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
  {
    v6 = 49;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
  {
    v6 = 50;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
  {
    v6 = 51;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
  {
    v6 = 52;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
  {
    v6 = 53;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
  {
    v6 = 54;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
  {
    v6 = 55;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
  {
    v6 = 56;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
  {
    v6 = 57;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
  {
    v6 = 58;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
  {
    v6 = 59;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
  {
    v6 = 60;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
  {
    v6 = 61;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
  {
    v6 = 62;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
  {
    v6 = 63;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
  {
    v6 = 64;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
  {
    v6 = 65;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
  {
    v6 = 66;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
  {
    v6 = 67;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
  {
    v6 = 68;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
  {
    v6 = 69;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
  {
    v6 = 70;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
  {
    v6 = 71;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
  {
    v6 = 72;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
  {
    v6 = 73;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
  {
    v6 = 74;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
  {
    v6 = 75;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
  {
    v6 = 76;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
  {
    v6 = 77;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
  {
    v6 = 78;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
  {
    v6 = 79;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
  {
    v6 = 80;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
  {
    v6 = 81;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
  {
    v6 = 82;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
  {
    v6 = 83;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
  {
    v6 = 84;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
  {
    v6 = 85;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
  {
    v6 = 87;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
  {
    v6 = 88;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
  {
    v6 = 89;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
  {
    v6 = 90;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
  {
    v6 = 91;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
  {
    v6 = 92;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
  {
    v6 = 93;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
  {
    v6 = 94;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
  {
    v6 = 95;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
  {
    v6 = 96;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
  {
    v6 = 97;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
  {
    v6 = 98;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
  {
    v6 = 99;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
  {
    v6 = 100;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
  {
    v6 = 101;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
  {
    v6 = 102;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
  {
    v6 = 103;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  v8[0] = 0;
  return v6;
}

uint64_t sub_258EF0230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EF02A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakerIdSamplingData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258EF0304()
{
  result = qword_27F98A8D8;
  if (!qword_27F98A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A8D8);
  }

  return result;
}

uint64_t sub_258EF0358(uint64_t a1)
{
  result = sub_258EF0768(&qword_27F98A8E0, type metadata accessor for SpeakerIdSamplingCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for SpeakerIdSamplingCalculator()
{
  result = qword_27F98A8F8;
  if (!qword_27F98A8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EF03FC(uint64_t a1)
{
  result = sub_258EF0768(&qword_27F98A8E8, type metadata accessor for SpeakerIdSamplingCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258EF0454()
{
  result = qword_27F98A8F0;
  if (!qword_27F98A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A8F0);
  }

  return result;
}

void sub_258EF04C0()
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

uint64_t dispatch thunk of SpeakerIdSamplingCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_258EF0710(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_258F0AD80() & 1;
  }
}

uint64_t sub_258EF0768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258EF07B8@<X0>(uint64_t a1@<X8>)
{
  v50 = *(v1 + 16);
  v49 = *(v1 + 24);
  v48 = *(v1 + 32);
  v3 = *(v1 + 48);
  v46 = *(v1 + 56);
  v47 = *(v1 + 40);
  v4 = *(v1 + 80);
  v44 = *(v1 + 88);
  v45 = *(v1 + 72);
  v27 = *(v1 + 64);
  v28 = *(v1 + 96);
  v51 = *(v1 + 104);
  v42 = *(v1 + 116);
  v43 = *(v1 + 112);
  v40 = *(v1 + 124);
  v41 = *(v1 + 120);
  v38 = *(v1 + 127);
  v39 = *(v1 + 125);
  v36 = *(v1 + 132);
  v37 = *(v1 + 128);
  v34 = *(v1 + 140);
  v35 = *(v1 + 136);
  v32 = *(v1 + 148);
  v33 = *(v1 + 144);
  v31 = *(v1 + 152);
  v30 = *(v1 + 160);
  v5 = *(v1 + 176);
  v29 = *(v1 + 168);
  v6 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId;
  v7 = *(v1 + 192);
  v26 = *(v1 + 184);
  v25 = *(v1 + 200);
  v8 = *(v1 + 216);
  v24 = *(v1 + 208);
  v22 = *(v1 + 228);
  v23 = *(v1 + 224);
  swift_beginAccess();
  v9 = type metadata accessor for SpeakerIdSamplingData(0);
  sub_258E3A540(v1 + v6, a1 + v9[26]);
  v20 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase + 4);
  v21 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase);
  v18 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId + 8);
  v19 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId);
  v17 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_location);
  v10 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId;
  swift_beginAccess();
  sub_258E3A540(v1 + v10, a1 + v9[30]);
  v11 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_requestId;
  swift_beginAccess();
  sub_258E3A540(v1 + v11, a1 + v9[31]);
  *a1 = v50;
  *(a1 + 8) = v49;
  *(a1 + 16) = v48;
  *(a1 + 24) = v47;
  *(a1 + 32) = v3;
  *(a1 + 40) = v46;
  *(a1 + 48) = v27;
  *(a1 + 56) = v45;
  *(a1 + 64) = v4;
  *(a1 + 72) = v44;
  *(a1 + 80) = v28;
  *(a1 + 88) = v51;
  *(a1 + 96) = v43;
  *(a1 + 100) = v42;
  *(a1 + 104) = v41;
  *(a1 + 108) = v40;
  *(a1 + 109) = v39;
  *(a1 + 111) = v38;
  *(a1 + 112) = v37;
  *(a1 + 116) = v36;
  *(a1 + 120) = v35;
  *(a1 + 124) = v34;
  *(a1 + 128) = v33;
  *(a1 + 132) = v32;
  *(a1 + 136) = v31;
  *(a1 + 144) = v30;
  *(a1 + 152) = v29;
  *(a1 + 160) = v5;
  *(a1 + 168) = v26;
  *(a1 + 176) = v7;
  *(a1 + 184) = v25;
  *(a1 + 192) = v24;
  *(a1 + 200) = v8;
  *(a1 + 208) = v23;
  *(a1 + 212) = v22;
  v12 = a1 + v9[27];
  *v12 = v21;
  *(v12 + 4) = v20;
  v13 = (a1 + v9[28]);
  *v13 = v19;
  v13[1] = v18;
  *(a1 + v9[29]) = v17;
  v14 = v17;

  v15 = v51;
}

uint64_t SpeakerIdSamplingDataBuilderImpl.deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 176);

  v6 = *(v0 + 192);

  v7 = *(v0 + 216);

  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId);
  v8 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId + 8);

  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId);
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_requestId);
  return v0;
}

uint64_t SpeakerIdSamplingDataBuilderImpl.__deallocating_deinit()
{
  SpeakerIdSamplingDataBuilderImpl.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_258EF0EEC()
{
  sub_258E0F074(319, &qword_27F989788);
  if (v0 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D58);
    if (v1 <= 0x3F)
    {
      sub_258E0F074(319, &qword_27F988D40);
      if (v2 <= 0x3F)
      {
        sub_258E56A6C(319, &qword_27F9896B0, &qword_27F9896B8, 0x277D5A900);
        if (v3 <= 0x3F)
        {
          sub_258EF1200(319, &qword_27F9897A0, type metadata accessor for SISchemaInvocationSource);
          if (v4 <= 0x3F)
          {
            sub_258EF1200(319, &qword_27F98A948, type metadata accessor for ORCHSchemaORCHMotionActivity);
            if (v5 <= 0x3F)
            {
              sub_258EF1200(319, &qword_27F98A950, type metadata accessor for MHSchemaMHASRAudioCodec);
              if (v6 <= 0x3F)
              {
                sub_258EF1200(319, &qword_27F98A958, type metadata accessor for MHSchemaMHAssistantDaemonAudioSource);
                if (v7 <= 0x3F)
                {
                  sub_258EF1200(319, &qword_27F98A960, type metadata accessor for ASRSchemaASRDatapackTask);
                  if (v8 <= 0x3F)
                  {
                    sub_258EF1200(319, &qword_27F98A968, type metadata accessor for ORCHSchemaORCHRequestCancellationReason);
                    if (v9 <= 0x3F)
                    {
                      sub_258EF1200(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
                      if (v10 <= 0x3F)
                      {
                        sub_258EF1200(319, &qword_27F98A970, type metadata accessor for SISchemaTriggerPhrase);
                        if (v11 <= 0x3F)
                        {
                          sub_258E56A6C(319, &qword_27F98A978, &qword_27F98A980, 0x277D5A950);
                          if (v12 <= 0x3F)
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
    }
  }
}

void sub_258EF1200(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_258EF127C()
{
  sub_258EF1200(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_258EF13A8()
{
  *(v0 + 16) = 2;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 100) = 0u;
  *(v0 + 116) = 1;
  *(v0 + 120) = 0;
  *(v0 + 124) = 1;
  *(v0 + 125) = 514;
  *(v0 + 127) = 2;
  *(v0 + 128) = 0;
  *(v0 + 132) = 1;
  *(v0 + 136) = 0;
  *(v0 + 140) = 1;
  *(v0 + 144) = 0;
  *(v0 + 148) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 200) = 514;
  *(v0 + 224) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 228) = 1;
  v1 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId;
  v2 = sub_258F09A70();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = (v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_location) = 0;
  v3(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_requestId, 1, 1, v2);
  return v0;
}

uint64_t SpeakerIdSamplingDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SpeakerIdSamplingDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EF162C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SpeakerIdSamplingDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t SpeakerIdSamplingDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdSamplingDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EF1808()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EF160C();
}

uint64_t type metadata accessor for SpeakerIdSamplingDataProvider()
{
  result = qword_27F98A9A8;
  if (!qword_27F98A9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSamplingDataProvider.loadData()(uint64_t a1)
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

uint64_t sub_258EF1A64(uint64_t a1)
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

uint64_t dispatch thunk of SpeakerIdSamplingReporter.report(_:)(uint64_t a1)
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

id sub_258EF1CE4(uint64_t a1)
{
  v2 = sub_258F09A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    sub_258F09A60();
    v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v11 = sub_258F09A50();
    v12 = [v10 initWithNSUUID_];

    (*(v3 + 8))(v7, v2);
    [v9 setOdsampleId_];

    v13 = sub_258F0A370();
    (*(*(v13 - 8) + 8))(a1, v13);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258EF1E70()
{
  result = [objc_opt_self() sharedPreferences];
  qword_27F98AF60 = result;
  return result;
}

uint64_t SpeakerIdSamplingSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258EF4794(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t SpeakerIdSamplingSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_258EF46D4(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

uint64_t sub_258EF2010(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = swift_task_alloc();
  v5 = sub_258F09A70();
  *(v2 + 48) = v5;
  v6 = *(v5 - 8);
  *(v2 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v8 = sub_258F0A370();
  *(v2 + 88) = v8;
  v9 = *(v8 - 8);
  *(v2 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v11 = type metadata accessor for SpeakerIdSamplingData(0);
  *(v2 + 112) = v11;
  v12 = *(v11 - 8);
  *(v2 + 120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = *a1;
  *(v2 + 184) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258EF2234, 0, 0);
}

void sub_258EF2234()
{
  v86 = v0;
  v1 = v0[2];
  v0[24] = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingSELFReporter: Reporter invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];

  v8 = sub_258F0A350();
  v9 = sub_258F0A810();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];
  if (v10)
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v11 + 16);

    _os_log_impl(&dword_258DD8000, v8, v9, "#SpeakerIdSamplingSELFReporter: result %ld", v14, 0xCu);
    MEMORY[0x259C9EF40](v14, -1, -1);
  }

  else
  {
    v15 = v0[21];
  }

  v17 = v0[22];
  v16 = v0[23];
  v18 = v0[21];

  v19 = sub_258F0A350();
  v20 = sub_258F0A810();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[23];
    v22 = v0[14];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v85 = v24;
    *v23 = 136315138;
    v25 = MEMORY[0x259C9DF80](v21, v22);
    v27 = sub_258DE3018(v25, v26, &v85);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_258DD8000, v19, v20, "#SpeakerIdSamplingSELFReporter: result.SpeakerIdSamplingData %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x259C9EF40](v24, -1, -1);
    MEMORY[0x259C9EF40](v23, -1, -1);
  }

  v28 = v0[23];
  v29 = *(v28 + 16);
  v30 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService;
  v0[25] = v29;
  v0[26] = v30;
  if (v29)
  {
    v31 = v0[15];
    v0[27] = 0;
    if (!*(v28 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_258EE73AC(v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v0[20]);
    v32 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v0[28] = v32;
    v33 = v0[24];
    if (v32)
    {
      v34 = v32;
      v35 = v0[19];
      v36 = v0[20];
      v82 = v0[18];
      v38 = v0[12];
      v37 = v0[13];
      v39 = v0[11];
      v40 = v0[2];
      sub_258EF4894();
      sub_258EE73AC(v36, v35);
      (*(v38 + 16))(v37, v40 + v33, v39);
      v41 = sub_258EF3FFC(v35, v37);
      [v34 setSpeakerIdModelSampleReported_];

      sub_258EE73AC(v36, v82);
      v42 = [objc_allocWithZone(MEMORY[0x277D59530]) init];
      if (v42)
      {
        v43 = v42;
        v44 = v0[6];
        v45 = v0[7];
        v46 = v0[5];
        sub_258E3A540(v0[18] + *(v0[14] + 120), v46);
        v47 = *(v45 + 48);
        v0[29] = v47;
        v0[30] = (v45 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        v48 = v47(v46, 1, v44);
        v49 = v0[18];
        if (v48 == 1)
        {
          v50 = v0[5];
          sub_258EE7410(v0[18]);
          sub_258E3A4D8(v50);
        }

        else
        {
          v67 = v0[10];
          v68 = v0[6];
          v69 = v0[7];
          (*(v69 + 32))(v67, v0[5], v68);
          v70 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v71 = sub_258F09A50();
          v72 = [v70 initWithNSUUID_];

          [v43 setOdsampleId_];
          (*(v69 + 8))(v67, v68);
          sub_258EE7410(v49);
        }

        v73 = v0[24];
        v74 = v0[2];
        v75 = (v74 + v0[26]);
        [v34 setEventMetadata_];

        v76 = v75[3];
        v77 = v75[4];
        __swift_project_boxed_opaque_existential_1(v75, v76);
        v78 = *(v77 + 16);
        v84 = (v78 + *v78);
        v79 = v78[1];
        v80 = swift_task_alloc();
        v0[31] = v80;
        *v80 = v0;
        v80[1] = sub_258EF2960;

        v84(v34, v74 + v73, v76, v77);
        return;
      }

LABEL_25:
      __break(1u);
      return;
    }

    v51 = v0[2] + v33;
    v52 = sub_258F0A350();
    v53 = sub_258F0A820();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_258DD8000, v52, v53, "#SpeakerIdSamplingSELFReporter: Failed to generate event", v54, 2u);
      MEMORY[0x259C9EF40](v54, -1, -1);
    }

    v55 = v0[20];

    sub_258EE7410(v55);
  }

  v57 = v0[19];
  v56 = v0[20];
  v59 = v0[17];
  v58 = v0[18];
  v60 = v0[16];
  v61 = v0[13];
  v63 = v0[9];
  v62 = v0[10];
  v64 = v0[8];
  v65 = v0[5];
  v81 = v0[4];
  v83 = v0[3];

  v66 = v0[1];

  v66();
}

uint64_t sub_258EF2960()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_258EF38F4;
  }

  else
  {
    v3 = sub_258EF2A74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258EF2A74()
{
  if (qword_27F988688 != -1)
  {
    swift_once();
  }

  if ([qword_27F98AF60 longLivedIdentifierUploadingEnabled])
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v0[33] = v1;
    if (v1)
    {
      v2 = v1;
      sub_258EE73AC(v0[20], v0[17]);
      v3 = [objc_allocWithZone(MEMORY[0x277D59550]) init];
      if (v3)
      {
        v4 = v3;
        v6 = v0[29];
        v5 = v0[30];
        v7 = v0[6];
        v8 = v0[4];
        sub_258E3A540(v0[17] + *(v0[14] + 124), v8);
        v9 = v6(v8, 1, v7);
        v10 = v0[17];
        if (v9 == 1)
        {
          v11 = v0[4];
          sub_258EE7410(v0[17]);
          sub_258E3A4D8(v11);
        }

        else
        {
          v33 = v0[9];
          v34 = v0[6];
          v35 = v0[7];
          (*(v35 + 32))(v33, v0[4], v34);
          v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v37 = sub_258F09A50();
          v38 = [v36 initWithNSUUID_];

          [v4 setRequestId_];
          sub_258EE7410(v10);
          (*(v35 + 8))(v33, v34);
        }

        v39 = v0[20];
        v40 = v0[16];
        [v2 setSpeakerIdSampleToRequestMap_];

        sub_258EE73AC(v39, v40);
        v41 = [objc_allocWithZone(MEMORY[0x277D59530]) init];
        if (v41)
        {
          v42 = v41;
          v44 = v0[29];
          v43 = v0[30];
          v45 = v0[6];
          v46 = v0[3];
          sub_258E3A540(v0[16] + *(v0[14] + 120), v46);
          v47 = v44(v46, 1, v45);
          v48 = v0[16];
          if (v47 == 1)
          {
            v49 = v0[3];
            sub_258EE7410(v0[16]);
            sub_258E3A4D8(v49);
          }

          else
          {
            v51 = v0[7];
            v50 = v0[8];
            v52 = v0[6];
            (*(v51 + 32))(v50, v0[3], v52);
            v53 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v54 = sub_258F09A50();
            v55 = [v53 initWithNSUUID_];

            [v42 setOdsampleId_];
            sub_258EE7410(v48);
            (*(v51 + 8))(v50, v52);
          }

          v56 = v0[24];
          v57 = v0[2];
          v58 = (v57 + v0[26]);
          [v2 setEventMetadata_];

          v59 = v58[3];
          v60 = v58[4];
          __swift_project_boxed_opaque_existential_1(v58, v59);
          v61 = *(v60 + 16);
          v92 = (v61 + *v61);
          v62 = v61[1];
          v63 = swift_task_alloc();
          v0[34] = v63;
          *v63 = v0;
          v64 = sub_258EF32F4;
LABEL_28:
          v63[1] = v64;

          v92(v2, v57 + v56, v59, v60);
          return;
        }

        goto LABEL_33;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  v12 = v0[28];
  sub_258EE7410(v0[20]);

  v13 = v0[27] + 1;
  if (v13 != v0[25])
  {
    v0[27] = v13;
    v14 = v0[23];
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    sub_258EE73AC(v14 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v13, v0[20]);
    v15 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v0[28] = v15;
    v16 = v0[24];
    if (v15)
    {
      v2 = v15;
      v17 = v0[19];
      v18 = v0[20];
      v91 = v0[18];
      v20 = v0[12];
      v19 = v0[13];
      v21 = v0[11];
      v22 = v0[2];
      sub_258EF4894();
      sub_258EE73AC(v18, v17);
      (*(v20 + 16))(v19, v22 + v16, v21);
      v23 = sub_258EF3FFC(v17, v19);
      [v2 setSpeakerIdModelSampleReported_];

      sub_258EE73AC(v18, v91);
      v24 = [objc_allocWithZone(MEMORY[0x277D59530]) init];
      if (v24)
      {
        v25 = v24;
        v26 = v0[6];
        v27 = v0[7];
        v28 = v0[5];
        sub_258E3A540(v0[18] + *(v0[14] + 120), v28);
        v29 = *(v27 + 48);
        v0[29] = v29;
        v0[30] = (v27 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        v30 = v29(v28, 1, v26);
        v31 = v0[18];
        if (v30 == 1)
        {
          v32 = v0[5];
          sub_258EE7410(v0[18]);
          sub_258E3A4D8(v32);
        }

        else
        {
          v81 = v0[10];
          v82 = v0[6];
          v83 = v0[7];
          (*(v83 + 32))(v81, v0[5], v82);
          v84 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v85 = sub_258F09A50();
          v86 = [v84 initWithNSUUID_];

          [v25 setOdsampleId_];
          (*(v83 + 8))(v81, v82);
          sub_258EE7410(v31);
        }

        v56 = v0[24];
        v57 = v0[2];
        v87 = (v57 + v0[26]);
        [v2 setEventMetadata_];

        v59 = v87[3];
        v60 = v87[4];
        __swift_project_boxed_opaque_existential_1(v87, v59);
        v88 = *(v60 + 16);
        v92 = (v88 + *v88);
        v89 = v88[1];
        v63 = swift_task_alloc();
        v0[31] = v63;
        *v63 = v0;
        v64 = sub_258EF2960;
        goto LABEL_28;
      }

LABEL_34:
      __break(1u);
      return;
    }

    v65 = v0[2] + v16;
    v66 = sub_258F0A350();
    v67 = sub_258F0A820();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_258DD8000, v66, v67, "#SpeakerIdSamplingSELFReporter: Failed to generate event", v68, 2u);
      MEMORY[0x259C9EF40](v68, -1, -1);
    }

    v69 = v0[20];

    sub_258EE7410(v69);
  }

  v71 = v0[19];
  v70 = v0[20];
  v73 = v0[17];
  v72 = v0[18];
  v74 = v0[16];
  v75 = v0[13];
  v77 = v0[9];
  v76 = v0[10];
  v78 = v0[8];
  v79 = v0[5];
  v90 = v0[4];
  v93 = v0[3];

  v80 = v0[1];

  v80();
}

uint64_t sub_258EF32F4()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_258EF3A8C;
  }

  else
  {
    v3 = sub_258EF3408;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_258EF3408()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 160);

  result = sub_258EE7410(v2);
  v4 = *(v0 + 216) + 1;
  if (v4 != *(v0 + 200))
  {
    *(v0 + 216) = v4;
    v5 = *(v0 + 184);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    sub_258EE73AC(v5 + ((*(*(v0 + 120) + 80) + 32) & ~*(*(v0 + 120) + 80)) + *(*(v0 + 120) + 72) * v4, *(v0 + 160));
    v6 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    *(v0 + 224) = v6;
    v7 = *(v0 + 192);
    if (v6)
    {
      v8 = v6;
      v9 = *(v0 + 152);
      v10 = *(v0 + 160);
      v55 = *(v0 + 144);
      v12 = *(v0 + 96);
      v11 = *(v0 + 104);
      v13 = *(v0 + 88);
      v14 = *(v0 + 16);
      sub_258EF4894();
      sub_258EE73AC(v10, v9);
      (*(v12 + 16))(v11, v14 + v7, v13);
      v15 = sub_258EF3FFC(v9, v11);
      [v8 setSpeakerIdModelSampleReported_];

      sub_258EE73AC(v10, v55);
      result = [objc_allocWithZone(MEMORY[0x277D59530]) init];
      if (result)
      {
        v16 = result;
        v17 = *(v0 + 48);
        v18 = *(v0 + 56);
        v19 = *(v0 + 40);
        sub_258E3A540(*(v0 + 144) + *(*(v0 + 112) + 120), v19);
        v20 = *(v18 + 48);
        *(v0 + 232) = v20;
        *(v0 + 240) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        v21 = v20(v19, 1, v17);
        v22 = *(v0 + 144);
        if (v21 == 1)
        {
          v23 = *(v0 + 40);
          sub_258EE7410(*(v0 + 144));
          sub_258E3A4D8(v23);
        }

        else
        {
          v40 = *(v0 + 80);
          v41 = *(v0 + 48);
          v42 = *(v0 + 56);
          (*(v42 + 32))(v40, *(v0 + 40), v41);
          v43 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v44 = sub_258F09A50();
          v45 = [v43 initWithNSUUID_];

          [v16 setOdsampleId_];
          (*(v42 + 8))(v40, v41);
          sub_258EE7410(v22);
        }

        v46 = *(v0 + 192);
        v47 = *(v0 + 16);
        v48 = (v47 + *(v0 + 208));
        [v8 setEventMetadata_];

        v49 = v48[3];
        v50 = v48[4];
        __swift_project_boxed_opaque_existential_1(v48, v49);
        v51 = *(v50 + 16);
        v57 = (v51 + *v51);
        v52 = v51[1];
        v53 = swift_task_alloc();
        *(v0 + 248) = v53;
        *v53 = v0;
        v53[1] = sub_258EF2960;

        return v57(v8, v47 + v46, v49, v50);
      }

LABEL_18:
      __break(1u);
      return result;
    }

    v24 = *(v0 + 16) + v7;
    v25 = sub_258F0A350();
    v26 = sub_258F0A820();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_258DD8000, v25, v26, "#SpeakerIdSamplingSELFReporter: Failed to generate event", v27, 2u);
      MEMORY[0x259C9EF40](v27, -1, -1);
    }

    v28 = *(v0 + 160);

    sub_258EE7410(v28);
  }

  v30 = *(v0 + 152);
  v29 = *(v0 + 160);
  v32 = *(v0 + 136);
  v31 = *(v0 + 144);
  v33 = *(v0 + 128);
  v34 = *(v0 + 104);
  v36 = *(v0 + 72);
  v35 = *(v0 + 80);
  v37 = *(v0 + 64);
  v38 = *(v0 + 40);
  v54 = *(v0 + 32);
  v56 = *(v0 + 24);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_258EF38F4()
{
  v1 = v0[2] + v0[24];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingSELFReporter: Unable to report SampleReported event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[32];
  v6 = v0[28];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  v12 = v0[13];
  v16 = v0[10];
  v17 = v0[9];
  v18 = v0[8];
  v19 = v0[5];
  v20 = v0[4];
  v21 = v0[3];

  swift_willThrow();
  sub_258EE7410(v7);

  v13 = v0[1];
  v14 = v0[32];

  return v13();
}

id sub_258EF3A8C()
{
  v1 = v0[2] + v0[24];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[35];
  v6 = v0[33];
  v7 = v0[28];
  v8 = v0[20];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingSELFReporter: Unable to report Sample To Request Map event", v9, 2u);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  result = sub_258EE7410(v8);
  v11 = v0[27] + 1;
  if (v11 != v0[25])
  {
    v0[27] = v11;
    v12 = v0[23];
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_258EE73AC(v12 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v11, v0[20]);
    v13 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v0[28] = v13;
    v14 = v0[24];
    if (v13)
    {
      v15 = v13;
      v16 = v0[19];
      v17 = v0[20];
      v62 = v0[18];
      v19 = v0[12];
      v18 = v0[13];
      v20 = v0[11];
      v21 = v0[2];
      sub_258EF4894();
      sub_258EE73AC(v17, v16);
      (*(v19 + 16))(v18, v21 + v14, v20);
      v22 = sub_258EF3FFC(v16, v18);
      [v15 setSpeakerIdModelSampleReported_];

      sub_258EE73AC(v17, v62);
      result = [objc_allocWithZone(MEMORY[0x277D59530]) init];
      if (result)
      {
        v23 = result;
        v24 = v0[6];
        v25 = v0[7];
        v26 = v0[5];
        sub_258E3A540(v0[18] + *(v0[14] + 120), v26);
        v27 = *(v25 + 48);
        v0[29] = v27;
        v0[30] = (v25 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        v28 = v27(v26, 1, v24);
        v29 = v0[18];
        if (v28 == 1)
        {
          v30 = v0[5];
          sub_258EE7410(v0[18]);
          sub_258E3A4D8(v30);
        }

        else
        {
          v47 = v0[10];
          v48 = v0[6];
          v49 = v0[7];
          (*(v49 + 32))(v47, v0[5], v48);
          v50 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v51 = sub_258F09A50();
          v52 = [v50 initWithNSUUID_];

          [v23 setOdsampleId_];
          (*(v49 + 8))(v47, v48);
          sub_258EE7410(v29);
        }

        v53 = v0[24];
        v54 = v0[2];
        v55 = (v54 + v0[26]);
        [v15 setEventMetadata_];

        v56 = v55[3];
        v57 = v55[4];
        __swift_project_boxed_opaque_existential_1(v55, v56);
        v58 = *(v57 + 16);
        v64 = (v58 + *v58);
        v59 = v58[1];
        v60 = swift_task_alloc();
        v0[31] = v60;
        *v60 = v0;
        v60[1] = sub_258EF2960;

        return v64(v15, v54 + v53, v56, v57);
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v31 = v0[2] + v14;
    v32 = sub_258F0A350();
    v33 = sub_258F0A820();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_258DD8000, v32, v33, "#SpeakerIdSamplingSELFReporter: Failed to generate event", v34, 2u);
      MEMORY[0x259C9EF40](v34, -1, -1);
    }

    v35 = v0[20];

    sub_258EE7410(v35);
  }

  v37 = v0[19];
  v36 = v0[20];
  v39 = v0[17];
  v38 = v0[18];
  v40 = v0[16];
  v41 = v0[13];
  v43 = v0[9];
  v42 = v0[10];
  v44 = v0[8];
  v45 = v0[5];
  v61 = v0[4];
  v63 = v0[3];

  v46 = v0[1];

  return v46();
}

id sub_258EF3FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v38 - v7;
  v9 = sub_258F09A70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  [result setIsEnrollmentSample_];
  if (*(a1 + 32))
  {
    v17 = *(a1 + 24);
    v18 = sub_258F0A4E0();
    [v16 setDeviceType_];
  }

  if (*(a1 + 48))
  {
    v19 = *(a1 + 40);
    v20 = sub_258F0A4E0();
    [v16 setSystemBuild_];
  }

  if (*(a1 + 88))
  {
    [v16 setSiriInputLocale_];
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    [v16 setStartDatestampInDaysSince1970_];
  }

  if (*(a1 + 64))
  {
    v21 = *(a1 + 56);
    v22 = sub_258F0A4E0();
    [v16 setAudioInterfaceVendorId_];
  }

  if (*(a1 + 80))
  {
    v23 = *(a1 + 72);
    v24 = sub_258F0A4E0();
    [v16 setFirstPartyAudioInterfaceProductId_];
  }

  if ((*(a1 + 100) & 1) == 0)
  {
    [v16 setInvocationSource_];
  }

  if ((*(a1 + 108) & 1) == 0)
  {
    [v16 setMotionActivity_];
  }

  v25 = *(a1 + 109);
  if (v25 != 2)
  {
    [v16 setIsWakeFromSleep_];
  }

  v26 = *(a1 + 110);
  if (v26 != 2)
  {
    [v16 setIsMediaPlaying_];
  }

  v27 = *(a1 + 111);
  if (v27 == 2)
  {
    if (*(a1 + 116))
    {
      goto LABEL_24;
    }
  }

  else
  {
    [v16 setIsDeviceHandHeld_];
    if (*(a1 + 116))
    {
LABEL_24:
      if (*(a1 + 124))
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }
  }

  [v16 setAudioCodec_];
  if (*(a1 + 124))
  {
LABEL_25:
    if (*(a1 + 132))
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v16 setAudioSource_];
  if (*(a1 + 132))
  {
LABEL_26:
    if (*(a1 + 144))
    {
      goto LABEL_27;
    }

LABEL_37:
    [v16 setAudioSkippedNumSamples_];
    if (*(a1 + 212))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_36:
  [v16 setAsrTask_];
  if ((*(a1 + 144) & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  if ((*(a1 + 212) & 1) == 0)
  {
LABEL_28:
    [v16 setOrchCancelledReason_];
  }

LABEL_29:
  v28 = type metadata accessor for SpeakerIdSamplingData(0);
  v29 = (a1 + v28[27]);
  if ((v29[1] & 1) == 0)
  {
    [v16 setTriggerPhrase_];
  }

  sub_258E3A540(a1 + v28[26], v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_258E3A4D8(v8);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v30 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v31 = sub_258F09A50();
    v32 = [v30 initWithNSUUID_];

    [v16 setAudioId_];
    (*(v10 + 8))(v14, v9);
  }

  if (*(a1 + v28[29]))
  {
    [v16 setLocation_];
  }

  if (*(a1 + 160))
  {
    v33 = *(a1 + 152);
    v34 = sub_258F0A4E0();
    [v16 setPostItn1Best_];
  }

  if (*(a1 + 176))
  {
    v35 = *(a1 + 168);
    v36 = sub_258F0A4E0();
    [v16 setSubDomain_];
  }

  v37 = sub_258F0A370();
  (*(*(v37 - 8) + 8))(a2, v37);
  sub_258EE7410(a1);
  return v16;
}

uint64_t sub_258EF4528()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService));
}

uint64_t SpeakerIdSamplingSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService));
  return v0;
}

uint64_t SpeakerIdSamplingSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EF46D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v11 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

uint64_t sub_258EF4794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SpeakerIdSamplingSELFReporter();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  return sub_258EF46D4(a1, v12, v16, a4, a5);
}

unint64_t sub_258EF4894()
{
  result = qword_27F98A9C8;
  if (!qword_27F98A9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F98A9C8);
  }

  return result;
}

uint64_t type metadata accessor for SpeakerIdSamplingSELFReporter()
{
  result = qword_27F98A9D0;
  if (!qword_27F98A9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EF4934()
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

uint64_t SpeakerIdSelectionBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t SpeakerIdSelectionBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258EF4AF8(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v5 = type metadata accessor for SpeakerIdSamplingData(0);
  v2[4] = v5;
  v6 = *(v5 - 8);
  v2[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *(a1 + 8);
  v2[6] = v8;
  v2[7] = v9;

  return MEMORY[0x2822009F8](sub_258EF4BF8, 0, 0);
}

uint64_t sub_258EF4BF8()
{
  v1 = v0[2] + OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SpeakerIdSelectionBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = *(v5 + 16);
  if (v6)
  {
    v8 = v0[4];
    v7 = v0[5];
    v34 = *(v0[2] + 16);
    v9 = v0[7] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      v14 = v0[6];
      v15 = v0[3];
      sub_258EE73AC(v9, v14);
      sub_258E3A540(v14 + *(v8 + 120), v15);
      v16 = sub_258F09A70();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        sub_258E3A4D8(v0[3]);
      }

      else
      {
        v18 = v0[3];
        v19 = sub_258F09A40();
        v21 = v20;
        (*(v17 + 8))(v18, v16);
        v22 = sub_258DE2990(0, 1, 1, MEMORY[0x277D84F90]);
        v24 = *(v22 + 2);
        v23 = *(v22 + 3);
        if (v24 >= v23 >> 1)
        {
          v22 = sub_258DE2990((v23 > 1), v24 + 1, 1, v22);
        }

        *(v22 + 2) = v24 + 1;
        v25 = &v22[16 * v24];
        *(v25 + 4) = v19;
        *(v25 + 5) = v21;
      }

      v26 = (v0[6] + *(v8 + 112));
      v27 = *v26;
      v28 = v26[1];
      v29 = sub_258F0A6A0();

      if (v28)
      {
        v11 = sub_258F0A4E0();
      }

      else
      {
        v11 = 0;
      }

      v12 = v0[6];
      v13 = [objc_allocWithZone(MEMORY[0x277CF15D8]) initWithTimestamp:0 onDeviceSampleIdentifiers:v29 enrollmentIdentifier:v11];

      sub_258F09B90();
      sub_258EE7410(v12);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  v30 = v0[6];
  v31 = v0[3];

  v32 = v0[1];

  return v32();
}

id static SpeakerIdSelectionBiomeReporter.createBiomeEvent(result:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SpeakerIdSamplingData(0);
  sub_258E3A540(a1 + *(v12 + 120), v11);
  v13 = sub_258F09A70();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_258E3A4D8(v11);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = sub_258F09A40();
    v18 = v17;
    (*(v14 + 8))(v11, v13);
    v15 = sub_258DE2990(0, 1, 1, MEMORY[0x277D84F90]);
    v20 = *(v15 + 2);
    v19 = *(v15 + 3);
    if (v20 >= v19 >> 1)
    {
      v15 = sub_258DE2990((v19 > 1), v20 + 1, 1, v15);
    }

    *(v15 + 2) = v20 + 1;
    v21 = &v15[16 * v20];
    *(v21 + 4) = v16;
    *(v21 + 5) = v18;
  }

  v22 = sub_258F09A20();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = (a1 + *(v12 + 112));
  v24 = *v23;
  v25 = v23[1];
  objc_allocWithZone(MEMORY[0x277CF15D8]);

  return sub_258EE7258(v6, v15, v24, v25);
}

uint64_t sub_258EF514C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t SpeakerIdSelectionBiomeReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SpeakerIdSelectionBiomeReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpeakerIdSelectionBiomeReporter()
{
  result = qword_27F98A9E8;
  if (!qword_27F98A9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpeakerIdSelectionResult.speakerIdDonationEvents.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SpeakerIdSelectionResult.speakerIdDonationData.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SpeakerIdSelectionCalculator.__allocating_init(defaults:logger:samplingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v7 = sub_258F0A370();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v30[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a2, v7);
  v13 = type metadata accessor for CAAnalyticsEventSubmitter();
  v14 = swift_allocObject();
  v30[3] = v13;
  v30[4] = &off_286A2C648;
  v30[0] = v14;
  v15 = type metadata accessor for SpeakerIdSelectionCalculator();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v30, v13);
  v20 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v19, v19);
  v22 = (&v30[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v25 = (v18 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_analyticsEventSubmitter);
  v25[3] = v13;
  v25[4] = &off_286A2C648;
  *v25 = v24;
  sub_258F09AE0();
  (*(v8 + 32))(v18 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger, v12, v7);
  *(v18 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults) = a1;
  v26 = (v18 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils);
  v27 = v29;
  *v26 = a3;
  v26[1] = v27;
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  (*(v8 + 8))(a2, v7);
  return v18;
}

uint64_t type metadata accessor for SpeakerIdSelectionCalculator()
{
  result = qword_27F98AA18;
  if (!qword_27F98AA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EF56A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = sub_258F09A20();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EF57E4, 0, 0);
}

uint64_t sub_258EF57E4()
{
  v148 = v0;
  v1 = (v0[3] + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils);
  v2 = *v1;
  v3 = v1[1];
  v4 = (*(v3 + 72))(*v1, v3);
  if (!v5)
  {
    v24 = sub_258F0A350();
    v25 = sub_258F0A820();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "#SpeakerIdSelectionCalculator: Unable to retrieve the siri language.";
LABEL_21:
      _os_log_impl(&dword_258DD8000, v24, v25, v27, v26, 2u);
      MEMORY[0x259C9EF40](v26, -1, -1);
    }

LABEL_22:

    goto LABEL_23;
  }

  v6 = v4;
  v7 = v5;
  v143 = v0[3];
  v8 = sub_258F0A350();
  v9 = sub_258F0A810();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v146 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_258DE3018(v6, v7, &v146);
    _os_log_impl(&dword_258DD8000, v8, v9, "#SpeakerIdSelectionCalculator: SpeakerIdSelectionCalculator locale: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C9EF40](v11, -1, -1);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  v12 = (*(v3 + 16))(v6, v7, v2, v3);
  if (!v13)
  {

    v24 = sub_258F0A350();
    v25 = sub_258F0A820();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "#SpeakerIdSelectionCalculator:  Unable to retrieve the current voice profile enrollment.";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v14 = v12;
  v146 = v12;
  v147 = v13;
  v140 = v13;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x6F697463656C6553, 0xED0000657461446ELL);

  v133 = v146;
  v137 = v147;
  v15 = (*(v3 + 8))(v6, v7, v2, v3);
  if (v15 == 2)
  {

    v28 = sub_258F0A350();
    v29 = sub_258F0A810();

    v126 = v6;
    v127 = v14;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v14;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v146 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_258DE3018(v30, v140, &v146);
      _os_log_impl(&dword_258DD8000, v28, v29, "#SpeakerIdSelectionCalculator: enrollment selection status is samplingSelectionFinished for enrollmentId: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x259C9EF40](v32, -1, -1);
      MEMORY[0x259C9EF40](v31, -1, -1);
    }

    v51 = v0[6];
    v52 = v0[7];
    v53 = v0[3];
    v54 = v0[4];
    type metadata accessor for SamplingUtils();
    v55 = *(v53 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults);
    v56 = v137;
    log = v55;
    static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)(v55, v54);
    if ((*(v52 + 48))(v54, 1, v51) != 1)
    {
      v70 = v0[10];
      v69 = v0[11];
      v72 = v0[6];
      v71 = v0[7];
      (*(v71 + 32))(v69, v0[4], v72);
      v125 = *(v71 + 16);
      v125(v70, v69, v72);

      v73 = sub_258F0A350();
      v74 = sub_258F0A810();

      v75 = os_log_type_enabled(v73, v74);
      v76 = v0[10];
      v77 = v0[6];
      v78 = v0[7];
      if (v75)
      {
        v121 = v0[10];
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v146 = v124;
        *v123 = 136315394;
        sub_258EF79AC(&qword_27F988750, MEMORY[0x277CC9578]);
        v120 = sub_258F0AD60();
        v122 = v73;
        v79 = v74;
        v81 = v80;
        v82 = v77;
        v83 = *(v78 + 8);
        v83(v76, v82);
        v84 = sub_258DE3018(v120, v81, &v146);

        *(v123 + 4) = v84;
        *(v123 + 12) = 2080;
        v85 = v133;
        *(v123 + 14) = sub_258DE3018(v133, v137, &v146);
        _os_log_impl(&dword_258DD8000, v122, v79, "#SpeakerIdSelectionCalculator: selectedDate: %s for selectionDateKey: %s", v123, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v124, -1, -1);
        MEMORY[0x259C9EF40](v123, -1, -1);

        v86 = v127;
      }

      else
      {

        v88 = v77;
        v83 = *(v78 + 8);
        v83(v76, v88);
        v86 = v127;
        v85 = v133;
      }

      v89 = (*(v3 + 104))(v85, v137, log, v2, v3);
      v134 = v0[11];
      loga = v0[6];
      if ((v89 & 1) == 0)
      {
        v139 = v83;
        v104 = v85;
        v105 = v0[8];
        v106 = v0[3];
        v21 = sub_258EF6DEC(v126, v7, v86, v140, v104, v56);
        v23 = v107;

        v125(v105, v134, loga);

        v108 = sub_258F0A350();
        v109 = sub_258F0A810();

        v110 = os_log_type_enabled(v108, v109);
        v111 = v0[7];
        v145 = v0[8];
        v136 = v0[6];
        if (v110)
        {
          logb = v109;
          v112 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v146 = v132;
          *v112 = 136315394;
          v113 = sub_258DE3018(v127, v140, &v146);
          v128 = v108;
          v114 = v113;

          *(v112 + 4) = v114;
          *(v112 + 12) = 2080;
          sub_258EF79AC(&qword_27F988750, MEMORY[0x277CC9578]);
          v142 = sub_258F0AD60();
          v116 = v115;
          v139(v145, v136);
          v117 = sub_258DE3018(v142, v116, &v146);

          *(v112 + 14) = v117;
          _os_log_impl(&dword_258DD8000, v128, logb, "#SpeakerIdSelectionCalculator: enrollmentId: %s collection date: %s is out of collecting cycle, start sampling again", v112, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C9EF40](v132, -1, -1);
          MEMORY[0x259C9EF40](v112, -1, -1);
        }

        else
        {

          v139(v145, v136);
        }

        v118 = v0[11];
        v119 = v0[6];
        (*(v3 + 32))(v126, v7, v2, v3);

        v139(v118, v119);
        goto LABEL_24;
      }

      v90 = v0[9];

      v125(v90, v134, loga);

      v91 = sub_258F0A350();
      v92 = sub_258F0A810();

      v93 = os_log_type_enabled(v91, v92);
      v94 = v0[11];
      v95 = v0[9];
      v97 = v0[6];
      v96 = v0[7];
      if (v93)
      {
        v138 = v83;
        v98 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v135 = v146;
        *v98 = 136315394;
        v99 = sub_258DE3018(v86, v140, &v146);

        *(v98 + 4) = v99;
        *(v98 + 12) = 2080;
        sub_258EF79AC(&qword_27F988750, MEMORY[0x277CC9578]);
        v100 = sub_258F0AD60();
        v102 = v101;
        v138(v95, v97);
        v103 = sub_258DE3018(v100, v102, &v146);

        *(v98 + 14) = v103;
        _os_log_impl(&dword_258DD8000, v91, v92, "#SpeakerIdSelectionCalculator: enrollmentId: %s collection date: %s is within collecting period", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v135, -1, -1);
        MEMORY[0x259C9EF40](v98, -1, -1);

        v138(v94, v97);
      }

      else
      {

        v83(v95, v97);
        v83(v94, v97);
      }

      goto LABEL_23;
    }

    v57 = v0[4];

    sub_258DE2184(v57, &qword_27F988728, &unk_258F0B840);
    v24 = sub_258F0A350();
    v25 = sub_258F0A810();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_22;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "#SpeakerIdSelectionCalculator: Cannot find device collection selection date, keep marking selection as finished";
    goto LABEL_21;
  }

  if (v15)
  {
  }

  else
  {
    v16 = v0[6];
    v17 = v0[7];
    v18 = v0[5];
    v19 = v0[3];
    type metadata accessor for SamplingUtils();
    static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)(*(v19 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults), v18);
    if ((*(v17 + 48))(v18, 1, v16) == 1)
    {
      v20 = v0[3];
      sub_258DE2184(v0[5], &qword_27F988728, &unk_258F0B840);
      v21 = sub_258EF6DEC(v6, v7, v14, v140, v133, v137);
      v23 = v22;

      goto LABEL_24;
    }

    v34 = v0[12];
    v33 = v0[13];
    v35 = v0[6];
    v36 = v0[7];
    v37 = v0[5];

    (*(v36 + 32))(v33, v37, v35);
    (*(v36 + 16))(v34, v33, v35);
    v38 = sub_258F0A350();
    v39 = sub_258F0A810();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[12];
    v42 = v0[13];
    v44 = v0[6];
    v43 = v0[7];
    if (v40)
    {
      v144 = v0[13];
      v45 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v146 = v141;
      *v45 = 136315138;
      sub_258EF79AC(&qword_27F988750, MEMORY[0x277CC9578]);
      v46 = sub_258F0AD60();
      v48 = v47;
      v49 = *(v43 + 8);
      v49(v41, v44);
      v50 = sub_258DE3018(v46, v48, &v146);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_258DD8000, v38, v39, "#SpeakerIdSelectionCalculator: Device already selected for Sampling on date: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      MEMORY[0x259C9EF40](v141, -1, -1);
      MEMORY[0x259C9EF40](v45, -1, -1);

      v49(v144, v44);
    }

    else
    {

      v87 = *(v43 + 8);
      v87(v41, v44);
      v87(v42, v44);
    }
  }

LABEL_23:
  v21 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
LABEL_24:
  v59 = v0[12];
  v58 = v0[13];
  v61 = v0[10];
  v60 = v0[11];
  v63 = v0[8];
  v62 = v0[9];
  v65 = v0[4];
  v64 = v0[5];
  v66 = v0[2];
  *v66 = v21;
  v66[1] = v23;

  v67 = v0[1];

  return v67();
}

id sub_258EF6704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v61 - v5;
  v7 = sub_258F09A70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_258F0A370();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v74, v14);
  v75 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SpeakerIdSamplingData(0);
  v16 = *(*(v71 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v71, v17);
  v73 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v72 = &v61 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v26 = &v61 - v25;
  v27 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  v76 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger;
  if (!v28)
  {
LABEL_13:
    v52 = sub_258F0A350();
    v53 = sub_258F0A810();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_258DD8000, v52, v53, "#SpeakerIdSelectionCalculator: Created ODSAMPLESiriSchemaODSAMPLEClientEvent for the donationID", v54, 2u);
      MEMORY[0x259C9EF40](v54, -1, -1);
    }

    v55 = sub_258F0A350();
    v56 = sub_258F0A810();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = *(v27 + 16);

      _os_log_impl(&dword_258DD8000, v55, v56, "#SpeakerIdSelectionCalculator: donationID event count %ld", v57, 0xCu);
      MEMORY[0x259C9EF40](v57, -1, -1);
    }

    else
    {
    }

    return v27;
  }

  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v30 = *(v24 + 72);
  sub_258EE73AC(a1 + v29, &v61 - v25);
  v31 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
  if (!v31)
  {
LABEL_19:

    v58 = sub_258F0A350();
    v59 = sub_258F0A820();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_258DD8000, v58, v59, "Failed to generate event", v60, 2u);
      MEMORY[0x259C9EF40](v60, -1, -1);
    }

    sub_258EE7410(v26);
    return MEMORY[0x277D84F90];
  }

  v32 = v31;
  v70 = (v12 + 16);
  v67 = (v8 + 48);
  v68 = v7;
  v62 = (v8 + 8);
  v63 = (v8 + 32);
  v69 = sub_258EF4894();
  v33 = a1 + v30 + v29;
  v34 = v30;
  v64 = v30;
  v65 = v26;
  while (1)
  {
    v35 = v72;
    sub_258EE73AC(v26, v72);
    v36 = v75;
    (*v70)(v75, v77 + v76, v74);
    v37 = sub_258EF3FFC(v35, v36);
    [v32 setSpeakerIdModelSampleReported_];

    v38 = v73;
    sub_258EE73AC(v26, v73);
    result = [objc_allocWithZone(MEMORY[0x277D59530]) init];
    if (!result)
    {
      break;
    }

    v40 = result;
    sub_258E3A540(v38 + *(v71 + 120), v6);
    v41 = v68;
    if ((*v67)(v6, 1, v68) == 1)
    {
      sub_258EE7410(v38);
      sub_258DE2184(v6, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      v42 = v6;
      v43 = v66;
      (*v63)(v66, v42, v41);
      v44 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v45 = v38;
      v46 = sub_258F09A50();
      v47 = [v44 initWithNSUUID_];

      [v40 setOdsampleId_];
      v48 = v43;
      v6 = v42;
      v26 = v65;
      (*v62)(v48, v41);
      v49 = v45;
      v34 = v64;
      sub_258EE7410(v49);
    }

    [v32 setEventMetadata_];

    v50 = v32;
    MEMORY[0x259C9DF50]();
    if (*(v78 + 16) >= *(v78 + 24) >> 1)
    {
      v51 = *(v78 + 16);
      sub_258F0A6D0();
    }

    sub_258F0A700();

    sub_258EE7410(v26);
    v27 = v78;
    if (!--v28)
    {
      goto LABEL_13;
    }

    sub_258EE73AC(v33, v26);
    v32 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v33 += v34;
    if (!v32)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

size_t sub_258EF6DEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v59 = a2;
  v60 = a6;
  v12 = type metadata accessor for SpeakerIdSamplingData(0);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v56 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258F09A70();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258F09A60();
  sub_258F09A40();
  v23 = v22;
  (*(v17 + 8))(v21, v16);
  v24 = *(v7 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults);

  v25 = sub_258F0A4E0();
  v67[0] = a3;
  v67[1] = a4;

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v26 = sub_258F0A4E0();

  [v24 setValue:v25 forKey:v26];
  v57 = v23;
  v27 = v59;

  v28 = v60;
  v58 = v7;
  v29 = *(v7 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils);
  v30 = *(v7 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils + 8);
  v31 = *(v30 + 32);
  v55 = a1;
  v32 = a1;
  v33 = a5;
  v31(v32, v27, v29, v30);
  (*(v30 + 40))(a5, v28, v24, v29, v30);
  v34 = *(v30 + 64);
  v64 = a3;
  v65 = a4;
  v35 = v34(a3, a4, v29, v30);
  v36 = v35;
  if (v35 >> 62)
  {
    goto LABEL_16;
  }

  v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
    while (1)
    {
      v67[0] = MEMORY[0x277D84F90];
      result = sub_258E14DB8(0, v37 & ~(v37 >> 63), 0);
      if (v37 < 0)
      {
        break;
      }

      v54 = v33;
      v33 = 0;
      v39 = v67[0];
      v40 = v36;
      v61 = v36 & 0xFFFFFFFFFFFFFF8;
      v62 = v36 & 0xC000000000000001;
      v41 = v36;
      v28 = v56;
      v36 = v37;
      while (1)
      {
        v27 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v62)
        {
          v42 = MEMORY[0x259C9E3B0](v33, v40);
        }

        else
        {
          if (v33 >= *(v61 + 16))
          {
            goto LABEL_15;
          }

          v42 = *(v40 + 8 * v33 + 32);
        }

        v43 = v42;
        v66 = v42;
        sub_258EF7348(&v66, v64, v65, v28);

        v67[0] = v39;
        v44 = v28;
        v46 = *(v39 + 16);
        v45 = *(v39 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_258E14DB8(v45 > 1, v46 + 1, 1);
          v39 = v67[0];
        }

        *(v39 + 16) = v46 + 1;
        sub_258EF02A0(v44, v39 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v46);
        ++v33;
        v40 = v41;
        v28 = v44;
        if (v27 == v36)
        {

          v27 = v59;
          v28 = v60;
          v33 = v54;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v37 = sub_258F0AA20();
      if (!v37)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v39 = MEMORY[0x277D84F90];
LABEL_18:
    v47 = sub_258EF6704(v39);

    v48 = sub_258F0A350();
    v49 = sub_258F0A840();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v28;
      v51 = swift_slowAlloc();
      v52 = v33;
      v53 = swift_slowAlloc();
      v67[0] = v53;
      *v51 = 136315394;
      *(v51 + 4) = sub_258DE3018(v55, v27, v67);
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_258DE3018(v52, v50, v67);
      _os_log_impl(&dword_258DD8000, v48, v49, "finished setting event collection for locale: %s and selectionDateKey: %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v53, -1, -1);
      MEMORY[0x259C9EF40](v51, -1, -1);
    }

    return v47;
  }

  return result;
}

id sub_258EF7348@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v45 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = v45 - v19;
  v21 = *a1;
  v22 = type metadata accessor for SpeakerIdSamplingDataBuilderImpl(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_258EF13A8();
  v26 = (v25 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId);
  v27 = *(v25 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId + 8);
  *v26 = a2;
  v26[1] = a3;

  *(v25 + 16) = 1;

  result = [v21 donationId];
  if (result)
  {
    v29 = result;
    sub_258F0A4F0();

    sub_258F09A30();

    v30 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId;
    swift_beginAccess();
    sub_258EF0230(v20, v25 + v30);
    swift_endAccess();
    v31 = [v21 triggerPhrase];
    v32 = 2 * (v31 == 2);
    if (v31 == 1)
    {
      v32 = 1;
    }

    v33 = v25 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase;
    *v33 = v32;
    *(v33 + 4) = 0;
    sub_258F09A60();
    v34 = sub_258F09A70();
    (*(*(v34 - 8) + 56))(v17, 0, 1, v34);
    sub_258E3A468(v17, v13);
    v35 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId;
    swift_beginAccess();
    sub_258EF0230(v13, v25 + v35);
    swift_endAccess();
    result = [v21 locale];
    if (result)
    {
      v36 = result;
      v37 = sub_258F0A4F0();
      v39 = v38;

      v45[5] = v37;
      v45[6] = v39;
      v45[3] = 45;
      v45[4] = 0xE100000000000000;
      v45[1] = 95;
      v45[2] = 0xE100000000000000;
      sub_258DEF388();
      v40 = sub_258F0A970();
      v42 = v41;

      v43 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v40, v42);

      v44 = *(v25 + 104);
      *(v25 + 104) = v43;

      sub_258EF07B8(a4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SpeakerIdSelectionCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_analyticsEventSubmitter));
  return v0;
}

uint64_t SpeakerIdSelectionCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_analyticsEventSubmitter));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EF78B8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EF56A4(a1);
}

uint64_t sub_258EF7954(uint64_t a1)
{
  result = sub_258EF79AC(&qword_27F98AA00, type metadata accessor for SpeakerIdSelectionCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EF79AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258EF79F4()
{
  result = qword_27F98AA08;
  if (!qword_27F98AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AA08);
  }

  return result;
}

unint64_t sub_258EF7A48()
{
  result = qword_27F98AA10;
  if (!qword_27F98AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AA10);
  }

  return result;
}

uint64_t sub_258EF7AB4()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_258F09B00();
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

uint64_t dispatch thunk of SpeakerIdSelectionCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t SpeakerIdSelectionDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SpeakerIdSelectionDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EF7DF8()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SpeakerIdSelectionDataDataRecord", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t SpeakerIdSelectionDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdSelectionDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EF7FD4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EF7DD8();
}

uint64_t type metadata accessor for SpeakerIdSelectionDataProvider()
{
  result = qword_27F98AA30;
  if (!qword_27F98AA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSelectionDataProvider.loadData()(uint64_t a1)
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

uint64_t sub_258EF8230(uint64_t a1)
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

uint64_t SpeakerIdSelectionSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + 16) = a2;
  return v7;
}

uint64_t SpeakerIdSelectionSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_258EF8458(_OWORD *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_258EF8480, 0, 0);
}

void sub_258EF8480()
{
  v30 = v0;
  v1 = v0[2];
  v0[5] = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSelectionSELFReporter: Reporter invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + 16);
  v0[6] = v6;
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v0[7] = v7;
      v8 = v0[3];
      if (v7 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v10 = v0[4];
      v9 = v0[5];
      v11 = v0[2];
      v12 = *(v8 + 8 * v7 + 32);
      v0[8] = v12;
      v13 = v12;

      v14 = sub_258F0A350();
      v15 = sub_258F0A810();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = v0[3];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29 = v18;
        *v17 = 136315138;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A890, &unk_258F17380);
        v20 = MEMORY[0x259C9DF80](v16, v19);
        v22 = sub_258DE3018(v20, v21, &v29);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_258DD8000, v14, v15, "#SpeakerIdSelectionSELFReporter: result.speakerIdDonationEvents %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x259C9EF40](v18, -1, -1);
        MEMORY[0x259C9EF40](v17, -1, -1);
      }

      if (v12)
      {
        break;
      }

      v7 = v0[7] + 1;
      if (v7 == v0[6])
      {
        goto LABEL_10;
      }
    }

    v24 = v0[5];
    v25 = v0[2];
    v26 = *(v25 + 16);
    v27 = v13;
    v28 = swift_task_alloc();
    v0[9] = v28;
    *v28 = v0;
    v28[1] = sub_258EF877C;

    sub_258EB6B24(v27, v25 + v24);
  }

  else
  {
LABEL_10:
    v23 = v0[1];

    v23();
  }
}

uint64_t sub_258EF877C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_258EF8B10;
  }

  else
  {

    v4 = sub_258EF8898;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_258EF8898()
{
  v24 = v0;

  while (1)
  {
    v1 = *(v0 + 56) + 1;
    if (v1 == *(v0 + 48))
    {
      break;
    }

    *(v0 + 56) = v1;
    v2 = *(v0 + 24);
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 16);
    v6 = *(v2 + 8 * v1 + 32);
    *(v0 + 64) = v6;
    v7 = v6;

    v8 = sub_258F0A350();
    v9 = sub_258F0A810();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 24);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A890, &unk_258F17380);
      v14 = MEMORY[0x259C9DF80](v10, v13);
      v16 = sub_258DE3018(v14, v15, &v23);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_258DD8000, v8, v9, "#SpeakerIdSelectionSELFReporter: result.speakerIdDonationEvents %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    if (v6)
    {
      v18 = *(v0 + 40);
      v19 = *(v0 + 16);
      v20 = *(v19 + 16);
      v21 = v7;
      v22 = swift_task_alloc();
      *(v0 + 72) = v22;
      *v22 = v0;
      v22[1] = sub_258EF877C;

      sub_258EB6B24(v21, v19 + v18);
      return;
    }
  }

  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_258EF8B10()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#SpeakerIdSelectionSELFReporter: Unable to report SpeakerId Donation Events", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = *(v0 + 80);
  v7 = *(v0 + 64);

  swift_willThrow();
  v8 = *(v0 + 8);
  v9 = *(v0 + 80);

  return v8();
}

uint64_t sub_258EF8C04()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t SpeakerIdSelectionSELFReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SpeakerIdSelectionSELFReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of SpeakerIdSelectionReporter.report(_:)(uint64_t a1)
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

uint64_t type metadata accessor for SpeakerIdSelectionSELFReporter()
{
  result = qword_27F98AA48;
  if (!qword_27F98AA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall inStoreDemoMode()()
{
  v0 = sub_258F0A4E0();
  v1 = sub_258F0A4E0();
  v2 = swift_slowAlloc();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, v2);
  v4 = *v2;

  if (AppBooleanValue)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

uint64_t VTEnrollmentResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t VTEnrollmentResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t VTEnrollmentResults.vtEnrollmentData.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t VTEnrollmentCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v34 = a2;
  v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v34 - v9;
  v11 = sub_258F0A370();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v12[2];
  v17(v16, a1, v11);
  sub_258DE20C0(a2, v10, &qword_27F988720, &qword_258F0B830);
  type metadata accessor for BiomeResultsWrapperFactory();
  v35 = swift_allocObject();
  v18 = type metadata accessor for CAAnalyticsEventSubmitter();
  v19 = swift_allocObject();
  v39[3] = v18;
  v39[4] = &off_286A2C648;
  v39[0] = v19;
  v20 = type metadata accessor for VTEnrollmentCalculator();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v39, v18);
  v25 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v24, v24);
  v27 = (&v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v30 = (v23 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_analyticsEventSubmitter);
  v30[3] = v18;
  v30[4] = &off_286A2C648;
  *v30 = v29;
  sub_258F09AC0();
  v17((v23 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_logger), v16, v11);
  sub_258DE20C0(v10, v23 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v31 = (v23 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_bookmarkService);
  v31[3] = sub_258F09C20();
  v31[4] = &off_286A2FA30;
  *v31 = v37;
  sub_258DE2184(v34, &qword_27F988720, &qword_258F0B830);
  v32 = v12[1];
  v32(v36, v11);
  sub_258DE2184(v10, &qword_27F988720, &qword_258F0B830);
  v32(v16, v11);
  *(v23 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_biomeResultsFactory) = v35;
  *(v23 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_defaults) = v38;
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  return v23;
}

uint64_t type metadata accessor for VTEnrollmentCalculator()
{
  result = qword_27F98AA80;
  if (!qword_27F98AA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EF9514(uint64_t a1)
{
  v2[146] = v1;
  v2[145] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0) - 8) + 64) + 15;
  v2[147] = swift_task_alloc();
  v2[148] = swift_task_alloc();
  v4 = *(type metadata accessor for VTEnrollmentData(0) - 8);
  v2[149] = v4;
  v5 = *(v4 + 64) + 15;
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v6 = type metadata accessor for FunnelEventMetadata(0);
  v2[152] = v6;
  v7 = *(v6 - 8);
  v2[153] = v7;
  v8 = *(v7 + 64) + 15;
  v2[154] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v10 = sub_258F09A20();
  v2[157] = v10;
  v11 = *(v10 - 8);
  v2[158] = v11;
  v12 = *(v11 + 64) + 15;
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v2[162] = swift_task_alloc();
  v2[163] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830) - 8) + 64) + 15;
  v2[164] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EF9788, 0, 0);
}

uint64_t sub_258EF9788()
{
  v216 = v0;
  v213 = *(v0 + 1168);
  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "SQL calculator invoked: VTEnrollmentCalculator", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v4 = *(v0 + 1312);
  v5 = *(v0 + 1168);

  sub_258DE20C0(v5 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL, v4, &qword_27F988720, &qword_258F0B830);
  v6 = sub_258F098D0();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_258DE2184(v4, &qword_27F988720, &qword_258F0B830);
  if (v5 == 1)
  {
    sub_258DE403C();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();
    v164 = *(v0 + 1312);
    v165 = *(v0 + 1304);
    v166 = *(v0 + 1296);
    v167 = *(v0 + 1288);
    v168 = *(v0 + 1280);
    v169 = *(v0 + 1272);
    v170 = *(v0 + 1248);
    v171 = *(v0 + 1240);
    v172 = *(v0 + 1232);
    v173 = *(v0 + 1208);
    v205 = *(v0 + 1200);
    v208 = *(v0 + 1184);
    v211 = *(v0 + 1176);

    v174 = *(v0 + 8);
LABEL_164:

    return v174();
  }

  v8 = *(v0 + 1168);
  sub_258DE03D8();
  v9 = *(v0 + 1168);
  v10 = sub_258DE06C4();
  v11 = *(*(v0 + 1168) + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_defaults);
  v184 = v10;
  v12 = sub_258F0A4E0();
  v181 = v11;
  LODWORD(v11) = [v11 BOOLForKey_];

  v13 = sub_258F0A350();
  v14 = sub_258F0A810();
  v15 = os_log_type_enabled(v13, v14);
  if (v11)
  {
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v215[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_258DE3018(0x6C6C6F726E455456, 0xEC000000746E656DLL, v215);
      _os_log_impl(&dword_258DD8000, v13, v14, "%s: Include current date data for aggregation.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x259C9EF40](v17, -1, -1);
      MEMORY[0x259C9EF40](v16, -1, -1);
    }

    v18 = v184;
  }

  else
  {
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v215[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_258DE3018(0x6C6C6F726E455456, 0xEC000000746E656DLL, v215);
      _os_log_impl(&dword_258DD8000, v13, v14, "%s: current date data NOT included for aggregation.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x259C9EF40](v20, -1, -1);
      MEMORY[0x259C9EF40](v19, -1, -1);
    }

    v18 = v184;
    v21 = v184;
  }

  v22 = *(v0 + 1304);
  v23 = *(v0 + 1296);
  v24 = *(v0 + 1168);
  sub_258F0A050();
  v25 = MEMORY[0x277D84F90];
  v26 = sub_258F0A010();
  v27 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  v182 = swift_allocObject();
  *(v182 + 16) = v27;
  sub_258F09B50();
  sub_258F09930();
  if ((sub_258F0A070() & 1) == 0)
  {
LABEL_163:
    v161 = *(v0 + 1264);
    v162 = *(v0 + 1168);
    sub_258DFD094(v182, 1);
    v163 = (v161 + 8);
    v191 = *(v0 + 1312);
    v175 = *(v0 + 1304);
    v189 = *(v0 + 1296);
    v193 = *(v0 + 1288);
    v195 = *(v0 + 1280);
    v176 = *(v0 + 1272);
    v209 = v25;
    v177 = *(v0 + 1256);
    v197 = *(v0 + 1248);
    v199 = *(v0 + 1240);
    v201 = *(v0 + 1232);
    v203 = *(v0 + 1208);
    v206 = *(v0 + 1200);
    v212 = *(v0 + 1184);
    v214 = *(v0 + 1176);
    v178 = *(v0 + 1160);
    sub_258F0A0F0();
    sub_258F09BB0();
    v179 = sub_258F09B70();
    v180 = *v163;
    (*v163)(v176, v177);

    v180(v189, v177);
    v180(v175, v177);
    *v178 = MEMORY[0x277D84F90];
    v178[1] = v179;
    v178[2] = v209;

    v174 = *(v0 + 8);
    goto LABEL_164;
  }

  v183 = (*(v0 + 1264) + 8);
  v186 = *(v0 + 1192);
  v187 = *(v0 + 1216);
  v185 = (*(v0 + 1224) + 56);
  while (1)
  {
    v32 = sub_258F0A060();
    if (!v32)
    {
      goto LABEL_15;
    }

    v33 = v32;
    v34 = sub_258F0A350();
    v35 = sub_258F0A810();
    v207 = v25;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v215[0] = v37;
      *v36 = 136315138;
      v38 = sub_258F0A420();
      v40 = sub_258DE3018(v38, v39, v215);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_258DD8000, v34, v35, "VTEnrollment row data: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x259C9EF40](v37, -1, -1);
      MEMORY[0x259C9EF40](v36, -1, -1);
    }

    v210 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
    *(v0 + 976) = 0xD000000000000017;
    *(v0 + 984) = 0x8000000258F1EC00;
    sub_258F0AA80();
    if (*(v33 + 16) && (v41 = sub_258E2EA2C(v0 + 56), (v42 & 1) != 0))
    {
      sub_258DE4090(*(v33 + 56) + 32 * v41, v0 + 456);
      sub_258E0F590(v0 + 56);
      sub_258E76E10();
      if (swift_dynamicCast())
      {
        v43 = *(v0 + 1296);
        v44 = *(v0 + 1288);
        v45 = *(v0 + 1280);
        v46 = *(v0 + 1152);
        [v46 doubleValue];
        sub_258F099D0();
        sub_258F09930();
        if (sub_258F099F0())
        {
          v47 = sub_258F0A4E0();
          v48 = [v181 BOOLForKey_];

          if ((v48 & 1) == 0)
          {
            v28 = *(v0 + 1288);
            v29 = *(v0 + 1280);
            v30 = *(v0 + 1256);

            v31 = *v183;
            (*v183)(v29, v30);
            v31(v28, v30);
            v25 = v207;
            goto LABEL_15;
          }
        }

        v49 = *(v0 + 1280);
        sub_258F099E0();
        v51 = v50;
        if (v50 > -1.0 && v50 < 1.84467441e19 && v50 == trunc(v50))
        {
          [v210 setStartTimestampInSecondsSince1970_];
          if (!v210)
          {
LABEL_113:
            v157 = *(v0 + 1288);
            v158 = *(v0 + 1280);
            v159 = *(v0 + 1256);

            v160 = *v183;
            (*v183)(v158, v159);
            v160(v157, v159);
            goto LABEL_30;
          }

          v52 = v210;
          [v52 setNumberOfSeconds:86400];
        }

        else
        {
          v154 = *(v0 + 1168);
          sub_258E2E59C(1, 0xD00000000000001DLL, 0x8000000258F20280);
          v52 = sub_258F0A350();
          v155 = sub_258F0A820();
          if (os_log_type_enabled(v52, v155))
          {
            v156 = swift_slowAlloc();
            *v156 = 134217984;
            *(v156 + 4) = v51;
            _os_log_impl(&dword_258DD8000, v52, v155, "startTimestamp %f cannot be cast to UInt64.", v156, 0xCu);
            MEMORY[0x259C9EF40](v156, -1, -1);
          }
        }

        goto LABEL_113;
      }
    }

    else
    {
      sub_258E0F590(v0 + 56);
    }

LABEL_30:
    v53 = *(v0 + 1248);
    v54 = sub_258F09A70();
    v55 = *(*(v54 - 8) + 56);
    v55(v53, 1, 1, v54);
    *(v0 + 880) = 0xD000000000000015;
    *(v0 + 888) = 0x8000000258F189D0;
    sub_258F0AA80();
    if (*(v33 + 16) && (v56 = sub_258E2EA2C(v0 + 176), (v57 & 1) != 0))
    {
      sub_258DE4090(*(v33 + 56) + 32 * v56, v0 + 552);
      sub_258E0F590(v0 + 176);
      if (swift_dynamicCast())
      {
        v58 = *(v0 + 1248);
        v59 = *(v0 + 1240);
        v60 = *(v0 + 1136);
        v61 = *(v0 + 1144);
        sub_258F09A30();

        sub_258DE2184(v58, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v59, v58, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258E0F590(v0 + 176);
    }

    strcpy((v0 + 864), "program_code");
    *(v0 + 877) = 0;
    *(v0 + 878) = -5120;
    sub_258F0AA80();
    if (!*(v33 + 16) || (v62 = sub_258E2EA2C(v0 + 296), (v63 & 1) == 0))
    {
      sub_258E0F590(v0 + 296);
LABEL_41:
      v68 = 0;
      v204 = 1;
      goto LABEL_42;
    }

    sub_258DE4090(*(v33 + 56) + 32 * v62, v0 + 744);
    sub_258E0F590(v0 + 296);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v64 = *(v0 + 1120);
    v65 = *(v0 + 1128);
    v66 = sub_258F0A4E0();

    v67 = v66;
    if ([v67 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
    {
      v68 = 0;
    }

    else if ([v67 isEqualToString:@"PROGRAMCODE_IOS"])
    {
      v68 = 1;
    }

    else if ([v67 isEqualToString:@"PROGRAMCODE_MACOS"])
    {
      v68 = 2;
    }

    else if ([v67 isEqualToString:@"PROGRAMCODE_TVOS"])
    {
      v68 = 3;
    }

    else if ([v67 isEqualToString:@"PROGRAMCODE_WATCHOS"])
    {
      v68 = 4;
    }

    else
    {
      v68 = [v67 isEqualToString:@"PROGRAMCODE_VISIONOS"] ? 5 : 0;
    }

    v204 = 0;
LABEL_42:
    *(v0 + 960) = 0x656D6C6C6F726E65;
    *(v0 + 968) = 0xEF65646F6D5F746ELL;
    sub_258F0AA80();
    if (!*(v33 + 16) || (v69 = sub_258E2EA2C(v0 + 416), (v70 & 1) == 0))
    {
      sub_258E0F590(v0 + 416);
LABEL_48:
      v202 = 0;
      v200 = 1;
      goto LABEL_49;
    }

    sub_258DE4090(*(v33 + 56) + 32 * v69, v0 + 616);
    sub_258E0F590(v0 + 416);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    v71 = *(v0 + 1104);
    v72 = *(v0 + 1112);
    v73 = sub_258F0A4E0();

    v74 = v73;
    if ([v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_UNKNOWN"])
    {
      v202 = 0;
    }

    else
    {
      if ([v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_SIRI_AND_PHS_BUDDY"])
      {
        v151 = 1;
      }

      else if ([v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_SIRI_AND_PHS_FOLLOWUP"])
      {
        v151 = 2;
      }

      else if ([v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_TRAINING_UI_ONLY"])
      {
        v151 = 3;
      }

      else if ([v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_SIRI_ONLY"])
      {
        v151 = 4;
      }

      else if ([v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_PHS_ONLY"])
      {
        v151 = 5;
      }

      else if ([v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_SIDEKICK"])
      {
        v151 = 6;
      }

      else if ([v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_VT_CONFIRMATION"])
      {
        v151 = 7;
      }

      else if ([v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_HOME_ONBOARDING"])
      {
        v151 = 8;
      }

      else
      {
        v151 = [v74 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_HOME_VOICE_ENROLL"] ? 9 : 0;
      }

      v202 = v151;
    }

    v200 = 0;
LABEL_49:
    *(v0 + 928) = 0xD000000000000012;
    *(v0 + 936) = 0x8000000258F20220;
    sub_258F0AA80();
    if (!*(v33 + 16) || (v75 = sub_258E2EA2C(v0 + 16), (v76 & 1) == 0))
    {
      sub_258E0F590(v0 + 16);
LABEL_55:
      v198 = 0;
      v196 = 1;
      goto LABEL_56;
    }

    sub_258DE4090(*(v33 + 56) + 32 * v75, v0 + 776);
    sub_258E0F590(v0 + 16);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_55;
    }

    v77 = *(v0 + 1088);
    v78 = *(v0 + 1096);
    v79 = sub_258F0A4E0();

    v80 = v79;
    if ([v80 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_UNKNOWN"])
    {
      v198 = 0;
    }

    else
    {
      if ([v80 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_SUCCESSFUL"])
      {
        v152 = 1;
      }

      else if ([v80 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_CANCELLED"])
      {
        v152 = 2;
      }

      else if ([v80 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_FAILED"])
      {
        v152 = 3;
      }

      else
      {
        v152 = [v80 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_SKIPPED"] ? 4 : 0;
      }

      v198 = v152;
    }

    v196 = 0;
LABEL_56:
    *(v0 + 912) = 0xD000000000000010;
    *(v0 + 920) = 0x8000000258F20240;
    sub_258F0AA80();
    if (!*(v33 + 16) || (v81 = sub_258E2EA2C(v0 + 376), (v82 & 1) == 0))
    {
      sub_258E0F590(v0 + 376);
LABEL_62:
      v194 = 0;
      v192 = 1;
      goto LABEL_63;
    }

    sub_258DE4090(*(v33 + 56) + 32 * v81, v0 + 584);
    sub_258E0F590(v0 + 376);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_62;
    }

    v83 = *(v0 + 1072);
    v84 = *(v0 + 1080);
    v85 = sub_258F0A4E0();

    v86 = v85;
    if ([v86 isEqualToString:@"SIRISETUPENROLLMENTUITRAININGOUTCOME_UNKNOWN"])
    {
      v194 = 0;
    }

    else
    {
      if ([v86 isEqualToString:@"SIRISETUPENROLLMENTUITRAININGOUTCOME_SUCCESSFUL"])
      {
        v153 = 1;
      }

      else if ([v86 isEqualToString:@"SIRISETUPENROLLMENTUITRAININGOUTCOME_SKIPPED"])
      {
        v153 = 2;
      }

      else
      {
        v153 = [v86 isEqualToString:@"SIRISETUPENROLLMENTUITRAININGOUTCOME_FAILED"] ? 3 : 0;
      }

      v194 = v153;
    }

    v192 = 0;
LABEL_63:
    v87 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
    *(v0 + 832) = 0xD000000000000011;
    *(v0 + 840) = 0x8000000258F18A30;
    sub_258F0AA80();
    if (*(v33 + 16) && (v88 = sub_258E2EA2C(v0 + 336), (v89 & 1) != 0))
    {
      sub_258DE4090(*(v33 + 56) + 32 * v88, v0 + 680);
      sub_258E0F590(v0 + 336);
      if (swift_dynamicCast())
      {
        v90 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*(v0 + 1056), *(v0 + 1064));

        v87 = v90;
      }
    }

    else
    {
      sub_258E0F590(v0 + 336);
    }

    *(v0 + 848) = 0xD000000000000012;
    *(v0 + 856) = 0x8000000258F20260;
    sub_258F0AA80();
    if (!*(v33 + 16) || (v91 = sub_258E2EA2C(v0 + 256), (v92 & 1) == 0))
    {
      sub_258E0F590(v0 + 256);
LABEL_74:
      v97 = 0;
      v98 = 1;
      goto LABEL_75;
    }

    sub_258DE4090(*(v33 + 56) + 32 * v91, v0 + 488);
    sub_258E0F590(v0 + 256);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_74;
    }

    v93 = *(v0 + 1040);
    v94 = *(v0 + 1048);
    v95 = sub_258F0A4E0();

    v96 = v95;
    if ([v96 isEqualToString:@"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_UNKNOWN"])
    {
      v97 = 0;
    }

    else if ([v96 isEqualToString:@"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS"])
    {
      v97 = 1;
    }

    else
    {
      v97 = [v96 isEqualToString:@"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS_JS"] ? 2 : 0;
    }

    v98 = 0;
LABEL_75:
    v99 = *(v0 + 1304);
    v55(*(v0 + 1232), 1, 1, v54);
    result = sub_258F099E0();
    if ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v101 <= -1.0)
    {
      goto LABEL_168;
    }

    if (v101 >= 1.84467441e19)
    {
      goto LABEL_169;
    }

    if (!is_mul_ok(v101, 0x3E8uLL))
    {
      goto LABEL_170;
    }

    v188 = v98;
    v190 = v97;
    v102 = v68;
    v103 = 1000 * v101;
    v104 = *(v0 + 1232);
    v105 = *(v0 + 1216);
    v106 = *(v0 + 1184);
    v107 = *(v0 + 1176);
    sub_258DE20C0(*(v0 + 1248), v104 + v187[7], &qword_27F988730, &unk_258F0F8E0);
    v108 = v104 + v187[5];
    *v108 = v103;
    *(v108 + 8) = 0;
    *(v104 + v187[6]) = v210;
    v109 = v104 + v187[8];
    *v109 = 0;
    *(v109 + 8) = 1;
    v110 = v104 + v187[9];
    *v110 = 0;
    *(v110 + 8) = 1;
    v111 = type metadata accessor for VTEnrollmentDataBuilderImpl(0);
    v112 = *(v111 + 48);
    v113 = *(v111 + 52);
    swift_allocObject();
    v114 = sub_258F05A78();
    sub_258EFB684(v104, v106, type metadata accessor for FunnelEventMetadata);
    (*v185)(v106, 0, 1, v105);
    sub_258E2EAD8(v106, v107, &qword_27F98AA58, &unk_258F174B0);
    v115 = OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata;
    swift_beginAccess();
    sub_258EFB614(v107, v114 + v115);
    swift_endAccess();
    *(v0 + 896) = 0x745F656369766564;
    *(v0 + 904) = 0xEB00000000657079;
    sub_258F0AA80();
    if (*(v33 + 16) && (v116 = sub_258E2EA2C(v0 + 216), (v117 & 1) != 0))
    {
      sub_258DE4090(*(v33 + 56) + 32 * v116, v0 + 712);
      sub_258E0F590(v0 + 216);
      v118 = swift_dynamicCast();
      v119 = *(v0 + 1024);
      v120 = *(v0 + 1032);
      if (!v118)
      {
        v119 = 0;
        v120 = 0;
      }
    }

    else
    {
      sub_258E0F590(v0 + 216);
      v119 = 0;
      v120 = 0;
    }

    v25 = v207;
    v121 = (v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType);
    v122 = *(v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType + 8);
    *v121 = v119;
    v121[1] = v120;

    v123 = v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_programCode;
    *v123 = v102;
    *(v123 + 4) = v204;
    v124 = *(v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_siriInputLocale);
    *(v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_siriInputLocale) = v87;

    strcpy((v0 + 944), "system_build");
    *(v0 + 957) = 0;
    *(v0 + 958) = -5120;
    v125 = v87;
    sub_258F0AA80();
    if (*(v33 + 16) && (v126 = sub_258E2EA2C(v0 + 136), (v127 & 1) != 0))
    {
      sub_258DE4090(*(v33 + 56) + 32 * v126, v0 + 648);
      sub_258E0F590(v0 + 136);
      v128 = swift_dynamicCast();
      v129 = *(v0 + 1008);
      v130 = *(v0 + 1016);
      if (!v128)
      {
        v129 = 0;
        v130 = 0;
      }
    }

    else
    {
      sub_258E0F590(v0 + 136);
      v129 = 0;
      v130 = 0;
    }

    v131 = (v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild);
    v132 = *(v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild + 8);
    *v131 = v129;
    v131[1] = v130;

    v133 = v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentMode;
    *v133 = v202;
    *(v133 + 4) = v200;
    v134 = v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcome;
    *v134 = v198;
    *(v134 + 4) = v196;
    v135 = v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_voiceTriggerType;
    *v135 = v190;
    *(v135 + 4) = v188;
    *(v0 + 992) = 0x6D756E5F65676170;
    *(v0 + 1000) = 0xEB00000000726562;
    sub_258F0AA80();
    if (*(v33 + 16) && (v136 = sub_258E2EA2C(v0 + 96), (v137 & 1) != 0))
    {
      sub_258DE4090(*(v33 + 56) + 32 * v136, v0 + 520);
      sub_258E0F590(v0 + 96);

      v138 = swift_dynamicCast();
      v139 = *(v0 + 1320);
      if (!v138)
      {
        v139 = 0;
      }

      v140 = v138 ^ 1;
    }

    else
    {

      sub_258E0F590(v0 + 96);
      v139 = 0;
      v140 = 1;
    }

    v141 = *(v0 + 1208);
    v142 = *(v0 + 1200);
    v143 = v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_pageNumberCompleted;
    *v143 = v139;
    *(v143 + 4) = v140;
    v144 = v114 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_trainingOutcome;
    *v144 = v194;
    *(v144 + 4) = v192;
    sub_258F05748(v141);

    sub_258EFB684(v141, v142, type metadata accessor for VTEnrollmentData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_258DE2D90(0, v207[2] + 1, 1, v207);
    }

    v146 = v25[2];
    v145 = v25[3];
    if (v146 >= v145 >> 1)
    {
      v25 = sub_258DE2D90(v145 > 1, v146 + 1, 1, v25);
    }

    v147 = *(v0 + 1248);
    v148 = *(v0 + 1232);
    v149 = *(v0 + 1208);
    v150 = *(v0 + 1200);

    sub_258EFB6EC(v149, type metadata accessor for VTEnrollmentData);
    sub_258EFB6EC(v148, type metadata accessor for FunnelEventMetadata);
    sub_258DE2184(v147, &qword_27F988730, &unk_258F0F8E0);
    v25[2] = v146 + 1;
    sub_258EFB74C(v150, v25 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v146);
LABEL_15:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_163;
    }
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
  return result;
}