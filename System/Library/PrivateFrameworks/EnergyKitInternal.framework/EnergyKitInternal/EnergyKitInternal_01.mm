uint64_t sub_20DECC974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = v17;
  *(v8 + 240) = v15;
  *(v8 + 256) = v16;
  *(v8 + 208) = v13;
  *(v8 + 224) = v14;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA48, &qword_20DF49FA8);
  *(v8 + 280) = v9;
  v10 = *(v9 - 8);
  *(v8 + 288) = v10;
  *(v8 + 296) = *(v10 + 64);
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DECCA6C, 0, 0);
}

uint64_t sub_20DECCA6C()
{
  v1 = v0;
  v34 = v0 + 10;
  v2 = v0[37];
  v3 = v0[38];
  v32 = v0 + 2;
  v33 = v0 + 18;
  v4 = v0[35];
  v5 = v0[36];
  v30 = v0[33];
  v31 = v0[34];
  v28 = v0[31];
  v29 = v0[32];
  v25 = v0[29];
  v26 = v0[30];
  v23 = v0[27];
  v24 = v0[28];
  v21 = v0[25];
  v22 = v0[26];
  v6 = v0[23];
  v20 = v0[24];
  v7 = v0[22];
  v8 = v1[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v1[39] = sub_20DF3C9D8();
  (*(v5 + 16))(v3, v6, v4);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  (*(v5 + 32))(v10 + v9, v3, v4);

  v27 = sub_20DF3D598(sub_20DED9130, v10);
  v1[40] = v27;

  v11 = sub_20DF47D04();
  v1[41] = v11;
  v12 = sub_20DF47D04();
  v1[42] = v12;
  v13 = sub_20DF47D04();
  v1[43] = v13;
  v14 = sub_20DF47464();
  v1[44] = v14;
  v15 = sub_20DF47464();
  v1[45] = v15;
  v16 = sub_20DF475F4();
  v1[46] = v16;
  v17 = sub_20DF47D04();
  v1[47] = v17;
  v1[2] = v1;
  v1[7] = v33;
  v1[3] = sub_20DECCD30;
  v18 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA50, &qword_20DF49FC0);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_20DECD2F8;
  v1[13] = &block_descriptor_176;
  v1[14] = v18;
  [v27 intervalReadingWithSubscriptionID:v11 utilityID:v12 interval:v13 start:v14 end:v15 timeZone:v16 flowDirection:v17 completionHandler:v34];

  return MEMORY[0x282200938](v32);
}

uint64_t sub_20DECCD30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_20DECCF2C;
  }

  else
  {
    v3 = sub_20DECCE40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DECCE40()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[39];
  v14 = v0[23];
  v15 = v0[35];
  v10 = v0[18];
  swift_unknownObjectRelease();

  [*(v9 + 16) invalidate];
  v0[20] = v10;
  sub_20DF47EE4();

  v11 = v0[38];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DECCF2C()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
  v12 = v0[42];
  v13 = v0[41];
  v8 = v0[39];
  v7 = v0[40];
  v14 = v0[23];
  v15 = v0[35];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[19] = v1;
  sub_20DF47ED4();
  v9 = v0[38];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DECD01C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_20DF47BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281122F18);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = a1;

  v13 = sub_20DF47BB4();
  v14 = sub_20DF47FF4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v28 = swift_slowAlloc();
    v29 = a1;
    v30 = v28;
    *v16 = 136315394;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v18 = sub_20DF47D24();
    v20 = sub_20DED38E8(v18, v19, &v30);
    v27 = v6;
    v21 = a3;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20DED38E8(v26, v21, &v30);
    _os_log_impl(&dword_20DEAF000, v13, v14, "interval reading command failed for %s %s", v16, 0x16u);
    v23 = v28;
    swift_arrayDestroy();
    MEMORY[0x20F329700](v23, -1, -1);
    MEMORY[0x20F329700](v16, -1, -1);

    (*(v7 + 8))(v10, v27);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v30 = a1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA48, &qword_20DF49FA8);
  return sub_20DF47ED4();
}

uint64_t sub_20DECD2F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_20DF474E4();
    sub_20DED91B0(&qword_27C84CA58, MEMORY[0x277CC9578]);
    **(*(v4 + 64) + 40) = sub_20DF47C34();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_20DECD43C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_20DECD514;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD000000000000011, 0x800000020DF4EB60, sub_20DED5C48, v3, v4);
}

uint64_t sub_20DECD514()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_20DECD644;
  }

  else
  {
    v3 = sub_20DECD628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DECD660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v10 + 32))(v20 + v19, v13, v9);
  *(v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_20DEBB534(0, 0, v17, a6, v20);
}

uint64_t sub_20DECD84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v5[23] = *(v7 + 64);
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DECD920, 0, 0);
}

uint64_t sub_20DECD920()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[25] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DED8E14, v8);
  v0[26] = v9;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[27] = v11;

  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_20DECDB50;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3B890;
  v0[13] = &block_descriptor_166;
  v0[14] = v12;
  [v9 isDataAvailableWithSiteID:v11 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DECDB50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_20DEC9888;
  }

  else
  {
    v3 = sub_20DECDC60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DECDC60()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 232);
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  *(v0 + 233) = v6;
  sub_20DF47EE4();

  v7 = *(v0 + 192);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_20DECDD14(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_20DECDD34, 0, 0);
}

uint64_t sub_20DECDD34()
{
  v1 = *(v0[3] + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v0[4] = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_20DECDDF4;

  return sub_20DED44DC(v2, v4);
}

uint64_t sub_20DECDDF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v8 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = sub_20DECDFD8;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_20DECDF10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DECDF10()
{
  v1 = v0[6];
  v2 = v0[2];
  if (v1)
  {
    v3 = v1;
    sub_20DF478E4();
  }

  else
  {
    v4 = sub_20DF47714();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DECDFD8()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_20DECE03C()
{
  v1[9] = v0;
  v2 = sub_20DF47BD4();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C970, &qword_20DF49A08) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C978, qword_20DF49A10) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v7 = sub_20DF47704();
  v1[16] = v7;
  v8 = *(v7 - 8);
  v1[17] = v8;
  v9 = *(v8 + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DECE1D4, 0, 0);
}

uint64_t sub_20DECE1D4()
{
  v1 = *(v0[9] + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v0[19] = v4;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_20DECE294;

  return sub_20DED44DC(v2, v4);
}

uint64_t sub_20DECE294(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v8 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = sub_20DECE908;
  }

  else
  {
    v6 = v3[19];

    v5 = sub_20DECE3B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DECE3B0()
{
  v57 = v0;
  v1 = v0[21];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[14];
  v3 = v1;
  sub_20DF478E4();

  v4 = sub_20DF47714();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4))
  {
    sub_20DED8730(v0[14], &qword_27C84C970, &qword_20DF49A08);
LABEL_4:
    (*(v0[17] + 56))(v0[15], 1, 1, v0[16]);
LABEL_5:
    sub_20DED8730(v0[15], &qword_27C84C978, qword_20DF49A10);
    goto LABEL_6;
  }

  v25 = v0[14];
  v26 = sub_20DF476C4();
  sub_20DED8730(v25, &qword_27C84C970, &qword_20DF49A08);
  if (*(v26 + 16))
  {
    (*(v0[17] + 16))(v0[15], v26 + ((*(v0[17] + 80) + 32) & ~*(v0[17] + 80)), v0[16]);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v0[16];
  v29 = v0[17];
  v30 = v0[15];

  (*(v29 + 56))(v30, v27, 1, v28);
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {
    goto LABEL_5;
  }

  v31 = v0[22];
  v32 = v0[18];
  v33 = (*(v0[17] + 32))(v32, v0[15], v0[16]);
  v56[0] = MEMORY[0x277D84F90];
  v34 = MEMORY[0x20F329140](v33);
  sub_20DECE9AC(v32, v56, (v0 + 8));
  if (!v31)
  {
    v54 = v0[17];
    v53 = v0[18];
    v55 = v0[16];
    objc_autoreleasePoolPop(v34);

    (*(v54 + 8))(v53, v55);
    v17 = v56[0];
    goto LABEL_11;
  }

  v35 = v0[8];
  objc_autoreleasePoolPop(v34);
  if (qword_27C84C730 != -1)
  {
    swift_once();
  }

  v36 = v0[13];
  v37 = v0[10];
  v38 = v0[11];
  v39 = __swift_project_value_buffer(v37, qword_27C851F60);
  swift_beginAccess();
  (*(v38 + 16))(v36, v39, v37);
  v40 = v35;
  v41 = sub_20DF47BB4();
  v42 = sub_20DF47FF4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    v45 = v35;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 4) = v46;
    *v44 = v46;
    _os_log_impl(&dword_20DEAF000, v41, v42, "Failed to unarchive Readings %@", v43, 0xCu);
    sub_20DED8730(v44, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v44, -1, -1);
    MEMORY[0x20F329700](v43, -1, -1);
  }

  v48 = v0[17];
  v47 = v0[18];
  v49 = v0[16];
  v50 = v0[13];
  v51 = v0[10];
  v52 = v0[11];

  (*(v52 + 8))(v50, v51);
  (*(v48 + 8))(v47, v49);
LABEL_6:
  if (qword_27C84C730 != -1)
  {
    swift_once();
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = __swift_project_value_buffer(v7, qword_27C851F60);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_20DF47BB4();
  v10 = sub_20DF48004();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[21];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  if (v11)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_20DEAF000, v9, v10, "Found no Utility Peak Periods on EnergySite", v16, 2u);
    MEMORY[0x20F329700](v16, -1, -1);
  }

  (*(v14 + 8))(v13, v15);
  v17 = 0;
LABEL_11:
  v18 = v0[18];
  v20 = v0[14];
  v19 = v0[15];
  v22 = v0[12];
  v21 = v0[13];

  v23 = v0[1];

  return v23(v17);
}

uint64_t sub_20DECE908()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  v7 = v0[1];
  v8 = v0[22];

  return v7();
}

uint64_t sub_20DECE9AC(uint64_t a1, size_t *a2, uint64_t a3)
{
  v41[0] = a3;
  v52 = a2;
  v4 = sub_20DF47B54();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v41 - v9;
  sub_20DED8A00();
  v11 = sub_20DF476F4();
  v13 = v12;
  v14 = sub_20DF48044();
  v15 = v3;
  result = sub_20DED8A4C(v11, v13);
  v17 = v41[0];
  if (v3)
  {
LABEL_2:
    *v17 = v15;
  }

  else
  {
    v51 = v10;
    v45 = v8;
    v46 = v4;
    if (!v14 || (v53 = 0, sub_20DF47E54(), v14, (result = v53) == 0))
    {

      result = MEMORY[0x277D84F90];
    }

    v44 = *(result + 16);
    if (v44)
    {
      v18 = 0;
      v41[2] = v47 + 8;
      v42 = (v47 + 16);
      v41[1] = v47 + 32;
      v19 = (result + 40);
      v21 = v45;
      v20 = v46;
      v43 = result;
      while (v18 < *(result + 16))
      {
        v48 = v18;
        v22 = *(v19 - 1);
        v23 = *v19;
        v24 = sub_20DED8AA0(v22, *v19);
        v50 = MEMORY[0x20F329140](v24);
        v25 = sub_20DF47324();
        v26 = *(v25 + 48);
        v27 = *(v25 + 52);
        swift_allocObject();
        sub_20DF47314();
        sub_20DED91B0(&qword_27C84CA18, MEMORY[0x277D180E0]);
        v28 = v51;
        v49 = v23;
        sub_20DF47304();
        if (v15)
        {

          objc_autoreleasePoolPop(v50);
          result = sub_20DED8A4C(v22, v49);
          v17 = v41[0];
          goto LABEL_2;
        }

        (*v42)(v21, v28, v20);
        v29 = v52;
        v30 = *v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v29 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_20DEB8464(0, v30[2] + 1, 1, v30);
          *v52 = v30;
        }

        v32 = v50;
        v33 = v48;
        v50 = 0;
        v35 = v30[2];
        v34 = v30[3];
        if (v35 >= v34 >> 1)
        {
          v40 = sub_20DEB8464(v34 > 1, v35 + 1, 1, v30);
          *v52 = v40;
        }

        v18 = v33 + 1;
        v36 = v46;
        v37 = v47;
        (*(v47 + 8))(v51, v46);
        v38 = *v52;
        *(v38 + 16) = v35 + 1;
        v39 = v38 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35;
        v20 = v36;
        v21 = v45;
        (*(v37 + 32))(v39, v45, v36);
        objc_autoreleasePoolPop(v32);
        sub_20DED8A4C(v22, v49);
        v19 += 2;
        result = v43;
        v15 = v50;
        if (v44 == v18)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20DECED84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C970, &qword_20DF49A08) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C978, qword_20DF49A10) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_20DF47704();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DECEEB4, 0, 0);
}

uint64_t sub_20DECEEB4()
{
  v1 = *(v0[3] + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_20DECEF74;

  return sub_20DED44DC(v2, v4);
}

uint64_t sub_20DECEF74(uint64_t a1)
{
  v3 = *(*v2 + 80);
  v4 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DECF1FC, 0, 0);
  }

  else
  {
    v5 = v4[9];

    v6 = swift_task_alloc();
    v4[13] = v6;
    *v6 = v4;
    v6[1] = sub_20DECF0E8;
    v7 = v4[3];

    return sub_20DECE03C();
  }
}

uint64_t sub_20DECF0E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_20DECF554;
  }

  else
  {
    v5 = sub_20DECF284;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DECF1FC()
{
  v1 = v0[9];

  v2 = v0[12];
  v3 = v0[8];
  v5 = v0[4];
  v4 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DECF284()
{
  v1 = v0[11];
  if (!v1)
  {
    v7 = v0[14];

    goto LABEL_5;
  }

  v2 = v0[4];
  v3 = v1;
  sub_20DF478E4();

  v4 = sub_20DF47714();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4))
  {
    v5 = v0[14];
    v6 = v0[4];

    sub_20DED8730(v6, &qword_27C84C970, &qword_20DF49A08);
LABEL_5:
    (*(v0[7] + 56))(v0[5], 1, 1, v0[6]);
LABEL_6:
    sub_20DED8730(v0[5], &qword_27C84C978, qword_20DF49A10);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  v19 = v0[4];
  v20 = sub_20DF476C4();
  sub_20DED8730(v19, &qword_27C84C970, &qword_20DF49A08);
  if (*(v20 + 16))
  {
    (*(v0[7] + 16))(v0[5], v20 + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v0[6];
  v23 = v0[7];
  v24 = v0[5];

  (*(v23 + 56))(v24, v21, 1, v22);
  v25 = (*(v23 + 48))(v24, 1, v22);
  v26 = v0[14];
  if (v25 == 1)
  {

    goto LABEL_6;
  }

  v28 = v0[7];
  v27 = v0[8];
  v29 = v0[6];
  (*(v28 + 32))(v27, v0[5], v29);
  v9 = sub_20DF476D4();
  v10 = v30;
  v11 = sub_20DF476E4();
  v12 = v31;

  (*(v28 + 8))(v27, v29);
  if (v26)
  {
    v8 = v26;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_7:
  v13 = v0[8];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[2];

  *v16 = v8;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v17 = v0[1];

  return v17();
}

uint64_t sub_20DECF554()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20DECF5DC()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v4 = sub_20DF47B54();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v0[13] = v5;
  v6 = *(v5 + 64) + 15;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_20DECF738;

  return sub_20DECE03C();
}

uint64_t sub_20DECF738(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[17] = a1;

  if (v1)
  {
    v6 = v4[14];
    v5 = v4[15];
    v7 = v4[10];
    v8 = v4[11];

    v9 = v4[1];

    return v9(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DECF8A0, 0, 0);
  }
}

uint64_t sub_20DECF8A0()
{
  v49 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v45 = v0[12];
        v47 = v0[11];
        v19 = swift_slowAlloc();
        v46 = v18;
        v20 = swift_slowAlloc();
        v48 = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x2928554F547369, 0xE700000000000000, &v48);
        *(v19 + 12) = 2048;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v45);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, v11, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v47, v46);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v36 = v0[15];
      if (sub_20DF47B44() < 0)
      {
        v1 = 0;
      }

      else
      {
        v37 = v0[15];
        v1 = sub_20DF47B44() < 5;
      }

      v38 = v0[13] + 8;
      v22(v0[15], v0[12]);
    }

    else
    {
      v23 = v0[17];

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v25 = v0[9];
      v24 = v0[10];
      v26 = v0[8];
      v27 = __swift_project_value_buffer(v26, qword_281122F18);
      swift_beginAccess();
      (*(v25 + 16))(v24, v27, v26);
      v28 = sub_20DF47BB4();
      v29 = sub_20DF48004();
      v30 = os_log_type_enabled(v28, v29);
      v32 = v0[9];
      v31 = v0[10];
      v33 = v0[8];
      if (v30)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v48 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_20DED38E8(0x2928554F547369, 0xE700000000000000, &v48);
        _os_log_impl(&dword_20DEAF000, v28, v29, "%s no first peak in currentUtilityPeakPeriods", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x20F329700](v35, -1, -1);
        MEMORY[0x20F329700](v34, -1, -1);
      }

      (*(v32 + 8))(v31, v33);
      v1 = 0;
    }
  }

  v40 = v0[14];
  v39 = v0[15];
  v42 = v0[10];
  v41 = v0[11];

  v43 = v0[1];

  return v43(v1);
}

