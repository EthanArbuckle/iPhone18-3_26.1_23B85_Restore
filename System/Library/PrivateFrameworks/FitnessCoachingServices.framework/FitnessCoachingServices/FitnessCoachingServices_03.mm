uint64_t sub_227849074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_22784919C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_2278492C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_227849424()
{
  v1 = *MEMORY[0x277D09BB0];
  v2 = sub_227849B34();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_2278C7AD0();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    *(v0 + 16) = v12;
    *(v0 + 32) = v13;
    if (*(v0 + 40))
    {
      v5 = *(v0 + 48);
      v6 = sub_2278C6820();
      v7 = swift_dynamicCast();
      (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
      goto LABEL_9;
    }
  }

  else
  {

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  v8 = *(v0 + 48);
  sub_227802FC4(v0 + 16, &qword_27D7D60A0, qword_2278C98D0);
  v9 = sub_2278C6820();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_9:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2278495CC@<X0>(char *a1@<X8>)
{
  v48 = a1;
  v1 = sub_2278C75A0();
  v47 = *(v1 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v9 = sub_2278C6820();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = *MEMORY[0x277D09BB8];
  v46 = sub_2278C7700();
  v19 = v18;
  v20 = v17;
  v21 = sub_227849B34();
  if (!v21)
  {

    v51 = 0u;
    v52 = 0u;
LABEL_10:
    sub_227802FC4(&v51, &qword_27D7D60A0, qword_2278C98D0);
    v25 = *(v10 + 56);
    v25(v8, 1, 1, v9);
    goto LABEL_11;
  }

  v22 = v21;
  v45 = v1;
  v23 = [v21 objectForKey_];

  if (v23)
  {
    sub_2278C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51 = v49;
  v52 = v50;
  if (!*(&v50 + 1))
  {

    goto LABEL_10;
  }

  v24 = swift_dynamicCast();
  v25 = *(v10 + 56);
  v25(v8, v24 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

LABEL_11:
    sub_227802FC4(v8, &qword_27D7D60A8, qword_2278C9730);
    return (v25)(v48, 1, 1, v9);
  }

  v43 = *(v10 + 32);
  v44 = v10 + 32;
  v43(v16, v8, v9);
  sub_2278C7330();
  (*(v10 + 16))(v14, v16, v9);

  v27 = sub_2278C7590();
  v28 = sub_2278C7970();

  v42 = v28;
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v40 = v29;
    v41 = swift_slowAlloc();
    *&v51 = v41;
    *v29 = 136315394;
    v30 = sub_2278021B4(v46, v19, &v51);

    v31 = v40;
    *(v40 + 1) = v30;
    *(v31 + 6) = 2080;
    sub_22784A014();
    v46 = v27;
    v32 = sub_2278C7DA0();
    v34 = v33;
    (*(v10 + 8))(v14, v9);
    v35 = sub_2278021B4(v32, v34, &v51);

    *(v31 + 14) = v35;
    v36 = v46;
    _os_log_impl(&dword_2277F7000, v46, v42, "Scheduled Date from Date: (%s) = %s", v31, 0x16u);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v37, -1, -1);
    MEMORY[0x22AA9E860](v31, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  (*(v47 + 8))(v4, v45);
  v38 = v48;
  v43(v48, v16, v9);
  return (v25)(v38, 0, 1, v9);
}

id sub_227849B34()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!result)
  {
    sub_2278C73A0();
    v6 = sub_2278C7590();
    v7 = sub_2278C7950();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2277F7000, v6, v7, "Failed to create notification settings user defaults", v8, 2u);
      MEMORY[0x22AA9E860](v8, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return result;
}

uint64_t sub_227849C98(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2278C6820();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227849DB4, 0, 0);
}

uint64_t sub_227849DB4()
{
  v34 = v0;
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  sub_2278C7330();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  v14 = v0[3];
  v13 = v0[4];
  if (v8)
  {
    v32 = v0[6];
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    sub_22784A014();
    v17 = sub_2278C7DA0();
    v31 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_2278021B4(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v6, v30, "Set mostRecentAlertDate = %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    (*(v10 + 8))(v31, v32);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = *MEMORY[0x277D09BB0];
  v22 = sub_227849B34();
  if (v22)
  {
    v23 = v22;
    v24 = v0[2];
    v25 = sub_2278C67D0();
    [v23 setObject:v25 forKey:v21];
  }

  v26 = v0[8];
  v27 = v0[5];

  v28 = v0[1];

  return v28();
}

unint64_t sub_22784A014()
{
  result = qword_2813BC158;
  if (!qword_2813BC158)
  {
    sub_2278C6820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC158);
  }

  return result;
}

uint64_t sub_22784A06C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2278C6820();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784A188, 0, 0);
}

uint64_t sub_22784A188()
{
  v34 = v0;
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  sub_2278C7330();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  v14 = v0[3];
  v13 = v0[4];
  if (v8)
  {
    v32 = v0[6];
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    sub_22784A014();
    v17 = sub_2278C7DA0();
    v31 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_2278021B4(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v6, v30, "Set scheduledDate = %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    (*(v10 + 8))(v31, v32);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = *MEMORY[0x277D09BB8];
  v22 = sub_227849B34();
  if (v22)
  {
    v23 = v22;
    v24 = v0[2];
    v25 = sub_2278C67D0();
    [v23 setObject:v25 forKey:v21];
  }

  v26 = v0[8];
  v27 = v0[5];

  v28 = v0[1];

  return v28();
}

uint64_t sub_22784A3F8()
{
  v1 = *v0;
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](v1 + 1);
  return sub_2278C7E90();
}

uint64_t sub_22784A470()
{
  v1 = *v0;
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](v1 + 1);
  return sub_2278C7E90();
}

void *sub_22784A4B4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_22784A4F0()
{
  result = qword_27D7D6250;
  if (!qword_27D7D6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6250);
  }

  return result;
}

uint64_t sub_22784A544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22784A58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_22784A648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22784A690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22784A70C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v40 = *MEMORY[0x277D85DE8];
  v4 = sub_2278C6EF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2278C75A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7350();
  sub_2278C7580();
  (*(v10 + 8))(v13, v9);
  v14 = *(v2 + 40);
  sub_2278C6EE0();
  v15 = FIExperienceTypeWithHealthStoreAndDefaultExperienceType();
  sub_2278040AC(v2, v38);
  v16 = v39;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_22786311C(v20, v14);
  __swift_destroy_boxed_opaque_existential_0(v38);
  v38[0] = 0;
  v23 = [v14 wheelchairUseWithError_];
  if (v23)
  {
    v24 = v23;
    v25 = v38[0];
    v26 = [v24 wheelchairUse];

    a1[3] = &type metadata for GoalProgressService;
    a1[4] = &off_283AEA4D0;
    v27 = swift_allocObject();
    *a1 = v27;
    v28 = MEMORY[0x277D099E0];
    *(v27 + 40) = v4;
    *(v27 + 48) = v28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v27 + 16));
    (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
    v30 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    *(v27 + 80) = &type metadata for ContactStore;
    *(v27 + 88) = &off_283AEC2E0;
    *(v27 + 56) = v30;
    sub_2278040AC(v2, v27 + 96);
    sub_2278040AC(v2 + 48, v27 + 144);
    sub_2278040AC(v2 + 88, v27 + 184);
    sub_2278040AC(v2 + 128, v27 + 232);
    v31 = *(v2 + 168);
    *(v27 + 304) = type metadata accessor for WalkSuggestionProvider();
    *(v27 + 312) = &off_283AEB600;
    *(v27 + 280) = v22;
    v32 = v31;
    v33 = sub_2278C7440();
    result = (*(v5 + 8))(v8, v4);
    *(v27 + 136) = v15;
    *(v27 + 224) = v33;
    *(v27 + 272) = v32;
    *(v27 + 320) = v26;
  }

  else
  {
    v35 = v38[0];
    sub_2278C65F0();

    swift_willThrow();
    result = (*(v5 + 8))(v8, v4);
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22784AB80(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_22784ACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22781659C;

  return v11(a1, a2, a3);
}

uint64_t sub_22784ADFC()
{
  v1[3] = v0;
  v2 = sub_2278C7160();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_2278C65D0();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = sub_2278C6820();
  v1[14] = v11;
  v12 = *(v11 - 8);
  v1[15] = v12;
  v13 = *(v12 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v14 = sub_2278C6540();
  v1[18] = v14;
  v15 = *(v14 - 8);
  v1[19] = v15;
  v16 = *(v15 + 64) + 15;
  v1[20] = swift_task_alloc();
  v17 = sub_2278C6920();
  v1[21] = v17;
  v18 = *(v17 - 8);
  v1[22] = v18;
  v19 = *(v18 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784B0B8, 0, 0);
}

uint64_t sub_22784B0B8()
{
  v1 = v0[24];
  v2 = v0[22];
  v17 = v0[23];
  v18 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v16 = v0[14];
  v19 = v0[21];
  v21 = v0[12];
  v25 = v0[9];
  v26 = v0[13];
  v22 = v0[5];
  v23 = v0[6];
  v6 = v0[3];
  v24 = v0[4];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_227804920();
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v7 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v7(v3);
  sub_2278C67A0();
  v8 = *(v5 + 8);
  v8(v3, v16);
  sub_2278C6900();
  sub_2278C66F0();
  v9 = *(v2 + 8);
  v0[25] = v9;
  v0[26] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v17, v19);
  v8(v4, v16);
  sub_2278C6530();
  sub_2278C6730();
  v8(v4, v16);
  sub_2278C6510();
  sub_2278C6730();
  v8(v4, v16);
  v20 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6260, &qword_2278CBE38);
  v10 = *(v22 + 72);
  v11 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2278C9140;
  sub_2278C7150();
  v0[2] = v12;
  sub_22784B9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
  sub_227847F9C(&qword_2813B9BB8, &qword_27D7D6158, &qword_2278CBE40);
  sub_2278C7AF0();
  sub_2278C6FE0();
  (*(v22 + 8))(v23, v24);
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_22784B418;
  v14 = v0[9];

  return sub_22785B1C8();
}

uint64_t sub_22784B418(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_22784B714;
  }

  else
  {
    v5 = sub_22784B52C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22784B52C()
{
  v1 = v0[28];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = v0[28];
    }

    result = sub_2278C7B80();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = v0[28];

    v26 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x22AA9DBF0](0, v0[28]);
    v18 = v0[28];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[28] + 32);
  }

  v26 = v3;

LABEL_11:
  v20 = v0[25];
  v21 = v0[26];
  v6 = v0[24];
  v7 = v0[20];
  v19 = v0[21];
  v8 = v0[18];
  v9 = v0[19];
  v22 = v0[23];
  v23 = v0[17];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[9];
  v24 = v0[16];
  v15 = v0[7];
  v25 = v0[6];
  (*(v0[8] + 8))();
  v16 = *(v13 + 8);
  v16(v10, v12);
  v16(v11, v12);
  (*(v9 + 8))(v7, v8);
  v20(v6, v19);

  v17 = v0[1];

  return v17(v26);
}

uint64_t sub_22784B714()
{
  v16 = v0[25];
  v17 = v0[26];
  v1 = v0[24];
  v2 = v0[20];
  v15 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v18 = v0[23];
  v19 = v0[17];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  v20 = v0[16];
  v10 = v0[7];
  v21 = v0[6];
  (*(v0[8] + 8))();
  v11 = *(v8 + 8);
  v11(v5, v7);
  v11(v6, v7);
  (*(v3 + 8))(v2, v4);
  v16(v1, v15);

  v12 = v0[1];
  v13 = v0[29];

  return v12();
}

uint64_t sub_22784B878()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  sub_227836DCC(*(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_23FitnessCoachingServices31FirstGlanceActivityDataProviderC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22784B918(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_22784B974(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_22784B9AC()
{
  result = qword_2813BC0F8;
  if (!qword_2813BC0F8)
  {
    sub_2278C7160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC0F8);
  }

  return result;
}

uint64_t sub_22784BA04()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784BAC4, 0, 0);
}

uint64_t sub_22784BAC4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22784BBB8;
  v5 = v0[2];

  return sub_22784ADFC();
}

uint64_t sub_22784BBB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {
    v6 = *(v3 + 40);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22784BD08, 0, 0);
  }
}

uint64_t sub_22784BD08()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 96), *(*(v0 + 16) + 120));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_22784BDA8;

  return sub_2278A7844();
}

