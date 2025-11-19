uint64_t sub_258DEF240(uint64_t a1, uint64_t a2)
{
  v7 = sub_258DEF388();
  v6 = MEMORY[0x277D837D0];
  sub_258F0A970();
  v2 = sub_258F0A4E0();

  v3 = v2;
  if ([v3 isEqualToString:{@"ODDMOBILEASSETDOWNLOADSTATE_UNKNOWN", v6, v7, v7, v7, 0xD00000000000001CLL, 0x8000000258F19570, 0xD00000000000001CLL, 0x8000000258F19550, a1, a2}])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ODDMOBILEASSETDOWNLOADSTATE_DOWNLOAD_NOT_STARTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ODDMOBILEASSETDOWNLOADSTATE_DOWNLOAD_IN_PROGRESS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ODDMOBILEASSETDOWNLOADSTATE_DOWNLOAD_FAILED_AND_NOT_RESTARTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ODDMOBILEASSETDOWNLOADSTATE_ASSETS_AVAILABLE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_258DEF388()
{
  result = qword_280CC49E8;
  if (!qword_280CC49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC49E8);
  }

  return result;
}

id sub_258DEF3DC(const void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AC0, &qword_258F0CCE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v32 - v7;
  memcpy(v37, a1, 0x311uLL);
  v9 = [objc_allocWithZone(MEMORY[0x277D59388]) init];
  if (v9)
  {
    sub_258DEFA5C();
    memcpy(v36, a1, 0x311uLL);
    v10 = v9;
    sub_258DE40EC(v37, v34);
    v11 = sub_258DEE6C0(v36);
    [v10 setAssistantDimensions_];
  }

  if (*(&v37[7] + 1))
  {
    v12 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*&v37[7], *(&v37[7] + 1));
    [v9 setAppleIntelligenceLocale_];
  }

  v34[10] = v37[18];
  v34[11] = v37[19];
  v35 = *&v37[20];
  v34[6] = v37[14];
  v34[7] = v37[15];
  v34[8] = v37[16];
  v34[9] = v37[17];
  v34[2] = v37[10];
  v34[3] = v37[11];
  v34[4] = v37[12];
  v34[5] = v37[13];
  v34[0] = v37[8];
  v34[1] = v37[9];
  if (sub_258DEF888(v34) == 1 || !v35)
  {
    memcpy(v36, &v37[20] + 8, 0x1C9uLL);
    if (sub_258DEF8AC(v36) == 1)
    {

      return v9;
    }

    v13 = v36[51];

    if (!v13)
    {
      return v9;
    }
  }

  else
  {
  }

  v14 = sub_258F0A4E0();
  v15 = SADSchemaSADSiriModeFromString(v14);

  [v9 setCurrentMode_];
  if (v9)
  {
    [v9 setHasCurrentMode_];
  }

  sub_258DEF8D0(a2, v8);
  v16 = sub_258F0A370();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {

    sub_258DEF940(v8);
  }

  else
  {

    v18 = sub_258F0A350();
    v19 = sub_258F0A810();

    if (os_log_type_enabled(v18, v19))
    {
      v33 = v19;
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36[0] = v32;
      *v20 = 136315138;
      v21 = sub_258F0A4E0();

      v22 = v21;
      v23 = @"SADSIRIMODE_UNKNOWN";
      if (([v22 isEqualToString:@"SADSIRIMODE_UNKNOWN"] & 1) == 0)
      {
        v23 = @"SADSIRIMODE_CLASSIC";
        if (([v22 isEqualToString:@"SADSIRIMODE_CLASSIC"] & 1) == 0)
        {
          v23 = @"SADSIRIMODE_FULL_UOD";
          if (([v22 isEqualToString:@"SADSIRIMODE_FULL_UOD"] & 1) == 0)
          {
            v23 = @"SADSIRIMODE_HYBRID";
            if (([v22 isEqualToString:@"SADSIRIMODE_HYBRID"] & 1) == 0)
            {
              v23 = @"SADSIRIMODE_SYSTEM_ASSISTANT_EXPERIENCE";
              if (![v22 isEqualToString:@"SADSIRIMODE_SYSTEM_ASSISTANT_EXPERIENCE"])
              {
                v23 = @"SADSIRIMODE_UNKNOWN";
              }
            }
          }
        }
      }

      v24 = v23;
      v25 = v23;
      v26 = sub_258F0A4F0();
      v28 = v27;

      v29 = sub_258DE3018(v26, v28, v36);

      *(v20 + 4) = v29;
      _os_log_impl(&dword_258DD8000, v18, v33, "AIR mapped currentMode=%s", v20, 0xCu);
      v30 = v32;
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x259C9EF40](v30, -1, -1);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v8, v16);
  }

  return v9;
}

uint64_t sub_258DEF888(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258DEF8AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258DEF8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AC0, &qword_258F0CCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258DEF940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AC0, &qword_258F0CCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SADSchemaSADSiriModeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SADSIRIMODE_UNKNOWN"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"SADSIRIMODE_CLASSIC"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SADSIRIMODE_FULL_UOD"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SADSIRIMODE_HYBRID"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"SADSIRIMODE_SYSTEM_ASSISTANT_EXPERIENCE"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t sub_258DEFA5C()
{
  result = qword_27F988AC8;
  if (!qword_27F988AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F988AC8);
  }

  return result;
}

uint64_t AIRAssetStatusSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258DF3E48(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t AIRAssetStatusSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_258DF3D74(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

uint64_t sub_258DEFC10(uint64_t a1)
{
  v2[641] = v1;
  v4 = *(*(sub_258F0A540() - 8) + 64) + 15;
  v2[642] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AC0, &qword_258F0CCE0) - 8) + 64) + 15;
  v2[643] = swift_task_alloc();
  v2[644] = swift_task_alloc();
  v2[645] = swift_task_alloc();
  v6 = sub_258F09A20();
  v2[646] = v6;
  v7 = *(v6 - 8);
  v2[647] = v7;
  v8 = *(v7 + 64) + 15;
  v2[648] = swift_task_alloc();
  v2[649] = swift_task_alloc();
  v9 = type metadata accessor for CombinedAIRAssetStatusData(0);
  v2[650] = v9;
  v10 = *(v9 - 8);
  v2[651] = v10;
  v11 = *(v10 + 64) + 15;
  v2[652] = swift_task_alloc();
  v2[653] = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258DEFDC0, 0, 0);
}

void sub_258DEFDC0()
{
  v184 = v0;
  v1 = *(v0 + 5224);
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_258F0A4E0();
  [v2 BOOLForKey_];

  v4 = *(v1 + 16);
  *(v0 + 5232) = v4;
  if (!v4)
  {
LABEL_85:
    v152 = *(v0 + 5216);
    v153 = *(v0 + 5192);
    v154 = *(v0 + 5184);
    v155 = *(v0 + 5160);
    v156 = *(v0 + 5152);
    v157 = *(v0 + 5144);
    v158 = *(v0 + 5136);

    v159 = *(v0 + 8);

    v159();
    return;
  }

  v5 = *(v0 + 5224);
  v6 = *(v0 + 5128);
  *(v0 + 5240) = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;

  v7 = sub_258F0A350();
  v8 = sub_258F0A810();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 5224);
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v1 + 16);

    _os_log_impl(&dword_258DD8000, v7, v8, "AIRAssetStatusSELFReporter event_types=%ld", v11, 0xCu);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

  else
  {
    v12 = *(v0 + 5224);
  }

  v14 = *(v0 + 5208);
  *(v0 + 5248) = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService;
  *(v0 + 804) = *(v14 + 80);
  *(v0 + 5256) = 0;
  v15 = *(v0 + 5224);
  if (!*(v15 + 16))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v16 = 0;
  v171 = (v0 + 4248);
  v17 = v0 + 4448;
  v170 = (v0 + 4648);
  v18 = 0x277D59000uLL;
  v19 = &selRef_setSampledErrorAsset_;
  *&v13 = 136315138;
  v169 = v13;
  while (1)
  {
    v20 = *(v0 + 5216);
    sub_258DF3F48(v15 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 5208) + 72) * v16, v20);
    v21 = *v20;
    *(v0 + 5264) = *v20;
    v22 = *(v21 + 16);
    *(v0 + 5272) = v22;
    v23 = 0;
    if (v22)
    {
      break;
    }

LABEL_80:
    v145 = *(v0 + 5128) + *(v0 + 5240);
    v146 = sub_258F0A350();
    v147 = sub_258F0A810();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 134217984;
      *(v148 + 4) = v23;
      _os_log_impl(&dword_258DD8000, v146, v147, "AIR reporter results: parsed=%ld", v148, 0xCu);
      MEMORY[0x259C9EF40](v148, -1, -1);
    }

    v149 = *(v0 + 5256);
    v150 = *(v0 + 5232);
    v151 = *(v0 + 5216);

    sub_258DF3FAC(v151);
    if (v149 + 1 == v150)
    {
      goto LABEL_85;
    }

    v16 = *(v0 + 5256) + 1;
    *(v0 + 5256) = v16;
    v15 = *(v0 + 5224);
    v18 = 0x277D59000;
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_84;
    }
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    *(v0 + 5296) = v25;
    *(v0 + 5288) = v24;
    *(v0 + 5280) = v23;
    memcpy((v0 + 16), (v21 + 792 * v25 + 32), 0x311uLL);
    v26 = objc_allocWithZone(*(v18 + 992));
    sub_258DE40EC(v0 + 16, v0 + 808);
    v27 = [v26 v19[10]];
    *(v0 + 5304) = v27;
    if (v27)
    {
      break;
    }

    sub_258DE71D0(v0 + 16);
