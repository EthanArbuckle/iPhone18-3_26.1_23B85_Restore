uint64_t sub_2488089A4(uint64_t a1)
{
  v2 = sub_24880BE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2488089E0(uint64_t a1)
{
  v2 = sub_24880BE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DepthIntervalSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F80, &qword_24882C980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880BE6C();
  sub_24882B568();
  LOBYTE(v18) = 0;
  sub_24882AA88();
  sub_24880C9F4(&qword_27EEA9F90, MEMORY[0x277CC88A8]);
  sub_24882B488();
  if (!v2)
  {
    v14 = (v3 + *(type metadata accessor for DepthIntervalSummary() + 20));
    v15 = *(v14 + 16);
    v18 = *v14;
    v19 = v15;
    v17[15] = 1;
    sub_24880BEC0();
    sub_24882B458();
  }

  return (*(v6 + 8))(v12, v5);
}

uint64_t DepthIntervalSummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_24882AA88();
  v32 = *(v34 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v34, v5, v6, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9FA0, &qword_24882C988);
  v33 = *(v35 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v35, v11, v12, v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for DepthIntervalSummary();
  v17 = *(*(v16 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v16 - 8, v18, v19, v20);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v23[*(v21 + 28)];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880BE6C();
  sub_24882B558();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v32;
  LOBYTE(v36) = 0;
  sub_24880C9F4(&qword_27EEA9FA8, MEMORY[0x277CC88A8]);
  v27 = v34;
  sub_24882B418();
  (*(v26 + 32))(v23, v9, v27);
  v38 = 1;
  sub_24880BF14();
  sub_24882B3E8();
  (*(v33 + 8))(v15, v35);
  v28 = v37;
  *v24 = v36;
  v24[16] = v28;
  sub_24880BF68(v23, v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_24880BFCC(v23);
}

uint64_t sub_248808F84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24882AB78();
  v4 = *(*(v3 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v3 - 8, v5, v6, v7);
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v12 = sub_24882AA88();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v18 = MEMORY[0x28223BE20](v12, v15, v16, v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21, v22, v23);
  v25 = &v52 - v24;
  v26 = [v1 startDate];
  sub_24882AB58();

  v27 = [v1 endDate];
  sub_24882AB58();

  sub_24882AA58();
  v28 = [v1 minimumQuantity];
  if (v28)
  {
    v29 = v28;
    v30 = [v1 maximumQuantity];
    if (v30)
    {
      v31 = v30;
      (*(v13 + 16))(a1, v25, v12);
      v32 = objc_opt_self();
      v33 = [v32 meterUnit];
      [v29 doubleValueForUnit_];
      v35 = v34;

      v36 = [v32 meterUnit];
      [v31 doubleValueForUnit_];
      v38 = v37;

      (*(v13 + 8))(v25, v12);
      result = type metadata accessor for DepthIntervalSummary();
      v40 = a1 + *(result + 20);
      *v40 = v35;
      *(v40 + 8) = v38;
      *(v40 + 16) = 0;
      return result;
    }
  }

  if (qword_27EEA9958 != -1)
  {
    swift_once();
  }

  v41 = sub_24882AC88();
  __swift_project_value_buffer(v41, qword_27EEAA828);
  (*(v13 + 16))(v20, v25, v12);
  v42 = sub_24882AC68();
  v43 = sub_24882B148();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v44 = 136315138;
    sub_24880C9F4(&qword_27EEAA060, MEMORY[0x277CC88A8]);
    v45 = sub_24882B498();
    v46 = a1;
    v48 = v47;
    (*(v13 + 8))(v20, v12);
    v49 = sub_2487F852C(v45, v48, &v53);
    a1 = v46;

    *(v44 + 4) = v49;
    _os_log_impl(&dword_2487F4000, v42, v43, "DiveGraphDataProvider: Statistics exists for interval, but min/max not populated for dateInterval=%s", v44, 0xCu);
    v50 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x24C1DA290](v50, -1, -1);
    MEMORY[0x24C1DA290](v44, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v20, v12);
  }

  (*(v13 + 32))(a1, v25, v12);
  result = type metadata accessor for DepthIntervalSummary();
  v51 = a1 + *(result + 20);
  *v51 = 0;
  *(v51 + 8) = 0;
  *(v51 + 16) = 1;
  return result;
}

uint64_t sub_248809448(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_24882AB78();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA000, &qword_24882CCF0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_24882AE38();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA008, &qword_24882CCF8) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA010, &qword_24882CD00) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_24882AAA8();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA018, &qword_24882CD08);
  v3[19] = v16;
  v17 = *(v16 - 8);
  v3[20] = v17;
  v18 = *(v17 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2488096EC, 0, 0);
}

uint64_t sub_2488096EC()
{
  if (v0[3])
  {
    v1 = v0[21];
    v2 = v0[4];
    v3 = v0[2];
    v4 = objc_opt_self();
    v0[22] = v4;
    v5 = sub_24882AB98();
    v6 = [v4 predicateForObjectWithUUID_];
    v0[23] = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA020, &qword_24882CD10);
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA028, &qword_24882CD18) - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_24882BFD0;
    sub_2487FCC20(0, &qword_27EEAA030, 0x277CCD8D8);
    v10 = [swift_getObjCClassFromMetadata() workoutType];
    sub_2487FCC20(0, &qword_27EEAA038, 0x277CCD8A8);
    v11 = v6;
    sub_24882ADC8();

    sub_24882ADF8();
    v12 = *(v2 + 16);
    v0[24] = v12;
    v13 = *(MEMORY[0x277CCB608] + 4);
    v14 = v12;
    v15 = swift_task_alloc();
    v0[25] = v15;
    *v15 = v0;
    v15[1] = sub_248809A90;
    v16 = v0[21];
    v17 = v0[19];

    return MEMORY[0x282120380](v14, v17);
  }

  else
  {
    if (qword_27EEA9958 != -1)
    {
      swift_once();
    }

    v18 = sub_24882AC88();
    __swift_project_value_buffer(v18, qword_27EEAA828);
    v19 = sub_24882AC68();
    v20 = sub_24882B138();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2487F4000, v19, v20, "DiveGraphDataProvider: 0 intervals requested, returning empty summary array", v21, 2u);
      MEMORY[0x24C1DA290](v21, -1, -1);
    }

    v22 = v0[21];
    v23 = v0[17];
    v24 = v0[18];
    v26 = v0[13];
    v25 = v0[14];
    v27 = v0[12];
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[7];

    v31 = v0[1];
    v32 = MEMORY[0x277D84F90];

    return v31(v32);
  }
}

uint64_t sub_248809A90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v5 = *(*v2 + 192);
  v8 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v6 = sub_24880A3DC;
  }

  else
  {
    v6 = sub_248809BC0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_248809BC0()
{
  v1 = v0[26];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v30 = v0[26];
    }

    v2 = sub_24882B358();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    v31 = v0[26];
    v29 = v0[23];

    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C1D9A30](0, v0[26]);
    v44 = v0[26];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v3 = *(v0[26] + 32);
  }

  v0[28] = v3;

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v0[29] = v4;
  if (v4)
  {
    v5 = v4;
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[3];
    [v4 duration];
    v10 = ceil(v9 / v8);
    v11 = sub_24882AC48();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_24882AC58();
    v2 = (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v10 > -9.22337204e18)
      {
        if (v10 < 9.22337204e18)
        {
          v13 = v0[22];
          v14 = v0[18];
          v15 = v0[16];
          v57 = v0[17];
          v58 = v0[15];
          v17 = v0[13];
          v16 = v0[14];
          v18 = v0[9];
          v56 = v0[8];
          v59 = v0[12];
          v60 = v0[4];
          LOBYTE(v55) = 1;
          LOBYTE(v54) = 1;
          LOBYTE(v53) = 1;
          LOBYTE(v52) = 1;
          LOBYTE(v51) = 1;
          LOBYTE(v50) = 1;
          LOBYTE(v49) = 1;
          LOBYTE(v48) = 0;
          LOBYTE(v47) = 1;
          LOBYTE(v46) = 1;
          LOBYTE(v45) = 1;
          sub_24882AA98();
          v19 = [v13 predicateForObjectsFromWorkout_];
          v0[30] = v19;
          sub_2487FCC20(0, &qword_27EEA9C70, 0x277CCD830);
          v20 = MEMORY[0x24C1D98C0](*MEMORY[0x277CCCC90]);
          sub_2487FCC20(0, &qword_27EEAA040, 0x277CCD800);
          v21 = v19;
          sub_24882ADC8();

          v22 = v3;
          v23 = [v5 startDate];
          sub_24882AB58();

          (*(v15 + 16))(v57, v14, v58);
          sub_24882AE28();
          v24 = *(v60 + 16);
          v0[31] = v24;
          v25 = *(MEMORY[0x277CCB678] + 4);
          v26 = v24;
          v27 = swift_task_alloc();
          v0[32] = v27;
          *v27 = v0;
          v27[1] = sub_24880A09C;
          v28 = v0[12];
          v2 = v26;

          return MEMORY[0x2821204E8](v2);
        }

LABEL_25:
        __break(1u);
        return MEMORY[0x2821204E8](v2);
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v0[23];

LABEL_18:
  (*(v0[20] + 8))(v0[21], v0[19]);
  v32 = v0[21];
  v33 = v0[17];
  v34 = v0[18];
  v36 = v0[13];
  v35 = v0[14];
  v37 = v0[12];
  v39 = v0[8];
  v38 = v0[9];
  v40 = v0[7];

  v41 = v0[1];
  v42 = MEMORY[0x277D84F90];

  return v41(v42);
}

uint64_t sub_24880A09C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *(*v2 + 248);
  v7 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {

    v8 = sub_24880A4D4;
  }

  else
  {
    *(v4 + 272) = a1;
    v8 = sub_24880A1EC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24880A1EC()
{
  v1 = *(v0 + 272);
  v25 = *(v0 + 264);
  v2 = *(v0 + 224);
  v28 = *(v0 + 240);
  v29 = *(v0 + 184);
  v3 = *(v0 + 144);
  v34 = *(v0 + 152);
  v35 = *(v0 + 168);
  v4 = *(v0 + 128);
  v32 = *(v0 + 120);
  v33 = *(v0 + 160);
  v5 = *(v0 + 88);
  v30 = *(v0 + 80);
  v31 = *(v0 + 96);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v27 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = [*(v0 + 232) startDate];

  sub_24882AB58();
  v10 = v3;
  v11 = v3;
  v12 = v25;
  v26 = sub_24880C388(v1, v7, v11, v8);

  (*(v6 + 8))(v7, v27);
  (*(v5 + 8))(v31, v30);
  (*(v4 + 8))(v10, v32);
  (*(v33 + 8))(v35, v34);
  v13 = *(v0 + 168);
  v14 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 104);
  v16 = *(v0 + 112);
  v18 = *(v0 + 96);
  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 56);

  v23 = *(v0 + 8);
  if (!v12)
  {
    v22 = v26;
  }

  return v23(v22);
}

uint64_t sub_24880A3DC()
{
  v1 = *(v0 + 216);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24880A4D4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 80);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v9 = *(v0 + 264);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v10 = *(v0 + 168);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v15 = *(v0 + 96);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 56);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24880A61C(uint64_t a1, void (*a2)(void), uint64_t a3, void **a4)
{
  v73 = a4;
  v81 = a2;
  v5 = sub_24882AAA8();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v74 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24882AC48();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](v11, v13, v14, v15);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA050, &qword_24882CD28);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20, v21, v22);
  v24 = v72 - v23;
  v25 = sub_24882AB78();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v31 = MEMORY[0x28223BE20](v25, v28, v29, v30);
  v80 = (v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x28223BE20](v31, v33, v34, v35);
  v38 = v72 - v37;
  MEMORY[0x28223BE20](v36, v39, v40, v41);
  v43 = v72 - v42;
  sub_24882AC28();
  swift_beginAccess();
  v44 = *(v26 + 16);
  v77 = a3;
  v44(v38, a3, v25);
  sub_24882AC08();
  v72[0] = *(v26 + 8);
  v72[1] = v26 + 8;
  (v72[0])(v38, v25);
  (*(v78 + 8))(v17, v79);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v80 = v44;
    sub_24880C924(v24, &qword_27EEAA050, &qword_24882CD28);
    if (qword_27EEA9958 != -1)
    {
      swift_once();
    }

    v45 = sub_24882AC88();
    __swift_project_value_buffer(v45, qword_27EEAA828);
    v46 = v74;
    v47 = v75;
    v48 = v76;
    (*(v75 + 16))(v74, v81, v76);
    v49 = sub_24882AC68();
    v50 = sub_24882B148();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = v81;
      *v51 = 136315394;
      LODWORD(v79) = v50;
      v52 = v77;
      swift_beginAccess();
      v53 = v25;
      v80(v38, v52, v25);
      sub_24880C9F4(&qword_27EEAA070, MEMORY[0x277CC9578]);
      v54 = sub_24882B498();
      v56 = v55;
      (v72[0])(v38, v53);
      v57 = sub_2487F852C(v54, v56, &v82);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2080;
      sub_24880C9F4(&qword_27EEAA078, MEMORY[0x277CC8990]);
      v58 = v76;
      v59 = sub_24882B498();
      v61 = v60;
      (*(v47 + 8))(v46, v58);
      v62 = sub_2487F852C(v59, v61, &v82);

      *(v51 + 14) = v62;
      _os_log_impl(&dword_2487F4000, v49, v79, "DepthGraphDataProvider: Failed to create endDate from startDate=%s using components=%s", v51, 0x16u);
      v63 = v81;
      swift_arrayDestroy();
      MEMORY[0x24C1DA290](v63, -1, -1);
      MEMORY[0x24C1DA290](v51, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v46, v48);
    }

    sub_24880C8D0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v81 = *(v26 + 32);
    (v81)(v43, v24, v25);
    v44(v80, v43, v25);
    v64 = v73;
    v65 = *v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v64 = v65;
    v67 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = sub_248828D60(0, v65[2] + 1, 1, v65);
      *v64 = v65;
    }

    v69 = v65[2];
    v68 = v65[3];
    if (v69 >= v68 >> 1)
    {
      v65 = sub_248828D60(v68 > 1, v69 + 1, 1, v65);
      *v64 = v65;
    }

    v65[2] = v69 + 1;
    v81(v65 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v69);
    v70 = v77;
    swift_beginAccess();
    return (*(v26 + 40))(v70, v43, v67);
  }
}