uint64_t sub_22784BDA8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_22784BF38;
  }

  else
  {
    v3 = sub_22784BEBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22784BEBC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = *(v2 + 144);
  *(v2 + 144) = v0[7];
  sub_227836DCC(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22784BF38()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

BOOL sub_22784BFA4(double a1)
{
  if (v1[18] == 1)
  {
    return 0;
  }

  sub_2278C79F0();
  v5 = v4;
  sub_2278C79F0();
  v7 = v6;
  sub_2278C79F0();
  v9 = v8;
  v10 = *(*__swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]) + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state);
  if (!v10)
  {
    if (v5 >= a1)
    {
      v12 = 0.0;
      if (v7 >= a1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    return 1;
  }

  [v10 projectedDayDuration];
  if (v5 < a1)
  {
    return 1;
  }

  v12 = v11;
  if (v7 >= a1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_2278C78A0();
  if (v13 * 0.5 < v12)
  {
    return 1;
  }

LABEL_11:
  if (v9 >= a1)
  {
    return 0;
  }

  sub_2278C78A0();
  return v14 * 12.0 < v12;
}

uint64_t sub_22784C0AC(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 352) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6268, &qword_2278CBE50);
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6270, &qword_2278CBE58);
  *(v2 + 72) = v6;
  v7 = *(v6 - 8);
  *(v2 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v9 = sub_2278C7160();
  *(v2 + 104) = v9;
  v10 = *(v9 - 8);
  *(v2 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  *(v2 + 128) = v12;
  v13 = *(v12 - 8);
  *(v2 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v15 = sub_2278C65D0();
  *(v2 + 160) = v15;
  v16 = *(v15 - 8);
  *(v2 + 168) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v18 = sub_2278C6910();
  *(v2 + 192) = v18;
  v19 = *(v18 - 8);
  *(v2 + 200) = v19;
  v20 = *(v19 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v21 = sub_2278C6920();
  *(v2 + 216) = v21;
  v22 = *(v21 - 8);
  *(v2 + 224) = v22;
  v23 = *(v22 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v24 = sub_2278C6820();
  *(v2 + 248) = v24;
  v25 = *(v24 - 8);
  *(v2 + 256) = v25;
  v26 = *(v25 + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784C478, 0, 0);
}

uint64_t sub_22784C478()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 240);
  v78 = *(v0 + 232);
  v4 = *(v0 + 224);
  v74 = *(v0 + 216);
  v5 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v6(v2);
  sub_2278C6900();
  sub_2278C6780();
  v7 = *(v4 + 8);
  *(v0 + 304) = v7;
  *(v0 + 312) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v74);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_227804920();
  v8 = sub_2278C66A0();
  v9 = *(v0 + 296);
  if (v8)
  {
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = *(v0 + 264);
    v13 = *(v0 + 232);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 192);
    sub_2278C66C0();
    sub_2278C6890();
    (*(v15 + 104))(v14, *MEMORY[0x277CC99A8], v16);
    sub_2278C66E0();
    (*(v15 + 8))(v14, v16);
    sub_2278C6690();
    v18 = v17;
    sub_2278C6690();
    v19 = *(v0 + 280);
    if (v18 < v20)
    {
      v21 = *(v0 + 264);
      v22 = *(v0 + 232);
      v60 = *(v0 + 176);
      v61 = *(v0 + 184);
      v62 = *(v0 + 152);
      v63 = *(v0 + 136);
      v23 = *(v0 + 120);
      v64 = *(v0 + 144);
      v65 = *(v0 + 128);
      v25 = *(v0 + 104);
      v24 = *(v0 + 112);
      v68 = *(v0 + 96);
      v70 = *(v0 + 80);
      v26 = *(v0 + 72);
      v72 = v26;
      v75 = *(v0 + 88);
      v27 = 3;
      if (*(v0 + 352) == 1)
      {
        v27 = 1;
      }

      v66 = v27;
      v28 = *(v0 + 40);
      sub_2278C6730();
      sub_2278C6730();
      v59 = v28[11];
      __swift_project_boxed_opaque_existential_1(v28 + 7, v28[10]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6260, &qword_2278CBE38);
      v29 = *(v24 + 72);
      v30 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_2278C9140;
      sub_2278C7150();
      *(v0 + 16) = v31;
      sub_22784B9AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
      sub_227847F9C(&qword_2813B9BB8, &qword_27D7D6158, &qword_2278CBE40);
      sub_2278C7AF0();
      sub_2278C6FE0();
      (*(v24 + 8))(v23, v25);
      (*(v63 + 16))(v64, v62, v65);
      *(swift_allocObject() + 16) = v66;
      sub_227847F9C(&qword_2813B9BA8, &qword_27D7D6258, &qword_2278CBE30);
      sub_2278C7D60();
      (*(v70 + 16))(v75, v68, v72);
      sub_227847F9C(&qword_2813B9A68, &qword_27D7D6270, &qword_2278CBE58);
      sub_2278C7850();
      v32 = sub_227847F9C(&qword_2813B9A70, &qword_27D7D6268, &qword_2278CBE50);
      *(v0 + 320) = v32;
      v33 = *(MEMORY[0x277D856D0] + 4);
      v34 = swift_task_alloc();
      *(v0 + 328) = v34;
      *v34 = v0;
      v34[1] = sub_22784CB54;
      v35 = *(v0 + 64);
      v36 = *(v0 + 48);

      return MEMORY[0x282200308](v0 + 24, v36, v32);
    }

    v41 = *(v0 + 288);
    v76 = *(v0 + 296);
    v42 = *(v0 + 272);
    v43 = *(v0 + 248);
    v44 = *(v0 + 232);
    v45 = *(v0 + 216);
    v46 = *(*(v0 + 256) + 8);
    v46(*(v0 + 264), v43);
    v46(v42, v43);
    v46(v19, v43);
    v7(v44, v45);
    v46(v41, v43);
    v46(v76, v43);
  }

  else
  {
    v37 = *(v0 + 288);
    v38 = *(v0 + 248);
    v39 = *(v0 + 256);
    v7(*(v0 + 232), *(v0 + 216));
    v40 = *(v39 + 8);
    v40(v37, v38);
    v40(v9, v38);
  }

  v48 = *(v0 + 288);
  v47 = *(v0 + 296);
  v50 = *(v0 + 272);
  v49 = *(v0 + 280);
  v51 = *(v0 + 264);
  v53 = *(v0 + 232);
  v52 = *(v0 + 240);
  v54 = *(v0 + 208);
  v55 = *(v0 + 176);
  v56 = *(v0 + 184);
  v67 = *(v0 + 152);
  v69 = *(v0 + 144);
  v71 = *(v0 + 120);
  v73 = *(v0 + 96);
  v77 = *(v0 + 88);
  v79 = *(v0 + 64);

  v57 = *(v0 + 8);

  return v57(0);
}

uint64_t sub_22784CB54()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[7];
    v4 = v2[8];
    v6 = v2[6];

    (*(v5 + 8))(v4, v6);
    v7 = sub_22784CF88;
  }

  else
  {
    v7 = sub_22784CC94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22784CC94()
{
  v1 = v0[3];
  if (v1)
  {
    v0[43] = v1;
    v2 = *(MEMORY[0x277D856D0] + 4);
    v3 = swift_task_alloc();
    v0[42] = v3;
    *v3 = v0;
    v3[1] = sub_22784D1C8;
    v4 = v0[40];
    v5 = v0[8];
    v6 = v0[6];

    return MEMORY[0x282200308](v0 + 4, v6, v4);
  }

  else
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    v41 = v0[39];
    v43 = v0[37];
    v37 = v0[38];
    v39 = v0[36];
    v7 = v0[32];
    v30 = v0[33];
    v31 = v0[34];
    v8 = v0[31];
    v33 = v0[29];
    v35 = v0[35];
    v32 = v0[27];
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[20];
    v12 = v0[21];
    v13 = v0[19];
    v15 = v0[16];
    v14 = v0[17];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v14 + 8))(v13, v15);
    v16 = *(v12 + 8);
    v16(v9, v11);
    v16(v10, v11);
    v17 = *(v7 + 8);
    v17(v30, v8);
    v17(v31, v8);
    v17(v35, v8);
    v37(v33, v32);
    v17(v39, v8);
    v17(v43, v8);
    v19 = v0[36];
    v18 = v0[37];
    v21 = v0[34];
    v20 = v0[35];
    v22 = v0[33];
    v24 = v0[29];
    v23 = v0[30];
    v25 = v0[26];
    v26 = v0[22];
    v27 = v0[23];
    v34 = v0[19];
    v36 = v0[18];
    v38 = v0[15];
    v40 = v0[12];
    v42 = v0[11];
    v44 = v0[8];

    v28 = v0[1];

    return v28(0);
  }
}

uint64_t sub_22784CF88()
{
  v35 = v0[39];
  v37 = v0[37];
  v31 = v0[38];
  v33 = v0[36];
  v1 = v0[32];
  v24 = v0[33];
  v25 = v0[34];
  v2 = v0[31];
  v27 = v0[29];
  v29 = v0[35];
  v26 = v0[27];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v6 + 8);
  v10(v3, v5);
  v10(v4, v5);
  v11 = *(v1 + 8);
  v11(v24, v2);
  v11(v25, v2);
  v11(v29, v2);
  v31(v27, v26);
  v11(v33, v2);
  v11(v37, v2);
  v13 = v0[36];
  v12 = v0[37];
  v15 = v0[34];
  v14 = v0[35];
  v16 = v0[33];
  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[26];
  v20 = v0[22];
  v21 = v0[23];
  v28 = v0[19];
  v30 = v0[18];
  v32 = v0[15];
  v34 = v0[12];
  v36 = v0[11];
  v38 = v0[8];

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_22784D1C8()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[43];
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[6];

    (*(v6 + 8))(v5, v7);
    v8 = sub_22784CF88;
  }

  else
  {
    v8 = sub_22784D318;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22784D318()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 344);
  if (v1)
  {
    sub_2278C7A10();
    v4 = v3;
    sub_2278C7A10();
    if (v4 >= v5)
    {
    }

    else
    {

      *(v0 + 344) = v1;
    }

    v29 = *(MEMORY[0x277D856D0] + 4);
    v30 = swift_task_alloc();
    *(v0 + 336) = v30;
    *v30 = v0;
    v30[1] = sub_22784D1C8;
    v31 = *(v0 + 320);
    v32 = *(v0 + 64);
    v33 = *(v0 + 48);

    return MEMORY[0x282200308](v0 + 32, v33, v31);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v45 = *(v0 + 312);
    v47 = *(v0 + 296);
    v41 = *(v0 + 304);
    v43 = *(v0 + 288);
    v34 = *(v0 + 264);
    v35 = *(v0 + 272);
    v49 = v2;
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v37 = *(v0 + 232);
    v39 = *(v0 + 280);
    v36 = *(v0 + 216);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 152);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    (*(v13 + 8))(v12, v14);
    v15 = *(v11 + 8);
    v15(v9, v10);
    v15(v8, v10);
    v16 = *(v6 + 8);
    v16(v34, v7);
    v16(v35, v7);
    v16(v39, v7);
    v41(v37, v36);
    v16(v43, v7);
    v16(v47, v7);
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v21 = *(v0 + 264);
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v24 = *(v0 + 208);
    v25 = *(v0 + 176);
    v26 = *(v0 + 184);
    v38 = *(v0 + 152);
    v40 = *(v0 + 144);
    v42 = *(v0 + 120);
    v44 = *(v0 + 96);
    v46 = *(v0 + 88);
    v48 = *(v0 + 64);

    v27 = *(v0 + 8);

    return v27(v49);
  }
}

uint64_t sub_22784D648(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22784D66C, 0, 0);
}

uint64_t sub_22784D66C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2278C7A00() >= v1;
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22784D6D4(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22781659C;

  return sub_22784D648(a1, v4);
}

uint64_t sub_22784D770(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22781659C;

  return v9(a1, a2);
}

uint64_t sub_22784D888(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22781659C;

  return v9(a1, a2);
}

uint64_t sub_22784D9A0@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6298, qword_2278CBF40);
  v1 = *(*(v48 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v48);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - v4;
  v54 = sub_2278C7630();
  v47 = *(v54 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](v54);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v45 - v8;
  v56 = sub_2278C6820();
  v52 = *(v56 - 8);
  v9 = v52;
  v10 = *(v52 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = sub_2278C6870();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2278C6920();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v45 - v27;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9830], v16);
  sub_2278C6880();
  (*(v17 + 8))(v20, v16);
  sub_2278C6810();
  v29 = *(v9 + 16);
  v51 = v15;
  v29(v13, v15, v56);
  v30 = v22[2];
  v30(v26, v28, v21);
  sub_2278C7620();
  sub_2278C6900();
  sub_2278C67A0();
  v31 = v22[1];
  v31(v26, v21);
  v30(v26, v28, v21);
  v32 = v54;
  v33 = v53;
  sub_2278C7620();
  sub_227850400(&qword_2813B9BD8, MEMORY[0x277CCB6A8]);
  LOBYTE(v13) = sub_2278C76D0();
  (*(v52 + 8))(v51, v56);
  result = (v31)(v28, v21);
  if (v13)
  {
    v36 = v46;
    v35 = v47;
    v37 = *(v47 + 32);
    v37(v46, v33, v32);
    v38 = v48;
    v37((v36 + *(v48 + 48)), v55, v32);
    v39 = v49;
    sub_227850448(v36, v49, &qword_27D7D6298, qword_2278CBF40);
    v40 = *(v38 + 48);
    v41 = v50;
    v37(v50, v39, v32);
    v42 = *(v35 + 8);
    v42(v39 + v40, v32);
    sub_2278504B0(v36, v39);
    v43 = *(v38 + 48);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6288, &qword_2278CBF38);
    v37(&v41[*(v44 + 36)], (v39 + v43), v32);
    return (v42)(v39, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22784DF30()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = sub_2278C75A0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_2278C6AD0();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_2278C6B10();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v11 = sub_2278C6B90();
  v1[13] = v11;
  v12 = *(v11 - 8);
  v1[14] = v12;
  v13 = *(v12 + 64) + 15;
  v1[15] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6288, &qword_2278CBF38) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v15 = sub_2278C6AA0();
  v1[17] = v15;
  v16 = *(v15 - 8);
  v1[18] = v16;
  v17 = *(v16 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v18 = sub_2278C6870();
  v1[21] = v18;
  v19 = *(v18 - 8);
  v1[22] = v19;
  v20 = *(v19 + 64) + 15;
  v1[23] = swift_task_alloc();
  v21 = sub_2278C6920();
  v1[24] = v21;
  v22 = *(v21 - 8);
  v1[25] = v22;
  v23 = *(v22 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784E290, 0, 0);
}

uint64_t sub_22784E290()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[18];
  v16 = v0[24];
  v17 = v0[19];
  v9 = v0[16];
  v18 = v0[17];
  v19 = v0[15];
  v20 = v0[2];
  (*(v4 + 104))(v5, *MEMORY[0x277CC9830], v6);
  sub_2278C6880();
  (*(v4 + 8))(v5, v6);
  sub_22784D9A0(v9);
  (*(v3 + 16))(v1, v2, v16);
  sub_2278C6A90();
  (*(v8 + 16))(v17, v7, v18);
  sub_2278C6B80();
  v10 = *(v20 + 16);
  v11 = *(MEMORY[0x277D100F8] + 4);
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_22784E434;
  v13 = v0[15];
  v14 = v0[12];

  return MEMORY[0x282168950](v14, v10, 0, 0);
}

uint64_t sub_22784E434()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_22784E770;
  }

  else
  {
    v3 = sub_22784E548;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22784E548()
{
  v1 = v0[12];
  v2 = v0[8];
  result = sub_2278C6B00();
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    v7 = v5;
    if (v6 == v5)
    {
      break;
    }

    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = v0[9];
    v9 = v0[7];
    v10 = (*(v2 + 16))(v8, v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v5++, v9);
    v11 = MEMORY[0x22AA9CA30](v10);
    v12 = sub_2278C74B0();
    result = (*(v2 + 8))(v8, v9);
  }

  while (v11 < v12);
  v36 = v6 != v7;
  v13 = v0[25];
  v34 = v0[24];
  v35 = v0[27];
  v14 = v0[18];
  v32 = v0[17];
  v33 = v0[20];
  v15 = v0[14];
  v16 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[10];
  v20 = v0[11];

  (*(v20 + 8))(v18, v19);
  (*(v15 + 8))(v16, v17);
  (*(v14 + 8))(v33, v32);
  (*(v13 + 8))(v35, v34);
  v22 = v0[26];
  v21 = v0[27];
  v23 = v0[23];
  v25 = v0[19];
  v24 = v0[20];
  v27 = v0[15];
  v26 = v0[16];
  v28 = v0[12];
  v29 = v0[9];
  v30 = v0[6];

  v31 = v0[1];

  return v31(v36);
}

uint64_t sub_22784E770()
{
  v48 = v0;
  v1 = v0[29];
  v2 = v0[6];
  sub_2278C7340();
  v3 = v1;
  v4 = sub_2278C7590();
  LOBYTE(v2) = sub_2278C7970();

  v41 = v2;
  v5 = os_log_type_enabled(v4, v2);
  v6 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[14];
  v46 = v0[15];
  v44 = v0[29];
  v45 = v0[13];
  v13 = v0[5];
  v14 = v0[4];
  v42 = v14;
  v43 = v0[6];
  if (v5)
  {
    v40 = v0[20];
    v15 = v0[3];
    v39 = v0[25];
    v16 = swift_slowAlloc();
    v38 = v8;
    v17 = swift_slowAlloc();
    v37 = v6;
    v18 = swift_slowAlloc();
    v47 = v18;
    *v16 = 136315394;
    v19 = sub_2278C7EA0();
    v36 = v11;
    v21 = sub_2278021B4(v19, v20, &v47);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v44;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_2277F7000, v4, v41, "%s received error when querying body balance: %@", v16, 0x16u);
    sub_227802FC4(v17, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA9E860](v18, -1, -1);
    MEMORY[0x22AA9E860](v16, -1, -1);

    (*(v13 + 8))(v43, v42);
    (*(v12 + 8))(v46, v45);
    (*(v10 + 8))(v40, v36);
    (*(v39 + 8))(v37, v38);
  }

  else
  {

    (*(v13 + 8))(v43, v42);
    (*(v12 + 8))(v46, v45);
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
  }

  v25 = v0[26];
  v24 = v0[27];
  v26 = v0[23];
  v28 = v0[19];
  v27 = v0[20];
  v30 = v0[15];
  v29 = v0[16];
  v31 = v0[12];
  v32 = v0[9];
  v33 = v0[6];

  v34 = v0[1];

  return v34(0);
}

uint64_t sub_22784EAB0()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = sub_2278C75A0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_2278C6A80();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6278, &qword_2278CBF28);
  v1[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6280, &qword_2278CBF30) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v11 = sub_2278C6AF0();
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();
  v14 = sub_2278C6B60();
  v1[18] = v14;
  v15 = *(v14 - 8);
  v1[19] = v15;
  v16 = *(v15 + 64) + 15;
  v1[20] = swift_task_alloc();
  v17 = sub_2278C6AB0();
  v1[21] = v17;
  v18 = *(v17 - 8);
  v1[22] = v18;
  v19 = *(v18 + 64) + 15;
  v1[23] = swift_task_alloc();
  v20 = sub_2278C6B40();
  v1[24] = v20;
  v21 = *(v20 - 8);
  v1[25] = v21;
  v22 = *(v21 + 64) + 15;
  v1[26] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6288, &qword_2278CBF38) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v24 = sub_2278C6870();
  v1[29] = v24;
  v25 = *(v24 - 8);
  v1[30] = v25;
  v26 = *(v25 + 64) + 15;
  v1[31] = swift_task_alloc();
  v27 = sub_2278C6920();
  v1[32] = v27;
  v28 = *(v27 - 8);
  v1[33] = v28;
  v29 = *(v28 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784EEF8, 0, 0);
}

uint64_t sub_22784EEF8()
{
  v1 = v0[35];
  v2 = v0[33];
  v16 = v0[34];
  v17 = v0[32];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v9 = v0[22];
  v8 = v0[23];
  v18 = v0[21];
  v19 = v0[26];
  v20 = v0[2];
  (*(v3 + 104))(v4, *MEMORY[0x277CC9830], v5);
  sub_2278C6880();
  (*(v3 + 8))(v4, v5);
  sub_22784D9A0(v6);
  sub_227850448(v6, v7, &qword_27D7D6288, &qword_2278CBF38);
  (*(v2 + 16))(v16, v1, v17);
  (*(v9 + 104))(v8, *MEMORY[0x277D0FEE8], v18);
  sub_2278C6B30();
  v10 = *(v20 + 16);
  v11 = *(MEMORY[0x277D100E8] + 4);
  v12 = swift_task_alloc();
  v0[36] = v12;
  *v12 = v0;
  v12[1] = sub_22784F0B0;
  v13 = v0[26];
  v14 = v0[20];

  return MEMORY[0x2821688D8](v14, v10);
}

