uint64_t sub_22B233718()
{
  v75 = v0;
  v1 = v0[165];
  v2 = v0[164];
  v3 = v0[163];
  swift_willThrow();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = v0[152];
  v5 = v0[99];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[80];
  v9 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v5, v9, v7);

  v10 = sub_22B36050C();
  v11 = sub_22B360D1C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[152];
  if (v12)
  {
    v14 = v0[151];
    v15 = v0[92];
    v68 = v0[91];
    v71 = v0[99];
    v67 = v0[80];
    v16 = v0[79];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v74[0] = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, v74);
    *(v17 + 12) = 2080;
    v19 = sub_22B1A7B20(v14, v13, v74);

    *(v17 + 14) = v19;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_22B1A7B20(v16, v67, v74);
    _os_log_impl(&dword_22B116000, v10, v11, "%s site %s could not get placemark from %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    (*(v15 + 8))(v71, v68);
  }

  else
  {
    v20 = v0[99];
    v21 = v0[92];
    v22 = v0[91];
    v23 = v0[152];

    (*(v21 + 8))(v20, v22);
  }

  v24 = v0[162];
  v25 = v0[150];
  v26 = v0[72];
  v27 = v0[71];

  sub_22B35F1DC();
  if (v25)
  {
    v28 = v0[162];
    v29 = v0[150];
    v30 = v0[149];

    sub_22B35F1BC();
  }

  v31 = v0[125];
  v32 = v0[84];
  v33 = v0[83];
  sub_22B170BE0(v0[128], v31, &qword_27D8BA340, &qword_22B363FB0);
  v34 = *(v32 + 48);
  if (v34(v31, 1, v33) == 1)
  {
    sub_22B123284(v0[125], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v69 = v0[158];
    v72 = v0[162];
    v35 = v0[157];
    v36 = v0[156];
    v37 = v0[142];
    v38 = v0[126];
    v39 = v0[87];
    v40 = v0[84];
    v41 = v0[83];
    (*(v40 + 32))(v39, v0[125], v41);
    v36(v38, v39, v41);
    v37(v38, 0, 1, v41);
    sub_22B35F2BC();
    (*(v40 + 8))(v39, v41);
  }

  v42 = v0[124];
  v43 = v0[83];
  sub_22B170BE0(v0[130], v42, &qword_27D8BA340, &qword_22B363FB0);
  if (v34(v42, 1, v43) == 1)
  {
    sub_22B123284(v0[124], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v70 = v0[158];
    v73 = v0[162];
    v44 = v0[157];
    v45 = v0[156];
    v46 = v0[142];
    v47 = v0[126];
    v48 = v0[86];
    v49 = v0[84];
    v50 = v0[83];
    (*(v49 + 32))(v48, v0[124], v50);
    v45(v47, v48, v50);
    v46(v47, 0, 1, v50);
    sub_22B35F23C();
    (*(v49 + 8))(v48, v50);
  }

  v51 = v0[123];
  v52 = v0[83];
  sub_22B170BE0(v0[127], v51, &qword_27D8BA340, &qword_22B363FB0);
  if (v34(v51, 1, v52) == 1)
  {
    sub_22B123284(v0[123], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v53 = v0[162];
    v54 = v0[158];
    v55 = v0[157];
    v56 = v0[156];
    v57 = v0[142];
    v58 = v0[126];
    v59 = v0[85];
    v60 = v0[84];
    v61 = v0[83];
    (*(v60 + 32))(v59, v0[123], v61);
    v56(v58, v59, v61);
    v57(v58, 0, 1, v61);
    sub_22B35F10C();
    (*(v60 + 8))(v59, v61);
  }

  v62 = v0[162];
  v63 = v0[160];
  v64 = v0[159];
  sub_22B35F39C();
  LOBYTE(v74[0]) = 0;
  sub_22B35F2FC();
  v65 = swift_task_alloc();
  v0[166] = v65;
  *v65 = v0;
  v65[1] = sub_22B233D5C;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B233D5C()
{
  v2 = *v1;
  v3 = *(*v1 + 1328);
  v4 = *v1;
  *(*v1 + 1336) = v0;

  v5 = *(v2 + 528);
  if (v0)
  {
    v6 = sub_22B234680;
  }

  else
  {
    v6 = sub_22B233E88;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B233E88()
{
  v1 = v0[155];
  v2 = v0[153];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[168] = qword_28140BCB0;

  v6 = swift_task_alloc();
  v0[169] = v6;
  *v6 = v0;
  v6[1] = sub_22B233FE8;
  v7 = v0[70];
  v8 = v0[69];

  return sub_22B202CC8(v8, v7);
}

uint64_t sub_22B233FE8(uint64_t a1)
{
  v2 = *(*v1 + 1352);
  v3 = *(*v1 + 1344);
  v4 = *(*v1 + 528);
  v6 = *v1;
  *(*v1 + 1360) = a1;

  return MEMORY[0x2822009F8](sub_22B23411C, v4, 0);
}

uint64_t sub_22B23411C()
{
  v70 = v0;
  v1 = v0[170];
  v69[0] = 60.0;
  if (v1 && (v2 = v1, v3 = sub_22B35FFCC(), v2, v3 >= 60))
  {
    v13 = v3;
    v69[0] = v3;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = v0 + 96;
    v14 = v0[96];
    v15 = v0[92];
    v16 = v0[91];
    v17 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v15 + 16))(v14, v17, v16);
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v13;
      v12 = "Using server defined delay of %f";
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = v0 + 95;
    v5 = v0[95];
    v6 = v0[92];
    v7 = v0[91];
    v8 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 0x404E000000000000;
      v12 = "Using default delay of %f";
LABEL_11:
      _os_log_impl(&dword_22B116000, v9, v10, v12, v11, 0xCu);
      v18 = *v4;
      MEMORY[0x23188F650](v11, -1, -1);
      goto LABEL_13;
    }
  }

  v18 = *v4;
LABEL_13:
  v19 = v0[167];
  v20 = v0[92];
  v21 = v0[91];
  v22 = v0[68];
  v23 = v0[67];

  (*(v20 + 8))(v18, v21);
  v24 = os_transaction_create();
  result = sub_22B235AA8(v69, v23, v22, v24, v25, &unk_283EFCF30, sub_22B23E414, &block_descriptor_63);
  if (!v19)
  {
    v27 = v0[162];
    v28 = v0[150];
    v29 = v0[148];
    v30 = v0[144];
    v31 = v0[138];
    v32 = v0[134];
    v33 = v0[132];
    v65 = v0[130];
    v67 = v0[170];
    v34 = v0[82];
    v0[65] = v27;
    v35 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
    sub_22B360AEC();

    swift_unknownObjectRelease();

    sub_22B123284(v65, &qword_27D8BA340, &qword_22B363FB0);
    v36 = v0[130];
    v37 = v0[129];
    v38 = v0[128];
    v39 = v0[127];
    v40 = v0[126];
    v41 = v0[125];
    v42 = v0[124];
    v43 = v0[123];
    v44 = v0[122];
    v45 = v0[119];
    v47 = v0[116];
    v48 = v0[113];
    v49 = v0[110];
    v50 = v0[107];
    v51 = v0[104];
    v52 = v0[103];
    v53 = v0[102];
    v54 = v0[101];
    v55 = v0[100];
    v56 = v0[99];
    v57 = v0[98];
    v58 = v0[97];
    v59 = v0[96];
    v60 = v0[95];
    v61 = v0[94];
    v62 = v0[93];
    v63 = v0[90];
    v64 = v0[87];
    v66 = v0[86];
    v68 = v0[85];

    v46 = v0[1];

    return v46();
  }

  return result;
}

uint64_t sub_22B234680()
{
  v1 = v0[167];
  v2 = v0[162];
  v3 = v0[155];
  v4 = v0[153];

  v5 = v0[129];
  v6 = v0[128];
  sub_22B123284(v0[127], &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v7 = swift_task_alloc();
  v0[171] = v7;
  *v7 = v0;
  v7[1] = sub_22B234794;
  v8 = v0[138];
  v9 = v0[70];
  v10 = v0[69];

  return sub_22B235718(v8, v10, v9);
}

uint64_t sub_22B234794()
{
  v1 = *(*v0 + 1368);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2348A4, v2, 0);
}

uint64_t sub_22B2348A4()
{
  v1 = v0[150];
  v2 = v0[148];
  v3 = v0[144];
  v4 = v0[138];
  v5 = v0[134];
  v6 = v0[132];
  v7 = v0[130];
  sub_22B134CDC();
  v8 = swift_allocError();
  *v9 = 12;
  swift_willThrow();

  sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);
  v10 = v0[82];
  v0[63] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v11 = v0[130];
  v12 = v0[129];
  v13 = v0[128];
  v14 = v0[127];
  v15 = v0[126];
  v16 = v0[125];
  v17 = v0[124];
  v18 = v0[123];
  v19 = v0[122];
  v20 = v0[119];
  v23 = v0[116];
  v24 = v0[113];
  v25 = v0[110];
  v26 = v0[107];
  v27 = v0[104];
  v28 = v0[103];
  v29 = v0[102];
  v30 = v0[101];
  v31 = v0[100];
  v32 = v0[99];
  v33 = v0[98];
  v34 = v0[97];
  v35 = v0[96];
  v36 = v0[95];
  v37 = v0[94];
  v38 = v0[93];
  v39 = v0[90];
  v40 = v0[87];
  v41 = v0[86];
  v42 = v0[85];

  v21 = v0[1];

  return v21();
}

uint64_t sub_22B234B54()
{
  v1 = *(*v0 + 1376);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B234C64, v2, 0);
}

uint64_t sub_22B234C64()
{
  v1 = v0[138];
  v2 = v0[134];
  v3 = v0[132];
  v4 = v0[130];
  sub_22B134CDC();
  v5 = swift_allocError();
  *v6 = 0;
  swift_willThrow();

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v7 = v0[82];
  v0[63] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v8 = v0[130];
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[127];
  v12 = v0[126];
  v13 = v0[125];
  v14 = v0[124];
  v15 = v0[123];
  v16 = v0[122];
  v17 = v0[119];
  v20 = v0[116];
  v21 = v0[113];
  v22 = v0[110];
  v23 = v0[107];
  v24 = v0[104];
  v25 = v0[103];
  v26 = v0[102];
  v27 = v0[101];
  v28 = v0[100];
  v29 = v0[99];
  v30 = v0[98];
  v31 = v0[97];
  v32 = v0[96];
  v33 = v0[95];
  v34 = v0[94];
  v35 = v0[93];
  v36 = v0[90];
  v37 = v0[87];
  v38 = v0[86];
  v39 = v0[85];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22B234EF0()
{
  v1 = *(*v0 + 1384);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B235000, v2, 0);
}

uint64_t sub_22B235000()
{
  v1 = v0[138];
  v2 = v0[134];
  v3 = v0[132];
  v4 = v0[130];
  sub_22B134CDC();
  v5 = swift_allocError();
  *v6 = 24;
  swift_willThrow();

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v7 = v0[82];
  v0[63] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v8 = v0[130];
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[127];
  v12 = v0[126];
  v13 = v0[125];
  v14 = v0[124];
  v15 = v0[123];
  v16 = v0[122];
  v17 = v0[119];
  v20 = v0[116];
  v21 = v0[113];
  v22 = v0[110];
  v23 = v0[107];
  v24 = v0[104];
  v25 = v0[103];
  v26 = v0[102];
  v27 = v0[101];
  v28 = v0[100];
  v29 = v0[99];
  v30 = v0[98];
  v31 = v0[97];
  v32 = v0[96];
  v33 = v0[95];
  v34 = v0[94];
  v35 = v0[93];
  v36 = v0[90];
  v37 = v0[87];
  v38 = v0[86];
  v39 = v0[85];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22B235290()
{
  v1 = *(v0 + 656);
  *(v0 + 504) = *(v0 + 1080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1016);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v10 = *(v0 + 976);
  v11 = *(v0 + 952);
  v14 = *(v0 + 928);
  v15 = *(v0 + 904);
  v16 = *(v0 + 880);
  v17 = *(v0 + 856);
  v18 = *(v0 + 832);
  v19 = *(v0 + 824);
  v20 = *(v0 + 816);
  v21 = *(v0 + 808);
  v22 = *(v0 + 800);
  v23 = *(v0 + 792);
  v24 = *(v0 + 784);
  v25 = *(v0 + 776);
  v26 = *(v0 + 768);
  v27 = *(v0 + 760);
  v28 = *(v0 + 752);
  v29 = *(v0 + 744);
  v30 = *(v0 + 720);
  v31 = *(v0 + 696);
  v32 = *(v0 + 688);
  v33 = *(v0 + 680);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B2354CC()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1056);

  v3 = *(v0 + 656);
  *(v0 + 504) = *(v0 + 1112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1008);
  v9 = *(v0 + 1000);
  v10 = *(v0 + 992);
  v11 = *(v0 + 984);
  v12 = *(v0 + 976);
  v13 = *(v0 + 952);
  v16 = *(v0 + 928);
  v17 = *(v0 + 904);
  v18 = *(v0 + 880);
  v19 = *(v0 + 856);
  v20 = *(v0 + 832);
  v21 = *(v0 + 824);
  v22 = *(v0 + 816);
  v23 = *(v0 + 808);
  v24 = *(v0 + 800);
  v25 = *(v0 + 792);
  v26 = *(v0 + 784);
  v27 = *(v0 + 776);
  v28 = *(v0 + 768);
  v29 = *(v0 + 760);
  v30 = *(v0 + 752);
  v31 = *(v0 + 744);
  v32 = *(v0 + 720);
  v33 = *(v0 + 696);
  v34 = *(v0 + 688);
  v35 = *(v0 + 680);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22B235718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2357DC, 0, 0);
}

uint64_t sub_22B2357DC()
{
  v1 = v0[5];
  v2 = sub_22B36014C();
  v0[11] = v3;
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_22B36012C();
  v6 = sub_22B36013C();
  v7 = sub_22B36018C();
  v9 = v8;

  v0[12] = v9;
  sub_22B3602DC();
  v10 = sub_22B36029C();
  v0[13] = v10;
  v11 = *(MEMORY[0x277D181A8] + 4);
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_22B2358F4;
  v13 = v0[6];
  v14 = v0[7];

  return MEMORY[0x2821724D0](v4, v5, v7, v9, v13, v14, v10);
}

uint64_t sub_22B2358F4(char a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 112);
  v7 = *v2;

  v8 = v4[13];
  v9 = v4[12];
  v10 = v4[11];
  if (v1)
  {

    v11 = sub_22B23E904;
  }

  else
  {

    *(v5 + 121) = a1 & 1;
    v11 = sub_22B23E8F4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_22B235AA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v47 = a7;
  v45[1] = a6;
  v46 = a2;
  v11 = sub_22B3605EC();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v54 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22B36062C();
  v53 = *(v55 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B36064C();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = v45 - v21;
  v22 = sub_22B36052C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v22, qword_28140BD10);
  swift_beginAccess();
  (*(v23 + 16))(v26, v27, v22);
  v28 = sub_22B36050C();
  v29 = sub_22B360D2C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v45[0] = a1;
    v31 = a4;
    v32 = a3;
    v33 = v30;
    *v30 = 0;
    _os_log_impl(&dword_22B116000, v28, v29, "Taking extended lifetime", v30, 2u);
    v34 = v33;
    a3 = v32;
    a4 = v31;
    a1 = v45[0];
    MEMORY[0x23188F650](v34, -1, -1);
  }

  (*(v23 + 8))(v26, v22);
  sub_22B11870C();
  v45[0] = sub_22B360D9C();
  sub_22B36063C();
  swift_beginAccess();
  v35 = *a1;
  v36 = v49;
  sub_22B36065C();
  v37 = v51;
  v50 = *(v50 + 8);
  (v50)(v19, v51);
  v38 = swift_allocObject();
  v38[2] = v46;
  v38[3] = a3;
  v38[4] = a4;
  aBlock[4] = v47;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = v48;
  v39 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v40 = v52;
  sub_22B36060C();
  aBlock[14] = MEMORY[0x277D84F90];
  sub_22B23E468(&qword_281409370, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  v41 = v54;
  v42 = v57;
  sub_22B36104C();
  v43 = v45[0];
  MEMORY[0x23188E6A0](v36, v40, v41, v39);
  _Block_release(v39);

  (*(v56 + 8))(v41, v42);
  (*(v53 + 8))(v40, v55);
  (v50)(v36, v37);
}

uint64_t sub_22B236054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_22B360B3C();
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;

  sub_22B322A98(0, 0, v11, a5, v13);

  return sub_22B123284(v11, &qword_27D8BA8D0, &qword_22B363610);
}

uint64_t sub_22B236188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_22B36052C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B236254, 0, 0);
}

uint64_t sub_22B236254()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[11] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[12] = v5;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Performing first fetch of AMI Data", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  v12 = *(v11 + 8);
  v0[14] = v12;
  v12(v9, v10);
  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_22B236440;
  v15 = v0[5];
  v14 = v0[6];

  return sub_22B2E2A14(v15, v14);
}

uint64_t sub_22B236440()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B23E900, 0, 0);
}

uint64_t sub_22B23653C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B3604BC();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = sub_22B36052C();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v11 = sub_22B36047C();
  v3[18] = v11;
  v12 = *(v11 - 8);
  v3[19] = v12;
  v13 = *(v12 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v14 = sub_22B3604AC();
  v3[23] = v14;
  v15 = *(v14 - 8);
  v3[24] = v15;
  v16 = *(v15 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B236788, v2, 0);
}

uint64_t sub_22B236788()
{
  v40 = v0;
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = __swift_project_value_buffer(v3, qword_28140BC88);
  (*(v2 + 16))(v1, v4, v3);
  sub_22B36048C();
  sub_22B36045C();
  v5 = sub_22B36048C();
  v6 = sub_22B360E2C();
  if (sub_22B360FDC())
  {
    v7 = v0[22];
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v5, v6, v9, "revokeUtilitySubscription", "", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[18];
  v13 = v0[19];

  (*(v13 + 16))(v11, v10, v12);
  v14 = sub_22B3604EC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[26] = sub_22B3604DC();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v17 = v0[17];
  v18 = v0[12];
  v19 = v0[13];
  v20 = v0[6];
  v21 = __swift_project_value_buffer(v18, qword_28140BD10);
  v0[27] = v21;
  swift_beginAccess();
  v22 = *(v19 + 16);
  v0[28] = v22;
  v0[29] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v17, v21, v18);

  v23 = sub_22B36050C();
  v24 = sub_22B360D2C();

  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[17];
  v27 = v0[12];
  v28 = v0[13];
  if (v25)
  {
    v30 = v0[5];
    v29 = v0[6];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, &v39);
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_22B1A7B20(v30, v29, &v39);
    _os_log_impl(&dword_22B116000, v23, v24, "%s Revoke subscription for %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v32, -1, -1);
    MEMORY[0x23188F650](v31, -1, -1);
  }

  v33 = *(v28 + 8);
  v33(v26, v27);
  v0[30] = v33;
  v34 = swift_task_alloc();
  v0[31] = v34;
  *v34 = v0;
  v34[1] = sub_22B236B34;
  v35 = v0[6];
  v36 = v0[7];
  v37 = v0[5];

  return sub_22B22250C(v37, v35, 0, 0);
}

uint64_t sub_22B236B34(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_22B236C4C, v3, 0);
}

uint64_t sub_22B236C4C()
{
  v95 = v0;
  v1 = *(v0 + 256);
  if (!v1)
  {
    v34 = *(v0 + 232);
    v35 = *(v0 + 48);
    (*(v0 + 224))(*(v0 + 112), *(v0 + 216), *(v0 + 96));

    v36 = sub_22B36050C();
    v37 = sub_22B360D1C();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 240);
    v41 = *(v0 + 104);
    v40 = *(v0 + 112);
    v42 = *(v0 + 96);
    if (v38)
    {
      v44 = *(v0 + 40);
      v43 = *(v0 + 48);
      v92 = *(v0 + 240);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v94[0] = v46;
      *v45 = 136315394;
      *(v45 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v94);
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_22B1A7B20(v44, v43, v94);
      _os_log_impl(&dword_22B116000, v36, v37, "%s Site not found. %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v46, -1, -1);
      MEMORY[0x23188F650](v45, -1, -1);

      v92(v40, v42);
    }

    else
    {

      v39(v40, v42);
    }

    v47 = *(v0 + 208);
    sub_22B134CDC();
    swift_allocError();
    *v48 = 10;
    swift_willThrow();
    goto LABEL_30;
  }

  v2 = *(v0 + 200);
  v3 = sub_22B36048C();
  v4 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v3, v4, v7, "Site Fetched", "", v6, 2u);
    MEMORY[0x23188F650](v6, -1, -1);
  }

  v8 = sub_22B35F43C();
  if (v9)
  {
    v10 = v9;
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = v8;
      v13 = sub_22B35F12C();
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v17 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v17 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          v18 = *(v0 + 88);
          v19 = *(v0 + 48);
          v87 = *(v0 + 40);
          v89 = *(v0 + 200);
          v20 = sub_22B35F14C();
          v22 = v21;
          v23 = sub_22B35F04C();
          v85 = v24;
          v86 = v23;
          sub_22B360B2C();
          v25 = sub_22B360B6C();
          (*(*(v25 - 8) + 56))(v18, 0, 1, v25);
          v26 = swift_allocObject();
          v26[2] = 0;
          v26[3] = 0;
          v26[4] = v20;
          v26[5] = v22;
          v26[6] = v87;
          v26[7] = v19;
          v26[8] = v15;
          v26[9] = v16;
          v26[10] = v12;
          v26[11] = v10;
          v26[12] = v86;
          v26[13] = v85;

          sub_22B145224(0, 0, v18, &unk_22B366230, v26);

          sub_22B123284(v18, &qword_27D8BA8D0, &qword_22B363610);
          v27 = sub_22B36048C();
          v28 = sub_22B360E3C();
          if (sub_22B360FDC())
          {
            v29 = *(v0 + 176);
            v30 = swift_slowAlloc();
            *v30 = 0;
            v31 = sub_22B36046C();
            _os_signpost_emit_with_name_impl(&dword_22B116000, v27, v28, v31, "[START] Reset Site", "", v30, 2u);
            MEMORY[0x23188F650](v30, -1, -1);
          }

          v32 = swift_task_alloc();
          *(v0 + 264) = v32;
          *v32 = v0;
          v32[1] = sub_22B237498;

          return EKEnergySite.save(reset:tokenUpdate:)(1, 0);
        }
      }

      v64 = *(v0 + 224);
      v63 = *(v0 + 232);
      v65 = *(v0 + 216);
      v66 = *(v0 + 128);
      v67 = *(v0 + 96);
      v68 = *(v0 + 48);

      v64(v66, v65, v67);

      v51 = sub_22B36050C();
      v52 = sub_22B360D1C();

      v69 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 240);
      v55 = *(v0 + 128);
      v57 = *(v0 + 96);
      v70 = *(v0 + 104);
      if (v69)
      {
        v72 = *(v0 + 40);
        v71 = *(v0 + 48);
        v90 = *(v0 + 240);
        v60 = swift_slowAlloc();
        v93 = v1;
        v94[0] = swift_slowAlloc();
        v61 = v94[0];
        *v60 = 136315394;
        *(v60 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v94);
        *(v60 + 12) = 2082;
        *(v60 + 14) = sub_22B1A7B20(v72, v71, v94);
        v62 = "%s SubscriptionID missing %{public}s";
        goto LABEL_27;
      }