uint64_t sub_20DECFD00()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v4 = sub_20DF47B54();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v0[13] = v5;
  v6 = *(v5 + 64) + 15;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_20DECFE5C;

  return sub_20DECE03C();
}

uint64_t sub_20DECFE5C(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[17] = a1;

  if (v1)
  {
    v6 = v4[14];
    v5 = v4[15];
    v7 = v4[10];
    v8 = v4[11];

    v9 = v4[1];

    return v9(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DECFFC4, 0, 0);
  }
}

uint64_t sub_20DECFFC4()
{
  v50 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v45 = v0[12];
        log = v11;
        v19 = swift_slowAlloc();
        v48 = v16;
        v49 = swift_slowAlloc();
        v20 = v49;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x6465726569547369, 0xEA00000000002928, &v49);
        *(v19 + 12) = 2048;
        v46 = v18;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v45);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, log, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v48, v46);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v36 = v0[15];
      v37 = v0[12];
      v38 = sub_20DF47B44();
      v22(v36, v37);
      v1 = v38 == 999;
    }

    else
    {
      v23 = v0[17];

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v25 = v0[9];
      v24 = v0[10];
      v26 = v0[8];
      v27 = __swift_project_value_buffer(v26, qword_281122F18);
      swift_beginAccess();
      (*(v25 + 16))(v24, v27, v26);
      v28 = sub_20DF47BB4();
      v29 = sub_20DF48004();
      v30 = os_log_type_enabled(v28, v29);
      v32 = v0[9];
      v31 = v0[10];
      v33 = v0[8];
      if (v30)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_20DED38E8(0x6465726569547369, 0xEA00000000002928, &v49);
        _os_log_impl(&dword_20DEAF000, v28, v29, "%s no first peak in currentUtilityPeakPeriods", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x20F329700](v35, -1, -1);
        MEMORY[0x20F329700](v34, -1, -1);
      }

      (*(v32 + 8))(v31, v33);
      v1 = 0;
    }
  }

  v40 = v0[14];
  v39 = v0[15];
  v42 = v0[10];
  v41 = v0[11];

  v43 = v0[1];

  return v43(v1);
}

uint64_t sub_20DED042C()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v4 = sub_20DF47B54();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v0[13] = v5;
  v6 = *(v5 + 64) + 15;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_20DED0588;

  return sub_20DECE03C();
}

uint64_t sub_20DED0588(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[17] = a1;

  if (v1)
  {
    v6 = v4[14];
    v5 = v4[15];
    v7 = v4[10];
    v8 = v4[11];

    v9 = v4[1];

    return v9(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DED06F0, 0, 0);
  }
}

uint64_t sub_20DED06F0()
{
  v50 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v45 = v0[12];
        log = v11;
        v19 = swift_slowAlloc();
        v48 = v16;
        v49 = swift_slowAlloc();
        v20 = v49;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x292874616C467369, 0xE800000000000000, &v49);
        *(v19 + 12) = 2048;
        v46 = v18;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v45);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, log, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v48, v46);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v36 = v0[15];
      v37 = v0[12];
      v38 = sub_20DF47B44();
      v22(v36, v37);
      v1 = v38 == 998;
    }

    else
    {
      v23 = v0[17];

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v25 = v0[9];
      v24 = v0[10];
      v26 = v0[8];
      v27 = __swift_project_value_buffer(v26, qword_281122F18);
      swift_beginAccess();
      (*(v25 + 16))(v24, v27, v26);
      v28 = sub_20DF47BB4();
      v29 = sub_20DF48004();
      v30 = os_log_type_enabled(v28, v29);
      v32 = v0[9];
      v31 = v0[10];
      v33 = v0[8];
      if (v30)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_20DED38E8(0x292874616C467369, 0xE800000000000000, &v49);
        _os_log_impl(&dword_20DEAF000, v28, v29, "%s no first peak in currentUtilityPeakPeriods", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x20F329700](v35, -1, -1);
        MEMORY[0x20F329700](v34, -1, -1);
      }

      (*(v32 + 8))(v31, v33);
      v1 = 0;
    }
  }

  v40 = v0[14];
  v39 = v0[15];
  v42 = v0[10];
  v41 = v0[11];

  v43 = v0[1];

  return v43(v1);
}

uint64_t sub_20DED0B50()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v4 = sub_20DF47B54();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v0[13] = v5;
  v6 = *(v5 + 64) + 15;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_20DED0CAC;

  return sub_20DECE03C();
}

uint64_t sub_20DED0CAC(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[17] = a1;

  if (v1)
  {
    v6 = v4[14];
    v5 = v4[15];
    v7 = v4[10];
    v8 = v4[11];

    v9 = v4[1];

    return v9(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DED0E14, 0, 0);
  }
}

uint64_t sub_20DED0E14()
{
  v50 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v45 = v0[12];
        log = v11;
        v19 = swift_slowAlloc();
        v48 = v16;
        v49 = swift_slowAlloc();
        v20 = v49;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x2864657869467369, 0xE900000000000029, &v49);
        *(v19 + 12) = 2048;
        v46 = v18;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v45);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, log, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v48, v46);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v36 = v0[15];
      v37 = v0[12];
      v38 = sub_20DF47B44();
      v22(v36, v37);
      v1 = v38 == 997;
    }

    else
    {
      v23 = v0[17];

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v25 = v0[9];
      v24 = v0[10];
      v26 = v0[8];
      v27 = __swift_project_value_buffer(v26, qword_281122F18);
      swift_beginAccess();
      (*(v25 + 16))(v24, v27, v26);
      v28 = sub_20DF47BB4();
      v29 = sub_20DF48004();
      v30 = os_log_type_enabled(v28, v29);
      v32 = v0[9];
      v31 = v0[10];
      v33 = v0[8];
      if (v30)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_20DED38E8(0x2864657869467369, 0xE900000000000029, &v49);
        _os_log_impl(&dword_20DEAF000, v28, v29, "%s no first peak in currentUtilityPeakPeriods", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x20F329700](v35, -1, -1);
        MEMORY[0x20F329700](v34, -1, -1);
      }

      (*(v32 + 8))(v31, v33);
      v1 = 0;
    }
  }

  v40 = v0[14];
  v39 = v0[15];
  v42 = v0[10];
  v41 = v0[11];

  v43 = v0[1];

  return v43(v1);
}

uint64_t sub_20DED127C()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v4 = sub_20DF47B54();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v0[13] = v5;
  v6 = *(v5 + 64) + 15;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_20DED13D8;

  return sub_20DECE03C();
}

uint64_t sub_20DED13D8(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[17] = a1;

  if (v1)
  {
    v6 = v4[14];
    v5 = v4[15];
    v7 = v4[10];
    v8 = v4[11];

    v9 = v4[1];

    return v9(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DED1540, 0, 0);
  }
}

uint64_t sub_20DED1540()
{
  v50 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v45 = v0[12];
        log = v11;
        v19 = swift_slowAlloc();
        v48 = v16;
        v49 = swift_slowAlloc();
        v20 = v49;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x707075736E557369, 0xEF2928646574726FLL, &v49);
        *(v19 + 12) = 2048;
        v46 = v18;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v45);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, log, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v48, v46);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v36 = v0[15];
      v37 = v0[12];
      v38 = sub_20DF47B44();
      v22(v36, v37);
      v1 = v38 == 404;
    }

    else
    {
      v23 = v0[17];

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v25 = v0[9];
      v24 = v0[10];
      v26 = v0[8];
      v27 = __swift_project_value_buffer(v26, qword_281122F18);
      swift_beginAccess();
      (*(v25 + 16))(v24, v27, v26);
      v28 = sub_20DF47BB4();
      v29 = sub_20DF48004();
      v30 = os_log_type_enabled(v28, v29);
      v32 = v0[9];
      v31 = v0[10];
      v33 = v0[8];
      if (v30)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_20DED38E8(0x707075736E557369, 0xEF2928646574726FLL, &v49);
        _os_log_impl(&dword_20DEAF000, v28, v29, "%s no first peak in currentUtilityPeakPeriods", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x20F329700](v35, -1, -1);
        MEMORY[0x20F329700](v34, -1, -1);
      }

      (*(v32 + 8))(v31, v33);
      v1 = 0;
    }
  }

  v40 = v0[14];
  v39 = v0[15];
  v42 = v0[10];
  v41 = v0[11];

  v43 = v0[1];

  return v43(v1);
}

uint64_t sub_20DED19B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_20DF47BD4();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DED1A78, 0, 0);
}

uint64_t sub_20DED1A78()
{
  v1 = *(*(v0 + 48) + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    v6[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_20DED1D28;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000028, 0x800000020DF4EB80, sub_20DED5C90, v6, v9);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);
    v13 = __swift_project_value_buffer(v12, qword_281122F18);
    swift_beginAccess();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_20DF47BB4();
    v15 = sub_20DF47FF4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DEAF000, v14, v15, "Failed to refresh peaks. Site ID is empty.", v16, 2u);
      MEMORY[0x20F329700](v16, -1, -1);
    }

    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 56);

    (*(v18 + 8))(v17, v19);
    sub_20DED4D6C();
    swift_allocError();
    *v20 = 28;
    swift_willThrow();
    v21 = *(v0 + 72);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_20DED1D28()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_20DEBF5E0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_20DED1E44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DED1E44()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DED1EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a2;
  v4 = sub_20DF474E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, v26, v7);
  v17 = a3;
  v18 = v4;
  (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v4);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v5 + 80) + v20 + 8) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v8 + 32))(v22 + v19, v11, v7);
  *(v22 + v20) = v27;
  (*(v5 + 32))(v22 + v21, v25, v18);

  sub_20DEBB534(0, 0, v15, &unk_20DF49F58, v22);
}

uint64_t sub_20DED2180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v6[22] = v7;
  v8 = *(v7 - 8);
  v6[23] = v8;
  v6[24] = *(v8 + 64);
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DED2258, 0, 0);
}

uint64_t sub_20DED2258()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v15 = v0[21];
  v6 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[26] = sub_20DF3C9D8();
  (*(v4 + 16))(v2, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v2, v3);
  v9 = sub_20DF3D598(sub_20DED89E4, v8);
  v0[27] = v9;

  v10 = *(v5 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[28] = v11;

  v12 = sub_20DF47464();
  v0[29] = v12;
  v0[2] = v0;
  v0[3] = sub_20DED2494;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_144;
  v0[14] = v13;
  [v9 refreshCurrentUtilityPeakPeriodsWithSiteID:v11 start:v12 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DED2494()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_20DED2650;
  }

  else
  {
    v3 = sub_20DED25A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DED25A4()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[22];
  v6 = v0[19];
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  sub_20DF47EE4();

  v7 = v0[25];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DED2650()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[19];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[18] = v1;
  sub_20DF47ED4();
  v8 = v0[25];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DED2714(void *a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_20DF47BD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_281122F18);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v15 = a1;
  v16 = sub_20DF47BB4();
  v17 = sub_20DF47FF4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27 = a4;
    v21 = v20;
    *v19 = 138412290;
    v22 = a1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_20DEAF000, v16, v17, v26, v19, 0xCu);
    sub_20DED8730(v21, &qword_27C84C948, qword_20DF49940);
    a4 = v27;
    MEMORY[0x20F329700](v21, -1, -1);
    MEMORY[0x20F329700](v19, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v28 = a1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_20DF47ED4();
}

uint64_t EnergySite.deinit()
{
  sub_20DF477C4();
  v1 = sub_20DF47D04();

  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    swift_unknownObjectRetain_n();
    v5 = v3;
    [v5 removeObserver:v2 name:v1 object:0];

    swift_unknownObjectRelease_n();
  }

  v6 = *(v0 + 32);
  swift_unknownObjectRelease();

  sub_20DED5C98(v0 + 48);
  return v0;
}

uint64_t EnergySite.__deallocating_deinit()
{
  EnergySite.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_20DED2A6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for EnergySite();
  result = sub_20DF48164();
  *a1 = result;
  return result;
}

uint64_t sub_20DED2AAC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v46 = a3;
  v47 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA10, &qword_20DF49F48);
  v6 = *(*(v45 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v45);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v42 - v9;
  v10 = sub_20DF475C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = sub_20DF474E4();
  v49 = *(v21 - 8);
  v22 = *(v49 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v11 + 104);
  v25(v20, **(&unk_277E1A258 + *a1), v10);
  v26 = *(v11 + 16);
  v48 = v20;
  v26(v18, v20, v10);
  v27 = (*(v11 + 88))(v18, v10);
  if (v27 == *MEMORY[0x277CC9998] || v27 == *MEMORY[0x277CC9968])
  {
    v25(v15, v27, v10);
    sub_20DF47AC4();
    (*(v11 + 8))(v15, v10);
  }

  else if (v27 == *MEMORY[0x277CC9980])
  {
    sub_20DF47AE4();
    sub_20DF47454();
  }

  else
  {
    v41 = *MEMORY[0x277CC9940];
    v42 = (v11 + 8);
    if (v27 == v41)
    {
      v25(v15, v27, v10);
      sub_20DF47AC4();
      (*v42)(v15, v10);
    }

    else
    {
      (*(v49 + 16))(v24, v4, v21);
      (*v42)(v18, v10);
    }
  }

  sub_20DED91B0(&qword_281122978, MEMORY[0x277CC9578]);
  v28 = sub_20DF47CE4();
  result = (*(v11 + 8))(v48, v10);
  if (v28)
  {
    v30 = v49;
    v31 = v44;
    (*(v49 + 16))(v44, v4, v21);
    v32 = v43;
    v33 = v31;
    v34 = v45;
    v35 = *(v30 + 32);
    v35(v33 + *(v45 + 48), v24, v21);
    sub_20DED8804(v33, v32, &qword_27C84CA10, &qword_20DF49F48);
    v36 = *(v34 + 48);
    v37 = v46;
    v35(v46, v32, v21);
    v38 = *(v30 + 8);
    v38(v32 + v36, v21);
    sub_20DED9CE8(v33, v32, &qword_27C84CA10, &qword_20DF49F48);
    v39 = *(v34 + 48);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
    v35(v37 + *(v40 + 36), (v32 + v39), v21);
    return (v38)(v32, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EnergySite.EnergyUsage.containsDate(_:displayInterval:in:)(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  v6 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_20DF474E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  sub_20DED8804(a1, v12, &qword_27C84C988, &qword_20DF4AD10);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20DED8730(v12, &qword_27C84C988, &qword_20DF4AD10);
    v19 = 0;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v24 = v18;
    sub_20DED2AAC(&v24, a3, v8);
    sub_20DED91B0(&qword_281122978, MEMORY[0x277CC9578]);
    if (sub_20DF47CE4())
    {
      v20 = *(v23 + 36);
      v19 = sub_20DF47CD4();
    }

    else
    {
      v19 = 0;
    }

    sub_20DED8730(v8, &qword_27C84C980, &unk_20DF49A50);
    (*(v14 + 8))(v17, v13);
  }

  return v19 & 1;
}

uint64_t EnergySite.EnergyUsage.overlapsDateRange(_:displayInterval:in:)(uint64_t a1, char *a2, uint64_t a3)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C990, &qword_20DF49A60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C998, &qword_20DF49A68);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *a2;
  sub_20DED8804(a1, v12, &qword_27C84C990, &qword_20DF49A60);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20DED8730(v12, &qword_27C84C990, &qword_20DF49A60);
    v19 = 0;
  }

  else
  {
    sub_20DED9CE8(v12, v17, &qword_27C84C998, &qword_20DF49A68);
    v25 = v18;
    sub_20DED2AAC(&v25, v24, v8);
    sub_20DF474E4();
    v20 = *(v13 + 36);
    sub_20DED91B0(&qword_281122978, MEMORY[0x277CC9578]);
    if (sub_20DF47CD4() & 1) != 0 || (v21 = *(v5 + 36), (sub_20DF47CE4()))
    {
      v19 = 0;
    }

    else
    {
      sub_20DED91B0(&qword_27C84C9A0, MEMORY[0x277CC9578]);
      v19 = sub_20DF47CF4() ^ 1;
    }

    sub_20DED8730(v8, &qword_27C84C980, &unk_20DF49A50);
    sub_20DED8730(v17, &qword_27C84C998, &qword_20DF49A68);
  }

  return v19 & 1;
}

