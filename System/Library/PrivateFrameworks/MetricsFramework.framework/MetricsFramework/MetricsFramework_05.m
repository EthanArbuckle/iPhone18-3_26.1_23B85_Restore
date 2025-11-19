uint64_t DevicePropertiesCalculator.__allocating_init(defaults:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4);
  v10 = type metadata accessor for CAAnalyticsEventSubmitter();
  v11 = swift_allocObject();
  v26[3] = v10;
  v26[4] = &off_286A2C648;
  v26[0] = v11;
  v12 = type metadata accessor for DevicePropertiesCalculator();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  v17 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v16, v16);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v24 = v10;
  v25 = &off_286A2C648;
  *&v23 = v21;
  sub_258F09AC0();
  *(v15 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_defaults) = a1;
  (*(v5 + 32))(v15 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_logger, v9, v4);
  sub_258DEE384(&v23, v15 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  (*(v5 + 8))(a2, v4);
  return v15;
}

uint64_t type metadata accessor for DevicePropertiesCalculator()
{
  result = qword_27F989858;
  if (!qword_27F989858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E402C8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_258E402F8, 0, 0);
}

uint64_t sub_258E402F8()
{
  v1 = *(v0 + 24);
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Calculator invoked: DevicePropertiesCalculator", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  v7 = sub_258E40524();
  sub_258E41CA0(v7, v5);
  v9 = v8;
  v10 = [objc_opt_self() sharedPreferences];
  v11 = [v10 longLivedIdentifierUploadingEnabled];

  if (v11)
  {
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    v14 = *(v0 + 24);
    v15 = [*(v0 + 32) eventMetadata];
    v16 = [v15 deviceAggregationId];

    sub_258E421B8(v7, v16, v17, v12, v13);
    v19 = v18;
  }

  else
  {

    v16 = sub_258F0A350();
    v20 = sub_258F0A810();
    if (os_log_type_enabled(v16, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_258DD8000, v16, v20, "RPI enabled, skipping ODDSiriAccountInformation generation", v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }

    v19 = MEMORY[0x277D84F90];
  }

  v22 = *(v0 + 16);

  *v22 = v9;
  v22[1] = v19;
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_258E40524()
{
  v0 = sub_258F09A20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = (v24 - v9);
  v26 = MEMORY[0x277D84F90];
  sub_258E4173C(v24 - v9);
  v11 = sub_258E40808(v10);
  sub_258DE2184(v10, &qword_27F988728, &unk_258F0B840);
  v12 = *(v11 + 2);
  if (!v12)
  {

    return MEMORY[0x277D84F90];
  }

  v14 = *(v1 + 16);
  v13 = v1 + 16;
  v24[1] = v11;
  v25 = v14;
  v15 = &v11[(*(v13 + 64) + 32) & ~*(v13 + 64)];
  v16 = *(v13 + 56);
  v17 = (v13 - 8);
  v18 = MEMORY[0x277D84F90];
  v14(v5, v15, v0);
  while (1)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
    result = sub_258F099E0();
    if (!v19)
    {
      (*v17)(v5, v0);
      goto LABEL_4;
    }

    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v21 <= -1.0)
    {
      goto LABEL_17;
    }

    if (v21 >= 1.84467441e19)
    {
      goto LABEL_18;
    }

    [v19 setStartTimestampInSecondsSince1970_];
    [v19 setNumberOfSeconds_];
    v22 = v19;
    MEMORY[0x259C9DF50]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258F0A6D0();
    }

    sub_258F0A700();

    (*v17)(v5, v0);
    v18 = v26;
LABEL_4:
    v15 += v16;
    if (!--v12)
    {

      return v18;
    }

    v25(v5, v15, v0);
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

char *sub_258E40808(void (*a1)(char *, uint64_t))
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v39 - v5;
  v7 = sub_258F09A20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v39 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = v39 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = (v39 - v23);
  sub_258F09B50();
  sub_258F09AB0();
  v41 = *(v8 + 8);
  v41(v21, v7);
  v40 = v1;
  sub_258E40CE8(v44, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_258DE2184(v6, &qword_27F988728, &unk_258F0B840);
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v39[1] = v8 + 8;
    v42 = *(v8 + 32);
    v43 = v8 + 32;
    v42(v17, v6, v7);
    sub_258E42E1C(&qword_27F989870, MEMORY[0x277CC9578]);
    v44 = v24;
    if (sub_258F0A4A0())
    {
      v25 = MEMORY[0x277D84F90];
    }

    else
    {
      v36 = *(v8 + 16);
      v25 = MEMORY[0x277D84F90];
      do
      {
        v36(v13, v17, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_258DE283C(0, *(v25 + 2) + 1, 1, v25);
        }

        v38 = *(v25 + 2);
        v37 = *(v25 + 3);
        if (v38 >= v37 >> 1)
        {
          v25 = sub_258DE283C(v37 > 1, v38 + 1, 1, v25);
        }

        *(v25 + 2) = v38 + 1;
        v42(&v25[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v38], v13, v7);
        sub_258F09980();
      }

      while ((sub_258F0A4A0() & 1) == 0);
    }

    v41(v17, v7);
    v24 = v44;
  }

  v26 = sub_258F0A350();
  v27 = sub_258F0A810();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45 = v29;
    *v28 = 136315138;

    v31 = MEMORY[0x259C9DF80](v30, v7);
    v33 = v32;

    v34 = sub_258DE3018(v31, v33, &v45);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_258DD8000, v26, v27, "Dates to run: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x259C9EF40](v29, -1, -1);
    MEMORY[0x259C9EF40](v28, -1, -1);
  }

  v41(v24, v7);
  return v25;
}

uint64_t sub_258E40CE8@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v106 = a1;
  v107 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v100 - v5;
  v7 = sub_258F09A20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v103 = (&v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11, v13);
  v102 = &v100 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v104 = &v100 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v105 = &v100 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v100 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v100 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v100 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v100 - v35;
  sub_258F09B50();
  v108 = v36;
  sub_258F09AB0();
  v37 = *(v8 + 8);
  v37(v33, v7);
  if (qword_27F988668 != -1)
  {
    swift_once();
  }

  v38 = sub_258F09B00();
  __swift_project_value_buffer(v38, qword_27F9898E8);
  sub_258F09B50();
  sub_258F09AB0();
  v37(v25, v7);
  sub_258F09920();
  sub_258F09910();
  v37(v33, v7);
  sub_258E42DAC(v106, v6);
  v39 = v8;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_258DE2184(v6, &qword_27F988728, &unk_258F0B840);
    v40 = sub_258F0A350();
    v41 = sub_258F0A810();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_258DD8000, v40, v41, "pluginLastRunDate: no entry", v42, 2u);
      v43 = v42;
      v39 = v8;
      MEMORY[0x259C9EF40](v43, -1, -1);
    }

    v37(v108, v7);
    v44 = v107;
    (*(v39 + 32))(v107, v29, v7);
    goto LABEL_20;
  }

  v106 = v37;
  v45 = *(v8 + 32);
  v46 = v105;
  v45(v105, v6, v7);
  v47 = sub_258F099C0();
  v101 = v29;
  if (v47)
  {
    v48 = v104;
    (*(v39 + 16))(v104, v46, v7);
    v49 = sub_258F0A350();
    v50 = sub_258F0A810();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v100 = v39;
      v52 = v51;
      v103 = swift_slowAlloc();
      v109 = v103;
      *v52 = 134218242;
      *(v52 + 4) = 6;
      *(v52 + 12) = 2080;
      sub_258E42E1C(&qword_27F988750, MEMORY[0x277CC9578]);
      LODWORD(v102) = v50;
      v53 = sub_258F0AD60();
      v55 = v54;
      v56 = v48;
      v57 = v46;
      v58 = v106;
      v106(v56, v7);
      v59 = sub_258DE3018(v53, v55, &v109);

      *(v52 + 14) = v59;
      _os_log_impl(&dword_258DD8000, v49, v102, "pluginLastRunDate more than %ld days ago: %s", v52, 0x16u);
      v60 = v103;
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x259C9EF40](v60, -1, -1);
      v61 = v52;
      v39 = v100;
      MEMORY[0x259C9EF40](v61, -1, -1);

      v58(v57, v7);
      v58(v108, v7);
    }

    else
    {

      v79 = v106;
      v106(v48, v7);
      v79(v46, v7);
      v79(v108, v7);
    }

    v44 = v107;
    v45(v107, v101, v7);
LABEL_20:
    v95 = 0;
    return (*(v39 + 56))(v44, v95, 1, v7);
  }

  v62 = sub_258F099C0();
  v63 = *(v8 + 16);
  if (v62)
  {
    v64 = v102;
    v63(v102, v46, v7);
    v65 = sub_258F0A350();
    v66 = sub_258F0A810();
    v67 = os_log_type_enabled(v65, v66);
    v44 = v107;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v100 = v39;
      v69 = v68;
      v70 = swift_slowAlloc();
      v109 = v70;
      *v69 = 134218242;
      *(v69 + 4) = 6;
      *(v69 + 12) = 2080;
      sub_258E42E1C(&qword_27F988750, MEMORY[0x277CC9578]);
      v71 = sub_258F0AD60();
      v72 = v44;
      v74 = v73;
      v75 = v64;
      v76 = v106;
      v106(v75, v7);
      v77 = sub_258DE3018(v71, v74, &v109);
      v44 = v72;

      *(v69 + 14) = v77;
      _os_log_impl(&dword_258DD8000, v65, v66, "pluginLastRunDate within last %ld days: %s", v69, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x259C9EF40](v70, -1, -1);
      v78 = v69;
      v39 = v100;
      MEMORY[0x259C9EF40](v78, -1, -1);
    }

    else
    {

      v96 = v64;
      v76 = v106;
      v106(v96, v7);
    }

    v97 = v105;
    sub_258F09990();
    v76(v97, v7);
    v76(v101, v7);
    v76(v108, v7);
    goto LABEL_20;
  }

  v80 = v103;
  v63(v103, v46, v7);
  v81 = sub_258F0A350();
  v82 = sub_258F0A810();
  v83 = os_log_type_enabled(v81, v82);
  v44 = v107;
  if (v83)
  {
    v84 = swift_slowAlloc();
    v100 = v39;
    v85 = v84;
    v86 = swift_slowAlloc();
    v109 = v86;
    *v85 = 136315138;
    sub_258E42E1C(&qword_27F988750, MEMORY[0x277CC9578]);
    v87 = sub_258F0AD60();
    v88 = v44;
    v90 = v89;
    v91 = v80;
    v92 = v106;
    v106(v91, v7);
    v93 = sub_258DE3018(v87, v90, &v109);
    v44 = v88;

    *(v85 + 4) = v93;
    _os_log_impl(&dword_258DD8000, v81, v82, "pluginLastRunDate this morning or later: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x259C9EF40](v86, -1, -1);
    v94 = v85;
    v39 = v100;
    MEMORY[0x259C9EF40](v94, -1, -1);

    v92(v105, v7);
    v92(v101, v7);
    v92(v108, v7);
  }

  else
  {

    v99 = v106;
    v106(v80, v7);
    v99(v46, v7);
    v99(v101, v7);
    v99(v108, v7);
  }

  v95 = 1;
  return (*(v39 + 56))(v44, v95, 1, v7);
}

uint64_t sub_258E4173C@<X0>(_BYTE *a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v36[-v5];
  v7 = sub_258F09A20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v36[-v15];
  v17 = *(v1 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_defaults);
  v18 = sub_258F0A4E0();
  v19 = [v17 objectForKey_];

  if (v19)
  {
    sub_258F0A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44[0] = v42;
  v44[1] = v43;
  if (*(&v43 + 1))
  {
    v20 = swift_dynamicCast();
    v21 = *(v8 + 56);
    v21(v6, v20 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v39 = *(v8 + 32);
      v40 = v8 + 32;
      v39(v16, v6, v7);
      (*(v8 + 16))(v13, v16, v7);
      v22 = sub_258F0A350();
      v23 = sub_258F0A810();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v44[0] = v38;
        *v24 = 136315394;
        *(v24 + 4) = sub_258DE3018(0xD000000000000021, 0x8000000258F1AFE0, v44);
        *(v24 + 12) = 2080;
        sub_258E42E1C(&qword_27F988750, MEMORY[0x277CC9578]);
        v37 = v23;
        v25 = sub_258F0AD60();
        v27 = v26;
        (*(v8 + 8))(v13, v7);
        v28 = sub_258DE3018(v25, v27, v44);

        *(v24 + 14) = v28;
        _os_log_impl(&dword_258DD8000, v22, v37, "%s: %s", v24, 0x16u);
        v29 = v38;
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v29, -1, -1);
        MEMORY[0x259C9EF40](v24, -1, -1);
      }

      else
      {

        (*(v8 + 8))(v13, v7);
      }

      v35 = v41;
      v39(v41, v16, v7);
      return (v21)(v35, 0, 1, v7);
    }
  }

  else
  {
    sub_258DE2184(v44, &qword_27F989868, &unk_258F12D70);
    v21 = *(v8 + 56);
    v21(v6, 1, 1, v7);
  }

  sub_258DE2184(v6, &qword_27F988728, &unk_258F0B840);
  v30 = sub_258F0A350();
  v31 = sub_258F0A810();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v44[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_258DE3018(0xD000000000000021, 0x8000000258F1AFE0, v44);
    _os_log_impl(&dword_258DD8000, v30, v31, "No entry for %s from UserDefaults", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x259C9EF40](v33, -1, -1);
    MEMORY[0x259C9EF40](v32, -1, -1);
  }

  return (v21)(v41, 1, 1, v7);
}

void sub_258E41CA0(unint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v33 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_22:
    v6 = sub_258F0AA20();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v31 = v5 & 0xC000000000000001;
      v29 = v5 & 0xFFFFFFFFFFFFFF8;
      v26 = a2;
      v27 = v3;
      v24 = v6;
      v25 = v5;
      do
      {
        if (v31)
        {
          v8 = MEMORY[0x259C9E3B0](v7, v5);
        }

        else
        {
          if (v7 >= *(v29 + 16))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v11 = sub_258E41FF4(v8, a2);
        if (v11)
        {
          v12 = v11;
          MEMORY[0x259C9DF50]();
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v23 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_258F0A6D0();
          }

          sub_258F0A700();
          v13 = [v12 eventMetadata];
          if (v13)
          {
            v30 = v13;
            v14 = sub_258F0A350();
            v15 = sub_258F0A810();
            if (os_log_type_enabled(v14, v15))
            {
              log = v14;
              v16 = swift_slowAlloc();
              v17 = swift_slowAlloc();
              v32 = v17;
              *v16 = 136315138;
              v18 = [v30 dictionaryRepresentation];

              if (!v18)
              {
                __break(1u);
                return;
              }

              sub_258F0A410();

              v19 = sub_258F0A420();
              v21 = v20;

              v22 = sub_258DE3018(v19, v21, &v32);

              *(v16 + 4) = v22;
              _os_log_impl(&dword_258DD8000, log, v15, "Added devicePropertiesEvent with metadata: %s", v16, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v17);
              MEMORY[0x259C9EF40](v17, -1, -1);
              MEMORY[0x259C9EF40](v16, -1, -1);

              a2 = v26;
              v3 = v27;
              v6 = v24;
              v5 = v25;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

id sub_258E41FF4(uint64_t a1, id a2)
{
  if (!a2)
  {
    sub_258E2CC1C(1, 0xD000000000000020, 0x8000000258F1AF10);
LABEL_6:
    sub_258E2CC1C(1, 0xD000000000000017, 0x8000000258F1AF40);
    v6 = 0;
    goto LABEL_7;
  }

  v4 = [a2 eventMetadata];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 deviceAggregationId];

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = sub_258E47F7C(a1, v6);
  if (v7)
  {
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_258E2CC1C(1, 0xD00000000000003BLL, 0x8000000258F1AF60);
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  v8 = [a2 data];
  if (v8)
  {
    v9 = v8;
    v10 = sub_258F09900();
    v12 = v11;

    v13 = sub_258F098F0();
    sub_258DEB978(v10, v12);
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  v14 = [objc_allocWithZone(MEMORY[0x277D593E0]) initWithData_];

  if (v14)
  {
    [v14 setEventMetadata_];
  }

  else
  {
    sub_258E2CC1C(1, 0xD000000000000037, 0x8000000258F1AFA0);
  }

  return v14;
}

void sub_258E421B8(unint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v52 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_37:
    v8 = sub_258F0AA20();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v50 = v7 & 0xC000000000000001;
      v45 = v7 & 0xFFFFFFFFFFFFFF8;
      a3.n128_u64[0] = 136315394;
      v40 = a3;
      v46 = a5;
      v47 = v7;
      v48 = v8;
      v49 = a2;
      do
      {
        if (v50)
        {
          v10 = MEMORY[0x259C9E3B0](v9, v7);
        }

        else
        {
          if (v9 >= *(v45 + 16))
          {
            goto LABEL_36;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (a2)
        {
          if (a5)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_258E2CC1C(1, 0xD000000000000017, 0x8000000258F1AF40);
          if (a5)
          {
            goto LABEL_13;
          }
        }

        sub_258E2CC1C(1, 0x69737361206C696ELL, 0xEF6449746E617473);
LABEL_13:
        v13 = sub_258E47F7C(v11, a2);
        if (!v13)
        {
          sub_258E2CC1C(1, 0xD00000000000003BLL, 0x8000000258F1AF60);
        }

        v14 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
        if (v14)
        {
          v15 = v14;
          [v14 setEventMetadata_];
          v16 = [objc_allocWithZone(MEMORY[0x277D593D8]) 0x2798CCB78];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
            if (a5)
            {
              a5 = sub_258F0A4E0();
            }

            [v18 setAssistantId_];

            a5 = v46;
            v8 = v48;
          }

          [v15 setSiriAccountInformation_];

          v19 = v15;
          MEMORY[0x259C9DF50]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_258F0A6D0();
          }

          sub_258F0A700();
          v20 = [v19 eventMetadata];
          if (v20)
          {
            v21 = v20;
            v22 = [v19 siriAccountInformation];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 assistantId];

              if (v24)
              {
                v43 = sub_258F0A4F0();
                v26 = v25;

                v27 = v21;
                v28 = sub_258F0A350();
                v29 = sub_258F0A810();

                if (os_log_type_enabled(v28, v29))
                {
                  v41 = v29;
                  log = v28;
                  v30 = swift_slowAlloc();
                  v31 = v27;
                  v32 = swift_slowAlloc();
                  v51 = v32;
                  *v30 = v40.n128_u32[0];
                  v33 = sub_258DE3018(v43, v26, &v51);

                  *(v30 + 4) = v33;
                  *(v30 + 12) = 2080;
                  v34 = [v31 dictionaryRepresentation];
                  v44 = v31;

                  if (!v34)
                  {
                    __break(1u);
                    return;
                  }

                  sub_258F0A410();

                  v35 = sub_258F0A420();
                  v37 = v36;

                  v38 = sub_258DE3018(v35, v37, &v51);

                  *(v30 + 14) = v38;
                  _os_log_impl(&dword_258DD8000, log, v41, "Added siriAccountInformationEvent with assistantId: %s metadata: %s", v30, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x259C9EF40](v32, -1, -1);
                  MEMORY[0x259C9EF40](v30, -1, -1);

                  a5 = v46;
                }

                else
                {
                }
              }

              else
              {
              }

              v7 = v47;
              v8 = v48;
            }

            else
            {

              v7 = v47;
            }
          }

          else
          {

            v7 = v47;
          }
        }

        else
        {
          sub_258E2CC1C(1, 0xD000000000000037, 0x8000000258F1AFA0);
        }

        ++v9;
        a2 = v49;
      }

      while (v12 != v8);
    }
  }
}

uint64_t DevicePropertiesCalculator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DevicePropertiesCalculator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E42988(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258DE1DC4;

  return sub_258E402C8(a1, a2);
}

uint64_t sub_258E42A34(uint64_t a1)
{
  result = sub_258E42E1C(&qword_27F989840, type metadata accessor for DevicePropertiesCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E42A8C()
{
  result = qword_27F989848;
  if (!qword_27F989848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989848);
  }

  return result;
}

unint64_t sub_258E42AE0()
{
  result = qword_27F989850;
  if (!qword_27F989850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989850);
  }

  return result;
}

uint64_t sub_258E42B4C()
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

uint64_t dispatch thunk of DevicePropertiesCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_258E42DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E42E1C(unint64_t *a1, void (*a2)(uint64_t))
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

id DevicePropertiesDataRecord.devicePropertiesEvent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t DevicePropertiesDataRecord.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t DevicePropertiesDataRecord.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DevicePropertiesDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t DevicePropertiesDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E43054(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_258E430E4;

  return sub_258E43814();
}

uint64_t sub_258E430E4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[8];
  v7 = *v3;
  v5[9] = a2;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v5[10] = v10;
    *v10 = v7;
    v10[1] = sub_258E43260;
    v11 = v5[7];

    return sub_258E4341C();
  }
}