uint64_t sub_24880AD20(uint64_t *a1)
{
  v2 = sub_24882AA88();
  v3 = *(v2 - 8);
  v106 = v2;
  v107 = v3;
  v4 = *(v3 + 64);
  v8 = MEMORY[0x28223BE20](v2, v5, v6, v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11, v12, v13);
  v15 = &v86 - v14;
  v113 = sub_24882AB78();
  v109 = *(v113 - 8);
  v16 = *(v109 + 64);
  v20 = MEMORY[0x28223BE20](v113, v17, v18, v19);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v20, v23, v24, v25);
  v105 = &v86 - v27;
  v31 = MEMORY[0x28223BE20](v26, v28, v29, v30);
  v104 = &v86 - v32;
  MEMORY[0x28223BE20](v31, v33, v34, v35);
  v93 = &v86 - v36;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA068, &unk_24882CD30);
  v37 = *(*(v103 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v103, v38, v39, v40);
  v100 = &v86 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v41, v43, v44, v45);
  v91 = &v86 - v47;
  MEMORY[0x28223BE20](v46, v48, v49, v50);
  v90 = &v86 - v51;
  v52 = a1[4] >> 1;
  v108 = a1[3];
  v53 = v52 - v108;
  if (__OFSUB__(v52, v108))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v54 = *a1;
  v88 = a1[1];
  v102 = a1[2];
  v110 = v54;
  v55 = *(v54 + 16);
  if (v53 >= v55)
  {
    v56 = *(v54 + 16);
  }

  else
  {
    v56 = v52 - v108;
  }

  v114 = MEMORY[0x277D84F90];
  sub_2487FC248(0, v56 & ~(v56 >> 63), 0);
  if ((v53 & 0x8000000000000000) == 0)
  {
    v57 = v114;
    v92 = v52;
    v101 = v55;
    v89 = v15;
    if (v56)
    {
      v87 = v53;
      v112 = v109 + 16;
      v94 = v107 + 32;
      v95 = (v109 + 32);
      v99 = &v108[-v52];
      if (v108 <= v52)
      {
        v58 = v52;
      }

      else
      {
        v58 = v108;
      }

      v98 = (v58 - v108);

      result = swift_unknownObjectRetain();
      v60 = 0;
      v111 = v56;
      v96 = v10;
      v97 = v22;
      v61 = v100;
      while (v55 != v60)
      {
        v62 = v60 + v99;
        v63 = *(v109 + 72);
        v64 = *(v109 + 16);
        v64(v22, v110 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + v63 * v60, v113);
        if (!v62)
        {
          goto LABEL_38;
        }

        if (v98 == v60)
        {
          __break(1u);
          goto LABEL_33;
        }

        v65 = v102 + v63 * (v60 + v108);
        v66 = *(v103 + 48);
        v67 = v113;
        (*v95)(v61, v22, v113);
        v64((v61 + v66), v65, v67);
        v64(v104, v61, v67);
        v68 = v67;
        v69 = v96;
        v64(v105, v61 + v66, v68);
        sub_24882AA58();
        sub_24880C924(v61, &qword_27EEAA068, &unk_24882CD30);
        v114 = v57;
        v71 = *(v57 + 16);
        v70 = *(v57 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_2487FC248(v70 > 1, v71 + 1, 1);
          v57 = v114;
        }

        v60 = (v60 + 1);
        *(v57 + 16) = v71 + 1;
        result = (*(v107 + 32))(v57 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v71, v69, v106);
        v56 = v111;
        v55 = v101;
        v22 = v97;
        if (v111 == v60)
        {
          v99 = v60 + v108;
          v52 = v92;
          if (v101 > v87)
          {
            goto LABEL_20;
          }

          goto LABEL_31;
        }
      }

      goto LABEL_39;
    }

    swift_unknownObjectRetain();
    v99 = v108;
    if (v55 <= v53)
    {
LABEL_31:
      swift_unknownObjectRelease();

      return v57;
    }

LABEL_20:
    v112 = v109 + 16;
    v97 = (v107 + 32);
    v98 = (v109 + 32);
    v72 = v99;
    while (v56 < v55)
    {
      v73 = *(v109 + 72);
      v74 = *(v109 + 16);
      v74(v93, v110 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + v73 * v56, v113);
      if (__OFADD__(v56, 1))
      {
        goto LABEL_34;
      }

      if (v52 == v72)
      {
        (*(v109 + 8))(v93, v113);
        goto LABEL_31;
      }

      if (v99 < v108 || v72 >= v52)
      {
        goto LABEL_35;
      }

      v100 = (v56 + 1);
      v111 = v56;
      v75 = v103;
      v76 = v102 + v73 * v72;
      v77 = *(v103 + 48);
      v78 = v91;
      v79 = v113;
      (*v98)(v91, v93, v113);
      v74(&v78[v77], v76, v79);
      v80 = v78;
      v81 = v90;
      sub_24880C984(v80, v90);
      v82 = *(v75 + 48);
      v22 = v104;
      v74(v104, v81, v79);
      v74(v105, v81 + v82, v79);
      v83 = v89;
      sub_24882AA58();
      sub_24880C924(v81, &qword_27EEAA068, &unk_24882CD30);
      v114 = v57;
      v85 = *(v57 + 16);
      v84 = *(v57 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_2487FC248(v84 > 1, v85 + 1, 1);
        v57 = v114;
      }

      *(v57 + 16) = v85 + 1;
      (*(v107 + 32))(v57 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v85, v83, v106);
      v56 = v111 + 1;
      ++v72;
      v55 = v101;
      v52 = v92;
      if (v100 == v101)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  result = (*(v109 + 8))(v22, v113);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_24880B4C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a2;
  v94 = a3;
  v95 = a4;
  v6 = sub_24882AA88();
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = *(v90 + 64);
  MEMORY[0x28223BE20](v6, v8, v9, v10);
  v89 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24882AB78();
  v97 = *(v12 - 8);
  v98 = v12;
  v13 = *(v97 + 64);
  MEMORY[0x28223BE20](v12, v14, v15, v16);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24882AC48();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22, v23, v24);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA050, &qword_24882CD28);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29, v30, v31);
  v96 = &v89 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA008, &qword_24882CCF8);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35, v36, v37);
  v39 = &v89 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA010, &qword_24882CD00);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8, v42, v43, v44);
  v46 = &v89 - v45;
  v47 = sub_24882AAA8();
  v99 = *(v47 - 8);
  v100 = v47;
  v48 = *(v99 + 64);
  MEMORY[0x28223BE20](v47, v49, v50, v51);
  v101 = a1;
  v102 = &v89 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24882AA78();
  *v54.i64 = v53 * 0.5;
  *v55.i64 = *v54.i64 - trunc(*v54.i64);
  v56.f64[0] = NAN;
  v56.f64[1] = NAN;
  v57 = *vbslq_s8(vnegq_f64(v56), v55, v54).i64 * 1000000000.0;
  if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v57 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v92 = v4;
  (*(v20 + 56))(v46, 1, 1, v19);
  v58 = sub_24882AC58();
  (*(*(v58 - 8) + 56))(v39, 1, 1, v58);
  sub_24882AA98();
  sub_24882AC28();
  sub_24882AA68();
  v59 = v96;
  sub_24882AC08();
  v61 = v97;
  v60 = v98;
  v62 = *(v97 + 8);
  v62(v18, v98);
  v63 = v26;
  v64 = v60;
  (*(v20 + 8))(v63, v19);
  LODWORD(v60) = (*(v61 + 48))(v59, 1, v60);
  sub_24880C924(v59, &qword_27EEAA050, &qword_24882CD28);
  if (v60 == 1)
  {
    sub_24880C8D0();
    v65 = swift_allocError();
    swift_willThrow();
    result = (*(v99 + 8))(v102, v100);
    *v94 = v65;
    return result;
  }

  sub_24882AA68();
  v67 = sub_24882AB28();
  v62(v18, v64);
  v68 = [v93 statisticsForDate_];

  if (v68)
  {
    sub_248808F84(v95);

    return (*(v99 + 8))(v102, v100);
  }

  if (qword_27EEA9958 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v69 = sub_24882AC88();
  __swift_project_value_buffer(v69, qword_27EEAA828);
  v71 = v89;
  v70 = v90;
  v72 = *(v90 + 16);
  v73 = v101;
  v74 = v91;
  v72(v89, v101, v91);
  v75 = sub_24882AC68();
  v76 = sub_24882B148();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v98 = v72;
    v79 = v78;
    v103 = v78;
    *v77 = 136315138;
    sub_24880C9F4(&qword_27EEAA060, MEMORY[0x277CC88A8]);
    v80 = sub_24882B498();
    v81 = v71;
    v83 = v82;
    (*(v70 + 8))(v81, v74);
    v84 = sub_2487F852C(v80, v83, &v103);

    *(v77 + 4) = v84;
    _os_log_impl(&dword_2487F4000, v75, v76, "DepthGraphDataProvider: Filling interval gap for interval=%s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    v85 = v79;
    v72 = v98;
    MEMORY[0x24C1DA290](v85, -1, -1);
    v86 = v77;
    v73 = v101;
    MEMORY[0x24C1DA290](v86, -1, -1);
  }

  else
  {

    (*(v70 + 8))(v71, v74);
  }

  (*(v99 + 8))(v102, v100);
  v87 = v95;
  v72(v95, v73, v74);
  result = type metadata accessor for DepthIntervalSummary();
  v88 = v87 + *(result + 20);
  *v88 = 0;
  *(v88 + 8) = 0;
  *(v88 + 16) = 1;
  return result;
}

uint64_t sub_24880BCEC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24880BD24()
{
  result = qword_27EEA9F60;
  if (!qword_27EEA9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F60);
  }

  return result;
}

unint64_t sub_24880BD78()
{
  result = qword_27EEA9F68;
  if (!qword_27EEA9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F68);
  }

  return result;
}

unint64_t sub_24880BDCC()
{
  result = qword_27EEA9F78;
  if (!qword_27EEA9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F78);
  }

  return result;
}

uint64_t type metadata accessor for DepthIntervalSummary()
{
  result = qword_27EEA9FB8;
  if (!qword_27EEA9FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24880BE6C()
{
  result = qword_27EEA9F88;
  if (!qword_27EEA9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F88);
  }

  return result;
}

unint64_t sub_24880BEC0()
{
  result = qword_27EEA9F98;
  if (!qword_27EEA9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F98);
  }

  return result;
}

unint64_t sub_24880BF14()
{
  result = qword_27EEA9FB0;
  if (!qword_27EEA9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FB0);
  }

  return result;
}

uint64_t sub_24880BF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DepthIntervalSummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24880BFCC(uint64_t a1)
{
  v2 = type metadata accessor for DepthIntervalSummary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24880C060()
{
  sub_24882AA88();
  if (v0 <= 0x3F)
  {
    sub_24880C0E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24880C0E4()
{
  if (!qword_27EEA9FC8)
  {
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEA9FC8);
    }
  }
}

unint64_t sub_24880C17C()
{
  result = qword_27EEA9FD0;
  if (!qword_27EEA9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FD0);
  }

  return result;
}

unint64_t sub_24880C1D4()
{
  result = qword_27EEA9FD8;
  if (!qword_27EEA9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FD8);
  }

  return result;
}

unint64_t sub_24880C22C()
{
  result = qword_27EEA9FE0;
  if (!qword_27EEA9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FE0);
  }

  return result;
}

unint64_t sub_24880C284()
{
  result = qword_27EEA9FE8;
  if (!qword_27EEA9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FE8);
  }

  return result;
}

unint64_t sub_24880C2DC()
{
  result = qword_27EEA9FF0;
  if (!qword_27EEA9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FF0);
  }

  return result;
}

unint64_t sub_24880C334()
{
  result = qword_27EEA9FF8;
  if (!qword_27EEA9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FF8);
  }

  return result;
}

size_t sub_24880C388(void *a1, char *a2, char *a3, uint64_t a4)
{
  v43 = a2;
  v49 = a3;
  v47 = a1;
  v46 = sub_24882AA88();
  v48 = *(v46 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v46, v6, v7, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DepthIntervalSummary();
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11 - 8, v13, v14, v15);
  v50 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24882AB78();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  MEMORY[0x28223BE20](v17, v20, v21, v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v18 + 2);
  v25(v24, v43, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA048, &qword_24882CD20);
  v26 = *(v18 + 9);
  v43 = v18;
  v27 = (v43[80] + 32) & ~v43[80];
  v28 = swift_allocObject();
  *(v28 + 1) = xmmword_24882BFD0;
  v25(v28 + v27, v24, v17);
  v54 = v28;
  if (a4)
  {
    v29 = v44;
    while (1)
    {
      sub_24880A61C(&v52, v49, v24, &v54);
      if (v29)
      {
        break;
      }

      if (!--a4)
      {
        v42 = v24;
        v28 = v54;
        goto LABEL_7;
      }
    }

    (*(v43 + 1))(v24, v17);
    return v17;
  }

  v42 = v24;
  v29 = v44;
LABEL_7:
  v30 = v28[2];
  v53[0] = v28;
  v53[1] = v28;
  v53[2] = v28 + v27;
  v53[3] = v30 != 0;
  v53[4] = (2 * v30) | 1;

  v31 = sub_24880AD20(v53);
  v32 = v29;

  v33 = *(v31 + 16);
  if (!v33)
  {

    (*(v43 + 1))(v42, v17);
    return MEMORY[0x277D84F90];
  }

  v40 = v28;
  v41 = v17;
  v52 = MEMORY[0x277D84F90];
  result = sub_2487FC28C(0, v33, 0);
  v35 = 0;
  v17 = v52;
  v49 = (v31 + ((*(v48 + 80) + 32) & ~*(v48 + 80)));
  v44 = v48 + 16;
  v36 = (v48 + 8);
  while (v35 < *(v31 + 16))
  {
    v37 = v46;
    (*(v48 + 16))(v10, &v49[*(v48 + 72) * v35], v46);
    sub_24880B4C4(v10, v47, &v51, v50);
    if (v32)
    {
      (*v36)(v10, v37);

      (*(v43 + 1))(v42, v41);
      return v17;
    }

    v32 = 0;
    (*v36)(v10, v37);
    v52 = v17;
    v39 = *(v17 + 16);
    v38 = *(v17 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_2487FC28C(v38 > 1, v39 + 1, 1);
      v17 = v52;
    }

    ++v35;
    *(v17 + 16) = v39 + 1;
    result = sub_24880C86C(v50, v17 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v39);
    if (v33 == v35)
    {

      (*(v43 + 1))(v42, v41);
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24880C86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DepthIntervalSummary();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24880C8D0()
{
  result = qword_27EEAA058;
  if (!qword_27EEAA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA058);
  }

  return result;
}

uint64_t sub_24880C924(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24880C984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA068, &unk_24882CD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24880C9F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24880CA50()
{
  result = qword_27EEAA080;
  if (!qword_27EEAA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA080);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BatteryLevel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BatteryLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_24880CB74(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24880CB8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

id WaterTemperatureUnit.unitTemperature.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = &selRef_fahrenheit;
  if (!v1)
  {
    v3 = &selRef_celsius;
  }

  v4 = [v2 *v3];

  return v4;
}

void Temperature.temperature.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_24880CCC8()
{
  if (*v0)
  {
    result = 0x74617265706D6574;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t sub_24880CD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

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

uint64_t sub_24880CDEC(uint64_t a1)
{
  v2 = sub_24880D264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880CE28(uint64_t a1)
{
  v2 = sub_24880D264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24880CE64(uint64_t a1)
{
  v2 = sub_24880D2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880CEA0(uint64_t a1)
{
  v2 = sub_24880D2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24880CEDC(uint64_t a1)
{
  v2 = sub_24880D30C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880CF18(uint64_t a1)
{
  v2 = sub_24880D30C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Temperature.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA088, &qword_24882CE30);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v33 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA090, &qword_24882CE38);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9, v11, v12, v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA098, &qword_24882CE40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19, v20, v21);
  v23 = &v30 - v22;
  v24 = *v1;
  v25 = *(v1 + 8);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880D264();
  sub_24882B568();
  if (v25)
  {
    v36 = 0;
    sub_24880D30C();
    sub_24882B438();
    (*(v31 + 8))(v15, v32);
  }

  else
  {
    v38 = 1;
    sub_24880D2B8();
    v28 = v33;
    sub_24882B438();
    v37 = v24;
    sub_2487FF4B8();
    v29 = v35;
    sub_24882B488();
    (*(v34 + 8))(v28, v29);
  }

  return (*(v17 + 8))(v23, v16);
}

unint64_t sub_24880D264()
{
  result = qword_27EEAA0A0;
  if (!qword_27EEAA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0A0);
  }

  return result;
}

unint64_t sub_24880D2B8()
{
  result = qword_27EEAA0A8;
  if (!qword_27EEAA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0A8);
  }

  return result;
}

unint64_t sub_24880D30C()
{
  result = qword_27EEAA0B0;
  if (!qword_27EEAA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0B0);
  }

  return result;
}

uint64_t Temperature.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0B8, &qword_24882CE48);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = &v43[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0C0, &qword_24882CE50);
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11, v13, v14, v15);
  v17 = &v43[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0C8, &qword_24882CE58);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21, v22, v23);
  v25 = &v43[-v24];
  v26 = a1[3];
  v27 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24880D264();
  v28 = v49;
  sub_24882B558();
  if (!v28)
  {
    v49 = v19;
    v30 = v47;
    v29 = v48;
    v31 = sub_24882B428();
    v32 = (2 * *(v31 + 16)) | 1;
    v51 = v31;
    v52 = v31 + 32;
    v53 = 0;
    v54 = v32;
    v33 = sub_2487FF248();
    v34 = v25;
    if (v33 == 2 || v53 != v54 >> 1)
    {
      v38 = sub_24882B2E8();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60) + 48);
      *v40 = &type metadata for Temperature;
      sub_24882B3C8();
      sub_24882B2D8();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v49 + 8))(v25, v18);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = v33;
      if (v33)
      {
        LOBYTE(v55) = 1;
        sub_24880D2B8();
        sub_24882B3B8();
        v35 = v29;
        sub_2487FF5B4();
        v36 = v45;
        sub_24882B418();
        (*(v46 + 8))(v10, v36);
        (*(v49 + 8))(v34, v18);
        swift_unknownObjectRelease();
        v37 = v55;
      }

      else
      {
        LOBYTE(v55) = 0;
        sub_24880D30C();
        sub_24882B3B8();
        v35 = v29;
        (*(v30 + 8))(v17, v11);
        (*(v49 + 8))(v34, v18);
        swift_unknownObjectRelease();
        v37 = 0;
      }

      *v35 = v37;
      *(v35 + 8) = (v44 & 1) == 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v50);
}

uint64_t static Temperature.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  return *a1 != *a2 && *a1 < *a2;
}

BOOL static Temperature.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_24880D8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  return *a1 < *a2;
}

uint64_t sub_24880D900(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3)
  {
    if (v2)
    {
      return 1;
    }

    return v3 & (v2 ^ 1) ^ 1u;
  }

  if (v2)
  {
    return v3 & (v2 ^ 1) ^ 1u;
  }

  if (*a2 == *a1)
  {
    return 1;
  }

  return *a2 >= *a1;
}

uint64_t sub_24880D94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      return 1;
    }

    return v2 & (v3 ^ 1) ^ 1u;
  }

  if (v3)
  {
    return v2 & (v3 ^ 1) ^ 1u;
  }

  if (*a1 == *a2)
  {
    return 1;
  }

  return *a1 >= *a2;
}

uint64_t sub_24880D998(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3)
  {
    if (v2)
    {
      return 0;
    }

    return v3 & (v2 ^ 1u);
  }

  if (v2)
  {
    return v3 & (v2 ^ 1u);
  }

  if (*a2 == *a1)
  {
    return 0;
  }

  return *a2 < *a1;
}

BOOL sub_24880D9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t WaterTemperatureUnit.hashValue.getter()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

uint64_t sub_24880DAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6163696E6F6E6163 && a2 == 0xEE0065756C61566CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24882B4B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24880DB58(uint64_t a1)
{
  v2 = sub_24880DD08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880DB94(uint64_t a1)
{
  v2 = sub_24880DD08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0D0, &qword_24882CE68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880DD08();
  sub_24882B568();
  sub_24882B478();
  return (*(v4 + 8))(v10, v3);
}

unint64_t sub_24880DD08()
{
  result = qword_27EEAA0D8;
  if (!qword_27EEAA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0D8);
  }

  return result;
}