uint64_t sub_20DED35C8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_20DED3614(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DED370C;

  return v7(a1);
}

uint64_t sub_20DED370C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20DED3804(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_20DED388C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_20DED38E8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_20DED38E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20DED39B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20DEBA2EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20DED39B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20DED3AC0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20DF481A4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_20DED3AC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_20DED3B0C(a1, a2);
  sub_20DED3C3C(&unk_282526AD0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20DED3B0C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20DED3D28(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20DF481A4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20DF47D94();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20DED3D28(v10, 0);
        result = sub_20DF48134();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20DED3C3C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_20DED3D9C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20DED3D28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA78, &qword_20DF4A090);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20DED3D9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA78, &qword_20DF4A090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_20DED3E90(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_20DED3EA0(void *__src, uint64_t a2, void *__dst)
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

void sub_20DED3EC0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_20DED3F34@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_20DED3F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v57 = a1;
  v58 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E8, &unk_20DF49F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v55 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = v48 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v49 = v48 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v59 = v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v48 - v21;
  v48[0] = v48 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v48 - v24;
  v48[1] = v48 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v48 - v27;
  v48[2] = v48 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v48 - v29;
  v48[3] = v48 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C970, &qword_20DF49A08);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v48 - v33;
  v35 = sub_20DF47A24();
  v36 = sub_20DF47934();
  v51 = v37;
  v52 = v36;
  v38 = sub_20DF47714();
  (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
  v39 = sub_20DF474E4();
  v40 = *(*(v39 - 8) + 56);
  v40(v30, 1, 1, v39);
  v40(v28, 1, 1, v39);
  v40(v25, 1, 1, v39);
  v40(v22, 1, 1, v39);
  v40(v19, 1, 1, v39);
  v40(v59, 1, 1, v39);
  v40(v49, 1, 1, v39);
  v40(v50, 1, 1, v39);
  v40(v55, 1, 1, v39);
  v41 = sub_20DF47B84();
  (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
  v42 = objc_allocWithZone(v35);
  v60 = 1;
  v43 = sub_20DF479A4();
  type metadata accessor for EnergySite();
  v44 = swift_allocObject();
  v44[3] = [objc_opt_self() defaultCenter];
  v44[4] = 0;
  v44[5] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v44[7] = 0;
  swift_unknownObjectWeakInit();
  v44[2] = v43;
  v45 = v44[5];
  v46 = v43;
  [v45 setMaxConcurrentOperationCount_];
  sub_20DEC70E0();

  return v44;
}

uint64_t sub_20DED44DC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_20DF47BD4();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DED459C, 0, 0);
}

uint64_t sub_20DED459C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    v5 = *(MEMORY[0x277D85A40] + 4);
    v6 = swift_task_alloc();
    v0[12] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA20, &qword_20DF49F60);
    *v6 = v0;
    v6[1] = sub_20DED483C;

    return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0x7328657469736B65, 0xEF293A4449657469, sub_20DED8AF4, v4, v7);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = __swift_project_value_buffer(v10, qword_281122F18);
    swift_beginAccess();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_20DF47BB4();
    v13 = sub_20DF47FF4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DEAF000, v12, v13, "Failed to get site. Site ID is empty.", v14, 2u);
      MEMORY[0x20F329700](v14, -1, -1);
    }

    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];

    (*(v16 + 8))(v15, v17);
    sub_20DED4D6C();
    swift_allocError();
    *v18 = 28;
    swift_willThrow();
    v19 = v0[10];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_20DED483C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_20DEC0448;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_20DED4958;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DED4958()
{
  v1 = v0[10];
  v2 = v0[5];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_20DED49C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DED49E4, 0, 0);
}

uint64_t sub_20DED49E4()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_20DED4AC8;
    v5 = v0[2];
    v4 = v0[3];

    return sub_20DED44DC(v5, v4);
  }

  else
  {

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_20DED4AC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v8 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v6 = sub_20DED4D00;
  }

  else
  {
    v6 = sub_20DED4BFC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DED4BFC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    type metadata accessor for EnergySite();
    v2 = swift_allocObject();
    v2[3] = [objc_opt_self() defaultCenter];
    v2[4] = 0;
    v2[5] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    v2[7] = 0;
    swift_unknownObjectWeakInit();
    v2[2] = v1;
    v3 = v2[5];
    v4 = v1;
    [v3 setMaxConcurrentOperationCount_];
    sub_20DEC70E0();
  }

  else
  {
    v2 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_20DED4D00()
{
  v1 = *(v0 + 8);

  return v1(0);
}

unint64_t sub_20DED4D6C()
{
  result = qword_281122960;
  if (!qword_281122960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281122960);
  }

  return result;
}

uint64_t sub_20DED5008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_20DF47BD4();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DED50CC, 0, 0);
}

uint64_t sub_20DED50CC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v0[12] = sub_20DED3F64(v4, v3, v1, v2);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_20DED5194;

  return sub_20DEC7E24();
}

uint64_t sub_20DED5194()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DED52D4, 0, 0);
  }

  else
  {
    v4 = v3[11];
    v5 = v3[12];

    v6 = v3[1];

    return v6(v5);
  }
}

uint64_t sub_20DED52D4()
{
  v24 = v0;
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_20DF47BB4();
  v7 = sub_20DF47FF4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v13 = v0[9];
  v12 = v0[10];
  if (v8)
  {
    v22 = v0[9];
    v15 = v0[5];
    v14 = v0[6];
    v16 = swift_slowAlloc();
    v21 = v10;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_20DED38E8(v15, v14, &v23);
    _os_log_impl(&dword_20DEAF000, v6, v7, "Failed to register EnergySite(%s)", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x20F329700](v17, -1, -1);
    MEMORY[0x20F329700](v16, -1, -1);

    (*(v12 + 8))(v21, v22);
  }

  else
  {

    (*(v12 + 8))(v10, v13);
  }

  v18 = v0[11];

  v19 = v0[1];

  return v19(0);
}

unint64_t sub_20DED5560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA60, &qword_20DF49FC8);
    v3 = sub_20DF48244();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_20DEEFA18(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    v4 = MEMORY[0x277D84F90];
    v5 = sub_20DED5560(MEMORY[0x277D84F90]);
    v6 = sub_20DED5560(v4);

    v8 = sub_20DF304B8(v7);

    v10 = sub_20DF30810(v9, v8);
    v11 = 0;
    v12 = v10 + 56;
    v52 = v3;
    v53 = v10;
    v13 = 1 << *(v10 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v10 + 56);
    v16 = (v13 + 63) >> 6;
    v51 = a2;
    while (v15)
    {
      v17 = v11;
LABEL_12:
      v18 = *(*(v53 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v15)))));
      v19 = 0.0;
      v20 = 0.0;
      if (*(a2 + 16))
      {
        v21 = sub_20DEEFA18(v18);
        if (v22)
        {
          v20 = *(*(a2 + 56) + 8 * v21);
        }
      }

      if (*(v3 + 16))
      {
        v23 = sub_20DEEFA18(v18);
        if (v24)
        {
          v19 = *(*(v3 + 56) + 8 * v23);
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v5;
      v26 = sub_20DEEFA18(v18);
      v28 = *(v5 + 16);
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_41;
      }

      v32 = v27;
      if (*(v5 + 24) >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = v26;
          sub_20DEF0B48();
          v26 = v48;
        }
      }

      else
      {
        sub_20DEEFEF0(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_20DEEFA18(v18);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_45;
        }
      }

      v34 = v20 - v19;
      v5 = v54;
      if (v32)
      {
        *(v54[7] + 8 * v26) = v34;
      }

      else
      {
        v54[(v26 >> 6) + 8] |= 1 << v26;
        *(v54[6] + 8 * v26) = v18;
        *(v54[7] + 8 * v26) = v34;
        v35 = v54[2];
        v30 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v30)
        {
          goto LABEL_43;
        }

        v54[2] = v36;
      }

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v6;
      v38 = sub_20DEEFA18(v18);
      v40 = *(v6 + 16);
      v41 = (v39 & 1) == 0;
      v30 = __OFADD__(v40, v41);
      v42 = v40 + v41;
      if (v30)
      {
        goto LABEL_42;
      }

      v43 = v39;
      if (*(v6 + 24) >= v42)
      {
        if ((v37 & 1) == 0)
        {
          v49 = v38;
          sub_20DEF0B48();
          v38 = v49;
        }
      }

      else
      {
        sub_20DEEFEF0(v42, v37);
        v38 = sub_20DEEFA18(v18);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_45;
        }
      }

      v3 = v52;
      v15 &= v15 - 1;
      v45 = v20 + v19;
      v6 = v55;
      if (v43)
      {
        *(v55[7] + 8 * v38) = v45;
      }

      else
      {
        v55[(v38 >> 6) + 8] |= 1 << v38;
        *(v55[6] + 8 * v38) = v18;
        *(v55[7] + 8 * v38) = v45;
        v46 = v55[2];
        v30 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v30)
        {
          goto LABEL_44;
        }

        v55[2] = v47;
      }

      v11 = v17;
      a2 = v51;
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {

        return v5;
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_20DF48424();
    __break(1u);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    return a2;
  }

  return result;
}

uint64_t sub_20DED59C0(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_20DF47E94();
      *(v4 + 16) = a2;
      bzero((v4 + 32), 8 * a2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
LABEL_13:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (v9 << 9) | (8 * v11);
      v13 = *(*(v3 + 48) + v12);
      if (v13 < a2)
      {
        if (v13 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        *(v4 + 32 + 8 * v13) = *(*(v3 + 56) + v12);
      }
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return v4;
      }

      v7 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20DED5B14(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20DED5B4C()
{
  result = qword_27C84C960;
  if (!qword_27C84C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C960);
  }

  return result;
}

uint64_t sub_20DED5BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20DED5CC4()
{
  result = qword_27C84C9A8;
  if (!qword_27C84C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C9A8);
  }

  return result;
}

unint64_t sub_20DED5D1C()
{
  result = qword_27C84C9B0;
  if (!qword_27C84C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C9B0);
  }

  return result;
}