LABEL_28:

      v54(v55, v57);
      goto LABEL_29;
    }
  }

  v49 = *(v0 + 232);
  v50 = *(v0 + 48);
  (*(v0 + 224))(*(v0 + 120), *(v0 + 216), *(v0 + 96));

  v51 = sub_22B36050C();
  v52 = sub_22B360D1C();

  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 240);
  v55 = *(v0 + 120);
  v57 = *(v0 + 96);
  v56 = *(v0 + 104);
  if (!v53)
  {
    goto LABEL_28;
  }

  v59 = *(v0 + 40);
  v58 = *(v0 + 48);
  v90 = *(v0 + 240);
  v60 = swift_slowAlloc();
  v93 = v1;
  v94[0] = swift_slowAlloc();
  v61 = v94[0];
  *v60 = 136315394;
  *(v60 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v94);
  *(v60 + 12) = 2082;
  *(v60 + 14) = sub_22B1A7B20(v59, v58, v94);
  v62 = "%s UtilityID missing %{public}s";
LABEL_27:
  _os_log_impl(&dword_22B116000, v51, v52, v62, v60, 0x16u);
  swift_arrayDestroy();
  v73 = v61;
  v1 = v93;
  MEMORY[0x23188F650](v73, -1, -1);
  MEMORY[0x23188F650](v60, -1, -1);

  v90(v55, v57);
LABEL_29:
  v74 = *(v0 + 208);
  sub_22B134CDC();
  swift_allocError();
  *v75 = 12;
  swift_willThrow();

LABEL_30:

  v77 = *(v0 + 192);
  v76 = *(v0 + 200);
  v78 = *(v0 + 184);
  v80 = *(v0 + 160);
  v79 = *(v0 + 168);
  v82 = *(v0 + 128);
  v81 = *(v0 + 136);
  v83 = *(v0 + 112);
  v88 = *(v0 + 88);
  v91 = *(v0 + 80);
  (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));
  (*(v77 + 8))(v76, v78);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_22B237498()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_22B237898;
  }

  else
  {
    v6 = sub_22B2375C4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2375C4()
{
  v1 = v0[25];
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = v0[22];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v6, "[END] Reset Site", "", v5, 2u);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v7 = v0[25];
  v8 = v0[26];
  v9 = v0[20];

  v10 = sub_22B36048C();
  sub_22B3604CC();
  v11 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v12 = v10;
    v13 = v0[26];
    v14 = v0[9];
    v15 = v0[10];
    v16 = v0[8];

    sub_22B3604FC();

    if ((*(v14 + 88))(v15, v16) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[9] + 8))(v0[10], v0[8]);
      v17 = "";
    }

    v10 = v12;
    v18 = v0[20];
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v12, v11, v20, "revokeUtilitySubscription", v17, v19, 2u);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  v22 = v0[25];
  v21 = v0[26];
  v24 = v0[23];
  v23 = v0[24];
  v26 = v0[21];
  v25 = v0[22];
  v27 = v0[19];
  v28 = v0[20];
  v29 = v0[18];
  v34 = v0[17];
  v35 = v0[16];
  v36 = v0[15];
  v37 = v0[14];
  v38 = v0[11];
  v39 = v0[10];

  v30 = *(v27 + 8);
  v30(v28, v29);
  v30(v25, v29);
  (*(v23 + 8))(v22, v24);

  v31 = v0[1];
  v32 = v0[32];

  return v31(v32);
}

uint64_t sub_22B237898()
{
  v1 = v0[32];
  v2 = v0[26];

  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v13 = v0[11];
  v14 = v0[10];
  v15 = v0[34];
  (*(v0[19] + 8))(v0[22], v0[18]);
  (*(v4 + 8))(v3, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B2379CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v28;
  *(v8 + 128) = v26;
  *(v8 + 144) = v27;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = sub_22B3604BC();
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v12 = sub_22B36052C();
  *(v8 + 192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v15 = sub_22B36037C();
  *(v8 + 232) = v15;
  v16 = *(v15 - 8);
  *(v8 + 240) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v18 = sub_22B36047C();
  *(v8 + 256) = v18;
  v19 = *(v18 - 8);
  *(v8 + 264) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v21 = sub_22B3604AC();
  *(v8 + 296) = v21;
  v22 = *(v21 - 8);
  *(v8 + 304) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B237C48, 0, 0);
}

uint64_t sub_22B237C48()
{
  v96 = v0;
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = __swift_project_value_buffer(v3, qword_28140BC88);
  (*(v2 + 16))(v1, v4, v3);
  sub_22B36048C();
  sub_22B36045C();
  v5 = sub_22B36048C();
  v6 = sub_22B360E2C();
  if (sub_22B360FDC())
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v5, v6, v9, "revokeUtilitySubscriptionTask", "", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[32];
  v13 = v0[33];
  v14 = v0[12];

  (*(v13 + 16))(v11, v10, v12);
  v15 = sub_22B3604EC();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[40] = sub_22B3604DC();
  if (v14)
  {
    v18 = v0[31];
    v19 = v0[11];
    v20 = v0[12];

    sub_22B36034C();
    v21 = v0[39];
    (*(v0[30] + 8))(v0[31], v0[29]);
    v22 = sub_22B36048C();
    v23 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v24 = v0[36];
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v22, v23, v26, "[START] Revoke Subscription", "", v25, 2u);
      MEMORY[0x23188F650](v25, -1, -1);
    }

    sub_22B36012C();
    sub_22B3602DC();
    v27 = sub_22B36029C();
    v0[41] = v27;
    v28 = *(MEMORY[0x277D181A8] + 4);
    v29 = swift_task_alloc();
    v0[42] = v29;
    *v29 = v0;
    v29[1] = sub_22B238504;
    v30 = v0[17];
    v31 = v0[18];
    v32 = v0[15];
    v33 = v0[16];
    v34 = v0[11];

    return MEMORY[0x2821724D0](v34, v20, v32, v33, v30, v31, v27);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v35 = v0[27];
    v36 = v0[24];
    v37 = v0[25];
    v38 = v0[14];
    v39 = __swift_project_value_buffer(v36, qword_28140BD10);
    swift_beginAccess();
    (*(v37 + 16))(v35, v39, v36);

    v40 = sub_22B36050C();
    v41 = sub_22B360D1C();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[27];
    v44 = v0[24];
    v45 = v0[25];
    if (v42)
    {
      v47 = v0[13];
      v46 = v0[14];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v95[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v95);
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_22B1A7B20(v47, v46, v95);
      _os_log_impl(&dword_22B116000, v40, v41, "%s Auth token missing for %{public}s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v49, -1, -1);
      MEMORY[0x23188F650](v48, -1, -1);
    }

    (*(v45 + 8))(v43, v44);
    sub_22B134CDC();
    v50 = swift_allocError();
    *v51 = 23;
    swift_willThrow();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v53 = v0[25];
    v52 = v0[26];
    v54 = v0[24];
    v55 = v0[16];
    v56 = __swift_project_value_buffer(v54, qword_28140BD10);
    swift_beginAccess();
    (*(v53 + 16))(v52, v56, v54);

    v57 = v50;
    v58 = sub_22B36050C();
    v59 = sub_22B360D1C();

    v60 = os_log_type_enabled(v58, v59);
    v62 = v0[25];
    v61 = v0[26];
    v63 = v0[24];
    if (v60)
    {
      v94 = v0[26];
      v64 = v0[15];
      v65 = v0[16];
      v93 = v0[24];
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v95[0] = v68;
      *v66 = 136315650;
      *(v66 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v95);
      *(v66 + 12) = 2082;
      *(v66 + 14) = sub_22B1A7B20(v64, v65, v95);
      *(v66 + 22) = 2114;
      v69 = v50;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 24) = v70;
      *v67 = v70;
      _os_log_impl(&dword_22B116000, v58, v59, "%s for subID: %{public}s failed, error: %{public}@", v66, 0x20u);
      sub_22B123284(v67, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v67, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v68, -1, -1);
      MEMORY[0x23188F650](v66, -1, -1);

      (*(v62 + 8))(v94, v93);
    }

    else
    {

      (*(v62 + 8))(v61, v63);
    }

    v71 = v0[39];
    v72 = sub_22B36048C();
    v73 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v74 = v0[36];
      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v72, v73, v76, "[END] Revoke Subscription Failed", "", v75, 2u);
      MEMORY[0x23188F650](v75, -1, -1);
    }

    else
    {
    }

    v77 = v0[39];
    v78 = sub_22B36048C();
    v79 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v80 = v0[36];
      v81 = swift_slowAlloc();
      *v81 = 0;
      v82 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v78, v79, v82, "[START] Purge Subscription", "", v81, 2u);
      MEMORY[0x23188F650](v81, -1, -1);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v83 = swift_task_alloc();
    v0[44] = v83;
    *v83 = v0;
    v83[1] = sub_22B2389F8;
    v84 = v0[19];
    v85 = v0[20];
    v86 = v0[17];
    v87 = v0[18];
    v88 = v0[15];
    v89 = v0[16];
    v91 = v0[13];
    v90 = v0[14];

    return sub_22B23C4EC(v91, v90, v86, v87, v88, v89, v84, v85);
  }
}

uint64_t sub_22B238504(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v7 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v5 = sub_22B238DCC;
  }

  else
  {

    v5 = sub_22B238624;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B238624()
{
  v42 = v0;
  v1 = *(v0 + 312);
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v6, "[END] Revoke Subscription", "", v5, 2u);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 224);
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v10 = *(v0 + 128);
  v11 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v7, v11, v8);

  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 368);
    v40 = *(v0 + 224);
    v15 = *(v0 + 192);
    v16 = *(v0 + 200);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, &v41);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_22B1A7B20(v18, v17, &v41);
    *(v19 + 22) = 1024;
    *(v19 + 24) = v14;
    _os_log_impl(&dword_22B116000, v12, v13, "%s Revoked subscription: %{public}s %{BOOL}d", v19, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v20, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);

    (*(v16 + 8))(v40, v15);
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);

    (*(v23 + 8))(v21, v22);
  }

  v24 = *(v0 + 312);
  v25 = sub_22B36048C();
  v26 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v27 = *(v0 + 288);
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v25, v26, v29, "[START] Purge Subscription", "", v28, 2u);
    MEMORY[0x23188F650](v28, -1, -1);
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v30 = swift_task_alloc();
  *(v0 + 352) = v30;
  *v30 = v0;
  v30[1] = sub_22B2389F8;
  v31 = *(v0 + 152);
  v32 = *(v0 + 160);
  v33 = *(v0 + 136);
  v34 = *(v0 + 144);
  v35 = *(v0 + 120);
  v36 = *(v0 + 128);
  v38 = *(v0 + 104);
  v37 = *(v0 + 112);

  return sub_22B23C4EC(v38, v37, v33, v34, v35, v36, v31, v32);
}

uint64_t sub_22B2389F8()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_22B239208;
  }

  else
  {
    v3 = sub_22B238B0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B238B0C()
{
  v1 = v0[39];
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = v0[36];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v6, "[END] Purge Subscription", "", v5, 2u);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v7 = v0[39];
  v8 = v0[40];
  v9 = v0[34];

  v10 = sub_22B36048C();
  sub_22B3604CC();
  v11 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v12 = v0[40];
    v13 = v0[22];
    v14 = v0[23];
    v15 = v0[21];

    sub_22B3604FC();

    if ((*(v13 + 88))(v14, v15) == *MEMORY[0x277D85B00])
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[22] + 8))(v0[23], v0[21]);
      v16 = "";
    }

    v17 = v0[34];
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v10, v11, v19, "revokeUtilitySubscriptionTask", v16, v18, 2u);
    MEMORY[0x23188F650](v18, -1, -1);
  }

  v21 = v0[39];
  v20 = v0[40];
  v23 = v0[37];
  v22 = v0[38];
  v25 = v0[35];
  v24 = v0[36];
  v26 = v0[33];
  v27 = v0[34];
  v28 = v0[32];
  v32 = v0[31];
  v33 = v0[28];
  v34 = v0[27];
  v35 = v0[26];
  v36 = v0[23];

  v29 = *(v26 + 8);
  v29(v27, v28);
  v29(v24, v28);
  (*(v22 + 8))(v21, v23);

  v30 = v0[1];

  return v30();
}

uint64_t sub_22B238DCC()
{
  v46 = v0;

  v1 = *(v0 + 344);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 128);
  v6 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v6, v4);

  v7 = v1;
  v8 = sub_22B36050C();
  v9 = sub_22B360D1C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 192);
  if (v10)
  {
    v44 = *(v0 + 208);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    v43 = *(v0 + 192);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v45 = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, &v45);
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_22B1A7B20(v14, v15, &v45);
    *(v16 + 22) = 2114;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v20;
    *v17 = v20;
    _os_log_impl(&dword_22B116000, v8, v9, "%s for subID: %{public}s failed, error: %{public}@", v16, 0x20u);
    sub_22B123284(v17, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    (*(v12 + 8))(v44, v43);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = *(v0 + 312);
  v22 = sub_22B36048C();
  v23 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v24 = *(v0 + 288);
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v22, v23, v26, "[END] Revoke Subscription Failed", "", v25, 2u);
    MEMORY[0x23188F650](v25, -1, -1);
  }

  else
  {
  }

  v27 = *(v0 + 312);
  v28 = sub_22B36048C();
  v29 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v30 = *(v0 + 288);
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v28, v29, v32, "[START] Purge Subscription", "", v31, 2u);
    MEMORY[0x23188F650](v31, -1, -1);
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v33 = swift_task_alloc();
  *(v0 + 352) = v33;
  *v33 = v0;
  v33[1] = sub_22B2389F8;
  v34 = *(v0 + 152);
  v35 = *(v0 + 160);
  v36 = *(v0 + 136);
  v37 = *(v0 + 144);
  v38 = *(v0 + 120);
  v39 = *(v0 + 128);
  v41 = *(v0 + 104);
  v40 = *(v0 + 112);

  return sub_22B23C4EC(v41, v40, v36, v37, v38, v39, v34, v35);
}

uint64_t sub_22B239208()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[23];

  (*(v8 + 8))(v5, v9);
  (*(v4 + 8))(v2, v3);

  v11 = v0[1];
  v12 = v0[45];

  return v11();
}

uint64_t sub_22B239328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[28] = a3;
  v8 = swift_task_alloc();
  v5[31] = v8;
  *v8 = v5;
  v8[1] = sub_22B2393DC;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B2393DC(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_22B2394F4, v3, 0);
}

uint64_t sub_22B2394F4()
{
  if (v0[32])
  {
    v2 = v0[28];
    v1 = v0[29];
    if (sub_22B35F38C() == v2 && v3 == v1)
    {
    }

    else
    {
      v5 = v0[28];
      v6 = v0[29];
      v7 = sub_22B36134C();

      if ((v7 & 1) == 0)
      {
        v9 = v0[28];
        v8 = v0[29];

        sub_22B35F39C();
        v10 = swift_task_alloc();
        v0[33] = v10;
        *v10 = v0;
        v10[1] = sub_22B2396A8;

        return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
      }
    }

    v14 = v0[1];
    v15 = v0[32];

    return v14(v15);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v12 = 10;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22B2396A8()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_22B2399B8;
  }

  else
  {
    v6 = sub_22B2397D4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2397D4()
{
  v1 = v0[32];
  v2 = *(v0[30] + 112);
  sub_22B35EEEC();
  v3 = sub_22B36081C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634C0;
  v0[24] = 1684957547;
  v0[25] = 0xE400000000000000;
  v5 = MEMORY[0x277D837D0];
  sub_22B36110C();
  *(inited + 96) = v5;
  strcpy((inited + 72), "StateChanged");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  v0[26] = 0x444965746973;
  v0[27] = 0xE600000000000000;
  sub_22B36110C();
  v6 = sub_22B35F3AC();
  *(inited + 168) = v5;
  *(inited + 144) = v6;
  *(inited + 152) = v7;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACC0, &unk_22B3662C0);
  swift_arrayDestroy();
  v8 = sub_22B3606CC();

  [v2 postNotificationName:v3 object:0 userInfo:v8 deliverImmediately:1];

  v9 = v0[1];
  v10 = v0[32];

  return v9(v10);
}

uint64_t sub_22B2399B8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B239A1C(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v6 = sub_22B35EE4C();
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = sub_22B3602FC();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A8, &qword_22B366210);
  v3[16] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA8B0, &unk_22B366218) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v15 = sub_22B36052C();
  v3[21] = v15;
  v16 = *(v15 - 8);
  v3[22] = v16;
  v17 = *(v16 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v18 = sub_22B35DE9C();
  v3[25] = v18;
  v19 = *(v18 - 8);
  v3[26] = v19;
  v20 = *(v19 + 64) + 15;
  v3[27] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v22 = swift_task_alloc();
  v3[29] = v22;
  *v22 = v3;
  v22[1] = sub_22B239D0C;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B239D0C(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_22B239E24, v3, 0);
}

uint64_t sub_22B239E24()
{
  v1 = v0[30];
  if (v1)
  {
    v2 = sub_22B35F0BC();
    v0[31] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = sub_22B35F43C();
      v0[32] = v7;
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        sub_22B36012C();
        sub_22B3602DC();
        v10 = sub_22B36029C();
        v0[33] = v10;
        v11 = *(MEMORY[0x277D181C0] + 4);
        v12 = swift_task_alloc();
        v0[34] = v12;
        *v12 = v0;
        v12[1] = sub_22B23A058;

        return MEMORY[0x2821724E8](v5, v4, v8, v9, v10);
      }
    }

    sub_22B134CDC();
    swift_allocError();
    *v14 = 12;
    swift_willThrow();
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v13 = 10;
    swift_willThrow();
  }

  v16 = v0[27];
  v15 = v0[28];
  v18 = v0[23];
  v17 = v0[24];
  v20 = v0[19];
  v19 = v0[20];
  v22 = v0[17];
  v21 = v0[18];
  v23 = v0[15];
  v24 = v0[12];

  v25 = v0[1];

  return v25();
}