uint64_t sub_22784F0B0()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_22784F798;
  }

  else
  {
    v3 = sub_22784F1C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22784F1C4()
{
  v1 = v0[20];
  result = sub_2278C6B50();
  v69 = *(result + 16);
  v72 = result;
  if (v69)
  {
    v3 = result;
    v4 = 0;
    v5 = v0[16];
    v63 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v65 = v0[10];
    v6 = v0[8];
    v62 = (v6 + 104);
    v61 = (v6 + 56);
    v7 = (v6 + 48);
    v51 = (v6 + 32);
    v54 = (v6 + 8);
    v67 = v5;
    v60 = (v5 + 8);
    v59 = *MEMORY[0x277D0FE90];
    v8 = &qword_27D7D6280;
    v9 = &qword_2278CBF30;
    v52 = (v6 + 48);
    while (1)
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = v0[14];
      v14 = v0[13];
      v15 = v0[11];
      v16 = v0[7];
      (*(v67 + 16))(v0[17], v63 + *(v67 + 72) * v4, v0[15]);
      sub_2278C6AE0();
      (*v62)(v14, v59, v16);
      (*v61)(v14, 0, 1, v16);
      v17 = *(v65 + 48);
      sub_227850448(v13, v15, v8, v9);
      v74 = v17;
      sub_227850448(v14, v15 + v17, v8, v9);
      v18 = v8;
      v19 = *v7;
      if ((*v7)(v15, 1, v16) == 1)
      {
        break;
      }

      v20 = v0[7];
      sub_227850448(v0[11], v0[12], v18, v9);
      v21 = v19(v15 + v74, 1, v20);
      v22 = v0[15];
      v56 = v22;
      v58 = v0[17];
      v55 = v0[14];
      v23 = v9;
      v25 = v0[12];
      v24 = v0[13];
      if (v21 == 1)
      {
        v26 = v0[7];
        sub_227802FC4(v0[13], v18, v9);
        sub_227802FC4(v55, v18, v9);
        (*v60)(v58, v56);
        (*v54)(v25, v26);
        v3 = v72;
LABEL_4:
        result = sub_227802FC4(v0[11], &qword_27D7D6278, &qword_2278CBF28);
        v8 = &qword_27D7D6280;
        goto LABEL_5;
      }

      v53 = v0[11];
      v27 = v0[9];
      v28 = v0[7];
      (*v51)(v27, v15 + v74, v28);
      sub_227850400(&qword_27D7D6290, MEMORY[0x277D0FEA0]);
      v75 = sub_2278C76E0();
      v29 = *v54;
      v30 = v27;
      v7 = v52;
      (*v54)(v30, v28);
      sub_227802FC4(v24, v18, v23);
      sub_227802FC4(v55, v18, v23);
      (*v60)(v58, v56);
      v29(v25, v28);
      result = sub_227802FC4(v53, v18, v23);
      v3 = v72;
      v8 = v18;
      v9 = v23;
      if (v75)
      {
        goto LABEL_14;
      }

LABEL_5:
      if (v69 == ++v4)
      {
        goto LABEL_12;
      }
    }

    v10 = v0[17];
    v11 = v0[14];
    v12 = v0[15];
    v57 = v0[7];
    sub_227802FC4(v0[13], v18, v9);
    sub_227802FC4(v11, v18, v9);
    (*v60)(v10, v12);
    v3 = v72;
    if (v19(v15 + v74, 1, v57) == 1)
    {
      sub_227802FC4(v0[11], &qword_27D7D6280, &qword_2278CBF30);
LABEL_14:
      v76 = 1;
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_12:
  v76 = 0;
LABEL_15:
  v70 = v0[35];
  v32 = v0[32];
  v31 = v0[33];
  v33 = v0[28];
  v35 = v0[25];
  v34 = v0[26];
  v36 = v0[24];
  v37 = v0[19];
  v38 = v0[20];
  v39 = v0[18];

  (*(v37 + 8))(v38, v39);
  (*(v35 + 8))(v34, v36);
  sub_227802FC4(v33, &qword_27D7D6288, &qword_2278CBF38);
  (*(v31 + 8))(v70, v32);
  v41 = v0[34];
  v40 = v0[35];
  v42 = v0[31];
  v44 = v0[27];
  v43 = v0[28];
  v45 = v0[26];
  v46 = v0[23];
  v47 = v0[20];
  v48 = v0[17];
  v49 = v0[14];
  v64 = v0[13];
  v66 = v0[12];
  v68 = v0[11];
  v71 = v0[9];
  v73 = v0[6];

  v50 = v0[1];

  return v50(v76);
}

uint64_t sub_22784F798()
{
  v51 = v0;
  v1 = v0[37];
  v2 = v0[6];
  sub_2278C7340();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[28];
  v12 = v0[25];
  v11 = v0[26];
  v46 = v0[37];
  v48 = v0[24];
  v13 = v0[5];
  v14 = v0[4];
  v42 = v14;
  v44 = v0[6];
  if (v6)
  {
    v40 = v0[28];
    v15 = v0[3];
    v39 = v0[33];
    v16 = swift_slowAlloc();
    v38 = v9;
    v17 = swift_slowAlloc();
    v37 = v7;
    v18 = swift_slowAlloc();
    v50 = v18;
    *v16 = 136315394;
    v19 = sub_2278C7EA0();
    v36 = v11;
    v21 = sub_2278021B4(v19, v20, &v50);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v46;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_2277F7000, v4, v5, "%s received error when querying workout load: %@", v16, 0x16u);
    sub_227802FC4(v17, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA9E860](v18, -1, -1);
    MEMORY[0x22AA9E860](v16, -1, -1);

    (*(v13 + 8))(v44, v42);
    (*(v12 + 8))(v36, v48);
    sub_227802FC4(v40, &qword_27D7D6288, &qword_2278CBF38);
    (*(v39 + 8))(v37, v38);
  }

  else
  {

    (*(v13 + 8))(v44, v42);
    (*(v12 + 8))(v11, v48);
    sub_227802FC4(v10, &qword_27D7D6288, &qword_2278CBF38);
    (*(v8 + 8))(v7, v9);
  }

  v25 = v0[34];
  v24 = v0[35];
  v26 = v0[31];
  v28 = v0[27];
  v27 = v0[28];
  v29 = v0[26];
  v30 = v0[23];
  v31 = v0[20];
  v32 = v0[17];
  v33 = v0[14];
  v41 = v0[13];
  v43 = v0[12];
  v45 = v0[11];
  v47 = v0[9];
  v49 = v0[6];

  v34 = v0[1];

  return v34(0);
}

uint64_t sub_22784FB14()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = sub_2278C75A0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_2278C75F0();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_2278C75E0();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = sub_2278C7610();
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784FD10, 0, 0);
}

uint64_t sub_22784FD10()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[4];
  sub_2278C75C0();
  v7 = *(v6 + 16);
  sub_2278C7600();
  sub_2278C75D0();
  (*(v4 + 8))(v3, v5);
  v8 = sub_227850400(qword_2813B9BE0, MEMORY[0x277CCB668]);
  v9 = *(MEMORY[0x277D856D0] + 4);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_22784FE50;
  v11 = v0[14];
  v12 = v0[12];

  return MEMORY[0x282200308](v0 + 2, v12, v8);
}

uint64_t sub_22784FE50()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_227850074;
  }

  else
  {
    v3 = sub_22784FF64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22784FF88()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 160) state];
  }

  else
  {
    v2 = 0;
  }

  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);

  v10 = *(v0 + 8);

  return v10(v2);
}

uint64_t sub_227850074()
{
  *(v0 + 24) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_227850108, 0, 0);
}

uint64_t sub_227850108()
{
  v35 = v0;
  v1 = v0[19];
  v2 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);
  sub_2278C7340();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  if (v6)
  {
    v33 = v0[15];
    v14 = v0[5];
    v32 = v0[6];
    v15 = swift_slowAlloc();
    v31 = v8;
    v16 = swift_slowAlloc();
    v29 = v7;
    v17 = swift_slowAlloc();
    v34 = v17;
    *v15 = 136315394;
    v18 = sub_2278C7EA0();
    v30 = v11;
    v20 = sub_2278021B4(v18, v19, &v34);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v29;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    _os_log_impl(&dword_2277F7000, v4, v5, "[%s] Error when trying to get model from pregnancy state query: %@", v15, 0x16u);
    sub_227802FC4(v16, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9E860](v17, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    (*(v12 + 8))(v30, v32);
    (*(v9 + 8))(v31, v33);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[8];

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_2278503A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_227850400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227850448(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2278504B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6298, qword_2278CBF40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_227850584()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalkSuggestionProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_227850628(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v48 = sub_2278C75A0();
  v47 = *(v48 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](v48);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = sub_2278C6920();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2278C6820();
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2278C6540();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 2)
  {
    sub_2278C73A0();
    v25 = sub_2278C7590();
    v26 = sub_2278C7970();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2277F7000, v25, v26, "No walk suggestion for wheelchair user", v27, 2u);
      MEMORY[0x22AA9E860](v27, -1, -1);
    }

    (*(v47 + 8))(v8, v48);
  }

  else
  {
    v41 = v22;
    v42 = v21;
    v28 = [objc_allocWithZone(MEMORY[0x277D09588]) initWithHealthStore_];
    if (v28)
    {
      v40 = v28;
      [v28 populateExistingCharacteristics];
      v29 = (v2 + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider), *(v2 + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider + 24));
      v48 = v3;
      v30 = off_283AE99E0;
      type metadata accessor for DateProvider();
      v47 = v2;
      v30(v18);
      v31 = v29[3];
      v32 = v29;
      v33 = v40;
      __swift_project_boxed_opaque_existential_1(v32, v31);
      sub_227804920();
      sub_2278C66F0();
      (*(v44 + 8))(v14, v45);
      (*(v43 + 8))(v18, v15);
      v34 = objc_allocWithZone(MEMORY[0x277D095D0]);
      v35 = sub_2278C6500();
      v36 = [v34 initForDateInterval:v35 delegate:v47];

      [v36 handleUpdatedCurrentActivitySummary_];
      sub_227850F60(v33, v36);
      (*(v41 + 8))(v24, v42);
    }

    else
    {
      sub_2278C73A0();
      v37 = sub_2278C7590();
      v38 = sub_2278C7950();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2277F7000, v37, v38, "Failed to create activity settings controller for walk suggestion", v39, 2u);
        MEMORY[0x22AA9E860](v39, -1, -1);
      }

      (*(v47 + 8))(v10, v48);
      sub_227850F0C();
      swift_allocError();
      swift_willThrow();
    }
  }
}

unint64_t sub_227850F0C()
{
  result = qword_27D7D6318;
  if (!qword_27D7D6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6318);
  }

  return result;
}

id sub_227850F60(uint64_t a1, id a2)
{
  if (![a2 shouldSuggestWalkWithActivitySettingsController_])
  {
    return 0;
  }

  result = [a2 briskWalkTimeToCompleteMoveGoalWithAcitivitySettingsController_];
  v6 = ceil(v5 / 60.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v6 > -9.22337204e18)
  {
    if (v6 < 9.22337204e18)
    {
      return v6;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AchievementError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AchievementError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22785117C()
{
  result = qword_27D7D6320;
  if (!qword_27D7D6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6320);
  }

  return result;
}

uint64_t sub_2278511D0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_2278512E8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2278C75A0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278513A8, v1, 0);
}

uint64_t sub_2278513A8()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_2278C7360();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
  sub_227824F80(v0 + 2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2278268AC;
  v6 = v0[7];

  return sub_227880BF4(v6);
}

uint64_t sub_227851548(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_22785156C, 0, 0);
}

uint64_t sub_22785156C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_227824038;
    v4 = v0[6];

    return sub_2278512E8(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22785165C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_22785167C, v2, 0);
}

uint64_t sub_22785167C()
{
  v1 = v0[2];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[3] = v4;
  swift_weakInit();
  v5 = *(MEMORY[0x277D09A50] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  v7 = sub_227851834();
  *v6 = v0;
  v6[1] = sub_227824318;
  v8 = MEMORY[0x277D09B78];

  return MEMORY[0x2821603D0](3, &unk_2278CC158, v4, v2, v7, v3, v8);
}

uint64_t sub_22785179C(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_227851548(a1, v1);
}

unint64_t sub_227851834()
{
  result = qword_2813B9AD0;
  if (!qword_2813B9AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9AD0);
  }

  return result;
}

uint64_t sub_227851880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_2278519A8(uint64_t a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  if (a1 <= 3)
  {
    if ((a1 - 1) < 3)
    {

      return MEMORY[0x2821604E0](v8);
    }

    if (!a1)
    {
      v11 = v8;
      sub_2278C73B0();
      v12 = sub_2278C7590();
      v13 = sub_2278C7960();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2277F7000, v12, v13, "Move Mode notification attempted to present with undefined notification type", v14, 2u);
        MEMORY[0x22AA9E860](v14, -1, -1);
      }

      (*(v3 + 8))(v10, v11);
      return sub_2278C72C0();
    }

LABEL_18:
    v15 = v8;
    sub_2278C73B0();
    v16 = sub_2278C7590();
    v17 = sub_2278C7960();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2277F7000, v16, v17, "Move Mode notification attempted to present with an unknown notification type", v18, 2u);
      MEMORY[0x22AA9E860](v18, -1, -1);
    }

    (*(v3 + 8))(v7, v15);
    return sub_2278C72C0();
  }

  if ((a1 - 4) >= 2)
  {
    if (a1 == 6)
    {

      return sub_2278C72C0();
    }

    goto LABEL_18;
  }

  return MEMORY[0x2821604E8](v8);
}

uint64_t sub_227851C34(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = sub_2278C6860();
  v2[46] = v3;
  v4 = *(v3 - 8);
  v2[47] = v4;
  v5 = *(v4 + 64) + 15;
  v2[48] = swift_task_alloc();
  v6 = sub_2278C75A0();
  v2[49] = v6;
  v7 = *(v6 - 8);
  v2[50] = v7;
  v8 = *(v7 + 64) + 15;
  v2[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227851D50, 0, 0);
}

uint64_t sub_227851D50()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 352);
  sub_2278C73B0();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 352);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2277F7000, v4, v5, "Posting move mode notification: %@", v7, 0xCu);
    sub_227848BE0(v8);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  v11 = *(v0 + 400);
  v10 = *(v0 + 408);
  v12 = *(v0 + 392);
  v14 = *(v0 + 352);
  v13 = *(v0 + 360);

  (*(v11 + 8))(v10, v12);
  v15 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  *(v0 + 416) = v15;
  sub_2278519A8([v14 notificationType]);
  v16 = sub_2278C76F0();

  [v15 setCategoryIdentifier_];

  [v14 notificationType];
  sub_2278C6F10();
  v17 = sub_2278C76F0();

  [v15 setTitle_];

  [v14 notificationType];
  sub_2278C6F20();
  v18 = sub_2278C76F0();

  [v15 setBody_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278C9F50;
  *(v0 + 320) = sub_2278C72D0();
  *(v0 + 328) = v20;
  sub_2278C7BF0();
  v21 = [v14 nextActivityMoveMode];
  v22 = MEMORY[0x277D83B88];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v21;
  *(v0 + 336) = sub_2278C72E0();
  *(v0 + 344) = v23;
  sub_2278C7BF0();
  v24 = [v14 notificationType];
  *(inited + 168) = v22;
  *(inited + 144) = v24;
  sub_2278C3BA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6150, &unk_2278CAAE0);
  swift_arrayDestroy();
  v25 = sub_2278C7640();

  [v15 setUserInfo_];

  [v14 delay];
  if (v26 <= 0.0)
  {
    v28 = 0;
  }

  else
  {
    [*(v0 + 352) delay];
    v28 = [objc_opt_self() triggerWithTimeInterval:0 repeats:v27];
  }

  *(v0 + 424) = v28;
  v30 = *(v0 + 376);
  v29 = *(v0 + 384);
  v31 = *(v0 + 360);
  v32 = *(v0 + 368);
  sub_2278C6850();
  sub_2278C6840();
  (*(v30 + 8))(v29, v32);
  v33 = v28;
  v34 = v15;
  v35 = sub_2278C76F0();

  v36 = [objc_opt_self() requestWithIdentifier:v35 content:v34 trigger:v33];
  *(v0 + 432) = v36;

  v37 = *__swift_project_boxed_opaque_existential_1(v31, v31[3]);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_22785227C;
  v38 = swift_continuation_init();
  *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_227822B84;
  *(v0 + 280) = &block_descriptor_9;
  *(v0 + 288) = v38;
  [v37 addNotificationRequest:v36 withCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22785227C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_227852418;
  }

  else
  {
    v3 = sub_22785238C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22785238C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 384);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_227852418()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[51];
  v6 = v0[48];
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[55];

  return v7();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  return sub_227802850(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2278524E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227852530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227852588()
{
  v1 = [*v0 transportData];
  v2 = sub_2278C6670();

  return v2;
}

void sub_2278525E8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2278C6660();
    sub_22785267C(a1, a2);
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTransportData_];

  *a3 = v7;
}