uint64_t dispatch thunk of EnergySite.updateLocation(_:)(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t dispatch thunk of EnergySite.updateTimezone(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 232);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DEDA9C0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of EnergySite.updateState(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 240);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DEDA9C0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of EnergySite.updateRatePlanInclusionInGuidance(enable:)(uint64_t a1)
{
  v4 = *(*v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t dispatch thunk of EnergySite.updateFields(from:)(uint64_t a1)
{
  v4 = *(*v1 + 256);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t dispatch thunk of EnergySite.updateSubscription(utilityID:subscriptionID:accessToken:refreshToken:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(*v21 + 264);
  v27 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v22 + 16) = v25;
  *v25 = v22;
  v25[1] = sub_20DEDA9C0;

  return v27(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t dispatch thunk of EnergySite.createUtilitySubscription(utilityID:serviceLocationID:accessToken:refreshToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 272);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = sub_20DEDA9C4;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of EnergySite.createUtilitySubscription(utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = *(*v11 + 280);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v12 + 16) = v20;
  *v20 = v12;
  v20[1] = sub_20DEDA9C4;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t dispatch thunk of EnergySite.createUtilitySubscription(utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:address:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(*v13 + 288);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v14 + 16) = v20;
  *v20 = v14;
  v20[1] = sub_20DEDA9C4;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of EnergySite.revokeUtilitySubscription()()
{
  v2 = *(*v0 + 296);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of EnergySite.renewUtilityAccessToken()()
{
  v2 = *(*v0 + 304);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C0;

  return v6();
}

uint64_t dispatch thunk of EnergySite.delete()()
{
  v2 = *(*v0 + 344);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C0;

  return v6();
}

uint64_t dispatch thunk of EnergySite.historicalEnergyUsage(interval:start:bulk:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 352);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20DEBA16C;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EnergySite.historicalEnergyUsage(interval:start:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20DEDA9C0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of EnergySite.intervalReading(interval:start:end:timeZoneIdentifier:flowDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 368);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = sub_20DED71AC;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_20DED71AC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of EnergySite.isDataAvailable()()
{
  v2 = *(*v0 + 376);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of EnergySite.currentRatePlans()(uint64_t a1)
{
  v4 = *(*v1 + 384);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t dispatch thunk of EnergySite.currentUtilityPeakPeriods()()
{
  v2 = *(*v0 + 392);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of EnergySite.currentUtilityPeakPeriodsWithInfo()(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t dispatch thunk of EnergySite.isTOU()()
{
  v2 = *(*v0 + 408);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of EnergySite.isTiered()()
{
  v2 = *(*v0 + 416);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of EnergySite.isFlat()()
{
  v2 = *(*v0 + 424);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of EnergySite.isFixed()()
{
  v2 = *(*v0 + 432);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of EnergySite.isUnsupported()()
{
  v2 = *(*v0 + 440);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DED71AC;

  return v6();
}

uint64_t dispatch thunk of EnergySite.refreshCurrentUtilityPeakPeriods(start:)(uint64_t a1)
{
  v4 = *(*v1 + 448);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for Logging(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Logging(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20DED7F58()
{
  sub_20DF474E4();
  if (v0 <= 0x3F)
  {
    sub_20DED8058();
    if (v1 <= 0x3F)
    {
      sub_20DED8200(319, &qword_281122588, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20DED8058()
{
  if (!qword_281122598)
  {
    v0 = sub_20DF47C74();
    if (!v1)
    {
      atomic_store(v0, &qword_281122598);
    }
  }
}

void sub_20DED80E0()
{
  sub_20DF474E4();
  if (v0 <= 0x3F)
  {
    sub_20DED81A8();
    if (v1 <= 0x3F)
    {
      sub_20DED8200(319, &qword_27C84C9C8, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20DED81A8()
{
  if (!qword_281122590)
  {
    type metadata accessor for EnergySite.EnergyUsage(255);
    v0 = sub_20DF47EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_281122590);
    }
  }
}

void sub_20DED8200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839F8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20DED8254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9D0, &qword_20DF49EC8);
    v3 = sub_20DF48244();
    v4 = a1 + 32;

    while (1)
    {
      sub_20DED8804(v4, v13, &qword_27C84C9D8, &unk_20DF49ED0);
      result = sub_20DEEF9D4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_20DED8390(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_20DED8390(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_20DED83E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEC8354(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20DED8514(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return sub_20DED3614(a1, v5);
}

unint64_t sub_20DED8600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9F0, &qword_20DF4AD80);
    v3 = sub_20DF48244();
    v4 = a1 + 32;

    while (1)
    {
      sub_20DED8804(v4, &v13, &qword_27C84C9F8, &unk_20DF49F30);
      v5 = v13;
      v6 = v14;
      result = sub_20DEEFAE0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20DED8390(&v15, (v3[7] + 32 * result));
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

uint64_t sub_20DED8730(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DED8804(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20DED886C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20DF474E4() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20DEDA9C0;

  return sub_20DED2180(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

unint64_t sub_20DED8A00()
{
  result = qword_281122980;
  if (!qword_281122980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281122980);
  }

  return result;
}

uint64_t sub_20DED8A4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20DED8AA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20DED8AFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA28, &qword_20DF49F68) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEC8D20(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DED8CE8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DECD84C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20DED8EC0(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA48, &qword_20DF49FA8) - 8);
  v28 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_20DF474E4() - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + *(v6 + 80) + ((*(v6 + 80) + v5 + 16) & ~*(v6 + 80))) & ~*(v6 + 80);
  v9 = *(sub_20DF47604() - 8);
  v25 = v1[3];
  v26 = v1[2];
  v10 = (*(v9 + 64) + ((v7 + *(v9 + 80) + v8) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = v1[5];
  v24 = v1[4];
  v21 = *(v1 + v3 + 8);
  v22 = *(v1 + v3);
  v11 = v1 + v4;
  v12 = *(v1 + v4);
  v13 = *(v11 + 1);
  v14 = v1 + v5;
  v16 = *(v1 + v5);
  v15 = *(v14 + 1);
  v18 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v19 = swift_task_alloc();
  *(v27 + 16) = v19;
  *v19 = v27;
  v19[1] = sub_20DEDA9C0;

  return sub_20DECC974(a1, v26, v25, v24, v23, v1 + v28, v22, v21);
}

uint64_t sub_20DED9130(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA48, &qword_20DF49FA8) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_20DECD01C(a1, v4, v5);
}

uint64_t sub_20DED91B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DED91F8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEC9408(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20DED9340(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEC68A8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_20DED9558(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEC6054(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20DED969C(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v30 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_20DF474E4() - 8);
  v8 = (*(v7 + 64) + ((*(v7 + 80) + v6 + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v1 + v3);
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v1 + 16);
  v26 = *(v1 + 24);
  v24 = *(v1 + v4 + 8);
  v25 = *(v1 + v4);
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + v5 + 8);
  v23 = *(v1 + v5);
  v11 = v1 + v6;
  v12 = *(v1 + v6);
  v13 = *(v11 + 8);
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = *(v1 + v9);
  v17 = *(v1 + v9 + 8);
  v19 = *(v1 + v10);
  v18 = *(v1 + v10 + 8);
  v20 = swift_task_alloc();
  *(v29 + 16) = v20;
  *v20 = v29;
  v20[1] = sub_20DEDA9C0;

  return sub_20DEC53FC(a1, v27, v26, v1 + v30, v28, v25, v24, v23);
}

uint64_t sub_20DED98F8(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v28 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v5 = (*(v4 + 64) + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_20DF474E4() - 8);
  v10 = (*(v9 + 64) + ((*(v9 + 80) + v8 + 16) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v1 + 24);
  v27 = *(v1 + 16);
  v25 = *(v1 + v5);
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v1 + v6 + 8);
  v24 = *(v1 + v6);
  v12 = *(v1 + v7 + 8);
  v22 = *(v1 + v7);
  v13 = v1 + v8;
  v14 = *(v1 + v8);
  v15 = *(v13 + 8);
  v16 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v18 = *(v1 + v11);
  v19 = *(v1 + v11 + 8);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_20DEDA9C0;

  return sub_20DEC40AC(a1, v27, v26, v1 + v28, v25, v24, v23, v22);
}

uint64_t sub_20DED9B30(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + 24);
  v23 = *(v1 + 16);
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v1 + v6);
  v11 = *(v1 + v7 + 8);
  v20 = *(v1 + v7);
  v13 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);
  v16 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_20DEDA9C0;

  return sub_20DEC2E00(a1, v23, v22, v1 + v5, v21, v20, v11, v13);
}

uint64_t sub_20DED9CE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20DED9D50(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v43 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10) - 8);
  v12 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(v1 + 16);
  v40 = *(v1 + 24);
  v39 = *(v1 + v3);
  v37 = *(v1 + v4 + 8);
  v38 = *(v1 + v4);
  v35 = *(v1 + v5 + 8);
  v36 = *(v1 + v5);
  v33 = *(v1 + v6 + 8);
  v34 = *(v1 + v6);
  v31 = *(v1 + v7 + 8);
  v32 = *(v1 + v7);
  v29 = *(v1 + v8 + 8);
  v30 = *(v1 + v8);
  v27 = *(v1 + v9);
  v25 = *(v1 + v9 + 8);
  v13 = v1 + v10;
  v15 = *(v1 + v10);
  v14 = *(v13 + 8);
  v16 = *(v1 + v26);
  v17 = *(v1 + v26 + 8);
  v18 = *(v1 + v28);
  v19 = *(v1 + v28 + 8);
  v20 = *(v1 + v12);
  v21 = *(v1 + v12 + 8);
  v22 = v1 + ((*(v11 + 80) + v12 + 16) & ~*(v11 + 80));
  v23 = swift_task_alloc();
  *(v42 + 16) = v23;
  *v23 = v42;
  v23[1] = sub_20DEDA9C0;

  return sub_20DEC1A08(a1, v41, v40, v1 + v43, v39, v38, v37, v36);
}

uint64_t sub_20DEDA038(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEC06CC(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_20DEDA198(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEBF858(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DEDA2F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_20DEBA16C;

  return sub_20DEBE858(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t objectdestroy_269Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_20DEDA55C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_20DEDA9C0;

  return sub_20DEBD9C4(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_20DEDA6C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_20DEDA754(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEBCA28(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t objectdestroy_130Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_20DEDA9EC(uint64_t a1)
{
  v2 = sub_20DF47404();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_20DF473D4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_20DEDAAE8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_20DEDAB24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20DEDAB84(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_20DEDAC18;
}

void sub_20DEDAC18(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_20DEDAC9C()
{
  v1 = sub_20DF47BD4();
  v0[14] = v1;
  v2 = *(v1 - 8);
  v0[15] = v2;
  v3 = *(v2 + 64) + 15;
  v0[16] = swift_task_alloc();
  v0[11] = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA80, &qword_20DF4A0B8);
  *v5 = v0;
  v5[1] = sub_20DEDADF4;

  return MEMORY[0x2822008A0](v0 + 12, 0, 0, 0x6953796772656E65, 0xEF29287344496574, sub_20DEDC0F0, 0, v6);
}

uint64_t sub_20DEDADF4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_20DEDB74C;
  }

  else
  {
    v3 = sub_20DEDAF08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_20DEDAF08()
{
  v1 = 0;
  v2 = *(v0 + 96);
  *(v0 + 152) = v2;
  v3 = *(v2 + 32);
  *(v0 + 216) = v3;
  v4 = 1 << v3;
  v5 = *(v2 + 56);
  v6 = v4 < 64;
  v7 = -1 << v4;
  if (v6)
  {
    v8 = ~v7;
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  *(v0 + 160) = MEMORY[0x277D84F90];
  if (v9)
  {
    while (1)
    {
      v10 = *(v0 + 152);
LABEL_10:
      *(v0 + 168) = v9;
      *(v0 + 176) = v1;
      v12 = (*(v10 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v9)))));
      v13 = *v12;
      v14 = v12[1];
      *(v0 + 184) = v14;
      v15 = (v14 & 0x2000000000000000) != 0 ? HIBYTE(v14) & 0xF : v13 & 0xFFFFFFFFFFFFLL;

      if (v15)
      {
        break;
      }

      v1 = *(v0 + 176);
      v9 = (*(v0 + 168) - 1) & *(v0 + 168);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v20 = swift_task_alloc();
    *(v0 + 192) = v20;
    *v20 = v0;
    v20[1] = sub_20DEDB0D0;

    sub_20DED44DC(v13, v14);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v11 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v0 + 152);
      v9 = *(v10 + 8 * v11 + 56);
      ++v1;
      if (v9)
      {
        v1 = v11;
        goto LABEL_10;
      }
    }

    v16 = *(v0 + 152);

    v17 = *(v0 + 160);
    v18 = *(v0 + 128);

    v19 = *(v0 + 8);

    v19(v17);
  }
}

uint64_t sub_20DEDB0D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  v7 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v8 = sub_20DEDB5BC;
  }

  else
  {
    *(v4 + 208) = a1;
    v8 = sub_20DEDB21C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20DEDB21C()
{
  v1 = v0[26];
  if (!v1)
  {
    goto LABEL_19;
  }

  type metadata accessor for EnergySite();
  v2 = swift_allocObject();
  v2[3] = [objc_opt_self() defaultCenter];
  v2[4] = 0;
  v2[5] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v2[7] = 0;
  swift_unknownObjectWeakInit();
  v2[2] = v1;
  v3 = v2[5];
  v4 = v1;
  [v3 setMaxConcurrentOperationCount_];
  sub_20DF477C4();
  v5 = sub_20DF47D04();

  v6 = v2[3];
  v7 = v2[5];
  v0[6] = sub_20DED87E4;
  v0[7] = v2;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DEDA9EC;
  v0[5] = &block_descriptor_1;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];
  v10 = v5;
  v11 = v7;

  v12 = [v6 addObserverForName:v10 object:0 queue:v11 usingBlock:v8];

  _Block_release(v8);
  v13 = v2[4];
  v2[4] = v12;
  swift_unknownObjectRelease();

  MEMORY[0x20F328A20](v14);
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_12;
  }

LABEL_3:
  sub_20DF47EA4();

  v15 = v0[22];
  v16 = (v0[21] - 1) & v0[21];
  v0[20] = v0[11];
  if (!v16)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v18 = v0[19];
LABEL_14:
    v0[21] = v16;
    v0[22] = v15;
    v23 = (*(v18 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v16)))));
    v24 = *v23;
    v25 = v23[1];
    v0[23] = v25;
    v26 = (v25 & 0x2000000000000000) != 0 ? HIBYTE(v25) & 0xF : v24 & 0xFFFFFFFFFFFFLL;

    if (v26)
    {
      break;
    }

LABEL_19:
    v15 = v0[22];
    v16 = (v0[21] - 1) & v0[21];
    if (!v16)
    {
LABEL_4:
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v18 = v0[19];
        if (v17 >= (((1 << *(v0 + 216)) + 63) >> 6))
        {

          v19 = v0[20];
          v20 = v0[16];

          v21 = v0[1];

          return v21(v19);
        }

        v16 = *(v18 + 8 * v17 + 56);
        ++v15;
        if (v16)
        {
          v15 = v17;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_12:
      sub_20DF47E84();
      goto LABEL_3;
    }
  }

  v27 = swift_task_alloc();
  v0[24] = v27;
  *v27 = v0;
  v27[1] = sub_20DEDB0D0;

  return sub_20DED44DC(v24, v25);
}

void sub_20DEDB5BC()
{
  while (1)
  {
    v1 = *(v0 + 176);
    v2 = (*(v0 + 168) - 1) & *(v0 + 168);
    if (!v2)
    {
      break;
    }

    v3 = *(v0 + 152);
LABEL_8:
    *(v0 + 168) = v2;
    *(v0 + 176) = v1;
    v5 = (*(v3 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
    v6 = *v5;
    v7 = v5[1];
    *(v0 + 184) = v7;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v13[1] = sub_20DEDB0D0;

      sub_20DED44DC(v6, v7);
      return;
    }
  }

  while (1)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v4 >= (((1 << *(v0 + 216)) + 63) >> 6))
    {
      break;
    }

    v3 = *(v0 + 152);
    v2 = *(v3 + 8 * v4 + 56);
    ++v1;
    if (v2)
    {
      v1 = v4;
      goto LABEL_8;
    }
  }

  v9 = *(v0 + 152);

  v10 = *(v0 + 160);
  v11 = *(v0 + 128);

  v12 = *(v0 + 8);

  v12(v10);
}

uint64_t sub_20DEDB74C()
{
  v26 = v0;
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FF4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];
  if (v9)
  {
    v24 = v0[16];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0x7365746973, 0xE500000000000000, &v25);
    *(v14 + 12) = 2080;
    v0[13] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v25);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v7, v8, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);

    (*(v11 + 8))(v24, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v20 = v0[16];

  v21 = v0[1];
  v22 = MEMORY[0x277D84F90];

  return v21(v22);
}

uint64_t static EnergyKitManager.energySiteIDs()()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA80, &qword_20DF4A0B8);
  *v2 = v0;
  v2[1] = sub_20DEDBAB4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x6953796772656E65, 0xEF29287344496574, sub_20DEDC0F0, 0, v3);
}

uint64_t sub_20DEDBAB4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_20DEC93F0;
  }

  else
  {
    v3 = sub_20DEDBBC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void *EnergyKitManager.__allocating_init(delegate:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  v5[4] = [objc_opt_self() defaultCenter];
  swift_beginAccess();
  v5[3] = a2;
  swift_unknownObjectWeakAssign();
  v5[5] = a3;
  v6 = a3;
  sub_20DEDBD58();
  swift_unknownObjectRelease();

  return v5;
}

void *EnergyKitManager.init(delegate:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = [objc_opt_self() defaultCenter];
  swift_beginAccess();
  v3[3] = a2;
  swift_unknownObjectWeakAssign();
  v3[5] = a3;
  v6 = a3;
  sub_20DEDBD58();
  swift_unknownObjectRelease();

  return v3;
}

void sub_20DEDBD58()
{
  sub_20DF477C4();
  v1 = sub_20DF47D04();

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v7[4] = sub_20DEDCE1C;
  v8 = v0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20DEDA9EC;
  v7[3] = &block_descriptor_11;
  v4 = _Block_copy(v7);
  v5 = v1;

  v6 = [v2 addObserverForName:v5 object:0 queue:v3 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

uint64_t sub_20DEDBE6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DF473F4();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  sub_20DF47774();
  sub_20DF48104();
  if (!*(v4 + 16) || (v5 = sub_20DEEF9D4(&v20), (v6 & 1) == 0))
  {

    sub_20DED8790(&v20);
LABEL_10:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_11;
  }

  sub_20DEBA2EC(*(v4 + 56) + 32 * v5, &v22);
  sub_20DED8790(&v20);

  if (!*(&v23 + 1))
  {
LABEL_11:
    sub_20DEDCE24(&v22);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v7 = v20;
    v8 = v21;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v7, v8, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }

LABEL_12:
  v11 = sub_20DF473F4();
  if (!v11)
  {
LABEL_21:
    v22 = 0u;
    v23 = 0u;
    return sub_20DEDCE24(&v22);
  }

  v12 = v11;
  sub_20DF47784();
  sub_20DF48104();
  if (!*(v12 + 16) || (v13 = sub_20DEEF9D4(&v20), (v14 & 1) == 0))
  {

    sub_20DED8790(&v20);
    goto LABEL_21;
  }

  sub_20DEBA2EC(*(v12 + 56) + 32 * v13, &v22);
  sub_20DED8790(&v20);

  if (!*(&v23 + 1))
  {
    return sub_20DEDCE24(&v22);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v16 = v20;
    v17 = v21;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(a2 + 24);
      v19 = swift_getObjectType();
      (*(v18 + 16))(v16, v17, v19, v18);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20DEDC0F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_20DF47F04();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 16))(v6, a1, v2);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v6, v2);
  sub_20DEBB534(0, 0, v10, &unk_20DF4A190, v13);
}

uint64_t sub_20DEDC2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178);
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v4[24] = *(v6 + 64);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEDC3A0, 0, 0);
}

uint64_t sub_20DEDC3A0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[26] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DEDCF88, v7);
  v0[27] = v8;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEDC594;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA90, &qword_20DF4A198);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEDCAB4;
  v0[13] = &block_descriptor_18;
  v0[14] = v9;
  [v8 getAllSiteIDsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEDC594()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_20DEDC744;
  }

  else
  {
    v3 = sub_20DEDC6A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEDC6A4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[18];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  v0[20] = v5;
  sub_20DF47EE4();

  v6 = v0[25];

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DEDC744()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[21];
  v5 = v0[22];
  swift_willThrow();

  swift_unknownObjectRelease();
  v0[19] = v2;
  sub_20DF47ED4();
  v6 = v0[25];

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DEDC7F0(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0x6953796772656E65, 0xEF29287344496574, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178);
  return sub_20DF47ED4();
}

uint64_t sub_20DEDCAB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_20DF47F94();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t EnergyKitManager.deinit()
{
  sub_20DED5C98(v0 + 16);

  return v0;
}

uint64_t EnergyKitManager.__deallocating_deinit()
{
  sub_20DED5C98(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of EnergyKitManager.sites.getter()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEBBAA8;

  return v6();
}

uint64_t sub_20DEDCE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA00, &qword_20DF4A170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DEDCE8C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEBA16C;

  return sub_20DEDC2CC(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DEDCF88(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20DEDC7F0(a1, v4);
}

uint64_t EnergyKitError.errorDescription.getter()
{
  v3 = *v0;
  sub_20DEDD078(&v4);
  v1 = v4;

  sub_20DEDD2C8(&v4);
  return v1;
}

void sub_20DEDD078(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = 0uLL;
  if (*v1 <= 3u)
  {
    if (*v1 > 1u)
    {
      if (v2 == 2)
      {
        v4 = 0;
        v5 = 0;
        v2 = 0xD000000000000028;
        v6 = 0x800000020DF4F080;
        v7 = 0x800000020DF4F0C0;
        v3 = xmmword_20DF4A1A0;
        v8 = 0xD000000000000036;
      }

      else
      {
        v2 = 0xD000000000000028;
        v6 = 0x800000020DF4EFF0;
        v7 = 0x800000020DF4F020;
        v5 = 0x800000020DF4F050;
        v8 = 0xD000000000000020;
        v4 = 0xD000000000000022;
      }
    }

    else if (*v1)
    {
      v2 = 0;
      v7 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0x800000020DF4F0F0;
      v8 = 0xD000000000000039;
    }

    else
    {
      v6 = 0xED0000726F727245;
      v8 = 0x206E776F6E6B6E55;
      v7 = *v1;
      v4 = v7;
      v5 = v7;
    }
  }

  else if (*v1 <= 5u)
  {
    if (v2 == 4)
    {
      v2 = 0;
      v7 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0x800000020DF4EFB0;
      v8 = 0xD000000000000038;
    }

    else
    {
      v2 = 0;
      v7 = 0;
      v6 = 0x800000020DF4EE80;
      v5 = 0x800000020DF4EEE0;
      v8 = 0xD00000000000005DLL;
      v4 = 0x10000000000000C7;
    }
  }

  else if (v2 == 6)
  {
    v2 = 0;
    v7 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0x800000020DF4EE60;
    v8 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    if (v2 == 7)
    {
      v6 = 0x800000020DF4EE10;
      v7 = 0x800000020DF4EE40;
      v2 = 0xD00000000000001CLL;
      v8 = 0xD000000000000021;
    }

    else
    {
      v8 = 0xD000000000000028;
      v6 = 0x800000020DF4ED90;
      v7 = 0x800000020DF4EDC0;
      v2 = 0xD000000000000045;
    }
  }

  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = v2;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
}

uint64_t EnergyKitError.failureReason.getter()
{
  v3 = *v0;
  sub_20DEDD078(v4);
  v1 = v5;

  sub_20DEDD2C8(v4);
  return v1;
}

uint64_t EnergyKitError.helpAnchor.getter()
{
  v3 = *v0;
  sub_20DEDD078(v4);
  v1 = v5;

  sub_20DEDD2C8(v4);
  return v1;
}

uint64_t EnergyKitError.recoverySuggestion.getter()
{
  v3 = *v0;
  sub_20DEDD078(v4);
  v1 = v5;

  sub_20DEDD2C8(v4);
  return v1;
}

uint64_t EnergyKitError.hashValue.getter()
{
  v1 = *v0;
  sub_20DF48494();
  MEMORY[0x20F329080](v1);
  return sub_20DF484D4();
}

unint64_t sub_20DEDD480()
{
  result = qword_27C84CA98;
  if (!qword_27C84CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CA98);
  }

  return result;
}

unint64_t sub_20DEDD4D8()
{
  result = qword_27C84CAA0;
  if (!qword_27C84CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CAA0);
  }

  return result;
}

uint64_t sub_20DEDD52C()
{
  v3 = *v0;
  sub_20DEDD078(&v4);
  v1 = v4;

  sub_20DEDD2C8(&v4);
  return v1;
}

uint64_t sub_20DEDD580()
{
  v3 = *v0;
  sub_20DEDD078(v4);
  v1 = v5;

  sub_20DEDD2C8(v4);
  return v1;
}

uint64_t sub_20DEDD5D4()
{
  v3 = *v0;
  sub_20DEDD078(v4);
  v1 = v5;

  sub_20DEDD2C8(v4);
  return v1;
}

uint64_t sub_20DEDD628()
{
  v3 = *v0;
  sub_20DEDD078(v4);
  v1 = v5;

  sub_20DEDD2C8(v4);
  return v1;
}

uint64_t getEnumTagSinglePayload for EnergyKitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnergyKitError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20DEDD7E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DEDD828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t defaultLogger(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (*a1)
    {
      if (qword_27C84C730 != -1)
      {
        swift_once();
      }

      v4 = sub_20DF47BD4();
      v5 = v4;
      v6 = qword_27C851F60;
    }

    else
    {
      if (qword_27C84C728 != -1)
      {
        swift_once();
      }

      v4 = sub_20DF47BD4();
      v5 = v4;
      v6 = qword_27C851F48;
    }
  }

  else if (v3 == 2)
  {
    if (qword_2811225A8 != -1)
    {
      swift_once();
    }

    v4 = sub_20DF47BD4();
    v5 = v4;
    v6 = qword_281122F00;
  }

  else if (v3 == 3)
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v4 = sub_20DF47BD4();
    v5 = v4;
    v6 = qword_281122F18;
  }

  else
  {
    if (qword_27C84C738 != -1)
    {
      swift_once();
    }

    v4 = sub_20DF47BD4();
    v5 = v4;
    v6 = qword_27C851F78;
  }

  v7 = __swift_project_value_buffer(v4, v6);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a2, v7, v5);
}

uint64_t sub_20DEDDA88()
{
  sub_20DEDE4B4();
  result = sub_20DF48054();
  qword_27C851F40 = result;
  return result;
}

uint64_t sub_20DEDDB94()
{
  v0 = sub_20DF47BA4();
  __swift_allocate_value_buffer(v0, qword_27C851F90);
  __swift_project_value_buffer(v0, qword_27C851F90);
  return sub_20DF47B94();
}

uint64_t Logging.description.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6D656144;
  v3 = 0x7254796772656E45;
  v4 = 0x7246746E65696C43;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E41;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x646572616853;
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

EnergyKitInternal::Logging_optional __swiftcall Logging.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20DEDDCE0()
{
  v1 = *v0;
  v2 = 0x6E6F6D656144;
  v3 = 0x7254796772656E45;
  v4 = 0x7246746E65696C43;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E41;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x646572616853;
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

void setDefaultLog(_:)(void *a1)
{
  if (qword_27C84C720 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v3 = qword_27C851F40;
  qword_27C851F40 = a1;
  v1 = a1;
}

uint64_t sub_20DEDDEC8(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_20DF47BD4();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  (*(*(v5 - 8) + 24))(v6, a1, v5);
  return swift_endAccess();
}

id defaultLog()()
{
  if (qword_27C84C720 != -1)
  {
    swift_once();
  }

  v1 = qword_27C851F40;

  return v1;
}

Swift::Void __swiftcall setProcessName(_:)(Swift::String a1)
{
  xmmword_27C84CAA8 = a1;
}

Swift::String_optional __swiftcall processName()()
{
  v0 = xmmword_27C84CAA8;

  v2 = (v0 >> 64);
  v1 = v0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t ekSignposter()@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C84C740 != -1)
  {
    swift_once();
  }

  v2 = sub_20DF47BA4();
  v3 = __swift_project_value_buffer(v2, qword_27C851F90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_20DEDE128(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20DF47BD4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_20DF47BC4();
}

Swift::Void __swiftcall logMilestone(tag:description:)(Swift::String tag, Swift::String description)
{
  object = description._object;
  countAndFlagsBits = description._countAndFlagsBits;
  v4 = tag._object;
  v5 = tag._countAndFlagsBits;
  v6 = sub_20DF47BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C748 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_27C851FA8);
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_20DF47BB4();
  v13 = sub_20DF47FE4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v17 = countAndFlagsBits;
    v15 = v14;
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_20DED38E8(v5, v4, &v18);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20DED38E8(v17, object, &v18);
    _os_log_impl(&dword_20DEAF000, v12, v13, "(%s) %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v16, -1, -1);
    MEMORY[0x20F329700](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
}

unint64_t sub_20DEDE3EC()
{
  result = qword_27C84CAB8;
  if (!qword_27C84CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CAB8);
  }

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

unint64_t sub_20DEDE4B4()
{
  result = qword_27C84CAC0;
  if (!qword_27C84CAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C84CAC0);
  }

  return result;
}

uint64_t GuidanceValue.init(interval:rating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_20DF473B4();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for GuidanceValue();
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t type metadata accessor for GuidanceValue()
{
  result = qword_27C84CAE8;
  if (!qword_27C84CAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GuidanceValue.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF473B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL static GuidanceValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_20DF47394() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GuidanceValue();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_20DEDE6BC()
{
  if (*v0)
  {
    result = 0x676E69746172;
  }

  else
  {
    result = 0x6C61767265746E69;
  }

  *v0;
  return result;
}

uint64_t sub_20DEDE6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_20DF483D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20DF483D4();

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

uint64_t sub_20DEDE7D8(uint64_t a1)
{
  v2 = sub_20DEDEA08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DEDE814(uint64_t a1)
{
  v2 = sub_20DEDEA08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GuidanceValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CAC8, &qword_20DF4A450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEDEA08();
  sub_20DF484F4();
  v13[15] = 0;
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C830, MEMORY[0x277CC88A8]);
  sub_20DF48384();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for GuidanceValue() + 20));
    v13[14] = 1;
    sub_20DF48364();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20DEDEA08()
{
  result = qword_27C84CAD0;
  if (!qword_27C84CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CAD0);
  }

  return result;
}

uint64_t GuidanceValue.hash(into:)()
{
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C860, MEMORY[0x277CC88A8]);
  sub_20DF47CA4();
  v1 = *(v0 + *(type metadata accessor for GuidanceValue() + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x20F3290A0](*&v1);
}

uint64_t GuidanceValue.hashValue.getter()
{
  sub_20DF48494();
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C860, MEMORY[0x277CC88A8]);
  sub_20DF47CA4();
  v1 = *(v0 + *(type metadata accessor for GuidanceValue() + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v1);
  return sub_20DF484D4();
}

uint64_t GuidanceValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = sub_20DF473B4();
  v24 = *(v26 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CAD8, &qword_20DF4A458);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v9 = &v21 - v8;
  v10 = type metadata accessor for GuidanceValue();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEDEA08();
  sub_20DF484E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v13;
  v15 = v24;
  v29 = 0;
  sub_20DEDF178(&qword_27C84C880, MEMORY[0x277CC88A8]);
  v16 = v26;
  sub_20DF482E4();
  v17 = v22;
  (*(v15 + 32))(v22, v6, v16);
  v28 = 1;
  sub_20DF482C4();
  v19 = v18;
  (*(v25 + 8))(v9, v27);
  *(v17 + *(v10 + 20)) = v19;
  sub_20DEDF070(v17, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20DEDF0D4(v17);
}

uint64_t sub_20DEDEF24(uint64_t a1, uint64_t a2)
{
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C860, MEMORY[0x277CC88A8]);
  sub_20DF47CA4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x20F3290A0](*&v4);
}

uint64_t sub_20DEDEFC0(uint64_t a1, uint64_t a2)
{
  sub_20DF48494();
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C860, MEMORY[0x277CC88A8]);
  sub_20DF47CA4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v4);
  return sub_20DF484D4();
}

uint64_t sub_20DEDF070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidanceValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DEDF0D4(uint64_t a1)
{
  v2 = type metadata accessor for GuidanceValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DEDF178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DEDF23C()
{
  result = sub_20DF473B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GuidanceType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GuidanceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20DEDF404()
{
  result = qword_27C84CAF8;
  if (!qword_27C84CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CAF8);
  }

  return result;
}

unint64_t sub_20DEDF45C()
{
  result = qword_27C84CB00;
  if (!qword_27C84CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB00);
  }

  return result;
}

unint64_t sub_20DEDF4B4()
{
  result = qword_27C84CB08;
  if (!qword_27C84CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB08);
  }

  return result;
}

uint64_t sub_20DEDF50C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_20DEDF628()
{
  v0[2] = v0[3];
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[4] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_20DEDF78C;

  return sub_20DEDF960(v0 + 2, v3);
}

uint64_t sub_20DEDF78C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20DEDF960(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 152) = a2;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_20DEDF984, 0, 0);
}

uint64_t sub_20DEDF984()
{
  v1 = v0[19];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v0[14] = sub_20DEDFEA0;
  v0[15] = v2;
  v3 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3C970;
  v0[13] = &block_descriptor_2;
  v4 = _Block_copy(v0 + 10);
  v5 = v0[15];
  v6 = v1;

  v7 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v4);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v8 = v0[20];
    v9 = v0[18];
    v0[21] = v9;
    v0[2] = v0;
    v0[3] = sub_20DEDFBE4;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
    v0[10] = v3;
    v0[11] = 1107296256;
    v0[12] = sub_20DF2B4C4;
    v0[13] = &block_descriptor_8;
    v0[14] = v10;
    [v9 setMockOptionsWithOptions:v8 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    [v0[19] invalidate];
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_20DEDFBE4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEDFCC4, 0, 0);
}

uint64_t sub_20DEDFCC4()
{
  v1 = *(v0 + 168);
  swift_unknownObjectRelease();
  [*(v0 + 152) invalidate];
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_20DEDFD38()
{
  result = qword_27C84CB10;
  if (!qword_27C84CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB10);
  }

  return result;
}

unint64_t sub_20DEDFD90()
{
  result = qword_27C84CB18;
  if (!qword_27C84CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB18);
  }

  return result;
}

unint64_t sub_20DEDFDE4()
{
  result = qword_27C84CB20;
  if (!qword_27C84CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB20);
  }

  return result;
}

unint64_t sub_20DEDFE3C()
{
  result = qword_27C84CB28;
  if (!qword_27C84CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB28);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  return sub_20DEBA2EC(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_7(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

id XPCEKSandboxExtensionContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCEKSandboxExtensionContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t XPCEKSandboxExtensionContainer.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v2, type metadata accessor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70);
  v3 = sub_20DF47B24();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t XPCEKSandboxExtensionContainer.init(coder:)()
{
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v0, type metadata accessor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70);
  v1 = sub_20DF47B24();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_20DEE0220(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C84CB58, "<d");
    sub_20DEE02C0(a2, 255, type metadata accessor for EKSandboxExtension);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DEE02C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

Swift::Void __swiftcall XPCEKSandboxExtensionContainer.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v1, type metadata accessor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70);

  sub_20DF47B34();
}

id XPCEKSandboxExtensionContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCEKSandboxExtensionContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20DEE0778(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_20DEE07F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidanceValue();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_20DEE1B88(v14, v11, type metadata accessor for GuidanceValue);
    if (!v12)
    {
      break;
    }

    sub_20DEE1B88(v15, v8, type metadata accessor for GuidanceValue);
    if ((sub_20DF47394() & 1) == 0)
    {
      sub_20DEE1BF0(v8, type metadata accessor for GuidanceValue);
      sub_20DEE1BF0(v11, type metadata accessor for GuidanceValue);
      return 0;
    }

    v18 = *&v11[*(v4 + 20)];
    sub_20DEE1BF0(v11, type metadata accessor for GuidanceValue);
    v19 = *&v8[*(v4 + 20)];
    sub_20DEE1BF0(v8, type metadata accessor for GuidanceValue);
    result = v18 == v19;
    v20 = v18 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DEE09F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t EnergyGuidance.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF474E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EnergyGuidance.end.getter()
{
  v1 = type metadata accessor for EnergyGuidance();
  v2.n128_f64[0] = *(v0 + *(v1 + 20)) * *(*(v0 + *(v1 + 24)) + 16);

  return MEMORY[0x28211D9B8](v0, v2);
}

uint64_t type metadata accessor for EnergyGuidance()
{
  result = qword_27C84CC88;
  if (!qword_27C84CC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnergyGuidance.signal.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyGuidance() + 24));
}

uint64_t static EnergyGuidance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_20DF474A4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EnergyGuidance();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_20DEE09F4(v6, v7);
}

uint64_t sub_20DEE0C28()
{
  v1 = 0x6C61767265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6C616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_20DEE0C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DEE1A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DEE0CB0(uint64_t a1)
{
  v2 = sub_20DEE0F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DEE0CEC(uint64_t a1)
{
  v2 = sub_20DEE0F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyGuidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CC40, &qword_20DF4A9B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEE0F60();
  sub_20DF484F4();
  v17 = 0;
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CC50, MEMORY[0x277CC9578]);
  sub_20DF48384();
  if (!v2)
  {
    v11 = type metadata accessor for EnergyGuidance();
    v12 = *(v3 + *(v11 + 20));
    v16 = 1;
    sub_20DF48364();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CC58, &qword_20DF4A9B8);
    sub_20DEE1760(&qword_27C84CC60);
    sub_20DF48384();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20DEE0F60()
{
  result = qword_27C84CC48;
  if (!qword_27C84CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CC48);
  }

  return result;
}

uint64_t EnergyGuidance.hash(into:)(uint64_t a1)
{
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CA58, MEMORY[0x277CC9578]);
  sub_20DF47CA4();
  v3 = type metadata accessor for EnergyGuidance();
  v4 = *(v1 + *(v3 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v4);
  v5 = *(v1 + *(v3 + 24));

  return sub_20DEB885C(a1, v5);
}

uint64_t EnergyGuidance.hashValue.getter()
{
  sub_20DF48494();
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CA58, MEMORY[0x277CC9578]);
  sub_20DF47CA4();
  v1 = type metadata accessor for EnergyGuidance();
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v2);
  sub_20DEB885C(v4, *(v0 + *(v1 + 24)));
  return sub_20DF484D4();
}

uint64_t EnergyGuidance.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_20DF474E4();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CC68, &qword_20DF4A9C0);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for EnergyGuidance();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEE0F60();
  sub_20DF484E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v22;
  v29 = 0;
  sub_20DEE1814(&qword_27C84CC70, MEMORY[0x277CC9578]);
  v18 = v24;
  sub_20DF482E4();
  (*(v17 + 32))(v16, v25, v4);
  v28 = 1;
  sub_20DF482C4();
  v25 = v11;
  *(v16 + *(v11 + 20)) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CC58, &qword_20DF4A9B8);
  v27 = 2;
  sub_20DEE1760(&qword_27C84CC78);
  sub_20DF482E4();
  (*(v23 + 8))(v10, v18);
  *(v16 + *(v25 + 6)) = v26;
  sub_20DEE1B88(v16, v21, type metadata accessor for EnergyGuidance);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20DEE1BF0(v16, type metadata accessor for EnergyGuidance);
}