LABEL_77:
    v25 = *(v0 + 5296) + 1;
    if (v25 == *(v0 + 5272))
    {
      goto LABEL_80;
    }

    v21 = *(v0 + 5264);
    if (v25 >= *(v21 + 16))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      return;
    }
  }

  v28 = v27;
  v29 = *(v0 + 5216);
  v181 = *(v0 + 16);
  v30 = *(v0 + 24);
  v31 = *(*(v0 + 5200) + 20);
  LOBYTE(__dst[0]) = 1;
  v32 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
  [v28 setEventMetadata_];

  if (v30)
  {
    if (v24 > 4)
    {

      sub_258DE71D0(v0 + 16);
    }

    else
    {
      v175 = v24;
      v177 = v23;
      v179 = v28;
      v33 = sub_258F09870();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      sub_258F09860();
      memcpy((v0 + 1600), (v0 + 16), 0x311uLL);
      sub_258DF4008();
      v108 = sub_258F09850();
      v110 = v109;
      v111 = *(v0 + 5136);

      sub_258F0A530();
      v112 = sub_258F0A510();
      if (v113)
      {
        v114 = v113;
        v115 = v112;
        v116 = *(v0 + 5128) + *(v0 + 5240);
        v117 = sub_258F0A350();
        v118 = sub_258F0A810();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          __dst[0] = v120;
          *v119 = v169;
          v121 = sub_258DE3018(v115, v114, __dst);

          *(v119 + 4) = v121;
          _os_log_impl(&dword_258DD8000, v117, v118, "AIR skipping row raw=%s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v120);
          v122 = v120;
          v19 = &selRef_setSampledErrorAsset_;
          MEMORY[0x259C9EF40](v122, -1, -1);
          v123 = v119;
          v18 = 0x277D59000;
          MEMORY[0x259C9EF40](v123, -1, -1);

          sub_258DE71D0(v0 + 16);
          sub_258DEB978(v108, v110);
        }

        else
        {

          sub_258DE71D0(v0 + 16);
          sub_258DEB978(v108, v110);
        }
      }

      else
      {

        sub_258DE71D0(v0 + 16);
        sub_258DEB978(v108, v110);
      }

      v24 = v175;
      v23 = v177;
    }

    if (__OFADD__(v24++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_77;
  }

  v178 = v23;
  v180 = v28;
  v36 = *(v0 + 5240);
  v37 = *(v0 + 5192);
  v38 = *(v0 + 5184);
  v39 = *(v0 + 5176);
  v40 = *(v0 + 5168);
  v41 = *(v0 + 5128);
  sub_258F099D0();
  (*(v39 + 16))(v38, v37, v40);
  v42 = sub_258F0A350();
  v43 = sub_258F0A810();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 5192);
  v46 = *(v0 + 5184);
  v47 = *(v0 + 5176);
  v48 = *(v0 + 5168);
  v176 = v24;
  if (v44)
  {
    v49 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    v50 = __dst[0];
    *v49 = 134218242;
    *(v49 + 4) = v181;
    *(v49 + 12) = 2080;
    sub_258DF40CC();
    v173 = v45;
    v51 = sub_258F0AD60();
    v53 = v52;
    v54 = *(v47 + 8);
    v54(v46, v48);
    v55 = sub_258DE3018(v51, v53, __dst);

    *(v49 + 14) = v55;
    _os_log_impl(&dword_258DD8000, v42, v43, "AIR reporting event at ms=%llu, time=%s", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v56 = v50;
    v17 = v0 + 4448;
    MEMORY[0x259C9EF40](v56, -1, -1);
    MEMORY[0x259C9EF40](v49, -1, -1);

    v54(v173, v48);
  }

  else
  {

    v57 = *(v47 + 8);
    v57(v46, v48);
    v57(v45, v48);
  }

  v58 = *(v0 + 80);
  v59 = *(v0 + 64);
  v172 = *(v0 + 72);
  v174 = *(v0 + 88);
  v60 = [v180 eventMetadata];
  [v60 setEventTimestampInMsSince1970_];

  v61 = *(v0 + 320);
  *(v17 + 160) = *(v0 + 304);
  *(v17 + 176) = v61;
  *(v17 + 192) = *(v0 + 336);
  v62 = *(v0 + 256);
  *(v17 + 96) = *(v0 + 240);
  *(v17 + 112) = v62;
  v63 = *(v0 + 288);
  *(v17 + 128) = *(v0 + 272);
  *(v17 + 144) = v63;
  v64 = *(v0 + 192);
  *(v17 + 32) = *(v0 + 176);
  *(v17 + 48) = v64;
  v65 = *(v0 + 224);
  *(v17 + 64) = *(v0 + 208);
  *(v17 + 80) = v65;
  v66 = *(v0 + 160);
  *v17 = *(v0 + 144);
  *(v17 + 16) = v66;
  v19 = &selRef_setSampledErrorAsset_;
  if (sub_258DEF888(v17) != 1)
  {
    v73 = *(v0 + 5240);
    v74 = *(v0 + 5160);
    v75 = *(v0 + 5128);
    v76 = *(v17 + 176);
    *(v0 + 4408) = *(v17 + 160);
    *(v0 + 4424) = v76;
    *(v0 + 4440) = *(v17 + 192);
    v77 = *(v17 + 112);
    *(v0 + 4344) = *(v17 + 96);
    *(v0 + 4360) = v77;
    v78 = *(v17 + 144);
    *(v0 + 4376) = *(v17 + 128);
    *(v0 + 4392) = v78;
    v79 = *(v17 + 48);
    *(v0 + 4280) = *(v17 + 32);
    *(v0 + 4296) = v79;
    v80 = *(v17 + 80);
    *(v0 + 4312) = *(v17 + 64);
    *(v0 + 4328) = v80;
    v81 = *(v17 + 16);
    *v171 = *v17;
    *(v0 + 4264) = v81;
    v82 = *(v0 + 320);
    *(v0 + 4808) = *(v0 + 304);
    *(v0 + 4824) = v82;
    *(v0 + 4840) = *(v0 + 336);
    v83 = *(v0 + 256);
    *(v0 + 4744) = *(v0 + 240);
    *(v0 + 4760) = v83;
    v84 = *(v0 + 288);
    *(v0 + 4776) = *(v0 + 272);
    *(v0 + 4792) = v84;
    v85 = *(v0 + 192);
    *(v0 + 4680) = *(v0 + 176);
    *(v0 + 4696) = v85;
    v86 = *(v0 + 224);
    *(v0 + 4712) = *(v0 + 208);
    *(v0 + 4728) = v86;
    v87 = *(v0 + 160);
    *v170 = *(v0 + 144);
    *(v0 + 4664) = v87;
    v88 = sub_258F0A370();
    v89 = *(v88 - 8);
    (*(v89 + 16))(v74, v75 + v73, v88);
    v90 = *(v89 + 56);
    v90(v74, 0, 1, v88);
    v91 = objc_allocWithZone(MEMORY[0x277D59380]);
    sub_258DEB7BC(v170, v0 + 4848);
    v92 = [v91 init];
    *(v0 + 5312) = v92;
    if (!v92)
    {
      goto LABEL_96;
    }

    v93 = v92;
    v94 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
    if (v94)
    {
      if (v174)
      {

        v95 = sub_258F0A4E0();
        if ([v95 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
        {
          v96 = 0;
        }

        else if ([v95 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          v96 = 1;
        }

        else if ([v95 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          v96 = 2;
        }

        else if ([v95 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          v96 = 3;
        }

        else if ([v95 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          v96 = 4;
        }

        else if ([v95 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          v96 = 5;
        }

        else
        {
          v96 = 0;
        }

        [v94 setProgramCode_];
      }

      if (v172)
      {
        v125 = sub_258F0A4E0();
        [v94 setDeviceType_];
      }
    }

    v126 = *(v0 + 5248);
    v127 = *(v0 + 5160);
    v128 = *(v0 + 5152);
    v129 = *(v0 + 5128);
    [v93 setFixedDimensions_];

    [v93 setEventType_];
    memcpy(__dst, (v0 + 16), 0x311uLL);
    v90(v128, 1, 1, v88);
    v130 = sub_258DEF3DC(__dst, v128);
    sub_258DE2184(v128, &qword_27F988AC0, &qword_258F0CCE0);
    memcpy(__dst, (v0 + 16), 0x311uLL);

    sub_258DEE8A8(v171, v130);
    sub_258DE2184(v0 + 144, &qword_27F988978, qword_258F0CD00);
    [v93 setAvailabilityStatus_];

    sub_258DE71D0(v0 + 16);
    sub_258DE2184(v127, &qword_27F988AC0, &qword_258F0CCE0);
    v131 = v93;
    v132 = v180;
    [v180 setIntelligenceFeatureAvailabilityStatusChangesReported_];
    sub_258DF405C(v129 + v126, v0 + 5088);
    v133 = *(v0 + 5112);
    if (v133)
    {
      v160 = *(v0 + 5240);
      v161 = *(v0 + 5128);
      v162 = *(v0 + 5120);
      __swift_project_boxed_opaque_existential_1((v0 + 5088), *(v0 + 5112));
      v163 = *(v162 + 8);
      v182 = (v163 + *v163);
      v164 = v163[1];
      v165 = swift_task_alloc();
      *(v0 + 5320) = v165;
      *v165 = v0;
      v166 = sub_258DF10B0;
      goto LABEL_90;
    }

    sub_258DE2184(v0 + 5088, &qword_27F988AE8, &qword_258F0CCF8);
    v134 = *(v0 + 5304);
    v135 = *(v0 + 5280);

    v23 = v135 + 1;
    if (__OFADD__(v135, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_76;
  }

  memcpy((v0 + 2856), (v0 + 344), 0x1C9uLL);
  v67 = sub_258DEF8AC(v0 + 2856);
  v68 = *(v0 + 5240);
  if (v67 == 1)
  {
    v69 = *(v0 + 5128);
    sub_258DE71D0(v0 + 16);
    v70 = sub_258F0A350();
    v71 = sub_258F0A810();
    v18 = 0x277D59000;
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_258DD8000, v70, v71, "AIR: row had no payload; skipping", v72, 2u);
      MEMORY[0x259C9EF40](v72, -1, -1);
    }

    v24 = v176;
    v23 = v178;
    goto LABEL_77;
  }

  v97 = *(v0 + 5144);
  v98 = *(v0 + 5128);
  memcpy((v0 + 2392), (v0 + 2856), 0x1C9uLL);
  memcpy((v0 + 3320), (v0 + 344), 0x1C9uLL);
  v99 = sub_258F0A370();
  v100 = *(v99 - 8);
  (*(v100 + 16))(v97, v98 + v68, v99);
  v101 = *(v100 + 56);
  v101(v97, 0, 1, v99);
  v102 = objc_allocWithZone(MEMORY[0x277D59380]);
  sub_258DEB824(v0 + 3320, v0 + 3784);
  v103 = [v102 init];
  *(v0 + 5336) = v103;
  if (!v103)
  {
    goto LABEL_97;
  }

  v104 = v103;
  v105 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (v105)
  {
    if (v174)
    {

      v106 = sub_258F0A4E0();
      if ([v106 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
      {
        v107 = 0;
      }

      else if ([v106 isEqualToString:@"PROGRAMCODE_IOS"])
      {
        v107 = 1;
      }

      else if ([v106 isEqualToString:@"PROGRAMCODE_MACOS"])
      {
        v107 = 2;
      }

      else if ([v106 isEqualToString:@"PROGRAMCODE_TVOS"])
      {
        v107 = 3;
      }

      else if ([v106 isEqualToString:@"PROGRAMCODE_WATCHOS"])
      {
        v107 = 4;
      }

      else if ([v106 isEqualToString:@"PROGRAMCODE_VISIONOS"])
      {
        v107 = 5;
      }

      else
      {
        v107 = 0;
      }

      [v105 setProgramCode_];
    }

    if (v172)
    {
      v136 = sub_258F0A4E0();
      [v105 setDeviceType_];
    }
  }

  v137 = *(v0 + 5248);
  v138 = *(v0 + 5152);
  v139 = *(v0 + 5144);
  v140 = *(v0 + 5128);
  [v104 setFixedDimensions_];

  [v104 setEventType_];
  memcpy(__dst, (v0 + 16), 0x311uLL);
  v101(v138, 1, 1, v99);
  v141 = sub_258DEF3DC(__dst, v138);
  sub_258DE2184(v138, &qword_27F988AC0, &qword_258F0CCE0);
  memcpy(__dst, (v0 + 16), 0x311uLL);

  sub_258DEEC18(v0 + 2392, v141);
  sub_258DE2184(v0 + 344, &qword_27F988988, &qword_258F0C1C0);
  [v104 setAvailabilityStatus_];

  sub_258DE71D0(v0 + 16);
  sub_258DE2184(v139, &qword_27F988AC0, &qword_258F0CCE0);
  v142 = v104;
  v132 = v180;
  [v180 setIntelligenceFeatureAvailabilityStatusChangesReported_];
  sub_258DF405C(v140 + v137, v0 + 5048);
  v133 = *(v0 + 5072);
  if (!v133)
  {

    sub_258DE2184(v0 + 5048, &qword_27F988AE8, &qword_258F0CCF8);
    v143 = *(v0 + 5304);
    v144 = *(v0 + 5280);

    v23 = v144 + 1;
    if (__OFADD__(v144, 1))
    {
      goto LABEL_95;
    }

LABEL_76:
    v24 = *(v0 + 5288);
    v17 = v0 + 4448;
    v18 = 0x277D59000;
    v19 = &selRef_setSampledErrorAsset_;
    goto LABEL_77;
  }

  v160 = *(v0 + 5240);
  v161 = *(v0 + 5128);
  v162 = *(v0 + 5080);
  __swift_project_boxed_opaque_existential_1((v0 + 5048), *(v0 + 5072));
  v167 = *(v162 + 8);
  v182 = (v167 + *v167);
  v168 = v167[1];
  v165 = swift_task_alloc();
  *(v0 + 5344) = v165;
  *v165 = v0;
  v166 = sub_258DF25E4;
LABEL_90:
  v165[1] = v166;

  v182(v132, v161 + v160, v133, v162);
}

uint64_t sub_258DF10B0()
{
  v2 = *(*v1 + 5320);
  v5 = *v1;
  *(*v1 + 5328) = v0;

  if (v0)
  {
    v3 = sub_258DF246C;
  }

  else
  {
    v3 = sub_258DF11C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258DF11C4()
{
  v178 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5088));
  v162 = *(v0 + 5328);
  v2 = *(v0 + 5304);
  v3 = *(v0 + 5280);

  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    v140 = *(v0 + 5216);
    v141 = *(v0 + 5192);
    v142 = *(v0 + 5184);
    v143 = *(v0 + 5160);
    v144 = *(v0 + 5152);
    v145 = *(v0 + 5144);
    v146 = *(v0 + 5136);

    v147 = *(v0 + 8);

    v147();
    return;
  }

  v163 = (v0 + 4248);
  v165 = (v0 + 4448);
  v161 = (v0 + 4648);
  v5 = &selRef_setSampledErrorAsset_;
  while (2)
  {
    v6 = *(v0 + 5288);
    v7 = v4;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = *(v0 + 5296) + 1;
          if (v8 == *(v0 + 5272))
          {
            v9 = *(v0 + 5128) + *(v0 + 5240);
            v10 = sub_258F0A350();
            v11 = sub_258F0A810();
            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_11;
            }

            v12 = swift_slowAlloc();
            *v12 = 134217984;
            *(v12 + 4) = v4;
LABEL_10:
            _os_log_impl(&dword_258DD8000, v10, v11, "AIR reporter results: parsed=%ld", v12, 0xCu);
            MEMORY[0x259C9EF40](v12, -1, -1);
LABEL_11:
            while (1)
            {
              v14 = *(v0 + 5256);
              v15 = *(v0 + 5232);
              v16 = *(v0 + 5216);

              v17 = v14 + 1;
              sub_258DF3FAC(v16);
              if (v14 + 1 == v15)
              {
                goto LABEL_87;
              }

              v18 = *(v0 + 5256) + 1;
              *(v0 + 5256) = v18;
              v19 = *(v0 + 5224);
              if (v18 >= *(v19 + 16))
              {
                __break(1u);
                goto LABEL_95;
              }

              v20 = *(v0 + 5216);
              sub_258DF3F48(v19 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 5208) + 72) * v18, v20);
              v13 = *v20;
              *(v0 + 5264) = *v20;
              v21 = *(v13 + 16);
              *(v0 + 5272) = v21;
              if (v21)
              {
                v7 = 0;
                v4 = 0;
                v6 = 0;
                v8 = 0;
                goto LABEL_17;
              }

              v22 = *(v0 + 5128) + *(v0 + 5240);
              v10 = sub_258F0A350();
              v11 = sub_258F0A810();
              if (os_log_type_enabled(v10, v11))
              {
                v12 = swift_slowAlloc();
                *v12 = 134217984;
                *(v12 + 4) = 0;
                goto LABEL_10;
              }
            }
          }

          v13 = *(v0 + 5264);
          if (v8 >= *(v13 + 16))
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
            return;
          }

LABEL_17:
          *(v0 + 5296) = v8;
          *(v0 + 5288) = v6;
          *(v0 + 5280) = v7;
          memcpy((v0 + 16), (v13 + 792 * v8 + 32), 0x311uLL);
          v23 = objc_allocWithZone(MEMORY[0x277D593E0]);
          sub_258DE40EC(v0 + 16, v0 + 808);
          v24 = [v23 v5[10]];
          *(v0 + 5304) = v24;
          if (v24)
          {
            break;
          }

          sub_258DE71D0(v0 + 16);
        }

        v25 = v24;
        v171 = v7;
        v26 = *(v0 + 5216);
        v1 = *(v0 + 16);
        v27 = *(v0 + 24);
        v28 = *(*(v0 + 5200) + 20);
        LOBYTE(__dst[0]) = 1;
        v29 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
        [v25 setEventMetadata_];

        v175 = v25;
        v167 = v4;
        v169 = v6;
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (v6 <= 4)
        {
          v80 = sub_258F09870();
          v81 = *(v80 + 48);
          v82 = *(v80 + 52);
          swift_allocObject();
          sub_258F09860();
          memcpy((v0 + 1600), (v0 + 16), 0x311uLL);
          sub_258DF4008();
          v83 = sub_258F09850();
          if (v162)
          {

            sub_258DE71D0(v0 + 16);
          }

          else
          {
            v85 = v83;
            v86 = v84;
            v87 = *(v0 + 5136);

            sub_258F0A530();
            v88 = sub_258F0A510();
            if (v89)
            {
              v90 = v89;
              v1 = v88;
              v91 = *(v0 + 5128) + *(v0 + 5240);
              v92 = sub_258F0A350();
              v93 = sub_258F0A810();
              if (os_log_type_enabled(v92, v93))
              {
                v94 = swift_slowAlloc();
                v95 = swift_slowAlloc();
                __dst[0] = v95;
                *v94 = 136315138;
                v1 = sub_258DE3018(v1, v90, __dst);

                *(v94 + 4) = v1;
                _os_log_impl(&dword_258DD8000, v92, v93, "AIR skipping row raw=%s", v94, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v95);
                MEMORY[0x259C9EF40](v95, -1, -1);
                v96 = v94;
                v4 = v167;
                MEMORY[0x259C9EF40](v96, -1, -1);

                sub_258DE71D0(v0 + 16);
                sub_258DEB978(v85, v86);
              }

              else
              {

                sub_258DE71D0(v0 + 16);
                sub_258DEB978(v85, v86);
              }

              v162 = 0;
              v5 = &selRef_setSampledErrorAsset_;
              goto LABEL_60;
            }

            sub_258DE71D0(v0 + 16);
            sub_258DEB978(v85, v86);
          }

          v162 = 0;
LABEL_60:
          v6 = v169;
          goto LABEL_61;
        }

        sub_258DE71D0(v0 + 16);
LABEL_61:
        v106 = __OFADD__(v6++, 1);
        v7 = v171;
        if (v106)
        {
          goto LABEL_97;
        }
      }

      v30 = *(v0 + 5240);
      v31 = *(v0 + 5192);
      v32 = *(v0 + 5184);
      v33 = *(v0 + 5176);
      v34 = *(v0 + 5168);
      v35 = *(v0 + 5128);
      sub_258F099D0();
      (*(v33 + 16))(v32, v31, v34);
      v36 = sub_258F0A350();
      v37 = v1;
      v1 = sub_258F0A810();
      v38 = os_log_type_enabled(v36, v1);
      v39 = *(v0 + 5192);
      v40 = *(v0 + 5184);
      v41 = *(v0 + 5176);
      v42 = *(v0 + 5168);
      if (v38)
      {
        v166 = v37;
        v43 = swift_slowAlloc();
        __dst[0] = swift_slowAlloc();
        v44 = __dst[0];
        *v43 = 134218242;
        *(v43 + 4) = v166;
        *(v43 + 12) = 2080;
        sub_258DF40CC();
        v164 = v39;
        v45 = sub_258F0AD60();
        v47 = v46;
        v48 = *(v41 + 8);
        v48(v40, v42);
        v49 = sub_258DE3018(v45, v47, __dst);

        *(v43 + 14) = v49;
        _os_log_impl(&dword_258DD8000, v36, v1, "AIR reporting event at ms=%llu, time=%s", v43, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        v50 = v44;
        v25 = v175;
        MEMORY[0x259C9EF40](v50, -1, -1);
        v51 = v43;
        v37 = v166;
        MEMORY[0x259C9EF40](v51, -1, -1);

        v48(v164, v42);
      }

      else
      {

        v52 = *(v41 + 8);
        v52(v40, v42);
        v52(v39, v42);
      }

      v54 = *(v0 + 80);
      v53 = *(v0 + 88);
      v56 = *(v0 + 64);
      v55 = *(v0 + 72);
      v57 = [v25 eventMetadata];
      [v57 setEventTimestampInMsSince1970_];

      v58 = *(v0 + 320);
      *(v0 + 4608) = *(v0 + 304);
      *(v0 + 4624) = v58;
      *(v0 + 4640) = *(v0 + 336);
      v59 = *(v0 + 256);
      *(v0 + 4544) = *(v0 + 240);
      *(v0 + 4560) = v59;
      v60 = *(v0 + 288);
      *(v0 + 4576) = *(v0 + 272);
      *(v0 + 4592) = v60;
      v61 = *(v0 + 192);
      *(v0 + 4480) = *(v0 + 176);
      *(v0 + 4496) = v61;
      v62 = *(v0 + 224);
      *(v0 + 4512) = *(v0 + 208);
      *(v0 + 4528) = v62;
      v63 = *(v0 + 160);
      *v165 = *(v0 + 144);
      *(v0 + 4464) = v63;
      if (sub_258DEF888(v165) != 1)
      {
        break;
      }

      memcpy((v0 + 2856), (v0 + 344), 0x1C9uLL);
      v64 = sub_258DEF8AC(v0 + 2856);
      v65 = *(v0 + 5240);
      if (v64 == 1)
      {
        v66 = *(v0 + 5128);
        sub_258DE71D0(v0 + 16);
        v67 = sub_258F0A350();
        v68 = sub_258F0A810();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_258DD8000, v67, v68, "AIR: row had no payload; skipping", v69, 2u);
          MEMORY[0x259C9EF40](v69, -1, -1);
        }

        v5 = &selRef_setSampledErrorAsset_;
        v4 = v167;
        v6 = v169;
        v7 = v171;
      }

      else
      {
        v172 = v53;
        v70 = *(v0 + 5144);
        v71 = *(v0 + 5128);
        memcpy((v0 + 2392), (v0 + 2856), 0x1C9uLL);
        memcpy((v0 + 3320), (v0 + 344), 0x1C9uLL);
        v72 = sub_258F0A370();
        v73 = *(v72 - 8);
        (*(v73 + 16))(v70, v71 + v65, v72);
        v74 = *(v73 + 56);
        v74(v70, 0, 1, v72);
        v75 = objc_allocWithZone(MEMORY[0x277D59380]);
        sub_258DEB824(v0 + 3320, v0 + 3784);
        v76 = [v75 init];
        *(v0 + 5336) = v76;
        if (!v76)
        {
          goto LABEL_98;
        }

        v1 = v76;
        v77 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
        if (v77)
        {
          if (v172)
          {

            v78 = sub_258F0A4E0();
            if ([v78 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
            {
              v79 = 0;
            }

            else if ([v78 isEqualToString:@"PROGRAMCODE_IOS"])
            {
              v79 = 1;
            }

            else if ([v78 isEqualToString:@"PROGRAMCODE_MACOS"])
            {
              v79 = 2;
            }

            else if ([v78 isEqualToString:@"PROGRAMCODE_TVOS"])
            {
              v79 = 3;
            }

            else if ([v78 isEqualToString:@"PROGRAMCODE_WATCHOS"])
            {
              v79 = 4;
            }

            else if ([v78 isEqualToString:@"PROGRAMCODE_VISIONOS"])
            {
              v79 = 5;
            }

            else
            {
              v79 = 0;
            }

            [v77 setProgramCode_];
          }

          if (v55)
          {
            v97 = sub_258F0A4E0();
            [v77 setDeviceType_];
          }
        }

        v98 = *(v0 + 5248);
        v99 = *(v0 + 5152);
        v100 = *(v0 + 5144);
        v101 = *(v0 + 5128);
        [v1 setFixedDimensions_];

        [v1 setEventType_];
        memcpy(__dst, (v0 + 16), 0x311uLL);
        v74(v99, 1, 1, v72);
        v102 = sub_258DEF3DC(__dst, v99);
        sub_258DE2184(v99, &qword_27F988AC0, &qword_258F0CCE0);
        memcpy(__dst, (v0 + 16), 0x311uLL);

        sub_258DEEC18(v0 + 2392, v102);
        sub_258DE2184(v0 + 344, &qword_27F988988, &qword_258F0C1C0);
        [v1 setAvailabilityStatus_];

        sub_258DE71D0(v0 + 16);
        sub_258DE2184(v100, &qword_27F988AC0, &qword_258F0CCE0);
        v103 = v1;
        [v175 setIntelligenceFeatureAvailabilityStatusChangesReported_];
        sub_258DF405C(v101 + v98, v0 + 5048);
        v16 = *(v0 + 5072);
        if (v16)
        {
          v148 = *(v0 + 5240);
          v149 = *(v0 + 5128);
          v150 = *(v0 + 5080);
          __swift_project_boxed_opaque_existential_1((v0 + 5048), *(v0 + 5072));
          v151 = *(v150 + 8);
          v176 = (v151 + *v151);
          v152 = v151[1];
          v153 = swift_task_alloc();
          *(v0 + 5344) = v153;
          *v153 = v0;
          v153[1] = sub_258DF25E4;
          v154 = v149 + v148;
          v155 = v175;
          goto LABEL_91;
        }

        sub_258DE2184(v0 + 5048, &qword_27F988AE8, &qword_258F0CCF8);
        v104 = *(v0 + 5304);
        v105 = *(v0 + 5280);

        v4 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          goto LABEL_96;
        }

        v6 = *(v0 + 5288);
        v7 = v105 + 1;
        v5 = &selRef_setSampledErrorAsset_;
      }
    }

    v170 = v55;
    v173 = v53;
    v107 = *(v0 + 5240);
    v108 = *(v0 + 5160);
    v109 = *(v0 + 5128);
    v110 = *(v0 + 4624);
    *(v0 + 4408) = *(v0 + 4608);
    *(v0 + 4424) = v110;
    *(v0 + 4440) = *(v0 + 4640);
    v111 = *(v0 + 4560);
    *(v0 + 4344) = *(v0 + 4544);
    *(v0 + 4360) = v111;
    v112 = *(v0 + 4592);
    *(v0 + 4376) = *(v0 + 4576);
    *(v0 + 4392) = v112;
    v113 = *(v0 + 4496);
    *(v0 + 4280) = *(v0 + 4480);
    *(v0 + 4296) = v113;
    v114 = *(v0 + 4528);
    *(v0 + 4312) = *(v0 + 4512);
    *(v0 + 4328) = v114;
    v115 = *(v0 + 4464);
    *v163 = *v165;
    *(v0 + 4264) = v115;
    v116 = *(v0 + 320);
    *(v0 + 4808) = *(v0 + 304);
    *(v0 + 4824) = v116;
    *(v0 + 4840) = *(v0 + 336);
    v117 = *(v0 + 256);
    *(v0 + 4744) = *(v0 + 240);
    *(v0 + 4760) = v117;
    v118 = *(v0 + 288);
    *(v0 + 4776) = *(v0 + 272);
    *(v0 + 4792) = v118;
    v119 = *(v0 + 192);
    *(v0 + 4680) = *(v0 + 176);
    *(v0 + 4696) = v119;
    v120 = *(v0 + 224);
    *(v0 + 4712) = *(v0 + 208);
    *(v0 + 4728) = v120;
    v121 = *(v0 + 160);
    *v161 = *(v0 + 144);
    *(v0 + 4664) = v121;
    v122 = sub_258F0A370();
    v123 = *(v122 - 8);
    (*(v123 + 16))(v108, v109 + v107, v122);
    v124 = *(v123 + 56);
    v124(v108, 0, 1, v122);
    v125 = objc_allocWithZone(MEMORY[0x277D59380]);
    sub_258DEB7BC(v161, v0 + 4848);
    v5 = &selRef_setSampledErrorAsset_;
    v126 = [v125 init];
    *(v0 + 5312) = v126;
    if (!v126)
    {
      goto LABEL_99;
    }

    v127 = v126;
    v168 = v124;
    v128 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
    if (v128)
    {
      if (v173)
      {

        v129 = sub_258F0A4E0();
        if ([v129 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
        {
          v130 = 0;
        }

        else if ([v129 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          v130 = 1;
        }

        else if ([v129 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          v130 = 2;
        }

        else if ([v129 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          v130 = 3;
        }

        else if ([v129 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          v130 = 4;
        }

        else if ([v129 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          v130 = 5;
        }

        else
        {
          v130 = 0;
        }

        [v128 setProgramCode_];

        v5 = &selRef_setSampledErrorAsset_;
      }

      if (v170)
      {
        v131 = sub_258F0A4E0();
        [v128 setDeviceType_];
      }
    }

    v174 = *(v0 + 5248);
    v132 = *(v0 + 5160);
    v133 = *(v0 + 5152);
    v134 = *(v0 + 5128);
    [v127 setFixedDimensions_];

    [v127 setEventType_];
    memcpy(__dst, (v0 + 16), 0x311uLL);
    v168(v133, 1, 1, v122);
    v135 = sub_258DEF3DC(__dst, v133);
    sub_258DE2184(v133, &qword_27F988AC0, &qword_258F0CCE0);
    memcpy(__dst, (v0 + 16), 0x311uLL);

    sub_258DEE8A8(v163, v135);
    sub_258DE2184(v0 + 144, &qword_27F988978, qword_258F0CD00);
    [v127 setAvailabilityStatus_];

    sub_258DE71D0(v0 + 16);
    sub_258DE2184(v132, &qword_27F988AC0, &qword_258F0CCE0);
    v136 = v127;
    v1 = v175;
    [v175 setIntelligenceFeatureAvailabilityStatusChangesReported_];
    v137 = v134 + v174;
    v17 = 5088;
    sub_258DF405C(v137, v0 + 5088);
    v16 = *(v0 + 5112);
    if (!v16)
    {

      sub_258DE2184(v0 + 5088, &qword_27F988AE8, &qword_258F0CCF8);
      v138 = *(v0 + 5304);
      v139 = *(v0 + 5280);

      v4 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        goto LABEL_86;
      }

      continue;
    }

    break;
  }

LABEL_95:
  v156 = *(v0 + 5240);
  v157 = *(v0 + 5128);
  v150 = *(v0 + 5120);
  __swift_project_boxed_opaque_existential_1((v0 + v17), v16);
  v158 = *(v150 + 8);
  v176 = (v158 + *v158);
  v159 = v158[1];
  v160 = swift_task_alloc();
  *(v0 + 5320) = v160;
  *v160 = v0;
  v160[1] = sub_258DF10B0;
  v154 = v157 + v156;
  v155 = v1;
LABEL_91:

  v176(v155, v154, v16, v150);
}

uint64_t sub_258DF246C()
{
  v1 = v0[655];
  v2 = v0[641];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 636);
  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "AIR: failed to report event", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = v0[666];
  v7 = v0[664];
  v8 = v0[663];

  swift_willThrow();
  v9 = v0[666];
  v10 = v0[649];
  v11 = v0[648];
  v12 = v0[645];
  v13 = v0[644];
  v14 = v0[643];
  v15 = v0[642];
  sub_258DF3FAC(v0[652]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_258DF25E4()
{
  v2 = *(*v1 + 5344);
  v5 = *v1;
  *(*v1 + 5352) = v0;

  if (v0)
  {
    v3 = sub_258DF39A0;
  }

  else
  {
    v3 = sub_258DF26F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258DF26F8()
{
  v173 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5048));
  v160 = *(v0 + 5352);
  v1 = *(v0 + 5304);
  v2 = *(v0 + 5280);

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_87:
    __break(1u);
LABEL_88:
    v143 = *(v0 + 5216);
    v144 = *(v0 + 5192);
    v145 = *(v0 + 5184);
    v146 = *(v0 + 5160);
    v147 = *(v0 + 5152);
    v148 = *(v0 + 5144);
    v149 = *(v0 + 5136);

    v150 = *(v0 + 8);

    v150();
    return;
  }

  v162 = (v0 + 4248);
  v4 = v0 + 4448;
  v161 = (v0 + 4648);
  v5 = &selRef_setSampledErrorAsset_;
  while (2)
  {
    v6 = *(v0 + 5288);
    for (i = v3; ; i = v167)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v8 = *(v0 + 5296) + 1;
            if (v8 == *(v0 + 5272))
            {
              v9 = *(v0 + 5128) + *(v0 + 5240);
              v10 = sub_258F0A350();
              v11 = sub_258F0A810();
              if (!os_log_type_enabled(v10, v11))
              {
                goto LABEL_11;
              }

              v12 = swift_slowAlloc();
              *v12 = 134217984;
              *(v12 + 4) = v3;
LABEL_10:
              _os_log_impl(&dword_258DD8000, v10, v11, "AIR reporter results: parsed=%ld", v12, 0xCu);
              MEMORY[0x259C9EF40](v12, -1, -1);
LABEL_11:
              while (1)
              {
                v14 = *(v0 + 5256);
                v15 = *(v0 + 5232);
                v16 = *(v0 + 5216);

                v17 = v14 + 1;
                sub_258DF3FAC(v16);
                if (v14 + 1 == v15)
                {
                  goto LABEL_88;
                }

                v18 = *(v0 + 5256) + 1;
                *(v0 + 5256) = v18;
                v19 = *(v0 + 5224);
                if (v18 >= *(v19 + 16))
                {
                  __break(1u);
                  goto LABEL_96;
                }

                v20 = *(v0 + 5216);
                sub_258DF3F48(v19 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 5208) + 72) * v18, v20);
                v13 = *v20;
                *(v0 + 5264) = *v20;
                v21 = *(v13 + 16);
                *(v0 + 5272) = v21;
                if (v21)
                {
                  i = 0;
                  v3 = 0;
                  v6 = 0;
                  v8 = 0;
                  goto LABEL_17;
                }

                v22 = *(v0 + 5128) + *(v0 + 5240);
                v10 = sub_258F0A350();
                v11 = sub_258F0A810();
                if (os_log_type_enabled(v10, v11))
                {
                  v12 = swift_slowAlloc();
                  *v12 = 134217984;
                  *(v12 + 4) = 0;
                  goto LABEL_10;
                }
              }
            }

            v13 = *(v0 + 5264);
            if (v8 >= *(v13 + 16))
            {
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              return;
            }

LABEL_17:
            *(v0 + 5296) = v8;
            *(v0 + 5288) = v6;
            *(v0 + 5280) = i;
            memcpy((v0 + 16), (v13 + 792 * v8 + 32), 0x311uLL);
            v23 = objc_allocWithZone(MEMORY[0x277D593E0]);
            sub_258DE40EC(v0 + 16, v0 + 808);
            v24 = [v23 v5[10]];
            *(v0 + 5304) = v24;
            if (v24)
            {
              break;
            }

            sub_258DE71D0(v0 + 16);
          }

          v25 = v24;
          v167 = i;
          v26 = *(v0 + 5216);
          v169 = *(v0 + 16);
          v27 = *(v0 + 24);
          v28 = *(*(v0 + 5200) + 20);
          LOBYTE(__dst[0]) = 1;
          v29 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
          [v25 setEventMetadata_];

          v168 = v25;
          v165 = v6;
          v166 = v3;
          if ((v27 & 1) == 0)
          {
            break;
          }

          if (v6 > 4)
          {

            sub_258DE71D0(v0 + 16);
LABEL_62:
            i = v167;
            if (__OFADD__(v6++, 1))
            {
              goto LABEL_98;
            }
          }

          else
          {
            v92 = sub_258F09870();
            v93 = *(v92 + 48);
            v94 = *(v92 + 52);
            swift_allocObject();
            sub_258F09860();
            memcpy((v0 + 1600), (v0 + 16), 0x311uLL);
            sub_258DF4008();
            v95 = sub_258F09850();
            i = v167;
            if (!v160)
            {
              v106 = v95;
              v107 = v96;
              v108 = *(v0 + 5136);

              sub_258F0A530();
              v109 = sub_258F0A510();
              if (v110)
              {
                v111 = v110;
                v112 = v109;
                v113 = *(v0 + 5128) + *(v0 + 5240);
                v114 = sub_258F0A350();
                v115 = sub_258F0A810();
                if (os_log_type_enabled(v114, v115))
                {
                  v116 = swift_slowAlloc();
                  v117 = swift_slowAlloc();
                  __dst[0] = v117;
                  *v116 = 136315138;
                  v118 = sub_258DE3018(v112, v111, __dst);

                  *(v116 + 4) = v118;
                  _os_log_impl(&dword_258DD8000, v114, v115, "AIR skipping row raw=%s", v116, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v117);
                  v119 = v117;
                  v4 = v0 + 4448;
                  MEMORY[0x259C9EF40](v119, -1, -1);
                  MEMORY[0x259C9EF40](v116, -1, -1);

                  sub_258DE71D0(v0 + 16);
                  sub_258DEB978(v106, v107);

                  goto LABEL_59;
                }

                sub_258DE71D0(v0 + 16);
                sub_258DEB978(v106, v107);

                v160 = 0;
              }

              else
              {

                sub_258DE71D0(v0 + 16);
                sub_258DEB978(v106, v107);
LABEL_59:
                v160 = 0;
              }

              v5 = &selRef_setSampledErrorAsset_;
              v6 = v165;
              v3 = v166;
              goto LABEL_62;
            }

            sub_258DE71D0(v0 + 16);
            v160 = 0;
            v5 = &selRef_setSampledErrorAsset_;
            ++v6;
            if (__OFADD__(v165, 1))
            {
              goto LABEL_98;
            }
          }
        }

        v30 = *(v0 + 5240);
        v31 = *(v0 + 5192);
        v32 = *(v0 + 5184);
        v33 = *(v0 + 5176);
        v34 = *(v0 + 5168);
        v35 = *(v0 + 5128);
        sub_258F099D0();
        (*(v33 + 16))(v32, v31, v34);
        v36 = sub_258F0A350();
        v37 = sub_258F0A810();
        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 5192);
        v40 = *(v0 + 5184);
        v41 = *(v0 + 5176);
        v42 = *(v0 + 5168);
        if (v38)
        {
          v43 = swift_slowAlloc();
          __dst[0] = swift_slowAlloc();
          v44 = __dst[0];
          *v43 = 134218242;
          *(v43 + 4) = v169;
          *(v43 + 12) = 2080;
          sub_258DF40CC();
          v163 = v39;
          v45 = sub_258F0AD60();
          v47 = v46;
          v48 = *(v41 + 8);
          v48(v40, v42);
          v49 = sub_258DE3018(v45, v47, __dst);

          *(v43 + 14) = v49;
          _os_log_impl(&dword_258DD8000, v36, v37, "AIR reporting event at ms=%llu, time=%s", v43, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v44);
          v50 = v44;
          v4 = v0 + 4448;
          MEMORY[0x259C9EF40](v50, -1, -1);
          MEMORY[0x259C9EF40](v43, -1, -1);

          v48(v163, v42);
        }

        else
        {

          v51 = *(v41 + 8);
          v51(v40, v42);
          v51(v39, v42);
        }

        v52 = *(v0 + 80);
        v164 = *(v0 + 88);
        v54 = *(v0 + 64);
        v53 = *(v0 + 72);
        v55 = [v168 eventMetadata];
        [v55 setEventTimestampInMsSince1970_];

        v56 = *(v0 + 320);
        *(v4 + 160) = *(v0 + 304);
        *(v4 + 176) = v56;
        *(v4 + 192) = *(v0 + 336);
        v57 = *(v0 + 256);
        *(v4 + 96) = *(v0 + 240);
        *(v4 + 112) = v57;
        v58 = *(v0 + 288);
        *(v4 + 128) = *(v0 + 272);
        *(v4 + 144) = v58;
        v59 = *(v0 + 192);
        *(v4 + 32) = *(v0 + 176);
        *(v4 + 48) = v59;
        v60 = *(v0 + 224);
        *(v4 + 64) = *(v0 + 208);
        *(v4 + 80) = v60;
        v61 = *(v0 + 160);
        *v4 = *(v0 + 144);
        *(v4 + 16) = v61;
        if (sub_258DEF888(v4) == 1)
        {
          break;
        }

        v170 = v53;
        v68 = *(v0 + 5240);
        v69 = *(v0 + 5160);
        v70 = *(v0 + 5128);
        v71 = *(v4 + 176);
        *(v0 + 4408) = *(v4 + 160);
        *(v0 + 4424) = v71;
        *(v0 + 4440) = *(v4 + 192);
        v72 = *(v4 + 112);
        *(v0 + 4344) = *(v4 + 96);
        *(v0 + 4360) = v72;
        v73 = *(v4 + 144);
        *(v0 + 4376) = *(v4 + 128);
        *(v0 + 4392) = v73;
        v74 = *(v4 + 48);
        *(v0 + 4280) = *(v4 + 32);
        *(v0 + 4296) = v74;
        v75 = *(v4 + 80);
        *(v0 + 4312) = *(v4 + 64);
        *(v0 + 4328) = v75;
        v76 = *(v4 + 16);
        *v162 = *v4;
        *(v0 + 4264) = v76;
        v77 = *(v0 + 320);
        *(v0 + 4808) = *(v0 + 304);
        *(v0 + 4824) = v77;
        *(v0 + 4840) = *(v0 + 336);
        v78 = *(v0 + 256);
        *(v0 + 4744) = *(v0 + 240);
        *(v0 + 4760) = v78;
        v79 = *(v0 + 288);
        *(v0 + 4776) = *(v0 + 272);
        *(v0 + 4792) = v79;
        v80 = *(v0 + 192);
        *(v0 + 4680) = *(v0 + 176);
        *(v0 + 4696) = v80;
        v81 = *(v0 + 224);
        *(v0 + 4712) = *(v0 + 208);
        *(v0 + 4728) = v81;
        v82 = *(v0 + 160);
        *v161 = *(v0 + 144);
        *(v0 + 4664) = v82;
        v83 = sub_258F0A370();
        v84 = *(v83 - 8);
        (*(v84 + 16))(v69, v70 + v68, v83);
        v85 = *(v84 + 56);
        v85(v69, 0, 1, v83);
        v86 = objc_allocWithZone(MEMORY[0x277D59380]);
        sub_258DEB7BC(v161, v0 + 4848);
        v87 = [v86 init];
        *(v0 + 5312) = v87;
        if (!v87)
        {
          goto LABEL_99;
        }

        v88 = v87;
        v89 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
        if (v89)
        {
          if (v164)
          {

            v90 = sub_258F0A4E0();
            if ([v90 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
            {
              v91 = 0;
            }

            else if ([v90 isEqualToString:@"PROGRAMCODE_IOS"])
            {
              v91 = 1;
            }

            else if ([v90 isEqualToString:@"PROGRAMCODE_MACOS"])
            {
              v91 = 2;
            }

            else if ([v90 isEqualToString:@"PROGRAMCODE_TVOS"])
            {
              v91 = 3;
            }

            else if ([v90 isEqualToString:@"PROGRAMCODE_WATCHOS"])
            {
              v91 = 4;
            }

            else if ([v90 isEqualToString:@"PROGRAMCODE_VISIONOS"])
            {
              v91 = 5;
            }

            else
            {
              v91 = 0;
            }

            [v89 setProgramCode_];
          }

          if (v170)
          {
            v97 = sub_258F0A4E0();
            [v89 setDeviceType_];
          }
        }

        v98 = *(v0 + 5248);
        v99 = *(v0 + 5160);
        v100 = *(v0 + 5152);
        v101 = *(v0 + 5128);
        [v88 setFixedDimensions_];

        [v88 setEventType_];
        memcpy(__dst, (v0 + 16), 0x311uLL);
        v85(v100, 1, 1, v83);
        v102 = sub_258DEF3DC(__dst, v100);
        sub_258DE2184(v100, &qword_27F988AC0, &qword_258F0CCE0);
        memcpy(__dst, (v0 + 16), 0x311uLL);

        sub_258DEE8A8(v162, v102);
        sub_258DE2184(v0 + 144, &qword_27F988978, qword_258F0CD00);
        [v88 setAvailabilityStatus_];

        sub_258DE71D0(v0 + 16);
        sub_258DE2184(v99, &qword_27F988AC0, &qword_258F0CCE0);
        v103 = v88;
        v5 = v168;
        [v168 setIntelligenceFeatureAvailabilityStatusChangesReported_];
        sub_258DF405C(v101 + v98, v0 + 5088);
        v16 = *(v0 + 5112);
        if (v16)
        {
          v151 = *(v0 + 5240);
          v152 = *(v0 + 5128);
          v153 = *(v0 + 5120);
          __swift_project_boxed_opaque_existential_1((v0 + 5088), *(v0 + 5112));
          v154 = *(v153 + 8);
          v171 = (v154 + *v154);
          v155 = v154[1];
          v156 = swift_task_alloc();
          *(v0 + 5320) = v156;
          *v156 = v0;
          v157 = sub_258DF10B0;
          goto LABEL_92;
        }

        sub_258DE2184(v0 + 5088, &qword_27F988AE8, &qword_258F0CCF8);
        v104 = *(v0 + 5304);
        v105 = *(v0 + 5280);

        v3 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          goto LABEL_97;
        }

        v6 = *(v0 + 5288);
        i = v105 + 1;
        v4 = v0 + 4448;
        v5 = &selRef_setSampledErrorAsset_;
      }

      memcpy((v0 + 2856), (v0 + 344), 0x1C9uLL);
      v62 = sub_258DEF8AC(v0 + 2856);
      v63 = *(v0 + 5240);
      if (v62 != 1)
      {
        break;
      }

      v64 = *(v0 + 5128);
      sub_258DE71D0(v0 + 16);
      v65 = sub_258F0A350();
      v66 = sub_258F0A810();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_258DD8000, v65, v66, "AIR: row had no payload; skipping", v67, 2u);
        MEMORY[0x259C9EF40](v67, -1, -1);
      }

      v5 = &selRef_setSampledErrorAsset_;
      v6 = v165;
      v3 = v166;
    }

    v121 = v53;
    v122 = *(v0 + 5144);
    v123 = *(v0 + 5128);
    memcpy((v0 + 2392), (v0 + 2856), 0x1C9uLL);
    memcpy((v0 + 3320), (v0 + 344), 0x1C9uLL);
    v124 = sub_258F0A370();
    v125 = *(v124 - 8);
    (*(v125 + 16))(v122, v123 + v63, v124);
    v126 = *(v125 + 56);
    v126(v122, 0, 1, v124);
    v127 = objc_allocWithZone(MEMORY[0x277D59380]);
    sub_258DEB824(v0 + 3320, v0 + 3784);
    v128 = [v127 init];
    *(v0 + 5336) = v128;
    if (!v128)
    {
      goto LABEL_100;
    }

    v129 = v128;
    v130 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
    if (v130)
    {
      if (v164)
      {

        v131 = sub_258F0A4E0();
        if ([v131 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
        {
          v132 = 0;
        }

        else if ([v131 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          v132 = 1;
        }

        else if ([v131 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          v132 = 2;
        }

        else if ([v131 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          v132 = 3;
        }

        else if ([v131 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          v132 = 4;
        }

        else if ([v131 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          v132 = 5;
        }

        else
        {
          v132 = 0;
        }

        [v130 setProgramCode_];
      }

      if (v121)
      {
        v133 = sub_258F0A4E0();
        [v130 setDeviceType_];
      }
    }

    v134 = *(v0 + 5248);
    v135 = *(v0 + 5152);
    v136 = *(v0 + 5144);
    v137 = *(v0 + 5128);
    [v129 setFixedDimensions_];

    [v129 setEventType_];
    memcpy(__dst, (v0 + 16), 0x311uLL);
    v126(v135, 1, 1, v124);
    v138 = sub_258DEF3DC(__dst, v135);
    sub_258DE2184(v135, &qword_27F988AC0, &qword_258F0CCE0);
    memcpy(__dst, (v0 + 16), 0x311uLL);

    sub_258DEEC18(v0 + 2392, v138);
    sub_258DE2184(v0 + 344, &qword_27F988988, &qword_258F0C1C0);
    [v129 setAvailabilityStatus_];

    sub_258DE71D0(v0 + 16);
    sub_258DE2184(v136, &qword_27F988AC0, &qword_258F0CCE0);
    v139 = v129;
    v5 = v168;
    [v168 setIntelligenceFeatureAvailabilityStatusChangesReported_];
    v140 = v137 + v134;
    v17 = 5048;
    sub_258DF405C(v140, v0 + 5048);
    v16 = *(v0 + 5072);
    if (!v16)
    {

      sub_258DE2184(v0 + 5048, &qword_27F988AE8, &qword_258F0CCF8);
      v141 = *(v0 + 5304);
      v142 = *(v0 + 5280);

      v3 = v142 + 1;
      v4 = v0 + 4448;
      v5 = &selRef_setSampledErrorAsset_;
      if (__OFADD__(v142, 1))
      {
        goto LABEL_87;
      }

      continue;
    }

    break;
  }

LABEL_96:
  v151 = *(v0 + 5240);
  v152 = *(v0 + 5128);
  v153 = *(v0 + 5080);
  __swift_project_boxed_opaque_existential_1((v0 + v17), v16);
  v158 = *(v153 + 8);
  v171 = (v158 + *v158);
  v159 = v158[1];
  v156 = swift_task_alloc();
  *(v0 + 5344) = v156;
  *v156 = v0;
  v157 = sub_258DF25E4;
LABEL_92:
  v156[1] = v157;

  v171(v5, v152 + v151, v16, v153);
}

uint64_t sub_258DF39A0()
{
  v1 = v0[655];
  v2 = v0[641];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 631);
  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "AIR: failed to report event", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = v0[669];
  v7 = v0[667];
  v8 = v0[663];

  swift_willThrow();
  v9 = v0[669];
  v10 = v0[649];
  v11 = v0[648];
  v12 = v0[645];
  v13 = v0[644];
  v14 = v0[643];
  v15 = v0[642];
  sub_258DF3FAC(v0[652]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_258DF3B18()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService, &qword_27F988AE8, &qword_258F0CCF8);
}

uint64_t AIRAssetStatusSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService, &qword_27F988AE8, &qword_258F0CCF8);
  return v0;
}

uint64_t AIRAssetStatusSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService, &qword_27F988AE8, &qword_258F0CCF8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_258DF3CF4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_258DF3D14@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_258DF3D44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_258DF3D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;
  v11 = sub_258F0A370();
  (*(*(v11 - 8) + 32))(a3 + v10, a1, v11);
  sub_258DEE384(&v13, a3 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService);
  return a3;
}

uint64_t sub_258DF3E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AIRAssetStatusSELFReporter();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  return sub_258DF3D74(a1, v12, v16, a4, a5);
}

uint64_t sub_258DF3F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedAIRAssetStatusData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258DF3FAC(uint64_t a1)
{
  v2 = type metadata accessor for CombinedAIRAssetStatusData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258DF4008()
{
  result = qword_27F988AE0;
  if (!qword_27F988AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988AE0);
  }

  return result;
}

uint64_t sub_258DF405C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AE8, &qword_258F0CCF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_258DF40CC()
{
  result = qword_27F988750;
  if (!qword_27F988750)
  {
    sub_258F09A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988750);
  }

  return result;
}

uint64_t type metadata accessor for AIRAssetStatusSELFReporter()
{
  result = qword_27F988AF0;
  if (!qword_27F988AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258DF4178()
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

MetricsFramework::AssetMetricsWorkerError_optional __swiftcall AssetMetricsWorkerError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AssetMetricsWorkerError.rawValue.getter()
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
    case 0x12:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258DF451C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AssetMetricsWorkerError.rawValue.getter();
  v4 = v3;
  if (v2 == AssetMetricsWorkerError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_258F0AD80();
  }

  return v7 & 1;
}

uint64_t sub_258DF45B8()
{
  v1 = *v0;
  sub_258F0AE40();
  AssetMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258DF4620()
{
  v2 = *v0;
  AssetMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258DF4684()
{
  v1 = *v0;
  sub_258F0AE40();
  AssetMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258DF46F4@<X0>(unint64_t *a1@<X8>)
{
  result = AssetMetricsWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MetricsFramework::AssetMetricsWorker::Subtask_optional __swiftcall AssetMetricsWorker.Subtask.init(rawValue:)(Swift::String rawValue)
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

unint64_t AssetMetricsWorker.Subtask.rawValue.getter()
{
  v1 = 0x7465737341524941;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000019;
  }

  v2 = 0xD000000000000016;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_258DF4834()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258DF4910()
{
  *v0;
  *v0;
  *v0;
  sub_258F0A5B0();
}

uint64_t sub_258DF49D8()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

void sub_258DF4ABC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00737574617453;
  v3 = 0x7465737341524941;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000019;
    v2 = 0x8000000258F18980;
  }

  v4 = 0x8000000258F18940;
  v5 = 0xD000000000000016;
  if (*v1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000258F18960;
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

uint64_t AssetMetricsWorker.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_258F09AC0();
  v4 = *(type metadata accessor for AssetMetricsWorker() + 20);
  v5 = sub_258F0A370();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t type metadata accessor for AssetMetricsWorker()
{
  result = qword_280CC5588;
  if (!qword_280CC5588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetMetricsWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](sub_258DF4D04, 0, 0);
}

uint64_t sub_258DF4D04()
{
  v117 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(type metadata accessor for AssetMetricsWorker() + 20);
  *(v0 + 440) = v3;
  v4 = v1;
  v5 = sub_258F0A350();
  v6 = sub_258F0A800();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v116[0] = v9;
    *v8 = 136315394;
    v10 = sub_258F09E80();
    v12 = sub_258DE3018(v10, v11, v116);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_258F09E90();
    v15 = sub_258DE3018(v13, v14, v116);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_258DD8000, v5, v6, "TaskId: %s, TaskName: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  *v18 = 0;
  v19 = *MEMORY[0x277D81760];
  *(v0 + 444) = v19;
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
  sub_258DFA13C(v26, v28, v29, v30);

  v40 = MEMORY[0x259C9E880](v31);
  v41 = sub_258DFBE24(&unk_286A285C8);
  *(v0 + 160) = v41;
  sub_258DE2184(&unk_286A285E8, &qword_27F988B08, &unk_258F0CD90);
  objc_autoreleasePoolPop(v40);
  if (v25)
  {
    v114 = v3;
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    v44 = v25;
    v45 = sub_258F09E80();
    v47 = v46;
    v48 = sub_258F09E90();
    sub_258DFA13C(v45, v47, v48, v49);
    v86 = *(v0 + 72);
    v85 = *(v0 + 80);

    v88 = MEMORY[0x259C9E880](v87);
    sub_258F09E80();
    v116[0] = sub_258F09E90();
    v116[1] = v89;

    MEMORY[0x259C9DEB0](46, 0xE100000000000000);

    MEMORY[0x259C9DEB0](0xD000000000000016, 0x8000000258F18940);

    v90 = sub_258F09EA0();
    *(v0 + 168) = v90;
    v91 = objc_allocWithZone(v90);
    v92 = sub_258F09E70();
    *(v0 + 176) = v92;
    objc_autoreleasePoolPop(v88);
    v93 = sub_258F09E00();
    *(v0 + 184) = v93;
    v94 = *(v93 - 8);
    *(v0 + 192) = v94;
    *(v0 + 200) = *(v94 + 64);
    v95 = swift_task_alloc();
    *(v0 + 208) = v95;
    v96 = MEMORY[0x259C9E880]();
    v97 = v92;
    sub_258DFA2E0(v41);
    sub_258F09DF0();
    objc_autoreleasePoolPop(v96);
    *(v0 + 216) = *(v21 + 64);
    v98 = swift_task_alloc();
    *(v0 + 224) = v98;
    v113 = (*(*v86 + 88) + **(*v86 + 88));
    v99 = *(*(*v86 + 88) + 4);
    v100 = swift_task_alloc();
    *(v0 + 232) = v100;
    *v100 = v0;
    v100[1] = sub_258DF59D8;
    v101 = *(v0 + 72);

    return v113(v98, v44, v95, v2 + v114, 0xD00000000000002CLL, 0x8000000258F199B0);
  }

  v56 = sub_258F0A350();
  v57 = sub_258F0A820();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_258DD8000, v56, v57, "Can't get user defaults initialized", v58, 2u);
    MEMORY[0x259C9EF40](v58, -1, -1);
  }

  sub_258DE1858();
  v38 = swift_allocError();
  *v59 = 5;
  swift_willThrow();
  *(v0 + 16) = v38;
  v32 = sub_258F09E20();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64) + 15;
  v35 = swift_task_alloc();
  v36 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v37 = (*(v33 + 88))(v35, v32);
    if (MEMORY[0x277D81740] && v37 == *MEMORY[0x277D81740])
    {

      v38 = *(v0 + 16);
      v39 = 3;
LABEL_32:
      v115 = v39;
      goto LABEL_33;
    }

    if (MEMORY[0x277D81748] && v37 == *MEMORY[0x277D81748])
    {

      v38 = *(v0 + 16);
      v39 = 4;
      goto LABEL_32;
    }

    (*(v33 + 8))(v35, v32);
  }

  *(v0 + 24) = v38;
  v50 = sub_258F0A1D0();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64) + 15;
  v53 = swift_task_alloc();
  v54 = v38;
  if (swift_dynamicCast())
  {
    v55 = (*(v51 + 88))(v53, v50);
    if (MEMORY[0x277D04530] && v55 == *MEMORY[0x277D04530])
    {

      v38 = *(v0 + 24);
      v39 = 6;
      goto LABEL_32;
    }

    if (MEMORY[0x277D04538] && v55 == *MEMORY[0x277D04538])
    {

      v38 = *(v0 + 24);
      v39 = 7;
      goto LABEL_32;
    }

    if (MEMORY[0x277D04540] && v55 == *MEMORY[0x277D04540])
    {

      v38 = *(v0 + 24);
      v39 = 8;
      goto LABEL_32;
    }

    (*(v51 + 8))(v53, v50);
  }

  *(v0 + 32) = v38;
  v60 = v38;
  if (!swift_dynamicCast())
  {

    *(v0 + 40) = v38;
    v61 = sub_258F09E60();
    v62 = *(v61 - 8);
    v63 = *(v62 + 64) + 15;
    v64 = swift_task_alloc();
    v65 = v38;
    if (swift_dynamicCast())
    {

      (*(v62 + 8))(v64, v61);

      v38 = *(v0 + 40);
      v39 = 2;
    }

    else
    {

      *(v0 + 48) = v38;
      v80 = sub_258F09E10();
      v81 = *(v80 - 8);
      v82 = *(v81 + 64) + 15;
      v83 = swift_task_alloc();
      v84 = v38;
      if (swift_dynamicCast())
      {

        (*(v81 + 8))(v83, v80);

        v115 = 0;
        v38 = *(v0 + 48);
        goto LABEL_33;
      }

      v102 = *(v0 + 112);
      v103 = *(v0 + 96);

      *(v0 + 56) = v38;
      v104 = v38;
      if (swift_dynamicCast())
      {
        v106 = *(v0 + 144);
        v105 = *(v0 + 152);
        v107 = *(v0 + 136);
        v109 = *(v0 + 112);
        v108 = *(v0 + 120);
        v110 = *(v0 + 96);
        v111 = *(v0 + 104);
        v112 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v112, v108);

        v107(v112, *MEMORY[0x277D81770], v108);
        (*(v111 + 8))(v109, v110);

        goto LABEL_34;
      }

      v39 = 1;
    }

    goto LABEL_32;
  }

  v115 = *(v0 + 448);
  v38 = *(v0 + 32);
LABEL_33:

  v67 = *(v0 + 144);
  v66 = *(v0 + 152);
  v68 = *(v0 + 128);
  v69 = *(v0 + 136);
  v70 = *(v0 + 120);
  v71 = *(v0 + 444);
  v72 = *(v0 + 64);
  v73 = *(v68 + 64) + 15;
  v74 = swift_task_alloc();
  sub_258DE1858();
  v75 = swift_allocError();
  *v76 = v115;

  (*(v68 + 8))(v72, v70);
  *v74 = v75;
  v69(v74, v71, v70);
  (*(v68 + 32))(v72, v74, v70);

LABEL_34:
  v77 = *(v0 + 112);

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_258DF59D8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);

    v5 = sub_258DF836C;
  }

  else
  {
    v5 = sub_258DF5AF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258DF5AF4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v4 + 8);
  *(v0 + 248) = v8;
  *(v0 + 256) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v7, v3);
  v9 = *(v4 + 32);
  *(v0 + 264) = v9;
  *(v0 + 272) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v7, v2, v3);

  v10 = sub_258F09E80();
  v12 = v11;
  v13 = sub_258F09E90();
  sub_258DFA13C(v10, v12, v13, v14);
  if (v1)
  {
    v15 = *(v0 + 176);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));

    *(v0 + 16) = v1;
    v18 = sub_258F09E20();
    v19 = *(v18 - 8);
    v20 = *(v19 + 64) + 15;
    v21 = swift_task_alloc();
    v22 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v23 = (*(v19 + 88))(v21, v18);
      if (MEMORY[0x277D81740] && v23 == *MEMORY[0x277D81740])
      {

        v24 = 3;
        goto LABEL_28;
      }

      if (MEMORY[0x277D81748] && v23 == *MEMORY[0x277D81748])
      {

        v24 = 4;
        goto LABEL_28;
      }

      (*(v19 + 8))(v21, v18);
    }

    *(v0 + 24) = v1;
    v45 = sub_258F0A1D0();
    v46 = *(v45 - 8);
    v47 = *(v46 + 64) + 15;
    v48 = swift_task_alloc();
    v49 = v1;
    if (swift_dynamicCast())
    {
      v50 = (*(v46 + 88))(v48, v45);
      if (MEMORY[0x277D04530] && v50 == *MEMORY[0x277D04530])
      {

        v24 = 6;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04538] && v50 == *MEMORY[0x277D04538])
      {

        v24 = 7;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04540] && v50 == *MEMORY[0x277D04540])
      {

        v24 = 8;
        goto LABEL_28;
      }

      (*(v46 + 8))(v48, v45);
    }

    *(v0 + 32) = v1;
    v51 = v1;
    if (swift_dynamicCast())
    {

      v89 = *(v0 + 448);
LABEL_29:
      v58 = *(v0 + 144);
      v57 = *(v0 + 152);
      v59 = *(v0 + 128);
      v60 = *(v0 + 136);
      v61 = *(v0 + 120);
      v62 = *(v0 + 444);
      v63 = *(v0 + 64);
      v64 = *(v59 + 64) + 15;
      v65 = swift_task_alloc();
      sub_258DE1858();
      v66 = swift_allocError();
      *v67 = v89;

      (*(v59 + 8))(v63, v61);
      *v65 = v66;
      v60(v65, v62, v61);
      (*(v59 + 32))(v63, v65, v61);

LABEL_30:
      v68 = *(v0 + 112);

      v69 = *(v0 + 8);

      return v69();
    }

    *(v0 + 40) = v1;
    v52 = sub_258F09E60();
    v53 = *(v52 - 8);
    v54 = *(v53 + 64) + 15;
    v55 = swift_task_alloc();
    v56 = v1;
    if (swift_dynamicCast())
    {

      (*(v53 + 8))(v55, v52);

      v24 = 2;
    }

    else
    {

      *(v0 + 48) = v1;
      v70 = sub_258F09E10();
      v71 = *(v70 - 8);
      v72 = *(v71 + 64) + 15;
      v73 = swift_task_alloc();
      v74 = v1;
      if (swift_dynamicCast())
      {

        (*(v71 + 8))(v73, v70);

        v89 = 0;
        goto LABEL_29;
      }

      v75 = *(v0 + 112);
      v76 = *(v0 + 96);

      *(v0 + 56) = v1;
      v77 = v1;
      if (swift_dynamicCast())
      {
        v79 = *(v0 + 144);
        v78 = *(v0 + 152);
        v80 = *(v0 + 136);
        v81 = *(v0 + 112);
        v82 = *(v0 + 120);
        v83 = *(v0 + 96);
        v84 = *(v0 + 104);
        v85 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v85, v82);

        v80(v85, *MEMORY[0x277D81770], v82);
        (*(v84 + 8))(v81, v83);

        goto LABEL_30;
      }

      v24 = 1;
    }