uint64_t sub_258E43260(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_258E433B8;
  }

  else
  {
    v8 = v4[3];
    v4[12] = a1;
    v4[13] = v8;
    v7 = sub_258E4338C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_258E4338C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  *v2 = *(v0 + 96);
  *(v2 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_258E433B8()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_258E4343C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_258E43574;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989890, &qword_258F11A10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258E65850;
  v0[13] = &block_descriptor_2;
  v0[14] = v2;
  [v1 getODDDeviceProperties_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258E43574()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_258E437A4;
  }

  else
  {
    v3 = sub_258E43684;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E43684()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  v3 = sub_258F0A350();
  if (v2)
  {
    v4 = sub_258F0A810();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Successfully fetched DevicePropertiesEvent";
  }

  else
  {
    v4 = sub_258F0A820();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Unable to fetch DevicePropertiesEvent";
  }

  v6 = swift_slowAlloc();
  *v6 = 0;
  _os_log_impl(&dword_258DD8000, v3, v4, v5, v6, 2u);
  MEMORY[0x259C9EF40](v6, -1, -1);
LABEL_7:

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_258E437A4()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_258E43834()
{
  v1 = [objc_opt_self() sharedPreferences];
  v2 = [v1 longLivedIdentifierUploadingEnabled];

  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
    v0[20] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_258E43A60;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989898, qword_258F10C90);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_258E43E0C;
    v0[13] = &block_descriptor_13;
    v0[14] = v4;
    [v3 fetchActiveAccount_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = v0[19] + OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
    v6 = sub_258F0A350();
    v7 = sub_258F0A810();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_258DD8000, v6, v7, "RPI enabled, skipping assistantIdentifier fetch", v8, 2u);
      MEMORY[0x259C9EF40](v8, -1, -1);
    }

    v9 = v0[1];

    return v9(0, 0);
  }
}

uint64_t sub_258E43A60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_258E437A4;
  }

  else
  {
    v3 = sub_258E43B70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E43B70()
{
  v21 = v0;
  v1 = *(v0 + 144);

  if (!v1)
  {
    v12 = *(v0 + 152) + OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
    v13 = sub_258F0A350();
    v14 = sub_258F0A820();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258DD8000, v13, v14, "Unable to fetch AFAccount", v15, 2u);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = [v1 assistantIdentifier];
  v3 = *(v0 + 152);
  if (!v2)
  {
    v13 = sub_258F0A350();
    v16 = sub_258F0A820();
    if (os_log_type_enabled(v13, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_258DD8000, v13, v16, "assistantIdentifier from fetched AFAccount is nil", v17, 2u);
      MEMORY[0x259C9EF40](v17, -1, -1);
    }

LABEL_11:
    v5 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  v4 = v2;
  v5 = sub_258F0A4F0();
  v7 = v6;

  v8 = sub_258F0A350();
  v9 = sub_258F0A810();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_258DE3018(v5, v7, &v20);
    _os_log_impl(&dword_258DD8000, v8, v9, "Fetched assistantIdentifier: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C9EF40](v11, -1, -1);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

LABEL_12:
  v18 = *(v0 + 8);

  return v18(v5, v7);
}

uint64_t sub_258E43E0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t DevicePropertiesDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DevicePropertiesDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E43FD8(uint64_t a1)
{
  v3 = *v1;
  v2[6] = a1;
  v2[7] = v3;
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_258E4406C;

  return sub_258E43814();
}

uint64_t sub_258E4406C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[8];
  v7 = *v3;
  v5[9] = a2;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v5[10] = v10;
    *v10 = v7;
    v10[1] = sub_258E441E8;
    v11 = v5[7];

    return sub_258E4341C();
  }
}

uint64_t sub_258E441E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_258E4459C;
  }

  else
  {
    v8 = v4[3];
    v4[12] = a1;
    v4[13] = v8;
    v7 = sub_258E44598;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_258E44314(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258E44370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DevicePropertiesDataProvider()
{
  result = qword_27F989880;
  if (!qword_27F989880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of DevicePropertiesDataProvider.loadData()(uint64_t a1)
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

uint64_t DevicePropertiesPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_258E458A8(a1, a2, a3, a4);

  return v11;
}

uint64_t DevicePropertiesPlugin.init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v5 = sub_258E458A8(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_258E44660(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_258E44680, 0, 0);
}

uint64_t sub_258E44680()
{
  v0[8] = *(v0[7] + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_dataProvider);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_258E44720;

  return sub_258E43814();
}

uint64_t sub_258E44720(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[9];
  v7 = *v3;
  v5[10] = a2;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v5[11] = v10;
    *v10 = v7;
    v10[1] = sub_258E4489C;
    v11 = v5[8];

    return sub_258E4341C();
  }
}

uint64_t sub_258E4489C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_258E46210;
  }

  else
  {
    v8 = v4[3];
    v4[13] = a1;
    v4[14] = v8;
    v7 = sub_258E4620C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_258E449C8(_OWORD *a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_258E449F0, 0, 0);
}

uint64_t sub_258E449F0()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_reporter);
  *(v0 + 16) = *(v0 + 40);
  v2 = *(*v1 + 80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_258E44B28;

  return v6(v0 + 16);
}

uint64_t sub_258E44B28()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E36B44, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_258E44C5C(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 72) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_258E44C8C, 0, 0);
}

uint64_t sub_258E44C8C()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 48) + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_calculator);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_258E44D48;
  v4 = *(v0 + 40);

  return sub_258E402C8(v4, v0 + 16);
}

uint64_t sub_258E44D48()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E46208, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t DevicePropertiesPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_reporter);

  return v0;
}

uint64_t DevicePropertiesPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_reporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E44FD8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 48) = a1;
  *(v2 + 56) = v3;
  return MEMORY[0x2822009F8](sub_258E44FFC, 0, 0);
}

uint64_t sub_258E44FFC()
{
  v0[8] = *(v0[7] + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_dataProvider);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_258E4509C;

  return sub_258E43814();
}

uint64_t sub_258E4509C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[9];
  v7 = *v3;
  v5[10] = a2;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v5[11] = v10;
    *v10 = v7;
    v10[1] = sub_258E45218;
    v11 = v5[8];

    return sub_258E4341C();
  }
}

uint64_t sub_258E45218(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_258E45370;
  }

  else
  {
    v8 = v4[3];
    v4[13] = a1;
    v4[14] = v8;
    v7 = sub_258E45344;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_258E45344()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  *v2 = *(v0 + 104);
  *(v2 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_258E45370()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_258E453D4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v4;
  *(v3 + 56) = *a2;
  *(v3 + 72) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_258E45408, 0, 0);
}

uint64_t sub_258E45408()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 48) + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_calculator);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_258E454C4;
  v4 = *(v0 + 40);

  return sub_258E402C8(v4, v0 + 16);
}

uint64_t sub_258E454C4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E455F8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_258E45610(_OWORD *a1)
{
  *(v2 + 32) = *v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_258E4563C, 0, 0);
}

uint64_t sub_258E4563C()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_reporter);
  *(v0 + 16) = *(v0 + 40);
  v2 = *(*v1 + 80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_258E45774;

  return v6(v0 + 16);
}

uint64_t sub_258E45774()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E365A8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_258E458A8(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v53 = a1;
  v6 = sub_258F0A370();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v45 - v12;
  v15 = v14;
  v51 = v4;
  v52 = v14;
  v16 = *(v14 + 16);
  v16(v4 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_logger, a2, v6);
  v50 = a2;
  v16(v13, a2, v6);
  v17 = type metadata accessor for DevicePropertiesDataProvider();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v48 = *(v15 + 32);
  v48(v20 + OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger, v13, v6);
  v47 = v15 + 32;
  *(v4 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_dataProvider) = v20;
  v49 = v16;
  v16(v13, a2, v6);
  v21 = v46;
  v16(v46, v13, v6);
  v22 = type metadata accessor for CAAnalyticsEventSubmitter();
  v23 = swift_allocObject();
  v59[3] = v22;
  v59[4] = &off_286A2C648;
  v59[0] = v23;
  v24 = type metadata accessor for DevicePropertiesCalculator();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v59, v22);
  v29 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v28, v28);
  v31 = (&v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v57 = v22;
  v58 = &off_286A2C648;
  *&v56 = v33;
  v34 = v53;
  sub_258F09AC0();
  *(v27 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_defaults) = v34;
  v35 = v48;
  v48(v27 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_logger, v21, v6);
  sub_258DEE384(&v56, v27 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  v36 = *(v52 + 8);
  v36(v13, v6);
  v38 = v50;
  v37 = v51;
  *(v51 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_calculator) = v27;
  v49(v13, v38, v6);
  v39 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v54, v55);
  v36(v38, v6);
  v40 = type metadata accessor for DevicePropertiesSELFReporter();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v35(v43 + OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger, v13, v6);
  *(v43 + 16) = v39;
  *(v37 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_reporter) = v43;
  return v37;
}

uint64_t type metadata accessor for DevicePropertiesPlugin()
{
  result = qword_280CC50C8;
  if (!qword_280CC50C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E45D6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DevicePropertiesPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258E45DB8()
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

uint64_t dispatch thunk of DevicePropertiesPlugin.loadData()(uint64_t a1)
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

uint64_t dispatch thunk of DevicePropertiesPlugin.report(_:)(uint64_t a1)
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

uint64_t dispatch thunk of DevicePropertiesPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
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

uint64_t DevicePropertiesSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + 16) = a2;
  return v7;
}

uint64_t sub_258E4635C(uint64_t a1)
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

id sub_258E46480()
{
  result = [objc_opt_self() sharedPreferences];
  qword_280CC5FE0 = result;
  return result;
}

uint64_t DevicePropertiesSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_258E46534(_OWORD *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_258E465E8;

  return sub_258E6422C(3, 1);
}

uint64_t sub_258E465E8(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_258E466E8, 0, 0);
}

uint64_t sub_258E466E8()
{
  v1 = v0[6];
  v2 = v0[2];
  if (v1)
  {
    v3 = *(v2 + 16);
    v4 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
    v0[7] = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_258E46AA0;
    v6 = v2 + v4;
LABEL_13:

    return sub_258EB5738(v1, v6);
  }

  v7 = sub_258F0A350();
  v8 = sub_258F0A820();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_258DD8000, v7, v8, "Unable to create exection metadata event", v9, 2u);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  v10 = v0[3];
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v28 = v0[3];
    }

    v11 = sub_258F0AA20();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v0[10] = v11;
  v0[11] = v12;
  if (v11)
  {
    v13 = v0[3];
    if ((v13 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x259C9E3B0](0);
      v12 = v0[11];
      goto LABEL_11;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v13 + 32);
LABEL_11:
      v0[12] = v1;
      v0[13] = 1;
      v14 = v0[2];
      v15 = *(v14 + 16);
      v16 = swift_task_alloc();
      v0[14] = v16;
      *v16 = v0;
      v17 = sub_258E46E9C;
LABEL_12:
      v16[1] = v17;
      v6 = v14 + v12;
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (qword_27F988660 == -1)
  {
    goto LABEL_17;
  }

  swift_once();
LABEL_17:
  if ([qword_280CC5FE0 longLivedIdentifierUploadingEnabled])
  {
    v19 = v0[4];
    if (v19 >> 62)
    {
      if (v19 < 0)
      {
        v29 = v0[4];
      }

      result = sub_258F0AA20();
      v0[16] = result;
      if (result)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[16] = result;
      if (result)
      {
LABEL_20:
        v20 = v0[4];
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x259C9E3B0](0);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v21 = *(v20 + 32);
        }

        v1 = v21;
        v0[17] = v21;
        v0[18] = 1;
        v12 = v0[11];
        v14 = v0[2];
        v22 = *(v14 + 16);
        v16 = swift_task_alloc();
        v0[19] = v16;
        *v16 = v0;
        v17 = sub_258E47288;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v23 = v0[2] + v0[11];
    v24 = sub_258F0A350();
    v25 = sub_258F0A810();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_258DD8000, v24, v25, "RPI enabled, skipping ODDSiriAccountInformation upload", v26, 2u);
      MEMORY[0x259C9EF40](v26, -1, -1);
    }
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_258E46AA0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_258E474E0;
  }

  else
  {
    v3 = sub_258E46BB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E46BB4()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v20 = *(v0 + 24);
    }

    v2 = sub_258F0AA20();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  if (v2)
  {
    v4 = *(v0 + 24);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x259C9E3B0](0);
      v3 = *(v0 + 88);
      goto LABEL_7;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 32);
LABEL_7:
      *(v0 + 96) = v5;
      *(v0 + 104) = 1;
      v6 = *(v0 + 16);
      v7 = *(v6 + 16);
      v8 = swift_task_alloc();
      *(v0 + 112) = v8;
      *v8 = v0;
      v9 = sub_258E46E9C;
LABEL_8:
      v8[1] = v9;

      return sub_258EB5738(v5, v6 + v3);
    }

    __break(1u);
  }

  else if (qword_27F988660 == -1)
  {
    goto LABEL_12;
  }

  swift_once();
LABEL_12:
  if ([qword_280CC5FE0 longLivedIdentifierUploadingEnabled])
  {
    v11 = *(v0 + 32);
    if (v11 >> 62)
    {
      if (v11 < 0)
      {
        v21 = *(v0 + 32);
      }

      result = sub_258F0AA20();
      *(v0 + 128) = result;
      if (result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 128) = result;
      if (result)
      {
LABEL_15:
        v12 = *(v0 + 32);
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x259C9E3B0](0);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v13 = *(v12 + 32);
        }

        v5 = v13;
        *(v0 + 136) = v13;
        *(v0 + 144) = 1;
        v3 = *(v0 + 88);
        v6 = *(v0 + 16);
        v14 = *(v6 + 16);
        v8 = swift_task_alloc();
        *(v0 + 152) = v8;
        *v8 = v0;
        v9 = sub_258E47288;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v15 = *(v0 + 16) + *(v0 + 88);
    v16 = sub_258F0A350();
    v17 = sub_258F0A810();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_258DD8000, v16, v17, "RPI enabled, skipping ODDSiriAccountInformation upload", v18, 2u);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_258E46E9C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_258E47848;
  }

  else
  {
    v3 = sub_258E46FB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E46FB0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  if (v1 != v2)
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 24);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x259C9E3B0](*(v0 + 104));
    }

    else
    {
      if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        result = sub_258F0AA20();
        *(v0 + 128) = result;
        if (result)
        {
          goto LABEL_7;
        }

        goto LABEL_22;
      }

      v16 = *(v15 + 8 * v14 + 32);
    }

    v17 = v16;
    *(v0 + 96) = v16;
    *(v0 + 104) = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      v18 = *(v0 + 88);
      v19 = *(v0 + 16);
      v20 = *(v19 + 16);
      v21 = swift_task_alloc();
      *(v0 + 112) = v21;
      *v21 = v0;
      v21[1] = sub_258E46E9C;
      v12 = v19 + v18;
      v13 = v17;
LABEL_16:

      return sub_258EB5738(v13, v12);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (qword_27F988660 != -1)
  {
    swift_once();
  }

  if (![qword_280CC5FE0 longLivedIdentifierUploadingEnabled])
  {
    v22 = *(v0 + 16) + *(v0 + 88);
    v23 = sub_258F0A350();
    v24 = sub_258F0A810();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_258DD8000, v23, v24, "RPI enabled, skipping ODDSiriAccountInformation upload", v25, 2u);
      MEMORY[0x259C9EF40](v25, -1, -1);
    }

    goto LABEL_22;
  }

  v3 = *(v0 + 32);
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 128) = result;
  if (result)
  {
LABEL_7:
    v5 = *(v0 + 32);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C9E3B0](0);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;
    *(v0 + 136) = v6;
    *(v0 + 144) = 1;
    v8 = *(v0 + 88);
    v9 = *(v0 + 16);
    v10 = *(v9 + 16);
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_258E47288;
    v12 = v9 + v8;
    v13 = v7;
    goto LABEL_16;
  }

LABEL_22:
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_258E47288()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_258E47934;
  }

  else
  {
    v3 = sub_258E4739C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258E4739C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  if (v1 == v2)
  {
    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = *(v0 + 144);
  v5 = *(v0 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C9E3B0](*(v0 + 144));
  }

  else
  {
    if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v4 + 32);
  }

  v7 = v6;
  *(v0 + 136) = v6;
  *(v0 + 144) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 16);
  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_258E47288;

  sub_258EB5738(v7, v9 + v8);
}