uint64_t TemperatureValue.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0E0, &qword_24882CE70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880DD08();
  sub_24882B558();
  if (!v2)
  {
    sub_24882B408();
    v15 = v14;
    (*(v6 + 8))(v12, v5);
    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_24880DEBC()
{
  result = qword_27EEAA0E8;
  if (!qword_27EEAA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0E8);
  }

  return result;
}

unint64_t sub_24880DF14()
{
  result = qword_27EEAA0F0;
  if (!qword_27EEAA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0F0);
  }

  return result;
}

uint64_t sub_24880DF80(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0D0, &qword_24882CE68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880DD08();
  sub_24882B568();
  sub_24882B478();
  return (*(v4 + 8))(v10, v3);
}

unint64_t sub_24880E0BC()
{
  result = qword_27EEAA0F8;
  if (!qword_27EEAA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Temperature(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Temperature(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24880E1D8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24880E1F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_24880E288()
{
  result = qword_27EEAA100;
  if (!qword_27EEAA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA100);
  }

  return result;
}

unint64_t sub_24880E2E0()
{
  result = qword_27EEAA108;
  if (!qword_27EEAA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA108);
  }

  return result;
}

unint64_t sub_24880E338()
{
  result = qword_27EEAA110;
  if (!qword_27EEAA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA110);
  }

  return result;
}

unint64_t sub_24880E390()
{
  result = qword_27EEAA118;
  if (!qword_27EEAA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA118);
  }

  return result;
}

unint64_t sub_24880E3E8()
{
  result = qword_27EEAA120;
  if (!qword_27EEAA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA120);
  }

  return result;
}

unint64_t sub_24880E440()
{
  result = qword_27EEAA128;
  if (!qword_27EEAA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA128);
  }

  return result;
}

unint64_t sub_24880E498()
{
  result = qword_27EEAA130;
  if (!qword_27EEAA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA130);
  }

  return result;
}

unint64_t sub_24880E4F0()
{
  result = qword_27EEAA138;
  if (!qword_27EEAA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA138);
  }

  return result;
}

unint64_t sub_24880E548()
{
  result = qword_27EEAA140;
  if (!qword_27EEAA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA140);
  }

  return result;
}

unint64_t sub_24880E5A0()
{
  result = qword_27EEAA148;
  if (!qword_27EEAA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA148);
  }

  return result;
}

unint64_t sub_24880E5F8()
{
  result = qword_27EEAA150;
  if (!qword_27EEAA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA150);
  }

  return result;
}

void ShallowSubmersionData.maxDepth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ShallowSubmersionData.maxDepth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

__n128 ShallowSubmersionData.temperatureRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ShallowSubmersionData.temperatureRange.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

__n128 ShallowSubmersionData.init(maxDepth:temperatureRange:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = a2[1].n128_u8[0];
  a3->n128_u64[0] = *a1;
  a3->n128_u8[8] = v3;
  result = *a2;
  a3[1] = *a2;
  a3[2].n128_u8[0] = v4;
  return result;
}

unint64_t sub_24880E70C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x687470654478616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_24880E74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x687470654478616DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000248830B10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

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

uint64_t sub_24880E830(uint64_t a1)
{
  v2 = sub_24880EA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880E86C(uint64_t a1)
{
  v2 = sub_24880EA60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShallowSubmersionData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA158, &qword_24882D510);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = &v17 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = v1[2];
  v17 = v1[3];
  v18 = v13;
  v23 = *(v1 + 32);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880EA60();
  sub_24882B568();
  v20 = v11;
  LOBYTE(v21) = v12;
  v24 = 0;
  sub_24880EAB4();
  v15 = v19;
  sub_24882B488();
  if (!v15)
  {
    v20 = v18;
    v21 = v17;
    v22 = v23;
    v24 = 1;
    sub_24880EB08();
    sub_24882B488();
  }

  return (*(v4 + 8))(v10, v3);
}

unint64_t sub_24880EA60()
{
  result = qword_27EEAA160;
  if (!qword_27EEAA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA160);
  }

  return result;
}

unint64_t sub_24880EAB4()
{
  result = qword_27EEAA168;
  if (!qword_27EEAA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA168);
  }

  return result;
}

unint64_t sub_24880EB08()
{
  result = qword_27EEAA170;
  if (!qword_27EEAA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA170);
  }

  return result;
}

uint64_t ShallowSubmersionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA178, &qword_24882D518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880EA60();
  sub_24882B558();
  if (!v2)
  {
    v21 = 0;
    sub_24880ED44();
    sub_24882B418();
    v14 = v19;
    v15 = BYTE8(v19);
    v21 = 1;
    sub_24880ED98();
    sub_24882B418();
    (*(v6 + 8))(v12, v5);
    v16 = v20;
    v17 = v19;
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 16) = v17;
    *(a2 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_24880ED44()
{
  result = qword_27EEAA180;
  if (!qword_27EEAA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA180);
  }

  return result;
}

unint64_t sub_24880ED98()
{
  result = qword_27EEAA188;
  if (!qword_27EEAA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA188);
  }

  return result;
}

uint64_t DescentSummary.id.setter(uint64_t a1)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DescentSummary.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DescentSummary() + 20);
  v4 = sub_24882AB78();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DescentSummary()
{
  result = qword_27EEAA1E0;
  if (!qword_27EEAA1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DescentSummary.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DescentSummary() + 20);
  v4 = sub_24882AB78();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DescentSummary.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DescentSummary() + 24);
  v4 = sub_24882AB78();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DescentSummary.endDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DescentSummary() + 24);
  v4 = sub_24882AB78();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DescentSummary.divePreviousUnderwaterDuration.getter()
{
  v1 = (v0 + *(type metadata accessor for DescentSummary() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DescentSummary.divePreviousUnderwaterDuration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DescentSummary();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DescentSummary.maxDepth.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for DescentSummary();
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t DescentSummary.maxDepth.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DescentSummary();
  v5 = v1 + *(result + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

__n128 DescentSummary.temperatureRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DescentSummary() + 36));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t DescentSummary.temperatureRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for DescentSummary();
  v6 = v1 + *(result + 36);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t DescentSummary.underwaterTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v4 = type metadata accessor for DescentSummary();
  v5 = *(v4 + 20);
  v6 = sub_24882AB78();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, v1 + v5, v6);
  v7(a1 + v3, v1 + *(v4 + 24), v6);
  type metadata accessor for UnderwaterTime(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DescentSummary.diveUnderwaterTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DescentSummary();
  v4 = (v1 + v3[7]);
  v12 = *v4;
  v5 = *(v4 + 8);
  v6 = a1 + *(type metadata accessor for DiveUnderwaterTime(0) + 20);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v8 = v3[5];
  v9 = sub_24882AB78();
  v10 = *(*(v9 - 8) + 16);
  v10(v6, v1 + v8, v9);
  v10(v6 + v7, v1 + v3[6], v9);
  type metadata accessor for UnderwaterTime(0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v12;
  *(a1 + 8) = v5;
  return result;
}

uint64_t DescentSummary.init(id:startDate:endDate:divePreviousUnderwaterDuration:maxDepth:temperatureRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v23 = *a6;
  v22 = *(a6 + 8);
  v25 = a7[1];
  v26 = *a7;
  v24 = *(a7 + 16);
  v13 = type metadata accessor for DescentSummary();
  v14 = a8 + v13[7];
  v15 = sub_24882ABE8();
  (*(*(v15 - 8) + 32))(a8, a1, v15);
  v16 = v13[5];
  v17 = sub_24882AB78();
  v18 = *(*(v17 - 8) + 32);
  v18(a8 + v16, a2, v17);
  result = (v18)(a8 + v13[6], a3, v17);
  *v14 = a4;
  *(v14 + 8) = a5 & 1;
  v20 = a8 + v13[8];
  *v20 = v23;
  *(v20 + 8) = v22;
  v21 = a8 + v13[9];
  *v21 = v26;
  *(v21 + 8) = v25;
  *(v21 + 16) = v24;
  return result;
}

unint64_t sub_24880F728()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD00000000000001ELL;
  v4 = 0x687470654478616DLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7461447472617473;
  if (v1 != 1)
  {
    v5 = 0x65746144646E65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24880F7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248811A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24880F81C(uint64_t a1)
{
  v2 = sub_24880FBAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880F858(uint64_t a1)
{
  v2 = sub_24880FBAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DescentSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA198, &qword_24882D528);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880FBAC();
  sub_24882B568();
  LOBYTE(v25) = 0;
  sub_24882ABE8();
  sub_2488115E8(&qword_27EEAA1A8, MEMORY[0x277CC95F0]);
  sub_24882B488();
  if (!v2)
  {
    v14 = type metadata accessor for DescentSummary();
    v15 = v14[5];
    LOBYTE(v25) = 1;
    sub_24882AB78();
    sub_2488115E8(&qword_27EEAA1B0, MEMORY[0x277CC9578]);
    sub_24882B488();
    v16 = v14[6];
    LOBYTE(v25) = 2;
    sub_24882B488();
    v17 = (v3 + v14[7]);
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v25) = 3;
    sub_24882B448();
    v20 = (v3 + v14[8]);
    v21 = *v20;
    LOBYTE(v20) = *(v20 + 8);
    *&v25 = v21;
    BYTE8(v25) = v20;
    v27 = 4;
    sub_24880EAB4();
    sub_24882B488();
    v22 = (v3 + v14[9]);
    v23 = *(v22 + 16);
    v25 = *v22;
    v26 = v23;
    v27 = 5;
    sub_24880EB08();
    sub_24882B488();
  }

  return (*(v6 + 8))(v12, v5);
}

unint64_t sub_24880FBAC()
{
  result = qword_27EEAA1A0;
  if (!qword_27EEAA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA1A0);
  }

  return result;
}

uint64_t DescentSummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_24882AB78();
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  v5 = *(v4 + 64);
  v9 = MEMORY[0x28223BE20](v3, v6, v7, v8);
  v58 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11, v12, v13);
  v15 = v56 - v14;
  v16 = sub_24882ABE8();
  v61 = *(v16 - 8);
  v17 = *(v61 + 64);
  MEMORY[0x28223BE20](v16, v18, v19, v20);
  v62 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA1B8, &unk_24882D530);
  v63 = *(v22 - 8);
  v64 = v22;
  v23 = *(v63 + 64);
  MEMORY[0x28223BE20](v22, v24, v25, v26);
  v28 = v56 - v27;
  v29 = type metadata accessor for DescentSummary();
  v30 = *(*(v29 - 1) + 64);
  MEMORY[0x28223BE20](v29, v31, v32, v33);
  v35 = v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880FBAC();
  v65 = v28;
  v37 = v66;
  sub_24882B558();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v66 = a1;
  v38 = v35;
  LOBYTE(v67) = 0;
  sub_2488115E8(&qword_27EEAA1C0, MEMORY[0x277CC95F0]);
  v39 = v62;
  sub_24882B418();
  v40 = *(v61 + 32);
  v62 = v16;
  v40(v38, v39, v16);
  LOBYTE(v67) = 1;
  sub_2488115E8(&qword_27EEAA1C8, MEMORY[0x277CC9578]);
  v41 = v59;
  sub_24882B418();
  v42 = v15;
  v43 = v38;
  v44 = v41;
  v45 = *(v60 + 32);
  v45(v43 + v29[5], v42, v41);
  LOBYTE(v67) = 2;
  v46 = v58;
  v56[1] = 0;
  sub_24882B418();
  v45(v43 + v29[6], v46, v44);
  LOBYTE(v67) = 3;
  v47 = sub_24882B3D8();
  v48 = v43 + v29[7];
  *v48 = v47;
  *(v48 + 8) = v49 & 1;
  v69 = 4;
  sub_24880ED44();
  sub_24882B418();
  v50 = v63;
  v51 = BYTE8(v67);
  v52 = v43 + v29[8];
  *v52 = v67;
  *(v52 + 8) = v51;
  v69 = 5;
  sub_24880ED98();
  sub_24882B418();
  (*(v50 + 8))(v65, v64);
  v53 = v68;
  v54 = v43 + v29[9];
  *v54 = v67;
  *(v54 + 16) = v53;
  sub_248810274(v43, v57);
  __swift_destroy_boxed_opaque_existential_0(v66);
  return sub_2488114E8(v43, type metadata accessor for DescentSummary);
}

uint64_t sub_248810274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescentSummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DescentSummary.dateInterval.getter()
{
  v1 = sub_24882AB78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v7 = MEMORY[0x28223BE20](v1, v4, v5, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10, v11, v12);
  v14 = &v18 - v13;
  v15 = type metadata accessor for DescentSummary();
  v16 = *(v2 + 16);
  v16(v14, v0 + *(v15 + 20), v1);
  v16(v9, v0 + *(v15 + 24), v1);
  return sub_24882AA58();
}

double DescentSummary.underwaterDuration.getter()
{
  v1 = sub_24882AB78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4, v5, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnderwaterTime(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11, v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v17 = type metadata accessor for DescentSummary();
  v18 = *(v2 + 16);
  v18(v15, v0 + *(v17 + 20), v1);
  v18(&v15[v16], v0 + *(v17 + 24), v1);
  swift_storeEnumTagMultiPayload();
  sub_24882AB68();
  v19 = UnderwaterTime.timeInterval(untilDate:)();
  (*(v2 + 8))(v8, v1);
  sub_2488114E8(v15, type metadata accessor for UnderwaterTime);
  return v19;
}

__n128 DescentSummary.with(startDate:endDate:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24882ABE8();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  v8 = type metadata accessor for DescentSummary();
  v9 = v8[5];
  v10 = sub_24882AB78();
  v11 = *(*(v10 - 8) + 16);
  v11(a3 + v9, a1, v10);
  v11(a3 + v8[6], a2, v10);
  v12 = v8[7];
  v13 = *(v3 + v12);
  v14 = *(v3 + v12 + 8);
  v15 = (v3 + v8[8]);
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = (v3 + v8[9]);
  v18 = v17[1].n128_u8[0];
  v19 = a3 + v12;
  *v19 = v13;
  *(v19 + 8) = v14;
  v20 = a3 + v8[8];
  *v20 = v16;
  *(v20 + 8) = v15;
  v21 = (a3 + v8[9]);
  result = *v17;
  *v21 = *v17;
  v21[1].n128_u8[0] = v18;
  return result;
}

uint64_t DescentSummary.with(temperatureRange:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = sub_24882ABE8();
  (*(*(v7 - 8) + 16))(a2, v2, v7);
  v8 = type metadata accessor for DescentSummary();
  v9 = v8[5];
  v10 = sub_24882AB78();
  v11 = *(*(v10 - 8) + 16);
  v11(a2 + v9, v2 + v9, v10);
  result = (v11)(a2 + v8[6], v2 + v8[6], v10);
  v13 = v8[7];
  v14 = *(v2 + v13);
  v15 = *(v2 + v13 + 8);
  v16 = (v2 + v8[8]);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  v18 = a2 + v13;
  *v18 = v14;
  *(v18 + 8) = v15;
  v19 = a2 + v8[8];
  *v19 = v17;
  *(v19 + 8) = v16;
  v20 = a2 + v8[9];
  *v20 = v4;
  *(v20 + 8) = v5;
  *(v20 + 16) = v6;
  return result;
}

uint64_t _s9DepthCore14DescentSummaryV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_248810954(uint64_t a1)
{
  v3 = sub_24882AB78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v9 = MEMORY[0x28223BE20](v3, v6, v7, v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12, v13, v14);
  v15 = *(v4 + 16);
  v15(&v18 - v16, v1 + *(a1 + 20), v3);
  v15(v11, v1 + *(a1 + 24), v3);
  return sub_24882AA58();
}

uint64_t sub_248810A78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 32));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

__n128 sub_248810A94@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

double sub_248810AB0(uint64_t a1)
{
  v3 = sub_24882AB78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UnderwaterTime(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13, v14, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v19 = *(v4 + 16);
  v19(v17, v1 + *(a1 + 20), v3);
  v19(&v17[v18], v1 + *(a1 + 24), v3);
  swift_storeEnumTagMultiPayload();
  sub_24882AB68();
  v20 = UnderwaterTime.timeInterval(untilDate:)();
  (*(v4 + 8))(v10, v3);
  sub_2488114E8(v17, type metadata accessor for UnderwaterTime);
  return v20;
}

__n128 sub_248810D08@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v7 = type metadata accessor for DescentSummary();
  v8 = v7[6];
  sub_24882AB68();
  v9 = a3 + v7[5];
  sub_24882AB18();
  sub_24882ABD8();
  v10 = a3 + v7[7];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a3 + v7[8];
  *v11 = a1;
  *(v11 + 8) = a2;
  v12 = (a3 + v7[9]);
  result = a4;
  *v12 = a4;
  v12[1].n128_u8[0] = 1;
  return result;
}