LABEL_28:
    v89 = v24;
    goto LABEL_29;
  }

  v25 = *(v0 + 216);
  v26 = *(v0 + 200);
  v27 = *(v0 + 160);
  v28 = *(v0 + 168);
  v29 = *(v0 + 80);
  v87 = *(v0 + 88);
  v88 = *(v0 + 440);
  v30 = *(v0 + 72);

  v32 = MEMORY[0x259C9E880](v31);
  sub_258F09E80();
  sub_258F09E90();

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000012, 0x8000000258F18960);

  v33 = objc_allocWithZone(v28);
  v34 = sub_258F09E70();
  *(v0 + 280) = v34;
  objc_autoreleasePoolPop(v32);
  v35 = swift_task_alloc();
  *(v0 + 288) = v35;
  v36 = MEMORY[0x259C9E880]();
  v37 = v34;
  sub_258DFA2E0(v27);
  sub_258F09DF0();
  objc_autoreleasePoolPop(v36);
  v38 = swift_task_alloc();
  *(v0 + 296) = v38;
  v39 = *(*v30 + 104);
  v86 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  *(v0 + 304) = v41;
  *v41 = v0;
  v41[1] = sub_258DF64F8;
  v42 = *(v0 + 152);
  v43 = *(v0 + 72);

  return v86(v38, v42, v35, v87 + v88, 0xD00000000000002CLL, 0x8000000258F199B0);
}