uint64_t sub_258E474E0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "Unable to report execution Event", v7, 2u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v8 = *(v0 + 24);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v27 = *(v0 + 24);
    }

    v9 = sub_258F0AA20();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  *(v0 + 80) = v9;
  *(v0 + 88) = v10;
  if (v9)
  {
    v11 = *(v0 + 24);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x259C9E3B0](0);
      v10 = *(v0 + 88);
      goto LABEL_9;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
LABEL_9:
      *(v0 + 96) = v12;
      *(v0 + 104) = 1;
      v13 = *(v0 + 16);
      v14 = *(v13 + 16);
      v15 = swift_task_alloc();
      *(v0 + 112) = v15;
      *v15 = v0;
      v16 = sub_258E46E9C;
LABEL_10:
      v15[1] = v16;

      return sub_258EB5738(v12, v13 + v10);
    }

    __break(1u);
  }

  else if (qword_27F988660 == -1)
  {
    goto LABEL_14;
  }

  swift_once();
LABEL_14:
  if ([qword_280CC5FE0 longLivedIdentifierUploadingEnabled])
  {
    v18 = *(v0 + 32);
    if (v18 >> 62)
    {
      if (v18 < 0)
      {
        v28 = *(v0 + 32);
      }

      result = sub_258F0AA20();
      *(v0 + 128) = result;
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 128) = result;
      if (result)
      {
LABEL_17:
        v19 = *(v0 + 32);
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x259C9E3B0](0);
        }

        else
        {
          if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v20 = *(v19 + 32);
        }

        v12 = v20;
        *(v0 + 136) = v20;
        *(v0 + 144) = 1;
        v10 = *(v0 + 88);
        v13 = *(v0 + 16);
        v21 = *(v13 + 16);
        v15 = swift_task_alloc();
        *(v0 + 152) = v15;
        *v15 = v0;
        v16 = sub_258E47288;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v22 = *(v0 + 16) + *(v0 + 88);
    v23 = sub_258F0A350();
    v24 = sub_258F0A810();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_258DD8000, v23, v24, "RPI enabled, skipping ODDSiriAccountInformation upload", v25, 2u);
      MEMORY[0x259C9EF40](v25, -1, -1);
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_258E47848()
{
  v1 = v0[2] + v0[11];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report devicePropertiesEvent", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[15];
  v6 = v0[12];
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_258E47934()
{
  v1 = v0[2] + v0[11];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report siriAccountInformationEvent", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[20];
  v6 = v0[17];
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_258E47A20()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t DevicePropertiesSELFReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t DevicePropertiesSELFReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of DevicePropertiesReporter.report(_:)(uint64_t a1)
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

uint64_t type metadata accessor for DevicePropertiesSELFReporter()
{
  result = qword_27F9898D8;
  if (!qword_27F9898D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E47D60()
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

uint64_t sub_258E47E2C()
{
  v0 = sub_258F09B00();
  __swift_allocate_value_buffer(v0, qword_27F9898E8);
  __swift_project_value_buffer(v0, qword_27F9898E8);
  return sub_258F09AC0();
}

uint64_t sub_258E47ECC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  result = sub_258F099E0();
  if (!v0)
  {
    return v0;
  }

  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 1.84467441e19)
  {
    [v0 setStartTimestampInSecondsSince1970_];
    [v0 setNumberOfSeconds_];
    return v0;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_258E47F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F09A70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277D592B0]) init];
  v17 = v16;
  if (!v16)
  {
    return v17;
  }

  [v16 setDeviceAggregationId_];
  sub_258F09A60();
  v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v19 = sub_258F09A50();
  v20 = [v18 initWithNSUUID_];

  (*(v11 + 8))(v15, v10);
  [v17 setOddId_];

  sub_258F09B50();
  sub_258F099E0();
  v22 = v21;
  v23 = v21;
  result = (*(v5 + 8))(v9, v4);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v22 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v22 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (is_mul_ok(v22, 0x3E8uLL))
  {
    [v17 setEventTimestampInMsSince1970_];
    [v17 setAggregationInterval_];
    v25 = [objc_opt_self() sharedPreferences];
    v26 = [v25 longLivedIdentifierUploadingEnabled];

    [v17 setIsLongLivedIDUploadDisabled_];
    return v17;
  }

LABEL_11:
  __break(1u);
  return result;
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

uint64_t DevicePropertiesWorker.Subtask.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_258F0ABE0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_258E4834C()
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E483C0()
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E48414@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258F0ABE0();

  *a2 = v5 != 0;
  return result;
}

uint64_t DevicePropertiesWorker.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_258F09AC0();
  v4 = *(type metadata accessor for DevicePropertiesWorker() + 20);
  v5 = sub_258F0A370();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t type metadata accessor for DevicePropertiesWorker()
{
  result = qword_280CC5090;
  if (!qword_280CC5090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DevicePropertiesWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](sub_258E4861C, 0, 0);
}

uint64_t sub_258E4861C()
{
  v108 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(type metadata accessor for DevicePropertiesWorker() + 20);
  v4 = v1;
  v5 = sub_258F0A350();
  v6 = sub_258F0A800();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v107[0] = v9;
    *v8 = 136315394;
    v10 = sub_258F09E80();
    v12 = sub_258DE3018(v10, v11, v107);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_258F09E90();
    v15 = sub_258DE3018(v13, v14, v107);

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
  sub_258E4A1E8(v26, v28, v29, v30);
  v105 = v2;
  v39 = *(v0 + 80);

  v40 = sub_258DFBE24(&unk_286A28A58);
  sub_258DE2184(&unk_286A28A78, &qword_27F988B08, &unk_258F0CD90);
  sub_258F09E80();
  v107[0] = sub_258F09E90();
  v107[1] = v41;

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000016, 0x8000000258F18B60);

  v42 = objc_allocWithZone(sub_258F09EA0());
  v43 = sub_258F09E70();
  *(v0 + 160) = v43;
  v44 = sub_258F09E00();
  *(v0 + 168) = v44;
  v45 = *(v44 - 8);
  v46 = v45;
  *(v0 + 176) = v45;
  v47 = *(v45 + 64) + 15;
  v48 = swift_task_alloc();
  *(v0 + 184) = v48;
  v49 = v43;
  sub_258DFA2E0(v40);

  sub_258F09DF0();
  if (v25)
  {
    v50 = *(v0 + 72);
    v51 = *(v21 + 64) + 15;
    v52 = swift_task_alloc();
    *(v0 + 192) = v52;
    v53 = *(*v50 + 88);
    v54 = v25;
    v104 = (v53 + *v53);
    v55 = v53[1];
    v56 = swift_task_alloc();
    *(v0 + 200) = v56;
    *v56 = v0;
    v56[1] = sub_258E49288;
    v57 = *(v0 + 72);

    return v104(v52, v54, v48, v105 + v3, 0xD000000000000030, 0x8000000258F1B200);
  }

  v65 = sub_258F0A350();
  v66 = sub_258F0A820();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_258DD8000, v65, v66, "Can't get user defaults initialized", v67, 2u);
    MEMORY[0x259C9EF40](v67, -1, -1);
  }

  sub_258DE403C();
  v37 = swift_allocError();
  *v68 = 5;
  swift_willThrow();

  (*(v46 + 8))(v48, v44);

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
      v106 = v38;
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
  v59 = sub_258F0A1D0();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64) + 15;
  v62 = swift_task_alloc();
  v63 = v37;
  if (swift_dynamicCast())
  {
    v64 = (*(v60 + 88))(v62, v59);
    if (MEMORY[0x277D04530] && v64 == *MEMORY[0x277D04530])
    {

      v37 = *(v0 + 24);
      v38 = 6;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04538] && v64 == *MEMORY[0x277D04538])
    {

      v37 = *(v0 + 24);
      v38 = 7;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04540] && v64 == *MEMORY[0x277D04540])
    {

      v37 = *(v0 + 24);
      v38 = 8;
      goto LABEL_34;
    }

    (*(v60 + 8))(v62, v59);
  }

  *(v0 + 32) = v37;
  v69 = v37;
  if (!swift_dynamicCast())
  {

    *(v0 + 40) = v37;
    v70 = sub_258F09E60();
    v71 = *(v70 - 8);
    v72 = *(v71 + 64) + 15;
    v73 = swift_task_alloc();
    v74 = v37;
    if (swift_dynamicCast())
    {

      (*(v71 + 8))(v73, v70);

      v37 = *(v0 + 40);
      v38 = 2;
    }

    else
    {

      *(v0 + 48) = v37;
      v88 = sub_258F09E10();
      v89 = *(v88 - 8);
      v90 = *(v89 + 64) + 15;
      v91 = swift_task_alloc();
      v92 = v37;
      if (swift_dynamicCast())
      {

        (*(v89 + 8))(v91, v88);

        v106 = 0;
        v37 = *(v0 + 48);
        goto LABEL_35;
      }

      v93 = *(v0 + 112);
      v94 = *(v0 + 96);

      *(v0 + 56) = v37;
      v95 = v37;
      if (swift_dynamicCast())
      {
        v97 = *(v0 + 144);
        v96 = *(v0 + 152);
        v98 = *(v0 + 136);
        v100 = *(v0 + 112);
        v99 = *(v0 + 120);
        v101 = *(v0 + 96);
        v102 = *(v0 + 104);
        v103 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v103, v99);

        v98(v103, *MEMORY[0x277D81770], v99);
        (*(v102 + 8))(v100, v101);

        goto LABEL_36;
      }

      v38 = 1;
    }

    goto LABEL_34;
  }

  v106 = *(v0 + 220);
  v37 = *(v0 + 32);
LABEL_35:

  v76 = *(v0 + 144);
  v75 = *(v0 + 152);
  v77 = *(v0 + 128);
  v78 = *(v0 + 136);
  v79 = *(v0 + 120);
  v80 = *(v0 + 216);
  v81 = *(v0 + 64);
  v82 = *(v77 + 64) + 15;
  v83 = swift_task_alloc();
  sub_258DE403C();
  v84 = swift_allocError();
  *v85 = v106;

  (*(v77 + 8))(v81, v79);
  *v83 = v84;
  v78(v83, v80, v79);
  (*(v77 + 32))(v81, v83, v79);

LABEL_36:
  v86 = *(v0 + 112);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_258E49288()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_258E49B24;
  }

  else
  {
    v3 = sub_258E4939C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E4939C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 64);
  (*(v5 + 8))(v8, v4);
  (*(v5 + 32))(v8, v2, v4);

  sub_258E4A3BC(v8, v3);
  v9 = sub_258F09E80();
  v11 = v10;
  v12 = sub_258F09E90();
  sub_258E4A1E8(v9, v11, v12, v13);
  v14 = *(v0 + 160);
  v15 = *(v0 + 152);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  if (!v1)
  {

LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 16) = v1;
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
      v65 = v22;
      goto LABEL_27;
    }

    if (MEMORY[0x277D81748] && v21 == *MEMORY[0x277D81748])
    {

      v22 = 4;
      goto LABEL_26;
    }

    (*(v17 + 8))(v19, v16);
  }

  *(v0 + 24) = v1;
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

  *(v0 + 32) = v1;
  v29 = v1;
  if (swift_dynamicCast())
  {

    v65 = *(v0 + 220);
LABEL_27:
    v36 = *(v0 + 144);
    v35 = *(v0 + 152);
    v37 = *(v0 + 128);
    v38 = *(v0 + 136);
    v39 = *(v0 + 120);
    v40 = *(v0 + 216);
    v41 = *(v0 + 64);
    v42 = *(v37 + 64) + 15;
    v43 = swift_task_alloc();
    sub_258DE403C();
    v44 = swift_allocError();
    *v45 = v65;

    (*(v37 + 8))(v41, v39);
    *v43 = v44;
    v38(v43, v40, v39);
    (*(v37 + 32))(v41, v43, v39);
    goto LABEL_28;
  }

  *(v0 + 40) = v1;
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

  *(v0 + 48) = v1;
  v49 = sub_258F09E10();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64) + 15;
  v52 = swift_task_alloc();
  v53 = v1;
  if (swift_dynamicCast())
  {

    (*(v50 + 8))(v52, v49);

    v65 = 0;
    goto LABEL_27;
  }

  v54 = *(v0 + 112);
  v55 = *(v0 + 96);

  *(v0 + 56) = v1;
  v56 = v1;
  if (!swift_dynamicCast())
  {

    v22 = 1;
    goto LABEL_26;
  }

  v58 = *(v0 + 144);
  v57 = *(v0 + 152);
  v59 = *(v0 + 136);
  v60 = *(v0 + 112);
  v61 = *(v0 + 120);
  v62 = *(v0 + 96);
  v63 = *(v0 + 104);
  v64 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v64, v61);

  v59(v64, *MEMORY[0x277D81770], v61);
  (*(v63 + 8))(v60, v62);

LABEL_29:
  v46 = *(v0 + 112);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_258E49B24()
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
    sub_258DE403C();
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

uint64_t sub_258E4A1E8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    v9 = *(type metadata accessor for DevicePropertiesWorker() + 20);

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
    sub_258E4B2E4(&qword_27F988BB8, MEMORY[0x277D85678]);
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

void sub_258E4A3BC(uint64_t a1, void *a2)
{
  v48 = a2;
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v45 - v16;
  v49 = "DSiriClientEvent object";
  v18 = sub_258F09E50();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23, a1, v18);
  v24 = (*(v19 + 88))(v23, v18);
  if (MEMORY[0x277D81768] && v24 == *MEMORY[0x277D81768])
  {
    (*(v19 + 8))(v23, v18);
    sub_258F09B50();
    sub_258F09AB0();
    v47 = *(v5 + 8);
    v47(v14, v4);
    v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v26 = sub_258F0A4E0();
    v46 = v25;
    [v25 setDateFormat_];

    v27 = sub_258F099A0();
    v28 = sub_258F0A4E0();
    [v48 setValue:v27 forKey:v28];

    LODWORD(v27) = *(type metadata accessor for DevicePropertiesWorker() + 20);
    (*(v5 + 16))(v10, v17, v4);
    v29 = sub_258F0A350();
    v30 = sub_258F0A810();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50 = v32;
      *v31 = 136315394;
      sub_258E4B2E4(&qword_27F988750, MEMORY[0x277CC9578]);
      v33 = sub_258F0AD60();
      v35 = v34;
      v36 = v10;
      v37 = v47;
      v47(v36, v4);
      v38 = sub_258DE3018(v33, v35, &v50);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_258DE3018(0xD000000000000021, v49 | 0x8000000000000000, &v50);
      _os_log_impl(&dword_258DD8000, v29, v30, "Wrote %s to %s in UserDefaults", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v32, -1, -1);
      MEMORY[0x259C9EF40](v31, -1, -1);

      v37(v17, v4);
    }

    else
    {

      v44 = v47;
      v47(v10, v4);
      v44(v17, v4);
    }
  }

  else
  {
    (*(v19 + 8))(v23, v18);
    v39 = v2 + *(type metadata accessor for DevicePropertiesWorker() + 20);
    v40 = sub_258F0A350();
    v41 = sub_258F0A810();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_258DE3018(0xD000000000000021, v49 | 0x8000000000000000, &v50);
      _os_log_impl(&dword_258DD8000, v40, v41, "DevicePropertiesPlugin run was not successful. Not updating  %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x259C9EF40](v43, -1, -1);
      MEMORY[0x259C9EF40](v42, -1, -1);
    }
  }
}

uint64_t sub_258E4A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258E4AA2C, 0, 0);
}

uint64_t sub_258E4AA2C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  (*(v2 + 16))(v1, v6, v4);
  v10 = type metadata accessor for DevicePropertiesPlugin();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v14 = sub_258E458A8(v7, v1, v5, v3);

  *(v0 + 16) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989900, &unk_258F10F68);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_258F09E40();
  *(v0 + 104) = v18;
  if (v18)
  {
    v19 = *(v0 + 40);
    v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v21 = swift_task_alloc();
    *(v0 + 112) = v21;
    v22 = sub_258F09E00();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v21, v19, v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    v24 = *(MEMORY[0x277D81750] + 4);
    v25 = swift_task_alloc();
    *(v0 + 120) = v25;
    *v25 = v0;
    v25[1] = sub_258E4ADA8;

    return MEMORY[0x2821ED078](v9, v21);
  }

  else
  {
    v26 = *(v0 + 24);
    v27 = sub_258F09E50();
    v28 = *(v27 - 8);
    (*(v28 + 56))(v9, 1, 1, v27);
    (*(v28 + 104))(v26, *MEMORY[0x277D81758], v27);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_258E4ADA8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 104);
  sub_258DE2184(*(v2 + 112), &qword_27F988B20, &unk_258F0CDB0);

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

uint64_t sub_258E4AF14()
{
  v1 = v0[12];
  v2 = v0[3];
  v3 = sub_258F09E50();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_258E4B01C()
{
  v1 = v0[14];

  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];

  return v5();
}

unint64_t sub_258E4B0AC()
{
  result = qword_27F989908;
  if (!qword_27F989908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989908);
  }

  return result;
}

uint64_t dispatch thunk of DevicePropertiesExecutor.executeDevicePropertiesPlugin(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_258E4B2E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DeviceSegmentsCohortsImpl.deinit()
{
  sub_258E4B7F0(v0 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata);
  v1 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceSegmentsReported);

  v2 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceCohortsReported);

  return v0;
}