uint64_t sub_22B23A058(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(v4 + 280) = v1;

  v7 = *(v4 + 256);
  v8 = *(v4 + 248);
  v9 = *(v4 + 72);

  if (v1)
  {
    v10 = sub_22B23A71C;
  }

  else
  {
    *(v4 + 288) = a1;
    v10 = sub_22B23A1F0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B23A1F0()
{
  v1 = v0[36];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  sub_22B35DE6C();
  sub_22B36017C();
  sub_22B35DE0C();
  (*(v6 + 8))(v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_22B35F2DC();
  sub_22B36015C();
  sub_22B35F07C();
  sub_22B36016C();
  sub_22B35F0CC();

  v7 = swift_task_alloc();
  v0[37] = v7;
  *v7 = v0;
  v7[1] = sub_22B23A33C;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
}

uint64_t sub_22B23A33C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_22B23B0E4;
  }

  else
  {
    v6 = sub_22B23A468;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B23A468()
{
  v35 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[30];
    v10 = v0[24];
    v11 = v0[21];
    v12 = v0[22];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B3694A0, &v34);
    *(v13 + 12) = 2080;
    v15 = sub_22B35F3AC();
    v17 = sub_22B1A7B20(v15, v16, &v34);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_22B116000, v7, v8, "%s for siteID: %s succeeded", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v18 = v0[24];
    v19 = v0[21];
    v20 = v0[22];

    (*(v20 + 8))(v18, v19);
  }

  v22 = v0[27];
  v21 = v0[28];
  v24 = v0[23];
  v23 = v0[24];
  v26 = v0[19];
  v25 = v0[20];
  v28 = v0[17];
  v27 = v0[18];
  v29 = v0[15];
  v30 = v0[12];

  v31 = v0[1];
  v32 = v0[30];

  return v31(v32);
}

uint64_t sub_22B23A71C()
{
  v83 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[30];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = v1;
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[35];
    v12 = v0[30];
    v13 = v0[22];
    v78 = v0[21];
    v79 = v0[23];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v82[0] = v16;
    *v14 = 136315650;
    *(v14 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B3694A0, v82);
    *(v14 + 12) = 2080;
    v17 = sub_22B35F3AC();
    v19 = sub_22B1A7B20(v17, v18, v82);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2112;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v21;
    *v15 = v21;
    _os_log_impl(&dword_22B116000, v9, v10, "%s for siteID: %s error: %@", v14, 0x20u);
    sub_22B123284(v15, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    (*(v13 + 8))(v79, v78);
  }

  else
  {
    v23 = v0[22];
    v22 = v0[23];
    v24 = v0[21];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[35];
  v26 = v0[19];
  v27 = v0[20];
  v29 = v0[16];
  v28 = v0[17];
  v30 = v0[13];
  v31 = v0[14];
  v0[8] = v25;
  v32 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  v33 = swift_dynamicCast();
  v34 = *(v31 + 56);
  v34(v27, v33 ^ 1u, 1, v30);
  (*(v31 + 104))(v26, *MEMORY[0x277D182C8], v30);
  v34(v26, 0, 1, v30);
  v35 = *(v29 + 48);
  sub_22B170BE0(v27, v28, &unk_27D8BA8B0, &unk_22B366218);
  sub_22B170BE0(v26, v28 + v35, &unk_27D8BA8B0, &unk_22B366218);
  v36 = *(v31 + 48);
  if (v36(v28, 1, v30) == 1)
  {
    v37 = v0[13];
    sub_22B123284(v0[19], &unk_27D8BA8B0, &unk_22B366218);
    if (v36(v28 + v35, 1, v37) == 1)
    {
      v38 = v0[20];
      sub_22B123284(v0[17], &unk_27D8BA8B0, &unk_22B366218);
      sub_22B123284(v38, &unk_27D8BA8B0, &unk_22B366218);
LABEL_16:
      v66 = v0[30];
      v68 = v0[11];
      v67 = v0[12];
      v69 = v0[10];
      v70 = sub_22B35F3AC();
      v72 = v71;
      v0[39] = v71;
      (*(v68 + 104))(v67, *MEMORY[0x277D07350], v69);
      v73 = sub_22B35EE3C();
      v75 = v74;
      v0[40] = v74;
      (*(v68 + 8))(v67, v69);
      v76 = swift_task_alloc();
      v0[41] = v76;
      *v76 = v0;
      v76[1] = sub_22B23AE5C;
      v77 = v0[9];

      return sub_22B239328(v70, v72, v73, v75);
    }

    goto LABEL_11;
  }

  v39 = v0[13];
  sub_22B170BE0(v0[17], v0[18], &unk_27D8BA8B0, &unk_22B366218);
  if (v36(v28 + v35, 1, v39) == 1)
  {
    v40 = v0[18];
    v41 = v0[13];
    v42 = v0[14];
    sub_22B123284(v0[19], &unk_27D8BA8B0, &unk_22B366218);
    (*(v42 + 8))(v40, v41);
LABEL_11:
    v43 = v0[20];
    sub_22B123284(v0[17], &qword_27D8BA8A8, &qword_22B366210);
    sub_22B123284(v43, &unk_27D8BA8B0, &unk_22B366218);
    goto LABEL_12;
  }

  v58 = v0[19];
  v81 = v0[20];
  v59 = v0[17];
  v60 = v0[18];
  v62 = v0[14];
  v61 = v0[15];
  v63 = v0[13];
  (*(v62 + 32))(v61, v28 + v35, v63);
  sub_22B23E468(&unk_27D8BA8C0, 255, MEMORY[0x277D182E8]);
  v64 = sub_22B36078C();
  v65 = *(v62 + 8);
  v65(v61, v63);
  sub_22B123284(v58, &unk_27D8BA8B0, &unk_22B366218);
  v65(v60, v63);
  sub_22B123284(v59, &unk_27D8BA8B0, &unk_22B366218);
  sub_22B123284(v81, &unk_27D8BA8B0, &unk_22B366218);
  if (v64)
  {
    goto LABEL_16;
  }

LABEL_12:
  v44 = v0[35];
  v45 = v0[30];
  swift_willThrow();

  v80 = v0[35];
  v47 = v0[27];
  v46 = v0[28];
  v49 = v0[23];
  v48 = v0[24];
  v51 = v0[19];
  v50 = v0[20];
  v53 = v0[17];
  v52 = v0[18];
  v54 = v0[15];
  v55 = v0[12];

  v56 = v0[1];

  return v56();
}

uint64_t sub_22B23AE5C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;

  v7 = v4[40];
  v8 = v4[39];
  v9 = v4[9];
  if (v1)
  {

    v10 = sub_22B23E8F8;
  }

  else
  {

    v10 = sub_22B23AFEC;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B23AFEC()
{
  v1 = v0[35];
  v2 = v0[30];
  swift_willThrow();

  v15 = v0[35];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[15];
  v12 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B23B0E4()
{
  v13 = *(v0 + 304);
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 120);
  v10 = *(v0 + 96);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B23B1D4(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v3[3] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_22B23B2C0;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B23B2C0(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22B23B3D8, v3, 0);
}

uint64_t sub_22B23B3D8()
{
  v1 = v0[6];
  if (v1)
  {
    v0[7] = sub_22B35F12C();
    v0[8] = v2;
    if (v2)
    {
      v0[9] = sub_22B35F43C();
      v0[10] = v3;
      if (v3)
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v4 = qword_28140BCF8;
        v0[11] = qword_28140BCF8;

        return MEMORY[0x2822009F8](sub_22B23B4E8, v4, 0);
      }
    }

    else
    {
    }
  }

  v5 = v0[4];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_22B23B4E8()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 120);
    v4 = *(v1 + 128);
    v5 = *(v0 + 80);
    if (v4)
    {
      v6 = *(v0 + 72);
      v22 = *(v0 + 56);
      v8 = *(v0 + 24);
      v7 = *(v0 + 32);
      v9 = swift_task_alloc();
      *(v9 + 16) = v22;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      *(v9 + 48) = 2;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 72) = v2;
      *(v9 + 80) = v3;
      *(v9 + 88) = v4;
      sub_22B1231A0(v2, v3);
      v10 = v4;
      sub_22B360E7C();
      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
    }

    else
    {
      v17 = *(v0 + 64);
      v18 = *(v0 + 32);
      sub_22B1231A0(*(v1 + 112), *(v1 + 120));

      v19 = sub_22B35DE9C();
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    }
  }

  else
  {
    v13 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = *(v0 + 32);

    v16 = sub_22B35DE9C();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v20 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_22B23B74C, v20, 0);
}

uint64_t sub_22B23B74C()
{
  v1 = *(v0 + 32);

  v2 = sub_22B35DE9C();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2) != 1;
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);
  v4 = *(v0 + 32);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_22B23B81C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B23B920, v1, 0);
}

uint64_t sub_22B23B920()
{
  v42 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  if (v9)
  {
    v13 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_22B1A7B20(0xD000000000000018, 0x800000022B36CCA0, v41);
    *(v14 + 12) = 2082;
    v16 = sub_22B35F3AC();
    v18 = sub_22B1A7B20(v16, v17, v41);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_22B116000, v7, v8, "%s Purge Data for %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v19 = *(v0[6] + 128);
  if (v19)
  {
    v20 = v0[5];
    v41[0] = sub_22B35F04C();
    v41[1] = v21;

    MEMORY[0x23188E270](5064493, 0xE300000000000000);

    v22 = sub_22B36081C();

    [v19 removeObjectForKey_];
  }

  v23 = v0[5];
  v24 = sub_22B35F12C();
  v0[12] = v24;
  v0[13] = v25;
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = v0[5];
    v29 = sub_22B35F43C();
    v0[14] = v29;
    v0[15] = v30;
    if (v30)
    {
      v31 = v30;
      v32 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v32 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v33 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v33 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v33)
        {
          v34 = v29;
          if (qword_2814096B8 != -1)
          {
            swift_once();
          }

          v35 = swift_task_alloc();
          v0[16] = v35;
          *v35 = v0;
          v35[1] = sub_22B23BCFC;

          return sub_22B32C61C(v26, v27, v34, v31);
        }
      }
    }
  }

  v37 = v0[11];
  v38 = v0[7];
  v39 = v0[8];

  v40 = v0[1];

  return v40();
}

uint64_t sub_22B23BCFC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[15];
    v6 = v2[13];

    v7 = v2[11];
    v10 = v2 + 7;
    v8 = v2[7];
    v9 = v10[1];

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {
    v13 = v2[6];

    return MEMORY[0x2822009F8](sub_22B23BE68, v13, 0);
  }
}

uint64_t sub_22B23BE68()
{
  if (qword_281409598 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];
  v4 = sub_22B35DE9C();
  v0[17] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[18] = v6;
  v0[19] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3, 1, 1, v4);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_22B23BFA8;
  v8 = v0[14];
  v9 = v0[12];
  v10 = v0[8];

  return sub_22B1D7088(v9, v2, v8, v1, v10);
}

uint64_t sub_22B23BFA8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 64);
  v11 = *v1;
  *(*v1 + 168) = v0;

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  if (v0)
  {
    v5 = v2[15];
    v6 = v2[13];
    v7 = v2[6];

    v8 = sub_22B23C3EC;
    v9 = v7;
  }

  else
  {
    v9 = v2[6];
    v8 = sub_22B23C110;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22B23C110()
{
  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  (*(v0 + 144))(*(v0 + 56), 1, 1, *(v0 + 136));
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_22B23C214;
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 56);

  return sub_22B305898(v6, v3, v5, v2, v7);
}

uint64_t sub_22B23C214()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 184) = v0;

  sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);

  if (v0)
  {
    v8 = v2[6];

    return MEMORY[0x2822009F8](sub_22B23C46C, v8, 0);
  }

  else
  {
    v9 = v2[11];
    v11 = v2[7];
    v10 = v2[8];

    v12 = *(v7 + 8);

    return v12();
  }
}

uint64_t sub_22B23C3EC()
{
  v1 = v0[21];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B23C46C()
{
  v1 = v0[23];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B23C4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = a8;
  v9[13] = v8;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v9[14] = swift_task_alloc();
  v9[15] = swift_task_alloc();
  v11 = sub_22B36052C();
  v9[16] = v11;
  v12 = *(v11 - 8);
  v9[17] = v12;
  v13 = *(v12 + 64) + 15;
  v9[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B23C600, v8, 0);
}

uint64_t sub_22B23C600()
{
  v34 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  if (v8)
  {
    v13 = v0[5];
    v12 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_22B1A7B20(0xD00000000000003CLL, 0x800000022B36CC60, v33);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_22B1A7B20(v13, v12, v33);
    _os_log_impl(&dword_22B116000, v6, v7, "%s Purge Data for %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v16 = *(v0[13] + 128);
  if (v16)
  {
    v17 = v0[12];
    v33[0] = v0[11];
    v33[1] = v17;

    MEMORY[0x23188E270](5064493, 0xE300000000000000);
    v18 = sub_22B36081C();

    [v16 removeObjectForKey_];
  }

  v19 = v0[10];
  if ((v19 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v20 = v0[9] & 0xFFFFFFFFFFFFLL;
  }

  if (v20 && ((v21 = v0[8], (v21 & 0x2000000000000000) != 0) ? (v22 = HIBYTE(v21) & 0xF) : (v22 = v0[7] & 0xFFFFFFFFFFFFLL), v22))
  {
    if (qword_2814096B8 != -1)
    {
      swift_once();
    }

    v23 = swift_task_alloc();
    v0[19] = v23;
    *v23 = v0;
    v23[1] = sub_22B23C97C;
    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[7];
    v27 = v0[8];

    return sub_22B32C61C(v25, v24, v26, v27);
  }

  else
  {
    v29 = v0[18];
    v30 = v0[14];
    v31 = v0[15];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_22B23C97C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[18];
    v8 = v2 + 14;
    v6 = v2[14];
    v7 = v8[1];

    v9 = *(v4 + 8);

    return v9();
  }

  else
  {
    v11 = v2[13];

    return MEMORY[0x2822009F8](sub_22B23CAD4, v11, 0);
  }
}

uint64_t sub_22B23CAD4()
{
  if (qword_281409598 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_22B35DE9C();
  v0[20] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[21] = v4;
  v0[22] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_22B23CBFC;
  v6 = v0[15];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v10 = v0[8];

  return sub_22B1D7088(v8, v7, v9, v10, v6);
}

uint64_t sub_22B23CBFC()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 192) = v0;

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_22B23CFCC;
  }

  else
  {
    v7 = sub_22B23CD54;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B23CD54()
{
  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  (*(v0 + 168))(*(v0 + 112), 1, 1, *(v0 + 160));
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_22B23CE40;
  v3 = *(v0 + 112);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);

  return sub_22B305898(v5, v4, v6, v7, v3);
}

uint64_t sub_22B23CE40()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 112);
  v4 = *v1;
  v4[26] = v0;

  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  if (v0)
  {
    v5 = v4[13];

    return MEMORY[0x2822009F8](sub_22B23D04C, v5, 0);
  }

  else
  {
    v6 = v4[18];
    v7 = v4[14];
    v8 = v4[15];

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_22B23CFCC()
{
  v1 = v0[24];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B23D04C()
{
  v1 = v0[26];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B23D0CC(uint64_t a1)
{
  v2[68] = v1;
  v2[67] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560) - 8) + 64) + 15;
  v2[69] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[70] = v4;
  v5 = *(v4 - 8);
  v2[71] = v5;
  v6 = *(v5 + 64) + 15;
  v2[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B23D1C8, v1, 0);
}

uint64_t sub_22B23D1C8()
{
  v1 = v0[67];
  v0[73] = sub_22B35F3AC();
  v0[74] = v2;
  v3 = swift_task_alloc();
  v0[75] = v3;
  *v3 = v0;
  v3[1] = sub_22B23D270;
  v4 = v0[68];
  v5 = v0[67];

  return sub_22B23B81C(v5);
}

uint64_t sub_22B23D270()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 544);
  if (v0)
  {
    v6 = sub_22B23DD7C;
  }

  else
  {
    v6 = sub_22B23D39C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B23D39C()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 616) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B23D434, v1, 0);
}

uint64_t sub_22B23D434()
{
  v1 = v0[77];
  v2 = v0[68];
  sub_22B142B18(v0[73], v0[74]);

  return MEMORY[0x2822009F8](sub_22B23D4A8, v2, 0);
}

uint64_t sub_22B23D4A8()
{
  v40 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 536);
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  if (v9)
  {
    v13 = *(v0 + 536);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 136315138;
    v16 = sub_22B35F3AC();
    v18 = sub_22B1A7B20(v16, v17, &v39);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_22B116000, v7, v8, "Site deleted. Removing UtilityExpiredAttempts for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v19 = qword_28140BCA0;
  if (qword_28140BCA0 && (v20 = sub_22B36081C(), v21 = [v19 dictionaryForKey_], v20, v21))
  {
    v22 = sub_22B3606EC();
  }

  else
  {
    v22 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  *(v0 + 528) = v22;
  sub_22B2E641C(v24, v23, (v0 + 456));
  sub_22B123284(v0 + 456, &unk_27D8BA950, &qword_22B364940);
  if (v19)
  {
    v25 = *(v0 + 528);
    v26 = sub_22B3606CC();
    v27 = sub_22B36081C();
    [v19 setObject:v26 forKey:v27];
  }

  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 592);
  v29 = *(v0 + 584);
  v30 = *(v0 + 552);
  v31 = qword_28140BC50;
  *(v0 + 624) = qword_28140BC50;
  sub_22B35DEBC();
  v32 = sub_22B35DF1C();
  *(v0 + 632) = v32;
  v33 = *(v32 - 8);
  *(v0 + 640) = v33;
  v34 = (*(v33 + 48))(v30, 1, v32);
  if (v34 == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = *(v0 + 528);

    v34 = sub_22B23D8A4;
    v35 = v31;
    v36 = 0;
  }

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_22B23D8A4()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[69];
  v5 = v0[68];
  sub_22B12708C(v4);
  (*(v1 + 8))(v4, v2);

  return MEMORY[0x2822009F8](sub_22B23D948, v5, 0);
}

uint64_t sub_22B23D948()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(*(v0 + 544) + 112);
  sub_22B35EEEC();
  v4 = sub_22B36081C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  *(v0 + 512) = sub_22B35EEAC();
  *(v0 + 520) = v6;
  v7 = MEMORY[0x277D837D0];
  sub_22B36110C();
  *(inited + 96) = v7;
  *(inited + 72) = v2;
  *(inited + 80) = v1;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v8 = sub_22B3606CC();

  [v3 postNotificationName:v4 object:0 userInfo:v8 deliverImmediately:1];

  sub_22B23E8B0(v0 + 184);
  type metadata accessor for EnergyKitAnalyticsEvent();
  v9 = swift_allocObject();
  v10 = *(v0 + 296);
  v12 = *(v0 + 312);
  v11 = *(v0 + 328);
  *(v0 + 144) = v12;
  *(v0 + 160) = v11;
  v13 = *(v0 + 232);
  v14 = *(v0 + 264);
  v15 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 248);
  *(v0 + 96) = v14;
  v16 = *(v0 + 264);
  v17 = *(v0 + 296);
  *(v0 + 112) = *(v0 + 280);
  *(v0 + 128) = v17;
  v18 = *(v0 + 200);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 32) = v18;
  *(v0 + 48) = *(v0 + 216);
  *(v0 + 64) = v13;
  *(v9 + 136) = v10;
  *(v9 + 152) = v12;
  *(v9 + 168) = *(v0 + 328);
  *(v9 + 72) = *(v0 + 232);
  *(v9 + 88) = *(v0 + 248);
  *(v9 + 104) = v16;
  *(v9 + 16) = 1;
  *(v0 + 176) = *(v0 + 344);
  *(v9 + 184) = *(v0 + 344);
  *(v9 + 120) = v15;
  *(v9 + 24) = *(v0 + 184);
  *(v9 + 40) = *(v0 + 200);
  *(v9 + 56) = *(v0 + 216);
  sub_22B123284(v0 + 16, &unk_27D8BACF0, &qword_22B3662D0);
  sub_22B1A81C0(v9);

  v19 = swift_task_alloc();
  *(v0 + 648) = v19;
  *v19 = v0;
  v19[1] = sub_22B23DBE0;
  v20 = *(v0 + 536);

  return EKEnergySite.deleteCKZone()();
}

uint64_t sub_22B23DBE0()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 656) = v0;

  v5 = *(v2 + 544);
  if (v0)
  {
    v6 = sub_22B23DDF4;
  }

  else
  {
    v6 = sub_22B23DD0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B23DD0C()
{
  v1 = v0[72];
  v2 = v0[69];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B23DD7C()
{
  v1 = v0[74];

  v2 = v0[76];
  v3 = v0[72];
  v4 = v0[69];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B23DDF4()
{
  v1 = v0[82];
  v2 = v0[72];
  v3 = v0[69];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B23DE64()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_22B23DED0()
{
  swift_defaultActor_initialize();
  v0[14] = [objc_opt_self() defaultCenter];
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  v2 = [objc_opt_self() sessionWithConfiguration_];

  v0[15] = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_22B36081C();
  v5 = [v3 initWithSuiteName_];

  v0[16] = v5;
  return v0;
}

uint64_t sub_22B23E004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDUsagePointRecords();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B23E068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B23E0C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_22B119A60;

  return sub_22B2379CC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22B23E1D4(uint64_t a1)
{
  v3 = *(sub_22B35DE9C() - 8);
  v4 = ((*(v3 + 80) + 152) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238) - 8);
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v18 = *(v1 + 88);
  v19 = *(v1 + 72);
  v16 = *(v1 + 120);
  v17 = *(v1 + 104);
  v12 = *(v1 + 136);
  v13 = *(v1 + 144);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_22B124D88;

  return sub_22B230044(a1, v21, v20, v7, v8, v9, v10, v11);
}

uint64_t sub_22B23E3A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B23E468(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22B23E4B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B236188(a1, v4, v5, v7, v6);
}

uint64_t sub_22B23E570(uint64_t a1)
{
  v3 = *(sub_22B35DE9C() - 8);
  v4 = ((*(v3 + 80) + 136) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238) - 8);
  v19 = *(v1 + 24);
  v20 = *(v1 + 16);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v17 = *(v1 + 88);
  v18 = *(v1 + 72);
  v16 = *(v1 + 104);
  v12 = *(v1 + 120);
  v13 = *(v1 + 128);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_22B119A60;

  return sub_22B229628(a1, v20, v19, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_59Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_65Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B23E7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B22F7A0(a1, v4, v5, v7, v6);
}

double sub_22B23E8B0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return result;
}

uint64_t static TOUPeaksPreprocessor.mockPeaks(utilityID:tariffID:start:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v9 = sub_22B35DE9C();
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = sub_22B35DF9C();
  v7[11] = v12;
  v13 = *(v12 - 8);
  v7[12] = v13;
  v14 = *(v13 + 64) + 15;
  v7[13] = swift_task_alloc();
  v15 = sub_22B35E04C();
  v7[14] = v15;
  v16 = *(v15 - 8);
  v7[15] = v16;
  v17 = *(v16 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B23EACC, 0, 0);
}

uint64_t sub_22B23EACC()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  v27 = *(v3 + 104);
  v27(v2, *MEMORY[0x277CC9830], v4);
  sub_22B35DFAC();
  v26 = *(v3 + 8);
  v26(v2, v4);
  sub_22B35DFDC();
  result = (*(v6 + 48))(v7, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[16];
    v11 = v0[15];
    v23 = v0[14];
    v24 = v0[17];
    v12 = v0[13];
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];
    v25 = v0[7];
    v21 = v0[6];
    v22 = v0[8];
    v19 = v0[3];
    v20 = v0[4];
    v16 = v0[2];
    (*(v15 + 32))(v14);
    v27(v12, *MEMORY[0x277CC9810], v13);
    sub_22B35DFAC();
    v26(v12, v13);
    sub_22B23ED14(v19, v20, v10, v16);
    v17 = *(v11 + 8);
    v17(v10, v23);
    (*(v15 + 8))(v14, v22);
    v17(v24, v23);

    v18 = v0[1];

    return v18();
  }

  return result;
}