uint64_t static DescentSummary.previewSummaryOldDate.getter@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA008, &qword_24882CCF8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3, v4, v5);
  v96 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA010, &qword_24882CD00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9, v10, v11);
  v13 = &v77 - v12;
  v95 = sub_24882AAA8();
  v97 = *(v95 - 8);
  v14 = *(v97 + 64);
  MEMORY[0x28223BE20](v95, v15, v16, v17);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24882AC48();
  v92 = v20;
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20, v23, v24, v25);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA050, &qword_24882CD28);
  v29 = *(*(v28 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v28 - 8, v30, v31, v32);
  v88 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35, v36, v37);
  v39 = &v77 - v38;
  v40 = sub_24882AB78();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v46 = MEMORY[0x28223BE20](v40, v43, v44, v45);
  v78 = &v77 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v46, v48, v49, v50);
  v53 = &v77 - v52;
  MEMORY[0x28223BE20](v51, v54, v55, v56);
  v94 = &v77 - v57;
  sub_24882AC28();
  v86 = v21[7];
  v87 = v21 + 7;
  v86(v13, 1, 1, v20);
  v58 = sub_24882AC58();
  v59 = *(v58 - 8);
  v84 = *(v59 + 56);
  v85 = v58;
  v83 = v59 + 56;
  v84(v96, 1, 1);
  v91 = v13;
  sub_24882AA98();
  sub_24882AB68();
  sub_24882AC08();
  (*(v41 + 8))(v53, v40);
  v60 = *(v97 + 8);
  v89 = v19;
  v97 += 8;
  v82 = v60;
  v60(v19, v95);
  v61 = v21[1];
  v62 = v92;
  v90 = v21 + 1;
  v81 = v61;
  (v61)(v27);
  v63 = *(v41 + 48);
  v93 = v40;
  v80 = v63;
  result = v63(v39, 1, v40);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v65 = *(v41 + 32);
    v66 = v39;
    v67 = v93;
    v65(v94, v66, v93);
    sub_24882AC28();
    v86(v91, 1, 1, v62);
    (v84)(v96, 1, 1, v85);
    v68 = v89;
    sub_24882AA98();
    v69 = v88;
    sub_24882AC08();
    v82(v68, v95);
    v81(v27, v62);
    result = v80(v69, 1, v67);
    if (result != 1)
    {
      v70 = v78;
      v71 = v93;
      v65(v78, v69, v93);
      v72 = v79;
      sub_24882ABD8();
      v73 = type metadata accessor for DescentSummary();
      v74 = v72 + v73[7];
      v65((v72 + v73[5]), v94, v71);
      result = (v65)(v72 + v73[6], v70, v71);
      *v74 = 0;
      *(v74 + 8) = 1;
      v75 = v72 + v73[8];
      *v75 = 0x4024000000000000;
      *(v75 + 8) = 1;
      v76 = v72 + v73[9];
      *v76 = xmmword_24882D4F0;
      *(v76 + 16) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

double static ShallowSubmersionData.previewModel.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FE6666666666666;
  *(a1 + 8) = 0;
  result = 23.0;
  *(a1 + 16) = xmmword_24882D500;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_2488114E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248811590(uint64_t a1)
{
  result = sub_2488115E8(&qword_27EEAA1D8, type metadata accessor for DescentSummary);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2488115E8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_248811644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24881168C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_24881170C()
{
  sub_24882ABE8();
  if (v0 <= 0x3F)
  {
    sub_24882AB78();
    if (v1 <= 0x3F)
    {
      sub_2488117C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2488117C0()
{
  if (!qword_27EEAA1F0)
  {
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA1F0);
    }
  }
}

unint64_t sub_248811834()
{
  result = qword_27EEAA1F8;
  if (!qword_27EEAA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA1F8);
  }

  return result;
}

unint64_t sub_24881188C()
{
  result = qword_27EEAA200;
  if (!qword_27EEAA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA200);
  }

  return result;
}

unint64_t sub_2488118E4()
{
  result = qword_27EEAA208;
  if (!qword_27EEAA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA208);
  }

  return result;
}

unint64_t sub_24881193C()
{
  result = qword_27EEAA210;
  if (!qword_27EEAA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA210);
  }

  return result;
}

unint64_t sub_248811994()
{
  result = qword_27EEAA218;
  if (!qword_27EEAA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA218);
  }

  return result;
}

unint64_t sub_2488119EC()
{
  result = qword_27EEAA220;
  if (!qword_27EEAA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA220);
  }

  return result;
}

uint64_t sub_248811A40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000248830B30 == a2 || (sub_24882B4B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x687470654478616DLL && a2 == 0xE800000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000248830B10 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24882B4B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void static DeviceType.deviceType(forDeviceIdentifier:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2488129D8();
  if (*(v6 + 16) && (v7 = sub_2487F8B2C(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);
  }

  else
  {

    if (qword_27EEA9950 != -1)
    {
      swift_once();
    }

    v10 = sub_24882AC88();
    __swift_project_value_buffer(v10, qword_27EEAA810);

    v11 = sub_24882AC68();
    v12 = sub_24882B138();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2487F852C(a1, a2, &v15);
      _os_log_impl(&dword_2487F4000, v11, v12, "DeviceType: Device type cache miss for: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1DA290](v14, -1, -1);
      MEMORY[0x24C1DA290](v13, -1, -1);
    }

    v9 = 2;
  }

  *a3 = v9;
}

double static DepthLimit.depthLimit(forDeviceType:)@<D0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        v5 = a2;
        swift_once();
        a2 = v5;
      }

      v2 = &xmmword_27EEB0FD0;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        v7 = a2;
        swift_once();
        a2 = v7;
      }

      v2 = &xmmword_27EEB0FE0;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      v6 = a2;
      swift_once();
      a2 = v6;
    }

    v2 = &xmmword_27EEB0FC0;
  }

  result = *v2;
  v4 = *(v2 + 1);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

double DepthLimit.feet.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double DepthLimit.meters.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_248811F00()
{
  result = 39.624;
  xmmword_27EEB0FC0 = xmmword_24882D8F0;
  return result;
}

double sub_248811F14()
{
  result = 6.096;
  xmmword_27EEB0FD0 = xmmword_24882D900;
  return result;
}

double sub_248811F28()
{
  result = 10972.8;
  xmmword_27EEB0FE0 = xmmword_24882D910;
  return result;
}

double static DepthLimit.depthLimit(forDeviceIdentifier:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  static DeviceType.deviceType(forDeviceIdentifier:)(a1, a2, &v7);
  if (v7)
  {
    if (v7 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        swift_once();
      }

      v4 = &xmmword_27EEB0FD0;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        swift_once();
      }

      v4 = &xmmword_27EEB0FE0;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_27EEB0FC0;
  }

  result = *v4;
  v6 = *(v4 + 1);
  *a3 = *v4;
  a3[1] = v6;
  return result;
}

DepthCore::DeviceType_optional __swiftcall DeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24882B3A8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceType.rawValue.getter()
{
  v1 = 0x6172746C556E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6172746C75;
  }
}

uint64_t sub_248812104(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6172746C556E6F6ELL;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6172746C75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6172746C556E6F6ELL;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6172746C75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24882B4B8();
  }

  return v11 & 1;
}

uint64_t sub_248812204()
{
  v1 = *v0;
  sub_24882B528();
  sub_24882AF88();

  return sub_24882B548();
}

uint64_t sub_2488122A4()
{
  *v0;
  *v0;
  sub_24882AF88();
}

uint64_t sub_248812330()
{
  v1 = *v0;
  sub_24882B528();
  sub_24882AF88();

  return sub_24882B548();
}

void sub_2488123D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6172746C556E6F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6172746C75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double DepthSettings.significantDepth.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double DepthSettings.significantDepth.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double DepthSettings.deepDiveTimeThreshold.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24882AED8();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_24882B248();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    sub_2487F8F38();
    if (swift_dynamicCast())
    {
      if (qword_27EEA9950 != -1)
      {
        swift_once();
      }

      v3 = sub_24882AC88();
      __swift_project_value_buffer(v3, qword_27EEAA810);
      v4 = v16;
      v5 = sub_24882AC68();
      v6 = sub_24882B148();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v4;
        *v8 = v4;
        v9 = v4;
        _os_log_impl(&dword_2487F4000, v5, v6, "Using custom value for deepDiveTimeThreshold=%@", v7, 0xCu);
        sub_24880C924(v8, &qword_27EEAA230, &qword_24882D968);
        MEMORY[0x24C1DA290](v8, -1, -1);
        MEMORY[0x24C1DA290](v7, -1, -1);
      }

      [v4 doubleValue];
      v11 = v10;
      goto LABEL_17;
    }
  }

  else
  {
    sub_24880C924(v19, &qword_27EEAA228, &qword_24882D960);
  }

  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v12 = sub_24882AC88();
  __swift_project_value_buffer(v12, qword_27EEAA810);
  v4 = sub_24882AC68();
  v13 = sub_24882B148();
  if (os_log_type_enabled(v4, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2487F4000, v4, v13, "Returning default value", v14, 2u);
    MEMORY[0x24C1DA290](v14, -1, -1);
  }

  v11 = 180.0;
LABEL_17:

  return v11;
}

double DepthSettings.maxDepthMarkerMiniumSeparation.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = result;
  return result;
}

double DepthSettings.maxDepthMarkerMiniumSeparation.setter(double *a1)
{
  result = *a1;
  *(v1 + 48) = *a1;
  return result;
}

void __swiftcall DepthSettings.init()(DepthCore::DepthSettings *__return_ptr retstr)
{
  __asm { FMOV            V1.2D, #1.0 }

  *&retstr->significantDepth.canonicalValue = xmmword_24882D920;
  *&retstr->sessionStopDelay = _Q1;
  *&retstr->sessionRecoveryTimeout = xmmword_24882D930;
  *&retstr->maxDepthMarkerMiniumSeparation.canonicalValue = xmmword_24882D940;
  *&retstr->shortDiveCompletionTimeout = xmmword_24882D950;
}

void sub_248812964(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_2488129D8()
{
  v0 = sub_2487F9280(&unk_285B43730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA240, &qword_24882DAB8);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(0, 0x312C376863746157, 0xE900000000000032, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(1, 0x312C376863746157, 0xE900000000000037, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(1, 0x312C376863746157, 0xE900000000000038, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(1, 0x312C376863746157, 0xE900000000000039, v4);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(1, 0x322C376863746157, 0xE900000000000030, v5);
  return v0;
}

unint64_t sub_248812B34()
{
  result = qword_27EEAA238;
  if (!qword_27EEAA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA238);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_248812BC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248812BE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t TemperatureSettings.provider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_248812C50(v2, v3, v4, v5, v6);
}

uint64_t sub_248812C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0x3Fu)
  {
  }

  return result;
}

__n128 TemperatureSettings.provider.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_248812CB0(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_248812CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0x3Fu)
  {
  }

  return result;
}

double TemperatureSettings.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x80;
  return result;
}

double static TemperatureProvider.fullRangeDemo.getter@<D0>(uint64_t a1@<X8>)
{
  result = 40.5555556;
  *a1 = xmmword_24882DAC0;
  *(a1 + 16) = xmmword_24882DAD0;
  *(a1 + 32) = 64;
  return result;
}

double static TemperatureProvider.repeatingFullRangeDemo.getter@<D0>(uint64_t a1@<X8>)
{
  result = 40.5555556;
  *a1 = xmmword_24882DAC0;
  *(a1 + 16) = xmmword_24882DAD0;
  *(a1 + 32) = 65;
  return result;
}

uint64_t sub_248812D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_248812DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_248812E0C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t UnitSpace.valueWithUnitFormatString.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 1)
  {
    v3 = v1;
  }

  else
  {
    v3 = sub_2487FB274();
  }

  sub_248812EFC(v1, v2);
  return v3;
}

uint64_t sub_248812EFC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t DepthFormattingOptions.unit.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_248813CE0(v2, v3);
}

uint64_t DepthFormattingOptions.unit.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_248813CF0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

__n128 DepthFormattingOptions.init(unit:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double static DepthFormattingOptions.withoutUnit.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24882DC00;
  return result;
}

uint64_t DepthFormatter.formatDepth(_:options:deviceType:)(uint64_t *a1, __int128 *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  if (*a3)
  {
    if (*a3 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        v11 = *a2;
        swift_once();
        v5 = v11;
      }

      v6 = &xmmword_27EEB0FD0;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        v13 = *a2;
        swift_once();
        v5 = v13;
      }

      v6 = &xmmword_27EEB0FE0;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      v12 = *a2;
      swift_once();
      v5 = v12;
    }

    v6 = &xmmword_27EEB0FC0;
  }

  v8 = *v6;
  v7 = *(v6 + 1);
  v16 = v3;
  v17 = v4;
  v15 = v5;
  v14[0] = v8;
  v14[1] = v7;
  sub_2488134BC(&v16, &v15, v14, &v18);
  v9 = v18;

  return v9;
}

uint64_t DepthFormatter.formattedDepthComponents(forDepth:options:deviceType:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  if (*a3)
  {
    if (*a3 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        v14 = a4;
        v11 = *a2;
        swift_once();
        v6 = v11;
        a4 = v14;
      }

      v7 = &xmmword_27EEB0FD0;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        v16 = a4;
        v13 = *a2;
        swift_once();
        v6 = v13;
        a4 = v16;
      }

      v7 = &xmmword_27EEB0FE0;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      v15 = a4;
      v12 = *a2;
      swift_once();
      v6 = v12;
      a4 = v15;
    }

    v7 = &xmmword_27EEB0FC0;
  }

  v9 = *v7;
  v8 = *(v7 + 1);
  v19 = v4;
  v20 = v5;
  v18 = v6;
  v17[0] = v9;
  v17[1] = v8;
  return sub_2488134BC(&v19, &v18, v17, a4);
}

void DepthFormatter.formattedDepthComponents(forDepth:fromWorkout:options:)(id a1@<X1>, uint64_t *a2@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v8 = *a3;
  v7 = a3[1];
  v9 = [a1 device];
  if (v9 && (v10 = v9, v11 = [v9 hardwareVersion], v10, v11))
  {
    v12 = sub_24882AEF8();
    v14 = v13;

    static DeviceType.deviceType(forDeviceIdentifier:)(v12, v14, &v19);

    if (v19)
    {
      if (v19 == 1)
      {
        if (qword_27EEA9940 != -1)
        {
          swift_once();
        }

        v15 = &xmmword_27EEB0FD0;
      }

      else
      {
        if (qword_27EEA9948 != -1)
        {
          swift_once();
        }

        v15 = &xmmword_27EEB0FE0;
      }
    }

    else
    {
      if (qword_27EEA9938 != -1)
      {
        swift_once();
      }

      v15 = &xmmword_27EEB0FC0;
    }

    v17 = *v15;
    v16 = *(v15 + 1);
    v20 = v7;
    v21 = v5;
    v22 = v6;
    v19 = v8;
    *&v18 = v17;
    *(&v18 + 1) = v16;
  }

  else
  {
    if (v6 > 2)
    {
      *a4 = 11565;
      a4[1] = 0xE200000000000000;
      a4[2] = 11565;
      a4[3] = 0xE200000000000000;
      a4[4] = 0;
      a4[5] = 0;
      return;
    }

    v20 = v7;
    v21 = v5;
    v22 = 1;
    v19 = v8;
    v18 = xmmword_24882D910;
  }

  sub_2488134BC(&v21, &v19, &v18, a4);
}