uint64_t DeviceSegmentsCohortsImpl.__deallocating_deinit()
{
  sub_258E4B7F0(v0 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata);
  v1 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceSegmentsReported);

  v2 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceCohortsReported);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id static DeviceSegments.toBiomeEvent(deviceSegments:)(uint64_t a1)
{
  if ((*(a1 + 29) & 1) == 0)
  {
    v5 = *(a1 + 28);
    v6 = *(a1 + 24);
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if ((*a1 & 0x100000000) != 0)
    {
      v4 = 0;
      if ((v7 & 0x100000000) != 0)
      {
LABEL_5:
        v3 = 0;
        v9 = v6 | (v5 << 32);
        if ((v8 & 0x100000000) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v4 = sub_258F0AE20();
      if ((v7 & 0x100000000) != 0)
      {
        goto LABEL_5;
      }
    }

    v3 = sub_258F0AE20();
    v9 = v6 | (v5 << 32);
    if ((v8 & 0x100000000) != 0)
    {
LABEL_6:
      v2 = 0;
      if ((v9 & 0x100000000) != 0)
      {
LABEL_7:
        v1 = 0;
        goto LABEL_12;
      }

LABEL_11:
      v1 = sub_258F0AEB0();
      goto LABEL_12;
    }

LABEL_10:
    v2 = sub_258F0AEB0();
    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
LABEL_12:
  v10 = [objc_allocWithZone(MEMORY[0x277CF1508]) initWithSegmentType:v4 segmentDataAvailabilityState:v3 daysWithTwoValidAssistantTurnsPerWeek:v2 daysWithTwoAssistantSpeechRequestsPerWeek:v1];

  return v10;
}

id static DeviceCohorts.toBiomeEvent(deviceCohorts:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  if (v3 >= 2)
  {
    v6 = v3;
    [v6 startTimestampInSecondsSince1970];
    [v6 numberOfSeconds];
    v5 = sub_258F0AEC0();
    v4 = sub_258F0AEB0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CF1518]) initWithStartTimestampInSecondsSince1970:v5 numberOfSeconds:v4];

  if (v3 != 1)
  {
    if ((v2 & 0x100000000) != 0)
    {
      v9 = 0;
      if ((v1 & 0x100000000) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = sub_258F0AE20();
      if ((v1 & 0x100000000) != 0)
      {
LABEL_8:
        v8 = 0;
        goto LABEL_11;
      }
    }

    v8 = sub_258F0AE20();
    goto LABEL_11;
  }

  v8 = 0;
  v9 = 0;
LABEL_11:
  v10 = objc_allocWithZone(MEMORY[0x277CF1500]);
  v11 = v7;
  v12 = [v10 initWithTimeInterval:v11 cohortType:v9 cohortDataAvailabilityState:v8];

  return v12;
}

BOOL _s16MetricsFramework13DeviceCohortsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 4);
  v4 = *(a2 + 16);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v6 = *(a2 + 12);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  result = (v2 | v4) == 0;
  if (v2)
  {
    if (v4)
    {
      sub_258E4BC28();
      v7 = v4;
      v8 = v2;
      v9 = sub_258F0A8E0();

      return v9 & 1;
    }
  }

  return result;
}

uint64_t _s16MetricsFramework14DeviceSegmentsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a2 + 20);
  v9 = *(a2 + 28);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 8))
    {
      v12 = *(a2 + 12);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (v7 & 1 | ((v8 & 1) == 0))
    {
      return v8 & v9;
    }
  }

  else
  {
    if (v4 == *(a2 + 16))
    {
      v13 = *(a2 + 20);
    }

    else
    {
      v13 = 1;
    }

    if ((v13 | v7))
    {
      return (v13 ^ 1) & v9;
    }
  }

  return (v6 == *(a2 + 24)) & ~v9;
}

uint64_t sub_258E4B7F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy29_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_258E4B8BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258E4B8DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 29) = v3;
  return result;
}

uint64_t sub_258E4B920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258E4B97C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_258E4BA28()
{
  sub_258E4BAF4();
  if (v0 <= 0x3F)
  {
    sub_258E3DC64(319, &qword_27F989938, &qword_27F989940, &qword_258F111C8);
    if (v1 <= 0x3F)
    {
      sub_258E3DC64(319, &qword_27F989948, &qword_27F989950, &unk_258F111D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258E4BAF4()
{
  if (!qword_27F9897C0)
  {
    type metadata accessor for EventMetadata(255);
    v0 = sub_258F0A920();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9897C0);
    }
  }
}

void sub_258E4BB74()
{
  sub_258E4BAF4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_258E4BC28()
{
  result = qword_280CC49E0;
  if (!qword_280CC49E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CC49E0);
  }

  return result;
}

uint64_t EventMetadata.init(oddIdUUID:deviceAggregationId:userAggregationId:eventTimeStampInMSSince1970:timeInterval:userAggregationIdRotationTimestampInMs:userAggregationIdExpirationTimestampInMs:eventOrigin:isLongLivedIDUploadDisabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, int a12, int a13, char a14, __int16 a15, char a16)
{
  sub_258E3A468(a1, a9);
  v22 = type metadata accessor for EventMetadata(0);
  sub_258E3A468(a2, a9 + v22[5]);
  result = sub_258E3A468(a3, a9 + v22[6]);
  v24 = a9 + v22[7];
  *v24 = a4;
  *(v24 + 8) = a5 & 1;
  *(a9 + v22[8]) = a6;
  v25 = a9 + v22[9];
  *v25 = a7;
  *(v25 + 8) = a8 & 1;
  v26 = a9 + v22[10];
  *v26 = a10;
  *(v26 + 8) = a11 & 1;
  v27 = a9 + v22[11];
  *v27 = a13;
  *(v27 + 4) = a14 & 1;
  *(a9 + v22[12]) = a16;
  return result;
}

id EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v55 - v14;
  v16 = sub_258F09A70();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v58 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v55 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v55 - v27;
  v29 = [objc_allocWithZone(MEMORY[0x277D592B0]) init];
  if (v29)
  {
    v56 = v8;
    v57 = a1;
    v60 = v1;
    sub_258DE20C0(v1, v15, &qword_27F988730, &unk_258F0F8E0);
    v59 = *(v17 + 48);
    if (v59(v15, 1, v16) == 1)
    {
      sub_258DE2184(v15, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      (*(v17 + 32))(v28, v15, v16);
      v30 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v31 = sub_258F09A50();
      v32 = [v30 initWithNSUUID_];

      [v29 setOddId_];
      (*(v17 + 8))(v28, v16);
    }

    v33 = type metadata accessor for EventMetadata(0);
    sub_258DE20C0(v60 + v33[5], v12, &qword_27F988730, &unk_258F0F8E0);
    v34 = v59(v12, 1, v16);
    v35 = v56;
    if (v34 == 1)
    {
      sub_258DE2184(v12, &qword_27F988730, &unk_258F0F8E0);
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v36 = sub_258F0A910();
      sub_258F0A290();

      v37 = &selRef_setSampledErrorAsset_;
    }

    else
    {
      (*(v17 + 32))(v25, v12, v16);
      v38 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v39 = sub_258F09A50();
      v37 = &selRef_setSampledErrorAsset_;
      v40 = [v38 initWithNSUUID_];

      [v29 setDeviceAggregationId_];
      (*(v17 + 8))(v25, v16);
    }

    sub_258DE20C0(v60 + v33[6], v35, &qword_27F988730, &unk_258F0F8E0);
    if (v59(v35, 1, v16) == 1)
    {
      sub_258DE2184(v35, &qword_27F988730, &unk_258F0F8E0);
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v41 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      v42 = v58;
      (*(v17 + 32))(v58, v35, v16);
      v43 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v44 = sub_258F09A50();
      v45 = [v43 v37[77]];

      [v29 setUserAggregationId_];
      (*(v17 + 8))(v42, v16);
    }

    v46 = v57;
    v47 = v60;
    v48 = v60 + v33[10];
    if (*(v48 + 8))
    {
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v49 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      [v29 setUserAggregationIdExpirationTimestampMs_];
    }

    v50 = v47 + v33[9];
    if (*(v50 + 8))
    {
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v51 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      [v29 setUserAggregationIdRotationTimestampMs_];
    }

    v52 = v47 + v33[7];
    if ((*(v52 + 8) & 1) == 0)
    {
      [v29 setEventTimestampInMsSince1970_];
    }

    if (*(v47 + v33[8]))
    {
      [v29 setAggregationInterval_];
    }

    if ((v46 & 0x100000000) == 0)
    {
      [v29 setEventOrigin_];
    }

    v53 = *(v47 + v33[12]);
    if (v53 != 2)
    {
      [v29 setIsLongLivedIDUploadDisabled_];
    }
  }

  return v29;
}

id static ODDSiriSchemaODDTimeInterval.toBiomeEvent(timeInterval:)(void *a1)
{
  if (a1)
  {
    [a1 startTimestampInSecondsSince1970];
    [a1 numberOfSeconds];
    v2 = sub_258F0AEC0();
    v3 = sub_258F0AEB0();
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CF1518]) initWithStartTimestampInSecondsSince1970:v2 numberOfSeconds:v3];

  return v4;
}

uint64_t EventMetadata.hash(into:)()
{
  v1 = v0;
  v2 = sub_258F09A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v34 - v18;
  sub_258DE20C0(v1, &v34 - v18, &qword_27F988730, &unk_258F0F8E0);
  v20 = *(v3 + 48);
  if (v20(v19, 1, v2) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v3 + 32))(v7, v19, v2);
    sub_258F0AE60();
    sub_258E563E0(&qword_27F988CC8, MEMORY[0x277CC95F0]);
    sub_258F0A450();
    (*(v3 + 8))(v7, v2);
  }

  v21 = type metadata accessor for EventMetadata(0);
  sub_258DE20C0(v1 + v21[5], v16, &qword_27F988730, &unk_258F0F8E0);
  if (v20(v16, 1, v2) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v3 + 32))(v7, v16, v2);
    sub_258F0AE60();
    sub_258E563E0(&qword_27F988CC8, MEMORY[0x277CC95F0]);
    sub_258F0A450();
    (*(v3 + 8))(v7, v2);
  }

  v22 = v35;
  sub_258DE20C0(v1 + v21[6], v35, &qword_27F988730, &unk_258F0F8E0);
  if (v20(v22, 1, v2) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v3 + 32))(v7, v22, v2);
    sub_258F0AE60();
    sub_258E563E0(&qword_27F988CC8, MEMORY[0x277CC95F0]);
    sub_258F0A450();
    (*(v3 + 8))(v7, v2);
  }

  v23 = v1 + v21[9];
  if (*(v23 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v24 = *v23;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v24);
  }

  v25 = v1 + v21[10];
  if (*(v25 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v26 = *v25;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v26);
  }

  v27 = v1 + v21[7];
  if (*(v27 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v28 = *v27;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v28);
  }

  v29 = *(v1 + v21[8]);
  sub_258F0AE60();
  if (v29)
  {
    v30 = v29;
    sub_258F0A8F0();
  }

  v31 = (v1 + v21[11]);
  if (*(v31 + 4) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v32 = *v31;
    sub_258F0AE60();
    sub_258F0AE70();
  }

  if (*(v1 + v21[12]) != 2)
  {
    sub_258F0AE60();
  }

  return sub_258F0AE60();
}

uint64_t EventMetadata.hashValue.getter()
{
  sub_258F0AE40();
  EventMetadata.hash(into:)();
  return sub_258F0AE90();
}

uint64_t sub_258E4CAE4()
{
  sub_258F0AE40();
  EventMetadata.hash(into:)();
  return sub_258F0AE90();
}

uint64_t sub_258E4CB28()
{
  sub_258F0AE40();
  EventMetadata.hash(into:)();
  return sub_258F0AE90();
}

uint64_t static ProductId.fromString(productIdString:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = result;
  result = 0x4E41545349535341;
  if (v4 != 0x4E41545349535341 || a2 != 0xE900000000000054)
  {
    v6 = a3;
    result = sub_258F0AD80();
    if (result)
    {
      v5 = 1;
      a3 = v6;
      goto LABEL_13;
    }

    result = 0x4F49544154434944;
    if (v4 == 0x4F49544154434944 && a2 == 0xE90000000000004ELL)
    {
      v5 = 2;
      a3 = v6;
      goto LABEL_13;
    }

    result = sub_258F0AD80();
    a3 = v6;
    if (result)
    {
      v5 = 2;
      goto LABEL_13;
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = 1;
LABEL_13:
  *a3 = v5;
  return result;
}

MetricsFramework::ProductId_optional __swiftcall ProductId.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DeviceUsageMetricsBuilderImpl.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DeviceUsageMetricsBuilderImpl.init()();
  return v3;
}

uint64_t DeviceUsageMetricsBuilderImpl.init()()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
  v2 = type metadata accessor for EventMetadata(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
  *v5 = 0;
  v5[1] = 0;
  v6 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = 3;
  v7 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
  *v7 = 0;
  v7[1] = 0;
  v8 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
  *v11 = 0;
  v11[1] = 0;
  v12 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
  *v13 = 0;
  *(v13 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = 0;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = 0;
  v14 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
  *v14 = 0;
  v14[1] = 0;
  v15 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksStarted;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksCompleted;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksStarted;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksCompleted;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityRequestCount;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityTurnCount;
  *v22 = 0;
  *(v22 + 4) = 1;
  v23 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_clientErrorCount;
  *v23 = 0;
  *(v23 + 4) = 1;
  v24 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_undesiredResponseCount;
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_fatalResponseCount;
  *v25 = 0;
  *(v25 + 4) = 1;
  v26 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_failureResponseCount;
  *v26 = 0;
  *(v26 + 4) = 1;
  v27 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriUnavailableResponseCount;
  *v27 = 0;
  *(v27 + 4) = 1;
  v28 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrTurnCount;
  *v28 = 0;
  *(v28 + 4) = 1;
  v29 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
  *v29 = 0;
  v29[1] = 0;
  v30 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
  *v30 = 0;
  *(v30 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = 0;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = 2;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = 0;
  v31 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
  *v31 = 0;
  *(v31 + 4) = 1;
  return v0;
}

uint64_t sub_258E4CFF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v16 - v12;
  sub_258DE20C0(a1, &v16 - v12, a2, a3);
  v14 = *a4;
  swift_beginAccess();
  sub_258E2EA70(v13, v4 + v14, a2, a3);
  swift_endAccess();
}

uint64_t sub_258E4D0D4(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D118(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D138(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D170(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D190(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D1B0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
  *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = a1;
  v3 = a1;
}

uint64_t sub_258E4D1F8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
  *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = a1;
  v3 = a1;
}

uint64_t sub_258E4D24C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D26C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D28C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksStarted;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D2AC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksCompleted;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D2CC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksStarted;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D2EC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksCompleted;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D30C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityRequestCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D32C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityTurnCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D34C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_clientErrorCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D36C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_undesiredResponseCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D38C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_fatalResponseCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D3AC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_failureResponseCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D3CC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriUnavailableResponseCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D3EC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrTurnCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D418(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_258E4D468(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D4B4(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = a1;
}

uint64_t sub_258E4D4FC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D51C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
  swift_beginAccess();
  sub_258DE20C0(v1 + v3, a1, &qword_27F9894E0, &unk_258F106A0);
  v4 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
  swift_beginAccess();
  v5 = type metadata accessor for DeviceUsageMetrics(0);
  sub_258DE20C0(v1 + v4, a1 + v5[5], &qword_27F988730, &unk_258F0F8E0);
  v6 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode);
  v7 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode + 4);
  v8 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId);
  v9 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
  v78 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild + 8);
  v79 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType + 8);
  v10 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus);
  v11 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus + 4);
  v12 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface);
  v13 = (a1 + v5[6]);
  *v13 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
  v13[1] = v79;
  v14 = *v12;
  LOBYTE(v12) = *(v12 + 4);
  v15 = a1 + v5[7];
  *v15 = v6;
  v16 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
  *(v15 + 4) = v7;
  v17 = *v16;
  v18 = v16[1];
  *(a1 + v5[8]) = v8;
  v19 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
  v20 = (a1 + v5[9]);
  *v20 = v9;
  v20[1] = v78;
  v21 = *v19;
  v22 = v19[1];
  v23 = a1 + v5[10];
  *v23 = v10;
  v24 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation);
  *(v23 + 4) = v11;
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 4);
  v26 = a1 + v5[11];
  *v26 = v14;
  v27 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
  *(v26 + 4) = v12;
  LODWORD(v26) = *v27;
  LOBYTE(v27) = *(v27 + 4);
  v28 = (a1 + v5[12]);
  *v28 = v17;
  v28[1] = v18;
  v29 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
  v30 = (a1 + v5[13]);
  *v30 = v21;
  v30[1] = v22;
  v31 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
  v32 = a1 + v5[14];
  *v32 = v25;
  v33 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
  *(v32 + 4) = v24;
  v34 = *v33;
  v35 = v33[1];
  v36 = a1 + v5[15];
  *v36 = v26;
  v37 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
  *(v36 + 4) = v27;
  LODWORD(v36) = *v37;
  *(a1 + v5[16]) = v29;
  *(a1 + v5[17]) = v31;
  LOBYTE(v37) = *(v37 + 4);
  v38 = (a1 + v5[18]);
  *v38 = v34;
  v38[1] = v35;
  v39 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
  v40 = a1 + v5[19];
  *v40 = v36;
  LODWORD(v36) = *v39;
  LOBYTE(v39) = *(v39 + 4);
  *(v40 + 4) = v37;
  v41 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksStarted;
  v42 = a1 + v5[20];
  *v42 = v36;
  LODWORD(v36) = *v41;
  LOBYTE(v41) = *(v41 + 4);
  *(v42 + 4) = v39;
  v43 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksCompleted;
  v44 = a1 + v5[21];
  *v44 = v36;
  LODWORD(v36) = *v43;
  LOBYTE(v43) = *(v43 + 4);
  *(v44 + 4) = v41;
  v45 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksStarted;
  v46 = a1 + v5[22];
  *v46 = v36;
  LODWORD(v36) = *v45;
  LOBYTE(v45) = *(v45 + 4);
  *(v46 + 4) = v43;
  v47 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksCompleted;
  v48 = a1 + v5[23];
  *v48 = v36;
  LODWORD(v36) = *v47;
  LOBYTE(v47) = *(v47 + 4);
  *(v48 + 4) = v45;
  v49 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityRequestCount;
  v50 = a1 + v5[24];
  *v50 = v36;
  LODWORD(v36) = *v49;
  LOBYTE(v49) = *(v49 + 4);
  *(v50 + 4) = v47;
  v51 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityTurnCount;
  v52 = a1 + v5[25];
  *v52 = v36;
  LODWORD(v36) = *v51;
  LOBYTE(v51) = *(v51 + 4);
  *(v52 + 4) = v49;
  v53 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_clientErrorCount;
  v54 = a1 + v5[26];
  *v54 = v36;
  LODWORD(v36) = *v53;
  LOBYTE(v53) = *(v53 + 4);
  *(v54 + 4) = v51;
  v55 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_undesiredResponseCount;
  v56 = a1 + v5[27];
  *v56 = v36;
  LODWORD(v36) = *v55;
  LOBYTE(v55) = *(v55 + 4);
  *(v56 + 4) = v53;
  v57 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_fatalResponseCount;
  v58 = a1 + v5[28];
  *v58 = v36;
  LODWORD(v36) = *v57;
  LOBYTE(v57) = *(v57 + 4);
  *(v58 + 4) = v55;
  v59 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_failureResponseCount;
  v60 = a1 + v5[29];
  *v60 = v36;
  LODWORD(v36) = *v59;
  LOBYTE(v59) = *(v59 + 4);
  *(v60 + 4) = v57;
  v61 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriUnavailableResponseCount;
  v62 = a1 + v5[30];
  *v62 = v36;
  LODWORD(v36) = *v61;
  LOBYTE(v61) = *(v61 + 4);
  *(v62 + 4) = v59;
  v63 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrTurnCount;
  v64 = a1 + v5[31];
  *v64 = v36;
  LODWORD(v36) = *v63;
  LOBYTE(v63) = *(v63 + 4);
  *(v64 + 4) = v61;
  v65 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
  v66 = a1 + v5[32];
  *v66 = v36;
  v67 = *v65;
  v68 = v65[1];
  *(v66 + 4) = v63;
  v69 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
  v70 = (a1 + v5[33]);
  *v70 = v67;
  v70[1] = v68;
  LODWORD(v67) = *v69;
  LOBYTE(v69) = *(v69 + 4);
  v71 = a1 + v5[34];
  *v71 = v67;
  v72 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds);
  *(v71 + 4) = v69;
  LOBYTE(v67) = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest);
  *(a1 + v5[35]) = v72;
  *(a1 + v5[36]) = v67;
  v73 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
  *(a1 + v5[37]) = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting);
  v74 = a1 + v5[38];
  *v74 = *v73;
  *(v74 + 4) = *(v73 + 4);

  v75 = v29;
  v76 = v31;
}