uint64_t sub_22785267C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2278372D4(a1, a2);
  }

  return a1;
}

uint64_t sub_227852690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_2278527B8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22781659C;

  return v9(a1, a2);
}

void sub_2278528F4()
{
  v1 = *v0;
  v2 = sub_2278C7790();
  [v1 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t sub_227852954(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_227852A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_227852B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_227852CC4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22781659C;

  return v9(a1, a2);
}

uint64_t sub_227852DDC()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v2)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA9DBF0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v2 = sub_2278C7B80();
            goto LABEL_4;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        [*(v0 + 192) removeObserver_];
        swift_unknownObjectRelease();
        ++v3;
      }

      while (v5 != v2);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));

  v6 = *(v0 + 208);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227852F08()
{
  sub_227852DDC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227852F58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v4 = sub_2278C6820();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  v42 = *(v2 + 200);
  v25 = [v42 isGoodMorningAlertNotificationEnabled];
  v40 = a1;
  v38 = v8;
  if (v25)
  {
    sub_227853388(v24);
  }

  else
  {
    (*(v5 + 56))(v24, 1, 1, v4);
  }

  sub_2278102C8(v24, v19);
  v26 = *(v5 + 48);
  if (v26(v19, 1, v4) == 1)
  {
    v27 = [v42 lastAlarmWakeUpDate];
    if (v27)
    {
      v28 = v27;
      sub_2278C6800();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v39 = *(v5 + 56);
    v39(v16, v29, 1, v4);
    sub_227854DEC(v16, v22);
    if (v26(v19, 1, v4) != 1)
    {
      sub_22783F30C(v19);
    }
  }

  else
  {
    (*(v5 + 32))(v22, v19, v4);
    v39 = *(v5 + 56);
    v39(v22, 0, 1, v4);
  }

  sub_2278102C8(v22, v13);
  if (v26(v13, 1, v4) == 1)
  {
    sub_22783F30C(v13);
    v31 = v40;
    v30 = v41;
  }

  else
  {
    v32 = *(v5 + 32);
    v33 = v38;
    v32(v38, v13, v4);
    v31 = v40;
    if (sub_2278C6700())
    {
      sub_22783F30C(v22);
      sub_22783F30C(v24);
      v30 = v41;
      v32(v41, v33, v4);
      goto LABEL_18;
    }

    (*(v5 + 8))(v33, v4);
    v30 = v41;
  }

  v34 = [v42 isUserAwake];
  sub_22783F30C(v22);
  sub_22783F30C(v24);
  if (!v34)
  {
    v35 = 1;
    return (v39)(v30, v35, 1, v4);
  }

  (*(v5 + 16))(v30, v31, v4);
LABEL_18:
  v35 = 0;
  return (v39)(v30, v35, 1, v4);
}

uint64_t sub_227853388@<X0>(char *a1@<X8>)
{
  v3 = sub_2278C6820();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = [*(v1 + 200) lastGoodMorningDismissedDate];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  sub_2278C6800();

  v13 = *(v4 + 32);
  v13(v10, v8, v3);
  if ((sub_2278C6740() & 1) == 0)
  {
    (*(v4 + 8))(v10, v3);
LABEL_5:
    v14 = 1;
    return (*(v4 + 56))(a1, v14, 1, v3);
  }

  v13(a1, v10, v3);
  v14 = 0;
  return (*(v4 + 56))(a1, v14, 1, v3);
}

uint64_t sub_227853550()
{
  v1 = v0[8];
  if (!*(v1 + 208))
  {
    v21 = *(v1 + 192);
    v2 = v0[8];
    if (qword_2813BB670 != -1)
    {
      swift_once();
      v2 = v0[8];
    }

    v3 = qword_2813BC3B0;
    v4 = objc_opt_self();
    v5 = [v4 mainQueue];
    v0[6] = sub_227854E5C;
    v0[7] = v2;
    v6 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_227872968;
    v0[5] = &block_descriptor_10;
    v7 = _Block_copy(v0 + 2);
    v8 = v0[7];

    v9 = [v21 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
    _Block_release(v7);

    if (qword_2813BB680 != -1)
    {
      swift_once();
    }

    v10 = v0[8];
    v11 = qword_2813BC3B8;
    v12 = [v4 mainQueue];
    v0[6] = sub_227854EAC;
    v0[7] = v10;
    v0[2] = v6;
    v0[3] = 1107296256;
    v0[4] = sub_227872968;
    v0[5] = &block_descriptor_17;
    v13 = _Block_copy(aBlock);
    v14 = v0[7];

    v15 = [v21 addObserverForName:v11 object:0 queue:v12 usingBlock:v13];
    _Block_release(v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2278C9970;
    *(v16 + 32) = v9;
    *(v16 + 40) = v15;
    v17 = *(v1 + 208);
    *(v1 + 208) = v16;
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_227853820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_227853840, 0, 0);
}

uint64_t sub_227853840()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_227853904, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_227853904()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 192);
  if (qword_2813BB688 != -1)
  {
    v3 = *(v1 + 192);
    swift_once();
    v2 = v3;
    v1 = *(v0 + 56);
  }

  [v2 postNotificationName:qword_2813BC3C0 object:v1];

  return MEMORY[0x2822009F8](sub_227855054, 0, 0);
}

uint64_t sub_2278539CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_2278C7840();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_22788AE20(0, 0, v8, a4, v11);
}

uint64_t sub_227853AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_227853B0C, 0, 0);
}

uint64_t sub_227853B0C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_227853BD0, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_227853BD0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 192);
  if (qword_2813BB688 != -1)
  {
    v3 = *(v1 + 192);
    swift_once();
    v2 = v3;
    v1 = *(v0 + 56);
  }

  [v2 postNotificationName:qword_2813BC3C0 object:v1];

  return MEMORY[0x2822009F8](sub_227800230, 0, 0);
}

uint64_t sub_227853C98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = sub_2278C6820();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227853D9C, v1, 0);
}

uint64_t sub_227853D9C()
{
  v1 = [*(v0[3] + 200) sleepUserDay];
  if (!v1)
  {
    (*(v0[7] + 56))(v0[5], 1, 1, v0[6]);
LABEL_7:
    v10 = v0[3];
    sub_22783F30C(v0[5]);
    v11 = *__swift_project_boxed_opaque_existential_1((v10 + 152), *(v10 + 176));
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_227853FD8;
    v13 = v0[2];

    return sub_22783E9F8(v13);
  }

  v2 = v1;
  v3 = [v1 startOfDay];

  if (v3)
  {
    v4 = v0[4];
    sub_2278C6800();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  (*(v7 + 56))(v9, v5, 1, v6);
  sub_227854DEC(v9, v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    goto LABEL_7;
  }

  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[6];
  v19 = v0[2];
  v18 = v0[3];
  (*(v16 + 32))(v15, v0[5], v17);
  sub_227852F58(v15, v19);
  (*(v16 + 8))(v15, v17);
  v20 = v0[8];
  v21 = v0[4];
  v22 = v0[5];

  v23 = v0[1];

  return v23();
}

uint64_t sub_227853FD8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v8 = *v0;

  v3 = v1[8];
  v4 = v1[5];
  v5 = v1[4];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_227854128(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278541C4, v1, 0);
}

uint64_t sub_2278541C4()
{
  v1 = [*(v0[3] + 200) sleepUserDay];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 endOfDay];

    if (v3)
    {
      v4 = v0[4];
      sub_2278C6800();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v8 = v0[4];
    v9 = v0[2];
    v10 = sub_2278C6820();
    (*(*(v10 - 8) + 56))(v8, v5, 1, v10);
    sub_227854DEC(v8, v9);
  }

  else
  {
    v6 = v0[2];
    v7 = sub_2278C6820();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  v11 = v0[4];

  v12 = v0[1];

  return v12();
}

uint64_t sub_227854324()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C6920();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_2278C6910();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v12 = sub_2278C6820();
  v1[18] = v12;
  v13 = *(v12 - 8);
  v1[19] = v13;
  v14 = *(v13 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278545A8, v0, 0);
}

uint64_t sub_2278545A8()
{
  v109 = v0;
  v1 = *(v0[2] + 200);
  v2 = [v1 sleepUserDay];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 startOfDay];

    if (v4)
    {
      v5 = v0[16];
      sub_2278C6800();

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[16];
    v9 = v0[17];
    v11 = *(v8 + 56);
    v11(v10, v6, 1, v7);
    sub_227854DEC(v10, v9);
    v12 = *(v8 + 48);
    if (v12(v9, 1, v7) == 1)
    {
      goto LABEL_7;
    }

    v26 = *(v0[19] + 32);
    v26(v0[25], v0[17], v0[18]);
    if (![v1 isGoodMorningAlertNotificationEnabled])
    {
      (*(v0[19] + 8))(v0[25], v0[18]);
      goto LABEL_9;
    }

    v27 = [v1 lastGoodMorningDismissedDate];
    if (v27)
    {
      v28 = v0[14];
      v29 = v27;
      sub_2278C6800();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = v0[18];
    v33 = v0[14];
    v32 = v0[15];
    v11(v33, v30, 1, v31);
    sub_227854DEC(v33, v32);
    if (v12(v32, 1, v31) != 1)
    {
      v42 = v0[18];
      v43 = v0[13];
      sub_2278102C8(v0[15], v43);
      v44 = v12(v43, 1, v42);
      v45 = v0[18];
      v46 = v0[19];
      v47 = v0[13];
      if (v44 == 1)
      {
        (*(v46 + 8))(v0[25], v0[18]);
        v41 = v47;
LABEL_23:
        sub_22783F30C(v41);
        v13 = v0[15];
        goto LABEL_8;
      }

      v85 = sub_2278C6770();
      v86 = *(v46 + 8);
      v86(v47, v45);
      if ((v85 & 1) == 0)
      {
        v86(v0[25], v0[18]);
        v13 = v0[15];
        goto LABEL_8;
      }
    }

    v34 = v0[24];
    v100 = v26;
    v103 = v0[25];
    v106 = v0[18];
    v35 = v0[12];
    __swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
    v36 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v36(v34);
    sub_227852F58(v103, v35);
    if (v12(v35, 1, v106) != 1)
    {
      v48 = v0[24];
      v49 = v0[22];
      v50 = v0[18];
      v107 = v0[19];
      v51 = v0[11];
      v53 = v0[9];
      v52 = v0[10];
      v55 = v0[7];
      v54 = v0[8];
      v97 = v0[6];
      v100(v0[23], v0[12], v50);
      (*(v52 + 104))(v51, *MEMORY[0x277CC99A0], v53);
      sub_2278C6900();
      sub_2278C6750();
      (*(v55 + 8))(v54, v97);
      (*(v52 + 8))(v51, v53);
      v56 = sub_2278C6740();
      v57 = *(v107 + 8);
      v57(v49, v50);
      if (v56)
      {
        v58 = v0[23];
        v59 = v0[24];
        v61 = v0[20];
        v60 = v0[21];
        v62 = v0[18];
        v63 = v0[19];
        v64 = v0[5];
        sub_2278C73A0();
        v65 = *(v63 + 16);
        v65(v60, v58, v62);
        v65(v61, v59, v62);
        v66 = sub_2278C7590();
        v98 = sub_2278C7970();
        v67 = os_log_type_enabled(v66, v98);
        v69 = v0[24];
        v68 = v0[25];
        v70 = v0[23];
        v72 = v0[20];
        v71 = v0[21];
        v73 = v0[18];
        v74 = v0[4];
        v75 = v0[3];
        v101 = v75;
        v104 = v0[5];
        if (v67)
        {
          log = v66;
          v76 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v108 = v91;
          *v76 = 136315394;
          sub_22784A014();
          v92 = v70;
          v94 = v68;
          v77 = sub_2278C7DA0();
          v79 = v78;
          v57(v71, v73);
          v80 = sub_2278021B4(v77, v79, &v108);

          *(v76 + 4) = v80;
          *(v76 + 12) = 2080;
          v81 = sub_2278C7DA0();
          v83 = v82;
          v57(v72, v73);
          v84 = sub_2278021B4(v81, v83, &v108);

          *(v76 + 14) = v84;
          _os_log_impl(&dword_2277F7000, log, v98, "Sleep wake up date is within good morning screen time range: %s, now: %s", v76, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA9E860](v91, -1, -1);
          MEMORY[0x22AA9E860](v76, -1, -1);

          (*(v74 + 8))(v104, v101);
          v57(v92, v73);
          v57(v69, v73);
          v57(v94, v73);
        }

        else
        {

          v57(v72, v73);
          v57(v71, v73);
          (*(v74 + 8))(v104, v101);
          v57(v70, v73);
          v57(v69, v73);
          v57(v68, v73);
        }

        sub_22783F30C(v0[15]);
        v105 = 1;
        goto LABEL_10;
      }

      v87 = v0[24];
      v88 = v0[25];
      v89 = v0[18];
      v57(v0[23], v89);
      v57(v87, v89);
      v57(v88, v89);
      v13 = v0[15];
      goto LABEL_8;
    }

    v37 = v0[25];
    v38 = v0[18];
    v39 = v0[12];
    v40 = *(v0[19] + 8);
    v40(v0[24], v38);
    v40(v37, v38);
    v41 = v39;
    goto LABEL_23;
  }

  (*(v0[19] + 56))(v0[17], 1, 1, v0[18]);
LABEL_7:
  v13 = v0[17];
LABEL_8:
  sub_22783F30C(v13);
LABEL_9:
  v105 = 0;
LABEL_10:
  v15 = v0[24];
  v14 = v0[25];
  v17 = v0[22];
  v16 = v0[23];
  v19 = v0[20];
  v18 = v0[21];
  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[14];
  v23 = v0[15];
  v93 = v0[13];
  v95 = v0[12];
  v96 = v0[11];
  v99 = v0[8];
  v102 = v0[5];

  v24 = v0[1];

  return v24(v105);
}

uint64_t sub_227854DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t sub_227854EE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return sub_227853AEC(a1, v4, v5, v6);
}

uint64_t sub_227854F98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_227853820(a1, v4, v5, v6);
}