uint64_t sub_22B23ED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v80 = a4;
  v74 = a1;
  v75 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v62 - v7;
  v8 = sub_22B36032C();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v8);
  v76 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22B35E0BC();
  v85 = *(v81 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x28223BE20](v81);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22B35DDBC();
  v82 = *(v73 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B35E02C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v62 - v23;
  v25 = sub_22B35DE9C();
  v84 = *(v25 - 8);
  v26 = *(v84 + 64);
  MEMORY[0x28223BE20](v25);
  v86 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v62 - v29;
  sub_22B35DFBC();
  (*(v17 + 104))(v20, *MEMORY[0x277CC9968], v16);
  v31 = a3;
  sub_22B35DFEC();
  v32 = v84;
  (*(v17 + 8))(v20, v16);
  result = (*(v32 + 48))(v24, 1, v25);
  if (result != 1)
  {
    v34 = *(v32 + 32);
    v71 = v25;
    v34(v86, v24, v25);
    v83 = v31;
    sub_22B35E00C();
    v35 = v72;
    sub_22B35F59C();
    v37 = v85 + 8;
    v36 = *(v85 + 8);
    v38 = v81;
    v36(v13, v81);
    v70 = v30;
    v39 = sub_22B35DDAC();
    v68 = v40;
    v69 = v39;
    v41 = v82 + 8;
    v42 = *(v82 + 8);
    v43 = v73;
    v42(v35, v73);
    sub_22B35E00C();
    sub_22B35F59C();
    v65 = v13;
    v85 = v37;
    v63 = v36;
    v36(v13, v38);
    v44 = sub_22B35DDAC();
    v66 = v45;
    v67 = v44;
    v46 = v35;
    v64 = v42;
    v42(v35, v43);
    v48 = v74;
    v47 = v75;
    v49 = v83;
    if (v74 == 0x43554F5445 && v75 == 0xE500000000000000 || (sub_22B36134C() & 1) != 0 || v48 == 0x432D554F542D45 && v47 == 0xE700000000000000 || (sub_22B36134C() & 1) != 0)
    {
      v50 = v70;
      v51 = v86;
      sub_22B23FEF0(v70, v86, v49);
      v52 = v76;
      sub_22B36031C();
    }

    else
    {
      v82 = v41;
      if (v48 == 12613 && v47 == 0xE200000000000000 || (sub_22B36134C() & 1) != 0)
      {
        v58 = v65;
        sub_22B35E00C();
        v59 = v46;
        sub_22B35F55C();
        v63(v58, v81);
        v50 = v70;
        sub_22B35DDAC();

        v64(v59, v43);
        swift_bridgeObjectRetain_n();
        v52 = v76;
        sub_22B36031C();
      }

      else
      {
        v60 = v43;
        v61 = v65;
        if (v48 == 0x414C505F54414C46 && v47 == 0xE90000000000004ELL || (sub_22B36134C() & 1) != 0)
        {
          swift_bridgeObjectRetain_n();
          v52 = v76;
          sub_22B36031C();
          v51 = v86;
          v50 = v70;
          goto LABEL_9;
        }

        if (v48 == 0x534B4E41524C4C41 && v47 == 0xE800000000000000 || (sub_22B36134C() & 1) != 0 || v48 == 0x4B4E41522D4C4C41 && v47 == 0xE900000000000053 || (sub_22B36134C() & 1) != 0)
        {
          v50 = v70;
          v51 = v86;
          sub_22B2408F0(v70, v86, v49);
          v52 = v76;
          sub_22B36031C();
          goto LABEL_9;
        }

        sub_22B35E00C();
        sub_22B35F55C();
        v63(v61, v81);
        v50 = v70;
        sub_22B35DDAC();

        v64(v35, v60);
        swift_bridgeObjectRetain_n();
        v52 = v76;
        sub_22B36031C();
      }

      v51 = v86;
    }

LABEL_9:
    v54 = v77;
    v53 = v78;
    v55 = v79;
    (*(v77 + 16))(v79, v52, v78);
    (*(v54 + 56))(v55, 0, 1, v53);
    sub_22B36020C();
    (*(v54 + 8))(v52, v53);
    v56 = *(v84 + 8);
    v57 = v71;
    v56(v51, v71);
    return (v56)(v50, v57);
  }

  __break(1u);
  return result;
}

uint64_t static TOUPeaksPreprocessor.fixedMockETOUCConverted()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22B36024C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B23F958(v7);
  v8 = sub_22B35D82C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_22B35D81C();
  sub_22B23FD7C(&qword_27D8BA978);
  v11 = sub_22B35D80C();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);

    v18 = 1;
  }

  else
  {
    v13 = v11;
    v14 = v12;

    v15 = sub_22B35D7FC();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_22B35D7EC();
    sub_22B23FD7C(&qword_27D8BA980);
    sub_22B35D7DC();
    (*(v4 + 8))(v7, v3);

    sub_22B12F174(v13, v14);
    v18 = 0;
  }

  return (*(v4 + 56))(a1, v18, 1, v3);
}

uint64_t sub_22B23F958@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = &v30 - v3;
  v4 = sub_22B36032C();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B35FF8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = MEMORY[0x277D84F90];
  v16 = 1;
  v17 = &off_283EF8760;
  do
  {
    v19 = *(v17 - 1);
    v20 = *v17;

    if (v16)
    {
      sub_22B35FF6C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_22B32D1C8(0, v15[2] + 1, 1, v15);
      }

      v22 = v15[2];
      v24 = v15[3];
      v23 = v22 + 1;
      if (v22 >= v24 >> 1)
      {
        v15 = sub_22B32D1C8(v24 > 1, v22 + 1, 1, v15);
      }

      v18 = v11;
    }

    else
    {
      sub_22B35FF6C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_22B32D1C8(0, v15[2] + 1, 1, v15);
      }

      v22 = v15[2];
      v21 = v15[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v15 = sub_22B32D1C8(v21 > 1, v22 + 1, 1, v15);
      }

      v18 = v14;
    }

    v15[2] = v23;
    (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v18, v7);
    ++v16;
    v17 += 2;
  }

  while (v16 != 23);
  swift_arrayDestroy();
  v25 = v31;
  sub_22B36031C();
  v27 = v32;
  v26 = v33;
  v28 = v34;
  (*(v32 + 16))(v34, v25, v33);
  (*(v27 + 56))(v28, 0, 1, v26);
  sub_22B36020C();
  return (*(v27 + 8))(v25, v26);
}

uint64_t sub_22B23FD7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22B36024C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TOUPeaksPreprocessor.getMockFlatPeaks()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  sub_22B36031C();
  v4 = sub_22B36032C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  return sub_22B36020C();
}

void *sub_22B23FEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v100 = a2;
  v104 = a1;
  v4 = sub_22B35E02C();
  v96 = *(v4 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v4);
  v98 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v66 - v9;
  v97 = sub_22B35DA4C();
  v81 = *(v97 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v97);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22B35FF8C();
  v79 = *(v78 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  v101 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v103 = &v66 - v17;
  v77 = sub_22B35E0BC();
  v18 = *(v77 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v77);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22B35DDBC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22B35DE9C();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v84 = v32;
  v33 = *(v32 + 16);
  v99 = v34;
  v33(v31, v104, v29);
  v104 = a3;
  sub_22B35E00C();
  sub_22B35F55C();
  v35 = *(v18 + 8);
  v75 = v21;
  v76 = v18 + 8;
  v71 = v35;
  v35(v21, v77);
  sub_22B35DDAC();
  v36 = *(v23 + 8);
  v72 = v26;
  v74 = v22;
  v37 = v22;
  v38 = v103;
  v73 = v23 + 8;
  v70 = v36;
  v36(v26, v37);
  sub_22B35FF6C();
  v39 = sub_22B32D1C8(0, 1, 1, MEMORY[0x277D84F90]);
  v41 = v39[2];
  v40 = v39[3];
  if (v41 >= v40 >> 1)
  {
    v39 = sub_22B32D1C8(v40 > 1, v41 + 1, 1, v39);
  }

  v39[2] = v41 + 1;
  v42 = *(v79 + 32);
  v43 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v102 = v39;
  v68 = v43;
  v67 = *(v79 + 72);
  v79 += 32;
  v69 = v42;
  v42(v39 + v43 + v67 * v41, v38, v78);
  if (sub_22B35DDFC())
  {
    v44 = *(v96 + 72);
    v45 = *(v96 + 80);
    v93 = (v45 + 32) & ~v45;
    v94 = v45;
    v92 = 4 * v44;
    v91 = 5 * v44;
    v90 = *MEMORY[0x277CC9988];
    v46 = (v96 + 104);
    v89 = *MEMORY[0x277CC9998];
    v87 = *MEMORY[0x277CC9968];
    v95 = v44;
    v88 = 2 * v44;
    v86 = 3 * v44;
    LODWORD(v103) = *MEMORY[0x277CC9980];
    v85 = *MEMORY[0x277CC99A0];
    v83 = (v96 + 8);
    v82 = (v84 + 48);
    v81 += 8;
    v96 = v84 + 8;
    v80 = (v84 + 32);
    v84 = xmmword_22B363640;
    while (1)
    {
      v47 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
      v48 = v93;
      v49 = swift_allocObject();
      *(v49 + 16) = v84;
      v50 = *v46;
      (*v46)(v49 + v48, v90, v4);
      v50(v49 + v48 + v95, v89, v4);
      v50(v49 + v48 + v88, v87, v4);
      v50(v49 + v48 + v86, v103, v4);
      v50(v49 + v48 + v92, v85, v4);
      sub_22B310E30(v49);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22B35DFCC();

      v51 = sub_22B35D9CC();
      if ((v52 & 1) == 0 && v51 == 16 || (v53 = sub_22B35D9CC(), (v54 & 1) == 0) && v53 == 21)
      {
        result = sub_22B35D9CC();
        if (v56)
        {
          goto LABEL_19;
        }

        v57 = v75;
        sub_22B35E00C();
        v58 = v72;
        sub_22B35F55C();
        v71(v57, v77);
        sub_22B35DDAC();
        v70(v58, v74);
        sub_22B35FF6C();
        v59 = v102;
        v61 = v102[2];
        v60 = v102[3];
        if (v61 >= v60 >> 1)
        {
          v59 = sub_22B32D1C8(v60 > 1, v61 + 1, 1, v102);
        }

        v59[2] = v61 + 1;
        v102 = v59;
        v69(v59 + v68 + v61 * v67, v101, v78);
      }

      v62 = v98;
      v50(v98, v103, v4);
      v10 = v47;
      sub_22B35DFEC();
      (*v83)(v62, v4);
      v63 = v47;
      v64 = v99;
      result = (*v82)(v63, 1, v99);
      if (result == 1)
      {
        break;
      }

      (*v81)(v13, v97);
      v65 = *v96;
      (*v96)(v31, v64);
      (*v80)(v31, v10, v64);
      if ((sub_22B35DDFC() & 1) == 0)
      {
        v65(v31, v99);
        return v102;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    (*(v84 + 8))(v31, v99);
    return v102;
  }

  return result;
}

uint64_t sub_22B2408F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = a2;
  v99 = a1;
  v4 = sub_22B35E02C();
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4);
  v92 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v63 - v9;
  v89 = sub_22B35FF8C();
  v93 = *(v89 - 8);
  v11 = *(v93 + 64);
  MEMORY[0x28223BE20](v89);
  v98 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B35DA4C();
  v90 = *(v13 - 8);
  v91 = v13;
  v14 = v90[8];
  MEMORY[0x28223BE20](v13);
  v94 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22B35E0BC();
  v16 = *(v95 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v95);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22B35DDBC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22B35DE9C();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v26[2];
  v96 = v32;
  v31(v30, v99, v28);
  v99 = a3;
  sub_22B35E00C();
  sub_22B35F55C();
  v33 = *(v16 + 8);
  v87 = v19;
  v88 = v16 + 8;
  v83 = v33;
  v33(v19, v95);
  sub_22B35DDAC();

  v34 = *(v21 + 8);
  v84 = v24;
  v85 = v21 + 8;
  v86 = v20;
  v82 = v34;
  v34(v24, v20);
  if (sub_22B35DDFC())
  {
    v35 = *(v68 + 72);
    v79 = *(v68 + 80);
    v78 = (v79 + 32) & ~v79;
    v77 = 4 * v35;
    v76 = 5 * v35;
    v36 = (v68 + 104);
    v80 = v35;
    v75 = 2 * v35;
    v74 = 3 * v35;
    v63[1] = v93 + 32;
    v73 = *MEMORY[0x277CC9988];
    v72 = *MEMORY[0x277CC9998];
    v71 = *MEMORY[0x277CC9968];
    v37 = *MEMORY[0x277CC9980];
    v69 = *MEMORY[0x277CC99A0];
    v68 += 8;
    v67 = (v26 + 6);
    v65 = v90 + 1;
    v90 = (v26 + 1);
    v64 = (v26 + 4);
    v38 = 1;
    v39 = MEMORY[0x277D84F90];
    v66 = xmmword_22B363640;
    v81 = v10;
    v70 = v37;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
      v40 = v78;
      v41 = swift_allocObject();
      *(v41 + 16) = v66;
      v42 = v41 + v40;
      v43 = *v36;
      (*v36)(v42, v73, v4);
      v43(v42 + v80, v72, v4);
      v43(v42 + v75, v71, v4);
      v43(v42 + v74, v37, v4);
      v43(v42 + v77, v69, v4);
      sub_22B310E30(v41);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22B35DFCC();

      v44 = sub_22B35D9CC();
      if ((v45 & 1) == 0 && v44 == 14)
      {
        goto LABEL_12;
      }

      if (v46 = sub_22B35D9CC(), (v47 & 1) == 0) && v46 == 15 || (v48 = sub_22B35D9CC(), (v49 & 1) == 0) && v48 == 16 || (v50 = sub_22B35D9CC(), (v51 & 1) == 0) && v50 == 17 || (v52 = sub_22B35D9CC() == 18, ((v38 | v52 & ~v53)))
      {
LABEL_12:
        v54 = v87;
        sub_22B35E00C();
        v55 = v84;
        sub_22B35F55C();
        v83(v54, v95);
        sub_22B35DDAC();
        v82(v55, v86);
        sub_22B35FF6C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_22B32D1C8(0, v39[2] + 1, 1, v39);
        }

        v56 = v96;
        v37 = v70;
        v58 = v39[2];
        v57 = v39[3];
        if (v58 >= v57 >> 1)
        {
          v39 = sub_22B32D1C8(v57 > 1, v58 + 1, 1, v39);
        }

        v39[2] = v58 + 1;
        (*(v93 + 32))(v39 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v58, v98, v89);
      }

      else
      {
        v56 = v96;
        v37 = v70;
      }

      v59 = v92;
      v43(v92, v37, v4);
      v60 = v81;
      sub_22B35DFEC();
      (*v68)(v59, v4);
      result = (*v67)(v60, 1, v56);
      if (result == 1)
      {
        break;
      }

      (*v65)(v94, v91);
      v62 = *v90;
      (*v90)(v30, v56);
      (*v64)(v30, v60, v56);
      v38 = 0;
      if ((sub_22B35DDFC() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v62 = v26[1];
    v39 = MEMORY[0x277D84F90];
LABEL_22:
    v62(v30, v96);
    return v39;
  }

  return result;
}

double sub_22B24133C@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_22B36081C();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_22B36102C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_22B2413CC()
{
  v1 = sub_22B36081C();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22B36084C();

  return v3;
}

uint64_t sub_22B241448()
{
  v1 = sub_22B36081C();
  v2 = [v0 arrayForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22B360A5C();

  return v3;
}

uint64_t sub_22B2414C4()
{
  v1 = sub_22B36081C();
  v2 = [v0 dictionaryForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22B3606EC();

  return v3;
}

uint64_t sub_22B241550()
{
  v1 = sub_22B36081C();
  v2 = [v0 dataForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22B35DCDC();

  return v3;
}

id sub_22B2415CC()
{
  v1 = sub_22B36081C();
  v2 = [v0 longLongForKey_];

  return v2;
}

double sub_22B241610()
{
  v1 = sub_22B36081C();
  [v0 doubleForKey_];
  v3 = v2;

  return v3;
}

id sub_22B24165C()
{
  v1 = sub_22B36081C();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_22B2416A4(uint64_t a1)
{
  sub_22B137FC8(a1, v11);
  v2 = v12;
  if (v12)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    v6 = MEMORY[0x28223BE20](v3);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v8, v6);
    v9 = sub_22B36133C();
    (*(v4 + 8))(v8, v2);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_22B36081C();
  [v1 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

void sub_22B241804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22B36081C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_22B36081C();
  [v2 setString:v3 forKey:v4];
}

void sub_22B24188C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_22B35DCCC();
  }

  v4 = sub_22B36081C();
  [v2 setData:v3 forKey:v4];
}

void sub_22B24191C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_22B360A3C();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22B36081C();
  [v1 setArray:v2 forKey:v3];
}

void sub_22B2419B0(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_22B3606CC();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22B36081C();
  [v1 setDictionary:v2 forKey:v3];
}

void sub_22B241A54(uint64_t a1)
{
  v3 = sub_22B36081C();
  [v1 setLongLong:a1 forKey:v3];
}

void sub_22B241AB8(double a1)
{
  v3 = sub_22B36081C();
  [v1 setDouble:v3 forKey:a1];
}

void sub_22B241B14(char a1)
{
  v3 = sub_22B36081C();
  [v1 setBool:a1 & 1 forKey:v3];
}

void sub_22B241B78()
{
  v1 = sub_22B36081C();
  [v0 removeObjectForKey_];
}

uint64_t dispatch thunk of CloudKeyValueStore.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 88))();
}

{
  return (*(a5 + 112))();
}

{
  return (*(a5 + 120))();
}

{
  return (*(a5 + 128))();
}

{
  return (*(a5 + 144))();
}

uint64_t dispatch thunk of CloudKeyValueStore.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 96))();
}

{
  return (*(a6 + 104))();
}

char *sub_22B241D88()
{
  v0 = objc_allocWithZone(type metadata accessor for HomeManager());
  result = sub_22B241DC4(8, 0);
  qword_28140BCA8 = result;
  return result;
}

char *sub_22B241DC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v4 = sub_22B360D6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22B36062C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_22B360D8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_serialQueue;
  v25[1] = sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D85268], v8);
  sub_22B36060C();
  v30 = MEMORY[0x277D84F90];
  sub_22B1189D0(&qword_2814092F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B118A18(&qword_281409340, &unk_27D8BAA80, &qword_22B3653C0);
  sub_22B36104C();
  *&v2[v26] = sub_22B360DBC();
  *&v2[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeDelegate] = 0;
  v13 = &v2[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeManagerDelegate];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = &v2[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = objc_allocWithZone(MEMORY[0x277CD1C60]);
  v16 = [v15 initWithOptions:v27 cachePolicy:v28];
  [v16 setDiscretionary_];
  v17 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v16 setDelegateQueue_];

  [v16 setAdaptive_];
  [v16 setInactiveUpdatingLevel_];
  type metadata accessor for HomeManagerHelper();
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v18 + 112) = 0;
  *&v3[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_helper] = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  *&v3[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager] = v19;
  v20 = type metadata accessor for HomeManager();
  v29.receiver = v3;
  v29.super_class = v20;
  v21 = objc_msgSendSuper2(&v29, sel_init);
  v22 = *&v21[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager];
  v23 = v21;
  [v22 setDelegate_];

  return v23;
}

uint64_t sub_22B242190()
{
  v1[11] = v0;
  v2 = sub_22B36052C();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B24228C, 0, 0);
}

uint64_t sub_22B24228C()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_helper);
  *(v0 + 160) = v1;
  return MEMORY[0x2822009F8](sub_22B2422B8, v1, 0);
}

uint64_t sub_22B2422E0()
{
  if ((*(v0 + 232) & 1) == 0)
  {
    v1 = *(*(v0 + 88) + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager);
    *(v0 + 168) = v1;
    v2 = [v1 dataSyncState];
    if (!v2)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 144);
      v17 = *(v0 + 96);
      v18 = *(v0 + 104);
      v19 = __swift_project_value_buffer(v17, qword_28140BD10);
      *(v0 + 176) = v19;
      swift_beginAccess();
      v20 = *(v18 + 16);
      *(v0 + 184) = v20;
      *(v0 + 192) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v20(v16, v19, v17);
      v21 = sub_22B36050C();
      v22 = sub_22B360D2C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = 0;
        _os_log_impl(&dword_22B116000, v21, v22, "[HomeManager] Manager state is in error. %lu", v23, 0xCu);
        MEMORY[0x23188F650](v23, -1, -1);
      }

      v24 = *(v0 + 160);
      v25 = *(v0 + 144);
      v26 = *(v0 + 96);
      v27 = *(v0 + 104);

      v28 = *(v27 + 8);
      *(v0 + 200) = v28;
      *(v0 + 208) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v28(v25, v26);
      v15 = sub_22B242744;
      v14 = v24;
      goto LABEL_14;
    }

    if (v2 == 1)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 152);
      v4 = *(v0 + 96);
      v5 = *(v0 + 104);
      v6 = __swift_project_value_buffer(v4, qword_28140BD10);
      swift_beginAccess();
      (*(v5 + 16))(v3, v6, v4);
      v7 = sub_22B36050C();
      v8 = sub_22B360D2C();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 152);
      v11 = *(v0 + 96);
      v12 = *(v0 + 104);
      if (v9)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22B116000, v7, v8, "[HomeManager] Manager state is stateGood", v13, 2u);
        MEMORY[0x23188F650](v13, -1, -1);
      }

      (*(v12 + 8))(v10, v11);
      v14 = *(v0 + 160);
      v15 = sub_22B242FEC;
LABEL_14:

      return MEMORY[0x2822009F8](v15, v14, 0);
    }

    v29 = v2;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 120);
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v33 = __swift_project_value_buffer(v31, qword_28140BD10);
    swift_beginAccess();
    (*(v32 + 16))(v30, v33, v31);
    v34 = sub_22B36050C();
    v35 = sub_22B360D2C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = v29;
      _os_log_impl(&dword_22B116000, v34, v35, "[HomeManager] Manager state is in error. %lu", v36, 0xCu);
      MEMORY[0x23188F650](v36, -1, -1);
    }

    v37 = *(v0 + 120);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);

    (*(v39 + 8))(v37, v38);
  }

  v41 = *(v0 + 144);
  v40 = *(v0 + 152);
  v43 = *(v0 + 128);
  v42 = *(v0 + 136);
  v45 = *(v0 + 112);
  v44 = *(v0 + 120);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_22B24276C()
{
  v32 = v0;
  if ((*(v0 + 233) & 1) != 0 || (*(v0 + 216) = 0, [*(v0 + 168) dataSyncState] == 1))
  {
    v1 = *(v0 + 192);
    (*(v0 + 184))(*(v0 + 112), *(v0 + 176), *(v0 + 96));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);
    if (v4)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v2, v3, "[HomeManager] State updated to stateGood", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v6(v7, v8);
    v10 = *(v0 + 160);

    return MEMORY[0x2822009F8](sub_22B242FEC, v10, 0);
  }

  else if (sub_22B360BFC())
  {
    v11 = *(v0 + 192);
    (*(v0 + 184))(*(v0 + 128), *(v0 + 176), *(v0 + 96));
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 128);
    v18 = *(v0 + 96);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_22B1A7B20(0x656D6F4864616F6CLL, 0xEB00000000292873, &v31);
      *(v19 + 12) = 2048;
      *(v19 + 14) = 79;
      _os_log_impl(&dword_22B116000, v12, v13, "[HomeManager] Task is cancelled at marker %s:%ld", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    v16(v17, v18);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v28 = *(MEMORY[0x277D857E8] + 4);
    v29 = swift_task_alloc();
    *(v0 + 224) = v29;
    *v29 = v0;
    v29[1] = sub_22B242AB4;

    return MEMORY[0x282200480](1000000000);
  }
}