uint64_t DeviceUsageMetricsBuilderImpl.deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId, &qword_27F988730, &unk_258F0F8E0);
  v1 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId + 8);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain + 8);

  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId + 8);

  v7 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds);

  v8 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting);

  return v0;
}

uint64_t DeviceUsageMetricsBuilderImpl.__deallocating_deinit()
{
  DeviceUsageMetricsBuilderImpl.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E4DBE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v19 - v14;
  v16 = *v5;
  sub_258DE20C0(a1, &v19 - v14, a2, a3);
  v17 = *a4;
  swift_beginAccess();
  sub_258E2EA70(v15, v16 + v17, a2, a3);
  swift_endAccess();
  *a5 = v16;
}

uint64_t sub_258E4DCE4@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  *(v3 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = *a1;
  *a2 = v3;
}

uint64_t sub_258E4DD70@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v6 + *a2);
  *(v6 + *a2) = a1;

  *a3 = v6;
  v8 = a1;
}

uint64_t sub_258E4DE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *v4;
  v7 = (v6 + *a3);
  v8 = v7[1];
  *v7 = a1;
  v7[1] = a2;

  *a4 = v6;
}

uint64_t sub_258E4DF0C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = *v2;
  *(v3 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = a1;
  *a2 = v3;
}

uint64_t sub_258E4DF34@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v6 + *a2);
  *(v6 + *a2) = a1;

  *a3 = v6;
}

uint64_t sub_258E4DFA0@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = *v3;
  v5 = *v3 + *a2;
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  *a3 = v4;
}