uint64_t sub_2488134BC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *result;
  v8 = *a2;
  v7 = a2[1];
  if (*(result + 8) <= 1u)
  {
    v9 = *result;
    goto LABEL_3;
  }

  v19 = *a3;
  v20 = *(a3 + 1);
  if (*(result + 8) != 2)
  {
    if (v6 == 0.0)
    {
      *a4 = 11565;
      a4[1] = 0xE200000000000000;
      a4[2] = 11565;
      a4[3] = 0xE200000000000000;
LABEL_40:
      a4[4] = 0;
      a4[5] = 0;
      return result;
    }

    v9 = 0.0;
    if (*&v6 == 1)
    {
LABEL_3:
      v10 = v4 + OBJC_IVAR___DKDepthFormatter_configuration;
      v11 = 3.2808399;
      if (*(v4 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
      {
        v11 = 1.0;
      }

      v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v13 = *(v4 + OBJC_IVAR___DKDepthFormatter_depthNumberFormatter);
      v14 = [v13 stringFromNumber_];
      if (v14)
      {
        v15 = v14;
        v16 = sub_24882AEF8();
        v18 = v17;

        v12 = v13;
        v13 = v15;
      }

      else
      {
        v16 = sub_2487FB274();
        v18 = v23;
      }

      if (v7 < 2)
      {
        sub_2487FB274();
      }

      else if (v7 == 2)
      {
        *a4 = v16;
        a4[1] = v18;
        a4[2] = v16;
        a4[3] = v18;
        a4[4] = 0;
        a4[5] = 0;
      }

      v24 = *(v10 + 114);
      sub_248813CE0(v8, v7);
      v25 = sub_2487FB274();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_24882BFE0;
      v29 = MEMORY[0x277D837D0];
      *(v28 + 56) = MEMORY[0x277D837D0];
      v30 = sub_2487FA950();
      *(v28 + 32) = v16;
      *(v28 + 40) = v18;
      *(v28 + 96) = v29;
      *(v28 + 104) = v30;
      *(v28 + 64) = v30;
      *(v28 + 72) = v25;
      *(v28 + 80) = v27;

      v31 = sub_24882AF18();
      v33 = v32;

      *a4 = v31;
      a4[1] = v33;
      a4[2] = v16;
      a4[3] = v18;
      a4[4] = v25;
      a4[5] = v27;
      return result;
    }
  }

  v21 = v4 + OBJC_IVAR___DKDepthFormatter_configuration;
  if (*(v4 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
  {
    v22 = a3[1];
  }

  else
  {
    v22 = *a3;
  }

  if (!v7)
  {
    goto LABEL_30;
  }

  if (v7 == 2)
  {
    v34 = 3.2808399;
    if (*(v4 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
    {
      v34 = 1.0;
    }

    v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v36 = *(v4 + OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter);
    v37 = [v36 stringFromNumber_];
    if (v37)
    {
      v38 = v37;
      v39 = sub_24882AEF8();
      v41 = v40;

      v35 = v36;
      v36 = v38;
    }

    else
    {
      v39 = sub_2487FB274();
      v41 = v62;
    }

    sub_2487FB274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_24882BFD0;
    *(v63 + 56) = MEMORY[0x277D837D0];
    *(v63 + 64) = sub_2487FA950();
    *(v63 + 32) = v39;
    *(v63 + 40) = v41;

    v64 = sub_24882AF18();
    v66 = v65;

    *a4 = v64;
    a4[1] = v66;
    a4[2] = v39;
    a4[3] = v41;
    goto LABEL_40;
  }

  if (v7 != 1)
  {
    v42 = a2[1];
    v43 = *a2;
    goto LABEL_32;
  }

LABEL_30:
  sub_2487FB274();
  *(v21 + 114);
LABEL_32:
  sub_248813CE0(v8, v7);
  v44 = sub_2487FB274();
  v46 = v45;
  v47 = 3.2808399;
  if (*(v21 + 114))
  {
    v47 = 1.0;
  }

  v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v49 = *(v4 + OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter);
  v50 = [v49 stringFromNumber_];
  if (v50)
  {
    v51 = v50;
    v52 = sub_24882AEF8();
    v54 = v53;

    v48 = v49;
    v49 = v51;
  }

  else
  {
    v52 = sub_2487FB274();
    v54 = v55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_24882BFE0;
  v57 = MEMORY[0x277D837D0];
  *(v56 + 56) = MEMORY[0x277D837D0];
  v58 = sub_2487FA950();
  *(v56 + 32) = v52;
  *(v56 + 40) = v54;
  *(v56 + 96) = v57;
  *(v56 + 104) = v58;
  *(v56 + 64) = v58;
  *(v56 + 72) = v44;
  *(v56 + 80) = v46;

  v59 = sub_24882AF18();
  v61 = v60;

  *a4 = v59;
  a4[1] = v61;
  a4[2] = v52;
  a4[3] = v54;
  a4[4] = v44;
  a4[5] = v46;
  return result;
}

uint64_t DepthFormatter.formattedZeroDepth.getter@<X0>(uint64_t *a1@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  if (qword_27EEA9948 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v5 = xmmword_27EEB0FE0;
  sub_2488134BC(&v8, &v6, &v5, a1);
  v1 = v6;
  v2 = v7;

  return sub_248813CF0(v1, v2);
}

uint64_t sub_248813CE0(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_248812EFC(a1, a2);
  }

  return a1;
}

uint64_t sub_248813CF0(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_248813D00(a1, a2);
  }

  return a1;
}

uint64_t sub_248813D00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9DepthCore9UnitSpaceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9DepthCore10UnitOptionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_248813D50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 < 3)
  {
    v5 = 0;
  }

  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248813DB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_248813E08(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 2147483646;
  }

  else if (a2)
  {
    result[1] = a2 + 1;
  }

  return result;
}

uint64_t sub_248813E50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248813EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_248813F00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_248813F30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_248813F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterfaceSettings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t DiveSummary.workoutID.setter(uint64_t a1)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DiveSummary.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DiveSummary() + 20);
  v4 = sub_24882AA88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DiveSummary()
{
  result = qword_27EEAA268;
  if (!qword_27EEAA268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DiveSummary.dateInterval.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DiveSummary() + 20);
  v4 = sub_24882AA88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DiveSummary.maxDepth.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for DiveSummary();
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t DiveSummary.maxDepth.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DiveSummary();
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DiveSummary.underwaterDuration.setter(double a1)
{
  result = type metadata accessor for DiveSummary();
  *(v1 + *(result + 28)) = a1;
  return result;
}

__n128 DiveSummary.temperatureRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DiveSummary() + 32));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t DiveSummary.temperatureRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for DiveSummary();
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t DiveSummary.numberOfDives.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DiveSummary();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DiveSummary.deviceType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DiveSummary();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t DiveSummary.deviceType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DiveSummary();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t DiveSummary.diveID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5, v6, v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for DiveSummary();
  sub_2488147D8(v1 + *(v10 + 44), v9);
  v11 = sub_24882ABE8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  (*(v12 + 16))(a1, v1, v11);
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_248814848(v9);
  }

  return result;
}

uint64_t sub_2488147D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248814848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DiveSummary.init(workoutID:dateInterval:maxDepth:underwaterDuration:temperatureRange:numberOfDives:diveID:deviceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *a4;
  v28 = a4[1];
  v27 = *(a4 + 16);
  v29 = *a8;
  v17 = type metadata accessor for DiveSummary();
  v18 = v17[11];
  v19 = sub_24882ABE8();
  v20 = *(v19 - 8);
  (*(v20 + 56))(a9 + v18, 1, 1, v19);
  (*(v20 + 32))(a9, a1, v19);
  v21 = v17[5];
  v22 = sub_24882AA88();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v17[6];
  *v23 = v14;
  *(v23 + 8) = v15;
  *(a9 + v17[7]) = a10;
  v24 = a9 + v17[8];
  *v24 = v16;
  *(v24 + 8) = v28;
  *(v24 + 16) = v27;
  v25 = a9 + v17[9];
  *v25 = a5;
  *(v25 + 8) = a6 & 1;
  result = sub_248814A60(a7, a9 + v18);
  *(a9 + v17[10]) = v29;
  return result;
}

uint64_t sub_248814A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static DiveSummary.fromHKWorkout(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24882ABE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v10 = MEMORY[0x28223BE20](v4, v7, v8, v9);
  v12 = &v106[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v13, v14, v15);
  v119 = &v106[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  v18 = *(*(v17 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v17 - 8, v19, v20, v21);
  v120 = &v106[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v24, v25, v26);
  v28 = &v106[-v27];
  v29 = sub_24882AB78();
  v30 = *(*(v29 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v29 - 8, v31, v32, v33);
  MEMORY[0x28223BE20](v34, v35, v36, v37);
  v38 = sub_24882AA88();
  v117 = *(v38 - 8);
  v118 = v38;
  v39 = *(v117 + 64);
  v43 = MEMORY[0x28223BE20](v38, v40, v41, v42);
  v116 = &v106[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43, v45, v46, v47);
  v49 = &v106[-v48];
  if ([a1 workoutActivityType] == 84)
  {
    v113 = a2;
    v114 = v5;
    v50 = [a1 metadata];
    v115 = v4;
    if (v50)
    {
      v51 = v50;
      v52 = sub_24882AE68();

      v53 = [a1 startDate];
      sub_24882AB58();

      v54 = [a1 endDate];
      sub_24882AB58();

      sub_24882AA58();
      static WaterDepth.maxDepth(fromMetadata:)(v52, &v121);
      v109 = v121;
      v55 = v122;
      v56 = _s9DepthCore15DiveWorkoutUtilO14underwaterTime4fromSdSo9HKWorkoutC_tFZ_0(a1);
      v57 = [a1 metadata];
      if (!v57 || (v58 = v57, sub_24882AE68(), v58, v59 = , static TemperatureRange.temperatureRange(fromMetadata:)(v59, v124), swift_bridgeObjectRelease_n(), v125 == 255))
      {
        sub_2487FB388(a1, &v121);
        v110 = v121;
        v111 = v122;
        v112 = v123;
      }

      else
      {
        v112 = v125;
        v110 = v124[0];
        v111 = v124[1];
        v121 = v124[0];
      }

      if (*(v52 + 16) && (v63 = sub_2487F8B2C(0xD000000000000025, 0x8000000248830000), (v64 & 1) != 0) && (sub_2487F8BA4(*(v52 + 56) + 32 * v63, &v121), swift_dynamicCast()))
      {
        v65 = v124[0];
      }

      else
      {
        v65 = 1;
      }

      v108 = v65;
      if (*(v52 + 16) && (v66 = sub_2487F8B2C(0xD000000000000021, 0x8000000248830110), (v67 & 1) != 0))
      {
        sub_2487F8BA4(*(v52 + 56) + 32 * v66, &v121);

        if (swift_dynamicCast())
        {

          sub_24882AB88();
          swift_bridgeObjectRelease_n();
          goto LABEL_21;
        }
      }

      else
      {
      }

      (*(v114 + 56))(v28, 1, 1, v115);
LABEL_21:
      v68 = 0x6E776F6E6B6E75;
      v69 = [a1 device];
      if (v69 && (v70 = v69, v71 = [v69 hardwareVersion], v70, v71))
      {
        v68 = sub_24882AEF8();
        v73 = v72;
      }

      else
      {
        v73 = 0xE700000000000000;
      }

      v74 = [a1 UUID];
      v75 = v119;
      sub_24882ABB8();

      v76 = v116;
      v77 = v117;
      v78 = v118;
      (*(v117 + 16))(v116, v49, v118);
      v79 = v109;
      if (v55 == 255)
      {
        v79 = 0;
      }

      v109 = v79;
      if (v55 == 255)
      {
        v80 = 3;
      }

      else
      {
        v80 = v55;
      }

      v107 = v80;
      sub_2488147D8(v28, v120);
      static DeviceType.deviceType(forDeviceIdentifier:)(v68, v73, &v121);

      sub_248814848(v28);
      (*(v77 + 8))(v49, v78);
      v81 = v121;
      v82 = type metadata accessor for DiveSummary();
      v83 = v82[11];
      v84 = v113;
      v85 = v114;
      v86 = v115;
      (*(v114 + 56))(v113 + v83, 1, 1, v115);
      (*(v85 + 32))(v84, v75, v86);
      (*(v77 + 32))(v84 + v82[5], v76, v78);
      v87 = v84 + v82[6];
      *v87 = v109;
      *(v87 + 8) = v107;
      *(v84 + v82[7]) = v56;
      v88 = v84 + v82[8];
      v89 = v111;
      *v88 = v110;
      *(v88 + 8) = v89;
      *(v88 + 16) = v112;
      v90 = v84 + v82[9];
      *v90 = v108;
      *(v90 + 8) = 0;
      sub_248814A60(v120, v84 + v83);
      *(v84 + v82[10]) = v81;
      return (*(*(v82 - 1) + 56))(v84, 0, 1, v82);
    }

    if (qword_27EEA9950 != -1)
    {
      swift_once();
    }

    v91 = sub_24882AC88();
    __swift_project_value_buffer(v91, qword_27EEAA810);
    v92 = a1;
    v93 = sub_24882AC68();
    v94 = sub_24882B138();

    v95 = os_log_type_enabled(v93, v94);
    v96 = v113;
    if (v95)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v121 = v98;
      *v97 = 136315138;
      v99 = [v92 UUID];
      sub_24882ABB8();

      sub_248815FE4(&qword_27EEAA250, MEMORY[0x277CC95F0]);
      v100 = v115;
      v101 = sub_24882B498();
      v103 = v102;
      (*(v114 + 8))(v12, v100);
      v104 = sub_2487F852C(v101, v103, &v121);

      *(v97 + 4) = v104;
      _os_log_impl(&dword_2487F4000, v93, v94, "Workout %s has nil metadata", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x24C1DA290](v98, -1, -1);
      MEMORY[0x24C1DA290](v97, -1, -1);
    }

    v105 = type metadata accessor for DiveSummary();
    return (*(*(v105 - 8) + 56))(v96, 1, 1, v105);
  }

  else
  {
    v60 = type metadata accessor for DiveSummary();
    v61 = *(*(v60 - 8) + 56);

    return v61(a2, 1, 1, v60);
  }
}

uint64_t static DiveSummary.previewData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4, v5, v6);
  v8 = &v30 - v7;
  v9 = sub_24882AB78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v15 = MEMORY[0x28223BE20](v9, v12, v13, v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18, v19, v20);
  sub_24882ABD8();
  sub_24882AB68();
  sub_24882AB38();
  (*(v10 + 8))(v17, v9);
  sub_24882AB68();
  v21 = type metadata accessor for DiveSummary();
  v22 = a1 + v21[5];
  sub_24882AA58();
  sub_24882ABD8();
  v23 = sub_24882ABE8();
  v24 = *(*(v23 - 8) + 56);
  v24(v8, 0, 1, v23);
  v25 = v21[11];
  v24((a1 + v25), 1, 1, v23);
  v26 = a1 + v21[6];
  *v26 = 0x403B6E978D4FDF3CLL;
  *(v26 + 8) = 1;
  *(a1 + v21[7]) = 0x40A5900000000000;
  v27 = a1 + v21[8];
  *v27 = xmmword_24882DDC0;
  *(v27 + 16) = 1;
  v28 = a1 + v21[9];
  *v28 = 2;
  *(v28 + 8) = 0;
  result = sub_248814A60(v8, a1 + v25);
  *(a1 + v21[10]) = 0;
  return result;
}

uint64_t DiveSummary.with(maxDepth:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  v7 = *(*(v6 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v6 - 8, v8, v9, v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14, v15, v16);
  v62 = &v52 - v17;
  v18 = sub_24882AA88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21, v22, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24882ABE8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29, v30, v31);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *a1;
  v60 = *(a1 + 8);
  v34 = *(v27 + 16);
  v59 = v33;
  v53 = v34;
  v34();
  v35 = type metadata accessor for DiveSummary();
  v36 = v35[5];
  v63 = v25;
  v64 = v19;
  v37 = *(v19 + 16);
  v65 = v18;
  v37(v25, v3 + v36, v18);
  v38 = *(v3 + v35[7]);
  v39 = (v3 + v35[8]);
  v40 = *v39;
  v57 = v39[1];
  v58 = v40;
  v56 = *(v39 + 16);
  v41 = (v3 + v35[9]);
  v55 = *v41;
  v54 = *(v41 + 8);
  sub_2488147D8(v3 + v35[11], v13);
  v42 = *(v27 + 48);
  if (v42(v13, 1, v26) == 1)
  {
    v43 = v62;
    (v53)(v62, v3, v26);
    v44 = v43;
    if (v42(v13, 1, v26) != 1)
    {
      sub_248814848(v13);
    }
  }

  else
  {
    v44 = v62;
    (*(v27 + 32))(v62, v13, v26);
  }

  v45 = *(v27 + 56);
  v45(v44, 0, 1, v26);
  v46 = v35[11];
  v45(a2 + v46, 1, 1, v26);
  (*(v27 + 32))(a2, v59, v26);
  (*(v64 + 32))(a2 + v35[5], v63, v65);
  v47 = a2 + v35[6];
  *v47 = v61;
  *(v47 + 8) = v60;
  *(a2 + v35[7]) = v38;
  v48 = a2 + v35[8];
  v49 = v57;
  *v48 = v58;
  *(v48 + 8) = v49;
  *(v48 + 16) = v56;
  v50 = a2 + v35[9];
  *v50 = v55;
  *(v50 + 8) = v54;
  result = sub_248814A60(v44, a2 + v46);
  *(a2 + v35[10]) = 0;
  return result;
}

uint64_t _s9DepthCore11DiveSummaryV13numberOfDivesSiSgvg_0()
{
  v1 = (v0 + *(type metadata accessor for DiveSummary() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DiveSummary.underwaterTime.getter()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v1 = *(type metadata accessor for DiveSummary() + 20);
  sub_24882AA68();
  sub_24882AA48();
  type metadata accessor for UnderwaterTime(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_248815BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24882AA88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_248815C6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 24));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

__n128 sub_248815C88@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_248815CB0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_248815CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  v11 = &v16 - v10;
  sub_2488147D8(v2 + *(a1 + 44), &v16 - v10);
  v12 = sub_24882ABE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    return (*(v13 + 32))(a2, v11, v12);
  }

  (*(v13 + 16))(a2, v2, v12);
  result = (v14)(v11, 1, v12);
  if (result != 1)
  {
    return sub_248814848(v11);
  }

  return result;
}

uint64_t DiveSummary.hashValue.getter()
{
  sub_24882B528();
  _s9DepthCore11DiveSummaryV4hash4intoys6HasherVz_tF_0();
  return sub_24882B548();
}

uint64_t sub_248815E78()
{
  sub_24882B528();
  _s9DepthCore11DiveSummaryV4hash4intoys6HasherVz_tF_0();
  return sub_24882B548();
}

uint64_t sub_248815EBC()
{
  sub_24882B528();
  _s9DepthCore11DiveSummaryV4hash4intoys6HasherVz_tF_0();
  return sub_24882B548();
}

uint64_t sub_248815F44(uint64_t a1)
{
  result = sub_248815FE4(&qword_27EEAA258, type metadata accessor for DiveSummary);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248815FE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_248816054()
{
  sub_24882ABE8();
  if (v0 <= 0x3F)
  {
    sub_24882AA88();
    if (v1 <= 0x3F)
    {
      sub_24881612C();
      if (v2 <= 0x3F)
      {
        sub_24881617C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24881612C()
{
  if (!qword_27EEAA278)
  {
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA278);
    }
  }
}

void sub_24881617C()
{
  if (!qword_27EEAA280)
  {
    sub_24882ABE8();
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA280);
    }
  }
}

uint64_t UnitSettings.depthUnitString.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = &selRef_meters;
  if (!v1)
  {
    v3 = &selRef_feet;
  }

  v4 = [v2 *v3];
  v5 = [v4 symbol];

  v6 = sub_24882AEF8();
  return v6;
}