uint64_t sub_258DF64F8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);

    v5 = sub_258DF8A38;
  }

  else
  {
    v5 = sub_258DF6614;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258DF6614()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  v6 = *(v0 + 120);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  (*(v0 + 248))(v9, v6);
  v4(v9, v2, v6);

  v10 = sub_258F09E80();
  v12 = v11;
  v13 = sub_258F09E90();
  sub_258DFA13C(v10, v12, v13, v14);
  v94 = v1;
  if (v1)
  {
    v16 = *(v0 + 280);
    v15 = *(v0 + 288);
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 192);
    v92 = *(v0 + 176);
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);

    v22 = *(v19 + 8);
    v22(v15, v18);
    v22(v17, v18);

    *(v0 + 16) = v94;
    v23 = sub_258F09E20();
    v24 = *(v23 - 8);
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    v27 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v28 = (*(v24 + 88))(v26, v23);
      if (MEMORY[0x277D81740] && v28 == *MEMORY[0x277D81740])
      {

        v29 = 3;
        goto LABEL_28;
      }

      if (MEMORY[0x277D81748] && v28 == *MEMORY[0x277D81748])
      {

        v29 = 4;
        goto LABEL_28;
      }

      (*(v24 + 8))(v26, v23);
    }

    *(v0 + 24) = v94;
    v50 = sub_258F0A1D0();
    v51 = *(v50 - 8);
    v52 = *(v51 + 64) + 15;
    v53 = swift_task_alloc();
    v54 = v94;
    if (swift_dynamicCast())
    {
      v55 = (*(v51 + 88))(v53, v50);
      if (MEMORY[0x277D04530] && v55 == *MEMORY[0x277D04530])
      {

        v29 = 6;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04538] && v55 == *MEMORY[0x277D04538])
      {

        v29 = 7;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04540] && v55 == *MEMORY[0x277D04540])
      {

        v29 = 8;
        goto LABEL_28;
      }

      (*(v51 + 8))(v53, v50);
    }

    *(v0 + 32) = v94;
    v56 = v94;
    if (swift_dynamicCast())
    {

      v96 = *(v0 + 448);
LABEL_29:
      v63 = *(v0 + 144);
      v62 = *(v0 + 152);
      v64 = *(v0 + 128);
      v65 = *(v0 + 136);
      v66 = *(v0 + 120);
      v67 = *(v0 + 444);
      v68 = *(v0 + 64);
      v69 = *(v64 + 64) + 15;
      v70 = swift_task_alloc();
      sub_258DE1858();
      v71 = swift_allocError();
      *v72 = v96;

      (*(v64 + 8))(v68, v66);
      *v70 = v71;
      v65(v70, v67, v66);
      (*(v64 + 32))(v68, v70, v66);

LABEL_30:
      v73 = *(v0 + 112);

      v74 = *(v0 + 8);

      return v74();
    }

    *(v0 + 40) = v94;
    v57 = sub_258F09E60();
    v58 = *(v57 - 8);
    v59 = *(v58 + 64) + 15;
    v60 = swift_task_alloc();
    v61 = v94;
    if (swift_dynamicCast())
    {

      (*(v58 + 8))(v60, v57);

      v29 = 2;
    }

    else
    {

      *(v0 + 48) = v94;
      v75 = sub_258F09E10();
      v76 = *(v75 - 8);
      v77 = *(v76 + 64) + 15;
      v78 = swift_task_alloc();
      v79 = v94;
      if (swift_dynamicCast())
      {

        (*(v76 + 8))(v78, v75);

        v96 = 0;
        goto LABEL_29;
      }

      v80 = *(v0 + 112);
      v81 = *(v0 + 96);

      *(v0 + 56) = v94;
      v82 = v94;
      if (swift_dynamicCast())
      {
        v84 = *(v0 + 144);
        v83 = *(v0 + 152);
        v85 = *(v0 + 136);
        v86 = *(v0 + 112);
        v87 = *(v0 + 120);
        v88 = *(v0 + 96);
        v89 = *(v0 + 104);
        v90 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v90, v87);

        v85(v90, *MEMORY[0x277D81770], v87);
        (*(v89 + 8))(v86, v88);

        goto LABEL_30;
      }

      v29 = 1;
    }

LABEL_28:
    v96 = v29;
    goto LABEL_29;
  }

  v30 = *(v0 + 216);
  v31 = *(v0 + 200);
  v32 = *(v0 + 160);
  v33 = *(v0 + 168);
  v34 = *(v0 + 80);
  v93 = *(v0 + 88);
  v95 = *(v0 + 440);
  v35 = *(v0 + 72);

  v37 = MEMORY[0x259C9E880](v36);
  sub_258F09E80();
  sub_258F09E90();

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000019, 0x8000000258F18980);

  v38 = objc_allocWithZone(v33);
  v39 = sub_258F09E70();
  *(v0 + 320) = v39;
  objc_autoreleasePoolPop(v37);
  v40 = swift_task_alloc();
  *(v0 + 328) = v40;
  v41 = MEMORY[0x259C9E880]();
  v42 = v39;
  sub_258DFA2E0(v32);
  sub_258F09DF0();
  objc_autoreleasePoolPop(v41);
  v43 = swift_task_alloc();
  *(v0 + 336) = v43;
  v44 = *(*v35 + 112);
  v91 = (v44 + *v44);
  v45 = v44[1];
  v46 = swift_task_alloc();
  *(v0 + 344) = v46;
  *v46 = v0;
  v46[1] = sub_258DF7030;
  v47 = *(v0 + 152);
  v48 = *(v0 + 72);

  return v91(v43, v47, v40, v95 + v93, 0xD00000000000002CLL, 0x8000000258F199B0);
}