uint64_t sub_22B242AB4()
{
  v2 = *(*v1 + 224);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_22B243098;
  }

  else
  {
    v3 = sub_22B248830;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B242BF4()
{
  v42 = v0;
  if ((*(v0 + 234) & 1) != 0 || (v1 = *(v0 + 216) + 1, *(v0 + 216) = v1, [*(v0 + 168) dataSyncState] == 1))
  {
    v2 = *(v0 + 192);
    (*(v0 + 184))(*(v0 + 112), *(v0 + 176), *(v0 + 96));
    v3 = sub_22B36050C();
    v4 = sub_22B360D1C();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    if (v5)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v3, v4, "[HomeManager] State updated to stateGood", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    v7(v8, v9);
    v11 = *(v0 + 160);

    return MEMORY[0x2822009F8](sub_22B242FEC, v11, 0);
  }

  if (v1 == 61)
  {
    v12 = *(v0 + 192);
    (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 96));
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 136);
    v19 = *(v0 + 96);
    if (v15)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v13, v14, "[HomeManager] Task running for too long", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    v17(v18, v19);
LABEL_16:
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v34 = *(v0 + 128);
    v33 = *(v0 + 136);
    v36 = *(v0 + 112);
    v35 = *(v0 + 120);

    v37 = *(v0 + 8);

    return v37();
  }

  if (sub_22B360BFC())
  {
    v21 = *(v0 + 192);
    (*(v0 + 184))(*(v0 + 128), *(v0 + 176), *(v0 + 96));
    v22 = sub_22B36050C();
    v23 = sub_22B360D1C();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 128);
    v28 = *(v0 + 96);
    if (v24)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_22B1A7B20(0x656D6F4864616F6CLL, 0xEB00000000292873, &v41);
      *(v29 + 12) = 2048;
      *(v29 + 14) = 79;
      _os_log_impl(&dword_22B116000, v22, v23, "[HomeManager] Task is cancelled at marker %s:%ld", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    v26(v27, v28);
    goto LABEL_16;
  }

  v38 = *(MEMORY[0x277D857E8] + 4);
  v39 = swift_task_alloc();
  *(v0 + 224) = v39;
  *v39 = v0;
  v39[1] = sub_22B242AB4;

  return MEMORY[0x282200480](1000000000);
}

uint64_t sub_22B242FEC()
{
  *(v0[20] + 112) = 1;
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B2430D4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager);
  v0[3] = v1;
  v2 = sub_22B36081C();
  v0[4] = [v1 _beginActiveAssertionWithReason_];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22B2431C0;
  v4 = v0[2];

  return sub_22B242190();
}

uint64_t sub_22B2431C0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B2432BC, 0, 0);
}

uint64_t sub_22B2432BC()
{
  if ([*(v0 + 24) dataSyncState] == 1)
  {
    v1 = *(v0 + 16);
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *(v2 + 16) = v1;
    v3 = *(MEMORY[0x277D85A40] + 4);
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_22B24344C;

    return MEMORY[0x2822008A0]();
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    [*(v0 + 24) _endActiveAssertion_];
    swift_willThrow();
    swift_unknownObjectRelease();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_22B24344C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_22B243638;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_22B243568;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B243568()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = [v1 homes];
  sub_22B128014(0, &qword_281408568, 0x277CD1A60);
  v4 = sub_22B360A5C();

  [v1 _endActiveAssertion_];
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22B243638()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  [*(v0 + 24) _endActiveAssertion_];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

void sub_22B2436C8(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v22 = *(a2 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager);
  sub_22B35DE6C();
  sub_22B35DDCC();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = sub_22B35DDDC();
  v16(v15, v8);
  (*(v4 + 16))(v7, v23, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  aBlock[4] = sub_22B2487AC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B243C10;
  aBlock[3] = &block_descriptor_56;
  v20 = _Block_copy(aBlock);

  v21 = [v22 _refreshBeforeDate_completionHandler_];
  _Block_release(v20);
  swift_unknownObjectRelease();
}

uint64_t sub_22B243994(void *a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v6, v8, v2);
    v9 = a1;
    v10 = sub_22B36050C();
    v11 = sub_22B360D1C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_22B116000, v10, v11, "[HomeManager] Failed to refresh homes %@", v12, 0xCu);
      sub_22B123284(v13, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v13, -1, -1);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360ADC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360AEC();
  }
}

void sub_22B243C10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_22B243C7C()
{
  v1[6] = v0;
  v2 = sub_22B35DF1C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAB0, &qword_22B366468) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v6 = sub_22B36052C();
  v1[17] = v6;
  v7 = *(v6 - 8);
  v1[18] = v7;
  v8 = *(v7 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B243E6C, 0, 0);
}

uint64_t sub_22B243E6C()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[18];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[27] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[28] = v5;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Clear all energy kit data", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[26];
  v10 = v0[17];
  v11 = v0[18];

  v12 = *(v11 + 8);
  v0[30] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[31] = v13;
  *v13 = v0;
  v13[1] = sub_22B24401C;
  v14 = v0[6];

  return sub_22B242190();
}

uint64_t sub_22B24401C()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B244118, 0, 0);
}

uint64_t sub_22B244118()
{
  v1 = [*(v0[6] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager) dataSyncState];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[17];
  if (v1 == 1)
  {
    v3(v0[25], v4, v5);
    v6 = sub_22B36050C();
    v7 = sub_22B360CFC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "Data sync state good, proceed with deletion", v8, 2u);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    v9 = v0[30];
    v10 = v0[25];
    v11 = v0[17];
    v12 = v0[18];

    v9(v10, v11);
    v0[32] = sub_22B321FE4(MEMORY[0x277D84F90]);
    v13 = *(MEMORY[0x277CCE678] + 4);
    v14 = swift_task_alloc();
    v0[33] = v14;
    *v14 = v0;
    v14[1] = sub_22B24443C;

    return MEMORY[0x282121220]();
  }

  else
  {
    v3(v0[19], v4, v5);
    v15 = sub_22B36050C();
    v16 = sub_22B360CFC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[30];
    v20 = v0[18];
    v19 = v0[19];
    v21 = v0[17];
    if (v17)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22B116000, v15, v16, "Data sync state not good, cannot proceed with deletion", v22, 2u);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    v18(v19, v21);
    v24 = v0[25];
    v23 = v0[26];
    v26 = v0[23];
    v25 = v0[24];
    v28 = v0[21];
    v27 = v0[22];
    v30 = v0[19];
    v29 = v0[20];
    v31 = v0[15];
    v32 = v0[16];
    v36 = v0[14];
    v37 = v0[13];
    v38 = v0[12];
    v39 = v0[11];
    v40 = v0[10];
    v41 = v0[9];

    v33 = v0[1];
    v34 = MEMORY[0x277D84F98];

    return v33(v34);
  }
}

uint64_t sub_22B24443C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v7 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v5 = sub_22B246398;
  }

  else
  {
    v5 = sub_22B244550;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B244550()
{
  v166 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 136);

  v3(v5, v4, v6);
  v7 = sub_22B36050C();
  v8 = sub_22B360D0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 272);
    v158 = *(v0 + 192);
    v161 = *(v0 + 240);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 56);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v165 = v14;
    *v13 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAC8, &qword_22B366478);
    sub_22B1189D0(&unk_27D8BA320, MEMORY[0x277CC95F0]);
    v15 = sub_22B3606FC();
    v17 = v16;

    v18 = sub_22B1A7B20(v15, v17, &v165);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22B116000, v7, v8, "Cleared all events for all homes %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v161(v158, v11);
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 192);
    v21 = *(v0 + 136);
    v22 = *(v0 + 144);

    v19(v20, v21);
  }

  v23 = *(v0 + 232);
  (*(v0 + 224))(*(v0 + 184), *(v0 + 216), *(v0 + 136));
  v24 = sub_22B36050C();
  v25 = sub_22B360CFC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22B116000, v24, v25, "Got back from clearEnergyKitDataForAllHomes, processing results", v26, 2u);
    MEMORY[0x23188F650](v26, -1, -1);
  }

  v27 = *(v0 + 272);
  v28 = *(v0 + 240);
  v29 = *(v0 + 184);
  v30 = *(v0 + 136);
  v31 = *(v0 + 144);

  v28(v29, v30);
  v32 = *(v27 + 32);
  *(v0 + 360) = v32;
  v33 = 1 << v32;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & *(v27 + 64);

  v36 = 0;
  v37 = MEMORY[0x277D84F98];
  while (1)
  {
    *(v0 + 288) = v37;
    v159 = v37;
    if (!v35)
    {
      v39 = ((1 << *(v0 + 360)) + 63) >> 6;
      if (v39 <= (v36 + 1))
      {
        v40 = v36 + 1;
      }

      else
      {
        v40 = ((1 << *(v0 + 360)) + 63) >> 6;
      }

      v41 = v40 - 1;
      while (1)
      {
        v42 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v42 >= v39)
        {
          v103 = *(v0 + 120);
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
          (*(*(v104 - 8) + 56))(v103, 1, 1, v104);
          v53 = 0;
          goto LABEL_23;
        }

        v38 = *(v0 + 272);
        v35 = *(v38 + 8 * v42 + 64);
        ++v36;
        if (v35)
        {
          v36 = v42;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
LABEL_45:
      v141 = swift_task_alloc();
      *(v0 + 336) = v141;
      *v141 = v0;
      v141[1] = sub_22B245270;
      v142 = *(v0 + 104);

      return sub_22B1873B4(v142);
    }

    v38 = *(v0 + 272);
LABEL_22:
    v44 = *(v0 + 112);
    v43 = *(v0 + 120);
    v45 = *(v0 + 56);
    v46 = *(v0 + 64);
    v162 = (v35 - 1) & v35;
    v47 = __clz(__rbit64(v35)) | (v36 << 6);
    (*(v46 + 16))(v44, *(v38 + 48) + *(v46 + 72) * v47, v45);
    v48 = *(v38 + 56) + 16 * v47;
    v49 = *v48;
    v50 = *(v48 + 8);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
    v52 = v43 + *(v51 + 48);
    (*(v46 + 32))(v43, v44, v45);
    *v52 = v49;
    *(v52 + 8) = v50;
    (*(*(v51 - 8) + 56))(v43, 0, 1, v51);
    sub_22B248728(v49, v50);
    v53 = v162;
    v41 = v36;
LABEL_23:
    *(v0 + 296) = v53;
    *(v0 + 304) = v41;
    v54 = *(v0 + 128);
    sub_22B248734(*(v0 + 120), v54);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      break;
    }

    v56 = *(v0 + 56);
    v57 = *(v0 + 128) + *(v55 + 48);
    v58 = *v57;
    v59 = *(v57 + 8);
    (*(*(v0 + 64) + 32))(*(v0 + 104));
    v61 = *(v0 + 224);
    v60 = *(v0 + 232);
    v62 = *(v0 + 216);
    if (v59 != 1)
    {
      v120 = *(v0 + 96);
      v119 = *(v0 + 104);
      v121 = *(v0 + 56);
      v122 = *(v0 + 64);
      v61(*(v0 + 176), v62, *(v0 + 136));
      v123 = *(v122 + 16);
      *(v0 + 312) = v123;
      *(v0 + 320) = (v122 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v123(v120, v119, v121);
      v124 = sub_22B36050C();
      v125 = sub_22B360D0C();
      v126 = os_log_type_enabled(v124, v125);
      v127 = *(v0 + 240);
      v128 = *(v0 + 176);
      v130 = *(v0 + 136);
      v129 = *(v0 + 144);
      v131 = *(v0 + 96);
      v133 = *(v0 + 56);
      v132 = *(v0 + 64);
      if (v126)
      {
        v160 = *(v0 + 240);
        v134 = swift_slowAlloc();
        v157 = v128;
        v135 = swift_slowAlloc();
        v165 = v135;
        *v134 = 136315138;
        sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0]);
        v155 = v130;
        v136 = sub_22B36131C();
        v138 = v137;
        v152 = v125;
        v139 = *(v132 + 8);
        v139(v131, v133);
        v140 = sub_22B1A7B20(v136, v138, &v165);

        *(v134 + 4) = v140;
        _os_log_impl(&dword_22B116000, v124, v152, "Deleting local data for %s", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v135);
        MEMORY[0x23188F650](v135, -1, -1);
        MEMORY[0x23188F650](v134, -1, -1);

        v160(v157, v155);
      }

      else
      {

        v139 = *(v132 + 8);
        v139(v131, v133);
        v127(v128, v130);
      }

      *(v0 + 328) = v139;
      if (qword_27D8B9F88 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_54;
    }

    v63 = *(v0 + 104);
    v64 = *(v0 + 80);
    v66 = *(v0 + 56);
    v65 = *(v0 + 64);
    v61(*(v0 + 160), v62, *(v0 + 136));
    v163 = *(v65 + 16);
    v163(v64, v63, v66);
    v67 = v58;
    v68 = sub_22B36050C();
    v69 = sub_22B360D1C();
    sub_22B1CD010(v58, 1);
    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v0 + 240);
    v72 = *(v0 + 160);
    v73 = *(v0 + 144);
    v153 = *(v0 + 136);
    v74 = *(v0 + 80);
    v76 = *(v0 + 56);
    v75 = *(v0 + 64);
    if (v70)
    {
      v147 = *(v0 + 240);
      v77 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v165 = v146;
      *v77 = 136315394;
      sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0]);
      v78 = sub_22B36131C();
      v145 = v72;
      v80 = v79;
      v150 = *(v75 + 8);
      v150(v74, v76);
      v81 = sub_22B1A7B20(v78, v80, &v165);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2112;
      v82 = v58;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 14) = v83;
      *v144 = v83;
      _os_log_impl(&dword_22B116000, v68, v69, "Failed to clear energy kit data for home with identifier: %s. Error: %@", v77, 0x16u);
      sub_22B123284(v144, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v144, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v146);
      MEMORY[0x23188F650](v146, -1, -1);
      MEMORY[0x23188F650](v77, -1, -1);

      v147(v145, v153);
    }

    else
    {

      v150 = *(v75 + 8);
      v150(v74, v76);
      v71(v72, v153);
    }

    v84 = *(v0 + 72);
    v163(v84, *(v0 + 104), *(v0 + 56));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 40) = v159;
    v86 = sub_22B33B6BC(v84);
    v88 = v159[2];
    v89 = (v87 & 1) == 0;
    v90 = __OFADD__(v88, v89);
    v91 = v88 + v89;
    if (v90)
    {
      goto LABEL_52;
    }

    v92 = v87;
    if (v159[3] >= v91)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v105 = v86;
        sub_22B341E60();
        v86 = v105;
      }
    }

    else
    {
      v93 = *(v0 + 72);
      sub_22B33D598(v91, isUniquelyReferenced_nonNull_native);
      v94 = *(v0 + 40);
      v86 = sub_22B33B6BC(v93);
      if ((v92 & 1) != (v95 & 1))
      {
        v143 = *(v0 + 56);

        return sub_22B3613BC();
      }
    }

    v37 = *(v0 + 40);
    v96 = *(v0 + 104);
    v97 = *(v0 + 64);
    v98 = *(v0 + 72);
    v99 = *(v0 + 56);
    if (v92)
    {
      *(v37[7] + v86) = 0;
      sub_22B1CD010(v58, 1);
      v150(v98, v99);
      v150(v96, v99);
    }

    else
    {
      v37[(v86 >> 6) + 8] |= 1 << v86;
      v100 = v86;
      v163(v37[6] + *(v97 + 72) * v86, v98, v99);
      *(v37[7] + v100) = 0;
      sub_22B1CD010(v58, 1);
      v150(v98, v99);
      v150(v96, v99);
      v101 = v37[2];
      v90 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v90)
      {
        goto LABEL_53;
      }

      v37[2] = v102;
    }

    v35 = *(v0 + 296);
    v36 = *(v0 + 304);
  }

  v106 = *(v0 + 272);

  v108 = *(v0 + 200);
  v107 = *(v0 + 208);
  v110 = *(v0 + 184);
  v109 = *(v0 + 192);
  v112 = *(v0 + 168);
  v111 = *(v0 + 176);
  v114 = *(v0 + 152);
  v113 = *(v0 + 160);
  v116 = *(v0 + 120);
  v115 = *(v0 + 128);
  v148 = *(v0 + 112);
  v149 = *(v0 + 104);
  v151 = *(v0 + 96);
  v154 = *(v0 + 88);
  v156 = *(v0 + 80);
  v164 = *(v0 + 72);

  v117 = *(v0 + 8);

  return v117(v159);
}

uint64_t sub_22B245270()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B24536C, 0, 0);
}

uint64_t sub_22B24536C()
{
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_22B245438;
  v2 = *(v0 + 104);

  return sub_22B3196F0(v2);
}

uint64_t sub_22B245438()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B245534, 0, 0);
}

uint64_t sub_22B245534()
{
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_22B245600;
  v2 = *(v0 + 104);

  return sub_22B1762B8(v2);
}

uint64_t sub_22B245600()
{
  v1 = *(*v0 + 352);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B2456FC, 0, 0);
}

uint64_t sub_22B2456FC()
{
  v160 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 232);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  (*(v0 + 224))(*(v0 + 168), *(v0 + 216), *(v0 + 136));
  v2(v5, v4, v6);
  v7 = sub_22B36050C();
  v8 = sub_22B360D0C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 328);
  v11 = *(v0 + 240);
  v12 = *(v0 + 168);
  v13 = *(v0 + 144);
  v155 = *(v0 + 136);
  v14 = *(v0 + 88);
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  if (v9)
  {
    v17 = swift_slowAlloc();
    v150 = v11;
    v18 = swift_slowAlloc();
    v159 = v18;
    *v17 = 136315138;
    sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0]);
    v146 = v12;
    v19 = sub_22B36131C();
    v21 = v20;
    v10(v14, v16);
    v22 = sub_22B1A7B20(v19, v21, &v159);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_22B116000, v7, v8, "Deleted local data for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    v150(v146, v155);
  }

  else
  {

    v10(v14, v16);
    v11(v12, v155);
  }

  v23 = *(v0 + 328);
  v24 = *(v0 + 288);
  v25 = *(v0 + 104);
  v26 = *(v0 + 56);
  v27 = *(v0 + 64) + 8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v159 = v24;
  sub_22B33F58C(1, v25, isUniquelyReferenced_nonNull_native);
  v23(v25, v26);
  v29 = v159;
  while (1)
  {
    v30 = *(v0 + 296);
    v31 = *(v0 + 304);
    *(v0 + 288) = v29;
    v153 = v29;
    if (!v30)
    {
      v33 = ((1 << *(v0 + 360)) + 63) >> 6;
      if (v33 <= (v31 + 1))
      {
        v34 = v31 + 1;
      }

      else
      {
        v34 = ((1 << *(v0 + 360)) + 63) >> 6;
      }

      v35 = v34 - 1;
      while (1)
      {
        v36 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v36 >= v33)
        {
          v96 = *(v0 + 120);
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
          (*(*(v97 - 8) + 56))(v96, 1, 1, v97);
          v46 = 0;
          goto LABEL_17;
        }

        v32 = *(v0 + 272);
        v30 = *(v32 + 8 * v36 + 64);
        ++v31;
        if (v30)
        {
          v31 = v36;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
LABEL_39:
      v134 = swift_task_alloc();
      *(v0 + 336) = v134;
      *v134 = v0;
      v134[1] = sub_22B245270;
      v135 = *(v0 + 104);

      return sub_22B1873B4(v135);
    }

    v32 = *(v0 + 272);
LABEL_16:
    v38 = *(v0 + 112);
    v37 = *(v0 + 120);
    v39 = *(v0 + 56);
    v40 = *(v0 + 64);
    v156 = (v30 - 1) & v30;
    v41 = __clz(__rbit64(v30)) | (v31 << 6);
    (*(v40 + 16))(v38, *(v32 + 48) + *(v40 + 72) * v41, v39);
    v42 = *(v32 + 56) + 16 * v41;
    v43 = *v42;
    LOBYTE(v41) = *(v42 + 8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
    v45 = v37 + *(v44 + 48);
    (*(v40 + 32))(v37, v38, v39);
    *v45 = v43;
    *(v45 + 8) = v41;
    (*(*(v44 - 8) + 56))(v37, 0, 1, v44);
    sub_22B248728(v43, v41);
    v46 = v156;
    v35 = v31;
LABEL_17:
    *(v0 + 296) = v46;
    *(v0 + 304) = v35;
    v47 = *(v0 + 128);
    sub_22B248734(*(v0 + 120), v47);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {
      break;
    }

    v49 = *(v0 + 56);
    v50 = *(v0 + 128) + *(v48 + 48);
    v51 = *v50;
    v52 = *(v50 + 8);
    (*(*(v0 + 64) + 32))(*(v0 + 104));
    v54 = *(v0 + 224);
    v53 = *(v0 + 232);
    v55 = *(v0 + 216);
    if (v52 != 1)
    {
      v113 = *(v0 + 96);
      v112 = *(v0 + 104);
      v114 = *(v0 + 56);
      v115 = *(v0 + 64);
      v54(*(v0 + 176), v55, *(v0 + 136));
      v116 = *(v115 + 16);
      *(v0 + 312) = v116;
      *(v0 + 320) = (v115 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v116(v113, v112, v114);
      v117 = sub_22B36050C();
      v118 = sub_22B360D0C();
      v119 = os_log_type_enabled(v117, v118);
      v120 = *(v0 + 240);
      v121 = *(v0 + 176);
      v123 = *(v0 + 136);
      v122 = *(v0 + 144);
      v124 = *(v0 + 96);
      v126 = *(v0 + 56);
      v125 = *(v0 + 64);
      if (v119)
      {
        v154 = *(v0 + 240);
        v127 = swift_slowAlloc();
        v152 = v121;
        v128 = swift_slowAlloc();
        v159 = v128;
        *v127 = 136315138;
        sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0]);
        v149 = v123;
        v129 = sub_22B36131C();
        v131 = v130;
        v145 = v118;
        v132 = *(v125 + 8);
        v132(v124, v126);
        v133 = sub_22B1A7B20(v129, v131, &v159);

        *(v127 + 4) = v133;
        _os_log_impl(&dword_22B116000, v117, v145, "Deleting local data for %s", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v128);
        MEMORY[0x23188F650](v128, -1, -1);
        MEMORY[0x23188F650](v127, -1, -1);

        v154(v152, v149);
      }

      else
      {

        v132 = *(v125 + 8);
        v132(v124, v126);
        v120(v121, v123);
      }

      *(v0 + 328) = v132;
      if (qword_27D8B9F88 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }

    v56 = *(v0 + 104);
    v57 = *(v0 + 80);
    v59 = *(v0 + 56);
    v58 = *(v0 + 64);
    v54(*(v0 + 160), v55, *(v0 + 136));
    v157 = *(v58 + 16);
    v157(v57, v56, v59);
    v60 = v51;
    v61 = sub_22B36050C();
    v62 = sub_22B360D1C();
    sub_22B1CD010(v51, 1);
    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 240);
    v65 = *(v0 + 160);
    v66 = *(v0 + 144);
    v147 = *(v0 + 136);
    v67 = *(v0 + 80);
    v69 = *(v0 + 56);
    v68 = *(v0 + 64);
    if (v63)
    {
      v140 = *(v0 + 240);
      v70 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v159 = v139;
      *v70 = 136315394;
      sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0]);
      v71 = sub_22B36131C();
      v138 = v65;
      v73 = v72;
      v143 = *(v68 + 8);
      v143(v67, v69);
      v74 = sub_22B1A7B20(v71, v73, &v159);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2112;
      v75 = v51;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 14) = v76;
      *v137 = v76;
      _os_log_impl(&dword_22B116000, v61, v62, "Failed to clear energy kit data for home with identifier: %s. Error: %@", v70, 0x16u);
      sub_22B123284(v137, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v137, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v139);
      MEMORY[0x23188F650](v139, -1, -1);
      MEMORY[0x23188F650](v70, -1, -1);

      v140(v138, v147);
    }

    else
    {

      v143 = *(v68 + 8);
      v143(v67, v69);
      v64(v65, v147);
    }

    v77 = *(v0 + 72);
    v157(v77, *(v0 + 104), *(v0 + 56));
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 40) = v153;
    v79 = sub_22B33B6BC(v77);
    v81 = v153[2];
    v82 = (v80 & 1) == 0;
    v83 = __OFADD__(v81, v82);
    v84 = v81 + v82;
    if (v83)
    {
      goto LABEL_46;
    }

    v85 = v80;
    if (v153[3] >= v84)
    {
      if ((v78 & 1) == 0)
      {
        v98 = v79;
        sub_22B341E60();
        v79 = v98;
      }
    }

    else
    {
      v86 = *(v0 + 72);
      sub_22B33D598(v84, v78);
      v87 = *(v0 + 40);
      v79 = sub_22B33B6BC(v86);
      if ((v85 & 1) != (v88 & 1))
      {
        v136 = *(v0 + 56);

        return sub_22B3613BC();
      }
    }

    v29 = *(v0 + 40);
    v89 = *(v0 + 104);
    v90 = *(v0 + 64);
    v91 = *(v0 + 72);
    v92 = *(v0 + 56);
    if (v85)
    {
      *(v29[7] + v79) = 0;
      sub_22B1CD010(v51, 1);
      v143(v91, v92);
      v143(v89, v92);
    }

    else
    {
      v29[(v79 >> 6) + 8] |= 1 << v79;
      v93 = v79;
      v157(v29[6] + *(v90 + 72) * v79, v91, v92);
      *(v29[7] + v93) = 0;
      sub_22B1CD010(v51, 1);
      v143(v91, v92);
      v143(v89, v92);
      v94 = v29[2];
      v83 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v83)
      {
        goto LABEL_47;
      }

      v29[2] = v95;
    }
  }

  v99 = *(v0 + 272);

  v101 = *(v0 + 200);
  v100 = *(v0 + 208);
  v103 = *(v0 + 184);
  v102 = *(v0 + 192);
  v105 = *(v0 + 168);
  v104 = *(v0 + 176);
  v107 = *(v0 + 152);
  v106 = *(v0 + 160);
  v109 = *(v0 + 120);
  v108 = *(v0 + 128);
  v141 = *(v0 + 112);
  v142 = *(v0 + 104);
  v144 = *(v0 + 96);
  v148 = *(v0 + 88);
  v151 = *(v0 + 80);
  v158 = *(v0 + 72);

  v110 = *(v0 + 8);

  return v110(v153);
}