uint64_t UnitSettings.waterTemperatureUnitString.getter()
{
  v1 = *(v0 + 1);
  v2 = objc_opt_self();
  v3 = &selRef_fahrenheit;
  if (!v1)
  {
    v3 = &selRef_celsius;
  }

  v4 = [v2 *v3];
  v5 = [v4 symbol];

  v6 = sub_24882AEF8();
  return v6;
}

uint64_t UnitSettings.loggingString.getter()
{
  v1 = 1952802150;
  v2 = v0[1];
  if (*v0)
  {
    v1 = 0x73726574656DLL;
  }

  if (v0[1])
  {
    v3 = 0x65686E6572686166;
  }

  else
  {
    v3 = 0x737569636C6563;
  }

  if (v0[1])
  {
    v4 = 0xEA00000000007469;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  v6 = v1;

  MEMORY[0x24C1D9700](2109216, 0xE300000000000000);

  MEMORY[0x24C1D9700](v3, v4);

  return v6;
}

uint64_t getEnumTagSinglePayload for UnitSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for UnitSettings(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void WaterDepth.depthValue.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 <= 2)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 > 2;
}

double static DepthValue.- infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

BOOL sub_2488166E8(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a2 != 1)
      {
        v4 = 3;
        goto LABEL_17;
      }
    }

    else if (a2)
    {
      v4 = 2;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (a4 == 2)
  {
    if (a2 != 2)
    {
      v4 = 4;
      goto LABEL_17;
    }

LABEL_9:
    if (vabdd_f64(*&a3, *&a1) > 0.0001)
    {
      return *&a3 >= *&a1;
    }

    return 1;
  }

  if (*&a3 == 0.0)
  {
    v4 = 0;
    if (a2 == 3 && *&a1 == 0.0)
    {
      return 1;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v4 = 1;
      if (a2 != 3 || a1 != 1)
      {
        goto LABEL_17;
      }

      return 1;
    }

    v4 = 5;
    if (a2 == 3 && a1 == 2)
    {
      return 1;
    }
  }

LABEL_17:
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 4;
    }

    else
    {
      v6 = qword_24882ECA8[a1];
    }
  }

  else if (a2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  return v4 >= v6;
}

BOOL sub_248816808(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 != 1)
      {
        v4 = 3;
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      v4 = 2;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      v4 = 4;
      goto LABEL_17;
    }

LABEL_9:
    if (vabdd_f64(*&a1, *&a3) > 0.0001)
    {
      return *&a1 >= *&a3;
    }

    return 1;
  }

  if (*&a1 == 0.0)
  {
    v4 = 0;
    if (a4 == 3 && *&a3 == 0.0)
    {
      return 1;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v4 = 1;
      if (a4 != 3 || a3 != 1)
      {
        goto LABEL_17;
      }

      return 1;
    }

    v4 = 5;
    if (a4 == 3 && a3 == 2)
    {
      return 1;
    }
  }

LABEL_17:
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v6 = 4;
    }

    else
    {
      v6 = qword_24882ECA8[a3];
    }
  }

  else if (a4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  return v4 >= v6;
}

uint64_t sub_248816928(uint64_t result, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a2 != 1)
      {
        v4 = 3;
        goto LABEL_17;
      }
    }

    else if (a2)
    {
      v4 = 2;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (a4 == 2)
  {
    if (a2 != 2)
    {
      v4 = 4;
      goto LABEL_17;
    }

LABEL_9:
    if (vabdd_f64(*&a3, *&result) > 0.0001)
    {
      return *&a3 < *&result;
    }

    goto LABEL_30;
  }

  if (*&a3 == 0.0)
  {
    v4 = 0;
    if (a2 == 3 && *&result == 0.0)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (a3 == 1)
  {
    v4 = 1;
    if (a2 != 3 || result != 1)
    {
      goto LABEL_17;
    }

LABEL_30:
    *&result = 0.0;
    return result;
  }

  v4 = 5;
  if (a2 == 3 && result == 2)
  {
    goto LABEL_30;
  }

LABEL_17:
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = qword_24882ECA8[result];
    }
  }

  else if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  return v4 < v5;
}

uint64_t sub_248816A84(uint64_t a1)
{
  v2 = sub_248816C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248816AC0(uint64_t a1)
{
  v2 = sub_248816C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DepthValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA288, &qword_24882DF90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248816C34();
  sub_24882B568();
  sub_24882B478();
  return (*(v4 + 8))(v10, v3);
}

unint64_t sub_248816C34()
{
  result = qword_27EEAA290;
  if (!qword_27EEAA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA290);
  }

  return result;
}

uint64_t DepthValue.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA298, &qword_24882DF98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248816C34();
  sub_24882B558();
  if (!v2)
  {
    sub_24882B408();
    v15 = v14;
    (*(v6 + 8))(v12, v5);
    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_248816DFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA288, &qword_24882DF90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248816C34();
  sub_24882B568();
  sub_24882B478();
  return (*(v4 + 8))(v10, v3);
}

double static DepthValue.+ infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double sub_248816FB0@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double sub_248816FC4(double *a1, double *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

double sub_248816FD8@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double sub_248816FEC(double *a1, double *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

DepthCore::DepthValue __swiftcall DepthValue.advanced(by:)(Swift::Double by)
{
  result.canonicalValue = *v2 + by;
  *v1 = result.canonicalValue;
  return result;
}

double sub_248817020@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *v2 - *a1;
  *a2 = result;
  return result;
}

double sub_248817034@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

double *sub_248817074(double *result, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v6 = a2;
  if (a3)
  {
    v7 = a4 + a6;
LABEL_5:
    *result = v7;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = v6 * a6 + a5;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

BOOL WaterDepth.isExceedingMaxDepth.getter()
{
  v1 = *(v0 + 8);
  if (v1 < 2)
  {
    return 0;
  }

  if (v1 == 3)
  {
    return *v0 > 1uLL;
  }

  return 1;
}

uint64_t WaterDepth.hasEqualSubmersionState(to:)(uint64_t *a1)
{
  v2 = *(a1 + 8);
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else
    {
      v4 = *a1;
      if (*v1)
      {
        if (*v1 == 1 || v2 != 3 || v4 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3 || v4 != 0)
      {
        return 0;
      }
    }
  }

  else if (*(v1 + 8))
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*(a1 + 8))
  {
    return 0;
  }

  return 1;
}

uint64_t sub_248817180()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C616E696D6F6ELL;
  if (v1 == 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D627553746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x776F6C6C616873;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24881724C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248819B34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_248817274(uint64_t a1)
{
  v2 = sub_248818DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2488172B0(uint64_t a1)
{
  v2 = sub_248818DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2488172EC(uint64_t a1)
{
  v2 = sub_248818E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817328(uint64_t a1)
{
  v2 = sub_248818E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248817364(uint64_t a1)
{
  v2 = sub_248818E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2488173A0(uint64_t a1)
{
  v2 = sub_248818E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2488173DC(uint64_t a1)
{
  v2 = sub_248818EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817418(uint64_t a1)
{
  v2 = sub_248818EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248817454(uint64_t a1)
{
  v2 = sub_248818F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817490(uint64_t a1)
{
  v2 = sub_248818F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2488174CC(uint64_t a1)
{
  v2 = sub_248818F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817508(uint64_t a1)
{
  v2 = sub_248818F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248817544(uint64_t a1)
{
  v2 = sub_248818FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817580(uint64_t a1)
{
  v2 = sub_248818FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WaterDepth.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2A0, &qword_24882DFA0);
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v4, v6, v7, v8);
  v66 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2A8, &qword_24882DFA8);
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v10, v12, v13, v14);
  v74 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2B0, &qword_24882DFB0);
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v16, v18, v19, v20);
  v71 = &v62 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2B8, &qword_24882DFB8);
  v69 = *(v22 - 8);
  v70 = v22;
  v23 = *(v69 + 64);
  MEMORY[0x28223BE20](v22, v24, v25, v26);
  v28 = &v62 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2C0, &qword_24882DFC0);
  v64 = *(v29 - 8);
  v65 = v29;
  v30 = *(v64 + 64);
  MEMORY[0x28223BE20](v29, v31, v32, v33);
  v63 = &v62 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2C8, &qword_24882DFC8);
  v62 = *(v35 - 8);
  v36 = *(v62 + 64);
  MEMORY[0x28223BE20](v35, v37, v38, v39);
  v41 = &v62 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2D0, &qword_24882DFD0);
  v77 = *(v42 - 8);
  v78 = v42;
  v43 = *(v77 + 64);
  MEMORY[0x28223BE20](v42, v44, v45, v46);
  v48 = &v62 - v47;
  v49 = *v2;
  v50 = *(v2 + 8);
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248818DBC();
  sub_24882B568();
  if (v50 <= 1)
  {
    if (!v50)
    {
      LOBYTE(v79) = 2;
      sub_248818F0C();
      v52 = v78;
      sub_24882B438();
      v79 = v49;
      sub_24880BD78();
      v53 = v70;
      sub_24882B488();
      (*(v69 + 8))(v28, v53);
      return (*(v77 + 8))(v48, v52);
    }

    LOBYTE(v79) = 3;
    sub_248818EB8();
    v54 = v71;
    v52 = v78;
    sub_24882B438();
    v79 = v49;
    sub_24880BD78();
    v55 = v73;
    sub_24882B488();
    v56 = v72;
LABEL_7:
    (*(v56 + 8))(v54, v55);
    return (*(v77 + 8))(v48, v52);
  }

  if (v50 == 2)
  {
    LOBYTE(v79) = 4;
    sub_248818E64();
    v54 = v74;
    v52 = v78;
    sub_24882B438();
    v79 = v49;
    sub_24880BD78();
    v55 = v76;
    sub_24882B488();
    v56 = v75;
    goto LABEL_7;
  }

  if (v49)
  {
    if (v49 == 1)
    {
      LOBYTE(v79) = 1;
      sub_248818F60();
      v58 = v63;
      v59 = v78;
      sub_24882B438();
      v61 = v64;
      v60 = v65;
    }

    else
    {
      LOBYTE(v79) = 5;
      sub_248818E10();
      v58 = v66;
      v59 = v78;
      sub_24882B438();
      v61 = v67;
      v60 = v68;
    }

    (*(v61 + 8))(v58, v60);
  }

  else
  {
    LOBYTE(v79) = 0;
    sub_248818FB4();
    v59 = v78;
    sub_24882B438();
    (*(v62 + 8))(v41, v35);
  }

  return (*(v77 + 8))(v48, v59);
}

uint64_t WaterDepth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA310, &qword_24882DFD8);
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v96 = &v78 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA318, &qword_24882DFE0);
  v91 = *(v88 - 8);
  v9 = *(v91 + 64);
  MEMORY[0x28223BE20](v88, v10, v11, v12);
  v95 = &v78 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA320, &qword_24882DFE8);
  v87 = *(v84 - 8);
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v84, v15, v16, v17);
  v94 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA328, &qword_24882DFF0);
  v85 = *(v19 - 8);
  v86 = v19;
  v20 = *(v85 + 64);
  MEMORY[0x28223BE20](v19, v21, v22, v23);
  v92 = &v78 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA330, &qword_24882DFF8);
  v26 = *(v25 - 8);
  v82 = v25;
  v83 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28, v29, v30);
  v32 = &v78 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA338, &qword_24882E000);
  v81 = *(v33 - 8);
  v34 = *(v81 + 64);
  MEMORY[0x28223BE20](v33, v35, v36, v37);
  v39 = &v78 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA340, &unk_24882E008);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43, v44, v45);
  v47 = &v78 - v46;
  v49 = a1[3];
  v48 = a1[4];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v49);
  sub_248818DBC();
  v50 = v97;
  sub_24882B558();
  if (!v50)
  {
    v51 = v39;
    v79 = v33;
    v80 = v32;
    v53 = v94;
    v52 = v95;
    v54 = v96;
    v97 = v41;
    v55 = v47;
    v56 = sub_24882B428();
    v57 = (2 * *(v56 + 16)) | 1;
    v99 = v56;
    v100 = v56 + 32;
    v101 = 0;
    v102 = v57;
    v58 = sub_2487FF27C();
    if (v58 == 6 || v101 != v102 >> 1)
    {
      v63 = sub_24882B2E8();
      swift_allocError();
      v65 = v64;
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60) + 48);
      *v65 = &type metadata for WaterDepth;
      sub_24882B3C8();
      sub_24882B2D8();
      (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
      swift_willThrow();
      (*(v97 + 8))(v47, v40);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v58 > 2u)
      {
        if (v58 == 3)
        {
          LOBYTE(v103) = 3;
          sub_248818EB8();
          v71 = v53;
          v72 = v55;
          sub_24882B3B8();
          v68 = v93;
          v73 = v97;
          sub_24880BDCC();
          v74 = v84;
          sub_24882B418();
          (*(v87 + 8))(v71, v74);
          (*(v73 + 8))(v72, v40);
          swift_unknownObjectRelease();
          v62 = v103;
          v61 = 1;
        }

        else
        {
          v68 = v93;
          v69 = v97;
          if (v58 == 4)
          {
            LOBYTE(v103) = 4;
            sub_248818E64();
            sub_24882B3B8();
            sub_24880BDCC();
            v70 = v88;
            sub_24882B418();
            (*(v91 + 8))(v52, v70);
            (*(v69 + 8))(v55, v40);
            swift_unknownObjectRelease();
            v62 = v103;
            v61 = 2;
          }

          else
          {
            LOBYTE(v103) = 5;
            sub_248818E10();
            sub_24882B3B8();
            (*(v89 + 8))(v54, v90);
            (*(v69 + 8))(v55, v40);
            swift_unknownObjectRelease();
            v61 = 3;
            v62 = 2;
          }
        }
      }

      else
      {
        if (v58)
        {
          if (v58 == 1)
          {
            LOBYTE(v103) = 1;
            sub_248818F60();
            v59 = v80;
            sub_24882B3B8();
            v60 = v97;
            (*(v83 + 8))(v59, v82);
            (*(v60 + 8))(v47, v40);
            swift_unknownObjectRelease();
            v61 = 3;
            v62 = 1;
          }

          else
          {
            LOBYTE(v103) = 2;
            sub_248818F0C();
            v75 = v92;
            sub_24882B3B8();
            v76 = v97;
            sub_24880BDCC();
            v77 = v86;
            sub_24882B418();
            (*(v85 + 8))(v75, v77);
            (*(v76 + 8))(v47, v40);
            swift_unknownObjectRelease();
            v61 = 0;
            v62 = v103;
          }
        }

        else
        {
          LOBYTE(v103) = 0;
          sub_248818FB4();
          sub_24882B3B8();
          (*(v81 + 8))(v51, v79);
          (*(v97 + 8))(v47, v40);
          swift_unknownObjectRelease();
          v62 = 0;
          v61 = 3;
        }

        v68 = v93;
      }

      *v68 = v62;
      *(v68 + 8) = v61;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v98);
}

id DepthUnit.unitLength.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = &selRef_meters;
  if (!v1)
  {
    v3 = &selRef_feet;
  }

  v4 = [v2 *v3];

  return v4;
}

DepthCore::DepthUnit_optional __swiftcall DepthUnit.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_248818760@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t WaterType.hashValue.getter()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

uint64_t Pressure.PressureUnit.hashValue.getter()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

double static Pressure.pressure(forDepthValue:unit:waterType:)@<D0>(_BYTE *a1@<X0>, char *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v4 = 0.3048;
  if (*a1)
  {
    v4 = 1.0;
  }

  result = v4 * (dbl_24882EC90[*a2] * a4);
  *a3 = result;
  return result;
}

DepthCore::DepthTransform __swiftcall DepthTransform.init(significantDepth:nominalDepthLimit:deviceLimitDepth:)(DepthCore::DepthValue significantDepth, DepthCore::DepthValue nominalDepthLimit, DepthCore::DepthValue deviceLimitDepth)
{
  v7 = *v3;
  v8 = *v4;
  v9 = *v5;
  *v6 = *v3;
  v6[1] = v8;
  v6[2] = v9;
  result.deviceLimitDepth = *&v9;
  result.nominalDepthLimit = *&v8;
  result.significantDepth = *&v7;
  return result;
}

double static DepthTransform.transform(forDevice:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        v5 = a2;
        swift_once();
        a2 = v5;
      }

      v2 = &xmmword_27EEB0FD0 + 1;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        v7 = a2;
        swift_once();
        a2 = v7;
      }

      v2 = &xmmword_27EEB0FE0 + 1;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      v6 = a2;
      swift_once();
      a2 = v6;
    }

    v2 = &xmmword_27EEB0FC0 + 1;
  }

  result = *v2;
  v4 = *v2 * 1.1;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

double *DepthTransform.callAsFunction(depth:)@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0.0)
  {
    v4 = 1;
LABEL_3:
    *a2 = v4;
    *(a2 + 8) = 3;
    return result;
  }

  if (v3 < *v2)
  {
    *a2 = v3;
    *(a2 + 8) = 0;
    return result;
  }

  v5 = v2[1];
  if (v5 < *v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v3 < v5)
  {
    *a2 = v3;
    *(a2 + 8) = 1;
    return result;
  }

  v6 = v2[2];
  if (v6 < v5)
  {
    goto LABEL_14;
  }

  if (v3 >= v6)
  {
    v4 = 2;
    goto LABEL_3;
  }

  *a2 = v3;
  *(a2 + 8) = 2;
  return result;
}