uint64_t sub_258DF7030()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);

    v5 = sub_258DF9128;
  }

  else
  {
    v5 = sub_258DF714C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258DF714C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  v6 = *(v0 + 120);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  (*(v0 + 248))(v9, v6);
  v4(v9, v2, v6);

  v10 = sub_258F09E80();
  v12 = v11;
  v13 = sub_258F09E90();
  sub_258DFA13C(v10, v12, v13, v14);
  v96 = v1;
  if (v1)
  {
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    v91 = *(v0 + 280);
    v92 = *(v0 + 288);
    v94 = *(v0 + 208);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    v19 = *(v0 + 176);
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);

    v22 = *(v17 + 8);
    v22(v15, v18);
    v22(v92, v18);
    v22(v94, v18);

    *(v0 + 16) = v96;
    v23 = sub_258F09E20();
    v24 = *(v23 - 8);
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    v27 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v28 = (*(v24 + 88))(v26, v23);
      if (MEMORY[0x277D81740] && v28 == *MEMORY[0x277D81740])
      {

        v29 = 3;
        goto LABEL_28;
      }

      if (MEMORY[0x277D81748] && v28 == *MEMORY[0x277D81748])
      {

        v29 = 4;
        goto LABEL_28;
      }

      (*(v24 + 8))(v26, v23);
    }

    *(v0 + 24) = v96;
    v50 = sub_258F0A1D0();
    v51 = *(v50 - 8);
    v52 = *(v51 + 64) + 15;
    v53 = swift_task_alloc();
    v54 = v96;
    if (swift_dynamicCast())
    {
      v55 = (*(v51 + 88))(v53, v50);
      if (MEMORY[0x277D04530] && v55 == *MEMORY[0x277D04530])
      {

        v29 = 6;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04538] && v55 == *MEMORY[0x277D04538])
      {

        v29 = 7;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04540] && v55 == *MEMORY[0x277D04540])
      {

        v29 = 8;
        goto LABEL_28;
      }

      (*(v51 + 8))(v53, v50);
    }

    *(v0 + 32) = v96;
    v56 = v96;
    if (swift_dynamicCast())
    {

      v98 = *(v0 + 448);
LABEL_29:
      v63 = *(v0 + 144);
      v62 = *(v0 + 152);
      v64 = *(v0 + 128);
      v65 = *(v0 + 136);
      v66 = *(v0 + 120);
      v67 = *(v0 + 444);
      v68 = *(v0 + 64);
      v69 = *(v64 + 64) + 15;
      v70 = swift_task_alloc();
      sub_258DE1858();
      v71 = swift_allocError();
      *v72 = v98;

      (*(v64 + 8))(v68, v66);
      *v70 = v71;
      v65(v70, v67, v66);
      (*(v64 + 32))(v68, v70, v66);

LABEL_30:
      v73 = *(v0 + 112);

      v74 = *(v0 + 8);

      return v74();
    }

    *(v0 + 40) = v96;
    v57 = sub_258F09E60();
    v58 = *(v57 - 8);
    v59 = *(v58 + 64) + 15;
    v60 = swift_task_alloc();
    v61 = v96;
    if (swift_dynamicCast())
    {

      (*(v58 + 8))(v60, v57);

      v29 = 2;
    }

    else
    {

      *(v0 + 48) = v96;
      v75 = sub_258F09E10();
      v76 = *(v75 - 8);
      v77 = *(v76 + 64) + 15;
      v78 = swift_task_alloc();
      v79 = v96;
      if (swift_dynamicCast())
      {

        (*(v76 + 8))(v78, v75);

        v98 = 0;
        goto LABEL_29;
      }

      v80 = *(v0 + 112);
      v81 = *(v0 + 96);

      *(v0 + 56) = v96;
      v82 = v96;
      if (swift_dynamicCast())
      {
        v84 = *(v0 + 144);
        v83 = *(v0 + 152);
        v85 = *(v0 + 136);
        v86 = *(v0 + 112);
        v87 = *(v0 + 120);
        v88 = *(v0 + 96);
        v89 = *(v0 + 104);
        v90 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v90, v87);

        v85(v90, *MEMORY[0x277D81770], v87);
        (*(v89 + 8))(v86, v88);

        goto LABEL_30;
      }

      v29 = 1;
    }

LABEL_28:
    v98 = v29;
    goto LABEL_29;
  }

  v30 = *(v0 + 216);
  v31 = *(v0 + 200);
  v32 = *(v0 + 160);
  v33 = *(v0 + 168);
  v34 = *(v0 + 80);
  v95 = *(v0 + 88);
  v97 = *(v0 + 440);
  v35 = *(v0 + 72);

  v37 = MEMORY[0x259C9E880](v36);
  sub_258F09E80();
  sub_258F09E90();

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x7465737341524941, 0xEE00737574617453);

  v38 = objc_allocWithZone(v33);
  v39 = sub_258F09E70();
  *(v0 + 360) = v39;
  objc_autoreleasePoolPop(v37);
  v40 = swift_task_alloc();
  *(v0 + 368) = v40;
  v41 = MEMORY[0x259C9E880]();
  v42 = v39;
  sub_258DFA2E0(v32);

  sub_258F09DF0();
  objc_autoreleasePoolPop(v41);
  v43 = swift_task_alloc();
  *(v0 + 376) = v43;
  v44 = *(*v35 + 96);
  v93 = (v44 + *v44);
  v45 = v44[1];
  v46 = swift_task_alloc();
  *(v0 + 384) = v46;
  *v46 = v0;
  v46[1] = sub_258DF7BA8;
  v47 = *(v0 + 152);
  v48 = *(v0 + 72);

  return v93(v43, v47, v40, v97 + v95, 0xD00000000000002CLL, 0x8000000258F199B0);
}

uint64_t sub_258DF7BA8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v6 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_258DF983C;
  }

  else
  {

    v4 = sub_258DF7CC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_258DF7CC4()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);
  (*(v0 + 248))(v6, v5);
  v3(v6, v1, v5);

  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_258DF7DB4;

  return sub_258E6422C(4, 1);
}

uint64_t sub_258DF7DB4(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = a1;

  return MEMORY[0x2822009F8](sub_258DF7EB4, 0, 0);
}

uint64_t sub_258DF7EB4()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 440);
  v3 = *(v0 + 88);
  if (v1)
  {
    *(v0 + 416) = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0xD00000000000002CLL, 0x8000000258F199B0);
    v4 = swift_task_alloc();
    *(v0 + 424) = v4;
    *v4 = v0;
    v4[1] = sub_258DF8104;

    return sub_258EB5738(v1, v3 + v2);
  }

  else
  {
    v6 = sub_258F0A350();
    v7 = sub_258F0A820();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 360);
    v10 = *(v0 + 320);
    v11 = *(v0 + 280);
    v12 = *(v0 + 176);
    v13 = *(v0 + 152);
    if (v8)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_258DD8000, v6, v7, "#AssetMetricsWorker: Unable to create execution metadata event", v14, 2u);
      MEMORY[0x259C9EF40](v14, -1, -1);
    }

    v15 = *(v0 + 328);
    v16 = *(v0 + 288);
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(*(v0 + 192) + 8);
    v19(*(v0 + 368), v18);
    v19(v15, v18);
    v19(v16, v18);
    v19(v17, v18);

    v20 = *(v0 + 112);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_258DF8104()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 416);

  if (v0)
  {
    v6 = sub_258DF9F7C;
  }

  else
  {
    v6 = sub_258DF8238;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258DF8238()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 360);
  v3 = *(v0 + 320);
  v4 = *(v0 + 280);
  v5 = *(v0 + 176);

  v6 = *(v0 + 328);
  v7 = *(v0 + 288);
  v8 = *(v0 + 208);
  v9 = *(v0 + 184);
  v10 = *(*(v0 + 192) + 8);
  v10(*(v0 + 368), v9);
  v10(v6, v9);
  v10(v7, v9);
  v10(v8, v9);

  v11 = *(v0 + 112);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_258DF836C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);

  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 240);
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

    v57 = *(v0 + 448);
    v6 = *(v0 + 32);
LABEL_25:

    v28 = *(v0 + 144);
    v27 = *(v0 + 152);
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    v31 = *(v0 + 120);
    v32 = *(v0 + 444);
    v33 = *(v0 + 64);
    v34 = *(v29 + 64) + 15;
    v35 = swift_task_alloc();
    sub_258DE1858();
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

uint64_t sub_258DF8A38()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);

  v8 = *(v6 + 8);
  v8(v1, v5);
  v8(v4, v5);

  v9 = *(v0 + 312);
  *(v0 + 16) = v9;
  v10 = (v0 + 16);
  v11 = sub_258F09E20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v16 = (*(v12 + 88))(v14, v11);
    if (MEMORY[0x277D81740] && v16 == *MEMORY[0x277D81740])
    {

      v9 = *v10;
      v17 = 3;
LABEL_24:
      v60 = v17;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v16 == *MEMORY[0x277D81748])
    {

      v9 = *v10;
      v17 = 4;
      goto LABEL_24;
    }

    (*(v12 + 8))(v14, v11);
  }

  *(v0 + 24) = v9;
  v18 = sub_258F0A1D0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v22 = v9;
  if (swift_dynamicCast())
  {
    v23 = (*(v19 + 88))(v21, v18);
    if (MEMORY[0x277D04530] && v23 == *MEMORY[0x277D04530])
    {

      v9 = *(v0 + 24);
      v17 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v23 == *MEMORY[0x277D04538])
    {

      v9 = *(v0 + 24);
      v17 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v23 == *MEMORY[0x277D04540])
    {

      v9 = *(v0 + 24);
      v17 = 8;
      goto LABEL_24;
    }

    (*(v19 + 8))(v21, v18);
  }

  *(v0 + 32) = v9;
  v24 = v9;
  if (swift_dynamicCast())
  {

    v60 = *(v0 + 448);
    v9 = *(v0 + 32);
LABEL_25:

    v31 = *(v0 + 144);
    v30 = *(v0 + 152);
    v32 = *(v0 + 128);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    v35 = *(v0 + 444);
    v36 = *(v0 + 64);
    v37 = *(v32 + 64) + 15;
    v38 = swift_task_alloc();
    sub_258DE1858();
    v39 = swift_allocError();
    *v40 = v60;

    (*(v32 + 8))(v36, v34);
    *v38 = v39;
    v33(v38, v35, v34);
    (*(v32 + 32))(v36, v38, v34);

    goto LABEL_26;
  }

  *(v0 + 40) = v9;
  v25 = sub_258F09E60();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64) + 15;
  v28 = swift_task_alloc();
  v29 = v9;
  if (swift_dynamicCast())
  {

    (*(v26 + 8))(v28, v25);

    v9 = *(v0 + 40);
    v17 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v9;
  v44 = sub_258F09E10();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64) + 15;
  v47 = swift_task_alloc();
  v48 = v9;
  if (swift_dynamicCast())
  {

    (*(v45 + 8))(v47, v44);

    v60 = 0;
    v9 = *(v0 + 48);
    goto LABEL_25;
  }

  v49 = *(v0 + 112);
  v50 = *(v0 + 96);

  *(v0 + 56) = v9;
  v51 = v9;
  if (!swift_dynamicCast())
  {

    v17 = 1;
    goto LABEL_24;
  }

  v53 = *(v0 + 144);
  v52 = *(v0 + 152);
  v54 = *(v0 + 136);
  v56 = *(v0 + 112);
  v55 = *(v0 + 120);
  v57 = *(v0 + 96);
  v58 = *(v0 + 104);
  v59 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v59, v55);

  v54(v59, *MEMORY[0x277D81770], v55);
  (*(v58 + 8))(v56, v57);

LABEL_26:
  v41 = *(v0 + 112);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_258DF9128()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);

  v10 = *(v8 + 8);
  v10(v1, v7);
  v10(v4, v7);
  v10(v6, v7);

  v11 = *(v0 + 352);
  *(v0 + 16) = v11;
  v12 = (v0 + 16);
  v13 = sub_258F09E20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v18 = (*(v14 + 88))(v16, v13);
    if (MEMORY[0x277D81740] && v18 == *MEMORY[0x277D81740])
    {

      v11 = *v12;
      v19 = 3;
LABEL_24:
      v62 = v19;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v18 == *MEMORY[0x277D81748])
    {

      v11 = *v12;
      v19 = 4;
      goto LABEL_24;
    }

    (*(v14 + 8))(v16, v13);
  }

  *(v0 + 24) = v11;
  v20 = sub_258F0A1D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  v24 = v11;
  if (swift_dynamicCast())
  {
    v25 = (*(v21 + 88))(v23, v20);
    if (MEMORY[0x277D04530] && v25 == *MEMORY[0x277D04530])
    {

      v11 = *(v0 + 24);
      v19 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v25 == *MEMORY[0x277D04538])
    {

      v11 = *(v0 + 24);
      v19 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v25 == *MEMORY[0x277D04540])
    {

      v11 = *(v0 + 24);
      v19 = 8;
      goto LABEL_24;
    }

    (*(v21 + 8))(v23, v20);
  }

  *(v0 + 32) = v11;
  v26 = v11;
  if (swift_dynamicCast())
  {

    v62 = *(v0 + 448);
    v11 = *(v0 + 32);
LABEL_25:

    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v34 = *(v0 + 128);
    v35 = *(v0 + 136);
    v36 = *(v0 + 120);
    v37 = *(v0 + 444);
    v38 = *(v0 + 64);
    v39 = *(v34 + 64) + 15;
    v40 = swift_task_alloc();
    sub_258DE1858();
    v41 = swift_allocError();
    *v42 = v62;

    (*(v34 + 8))(v38, v36);
    *v40 = v41;
    v35(v40, v37, v36);
    (*(v34 + 32))(v38, v40, v36);

    goto LABEL_26;
  }

  *(v0 + 40) = v11;
  v27 = sub_258F09E60();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64) + 15;
  v30 = swift_task_alloc();
  v31 = v11;
  if (swift_dynamicCast())
  {

    (*(v28 + 8))(v30, v27);

    v11 = *(v0 + 40);
    v19 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v11;
  v46 = sub_258F09E10();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64) + 15;
  v49 = swift_task_alloc();
  v50 = v11;
  if (swift_dynamicCast())
  {

    (*(v47 + 8))(v49, v46);

    v62 = 0;
    v11 = *(v0 + 48);
    goto LABEL_25;
  }

  v51 = *(v0 + 112);
  v52 = *(v0 + 96);

  *(v0 + 56) = v11;
  v53 = v11;
  if (!swift_dynamicCast())
  {

    v19 = 1;
    goto LABEL_24;
  }

  v55 = *(v0 + 144);
  v54 = *(v0 + 152);
  v56 = *(v0 + 136);
  v58 = *(v0 + 112);
  v57 = *(v0 + 120);
  v59 = *(v0 + 96);
  v60 = *(v0 + 104);
  v61 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v61, v57);

  v56(v61, *MEMORY[0x277D81770], v57);
  (*(v60 + 8))(v58, v59);

LABEL_26:
  v43 = *(v0 + 112);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_258DF983C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v62 = *(v0 + 208);
  v63 = *(v0 + 376);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 176);

  v10 = *(v7 + 8);
  v10(v1, v8);
  v10(v3, v8);
  v10(v5, v8);
  v10(v62, v8);

  v11 = *(v0 + 392);
  *(v0 + 16) = v11;
  v12 = (v0 + 16);
  v13 = sub_258F09E20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v18 = (*(v14 + 88))(v16, v13);
    if (MEMORY[0x277D81740] && v18 == *MEMORY[0x277D81740])
    {

      v11 = *v12;
      v19 = 3;
LABEL_24:
      v64 = v19;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v18 == *MEMORY[0x277D81748])
    {

      v11 = *v12;
      v19 = 4;
      goto LABEL_24;
    }

    (*(v14 + 8))(v16, v13);
  }

  *(v0 + 24) = v11;
  v20 = sub_258F0A1D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  v24 = v11;
  if (swift_dynamicCast())
  {
    v25 = (*(v21 + 88))(v23, v20);
    if (MEMORY[0x277D04530] && v25 == *MEMORY[0x277D04530])
    {

      v11 = *(v0 + 24);
      v19 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v25 == *MEMORY[0x277D04538])
    {

      v11 = *(v0 + 24);
      v19 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v25 == *MEMORY[0x277D04540])
    {

      v11 = *(v0 + 24);
      v19 = 8;
      goto LABEL_24;
    }

    (*(v21 + 8))(v23, v20);
  }

  *(v0 + 32) = v11;
  v26 = v11;
  if (swift_dynamicCast())
  {

    v64 = *(v0 + 448);
    v11 = *(v0 + 32);
LABEL_25:

    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v34 = *(v0 + 128);
    v35 = *(v0 + 136);
    v36 = *(v0 + 120);
    v37 = *(v0 + 444);
    v38 = *(v0 + 64);
    v39 = *(v34 + 64) + 15;
    v40 = swift_task_alloc();
    sub_258DE1858();
    v41 = swift_allocError();
    *v42 = v64;

    (*(v34 + 8))(v38, v36);
    *v40 = v41;
    v35(v40, v37, v36);
    (*(v34 + 32))(v38, v40, v36);

    goto LABEL_26;
  }

  *(v0 + 40) = v11;
  v27 = sub_258F09E60();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64) + 15;
  v30 = swift_task_alloc();
  v31 = v11;
  if (swift_dynamicCast())
  {

    (*(v28 + 8))(v30, v27);

    v11 = *(v0 + 40);
    v19 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v11;
  v46 = sub_258F09E10();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64) + 15;
  v49 = swift_task_alloc();
  v50 = v11;
  if (swift_dynamicCast())
  {

    (*(v47 + 8))(v49, v46);

    v64 = 0;
    v11 = *(v0 + 48);
    goto LABEL_25;
  }

  v51 = *(v0 + 112);
  v52 = *(v0 + 96);

  *(v0 + 56) = v11;
  v53 = v11;
  if (!swift_dynamicCast())
  {

    v19 = 1;
    goto LABEL_24;
  }

  v55 = *(v0 + 144);
  v54 = *(v0 + 152);
  v56 = *(v0 + 136);
  v58 = *(v0 + 112);
  v57 = *(v0 + 120);
  v59 = *(v0 + 96);
  v60 = *(v0 + 104);
  v61 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v61, v57);

  v56(v61, *MEMORY[0x277D81770], v57);
  (*(v60 + 8))(v58, v59);

LABEL_26:
  v43 = *(v0 + 112);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_258DF9F7C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 88);

  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 432);
  v7 = *(v0 + 360);
  v8 = *(v0 + 320);
  v9 = *(v0 + 280);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  if (v5)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#AssetMetricsWorker: Unable to report execution metadata event", v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  v13 = *(v0 + 328);
  v14 = *(v0 + 288);
  v15 = *(v0 + 208);
  v16 = *(v0 + 184);
  v17 = *(*(v0 + 192) + 8);
  v17(*(v0 + 368), v16);
  v17(v13, v16);
  v17(v14, v16);
  v17(v15, v16);

  v18 = *(v0 + 112);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_258DFA13C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    v9 = *(type metadata accessor for AssetMetricsWorker() + 20);

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