uint64_t sub_22B246398()
{
  v1 = v0[32];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[16];
  v14 = v0[15];
  v15 = v0[14];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[9];

  v11 = v0[1];
  v12 = v0[35];

  return v11();
}

id sub_22B2464FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22B246630(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23[-1] - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_22B248604(Strong + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeManagerDelegate, v26);
    if (v27)
    {
      sub_22B12B3CC(v26, v23);
      sub_22B123284(v26, &unk_27D8BAAA0, &qword_22B366450);
      v9 = v24;
      v10 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v10 + 8))(v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_22B123284(v26, &unk_27D8BAAA0, &qword_22B366450);
    }

    v11 = sub_22B360B6C();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v8;
    v13 = v8;
    sub_22B123DF0(0, 0, v6, &unk_22B366460, v12);

    v14 = [a2 homes];
    sub_22B128014(0, &qword_281408568, 0x277CD1A60);
    v15 = sub_22B360A5C();

    if (v15 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B36109C())
    {
      v17 = 0;
      v18 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeDelegate;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x23188EAC0](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v19 = *(v15 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        [v19 setDelegate_];

        ++v17;
        if (v21 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }
}

uint64_t sub_22B246930()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_helper);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B24695C, v1, 0);
}

uint64_t sub_22B246A08(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_22B35DF1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = [a2 uniqueIdentifier];
    sub_22B35DEFC();

    v15 = sub_22B35DECC();
    v17 = v16;
    (*(v8 + 8))(v11, v7);
    v18 = sub_22B360B6C();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = a2;
    v19[7] = v13;
    v20 = a2;
    sub_22B123DF0(0, 0, v6, &unk_22B366440, v19);
  }

  return result;
}

uint64_t sub_22B246C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_22B36052C();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v11 = sub_22B35DF1C();
  v7[20] = v11;
  v12 = *(v11 - 8);
  v7[21] = v12;
  v13 = *(v12 + 64) + 15;
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B246D4C, 0, 0);
}

uint64_t sub_22B246D4C()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v0[23] = qword_28140BD38;

  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_22B246E28;
  v3 = v0[11];
  v2 = v0[12];

  return sub_22B215EE0(v3, v2);
}

uint64_t sub_22B246E28()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B246F40, 0, 0);
}

uint64_t sub_22B246F40()
{
  v42 = v0;
  v1 = v0[13];
  v2 = [v1 owner];
  v3 = [v1 currentUser];
  v4 = v3;
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_12:

LABEL_13:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = v0[18];
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[12];
    v20 = __swift_project_value_buffer(v17, qword_28140BD10);
    swift_beginAccess();
    (*(v18 + 16))(v16, v20, v17);

    v21 = sub_22B36050C();
    v22 = sub_22B360D2C();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[18];
    v25 = v0[15];
    v26 = v0[16];
    if (v23)
    {
      v28 = v0[11];
      v27 = v0[12];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22B1A7B20(v28, v27, &v41);
      _os_log_impl(&dword_22B116000, v21, v22, "Skipping energy site removal for home %s - current user is not the owner", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    (*(v26 + 8))(v24, v25);
    v31 = v0[14] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted;
    v32 = *v31;
    v0[32] = *v31;
    if (v32)
    {
      v0[33] = *(v31 + 8);

      v40 = (v32 + *v32);
      v33 = v32[1];
      v34 = swift_task_alloc();
      v0[34] = v34;
      *v34 = v0;
      v34[1] = sub_22B247B94;

      return v40();
    }

    else
    {
      v35 = v0[22];
      v36 = v0[18];
      v37 = v0[19];
      v38 = v0[17];

      v39 = v0[1];

      return v39();
    }
  }

  if (!v3)
  {
    v4 = v2;
    goto LABEL_12;
  }

  sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
  v5 = sub_22B360FBC();

  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v10 = v0[11];
  v9 = v0[12];
  sub_22B35F45C();

  sub_22B35F1EC();
  sub_22B35DEAC();
  v11 = sub_22B35DECC();
  v13 = v12;
  v0[25] = v11;
  v0[26] = v12;
  (*(v7 + 8))(v6, v8);
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v0[27] = qword_28140BDD8;
  v14 = swift_task_alloc();
  v0[28] = v14;
  *v14 = v0;
  v14[1] = sub_22B2473F4;

  return sub_22B22250C(v11, v13, 0, 0);
}

uint64_t sub_22B2473F4(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_22B2474F4, 0, 0);
}

uint64_t sub_22B2474F4()
{
  v1 = v0[29];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_22B2476EC;
    v3 = v0[27];

    return sub_22B23D0CC(v1);
  }

  else
  {
    v5 = v0[26];

    v6 = v0[14] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted;
    v7 = *v6;
    v0[32] = *v6;
    if (v7)
    {
      v0[33] = *(v6 + 8);

      v15 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      v0[34] = v9;
      *v9 = v0;
      v9[1] = sub_22B247B94;

      return v15();
    }

    else
    {
      v10 = v0[22];
      v11 = v0[18];
      v12 = v0[19];
      v13 = v0[17];

      v14 = v0[1];

      return v14();
    }
  }
}