uint64_t sub_20DEE155C(uint64_t a1, uint64_t a2)
{
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CA58, MEMORY[0x277CC9578]);
  sub_20DF47CA4();
  v5 = *(v2 + *(a2 + 20));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v5);
  v6 = *(v2 + *(a2 + 24));

  return sub_20DEB885C(a1, v6);
}

uint64_t sub_20DEE1620(uint64_t a1, uint64_t a2)
{
  sub_20DF48494();
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CA58, MEMORY[0x277CC9578]);
  sub_20DF47CA4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v4);
  sub_20DEB885C(v6, *(v2 + *(a2 + 24)));
  return sub_20DF484D4();
}

uint64_t sub_20DEE16E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20DF474A4() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_20DEE09F4(v7, v8);
}

uint64_t sub_20DEE1760(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C84CC58, &qword_20DF4A9B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DEE1814(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20DEE1884()
{
  sub_20DF474E4();
  if (v0 <= 0x3F)
  {
    sub_20DEE1910();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20DEE1910()
{
  if (!qword_281122588)
  {
    v0 = sub_20DF47EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_281122588);
    }
  }
}

unint64_t sub_20DEE1974()
{
  result = qword_27C84CC98;
  if (!qword_27C84CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CC98);
  }

  return result;
}

unint64_t sub_20DEE19CC()
{
  result = qword_27C84CCA0;
  if (!qword_27C84CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CCA0);
  }

  return result;
}