unint64_t sub_258DFA2E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
    v2 = sub_258F0ABD0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_dynamicCast();
        sub_258DEB8B8(&v25, v27);
        sub_258DEB8B8(v27, v28);
        sub_258DEB8B8(v28, &v26);
        result = sub_258E2E9B4(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_258DEB8B8(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_258DEB8B8(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_258DFA528(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B58, &unk_258F0D720);
    v2 = sub_258F0ABD0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_258DE4090(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_258DEB8B8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_258DEB8B8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_258DEB8B8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_258F0AA60();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_258DEB8B8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_258DFA808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258DFA8D0, 0, 0);
}

uint64_t sub_258DFA8D0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  v5 = type metadata accessor for AssetPenetrationStatus();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = AssetPenetrationStatus.init(defaults:logger:fbfBundleId:)(v4, v1, v3, v2);
  v0[12] = v8;
  v10 = v8;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v0[2] = v10;
  v0[13] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B18, &qword_258F0CDA8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_258F09E40();
  v0[14] = v16;
  if (v16)
  {
    v17 = v0[5];
    v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v19 = swift_task_alloc();
    v0[15] = v19;
    v20 = sub_258F09E00();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v19, v17, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    v22 = *(MEMORY[0x277D81750] + 4);
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_258DFAC24;

    return MEMORY[0x2821ED078](v12, v19);
  }

  else
  {
    v24 = v0[3];

    v25 = sub_258F09E50();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v12, 1, 1, v25);
    (*(v26 + 104))(v24, *MEMORY[0x277D81758], v25);
    v27 = v0[13];
    v28 = v0[11];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_258DFAC24()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  sub_258DE2184(*(v2 + 120), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v6 = sub_258DFCCF4;
  }

  else
  {

    v6 = sub_258DFCCF0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258DFAD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258DFAE58, 0, 0);
}

uint64_t sub_258DFAE58()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  v5 = type metadata accessor for AIRAssetStatusMetrics();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = AIRAssetStatusMetrics.init(defaults:logger:fbfBundleId:)(v4, v1, v3, v2);
  v0[12] = v8;
  v10 = v8;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v0[2] = v10;
  v0[13] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B28, &unk_258F0CDC0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_258F09E40();
  v0[14] = v16;
  if (v16)
  {
    v17 = v0[5];
    v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v19 = swift_task_alloc();
    v0[15] = v19;
    v20 = sub_258F09E00();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v19, v17, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    v22 = *(MEMORY[0x277D81750] + 4);
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_258DFAC24;

    return MEMORY[0x2821ED078](v12, v19);
  }

  else
  {
    v24 = v0[3];

    v25 = sub_258F09E50();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v12, 1, 1, v25);
    (*(v26 + 104))(v24, *MEMORY[0x277D81758], v25);
    v27 = v0[13];
    v28 = v0[11];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_258DFB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258DFB274, 0, 0);
}

uint64_t sub_258DFB274()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  v5 = type metadata accessor for BootToAssetMetrics();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = BootToAssetMetrics.init(defaults:logger:fbfBundleId:)(v4, v1, v3, v2);
  v0[12] = v8;
  v10 = v8;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v0[2] = v10;
  v0[13] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B30, &unk_258F0CDD0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_258F09E40();
  v0[14] = v16;
  if (v16)
  {
    v17 = v0[5];
    v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v19 = swift_task_alloc();
    v0[15] = v19;
    v20 = sub_258F09E00();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v19, v17, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    v22 = *(MEMORY[0x277D81750] + 4);
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_258DFB5C8;

    return MEMORY[0x2821ED078](v12, v19);
  }

  else
  {
    v24 = v0[3];

    v25 = sub_258F09E50();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v12, 1, 1, v25);
    (*(v26 + 104))(v24, *MEMORY[0x277D81758], v25);
    v27 = v0[13];
    v28 = v0[11];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_258DFB5C8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  sub_258DE2184(*(v2 + 120), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v6 = sub_258DFB82C;
  }

  else
  {

    v6 = sub_258DFB734;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258DFB734()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[3];

  v4 = sub_258F09E50();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 0, 1, v4);
  (*(v5 + 32))(v3, v2, v4);
  v6 = v0[13];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_258DFB82C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];

  v4 = v0[17];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_258DFB8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258DFB974, 0, 0);
}

uint64_t sub_258DFB974()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  v5 = type metadata accessor for RequestWithNoAssetMetrics();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = RequestWithNoAssetMetrics.init(defaults:logger:fbfBundleId:)(v4, v1, v3, v2);
  v0[12] = v8;
  v10 = v8;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v0[2] = v10;
  v0[13] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B38, &qword_258F0CDE0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_258F09E40();
  v0[14] = v16;
  if (v16)
  {
    v17 = v0[5];
    v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v19 = swift_task_alloc();
    v0[15] = v19;
    v20 = sub_258F09E00();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v19, v17, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    v22 = *(MEMORY[0x277D81750] + 4);
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_258DFAC24;

    return MEMORY[0x2821ED078](v12, v19);
  }

  else
  {
    v24 = v0[3];

    v25 = sub_258F09E50();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v12, 1, 1, v25);
    (*(v26 + 104))(v24, *MEMORY[0x277D81758], v25);
    v27 = v0[13];
    v28 = v0[11];

    v29 = v0[1];

    return v29();
  }
}

unint64_t sub_258DFBCE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
    v3 = sub_258F0ABD0();
    v4 = a1 + 32;

    while (1)
    {
      sub_258DE20C0(v4, &v13, &qword_27F988B98, &unk_258F0D3A0);
      v5 = v13;
      v6 = v14;
      result = sub_258E2E9B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_258DEB8B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258DFBE24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988BB0, &qword_258F0D110);
    v3 = sub_258F0ABD0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_258E2E9B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258DFBF58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_258F0ABD0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_258E2E9B4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258DFC078(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v29 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v16 = sub_258F0ABD0();
    v17 = *(v9 + 48);
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);

    while (1)
    {
      sub_258DE20C0(v18, v14, a2, v29);
      result = sub_258E2EED8(v14);
      if (v21)
      {
        break;
      }

      v22 = result;
      *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = v16[6];
      v24 = sub_258F09A20();
      result = (*(*(v24 - 8) + 32))(v23 + *(*(v24 - 8) + 72) * v22, v14, v24);
      *(v16[7] + 8 * v22) = *&v14[v17];
      v25 = v16[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_10;
      }

      v16[2] = v27;
      v18 += v19;
      if (!--v15)
      {

        return v16;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258DFC280()
{
  result = qword_27F988B40;
  if (!qword_27F988B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988B40);
  }

  return result;
}

unint64_t sub_258DFC2DC()
{
  result = qword_27F988B48;
  if (!qword_27F988B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988B48);
  }

  return result;
}

unint64_t sub_258DFC338()
{
  result = qword_27F988B50;
  if (!qword_27F988B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetMetricsWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetMetricsWorkerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_258DFC504()
{
  result = sub_258F09B00();
  if (v1 <= 0x3F)
  {
    result = sub_258F0A370();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetMetricsWorker.Subtask(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetMetricsWorker.Subtask(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of AssetMetricsExecutor.executeAssetPenetrationMetrics(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t dispatch thunk of AssetMetricsExecutor.executeAIRAssetStatus(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t dispatch thunk of AssetMetricsExecutor.executeDownloadMetrics(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t dispatch thunk of AssetMetricsExecutor.executeRequestWithNoAssetMetrics(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t sub_258DFCC98()
{
  result = qword_27F988BB8;
  if (!qword_27F988BB8)
  {
    sub_258F0A770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988BB8);
  }

  return result;
}

void sub_258DFCD2C(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = v4;
  v9 = *(a1 + 16);
  v10 = sub_258F0A080();
  if (v10)
  {
    v11 = v10;
    v26 = a4;
    v12 = v7 + *a3;
    v13 = sub_258F0A350();
    v14 = sub_258F0A820();
    if (os_log_type_enabled(v13, v14))
    {
      v25 = a2;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_258F0ADD0();
      v19 = sub_258DE3018(v17, v18, &v27);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_258DD8000, v13, v14, "SQL execution error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x259C9EF40](v16, -1, -1);
      v20 = v15;
      a2 = v25;
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    swift_getErrorValue();
    sub_258F0ADD0();
    static BiomeSQLDatabaseUtils.identifySqlError(errorString:)(&v27);

    v21 = v27;
    v22 = SiriMetricsWorkerError.rawValue.getter();
    v26(1, v22, v23);

    if (a2)
    {
      sub_258DE403C();
      swift_allocError();
      *v24 = v21;
      swift_willThrow();
    }
  }
}

uint64_t AssetPenetrationResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AssetPenetrationResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t AssetPenetrationResults.assetPenetrationData.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AssetPenetrationCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:userDefaults:oddId:biomeClient:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v61 = a5;
  v57 = a4;
  v51 = a3;
  v48 = sub_258F09A70();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v48, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = (&v48 - v16);
  v18 = sub_258F0A370();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v19;
  v54 = *(v19 + 16);
  v58 = a1;
  v54(v23, a1, v18);
  v53 = a2;
  sub_258DE20C0(a2, v17, &qword_27F988720, &qword_258F0B830);
  type metadata accessor for BiomeResultsWrapperFactory();
  v50 = swift_allocObject();
  v24 = type metadata accessor for CAAnalyticsEventSubmitter();
  v25 = swift_allocObject();
  v59 = v8;
  v49 = *(v8 + 16);
  v26 = v48;
  v49(v12, v61, v48);
  sub_258DE20C0(v60, v69, &qword_27F988BC0, &qword_258F0D148);
  v68[3] = v24;
  v68[4] = &off_286A2C648;
  v68[0] = v25;
  v27 = type metadata accessor for AssetPenetrationCalculator();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v68, v24);
  v32 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v31, v31);
  v34 = (&v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v67[3] = v24;
  v67[4] = &off_286A2C648;
  v67[0] = v36;
  sub_258F09AC0();
  v52 = v23;
  v56 = v18;
  v54((v30 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger), v23, v18);
  v37 = v26;
  v54 = v17;
  sub_258DE20C0(v17, v30 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v38 = (v30 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService);
  v38[3] = sub_258F09C20();
  v38[4] = &off_286A2FA30;
  *v38 = v51;
  *(v30 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeResultsFactory) = v50;
  sub_258DE3FD8(v67, v30 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_analyticsEventSubmitter);
  *(v30 + 16) = v57;
  v57 = v12;
  v49((v30 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId), v12, v37);
  sub_258DE20C0(v69, &v62, &qword_27F988BC0, &qword_258F0D148);
  if (v63)
  {
    sub_258DE2184(v60, &qword_27F988BC0, &qword_258F0D148);
    v39 = *(v59 + 8);
    v39(v61, v37);
    sub_258DE2184(v53, &qword_27F988720, &qword_258F0B830);
    v40 = *(v55 + 8);
    v41 = v56;
    v40(v58, v56);
    sub_258DE2184(v69, &qword_27F988BC0, &qword_258F0D148);
    v39(v57, v37);
    sub_258DE2184(v54, &qword_27F988720, &qword_258F0B830);
    v40(v52, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    sub_258DDA76C(&v62, &v64);
  }

  else
  {
    v42 = type metadata accessor for AssetEventsBiomeClient();
    v43 = swift_allocObject();
    *(v43 + 16) = MEMORY[0x277D84FA0];
    v65 = v42;
    v66 = &off_286A2A7F8;
    *&v64 = v43;
    sub_258DE2184(v60, &qword_27F988BC0, &qword_258F0D148);
    v44 = *(v59 + 8);
    v44(v61, v37);
    sub_258DE2184(v53, &qword_27F988720, &qword_258F0B830);
    v45 = *(v55 + 8);
    v46 = v56;
    v45(v58, v56);
    sub_258DE2184(v69, &qword_27F988BC0, &qword_258F0D148);
    v44(v57, v37);
    sub_258DE2184(v54, &qword_27F988720, &qword_258F0B830);
    v45(v52, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    if (v63)
    {
      sub_258DE2184(&v62, &qword_27F988BC0, &qword_258F0D148);
    }
  }

  sub_258DDA76C(&v64, v30 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  return v30;
}

uint64_t type metadata accessor for AssetPenetrationCalculator()
{
  result = qword_27F988BF0;
  if (!qword_27F988BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258DFD938(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for AssetPenetrationData();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_258F09A20();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DFDAC0, 0, 0);
}

uint64_t sub_258DFDAC0()
{
  v41 = v0;
  v1 = *(v0 + 6);
  v2 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger;
  *(v0 + 22) = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger;

  v3 = sub_258F0A350();
  v4 = sub_258F0A810();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 6);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40[0] = v7;
    *v6 = 136315138;
    sub_258F09A70();
    sub_258E08FDC(&qword_27F988758, MEMORY[0x277CC95F0]);
    v8 = sub_258F0AD60();
    v10 = sub_258DE3018(v8, v9, v40);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_258DD8000, v3, v4, "SQL calculator invoked: AssetPenetrationCalculator %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C9EF40](v7, -1, -1);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v11 = *(v0 + 6);
  *(v0 + 23) = sub_258DE0400();
  v12 = *__swift_project_boxed_opaque_existential_1((*(v0 + 6) + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService), *(*(v0 + 6) + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService + 24));
  v13 = sub_258F09BF0();
  if (v14)
  {
    v15 = *(v0 + 6);
    v16 = sub_258DFF5C4();
  }

  else
  {
    v16 = *&v13;
  }

  v0[24] = v16;
  v17 = sub_258F0A350();
  v18 = sub_258F0A800();
  if (os_log_type_enabled(v17, v18))
  {
    v37 = v18;
    v19 = *(v0 + 21);
    v20 = *(v0 + 16);
    v21 = *(v0 + 17);
    v22 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v22 = 136315138;
    sub_258F09910();
    sub_258E08FDC(&qword_27F988750, MEMORY[0x277CC9578]);
    v23 = sub_258F0AD60();
    v24 = v2;
    v26 = v25;
    (*(v21 + 8))(v19, v20);
    v27 = sub_258DE3018(v23, v26, v40);
    v2 = v24;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_258DD8000, v17, v37, "AP bookmark start: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x259C9EF40](v38, -1, -1);
    MEMORY[0x259C9EF40](v22, -1, -1);
  }

  v28 = *(v0 + 6);
  v29 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient;
  *(v0 + 25) = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient;
  v30 = *(v28 + v29 + 24);
  v31 = *(v28 + v29 + 32);
  __swift_project_boxed_opaque_existential_1((v28 + v29), v30);
  v32 = *(v31 + 16);
  v39 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  *(v0 + 26) = v34;
  *v34 = v0;
  v34[1] = sub_258DFDFC4;
  v35.n128_f64[0] = v16;

  return v39(0xD000000000000012, 0x8000000258F19A10, v1 + v2, v30, v31, v35);
}

uint64_t sub_258DFDFC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_258DFF3CC;
  }

  else
  {
    v5 = sub_258DFE0D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258DFE0D8()
{
  v168 = v0;
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[6];

  v4 = sub_258F0A350();
  v5 = sub_258F0A800();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&dword_258DD8000, v4, v5, "Converted UAF stream events count: %ld", v8, 0xCu);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  else
  {
    v9 = v0[27];
  }

  v10 = v0[27];
  v11 = *(v10 + 16);
  if (v11 >= 0xA)
  {
    v12 = 10;
  }

  else
  {
    v12 = *(v10 + 16);
  }

  v164 = v0;
  if (v11)
  {
    v13 = ( + 64);
    do
    {
      v17 = v164[22];
      v18 = v164[6];
      v19 = *(v13 - 3);
      v20 = *(v13 - 2);
      v22 = *(v13 - 1);
      v21 = *v13;

      v23 = sub_258F0A350();
      v24 = sub_258F0A800();
      if (os_log_type_enabled(v23, v24))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v167[0] = v15;
        *v14 = 136315138;

        v16 = sub_258DE3018(v19, v20, v167);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_258DD8000, v23, v24, "UAF event code: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x259C9EF40](v15, -1, -1);
        MEMORY[0x259C9EF40](v14, -1, -1);
      }

      else
      {
      }

      v13 += 5;
      --v12;
    }

    while (v12);
    v0 = v164;
    v25 = v164[27];
  }

  v26 = v0[28];
  v27 = v0[6];
  v28 = MEMORY[0x259C9E880](v10);
  sub_258DDFD40();
  if (v26)
  {
    v29 = v0[27];

    v46 = v0[23];
    objc_autoreleasePoolPop(v28);

    v48 = v0[20];
    v47 = v0[21];
    v50 = v0[18];
    v49 = v0[19];
    v52 = v0[14];
    v51 = v0[15];
    v54 = v0[12];
    v53 = v0[13];
    v55 = v0[11];
    v161 = v0[10];
    v165 = v0[9];

    v56 = v0[1];

    return v56();
  }

  else
  {
    v30 = v0[23];
    v31 = v0[6] + v0[22];
    v32 = sub_258F0A350();
    v33 = sub_258F0A810();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v167[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_258DE3018(0xD000000000000010, 0x8000000258F19A50, v167);
      _os_log_impl(&dword_258DD8000, v32, v33, "%s: current date data NOT included for aggregation.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x259C9EF40](v35, -1, -1);
      MEMORY[0x259C9EF40](v34, -1, -1);
    }

    v36 = v164[22];
    v37 = v164[23];
    v38 = v164[6];
    sub_258F0A050();
    v39 = v37;
    v40 = sub_258F0A010();
    v41 = sub_258F0A040();

    type metadata accessor for BiomeResultsWrapper();
    inited = swift_initStackObject();
    *(inited + 16) = v41;
    v43 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId;

    v45 = sub_258E09164(v44, v38 + v43, v38 + v36);

    sub_258DFCD2C(inited, 0, &OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger, sub_258E2C52C);
    v58 = v164[22];
    v59 = v164[6];

    objc_autoreleasePoolPop(v28);

    v60 = sub_258F0A350();
    v61 = sub_258F0A800();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v164;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 134217984;
      *(v64 + 4) = v45[2];

      _os_log_impl(&dword_258DD8000, v60, v61, "AP SQL file results: %ld", v64, 0xCu);
      MEMORY[0x259C9EF40](v64, -1, -1);
    }

    else
    {
    }

    v66 = v45[2];
    if (v66 >= 0xA)
    {
      v67 = 10;
    }

    else
    {
      v67 = v45[2];
    }

    if (v66)
    {
      v155 = v164[14];
      v157 = v164[15];
      v153 = v164[13];
      v68 = v164[8];
      v69 = v45 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v70 = *(v68 + 72);
      v149 = (v164[17] + 8);
      v147 = v45;

      v151 = v70;
      do
      {
        v74 = v63[22];
        v75 = v63[14];
        v76 = v63[13];
        v77 = v63[6];
        sub_258E02EF8(v69, v63[15]);
        sub_258E02EF8(v69, v75);
        sub_258E02EF8(v69, v76);
        v78 = sub_258F0A350();
        v79 = sub_258F0A800();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = v63[20];
          v81 = v63;
          v82 = v63[16];
          v83 = v81[15];
          v159 = v81[14];
          v84 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v167[0] = v162;
          *v84 = 134218498;
          v85 = *(v157 + 48);
          v86 = *(v157 + 56);
          sub_258E02F5C(v83);
          if (v86)
          {
            v87 = 0.0;
          }

          else
          {
            v87 = v85;
          }

          *(v84 + 4) = v87;
          *(v84 + 12) = 2080;
          v88 = *(v155 + 48);
          *(v155 + 56);
          sub_258F099D0();
          sub_258E08FDC(&qword_27F988750, MEMORY[0x277CC9578]);
          v89 = sub_258F0AD60();
          v91 = v90;
          (*v149)(v80, v82);
          sub_258E02F5C(v159);
          v92 = sub_258DE3018(v89, v91, v167);

          *(v84 + 14) = v92;
          *(v84 + 22) = 2080;
          if (*(v153 + 88))
          {
            v93 = *(v153 + 80);
            v94 = *(v153 + 88);
          }

          else
          {
            v94 = 0xE700000000000000;
            v93 = 0x6E776F6E6B6E75;
          }

          v63 = v164;
          v95 = v164[13];

          sub_258E02F5C(v95);
          v96 = sub_258DE3018(v93, v94, v167);

          *(v84 + 24) = v96;
          _os_log_impl(&dword_258DD8000, v78, v79, "Device dim event: %f - %s - %s", v84, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C9EF40](v162, -1, -1);
          MEMORY[0x259C9EF40](v84, -1, -1);

          v70 = v151;
        }

        else
        {
          v71 = v63[14];
          v72 = v63[15];
          v73 = v63[13];

          sub_258E02F5C(v73);
          sub_258E02F5C(v71);
          sub_258E02F5C(v72);
        }

        v69 += v70;
        --v67;
      }

      while (v67);
      v45 = v147;
    }

    v97 = v63[27];
    v98 = MEMORY[0x259C9E880](v65);
    v99 = sub_258E080A4(v45, v97);
    v63[29] = v99;

    objc_autoreleasePoolPop(v98);
    v100 = v99[2];
    v63[30] = v100;
    if (v100 >= 0xA)
    {
      v101 = 10;
    }

    else
    {
      v101 = v100;
    }

    if (v100)
    {
      v156 = v63[11];
      v158 = v63[12];
      v152 = v63[9];
      v154 = v63[10];
      v102 = v63[8];
      v103 = v99 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v104 = *(v102 + 72);
      v148 = (v63[17] + 8);

      v150 = v104;
      do
      {
        v109 = v63[22];
        v110 = v63[11];
        v112 = v63[9];
        v111 = v63[10];
        v113 = v63[6];
        sub_258E02EF8(v103, v63[12]);
        sub_258E02EF8(v103, v110);
        sub_258E02EF8(v103, v111);
        sub_258E02EF8(v103, v112);
        v114 = sub_258F0A350();
        v115 = sub_258F0A800();
        if (os_log_type_enabled(v114, v115))
        {
          v163 = v115;
          v116 = v63[19];
          v117 = v63[16];
          v118 = v63;
          v119 = v63[12];
          v120 = v118[11];
          v121 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v167[0] = v160;
          *v121 = 134218754;
          v122 = *(v158 + 48);
          v123 = *(v158 + 56);
          sub_258E02F5C(v119);
          if (v123)
          {
            v124 = 0.0;
          }

          else
          {
            v124 = v122;
          }

          *(v121 + 4) = v124;
          *(v121 + 12) = 2080;
          v125 = *(v156 + 48);
          *(v156 + 56);
          sub_258F099D0();
          sub_258E08FDC(&qword_27F988750, MEMORY[0x277CC9578]);
          v126 = sub_258F0AD60();
          v128 = v127;
          (*v148)(v116, v117);
          sub_258E02F5C(v120);
          v129 = sub_258DE3018(v126, v128, v167);

          *(v121 + 14) = v129;
          *(v121 + 22) = 2080;
          if (*(v154 + 88))
          {
            v130 = *(v154 + 80);
            v131 = *(v154 + 88);
          }

          else
          {
            v131 = 0xE700000000000000;
            v130 = 0x6E776F6E6B6E75;
          }

          v63 = v164;
          v132 = v164[10];

          sub_258E02F5C(v132);
          v133 = sub_258DE3018(v130, v131, v167);

          *(v121 + 24) = v133;
          *(v121 + 32) = 2080;
          v134 = *(v152 + 24);
          if (v134)
          {
            v135 = *(v152 + 16);
            v136 = *(v152 + 24);
          }

          else
          {
            v134 = 0xE700000000000000;
            v135 = 0x6E776F6E6B6E75;
          }

          sub_258E02F5C(v164[9]);
          v137 = sub_258DE3018(v135, v134, v167);

          *(v121 + 34) = v137;
          _os_log_impl(&dword_258DD8000, v114, v163, "AP joined event: %f - %s - %s - %s", v121, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x259C9EF40](v160, -1, -1);
          MEMORY[0x259C9EF40](v121, -1, -1);

          v104 = v150;
        }

        else
        {
          v106 = v63[11];
          v105 = v63[12];
          v108 = v63[9];
          v107 = v63[10];

          sub_258E02F5C(v107);
          sub_258E02F5C(v106);
          sub_258E02F5C(v105);
          sub_258E02F5C(v108);
        }

        v103 += v104;
        --v101;
      }

      while (v101);
    }

    v138 = v63[22];
    v139 = v63[6];
    v140 = (v139 + v63[25]);
    v141 = v140[3];
    v142 = v140[4];
    __swift_project_boxed_opaque_existential_1(v140, v141);
    v143 = *(v142 + 8);
    v166 = (v143 + *v143);
    v144 = v143[1];
    v145 = swift_task_alloc();
    v63[31] = v145;
    *v145 = v63;
    v145[1] = sub_258DFEE4C;
    v146.n128_u64[0] = v63[24];

    return v166(0xD00000000000001FLL, 0x8000000258F19A30, 0xD000000000000012, 0x8000000258F19A10, v139 + v138, v141, v142, v146);
  }
}

uint64_t sub_258DFEE4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v7 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v5 = sub_258DFF4C4;
  }

  else
  {
    v5 = sub_258DFEF60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_258DFEF60()
{
  v67 = v0;
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[6];

  v4 = sub_258F0A350();
  v5 = sub_258F0A800();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&dword_258DD8000, v4, v5, "GM result count: %ld", v8, 0xCu);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  else
  {
    v9 = v0[32];
  }

  v10 = v0[32];
  v11 = v0[33];
  v12 = MEMORY[0x259C9E880]();
  sub_258DFF664(v10, &v66);
  if (v11)
  {

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v13 = v0[32];
    v14 = v0[30];

    objc_autoreleasePoolPop(v12);
    if (v14)
    {
      v15 = 0;
      v17 = v0[7];
      v16 = v0[8];
      v18 = v0[29];
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_258E02FB8(v18);
        }

        if (v15 >= v18[2])
        {
          break;
        }

        v19 = v15 + 1;
        v20 = v0[30];
        v21 = v18 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v15;

        v23 = sub_258E07F1C(v22, v21);

        v24 = *(v17 + 68);
        v25 = *(v21 + v24);
        *(v21 + v24) = v23;

        v15 = v19;
        if (v19 == v20)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v18 = v0[29];
LABEL_16:
      v26 = v0[18];

      sub_258F09B50();
      if (v18[2])
      {
        v27 = v0[23];
        v29 = v0[20];
        v28 = v0[21];
        v30 = v0[18];
        v32 = v0[16];
        v31 = v0[17];
        v57 = v0[19];
        v58 = v0[15];
        v59 = v0[14];
        v60 = v0[13];
        v61 = v0[12];
        v62 = v0[11];
        v63 = v0[10];
        v65 = v0[9];
        v33 = v0[5];
        v34 = sub_258F09B70();

        (*(v31 + 8))(v30, v32);
        v35 = MEMORY[0x277D84F90];
        *v33 = v34;
        v33[1] = v35;
        v33[2] = v18;

        v36 = v0[1];
      }

      else
      {
        v37 = v0[22];
        v38 = v0[6];

        v39 = sub_258F0A350();
        v40 = sub_258F0A800();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_258DD8000, v39, v40, "No AP events are successfully processed. Bookmark is not updated.", v41, 2u);
          MEMORY[0x259C9EF40](v41, -1, -1);
        }

        v42 = v0[23];
        v44 = v0[17];
        v43 = v0[18];
        v45 = v0[16];

        sub_258DE1858();
        swift_allocError();
        *v46 = 3;
        swift_willThrow();

        (*(v44 + 8))(v43, v45);
        v48 = v0[20];
        v47 = v0[21];
        v50 = v0[18];
        v49 = v0[19];
        v52 = v0[14];
        v51 = v0[15];
        v54 = v0[12];
        v53 = v0[13];
        v55 = v0[10];
        v56 = v0[11];
        v64 = v0[9];

        v36 = v0[1];
      }

      v36();
    }
  }
}

uint64_t sub_258DFF3CC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v13 = *(v0 + 72);
  v14 = *(v0 + 224);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_258DFF4C4()
{
  v1 = v0[29];
  v2 = v0[23];

  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v15 = v0[9];
  v16 = v0[33];

  v13 = v0[1];

  return v13();
}

double sub_258DFF5C4()
{
  v0 = sub_258F0A350();
  v1 = sub_258F0A800();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_258DD8000, v0, v1, "Missing bookmark start time interval.", v2, 2u);
    MEMORY[0x259C9EF40](v2, -1, -1);
  }

  return 0.0;
}

char *sub_258DFF664@<X0>(int8x16_t *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[1].i64[0];
  result = sub_258DE2348(0, v4, 0, MEMORY[0x277D84F90]);
  v6 = result;
  if (v4)
  {
    v7 = a1 + 2;
    v8 = *(result + 2);
    do
    {
      v9 = *v7;
      v10 = *(v6 + 3);
      if (v8 >= v10 >> 1)
      {
        v11 = *v7;
        result = sub_258DE2348((v10 > 1), v8 + 1, 1, v6);
        v9 = v11;
        v6 = result;
      }

      *(v6 + 2) = v8 + 1;
      *&v6[16 * v8 + 32] = vextq_s8(v9, v9, 8uLL);
      ++v7;
      ++v8;
      --v4;
    }

    while (v4);
  }

  *a2 = v6;
  return result;
}

uint64_t AssetPenetrationCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeResultsFactory);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_analyticsEventSubmitter));
  v4 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_calendar;
  v5 = sub_258F09B00();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient));
  return v0;
}