uint64_t sub_22B2476EC()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_22B247D34;
  }

  else
  {
    v3 = sub_22B247800;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B247800()
{
  v37 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[12];
  v6 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v2, v6, v3);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[29];
  v11 = v0[26];
  if (v9)
  {
    v12 = v0[25];
    v13 = v0[16];
    v33 = v0[15];
    v34 = v0[19];
    v14 = v0[11];
    v32 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315394;
    v17 = sub_22B1A7B20(v12, v11, &v36);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_22B1A7B20(v14, v32, &v36);
    _os_log_impl(&dword_22B116000, v7, v8, "Removed energy site %s for deleted home %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    (*(v13 + 8))(v34, v33);
  }

  else
  {
    v18 = v0[19];
    v19 = v0[15];
    v20 = v0[16];
    v21 = v0[26];

    (*(v20 + 8))(v18, v19);
  }

  v22 = v0[14] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted;
  v23 = *v22;
  v0[32] = *v22;
  if (v23)
  {
    v0[33] = *(v22 + 8);

    v35 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    v0[34] = v25;
    *v25 = v0;
    v25[1] = sub_22B247B94;

    return v35();
  }

  else
  {
    v27 = v0[22];
    v28 = v0[18];
    v29 = v0[19];
    v30 = v0[17];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22B247B94()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v11 = *v0;

  sub_22B144D48(v4);
  v5 = v1[22];
  v6 = v1[19];
  v7 = v1[18];
  v8 = v1[17];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_22B247D34()
{
  v44 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[26];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v3, v7, v5);

  v8 = v1;
  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[31];
  v13 = v0[29];
  v14 = v0[26];
  if (v11)
  {
    v15 = v0[25];
    v39 = v0[16];
    v40 = v0[15];
    v41 = v0[17];
    v16 = v0[11];
    v37 = v0[12];
    v38 = v0[29];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = v19;
    *v17 = 136315650;
    v20 = sub_22B1A7B20(v15, v14, &v43);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_22B1A7B20(v16, v37, &v43);
    *(v17 + 22) = 2112;
    v21 = v12;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v22;
    *v18 = v22;
    _os_log_impl(&dword_22B116000, v9, v10, "Failed to remove energy site %s for deleted home %s: %@", v17, 0x20u);
    sub_22B123284(v18, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    (*(v39 + 8))(v41, v40);
  }

  else
  {
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[15];
    v26 = v0[26];

    (*(v24 + 8))(v23, v25);
  }

  v27 = v0[14] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted;
  v28 = *v27;
  v0[32] = *v27;
  if (v28)
  {
    v0[33] = *(v27 + 8);

    v42 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    v0[34] = v30;
    *v30 = v0;
    v30[1] = sub_22B247B94;

    return v42();
  }

  else
  {
    v32 = v0[22];
    v33 = v0[18];
    v34 = v0[19];
    v35 = v0[17];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_22B2481F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B3605EC();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22B36062C();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_serialQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  sub_22B36060C();
  v24 = MEMORY[0x277D84F90];
  sub_22B1189D0(&qword_281409370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_22B2484E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B119A60;

  return sub_22B246C14(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B248604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAA0, &qword_22B366450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B248674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B124D88;

  return sub_22B246910(a1, v4, v5, v6);
}

id sub_22B248728(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_22B248734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAB0, &qword_22B366468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B2487AC(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50) - 8) + 80);

  return sub_22B243994(a1);
}

uint64_t sub_22B24883C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_22B32DF50(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22B248940()
{
  if (!*(v0 + 120))
  {
    return MEMORY[0x277D84FA0];
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  if (v1)
  {

    v4 = v1;
  }

  else
  {

    v6 = sub_22B2A632C();
    v4 = [v6 newBackgroundContext];
    v7 = sub_22B36081C();
    [v4 setTransactionAuthor_];

    [v4 setMergePolicy_];
    [v4 setUndoManager_];
    [v4 setShouldRefreshAfterSave_];
    [v4 setStalenessInterval_];
    [v4 setShouldDeleteInaccessibleFaults_];

    v1 = 0;
  }

  MEMORY[0x28223BE20](v3);
  v8 = v1;
  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAB08, &qword_22B3664B8);
  sub_22B360E7C();

  return v10;
}

uint64_t sub_22B248B18()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B248B80()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22B3608FC();

  return sub_22B3608FC();
}

uint64_t sub_22B248BD0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B248C34(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22B36134C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22B36134C();
    }
  }

  return result;
}

void sub_22B248CD8(void *a1@<X2>, void *a2@<X8>)
{
  v56 = a1;
  v54 = a2;
  v2 = sub_22B36052C();
  v71 = *(v2 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v2);
  v64 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v6 = sub_22B36081C();
  v7 = [v5 initWithEntityName_];

  v69 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v8 = swift_allocObject();
  v70 = xmmword_22B3634C0;
  *(v8 + 16) = xmmword_22B3634C0;
  v9 = sub_22B35DEDC();
  *(v8 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  v10 = v2;
  *(v8 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v8 + 32) = v9;
  v11 = sub_22B35DDDC();
  *(v8 + 96) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v8 + 104) = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v8 + 72) = v11;
  v12 = v56;
  v13 = sub_22B360CCC();
  [v7 setPredicate_];

  [v7 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v14 = swift_allocObject();
  *(v14 + 16) = v70;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = 0x800000022B36AF80;
  v69 = 0x800000022B36AF80;
  *(v14 + 88) = v15;
  *(v14 + 56) = v15;
  *(v14 + 64) = 0xD000000000000010;
  v67 = 0x800000022B36AFA0;
  *(v14 + 72) = 0x800000022B36AFA0;
  v16 = sub_22B360A3C();

  [v7 setPropertiesToFetch_];

  v17 = v58;
  [v7 setReturnsDistinctResults_];
  v63 = v7;
  v18 = [v7 setFetchBatchSize_];
  v19 = 0;
  v62 = (v71 + 16);
  v61 = (v71 + 8);
  v78 = MEMORY[0x277D84FA0];
  *&v20 = 134218242;
  v57 = v20;
  v55 = v2;
  while (1)
  {
    v65 = MEMORY[0x23188EEB0](v18);
    v21 = v63;
    v66 = v19;
    [v63 setFetchOffset_];
    [v21 setFetchLimit_];
    sub_22B128014(0, &qword_27D8BA3D8, 0x277CBEAC0);
    v22 = v17;
    v23 = sub_22B360E9C();
    if (!v17)
    {
      break;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*v62)(v64, v24, v10);
    v25 = v17;
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = v57;
      *(v28 + 4) = v66;
      *(v28 + 12) = 2112;
      v30 = v22;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v31;
      *v29 = v31;
      _os_log_impl(&dword_22B116000, v26, v27, "Failed to fetch LoadSessionBlock contributors at offset %ld: %@", v28, 0x16u);
      sub_22B123284(v29, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v29, -1, -1);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    else
    {
    }

    v48 = v65;
    (*v61)(v64, v10);
    v49 = 0;
    v17 = 0;
    v19 = v66;
LABEL_48:
    objc_autoreleasePoolPop(v48);
    if (__ROR8__(0x8F5C28F5C28F5C29 * v19 + 0x51EB851EB851EB8, 3) < 0x147AE147AE147AFuLL)
    {
      v18 = [v12 reset];
    }

    if (!v49)
    {

      *v54 = v78;
      return;
    }
  }

  v32 = v23;
  v60 = v23 >> 62;
  if (!(v23 >> 62))
  {
    v33 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

  v33 = sub_22B36109C();
  if (!v33)
  {
LABEL_46:

    v49 = 0;
    v19 = v66;
LABEL_47:
    v48 = v65;
    goto LABEL_48;
  }

LABEL_10:
  v58 = 0;
  v34 = 0;
  *&v70 = v32 & 0xC000000000000001;
  v71 = v32 & 0xFFFFFFFFFFFFFF8;
  v59 = MEMORY[0x277D84F90];
  do
  {
    v35 = v34;
    while (1)
    {
      if (v70)
      {
        v36 = MEMORY[0x23188EAC0](v35, v32);
      }

      else
      {
        if (v35 >= *(v71 + 16))
        {
          goto LABEL_52;
        }

        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = v36;
      v34 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      *&v74 = 0xD000000000000010;
      *(&v74 + 1) = v69;
      v38 = v15;
      v39 = [v36 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v39)
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      if (!*(&v75 + 1))
      {
        goto LABEL_13;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v40 = v73;
      v68 = v72;
      *&v74 = 0xD000000000000010;
      *(&v74 + 1) = v67;
      v41 = [v37 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v41)
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      v15 = v38;
      if (*(&v75 + 1))
      {
        break;
      }

LABEL_13:
      sub_22B123284(&v76, &unk_27D8BA950, &qword_22B364940);
LABEL_14:

LABEL_15:
      ++v35;
      if (v34 == v33)
      {
        goto LABEL_40;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_15;
    }

    v42 = v72;
    v43 = v73;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_22B32D838(0, *(v59 + 2) + 1, 1, v59);
    }

    v45 = *(v59 + 2);
    v44 = *(v59 + 3);
    if (v45 >= v44 >> 1)
    {
      v59 = sub_22B32D838((v44 > 1), v45 + 1, 1, v59);
    }

    v46 = v59;
    *(v59 + 2) = v45 + 1;
    v47 = &v46[32 * v45];
    *(v47 + 4) = v68;
    *(v47 + 5) = v40;
    *(v47 + 6) = v42;
    *(v47 + 7) = v43;
    v15 = v38;
  }

  while (v34 != v33);
LABEL_40:
  sub_22B250404(v59);

  if (v60)
  {
    v50 = sub_22B36109C();
  }

  else
  {
    v50 = *(v71 + 16);
  }

  v12 = v56;
  v10 = v55;
  v17 = v58;
  v51 = v66;

  v52 = __OFADD__(v51, v50);
  v19 = v51 + v50;
  if (!v52)
  {
    v49 = v50 > 49;
    goto LABEL_47;
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_22B2496CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v382 = a8;
  v341 = a7;
  v406 = a6;
  v366 = a5;
  v365 = a4;
  v364 = a3;
  v363 = a2;
  v362 = a1;
  v331 = a9;
  v10 = sub_22B35D8BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v371 = &v325 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480);
  v357 = *(v355 - 8);
  v13 = *(v357 + 64);
  MEMORY[0x28223BE20](v355);
  v374 = &v325 - v14;
  v349 = sub_22B35E7EC();
  v356 = *(v349 - 8);
  v15 = *(v356 + 64);
  MEMORY[0x28223BE20](v349);
  v348 = &v325 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = sub_22B35DF1C();
  v340 = *(v416 - 8);
  v17 = *(v340 + 64);
  MEMORY[0x28223BE20](v416);
  v370 = &v325 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v369 = &v325 - v20;
  MEMORY[0x28223BE20](v21);
  v360 = &v325 - v22;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  v373 = *(v392 - 8);
  v23 = *(v373 + 64);
  MEMORY[0x28223BE20](v392);
  v347 = &v325 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v325 = &v325 - v26;
  MEMORY[0x28223BE20](v27);
  v389 = &v325 - v28;
  MEMORY[0x28223BE20](v29);
  v372 = &v325 - v30;
  MEMORY[0x28223BE20](v31);
  v381 = &v325 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE8, &unk_22B366490);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v401 = &v325 - v35;
  v420 = sub_22B35E66C();
  v390 = *(v420 - 8);
  v36 = *(v390 + 64);
  MEMORY[0x28223BE20](v420);
  v398 = &v325 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = sub_22B36052C();
  v339 = *(v334 - 1);
  v38 = *(v339 + 64);
  MEMORY[0x28223BE20](v334);
  v338 = &v325 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v333 = &v325 - v41;
  v422 = sub_22B35E85C();
  v337 = *(v422 - 8);
  v42 = *(v337 + 64);
  MEMORY[0x28223BE20](v422);
  v346 = &v325 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v359 = &v325 - v45;
  MEMORY[0x28223BE20](v46);
  v405 = &v325 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA710, &qword_22B3659B8);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v326 = &v325 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v393 = &v325 - v52;
  MEMORY[0x28223BE20](v53);
  v408 = (&v325 - v54);
  MEMORY[0x28223BE20](v55);
  v413 = &v325 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v332 = &v325 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v404 = &v325 - v61;
  MEMORY[0x28223BE20](v62);
  v412 = &v325 - v63;
  v421 = sub_22B35DE9C();
  v336 = *(v421 - 8);
  v64 = *(v336 + 64);
  MEMORY[0x28223BE20](v421);
  v345 = &v325 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v354 = &v325 - v67;
  MEMORY[0x28223BE20](v68);
  v425 = &v325 - v69;
  MEMORY[0x28223BE20](v70);
  v403 = (&v325 - v71);
  MEMORY[0x28223BE20](v72);
  v415 = (&v325 - v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D8, &qword_22B365A50);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74 - 8);
  v384 = &v325 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C8, &qword_22B365A40);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v388 = &v325 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80 - 8);
  v402 = &v325 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v411 = &v325 - v84;
  MEMORY[0x28223BE20](v85);
  v424 = &v325 - v86;
  MEMORY[0x28223BE20](v87);
  v423 = &v325 - v88;
  MEMORY[0x28223BE20](v89);
  v419 = &v325 - v90;
  MEMORY[0x28223BE20](v91);
  v418 = &v325 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7B8, &unk_22B365A30);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93 - 8);
  v387 = &v325 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96 - 8);
  v394 = (&v325 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v99);
  v379 = (&v325 - v100);
  MEMORY[0x28223BE20](v101);
  v410 = &v325 - v102;
  MEMORY[0x28223BE20](v103);
  v409 = (&v325 - v104);
  MEMORY[0x28223BE20](v105);
  v417 = (&v325 - v106);
  MEMORY[0x28223BE20](v107);
  v414 = (&v325 - v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C0, &qword_22B3664A0);
  v110 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109 - 8);
  v386 = &v325 - v111;
  v400 = sub_22B35E81C();
  v399 = *(v400 - 1);
  v112 = *(v399 + 64);
  MEMORY[0x28223BE20](v400);
  v385 = &v325 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v395 = sub_22B35E4BC();
  v114 = *(v395 - 1);
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v395);
  v117 = &v325 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v396 = sub_22B35E7AC();
  v391 = *(v396 - 8);
  v118 = *(v391 + 64);
  MEMORY[0x28223BE20](v396);
  v380 = &v325 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v120);
  v397 = (&v325 - v121);
  MEMORY[0x28223BE20](v122);
  v375 = &v325 - v123;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v125 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124 - 8);
  v353 = &v325 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v127);
  v129 = &v325 - v128;
  v130 = sub_22B35E0BC();
  v335 = *(v130 - 8);
  v131 = *(v335 + 64);
  MEMORY[0x28223BE20](v130);
  v344 = &v325 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v133);
  v135 = &v325 - v134;
  v136 = sub_22B35DF9C();
  v137 = *(v136 - 8);
  v138 = *(v137 + 64);
  MEMORY[0x28223BE20](v136);
  v140 = &v325 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_22B35E04C();
  v329 = *(v330 - 8);
  v141 = *(v329 + 64);
  v142 = MEMORY[0x28223BE20](v330);
  v144 = &v325 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v137 + 104))(v140, *MEMORY[0x277CC9830], v136, v142);
  sub_22B35DFAC();
  (*(v137 + 8))(v140, v136);
  v145 = v335;
  sub_22B35E08C();
  v146 = *(v145 + 48);
  v352 = v145 + 48;
  v351 = v146;
  if (v146(v129, 1, v130) != 1)
  {
    v147 = *(v145 + 32);
    v350 = v130;
    v343 = v145 + 32;
    v342 = v147;
    v147(v135, v129, v130);
    v407 = v144;
    sub_22B35E01C();
    v383 = v117;
    sub_22B35E4CC();
    sub_22B35E4CC();
    v148 = *(v114 + 56);
    v376 = v148;
    v149 = v395;
    v148(v414, 1, 1, v395);
    v148(v417, 1, 1, v149);
    v148(v409, 1, 1, v149);
    v148(v410, 1, 1, v149);
    v148(v379, 1, 1, v149);
    v148(v394, 1, 1, v149);
    v150 = MEMORY[0x277D17508];
    v368 = sub_22B24CA6C(&qword_27D8BA7A0, MEMORY[0x277D17508]);
    v377 = sub_22B24CA6C(&qword_27D8BA7A8, v150);
    v378 = sub_22B24CA6C(&qword_27D8BA7B0, v150);
    sub_22B35E48C();
    v151 = *(v399 + 56);
    v152 = v400;
    v151(v418, 1, 1, v400);
    v151(v419, 1, 1, v152);
    v151(v423, 1, 1, v152);
    v151(v424, 1, 1, v152);
    v151(v411, 1, 1, v152);
    v151(v402, 1, 1, v152);
    v153 = MEMORY[0x277D17570];
    v379 = sub_22B24CA6C(&qword_27D8BA770, MEMORY[0x277D17570]);
    v394 = sub_22B24CA6C(&qword_27D8BA778, v153);
    v399 = sub_22B24CA6C(&qword_27D8BA780, v153);
    sub_22B35E48C();
    v154 = v376;
    v376(v414, 1, 1, v149);
    v154(v417, 1, 1, v149);
    v154(v409, 1, 1, v149);
    v154(v410, 1, 1, v149);
    sub_22B35E4EC();
    v151(v418, 1, 1, v152);
    v151(v419, 1, 1, v152);
    v151(v423, 1, 1, v152);
    v151(v424, 1, 1, v152);
    sub_22B35E4EC();
    sub_22B35E77C();
    v418 = sub_22B3227B0(MEMORY[0x277D84F90]);
    v155 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v156 = sub_22B36081C();
    v361 = [v155 initWithEntityName_];

    v157 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v423 = "LoadSessionBlock";
    v424 = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_22B363640;
    v159 = sub_22B35DEDC();
    *(v158 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    v417 = MEMORY[0x277D85388];
    *(v158 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78);
    *(v158 + 32) = v159;
    v160 = MEMORY[0x277D837D0];
    *(v158 + 96) = MEMORY[0x277D837D0];
    v161 = sub_22B1280E4();
    v162 = v364;
    *(v158 + 72) = v363;
    *(v158 + 80) = v162;
    *(v158 + 136) = v160;
    *(v158 + 144) = v161;
    v163 = v365;
    *(v158 + 104) = v161;
    *(v158 + 112) = v163;
    *(v158 + 120) = v366;

    v164 = v415;
    sub_22B35D89C();
    v165 = sub_22B35DDDC();
    v167 = v336 + 8;
    v166 = *(v336 + 8);
    v168 = v421;
    v166(v164, v421);
    v169 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v158 + 176) = v169;
    v170 = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8);
    *(v158 + 184) = v170;
    *(v158 + 152) = v165;
    v171 = v403;
    sub_22B35D86C();
    v172 = sub_22B35DDDC();
    v399 = v167;
    v419 = v166;
    v166(v171, v168);
    *(v158 + 216) = v169;
    *(v158 + 224) = v170;
    *(v158 + 192) = v172;
    v173 = sub_22B360CCC();
    v174 = v361;
    [v361 setPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v175 = swift_allocObject();
    *(v175 + 16) = xmmword_22B363650;
    v176 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v177 = sub_22B36081C();
    v178 = [v176 initWithKey:v177 ascending:1];

    *(v175 + 32) = v178;
    sub_22B128014(0, &qword_281409308, 0x277CCAC98);
    v179 = sub_22B360A3C();

    [v174 setSortDescriptors_];

    [v174 setFetchBatchSize_];
    [v174 setReturnsObjectsAsFaults_];
    v180 = *(v340 + 56);
    v181 = v416;
    v403 = (v340 + 56);
    v402 = v180;
    (v180)(v412, 1, 1, v416);
    v182 = v337 + 56;
    v327 = *(v337 + 56);
    v327(v413, 1, 1, v422);
    v183 = sub_22B35DACC();
    v184 = *(v183 + 48);
    v185 = *(v183 + 52);
    swift_allocObject();
    v406 = sub_22B35DABC();
    v368 = 0;
    v409 = (v182 - 8);
    v395 = (v182 - 24);
    v328 = v182;
    v394 = (v182 - 48);
    v400 = (v390 + 56);
    v379 = (v390 + 32);
    v376 = (v391 + 16);
    v378 = (v391 + 40);
    v391 += 8;
    v377 = (v390 + 8);
    v186 = v408;
    do
    {
      v187 = MEMORY[0x23188EEB0]();
      v188 = v361;
      [v361 setFetchOffset_];
      [v188 setFetchLimit_];
      sub_22B35F67C();
      v189 = v426;
      v190 = sub_22B360E9C();
      v191 = v189;
      if (v189)
      {
        goto LABEL_56;
      }

      v192 = v190;
      v367 = v187;
      v414 = v190;
      v358 = v190 >> 62;
      if (v190 >> 62)
      {
        v250 = sub_22B36109C();
        v192 = v414;
        v187 = v415;
        v193 = v399;
        v410 = v250;
        if (!v250)
        {
LABEL_36:
          v426 = 0;

          v187 = v367;
          goto LABEL_48;
        }
      }

      else
      {
        v187 = v415;
        v193 = v399;
        v410 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v410)
        {
          goto LABEL_36;
        }
      }

      v194 = 0;
      v411 = (v192 & 0xC000000000000001);
      v390 = v192 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v411)
        {
          v195 = MEMORY[0x23188EAC0](v194, v192);
        }

        else
        {
          if (v194 >= *(v390 + 16))
          {
            goto LABEL_70;
          }

          v195 = *(v192 + 8 * v194 + 32);
        }

        v177 = v195;
        if (__OFADD__(v194, 1))
        {
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v423 = (v194 + 1);
        v424 = v194;
        v426 = v191;
        v196 = [v195 homeIdentifier];
        v197 = v404;
        sub_22B35DEFC();

        v198 = v412;
        sub_22B123284(v412, &qword_27D8BA970, &unk_22B363560);
        (v402)(v197, 0, 1, v181);
        sub_22B170CD0(v197, v198, &qword_27D8BA970, &unk_22B363560);
        v199 = v413;
        sub_22B170BE0(v413, v186, &qword_27D8BA710, &qword_22B3659B8);
        v200 = v422;
        if ((*v409)(v186, 1, v422) == 1)
        {
          sub_22B123284(v186, &qword_27D8BA710, &qword_22B3659B8);
          v201 = [v177 loadType];
          sub_22B36084C();

          v202 = v393;
          sub_22B35E83C();
          sub_22B250374(v202, v199);
        }

        else
        {
          (*v395)(v405, v186, v200);
          v203 = sub_22B35E84C();
          v205 = v204;
          v206 = [v177 loadType];
          v207 = sub_22B36084C();
          v209 = v208;

          if (v203 == v207 && v205 == v209)
          {

            v193 = v399;
          }

          else
          {
            v210 = sub_22B36134C();

            v193 = v399;
            if ((v210 & 1) == 0)
            {

              if (qword_28140A0C8 != -1)
              {
                swift_once();
              }

              v181 = v334;
              v251 = __swift_project_value_buffer(v334, qword_28140BD10);
              swift_beginAccess();
              v252 = v339;
              v253 = v333;
              (*(v339 + 16))(v333, v251, v181);
              v254 = v177;
              v255 = sub_22B36050C();
              v256 = sub_22B360D1C();

              if (os_log_type_enabled(v255, v256))
              {
                v257 = swift_slowAlloc();
                v258 = swift_slowAlloc();
                v427[0] = v258;
                *v257 = 136315394;
                v259 = [v254 deviceIdentifier];
                v260 = sub_22B36084C();
                v262 = v261;

                v263 = sub_22B1A7B20(v260, v262, v427);

                *(v257 + 4) = v263;
                *(v257 + 12) = 2080;
                v264 = [v254 sourceIdentifier];
                v265 = sub_22B36084C();
                v267 = v266;

                v268 = v265;
                v181 = v334;
                v269 = sub_22B1A7B20(v268, v267, v427);

                *(v257 + 14) = v269;
                _os_log_impl(&dword_22B116000, v255, v256, "Developer error: DeviceID %s must be unique for a\nsource %s with different load types", v257, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x23188F650](v258, -1, -1);
                MEMORY[0x23188F650](v257, -1, -1);

                (*(v252 + 8))(v333, v181);
              }

              else
              {

                (*(v252 + 8))(v253, v181);
              }

              v270 = v413;
              sub_22B123284(v413, &qword_27D8BA710, &qword_22B3659B8);
              v271 = v422;
              v327(v270, 1, 1, v422);
              sub_22B134CDC();
              v186 = swift_allocError();
              *v272 = 20;
              swift_willThrow();

              (*v394)(v405, v271);
              v177 = v416;
              v187 = v367;
              goto LABEL_43;
            }
          }

          (*v394)(v405, v422);
        }

        v211 = [v177 blockStart];
        sub_22B35DE5C();

        v212 = v187;
        v213 = v177;
        sub_22B35DFBC();
        v214 = v421;
        v215 = v419;
        (v419)(v212, v421);
        v216 = [v177 blockData];
        v177 = v193;
        v217 = sub_22B35DCDC();
        v219 = v218;

        sub_22B24CA6C(&qword_27D8BAAF0, MEMORY[0x277D17538]);
        v220 = v401;
        v221 = v420;
        v222 = v426;
        sub_22B35DAAC();
        if (v222)
        {

          sub_22B12F174(v217, v219);
          v215(v425, v214);
          (*v400)(v220, 1, 1, v221);
          sub_22B123284(v220, &qword_27D8BAAE8, &unk_22B366490);
          v191 = 0;
          v186 = v408;
          v187 = v415;
          v193 = v177;
        }

        else
        {
          v417 = v213;
          v426 = 0;
          sub_22B12F174(v217, v219);
          (*v400)(v220, 0, 1, v221);
          (*v379)(v398, v220, v221);
          sub_22B35E64C();
          sub_22B35E65C();
          sub_22B35E5EC();
          sub_22B35E61C();
          sub_22B35E5DC();
          sub_22B35E63C();
          sub_22B35E62C();
          sub_22B35E77C();
          v223 = v418;
          if (*(v418 + 2) && (v224 = sub_22B33B348(v425), (v225 & 1) != 0))
          {
            v226 = v372;
            sub_22B170BE0(*(v223 + 7) + *(v373 + 72) * v224, v372, &qword_27D8BAAE0, &unk_22B3673C0);
            v227 = v226;
            v228 = v381;
            sub_22B170CD0(v227, v381, &qword_27D8BAAE0, &unk_22B3673C0);
          }

          else
          {
            v229 = *(v392 + 48);
            v230 = *v376;
            v228 = v381;
            v231 = v375;
            v232 = v396;
            (*v376)(v381, v375, v396);
            v230(v228 + v229, v231, v232);
          }

          v186 = v408;
          v187 = v415;
          v233 = v228;
          v234 = v228;
          if (([v417 isConsumptionBlock] & 1) == 0)
          {
            v233 = v228 + *(v392 + 48);
          }

          v235 = v380;
          v177 = v397;
          sub_22B24CAB4(v233, v397, v382, v380);
          v236 = v235;
          v237 = v396;
          (*v378)(v233, v236, v396);
          v238 = v228;
          v239 = v389;
          sub_22B170BE0(v238, v389, &qword_27D8BAAE0, &unk_22B3673C0);
          v240 = v418;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v427[0] = v240;
          v242 = v239;
          v243 = v425;
          sub_22B33FA2C(v242, v425, isUniquelyReferenced_nonNull_native);

          (*v391)(v177, v237);
          (*v377)(v398, v420);
          v244 = v243;
          v245 = v399;
          (v419)(v244, v421);
          v418 = v427[0];
          v246 = v234;
          v193 = v245;
          sub_22B123284(v246, &qword_27D8BAAE0, &unk_22B3673C0);
          v191 = v426;
        }

        v194 = (v424 + 1);
        v181 = v416;
        v192 = v414;
      }

      while (v423 != v410);
      if (v358)
      {
        v247 = sub_22B36109C();
      }

      else
      {
        v247 = *(v390 + 16);
      }

      v248 = v367;

      v249 = __OFADD__(v368, v247);
      v368 += v247;
      if (v249)
      {
        goto LABEL_72;
      }

      v426 = v191;
      objc_autoreleasePoolPop(v248);
    }

    while (v247 > 9);
    while (1)
    {
      v281 = v412;
      v282 = v332;
      sub_22B170BE0(v412, v332, &qword_27D8BA970, &unk_22B363560);
      v283 = v340;
      if ((*(v340 + 48))(v282, 1, v181) == 1)
      {
        sub_22B123284(v282, &qword_27D8BA970, &unk_22B363560);

        sub_22B123284(v413, &qword_27D8BA710, &qword_22B3659B8);
        sub_22B123284(v281, &qword_27D8BA970, &unk_22B363560);
        (*v391)(v375, v396);
        (*(v329 + 8))(v407, v330);

        *v331 = MEMORY[0x277D84F90];
        return result;
      }

      v285 = v360;
      (*(v283 + 32))(v360, v282, v181);
      v286 = v413;
      v287 = v326;
      sub_22B170BE0(v413, v326, &qword_27D8BA710, &qword_22B3659B8);
      v288 = v422;
      if ((*v409)(v287, 1, v422) == 1)
      {
        sub_22B123284(v287, &qword_27D8BA710, &qword_22B3659B8);

        sub_22B123284(v286, &qword_27D8BA710, &qword_22B3659B8);
        sub_22B123284(v412, &qword_27D8BA970, &unk_22B363560);
        (*v391)(v375, v396);
        (*(v329 + 8))(v407, v330);
        *v331 = MEMORY[0x277D84F90];
        (*(v283 + 8))(v285, v181);
      }

      (*v395)(v359, v287, v288);
      v289 = v418;
      v290 = *(v418 + 2);
      v187 = MEMORY[0x277D84F90];
      if (!v290)
      {
        break;
      }

      v291 = sub_22B32DD28(*(v418 + 2), 0);
      sub_22B24FBE8(v427, v291 + ((*(v357 + 80) + 32) & ~*(v357 + 80)), v290, v289);
      v293 = v292;
      v191 = v427[2];
      v181 = v427[4];

      sub_22B1A20B8();
      if (v293 == v290)
      {
        goto LABEL_58;
      }

      __break(1u);
LABEL_56:
      v177 = v181;
      v186 = v191;
      v181 = v334;
LABEL_43:
      v426 = 0;
      if (qword_28140A0C8 != -1)
      {
        goto LABEL_73;
      }

LABEL_44:
      v273 = __swift_project_value_buffer(v181, qword_28140BD10);
      swift_beginAccess();
      (*(v339 + 16))(v338, v273, v181);
      v274 = v186;
      v275 = sub_22B36050C();
      v276 = sub_22B360D1C();

      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        v278 = swift_slowAlloc();
        *v277 = 134218242;
        *(v277 + 4) = v368;
        *(v277 + 12) = 2112;
        v279 = v186;
        v280 = _swift_stdlib_bridgeErrorToNSError();
        *(v277 + 14) = v280;
        *v278 = v280;
        _os_log_impl(&dword_22B116000, v275, v276, "Failed to fetch LoadSessionBlocks batch at offset %ld: %@", v277, 0x16u);
        sub_22B123284(v278, &unk_27D8BAA90, &unk_22B362BC0);
        v177 = v416;
        MEMORY[0x23188F650](v278, -1, -1);
        MEMORY[0x23188F650](v277, -1, -1);
      }

      else
      {
      }

      (*(v339 + 8))(v338, v181);
      v181 = v177;
LABEL_48:
      objc_autoreleasePoolPop(v187);
    }

    v291 = MEMORY[0x277D84F90];
LABEL_58:
    v186 = v340;
    v294 = v337;
    v295 = v336;
    v427[0] = v291;
    v9 = v426;
    sub_22B24E804(v427);
    v296 = v396;
    v297 = v375;
    if (v9)
    {
      goto LABEL_76;
    }

    v181 = v427[0];
    v298 = v427[0][2];
    if (!v298)
    {

      sub_22B123284(v413, &qword_27D8BA710, &qword_22B3659B8);
      sub_22B123284(v412, &qword_27D8BA970, &unk_22B363560);
      (*v391)(v297, v296);
      (*(v329 + 8))(v407, v330);
      v299 = MEMORY[0x277D84F90];
LABEL_68:
      *v331 = v299;
      (*v394)(v359, v422);
      (*(v186 + 8))(v360, v416);
    }

    v426 = 0;
    v428 = v187;
    v411 = v298;
    sub_22B355810(0, v298, 0);
    v187 = 0;
    v299 = v428;
    v417 = (v181 + ((*(v357 + 80) + 32) & ~*(v357 + 80)));
    v415 = (v295 + 16);
    v410 = (v335 + 8);
    v409 = (v186 + 16);
    v408 = (v294 + 16);
    v405 = (v356 + 32);
    v177 = &qword_27D8BA870;
    v300 = v374;
    v301 = v392;
    v302 = v325;
    v303 = v421;
    v414 = v181;
    while (v187 < v181[2])
    {
      v425 = v299;
      v304 = *(v357 + 72);
      v424 = v187;
      sub_22B170BE0(v417 + v304 * v187, v300, &qword_27D8BA870, &unk_22B366480);
      v305 = &v374[*(v355 + 48)];
      v306 = *(v301 + 48);
      v307 = *v376;
      v308 = v396;
      (*v376)(v302, v305, v396);
      v309 = &v305[v306];
      v310 = v374;
      v307(v302 + *(v301 + 48), v309, v308);
      (*v415)(v354, v310, v303);
      v311 = v353;
      sub_22B35E08C();
      v312 = v350;
      if (v351(v311, 1, v350) == 1)
      {
        __break(1u);
        goto LABEL_75;
      }

      v313 = v344;
      v342(v344, v311, v312);
      sub_22B35F63C();
      (*v410)(v313, v312);
      sub_22B35D88C();
      v314 = *v409;
      v315 = v416;
      (*v409)(v369, v360, v416);
      v314(v370, v362, v315);
      v9 = v366;
      v427[0] = v365;
      v427[1] = v366;

      v316 = sub_22B3609EC();
      v419 = v317;
      v420 = v316;
      (*v408)(v346, v359, v422);
      v318 = v389;
      sub_22B170BE0(v302, v389, &qword_27D8BAAE0, &unk_22B3673C0);
      v423 = *(v301 + 48);
      v319 = v347;
      sub_22B170BE0(v302, v347, &qword_27D8BAAE0, &unk_22B3673C0);
      v324 = v319 + *(v301 + 48);
      v320 = v348;
      v300 = v374;
      sub_22B35E6DC();
      sub_22B123284(v302, &qword_27D8BAAE0, &unk_22B3673C0);
      v321 = *v391;
      (*v391)(v319, v308);
      v322 = &v423[v318];
      v423 = v321;
      (v321)(v322, v308);
      v177 = &qword_27D8BA870;
      sub_22B123284(v300, &qword_27D8BA870, &unk_22B366480);
      v299 = v425;
      v428 = v425;
      v186 = *(v425 + 16);
      v323 = *(v425 + 24);
      if (v186 >= v323 >> 1)
      {
        sub_22B355810(v323 > 1, v186 + 1, 1);
        v300 = v374;
        v299 = v428;
      }

      v187 = (v424 + 1);
      *(v299 + 16) = v186 + 1;
      (*(v356 + 32))(v299 + ((*(v356 + 80) + 32) & ~*(v356 + 80)) + *(v356 + 72) * v186, v320, v349);
      v301 = v392;
      v303 = v421;
      v181 = v414;
      if (v411 == v187)
      {

        sub_22B123284(v413, &qword_27D8BA710, &qword_22B3659B8);
        sub_22B123284(v412, &qword_27D8BA970, &unk_22B363560);
        (v423)(v375, v396);
        (*(v329 + 8))(v407, v330);
        v186 = v340;
        goto LABEL_68;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
    goto LABEL_44;
  }

LABEL_75:
  __break(1u);
LABEL_76:

  __break(1u);
  return result;
}