unint64_t sub_20DEE1A24()
{
  result = qword_27C84CCA8;
  if (!qword_27C84CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CCA8);
  }

  return result;
}

uint64_t sub_20DEE1A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_20DF483D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E676973 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20DF483D4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20DEE1B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DEE1BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20DEE1C60(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_20DEE1D38(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  *(v5 + 264) = a5;
  *(v5 + 320) = a2;
  *(v5 + 240) = a1;
  *(v5 + 248) = a3;
  return MEMORY[0x2822009F8](sub_20DEE1D60, 0, 0);
}

uint64_t sub_20DEE1D60()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[34] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[35] = v5;
  *(v5 + 16) = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[36] = v7;
  *v7 = v0;
  v7[1] = sub_20DEE1EFC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20DEE1EFC()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE2014, 0, 0);
}

uint64_t sub_20DEE2014()
{
  v1 = *(v0 + 264);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEE5F7C;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_48;
  v3 = _Block_copy((v0 + 144));
  v4 = *(v0 + 184);
  v5 = v1;

  v6 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v9 = *(v0 + 320);
    v10 = *(v0 + 224);
    *(v0 + 296) = v10;
    v11 = sub_20DF47D04();
    *(v0 + 304) = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE22CC;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD0, &qword_20DF4AC70);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE5F98;
    *(v0 + 104) = &block_descriptor_52;
    *(v0 + 112) = v12;
    [v10 guidanceWithQuery:v9 gridID:v11 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_20DEDD4D8();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_20DEE22CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_20DEE2484;
  }

  else
  {
    v3 = sub_20DEE23DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEE23DC()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[33];
  v4 = v0[30];
  swift_unknownObjectRelease();
  v5 = v0[29];

  sub_20DEE5ED0(v5 + OBJC_IVAR____TtC17EnergyKitInternal20XPCGuidanceContainer_value, v4);
  [v3 invalidate];
  v6 = v0[1];

  return v6();
}

uint64_t sub_20DEE2484()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[39];
  v5 = v0[1];

  return v5();
}

uint64_t sub_20DEE2500(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_20DEE2564(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_20DF47C34();

  return swift_continuation_resume();
}

uint64_t sub_20DEE25E0(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_20DF47E64();

  return swift_continuation_resume();
}

uint64_t sub_20DEE2684(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = sub_20DF47424();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEE2744, 0, 0);
}

uint64_t sub_20DEE2744()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[39] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[40] = v5;
  *(v5 + 16) = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_20DEE28E0;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20DEE28E0()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE29F8, 0, 0);
}

uint64_t sub_20DEE29F8()
{
  super_class = v0[17].super_class;

  v2 = swift_allocObject();
  *(v2 + 16) = super_class;
  v0[11].receiver = sub_20DEE5F7C;
  v0[11].super_class = v2;
  v0[9].receiver = MEMORY[0x277D85DD0];
  v0[9].super_class = 1107296256;
  v0[10].receiver = sub_20DF3C970;
  v0[10].super_class = &block_descriptor_71;
  v3 = _Block_copy(&v0[9]);
  v4 = v0[11].super_class;
  v5 = super_class;

  v6 = [(objc_class *)v5 remoteObjectProxyWithErrorHandler:v3];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    receiver = v0[16].receiver;
    v0[21].receiver = receiver;
    sub_20DF47744();
    v8 = sub_20DF47734();
    sub_20DF47724();
    v0[16].super_class = MEMORY[0x277D84F90];
    v9 = *(v8 + 16);
    if (v9)
    {
      v39 = receiver;
      v10 = v0[18].super_class;
      v11 = *(v10 + 2);
      v10 = (v10 + 16);
      v46 = v11;
      v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v13 = *MEMORY[0x277D861C0];
      v44 = *(v10 + 7);
      v43 = *MEMORY[0x277D861E8];
      v40 = (v10 - 8);
      v41 = (v10 + 16);
      v42 = MEMORY[0x277D84F90];
      v45 = *MEMORY[0x277D861C0];
      v11(v0[19].receiver, v12, v0[18].receiver);
      while (1)
      {
        type metadata accessor for EKSandboxExtension.Context();
        v16 = swift_allocObject();
        v16[2] = j__sandbox_extension_consume;
        v16[3] = 0;
        v16[4] = j__sandbox_extension_release;
        v16[5] = 0;
        v16[6] = j__sandbox_extension_issue_file;
        v16[7] = 0;
        v17 = type metadata accessor for EKSandboxExtension();
        v18 = *(v17 + 48);
        v19 = *(v17 + 52);
        v20 = swift_allocObject();
        *(v20 + 40) = 0;
        *(v20 + 48) = 1;
        if (!v13)
        {
          break;
        }

        v21 = v20;
        v22 = v0[19].receiver;
        sub_20DF47D84();
        sub_20DF47414();
        sub_20DF47D44();

        sub_20DF47D44();

        v23 = sandbox_extension_issue_file();

        v24 = v0[19].receiver;
        v25 = v0[18].receiver;
        if (v23)
        {
          *(v21 + 3) = sub_20DF47D84();
          *(v21 + 4) = v26;
          free(v23);
          (*v41)(&v21[OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL], v24, v25);
          *(v21 + 2) = v16;

          MEMORY[0x20F328A20](v27);
          if (*((v0[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v28 = *((v0[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20DF47E84();
          }

          sub_20DF47EA4();

          v42 = v0[16].super_class;
        }

        else
        {

          (*v40)(v24, v25);
          v14 = *(*v21 + 48);
          v15 = *(*v21 + 52);
          swift_deallocPartialClassInstance();
        }

        v13 = v45;
        v12 += v44;
        if (!--v9)
        {

          receiver = v39;
          v32 = v42;
          goto LABEL_17;
        }

        v46(v0[19].receiver, v12, v0[18].receiver);
      }

      __break(1u);
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
LABEL_17:
      v33 = v0[17].receiver;
      v34 = type metadata accessor for XPCEKSandboxExtensionContainer();
      v35 = objc_allocWithZone(v34);
      *&v35[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = v32;
      v0[14].receiver = v35;
      v0[14].super_class = v34;
      v36 = objc_msgSendSuper2(v0 + 14, sel_init);
      v0[21].super_class = v36;
      sub_20DF47514();
      v37 = sub_20DF47D04();
      v0[22].receiver = v37;

      v0[1].receiver = v0;
      v0[3].super_class = &v0[15];
      v0[1].super_class = sub_20DEE300C;
      v38 = swift_continuation_init();
      v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD8, &qword_20DF4AC80);
      v0[5].receiver = MEMORY[0x277D85DD0];
      v0[5].super_class = 1107296256;
      v0[6].receiver = sub_20DEF28A4;
      v0[6].super_class = &block_descriptor_75;
      v0[7].receiver = v38;
      [receiver gridIDFor:v37 ekSandboxExtension:v36 completionHandler:&v0[5]];
      v20 = &v0[1];
    }

    return MEMORY[0x282200938](v20);
  }

  else
  {
    v29 = v0[19].receiver;
    [(objc_class *)v0[17].super_class invalidate];

    v30 = v0->super_class;

    return v30(0, 0);
  }
}

uint64_t sub_20DEE300C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE30EC, 0, 0);
}

uint64_t sub_20DEE30EC()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);

  swift_unknownObjectRelease();
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);

  v6 = *(v0 + 304);
  [*(v0 + 280) invalidate];

  v7 = *(v0 + 8);

  return v7(v5, v4);
}

uint64_t sub_20DEE3190(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = sub_20DF47424();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEE3250, 0, 0);
}

uint64_t sub_20DEE3250()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[39] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[40] = v5;
  *(v5 + 16) = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_20DEE33EC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20DEE33EC()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE3504, 0, 0);
}

uint64_t sub_20DEE3504()
{
  super_class = v0[17].super_class;

  v2 = swift_allocObject();
  *(v2 + 16) = super_class;
  v0[11].receiver = sub_20DEE5F7C;
  v0[11].super_class = v2;
  v0[9].receiver = MEMORY[0x277D85DD0];
  v0[9].super_class = 1107296256;
  v0[10].receiver = sub_20DF3C970;
  v0[10].super_class = &block_descriptor_60;
  v3 = _Block_copy(&v0[9]);
  v4 = v0[11].super_class;
  v5 = super_class;

  v6 = [(objc_class *)v5 remoteObjectProxyWithErrorHandler:v3];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v7 = v0;
    receiver = v0[16].receiver;
    v0[21].receiver = receiver;
    sub_20DF47744();
    v9 = sub_20DF47734();
    sub_20DF47724();
    v0[16].super_class = MEMORY[0x277D84F90];
    v10 = *(v9 + 16);
    v47 = v0;
    if (v10)
    {
      v40 = receiver;
      v11 = v0[18].super_class;
      v12 = *(v11 + 2);
      v11 = (v11 + 16);
      v46 = v12;
      v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v14 = *MEMORY[0x277D861C0];
      v44 = *(v11 + 7);
      v43 = *MEMORY[0x277D861E8];
      v41 = (v11 - 8);
      v42 = (v11 + 16);
      v15 = MEMORY[0x277D84F90];
      v16 = v7;
      v45 = *MEMORY[0x277D861C0];
      v12(v16[19].receiver, v13, v16[18].receiver);
      while (1)
      {
        type metadata accessor for EKSandboxExtension.Context();
        v19 = swift_allocObject();
        v19[2] = j__sandbox_extension_consume;
        v19[3] = 0;
        v19[4] = j__sandbox_extension_release;
        v19[5] = 0;
        v19[6] = j__sandbox_extension_issue_file;
        v19[7] = 0;
        v20 = type metadata accessor for EKSandboxExtension();
        v21 = *(v20 + 48);
        v22 = *(v20 + 52);
        v23 = swift_allocObject();
        *(v23 + 40) = 0;
        *(v23 + 48) = 1;
        if (!v14)
        {
          break;
        }

        v24 = v23;
        v25 = v16[19].receiver;
        sub_20DF47D84();
        sub_20DF47414();
        sub_20DF47D44();

        sub_20DF47D44();
        v16 = v47;

        v26 = sandbox_extension_issue_file();

        v27 = v47[19].receiver;
        v28 = v47[18].receiver;
        if (v26)
        {
          *(v24 + 3) = sub_20DF47D84();
          *(v24 + 4) = v29;
          free(v26);
          (*v42)(&v24[OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL], v27, v28);
          *(v24 + 2) = v19;

          MEMORY[0x20F328A20](v30);
          if (*((v47[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v31 = *((v47[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20DF47E84();
          }

          sub_20DF47EA4();

          v15 = v47[16].super_class;
        }

        else
        {

          (*v41)(v27, v28);
          v17 = *(*v24 + 48);
          v18 = *(*v24 + 52);
          swift_deallocPartialClassInstance();
        }

        v14 = v45;
        v13 += v44;
        if (!--v10)
        {

          receiver = v40;
          goto LABEL_17;
        }

        v46(v47[19].receiver, v13, v47[18].receiver);
      }

      __break(1u);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
LABEL_17:
      v35 = v47[17].receiver;
      v36 = type metadata accessor for XPCEKSandboxExtensionContainer();
      v37 = objc_allocWithZone(v36);
      *&v37[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = v15;
      v47[14].receiver = v37;
      v47[14].super_class = v36;
      v38 = objc_msgSendSuper2(v47 + 14, sel_init);
      v47[21].super_class = v38;
      v47[1].receiver = v47;
      v47[3].super_class = &v47[15];
      v47[1].super_class = sub_20DEE3B00;
      v39 = swift_continuation_init();
      v47[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD8, &qword_20DF4AC80);
      v47[5].receiver = MEMORY[0x277D85DD0];
      v47[5].super_class = 1107296256;
      v47[6].receiver = sub_20DEF28A4;
      v47[6].super_class = &block_descriptor_64;
      v47[7].receiver = v39;
      [receiver gridIDWithLocation:v35 ekSandboxExtension:v38 completionHandler:&v47[5]];
      v23 = &v47[1];
    }

    return MEMORY[0x282200938](v23);
  }

  else
  {
    v32 = v0[19].receiver;
    [(objc_class *)v0[17].super_class invalidate];

    v33 = v0->super_class;

    return v33(0, 0);
  }
}

uint64_t sub_20DEE3B00()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE3BE0, 0, 0);
}

uint64_t sub_20DEE3BE0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  swift_unknownObjectRelease();
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);

  v5 = *(v0 + 304);
  [*(v0 + 280) invalidate];

  v6 = *(v0 + 8);

  return v6(v4, v3);
}

uint64_t sub_20DEE3C74(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return MEMORY[0x2822009F8](sub_20DEE3C94, 0, 0);
}

uint64_t sub_20DEE3C94()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[32] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[33] = v5;
  *(v5 + 16) = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_20DEE3E30;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v5, v8);
}