uint64_t type metadata accessor for FirstPickupDateValidator()
{
  result = qword_2813BA570;
  if (!qword_2813BA570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2278550E0()
{
  sub_227855164();
  if (v0 <= 0x3F)
  {
    sub_2278551D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227855164()
{
  if (!qword_2813BC108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7D6140, &qword_2278CC4D0);
    sub_22782326C();
    v0 = sub_2278C6E10();
    if (!v1)
    {
      atomic_store(v0, &qword_2813BC108);
    }
  }
}

unint64_t sub_2278551D4()
{
  result = qword_2813BB9E8[0];
  if (!qword_2813BB9E8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813BB9E8);
  }

  return result;
}

uint64_t sub_227855238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v30 = sub_2278C65D0();
  v27 = *(v30 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2278C6920();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2278C6820();
  v23 = *(v10 - 8);
  v24 = v10;
  v11 = *(v23 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v2 + *(type metadata accessor for FirstPickupDateValidator() + 24));
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v15 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v15(v13);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_227804920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6580, qword_2278CC500);
  v16 = sub_2278C6910();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2278C9F60;
  v21 = *(v17 + 104);
  v21(v20 + v19, *MEMORY[0x277CC9988], v16);
  v21(v20 + v19 + v18, *MEMORY[0x277CC9998], v16);
  v21(v20 + v19 + 2 * v18, *MEMORY[0x277CC9968], v16);
  v21(v20 + v19 + 3 * v18, *MEMORY[0x277CC9980], v16);
  sub_22788562C(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2278C68A0();

  sub_2278C65C0();
  sub_2278C68D0();
  (*(v27 + 8))(v5, v30);
  (*(v25 + 8))(v9, v26);
  return (*(v23 + 8))(v13, v24);
}

uint64_t sub_227855624(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6328, &qword_2278CC4E8);
  v3 = *(*(v48 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v48);
  v47 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = v43 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6330, &unk_2278CC4F0);
  v7 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v49 = v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  v16 = sub_2278C6820();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v50 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v43 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6138, &unk_2278CC4A0);
  sub_2278C6E00();
  if (v52)
  {
    v23 = 5;
  }

  else
  {
    v23 = v51;
  }

  sub_227855238(v23, v15);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    sub_227802FC4(v15, &qword_27D7D60A8, qword_2278C9730);
LABEL_13:
    v33 = 0;
    return v33 & 1;
  }

  v43[2] = a1;
  v44 = *(v17 + 32);
  v44(v22, v15, v16);
  v25 = v1 + *(type metadata accessor for FirstPickupDateValidator() + 20);
  sub_2278C6E00();
  if (v52)
  {
    v26 = 13;
  }

  else
  {
    v26 = v51;
  }

  sub_227855238(v26, v13);
  if (v24(v13, 1, v16) == 1)
  {
    (*(v17 + 8))(v22, v16);
    sub_227802FC4(v13, &qword_27D7D60A8, qword_2278C9730);
    goto LABEL_13;
  }

  v27 = v17;
  v28 = v50;
  v29 = v44;
  v44(v50, v13, v16);
  v30 = sub_227855B98();
  v31 = v22;
  if (sub_2278C76B0())
  {
    v32 = *(v27 + 8);
    v32(v28, v16);
    v32(v22, v16);
    goto LABEL_13;
  }

  v43[1] = v30;
  result = sub_2278C76D0();
  if (result)
  {
    v35 = v27;
    v36 = *(v27 + 16);
    v37 = v46;
    v43[0] = v31;
    v36(v46, v31, v16);
    v38 = v48;
    v36((v37 + *(v48 + 48)), v28, v16);
    v39 = v47;
    sub_227855BF0(v37, v47);
    v40 = *(v38 + 48);
    v41 = v49;
    v29(v49, v39, v16);
    v42 = *(v35 + 8);
    v42(v39 + v40, v16);
    sub_227855C60(v37, v39);
    v29((v41 + *(v45 + 36)), v39 + *(v38 + 48), v16);
    v42(v39, v16);
    if (sub_2278C76C0())
    {
      v33 = sub_2278C76D0();
    }

    else
    {
      v33 = 0;
    }

    sub_227802FC4(v41, &qword_27D7D6330, &unk_2278CC4F0);
    v42(v50, v16);
    v42(v43[0], v16);
    return v33 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_227855B98()
{
  result = qword_2813BC160;
  if (!qword_2813BC160)
  {
    sub_2278C6820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC160);
  }

  return result;
}

uint64_t sub_227855BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6328, &qword_2278CC4E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227855C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6328, &qword_2278CC4E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227855CD0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_227855E0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_227855E2C, 0, 0);
}

uint64_t sub_227855E2C()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_227855F5C, Strong, 0);
  }

  else
  {
    v3 = sub_2278C6E50();
    sub_22781D014();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D098A8], v3);
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227855F5C()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0[12] + 112), *(v0[12] + 136));
  v0[5] = &type metadata for WalkSuggestionService;
  v0[6] = &off_283AEC0F8;
  v2 = swift_allocObject();
  v0[2] = v2;
  sub_2278040AC(v1, v2 + 16);
  sub_2278040AC((v1 + 5), v2 + 56);
  v3 = v1[10];
  *(v2 + 96) = v3;
  __swift_project_boxed_opaque_existential_1(v0 + 2, &type metadata for WalkSuggestionService);
  v4 = v3;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_227856078;

  return sub_227862938();
}

uint64_t sub_227856078(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(v6 + 112) = v2;

  v9 = *(v6 + 96);
  if (v2)
  {
    v10 = sub_2278562A8;
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 120) = a1;
    v10 = sub_2278561BC;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2278561BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_227856224, 0, 0);
}

uint64_t sub_227856224()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  *v4 = v1;
  *(v4 + 8) = v2 & 1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2278562A8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_227856310, 0, 0);
}

uint64_t sub_227856310()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_227856374()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_227856394, v2, 0);
}

uint64_t sub_227856394()
{
  v1 = v0[2];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[3] = v4;
  swift_weakInit();
  v5 = *(MEMORY[0x277D09A60] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_227824318;
  v7 = MEMORY[0x277D098C0];
  v8 = MEMORY[0x277D098B8];

  return MEMORY[0x2821603E0](3, &unk_2278CC5C0, v4, v2, v7, v3, v8);
}

uint64_t sub_2278564AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_227855E0C(a1, v1);
}

uint64_t sub_227856548(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_227856660(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2278C75A0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227856720, v1, 0);
}

uint64_t sub_227856720()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_2278C7350();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
  sub_22784A70C(v0 + 2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2278268AC;
  v6 = v0[7];

  return sub_227827594(v6);
}

uint64_t sub_2278568BC()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785697C, v0, 0);
}

uint64_t sub_22785697C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7350();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = v4[22];
  v6 = v4[23];
  __swift_project_boxed_opaque_existential_1(v4 + 19, v5);
  v7 = swift_allocObject();
  v0[6] = v7;
  swift_weakInit();
  v8 = *(MEMORY[0x277D09A50] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = sub_227856CA0();
  *v9 = v0;
  v9[1] = sub_227826238;
  v11 = MEMORY[0x277D09B68];

  return MEMORY[0x2821603D0](5, &unk_2278CC688, v7, v5, v10, v6, v11);
}

uint64_t sub_227856AF4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_227856B18, 0, 0);
}

uint64_t sub_227856B18()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_227824038;
    v4 = v0[6];

    return sub_227856660(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227856C08(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_227856AF4(a1, v1);
}

unint64_t sub_227856CA0()
{
  result = qword_2813B9AF0;
  if (!qword_2813B9AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9AF0);
  }

  return result;
}

uint64_t sub_227856CFC()
{
  v1 = *v0;
  sub_2278C7E60();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x22AA9DDE0](v2);
  return sub_2278C7E90();
}

uint64_t sub_227856D4C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x22AA9DDE0](v1);
}

uint64_t sub_227856D84()
{
  v1 = *v0;
  sub_2278C7E60();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x22AA9DDE0](v2);
  return sub_2278C7E90();
}

void *sub_227856DD0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_227856DF0(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t sub_227856E0C()
{
  result = qword_27D7D6338;
  if (!qword_27D7D6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6338);
  }

  return result;
}

unint64_t sub_227856E74()
{
  result = qword_27D7D6340;
  if (!qword_27D7D6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6340);
  }

  return result;
}

id sub_227856EEC()
{
  v0 = *MEMORY[0x277D09C10];
  sub_2278C78A0();
  v2 = [objc_allocWithZone(MEMORY[0x277D09C68]) initWithEventIdentifier:v0 interval:v1];

  sub_2278C78A0();
  v4 = v3 * 6.0;
  sub_2278C78A0();
  v6 = [objc_allocWithZone(MEMORY[0x277D09D08]) initWithMinimumDayDuration:v4 secondsBeforeEndOfDay:v5];
  v7 = *MEMORY[0x277D09C08];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2278CC820;
  *(v8 + 32) = v2;
  v9 = objc_allocWithZone(MEMORY[0x277D09C50]);
  sub_227839268(0, &qword_2813B9B28, 0x277D09C68);
  v10 = v7;
  v11 = v2;
  v12 = sub_2278C7790();

  v13 = [v9 initWithIdentifier:v10 minimumPercentageComplete:v12 goalBufferPercentage:v6 coalescingRules:1 timeOfDayRule:0.95 goalType:0.0];

  return v13;
}

id sub_227857078()
{
  sub_2278C78A0();
  v1 = [objc_allocWithZone(MEMORY[0x277D09CF8]) initWithMinimumDayDuration:v0 * 8.0 percentOfDay:0.25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2278CC820;
  *(v2 + 32) = sub_2278C7910();
  v3 = *MEMORY[0x277D09C18];
  v4 = objc_allocWithZone(MEMORY[0x277D09C60]);
  sub_227839268(0, &qword_2813B9A80, 0x277CCABB0);
  v5 = v3;
  v6 = sub_2278C7790();

  v7 = [v4 initWithIdentifier:v5 minimumAheadPercentage:v1 minimumBehindPercentage:v6 percentageOfDayRule:0.25 allowedGoalTypes:0.25];

  return v7;
}

id sub_2278571A8()
{
  v0 = *MEMORY[0x277D09C08];
  sub_2278C78A0();
  v2 = [objc_allocWithZone(MEMORY[0x277D09C68]) initWithEventIdentifier:v0 interval:v1];

  sub_2278C78A0();
  v4 = [objc_allocWithZone(MEMORY[0x277D09CF8]) initWithMinimumDayDuration:v3 * 8.0 percentOfDay:0.75];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2278CC820;
  *(v5 + 32) = sub_2278C7910();
  v6 = *MEMORY[0x277D09C10];
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2278CC820;
  *(v7 + 32) = v2;
  v8 = objc_allocWithZone(MEMORY[0x277D09C70]);
  sub_227839268(0, &qword_2813B9B28, 0x277D09C68);
  v9 = v6;
  v10 = v2;
  v11 = sub_2278C7790();

  sub_227839268(0, &qword_2813B9A80, 0x277CCABB0);
  v12 = sub_2278C7790();

  v13 = [v8 initWithIdentifier:v9 goalBufferPercentage:v11 coalescingRules:v4 percentageOfDayRule:v12 allowedGoalTypes:0.1];

  return v13;
}

id sub_227857398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2278C6820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  sub_2278102C8(a2, &v23 - v12);
  (*(v6 + 16))(v9, a3, v5);
  v14 = sub_227856EEC();
  v15 = sub_227857078();
  v16 = sub_2278571A8();
  v17 = sub_2278C67D0();
  v18 = 0;
  if ((*(v6 + 48))(v13, 1, v5) != 1)
  {
    v18 = sub_2278C67D0();
    (*(v6 + 8))(v13, v5);
  }

  v19 = objc_allocWithZone(MEMORY[0x277D09CB0]);
  v20 = sub_2278C67D0();
  v21 = [v19 initWithMinimumNumberOfActiveDays:7 userStartOfDay:v17 userEndOfDay:v18 expirationDate:v20 almostThereConfiguration:v14 atypicalDayConfiguration:v15 completionOffTrackConfiguration:v16];

  (*(v6 + 8))(v9, v5);
  return v21;
}

uint64_t sub_2278575CC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_2278576E4()
{
  v1 = *(v0 + 368);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v2)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA9DBF0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v2 = sub_2278C7B80();
            goto LABEL_4;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        [*(v0 + 240) removeObserver_];
        swift_unknownObjectRelease();
        ++v3;
      }

      while (v5 != v2);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));

  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  v6 = *(v0 + 368);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227857838()
{
  sub_2278576E4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227857888()
{
  v1[2] = v0;
  v2 = sub_2278C6920();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = sub_2278C6820();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v9 = sub_2278C75A0();
  v1[13] = v9;
  v10 = *(v9 - 8);
  v1[14] = v10;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227857A98, v0, 0);
}

uint64_t sub_227857A98()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[2];
  sub_2278C7350();
  sub_2278C7580();
  v5 = *(v3 + 8);
  v0[21] = v5;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if ([*(v4 + 112) fitnessAppInstalled])
  {
    v6 = *__swift_project_boxed_opaque_existential_1((v0[2] + 200), *(v0[2] + 224));

    return MEMORY[0x2822009F8](sub_227857D00, v6, 0);
  }

  else
  {
    v7 = v0[15];
    sub_2278C7340();
    v8 = sub_2278C7590();
    v9 = sub_2278C7970();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[15];
    v12 = v0[13];
    if (v10)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2277F7000, v8, v9, "Not registering goal progress configuration, fitness app not installed", v13, 2u);
      MEMORY[0x22AA9E860](v13, -1, -1);
    }

    v5(v11, v12);
    v15 = v0[19];
    v14 = v0[20];
    v17 = v0[17];
    v16 = v0[18];
    v19 = v0[15];
    v18 = v0[16];
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];
    v23 = v0[7];
    v26 = v0[6];
    v27 = v0[5];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_227857D00()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 16);
    v6 = [v1 fitnessMode];

    *(v0 + 248) = sub_22786233C(v6);
    v1 = sub_227857DB8;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227857DB8()
{
  if (*(v0 + 248) == 1)
  {
    if (sub_22785ACAC())
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 248), *(*(v0 + 16) + 272));
      v1 = swift_task_alloc();
      *(v0 + 184) = v1;
      *v1 = v0;
      v1[1] = sub_227858054;

      return sub_227817030(0xD000000000000015, 0x80000002278CFAA0);
    }

    v13 = *(v0 + 136);
    sub_2278C7340();
    v4 = sub_2278C7590();
    v5 = sub_2278C7970();
    v14 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 168);
    v15 = *(v0 + 176);
    v9 = *(v0 + 136);
    v10 = *(v0 + 104);
    if (v14)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Not registering goal progress configuration, fitness tracking is disabled";
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(v0 + 128);
    sub_2278C7350();
    v4 = sub_2278C7590();
    v5 = sub_2278C7970();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Not registering goal progress configuration, device paired";
LABEL_10:
      _os_log_impl(&dword_2277F7000, v4, v5, v12, v11, 2u);
      MEMORY[0x22AA9E860](v11, -1, -1);
    }
  }

  v8(v9, v10);
  v17 = *(v0 + 152);
  v16 = *(v0 + 160);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v23 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = *(v0 + 56);
  v27 = *(v0 + 48);
  v28 = *(v0 + 40);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_227858054(unsigned __int8 a1)
{
  v3 = a1;
  v4 = *v1;
  v5 = *(*v1 + 184);
  v6 = *v1;

  if (v3 == 2 || (a1 & 1) != 0)
  {
    v7 = *(v4 + 16);
    v8 = sub_227858184;
  }

  else
  {
    v7 = *(v4 + 16);
    v8 = sub_227858BA8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_227858184()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 376), *(v0[2] + 400));
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_22785822C;
  v3 = v0[7];

  return sub_227853C98(v3);
}

uint64_t sub_22785822C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22785833C, v2, 0);
}

uint64_t sub_22785833C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
LABEL_8:
    v18 = v0[19];
    v17 = v0[20];
    v20 = v0[17];
    v19 = v0[18];
    v22 = v0[15];
    v21 = v0[16];
    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[10];
    v26 = v0[7];
    v31 = v0[6];
    v32 = v0[5];

    v27 = v0[1];

    return v27();
  }

  v4 = v0[11];
  v5 = v0[2];
  (*(v2 + 32))(v0[12], v3, v1);
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v6(v4);
  v7 = sub_2278C6710();
  v8 = *(v2 + 8);
  v0[25] = v8;
  v0[26] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v1);
  if ((v7 & 1) == 0)
  {
    v8(v0[12], v0[8]);
    goto LABEL_8;
  }

  v9 = v0[11];
  v30 = v0[8];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v28 = v0[10];
  v29 = v0[3];
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  v6(v9);
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  sub_227804920();
  sub_2278C6760();
  (*(v10 + 8))(v11, v29);
  v8(v9, v30);
  v13 = *__swift_project_boxed_opaque_existential_1((v12 + 376), *(v12 + 400));
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_22785865C;
  v15 = v0[6];

  return sub_227854128(v15);
}

uint64_t sub_22785865C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22785876C, v2, 0);
}

uint64_t sub_22785876C()
{
  v1 = v0[19];
  v2 = sub_227857398(v0[12], v0[6], v0[10]);
  v0[28] = v2;
  sub_2278C7350();
  v3 = v2;
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_2277F7000, v4, v5, "Registering goal progress configuration %@", v6, 0xCu);
    sub_227802FC4(v7, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v7, -1, -1);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[19];
  v12 = v0[13];
  v13 = v0[2];

  v10(v11, v12);
  v14 = v13[44];
  v15 = v13[45];
  __swift_project_boxed_opaque_existential_1(v13 + 41, v14);
  v16 = *(MEMORY[0x277D09B20] + 4);
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_227858938;

  return MEMORY[0x282160528](v3, v14, v15);
}

uint64_t sub_227858938()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_227858D30;
  }

  else
  {
    v6 = sub_227858A64;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227858A64()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);

  sub_227802FC4(v6, &qword_27D7D60A8, qword_2278C9730);
  v2(v4, v5);
  v2(v3, v5);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  v15 = *(v0 + 80);
  v16 = *(v0 + 56);
  v19 = *(v0 + 48);
  v20 = *(v0 + 40);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_227858BA8()
{
  v1 = v0[18];
  sub_2278C7350();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
  v8 = v0[13];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "Not registering goal progress configuration, notifications are disabled in settings", v9, 2u);
    MEMORY[0x22AA9E860](v9, -1, -1);
  }

  v6(v7, v8);
  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  v19 = v0[7];
  v22 = v0[6];
  v23 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_227858D30()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v13 = *(v0 + 136);
  v14 = *(v0 + 128);
  v15 = *(v0 + 120);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  v16 = *(v0 + 88);
  v17 = *(v0 + 56);
  v9 = *(v0 + 48);
  v18 = *(v0 + 40);

  sub_227802FC4(v9, &qword_27D7D60A8, qword_2278C9730);
  v1(v7, v8);
  v1(v6, v8);

  v10 = *(v0 + 8);
  v11 = *(v0 + 240);

  return v10();
}