CMWaterSubmersionDepthState __swiftcall SubmersionStateTransform.callAsFunction(depth:)(DepthCore::DepthValue depth)
{
  v3 = *result;
  if (*result < *v2)
  {
    return 200;
  }

  v4 = v2[1];
  if (v4 < *v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v3 < v4)
  {
    return 300;
  }

  v5 = v2[2];
  if (v5 < v4)
  {
    goto LABEL_11;
  }

  if (v3 >= v5)
  {
    return 600;
  }

  else
  {
    return 500;
  }
}

uint64_t _s9DepthCore05WaterA0O2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      if (v4 == 2 && vabdd_f64(v2, v3) <= 0.0001)
      {
        return 1;
      }
    }

    else if (v2 == 0.0)
    {
      if (v4 == 3 && *&v3 == 0)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (v4 == 3 && *&v3 == 1)
      {
        return 1;
      }
    }

    else if (v4 == 3 && *&v3 == 2)
    {
      return 1;
    }
  }

  else if (*(a1 + 8))
  {
    if (v4 == 1 && vabdd_f64(v2, v3) <= 0.0001)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && vabdd_f64(v2, v3) <= 0.0001)
  {
    return 1;
  }

  return 0;
}

BOOL _s9DepthCore05WaterA0O1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (*(a1 + 8))
    {
      if (v4 != 1)
      {
        v2 = 3;
        goto LABEL_29;
      }

      v5 = *a1;
      v6 = *a2;
      if (vabdd_f64(*&v2, v3) <= 0.0001)
      {
        return 0;
      }

      return v5 < v6;
    }

    if (*(a2 + 8))
    {
      v2 = 2;
      goto LABEL_29;
    }

    v5 = *a1;
    v6 = *a2;
    if (vabdd_f64(*&v2, v3) > 0.0001)
    {
      return v5 < v6;
    }

    return 0;
  }

  if (*(a1 + 8) == 2)
  {
    if (v4 != 2)
    {
      v2 = 4;
      goto LABEL_29;
    }

    v5 = *a1;
    v6 = *a2;
    if (vabdd_f64(*&v2, v3) <= 0.0001)
    {
      return 0;
    }

    return v5 < v6;
  }

  if (!v2)
  {
    if (v4 != 3 || *&v3 != 0)
    {
      v2 = 0;
      goto LABEL_29;
    }

    return 0;
  }

  if (v2 == 1)
  {
    if (v4 == 3 && *&v3 == 1)
    {
      return 0;
    }

    goto LABEL_29;
  }

  v2 = 5;
  if (v4 == 3 && *&v3 == 2)
  {
    return 0;
  }

LABEL_29:
  if (*(a2 + 8) > 1u)
  {
    if (v4 == 2)
    {
      v9 = 4;
    }

    else
    {
      v9 = qword_24882ECA8[*&v3];
    }
  }

  else
  {
    v9 = 2;
    if (*(a2 + 8))
    {
      v9 = 3;
    }
  }

  return v2 < v9;
}

unint64_t sub_248818DBC()
{
  result = qword_27EEAA2D8;
  if (!qword_27EEAA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2D8);
  }

  return result;
}

unint64_t sub_248818E10()
{
  result = qword_27EEAA2E0;
  if (!qword_27EEAA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2E0);
  }

  return result;
}

unint64_t sub_248818E64()
{
  result = qword_27EEAA2E8;
  if (!qword_27EEAA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2E8);
  }

  return result;
}

unint64_t sub_248818EB8()
{
  result = qword_27EEAA2F0;
  if (!qword_27EEAA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2F0);
  }

  return result;
}

unint64_t sub_248818F0C()
{
  result = qword_27EEAA2F8;
  if (!qword_27EEAA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2F8);
  }

  return result;
}

unint64_t sub_248818F60()
{
  result = qword_27EEAA300;
  if (!qword_27EEAA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA300);
  }

  return result;
}

unint64_t sub_248818FB4()
{
  result = qword_27EEAA308;
  if (!qword_27EEAA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA308);
  }

  return result;
}

unint64_t sub_248819008()
{
  result = qword_27EEAA348;
  if (!qword_27EEAA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA348);
  }

  return result;
}

unint64_t sub_248819060()
{
  result = qword_27EEAA350;
  if (!qword_27EEAA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA350);
  }

  return result;
}

unint64_t sub_2488190D0()
{
  result = qword_27EEAA358;
  if (!qword_27EEAA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA358);
  }

  return result;
}

unint64_t sub_248819128()
{
  result = qword_27EEAA360;
  if (!qword_27EEAA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA360);
  }

  return result;
}

unint64_t sub_248819180()
{
  result = qword_27EEAA368;
  if (!qword_27EEAA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA368);
  }

  return result;
}

unint64_t sub_2488191D8()
{
  result = qword_27EEAA370;
  if (!qword_27EEAA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WaterDepth(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WaterDepth(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_2488192C8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_2488192E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_248819400()
{
  result = qword_27EEAA378;
  if (!qword_27EEAA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA378);
  }

  return result;
}

unint64_t sub_248819458()
{
  result = qword_27EEAA380;
  if (!qword_27EEAA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA380);
  }

  return result;
}

unint64_t sub_2488194B0()
{
  result = qword_27EEAA388;
  if (!qword_27EEAA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA388);
  }

  return result;
}

unint64_t sub_248819508()
{
  result = qword_27EEAA390;
  if (!qword_27EEAA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA390);
  }

  return result;
}

unint64_t sub_248819560()
{
  result = qword_27EEAA398;
  if (!qword_27EEAA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA398);
  }

  return result;
}

unint64_t sub_2488195B8()
{
  result = qword_27EEAA3A0;
  if (!qword_27EEAA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3A0);
  }

  return result;
}

unint64_t sub_248819610()
{
  result = qword_27EEAA3A8;
  if (!qword_27EEAA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3A8);
  }

  return result;
}

unint64_t sub_248819668()
{
  result = qword_27EEAA3B0;
  if (!qword_27EEAA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3B0);
  }

  return result;
}

unint64_t sub_2488196C0()
{
  result = qword_27EEAA3B8;
  if (!qword_27EEAA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3B8);
  }

  return result;
}

unint64_t sub_248819718()
{
  result = qword_27EEAA3C0;
  if (!qword_27EEAA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3C0);
  }

  return result;
}

unint64_t sub_248819770()
{
  result = qword_27EEAA3C8;
  if (!qword_27EEAA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3C8);
  }

  return result;
}

unint64_t sub_2488197C8()
{
  result = qword_27EEAA3D0;
  if (!qword_27EEAA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3D0);
  }

  return result;
}

unint64_t sub_248819820()
{
  result = qword_27EEAA3D8;
  if (!qword_27EEAA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3D8);
  }

  return result;
}

unint64_t sub_248819878()
{
  result = qword_27EEAA3E0;
  if (!qword_27EEAA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3E0);
  }

  return result;
}

unint64_t sub_2488198D0()
{
  result = qword_27EEAA3E8;
  if (!qword_27EEAA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3E8);
  }

  return result;
}

unint64_t sub_248819928()
{
  result = qword_27EEAA3F0;
  if (!qword_27EEAA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3F0);
  }

  return result;
}

unint64_t sub_248819980()
{
  result = qword_27EEAA3F8;
  if (!qword_27EEAA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3F8);
  }

  return result;
}

unint64_t sub_2488199D8()
{
  result = qword_27EEAA400;
  if (!qword_27EEAA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA400);
  }

  return result;
}

unint64_t sub_248819A30()
{
  result = qword_27EEAA408;
  if (!qword_27EEAA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA408);
  }

  return result;
}

unint64_t sub_248819A88()
{
  result = qword_27EEAA410;
  if (!qword_27EEAA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA410);
  }

  return result;
}

unint64_t sub_248819AE0()
{
  result = qword_27EEAA418;
  if (!qword_27EEAA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA418);
  }

  return result;
}

uint64_t sub_248819B34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D627553746F6ELL && a2 == 0xEC00000064656772 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C6C616873 && a2 == 0xE700000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E696D6F6ELL && a2 == 0xE700000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000248830C80 == a2 || (sub_24882B4B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000248830CA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24882B4B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t DiveUnderwaterTime.init(divePreviousUnderwaterDuration:currentDescentTime:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2 & 1;
  v5 = a4 + *(type metadata accessor for DiveUnderwaterTime(0) + 20);

  return sub_248819DD8(a3, v5);
}

uint64_t sub_248819DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnderwaterTime(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_248819E5C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DiveUnderwaterTime.divePreviousUnderwaterDuration.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t DiveUnderwaterTime.currentDescentTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DiveUnderwaterTime(0) + 20);

  return sub_24881A4FC(v3, a1);
}

double sub_248819F3C(void (*a1)(uint64_t), double (*a2)(char *))
{
  v4 = sub_24882AB78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v10 = MEMORY[0x28223BE20](v4, v7, v8, v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  v13 = a2(v12);
  (*(v5 + 8))(v12, v4);
  return v13;
}

double DiveUnderwaterTime.timeInterval(untilDate:)()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3, v4, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24882AB78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v14 = MEMORY[0x28223BE20](v8, v11, v12, v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v14, v17, v18, v19);
  v22 = &v40 - v21;
  MEMORY[0x28223BE20](v20, v23, v24, v25);
  v27 = &v40 - v26;
  v28 = *v0;
  v29 = *(v0 + 8);
  v30 = type metadata accessor for DiveUnderwaterTime(0);
  sub_24881A4FC(v0 + *(v30 + 20), v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    v35 = 0.0;
    if (!EnumCaseMultiPayload)
    {
      (*(v9 + 32))(v16, v7, v8);
      sub_24882AB08();
      v35 = v37;
      (*(v9 + 8))(v16, v8);
    }
  }

  else
  {
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v33 = *(v9 + 32);
    v33(v27, v7, v8);
    v33(v22, &v7[v32], v8);
    sub_24882AB08();
    v35 = v34;
    v36 = *(v9 + 8);
    v36(v22, v8);
    v36(v27, v8);
  }

  v38 = 0.0;
  if (!v29)
  {
    v38 = v28;
  }

  return v38 + v35;
}

double UnderwaterTime.timeInterval(untilDate:)()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3, v4, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24882AB78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v14 = MEMORY[0x28223BE20](v8, v11, v12, v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v14, v17, v18, v19);
  v22 = &v36 - v21;
  MEMORY[0x28223BE20](v20, v23, v24, v25);
  v27 = &v36 - v26;
  sub_24881A4FC(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    v32 = 0.0;
    if (!EnumCaseMultiPayload)
    {
      (*(v9 + 32))(v16, v7, v8);
      sub_24882AB08();
      v32 = v34;
      (*(v9 + 8))(v16, v8);
    }
  }

  else
  {
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v30 = *(v9 + 32);
    v30(v27, v7, v8);
    v30(v22, &v7[v29], v8);
    sub_24882AB08();
    v32 = v31;
    v33 = *(v9 + 8);
    v33(v22, v8);
    v33(v27, v8);
  }

  return v32;
}

uint64_t sub_24881A4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnderwaterTime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL UnderwaterTime.isZero.getter()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3, v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v0, v7);
  v8 = swift_getEnumCaseMultiPayload() == 3;
  sub_24881A600(v7);
  return v8;
}

uint64_t sub_24881A600(uint64_t a1)
{
  v2 = type metadata accessor for UnderwaterTime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL UnderwaterTime.isActive.getter()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3, v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_24881A600(v7);
  }

  else
  {
    v9 = sub_24882AB78();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  return EnumCaseMultiPayload == 0;
}

BOOL UnderwaterTime.isTentative.getter()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3, v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v10 = sub_24882AB78();
    v11 = *(*(v10 - 8) + 8);
    v11(&v7[v9], v10);
    v11(v7, v10);
  }

  else
  {
    sub_24881A600(v7);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t UnderwaterTime.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UnderwaterTime(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6, v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = sub_24882AB78();
      v13 = *(v12 - 8);
      (*(v13 + 32))(a1, v10, v12);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v16 = sub_24882AB78();
    v17 = *(v16 - 8);
    (*(v17 + 32))(a1, v10, v16);
    (*(v17 + 56))(a1, 0, 1, v16);
    return (*(v17 + 8))(&v10[v15], v16);
  }

  v18 = sub_24882AB78();
  return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
}

uint64_t UnderwaterTime.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UnderwaterTime(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6, v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = sub_24882AB78();
      v13 = *(v12 - 8);
      (*(v13 + 56))(a1, 1, 1, v12);
      return (*(v13 + 8))(v10, v12);
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v16 = sub_24882AB78();
    v17 = *(v16 - 8);
    (*(v17 + 32))(a1, &v10[v15], v16);
    (*(v17 + 56))(a1, 0, 1, v16);
    return (*(v17 + 8))(v10, v16);
  }

  v18 = sub_24882AB78();
  return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
}