uint64_t sub_20DEE3E30()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE3F48, 0, 0);
}

uint64_t sub_20DEE3F48()
{
  v1 = *(v0 + 248);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEDFEA0;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_15;
  v3 = _Block_copy((v0 + 144));
  v4 = *(v0 + 184);
  v5 = v1;

  v6 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 224);
    *(v0 + 280) = v8;
    sub_20DF47514();
    v9 = sub_20DF47D04();
    *(v0 + 288) = v9;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE41EC;
    v10 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB0, &qword_20DF4AC38);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE2500;
    *(v0 + 104) = &block_descriptor_19;
    *(v0 + 112) = v10;
    [v8 siteFor:v9 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    [*(v0 + 248) invalidate];
    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_20DEE41EC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE42CC, 0, 0);
}

uint64_t sub_20DEE42CC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  swift_unknownObjectRelease();
  v3 = *(v0 + 232);

  [*(v0 + 248) invalidate];
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_20DEE4348(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return MEMORY[0x2822009F8](sub_20DEE4368, 0, 0);
}

uint64_t sub_20DEE4368()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[32] = v3;

  v0[33] = &unk_28252EBA0;
  v4 = objc_opt_self();
  v0[34] = v4;
  v5 = [v4 interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v6 = swift_task_alloc();
  v0[35] = v6;
  *(v6 + 16) = v3;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_20DEE450C;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE4DD8, v6, v9);
}

uint64_t sub_20DEE450C()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE4624, 0, 0);
}

uint64_t sub_20DEE4624()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_20DF47D04();
  v5 = [v3 initWithServiceName_];
  *(v0 + 296) = v5;

  v6 = [v2 interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  [v5 resume];
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *(v7 + 16) = v5;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 312) = v9;
  *v9 = v0;
  v9[1] = sub_20DEE47BC;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v9, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v7, v10);
}

uint64_t sub_20DEE47BC()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE48D4, 0, 0);
}

uint64_t sub_20DEE48D4()
{
  v1 = *(v0 + 248);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEE5F7C;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_3;
  v3 = _Block_copy((v0 + 144));
  v4 = *(v0 + 184);
  v5 = v1;

  v6 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 224);
    *(v0 + 320) = v8;
    v9 = sub_20DF47524();
    *(v0 + 328) = v9;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE4B98;
    v10 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE5F98;
    *(v0 + 104) = &block_descriptor_7;
    *(v0 + 112) = v10;
    [v8 siteWithHomeID:v9 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    [*(v0 + 248) invalidate];
    sub_20DEDD4D8();
    swift_allocError();
    *v11 = 7;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_20DEE4B98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_20DEE4D38;
  }

  else
  {
    v3 = sub_20DEE4CA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DEE4CA8()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);

  [v2 invalidate];
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_20DEE4D38()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[31];
  swift_willThrow();
  swift_unknownObjectRelease();

  [v4 invalidate];
  v5 = v0[42];
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DEE4E10(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 256) = a2;
  *(v3 + 248) = a3;
  *(v3 + 240) = a1;
  return MEMORY[0x2822009F8](sub_20DEE4E38, 0, 0);
}

uint64_t sub_20DEE4E38()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[33] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[34] = v5;
  *(v5 + 16) = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_20DEE4FD4;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v5, v8);
}

uint64_t sub_20DEE4FD4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE50EC, 0, 0);
}

uint64_t sub_20DEE50EC()
{
  v1 = *(v0 + 256);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEE5F7C;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_37;
  v3 = _Block_copy((v0 + 144));
  v4 = *(v0 + 184);
  v5 = v1;

  v6 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 240);
    v9 = *(v0 + 224);
    *(v0 + 288) = v9;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE5380;
    v10 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCC8, &qword_20DF4AC60);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE2564;
    *(v0 + 104) = &block_descriptor_41;
    *(v0 + 112) = v10;
    [v9 sitesWithNear:v8 radius:v0 + 80 completionHandler:v7];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    [*(v0 + 256) invalidate];
    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F98];

    return v11(v12);
  }
}

uint64_t sub_20DEE5380()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE5460, 0, 0);
}

uint64_t sub_20DEE5460()
{
  v1 = *(v0 + 288);
  swift_unknownObjectRelease();
  v2 = *(v0 + 232);
  [*(v0 + 256) invalidate];
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_20DEE54D8(uint64_t a1)
{
  v1[30] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v3 = sub_20DF47564();
  v1[32] = v3;
  v4 = *(v3 - 8);
  v1[33] = v4;
  v5 = *(v4 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEE55DC, 0, 0);
}

uint64_t sub_20DEE55DC()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[36] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[37] = v5;
  *(v5 + 16) = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[38] = v7;
  *v7 = v0;
  v7[1] = sub_20DEE5778;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v5, v8);
}

uint64_t sub_20DEE5778()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE5890, 0, 0);
}

uint64_t sub_20DEE5890()
{
  v1 = *(v0 + 240);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEE5F7C;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_26;
  v3 = _Block_copy((v0 + 144));
  v4 = *(v0 + 184);
  v5 = v1;

  v6 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 224);
    *(v0 + 312) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE5B28;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCC0, &qword_20DF4AC50);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE25E0;
    *(v0 + 104) = &block_descriptor_30;
    *(v0 + 112) = v8;
    [v7 sitesWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 248);
    [*(v0 + 240) invalidate];

    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_20DEE5B28()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DEE5C08, 0, 0);
}

uint64_t sub_20DEE5C08()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 264);
    v4 = (v3 + 48);
    v5 = (v3 + 32);
    v29 = v3;
    v26 = (v3 + 16);
    v6 = (v1 + 40);
    v7 = MEMORY[0x277D84F90];
    v27 = (v3 + 32);
    v28 = (v3 + 48);
    do
    {
      v9 = *(v0 + 248);
      v8 = *(v0 + 256);
      v10 = *(v6 - 1);
      v11 = *v6;

      sub_20DF47504();

      if ((*v4)(v9, 1, v8) == 1)
      {
        sub_20DEE5E68(*(v0 + 248));
      }

      else
      {
        v13 = *(v0 + 272);
        v12 = *(v0 + 280);
        v14 = *(v0 + 256);
        v15 = *v5;
        (*v5)(v12, *(v0 + 248), v14);
        (*v26)(v13, v12, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_20DEB848C(0, *(v7 + 2) + 1, 1, v7);
        }

        v17 = *(v7 + 2);
        v16 = *(v7 + 3);
        if (v17 >= v16 >> 1)
        {
          v7 = sub_20DEB848C(v16 > 1, v17 + 1, 1, v7);
        }

        v18 = *(v0 + 272);
        v19 = *(v0 + 256);
        (*(v29 + 8))(*(v0 + 280), v19);
        *(v7 + 2) = v17 + 1;
        v5 = v27;
        v15(&v7[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v17], v18, v19);
        v4 = v28;
      }

      v6 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v20 = *(v0 + 312);

  swift_unknownObjectRelease();
  v22 = *(v0 + 272);
  v21 = *(v0 + 280);
  v23 = *(v0 + 248);
  [*(v0 + 240) invalidate];

  v24 = *(v0 + 8);

  return v24(v7);
}