id sub_258E4E050(void *a1, Class *a2)
{
  if (a1)
  {
    [a1 languageCode];
    v4 = sub_258F0AE20();
    [a1 countryCode];
    v5 = sub_258F0AE20();
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = [objc_allocWithZone(*a2) initWithLanguageCode:v4 countryCode:v5];

  return v6;
}

id sub_258E4E0E4(void *a1)
{
  v1 = a1;
  [v1 languageCode];
  sub_258F0A8B0();
  MEMORY[0x259C9DEB0](95, 0xE100000000000000);
  [v1 countryCode];
  v2 = sub_258F0A870();
  MEMORY[0x259C9DEB0](v2);

  v3 = sub_258F0A4E0();

  return v3;
}

uint64_t SISchemaISOLocale.description.getter()
{
  [v0 languageCode];
  v3 = sub_258F0A8B0();
  MEMORY[0x259C9DEB0](95, 0xE100000000000000);
  [v0 countryCode];
  v1 = sub_258F0A870();
  MEMORY[0x259C9DEB0](v1);

  return v3;
}

uint64_t _s16MetricsFramework13EventMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v93 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v89 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v91 = &v89 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v89 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE8, &qword_258F114B8);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v90 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v89 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v89 - v31;
  v94 = v30;
  v95 = a1;
  v33 = *(v30 + 48);
  sub_258DE20C0(a1, &v89 - v31, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(a2, &v32[v33], &qword_27F988730, &unk_258F0F8E0);
  v96 = v5;
  v34 = *(v5 + 48);
  if (v34(v32, 1, v4) == 1)
  {
    if (v34(&v32[v33], 1, v4) == 1)
    {
      v92 = a2;
      sub_258DE2184(v32, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_8;
    }

LABEL_6:
    v35 = v32;
LABEL_21:
    sub_258DE2184(v35, &qword_27F989AE8, &qword_258F114B8);
    goto LABEL_22;
  }

  sub_258DE20C0(v32, v19, &qword_27F988730, &unk_258F0F8E0);
  if (v34(&v32[v33], 1, v4) == 1)
  {
    (*(v96 + 8))(v19, v4);
    goto LABEL_6;
  }

  v92 = a2;
  v36 = v96;
  v37 = v93;
  (*(v96 + 32))(v93, &v32[v33], v4);
  sub_258E563E0(&qword_27F988CD0, MEMORY[0x277CC95F0]);
  v38 = sub_258F0A4B0();
  v39 = *(v36 + 8);
  v39(v37, v4);
  v39(v19, v4);
  sub_258DE2184(v32, &qword_27F988730, &unk_258F0F8E0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v40 = type metadata accessor for EventMetadata(0);
  v41 = *(v40 + 20);
  v42 = *(v94 + 48);
  sub_258DE20C0(v95 + v41, v28, &qword_27F988730, &unk_258F0F8E0);
  v43 = v92;
  sub_258DE20C0(v92 + v41, &v28[v42], &qword_27F988730, &unk_258F0F8E0);
  if (v34(v28, 1, v4) == 1)
  {
    if (v34(&v28[v42], 1, v4) == 1)
    {
      v92 = v43;
      sub_258DE2184(v28, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v44 = v91;
  sub_258DE20C0(v28, v91, &qword_27F988730, &unk_258F0F8E0);
  if (v34(&v28[v42], 1, v4) == 1)
  {
    (*(v96 + 8))(v44, v4);
LABEL_13:
    v35 = v28;
    goto LABEL_21;
  }

  v92 = v43;
  v45 = v96;
  v46 = v40;
  v47 = v93;
  (*(v96 + 32))(v93, &v28[v42], v4);
  sub_258E563E0(&qword_27F988CD0, MEMORY[0x277CC95F0]);
  v48 = sub_258F0A4B0();
  v49 = *(v45 + 8);
  v50 = v47;
  v40 = v46;
  v49(v50, v4);
  v49(v44, v4);
  sub_258DE2184(v28, &qword_27F988730, &unk_258F0F8E0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v51 = v40;
  v52 = *(v40 + 24);
  v53 = *(v94 + 48);
  v54 = v90;
  sub_258DE20C0(v95 + v52, v90, &qword_27F988730, &unk_258F0F8E0);
  v55 = v92 + v52;
  v56 = v92;
  sub_258DE20C0(v55, v54 + v53, &qword_27F988730, &unk_258F0F8E0);
  if (v34(v54, 1, v4) == 1)
  {
    if (v34((v54 + v53), 1, v4) == 1)
    {
      sub_258DE2184(v54, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v57 = v89;
  sub_258DE20C0(v54, v89, &qword_27F988730, &unk_258F0F8E0);
  if (v34((v54 + v53), 1, v4) == 1)
  {
    (*(v96 + 8))(v57, v4);
LABEL_20:
    v35 = v54;
    goto LABEL_21;
  }

  v60 = v96;
  v61 = v93;
  (*(v96 + 32))(v93, v54 + v53, v4);
  sub_258E563E0(&qword_27F988CD0, MEMORY[0x277CC95F0]);
  v62 = sub_258F0A4B0();
  v63 = *(v60 + 8);
  v63(v61, v4);
  v63(v57, v4);
  sub_258DE2184(v54, &qword_27F988730, &unk_258F0F8E0);
  if ((v62 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v64 = v51[9];
  v65 = (v95 + v64);
  v66 = *(v95 + v64 + 8);
  v67 = (v56 + v64);
  v58 = *(v56 + v64 + 8);
  if (v66)
  {
    if (!v58)
    {
      return v58 & 1;
    }
  }

  else
  {
    if (*v65 != *v67)
    {
      LOBYTE(v58) = 1;
    }

    if (v58)
    {
      goto LABEL_22;
    }
  }

  v68 = v51[10];
  v69 = (v95 + v68);
  v70 = *(v95 + v68 + 8);
  v71 = (v56 + v68);
  v58 = *(v56 + v68 + 8);
  if (v70)
  {
    if (!v58)
    {
      return v58 & 1;
    }
  }

  else
  {
    if (*v69 != *v71)
    {
      LOBYTE(v58) = 1;
    }

    if (v58)
    {
      goto LABEL_22;
    }
  }

  v72 = v51[7];
  v73 = (v95 + v72);
  v74 = *(v95 + v72 + 8);
  v75 = (v56 + v72);
  v58 = *(v56 + v72 + 8);
  if (v74)
  {
    if (!v58)
    {
      return v58 & 1;
    }
  }

  else
  {
    if (*v73 != *v75)
    {
      LOBYTE(v58) = 1;
    }

    if (v58)
    {
      goto LABEL_22;
    }
  }

  v76 = v51[8];
  v77 = *(v95 + v76);
  v78 = *(v56 + v76);
  if (v77)
  {
    if (!v78)
    {
      goto LABEL_22;
    }

    sub_258DEB8C8(0, &qword_280CC49E0, 0x277D593F8);
    v79 = v78;
    v80 = v77;
    v81 = sub_258F0A8E0();

    if ((v81 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v78)
  {
    goto LABEL_22;
  }

  v82 = v51[11];
  v83 = (v95 + v82);
  v84 = *(v95 + v82 + 4);
  v85 = (v56 + v82);
  v58 = *(v56 + v82 + 4);
  if (v84)
  {
    if (!v58)
    {
      return v58 & 1;
    }

    goto LABEL_54;
  }

  if (*v83 != *v85)
  {
    LOBYTE(v58) = 1;
  }

  if (v58)
  {
LABEL_22:
    LOBYTE(v58) = 0;
    return v58 & 1;
  }

LABEL_54:
  v86 = v51[12];
  v87 = *(v95 + v86);
  v88 = *(v56 + v86);
  LOBYTE(v58) = v88 == 2 && v87 == 2;
  if (v87 != 2 && v88 != 2)
  {
    LOBYTE(v58) = v88 ^ v87 ^ 1;
  }

  return v58 & 1;
}

id _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_258DEF388();
  v2 = sub_258F0A960();
  v3 = v2;
  v4 = v2[2];
  if (v4 == 2)
  {
    v12 = v2[4];
    v13 = v3[5];
    sub_258F0A560();
    v14 = sub_258F0A4E0();

    v9 = v14;
    if ([v9 isEqualToString:{@"ISOLANGUAGECODE_UNKNOWN", 95, 0xE100000000000000, a1, a2}])
    {
      v10 = 0;
    }

    else if ([v9 isEqualToString:@"AB"])
    {
      v10 = 1;
    }

    else if ([v9 isEqualToString:@"AA"])
    {
      v10 = 2;
    }

    else if ([v9 isEqualToString:@"AF"])
    {
      v10 = 3;
    }

    else if ([v9 isEqualToString:@"AK"])
    {
      v10 = 4;
    }

    else if ([v9 isEqualToString:@"SQ"])
    {
      v10 = 5;
    }

    else if ([v9 isEqualToString:@"AM"])
    {
      v10 = 6;
    }

    else if ([v9 isEqualToString:@"AR"])
    {
      v10 = 7;
    }

    else if ([v9 isEqualToString:@"AN"])
    {
      v10 = 8;
    }

    else if ([v9 isEqualToString:@"HY"])
    {
      v10 = 9;
    }

    else if ([v9 isEqualToString:@"AS"])
    {
      v10 = 10;
    }

    else if ([v9 isEqualToString:@"AV"])
    {
      v10 = 11;
    }

    else if ([v9 isEqualToString:@"AE"])
    {
      v10 = 12;
    }

    else if ([v9 isEqualToString:@"AY"])
    {
      v10 = 13;
    }

    else if ([v9 isEqualToString:@"AZ"])
    {
      v10 = 14;
    }

    else if ([v9 isEqualToString:@"BM"])
    {
      v10 = 15;
    }

    else if ([v9 isEqualToString:@"BA"])
    {
      v10 = 16;
    }

    else if ([v9 isEqualToString:@"EU"])
    {
      v10 = 17;
    }

    else if ([v9 isEqualToString:@"BE"])
    {
      v10 = 18;
    }

    else if ([v9 isEqualToString:@"BN"])
    {
      v10 = 19;
    }

    else if ([v9 isEqualToString:@"BI"])
    {
      v10 = 20;
    }

    else if ([v9 isEqualToString:@"BS"])
    {
      v10 = 21;
    }

    else if ([v9 isEqualToString:@"BR"])
    {
      v10 = 22;
    }

    else if ([v9 isEqualToString:@"BG"])
    {
      v10 = 23;
    }

    else if ([v9 isEqualToString:@"MY"])
    {
      v10 = 24;
    }

    else if ([v9 isEqualToString:@"CA"])
    {
      v10 = 25;
    }

    else if ([v9 isEqualToString:@"CH"])
    {
      v10 = 26;
    }

    else if ([v9 isEqualToString:@"CE"])
    {
      v10 = 27;
    }

    else if ([v9 isEqualToString:@"NY"])
    {
      v10 = 28;
    }

    else if ([v9 isEqualToString:@"ZH"])
    {
      v10 = 29;
    }

    else if ([v9 isEqualToString:@"CV"])
    {
      v10 = 30;
    }

    else if ([v9 isEqualToString:@"KW"])
    {
      v10 = 31;
    }

    else if ([v9 isEqualToString:@"CO"])
    {
      v10 = 32;
    }

    else if ([v9 isEqualToString:@"CR"])
    {
      v10 = 33;
    }

    else if ([v9 isEqualToString:@"HR"])
    {
      v10 = 34;
    }

    else if ([v9 isEqualToString:@"CS"])
    {
      v10 = 35;
    }

    else if ([v9 isEqualToString:@"DA"])
    {
      v10 = 36;
    }

    else if ([v9 isEqualToString:@"DV"])
    {
      v10 = 37;
    }

    else if ([v9 isEqualToString:@"NL"])
    {
      v10 = 38;
    }

    else if ([v9 isEqualToString:@"DZ"])
    {
      v10 = 39;
    }

    else if ([v9 isEqualToString:@"EN"])
    {
      v10 = 40;
    }

    else if ([v9 isEqualToString:@"EO"])
    {
      v10 = 41;
    }

    else if ([v9 isEqualToString:@"ET"])
    {
      v10 = 42;
    }

    else if ([v9 isEqualToString:@"EE"])
    {
      v10 = 43;
    }

    else if ([v9 isEqualToString:@"FO"])
    {
      v10 = 44;
    }

    else if ([v9 isEqualToString:@"FJ"])
    {
      v10 = 45;
    }

    else if ([v9 isEqualToString:@"FI"])
    {
      v10 = 46;
    }

    else if ([v9 isEqualToString:@"FR"])
    {
      v10 = 47;
    }

    else if ([v9 isEqualToString:@"FF"])
    {
      v10 = 48;
    }

    else if ([v9 isEqualToString:@"GL"])
    {
      v10 = 49;
    }

    else if ([v9 isEqualToString:@"KA"])
    {
      v10 = 50;
    }

    else if ([v9 isEqualToString:@"DE"])
    {
      v10 = 51;
    }

    else if ([v9 isEqualToString:@"EL"])
    {
      v10 = 52;
    }

    else if ([v9 isEqualToString:@"GN"])
    {
      v10 = 53;
    }

    else if ([v9 isEqualToString:@"GU"])
    {
      v10 = 54;
    }

    else if ([v9 isEqualToString:@"HT"])
    {
      v10 = 55;
    }

    else if ([v9 isEqualToString:@"HA"])
    {
      v10 = 56;
    }

    else if ([v9 isEqualToString:@"HE"])
    {
      v10 = 57;
    }

    else if ([v9 isEqualToString:@"HZ"])
    {
      v10 = 58;
    }

    else if ([v9 isEqualToString:@"HI"])
    {
      v10 = 59;
    }

    else if ([v9 isEqualToString:@"HO"])
    {
      v10 = 60;
    }

    else if ([v9 isEqualToString:@"HU"])
    {
      v10 = 61;
    }

    else if ([v9 isEqualToString:@"IA"])
    {
      v10 = 62;
    }

    else if ([v9 isEqualToString:@"ID"])
    {
      v10 = 63;
    }

    else if ([v9 isEqualToString:@"IE"])
    {
      v10 = 64;
    }

    else if ([v9 isEqualToString:@"GA"])
    {
      v10 = 65;
    }

    else if ([v9 isEqualToString:@"IG"])
    {
      v10 = 66;
    }

    else if ([v9 isEqualToString:@"IK"])
    {
      v10 = 67;
    }

    else if ([v9 isEqualToString:@"IO"])
    {
      v10 = 68;
    }

    else if ([v9 isEqualToString:@"IS"])
    {
      v10 = 69;
    }

    else if ([v9 isEqualToString:@"IT"])
    {
      v10 = 70;
    }

    else if ([v9 isEqualToString:@"IU"])
    {
      v10 = 71;
    }

    else if ([v9 isEqualToString:@"JA"])
    {
      v10 = 72;
    }

    else if ([v9 isEqualToString:@"JV"])
    {
      v10 = 73;
    }

    else if ([v9 isEqualToString:@"KL"])
    {
      v10 = 74;
    }

    else if ([v9 isEqualToString:@"KN"])
    {
      v10 = 75;
    }

    else if ([v9 isEqualToString:@"KR"])
    {
      v10 = 76;
    }

    else if ([v9 isEqualToString:@"KS"])
    {
      v10 = 77;
    }

    else if ([v9 isEqualToString:@"KK"])
    {
      v10 = 78;
    }

    else if ([v9 isEqualToString:@"KM"])
    {
      v10 = 79;
    }

    else if ([v9 isEqualToString:@"KI"])
    {
      v10 = 80;
    }

    else if ([v9 isEqualToString:@"RW"])
    {
      v10 = 81;
    }

    else if ([v9 isEqualToString:@"KY"])
    {
      v10 = 82;
    }

    else if ([v9 isEqualToString:@"KV"])
    {
      v10 = 83;
    }

    else if ([v9 isEqualToString:@"KG"])
    {
      v10 = 84;
    }

    else if ([v9 isEqualToString:@"KO"])
    {
      v10 = 85;
    }

    else if ([v9 isEqualToString:@"KU"])
    {
      v10 = 86;
    }

    else if ([v9 isEqualToString:@"KJ"])
    {
      v10 = 87;
    }

    else if ([v9 isEqualToString:@"LA"])
    {
      v10 = 88;
    }

    else if ([v9 isEqualToString:@"LB"])
    {
      v10 = 89;
    }

    else if ([v9 isEqualToString:@"LG"])
    {
      v10 = 90;
    }

    else if ([v9 isEqualToString:@"LI"])
    {
      v10 = 91;
    }

    else if ([v9 isEqualToString:@"LN"])
    {
      v10 = 92;
    }

    else if ([v9 isEqualToString:@"LO"])
    {
      v10 = 93;
    }

    else if ([v9 isEqualToString:@"LT"])
    {
      v10 = 94;
    }

    else if ([v9 isEqualToString:@"LU"])
    {
      v10 = 95;
    }

    else if ([v9 isEqualToString:@"LV"])
    {
      v10 = 96;
    }

    else if ([v9 isEqualToString:@"GV"])
    {
      v10 = 97;
    }

    else if ([v9 isEqualToString:@"MK"])
    {
      v10 = 98;
    }

    else if ([v9 isEqualToString:@"MG"])
    {
      v10 = 99;
    }

    else if ([v9 isEqualToString:@"MS"])
    {
      v10 = 100;
    }

    else if ([v9 isEqualToString:@"ML"])
    {
      v10 = 101;
    }

    else if ([v9 isEqualToString:@"MT"])
    {
      v10 = 102;
    }

    else if ([v9 isEqualToString:@"MI"])
    {
      v10 = 103;
    }

    else if ([v9 isEqualToString:@"MR"])
    {
      v10 = 104;
    }

    else if ([v9 isEqualToString:@"MH"])
    {
      v10 = 105;
    }

    else if ([v9 isEqualToString:@"MN"])
    {
      v10 = 106;
    }

    else if ([v9 isEqualToString:@"NA"])
    {
      v10 = 107;
    }

    else if ([v9 isEqualToString:@"NV"])
    {
      v10 = 108;
    }

    else if ([v9 isEqualToString:@"ND"])
    {
      v10 = 109;
    }

    else if ([v9 isEqualToString:@"NE"])
    {
      v10 = 110;
    }

    else if ([v9 isEqualToString:@"NG"])
    {
      v10 = 111;
    }

    else if ([v9 isEqualToString:@"NB"])
    {
      v10 = 112;
    }

    else if ([v9 isEqualToString:@"NN"])
    {
      v10 = 113;
    }

    else if ([v9 isEqualToString:@"NO"])
    {
      v10 = 114;
    }

    else if ([v9 isEqualToString:@"II"])
    {
      v10 = 115;
    }

    else if ([v9 isEqualToString:@"NR"])
    {
      v10 = 116;
    }

    else if ([v9 isEqualToString:@"OC"])
    {
      v10 = 117;
    }

    else if ([v9 isEqualToString:@"OJ"])
    {
      v10 = 118;
    }

    else if ([v9 isEqualToString:@"CU"])
    {
      v10 = 119;
    }

    else if ([v9 isEqualToString:@"OM"])
    {
      v10 = 120;
    }

    else if ([v9 isEqualToString:@"OR"])
    {
      v10 = 121;
    }

    else if ([v9 isEqualToString:@"OS"])
    {
      v10 = 122;
    }

    else if ([v9 isEqualToString:@"PA"])
    {
      v10 = 123;
    }

    else if ([v9 isEqualToString:@"PI"])
    {
      v10 = 124;
    }

    else if ([v9 isEqualToString:@"FA"])
    {
      v10 = 125;
    }

    else if ([v9 isEqualToString:@"PL"])
    {
      v10 = 126;
    }

    else if ([v9 isEqualToString:@"PS"])
    {
      v10 = 127;
    }

    else if ([v9 isEqualToString:@"PT"])
    {
      v10 = 128;
    }

    else if ([v9 isEqualToString:@"QU"])
    {
      v10 = 129;
    }

    else if ([v9 isEqualToString:@"RM"])
    {
      v10 = 130;
    }

    else if ([v9 isEqualToString:@"RN"])
    {
      v10 = 131;
    }

    else if ([v9 isEqualToString:@"RO"])
    {
      v10 = 132;
    }

    else if ([v9 isEqualToString:@"RU"])
    {
      v10 = 133;
    }

    else if ([v9 isEqualToString:@"SA"])
    {
      v10 = 134;
    }

    else if ([v9 isEqualToString:@"SC"])
    {
      v10 = 135;
    }

    else if ([v9 isEqualToString:@"SD"])
    {
      v10 = 136;
    }

    else if ([v9 isEqualToString:@"SE"])
    {
      v10 = 137;
    }

    else if ([v9 isEqualToString:@"SM"])
    {
      v10 = 138;
    }

    else if ([v9 isEqualToString:@"SG"])
    {
      v10 = 139;
    }

    else if ([v9 isEqualToString:@"SR"])
    {
      v10 = 140;
    }

    else if ([v9 isEqualToString:@"GD"])
    {
      v10 = 141;
    }

    else if ([v9 isEqualToString:@"SN"])
    {
      v10 = 142;
    }

    else if ([v9 isEqualToString:@"SI"])
    {
      v10 = 143;
    }

    else if ([v9 isEqualToString:@"SK"])
    {
      v10 = 144;
    }

    else if ([v9 isEqualToString:@"SL"])
    {
      v10 = 145;
    }

    else if ([v9 isEqualToString:@"SO"])
    {
      v10 = 146;
    }

    else if ([v9 isEqualToString:@"ST"])
    {
      v10 = 147;
    }

    else if ([v9 isEqualToString:@"ES"])
    {
      v10 = 148;
    }

    else if ([v9 isEqualToString:@"SU"])
    {
      v10 = 149;
    }

    else if ([v9 isEqualToString:@"SW"])
    {
      v10 = 150;
    }

    else if ([v9 isEqualToString:@"SS"])
    {
      v10 = 151;
    }

    else if ([v9 isEqualToString:@"SV"])
    {
      v10 = 152;
    }

    else if ([v9 isEqualToString:@"TA"])
    {
      v10 = 153;
    }

    else if ([v9 isEqualToString:@"TE"])
    {
      v10 = 154;
    }

    else if ([v9 isEqualToString:@"TG"])
    {
      v10 = 155;
    }

    else if ([v9 isEqualToString:@"TH"])
    {
      v10 = 156;
    }

    else if ([v9 isEqualToString:@"TI"])
    {
      v10 = 157;
    }

    else if ([v9 isEqualToString:@"BO"])
    {
      v10 = 158;
    }

    else if ([v9 isEqualToString:@"TK"])
    {
      v10 = 159;
    }

    else if ([v9 isEqualToString:@"TL"])
    {
      v10 = 160;
    }

    else if ([v9 isEqualToString:@"TN"])
    {
      v10 = 161;
    }

    else if ([v9 isEqualToString:@"TO"])
    {
      v10 = 162;
    }

    else if ([v9 isEqualToString:@"TR"])
    {
      v10 = 163;
    }

    else if ([v9 isEqualToString:@"TS"])
    {
      v10 = 164;
    }

    else if ([v9 isEqualToString:@"TT"])
    {
      v10 = 165;
    }

    else if ([v9 isEqualToString:@"TW"])
    {
      v10 = 166;
    }

    else if ([v9 isEqualToString:@"TY"])
    {
      v10 = 167;
    }

    else if ([v9 isEqualToString:@"UG"])
    {
      v10 = 168;
    }

    else if ([v9 isEqualToString:@"UK"])
    {
      v10 = 169;
    }

    else if ([v9 isEqualToString:@"UR"])
    {
      v10 = 170;
    }

    else if ([v9 isEqualToString:@"UZ"])
    {
      v10 = 171;
    }

    else if ([v9 isEqualToString:@"VE"])
    {
      v10 = 172;
    }

    else if ([v9 isEqualToString:@"VI"])
    {
      v10 = 173;
    }

    else if ([v9 isEqualToString:@"VO"])
    {
      v10 = 174;
    }

    else if ([v9 isEqualToString:@"WA"])
    {
      v10 = 175;
    }

    else if ([v9 isEqualToString:@"CY"])
    {
      v10 = 176;
    }

    else if ([v9 isEqualToString:@"WO"])
    {
      v10 = 177;
    }

    else if ([v9 isEqualToString:@"FY"])
    {
      v10 = 178;
    }

    else if ([v9 isEqualToString:@"XH"])
    {
      v10 = 179;
    }

    else if ([v9 isEqualToString:@"YI"])
    {
      v10 = 180;
    }

    else if ([v9 isEqualToString:@"YO"])
    {
      v10 = 181;
    }

    else if ([v9 isEqualToString:@"ZA"])
    {
      v10 = 182;
    }

    else if ([v9 isEqualToString:@"ZU"])
    {
      v10 = 183;
    }

    else if ([v9 isEqualToString:@"WUU"])
    {
      v10 = 184;
    }

    else if ([v9 isEqualToString:@"YUE"])
    {
      v10 = 185;
    }

    else
    {
      v10 = 0;
    }

    v16 = objc_opt_self();
    if (v3[2] >= 2uLL)
    {
      v17 = v16;
      v18 = v3[6];
      v19 = v3[7];

      sub_258F0A560();

      v3 = sub_258F0A4E0();
LABEL_1131:

      v15 = [v17 convertCountryCodeToSchemaCountryCode_];
LABEL_1137:

      goto LABEL_1138;
    }

    __break(1u);
    goto LABEL_1126;
  }

  if (v4 == 3)
  {
    v5 = v2[4] == 0x454C41434F4CLL && v2[5] == 0xE600000000000000;
    if (v5 || (sub_258F0AD80() & 1) != 0)
    {
      v6 = v3[6];
      v7 = v3[7];

      v8 = sub_258F0A4E0();

      v9 = v8;
      if ([v9 isEqualToString:{@"ISOLANGUAGECODE_UNKNOWN", 95, 0xE100000000000000, a1, a2}])
      {
        v10 = 0;
LABEL_1129:

        v20 = objc_opt_self();
        if (v3[2] >= 3uLL)
        {
          v17 = v20;
          v21 = v3[8];
          v22 = v3[9];

          v3 = sub_258F0A4E0();
          goto LABEL_1131;
        }

        __break(1u);
        goto LABEL_1133;
      }

      if ([v9 isEqualToString:@"AB"])
      {
        v10 = 1;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AA"])
      {
        v10 = 2;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AF"])
      {
        v10 = 3;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AK"])
      {
        v10 = 4;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SQ"])
      {
        v10 = 5;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AM"])
      {
        v10 = 6;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AR"])
      {
        v10 = 7;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AN"])
      {
        v10 = 8;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"HY"])
      {
        v10 = 9;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AS"])
      {
        v10 = 10;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AV"])
      {
        v10 = 11;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AE"])
      {
        v10 = 12;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AY"])
      {
        v10 = 13;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"AZ"])
      {
        v10 = 14;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"BM"])
      {
        v10 = 15;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"BA"])
      {
        v10 = 16;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"EU"])
      {
        v10 = 17;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"BE"])
      {
        v10 = 18;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"BN"])
      {
        v10 = 19;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"BI"])
      {
        v10 = 20;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"BS"])
      {
        v10 = 21;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"BR"])
      {
        v10 = 22;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"BG"])
      {
        v10 = 23;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"MY"])
      {
        v10 = 24;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"CA"])
      {
        v10 = 25;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"CH"])
      {
        v10 = 26;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"CE"])
      {
        v10 = 27;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NY"])
      {
        v10 = 28;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"ZH"])
      {
        v10 = 29;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"CV"])
      {
        v10 = 30;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KW"])
      {
        v10 = 31;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"CO"])
      {
        v10 = 32;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"CR"])
      {
        v10 = 33;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"HR"])
      {
        v10 = 34;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"CS"])
      {
        v10 = 35;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"DA"])
      {
        v10 = 36;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"DV"])
      {
        v10 = 37;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NL"])
      {
        v10 = 38;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"DZ"])
      {
        v10 = 39;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"EN"])
      {
        v10 = 40;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"EO"])
      {
        v10 = 41;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"ET"])
      {
        v10 = 42;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"EE"])
      {
        v10 = 43;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"FO"])
      {
        v10 = 44;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"FJ"])
      {
        v10 = 45;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"FI"])
      {
        v10 = 46;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"FR"])
      {
        v10 = 47;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"FF"])
      {
        v10 = 48;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"GL"])
      {
        v10 = 49;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KA"])
      {
        v10 = 50;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"DE"])
      {
        v10 = 51;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"EL"])
      {
        v10 = 52;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"GN"])
      {
        v10 = 53;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"GU"])
      {
        v10 = 54;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"HT"])
      {
        v10 = 55;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"HA"])
      {
        v10 = 56;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"HE"])
      {
        v10 = 57;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"HZ"])
      {
        v10 = 58;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"HI"])
      {
        v10 = 59;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"HO"])
      {
        v10 = 60;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"HU"])
      {
        v10 = 61;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"IA"])
      {
        v10 = 62;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"ID"])
      {
        v10 = 63;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"IE"])
      {
        v10 = 64;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"GA"])
      {
        v10 = 65;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"IG"])
      {
        v10 = 66;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"IK"])
      {
        v10 = 67;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"IO"])
      {
        v10 = 68;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"IS"])
      {
        v10 = 69;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"IT"])
      {
        v10 = 70;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"IU"])
      {
        v10 = 71;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"JA"])
      {
        v10 = 72;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"JV"])
      {
        v10 = 73;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KL"])
      {
        v10 = 74;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KN"])
      {
        v10 = 75;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KR"])
      {
        v10 = 76;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KS"])
      {
        v10 = 77;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KK"])
      {
        v10 = 78;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KM"])
      {
        v10 = 79;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KI"])
      {
        v10 = 80;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"RW"])
      {
        v10 = 81;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KY"])
      {
        v10 = 82;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KV"])
      {
        v10 = 83;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KG"])
      {
        v10 = 84;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KO"])
      {
        v10 = 85;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KU"])
      {
        v10 = 86;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"KJ"])
      {
        v10 = 87;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"LA"])
      {
        v10 = 88;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"LB"])
      {
        v10 = 89;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"LG"])
      {
        v10 = 90;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"LI"])
      {
        v10 = 91;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"LN"])
      {
        v10 = 92;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"LO"])
      {
        v10 = 93;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"LT"])
      {
        v10 = 94;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"LU"])
      {
        v10 = 95;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"LV"])
      {
        v10 = 96;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"GV"])
      {
        v10 = 97;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"MK"])
      {
        v10 = 98;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"MG"])
      {
        v10 = 99;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"MS"])
      {
        v10 = 100;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"ML"])
      {
        v10 = 101;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"MT"])
      {
        v10 = 102;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"MI"])
      {
        v10 = 103;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"MR"])
      {
        v10 = 104;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"MH"])
      {
        v10 = 105;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"MN"])
      {
        v10 = 106;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NA"])
      {
        v10 = 107;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NV"])
      {
        v10 = 108;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"ND"])
      {
        v10 = 109;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NE"])
      {
        v10 = 110;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NG"])
      {
        v10 = 111;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NB"])
      {
        v10 = 112;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NN"])
      {
        v10 = 113;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NO"])
      {
        v10 = 114;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"II"])
      {
        v10 = 115;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"NR"])
      {
        v10 = 116;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"OC"])
      {
        v10 = 117;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"OJ"])
      {
        v10 = 118;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"CU"])
      {
        v10 = 119;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"OM"])
      {
        v10 = 120;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"OR"])
      {
        v10 = 121;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"OS"])
      {
        v10 = 122;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"PA"])
      {
        v10 = 123;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"PI"])
      {
        v10 = 124;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"FA"])
      {
        v10 = 125;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"PL"])
      {
        v10 = 126;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"PS"])
      {
        v10 = 127;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"PT"])
      {
        v10 = 128;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"QU"])
      {
        v10 = 129;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"RM"])
      {
        v10 = 130;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"RN"])
      {
        v10 = 131;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"RO"])
      {
        v10 = 132;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"RU"])
      {
        v10 = 133;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SA"])
      {
        v10 = 134;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SC"])
      {
        v10 = 135;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SD"])
      {
        v10 = 136;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SE"])
      {
        v10 = 137;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SM"])
      {
        v10 = 138;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SG"])
      {
        v10 = 139;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SR"])
      {
        v10 = 140;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"GD"])
      {
        v10 = 141;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SN"])
      {
        v10 = 142;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SI"])
      {
        v10 = 143;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SK"])
      {
        v10 = 144;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SL"])
      {
        v10 = 145;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SO"])
      {
        v10 = 146;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"ST"])
      {
        v10 = 147;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"ES"])
      {
        v10 = 148;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SU"])
      {
        v10 = 149;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SW"])
      {
        v10 = 150;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SS"])
      {
        v10 = 151;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"SV"])
      {
        v10 = 152;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TA"])
      {
        v10 = 153;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TE"])
      {
        v10 = 154;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TG"])
      {
        v10 = 155;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TH"])
      {
        v10 = 156;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TI"])
      {
        v10 = 157;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"BO"])
      {
        v10 = 158;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TK"])
      {
        v10 = 159;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TL"])
      {
        v10 = 160;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TN"])
      {
        v10 = 161;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TO"])
      {
        v10 = 162;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TR"])
      {
        v10 = 163;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TS"])
      {
        v10 = 164;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TT"])
      {
        v10 = 165;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TW"])
      {
        v10 = 166;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"TY"])
      {
        v10 = 167;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"UG"])
      {
        v10 = 168;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"UK"])
      {
        v10 = 169;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"UR"])
      {
        v10 = 170;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"UZ"])
      {
        v10 = 171;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"VE"])
      {
        v10 = 172;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"VI"])
      {
        v10 = 173;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"VO"])
      {
        v10 = 174;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"WA"])
      {
        v10 = 175;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"CY"])
      {
        v10 = 176;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"WO"])
      {
        v10 = 177;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"FY"])
      {
        v10 = 178;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"XH"])
      {
        v10 = 179;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"YI"])
      {
        v10 = 180;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"YO"])
      {
        v10 = 181;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"ZA"])
      {
        v10 = 182;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"ZU"])
      {
        v10 = 183;
        goto LABEL_1129;
      }

      if ([v9 isEqualToString:@"WUU"])
      {
        v10 = 184;
        goto LABEL_1129;
      }

LABEL_1126:
      if ([v9 isEqualToString:@"YUE"])
      {
        v10 = 185;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_1129;
    }
  }

  if (sub_258F0A5C0() == 2)
  {
    sub_258F0A560();
    v11 = sub_258F0A4E0();

    v3 = v11;
    if ([v3 isEqualToString:{@"ISOLANGUAGECODE_UNKNOWN", 95, 0xE100000000000000, a1, a2}])
    {
      v10 = 0;
    }

    else if ([v3 isEqualToString:@"AB"])
    {
      v10 = 1;
    }

    else if ([v3 isEqualToString:@"AA"])
    {
      v10 = 2;
    }

    else if ([v3 isEqualToString:@"AF"])
    {
      v10 = 3;
    }

    else if ([v3 isEqualToString:@"AK"])
    {
      v10 = 4;
    }

    else if ([v3 isEqualToString:@"SQ"])
    {
      v10 = 5;
    }

    else if ([v3 isEqualToString:@"AM"])
    {
      v10 = 6;
    }

    else if ([v3 isEqualToString:@"AR"])
    {
      v10 = 7;
    }

    else if ([v3 isEqualToString:@"AN"])
    {
      v10 = 8;
    }

    else if ([v3 isEqualToString:@"HY"])
    {
      v10 = 9;
    }

    else if ([v3 isEqualToString:@"AS"])
    {
      v10 = 10;
    }

    else if ([v3 isEqualToString:@"AV"])
    {
      v10 = 11;
    }

    else if ([v3 isEqualToString:@"AE"])
    {
      v10 = 12;
    }

    else if ([v3 isEqualToString:@"AY"])
    {
      v10 = 13;
    }

    else if ([v3 isEqualToString:@"AZ"])
    {
      v10 = 14;
    }

    else if ([v3 isEqualToString:@"BM"])
    {
      v10 = 15;
    }

    else if ([v3 isEqualToString:@"BA"])
    {
      v10 = 16;
    }

    else if ([v3 isEqualToString:@"EU"])
    {
      v10 = 17;
    }

    else if ([v3 isEqualToString:@"BE"])
    {
      v10 = 18;
    }

    else if ([v3 isEqualToString:@"BN"])
    {
      v10 = 19;
    }

    else if ([v3 isEqualToString:@"BI"])
    {
      v10 = 20;
    }

    else if ([v3 isEqualToString:@"BS"])
    {
      v10 = 21;
    }

    else if ([v3 isEqualToString:@"BR"])
    {
      v10 = 22;
    }

    else if ([v3 isEqualToString:@"BG"])
    {
      v10 = 23;
    }

    else if ([v3 isEqualToString:@"MY"])
    {
      v10 = 24;
    }

    else if ([v3 isEqualToString:@"CA"])
    {
      v10 = 25;
    }

    else if ([v3 isEqualToString:@"CH"])
    {
      v10 = 26;
    }

    else if ([v3 isEqualToString:@"CE"])
    {
      v10 = 27;
    }

    else if ([v3 isEqualToString:@"NY"])
    {
      v10 = 28;
    }

    else if ([v3 isEqualToString:@"ZH"])
    {
      v10 = 29;
    }

    else if ([v3 isEqualToString:@"CV"])
    {
      v10 = 30;
    }

    else if ([v3 isEqualToString:@"KW"])
    {
      v10 = 31;
    }

    else if ([v3 isEqualToString:@"CO"])
    {
      v10 = 32;
    }

    else if ([v3 isEqualToString:@"CR"])
    {
      v10 = 33;
    }

    else if ([v3 isEqualToString:@"HR"])
    {
      v10 = 34;
    }

    else if ([v3 isEqualToString:@"CS"])
    {
      v10 = 35;
    }

    else if ([v3 isEqualToString:@"DA"])
    {
      v10 = 36;
    }

    else if ([v3 isEqualToString:@"DV"])
    {
      v10 = 37;
    }

    else if ([v3 isEqualToString:@"NL"])
    {
      v10 = 38;
    }

    else if ([v3 isEqualToString:@"DZ"])
    {
      v10 = 39;
    }

    else if ([v3 isEqualToString:@"EN"])
    {
      v10 = 40;
    }

    else if ([v3 isEqualToString:@"EO"])
    {
      v10 = 41;
    }

    else if ([v3 isEqualToString:@"ET"])
    {
      v10 = 42;
    }

    else if ([v3 isEqualToString:@"EE"])
    {
      v10 = 43;
    }

    else if ([v3 isEqualToString:@"FO"])
    {
      v10 = 44;
    }

    else if ([v3 isEqualToString:@"FJ"])
    {
      v10 = 45;
    }

    else if ([v3 isEqualToString:@"FI"])
    {
      v10 = 46;
    }

    else if ([v3 isEqualToString:@"FR"])
    {
      v10 = 47;
    }

    else if ([v3 isEqualToString:@"FF"])
    {
      v10 = 48;
    }

    else if ([v3 isEqualToString:@"GL"])
    {
      v10 = 49;
    }

    else if ([v3 isEqualToString:@"KA"])
    {
      v10 = 50;
    }

    else if ([v3 isEqualToString:@"DE"])
    {
      v10 = 51;
    }

    else if ([v3 isEqualToString:@"EL"])
    {
      v10 = 52;
    }

    else if ([v3 isEqualToString:@"GN"])
    {
      v10 = 53;
    }

    else if ([v3 isEqualToString:@"GU"])
    {
      v10 = 54;
    }

    else if ([v3 isEqualToString:@"HT"])
    {
      v10 = 55;
    }

    else if ([v3 isEqualToString:@"HA"])
    {
      v10 = 56;
    }

    else if ([v3 isEqualToString:@"HE"])
    {
      v10 = 57;
    }

    else if ([v3 isEqualToString:@"HZ"])
    {
      v10 = 58;
    }

    else if ([v3 isEqualToString:@"HI"])
    {
      v10 = 59;
    }

    else if ([v3 isEqualToString:@"HO"])
    {
      v10 = 60;
    }

    else if ([v3 isEqualToString:@"HU"])
    {
      v10 = 61;
    }

    else if ([v3 isEqualToString:@"IA"])
    {
      v10 = 62;
    }

    else if ([v3 isEqualToString:@"ID"])
    {
      v10 = 63;
    }

    else if ([v3 isEqualToString:@"IE"])
    {
      v10 = 64;
    }

    else if ([v3 isEqualToString:@"GA"])
    {
      v10 = 65;
    }

    else if ([v3 isEqualToString:@"IG"])
    {
      v10 = 66;
    }

    else if ([v3 isEqualToString:@"IK"])
    {
      v10 = 67;
    }

    else if ([v3 isEqualToString:@"IO"])
    {
      v10 = 68;
    }

    else if ([v3 isEqualToString:@"IS"])
    {
      v10 = 69;
    }

    else if ([v3 isEqualToString:@"IT"])
    {
      v10 = 70;
    }

    else if ([v3 isEqualToString:@"IU"])
    {
      v10 = 71;
    }

    else if ([v3 isEqualToString:@"JA"])
    {
      v10 = 72;
    }

    else if ([v3 isEqualToString:@"JV"])
    {
      v10 = 73;
    }

    else if ([v3 isEqualToString:@"KL"])
    {
      v10 = 74;
    }

    else if ([v3 isEqualToString:@"KN"])
    {
      v10 = 75;
    }

    else if ([v3 isEqualToString:@"KR"])
    {
      v10 = 76;
    }

    else if ([v3 isEqualToString:@"KS"])
    {
      v10 = 77;
    }

    else if ([v3 isEqualToString:@"KK"])
    {
      v10 = 78;
    }

    else if ([v3 isEqualToString:@"KM"])
    {
      v10 = 79;
    }

    else if ([v3 isEqualToString:@"KI"])
    {
      v10 = 80;
    }

    else if ([v3 isEqualToString:@"RW"])
    {
      v10 = 81;
    }

    else if ([v3 isEqualToString:@"KY"])
    {
      v10 = 82;
    }

    else if ([v3 isEqualToString:@"KV"])
    {
      v10 = 83;
    }

    else if ([v3 isEqualToString:@"KG"])
    {
      v10 = 84;
    }

    else if ([v3 isEqualToString:@"KO"])
    {
      v10 = 85;
    }

    else if ([v3 isEqualToString:@"KU"])
    {
      v10 = 86;
    }

    else if ([v3 isEqualToString:@"KJ"])
    {
      v10 = 87;
    }

    else if ([v3 isEqualToString:@"LA"])
    {
      v10 = 88;
    }

    else if ([v3 isEqualToString:@"LB"])
    {
      v10 = 89;
    }

    else if ([v3 isEqualToString:@"LG"])
    {
      v10 = 90;
    }

    else if ([v3 isEqualToString:@"LI"])
    {
      v10 = 91;
    }

    else if ([v3 isEqualToString:@"LN"])
    {
      v10 = 92;
    }

    else if ([v3 isEqualToString:@"LO"])
    {
      v10 = 93;
    }

    else if ([v3 isEqualToString:@"LT"])
    {
      v10 = 94;
    }

    else if ([v3 isEqualToString:@"LU"])
    {
      v10 = 95;
    }

    else if ([v3 isEqualToString:@"LV"])
    {
      v10 = 96;
    }

    else if ([v3 isEqualToString:@"GV"])
    {
      v10 = 97;
    }

    else if ([v3 isEqualToString:@"MK"])
    {
      v10 = 98;
    }

    else if ([v3 isEqualToString:@"MG"])
    {
      v10 = 99;
    }

    else if ([v3 isEqualToString:@"MS"])
    {
      v10 = 100;
    }

    else if ([v3 isEqualToString:@"ML"])
    {
      v10 = 101;
    }

    else if ([v3 isEqualToString:@"MT"])
    {
      v10 = 102;
    }

    else if ([v3 isEqualToString:@"MI"])
    {
      v10 = 103;
    }

    else if ([v3 isEqualToString:@"MR"])
    {
      v10 = 104;
    }

    else if ([v3 isEqualToString:@"MH"])
    {
      v10 = 105;
    }

    else if ([v3 isEqualToString:@"MN"])
    {
      v10 = 106;
    }

    else if ([v3 isEqualToString:@"NA"])
    {
      v10 = 107;
    }

    else if ([v3 isEqualToString:@"NV"])
    {
      v10 = 108;
    }

    else if ([v3 isEqualToString:@"ND"])
    {
      v10 = 109;
    }

    else if ([v3 isEqualToString:@"NE"])
    {
      v10 = 110;
    }

    else if ([v3 isEqualToString:@"NG"])
    {
      v10 = 111;
    }

    else if ([v3 isEqualToString:@"NB"])
    {
      v10 = 112;
    }

    else if ([v3 isEqualToString:@"NN"])
    {
      v10 = 113;
    }

    else if ([v3 isEqualToString:@"NO"])
    {
      v10 = 114;
    }

    else if ([v3 isEqualToString:@"II"])
    {
      v10 = 115;
    }

    else if ([v3 isEqualToString:@"NR"])
    {
      v10 = 116;
    }

    else if ([v3 isEqualToString:@"OC"])
    {
      v10 = 117;
    }

    else if ([v3 isEqualToString:@"OJ"])
    {
      v10 = 118;
    }

    else if ([v3 isEqualToString:@"CU"])
    {
      v10 = 119;
    }

    else if ([v3 isEqualToString:@"OM"])
    {
      v10 = 120;
    }

    else if ([v3 isEqualToString:@"OR"])
    {
      v10 = 121;
    }

    else if ([v3 isEqualToString:@"OS"])
    {
      v10 = 122;
    }

    else if ([v3 isEqualToString:@"PA"])
    {
      v10 = 123;
    }

    else if ([v3 isEqualToString:@"PI"])
    {
      v10 = 124;
    }

    else if ([v3 isEqualToString:@"FA"])
    {
      v10 = 125;
    }

    else if ([v3 isEqualToString:@"PL"])
    {
      v10 = 126;
    }

    else if ([v3 isEqualToString:@"PS"])
    {
      v10 = 127;
    }

    else if ([v3 isEqualToString:@"PT"])
    {
      v10 = 128;
    }

    else if ([v3 isEqualToString:@"QU"])
    {
      v10 = 129;
    }

    else if ([v3 isEqualToString:@"RM"])
    {
      v10 = 130;
    }

    else if ([v3 isEqualToString:@"RN"])
    {
      v10 = 131;
    }

    else if ([v3 isEqualToString:@"RO"])
    {
      v10 = 132;
    }

    else if ([v3 isEqualToString:@"RU"])
    {
      v10 = 133;
    }

    else if ([v3 isEqualToString:@"SA"])
    {
      v10 = 134;
    }

    else if ([v3 isEqualToString:@"SC"])
    {
      v10 = 135;
    }

    else if ([v3 isEqualToString:@"SD"])
    {
      v10 = 136;
    }

    else if ([v3 isEqualToString:@"SE"])
    {
      v10 = 137;
    }

    else if ([v3 isEqualToString:@"SM"])
    {
      v10 = 138;
    }

    else if ([v3 isEqualToString:@"SG"])
    {
      v10 = 139;
    }

    else if ([v3 isEqualToString:@"SR"])
    {
      v10 = 140;
    }

    else if ([v3 isEqualToString:@"GD"])
    {
      v10 = 141;
    }

    else if ([v3 isEqualToString:@"SN"])
    {
      v10 = 142;
    }

    else if ([v3 isEqualToString:@"SI"])
    {
      v10 = 143;
    }

    else if ([v3 isEqualToString:@"SK"])
    {
      v10 = 144;
    }

    else if ([v3 isEqualToString:@"SL"])
    {
      v10 = 145;
    }

    else if ([v3 isEqualToString:@"SO"])
    {
      v10 = 146;
    }

    else if ([v3 isEqualToString:@"ST"])
    {
      v10 = 147;
    }

    else if ([v3 isEqualToString:@"ES"])
    {
      v10 = 148;
    }

    else if ([v3 isEqualToString:@"SU"])
    {
      v10 = 149;
    }

    else if ([v3 isEqualToString:@"SW"])
    {
      v10 = 150;
    }

    else if ([v3 isEqualToString:@"SS"])
    {
      v10 = 151;
    }

    else if ([v3 isEqualToString:@"SV"])
    {
      v10 = 152;
    }

    else if ([v3 isEqualToString:@"TA"])
    {
      v10 = 153;
    }

    else if ([v3 isEqualToString:@"TE"])
    {
      v10 = 154;
    }

    else if ([v3 isEqualToString:@"TG"])
    {
      v10 = 155;
    }

    else if ([v3 isEqualToString:@"TH"])
    {
      v10 = 156;
    }

    else if ([v3 isEqualToString:@"TI"])
    {
      v10 = 157;
    }

    else if ([v3 isEqualToString:@"BO"])
    {
      v10 = 158;
    }

    else if ([v3 isEqualToString:@"TK"])
    {
      v10 = 159;
    }

    else if ([v3 isEqualToString:@"TL"])
    {
      v10 = 160;
    }

    else if ([v3 isEqualToString:@"TN"])
    {
      v10 = 161;
    }

    else if ([v3 isEqualToString:@"TO"])
    {
      v10 = 162;
    }

    else if ([v3 isEqualToString:@"TR"])
    {
      v10 = 163;
    }

    else if ([v3 isEqualToString:@"TS"])
    {
      v10 = 164;
    }

    else if ([v3 isEqualToString:@"TT"])
    {
      v10 = 165;
    }

    else if ([v3 isEqualToString:@"TW"])
    {
      v10 = 166;
    }

    else if ([v3 isEqualToString:@"TY"])
    {
      v10 = 167;
    }

    else if ([v3 isEqualToString:@"UG"])
    {
      v10 = 168;
    }

    else if ([v3 isEqualToString:@"UK"])
    {
      v10 = 169;
    }

    else if ([v3 isEqualToString:@"UR"])
    {
      v10 = 170;
    }

    else if ([v3 isEqualToString:@"UZ"])
    {
      v10 = 171;
    }

    else if ([v3 isEqualToString:@"VE"])
    {
      v10 = 172;
    }

    else if ([v3 isEqualToString:@"VI"])
    {
      v10 = 173;
    }

    else if ([v3 isEqualToString:@"VO"])
    {
      v10 = 174;
    }

    else if ([v3 isEqualToString:@"WA"])
    {
      v10 = 175;
    }

    else if ([v3 isEqualToString:@"CY"])
    {
      v10 = 176;
    }

    else if ([v3 isEqualToString:@"WO"])
    {
      v10 = 177;
    }

    else if ([v3 isEqualToString:@"FY"])
    {
      v10 = 178;
    }

    else if ([v3 isEqualToString:@"XH"])
    {
      v10 = 179;
    }

    else if ([v3 isEqualToString:@"YI"])
    {
      v10 = 180;
    }

    else if ([v3 isEqualToString:@"YO"])
    {
      v10 = 181;
    }

    else if ([v3 isEqualToString:@"ZA"])
    {
      v10 = 182;
    }

    else if ([v3 isEqualToString:@"ZU"])
    {
      v10 = 183;
    }

    else
    {
      if (([v3 isEqualToString:@"WUU"] & 1) == 0)
      {
LABEL_1133:
        if ([v3 isEqualToString:@"YUE"])
        {
          v10 = 185;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_1136;
      }

      v10 = 184;
    }

LABEL_1136:

    v15 = 0;
    goto LABEL_1137;
  }

  v15 = 0;
  v10 = 0;
LABEL_1138:
  v23 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v24 = v23;
  [v24 setLanguageCode_];
  [v24 setCountryCode_];

  return v23;
}

id _sSo17SISchemaISOLocaleC16MetricsFrameworkE22toExperimentBiomeEvent16experimentDigestSo014BMSiriOnDevicejfcB0CAC0fJ0VSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989810, qword_258F114C0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  sub_258DE20C0(a1, &v21 - v9, &qword_27F989810, qword_258F114C0);
  v11 = type metadata accessor for ExperimentDigest(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) == 1)
  {
    sub_258DE2184(v10, &qword_27F989810, qword_258F114C0);
  }

  else
  {
    v13 = *(v10 + 12);
    v14 = v13;
    sub_258E578F8(v10, type metadata accessor for ExperimentDigest);
    if (v13)
    {
      [v14 languageCode];

      v15 = sub_258F0AE20();
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  sub_258DE20C0(a1, v7, &qword_27F989810, qword_258F114C0);
  if (v12(v7, 1, v11) == 1)
  {
    sub_258DE2184(v7, &qword_27F989810, qword_258F114C0);
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v16 = *(v7 + 12);
  v17 = v16;
  sub_258E578F8(v7, type metadata accessor for ExperimentDigest);
  if (!v16)
  {
    goto LABEL_10;
  }

  [v17 countryCode];

  v18 = sub_258F0AE20();
LABEL_11:
  v19 = [objc_allocWithZone(MEMORY[0x277CF14F0]) initWithLanguageCode:v15 countryCode:v18];

  return v19;
}

id sub_258E52D4C(uint64_t a1, Class *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v25 - v11;
  sub_258DE20C0(a1, &v25 - v11, &qword_27F9894E0, &unk_258F106A0);
  v13 = type metadata accessor for EventMetadata(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    sub_258DE2184(v12, &qword_27F9894E0, &unk_258F106A0);
  }

  else
  {
    v15 = *&v12[*(v13 + 32)];
    v16 = v15;
    sub_258E578F8(v12, type metadata accessor for EventMetadata);
    if (v15)
    {
      [v16 startTimestampInSecondsSince1970];

      v17 = 0;
      goto LABEL_6;
    }
  }

  v17 = 1;
LABEL_6:
  sub_258DE20C0(a1, v9, &qword_27F9894E0, &unk_258F106A0);
  if (v14(v9, 1, v13) == 1)
  {
    sub_258DE2184(v9, &qword_27F9894E0, &unk_258F106A0);
  }

  else
  {
    v18 = *&v9[*(v13 + 32)];
    v19 = v18;
    sub_258E578F8(v9, type metadata accessor for EventMetadata);
    if (v18)
    {
      [v19 numberOfSeconds];

      v20 = 0;
      if (v17)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  v20 = 1;
  if (v17)
  {
LABEL_13:
    v21 = 0;
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_10:
  v21 = sub_258F0AEC0();
  if (v20)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

LABEL_11:
  v22 = sub_258F0AEB0();
LABEL_15:
  v23 = [objc_allocWithZone(*a2) initWithStartTimestampInSecondsSince1970:v21 numberOfSeconds:v22];

  return v23;
}

id _s16MetricsFramework13EventMetadataV07toBiomeC005usagecD0So025BMSiriOnDeviceDigestUsageacD0CACSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v86 = &v80 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v84 = &v80 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v80 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v80 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v82 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v80 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v80 - v34;
  sub_258DE20C0(a1, v23, &qword_27F9894E0, &unk_258F106A0);
  v36 = type metadata accessor for EventMetadata(0);
  v37 = *(*(v36 - 1) + 48);
  if (v37(v23, 1, v36) == 1)
  {
    v38 = &qword_27F9894E0;
    v39 = &unk_258F106A0;
    v40 = v23;
LABEL_5:
    sub_258DE2184(v40, v38, v39);
    v81 = 0;
    v85 = 0;
    goto LABEL_7;
  }

  sub_258DE20C0(v23, v35, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v23, type metadata accessor for EventMetadata);
  v41 = sub_258F09A70();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v35, 1, v41) == 1)
  {
    v38 = &qword_27F988730;
    v39 = &unk_258F0F8E0;
    v40 = v35;
    goto LABEL_5;
  }

  v81 = sub_258F09A40();
  v85 = v43;
  (*(v42 + 8))(v35, v41);
LABEL_7:
  v44 = v87;
  sub_258DE20C0(a1, v20, &qword_27F9894E0, &unk_258F106A0);
  if (v37(v20, 1, v36) == 1)
  {
    sub_258DE2184(v20, &qword_27F9894E0, &unk_258F106A0);
    v80 = 0;
    v83 = 0;
  }

  else
  {
    sub_258DE20C0(&v20[v36[5]], v32, &qword_27F988730, &unk_258F0F8E0);
    sub_258E578F8(v20, type metadata accessor for EventMetadata);
    v45 = sub_258F09A70();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v32, 1, v45) == 1)
    {
      sub_258DE2184(v32, &qword_27F988730, &unk_258F0F8E0);
      v80 = 0;
      v83 = 0;
    }

    else
    {
      v80 = sub_258F09A40();
      v83 = v47;
      (*(v46 + 8))(v32, v45);
    }

    v44 = v87;
  }

  v48 = v86;
  sub_258DE20C0(a1, v16, &qword_27F9894E0, &unk_258F106A0);
  v49 = v37(v16, 1, v36);
  v50 = v82;
  if (v49 == 1)
  {
    sub_258DE2184(v16, &qword_27F9894E0, &unk_258F106A0);
    v86 = 0;
    v51 = 0;
  }

  else
  {
    sub_258DE20C0(&v16[v36[6]], v82, &qword_27F988730, &unk_258F0F8E0);
    sub_258E578F8(v16, type metadata accessor for EventMetadata);
    v52 = sub_258F09A70();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v50, 1, v52) == 1)
    {
      sub_258DE2184(v50, &qword_27F988730, &unk_258F0F8E0);
      v86 = 0;
      v51 = 0;
    }

    else
    {
      v86 = sub_258F09A40();
      v51 = v54;
      (*(v53 + 8))(v50, v52);
    }

    v44 = v87;
  }

  v55 = v84;
  sub_258DE20C0(a1, v84, &qword_27F9894E0, &unk_258F106A0);
  if (v37(v55, 1, v36) == 1)
  {
    sub_258DE2184(v55, &qword_27F9894E0, &unk_258F106A0);
    v56 = 1;
  }

  else
  {
    v57 = v55 + v36[9];
    v58 = *v57;
    v56 = *(v57 + 8);
    sub_258E578F8(v55, type metadata accessor for EventMetadata);
  }

  sub_258DE20C0(a1, v48, &qword_27F9894E0, &unk_258F106A0);
  if (v37(v48, 1, v36) == 1)
  {
    sub_258DE2184(v48, &qword_27F9894E0, &unk_258F106A0);
    v59 = 1;
  }

  else
  {
    v60 = v48 + v36[10];
    v61 = *v60;
    v62 = v48;
    v59 = *(v60 + 8);
    sub_258E578F8(v62, type metadata accessor for EventMetadata);
  }

  sub_258DE20C0(a1, v44, &qword_27F9894E0, &unk_258F106A0);
  if (v37(v44, 1, v36) == 1)
  {
    sub_258DE2184(v44, &qword_27F9894E0, &unk_258F106A0);
    v63 = sub_258E52D4C(a1, 0x277CF1530);
    v64 = 0;
    v65 = v85;
    v66 = v83;
    if ((v56 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v73 = v44 + v36[7];
    v74 = v44;
    v75 = *v73;
    v76 = *(v73 + 8);
    sub_258E578F8(v74, type metadata accessor for EventMetadata);
    v63 = sub_258E52D4C(a1, 0x277CF1530);
    v66 = v83;
    if (v76)
    {
      v64 = 0;
    }

    else
    {
      v64 = sub_258F0AEC0();
    }

    v65 = v85;
    if ((v56 & 1) == 0)
    {
LABEL_27:
      v67 = sub_258F0AEC0();
      if ((v59 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }
  }

  v67 = 0;
  if ((v59 & 1) == 0)
  {
LABEL_28:
    v68 = sub_258F0AEC0();
    if (v65)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

LABEL_37:
  v68 = 0;
  if (v65)
  {
LABEL_29:
    v69 = v63;
    v70 = sub_258F0A4E0();

    if (v66)
    {
      goto LABEL_30;
    }

LABEL_39:
    v71 = 0;
    if (v51)
    {
      goto LABEL_31;
    }

LABEL_40:
    v72 = 0;
    goto LABEL_41;
  }

LABEL_38:
  v77 = v63;
  v70 = 0;
  if (!v66)
  {
    goto LABEL_39;
  }

LABEL_30:
  v71 = sub_258F0A4E0();

  if (!v51)
  {
    goto LABEL_40;
  }

LABEL_31:
  v72 = sub_258F0A4E0();

LABEL_41:
  v78 = [objc_allocWithZone(MEMORY[0x277CF1528]) initWithOddIdUUID:v70 deviceAggregationId:v71 userAggregationId:v72 eventTimestampInMSSince1970:v64 timeInterval:v63 userAggregationIdRotationTimestampInMs:v67 userAggregationIdExpirationTimestampInMs:v68];

  return v78;
}

id _s16MetricsFramework13EventMetadataV07toBiomeC021deviceSegmentsCohortsSo020BMSiriOnDeviceDigesthicD0CAA0lhI0VSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE0, &qword_258F114B0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v153 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v151 = &v141 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v150 = &v141 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v155 = &v141 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v141 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v141 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v141 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v146 = &v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v145 = &v141 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v144 = &v141 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v143 = &v141 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v142 = &v141 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v47 = &v141 - v46;
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v141 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v52 = *(*(v51 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v51 - 8, v53);
  v154 = &v141 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v54, v56);
  v141 = &v141 - v58;
  MEMORY[0x28223BE20](v57, v59);
  v61 = &v141 - v60;
  v156 = a1;
  sub_258DE20C0(a1, v26, &qword_27F989AE0, &qword_258F114B0);
  v62 = type metadata accessor for DeviceSegmentsCohorts(0);
  v63 = *(*(v62 - 8) + 48);
  if (v63(v26, 1, v62) == 1)
  {
    v64 = &qword_27F989AE0;
    v65 = &qword_258F114B0;
    v66 = v26;
LABEL_7:
    sub_258DE2184(v66, v64, v65);
    v148 = 0;
    v152 = 0;
    goto LABEL_8;
  }

  sub_258DE20C0(v26, v50, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v26, type metadata accessor for DeviceSegmentsCohorts);
  v67 = type metadata accessor for EventMetadata(0);
  if ((*(*(v67 - 8) + 48))(v50, 1, v67) == 1)
  {
    v64 = &qword_27F9894E0;
    v65 = &unk_258F106A0;
    v66 = v50;
    goto LABEL_7;
  }

  sub_258DE20C0(v50, v61, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v50, type metadata accessor for EventMetadata);
  v68 = sub_258F09A70();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v61, 1, v68) == 1)
  {
    v64 = &qword_27F988730;
    v65 = &unk_258F0F8E0;
    v66 = v61;
    goto LABEL_7;
  }

  v148 = sub_258F09A40();
  v152 = v83;
  (*(v69 + 8))(v61, v68);
LABEL_8:
  sub_258DE20C0(v156, v23, &qword_27F989AE0, &qword_258F114B0);
  v70 = v63(v23, 1, v62);
  v71 = v154;
  v72 = v155;
  if (v70 == 1)
  {
    v73 = &qword_27F989AE0;
    v74 = &qword_258F114B0;
    v75 = v23;
LABEL_12:
    sub_258DE2184(v75, v73, v74);
    v147 = 0;
    v149 = 0;
    v77 = v153;
    v78 = v156;
    goto LABEL_18;
  }

  sub_258DE20C0(v23, v47, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v23, type metadata accessor for DeviceSegmentsCohorts);
  v76 = type metadata accessor for EventMetadata(0);
  if ((*(*(v76 - 8) + 48))(v47, 1, v76) == 1)
  {
    v73 = &qword_27F9894E0;
    v74 = &unk_258F106A0;
    v75 = v47;
    goto LABEL_12;
  }

  v79 = v141;
  sub_258DE20C0(&v47[*(v76 + 20)], v141, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v47, type metadata accessor for EventMetadata);
  v80 = sub_258F09A70();
  v81 = *(v80 - 8);
  v82 = (*(v81 + 48))(v79, 1, v80);
  v77 = v153;
  if (v82 == 1)
  {
    sub_258DE2184(v79, &qword_27F988730, &unk_258F0F8E0);
    v147 = 0;
    v149 = 0;
  }

  else
  {
    v84 = sub_258F09A40();
    v72 = v155;
    v147 = v84;
    v149 = v85;
    (*(v81 + 8))(v79, v80);
  }

  v78 = v156;
  v71 = v154;
LABEL_18:
  sub_258DE20C0(v78, v19, &qword_27F989AE0, &qword_258F114B0);
  if (v63(v19, 1, v62) == 1)
  {
    v86 = &qword_27F989AE0;
    v87 = &qword_258F114B0;
    v88 = v19;
LABEL_22:
    sub_258DE2184(v88, v86, v87);
    v154 = 0;
    v156 = 0;
    v91 = v151;
    goto LABEL_23;
  }

  v89 = v142;
  sub_258DE20C0(v19, v142, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v19, type metadata accessor for DeviceSegmentsCohorts);
  v90 = type metadata accessor for EventMetadata(0);
  if ((*(*(v90 - 8) + 48))(v89, 1, v90) == 1)
  {
    v86 = &qword_27F9894E0;
    v87 = &unk_258F106A0;
    v88 = v89;
    goto LABEL_22;
  }

  sub_258DE20C0(v89 + *(v90 + 24), v71, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v89, type metadata accessor for EventMetadata);
  v99 = sub_258F09A70();
  v100 = v71;
  v101 = *(v99 - 8);
  v102 = (*(v101 + 48))(v100, 1, v99);
  v91 = v151;
  if (v102 == 1)
  {
    sub_258DE2184(v100, &qword_27F988730, &unk_258F0F8E0);
    v154 = 0;
    v156 = 0;
  }

  else
  {
    v139 = sub_258F09A40();
    v72 = v155;
    v154 = v139;
    v156 = v140;
    (*(v101 + 8))(v100, v99);
  }

LABEL_23:
  sub_258DE20C0(v78, v72, &qword_27F989AE0, &qword_258F114B0);
  v92 = v63(v72, 1, v62);
  v93 = v150;
  if (v92 == 1)
  {
    v94 = &qword_27F989AE0;
    v95 = &qword_258F114B0;
    v96 = v72;
LABEL_27:
    sub_258DE2184(v96, v94, v95);
    v153 = 0;
    LODWORD(v155) = 1;
    goto LABEL_31;
  }

  v97 = v143;
  sub_258DE20C0(v72, v143, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v72, type metadata accessor for DeviceSegmentsCohorts);
  v98 = type metadata accessor for EventMetadata(0);
  if ((*(*(v98 - 8) + 48))(v97, 1, v98) == 1)
  {
    v94 = &qword_27F9894E0;
    v95 = &unk_258F106A0;
    v96 = v97;
    goto LABEL_27;
  }

  v103 = (v97 + *(v98 + 36));
  v153 = *v103;
  LODWORD(v155) = *(v103 + 8);
  sub_258E578F8(v97, type metadata accessor for EventMetadata);
LABEL_31:
  sub_258DE20C0(v78, v93, &qword_27F989AE0, &qword_258F114B0);
  if (v63(v93, 1, v62) == 1)
  {
    v104 = &qword_27F989AE0;
    v105 = &qword_258F114B0;
    v106 = v93;
LABEL_35:
    sub_258DE2184(v106, v104, v105);
    v151 = 0;
    v109 = 1;
    goto LABEL_37;
  }

  v107 = v144;
  sub_258DE20C0(v93, v144, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v93, type metadata accessor for DeviceSegmentsCohorts);
  v108 = type metadata accessor for EventMetadata(0);
  if ((*(*(v108 - 8) + 48))(v107, 1, v108) == 1)
  {
    v104 = &qword_27F9894E0;
    v105 = &unk_258F106A0;
    v106 = v107;
    goto LABEL_35;
  }

  v110 = (v107 + *(v108 + 40));
  v151 = *v110;
  v109 = *(v110 + 8);
  sub_258E578F8(v107, type metadata accessor for EventMetadata);
LABEL_37:
  sub_258DE20C0(v78, v91, &qword_27F989AE0, &qword_258F114B0);
  if (v63(v91, 1, v62) == 1)
  {
    v111 = &qword_27F989AE0;
    v112 = &qword_258F114B0;
LABEL_41:
    sub_258DE2184(v91, v111, v112);
    v116 = 1;
    goto LABEL_43;
  }

  v113 = v145;
  sub_258DE20C0(v91, v145, &qword_27F9894E0, &unk_258F106A0);
  v114 = v91;
  v91 = v113;
  sub_258E578F8(v114, type metadata accessor for DeviceSegmentsCohorts);
  v115 = type metadata accessor for EventMetadata(0);
  if ((*(*(v115 - 8) + 48))(v113, 1, v115) == 1)
  {
    v111 = &qword_27F9894E0;
    v112 = &unk_258F106A0;
    goto LABEL_41;
  }

  v117 = v113 + *(v115 + 28);
  v118 = *v117;
  v116 = *(v117 + 8);
  sub_258E578F8(v91, type metadata accessor for EventMetadata);
LABEL_43:
  sub_258DE20C0(v78, v77, &qword_27F989AE0, &qword_258F114B0);
  if (v63(v77, 1, v62) == 1)
  {
    sub_258DE2184(v77, &qword_27F989AE0, &qword_258F114B0);
  }

  else
  {
    v119 = v146;
    sub_258DE20C0(v77, v146, &qword_27F9894E0, &unk_258F106A0);
    sub_258E578F8(v77, type metadata accessor for DeviceSegmentsCohorts);
    v120 = type metadata accessor for EventMetadata(0);
    if ((*(*(v120 - 8) + 48))(v119, 1, v120) == 1)
    {
      sub_258DE2184(v119, &qword_27F9894E0, &unk_258F106A0);
    }

    else
    {
      v121 = *(v119 + *(v120 + 32));
      v122 = v121;
      sub_258E578F8(v119, type metadata accessor for EventMetadata);
      if (v121)
      {
        [v122 startTimestampInSecondsSince1970];
        [v122 numberOfSeconds];
        v123 = sub_258F0AEC0();
        v124 = sub_258F0AEB0();
        goto LABEL_50;
      }
    }
  }

  v124 = 0;
  v123 = 0;
  v122 = 0;
LABEL_50:
  v125 = [objc_allocWithZone(MEMORY[0x277CF1518]) initWithStartTimestampInSecondsSince1970:v123 numberOfSeconds:v124];

  if (v116)
  {
    v126 = 0;
  }

  else
  {
    v126 = sub_258F0AEC0();
  }

  v127 = v152;
  v128 = v149;
  if (v155)
  {
    v129 = 0;
    if ((v109 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v129 = sub_258F0AEC0();
    if ((v109 & 1) == 0)
    {
LABEL_55:
      v130 = sub_258F0AEC0();
      if (v127)
      {
        goto LABEL_56;
      }

      goto LABEL_61;
    }
  }

  v130 = 0;
  if (v127)
  {
LABEL_56:
    v131 = v125;
    v132 = sub_258F0A4E0();

    v133 = v156;
    if (v128)
    {
      goto LABEL_57;
    }

LABEL_62:
    v134 = 0;
    if (v133)
    {
      goto LABEL_58;
    }

LABEL_63:
    v135 = 0;
    goto LABEL_64;
  }

LABEL_61:
  v136 = v125;
  v132 = 0;
  v133 = v156;
  if (!v128)
  {
    goto LABEL_62;
  }

LABEL_57:
  v134 = sub_258F0A4E0();

  if (!v133)
  {
    goto LABEL_63;
  }

LABEL_58:
  v135 = sub_258F0A4E0();

LABEL_64:
  v137 = [objc_allocWithZone(MEMORY[0x277CF1510]) initWithOddIdUUID:v132 deviceAggregationId:v134 userAggregationId:v135 eventTimestampInMSSince1970:v126 timeInterval:v125 userAggregationIdRotationTimestampInMs:v129 userAggregationIdExpirationTimestampInMs:v130];

  return v137;
}