uint64_t UnderwaterTime.asTentative(usingEndDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UnderwaterTime(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9, v10, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v3, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v16 = sub_24882AB78();
    v17 = *(*(v16 - 8) + 8);
    v17(&v13[v15], v16);
    v17(v13, v16);
LABEL_5:
    v21 = 1;
    return (*(v7 + 56))(a2, v21, 1, v6);
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v19 = sub_24882AB78();
  v20 = *(v19 - 8);
  (*(v20 + 32))(a2, v13, v19);
  (*(v20 + 16))(a2 + v18, a1, v19);
  swift_storeEnumTagMultiPayload();
  v21 = 0;
  return (*(v7 + 56))(a2, v21, 1, v6);
}

uint64_t UnderwaterTime.makeTentative(usingEndDate:)(uint64_t a1)
{
  v3 = type metadata accessor for UnderwaterTime(0);
  v4 = *(*(v3 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v3, v5, v6, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11, v12, v13);
  v15 = &v23 - v14;
  sub_24881A4FC(v1, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }
  }

  else if (!result)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v18 = sub_24882AB78();
    v19 = *(v18 - 8);
    (*(v19 + 32))(v15, v10, v18);
    (*(v19 + 16))(&v15[v17], a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_24881A600(v1);
    return sub_248819DD8(v15, v1);
  }

  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v21 = sub_24882AB78();
  v22 = *(*(v21 - 8) + 8);
  v22(&v10[v20], v21);
  return (v22)(v10, v21);
}

uint64_t UnderwaterTime.complete(withEndDate:)(uint64_t a1)
{
  v3 = sub_24882AB78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v9 = MEMORY[0x28223BE20](v3, v6, v7, v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12, v13, v14);
  v16 = &v33 - v15;
  v17 = type metadata accessor for UnderwaterTime(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19, v20, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520);
      v27 = *(v4 + 8);
      v27(&v23[*(v26 + 48)], v3);
      return (v27)(v23, v3);
    }

    sub_24881A600(v1);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24881A600(v1);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520);
    v30 = *(v29 + 48);
    v31 = *(v4 + 32);
    v31(v16, v23, v3);
    v31(v11, &v23[v30], v3);
    v32 = *(v29 + 48);
    v31(v1, v16, v3);
    v31((v1 + v32), v11, v3);
  }

  else
  {
    sub_24881A600(v1);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    (*(v4 + 32))(v1, v23, v3);
    (*(v4 + 16))(v1 + v25, a1, v3);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24881B378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24882B4B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24881B408(uint64_t a1)
{
  v2 = sub_24881D338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B444(uint64_t a1)
{
  v2 = sub_24881D338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881B480()
{
  v1 = 1869768058;
  v2 = 0x76697461746E6574;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0x657669746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24881B4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24881DCA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24881B530(uint64_t a1)
{
  v2 = sub_24881D23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B56C(uint64_t a1)
{
  v2 = sub_24881D23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881B5A8(uint64_t a1)
{
  v2 = sub_24881D290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B5E4(uint64_t a1)
{
  v2 = sub_24881D290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881B620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

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

uint64_t sub_24881B704(uint64_t a1)
{
  v2 = sub_24881D2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B740(uint64_t a1)
{
  v2 = sub_24881D2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881B77C(uint64_t a1)
{
  v2 = sub_24881D38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B7B8(uint64_t a1)
{
  v2 = sub_24881D38C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnderwaterTime.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA420, &qword_24882ECC8);
  v108 = *(v2 - 8);
  v109 = v2;
  v3 = *(v108 + 64);
  MEMORY[0x28223BE20](v2, v4, v5, v6);
  v107 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA428, &qword_24882ECD0);
  v105 = *(v8 - 8);
  v106 = v8;
  v9 = *(v105 + 64);
  MEMORY[0x28223BE20](v8, v10, v11, v12);
  v104 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA430, &qword_24882ECD8);
  v100 = *(v14 - 8);
  v101 = v14;
  v15 = *(v100 + 64);
  MEMORY[0x28223BE20](v14, v16, v17, v18);
  v99 = &v98 - v19;
  v20 = sub_24882AB78();
  v21 = *(v20 - 8);
  v112 = v20;
  v113 = v21;
  v22 = *(v21 + 64);
  v26 = MEMORY[0x28223BE20](v20, v23, v24, v25);
  v111 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v26, v28, v29, v30);
  v103 = &v98 - v32;
  v36 = MEMORY[0x28223BE20](v31, v33, v34, v35);
  v110 = &v98 - v37;
  v41 = MEMORY[0x28223BE20](v36, v38, v39, v40);
  v102 = &v98 - v42;
  MEMORY[0x28223BE20](v41, v43, v44, v45);
  v47 = &v98 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA438, &qword_24882ECE0);
  v98 = *(v48 - 8);
  v49 = *(v98 + 64);
  MEMORY[0x28223BE20](v48, v50, v51, v52);
  v54 = &v98 - v53;
  v55 = type metadata accessor for UnderwaterTime(0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55, v57, v58, v59);
  v61 = &v98 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA440, &qword_24882ECE8);
  v63 = *(v62 - 8);
  v116 = v62;
  v117 = v63;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62, v65, v66, v67);
  v69 = &v98 - v68;
  v70 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24881D23C();
  v115 = v69;
  sub_24882B568();
  sub_24881A4FC(v114, v61);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v119 = 0;
      sub_24881D38C();
      v96 = v115;
      v95 = v116;
      sub_24882B438();
      (*(v98 + 8))(v54, v48);
      return (*(v117 + 8))(v96, v95);
    }

    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v81 = v112;
    v80 = v113;
    v82 = *(v113 + 32);
    v83 = v103;
    v82(v103, v61, v112);
    v82(v111, &v61[v79], v81);
    v126 = 3;
    sub_24881D290();
    v84 = v107;
    v86 = v115;
    v85 = v116;
    sub_24882B438();
    v125 = 0;
    sub_24881D3E0(&qword_27EEAA1B0);
    v87 = v109;
    v88 = v118;
    sub_24882B488();
    if (!v88)
    {
      v124 = 1;
      sub_24882B488();
    }

    (*(v108 + 8))(v84, v87);
    v97 = *(v80 + 8);
    v97(v111, v81);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v73 = v112;
      v72 = v113;
      (*(v113 + 32))(v47, v61, v112);
      v120 = 1;
      sub_24881D338();
      v74 = v99;
      v76 = v115;
      v75 = v116;
      sub_24882B438();
      sub_24881D3E0(&qword_27EEAA1B0);
      v77 = v101;
      sub_24882B488();
      (*(v100 + 8))(v74, v77);
      (*(v72 + 8))(v47, v73);
      return (*(v117 + 8))(v76, v75);
    }

    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v81 = v112;
    v90 = v113;
    v91 = *(v113 + 32);
    v83 = v102;
    v91(v102, v61, v112);
    v91(v110, &v61[v89], v81);
    v123 = 2;
    sub_24881D2E4();
    v92 = v104;
    v86 = v115;
    v85 = v116;
    sub_24882B438();
    v122 = 0;
    sub_24881D3E0(&qword_27EEAA1B0);
    v93 = v106;
    v94 = v118;
    sub_24882B488();
    if (!v94)
    {
      v121 = 1;
      sub_24882B488();
    }

    (*(v105 + 8))(v92, v93);
    v97 = *(v90 + 8);
    v97(v110, v81);
  }

  v97(v83, v81);
  return (*(v117 + 8))(v86, v85);
}

uint64_t UnderwaterTime.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA470, &qword_24882ECF0);
  v101 = *(v98 - 8);
  v3 = *(v101 + 64);
  MEMORY[0x28223BE20](v98, v4, v5, v6);
  v106 = &v90 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA478, &qword_24882ECF8);
  v99 = *(v8 - 8);
  v100 = v8;
  v9 = *(v99 + 64);
  MEMORY[0x28223BE20](v8, v10, v11, v12);
  v105 = &v90 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA480, &qword_24882ED00);
  v15 = *(v14 - 8);
  v96 = v14;
  v97 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17, v18, v19);
  v104 = &v90 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA488, &qword_24882ED08);
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = *(v94 + 64);
  MEMORY[0x28223BE20](v21, v23, v24, v25);
  v102 = &v90 - v26;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA490, &unk_24882ED10);
  v103 = *(v108 - 8);
  v27 = *(v103 + 64);
  MEMORY[0x28223BE20](v108, v28, v29, v30);
  v32 = &v90 - v31;
  v33 = type metadata accessor for UnderwaterTime(0);
  v34 = *(*(v33 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v33, v35, v36, v37);
  v40 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v38, v41, v42, v43);
  v46 = &v90 - v45;
  v50 = MEMORY[0x28223BE20](v44, v47, v48, v49);
  v52 = &v90 - v51;
  MEMORY[0x28223BE20](v50, v53, v54, v55);
  v57 = &v90 - v56;
  v59 = a1[3];
  v58 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v59);
  sub_24881D23C();
  v60 = v109;
  sub_24882B558();
  if (!v60)
  {
    v90 = v52;
    v61 = v104;
    v109 = v46;
    v91 = v40;
    v63 = v105;
    v62 = v106;
    v92 = v57;
    v93 = v33;
    v64 = v103;
    v66 = v107;
    v65 = v108;
    v67 = sub_24882B428();
    v68 = (2 * *(v67 + 16)) | 1;
    v111 = v67;
    v112 = v67 + 32;
    v113 = 0;
    v114 = v68;
    v69 = sub_2487FF2B0();
    if (v69 != 4 && v113 == v114 >> 1)
    {
      if (v69 > 1u)
      {
        if (v69 != 2)
        {
          v115 = 3;
          sub_24881D290();
          v83 = v62;
          sub_24882B3B8();
          sub_24882AB78();
          v115 = 0;
          sub_24881D3E0(&qword_27EEAA1C8);
          v84 = v91;
          v85 = v98;
          sub_24882B418();
          v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
          v115 = 1;
          sub_24882B418();
          (*(v101 + 8))(v83, v85);
          (*(v64 + 8))(v32, v108);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v71 = v92;
          sub_248819DD8(v84, v92);
          v72 = v107;
          goto LABEL_14;
        }

        v115 = 2;
        sub_24881D2E4();
        sub_24882B3B8();
        sub_24882AB78();
        v115 = 0;
        sub_24881D3E0(&qword_27EEAA1C8);
        v79 = v100;
        sub_24882B418();
        v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
        v115 = 1;
        sub_24882B418();
        (*(v99 + 8))(v63, v79);
        (*(v64 + 8))(v32, v65);
        swift_unknownObjectRelease();
        v88 = v109;
        swift_storeEnumTagMultiPayload();
        v89 = v88;
      }

      else
      {
        if (!v69)
        {
          v115 = 0;
          sub_24881D38C();
          v70 = v102;
          sub_24882B3B8();
          (*(v94 + 8))(v70, v95);
          (*(v64 + 8))(v32, v65);
          swift_unknownObjectRelease();
          v71 = v92;
          swift_storeEnumTagMultiPayload();
          v72 = v66;
LABEL_14:
          sub_248819DD8(v71, v72);
          return __swift_destroy_boxed_opaque_existential_0(v110);
        }

        v115 = 1;
        sub_24881D338();
        sub_24882B3B8();
        sub_24882AB78();
        sub_24881D3E0(&qword_27EEAA1C8);
        v80 = v90;
        v81 = v61;
        v82 = v96;
        sub_24882B418();
        (*(v97 + 8))(v81, v82);
        (*(v64 + 8))(v32, v65);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v89 = v80;
      }

      v71 = v92;
      sub_248819DD8(v89, v92);
      v72 = v66;
      goto LABEL_14;
    }

    v73 = sub_24882B2E8();
    swift_allocError();
    v74 = v65;
    v76 = v75;
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60) + 48);
    *v76 = v93;
    sub_24882B3C8();
    sub_24882B2D8();
    (*(*(v73 - 8) + 104))(v76, *MEMORY[0x277D84160], v73);
    swift_willThrow();
    (*(v64 + 8))(v32, v74);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v110);
}

uint64_t _s9DepthCore14UnderwaterTimeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24882AB78();
  v5 = *(v4 - 8);
  v107 = v4;
  v108 = v5;
  v6 = *(v5 + 64);
  v10 = MEMORY[0x28223BE20](v4, v7, v8, v9);
  v103 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v10, v12, v13, v14);
  v104 = &v101 - v16;
  v20 = MEMORY[0x28223BE20](v15, v17, v18, v19);
  v105 = &v101 - v21;
  v25 = MEMORY[0x28223BE20](v20, v22, v23, v24);
  v27 = &v101 - v26;
  v31 = MEMORY[0x28223BE20](v25, v28, v29, v30);
  v106 = &v101 - v32;
  v36 = MEMORY[0x28223BE20](v31, v33, v34, v35);
  v102 = &v101 - v37;
  MEMORY[0x28223BE20](v36, v38, v39, v40);
  v42 = &v101 - v41;
  v43 = type metadata accessor for UnderwaterTime(0);
  v44 = *(*(v43 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v43, v45, v46, v47);
  v50 = &v101 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v48, v51, v52, v53);
  v56 = &v101 - v55;
  MEMORY[0x28223BE20](v54, v57, v58, v59);
  v61 = &v101 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA538, &qword_24882F328);
  v63 = *(*(v62 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v62 - 8, v64, v65, v66);
  v69 = &v101 - v68;
  v70 = &v101 + *(v67 + 56) - v68;
  sub_24881A4FC(a1, &v101 - v68);
  sub_24881A4FC(a2, v70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_24881A4FC(v69, v61);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v108 + 8))(v61, v107);
LABEL_16:
        sub_24881DE14(v69);
LABEL_17:
        v82 = 0;
        return v82 & 1;
      }

      v98 = v107;
      v97 = v108;
      (*(v108 + 32))(v42, v70, v107);
      v82 = sub_24882AB48();
      v99 = *(v97 + 8);
      v99(v42, v98);
      v99(v61, v98);
LABEL_19:
      sub_24881A600(v69);
      return v82 & 1;
    }

    sub_24881A4FC(v69, v56);
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v94 = *(v108 + 8);
      v95 = &v56[v83];
      v96 = v107;
      v94(v95, v107);
      v94(v56, v96);
      goto LABEL_16;
    }

    v85 = v107;
    v84 = v108;
    v86 = *(v108 + 32);
    v87 = v102;
    v86(v102, v70, v107);
    v86(v106, &v56[v83], v85);
    v86(v27, &v70[v83], v85);
    v88 = sub_24882AB48();
    v89 = *(v84 + 8);
    v89(v56, v85);
    if (v88)
    {
      v90 = v106;
      v82 = sub_24882AB48();
      v89(v27, v85);
      v89(v90, v85);
      v89(v87, v85);
      goto LABEL_19;
    }

    v89(v27, v85);
    v89(v106, v85);
    v89(v87, v85);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24881A4FC(v69, v50);
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v91 = *(v108 + 8);
      v92 = &v50[v72];
      v93 = v107;
      v91(v92, v107);
      v91(v50, v93);
      goto LABEL_16;
    }

    v74 = v107;
    v73 = v108;
    v75 = *(v108 + 32);
    v76 = v105;
    v75(v105, v70, v107);
    v77 = v104;
    v75(v104, &v50[v72], v74);
    v78 = &v70[v72];
    v79 = v103;
    v75(v103, v78, v74);
    v80 = sub_24882AB48();
    v81 = *(v73 + 8);
    v81(v50, v74);
    if (v80)
    {
      v82 = sub_24882AB48();
      v81(v79, v74);
      v81(v77, v74);
      v81(v76, v74);
      goto LABEL_19;
    }

    v81(v79, v74);
    v81(v77, v74);
    v81(v76, v74);
LABEL_23:
    sub_24881A600(v69);
    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

  sub_24881A600(v69);
  v82 = 1;
  return v82 & 1;
}

unint64_t sub_24881D23C()
{
  result = qword_27EEAA448;
  if (!qword_27EEAA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA448);
  }

  return result;
}

unint64_t sub_24881D290()
{
  result = qword_27EEAA450;
  if (!qword_27EEAA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA450);
  }

  return result;
}

unint64_t sub_24881D2E4()
{
  result = qword_27EEAA458;
  if (!qword_27EEAA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA458);
  }

  return result;
}

unint64_t sub_24881D338()
{
  result = qword_27EEAA460;
  if (!qword_27EEAA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA460);
  }

  return result;
}

unint64_t sub_24881D38C()
{
  result = qword_27EEAA468;
  if (!qword_27EEAA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA468);
  }

  return result;
}

uint64_t sub_24881D3E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24882AB78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24881D44C()
{
  sub_2488117C0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnderwaterTime(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24881D520()
{
  sub_24881D594();
  if (v0 <= 0x3F)
  {
    sub_24881D5DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24881D594()
{
  if (!qword_27EEAA4B8)
  {
    v0 = sub_24882AB78();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA4B8);
    }
  }
}

void sub_24881D5DC()
{
  if (!qword_27EEAA4C0)
  {
    sub_24882AB78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EEAA4C0);
    }
  }
}

uint64_t getEnumTagSinglePayload for UnderwaterTime.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnderwaterTime.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24881D7D8()
{
  result = qword_27EEAA4C8;
  if (!qword_27EEAA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4C8);
  }

  return result;
}

unint64_t sub_24881D830()
{
  result = qword_27EEAA4D0;
  if (!qword_27EEAA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4D0);
  }

  return result;
}

unint64_t sub_24881D888()
{
  result = qword_27EEAA4D8;
  if (!qword_27EEAA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4D8);
  }

  return result;
}

unint64_t sub_24881D8E0()
{
  result = qword_27EEAA4E0;
  if (!qword_27EEAA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4E0);
  }

  return result;
}

unint64_t sub_24881D938()
{
  result = qword_27EEAA4E8;
  if (!qword_27EEAA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4E8);
  }

  return result;
}

unint64_t sub_24881D990()
{
  result = qword_27EEAA4F0;
  if (!qword_27EEAA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4F0);
  }

  return result;
}

unint64_t sub_24881D9E8()
{
  result = qword_27EEAA4F8;
  if (!qword_27EEAA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4F8);
  }

  return result;
}

unint64_t sub_24881DA40()
{
  result = qword_27EEAA500;
  if (!qword_27EEAA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA500);
  }

  return result;
}

unint64_t sub_24881DA98()
{
  result = qword_27EEAA508;
  if (!qword_27EEAA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA508);
  }

  return result;
}

unint64_t sub_24881DAF0()
{
  result = qword_27EEAA510;
  if (!qword_27EEAA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA510);
  }

  return result;
}

unint64_t sub_24881DB48()
{
  result = qword_27EEAA518;
  if (!qword_27EEAA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA518);
  }

  return result;
}

unint64_t sub_24881DBA0()
{
  result = qword_27EEAA520;
  if (!qword_27EEAA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA520);
  }

  return result;
}

unint64_t sub_24881DBF8()
{
  result = qword_27EEAA528;
  if (!qword_27EEAA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA528);
  }

  return result;
}

unint64_t sub_24881DC50()
{
  result = qword_27EEAA530;
  if (!qword_27EEAA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA530);
  }

  return result;
}

uint64_t sub_24881DCA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1869768058 && a2 == 0xE400000000000000;
  if (v3 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76697461746E6574 && a2 == 0xE900000000000065 || (sub_24882B4B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_24882B4B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24881DE14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA538, &qword_24882F328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InSessionRecoveryData.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InSessionRecoveryData.sessionUUID.setter(uint64_t a1)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InSessionRecoveryData.underwaterTime.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InSessionRecoveryData(0) + 20);

  return sub_24881E024(a1, v3);
}

uint64_t sub_24881E024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnderwaterTime(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InSessionRecoveryData.maxDepth.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for InSessionRecoveryData(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t InSessionRecoveryData.maxDepth.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for InSessionRecoveryData(0);
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

__n128 InSessionRecoveryData.temperatureRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InSessionRecoveryData(0) + 28));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t InSessionRecoveryData.temperatureRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for InSessionRecoveryData(0);
  v6 = v1 + *(result + 28);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t InSessionRecoveryData.didHaveActiveRuntimeSession.setter(char a1)
{
  result = type metadata accessor for InSessionRecoveryData(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t InSessionRecoveryData.init(sessionUUID:underwaterTime:maxDepth:temperatureRange:didHaveActiveRuntimeSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 16);
  v15 = sub_24882ABE8();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for InSessionRecoveryData(0);
  result = sub_24881F7CC(a2, a6 + v16[5], type metadata accessor for UnderwaterTime);
  v18 = a6 + v16[6];
  *v18 = v10;
  *(v18 + 8) = v11;
  v19 = a6 + v16[7];
  *v19 = v12;
  *(v19 + 8) = v13;
  *(v19 + 16) = v14;
  *(a6 + v16[8]) = a5;
  return result;
}

uint64_t sub_24881E3F4()
{
  v1 = *v0;
  v2 = 0x556E6F6973736573;
  v3 = 0x687470654478616DLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461777265646E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24881E4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248820878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24881E4E0(uint64_t a1)
{
  v2 = sub_24881E828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881E51C(uint64_t a1)
{
  v2 = sub_24881E828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InSessionRecoveryData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA540, &qword_24882F330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24881E828();
  sub_24882B568();
  LOBYTE(v22) = 0;
  sub_24882ABE8();
  sub_24881E87C(&qword_27EEAA1A8, MEMORY[0x277CC95F0]);
  sub_24882B488();
  if (!v2)
  {
    v14 = type metadata accessor for InSessionRecoveryData(0);
    v15 = v14[5];
    LOBYTE(v22) = 1;
    type metadata accessor for UnderwaterTime(0);
    sub_24881E87C(&qword_27EEAA550, type metadata accessor for UnderwaterTime);
    sub_24882B488();
    v16 = (v3 + v14[6]);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    *&v22 = v17;
    BYTE8(v22) = v16;
    v24 = 2;
    sub_24880EAB4();
    sub_24882B488();
    v18 = (v3 + v14[7]);
    v19 = *(v18 + 16);
    v22 = *v18;
    v23 = v19;
    v24 = 3;
    sub_24880EB08();
    sub_24882B488();
    v20 = *(v3 + v14[8]);
    LOBYTE(v22) = 4;
    sub_24882B468();
  }

  return (*(v6 + 8))(v12, v5);
}