uint64_t sub_20DEE5E68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DEE5ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Guidance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnergyLoadUpdate.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF474E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for EnergyLoadUpdate()
{
  result = qword_27C84CCE0;
  if (!qword_27C84CCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnergyLoadUpdate.state.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyLoadUpdate() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EnergyLoadUpdate.energy.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyLoadUpdate() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void sub_20DEE6130()
{
  sub_20DF474E4();
  if (v0 <= 0x3F)
  {
    sub_20DEE61D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20DEE61D0()
{
  if (!qword_27C84C9C8)
  {
    v0 = sub_20DF48064();
    if (!v1)
    {
      atomic_store(v0, &qword_27C84C9C8);
    }
  }
}

uint64_t EnergyTrends.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnergyTrends() + 24);
  v4 = sub_20DF47604();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EnergyTrends()
{
  result = qword_281122648;
  if (!qword_281122648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnergyTrends.debugIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyTrends() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EnergyTrends.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnergyTrends() + 32);
  v4 = sub_20DF475D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EnergyTrends.calendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EnergyTrends() + 32);
  v4 = sub_20DF475D4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EnergyTrends.init(response:timeZone:debugIdentifier:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, _BYTE *a5@<X8>)
{
  v72 = a3;
  v73 = a4;
  v74 = a2;
  v77 = a5;
  v78 = type metadata accessor for EnergySite.EnergyUsage(0);
  v6 = *(v78 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v78);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  v71 = sub_20DF47574();
  v68 = *(v71 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20DF47604();
  v76 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v69 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  v22 = *&a1[*(type metadata accessor for EnergySite.HistoricalEnergyUsage(0) + 24)];
  v65 = v16;
  v66 = a1;
  LOBYTE(a1) = *a1;
  v23 = *(v16 + 16);
  v75 = v21;
  v23(v21, v74, v15);
  v24 = v23;
  v67 = v23;
  v25 = v77;
  *v77 = a1;
  v26 = type metadata accessor for EnergyTrends();
  v24(&v25[v26[6]], v21, v15);
  v27 = &v25[v26[7]];
  v28 = v25;
  v29 = v73;
  *v27 = v72;
  v27[1] = v29;
  v30 = v68;
  v32 = v70;
  v31 = v71;
  (*(v68 + 104))(v70, *MEMORY[0x277CC9830], v71);
  v73 = v26;
  v33 = v26[8];
  sub_20DF47584();
  (*(v30 + 8))(v32, v31);
  v67(v69, v75, v76);
  sub_20DF475B4();
  *(v28 + 1) = v22;
  v34 = *(v22 + 16);

  v36 = MEMORY[0x277D84F90];
  if (!v34)
  {
    v42 = *(MEMORY[0x277D84F90] + 16);
    if (v42)
    {
      v38 = MEMORY[0x277D84F90];
LABEL_12:
      v43 = *(v38 + 32);
      v44 = v42 - 1;
      v45 = v73;
      if (v42 != 1)
      {
        v46 = (v38 + 40);
        do
        {
          v47 = *v46++;
          v48 = v47;
          if (v43 < v47)
          {
            v43 = v48;
          }

          --v44;
        }

        while (v44);
      }

      *&v77[v45[9]] = v43;
      if (v34)
      {
        v49 = *(v78 + 28);
        v50 = v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v51 = *(v6 + 72);
        v36 = MEMORY[0x277D84F90];
        do
        {
          sub_20DEEF8EC(v50, v10, type metadata accessor for EnergySite.EnergyUsage);
          v52 = *&v10[v49];
          sub_20DEEF954(v10, type metadata accessor for EnergySite.EnergyUsage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_20DEB8234(0, *(v36 + 2) + 1, 1, v36);
          }

          v54 = *(v36 + 2);
          v53 = *(v36 + 3);
          v55 = v54 + 1;
          if (v54 >= v53 >> 1)
          {
            v36 = sub_20DEB8234((v53 > 1), v54 + 1, 1, v36);
          }

          *(v36 + 2) = v55;
          *&v36[8 * v54 + 32] = v52;
          v50 += v51;
          --v34;
        }

        while (v34);
        goto LABEL_27;
      }
    }

    else
    {

      v45 = v73;
      *&v77[v73[9]] = 0;
      v43 = 0.0;
    }

    v55 = *(v36 + 2);
    if (!v55)
    {
      v56 = 0.0;
      goto LABEL_34;
    }

LABEL_27:
    v56 = *(v36 + 4);
    v57 = v55 - 1;
    if (v55 != 1)
    {
      v58 = 40;
      v59 = v66;
      v60 = v74;
      do
      {
        if (v56 < *&v36[v58])
        {
          v56 = *&v36[v58];
        }

        v58 += 8;
        --v57;
      }

      while (v57);
      goto LABEL_35;
    }

LABEL_34:
    v59 = v66;
    v60 = v74;
LABEL_35:

    v61 = *(v65 + 8);
    v62 = v60;
    v63 = v76;
    v61(v62, v76);
    sub_20DEEF954(v59, type metadata accessor for EnergySite.HistoricalEnergyUsage);
    result = (v61)(v75, v63);
    v64 = v77;
    *&v77[v45[10]] = v56;
    v64[v45[11]] = v43 > 0.0;
    return result;
  }

  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  while (v37 < *(v22 + 16))
  {
    sub_20DEEF8EC(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v37, v12, type metadata accessor for EnergySite.EnergyUsage);
    v39 = *&v12[*(v78 + 24)];
    sub_20DEEF954(v12, type metadata accessor for EnergySite.EnergyUsage);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20DEB8234(0, *(v38 + 16) + 1, 1, v38);
      v38 = result;
    }

    v41 = *(v38 + 16);
    v40 = *(v38 + 24);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_20DEB8234((v40 > 1), v41 + 1, 1, v38);
      v38 = result;
    }

    ++v37;
    *(v38 + 16) = v42;
    *(v38 + 8 * v41 + 32) = v39;
    if (v34 == v37)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t EnergyTrends.init(usages:interval:timeZone:debugIdentifier:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, _BYTE *a6@<X8>)
{
  v62 = a4;
  v63 = a5;
  v66 = a3;
  v9 = type metadata accessor for EnergySite.EnergyUsage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v65 = sub_20DF47604();
  v17 = *(v65 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v65);
  v61 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20DF47574();
  v64 = *(v60 - 8);
  v20 = *(v64 + 8);
  MEMORY[0x28223BE20](v60);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v21) = *a2;
  v23 = a6;
  *a6 = v21;
  v24 = type metadata accessor for EnergyTrends();
  v25 = v24[6];
  v58 = v17;
  v59 = *(v17 + 16);
  v59(&v23[v25], v66, v65);
  v26 = &v23[v24[7]];
  v27 = v63;
  *v26 = v62;
  v26[1] = v27;
  v28 = v60;
  (*(v64 + 13))(v22, *MEMORY[0x277CC9830], v60);
  v63 = v24;
  v29 = v24[8];
  sub_20DF47584();
  (*(v64 + 1))(v22, v28);
  v59(v61, v66, v65);
  sub_20DF475B4();
  v64 = v23;
  *(v23 + 1) = a1;
  v30 = *(a1 + 16);

  if (v30)
  {
    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    while (v32 < *(a1 + 16))
    {
      sub_20DEEF8EC(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, v16, type metadata accessor for EnergySite.EnergyUsage);
      v34 = *&v16[*(v9 + 24)];
      sub_20DEEF954(v16, type metadata accessor for EnergySite.EnergyUsage);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20DEB8234(0, *(v33 + 2) + 1, 1, v33);
        v33 = result;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_20DEB8234((v35 > 1), v36 + 1, 1, v33);
        v33 = result;
      }

      ++v32;
      *(v33 + 2) = v37;
      *&v33[8 * v36 + 32] = v34;
      if (v30 == v32)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
    v37 = *(MEMORY[0x277D84F90] + 16);
    if (v37)
    {
LABEL_11:
      v38 = *(v33 + 4);
      v39 = v37 - 1;
      v40 = v64;
      if (v37 != 1)
      {
        v41 = (v33 + 40);
        do
        {
          v42 = *v41++;
          v43 = v42;
          if (v38 < v42)
          {
            v38 = v43;
          }

          --v39;
        }

        while (v39);
      }

      *&v40[v63[9]] = v38;
      if (v30)
      {
        v44 = *(v9 + 28);
        v45 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v46 = *(v10 + 72);
        v33 = MEMORY[0x277D84F90];
        do
        {
          sub_20DEEF8EC(v45, v14, type metadata accessor for EnergySite.EnergyUsage);
          v47 = *&v14[v44];
          sub_20DEEF954(v14, type metadata accessor for EnergySite.EnergyUsage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_20DEB8234(0, *(v33 + 2) + 1, 1, v33);
          }

          v49 = *(v33 + 2);
          v48 = *(v33 + 3);
          if (v49 >= v48 >> 1)
          {
            v33 = sub_20DEB8234((v48 > 1), v49 + 1, 1, v33);
          }

          *(v33 + 2) = v49 + 1;
          *&v33[8 * v49 + 32] = v47;
          v45 += v46;
          --v30;
        }

        while (v30);
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v40 = v64;
      *&v64[v63[9]] = 0;
      v38 = 0.0;
    }

    v50 = *(v33 + 2);
    if (v50)
    {
      v51 = *(v33 + 4);
      v52 = v50 - 1;
      if (v52)
      {
        v53 = (v33 + 40);
        do
        {
          v54 = *v53++;
          v55 = v54;
          if (v51 < v54)
          {
            v51 = v55;
          }

          --v52;
        }

        while (v52);
      }
    }

    else
    {
      v51 = 0.0;
    }

    result = (*(v58 + 8))(v66, v65);
    v56 = v63;
    *&v40[v63[10]] = v51;
    v40[v56[11]] = v38 > 0.0;
  }

  return result;
}

uint64_t static EnergyTrends.advance(date:by:displayInterval:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_20DF475C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v24 - v16;
  if (!a2)
  {
    v21 = sub_20DF474E4();
    (*(*(v21 - 8) + 16))(a5, a1, v21);
LABEL_10:
    v23 = sub_20DF474E4();
    return (*(*(v23 - 8) + 56))(a5, 0, 1, v23);
  }

  v18 = *a3;
  v19 = *a3;
  v24[1] = a4;
  if (v19 == 3)
  {
  }

  else
  {
    v22 = sub_20DF483D4();

    if ((v22 & 1) == 0)
    {
      (*(v11 + 104))(v15, **(&unk_277E1A298 + v18), v10);
      sub_20DF47AD4();
      (*(v11 + 8))(v15, v10);
      goto LABEL_10;
    }
  }

  if ((a2 * 26) >> 64 == (26 * a2) >> 63)
  {
    if ((26 * a2 * 7) >> 64 == (182 * a2) >> 63)
    {
      (*(v11 + 104))(v17, *MEMORY[0x277CC9968], v10);
      sub_20DF47AD4();
      (*(v11 + 8))(v17, v10);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static EnergyTrends.displayIntervalToCalendarComponent(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_20DF475C4();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_277E1A298 + v3);

  return v5(a2, v6, v4);
}

uint64_t EnergyTrends.adjustRequestedDateForAvailableData(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v190 = a2;
  v5 = sub_20DF475C4();
  v227 = *(v5 - 8);
  v6 = *(v227 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v194 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v199 = &v187 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v215 = &v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v234 = &v187 - v14;
  v15 = type metadata accessor for EnergySite.EnergyUsage(0);
  v206 = *(v15 - 8);
  v16 = *(v206 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v222 = &v187 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for EnergyTrends();
  v18 = *(*(v201 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v201);
  v188 = &v187 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v214 = &v187 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v203 = &v187 - v24;
  MEMORY[0x28223BE20](v23);
  v229 = (&v187 - v25);
  v233 = sub_20DF47BD4();
  v228 = *(v233 - 8);
  v26 = *(v228 + 64);
  v27 = MEMORY[0x28223BE20](v233);
  v189 = &v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v213 = &v187 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v204 = (&v187 - v32);
  MEMORY[0x28223BE20](v31);
  v34 = &v187 - v33;
  v35 = sub_20DF474E4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v187 = &v187 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v208 = &v187 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v207 = &v187 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v212 = &v187 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v211 = &v187 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v210 = &v187 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v226 = &v187 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v216 = &v187 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v205 = &v187 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v230 = &v187 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v232 = &v187 - v59;
  MEMORY[0x28223BE20](v58);
  v231 = v36;
  v62 = *(v36 + 16);
  v60 = v36 + 16;
  v61 = v62;
  v225 = &v187 - v63;
  v62();
  if (qword_2811225A8[0] != -1)
  {
    swift_once();
  }

  v64 = v233;
  v65 = __swift_project_value_buffer(v233, qword_281122F00);
  swift_beginAccess();
  v66 = v228;
  v67 = *(v228 + 16);
  v221 = v65;
  v220 = v228 + 16;
  v219 = v67;
  v67(v34, v65, v64);
  v68 = v229;
  sub_20DEEF8EC(v3, v229, type metadata accessor for EnergyTrends);
  v193 = a1;
  v223[0] = v61;
  v223[1] = v60;
  (v61)(v232, a1, v35);
  v69 = v34;
  v70 = sub_20DF47BB4();
  v71 = sub_20DF48004();
  v72 = os_log_type_enabled(v70, v71);
  v200 = v35;
  v198 = v3;
  if (v72)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v236 = v74;
    *v73 = 136315650;
    *(v73 + 4) = sub_20DED38E8(0xD00000000000002ALL, 0x800000020DF4F3A0, &v236);
    v218 = v69;
    *(v73 + 12) = 2080;
    v75 = (v68 + v201[7]);
    v76 = *v75;
    v77 = v75[1];

    sub_20DEEF954(v68, type metadata accessor for EnergyTrends);
    v78 = sub_20DED38E8(v76, v77, &v236);

    *(v73 + 14) = v78;
    *(v73 + 22) = 2080;
    v79 = v66;
    v80 = v232;
    v81 = sub_20DF474C4();
    v83 = v82;
    v84 = v231;
    v224 = *(v231 + 8);
    v224(v80, v200);
    v85 = sub_20DED38E8(v81, v83, &v236);
    v3 = v198;

    *(v73 + 24) = v85;
    _os_log_impl(&dword_20DEAF000, v70, v71, "%s (%s) looking for data in interval containing %s", v73, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v74, -1, -1);
    v86 = v73;
    v35 = v200;
    MEMORY[0x20F329700](v86, -1, -1);

    v87 = v84;
    v88 = v218;
    v218 = *(v79 + 8);
    v218(v88, v233);
    v89 = v79;
  }

  else
  {

    v87 = v231;
    v224 = *(v231 + 8);
    v224(v232, v35);
    sub_20DEEF954(v68, type metadata accessor for EnergyTrends);
    v218 = *(v66 + 8);
    v218(v34, v233);
    v89 = v66;
  }

  v217 = *(v3 + 8);
  v90 = v225;
  v91 = v223[0];
  v92 = v230;
  if (*(v217 + 16))
  {
    v93 = v222;
    sub_20DEEF8EC(v217 + ((*(v206 + 80) + 32) & ~*(v206 + 80)), v222, type metadata accessor for EnergySite.EnergyUsage);
    v94 = v205;
    v91(v205, v93, v35);
    sub_20DEEF954(v93, type metadata accessor for EnergySite.EnergyUsage);
    (*(v87 + 32))(v92, v94, v35);
    v95 = v193;
    if (sub_20DF47474())
    {
      v96 = v204;
      v219(v204, v221, v233);
      v97 = v203;
      sub_20DEEF8EC(v3, v203, type metadata accessor for EnergyTrends);
      v91(v216, v95, v35);
      v91(v226, v92, v35);
      v98 = sub_20DF47BB4();
      v99 = sub_20DF48004();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v236 = v232;
        *v100 = 136315906;
        *(v100 + 4) = sub_20DED38E8(0xD00000000000002ALL, 0x800000020DF4F3A0, &v236);
        *(v100 + 12) = 2080;
        v101 = (v97 + v201[7]);
        v102 = *v101;
        v103 = v101[1];

        sub_20DEEF954(v97, type metadata accessor for EnergyTrends);
        v104 = sub_20DED38E8(v102, v103, &v236);

        *(v100 + 14) = v104;
        *(v100 + 22) = 2080;
        v105 = v216;
        v106 = sub_20DF474C4();
        v108 = v107;
        v109 = v105;
        v110 = v224;
        v224(v109, v200);
        v111 = sub_20DED38E8(v106, v108, &v236);

        *(v100 + 24) = v111;
        *(v100 + 32) = 2080;
        v92 = v230;
        v112 = v226;
        v113 = sub_20DF474C4();
        v115 = v114;
        v110(v112, v200);
        v89 = v228;
        v87 = v231;
        v35 = v200;
        v116 = sub_20DED38E8(v113, v115, &v236);
        v3 = v198;

        *(v100 + 34) = v116;
        _os_log_impl(&dword_20DEAF000, v98, v99, "%s (%s) requested date %s is before snapshot start, pinning to snapshot start: %s", v100, 0x2Au);
        v117 = v232;
        swift_arrayDestroy();
        MEMORY[0x20F329700](v117, -1, -1);
        MEMORY[0x20F329700](v100, -1, -1);

        v118 = v204;
      }

      else
      {

        v119 = v224;
        v224(v226, v35);
        v119(v216, v35);
        sub_20DEEF954(v97, type metadata accessor for EnergyTrends);
        v89 = v228;
        v118 = v96;
      }

      v218(v118, v233);
      v90 = v225;
      (*(v87 + 40))(v225, v92, v35);
    }

    else
    {
      v224(v92, v35);
      v89 = v228;
    }
  }

  LODWORD(v232) = *v3;
  v230 = v201[8];
  swift_beginAccess();
  v120 = 0;
  v231 = 0;
  v229 = (v87 + 32);
  v222 = v87 + 8;
  v216 = (v89 + 8);
  v197 = "v16@?0@NSString8";
  v192 = *MEMORY[0x277CC9988];
  v206 = v227 + 104;
  v195 = *MEMORY[0x277CC9998];
  v191 = *MEMORY[0x277CC9940];
  v202 = *MEMORY[0x277CC9968];
  v205 = (v227 + 8);
  v204 = (v87 + 40);
  v121 = 12;
  *&v122 = 136316162;
  v196 = v122;
  v209 = v5;
  do
  {
    v127 = v210;
    (v223[0])(v210, v90, v35);
    if (v232 <= 1)
    {
      v128 = v212;
      v129 = v230;
      if (v232)
      {
        sub_20DF47AB4();
      }

      else
      {
        sub_20DF47594();
      }
    }

    else
    {
      v128 = v212;
      if (v232 == 2)
      {
        v129 = v230;
        sub_20DF47A84();
      }

      else
      {
        v129 = v230;
        if (v232 == 3)
        {
          sub_20DF47A94();
        }

        else
        {
          sub_20DF47A74();
        }
      }
    }

    v130 = v211;
    v226 = *v229;
    (v226)(v211, v128, v35);
    LOBYTE(v235) = v232;
    v131 = v234;
    static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(v130, &v235, &v129[v3], v234);
    v132 = v224;
    v224(v130, v35);
    v133 = v132(v127, v35);
    MEMORY[0x28223BE20](v133);
    *(&v187 - 2) = v131;
    v134 = v217;

    v135 = v134;
    v136 = v231;
    v137 = sub_20DEEA4EC(sub_20DEEF9B4, (&v187 - 4), v135);
    v231 = v136;
    if (v120)
    {
    }

    v227 = *(v137 + 16);
    v228 = v137;
    v138 = v213;
    v219(v213, v221, v233);
    v139 = v214;
    sub_20DEEF8EC(v3, v214, type metadata accessor for EnergyTrends);
    v140 = v215;
    sub_20DED8804(v234, v215, &qword_27C84C980, &unk_20DF49A50);
    v141 = sub_20DF47BB4();
    v142 = sub_20DF47FE4();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v235 = v203;
      *v143 = v196;
      *(v143 + 4) = sub_20DED38E8(0xD00000000000002ALL, v197 | 0x8000000000000000, &v235);
      *(v143 + 12) = 2080;
      v144 = (v139 + v201[7]);
      v145 = *v144;
      v146 = v144[1];

      sub_20DEEF954(v139, type metadata accessor for EnergyTrends);
      v147 = sub_20DED38E8(v145, v146, &v235);

      *(v143 + 14) = v147;
      *(v143 + 22) = 2080;
      v148 = sub_20DF474C4();
      v150 = sub_20DED38E8(v148, v149, &v235);

      *(v143 + 24) = v150;
      *(v143 + 32) = 2048;
      v151 = v227;
      *(v143 + 34) = v227;
      *(v143 + 42) = 2080;
      v152 = sub_20DF474C4();
      v154 = v153;
      sub_20DED8730(v140, &qword_27C84C980, &unk_20DF49A50);
      v155 = sub_20DED38E8(v152, v154, &v235);

      *(v143 + 44) = v155;
      _os_log_impl(&dword_20DEAF000, v141, v142, "%s (%s) checking %s: found %ld usage values in interval starting on %s", v143, 0x34u);
      v156 = v203;
      swift_arrayDestroy();
      v3 = v198;
      MEMORY[0x20F329700](v156, -1, -1);
      v157 = v143;
      v35 = v200;
      MEMORY[0x20F329700](v157, -1, -1);

      v218(v138, v233);
      if (v151)
      {
        goto LABEL_44;
      }
    }

    else
    {

      sub_20DED8730(v140, &qword_27C84C980, &unk_20DF49A50);
      sub_20DEEF954(v139, type metadata accessor for EnergyTrends);
      v218(v138, v233);
      if (v227)
      {
LABEL_44:

        v163 = (v3 + v201[6]);
        v164 = v234;
        sub_20DF47A34();
        sub_20DED8730(v164, &qword_27C84C980, &unk_20DF49A50);
        return (v224)(v225, v35);
      }
    }

    v158 = *v3;
    if (v158 <= 1)
    {
      v159 = v209;
    }

    else
    {
      v159 = v209;
      if (v158 == 3)
      {

LABEL_15:
        v123 = v199;
        (*v206)(v199, v202, v159);
        v124 = v208;
        v125 = v234;
        goto LABEL_16;
      }
    }

    v160 = sub_20DF483D4();

    if (v160)
    {
      goto LABEL_15;
    }

    if (v158 <= 1)
    {
      v161 = v202;
      if (v158)
      {
        v162 = v223;
        goto LABEL_42;
      }
    }

    else
    {
      v161 = v195;
      if (v158 != 2)
      {
        v162 = v223 + 4;
LABEL_42:
        v161 = *(v162 - 64);
      }
    }

    v123 = v194;
    (*v206)(v194, v161, v159);
    v124 = v208;
    v125 = v234;
LABEL_16:
    sub_20DF47AD4();
    (*v205)(v123, v159);
    sub_20DED8730(v125, &qword_27C84C980, &unk_20DF49A50);
    v126 = v207;
    (v226)(v207, v124, v35);
    v90 = v225;
    (*v204)(v225, v126, v35);
    --v121;
    v120 = 1;
  }

  while (v121 > 1);

  v165 = v189;
  v219(v189, v221, v233);
  v166 = v3;
  v167 = v188;
  sub_20DEEF8EC(v166, v188, type metadata accessor for EnergyTrends);
  v168 = v187;
  v169 = v193;
  v170 = v223[0];
  (v223[0])(v187, v193, v35);
  v171 = sub_20DF47BB4();
  v172 = sub_20DF48004();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v235 = v174;
    *v173 = 136315650;
    *(v173 + 4) = sub_20DED38E8(0xD00000000000002ALL, v197 | 0x8000000000000000, &v235);
    *(v173 + 12) = 2080;
    v175 = (v167 + v201[7]);
    v176 = v168;
    v177 = v167;
    v178 = *v175;
    v179 = v175[1];

    sub_20DEEF954(v177, type metadata accessor for EnergyTrends);
    v180 = sub_20DED38E8(v178, v179, &v235);

    *(v173 + 14) = v180;
    *(v173 + 22) = 2080;
    v169 = v193;
    v181 = sub_20DF474C4();
    v183 = v182;
    v224(v176, v35);
    v184 = sub_20DED38E8(v181, v183, &v235);

    *(v173 + 24) = v184;
    _os_log_impl(&dword_20DEAF000, v171, v172, "%s (%s) could NOT find available data for %s", v173, 0x20u);
    swift_arrayDestroy();
    v170 = v223[0];
    MEMORY[0x20F329700](v174, -1, -1);
    MEMORY[0x20F329700](v173, -1, -1);

    v185 = v189;
  }

  else
  {

    v224(v168, v35);
    sub_20DEEF954(v167, type metadata accessor for EnergyTrends);
    v185 = v165;
  }

  v218(v185, v233);
  v170(v190, v169, v35);
  return (v224)(v225, v35);
}