uint64_t sub_22B24CA6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B24CAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v101 = a2;
  v95 = a4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D8, &qword_22B365A50);
  v91 = *(v93 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x28223BE20](v93);
  v90 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v75 - v8;
  MEMORY[0x28223BE20](v9);
  v94 = &v75 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C8, &qword_22B365A40);
  v85 = *(v87 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v84 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = &v75 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7B8, &unk_22B365A30);
  v81 = *(v17 - 8);
  v82 = v17;
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v17);
  v80 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v79 = &v75 - v21;
  MEMORY[0x28223BE20](v22);
  v86 = &v75 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C0, &qword_22B3664A0);
  v77 = *(v78 - 8);
  v24 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v75 = &v75 - v27;
  MEMORY[0x28223BE20](v28);
  v100 = &v75 - v29;
  v30 = sub_22B35E81C();
  v96 = *(v30 - 8);
  v97 = v30;
  v31 = *(v96 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v75 - v35;
  MEMORY[0x28223BE20](v37);
  v99 = &v75 - v38;
  v39 = sub_22B35E4BC();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v75 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v75 - v48;
  v98 = a1;
  sub_22B35E78C();
  v50 = sub_22B35E42C();
  v51 = *(v40 + 8);
  v51(v46, v39);
  sub_22B35E78C();
  v52 = sub_22B35E42C();
  v51(v43, v39);
  result = v50 + v52;
  if (__OFADD__(v50, v52))
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_22B35E4CC();
  sub_22B35E79C();
  v54 = sub_22B35E42C();
  v55 = *(v96 + 8);
  v56 = v36;
  v57 = v97;
  v55(v56, v97);
  sub_22B35E79C();
  v58 = sub_22B35E42C();
  v55(v33, v57);
  result = v54 + v58;
  if (__OFADD__(v54, v58))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v97 = v49;
  sub_22B35E4CC();
  v59 = v75;
  sub_22B35E73C();
  v60 = v76;
  sub_22B35E73C();
  sub_22B24D2C4(v100);
  v61 = *(v77 + 8);
  v62 = v78;
  v61(v60, v78);
  v61(v59, v62);
  v63 = v79;
  sub_22B35E74C();
  v64 = v80;
  sub_22B35E74C();
  sub_22B24D750(v86);
  v65 = v82;
  v66 = *(v81 + 8);
  v66(v64, v82);
  v66(v63, v65);
  v67 = v83;
  sub_22B35E72C();
  v68 = v84;
  sub_22B35E72C();
  sub_22B24DBDC(v88);
  v69 = *(v85 + 8);
  v70 = v87;
  v69(v68, v87);
  v69(v67, v70);
  v71 = v89;
  sub_22B35E76C();
  v72 = v90;
  sub_22B35E76C();
  sub_22B24DF24(v94);
  v73 = *(v91 + 8);
  v74 = v93;
  v73(v72, v93);
  v73(v71, v74);
  if ((sub_22B35E75C() & 1) == 0)
  {
    sub_22B35E75C();
  }

  return sub_22B35E77C();
}

uint64_t sub_22B24D2C4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - v5;
  MEMORY[0x28223BE20](v6);
  v27 = &v27 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v31 = &v27 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C0, &qword_22B3664A0);
  MEMORY[0x23188BDC0]();
  MEMORY[0x23188BDC0](v20);
  sub_22B24E26C(v16, v13, v19);
  sub_22B123284(v13, &qword_27D8BA798, &qword_22B365A28);
  v29 = v16;
  sub_22B123284(v16, &qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x23188BD80](v20);
  MEMORY[0x23188BD80](v20);
  sub_22B24E26C(v13, v10, v16);
  sub_22B123284(v10, &qword_27D8BA798, &qword_22B365A28);
  sub_22B123284(v13, &qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x23188BD90](v20);
  v21 = v27;
  MEMORY[0x23188BD90](v20);
  sub_22B24E26C(v10, v21, v13);
  sub_22B123284(v21, &qword_27D8BA798, &qword_22B365A28);
  sub_22B123284(v10, &qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x23188BD70](v20);
  v22 = v28;
  MEMORY[0x23188BD70](v20);
  sub_22B24E26C(v21, v22, v10);
  sub_22B123284(v22, &qword_27D8BA798, &qword_22B365A28);
  sub_22B123284(v21, &qword_27D8BA798, &qword_22B365A28);
  sub_22B35E47C();
  v23 = v30;
  sub_22B35E47C();
  sub_22B24E26C(v22, v23, v21);
  sub_22B123284(v23, &qword_27D8BA798, &qword_22B365A28);
  sub_22B123284(v22, &qword_27D8BA798, &qword_22B365A28);
  v24 = sub_22B35E4BC();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = MEMORY[0x277D17508];
  sub_22B24CA6C(&qword_27D8BA7A0, MEMORY[0x277D17508]);
  sub_22B24CA6C(&qword_27D8BA7A8, v25);
  sub_22B24CA6C(&qword_27D8BA7B0, v25);
  return sub_22B35E48C();
}

uint64_t sub_22B24D750@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - v5;
  MEMORY[0x28223BE20](v6);
  v27 = &v27 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v31 = &v27 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7B8, &unk_22B365A30);
  MEMORY[0x23188BDC0]();
  MEMORY[0x23188BDC0](v20);
  sub_22B24E538(v16, v13, v19);
  sub_22B123284(v13, &qword_27D8BA760, &qword_22B365A08);
  v29 = v16;
  sub_22B123284(v16, &qword_27D8BA760, &qword_22B365A08);
  MEMORY[0x23188BD80](v20);
  MEMORY[0x23188BD80](v20);
  sub_22B24E538(v13, v10, v16);
  sub_22B123284(v10, &qword_27D8BA760, &qword_22B365A08);
  sub_22B123284(v13, &qword_27D8BA760, &qword_22B365A08);
  MEMORY[0x23188BD90](v20);
  v21 = v27;
  MEMORY[0x23188BD90](v20);
  sub_22B24E538(v10, v21, v13);
  sub_22B123284(v21, &qword_27D8BA760, &qword_22B365A08);
  sub_22B123284(v10, &qword_27D8BA760, &qword_22B365A08);
  MEMORY[0x23188BD70](v20);
  v22 = v28;
  MEMORY[0x23188BD70](v20);
  sub_22B24E538(v21, v22, v10);
  sub_22B123284(v22, &qword_27D8BA760, &qword_22B365A08);
  sub_22B123284(v21, &qword_27D8BA760, &qword_22B365A08);
  sub_22B35E47C();
  v23 = v30;
  sub_22B35E47C();
  sub_22B24E538(v22, v23, v21);
  sub_22B123284(v23, &qword_27D8BA760, &qword_22B365A08);
  sub_22B123284(v22, &qword_27D8BA760, &qword_22B365A08);
  v24 = sub_22B35E81C();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = MEMORY[0x277D17570];
  sub_22B24CA6C(&qword_27D8BA770, MEMORY[0x277D17570]);
  sub_22B24CA6C(&qword_27D8BA778, v25);
  sub_22B24CA6C(&qword_27D8BA780, v25);
  return sub_22B35E48C();
}

uint64_t sub_22B24DBDC@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v21[0] = v21 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C8, &qword_22B365A40);
  MEMORY[0x23188BE20]();
  MEMORY[0x23188BE20](v17);
  sub_22B24E26C(v13, v10, v16);
  sub_22B123284(v10, &qword_27D8BA798, &qword_22B365A28);
  sub_22B123284(v13, &qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x23188BE30](v17);
  MEMORY[0x23188BE30](v17);
  sub_22B24E26C(v10, v7, v13);
  sub_22B123284(v7, &qword_27D8BA798, &qword_22B365A28);
  sub_22B123284(v10, &qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x23188BE00](v17);
  MEMORY[0x23188BE00](v17);
  sub_22B24E26C(v7, v4, v10);
  sub_22B123284(v4, &qword_27D8BA798, &qword_22B365A28);
  sub_22B123284(v7, &qword_27D8BA798, &qword_22B365A28);
  v18 = sub_22B35E4BC();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = MEMORY[0x277D17508];
  sub_22B24CA6C(&qword_27D8BA7A0, MEMORY[0x277D17508]);
  sub_22B24CA6C(&qword_27D8BA7A8, v19);
  sub_22B24CA6C(&qword_27D8BA7B0, v19);
  return sub_22B35E4EC();
}

uint64_t sub_22B24DF24@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v21[0] = v21 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D8, &qword_22B365A50);
  MEMORY[0x23188BE20]();
  MEMORY[0x23188BE20](v17);
  sub_22B24E538(v13, v10, v16);
  sub_22B123284(v10, &qword_27D8BA760, &qword_22B365A08);
  sub_22B123284(v13, &qword_27D8BA760, &qword_22B365A08);
  MEMORY[0x23188BE30](v17);
  MEMORY[0x23188BE30](v17);
  sub_22B24E538(v10, v7, v13);
  sub_22B123284(v7, &qword_27D8BA760, &qword_22B365A08);
  sub_22B123284(v10, &qword_27D8BA760, &qword_22B365A08);
  MEMORY[0x23188BE00](v17);
  MEMORY[0x23188BE00](v17);
  sub_22B24E538(v7, v4, v10);
  sub_22B123284(v4, &qword_27D8BA760, &qword_22B365A08);
  sub_22B123284(v7, &qword_27D8BA760, &qword_22B365A08);
  v18 = sub_22B35E81C();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = MEMORY[0x277D17570];
  sub_22B24CA6C(&qword_27D8BA770, MEMORY[0x277D17570]);
  sub_22B24CA6C(&qword_27D8BA778, v19);
  sub_22B24CA6C(&qword_27D8BA780, v19);
  return sub_22B35E4EC();
}

uint64_t sub_22B24E26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_22B35E4BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAB00, &qword_22B3664B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - v15;
  v18 = *(v17 + 56);
  sub_22B170BE0(a1, &v29 - v15, &qword_27D8BA798, &qword_22B365A28);
  sub_22B170BE0(a2, &v16[v18], &qword_27D8BA798, &qword_22B365A28);
  v19 = *(v6 + 48);
  LODWORD(a2) = v19(v16, 1, v5);
  v20 = v19(&v16[v18], 1, v5);
  if (a2 == 1)
  {
    if (v20 == 1)
    {
      v21 = 1;
      v22 = v30;
      return (*(v6 + 56))(v22, v21, 1, v5);
    }

    v22 = v30;
    (*(v6 + 32))(v30, &v16[v18], v5);
LABEL_9:
    v21 = 0;
    return (*(v6 + 56))(v22, v21, 1, v5);
  }

  v23 = *(v6 + 32);
  if (v20 == 1)
  {
    v22 = v30;
    v23(v30, v16, v5);
    goto LABEL_9;
  }

  v23(v12, v16, v5);
  v23(v9, &v16[v18], v5);
  v24 = sub_22B35E42C();
  v25 = sub_22B35E42C();
  v26 = __OFADD__(v24, v25);
  result = v24 + v25;
  v22 = v30;
  if (!v26)
  {
    sub_22B35E4CC();
    v28 = *(v6 + 8);
    v28(v9, v5);
    v28(v12, v5);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B24E538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_22B35E81C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAF8, &qword_22B3664A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - v15;
  v18 = *(v17 + 56);
  sub_22B170BE0(a1, &v29 - v15, &qword_27D8BA760, &qword_22B365A08);
  sub_22B170BE0(a2, &v16[v18], &qword_27D8BA760, &qword_22B365A08);
  v19 = *(v6 + 48);
  LODWORD(a2) = v19(v16, 1, v5);
  v20 = v19(&v16[v18], 1, v5);
  if (a2 == 1)
  {
    if (v20 == 1)
    {
      v21 = 1;
      v22 = v30;
      return (*(v6 + 56))(v22, v21, 1, v5);
    }

    v22 = v30;
    (*(v6 + 32))(v30, &v16[v18], v5);
LABEL_9:
    v21 = 0;
    return (*(v6 + 56))(v22, v21, 1, v5);
  }

  v23 = *(v6 + 32);
  if (v20 == 1)
  {
    v22 = v30;
    v23(v30, v16, v5);
    goto LABEL_9;
  }

  v23(v12, v16, v5);
  v23(v9, &v16[v18], v5);
  v24 = sub_22B35E42C();
  v25 = sub_22B35E42C();
  v26 = __OFADD__(v24, v25);
  result = v24 + v25;
  v22 = v30;
  if (!v26)
  {
    sub_22B35E4CC();
    v28 = *(v6 + 8);
    v28(v9, v5);
    v28(v12, v5);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_22B24E804(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22B21CB98(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22B24E8B8(v5);
  *a1 = v3;
}

void sub_22B24E8B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22B36130C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480);
        v6 = sub_22B360A8C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22B24EC4C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22B24E9FC(0, v2, 1, a1);
  }
}

void sub_22B24E9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480);
  v8 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_22B170BE0(v22, v16, &qword_27D8BA870, &unk_22B366480);
      sub_22B170BE0(v19, v12, &qword_27D8BA870, &unk_22B366480);
      v23 = sub_22B35DDFC();
      sub_22B123284(v12, &qword_27D8BA870, &unk_22B366480);
      sub_22B123284(v16, &qword_27D8BA870, &unk_22B366480);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_22B170CD0(v22, v34, &qword_27D8BA870, &unk_22B366480);
      swift_arrayInitWithTakeFrontToBack();
      sub_22B170CD0(v24, v19, &qword_27D8BA870, &unk_22B366480);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22B24EC4C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v104 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480);
  v114 = *(v117 - 8);
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v117);
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v100 - v12;
  MEMORY[0x28223BE20](v13);
  v119 = &v100 - v14;
  MEMORY[0x28223BE20](v15);
  v118 = &v100 - v16;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_136;
    }

    v4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = v4;
    }

    else
    {
LABEL_130:
      v94 = sub_22B21C768(v4);
    }

    v95 = v6;
    v120 = v94;
    v4 = *(v94 + 2);
    if (v4 >= 2)
    {
      do
      {
        v96 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *&v94[16 * v4];
        v97 = v94;
        v98 = *&v94[16 * v4 + 24];
        sub_22B24F58C(v96 + *(v114 + 72) * a3, v96 + *(v114 + 72) * *&v94[16 * v4 + 16], v96 + *(v114 + 72) * v98, a4);
        if (v95)
        {
          break;
        }

        if (v98 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_22B21C768(v97);
        }

        if (v4 - 2 >= *(v97 + 2))
        {
          goto LABEL_124;
        }

        v99 = &v97[16 * v4];
        *v99 = a3;
        *(v99 + 1) = v98;
        v120 = v97;
        sub_22B21C6DC(v4 - 1);
        v94 = v120;
        v4 = *(v120 + 2);
        a3 = v6;
      }

      while (v4 > 1);
    }

LABEL_107:

    return;
  }

  v101 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v105 = a3;
  while (1)
  {
    v20 = v18;
    v109 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v103 = v6;
      v21 = v18;
      v22 = *a3;
      v23 = *(v114 + 72);
      a4 = *a3 + v23 * (v18 + 1);
      v24 = v118;
      sub_22B170BE0(a4, v118, &qword_27D8BA870, &unk_22B366480);
      v25 = v119;
      sub_22B170BE0(v22 + v23 * v21, v119, &qword_27D8BA870, &unk_22B366480);
      LODWORD(v113) = sub_22B35DDFC();
      sub_22B123284(v25, &qword_27D8BA870, &unk_22B366480);
      sub_22B123284(v24, &qword_27D8BA870, &unk_22B366480);
      v102 = v21;
      v4 = v21 + 2;
      v115 = v23;
      v26 = v22 + v23 * (v21 + 2);
      while (v17 != v4)
      {
        v27 = v118;
        sub_22B170BE0(v26, v118, &qword_27D8BA870, &unk_22B366480);
        v28 = v119;
        sub_22B170BE0(a4, v119, &qword_27D8BA870, &unk_22B366480);
        v29 = v17;
        v30 = sub_22B35DDFC() & 1;
        sub_22B123284(v28, &qword_27D8BA870, &unk_22B366480);
        sub_22B123284(v27, &qword_27D8BA870, &unk_22B366480);
        ++v4;
        v26 += v115;
        a4 += v115;
        v31 = (v113 & 1) == v30;
        v17 = v29;
        if (!v31)
        {
          v17 = v4 - 1;
          break;
        }
      }

      a3 = v105;
      v20 = v102;
      v6 = v103;
      if (v113)
      {
        if (v17 < v102)
        {
          goto LABEL_127;
        }

        if (v102 < v17)
        {
          v4 = v115 * (v17 - 1);
          v32 = v17 * v115;
          v33 = v17;
          v34 = v17;
          v35 = v102;
          a4 = v102 * v115;
          do
          {
            if (v35 != --v34)
            {
              v36 = *v105;
              if (!*v105)
              {
                goto LABEL_133;
              }

              sub_22B170CD0(v36 + a4, v108, &qword_27D8BA870, &unk_22B366480);
              if (a4 < v4 || v36 + a4 >= v36 + v32)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22B170CD0(v108, v36 + v4, &qword_27D8BA870, &unk_22B366480);
            }

            ++v35;
            v4 -= v115;
            v32 -= v115;
            a4 += v115;
          }

          while (v35 < v34);
          v20 = v102;
          v6 = v103;
          a3 = v105;
          v17 = v33;
        }
      }
    }

    v37 = *(a3 + 8);
    if (v17 < v37)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v101)
      {
        if (__OFADD__(v20, v101))
        {
          goto LABEL_128;
        }

        if (v20 + v101 >= v37)
        {
          v38 = *(a3 + 8);
        }

        else
        {
          v38 = v20 + v101;
        }

        if (v38 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v38)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v109;
    }

    else
    {
      v19 = sub_22B21C984(0, *(v109 + 2) + 1, 1, v109);
    }

    v4 = *(v19 + 2);
    v39 = *(v19 + 3);
    a4 = v4 + 1;
    if (v4 >= v39 >> 1)
    {
      v19 = sub_22B21C984((v39 > 1), v4 + 1, 1, v19);
    }

    *(v19 + 2) = a4;
    v40 = &v19[16 * v4];
    *(v40 + 4) = v20;
    *(v40 + 5) = v18;
    v41 = *v104;
    if (!*v104)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v43 = *(v19 + 4);
          v44 = *(v19 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_114;
          }

          v59 = &v19[16 * a4];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_117;
          }

          v65 = &v19[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_121;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v19[16 * a4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_116;
        }

        v72 = &v19[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v42 - 1;
        if (v42 - 1 >= a4)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v80 = v19;
        a4 = *&v19[16 * v4 + 32];
        v81 = *&v19[16 * v42 + 40];
        sub_22B24F58C(*a3 + *(v114 + 72) * a4, *a3 + *(v114 + 72) * *&v19[16 * v42 + 32], *a3 + *(v114 + 72) * v81, v41);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v81 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v82 = v80;
        }

        else
        {
          v82 = sub_22B21C768(v80);
        }

        if (v4 >= *(v82 + 2))
        {
          goto LABEL_111;
        }

        v83 = &v82[16 * v4];
        *(v83 + 4) = a4;
        *(v83 + 5) = v81;
        v120 = v82;
        v4 = &v120;
        sub_22B21C6DC(v42);
        v19 = v120;
        a4 = *(v120 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v19[16 * a4 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_112;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_113;
      }

      v54 = &v19[16 * a4];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_115;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_118;
      }

      if (v58 >= v50)
      {
        v76 = &v19[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v79)
        {
          v42 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = *(a3 + 8);
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v102 = v20;
  v103 = v6;
  v84 = *a3;
  v85 = *(v114 + 72);
  v86 = *a3 + v85 * (v17 - 1);
  v87 = -v85;
  v88 = v20 - v17;
  v106 = v85;
  v107 = v38;
  v115 = v84;
  a4 = v84 + v17 * v85;
LABEL_86:
  v112 = v86;
  v113 = v17;
  v110 = a4;
  v111 = v88;
  v89 = v86;
  while (1)
  {
    v4 = v118;
    sub_22B170BE0(a4, v118, &qword_27D8BA870, &unk_22B366480);
    v90 = v119;
    sub_22B170BE0(v89, v119, &qword_27D8BA870, &unk_22B366480);
    v91 = sub_22B35DDFC();
    sub_22B123284(v90, &qword_27D8BA870, &unk_22B366480);
    sub_22B123284(v4, &qword_27D8BA870, &unk_22B366480);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v17 = v113 + 1;
      v18 = v107;
      v86 = v112 + v106;
      v88 = v111 - 1;
      a4 = v110 + v106;
      if (v113 + 1 != v107)
      {
        goto LABEL_86;
      }

      v20 = v102;
      v6 = v103;
      a3 = v105;
      if (v107 < v102)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v115)
    {
      break;
    }

    v92 = v116;
    sub_22B170CD0(a4, v116, &qword_27D8BA870, &unk_22B366480);
    swift_arrayInitWithTakeFrontToBack();
    sub_22B170CD0(v92, v89, &qword_27D8BA870, &unk_22B366480);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

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
}