uint64_t sub_227858E84()
{
  v1[20] = v0;
  v2 = sub_2278C75A0();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227858F44, v0, 0);
}

uint64_t sub_227858F44()
{
  v1 = v0[20];
  if (!*(v1 + 368))
  {
    v3 = v0[22];
    v2 = v0[23];
    v4 = v0[21];
    sub_2278C7350();
    sub_2278C7580();
    (*(v3 + 8))(v2, v4);
    v31 = v1;
    v5 = *(v1 + 240);
    if (qword_2813BB688 != -1)
    {
      swift_once();
    }

    v6 = v0[20];
    v7 = qword_2813BC3C0;
    v8 = objc_opt_self();
    v9 = [v8 mainQueue];
    v0[6] = sub_22785A788;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_227872968;
    v0[5] = &block_descriptor_11;
    v10 = _Block_copy(v0 + 2);
    v11 = v0[7];

    v29 = [v5 addObserverForName:v7 object:0 queue:v9 usingBlock:v10];
    _Block_release(v10);

    if (qword_2813BC018 != -1)
    {
      swift_once();
    }

    v12 = v0[20];
    v13 = qword_2813BC3C8;
    v14 = [v8 mainQueue];
    v0[12] = sub_22785A7D8;
    v0[13] = v12;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_227872968;
    v0[11] = &block_descriptor_13;
    v15 = _Block_copy(v0 + 8);
    v16 = v0[13];

    v17 = [v5 addObserverForName:v13 object:0 queue:v14 usingBlock:v15];
    _Block_release(v15);

    if (qword_2813BB020 != -1)
    {
      swift_once();
    }

    v18 = v0[20];
    v19 = qword_2813BC398;
    v20 = [v8 mainQueue];
    v0[18] = sub_22785A810;
    v0[19] = v18;
    v0[14] = MEMORY[0x277D85DD0];
    v0[15] = 1107296256;
    v0[16] = sub_227872968;
    v0[17] = &block_descriptor_16;
    v21 = _Block_copy(v0 + 14);
    v22 = v0[19];

    v23 = [v5 addObserverForName:v19 object:0 queue:v20 usingBlock:v21];
    _Block_release(v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2278CC8C0;
    *(v24 + 32) = v30;
    *(v24 + 40) = v17;
    *(v24 + 48) = v23;
    v25 = *(v31 + 368);
    *(v31 + 368) = v24;
  }

  v26 = v0[23];

  v27 = v0[1];

  return v27();
}

uint64_t sub_227859390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2278C75A0();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227859450, 0, 0);
}

uint64_t sub_227859450()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_227859540;

    return sub_227857888();
  }

  else
  {
    v5 = v0[12];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227859540()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227859684, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_227859684()
{
  v24 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  sub_2278C7350();
  v4 = v1;
  v5 = sub_2278C7590();
  v6 = sub_2278C7950();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 88);
    v22 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 40);
    v13 = MEMORY[0x22AA9DD80](*(v0 + 48), *(v0 + 56));
    v15 = sub_2278021B4(v13, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2277F7000, v5, v6, "Error handling a user day update: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);

    (*(v8 + 8))(v22, v9);
  }

  else
  {
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 96);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_227859860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_2278C75A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7350();
  sub_2278C7580();
  (*(v10 + 8))(v13, v9);
  v14 = sub_2278C7840();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  sub_22788B134(0, 0, v8, a4, v16);
}

uint64_t sub_227859A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2278C75A0();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227859B14, 0, 0);
}

uint64_t sub_227859B14()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_227859C04;

    return sub_227857888();
  }

  else
  {
    v5 = v0[12];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227859C04()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227859D48, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_227859D48()
{
  v24 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  sub_2278C7350();
  v4 = v1;
  v5 = sub_2278C7590();
  v6 = sub_2278C7950();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 88);
    v22 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 40);
    v13 = MEMORY[0x22AA9DD80](*(v0 + 48), *(v0 + 56));
    v15 = sub_2278021B4(v13, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2277F7000, v5, v6, "Error handling fitness mode change: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);

    (*(v8 + 8))(v22, v9);
  }

  else
  {
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 96);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_227859F24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22[-4] - v2;
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-4] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7350();
  sub_2278C7580();
  (*(v5 + 8))(v8, v4);
  v9 = sub_2278C6560();
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  strcpy(v22, "XPCStreamName");
  v22[7] = -4864;
  sub_2278C7BF0();
  if (!*(v10 + 16) || (v11 = sub_2278AE394(v23), (v12 & 1) == 0))
  {

    sub_227815D88(v23);
LABEL_12:
    v24 = 0u;
    v25 = 0u;
    return sub_227802FC4(&v24, &qword_27D7D60A0, qword_2278C98D0);
  }

  sub_227802850(*(v10 + 56) + 32 * v11, &v24);
  sub_227815D88(v23);

  if (!*(&v25 + 1))
  {
    return sub_227802FC4(&v24, &qword_27D7D60A0, qword_2278C98D0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v14 = v23[0];
    v15 = v23[1];
    if (qword_2813BB008 != -1)
    {
      v20 = v23[0];
      swift_once();
      v14 = v20;
    }

    if (v14 == qword_2813BC378 && v15 == unk_2813BC380)
    {

LABEL_16:
      v17 = sub_2278C7840();
      (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v18;
      sub_22788B134(0, 0, v3, &unk_2278CCA10, v19);
    }

    v16 = sub_2278C7DC0();

    if (v16)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_22785A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2278C75A0();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785A350, 0, 0);
}

uint64_t sub_22785A350()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_22785A440;

    return sub_227857888();
  }

  else
  {
    v5 = v0[12];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22785A440()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22785A584, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22785A584()
{
  v24 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  sub_2278C7350();
  v4 = v1;
  v5 = sub_2278C7590();
  v6 = sub_2278C7950();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 88);
    v22 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 40);
    v13 = MEMORY[0x22AA9DD80](*(v0 + 48), *(v0 + 56));
    v15 = sub_2278021B4(v13, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2277F7000, v5, v6, "Error handling notification settings change: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);

    (*(v8 + 8))(v22, v9);
  }

  else
  {
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 96);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22785A818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_22785A290(a1, v4, v5, v6);
}

uint64_t sub_22785A8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return sub_227859A54(a1, v4, v5, v6);
}

uint64_t sub_22785A980(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_227859390(a1, v4, v5, v6);
}

uint64_t sub_22785AA68(void *a1, void *a2)
{
  v20[0] = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6348, qword_2278CCAA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v17;
  v18 = a2;
  type metadata accessor for CFString(0);
  sub_22785AFCC();
  v4 = a2;
  sub_2278C7BF0();
  if (!*(v3 + 16))
  {
    goto LABEL_14;
  }

  v5 = sub_2278AE394(v20);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = *(*(v3 + 56) + 8 * v5);
  swift_unknownObjectRetain();
  sub_227815D88(v20);
  v20[6] = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    return 0;
  }

  if (v18 == sub_2278C7700() && v19 == v8)
  {

    goto LABEL_9;
  }

  v10 = sub_2278C7DC0();

  if ((v10 & 1) == 0)
  {

    goto LABEL_16;
  }

LABEL_9:
  v11 = *MEMORY[0x277D6C0D0];
  if (!*MEMORY[0x277D6C0D0])
  {
    __break(1u);
    return result;
  }

  v11;
  sub_2278C7BF0();
  if (*(v3 + 16))
  {
    v12 = sub_2278AE394(v20);
    if (v13)
    {
      v14 = *(*(v3 + 56) + 8 * v12);
      swift_unknownObjectRetain();
      sub_227815D88(v20);

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = [v15 BOOLValue];
        swift_unknownObjectRelease();
        return v16;
      }

      swift_unknownObjectRelease();
      return 0;
    }
  }

LABEL_14:

  sub_227815D88(v20);
  return 0;
}

BOOL sub_22785ACAC()
{
  v23 = *MEMORY[0x277D85DE8];
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*MEMORY[0x277D6C1B0])
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  v5 = *MEMORY[0x277D6C0E8];
  v6 = *MEMORY[0x277D6C1B0];
  if (!v5)
  {
    goto LABEL_27;
  }

  v7 = v6;
  v20 = v5;
  v22 = 0;
  TCCAccessGetOverride();
  v8 = sub_2278C76F0();
  v9 = TCCAccessCopyInformationForBundleId();

  if (v9)
  {
    v4 = sub_2278C77A0();

    if (v4 >> 62)
    {
      goto LABEL_22;
    }

    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v11 = 0;
        v0 = 0;
        while ((v4 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x22AA9DBF0](v11, v4);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_10:
          v21 = v12;
          v1 = sub_22785AA68(&v21, v20);
          swift_unknownObjectRelease();
          if (v1)
          {

            result = v22 == 0;
            goto LABEL_25;
          }

          ++v11;
          if (v13 == v10)
          {
            goto LABEL_23;
          }
        }

        if (v11 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_22:
        v10 = sub_2278C7B80();
        if (!v10)
        {
          goto LABEL_23;
        }
      }

      v12 = *(v4 + 8 * v11 + 32);
      swift_unknownObjectRetain();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

LABEL_23:
  }

  else
  {
LABEL_16:
    sub_2278C73A0();
    v14 = sub_2278C7590();
    v15 = sub_2278C7970();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2277F7000, v14, v15, "TCC info for bundle health bundle ID doesn't exist", v16, 2u);
      MEMORY[0x22AA9E860](v16, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
  }

  result = 0;
LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22785AFCC()
{
  result = qword_2813B9B98;
  if (!qword_2813B9B98)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9B98);
  }

  return result;
}

uint64_t sub_22785B038(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_22785B1C8()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6358, qword_2278CCB98);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785B294, 0, 0);
}

uint64_t sub_22785B294()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  sub_2278C7860();
  v0[10] = v3;
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_22785B37C;
  v6 = v0[9];
  v7 = v0[7];

  return MEMORY[0x2822005A8](v0 + 3, 0, 0, v7, v0 + 4);
}

uint64_t sub_22785B37C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 80);

    v5 = sub_22785B604;
  }

  else
  {
    v5 = sub_22785B494;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22785B494()
{
  if (v0[3])
  {
    v1 = v0 + 2;
    MEMORY[0x22AA9D6F0]();
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2278C77C0();
    }

    sub_2278C77E0();
    v0[10] = v0[2];
    v2 = *(MEMORY[0x277D858B8] + 4);
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_22785B37C;
    v4 = v0[9];
    v5 = v0[7];

    return MEMORY[0x2822005A8](v0 + 3, 0, 0, v5, v0 + 4);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v6 = v0[1];
    v7 = v0[10];

    return v6(v7);
  }
}

uint64_t sub_22785B604()
{
  v1 = v0[4];
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  if (sub_2278C7DB0())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  (*(v0[8] + 8))(v0[9], v0[7]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22785B6FC()
{
  v1 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateInterval;
  v2 = sub_2278C6540();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_activityDataQuery));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_firstOnWristQuery));
  v3 = *(v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_lock);

  sub_22785D54C(v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state, type metadata accessor for TypicalDayDataSource.State);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22785B824()
{
  result = sub_2278C6540();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for TypicalDayDataSource.State(319);
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

uint64_t sub_22785B974()
{
  v0 = type metadata accessor for TypicalDayDataSource.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_22785B9F4()
{
  sub_22785BAD8(319, &qword_2813B9BB0, sub_227848DDC, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22785BAD8(319, &qword_2813BC150, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22785BAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22785BB3C()
{
  v1[187] = v0;
  v2 = *(*(type metadata accessor for TypicalDayDataSource.State(0) - 8) + 64) + 15;
  v1[193] = swift_task_alloc();
  v3 = type metadata accessor for TypicalDayDataSource.Content(0);
  v1[199] = v3;
  v4 = *(v3 - 8);
  v1[205] = v4;
  v5 = *(v4 + 64) + 15;
  v1[211] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v1[212] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[213] = swift_task_alloc();
  v8 = sub_2278C7160();
  v1[214] = v8;
  v9 = *(v8 - 8);
  v1[215] = v9;
  v10 = *(v9 + 64) + 15;
  v1[216] = swift_task_alloc();
  v11 = sub_2278C6820();
  v1[217] = v11;
  v12 = *(v11 - 8);
  v1[218] = v12;
  v13 = *(v12 + 64) + 15;
  v1[219] = swift_task_alloc();
  v14 = sub_2278C65D0();
  v1[220] = v14;
  v15 = *(v14 - 8);
  v1[221] = v15;
  v16 = *(v15 + 64) + 15;
  v1[222] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  v1[224] = v17;
  v18 = *(v17 - 8);
  v1[225] = v18;
  v1[226] = *(v18 + 64);
  v1[227] = swift_task_alloc();
  v1[228] = swift_task_alloc();
  v19 = sub_2278C6920();
  v1[229] = v19;
  v20 = *(v19 - 8);
  v1[230] = v20;
  v21 = *(v20 + 64) + 15;
  v1[231] = swift_task_alloc();
  v22 = sub_2278C75A0();
  v1[232] = v22;
  v23 = *(v22 - 8);
  v1[233] = v23;
  v24 = *(v23 + 64) + 15;
  v1[234] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785BEB8, 0, 0);
}

uint64_t sub_22785BEB8()
{
  v1 = v0[234];
  v2 = v0[233];
  v3 = v0[232];
  v4 = v0[231];
  v22 = v0[228];
  v27 = v0[227];
  v28 = v0[226];
  v25 = v0[225];
  v26 = v0[224];
  v18 = v0[223];
  v31 = v0[222];
  v23 = v0[221];
  v24 = v0[220];
  v5 = v0[219];
  v6 = v0[218];
  v17 = v0[217];
  v7 = v0[215];
  v20 = v0[216];
  v21 = v0[214];
  v29 = v0[212];
  v30 = v0[213];
  v8 = v0[187];
  sub_2278C73A0();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider), *(v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider + 24));
  sub_227804920();
  v19 = *(v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_activityDataQuery + 32);
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_activityDataQuery), *(v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_activityDataQuery + 24));
  sub_2278C6530();
  sub_2278C6730();
  v9 = *(v6 + 8);
  v9(v5, v17);
  sub_2278C6510();
  sub_2278C6730();
  v9(v5, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6260, &qword_2278CBE38);
  v10 = *(v7 + 72);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2278C9F50;
  sub_2278C7150();
  sub_2278C7140();
  v0[175] = v12;
  sub_22784B9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
  sub_227829300();
  sub_2278C7AF0();
  sub_2278C6FE0();
  (*(v7 + 8))(v20, v21);
  v13 = *(v23 + 8);
  v13(v31, v24);
  v13(v18, v24);
  (*(v25 + 16))(v27, v22, v26);
  v14 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v15 = swift_allocObject();
  v0[235] = v15;
  (*(v25 + 32))(v15 + v14, v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6178, &qword_2278CADE8);
  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2, v0 + 181, sub_22785C2B8, v0 + 162);
}

uint64_t sub_22785C2B8()
{
  v1[236] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22785C698, 0, 0);
  }

  else
  {
    v1[237] = v1[181];

    v2 = v1[213];

    return MEMORY[0x282200930](v1 + 82, v2, sub_22785C368, v1 + 182);
  }
}