uint64_t AssetPenetrationCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeResultsFactory);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_analyticsEventSubmitter));
  v4 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_calendar;
  v5 = sub_258F09B00();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient));
  v8 = *(*v0 + 12);
  v9 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_258DFFA98(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258DFD938(a1);
}

uint64_t sub_258DFFB34()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 16);
    }

    swift_unknownObjectRetain();
    sub_258F0AA10();
    sub_258F0A390();
    sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8]);
    result = sub_258F0A7C0();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
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

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_258E08EAC();

      v19 = *(v1 + 16);
      *(v1 + 16) = MEMORY[0x277D84FA0];

      return v1;
    }

    while (1)
    {
      sub_258F0A380();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_258F0AA40())
      {
        sub_258F0A390();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258DFFD74()
{
  sub_258DFFB34();

  return swift_deallocClassInstance();
}

uint64_t sub_258DFFDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 64) = a5;
  *(v7 + 72) = v6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 24) = a6;
  v8 = sub_258F09A20();
  *(v7 + 80) = v8;
  v9 = *(v8 - 8);
  *(v7 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DFFE70, 0, 0);
}

uint64_t sub_258DFFE70()
{
  v32 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];

  v4 = sub_258F0A350();
  v5 = sub_258F0A800();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v29 = v0[6];
    v30 = v0[7];
    v27 = v0[4];
    v28 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315650;
    sub_258F09910();
    sub_258E08FDC(&qword_27F988750, MEMORY[0x277CC9578]);
    v12 = sub_258F0AD60();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    v15 = sub_258DE3018(v12, v14, &v31);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_258DE3018(v27, v28, &v31);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_258DE3018(v29, v30, &v31);
    _os_log_impl(&dword_258DD8000, v4, v5, "Pulling GFI events from Biome. StartTime: %s, EventType: %s, UseCase: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v11, -1, -1);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  v17 = v0[6];
  v16 = v0[7];
  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  v21 = swift_task_alloc();
  v0[13] = v21;
  v22 = *(v0 + 4);
  *(v21 + 16) = v17;
  *(v21 + 24) = v16;
  *(v21 + 32) = v20;
  *(v21 + 40) = v22;
  *(v21 + 56) = v19;
  *(v21 + 64) = v18;
  v23 = *(MEMORY[0x277D85A40] + 4);
  v24 = swift_task_alloc();
  v0[14] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C88, &qword_258F0D3C8);
  *v24 = v0;
  v24[1] = sub_258E0015C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000039, 0x8000000258F19C40, sub_258E08EB4, v21, v25);
}

uint64_t sub_258E0015C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_258E002E4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_258E00278;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_258E00278()
{
  v1 = v0[12];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_258E002E4()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_258E00350(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v62 = a7;
  v64 = a5;
  v65 = a4;
  v66 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C90, &qword_258F0D3D0);
  v60 = *(v67 - 8);
  v59 = *(v60 + 64);
  MEMORY[0x28223BE20](v67, v7);
  v63 = v54 - v8;
  v58 = sub_258F0A370();
  v57 = *(v58 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v58, v10);
  v56 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v54 - v14;
  v16 = sub_258F09A20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = swift_allocObject();
  *(v69 + 16) = MEMORY[0x277D84F90];
  v68 = swift_allocObject();
  *(v68 + 16) = MEMORY[0x277D84FA0];
  v22 = sub_258F0A4E0();
  sub_258F09910();
  (*(v17 + 56))(v15, 1, 1, v16);
  v23 = sub_258F099A0();
  v24 = *(v17 + 8);
  v24(v21, v16);
  v25 = (*(v17 + 48))(v15, 1, v16);
  v26 = 0;
  if (v25 != 1)
  {
    v26 = sub_258F099A0();
    v24(v15, v16);
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v23 endDate:v26 maxEvents:0 lastN:0 reversed:0];

  v28 = v69;
  v29 = *(v69 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 16) = v29;
  if (!isUniquelyReferenced_nonNull_native || *(v29 + 3) <= 0x7CFuLL)
  {
    if (*(v29 + 2) <= 0x3E8uLL)
    {
      v31 = 1000;
    }

    else
    {
      v31 = *(v29 + 2);
    }

    v29 = sub_258DE244C(isUniquelyReferenced_nonNull_native, v31, 0, v29);
  }

  v32 = v65;
  *(v28 + 16) = v29;
  sub_258F0A200();
  sub_258F0A4F0();

  sub_258E08FDC(&qword_27F988C98, MEMORY[0x277D20390]);
  v33 = v27;
  sub_258F0A210();
  v65 = v22;

  v55 = v33;

  v34 = sub_258F0A350();
  v35 = sub_258F0A810();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_258DD8000, v34, v35, "Successfully created Biome publisher for GFI stream.", v36, 2u);
    MEMORY[0x259C9EF40](v36, -1, -1);
  }

  v54[2] = v72;
  v54[3] = v73;
  v54[1] = __swift_project_boxed_opaque_existential_1(v71, v72);
  v54[0] = swift_allocObject();
  swift_weakInit();
  v37 = v57;
  v38 = v56;
  v39 = v58;
  (*(v57 + 16))(v56, v32, v58);
  v40 = v60;
  v41 = v67;
  (*(v60 + 16))(v63, v66, v67);
  v42 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v43 = (v9 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v40 + 80) + v44 + 8) & ~*(v40 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v54[0];
  (*(v37 + 32))(v46 + v42, v38, v39);
  v48 = v68;
  v47 = v69;
  *(v46 + v43) = v68;
  *(v46 + v44) = v47;
  (*(v40 + 32))(v46 + v45, v63, v41);
  v49 = swift_allocObject();
  v50 = v61;
  v51 = v62;
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v51;
  v49[5] = v47;
  swift_retain_n();
  swift_retain_n();

  v52 = sub_258F0A3A0();

  swift_beginAccess();

  sub_258E0587C(&v70, v52);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
}

uint64_t sub_258E00BA8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;

  v8 = sub_258F0A350();
  v9 = sub_258F0A800();
  if (os_log_type_enabled(v8, v9))
  {
    v34 = v9;
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v10 = 134218242;
    swift_beginAccess();
    *(v10 + 4) = *(*(a4 + 16) + 16);

    *(v10 + 12) = 2080;
    v11 = *(a4 + 16);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = sub_258E02E14(v12, 0);
      v32 = sub_258E07D74(&v35, v13 + 4, v12, v11);
      swift_bridgeObjectRetain_n();
      sub_258E08EAC();
      if (v32 != v12)
      {
        __break(1u);

        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = *(a4 + 16);

      v13 = MEMORY[0x277D84F90];
    }

    v35 = v13;
    sub_258E031F0(&v35);

    v22 = MEMORY[0x259C9DF80](v35, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_258DE3018(v22, v24, &v36);

    *(v10 + 14) = v25;
    _os_log_impl(&dword_258DD8000, v8, v34, "Sink encountered %ld unique GFI event types: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x259C9EF40](v33, -1, -1);
    MEMORY[0x259C9EF40](v10, -1, -1);

    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_6:
    v14 = v7;
    v15 = sub_258F0A350();
    v16 = sub_258F0A830();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_258DD8000, v15, v16, "GFI stream received unexpected failure: %@. Returning empty results.", v17, 0xCu);
      sub_258DE2184(v18, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v18, -1, -1);
      MEMORY[0x259C9EF40](v17, -1, -1);
    }

    v35 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_11:

  v26 = sub_258F0A350();
  v27 = sub_258F0A810();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    swift_beginAccess();
    *(v28 + 4) = *(*(a5 + 16) + 16);

    _os_log_impl(&dword_258DD8000, v26, v27, "GFI stream completed successfully. Found %ld events.", v28, 0xCu);
    MEMORY[0x259C9EF40](v28, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v35 = *(a5 + 16);

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C90, &qword_258F0D3D0);
  sub_258F0A760();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = result;
    swift_beginAccess();
    v31 = *(v30 + 16);
    *(v30 + 16) = MEMORY[0x277D84FA0];
  }

  return result;
}

double sub_258E01044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v8 = sub_258F0A250();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258F0A240();
  v16 = v15;
  swift_beginAccess();
  sub_258E05B1C(&v29, v14, v16);
  swift_endAccess();

  if (sub_258F0A240() == a3 && v17 == a4)
  {
  }

  else
  {
    v18 = sub_258F0AD80();

    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  (*(v9 + 16))(v13, a1, v8);
  sub_258E01270(v13, &v27);
  if ((v28 & 1) == 0)
  {
    *v25 = v27;
    v20 = v26;
    swift_beginAccess();
    v21 = *(v20 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 16) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_258DE244C(0, *(v21 + 2) + 1, 1, v21);
      *(v20 + 16) = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_258DE244C((v23 > 1), v24 + 1, 1, v21);
    }

    *(v21 + 2) = v24 + 1;
    result = v25[0];
    *&v21[16 * v24 + 32] = *v25;
    *(v20 + 16) = v21;
  }

  return result;
}

uint64_t sub_258E01270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258F0A270();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB8, &qword_258F0D3E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v39 - v12;
  v14 = sub_258F0A280();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v39 - v22;
  sub_258F0A230();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v24 = sub_258F0A250();
    (*(*(v24 - 8) + 8))(a1, v24);
    result = sub_258DE2184(v13, &qword_27F988CB8, &qword_258F0D3E0);
  }

  else
  {
    (*(v15 + 32))(v23, v13, v14);
    (*(v15 + 16))(v20, v23, v14);
    if ((*(v15 + 88))(v20, v14) == *MEMORY[0x277D20C20])
    {
      (*(v15 + 96))(v20, v14);
      v26 = *v20;
      v27 = swift_projectBox();
      v28 = v40;
      (*(v40 + 16))(v8, v27, v4);

      v30 = MEMORY[0x259C9DB20](v29);
      if ((v31 & 1) != 0 || v30 < 0 || (v32 = v30, sub_258F0A220(), v34 = trunc(v33), v34 <= -1.0))
      {
        v38 = sub_258F0A250();
        (*(*(v38 - 8) + 8))(a1, v38);
        (*(v28 + 8))(v8, v4);
        result = (*(v15 + 8))(v23, v14);
      }

      else
      {
        v35 = sub_258F0A250();
        (*(*(v35 - 8) + 8))(a1, v35);
        (*(v28 + 8))(v8, v4);
        result = (*(v15 + 8))(v23, v14);
        if (v34 < 1.84467441e19)
        {
          *a2 = v34;
          *(a2 + 8) = v32;
          *(a2 + 16) = 0;
          return result;
        }
      }
    }

    else
    {
      v36 = sub_258F0A250();
      (*(*(v36 - 8) + 8))(a1, v36);
      v37 = *(v15 + 8);
      v37(v23, v14);
      result = (v37)(v20, v14);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void sub_258E016FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v52 = a2;
  v58 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398);
  v61 = *(v4 - 8);
  v62 = v4;
  v59 = *(v61 + 64);
  MEMORY[0x28223BE20](v4, v5);
  v63 = v50 - v6;
  v57 = sub_258F0A370();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v57, v8);
  v53 = v9;
  v54 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v50 - v13;
  v15 = sub_258F09A20();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x277D84FA0];
  v23 = MEMORY[0x277D84F90];
  *(v21 + 16) = MEMORY[0x277D84F90];
  v24 = sub_258DE255C(0, 1000, 0, v23);
  v60 = v21;
  *(v21 + 16) = v24;
  v25 = [BiomeLibrary() AssetDelivery];
  swift_unknownObjectRelease();
  v26 = [v25 UAF];
  swift_unknownObjectRelease();
  v27 = [v26 DailyStatus];
  swift_unknownObjectRelease();
  v28 = sub_258F0A4E0();
  sub_258F09910();
  (*(v16 + 56))(v14, 1, 1, v15);
  v29 = sub_258F099A0();
  v30 = *(v16 + 8);
  v30(v20, v15);
  v31 = 0;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v31 = sub_258F099A0();
    v30(v14, v15);
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v29 endDate:v31 maxEvents:0 lastN:0 reversed:0];

  v33 = [v27 publisherWithUseCase:v28 options:v32];
  v52 = v33;

  v68 = sub_258E08D80;
  v69 = v22;
  v50[0] = v22;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v50[1] = &v66;
  v66 = sub_258E01EE8;
  v67 = &block_descriptor;
  v34 = _Block_copy(&aBlock);

  v51 = [v33 filterWithIsIncluded_];
  _Block_release(v34);
  v35 = v54;
  v36 = v55;
  v37 = v57;
  (*(v55 + 16))(v54, v56, v57);
  v39 = v61;
  v38 = v62;
  (*(v61 + 16))(v63, v58, v62);
  v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v41 = (v53 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v39 + 80) + v42 + 8) & ~*(v39 + 80);
  v44 = swift_allocObject();
  (*(v36 + 32))(v44 + v40, v35, v37);
  *(v44 + v41) = v50[0];
  v45 = v60;
  *(v44 + v42) = v60;
  (*(v39 + 32))(v44 + v43, v63, v38);
  v68 = sub_258E08DA0;
  v69 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_258E0915C;
  v67 = &block_descriptor_32;
  v46 = _Block_copy(&aBlock);

  v68 = sub_258E08EA4;
  v69 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_258E0915C;
  v67 = &block_descriptor_35;
  v47 = _Block_copy(&aBlock);

  v48 = v51;
  v49 = [v51 sinkWithCompletion:v46 receiveInput:v47];
  _Block_release(v47);
  _Block_release(v46);
}