uint64_t sub_22785C368()
{
  *(v1 + 1904) = v0;
  if (v0)
  {
    v2 = sub_22785C878;
  }

  else
  {
    v2 = sub_22785C39C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22785C39C()
{
  v1 = v0[237];
  v2 = v0[211];
  v3 = v0[205];
  v4 = v0[199];
  v5 = v0[193];
  v6 = v0[187];
  sub_2278102C8(v0[213], v2 + *(v4 + 20));
  *v2 = v1;
  v7 = *(v6 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_lock);
  os_unfair_lock_lock(*(v7 + 16));
  sub_22785D730(v2, v5, type metadata accessor for TypicalDayDataSource.Content);
  (*(v3 + 56))(v5, 0, 1, v4);
  v8 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state;
  swift_beginAccess();
  sub_22785D798(v5, v6 + v8);
  swift_endAccess();
  os_unfair_lock_unlock(*(v7 + 16));
  sub_22785D54C(v2, type metadata accessor for TypicalDayDataSource.Content);
  v9 = v0[213];

  return MEMORY[0x282200920](v0 + 82, v9, sub_22785C4E0, v0 + 200);
}

uint64_t sub_22785C538()
{
  v1 = v0[235];
  v2 = v0[234];
  v3 = v0[231];
  v4 = v0[230];
  v5 = v0[229];
  v6 = v0[227];
  v7 = v0[223];
  v12 = v0[222];
  v13 = v0[219];
  v14 = v0[216];
  v15 = v0[213];
  v8 = v0[211];
  v16 = v0[193];
  v9 = v0[187];
  (*(v0[225] + 8))(v0[228], v0[224]);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22785C710()
{
  v17 = v0[236];
  v1 = v0[235];
  v2 = v0[234];
  v3 = v0[231];
  v4 = v0[230];
  v5 = v0[229];
  v6 = v0[227];
  v7 = v0[223];
  v12 = v0[222];
  v13 = v0[219];
  v14 = v0[216];
  v15 = v0[213];
  v8 = v0[211];
  v16 = v0[193];
  v9 = v0[187];
  (*(v0[225] + 8))(v0[228], v0[224]);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22785C878()
{
  v1 = *(v0 + 1896);

  v2 = *(v0 + 1704);

  return MEMORY[0x282200920](v0 + 656, v2, sub_22785C8E4, v0 + 1504);
}

uint64_t sub_22785C93C()
{
  v17 = v0[238];
  v1 = v0[235];
  v2 = v0[234];
  v3 = v0[231];
  v4 = v0[230];
  v5 = v0[229];
  v6 = v0[227];
  v7 = v0[223];
  v12 = v0[222];
  v13 = v0[219];
  v14 = v0[216];
  v15 = v0[213];
  v8 = v0[211];
  v16 = v0[193];
  v9 = v0[187];
  (*(v0[225] + 8))(v0[228], v0[224]);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22785CAA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22785CB4C;

  return sub_22785B1C8();
}

uint64_t sub_22785CB4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22785CC98, 0, 0);
  }
}

uint64_t sub_22785CCDC()
{
  v1 = *(v0 + 16);
  v2 = sub_2278C6820();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

char *sub_22785CD7C()
{
  v25 = sub_2278C75A0();
  v24 = *(v25 - 8);
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20](v25);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TypicalDayDataSource.Content(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TypicalDayDataSource.State(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_lock);
  os_unfair_lock_lock(*(v15 + 16));
  v16 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state;
  swift_beginAccess();
  sub_22785D730(v0 + v16, v14, type metadata accessor for TypicalDayDataSource.State);
  os_unfair_lock_unlock(*(v15 + 16));
  sub_22785D730(v14, v12, type metadata accessor for TypicalDayDataSource.State);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    sub_22785D54C(v12, type metadata accessor for TypicalDayDataSource.State);
    v17 = v23;
    sub_2278C73A0();
    v18 = sub_2278C7590();
    v19 = sub_2278C7950();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2277F7000, v18, v19, "Typical day summary requested before activation", v20, 2u);
      MEMORY[0x22AA9E860](v20, -1, -1);
    }

    (*(v24 + 8))(v17, v25);
    sub_22785D108();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    sub_22785D54C(v14, type metadata accessor for TypicalDayDataSource.State);
  }

  else
  {
    sub_22785D54C(v14, type metadata accessor for TypicalDayDataSource.State);
    sub_22785D4E8(v12, v7);
    v17 = *v7;

    sub_22785D54C(v7, type metadata accessor for TypicalDayDataSource.Content);
  }

  return v17;
}

unint64_t sub_22785D108()
{
  result = qword_27D7D6350;
  if (!qword_27D7D6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6350);
  }

  return result;
}

uint64_t sub_22785D15C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v28 = sub_2278C75A0();
  v27 = *(v28 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TypicalDayDataSource.Content(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TypicalDayDataSource.State(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_lock);
  os_unfair_lock_lock(*(v16 + 16));
  v17 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state;
  swift_beginAccess();
  sub_22785D730(v1 + v17, v15, type metadata accessor for TypicalDayDataSource.State);
  os_unfair_lock_unlock(*(v16 + 16));
  sub_22785D730(v15, v13, type metadata accessor for TypicalDayDataSource.State);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_22785D54C(v13, type metadata accessor for TypicalDayDataSource.State);
    v18 = v25;
    sub_2278C73A0();
    v19 = sub_2278C7590();
    v20 = sub_2278C7950();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2277F7000, v19, v20, "Typical day first on wrist date requested before activation", v21, 2u);
      MEMORY[0x22AA9E860](v21, -1, -1);
    }

    (*(v27 + 8))(v18, v28);
    sub_22785D108();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return sub_22785D54C(v15, type metadata accessor for TypicalDayDataSource.State);
  }

  else
  {
    sub_22785D54C(v15, type metadata accessor for TypicalDayDataSource.State);
    sub_22785D4E8(v13, v8);
    sub_2278102C8(&v8[*(v4 + 20)], v26);
    return sub_22785D54C(v8, type metadata accessor for TypicalDayDataSource.Content);
  }
}

uint64_t sub_22785D4E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypicalDayDataSource.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22785D54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22785D5AC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2278004C0;

  return sub_22785CAA4(a1);
}

uint64_t sub_22785D694(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2278003CC;

  return sub_22785CCBC(a1);
}

uint64_t sub_22785D730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22785D798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypicalDayDataSource.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22785D7FC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_22785D914(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_2278C6820();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(type metadata accessor for NotificationRequest() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6360, &qword_2278CCC70) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v8 = sub_2278C6DB0();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6368, &qword_2278CCC78) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = sub_2278C6D60();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v15 = sub_2278C75A0();
  v2[26] = v15;
  v16 = *(v15 - 8);
  v2[27] = v16;
  v17 = *(v16 + 64) + 15;
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785DB84, v1, 0);
}

uint64_t sub_22785DB84()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[12];
  sub_2278C7370();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v8 = [v7 type];
  sub_2278C7700();

  sub_2278C6D40();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_227802FC4(v0[22], &qword_27D7D6368, &qword_2278CCC78);
    v9 = v0[28];
    v10 = v0[25];
    v12 = v0[21];
    v11 = v0[22];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v17 = v0[12];
    (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
    v18 = [v17 force];
    v19 = v0[13];
    if (v18)
    {
      __swift_project_boxed_opaque_existential_1(v19 + 29, v19[32]);
      sub_227823470(v0 + 7);
      v23 = v0[12];
      v24 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v25 = [v23 showTomorrowPlan];
      v26 = *v24;
      v27 = swift_task_alloc();
      v0[29] = v27;
      *v27 = v0;
      v27[1] = sub_22785DEE8;
      v28 = v0[25];
      v29 = v0[18];

      return sub_22786671C(v29, v28, v25);
    }

    else
    {
      v21 = __swift_project_boxed_opaque_existential_1(v19 + 19, v19[22]);
      v22 = *v21;
      v0[37] = *v21;

      return MEMORY[0x2822009F8](sub_22785E878, v22, 0);
    }
  }
}

uint64_t sub_22785DEE8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_22785E1DC;
  }

  else
  {
    v6 = sub_22785E014;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22785E014()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
    sub_227802FC4(v3, &qword_27D7D6360, &qword_2278CCC70);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v4 = v0[28];
    v5 = v0[25];
    v7 = v0[21];
    v6 = v0[22];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v2 + 32))(v0[21], v3, v1);
    v0[31] = *__swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_22785E2B8;
    v14 = v0[21];
    v15 = v0[17];

    return sub_2278656D4(v15, v14, 0);
  }
}

uint64_t sub_22785E1DC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22785E2B8()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_22785E588;
  }

  else
  {
    v3 = sub_22785E3CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22785E3CC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[31] + 184), *(v0[31] + 208));
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_22785E474;
  v3 = v0[17];

  return sub_22782266C(v3);
}

uint64_t sub_22785E474()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_22785E70C;
  }

  else
  {
    v3 = sub_22785E5AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22785E5AC()
{
  v1 = *(v0 + 104);
  sub_227810208(*(v0 + 136));

  return MEMORY[0x2822009F8](sub_22785E618, v1, 0);
}

uint64_t sub_22785E618()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v4 = v0[28];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22785E70C()
{
  sub_227810208(v0[17]);
  v0[36] = v0[35];
  v1 = v0[13];

  return MEMORY[0x2822009F8](sub_22785E77C, v1, 0);
}

uint64_t sub_22785E77C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v4 = v0[36];
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22785E878()
{
  __swift_project_boxed_opaque_existential_1((v0[37] + 448), *(v0[37] + 472));
  sub_227823470(v0 + 2);
  v1 = v0[16];
  sub_2278C6810();
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_22785E990;
  v3 = v0[37];
  v4 = v0[25];
  v5 = v0[16];

  return sub_227895ED8(v4, v5, (v0 + 2), 0);
}

uint64_t sub_22785E990()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = v2[37];
  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v6 = sub_22785EC44;
  }

  else
  {
    v6 = sub_22785EB0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22785EB0C()
{
  v1 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_22785EB78, v1, 0);
}

uint64_t sub_22785EB78()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22785EC44()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v0[40] = v0[39];
  v1 = v0[13];

  return MEMORY[0x2822009F8](sub_22785ECB4, v1, 0);
}

uint64_t sub_22785ECB4()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[40];
  v2 = v0[28];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22785ED88()
{
  v1[2] = v0;
  v2 = sub_2278C6A20();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_2278C6820();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_2278C75A0();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785EF0C, v0, 0);
}

uint64_t sub_22785EF0C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[2];
  sub_2278C7370();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1(v5 + 14, v5[17]);
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v6(v4);
  v7 = v5[27];
  v8 = v5[28];
  __swift_project_boxed_opaque_existential_1(v5 + 24, v7);
  v9 = *(v8 + 8);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_22785F0EC;
  v12 = v0[9];

  return v14(v12, v7, v8);
}

uint64_t sub_22785F0EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 16);
  if (v1)
  {
    v8 = sub_22785F498;
  }

  else
  {
    v8 = sub_22785F220;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

void sub_22785F220()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[4];
    v25 = (v4 + 32);
    v5 = MEMORY[0x277D84F90];
    v23 = *(v1 + 16);
    v24 = v0[14];
    while (v3 < *(v1 + 16))
    {
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = *(v4 + 72);
      (*(v4 + 16))(v0[6], v0[14] + v6 + v7 * v3, v0[3]);
      v8 = sub_2278C6A10();
      v9 = v0[6];
      if (v8)
      {
        (*(v4 + 8))(v0[6], v0[3]);
      }

      else
      {
        v10 = *v25;
        (*v25)(v0[5], v0[6], v0[3]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2278B48E8(0, *(v5 + 16) + 1, 1);
        }

        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2278B48E8(v11 > 1, v12 + 1, 1);
        }

        v13 = v0[5];
        v14 = v0[3];
        *(v5 + 16) = v12 + 1;
        v10(v5 + v6 + v12 * v7, v13, v14);
        v2 = v23;
        v1 = v24;
      }

      if (v2 == ++v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_13:
  v15 = *(v5 + 16);

  v16 = [objc_allocWithZone(MEMORY[0x277D09C90]) initWithHasWorkoutScheduledToday_];
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = v0[14];
  v19 = v0[12];
  v20 = v0[6];
  v21 = v0[5];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v22 = v0[1];

  v22(v17);
}

uint64_t sub_22785F498()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[5];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_22785F540()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22785F5BC()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785F67C, v0, 0);
}

uint64_t sub_22785F67C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7370();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = v4[37];
  v6 = v4[38];
  __swift_project_boxed_opaque_existential_1(v4 + 34, v5);
  v7 = swift_allocObject();
  v0[6] = v7;
  swift_weakInit();
  v8 = *(MEMORY[0x277D09A50] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = sub_227839268(0, &qword_2813B9AB0, 0x277D09C88);
  *v9 = v0;
  v9[1] = sub_22785F804;
  v11 = MEMORY[0x277D09B88];

  return MEMORY[0x2821603D0](9, &unk_2278CCC90, v7, v5, v10, v6, v11);
}

uint64_t sub_22785F804()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22785F930, v3, 0);
}

uint64_t sub_22785F930()
{
  v1 = v0[2];
  v2 = v1[37];
  v3 = v1[38];
  __swift_project_boxed_opaque_existential_1(v1 + 34, v2);
  v4 = swift_allocObject();
  v0[8] = v4;
  swift_weakInit();
  v5 = *(MEMORY[0x277D09A60] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = sub_227839268(0, &qword_2813B9AD8, 0x277D09C90);
  *v6 = v0;
  v6[1] = sub_22785FA60;
  v8 = MEMORY[0x277D09B70];

  return MEMORY[0x2821603E0](4, &unk_2278CCCA0, v4, v2, v7, v3, v8);
}

uint64_t sub_22785FA60()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22785FB8C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_22785FBB0, 0, 0);
}

uint64_t sub_22785FBB0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_22785FCA0;
    v4 = v0[6];

    return sub_22785D914(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22785FCA0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22786019C, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22785FDDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22785FDFC, 0, 0);
}

id sub_22785FDFC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_22785FF14;

    return sub_22785ED88();
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x277D09C90]) initWithHasWorkoutScheduledToday_];
    if (result)
    {
      **(v0 + 40) = result;
      v5 = *(v0 + 8);

      return v5();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22785FF14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_227824174;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_227860044;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227860068(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278004C0;

  return sub_22785FB8C(a1, v1);
}

uint64_t sub_227860100(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_22785FDDC(a1, v1);
}

uint64_t sub_2278601A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_2278602B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22780523C;

  return v11(a1, a2, a3);
}

uint64_t sub_2278603E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_227860508;

  return v11(a1, a2, a3);
}

uint64_t sub_227860508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_227860630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_227860758;

  return v11(a1, a2, a3);
}

uint64_t sub_227860758(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_22786085C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 144) = a1;
  v3 = sub_2278C65D0();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v6 = sub_2278C6820();
  *(v2 + 48) = v6;
  v7 = *(v6 - 8);
  *(v2 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  v9 = sub_2278C6920();
  *(v2 + 80) = v9;
  v10 = *(v9 - 8);
  *(v2 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278609E4, 0, 0);
}

uint64_t sub_2278609E4()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v19 = v0[5];
  v6 = v0[2];
  __swift_project_boxed_opaque_existential_1((v6 + 48), *(v6 + 72));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v6 + 48), *(v6 + 72));
  v7 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v7(v3);
  sub_2278C67A0();
  v8 = *(v5 + 8);
  v0[13] = v8;
  v0[14] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6580, qword_2278CC500);
  v9 = sub_2278C6910();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2278C9F70;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x277CC9988], v9);
  v15(v14 + v11, *MEMORY[0x277CC9998], v9);
  v15(v14 + 2 * v11, *MEMORY[0x277CC9968], v9);
  sub_22788562C(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2278C68A0();

  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_227860CA0;
  v17 = v0[5];

  return sub_227805A4C(v17);
}

uint64_t sub_227860CA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_227860F2C;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_227860DC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227860DC8()
{
  v1 = *(v0 + 136);
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v17 = *(v0 + 80);
  v18 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 32);
  v13 = *(v0 + 24);
  v14 = *(v0 + 48);
  v7 = *(v0 + 144) == 1;
  v8 = **(v0 + 16);
  sub_22781BEE8();
  v9 = sub_2278C7790();

  v10 = [v8 evaluateYesterdayAchievements:v9 isStandaloneMode:v7];

  (*(v6 + 8))(v5, v13);
  v15(v4, v14);
  (*(v3 + 8))(v2, v17);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_227860F2C()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v2(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];
  v10 = v0[16];

  return v9();
}

uint64_t sub_227861018(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 248) = a1;
  v3 = sub_2278C6920();
  *(v2 + 176) = v3;
  v4 = *(v3 - 8);
  *(v2 + 184) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v6 = sub_2278C6820();
  *(v2 + 200) = v6;
  v7 = *(v6 - 8);
  *(v2 + 208) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227861138, 0, 0);
}

uint64_t sub_227861138()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  v13 = v3;
  v14 = *(v0 + 176);
  v6 = *(v0 + 168);
  v16 = *(v0 + 248) == 1;
  v15 = *v6;
  __swift_project_boxed_opaque_existential_1((v6 + 48), *(v6 + 72));
  v7 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v7(v2);
  v8 = sub_2278C67D0();
  *(v0 + 224) = v8;
  (*(v1 + 8))(v2, v13);
  __swift_project_boxed_opaque_existential_1((v6 + 48), *(v6 + 72));
  sub_227804920();
  v9 = sub_2278C68B0();
  *(v0 + 232) = v9;
  (*(v5 + 8))(v4, v14);
  v10 = *(v6 + 88);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_227861350;
  v11 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6370, &unk_2278CCD38);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_227861598;
  *(v0 + 104) = &block_descriptor_12;
  *(v0 + 112) = v11;
  [v15 progressAchievementAndMilestoneWithCurrentDate:v8 calendar:v9 experienceType:v10 isStandaloneMode:v16 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_227861350()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_227861504;
  }

  else
  {
    v3 = sub_227861460;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227861460()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);

  v7 = *(v0 + 8);

  return v7(v4, v5, v6);
}

uint64_t sub_227861504()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[24];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[30];

  return v6();
}

uint64_t sub_227861598(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v6;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = sub_2278C7700();
      v12 = *(v7[8] + 40);
      *v12 = a2;
      v12[1] = v11;
      v12[2] = v13;
      v14 = a2;
      v6 = v7;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v6);
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2278616B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2278616FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227861764(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_22786187C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22781659C;

  return v9(a1, a2);
}

uint64_t sub_227861994()
{
  if ((*(v0 + 124) & 1) == 0)
  {
    notify_cancel(*(v0 + 120));
  }

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227861A10()
{
  v7 = *MEMORY[0x277D85DE8];
  v1[8] = v0;
  v2 = sub_2278C75A0();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_227861AFC, v0, 0);
}

uint64_t sub_227861AFC()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  if (*(v1 + 124) == 1)
  {
    *(v0 + 96) = -1;
    v2 = *MEMORY[0x277CCC148];
    sub_2278002AC();
    v3 = sub_2278C7A60();
    *(v0 + 48) = sub_227861E44;
    *(v0 + 56) = v1;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_227800258;
    *(v0 + 40) = &block_descriptor_13;
    v4 = _Block_copy((v0 + 16));
    v5 = *(v0 + 56);

    LODWORD(v2) = notify_register_dispatch(v2, (v0 + 96), v3, v4);
    _Block_release(v4);

    if (v2 || (v13 = *(v0 + 96), v13 == -1))
    {
      v6 = *(v0 + 88);
      sub_2278C73A0();
      v7 = sub_2278C7590();
      v8 = sub_2278C7950();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2277F7000, v7, v8, "Failed to register for fitness mode changes", v9, 2u);
        MEMORY[0x22AA9E860](v9, -1, -1);
      }

      v11 = *(v0 + 80);
      v10 = *(v0 + 88);
      v12 = *(v0 + 72);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      *(v1 + 120) = v13;
      *(v1 + 124) = 0;
    }
  }

  v14 = *(v0 + 88);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_227861D20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_2278C7840();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_22788AE20(0, 0, v3, &unk_2278CCE70, v6);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227861E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_2278C75A0();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227861F24, 0, 0);
}

uint64_t sub_227861F24()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_227861FF0, Strong, 0);
  }

  else
  {
    v3 = *(v0 + 72);
    **(v0 + 40) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_227861FF0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  sub_2278C73A0();
  sub_2278C7580();
  (*(v4 + 8))(v1, v3);
  v5 = *(v2 + 112);
  if (qword_2813BC018 != -1)
  {
    v6 = *(v2 + 112);
    swift_once();
    v5 = v6;
  }

  [v5 postNotificationName:qword_2813BC3C8 object:v0[10]];

  return MEMORY[0x2822009F8](sub_227862120, 0, 0);
}

uint64_t sub_227862120()
{
  v1 = *(v0 + 72);
  **(v0 + 40) = *(v0 + 80) == 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227862190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return sub_227861E64(a1, v4, v5, v6);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227862290(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2278622D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22786233C(uint64_t a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1 - 1;
  if ((a1 - 1) >= 3)
  {
    sub_2278C73A0();
    v8 = sub_2278C7590();
    v9 = sub_2278C7960();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2277F7000, v8, v9, "### HKFitnessMode not handled", v10, 2u);
      MEMORY[0x22AA9E860](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return result;
}

unint64_t sub_227862498()
{
  result = qword_27D7D6378;
  if (!qword_27D7D6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6378);
  }

  return result;
}

uint64_t sub_2278624EC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227862604;

  return v9(a1, a2);
}

uint64_t sub_227862604(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t sub_227862710(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2278C7160();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278627D4, 0, 0);
}

uint64_t sub_2278627D4()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = sub_2278C67D0();
  v7 = sub_2278C68B0();
  v8 = _HKCacheIndexFromDate();

  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  v0[2] = MEMORY[0x277D84F90];
  sub_22784B9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
  sub_227829300();
  sub_2278C7AF0();
  v11 = *(MEMORY[0x277D09A30] + 4);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_227827380;
  v13 = v0[8];

  return MEMORY[0x282160398](v8, v13, v9, v10);
}

uint64_t sub_227862938()
{
  v10 = *MEMORY[0x277D85DE8];
  v1[8] = v0;
  v2 = sub_2278C6920();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_2278C6820();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_227862A80, 0, 0);
}

uint64_t sub_227862A80()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];
  sub_2278040AC((v3 + 5), (v0 + 2));
  v4 = v3[10];
  v0[15] = v4;
  v5 = v0[5];
  v6 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v5);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v5);
  v0[16] = sub_22786311C(v9, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  v10 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v10(v1);
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_227804920();
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_227862C84;
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[8];
  v15 = *MEMORY[0x277D85DE8];

  return sub_227862710(v12, v13);
}

uint64_t sub_227862C84(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  v7 = v3[14];
  v8 = v3[13];
  v9 = v3[12];
  (*(v3[10] + 8))(v3[11], v3[9]);
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v10 = sub_227863070;
  }

  else
  {
    v10 = sub_227862E84;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227862E84()
{
  v28 = *MEMORY[0x277D85DE8];
  *(v0 + 56) = 0;
  v1 = [*(v0 + 120) wheelchairUseWithError_];
  v2 = *(v0 + 56);
  if (v1)
  {
    v3 = v1;
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = v2;
    v8 = [v3 wheelchairUse];

    sub_227850628(v5, v8);
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    if (v4)
    {
    }

    else
    {
      v21 = v9;
      v22 = v10;

      if ((v22 & 1) == 0)
      {
        v23 = 0;
        goto LABEL_9;
      }
    }

    v21 = 0;
    v23 = 1;
LABEL_9:
    v24 = *(v0 + 112);
    v25 = *(v0 + 88);

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x277D85DE8];

    return v26(v21, v23);
  }

  v13 = *(v0 + 144);
  v14 = *(v0 + 128);
  v15 = v2;
  sub_2278C65F0();

  swift_willThrow();
  v16 = *(v0 + 112);
  v17 = *(v0 + 88);

  v18 = *(v0 + 8);
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

uint64_t sub_227863070()
{
  v7 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

id sub_22786311C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateProvider();
  v20 = v4;
  v21 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_2278238F8(a1, boxed_opaque_existential_1);
  v6 = type metadata accessor for WalkSuggestionProvider();
  v7 = objc_allocWithZone(v6);
  v8 = v20;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v18[3] = v4;
  v18[4] = &off_283AE99D8;
  v14 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_2278238F8(v12, v14);
  sub_2278040AC(v18, &v7[OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider]);
  *&v7[OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_healthStore] = a2;
  v17.receiver = v7;
  v17.super_class = v6;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v15;
}

uint64_t sub_2278632AC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_2278633C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2278003CC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2278634F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = *(a6 + 24);
  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2278004C0;
  v18.n128_f64[0] = a7;

  return v20(a1, a2, a3, a4, a5, a6, v18);
}

void sub_22786366C()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v0[3] = v1;
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (*MEMORY[0x277D86380])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86380], 0);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862C0]);
    xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v2 = swift_allocObject();
    *(v2 + 16) = 0xD00000000000003ALL;
    *(v2 + 24) = 0x80000002278D21D0;
    sub_2278645C4(0xD00000000000003ALL, 0x80000002278D21D0, v1, sub_227864894, v2);

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_22786381C;
    v4 = v0[2];

    sub_227863B34(0xD00000000000003ALL, 0x80000002278D21D0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22786381C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22786392C, v2, 0);
}

uint64_t sub_22786392C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22786398C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();

  v9 = sub_2278C7590();
  v10 = sub_2278C7970();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2278021B4(a1, a2, &v15);
    _os_log_impl(&dword_2277F7000, v9, v10, "Initial launch activity fired [%s]", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9E860](v12, -1, -1);
    MEMORY[0x22AA9E860](v11, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_227863B34(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_2278C75A0();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227863BF4, v2, 0);
}

uint64_t sub_227863BF4()
{
  v20 = v0;
  v1 = v0[6];
  v2 = v0[3];
  sub_2278C73A0();

  v3 = sub_2278C7590();
  v4 = sub_2278C7970();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2278021B4(v10, v9, &v19);
    _os_log_impl(&dword_2277F7000, v3, v4, "Unregistering xpc activity [%s]", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9E860](v12, -1, -1);
    MEMORY[0x22AA9E860](v11, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v13 = v0[6];
  v14 = v0[2];
  v15 = v0[3];
  v16 = sub_2278C7720();
  xpc_activity_unregister((v16 + 32));

  v17 = v0[1];

  return v17();
}

void sub_227863D8C(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v54 = a6;
  v55 = a5;
  v57 = a2;
  v9 = sub_2278C75A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v53 = &v51 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v56 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  state = xpc_activity_get_state(a1);
  sub_2278C73A0();

  v22 = sub_2278C7590();
  v23 = sub_2278C7970();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v51 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v52 = a1;
    v27 = v10;
    v28 = v26;
    v58 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_2278021B4(v57, a3, &v58);
    *(v25 + 12) = 2048;
    *(v25 + 14) = state;
    _os_log_impl(&dword_2277F7000, v22, v23, "Scheduling [%s] xpc activity fired for state=%ld", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    v10 = v27;
    a1 = v52;
    MEMORY[0x22AA9E860](v29, -1, -1);
    v30 = v25;
    v14 = v51;
    MEMORY[0x22AA9E860](v30, -1, -1);
  }

  v31 = *(v10 + 8);
  v32 = v31(v20, v9);
  if (state)
  {
    a4(v32);
    v33 = v56;
    sub_2278C73A0();

    v34 = sub_2278C7590();
    v35 = sub_2278C7970();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2278021B4(v57, a3, &v58);
      _os_log_impl(&dword_2277F7000, v34, v35, "Scheduling [%s] setting update task as done", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9E860](v37, -1, -1);
      MEMORY[0x22AA9E860](v36, -1, -1);
    }

    v31(v33, v9);
    if (!xpc_activity_set_state(a1, 5))
    {
      v46 = v53;
      sub_2278C73A0();

      v47 = sub_2278C7590();
      v48 = sub_2278C7950();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v58 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_2278021B4(v57, a3, &v58);
        _os_log_impl(&dword_2277F7000, v47, v48, "Scheduling [%s] failed to set xpc activity state to done", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x22AA9E860](v50, -1, -1);
        MEMORY[0x22AA9E860](v49, -1, -1);
      }

      v31(v46, v9);
    }
  }

  else
  {
    v38 = xpc_activity_copy_criteria(a1);
    if (!v38 || (v39 = xpc_equal(v38, v54), swift_unknownObjectRelease(), !v39))
    {
      sub_2278C73A0();

      v40 = sub_2278C7590();
      v41 = sub_2278C7970();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v14;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v58 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_2278021B4(v57, a3, &v58);
        _os_log_impl(&dword_2277F7000, v40, v41, "Scheduling [%s] setting criteria", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x22AA9E860](v44, -1, -1);
        MEMORY[0x22AA9E860](v43, -1, -1);

        v45 = v42;
      }

      else
      {

        v45 = v14;
      }

      v31(v45, v9);
      xpc_activity_set_criteria(a1, v54);
    }
  }
}

uint64_t sub_227864368()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2278643BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2278643E4, v5, 0);
}

void sub_2278643E4()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (!*MEMORY[0x277D86370])
  {
    goto LABEL_11;
  }

  v2 = *(v0 + 4);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86370], 1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v0[4];
  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + 5);
  v4 = *(v0 + 6);
  v7 = *(v0 + 2);
  v6 = *(v0 + 3);
  xpc_dictionary_set_int64(v1, *MEMORY[0x277D86250], v3);
  xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862C0]);
  xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  sub_2278645C4(v7, v6, v1, v5, v4);
  swift_unknownObjectRelease();
  v8 = *(v0 + 1);

  v8();
}

void *sub_227864574(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_227864594@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_2278645C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2278C75A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();

  v15 = sub_2278C7590();
  v16 = sub_2278C7970();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = a3;
    v28 = a5;
    v18 = v17;
    v19 = a4;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v18 = 136315138;
    *(v18 + 4) = sub_2278021B4(a1, a2, aBlock);
    _os_log_impl(&dword_2277F7000, v15, v16, "Registering xpc activity [%s]", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    a4 = v19;
    MEMORY[0x22AA9E860](v21, -1, -1);
    v22 = v18;
    a3 = v27;
    a5 = v28;
    MEMORY[0x22AA9E860](v22, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v23 = *MEMORY[0x277D86238];
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = a4;
  v24[5] = a5;
  v24[6] = a3;
  aBlock[4] = sub_22786486C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227839D18;
  aBlock[3] = &block_descriptor_14;
  v25 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v26 = sub_2278C7720();
  xpc_activity_register((v26 + 32), v23, v25);

  _Block_release(v25);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22786489C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_2278649B4()
{
  v1[33] = v0;
  v2 = sub_2278C6860();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v4 = *(v3 + 64) + 15;
  v1[36] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[37] = v5;
  v6 = *(v5 - 8);
  v1[38] = v6;
  v7 = *(v6 + 64) + 15;
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227864AD0, 0, 0);
}

uint64_t sub_227864AD0()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  sub_2278C73A0();
  sub_2278C7580();
  (*(v1 + 8))(v2, v4);
  v8 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v0[40] = v8;
  [v8 setCategoryIdentifier_];
  v9 = sub_2278C76F0();
  [v8 setTitle_];

  v10 = sub_2278C76F0();
  [v8 setBody_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278C9140;
  v12 = *MEMORY[0x277D09C38];
  v0[31] = sub_2278C7700();
  v0[32] = v13;
  sub_2278C7BF0();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2278C3BA4(inited);
  swift_setDeallocating();
  sub_2278650B0(inited + 32);
  v14 = sub_2278C7640();

  [v8 setUserInfo_];

  sub_2278C6850();
  sub_2278C6840();
  (*(v6 + 8))(v3, v5);
  v15 = v8;
  v16 = sub_2278C76F0();

  v17 = [objc_opt_self() requestWithIdentifier:v16 content:v15 trigger:0];
  v0[41] = v17;

  v18 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v0[2] = v0;
  v0[3] = sub_227864E84;
  v19 = swift_continuation_init();
  v0[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  v0[23] = MEMORY[0x277D85DD0];
  v0[24] = 1107296256;
  v0[25] = sub_227822B84;
  v0[26] = &block_descriptor_15;
  v0[27] = v19;
  [v18 addNotificationRequest:v17 withCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_227864E84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_22786501C;
  }

  else
  {
    v3 = sub_227864F94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227864F94()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22786501C()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[36];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[42];

  return v6();
}

uint64_t sub_2278650B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6150, &unk_2278CAAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227865154(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2278C9970;
  v3 = *MEMORY[0x277CBD078];
  v4 = *MEMORY[0x277CBD000];
  *(v2 + 32) = *MEMORY[0x277CBD078];
  *(v2 + 40) = v4;
  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E8, &qword_2278CD288);
  v7 = sub_2278C7790();

  v20[0] = 0;
  v8 = [a1 _ios_meContactWithKeysToFetch_error_];

  if (v8)
  {
    v9 = v20[0];
    v10 = [v8 nickname];
    v11 = sub_2278C7700();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
    }

    else
    {

      v17 = [v8 givenName];
      v11 = sub_2278C7700();
    }
  }

  else
  {
    v15 = v20[0];
    v16 = sub_2278C65F0();

    swift_willThrow();
    v11 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_227865334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2278003CC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_227865478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2278004C0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2278655A8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_2278656D4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 240) = a2;
  *(v4 + 248) = v3;
  *(v4 + 456) = a3;
  *(v4 + 232) = a1;
  v5 = sub_2278C6920();
  *(v4 + 256) = v5;
  v6 = *(v5 - 8);
  *(v4 + 264) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v8 = sub_2278C6820();
  *(v4 + 280) = v8;
  v9 = *(v8 - 8);
  *(v4 + 288) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  v11 = sub_2278C6A20();
  *(v4 + 304) = v11;
  v12 = *(v11 - 8);
  *(v4 + 312) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v14 = sub_2278C6D60();
  *(v4 + 344) = v14;
  v15 = *(v14 - 8);
  *(v4 + 352) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278658D4, 0, 0);
}