id sub_258E01DE4(void *a1)
{
  result = [a1 eventBody];
  if (result)
  {
    v2 = result;
    v3 = [result availableAssetDailyStatus];

    if (v3)
    {
      v4 = [v3 statusReason];

      type metadata accessor for BMAvailableAssetStatusReason(0);
      v5 = sub_258F0A550();
      v7 = v6;
      swift_beginAccess();
      sub_258E05B1C(&v9, v5, v7);
      swift_endAccess();

      return (dword_286A28670 == v4 || unk_286A28674 == v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_258E01EE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_258E01F40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v7 = sub_258F0A350();
  v8 = sub_258F0A800();
  if (os_log_type_enabled(v7, v8))
  {
    v49 = v8;
    v9 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51[0] = v48;
    *v9 = 134218242;
    swift_beginAccess();
    *(v9 + 4) = *(*(a3 + 16) + 16);

    *(v9 + 12) = 2080;
    v10 = *(a3 + 16);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = sub_258E02E14(v11, 0);
      v47 = sub_258E07D74(&v50, v12 + 4, v11, v10);
      swift_bridgeObjectRetain_n();
      sub_258E08EAC();
      if (v47 != v11)
      {
        __break(1u);

        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = *(a3 + 16);

      v12 = MEMORY[0x277D84F90];
    }

    v50 = v12;
    sub_258E031F0(&v50);

    v14 = MEMORY[0x259C9DF80](v50, MEMORY[0x277D837D0]);
    v16 = v15;

    v17 = sub_258DE3018(v14, v16, v51);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_258DD8000, v7, v49, "Sink encountered %ld unique UAF reason types: %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x259C9EF40](v48, -1, -1);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  else
  {
  }

  v18 = [a1 state];
  if (v18 == 1)
  {
    v22 = [a1 error];
    if (v22)
    {
      v23 = v22;
      v24 = sub_258F0A350();
      v25 = sub_258F0A820();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = v23;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_258DD8000, v24, v25, "UAF stream read failed: %@", v26, 0xCu);
        sub_258DE2184(v27, &qword_27F988C78, &qword_258F11A20);
        MEMORY[0x259C9EF40](v27, -1, -1);
        v30 = v26;
LABEL_22:
        MEMORY[0x259C9EF40](v30, -1, -1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_258F0B820;
      v42 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_258F0A4F0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v43;
      *(inited + 48) = 0xD00000000000003ALL;
      *(inited + 56) = 0x8000000258F19C00;
      sub_258DFBCE0(inited);
      swift_setDeallocating();
      sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
      v44 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v45 = sub_258F0A4E0();
      v46 = sub_258F0A400();

      v23 = [v44 initWithDomain:v45 code:-2 userInfo:v46];

      v24 = sub_258F0A350();
      v37 = sub_258F0A830();
      if (os_log_type_enabled(v24, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = "BPSCompletion state is failure, but error property is nil.";
        goto LABEL_21;
      }
    }

LABEL_23:

    v50 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398);
    return sub_258F0A750();
  }

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_258F0B820;
    v32 = *MEMORY[0x277CCA450];
    *(v31 + 32) = sub_258F0A4F0();
    *(v31 + 72) = MEMORY[0x277D837D0];
    *(v31 + 40) = v33;
    *(v31 + 48) = 0xD00000000000003CLL;
    *(v31 + 56) = 0x8000000258F19BC0;
    sub_258DFBCE0(v31);
    swift_setDeallocating();
    sub_258DE2184(v31 + 32, &qword_27F988B98, &unk_258F0D3A0);
    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_258F0A4E0();
    v36 = sub_258F0A400();

    v23 = [v34 initWithDomain:v35 code:-1 userInfo:v36];

    v24 = sub_258F0A350();
    v37 = sub_258F0A820();
    if (os_log_type_enabled(v24, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "UAF stream encountered unknown completion state: \\(completion.state)";
LABEL_21:
      _os_log_impl(&dword_258DD8000, v24, v37, v39, v38, 2u);
      v30 = v38;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v19 = sub_258F0A350();
  v20 = sub_258F0A810();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    swift_beginAccess();
    *(v21 + 4) = *(*(a4 + 16) + 16);

    _os_log_impl(&dword_258DD8000, v19, v20, "UAF stream completed successfully. Found %ld events.", v21, 0xCu);
    MEMORY[0x259C9EF40](v21, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v51[3] = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398);
  return sub_258F0A760();
}

void sub_258E026B4(void *a1, uint64_t a2)
{
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 eventBody];
  if (v10)
  {
    v11 = v10;
    sub_258E0F638(v11, &v23);
    v12 = v24;
    if (v24)
    {
      v14 = v25;
      v13 = v26;
      v15 = v23;
      [a1 timestamp];
      sub_258F09910();
      sub_258F099E0();
      v17 = v16;
      (*(v5 + 8))(v9, v4);
      swift_beginAccess();
      v18 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_258DE255C(0, v18[2] + 1, 1, v18);
        *(a2 + 16) = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_258DE255C((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      v22 = &v18[5 * v21];
      v22[4] = v17;
      v22[5] = v15;
      v22[6] = v12;
      v22[7] = v14;
      v22[8] = v13;
      *(a2 + 16) = v18;
      swift_endAccess();
    }
  }
}

void sub_258E0289C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_258E02904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_258E029DC;

  return sub_258DFFDA4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_258E029DC(uint64_t a1)
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

uint64_t sub_258E02ADC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_258E02B04, 0, 0);
}

uint64_t sub_258E02B04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C60, &qword_258F0D390);
  *v7 = v0;
  v7[1] = sub_258E02C24;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000002FLL, 0x8000000258F19B30, sub_258E08D70, v5, v8);
}

uint64_t sub_258E02C24()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_258E02D5C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_258E02D40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_258E02D5C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

id StreamsBookmark.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = sub_258F0A140();
  *a1 = v3;

  return v3;
}

void *sub_258E02E14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888D0, &qword_258F0DBA0);
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

void sub_258E02EC0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_258E02EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E02F5C(uint64_t a1)
{
  v2 = type metadata accessor for AssetPenetrationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E02FCC(void **a1)
{
  v2 = *(type metadata accessor for AssetPenetrationData() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_258E07ECC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_258E0325C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_258E03074(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258E07EE0(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = sub_258F0AD50();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[5 * i + 4];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 4))
          {
            break;
          }

          v14 = v13[2];
          v15 = v13[5];
          v16 = *(v13 - 1);
          *(v13 + 1) = *(v13 - 2);
          v17 = *(v13 + 3);
          *(v13 + 3) = v16;
          v13[5] = *v13;
          *(v13 - 4) = v11;
          *(v13 - 3) = v14;
          *(v13 - 1) = v17;
          *v13 = v15;
          v13 -= 5;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 5;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988888, &unk_258F0DC00);
      v7 = sub_258F0A6F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_258E040E4(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_258E031F0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258E07EF4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_258E03388(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_258E0325C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_258F0AD50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AssetPenetrationData();
        v6 = sub_258F0A6F0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AssetPenetrationData() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_258E03770(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_258E03480(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258E03388(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_258F0AD50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_258F0A6F0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_258E046C8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_258E036A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258E03480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AssetPenetrationData();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v34 - v16;
  result = MEMORY[0x28223BE20](v15, v18);
  v22 = (&v34 - v21);
  v36 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v26 = -v24;
    v27 = a1 - a3;
    v35 = v24;
    v28 = v23 + v24 * a3;
LABEL_5:
    v39 = v25;
    v40 = a3;
    v37 = v28;
    v38 = v27;
    v29 = v27;
    while (1)
    {
      sub_258E02EF8(v28, v22);
      sub_258E02EF8(v25, v17);
      if (*(v22 + 56))
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v22[6];
      }

      v31 = *(v17 + 6);
      if (v17[56])
      {
        v32 = 0.0;
      }

      else
      {
        v32 = *(v17 + 6);
      }

      sub_258E02F5C(v17);
      result = sub_258E02F5C(v22);
      if (v30 > v32)
      {
LABEL_4:
        a3 = v40 + 1;
        v25 = v39 + v35;
        v27 = v38 - 1;
        v28 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v23)
      {
        break;
      }

      sub_258E09094(v28, v13);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_258E09094(v13, v25);
      v25 += v26;
      v28 += v26;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258E036A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_258F0AD80(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258E03770(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v131 = a1;
  v145 = type metadata accessor for AssetPenetrationData();
  v140 = *(v145 - 8);
  v9 = *(v140 + 64);
  v11 = MEMORY[0x28223BE20](v145, v10);
  v134 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v144 = &v126 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v126 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = (&v126 - v22);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v139 = &v126 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v138 = &v126 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v129 = &v126 - v32;
  result = MEMORY[0x28223BE20](v31, v33);
  v128 = &v126 - v35;
  v142 = a3;
  v36 = *(a3 + 8);
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_113:
    v5 = *v131;
    if (!*v131)
    {
      goto LABEL_152;
    }

    a3 = v38;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_146:
      result = sub_258E05680(a3);
    }

    v146 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v142)
      {
        v122 = *(result + 16 * a3);
        v123 = result;
        v124 = *(result + 16 * (a3 - 1) + 40);
        sub_258E04CA4(*v142 + *(v140 + 72) * v122, *v142 + *(v140 + 72) * *(result + 16 * (a3 - 1) + 32), *v142 + *(v140 + 72) * v124, v5);
        if (v6)
        {
        }

        if (v124 < v122)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_258E05680(v123);
        }

        if (a3 - 2 >= *(v123 + 2))
        {
          goto LABEL_140;
        }

        v125 = &v123[16 * a3];
        *v125 = v122;
        *(v125 + 1) = v124;
        v146 = v123;
        sub_258E055F4(a3 - 1);
        result = v146;
        a3 = *(v146 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_150;
    }
  }

  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v130 = a4;
  while (1)
  {
    v39 = v37;
    v40 = v37 + 1;
    v135 = v38;
    v132 = v39;
    if (v40 >= v36)
    {
      v36 = v40;
    }

    else
    {
      a3 = *v142;
      v41 = *(v140 + 72);
      v5 = *v142 + v41 * v40;
      v42 = v39;
      v43 = v128;
      sub_258E02EF8(v5, v128);
      v44 = a3 + v41 * v42;
      v45 = v129;
      sub_258E02EF8(v44, v129);
      v46 = *(v43 + 56) ? 0.0 : *(v43 + 48);
      v47 = *(v45 + 48);
      v48 = *(v45 + 56) ? 0.0 : *(v45 + 48);
      sub_258E02F5C(v45);
      result = sub_258E02F5C(v43);
      v49 = v132 + 2;
      v141 = v41;
      v50 = a3 + v41 * (v132 + 2);
      while (v36 != v49)
      {
        LODWORD(v143) = v46 <= v48;
        v51 = v138;
        sub_258E02EF8(v50, v138);
        a3 = v6;
        v52 = v36;
        v53 = v139;
        sub_258E02EF8(v5, v139);
        if (*(v51 + 56))
        {
          v54 = 0.0;
        }

        else
        {
          v54 = *(v51 + 48);
        }

        v55 = *(v53 + 48);
        if (*(v53 + 56))
        {
          v56 = 0.0;
        }

        else
        {
          v56 = *(v53 + 48);
        }

        v57 = v53;
        v36 = v52;
        v6 = a3;
        sub_258E02F5C(v57);
        result = sub_258E02F5C(v51);
        ++v49;
        v50 += v141;
        v5 += v141;
        if (((v143 ^ (v54 > v56)) & 1) == 0)
        {
          v36 = v49 - 1;
          break;
        }
      }

      v39 = v132;
      a4 = v130;
      if (v46 <= v48)
      {
        if (v36 < v132)
        {
          goto LABEL_143;
        }

        if (v132 < v36)
        {
          v127 = v6;
          v58 = v141 * (v36 - 1);
          v59 = v36 * v141;
          v143 = v36;
          v60 = v36;
          v61 = v132;
          v62 = v132 * v141;
          do
          {
            if (v61 != --v60)
            {
              a3 = *v142;
              if (!*v142)
              {
                goto LABEL_149;
              }

              v5 = a3 + v62;
              sub_258E09094(a3 + v62, v134);
              if (v62 < v58 || v5 >= a3 + v59)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_258E09094(v134, a3 + v58);
            }

            ++v61;
            v58 -= v141;
            v59 -= v141;
            v62 += v141;
          }

          while (v61 < v60);
          v6 = v127;
          a4 = v130;
          v39 = v132;
          v36 = v143;
        }
      }
    }

    v63 = v142[1];
    if (v36 < v63)
    {
      if (__OFSUB__(v36, v39))
      {
        goto LABEL_142;
      }

      if (v36 - v39 < a4)
      {
        if (__OFADD__(v39, a4))
        {
          goto LABEL_144;
        }

        if (v39 + a4 >= v63)
        {
          v64 = v142[1];
        }

        else
        {
          v64 = v39 + a4;
        }

        if (v64 < v39)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v36 != v64)
        {
          break;
        }
      }
    }

    v65 = v36;
    if (v36 < v39)
    {
      goto LABEL_141;
    }

LABEL_45:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v38 = v135;
    }

    else
    {
      result = sub_258DE2334(0, *(v135 + 2) + 1, 1, v135);
      v38 = result;
    }

    a3 = *(v38 + 2);
    v66 = *(v38 + 3);
    v67 = a3 + 1;
    if (a3 >= v66 >> 1)
    {
      result = sub_258DE2334((v66 > 1), a3 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 2) = v67;
    v68 = &v38[16 * a3];
    *(v68 + 4) = v132;
    *(v68 + 5) = v65;
    v136 = v65;
    v5 = *v131;
    if (!*v131)
    {
      goto LABEL_151;
    }

    if (a3)
    {
      while (1)
      {
        v69 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v38 + 4);
          v71 = *(v38 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_64:
          if (v73)
          {
            goto LABEL_130;
          }

          v86 = &v38[16 * v67];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_133;
          }

          v92 = &v38[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_137;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v67 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v96 = &v38[16 * v67];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_78:
        if (v91)
        {
          goto LABEL_132;
        }

        v99 = &v38[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_135;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_85:
        a3 = v69 - 1;
        if (v69 - 1 >= v67)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
          goto LABEL_145;
        }

        if (!*v142)
        {
          goto LABEL_148;
        }

        v107 = v38;
        v108 = *&v38[16 * a3 + 32];
        v109 = *&v38[16 * v69 + 40];
        sub_258E04CA4(*v142 + *(v140 + 72) * v108, *v142 + *(v140 + 72) * *&v38[16 * v69 + 32], *v142 + *(v140 + 72) * v109, v5);
        if (v6)
        {
        }

        if (v109 < v108)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_258E05680(v107);
        }

        if (a3 >= *(v107 + 2))
        {
          goto LABEL_127;
        }

        v110 = &v107[16 * a3];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        v146 = v107;
        result = sub_258E055F4(v69);
        v38 = v146;
        v67 = *(v146 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v38[16 * v67 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_128;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_129;
      }

      v81 = &v38[16 * v67];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_131;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_134;
      }

      if (v85 >= v77)
      {
        v103 = &v38[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_138;
        }

        if (v72 < v106)
        {
          v69 = v67 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v36 = v142[1];
    v37 = v136;
    a4 = v130;
    if (v136 >= v36)
    {
      goto LABEL_113;
    }
  }

  v127 = v6;
  a3 = *v142;
  v111 = *(v140 + 72);
  v112 = *v142 + v111 * (v36 - 1);
  v113 = -v111;
  v114 = v39 - v36;
  v143 = v36;
  v133 = v111;
  v115 = a3 + v36 * v111;
  v136 = v64;
LABEL_97:
  v5 = v115;
  v137 = v114;
  v116 = v114;
  v141 = v112;
  while (1)
  {
    sub_258E02EF8(v5, v23);
    sub_258E02EF8(v112, v19);
    if (*(v23 + 56))
    {
      v117 = 0.0;
    }

    else
    {
      v117 = v23[6];
    }

    v118 = *(v19 + 6);
    if (v19[56])
    {
      v119 = 0.0;
    }

    else
    {
      v119 = *(v19 + 6);
    }

    sub_258E02F5C(v19);
    result = sub_258E02F5C(v23);
    if (v117 > v119)
    {
LABEL_96:
      v112 = v141 + v133;
      v65 = v136;
      v114 = v137 - 1;
      v115 += v133;
      if (++v143 != v136)
      {
        goto LABEL_97;
      }

      v6 = v127;
      if (v136 < v132)
      {
        goto LABEL_141;
      }

      goto LABEL_45;
    }

    if (!a3)
    {
      break;
    }

    v120 = v144;
    sub_258E09094(v5, v144);
    swift_arrayInitWithTakeFrontToBack();
    sub_258E09094(v120, v112);
    v112 += v113;
    v5 += v113;
    if (__CFADD__(v116++, 1))
    {
      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_258E040E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_258E05680(v7);
      v7 = result;
    }

    v92 = (v7 + 16);
    v93 = *(v7 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v7 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_258E05190((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6);
      v10 = (*a3 + 40 * v8);
      v12 = *v10;
      v11 = v10 + 10;
      v13 = v12;
      v14 = v8 + 2;
      v15 = v9;
      while (v5 != v14)
      {
        v16 = *v11;
        v11 += 5;
        v17 = v16 >= v15;
        ++v14;
        v15 = v16;
        if ((((v9 < v13) ^ v17) & 1) == 0)
        {
          v6 = v14 - 1;
          if (v9 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 40 * v6;
        v19 = 40 * v8 + 32;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = *(v30 + v19 - 32);
            v24 = v30 + v18;
            v25 = *(v22 - 3);
            v26 = *v22;
            v27 = *(v22 - 1);
            v28 = *(v24 - 8);
            v29 = *(v24 - 24);
            *(v22 - 2) = *(v24 - 40);
            *(v22 - 1) = v29;
            *v22 = v28;
            *(v24 - 40) = v23;
            *(v24 - 32) = v25;
            *(v24 - 24) = v27;
            *(v24 - 8) = v26;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_258DE2334(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 16);
    v44 = *(v7 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_258DE2334((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v46;
    v47 = v7 + 32;
    v48 = (v7 + 32 + 16 * v45);
    *v48 = v8;
    v48[1] = v6;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 32);
          v51 = *(v7 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v7 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v7 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
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

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_258E05190((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v7 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v7 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v7 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v99;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v6 - 40;
  v33 = v8 - v6;
LABEL_30:
  v34 = *(v31 + 40 * v6);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = v36 + 40;
    if (v34 >= *v36)
    {
LABEL_29:
      ++v6;
      v32 += 40;
      --v33;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v36 + 48);
    v39 = *(v36 + 72);
    v40 = *(v36 + 56);
    v41 = *(v36 + 16);
    *v37 = *v36;
    *(v36 + 56) = v41;
    v42 = *(v36 + 32);
    *v36 = v34;
    *(v36 + 8) = v38;
    *(v36 + 16) = v40;
    *(v36 + 32) = v39;
    v36 -= 40;
    *(v37 + 32) = v42;
    if (__CFADD__(v35++, 1))
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