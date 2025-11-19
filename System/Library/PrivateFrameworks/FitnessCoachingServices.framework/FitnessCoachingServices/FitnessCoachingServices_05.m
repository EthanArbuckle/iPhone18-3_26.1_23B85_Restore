uint64_t sub_22787F8BC()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];

  sub_2278C7330();
  v4 = v1;
  v5 = sub_2278C7590();
  v6 = sub_2278C7950();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2277F7000, v5, v6, "Error handling a user day update: %@", v9, 0xCu);
    sub_227802FC4(v10, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v10, -1, -1);
    MEMORY[0x22AA9E860](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22787FA4C()
{
  v0 = sub_2278C7110();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - v6;
  v8 = *MEMORY[0x277D09A88];
  v9 = v1[13];
  v9(v27 - v6, v8, v0);
  *&v28 = sub_2278C70F0();
  v10 = v1[1];
  v10(v7, v0);
  v9(v5, v8, v0);
  v27[1] = sub_2278C7100();
  v10(v5, v0);
  v9(v5, v8, v0);
  v11 = sub_2278C70E0();
  v10(v5, v0);
  v12 = sub_2278C76F0();

  v13 = sub_2278C76F0();

  v14 = [objc_opt_self() actionWithIdentifier:v12 title:v13 options:4 icon:v11];

  v15 = *MEMORY[0x277D09C40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v16 = swift_allocObject();
  v28 = xmmword_2278CC820;
  *(v16 + 16) = xmmword_2278CC820;
  *(v16 + 32) = v14;
  sub_22787FD88();
  v17 = v15;
  v18 = v14;
  v19 = sub_2278C7790();

  v20 = sub_2278C7790();
  v21 = sub_2278C76F0();
  v22 = [objc_opt_self() categoryWithIdentifier:v17 actions:v19 intentIdentifiers:v20 hiddenPreviewsBodyPlaceholder:v21 options:1];

  inited = swift_initStackObject();
  *(inited + 16) = v28;
  *(inited + 32) = v22;
  v24 = v22;
  v25 = sub_2278A4CF8(inited);

  return v25;
}

unint64_t sub_22787FD88()
{
  result = qword_2813B9AF8;
  if (!qword_2813B9AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9AF8);
  }

  return result;
}

uint64_t sub_22787FDD4(uint64_t a1)
{
  v4 = *(type metadata accessor for NotificationRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2278003CC;

  return sub_22787DE94(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_22787FEF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2278004C0;

  return sub_227888604(a1, v5);
}

unint64_t sub_22787FFAC()
{
  result = qword_2813BC128;
  if (!qword_2813BC128)
  {
    sub_2278C6DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC128);
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_227880050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return sub_227878F74(a1, v4, v5, v6, (v1 + 5));
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227880138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_22787F5C8(a1, v4, v5, v6);
}

uint64_t sub_2278801EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_22787EF48(a1, v4, v5, v6);
}

uint64_t sub_2278802B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2278803DC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2278C75A0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_2278C7160();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278804F8, 0, 0);
}

uint64_t sub_2278804F8()
{
  v1 = [*(v0 + 56) completedGoalTypes];
  sub_2278184E8();
  v2 = sub_2278C77A0();

  if (v2 >> 62)
  {
    v3 = sub_2278C7B80();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 == 1)
  {
    v4 = [*(v0 + 56) completedGoalTypes];
    v5 = sub_2278C77A0();

    if (v5 >> 62)
    {
      v9 = sub_2278C7B80();
      if (v9)
      {
LABEL_6:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x22AA9DBF0](0, v5);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return MEMORY[0x282160398](v9, v6, v7, v8);
          }

          v10 = *(v5 + 32);
        }

        v11 = v10;
        v12 = *(v0 + 112);
        v13 = *(v0 + 96);
        v15 = *(v0 + 56);
        v14 = *(v0 + 64);

        *(v0 + 120) = [v11 integerValue];

        v16 = v14[3];
        v17 = v14[4];
        __swift_project_boxed_opaque_existential_1(v14, v16);
        v18 = [v15 activitySummaryIndex];
        *(v0 + 40) = MEMORY[0x277D84F90];
        sub_227882164(&qword_2813BC0F8, MEMORY[0x277D09AB8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
        sub_227829300();
        sub_2278C7AF0();
        v19 = *(MEMORY[0x277D09A30] + 4);
        v20 = swift_task_alloc();
        *(v0 + 128) = v20;
        *v20 = v0;
        v20[1] = sub_2278807E8;
        v6 = *(v0 + 112);
        v9 = v18;
        v7 = v16;
        v8 = v17;

        return MEMORY[0x282160398](v9, v6, v7, v8);
      }
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_6;
      }
    }
  }

  v21 = *(v0 + 112);
  v22 = *(v0 + 88);

  v23 = *(v0 + 8);

  return v23(0);
}

uint64_t sub_2278807E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = v1;

  v7 = v4[14];
  v8 = v4[13];
  v9 = v4[12];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_227880A0C;
  }

  else
  {
    v4[18] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_227880970;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227880970()
{
  v1 = v0[18];
  v2 = v0[15];
  sub_2278C79F0();
  v4 = v3;

  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];

  return v7(v4 >= 1.01);
}

uint64_t sub_227880A0C()
{
  v24 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  sub_2278C7360();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 80);
    v22 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v12 = MEMORY[0x22AA9DD80](*(v0 + 24), *(v0 + 32));
    v14 = sub_2278021B4(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error fetching summary for goal exceeded %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9E860](v10, -1, -1);
    MEMORY[0x22AA9E860](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 72);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 112);
  v19 = *(v0 + 88);

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_227880BF4(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_2278C6860();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v6 = sub_2278C6920();
  v2[38] = v6;
  v7 = *(v6 - 8);
  v2[39] = v7;
  v8 = *(v7 + 64) + 15;
  v2[40] = swift_task_alloc();
  v9 = sub_2278C6820();
  v2[41] = v9;
  v10 = *(v9 - 8);
  v2[42] = v10;
  v11 = *(v10 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v12 = sub_2278C7420();
  v2[45] = v12;
  v13 = *(v12 - 8);
  v2[46] = v13;
  v14 = *(v13 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v15 = sub_2278C75A0();
  v2[49] = v15;
  v16 = *(v15 - 8);
  v2[50] = v16;
  v17 = *(v16 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227880E6C, 0, 0);
}

uint64_t sub_227880E6C()
{
  v1 = v0[55];
  v2 = v0[49];
  v3 = v0[50];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[45];
  v7 = v0[46];
  v8 = v0[34];
  sub_2278C7360();
  sub_2278C7580();
  v9 = *(v3 + 8);
  v0[56] = v9;
  v0[57] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  v10 = *(v8 + 128);
  sub_2278C7430();
  sub_2278C73D0();
  sub_227882164(&qword_2813BC0F0, MEMORY[0x277D09B28]);
  LOBYTE(v1) = sub_2278C7AE0();
  v11 = *(v7 + 8);
  v11(v5, v6);
  v11(v4, v6);
  if (v1)
  {
    if (sub_22785ACAC())
    {
      __swift_project_boxed_opaque_existential_1((v0[34] + 184), *(v0[34] + 208));
      v12 = swift_task_alloc();
      v0[58] = v12;
      *v12 = v0;
      v12[1] = sub_2278811F8;

      return sub_227817030(0xD000000000000015, 0x80000002278CFA80);
    }

    v22 = v0[52];
    sub_2278C7360();
    v15 = sub_2278C7590();
    v16 = sub_2278C7970();
    v23 = os_log_type_enabled(v15, v16);
    v18 = v0[52];
    v19 = v0[49];
    if (v23)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not posting goal completion notification, fitness tracking is disabled";
      goto LABEL_10;
    }
  }

  else
  {
    v14 = v0[51];
    sub_2278C7360();
    v15 = sub_2278C7590();
    v16 = sub_2278C7970();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[51];
    v19 = v0[49];
    if (v17)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not posting goal completion notification, disabled for platform";
LABEL_10:
      _os_log_impl(&dword_2277F7000, v15, v16, v21, v20, 2u);
      MEMORY[0x22AA9E860](v20, -1, -1);
    }
  }

  v9(v18, v19);
  v25 = v0[54];
  v24 = v0[55];
  v27 = v0[52];
  v26 = v0[53];
  v28 = v0[51];
  v30 = v0[47];
  v29 = v0[48];
  v32 = v0[43];
  v31 = v0[44];
  v33 = v0[40];
  v35 = v0[37];

  v34 = v0[1];

  return v34();
}

uint64_t sub_2278811F8(unsigned __int8 a1)
{
  v3 = a1;
  v4 = *(*v1 + 464);
  v7 = *v1;

  if (v3 == 2 || (a1 & 1) != 0)
  {
    v5 = sub_227881318;
  }

  else
  {
    v5 = sub_227881FCC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227881318()
{
  v1 = v0[33];
  v2 = *(v0[34] + 136);
  v0[59] = v2;
  v3 = [v1 completedGoalTypes];
  if (!v3)
  {
    sub_2278184E8();
    sub_2278C77A0();
    v3 = sub_2278C7790();
  }

  v4 = v2 == 2;
  v5 = v0[34];
  v6 = objc_opt_self();
  v0[60] = v6;
  v0[61] = *(v5 + 120);
  v7 = [v6 localizedTitleForGoalsCompleted:v3 isWheelchairUser:v4 experienceType:?];

  if (!v7)
  {
    sub_2278C7700();
    v7 = sub_2278C76F0();
  }

  v0[62] = v7;
  v8 = swift_task_alloc();
  v0[63] = v8;
  *v8 = v0;
  v8[1] = sub_227881474;
  v9 = v0[33];
  v10 = v0[34];

  return sub_2278803DC(v9);
}

uint64_t sub_227881474(char a1)
{
  v2 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 544) = a1;

  return MEMORY[0x2822009F8](sub_227881574, 0, 0);
}

uint64_t sub_227881574()
{
  v1 = [*(v0 + 264) completedGoalTypes];
  if (!v1)
  {
    sub_2278184E8();
    sub_2278C77A0();
    v1 = sub_2278C7790();
  }

  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v54 = v6;
  v6(v2);
  v7 = sub_2278C67D0();
  v56 = *(v3 + 8);
  v56(v2, v4);
  v55 = v5;
  v8 = __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_227865154(*v8);
  if (v9)
  {
    v10 = sub_2278C76F0();
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v50) = 1;
  v11 = [*(v0 + 480) localizedDescriptionForGoalsCompleted:v1 singleGoalExceeded:*(v0 + 544) date:v7 firstName:v10 isWheelchairUser:*(v0 + 472) == 2 experienceType:*(v0 + 488) isStandalone:v50];

  if (!v11)
  {
    sub_2278C7700();
    v11 = sub_2278C76F0();
  }

  v12 = *(v0 + 480);
  v13 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  *(v0 + 512) = v13;
  [v13 setCategoryIdentifier_];
  v14 = [v12 localizedAppName];
  if (!v14)
  {
    sub_2278C7700();
    v14 = sub_2278C76F0();
  }

  v15 = *(v0 + 496);
  v53 = *(v0 + 432);
  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v20 = *(v0 + 304);
  v21 = *(v0 + 312);
  v51 = v20;
  v52 = *(v0 + 264);
  [v13 setTitle_];

  [v13 setSubtitle_];
  [v13 setBody_];

  __swift_project_boxed_opaque_existential_1(v55 + 10, v55[13]);
  v54(v17);
  __swift_project_boxed_opaque_existential_1(v55 + 10, v55[13]);
  sub_227804920();
  sub_2278C6760();
  (*(v21 + 8))(v19, v51);
  v56(v17, v18);
  v22 = sub_2278C67D0();
  v56(v16, v18);
  [v13 setExpirationDate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278C9140;
  v24 = *MEMORY[0x277D09C38];
  *(v0 + 248) = sub_2278C7700();
  *(v0 + 256) = v25;
  sub_2278C7BF0();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 3;
  sub_2278C3BA4(inited);
  swift_setDeallocating();
  sub_227802FC4(inited + 32, &qword_27D7D6150, &unk_2278CAAE0);
  v26 = sub_2278C7640();

  [v13 setUserInfo_];

  sub_2277FF194(100.0, 100.0);
  v27 = sub_2278C76F0();

  v28 = [objc_opt_self() iconAtPath_];
  *(v0 + 520) = v28;

  v57 = v13;
  [v13 setIcon_];
  sub_2278C7360();
  v29 = v52;
  v30 = sub_2278C7590();
  v31 = sub_2278C7970();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 264);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v32;
    *v34 = v32;
    v35 = v32;
    _os_log_impl(&dword_2277F7000, v30, v31, "Posting goal completion notification: %@", v33, 0xCu);
    sub_227802FC4(v34, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v34, -1, -1);
    MEMORY[0x22AA9E860](v33, -1, -1);
  }

  v37 = *(v0 + 448);
  v36 = *(v0 + 456);
  v38 = *(v0 + 432);
  v39 = *(v0 + 392);
  v40 = *(v0 + 288);
  v41 = *(v0 + 296);
  v43 = *(v0 + 272);
  v42 = *(v0 + 280);

  v37(v38, v39);
  sub_2278C6850();
  sub_2278C6840();
  (*(v40 + 8))(v41, v42);
  v44 = v57;
  v45 = sub_2278C76F0();

  v46 = [objc_opt_self() requestWithIdentifier:v45 content:v44 trigger:0];
  *(v0 + 528) = v46;

  v47 = *__swift_project_boxed_opaque_existential_1((v43 + 144), *(v43 + 168));
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_227881C98;
  v48 = swift_continuation_init();
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  *(v0 + 184) = MEMORY[0x277D85DD0];
  *(v0 + 192) = 1107296256;
  *(v0 + 200) = sub_227822B84;
  *(v0 + 208) = &block_descriptor_20;
  *(v0 + 216) = v48;
  [v47 addNotificationRequest:v46 withCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_227881C98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  if (v2)
  {
    v3 = sub_227881EB0;
  }

  else
  {
    v3 = sub_227881DA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227881DA8()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 408);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v12 = *(v0 + 320);
  v15 = *(v0 + 296);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_227881EB0()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v6 = v0[54];
  v5 = v0[55];
  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[51];
  v13 = v0[48];
  v14 = v0[47];
  v15 = v0[44];
  v16 = v0[43];
  v17 = v0[40];
  v18 = v0[37];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[67];

  return v10();
}

uint64_t sub_227881FCC()
{
  v1 = v0[53];
  sub_2278C7360();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[56];
  v5 = v0[57];
  v7 = v0[53];
  v8 = v0[49];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "Not posting goal completion notification, goal completion notifications are disabled in settings", v9, 2u);
    MEMORY[0x22AA9E860](v9, -1, -1);
  }

  v6(v7, v8);
  v11 = v0[54];
  v10 = v0[55];
  v13 = v0[52];
  v12 = v0[53];
  v14 = v0[51];
  v16 = v0[47];
  v15 = v0[48];
  v18 = v0[43];
  v17 = v0[44];
  v19 = v0[40];
  v22 = v0[37];

  v20 = v0[1];

  return v20();
}

uint64_t sub_227882164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2278821B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_2278821FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22788228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2278004C0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2278823BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_2278824EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2278004C0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_227882620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2278004C0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_227882764(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_22788287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_2278829A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

id sub_227882AE0()
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

uint64_t sub_227882C44(uint64_t a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2278C6D60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D09868])
  {
    v13 = MEMORY[0x277D09BE8];
LABEL_5:
    v14 = *v13;
    return sub_2278C7700();
  }

  if (v12 == *MEMORY[0x277D09860])
  {
    v13 = MEMORY[0x277D09BD8];
    goto LABEL_5;
  }

  sub_2278C7370();
  sub_2278C7580();
  (*(v3 + 8))(v6, v2);
  result = sub_2278C7D00();
  __break(1u);
  return result;
}

uint64_t sub_227882E94(uint64_t a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2278C6D60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D09868])
  {
    v13 = MEMORY[0x277D09BF0];
LABEL_5:
    v14 = *v13;
    return sub_2278C7700();
  }

  if (v12 == *MEMORY[0x277D09860])
  {
    v13 = MEMORY[0x277D09BE0];
    goto LABEL_5;
  }

  sub_2278C7370();
  sub_2278C7580();
  (*(v3 + 8))(v6, v2);
  result = sub_2278C7D00();
  __break(1u);
  return result;
}

uint64_t sub_2278830E4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 336) = a3;
  *(v4 + 144) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  *(v4 + 168) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v7 = sub_2278C6820();
  *(v4 + 208) = v7;
  v8 = *(v7 - 8);
  *(v4 + 216) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v10 = sub_2278C6D60();
  *(v4 + 240) = v10;
  v11 = *(v10 - 8);
  *(v4 + 248) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  v13 = sub_2278C75A0();
  *(v4 + 288) = v13;
  v14 = *(v13 - 8);
  *(v4 + 296) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227883318, 0, 0);
}

uint64_t sub_227883318()
{
  v195 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 160);
  v3 = sub_227882E94(*(v0 + 152));
  v4 = v3;
  v6 = v5;
  if (v1 == 1)
  {
    v188 = v3;
    v7 = *(v0 + 328);
    v8 = *(v0 + 280);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v11 = *(v0 + 152);
    sub_2278C7370();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_2278C7590();
    v13 = sub_2278C7970();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 328);
    v16 = *(v0 + 288);
    v17 = *(v0 + 296);
    v18 = *(v0 + 280);
    v20 = *(v0 + 240);
    v19 = *(v0 + 248);
    if (v14)
    {
      v179 = v6;
      v21 = swift_slowAlloc();
      v183 = v16;
      v22 = swift_slowAlloc();
      *&v193 = v22;
      *v21 = 136315138;
      v175 = v15;
      v23 = sub_2278C6D50();
      v172 = v13;
      v25 = v24;
      (*(v19 + 8))(v18, v20);
      v26 = sub_2278021B4(v23, v25, &v193);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2277F7000, v12, v172, "[%s] Scheduled date pref syncing", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA9E860](v22, -1, -1);
      v27 = v21;
      v6 = v179;
      MEMORY[0x22AA9E860](v27, -1, -1);

      (*(v17 + 8))(v175, v183);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
      (*(v17 + 8))(v15, v16);
    }

    v28 = [objc_allocWithZone(MEMORY[0x277D2BA60]) init];
    v29 = *MEMORY[0x277D09B98];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6088, &qword_2278C96A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2278C9140;
    v4 = v188;
    *(inited + 32) = v188;
    *(inited + 40) = v6;
    v31 = v29;

    sub_22788594C(inited);
    swift_setDeallocating();
    sub_227885AB4(inited + 32);
    v32 = sub_2278C78C0();

    [v28 synchronizeUserDefaultsDomain:v31 keys:v32];
  }

  v33 = *(v0 + 160);
  v34 = sub_227882AE0();
  if (!v34)
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
LABEL_15:
    v75 = *(v0 + 208);
    v76 = *(v0 + 216);
    v77 = *(v0 + 200);
    sub_227802FC4(v0 + 64, &qword_27D7D60A0, qword_2278C98D0);
    v43 = *(v76 + 56);
    v43(v77, 1, 1, v75);
LABEL_16:
    v78 = *(v0 + 160);
    sub_227802FC4(*(v0 + 200), &qword_27D7D60A8, qword_2278C9730);
    v79 = sub_227882AE0();
    if (v79)
    {
      v80 = v79;
      v81 = sub_2278C76F0();
      v82 = [v80 objectForKey_];

      if (v82)
      {
        sub_2278C7AD0();
        swift_unknownObjectRelease();
      }

      else
      {
        v193 = 0u;
        v194 = 0u;
      }

      v83 = v194;
      *(v0 + 96) = v193;
      *(v0 + 112) = v83;
      if (*(v0 + 120))
      {
        if (swift_dynamicCast())
        {
          v85 = *(v0 + 128);
          v84 = *(v0 + 136);
          v86 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v87 = sub_2278C76F0();
          [v86 setDateFormat_];

          loga = v85;
          v176 = v84;
          v88 = sub_2278C76F0();
          v185 = v86;
          v89 = [v86 dateFromString_];

          v180 = v6;
          v190 = v4;
          v90 = v43;
          if (v89)
          {
            v91 = *(v0 + 184);
            sub_2278C6800();

            v92 = 0;
          }

          else
          {
            v92 = 1;
          }

          v117 = *(v0 + 312);
          v118 = *(v0 + 264);
          v119 = *(v0 + 240);
          v120 = *(v0 + 248);
          v122 = *(v0 + 184);
          v121 = *(v0 + 192);
          v123 = *(v0 + 176);
          v124 = *(v0 + 152);
          v125 = *(v0 + 216) + 56;
          v90(v122, v92, 1, *(v0 + 208));
          sub_227854DEC(v122, v121);
          sub_2278C7370();
          (*(v120 + 16))(v118, v124, v119);
          sub_2278102C8(v121, v123);

          v126 = sub_2278C7590();
          LOBYTE(v119) = sub_2278C7970();

          v168 = v119;
          v174 = v126;
          v127 = os_log_type_enabled(v126, v119);
          v128 = *(v0 + 312);
          v130 = *(v0 + 288);
          v129 = *(v0 + 296);
          v131 = *(v0 + 264);
          v132 = *(v0 + 240);
          v133 = *(v0 + 248);
          v134 = *(v0 + 176);
          if (v127)
          {
            v160 = *(v0 + 168);
            v166 = *(v0 + 288);
            v135 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            *&v193 = v162;
            *v135 = 136315906;
            v136 = sub_2278C6D50();
            v164 = v128;
            v138 = v137;
            (*(v133 + 8))(v131, v132);
            v139 = sub_2278021B4(v136, v138, &v193);

            *(v135 + 4) = v139;
            *(v135 + 12) = 2080;
            v140 = sub_2278021B4(loga, v176, &v193);

            *(v135 + 14) = v140;
            *(v135 + 22) = 2080;
            v141 = sub_2278021B4(v190, v180, &v193);

            *(v135 + 24) = v141;
            *(v135 + 32) = 2080;
            v142 = sub_2278C7AA0();
            v144 = v143;
            sub_227802FC4(v134, &qword_27D7D60A8, qword_2278C9730);
            v145 = sub_2278021B4(v142, v144, &v193);

            *(v135 + 34) = v145;
            _os_log_impl(&dword_2277F7000, v174, v168, "[%s] Scheduled Date from %s: (%s) = %s", v135, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x22AA9E860](v162, -1, -1);
            MEMORY[0x22AA9E860](v135, -1, -1);

            (*(v129 + 8))(v164, v166);
          }

          else
          {

            sub_227802FC4(v134, &qword_27D7D60A8, qword_2278C9730);
            (*(v133 + 8))(v131, v132);
            (*(v129 + 8))(v128, v130);
          }

          sub_227854DEC(*(v0 + 192), *(v0 + 144));
          goto LABEL_39;
        }

LABEL_28:
        v93 = *(v0 + 304);
        v95 = *(v0 + 248);
        v94 = *(v0 + 256);
        v96 = *(v0 + 240);
        v97 = *(v0 + 152);
        sub_2278C7370();
        (*(v95 + 16))(v94, v97, v96);
        v98 = sub_2278C7590();
        v99 = sub_2278C7970();
        v100 = os_log_type_enabled(v98, v99);
        v102 = *(v0 + 296);
        v101 = *(v0 + 304);
        v103 = *(v0 + 288);
        v105 = *(v0 + 248);
        v104 = *(v0 + 256);
        v106 = *(v0 + 240);
        if (v100)
        {
          v191 = *(v0 + 288);
          v107 = swift_slowAlloc();
          v177 = v99;
          v108 = swift_slowAlloc();
          *&v193 = v108;
          *v107 = 136315138;
          v181 = v101;
          v186 = v43;
          v109 = sub_2278C6D50();
          v111 = v110;
          (*(v105 + 8))(v104, v106);
          v112 = v109;
          v43 = v186;
          v113 = sub_2278021B4(v112, v111, &v193);

          *(v107 + 4) = v113;
          _os_log_impl(&dword_2277F7000, v98, v177, "[%s] No schedule date in user preferences", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v108);
          MEMORY[0x22AA9E860](v108, -1, -1);
          MEMORY[0x22AA9E860](v107, -1, -1);

          (*(v102 + 8))(v181, v191);
        }

        else
        {

          (*(v105 + 8))(v104, v106);
          (*(v102 + 8))(v101, v103);
        }

        v114 = *(v0 + 216) + 56;
        v43(*(v0 + 144), 1, 1, *(v0 + 208));
        goto LABEL_39;
      }
    }

    else
    {

      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    sub_227802FC4(v0 + 96, &qword_27D7D60A0, qword_2278C98D0);
    goto LABEL_28;
  }

  v35 = v34;
  v36 = sub_2278C76F0();
  v37 = [v35 objectForKey_];

  if (v37)
  {
    sub_2278C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v193 = 0u;
    v194 = 0u;
  }

  v38 = v194;
  *(v0 + 64) = v193;
  *(v0 + 80) = v38;
  if (!*(v0 + 88))
  {
    goto LABEL_15;
  }

  v39 = *(v0 + 208);
  v40 = *(v0 + 216);
  v41 = *(v0 + 200);
  v42 = swift_dynamicCast();
  v43 = *(v40 + 56);
  v43(v41, v42 ^ 1u, 1, v39);
  if ((*(v40 + 48))(v41, 1, v39) == 1)
  {
    goto LABEL_16;
  }

  v184 = v43;
  v189 = v4;
  v44 = *(v0 + 320);
  v45 = *(v0 + 272);
  v46 = v6;
  v47 = *(v0 + 240);
  v48 = *(v0 + 248);
  v49 = *(v0 + 232);
  v50 = *(v0 + 208);
  v51 = *(v0 + 216);
  v52 = *(v0 + 152);
  logb = *(v0 + 224);
  v173 = *(v51 + 32);
  (v173)(v49, *(v0 + 200), v50);
  sub_2278C7370();
  (*(v48 + 16))(v45, v52, v47);
  v53 = v46;
  (*(v51 + 16))(logb, v49, v50);

  v54 = sub_2278C7590();
  LOBYTE(v47) = sub_2278C7970();

  v165 = v47;
  log = v54;
  v55 = os_log_type_enabled(v54, v47);
  v56 = *(v0 + 320);
  v58 = *(v0 + 288);
  v57 = *(v0 + 296);
  v59 = *(v0 + 272);
  v61 = *(v0 + 240);
  v60 = *(v0 + 248);
  v62 = *(v0 + 216);
  v167 = *(v0 + 224);
  v63 = *(v0 + 208);
  if (v55)
  {
    v161 = *(v0 + 320);
    v163 = *(v0 + 288);
    v64 = v53;
    v65 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    *&v193 = v158;
    *v65 = 136315650;
    v66 = sub_2278C6D50();
    v159 = v57;
    v68 = v67;
    (*(v60 + 8))(v59, v61);
    v69 = sub_2278021B4(v66, v68, &v193);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2080;
    v70 = sub_2278021B4(v189, v64, &v193);

    *(v65 + 14) = v70;
    *(v65 + 22) = 2080;
    sub_227885B08(&qword_2813BC158, MEMORY[0x277CC9578]);
    v71 = sub_2278C7DA0();
    v73 = v72;
    (*(v62 + 8))(v167, v63);
    v74 = sub_2278021B4(v71, v73, &v193);

    *(v65 + 24) = v74;
    _os_log_impl(&dword_2277F7000, log, v165, "[%s] Scheduled Date from Date: (%s) = %s", v65, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v158, -1, -1);
    MEMORY[0x22AA9E860](v65, -1, -1);

    (*(v159 + 8))(v161, v163);
  }

  else
  {

    (*(v62 + 8))(v167, v63);
    (*(v60 + 8))(v59, v61);
    (*(v57 + 8))(v56, v58);
  }

  v115 = *(v0 + 208);
  v116 = *(v0 + 144);
  (v173)(v116, *(v0 + 232), v115);
  v184(v116, 0, 1, v115);
LABEL_39:
  v147 = *(v0 + 320);
  v146 = *(v0 + 328);
  v149 = *(v0 + 304);
  v148 = *(v0 + 312);
  v151 = *(v0 + 272);
  v150 = *(v0 + 280);
  v153 = *(v0 + 256);
  v152 = *(v0 + 264);
  v155 = *(v0 + 224);
  v154 = *(v0 + 232);
  v178 = *(v0 + 200);
  v182 = *(v0 + 192);
  v187 = *(v0 + 184);
  v192 = *(v0 + 176);

  v156 = *(v0 + 8);

  return v156();
}

uint64_t sub_227884164(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2278C6820();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_2278C6D60();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_2278C75A0();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278842E0, 0, 0);
}

uint64_t sub_2278842E0()
{
  v48 = v0;
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[2];
  v8 = v0[3];
  sub_2278C7370();
  (*(v3 + 16))(v2, v8, v4);
  (*(v7 + 16))(v5, v9, v6);
  v10 = sub_2278C7590();
  v45 = sub_2278C7970();
  log = v10;
  v11 = os_log_type_enabled(v10, v45);
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[6];
  v19 = v0[7];
  v20 = v0[5];
  if (v11)
  {
    v44 = v0[13];
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v21 = 136315394;
    v42 = v12;
    v43 = v15;
    v22 = sub_2278C6D50();
    v24 = v23;
    (*(v17 + 8))(v14, v16);
    v25 = sub_2278021B4(v22, v24, &v47);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_227885B08(&qword_2813BC158, MEMORY[0x277CC9578]);
    v26 = sub_2278C7DA0();
    v28 = v27;
    (*(v18 + 8))(v19, v20);
    v29 = sub_2278021B4(v26, v28, &v47);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2277F7000, log, v45, "[%s] Set mostRecentAlertDate = %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v41, -1, -1);
    MEMORY[0x22AA9E860](v21, -1, -1);

    (*(v42 + 8))(v44, v43);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v14, v16);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[4];
  sub_227882C44(v0[3]);
  v31 = sub_227882AE0();
  if (v31)
  {
    v32 = v31;
    v33 = v0[2];
    v34 = sub_2278C67D0();
    v35 = sub_2278C76F0();

    [v32 setObject:v34 forKey:v35];
  }

  else
  {
  }

  v36 = v0[13];
  v37 = v0[10];
  v38 = v0[7];

  v39 = v0[1];

  return v39();
}

uint64_t sub_227884658(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_22788467C, 0, 0);
}

uint64_t sub_22788467C()
{
  v1 = *(v0 + 64);
  sub_227882C44(*(v0 + 56));
  v2 = sub_227882AE0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_2278C76F0();

    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_2278C7AD0();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    *(v0 + 16) = v13;
    *(v0 + 32) = v14;
    if (*(v0 + 40))
    {
      v6 = *(v0 + 48);
      v7 = sub_2278C6820();
      v8 = swift_dynamicCast();
      (*(*(v7 - 8) + 56))(v6, v8 ^ 1u, 1, v7);
      goto LABEL_9;
    }
  }

  else
  {

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  v9 = *(v0 + 48);
  sub_227802FC4(v0 + 16, &qword_27D7D60A0, qword_2278C98D0);
  v10 = sub_2278C6820();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
LABEL_9:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_227884840(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2278C6820();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_2278C6D60();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_2278C75A0();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278849BC, 0, 0);
}

uint64_t sub_2278849BC()
{
  v48 = v0;
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[2];
  v8 = v0[3];
  sub_2278C7370();
  (*(v3 + 16))(v2, v8, v4);
  (*(v7 + 16))(v5, v9, v6);
  v10 = sub_2278C7590();
  v45 = sub_2278C7970();
  log = v10;
  v11 = os_log_type_enabled(v10, v45);
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[6];
  v19 = v0[7];
  v20 = v0[5];
  if (v11)
  {
    v44 = v0[13];
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v21 = 136315394;
    v42 = v12;
    v43 = v15;
    v22 = sub_2278C6D50();
    v24 = v23;
    (*(v17 + 8))(v14, v16);
    v25 = sub_2278021B4(v22, v24, &v47);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_227885B08(&qword_2813BC158, MEMORY[0x277CC9578]);
    v26 = sub_2278C7DA0();
    v28 = v27;
    (*(v18 + 8))(v19, v20);
    v29 = sub_2278021B4(v26, v28, &v47);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2277F7000, log, v45, "[%s] Set scheduledDate = %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v41, -1, -1);
    MEMORY[0x22AA9E860](v21, -1, -1);

    (*(v42 + 8))(v44, v43);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v14, v16);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[4];
  sub_227882E94(v0[3]);
  v31 = sub_227882AE0();
  if (v31)
  {
    v32 = v31;
    v33 = v0[2];
    v34 = sub_2278C67D0();
    v35 = sub_2278C76F0();

    [v32 setObject:v34 forKey:v35];
  }

  else
  {
  }

  v36 = v0[13];
  v37 = v0[10];
  v38 = v0[7];

  v39 = v0[1];

  return v39();
}

uint64_t sub_227884D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = sub_2278C6920();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v4[9] = v10;
  v11 = sub_2278C6820();
  v4[10] = v11;
  v12 = *(v11 - 8);
  v4[11] = v12;
  v13 = *(v12 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v14 = swift_task_alloc();
  v4[14] = v14;
  *v14 = v4;
  v14[1] = sub_227884EE4;

  return sub_2278830E4(v10, a2, 0);
}

uint64_t sub_227884EE4()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_227885408;
  }

  else
  {
    v3 = sub_227884FF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227884FF8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
LABEL_8:
    v22 = swift_task_alloc();
    v0[16] = v22;
    *v22 = v0;
    v22[1] = sub_227885294;
    v23 = v0[5];
    v24 = v0[2];
    v25 = v0[3];

    return sub_2278830E4(v24, v25, 1);
  }

  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[7];
  v6 = v0[8];
  v27 = v0[6];
  v8 = v0[4];
  v26 = *(v2 + 32);
  v26();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_227804920();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v9 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v9(v5);
  v10 = sub_2278C68F0();
  v11 = *(v2 + 8);
  v11(v5, v1);
  (*(v7 + 8))(v6, v27);
  v12 = v0[13];
  if ((v10 & 1) == 0)
  {
    v11(v0[13], v0[10]);
    goto LABEL_8;
  }

  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[2];
  (v26)(v15, v0[13], v13);
  (*(v14 + 56))(v15, 0, 1, v13);
  v17 = v0[12];
  v16 = v0[13];
  v19 = v0[8];
  v18 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_227885294()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v9 = *v0;

  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[9];
  v6 = v1[8];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_227885408()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_227885490(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2278854B0, 0, 0);
}

uint64_t sub_2278854B0()
{
  v1 = *(v0 + 72);
  v2 = sub_227882AE0();
  if (!v2)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_227802FC4(v0 + 16, &qword_27D7D60A0, qword_2278C98D0);
    goto LABEL_10;
  }

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
  if (!*(v0 + 40))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);
    sub_2278C6830();

    goto LABEL_11;
  }

LABEL_10:
  v8 = *(v0 + 64);
  v9 = sub_2278C6860();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_11:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22788562C(uint64_t a1)
{
  v2 = sub_2278C6910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64D0, qword_2278CDB28);
    v10 = sub_2278C7C30();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_227885B08(&qword_2813BC138, MEMORY[0x277CC99D0]);
      v18 = sub_2278C7680();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_227885B08(&qword_2813BC130, MEMORY[0x277CC99D0]);
          v25 = sub_2278C76E0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22788594C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C8, &qword_2278CDB20);
    v3 = sub_2278C7C30();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2278C7E60();

      sub_2278C7730();
      result = sub_2278C7E90();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2278C7DC0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_227885B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227885B50(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22780523C;

  return v9(a1, a2);
}

void sub_227885C78(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64E0, qword_2278CDBD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *MEMORY[0x277CCC648];
  sub_2278C7700();
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_2278C76F0();

  v12 = [v10 initWithKey:v11 ascending:0];

  sub_227839268(0, &qword_2813B9B78, 0x277CCD8D8);
  v13 = [swift_getObjCClassFromMetadata() pauseRingsScheduleType];
  if (v13)
  {
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2278CC820;
    *(v15 + 32) = v12;
    (*(v5 + 16))(v8, a1, v4);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v17 = swift_allocObject();
    (*(v5 + 32))(v17 + v16, v8, v4);
    v18 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    sub_227839268(0, &qword_2813B9B38, 0x277CCAC98);
    v19 = v12;
    v20 = sub_2278C7790();

    aBlock[4] = sub_227886618;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2278866AC;
    aBlock[3] = &block_descriptor_21;
    v21 = _Block_copy(aBlock);
    v22 = [v18 initWithSampleType:v14 predicate:0 limit:1 sortDescriptors:v20 resultsHandler:v21];

    _Block_release(v21);

    [a2 executeQuery_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_227885F84(int a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64E0, qword_2278CDBD8);
    return sub_2278C7800();
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  result = sub_2278861E0(a2);
  if (!result)
  {
    goto LABEL_14;
  }

  v5 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v10 = result;
    v6 = sub_2278C7B80();
    result = v10;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
LABEL_13:

LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64E0, qword_2278CDBD8);
      return sub_2278C7810();
    }
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_16:
    MEMORY[0x22AA9DBF0](v8);
    goto LABEL_13;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(v5 + 16))
  {
    v9 = *(result + 8 * v8 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2278860B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_2278B4820(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_227802850(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D8, &qword_2278CE440);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2278B4820((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2278861E0(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_2278C7CD0();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA9DBF0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_2278C7CB0();
      v8 = *(v10 + 16);
      sub_2278C7CE0();
      sub_2278C7CF0();
      sub_2278C7CC0();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2278C7B80();
    sub_2278C7CD0();
  }

  return v10;
}

uint64_t sub_22788636C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64D8, &qword_2278CDBD0);
  *v4 = v0;
  v4[1] = sub_227886474;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000018, 0x80000002278D2A40, sub_227886610, v2, v5);
}

uint64_t sub_227886474()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2278865AC;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_227886590;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2278865AC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

unint64_t sub_227886618(int a1, unint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64E0, qword_2278CDBD8) - 8) + 80);

  return sub_227885F84(a1, a2, a3);
}

uint64_t sub_2278866AC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_227839268(0, &qword_2813B9A90, 0x277CCD8A8);
    v5 = sub_2278C77A0();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_227886790()
{
  result = qword_27D7D64E8;
  if (!qword_27D7D64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D64E8);
  }

  return result;
}

uint64_t sub_2278867E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_227886924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22780523C;

  return v11(a1, a2, a3);
}

uint64_t sub_227886A4C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_227886AFC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

id sub_227886BD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227886C8C()
{
  v1[2] = v0;
  v2 = sub_2278C6820();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C65D0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_2278C6920();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227886E04, 0, 0);
}

uint64_t sub_227886E04()
{
  v1 = v0[11];
  v15 = v0[8];
  v2 = v0[5];
  v16 = v0[4];
  v17 = v0[3];
  v3 = (v0[2] + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_dateProvider);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_227804920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6580, qword_2278CC500);
  v4 = sub_2278C6910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2278C9F70;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x277CC9988], v4);
  v10(v9 + v6, *MEMORY[0x277CC9998], v4);
  v10(v9 + 2 * v6, *MEMORY[0x277CC9968], v4);
  sub_22788562C(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v11 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v11(v2);
  sub_2278C68A0();

  (*(v16 + 8))(v2, v17);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_2278870AC;
  v13 = v0[8];

  return sub_2278060A8(v13);
}

uint64_t sub_2278870AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_2278872DC;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_2278871D4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2278871D4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v12 = v0[5];
  v7 = v0[2];
  v8 = sub_227811A68(v0[14]);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = *(v7 + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_state);
  *(v7 + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_state) = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_2278872DC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_22788739C()
{
  v1[2] = v0;
  v2 = sub_2278C6920();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C6820();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278874B8, 0, 0);
}

uint64_t sub_2278874B8()
{
  v27 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_state);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = sub_2278A65C4(*(v2 + 16), 0);
      v5 = sub_2278A47CC(&v26, (v4 + 32), v3, v2);

      result = sub_227806704();
      if (v5 != v3)
      {
        __break(1u);
        return result;
      }

      v1 = v0[2];
    }

    v7 = v0[7];
    v8 = v0[8];
    v9 = v0[5];
    v23 = v0[6];
    v10 = v0[4];
    v25 = v0[3];
    sub_22781BEE8();
    v24 = sub_2278C7790();

    v11 = (v1 + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_dateProvider);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v12 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v12(v8);
    v13 = sub_2278C67D0();
    (*(v7 + 8))(v8, v23);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_227804920();
    v14 = sub_2278C68B0();
    (*(v10 + 8))(v9, v25);
    v15 = ACHMonthlyChallengeAchievementFromAchievementsForDate();

    if (v15)
    {
      v16 = v0[8];
      v17 = v0[5];

      v18 = v0[1];

      return v18(v15);
    }

    LOBYTE(v2) = 1;
  }

  v19 = v0[8];
  v20 = v0[5];
  sub_2278888AC();
  swift_allocError();
  *v21 = v2;
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_2278878E4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22788798C;

  return sub_22788739C();
}

uint64_t sub_22788798C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_2278C65E0();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_227887B2C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_227887B4C, 0, 0);
}

uint64_t sub_227887B4C()
{
  v12 = v0;
  if (!*(v0[3] + OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_state))
  {
LABEL_5:
    sub_2278888AC();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  v1 = v0[2];

  v3 = sub_227888DE8(v2, v1);

  v4 = v3[2];
  if (v4)
  {
    v5 = sub_2278A65C4(v3[2], 0);
    v6 = sub_2278A47CC(&v11, (v5 + 32), v4, v3);
    sub_227806704();
    if (v6 != v4)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_227887E50(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_2278C77A0();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_227887F24;

  return sub_227887B2C(v5);
}

uint64_t sub_227887F24()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_2278C65E0();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_22781BEE8();
    v11 = sub_2278C7790();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_2278880D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2278004C0;

  return sub_227887E50(v2, v3, v4);
}

uint64_t sub_227888188(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2278004C0;

  return v7();
}

uint64_t sub_227888270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_22788852C(a3, v25 - v11);
  v13 = sub_2278C7840();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22788859C(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2278C7830();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2278C77F0();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2278C7720() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_22788859C(a3);

    return v23;
  }

LABEL_8:
  sub_22788859C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22788852C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22788859C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227888604(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278886FC;

  return v7(a1);
}

uint64_t sub_2278886FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2278887F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2278004C0;

  return sub_227888604(a1, v5);
}

unint64_t sub_2278888AC()
{
  result = qword_2813BB8E0;
  if (!qword_2813BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BB8E0);
  }

  return result;
}

unint64_t *sub_227888900(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_227888C34(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_22788899C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60E0, &qword_2278CE840);
  result = sub_2278C7D50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_2278C7E60();

    v34 = v21;
    sub_2278C7730();
    result = sub_2278C7E90();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227888BDC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2278C7DC0() & 1;
  }
}

void sub_227888C34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v25 = a4;
  v22 = a2;
  v23 = a1;
  v4 = 0;
  v26 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v26 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v26 + 56) + 8 * v13);
    v27[0] = *v14;
    v27[1] = v15;
    MEMORY[0x28223BE20](a1);
    v21[2] = v27;

    v17 = v16;
    v18 = v28;
    v19 = sub_227886AFC(sub_227888FA8, v21, v25);
    v28 = v18;

    if (v19)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22788899C(v23, v22, v24, v26);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_227888DE8(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_227888900(v14, v7, a1, a2);
      MEMORY[0x22AA9E860](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_227888C34((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_227888FA8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2278C7DC0() & 1;
  }
}

uint64_t sub_227889000()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2278003CC;

  return sub_2278878E4(v2, v3);
}

double sub_2278890AC()
{
  sub_2278C78B0();
  result = v0 * 5.0;
  qword_27D7D8850 = *&result;
  return result;
}

uint64_t sub_2278890F8(uint64_t a1, uint64_t *a2)
{
  v15 = a2;
  v2 = sub_2278C7130();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6590, &qword_2278CDE10);
  v7 = *(sub_2278C6FB0() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2278CDE00;
  v11 = *MEMORY[0x277D09AA0];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  sub_2278C6F90();
  v12(v6, v11, v2);
  sub_2278C6F90();
  v12(v6, v11, v2);
  sub_2278C6F90();
  v12(v6, v11, v2);
  sub_2278C6F90();
  v12(v6, v11, v2);
  result = sub_2278C6F90();
  *v15 = v10;
  return result;
}

unint64_t sub_227889338()
{
  result = sub_2278C45B0(&unk_283AE9470);
  qword_27D7D8870 = result;
  return result;
}

uint64_t sub_227889360()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6598, &qword_2278CDE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278CDE00;
  *(inited + 32) = 37;
  sub_227848004();
  v1 = *MEMORY[0x277CCCB40];
  *(inited + 40) = MEMORY[0x22AA9D8F0]();
  *(inited + 48) = 52;
  *(inited + 56) = MEMORY[0x22AA9D8F0](v1);
  *(inited + 64) = 13;
  *(inited + 72) = MEMORY[0x22AA9D8F0](*MEMORY[0x277CCCB10]);
  *(inited + 80) = 71;
  v2 = *MEMORY[0x277CCCB48];
  *(inited + 88) = MEMORY[0x22AA9D8F0]();
  *(inited + 96) = 70;
  *(inited + 104) = MEMORY[0x22AA9D8F0](v2);
  v3 = sub_2278C44B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65A0, &unk_2278CDE20);
  result = swift_arrayDestroy();
  qword_27D7D8878 = v3;
  return result;
}

uint64_t sub_227889488()
{
  result = sub_2278C76F0();
  qword_2813BC3C8 = result;
  return result;
}

uint64_t sub_2278894D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2278003CC;

  return v13(a1, a2, a3, a4);
}

uint64_t type metadata accessor for LegacyWeeklySummaryProvider()
{
  result = qword_2813BA2E8;
  if (!qword_2813BA2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227889678()
{
  sub_22788974C(319, &qword_2813BC100);
  if (v0 <= 0x3F)
  {
    sub_2278C6920();
    if (v1 <= 0x3F)
    {
      sub_22788974C(319, qword_2813BB9E8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HKWheelchairUse(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22788974C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2278897A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2278898D4(uint64_t a1, uint64_t a2)
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

uint64_t sub_2278899EC()
{
  v1[7] = v0;
  v2 = sub_2278C75A0();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227889AAC, v0, 0);
}

uint64_t sub_227889AAC()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  sub_2278C73A0();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = *__swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
  v0[5] = &type metadata for NotificationRequestService;
  v0[6] = &off_283AEC228;
  v6 = swift_allocObject();
  v0[2] = v6;
  v6[5] = &type metadata for NotificationRequestPublisher;
  v6[6] = &off_283AEB7B8;
  v6[2] = v5;
  __swift_project_boxed_opaque_existential_1(v0 + 2, &type metadata for NotificationRequestService);
  v7 = v5;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_227889C10;

  return sub_2278649B4();
}

uint64_t sub_227889C10()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_227889DAC;
  }

  else
  {
    v6 = sub_227889D3C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227889D3C()
{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_227889DAC()
{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_227889E60()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_227889F48;

    return sub_2278899EC();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227889F48()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22788A084, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22788A084()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_22788A0E8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_22788A108, v2, 0);
}

uint64_t sub_22788A108()
{
  v1 = v0[2];
  v3 = v1[22];
  v2 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v3);
  v4 = swift_allocObject();
  v0[3] = v4;
  swift_weakInit();
  v5 = *(MEMORY[0x277D09A58] + 4);

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_22788A21C;

  return MEMORY[0x2821603D8](2, &unk_2278CE010, v4, v3, v2);
}

uint64_t sub_22788A21C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22788A330()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2278003CC;

  return sub_227889E40(v0);
}

FitnessCoachingServices::XPCStreamHandler __swiftcall XPCStreamHandler.init(streams:notificationCenter:)(Swift::OpaquePointer streams, NSNotificationCenter notificationCenter)
{
  *v2 = notificationCenter;
  *(v2 + 8) = streams;
  result.streams._rawValue = notificationCenter.super.isa;
  result.notificationCenter.super.isa = streams._rawValue;
  return result;
}

Swift::Void __swiftcall XPCStreamHandler.activate()()
{
  v29 = sub_2278C75A0();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v6 = v5[2];
  if (v6)
  {
    v28 = *v0;
    v7 = sub_2278002AC();
    v26 = (v1 + 8);
    v27 = v7;
    v25 = v31;
    v8 = v5 + 5;
    *&v9 = 136315138;
    v23 = v9;
    v24 = v4;
    do
    {
      v20 = *(v8 - 1);
      v19 = *v8;

      sub_2278C73A0();

      v21 = sub_2278C7590();
      v22 = sub_2278C7970();

      if (os_log_type_enabled(v21, v22))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        aBlock[0] = v11;
        *v10 = v23;
        *(v10 + 4) = sub_2278021B4(v20, v19, aBlock);
        _os_log_impl(&dword_2277F7000, v21, v22, "Registering xpc stream handler: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        v12 = v29;
        v4 = v24;
        MEMORY[0x22AA9E860](v11, -1, -1);
        MEMORY[0x22AA9E860](v10, -1, -1);

        (*v26)(v4, v12);
      }

      else
      {

        (*v26)(v4, v29);
      }

      v13 = sub_2278C7A60();
      v14 = swift_allocObject();
      v14[2] = v20;
      v14[3] = v19;
      v15 = v28;
      v14[4] = v28;
      v14[5] = v5;
      v31[2] = sub_22788AB1C;
      v31[3] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v31[0] = sub_227839D18;
      v31[1] = &block_descriptor_22;
      v16 = _Block_copy(aBlock);

      v17 = v15;

      v18 = sub_2278C7720();

      xpc_set_event_stream_handler((v18 + 32), v13, v16);

      _Block_release(v16);

      v8 += 2;
      --v6;
    }

    while (v6);
  }
}

void sub_22788A6E0(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v39 = a4;
  v7 = sub_2278C75A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  sub_2278C73A0();

  v15 = sub_2278C7590();
  v16 = sub_2278C7970();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = v8;
    v18 = v17;
    v19 = v7;
    v20 = a1;
    v21 = swift_slowAlloc();
    v40[0] = v21;
    *v18 = 136315138;
    *(v18 + 4) = sub_2278021B4(a2, a3, v40);
    _os_log_impl(&dword_2277F7000, v15, v16, "Handling xpc stream event: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v22 = v21;
    a1 = v20;
    v7 = v19;
    MEMORY[0x22AA9E860](v22, -1, -1);
    v23 = v18;
    v24 = v38;
    MEMORY[0x22AA9E860](v23, -1, -1);

    v25 = *(v24 + 8);
    v25(v14, v19);
  }

  else
  {

    v25 = *(v8 + 8);
    v25(v14, v7);
  }

  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]))
  {
    v26 = sub_2278C7750();
    v28 = v27;
    sub_2278C73A0();

    v29 = sub_2278C7590();
    v30 = sub_2278C7970();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2278021B4(v26, v28, v40);
      _os_log_impl(&dword_2277F7000, v29, v30, "Publishing stream event: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9E860](v32, -1, -1);
      MEMORY[0x22AA9E860](v31, -1, -1);
    }

    v25(v12, v7);
    if (qword_2813BB020 != -1)
    {
      swift_once();
    }

    v33 = qword_2813BC398;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2278C9140;
    strcpy(v40, "XPCStreamName");
    HIWORD(v40[1]) = -4864;
    v35 = MEMORY[0x277D837D0];
    sub_2278C7BF0();
    *(inited + 96) = v35;
    *(inited + 72) = v26;
    *(inited + 80) = v28;
    sub_2278C3BA4(inited);
    swift_setDeallocating();
    sub_2278650B0(inited + 32);
    v36 = sub_2278C7640();

    [v39 postNotificationName:v33 object:0 userInfo:v36];
  }
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22788AB4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22788AB94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22788ABE0(uint64_t a1, uint64_t a2)
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

uint64_t sub_22788ACF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_22788AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_227850448(a3, v27 - v11, &unk_27D7D6570, &qword_2278C9AE0);
  v13 = sub_2278C7840();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_227802FC4(v12, &unk_27D7D6570, &qword_2278C9AE0);
  }

  else
  {
    sub_2278C7830();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2278C77F0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2278C7720() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65E0, &qword_2278CE2F0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65E0, &qword_2278CE2F0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22788B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_227850448(a3, v27 - v11, &unk_27D7D6570, &qword_2278C9AE0);
  v13 = sub_2278C7840();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_227802FC4(v12, &unk_27D7D6570, &qword_2278C9AE0);
  }

  else
  {
    sub_2278C7830();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2278C77F0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2278C7720() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22788B434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for NotificationRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_227802FC4(a1, &qword_27D7D60D0, &unk_2278C9AC0);
    sub_2278A340C(a2, a3, v10);

    return sub_227802FC4(v10, &qword_27D7D60D0, &unk_2278C9AC0);
  }

  else
  {
    sub_227810264(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2278AF970(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_22788B5F4()
{
  v1 = *(v0 + 616);
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

        [*(v0 + 320) removeObserver_];
        swift_unknownObjectRelease();
        ++v3;
      }

      while (v5 != v2);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  __swift_destroy_boxed_opaque_existential_0((v0 + 280));

  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  __swift_destroy_boxed_opaque_existential_0((v0 + 448));
  __swift_destroy_boxed_opaque_existential_0((v0 + 488));
  __swift_destroy_boxed_opaque_existential_0((v0 + 528));
  __swift_destroy_boxed_opaque_existential_0((v0 + 568));
  v6 = *(v0 + 608);

  v7 = *(v0 + 616);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22788B778()
{
  sub_22788B5F4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22788B7C8()
{
  v1[7] = v0;
  v2 = sub_2278C6D60();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22788B8F0, v0, 0);
}

uint64_t sub_22788B8F0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  sub_2278C7370();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v0[15] = *(v4 + 608);
  v5 = *(MEMORY[0x277D09B38] + 4);
  v8 = (*MEMORY[0x277D09B38] + MEMORY[0x277D09B38]);

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_22788BA14;

  return v8();
}

uint64_t sub_22788BA14()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22788BB40, v3, 0);
}

uint64_t sub_22788BB40()
{
  __swift_project_boxed_opaque_existential_1((v0[7] + 448), *(v0[7] + 472));
  sub_227823470(v0 + 2);
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = *MEMORY[0x277D09868];
  v5 = *(v3 + 104);
  v0[17] = v5;
  v0[18] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v2);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_22788BCA8;
  v7 = v0[11];
  v8 = v0[7];

  return sub_22788C268(v7, (v0 + 2));
}

uint64_t sub_22788BCA8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  v2[20] = v0;

  v5 = v2[11];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  v11 = *(v6 + 8);
  v9 = v6 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v5, v7);
    v12 = sub_22788C120;
  }

  else
  {
    v2[21] = v10;
    v2[22] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v7);
    v12 = sub_22788BE3C;
  }

  return MEMORY[0x2822009F8](v12, v8, 0);
}

uint64_t sub_22788BE3C()
{
  v1 = *(v0 + 144);
  (*(v0 + 136))(*(v0 + 80), *MEMORY[0x277D09860], *(v0 + 64));
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_22788BEF4;
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  return sub_22788C268(v3, v0 + 16);
}

uint64_t sub_22788BEF4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = v2[22];
  v6 = v2[21];
  v7 = v2[10];
  v8 = v2[8];
  v9 = v2[7];
  v6(v7, v8);
  if (v0)
  {
    v10 = sub_22788C1C4;
  }

  else
  {
    v10 = sub_22788C078;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22788C078()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = *(v4 + 608);

  sub_2278C7470();

  v6 = v0[1];

  return v6();
}

uint64_t sub_22788C120()
{
  v1 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = *(v1 + 608);

  sub_2278C7470();

  v3 = v0[20];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22788C1C4()
{
  v1 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = *(v1 + 608);

  sub_2278C7470();

  v3 = v0[24];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22788C268(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_2278C6920();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = sub_2278C6820();
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v9 = *(v8 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v11 = sub_2278C6D60();
  v3[43] = v11;
  v12 = *(v11 - 8);
  v3[44] = v12;
  v3[45] = *(v12 + 64);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v13 = sub_2278C75A0();
  v3[58] = v13;
  v14 = *(v13 - 8);
  v3[59] = v14;
  v15 = *(v14 + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22788C5F4, v2, 0);
}

uint64_t sub_22788C5F4()
{
  v32 = v0;
  v1 = v0[69];
  v2 = v0[57];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[22];
  sub_2278C7370();
  v6 = *(v4 + 16);
  v0[70] = v6;
  v0[71] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_2278C7590();
  v8 = sub_2278C7970();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[69];
  v12 = v0[58];
  v11 = v0[59];
  v13 = v0[57];
  v14 = v0[43];
  v15 = v0[44];
  if (v9)
  {
    v30 = v0[58];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    v27 = sub_2278C6D50();
    v29 = v10;
    v19 = v18;
    v28 = v8;
    v20 = *(v15 + 8);
    v20(v13, v14);
    v21 = sub_2278021B4(v27, v19, &v31);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2277F7000, v7, v28, "[%s] Schedule F+ Plan Task if needed", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9E860](v17, -1, -1);
    MEMORY[0x22AA9E860](v16, -1, -1);

    v22 = *(v11 + 8);
    v22(v29, v30);
  }

  else
  {

    v20 = *(v15 + 8);
    v20(v13, v14);
    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v0[73] = v20;
  v0[72] = v22;
  __swift_project_boxed_opaque_existential_1((v0[24] + 240), *(v0[24] + 264));
  v23 = swift_task_alloc();
  v0[74] = v23;
  *v23 = v0;
  v23[1] = sub_22788C850;
  v24 = v0[42];
  v25 = v0[22];

  return sub_227884658(v24, v25);
}

uint64_t sub_22788C850()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 600) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_22788D02C;
  }

  else
  {
    v6 = sub_22788C97C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22788C97C()
{
  v98 = v0;
  v1 = v0[41];
  v2 = v0[28];
  v3 = v0[29];
  sub_227850448(v0[42], v1, &qword_27D7D60A8, qword_2278C9730);
  v4 = *(v3 + 48);
  v0[76] = v4;
  v0[77] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_227802FC4(v0[41], &qword_27D7D60A8, qword_2278C9730);
LABEL_7:
    v43 = *__swift_project_boxed_opaque_existential_1((v0[24] + 488), *(v0[24] + 512));
    v44 = swift_task_alloc();
    v0[78] = v44;
    *v44 = v0;
    v44[1] = sub_22788D25C;
    v45 = v0[40];

    return sub_227853C98(v45);
  }

  v5 = v0[37];
  v6 = v0[28];
  v7 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[24];
  v92 = v6;
  v95 = v0[25];
  (*(v7 + 32))(v0[38], v0[41]);
  __swift_project_boxed_opaque_existential_1((v10 + 200), *(v10 + 224));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v10 + 200), *(v10 + 224));
  v11 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v11(v5);
  v12 = sub_2278C68F0();
  v13 = *(v7 + 8);
  v13(v5, v92);
  (*(v9 + 8))(v8, v95);
  if ((v12 & 1) == 0)
  {
    v13(v0[38], v0[28]);
    goto LABEL_7;
  }

  v93 = v13;
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[68];
  v17 = v0[56];
  v18 = v0[43];
  v89 = v0[38];
  v19 = v0[36];
  v21 = v0[28];
  v20 = v0[29];
  v22 = v0[22];
  sub_2278C7370();
  v15(v17, v22, v18);
  (*(v20 + 16))(v19, v89, v21);
  v23 = sub_2278C7590();
  v81 = sub_2278C7970();
  v24 = os_log_type_enabled(v23, v81);
  v25 = v0[73];
  v26 = v0[72];
  v27 = v0[68];
  v28 = v0[56];
  v29 = v0[43];
  v30 = v0[44];
  v87 = v0[42];
  v90 = v0[58];
  v83 = v0[59];
  v85 = v0[38];
  v31 = v0[36];
  v32 = v0[28];
  if (v24)
  {
    v79 = v0[68];
    v33 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v97[0] = v75;
    *v33 = 136315394;
    log = v23;
    v34 = v32;
    v35 = sub_2278C6D50();
    v77 = v26;
    v37 = v36;
    v25(v28, v29);
    v38 = sub_2278021B4(v35, v37, v97);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = sub_2278C6790();
    v41 = v40;
    v93(v31, v34);
    v42 = sub_2278021B4(v39, v41, v97);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_2277F7000, log, v81, "[%s] Already fired notification today on %s, skipping...", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v75, -1, -1);
    MEMORY[0x22AA9E860](v33, -1, -1);

    v77(v79, v90);
    v93(v85, v34);
  }

  else
  {

    v93(v31, v32);
    v25(v28, v29);
    v26(v27, v90);
    v93(v85, v32);
  }

  sub_227802FC4(v87, &qword_27D7D60A8, qword_2278C9730);
  v47 = v0[69];
  v48 = v0[68];
  v49 = v0[67];
  v50 = v0[66];
  v51 = v0[65];
  v53 = v0[63];
  v52 = v0[64];
  v54 = v0[61];
  v55 = v0[62];
  v56 = v0[60];
  v58 = v0[57];
  v59 = v0[56];
  v60 = v0[55];
  v61 = v0[54];
  v62 = v0[53];
  v63 = v0[52];
  v64 = v0[51];
  v65 = v0[50];
  v66 = v0[49];
  v67 = v0[48];
  v68 = v0[47];
  v69 = v0[46];
  v70 = v0[42];
  v71 = v0[41];
  v72 = v0[40];
  loga = v0[39];
  v76 = v0[38];
  v78 = v0[37];
  v80 = v0[36];
  v82 = v0[35];
  v84 = v0[34];
  v86 = v0[33];
  v88 = v0[32];
  v91 = v0[31];
  v94 = v0[30];
  v96 = v0[27];

  v57 = v0[1];

  return v57();
}

uint64_t sub_22788D02C()
{
  v39 = v0[75];
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[61];
  v9 = v0[62];
  v10 = v0[60];
  v13 = v0[57];
  v14 = v0[56];
  v15 = v0[55];
  v16 = v0[54];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[50];
  v21 = v0[49];
  v22 = v0[48];
  v23 = v0[47];
  v24 = v0[46];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[37];
  v31 = v0[36];
  v32 = v0[35];
  v33 = v0[34];
  v34 = v0[33];
  v35 = v0[32];
  v36 = v0[31];
  v37 = v0[30];
  v38 = v0[27];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22788D25C()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22788D36C, v2, 0);
}

uint64_t sub_22788D36C()
{
  v364 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 320);
  v3 = *(v0 + 224);
  if ((*(v0 + 608))(v2, 1, v3) == 1)
  {
    sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
    goto LABEL_9;
  }

  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 232);
  v7 = *(v0 + 192);
  v8 = *(v6 + 32);
  *(v0 + 632) = v8;
  *(v0 + 640) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v5, v2, v3);
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  v9 = off_283AE99E0;
  *(v0 + 648) = off_283AE99E0;
  *(v0 + 656) = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
  *(v0 + 664) = type metadata accessor for DateProvider();
  v9(v4);
  v10 = sub_2278C6710();
  v11 = *(v6 + 8);
  *(v0 + 672) = v11;
  *(v0 + 680) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v4, v3);
  if ((v10 & 1) == 0)
  {
    v11(*(v0 + 280), *(v0 + 224));
LABEL_9:
    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 480);
    v24 = *(v0 + 368);
    v25 = *(v0 + 344);
    v26 = *(v0 + 176);
    sub_2278C7370();
    v22(v24, v26, v25);
    v27 = sub_2278C7590();
    v28 = sub_2278C7970();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 576);
    v31 = *(v0 + 480);
    v336 = *(v0 + 584);
    v349 = *(v0 + 472);
    v32 = *(v0 + 464);
    v33 = *(v0 + 368);
    v35 = *(v0 + 344);
    v34 = *(v0 + 352);
    v36 = *(v0 + 336);
    if (v29)
    {
      v332 = *(v0 + 480);
      v37 = swift_slowAlloc();
      v328 = v32;
      v38 = swift_slowAlloc();
      v363[0] = v38;
      *v37 = 136315138;
      v308 = v30;
      v39 = sub_2278C6D50();
      v318 = v36;
      v41 = v40;
      v336(v33, v35);
      v42 = sub_2278021B4(v39, v41, v363);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_2277F7000, v27, v28, "[%s] User hasn't started their day, skipping for now..", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9E860](v38, -1, -1);
      MEMORY[0x22AA9E860](v37, -1, -1);

      v308(v332, v328);
      v43 = v318;
    }

    else
    {

      v336(v33, v35);
      v30(v31, v32);
      v43 = v36;
    }

LABEL_12:
    sub_227802FC4(v43, &qword_27D7D60A8, qword_2278C9730);
    v44 = *(v0 + 552);
    v45 = *(v0 + 544);
    v46 = *(v0 + 536);
    v47 = *(v0 + 528);
    v48 = *(v0 + 520);
    v50 = *(v0 + 504);
    v49 = *(v0 + 512);
    v51 = *(v0 + 488);
    v52 = *(v0 + 496);
    v53 = *(v0 + 480);
    v265 = *(v0 + 456);
    v266 = *(v0 + 448);
    v267 = *(v0 + 440);
    v268 = *(v0 + 432);
    v269 = *(v0 + 424);
    v270 = *(v0 + 416);
    v271 = *(v0 + 408);
    v272 = *(v0 + 400);
    v273 = *(v0 + 392);
    v274 = *(v0 + 384);
    v275 = *(v0 + 376);
    v276 = *(v0 + 368);
    v277 = *(v0 + 336);
    v278 = *(v0 + 328);
    v279 = *(v0 + 320);
    log = *(v0 + 312);
    v286 = *(v0 + 304);
    v292 = *(v0 + 296);
    v297 = *(v0 + 288);
    v302 = *(v0 + 280);
    v309 = *(v0 + 272);
    v319 = *(v0 + 264);
    v329 = *(v0 + 256);
    v333 = *(v0 + 248);
    v337 = *(v0 + 240);
    v350 = *(v0 + 216);

    v54 = *(v0 + 8);

    return v54();
  }

  v12 = *(v0 + 568);
  v13 = *(v0 + 440);
  v14 = *(v0 + 344);
  v15 = *(v0 + 352);
  (*(v0 + 560))(v13, *(v0 + 176), v14);
  v16 = (*(v15 + 88))(v13, v14);
  if (v16 == *MEMORY[0x277D09868])
  {
    v17 = swift_task_alloc();
    *(v0 + 688) = v17;
    *v17 = v0;
    v17[1] = sub_22788ECCC;
    v18 = *(v0 + 312);
    v19 = *(v0 + 192);

    return sub_227891D08(v18);
  }

  if (v16 == *MEMORY[0x277D09860])
  {
    v55 = swift_task_alloc();
    *(v0 + 704) = v55;
    *v55 = v0;
    v55[1] = sub_22788EDF8;
    v56 = *(v0 + 312);
    v57 = *(v0 + 184);
    v58 = *(v0 + 192);

    return sub_227892EA0(v56, v57, 0.75);
  }

  v59 = *(v0 + 584);
  v60 = *(v0 + 440);
  v61 = *(v0 + 344);
  v62 = *(v0 + 352);
  (*(*(v0 + 232) + 56))(*(v0 + 312), 1, 1, *(v0 + 224));
  v59(v60, v61);
  v63 = *(v0 + 616);
  v64 = *(v0 + 312);
  v65 = *(v0 + 224);
  if ((*(v0 + 608))(v64, 1, v65) == 1)
  {
    v66 = *(v0 + 568);
    v67 = *(v0 + 560);
    v68 = *(v0 + 488);
    v69 = *(v0 + 376);
    v70 = *(v0 + 344);
    v71 = *(v0 + 176);
    sub_227802FC4(v64, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7370();
    v67(v69, v71, v70);
    v72 = sub_2278C7590();
    v310 = sub_2278C7950();
    v73 = os_log_type_enabled(v72, v310);
    v74 = *(v0 + 680);
    v75 = *(v0 + 672);
    v76 = *(v0 + 584);
    v77 = *(v0 + 576);
    v338 = *(v0 + 464);
    v351 = *(v0 + 488);
    v78 = *(v0 + 376);
    v79 = *(v0 + 344);
    v80 = *(v0 + 352);
    v81 = *(v0 + 336);
    v334 = *(v0 + 280);
    v320 = *(v0 + 472);
    v330 = *(v0 + 224);
    if (!v73)
    {

      v76(v78, v79);
      v77(v351, v338);
      v75(v334, v330);
      v43 = v81;
      goto LABEL_12;
    }

    v303 = *(v0 + 576);
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v363[0] = v83;
    *v82 = 136315138;
    v287 = v75;
    v293 = v81;
    v84 = sub_2278C6D50();
    v86 = v85;
    v76(v78, v79);
    v87 = sub_2278021B4(v84, v86, v363);

    *(v82 + 4) = v87;
    _os_log_impl(&dword_2277F7000, v72, v310, "[%s] Unable to determine scheduled date for notification, skipping for now...", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);
    MEMORY[0x22AA9E860](v83, -1, -1);
    MEMORY[0x22AA9E860](v82, -1, -1);

    v303(v351, v338);
    v287(v334, v330);
    goto LABEL_22;
  }

  v339 = *(v0 + 672);
  v352 = *(v0 + 680);
  v88 = *(v0 + 664);
  v89 = *(v0 + 656);
  v90 = *(v0 + 648);
  v91 = *(v0 + 640);
  v92 = *(v0 + 296);
  v93 = *(v0 + 192);
  v94 = *(v0 + 176);
  (*(v0 + 632))(*(v0 + 272), v64, v65);
  sub_2278C7C50();

  v363[0] = 0xD000000000000035;
  v363[1] = 0x80000002278D2DC0;
  v95 = sub_2278C6D50();
  MEMORY[0x22AA9D6B0](v95);

  MEMORY[0x22AA9D6B0](0x63696669746F6E5FLL, 0xED00006E6F697461);
  *(v0 + 720) = 0xD000000000000035;
  *(v0 + 728) = 0x80000002278D2DC0;
  sub_2278C67E0();
  v97 = v96;
  *(v0 + 736) = v96;
  __swift_project_boxed_opaque_existential_1((v93 + 200), *(v93 + 224));
  v90(v88, &off_283AE99D8);
  sub_2278C67E0();
  v99 = v98;
  *(v0 + 744) = v98;
  v339(v92, v65);
  if (v97 - v99 < 0.0)
  {
    v100 = 0.0;
  }

  else
  {
    v100 = v97 - v99;
  }

  v101 = MKBGetDeviceLockState();
  if (v101 != 3 && v101)
  {
    v160 = *(v0 + 568);
    v161 = *(v0 + 560);
    v162 = *(v0 + 504);
    v163 = *(v0 + 392);
    v164 = *(v0 + 344);
    v165 = *(v0 + 176);
    sub_2278C7370();
    v161(v163, v165, v164);
    v166 = sub_2278C7590();
    v167 = sub_2278C7970();
    v168 = os_log_type_enabled(v166, v167);
    v357 = *(v0 + 584);
    v169 = *(v0 + 576);
    v170 = *(v0 + 504);
    v171 = *(v0 + 464);
    v172 = *(v0 + 472);
    v173 = *(v0 + 392);
    v174 = *(v0 + 344);
    v175 = *(v0 + 352);
    if (v168)
    {
      v343 = *(v0 + 576);
      v176 = swift_slowAlloc();
      v324 = v171;
      v177 = swift_slowAlloc();
      v363[0] = v177;
      *v176 = 136315138;
      v314 = v170;
      v178 = sub_2278C6D50();
      v180 = v179;
      v357(v173, v174);
      v181 = sub_2278021B4(v178, v180, v363);

      *(v176 + 4) = v181;
      _os_log_impl(&dword_2277F7000, v166, v167, "[%s] Currently locked, rescheduling XPC Tasks...", v176, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v177);
      MEMORY[0x22AA9E860](v177, -1, -1);
      MEMORY[0x22AA9E860](v176, -1, -1);

      v343(v314, v324);
    }

    else
    {

      v357(v173, v174);
      v169(v170, v171);
    }

    v235 = *(v0 + 560);
    v236 = *(v0 + 496);
    v237 = *(v0 + 384);
    v238 = *(v0 + 344);
    v347 = *(v0 + 568);
    v361 = *(v0 + 272);
    v240 = *(v0 + 232);
    v239 = *(v0 + 240);
    v241 = *(v0 + 224);
    v242 = *(v0 + 176);
    v243 = *__swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
    *(v0 + 40) = type metadata accessor for FitnessPlusPlanService();
    *(v0 + 48) = &off_283AEC318;
    *(v0 + 16) = v243;

    sub_2278C7370();
    v235(v237, v242, v238);
    (*(v240 + 16))(v239, v361, v241);
    v244 = sub_2278C7590();
    v307 = sub_2278C7970();
    v245 = os_log_type_enabled(v244, v307);
    v327 = *(v0 + 680);
    v317 = *(v0 + 672);
    v246 = *(v0 + 584);
    v247 = *(v0 + 576);
    v248 = *(v0 + 496);
    v348 = *(v0 + 472);
    v362 = *(v0 + 464);
    v249 = *(v0 + 384);
    v251 = *(v0 + 344);
    v250 = *(v0 + 352);
    v252 = *(v0 + 240);
    v253 = *(v0 + 224);
    if (v245)
    {
      v301 = *(v0 + 496);
      v254 = swift_slowAlloc();
      v291 = swift_slowAlloc();
      v363[0] = v291;
      *v254 = 136315394;
      v296 = v247;
      v255 = sub_2278C6D50();
      logd = v244;
      v257 = v256;
      v246(v249, v251);
      v258 = sub_2278021B4(v255, v257, v363);

      *(v254 + 4) = v258;
      *(v254 + 12) = 2080;
      v259 = sub_2278C6790();
      v261 = v260;
      v317(v252, v253);
      v262 = sub_2278021B4(v259, v261, v363);

      *(v254 + 14) = v262;
      _os_log_impl(&dword_2277F7000, logd, v307, "[%s] Schedule XPC Activity for notifcation to trigger on %s", v254, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v291, -1, -1);
      MEMORY[0x22AA9E860](v254, -1, -1);

      v296(v301, v362);
    }

    else
    {

      v317(v252, v253);
      v246(v249, v251);
      v247(v248, v362);
    }

    v263 = *__swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v233 = swift_task_alloc();
    *(v0 + 800) = v233;
    *v233 = v0;
    v234 = sub_227891438;
  }

  else if (v100 <= 0.0)
  {
    v341 = *(v0 + 672);
    v354 = *(v0 + 680);
    v124 = *(v0 + 664);
    v125 = *(v0 + 656);
    v126 = *(v0 + 648);
    v127 = *(v0 + 296);
    v128 = *(v0 + 272);
    v129 = *(v0 + 216);
    v312 = *(v0 + 224);
    v130 = *(v0 + 208);
    v322 = *(v0 + 200);
    v131 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v131 + 200), *(v131 + 224));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v131 + 200), *(v131 + 224));
    v126(v124, &off_283AE99D8);
    LOBYTE(v125) = sub_2278C68F0();
    v341(v127, v312);
    (*(v130 + 8))(v129, v322);
    v132 = *(v0 + 568);
    v133 = *(v0 + 560);
    v134 = *(v0 + 344);
    v355 = *(v0 + 272);
    v135 = *(v0 + 224);
    v136 = *(v0 + 232);
    v137 = *(v0 + 176);
    if ((v125 & 1) == 0)
    {
      v210 = *(v0 + 512);
      v211 = *(v0 + 400);
      v212 = *(v0 + 248);

      sub_2278C7370();
      v133(v211, v137, v134);
      (*(v136 + 16))(v212, v355, v135);
      v213 = sub_2278C7590();
      v300 = sub_2278C7950();
      v335 = v213;
      v214 = os_log_type_enabled(v213, v300);
      v215 = *(v0 + 672);
      v216 = *(v0 + 584);
      v346 = *(v0 + 576);
      v331 = *(v0 + 512);
      v306 = *(v0 + 472);
      v326 = *(v0 + 464);
      v217 = *(v0 + 400);
      v219 = *(v0 + 344);
      v218 = *(v0 + 352);
      v220 = *(v0 + 336);
      v360 = *(v0 + 280);
      v316 = *(v0 + 272);
      v221 = *(v0 + 248);
      v222 = *(v0 + 224);
      if (!v214)
      {

        v215(v221, v222);
        v216(v217, v219);
        v346(v331, v326);
        v215(v316, v222);
        v215(v360, v222);
        v43 = v220;
        goto LABEL_12;
      }

      logc = *(v0 + 680);
      v223 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v363[0] = v290;
      *v223 = 136315394;
      v280 = v215;
      v224 = sub_2278C6D50();
      v293 = v220;
      v226 = v225;
      v216(v217, v219);
      v227 = sub_2278021B4(v224, v226, v363);

      *(v223 + 4) = v227;
      *(v223 + 12) = 2080;
      v228 = sub_2278C6790();
      v230 = v229;
      v280(v221, v222);
      v231 = sub_2278021B4(v228, v230, v363);

      *(v223 + 14) = v231;
      _os_log_impl(&dword_2277F7000, v335, v300, "[%s] Scheduled date (%s) is in the past, but not today, not firing", v223, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v290, -1, -1);
      MEMORY[0x22AA9E860](v223, -1, -1);

      v346(v331, v326);
      v280(v316, v222);
      v280(v360, v222);
LABEL_22:
      v43 = v293;
      goto LABEL_12;
    }

    v138 = *(v0 + 520);
    v139 = *(v0 + 408);
    v140 = *(v0 + 256);
    sub_2278C7370();
    v133(v139, v137, v134);
    (*(v136 + 16))(v140, v355, v135);
    v141 = sub_2278C7590();
    v304 = sub_2278C7970();
    v142 = os_log_type_enabled(v141, v304);
    v323 = *(v0 + 680);
    v313 = *(v0 + 672);
    v143 = *(v0 + 584);
    v144 = *(v0 + 576);
    v145 = *(v0 + 520);
    v342 = *(v0 + 472);
    v356 = *(v0 + 464);
    v146 = *(v0 + 408);
    v148 = *(v0 + 344);
    v147 = *(v0 + 352);
    v149 = *(v0 + 256);
    v150 = *(v0 + 224);
    if (v142)
    {
      v298 = *(v0 + 520);
      v151 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      v363[0] = v288;
      *v151 = 136315394;
      v294 = v144;
      v152 = sub_2278C6D50();
      loga = v141;
      v154 = v153;
      v143(v146, v148);
      v155 = sub_2278021B4(v152, v154, v363);

      *(v151 + 4) = v155;
      *(v151 + 12) = 2080;
      v156 = sub_2278C6790();
      v158 = v157;
      v313(v149, v150);
      v159 = sub_2278021B4(v156, v158, v363);

      *(v151 + 14) = v159;
      _os_log_impl(&dword_2277F7000, loga, v304, "[%s] Scheduled date (%s) is today and in the past, firing now...", v151, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v288, -1, -1);
      MEMORY[0x22AA9E860](v151, -1, -1);

      v294(v298, v356);
    }

    else
    {

      v313(v149, v150);
      v143(v146, v148);
      v144(v145, v356);
    }

    v264 = *__swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v233 = swift_task_alloc();
    *(v0 + 776) = v233;
    *v233 = v0;
    v234 = sub_227890F00;
  }

  else
  {
    v102 = *(v0 + 568);
    v103 = *(v0 + 560);
    v104 = *(v0 + 536);
    v105 = *(v0 + 432);
    v106 = *(v0 + 344);
    v107 = *(v0 + 176);
    sub_2278C7370();
    v103(v105, v107, v106);
    v108 = sub_2278C7590();
    v353 = sub_2278C7970();
    v109 = os_log_type_enabled(v108, v353);
    v110 = *(v0 + 584);
    v111 = *(v0 + 576);
    v112 = *(v0 + 536);
    v113 = *(v0 + 464);
    v114 = *(v0 + 472);
    v115 = *(v0 + 432);
    v116 = *(v0 + 344);
    v117 = *(v0 + 352);
    if (v109)
    {
      v340 = *(v0 + 576);
      v118 = swift_slowAlloc();
      v321 = v113;
      v119 = swift_slowAlloc();
      v363[0] = v119;
      *v118 = 136315394;
      v311 = v112;
      v120 = sub_2278C6D50();
      v122 = v121;
      v110(v115, v116);
      v123 = sub_2278021B4(v120, v122, v363);

      *(v118 + 4) = v123;
      *(v118 + 12) = 2048;
      *(v118 + 14) = v100;
      _os_log_impl(&dword_2277F7000, v108, v353, "[%s] Schedule XPC activity to trigger in %fs", v118, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v119);
      MEMORY[0x22AA9E860](v119, -1, -1);
      MEMORY[0x22AA9E860](v118, -1, -1);

      v340(v311, v321);
    }

    else
    {

      v110(v115, v116);
      v111(v112, v113);
    }

    v182 = *(v0 + 560);
    v183 = *(v0 + 528);
    v184 = *(v0 + 424);
    v185 = *(v0 + 344);
    v186 = *(v0 + 264);
    v344 = *(v0 + 568);
    v358 = *(v0 + 272);
    v187 = *(v0 + 224);
    v188 = *(v0 + 232);
    v189 = *(v0 + 176);
    v190 = *__swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
    *(v0 + 120) = type metadata accessor for FitnessPlusPlanService();
    *(v0 + 128) = &off_283AEC318;
    *(v0 + 96) = v190;

    sub_2278C7370();
    v182(v184, v189, v185);
    (*(v188 + 16))(v186, v358, v187);
    v191 = sub_2278C7590();
    v305 = sub_2278C7970();
    v192 = os_log_type_enabled(v191, v305);
    v325 = *(v0 + 680);
    v315 = *(v0 + 672);
    v193 = *(v0 + 584);
    v194 = *(v0 + 576);
    v195 = *(v0 + 528);
    v345 = *(v0 + 472);
    v359 = *(v0 + 464);
    v196 = *(v0 + 424);
    v198 = *(v0 + 344);
    v197 = *(v0 + 352);
    v199 = *(v0 + 264);
    v200 = *(v0 + 224);
    if (v192)
    {
      v299 = *(v0 + 528);
      v201 = swift_slowAlloc();
      v289 = swift_slowAlloc();
      v363[0] = v289;
      *v201 = 136315394;
      v295 = v194;
      v202 = sub_2278C6D50();
      logb = v191;
      v204 = v203;
      v193(v196, v198);
      v205 = sub_2278021B4(v202, v204, v363);

      *(v201 + 4) = v205;
      *(v201 + 12) = 2080;
      v206 = sub_2278C6790();
      v208 = v207;
      v315(v199, v200);
      v209 = sub_2278021B4(v206, v208, v363);

      *(v201 + 14) = v209;
      _os_log_impl(&dword_2277F7000, logb, v305, "[%s] Schedule XPC Activity for notifcation to trigger on %s", v201, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v289, -1, -1);
      MEMORY[0x22AA9E860](v201, -1, -1);

      v295(v299, v359);
    }

    else
    {

      v315(v199, v200);
      v193(v196, v198);
      v194(v195, v359);
    }

    v232 = *__swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v233 = swift_task_alloc();
    *(v0 + 752) = v233;
    *v233 = v0;
    v234 = sub_2278908A0;
  }

  v233[1] = v234;

  return sub_227863B34(0xD000000000000035, 0x80000002278D2DC0);
}

uint64_t sub_22788ECCC()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  *(*v1 + 696) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_22788EF24;
  }

  else
  {
    v6 = sub_2278A65BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22788EDF8()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v4 = *v1;
  *(*v1 + 712) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_227890640;
  }

  else
  {
    v6 = sub_22788F184;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22788EF24()
{
  v41 = *(v0 + 696);
  v1 = *(v0 + 680);
  v2 = *(v0 + 336);
  (*(v0 + 672))(*(v0 + 280), *(v0 + 224));
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v9 = *(v0 + 504);
  v8 = *(v0 + 512);
  v10 = *(v0 + 488);
  v11 = *(v0 + 496);
  v12 = *(v0 + 480);
  v15 = *(v0 + 456);
  v16 = *(v0 + 448);
  v17 = *(v0 + 440);
  v18 = *(v0 + 432);
  v19 = *(v0 + 424);
  v20 = *(v0 + 416);
  v21 = *(v0 + 408);
  v22 = *(v0 + 400);
  v23 = *(v0 + 392);
  v24 = *(v0 + 384);
  v25 = *(v0 + 376);
  v26 = *(v0 + 368);
  v27 = *(v0 + 336);
  v28 = *(v0 + 328);
  v29 = *(v0 + 320);
  v30 = *(v0 + 312);
  v31 = *(v0 + 304);
  v32 = *(v0 + 296);
  v33 = *(v0 + 288);
  v34 = *(v0 + 280);
  v35 = *(v0 + 272);
  v36 = *(v0 + 264);
  v37 = *(v0 + 256);
  v38 = *(v0 + 248);
  v39 = *(v0 + 240);
  v40 = *(v0 + 216);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22788F184()
{
  v309 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 312);
  v3 = *(v0 + 224);
  if ((*(v0 + 608))(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6 = *(v0 + 488);
    v7 = *(v0 + 376);
    v8 = *(v0 + 344);
    v9 = *(v0 + 176);
    sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7370();
    v5(v7, v9, v8);
    v10 = sub_2278C7590();
    v259 = sub_2278C7950();
    v11 = os_log_type_enabled(v10, v259);
    v12 = *(v0 + 680);
    v13 = *(v0 + 672);
    v14 = *(v0 + 584);
    v15 = *(v0 + 576);
    v283 = *(v0 + 464);
    v295 = *(v0 + 488);
    v16 = *(v0 + 376);
    v17 = *(v0 + 344);
    v18 = *(v0 + 352);
    v19 = *(v0 + 336);
    v280 = *(v0 + 280);
    v268 = *(v0 + 472);
    v277 = *(v0 + 224);
    if (!v11)
    {

      v14(v16, v17);
      v15(v295, v283);
      v13(v280, v277);
      v26 = v19;
      goto LABEL_14;
    }

    v253 = *(v0 + 576);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v308[0] = v21;
    *v20 = 136315138;
    v237 = v13;
    v243 = v19;
    v22 = sub_2278C6D50();
    v24 = v23;
    v14(v16, v17);
    v25 = sub_2278021B4(v22, v24, v308);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2277F7000, v10, v259, "[%s] Unable to determine scheduled date for notification, skipping for now...", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA9E860](v21, -1, -1);
    MEMORY[0x22AA9E860](v20, -1, -1);

    v253(v295, v283);
    v237(v280, v277);
LABEL_4:
    v26 = v243;
LABEL_14:
    sub_227802FC4(v26, &qword_27D7D60A8, qword_2278C9730);
    v63 = *(v0 + 552);
    v64 = *(v0 + 544);
    v65 = *(v0 + 536);
    v66 = *(v0 + 528);
    v67 = *(v0 + 520);
    v69 = *(v0 + 504);
    v68 = *(v0 + 512);
    v70 = *(v0 + 488);
    v71 = *(v0 + 496);
    v72 = *(v0 + 480);
    v216 = *(v0 + 456);
    v217 = *(v0 + 448);
    v218 = *(v0 + 440);
    v219 = *(v0 + 432);
    v220 = *(v0 + 424);
    v221 = *(v0 + 416);
    v222 = *(v0 + 408);
    v223 = *(v0 + 400);
    v224 = *(v0 + 392);
    v225 = *(v0 + 384);
    v226 = *(v0 + 376);
    v227 = *(v0 + 368);
    v228 = *(v0 + 336);
    v229 = *(v0 + 328);
    v230 = *(v0 + 320);
    log = *(v0 + 312);
    v238 = *(v0 + 304);
    v244 = *(v0 + 296);
    v248 = *(v0 + 288);
    v254 = *(v0 + 280);
    v261 = *(v0 + 272);
    v270 = *(v0 + 264);
    v278 = *(v0 + 256);
    v281 = *(v0 + 248);
    v286 = *(v0 + 240);
    v298 = *(v0 + 216);

    v73 = *(v0 + 8);

    return v73();
  }

  v284 = *(v0 + 672);
  v296 = *(v0 + 680);
  v27 = *(v0 + 664);
  v28 = *(v0 + 656);
  v29 = *(v0 + 648);
  v30 = *(v0 + 640);
  v31 = *(v0 + 296);
  v32 = *(v0 + 192);
  v33 = *(v0 + 176);
  (*(v0 + 632))(*(v0 + 272), v2, v3);
  sub_2278C7C50();

  v308[0] = 0xD000000000000035;
  v308[1] = 0x80000002278D2DC0;
  v34 = sub_2278C6D50();
  MEMORY[0x22AA9D6B0](v34);

  MEMORY[0x22AA9D6B0](0x63696669746F6E5FLL, 0xED00006E6F697461);
  *(v0 + 720) = 0xD000000000000035;
  *(v0 + 728) = 0x80000002278D2DC0;
  sub_2278C67E0();
  v36 = v35;
  *(v0 + 736) = v35;
  __swift_project_boxed_opaque_existential_1((v32 + 200), *(v32 + 224));
  v29(v27, &off_283AE99D8);
  sub_2278C67E0();
  v38 = v37;
  *(v0 + 744) = v37;
  v284(v31, v3);
  if (v36 - v38 < 0.0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v36 - v38;
  }

  v40 = MKBGetDeviceLockState();
  if (v40 != 3 && v40)
  {
    v111 = *(v0 + 568);
    v112 = *(v0 + 560);
    v113 = *(v0 + 504);
    v114 = *(v0 + 392);
    v115 = *(v0 + 344);
    v116 = *(v0 + 176);
    sub_2278C7370();
    v112(v114, v116, v115);
    v117 = sub_2278C7590();
    v118 = sub_2278C7970();
    v119 = os_log_type_enabled(v117, v118);
    v302 = *(v0 + 584);
    v120 = *(v0 + 576);
    v121 = *(v0 + 504);
    v122 = *(v0 + 464);
    v123 = *(v0 + 472);
    v124 = *(v0 + 392);
    v125 = *(v0 + 344);
    v126 = *(v0 + 352);
    if (v119)
    {
      v289 = *(v0 + 576);
      v127 = swift_slowAlloc();
      v273 = v122;
      v128 = swift_slowAlloc();
      v308[0] = v128;
      *v127 = 136315138;
      v264 = v121;
      v129 = sub_2278C6D50();
      v131 = v130;
      v302(v124, v125);
      v132 = sub_2278021B4(v129, v131, v308);

      *(v127 + 4) = v132;
      _os_log_impl(&dword_2277F7000, v117, v118, "[%s] Currently locked, rescheduling XPC Tasks...", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v128);
      MEMORY[0x22AA9E860](v128, -1, -1);
      MEMORY[0x22AA9E860](v127, -1, -1);

      v289(v264, v273);
    }

    else
    {

      v302(v124, v125);
      v120(v121, v122);
    }

    v186 = *(v0 + 560);
    v187 = *(v0 + 496);
    v188 = *(v0 + 384);
    v189 = *(v0 + 344);
    v293 = *(v0 + 568);
    v306 = *(v0 + 272);
    v191 = *(v0 + 232);
    v190 = *(v0 + 240);
    v192 = *(v0 + 224);
    v193 = *(v0 + 176);
    v194 = *__swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
    *(v0 + 40) = type metadata accessor for FitnessPlusPlanService();
    *(v0 + 48) = &off_283AEC318;
    *(v0 + 16) = v194;

    sub_2278C7370();
    v186(v188, v193, v189);
    (*(v191 + 16))(v190, v306, v192);
    v195 = sub_2278C7590();
    v258 = sub_2278C7970();
    v196 = os_log_type_enabled(v195, v258);
    v276 = *(v0 + 680);
    v267 = *(v0 + 672);
    v197 = *(v0 + 584);
    v198 = *(v0 + 576);
    v199 = *(v0 + 496);
    v294 = *(v0 + 472);
    v307 = *(v0 + 464);
    v200 = *(v0 + 384);
    v202 = *(v0 + 344);
    v201 = *(v0 + 352);
    v203 = *(v0 + 240);
    v204 = *(v0 + 224);
    if (v196)
    {
      v252 = *(v0 + 496);
      v205 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v308[0] = v242;
      *v205 = 136315394;
      v247 = v198;
      v206 = sub_2278C6D50();
      logd = v195;
      v208 = v207;
      v197(v200, v202);
      v209 = sub_2278021B4(v206, v208, v308);

      *(v205 + 4) = v209;
      *(v205 + 12) = 2080;
      v210 = sub_2278C6790();
      v212 = v211;
      v267(v203, v204);
      v213 = sub_2278021B4(v210, v212, v308);

      *(v205 + 14) = v213;
      _os_log_impl(&dword_2277F7000, logd, v258, "[%s] Schedule XPC Activity for notifcation to trigger on %s", v205, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v242, -1, -1);
      MEMORY[0x22AA9E860](v205, -1, -1);

      v247(v252, v307);
    }

    else
    {

      v267(v203, v204);
      v197(v200, v202);
      v198(v199, v307);
    }

    v214 = *__swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v184 = swift_task_alloc();
    *(v0 + 800) = v184;
    *v184 = v0;
    v185 = sub_227891438;
  }

  else if (v39 <= 0.0)
  {
    v287 = *(v0 + 672);
    v299 = *(v0 + 680);
    v75 = *(v0 + 664);
    v76 = *(v0 + 656);
    v77 = *(v0 + 648);
    v78 = *(v0 + 296);
    v79 = *(v0 + 272);
    v80 = *(v0 + 216);
    v262 = *(v0 + 224);
    v81 = *(v0 + 208);
    v271 = *(v0 + 200);
    v82 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v82 + 200), *(v82 + 224));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v82 + 200), *(v82 + 224));
    v77(v75, &off_283AE99D8);
    LOBYTE(v76) = sub_2278C68F0();
    v287(v78, v262);
    (*(v81 + 8))(v80, v271);
    v83 = *(v0 + 568);
    v84 = *(v0 + 560);
    v85 = *(v0 + 344);
    v300 = *(v0 + 272);
    v86 = *(v0 + 224);
    v87 = *(v0 + 232);
    v88 = *(v0 + 176);
    if ((v76 & 1) == 0)
    {
      v161 = *(v0 + 512);
      v162 = *(v0 + 400);
      v163 = *(v0 + 248);

      sub_2278C7370();
      v84(v162, v88, v85);
      (*(v87 + 16))(v163, v300, v86);
      v164 = sub_2278C7590();
      v251 = sub_2278C7950();
      v282 = v164;
      v165 = os_log_type_enabled(v164, v251);
      v166 = *(v0 + 672);
      v167 = *(v0 + 584);
      v292 = *(v0 + 576);
      v279 = *(v0 + 512);
      v257 = *(v0 + 472);
      v275 = *(v0 + 464);
      v168 = *(v0 + 400);
      v170 = *(v0 + 344);
      v169 = *(v0 + 352);
      v171 = *(v0 + 336);
      v305 = *(v0 + 280);
      v266 = *(v0 + 272);
      v172 = *(v0 + 248);
      v173 = *(v0 + 224);
      if (!v165)
      {

        v166(v172, v173);
        v167(v168, v170);
        v292(v279, v275);
        v166(v266, v173);
        v166(v305, v173);
        v26 = v171;
        goto LABEL_14;
      }

      logc = *(v0 + 680);
      v174 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v308[0] = v241;
      *v174 = 136315394;
      v231 = v166;
      v175 = sub_2278C6D50();
      v243 = v171;
      v177 = v176;
      v167(v168, v170);
      v178 = sub_2278021B4(v175, v177, v308);

      *(v174 + 4) = v178;
      *(v174 + 12) = 2080;
      v179 = sub_2278C6790();
      v181 = v180;
      v231(v172, v173);
      v182 = sub_2278021B4(v179, v181, v308);

      *(v174 + 14) = v182;
      _os_log_impl(&dword_2277F7000, v282, v251, "[%s] Scheduled date (%s) is in the past, but not today, not firing", v174, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v241, -1, -1);
      MEMORY[0x22AA9E860](v174, -1, -1);

      v292(v279, v275);
      v231(v266, v173);
      v231(v305, v173);
      goto LABEL_4;
    }

    v89 = *(v0 + 520);
    v90 = *(v0 + 408);
    v91 = *(v0 + 256);
    sub_2278C7370();
    v84(v90, v88, v85);
    (*(v87 + 16))(v91, v300, v86);
    v92 = sub_2278C7590();
    v255 = sub_2278C7970();
    v93 = os_log_type_enabled(v92, v255);
    v272 = *(v0 + 680);
    v263 = *(v0 + 672);
    v94 = *(v0 + 584);
    v95 = *(v0 + 576);
    v96 = *(v0 + 520);
    v288 = *(v0 + 472);
    v301 = *(v0 + 464);
    v97 = *(v0 + 408);
    v99 = *(v0 + 344);
    v98 = *(v0 + 352);
    v100 = *(v0 + 256);
    v101 = *(v0 + 224);
    if (v93)
    {
      v249 = *(v0 + 520);
      v102 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v308[0] = v239;
      *v102 = 136315394;
      v245 = v95;
      v103 = sub_2278C6D50();
      loga = v92;
      v105 = v104;
      v94(v97, v99);
      v106 = sub_2278021B4(v103, v105, v308);

      *(v102 + 4) = v106;
      *(v102 + 12) = 2080;
      v107 = sub_2278C6790();
      v109 = v108;
      v263(v100, v101);
      v110 = sub_2278021B4(v107, v109, v308);

      *(v102 + 14) = v110;
      _os_log_impl(&dword_2277F7000, loga, v255, "[%s] Scheduled date (%s) is today and in the past, firing now...", v102, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v239, -1, -1);
      MEMORY[0x22AA9E860](v102, -1, -1);

      v245(v249, v301);
    }

    else
    {

      v263(v100, v101);
      v94(v97, v99);
      v95(v96, v301);
    }

    v215 = *__swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v184 = swift_task_alloc();
    *(v0 + 776) = v184;
    *v184 = v0;
    v185 = sub_227890F00;
  }

  else
  {
    v41 = *(v0 + 568);
    v42 = *(v0 + 560);
    v43 = *(v0 + 536);
    v44 = *(v0 + 432);
    v45 = *(v0 + 344);
    v46 = *(v0 + 176);
    sub_2278C7370();
    v42(v44, v46, v45);
    v47 = sub_2278C7590();
    v297 = sub_2278C7970();
    v48 = os_log_type_enabled(v47, v297);
    v49 = *(v0 + 584);
    v50 = *(v0 + 576);
    v51 = *(v0 + 536);
    v52 = *(v0 + 464);
    v53 = *(v0 + 472);
    v54 = *(v0 + 432);
    v55 = *(v0 + 344);
    v56 = *(v0 + 352);
    if (v48)
    {
      v285 = *(v0 + 576);
      v57 = swift_slowAlloc();
      v269 = v52;
      v58 = swift_slowAlloc();
      v308[0] = v58;
      *v57 = 136315394;
      v260 = v51;
      v59 = sub_2278C6D50();
      v61 = v60;
      v49(v54, v55);
      v62 = sub_2278021B4(v59, v61, v308);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2048;
      *(v57 + 14) = v39;
      _os_log_impl(&dword_2277F7000, v47, v297, "[%s] Schedule XPC activity to trigger in %fs", v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AA9E860](v58, -1, -1);
      MEMORY[0x22AA9E860](v57, -1, -1);

      v285(v260, v269);
    }

    else
    {

      v49(v54, v55);
      v50(v51, v52);
    }

    v133 = *(v0 + 560);
    v134 = *(v0 + 528);
    v135 = *(v0 + 424);
    v136 = *(v0 + 344);
    v137 = *(v0 + 264);
    v290 = *(v0 + 568);
    v303 = *(v0 + 272);
    v138 = *(v0 + 224);
    v139 = *(v0 + 232);
    v140 = *(v0 + 176);
    v141 = *__swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
    *(v0 + 120) = type metadata accessor for FitnessPlusPlanService();
    *(v0 + 128) = &off_283AEC318;
    *(v0 + 96) = v141;

    sub_2278C7370();
    v133(v135, v140, v136);
    (*(v139 + 16))(v137, v303, v138);
    v142 = sub_2278C7590();
    v256 = sub_2278C7970();
    v143 = os_log_type_enabled(v142, v256);
    v274 = *(v0 + 680);
    v265 = *(v0 + 672);
    v144 = *(v0 + 584);
    v145 = *(v0 + 576);
    v146 = *(v0 + 528);
    v291 = *(v0 + 472);
    v304 = *(v0 + 464);
    v147 = *(v0 + 424);
    v149 = *(v0 + 344);
    v148 = *(v0 + 352);
    v150 = *(v0 + 264);
    v151 = *(v0 + 224);
    if (v143)
    {
      v250 = *(v0 + 528);
      v152 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v308[0] = v240;
      *v152 = 136315394;
      v246 = v145;
      v153 = sub_2278C6D50();
      logb = v142;
      v155 = v154;
      v144(v147, v149);
      v156 = sub_2278021B4(v153, v155, v308);

      *(v152 + 4) = v156;
      *(v152 + 12) = 2080;
      v157 = sub_2278C6790();
      v159 = v158;
      v265(v150, v151);
      v160 = sub_2278021B4(v157, v159, v308);

      *(v152 + 14) = v160;
      _os_log_impl(&dword_2277F7000, logb, v256, "[%s] Schedule XPC Activity for notifcation to trigger on %s", v152, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9E860](v240, -1, -1);
      MEMORY[0x22AA9E860](v152, -1, -1);

      v246(v250, v304);
    }

    else
    {

      v265(v150, v151);
      v144(v147, v149);
      v145(v146, v304);
    }

    v183 = *__swift_project_boxed_opaque_existential_1((*(v0 + 192) + 568), *(*(v0 + 192) + 592));
    v184 = swift_task_alloc();
    *(v0 + 752) = v184;
    *v184 = v0;
    v185 = sub_2278908A0;
  }

  v184[1] = v185;

  return sub_227863B34(0xD000000000000035, 0x80000002278D2DC0);
}

uint64_t sub_227890640()
{
  v41 = *(v0 + 712);
  v1 = *(v0 + 680);
  v2 = *(v0 + 336);
  (*(v0 + 672))(*(v0 + 280), *(v0 + 224));
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v9 = *(v0 + 504);
  v8 = *(v0 + 512);
  v10 = *(v0 + 488);
  v11 = *(v0 + 496);
  v12 = *(v0 + 480);
  v15 = *(v0 + 456);
  v16 = *(v0 + 448);
  v17 = *(v0 + 440);
  v18 = *(v0 + 432);
  v19 = *(v0 + 424);
  v20 = *(v0 + 416);
  v21 = *(v0 + 408);
  v22 = *(v0 + 400);
  v23 = *(v0 + 392);
  v24 = *(v0 + 384);
  v25 = *(v0 + 376);
  v26 = *(v0 + 368);
  v27 = *(v0 + 336);
  v28 = *(v0 + 328);
  v29 = *(v0 + 320);
  v30 = *(v0 + 312);
  v31 = *(v0 + 304);
  v32 = *(v0 + 296);
  v33 = *(v0 + 288);
  v34 = *(v0 + 280);
  v35 = *(v0 + 272);
  v36 = *(v0 + 264);
  v37 = *(v0 + 256);
  v38 = *(v0 + 248);
  v39 = *(v0 + 240);
  v40 = *(v0 + 216);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2278908A0()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2278909B0, v2, 0);
}

uint64_t sub_2278909B0()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 416);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 344);
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  v11 = __swift_project_boxed_opaque_existential_1((v9 + 568), *(v9 + 592));
  v4(v5, v10, v8);
  sub_2278040AC(v0 + 96, v0 + 136);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v0 + 760) = v13;
  *(v13 + 16) = v9;
  (*(v7 + 32))(v13 + v12, v5, v8);
  sub_2277F9D0C((v0 + 136), v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v11;

  v15 = swift_task_alloc();
  *(v0 + 768) = v15;
  *v15 = v0;
  v15[1] = sub_227890B58;
  v16 = v2 - v1;
  if (v2 - v1 < 0.0)
  {
    v16 = 0.0;
  }

  v17 = *(v0 + 728);
  v18 = *(v0 + 720);

  return sub_2278643BC(v18, v17, sub_2278A65B8, v13, v16);
}

uint64_t sub_227890B58()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_227890C84, v3, 0);
}

uint64_t sub_227890C84()
{
  v1 = v0[91];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[42];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v3(v6, v7);
  v3(v5, v7);
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  v12 = v0[65];
  v14 = v0[63];
  v13 = v0[64];
  v15 = v0[61];
  v16 = v0[62];
  v17 = v0[60];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[51];
  v27 = v0[50];
  v28 = v0[49];
  v29 = v0[48];
  v30 = v0[47];
  v31 = v0[46];
  v32 = v0[42];
  v33 = v0[41];
  v34 = v0[40];
  v35 = v0[39];
  v36 = v0[38];
  v37 = v0[37];
  v38 = v0[36];
  v39 = v0[35];
  v40 = v0[34];
  v41 = v0[33];
  v42 = v0[32];
  v43 = v0[31];
  v44 = v0[30];
  v45 = v0[27];

  v18 = v0[1];

  return v18();
}

uint64_t sub_227890F00()
{
  v1 = *v0;
  v2 = *(*v0 + 776);
  v3 = *(*v0 + 728);
  v4 = *v0;

  v5 = swift_task_alloc();
  v1[98] = v5;
  *v5 = v4;
  v5[1] = sub_2278910A8;
  v6 = v1[34];
  v7 = v1[24];
  v8 = v1[23];
  v9 = v1[22];

  return sub_227895ED8(v9, v6, v8, 2);
}

uint64_t sub_2278910A8()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *v1;
  *(*v1 + 792) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_227891A98;
  }

  else
  {
    v6 = sub_2278911D4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2278911D4()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[42];
  v4 = v0[35];
  v5 = v0[28];
  v2(v0[34], v5);
  v2(v4, v5);
  sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[65];
  v12 = v0[63];
  v11 = v0[64];
  v13 = v0[61];
  v14 = v0[62];
  v15 = v0[60];
  v18 = v0[57];
  v19 = v0[56];
  v20 = v0[55];
  v21 = v0[54];
  v22 = v0[53];
  v23 = v0[52];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[42];
  v31 = v0[41];
  v32 = v0[40];
  v33 = v0[39];
  v34 = v0[38];
  v35 = v0[37];
  v36 = v0[36];
  v37 = v0[35];
  v38 = v0[34];
  v39 = v0[33];
  v40 = v0[32];
  v41 = v0[31];
  v42 = v0[30];
  v43 = v0[27];

  v16 = v0[1];

  return v16();
}

uint64_t sub_227891438()
{
  v1 = *(*v0 + 800);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227891548, v2, 0);
}

uint64_t sub_227891548()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 416);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 344);
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  v11 = __swift_project_boxed_opaque_existential_1((v9 + 568), *(v9 + 592));
  v4(v5, v10, v8);
  sub_2278040AC(v0 + 16, v0 + 56);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v0 + 808) = v13;
  *(v13 + 16) = v9;
  (*(v7 + 32))(v13 + v12, v5, v8);
  sub_2277F9D0C((v0 + 56), v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v11;

  v15 = swift_task_alloc();
  *(v0 + 816) = v15;
  *v15 = v0;
  v15[1] = sub_2278916F0;
  v16 = v2 - v1;
  if (v2 - v1 < 0.0)
  {
    v16 = 0.0;
  }

  v17 = *(v0 + 728);
  v18 = *(v0 + 720);

  return sub_2278643BC(v18, v17, sub_2278A5FC0, v13, v16);
}

uint64_t sub_2278916F0()
{
  v1 = *(*v0 + 816);
  v2 = *(*v0 + 808);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22789181C, v3, 0);
}

uint64_t sub_22789181C()
{
  v1 = v0[91];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[42];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3(v6, v7);
  v3(v5, v7);
  sub_227802FC4(v4, &qword_27D7D60A8, qword_2278C9730);
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  v12 = v0[65];
  v14 = v0[63];
  v13 = v0[64];
  v15 = v0[61];
  v16 = v0[62];
  v17 = v0[60];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[51];
  v27 = v0[50];
  v28 = v0[49];
  v29 = v0[48];
  v30 = v0[47];
  v31 = v0[46];
  v32 = v0[42];
  v33 = v0[41];
  v34 = v0[40];
  v35 = v0[39];
  v36 = v0[38];
  v37 = v0[37];
  v38 = v0[36];
  v39 = v0[35];
  v40 = v0[34];
  v41 = v0[33];
  v42 = v0[32];
  v43 = v0[31];
  v44 = v0[30];
  v45 = v0[27];

  v18 = v0[1];

  return v18();
}

uint64_t sub_227891A98()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[42];
  v4 = v0[35];
  v5 = v0[28];
  v2(v0[34], v5);
  v2(v4, v5);
  sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
  v44 = v0[99];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[65];
  v12 = v0[63];
  v11 = v0[64];
  v13 = v0[61];
  v14 = v0[62];
  v15 = v0[60];
  v18 = v0[57];
  v19 = v0[56];
  v20 = v0[55];
  v21 = v0[54];
  v22 = v0[53];
  v23 = v0[52];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[42];
  v31 = v0[41];
  v32 = v0[40];
  v33 = v0[39];
  v34 = v0[38];
  v35 = v0[37];
  v36 = v0[36];
  v37 = v0[35];
  v38 = v0[34];
  v39 = v0[33];
  v40 = v0[32];
  v41 = v0[31];
  v42 = v0[30];
  v43 = v0[27];

  v16 = v0[1];

  return v16();
}

uint64_t sub_227891D08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2278C6920();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_2278C6820();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v10 = sub_2278C6D60();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v13 = sub_2278C75A0();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227891F5C, v1, 0);
}

uint64_t sub_227891F5C()
{
  v32 = v0;
  v1 = *(v0 + 176);
  sub_2278C7370();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  if (v4)
  {
    v27 = v3;
    v8 = *(v0 + 136);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136315138;
    v12 = *MEMORY[0x277D09868];
    (*(v10 + 104))(v8, v12, v9);
    v29 = v6;
    v30 = v5;
    v13 = sub_2278C6D50();
    v15 = v14;
    (*(v10 + 8))(v8, v9);
    v16 = sub_2278021B4(v13, v15, &v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2277F7000, v2, v27, "[%s] Checking schedued date for notification", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9E860](v28, -1, -1);
    MEMORY[0x22AA9E860](v11, -1, -1);

    v17 = *(v7 + 8);
    v17(v30, v29);
  }

  else
  {

    v17 = *(v7 + 8);
    v17(v5, v6);
    v12 = *MEMORY[0x277D09868];
  }

  *(v0 + 256) = v12;
  *(v0 + 184) = v17;
  v18 = *(v0 + 128);
  v19 = *(v0 + 104);
  v20 = *(v0 + 112);
  v21 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v21 + 240), *(v21 + 264));
  v22 = *(v20 + 104);
  *(v0 + 192) = v22;
  *(v0 + 200) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v18, v12, v19);
  v23 = swift_task_alloc();
  *(v0 + 208) = v23;
  *v23 = v0;
  v23[1] = sub_2278921E4;
  v24 = *(v0 + 128);
  v25 = *(v0 + 56);

  return sub_227884D34(v25, v24, v21 + 200);
}

uint64_t sub_2278921E4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *v1;
  v2[27] = v0;

  v8 = *(v5 + 8);
  v2[28] = v8;
  v2[29] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[3];
  if (v0)
  {
    v10 = sub_2278929C0;
  }

  else
  {
    v10 = sub_227892380;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_227892380()
{
  v89 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
LABEL_7:
    v26 = *(v0 + 160);
    sub_2278C7370();
    v27 = sub_2278C7590();
    v28 = sub_2278C7970();
    if (os_log_type_enabled(v27, v28))
    {
      v71 = *(v0 + 224);
      v74 = *(v0 + 232);
      v30 = *(v0 + 192);
      v29 = *(v0 + 200);
      v31 = *(v0 + 256);
      v80 = *(v0 + 160);
      v85 = *(v0 + 184);
      v32 = *(v0 + 136);
      v77 = *(v0 + 152);
      v78 = *(v0 + 144);
      v33 = *(v0 + 104);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v88 = v35;
      *v34 = 136315138;
      v30(v32, v31, v33);
      v36 = sub_2278C6D50();
      v38 = v37;
      v71(v32, v33);
      v39 = sub_2278021B4(v36, v38, &v88);

      *(v34 + 4) = v39;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9E860](v35, -1, -1);
      MEMORY[0x22AA9E860](v34, -1, -1);

      v85(v80, v78);
    }

    else
    {
      v40 = *(v0 + 184);
      v42 = *(v0 + 152);
      v41 = *(v0 + 160);
      v43 = *(v0 + 144);

      v40(v41, v43);
    }

    v81 = *(v0 + 192);
    v86 = *(v0 + 200);
    v44 = *(v0 + 256);
    v45 = *(v0 + 120);
    v46 = *(v0 + 104);
    v47 = *(v0 + 80);
    v48 = *(v0 + 24);
    __swift_project_boxed_opaque_existential_1(v48 + 25, v48[28]);
    v49 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v49(v47);
    __swift_project_boxed_opaque_existential_1(v48 + 30, v48[33]);
    v81(v45, v44, v46);
    v50 = swift_task_alloc();
    *(v0 + 240) = v50;
    *v50 = v0;
    v50[1] = sub_227892AB4;
    v51 = *(v0 + 120);
    v52 = *(v0 + 80);

    return sub_227884840(v52, v51);
  }

  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);
  v83 = *(v0 + 32);
  v76 = *(v1 + 32);
  v76();
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  v9 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v9(v5);
  v10 = sub_2278C68F0();
  v11 = *(v1 + 8);
  v11(v5, v2);
  (*(v7 + 8))(v6, v83);
  if ((v10 & 1) == 0)
  {
    v11(*(v0 + 96), *(v0 + 64));
    goto LABEL_7;
  }

  v12 = *(v0 + 168);
  sub_2278C7370();
  v13 = sub_2278C7590();
  v14 = sub_2278C7970();
  if (os_log_type_enabled(v13, v14))
  {
    v67 = *(v0 + 224);
    v68 = *(v0 + 232);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 256);
    v79 = *(v0 + 168);
    v84 = *(v0 + 184);
    v70 = *(v0 + 152);
    v73 = *(v0 + 144);
    v18 = *(v0 + 136);
    v19 = *(v0 + 104);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v88 = v21;
    *v20 = 136315138;
    v16(v18, v17, v19);
    v22 = sub_2278C6D50();
    v24 = v23;
    v67(v18, v19);
    v25 = sub_2278021B4(v22, v24, &v88);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2277F7000, v13, v14, "[%s] Using stored schedued date for notification", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA9E860](v21, -1, -1);
    MEMORY[0x22AA9E860](v20, -1, -1);

    v84(v79, v73);
  }

  else
  {
    v54 = *(v0 + 184);
    v55 = *(v0 + 168);
    v56 = *(v0 + 144);
    v57 = *(v0 + 152);

    v54(v55, v56);
  }

  v59 = *(v0 + 168);
  v58 = *(v0 + 176);
  v60 = *(v0 + 160);
  v62 = *(v0 + 128);
  v61 = *(v0 + 136);
  v69 = *(v0 + 120);
  v72 = *(v0 + 88);
  v63 = *(v0 + 72);
  v75 = *(v0 + 80);
  v64 = *(v0 + 64);
  v82 = *(v0 + 56);
  v87 = *(v0 + 48);
  v65 = *(v0 + 16);
  (v76)(v65, *(v0 + 96), v64);
  (*(v63 + 56))(v65, 0, 1, v64);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_2278929C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v10 = v0[7];
  v13 = v0[6];
  v14 = v0[27];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227892AB4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 248) = v0;

  v5(v6, v7);
  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_227892D94;
  }

  else
  {
    v10 = sub_227892C4C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_227892C4C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v12 = v0[15];
  v13 = v0[12];
  v8 = v0[11];
  v14 = v0[7];
  v15 = v0[6];
  v9 = v0[2];
  (*(v2 + 32))(v9, v0[10], v1);
  (*(v2 + 56))(v9, 0, 1, v1);

  v10 = v0[1];

  return v10();
}

uint64_t sub_227892D94()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v10 = v0[7];
  v13 = v0[6];
  v14 = v0[31];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227892EA0(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a3;
  *(v4 + 56) = a1;
  v5 = sub_2278C6920();
  *(v4 + 88) = v5;
  v6 = *(v5 - 8);
  *(v4 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v9 = sub_2278C6820();
  *(v4 + 144) = v9;
  v10 = *(v9 - 8);
  *(v4 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v12 = sub_2278C6D60();
  *(v4 + 208) = v12;
  v13 = *(v12 - 8);
  *(v4 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v15 = sub_2278C75A0();
  *(v4 + 248) = v15;
  v16 = *(v15 - 8);
  *(v4 + 256) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227893168, v3, 0);
}

uint64_t sub_227893168()
{
  v32 = v0;
  v1 = *(v0 + 304);
  sub_2278C7370();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 304);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  if (v4)
  {
    v27 = v3;
    v8 = *(v0 + 240);
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136315138;
    v12 = *MEMORY[0x277D09860];
    (*(v10 + 104))(v8, v12, v9);
    v29 = v6;
    v30 = v5;
    v13 = sub_2278C6D50();
    v15 = v14;
    (*(v10 + 8))(v8, v9);
    v16 = sub_2278021B4(v13, v15, &v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2277F7000, v2, v27, "[%s] Checking schedued date for notification", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9E860](v28, -1, -1);
    MEMORY[0x22AA9E860](v11, -1, -1);

    v17 = *(v7 + 8);
    v17(v30, v29);
  }

  else
  {

    v17 = *(v7 + 8);
    v17(v5, v6);
    v12 = *MEMORY[0x277D09860];
  }

  *(v0 + 464) = v12;
  *(v0 + 312) = v17;
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);
  v21 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v21 + 240), *(v21 + 264));
  v22 = *(v20 + 104);
  *(v0 + 320) = v22;
  *(v0 + 328) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v18, v12, v19);
  v23 = swift_task_alloc();
  *(v0 + 336) = v23;
  *v23 = v0;
  v23[1] = sub_2278933F0;
  v24 = *(v0 + 232);
  v25 = *(v0 + 136);

  return sub_227884D34(v25, v24, v21 + 200);
}

uint64_t sub_2278933F0()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  v2[43] = v0;

  v5 = v2[29];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[10];
  v11 = *(v6 + 8);
  v9 = v6 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v5, v7);
    v12 = sub_227893BD8;
  }

  else
  {
    v2[44] = v10;
    v2[45] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v7);
    v12 = sub_227893584;
  }

  return MEMORY[0x2822009F8](v12, v8, 0);
}

uint64_t sub_227893584()
{
  v91 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = v2[6];
  *(v0 + 368) = v4;
  *(v0 + 376) = (v2 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
LABEL_7:
    v26 = *(v0 + 288);
    sub_2278C7370();
    v27 = sub_2278C7590();
    v28 = sub_2278C7970();
    if (os_log_type_enabled(v27, v28))
    {
      v73 = *(v0 + 352);
      v76 = *(v0 + 360);
      v30 = *(v0 + 320);
      v29 = *(v0 + 328);
      v31 = *(v0 + 464);
      v84 = *(v0 + 288);
      v88 = *(v0 + 312);
      v79 = *(v0 + 256);
      v82 = *(v0 + 248);
      v32 = *(v0 + 240);
      v33 = *(v0 + 208);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v90 = v35;
      *v34 = 136315138;
      v30(v32, v31, v33);
      v36 = sub_2278C6D50();
      v38 = v37;
      v73(v32, v33);
      v39 = sub_2278021B4(v36, v38, &v90);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2277F7000, v27, v28, "[%s] Generating schedued date for notification", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9E860](v35, -1, -1);
      MEMORY[0x22AA9E860](v34, -1, -1);

      v88(v84, v82);
    }

    else
    {
      v40 = *(v0 + 312);
      v41 = *(v0 + 288);
      v42 = *(v0 + 248);
      v43 = *(v0 + 256);

      v40(v41, v42);
    }

    v44 = *__swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
    sub_2278682F4((v0 + 16));
    v45 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v46 = swift_task_alloc();
    *(v0 + 384) = v46;
    *v46 = v0;
    v46[1] = sub_227893D38;

    return sub_2278A7844();
  }

  v5 = *(v0 + 192);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v86 = *(v0 + 88);
  v81 = v2[4];
  v81(*(v0 + 200), v3, v1);
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  v9 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v9(v5);
  v10 = sub_2278C68F0();
  v11 = v2[1];
  v11(v5, v1);
  (*(v7 + 8))(v6, v86);
  if ((v10 & 1) == 0)
  {
    v11(*(v0 + 200), *(v0 + 144));
    goto LABEL_7;
  }

  v12 = *(v0 + 296);
  sub_2278C7370();
  v13 = sub_2278C7590();
  v14 = sub_2278C7970();
  if (os_log_type_enabled(v13, v14))
  {
    v68 = *(v0 + 352);
    v70 = *(v0 + 360);
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    v17 = *(v0 + 464);
    v87 = *(v0 + 312);
    v72 = *(v0 + 256);
    v75 = *(v0 + 248);
    v78 = *(v0 + 296);
    v18 = *(v0 + 240);
    v19 = *(v0 + 208);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v90 = v21;
    *v20 = 136315138;
    v16(v18, v17, v19);
    v22 = sub_2278C6D50();
    v24 = v23;
    v68(v18, v19);
    v25 = sub_2278021B4(v22, v24, &v90);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2277F7000, v13, v14, "[%s] Using stored schedued date for last notification", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA9E860](v21, -1, -1);
    MEMORY[0x22AA9E860](v20, -1, -1);

    v87(v78, v75);
  }

  else
  {
    v48 = *(v0 + 312);
    v49 = *(v0 + 296);
    v50 = *(v0 + 248);
    v51 = *(v0 + 256);

    v48(v49, v50);
  }

  v52 = *(v0 + 144);
  v53 = *(v0 + 152);
  v54 = *(v0 + 56);
  v81(v54, *(v0 + 200), v52);
  (*(v53 + 56))(v54, 0, 1, v52);
  v56 = *(v0 + 296);
  v55 = *(v0 + 304);
  v57 = *(v0 + 280);
  v58 = *(v0 + 288);
  v60 = *(v0 + 264);
  v59 = *(v0 + 272);
  v62 = *(v0 + 232);
  v61 = *(v0 + 240);
  v63 = *(v0 + 224);
  v64 = *(v0 + 200);
  v66 = *(v0 + 192);
  v67 = *(v0 + 184);
  v69 = *(v0 + 176);
  v71 = *(v0 + 168);
  v74 = *(v0 + 160);
  v77 = *(v0 + 136);
  v80 = *(v0 + 128);
  v83 = *(v0 + 120);
  v85 = *(v0 + 112);
  v89 = *(v0 + 104);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_227893BD8()
{
  v23 = v0[43];
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v10 = v0[25];
  v13 = v0[24];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[15];
  v21 = v0[14];
  v22 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227893D38()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_227894758;
  }

  else
  {
    v6 = sub_227893E64;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227893E64()
{
  v56 = v0;
  v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state);
  *(v0 + 400) = v1;
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = v1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = *__swift_project_boxed_opaque_existential_1((v2 + 488), *(v2 + 512));
    v5 = swift_task_alloc();
    *(v0 + 408) = v5;
    *v5 = v0;
    v5[1] = sub_227894254;
    v6 = *(v0 + 128);

    return sub_227853C98(v6);
  }

  else
  {
    sub_22785D108();
    v8 = swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(v0 + 264);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_2278C7370();
    v11 = sub_2278C7590();
    v12 = sub_2278C7950();
    if (os_log_type_enabled(v11, v12))
    {
      v43 = *(v0 + 352);
      v45 = *(v0 + 360);
      v13 = *(v0 + 320);
      v41 = *(v0 + 328);
      v14 = *(v0 + 464);
      v51 = *(v0 + 264);
      v53 = *(v0 + 312);
      v15 = *(v0 + 240);
      v47 = *(v0 + 256);
      v49 = *(v0 + 248);
      v16 = *(v0 + 208);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55 = v18;
      *v17 = 136315138;
      v13(v15, v14, v16);
      v19 = sub_2278C6D50();
      v21 = v20;
      v43(v15, v16);
      v22 = sub_2278021B4(v19, v21, &v55);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_2277F7000, v11, v12, "[%s] Failed to generate a Typical Day Model, cannot schedule 75%% F+ Plan notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AA9E860](v18, -1, -1);
      MEMORY[0x22AA9E860](v17, -1, -1);

      v53(v51, v49);
    }

    else
    {
      v23 = *(v0 + 312);
      v25 = *(v0 + 256);
      v24 = *(v0 + 264);
      v26 = *(v0 + 248);

      v23(v24, v26);
    }

    (*(*(v0 + 152) + 56))(*(v0 + 56), 1, 1, *(v0 + 144));
    v28 = *(v0 + 296);
    v27 = *(v0 + 304);
    v29 = *(v0 + 280);
    v30 = *(v0 + 288);
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v34 = *(v0 + 232);
    v33 = *(v0 + 240);
    v35 = *(v0 + 224);
    v36 = *(v0 + 200);
    v38 = *(v0 + 192);
    v39 = *(v0 + 184);
    v40 = *(v0 + 176);
    v42 = *(v0 + 168);
    v44 = *(v0 + 160);
    v46 = *(v0 + 136);
    v48 = *(v0 + 128);
    v50 = *(v0 + 120);
    v52 = *(v0 + 112);
    v54 = *(v0 + 104);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_227894254()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227894364, v2, 0);
}

uint64_t sub_227894364()
{
  v61 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  if ((*(v0 + 368))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 272);
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7370();
    v5 = sub_2278C7590();
    v6 = sub_2278C7950();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 400);
    if (v7)
    {
      v46 = *(v0 + 352);
      v48 = *(v0 + 360);
      v10 = *(v0 + 320);
      v9 = *(v0 + 328);
      v11 = *(v0 + 464);
      v56 = *(v0 + 272);
      v58 = *(v0 + 312);
      v52 = *(v0 + 256);
      v54 = *(v0 + 248);
      v12 = *(v0 + 240);
      v13 = *(v0 + 208);
      v50 = *(v0 + 400);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v60 = v15;
      *v14 = 136315138;
      v10(v12, v11, v13);
      v16 = sub_2278C6D50();
      v18 = v17;
      v46(v12, v13);
      v19 = sub_2278021B4(v16, v18, &v60);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2277F7000, v5, v6, "[%s] UserDayProvider didn't provide start of user day: cannot schedule 75%% F+ Plan notification", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9E860](v15, -1, -1);
      MEMORY[0x22AA9E860](v14, -1, -1);

      v58(v56, v54);
    }

    else
    {
      v28 = *(v0 + 312);
      v29 = *(v0 + 272);
      v30 = *(v0 + 248);
      v31 = *(v0 + 256);

      v28(v29, v30);
    }

    (*(*(v0 + 152) + 56))(*(v0 + 56), 1, 1, *(v0 + 144));
    v33 = *(v0 + 296);
    v32 = *(v0 + 304);
    v34 = *(v0 + 280);
    v35 = *(v0 + 288);
    v37 = *(v0 + 264);
    v36 = *(v0 + 272);
    v39 = *(v0 + 232);
    v38 = *(v0 + 240);
    v40 = *(v0 + 224);
    v41 = *(v0 + 200);
    v43 = *(v0 + 192);
    v44 = *(v0 + 184);
    v45 = *(v0 + 176);
    v47 = *(v0 + 168);
    v49 = *(v0 + 160);
    v51 = *(v0 + 136);
    v53 = *(v0 + 128);
    v55 = *(v0 + 120);
    v57 = *(v0 + 112);
    v59 = *(v0 + 104);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v20 = *(v0 + 184);
    v21 = *(v0 + 152);
    v22 = *(v0 + 80);
    v23 = *(v21 + 32);
    *(v0 + 416) = v23;
    *(v0 + 424) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v20, v3, v2);
    v24 = *__swift_project_boxed_opaque_existential_1((v22 + 488), *(v22 + 512));
    v25 = swift_task_alloc();
    *(v0 + 432) = v25;
    *v25 = v0;
    v25[1] = sub_227894A58;
    v26 = *(v0 + 120);

    return sub_227854128(v26);
  }
}

uint64_t sub_227894758()
{
  v50 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 264);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_2278C7370();
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();
  if (os_log_type_enabled(v3, v4))
  {
    v35 = *(v0 + 352);
    v37 = *(v0 + 360);
    v5 = *(v0 + 320);
    v6 = *(v0 + 328);
    v7 = *(v0 + 464);
    v45 = *(v0 + 264);
    v47 = *(v0 + 312);
    v8 = *(v0 + 240);
    v41 = *(v0 + 256);
    v43 = *(v0 + 248);
    v9 = *(v0 + 208);
    v39 = v1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v49 = v11;
    *v10 = 136315138;
    v5(v8, v7, v9);
    v12 = sub_2278C6D50();
    v14 = v13;
    v35(v8, v9);
    v15 = sub_2278021B4(v12, v14, &v49);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2277F7000, v3, v4, "[%s] Failed to generate a Typical Day Model, cannot schedule 75%% F+ Plan notification", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);

    v47(v45, v43);
  }

  else
  {
    v16 = *(v0 + 312);
    v18 = *(v0 + 256);
    v17 = *(v0 + 264);
    v19 = *(v0 + 248);

    v16(v17, v19);
  }

  (*(*(v0 + 152) + 56))(*(v0 + 56), 1, 1, *(v0 + 144));
  v21 = *(v0 + 296);
  v20 = *(v0 + 304);
  v22 = *(v0 + 280);
  v23 = *(v0 + 288);
  v25 = *(v0 + 264);
  v24 = *(v0 + 272);
  v27 = *(v0 + 232);
  v26 = *(v0 + 240);
  v28 = *(v0 + 224);
  v29 = *(v0 + 200);
  v32 = *(v0 + 192);
  v33 = *(v0 + 184);
  v34 = *(v0 + 176);
  v36 = *(v0 + 168);
  v38 = *(v0 + 160);
  v40 = *(v0 + 136);
  v42 = *(v0 + 128);
  v44 = *(v0 + 120);
  v46 = *(v0 + 112);
  v48 = *(v0 + 104);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_227894A58()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227894B68, v2, 0);
}

uint64_t sub_227894B68()
{
  v80 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  if ((*(v0 + 368))(v3, 1, v2) == 1)
  {
    v4 = [*(v0 + 400) userEndOfDay];
    if (v4)
    {
      v6 = *(v0 + 416);
      v5 = *(v0 + 424);
      v7 = *(v0 + 192);
      v8 = *(v0 + 176);
      v9 = *(v0 + 144);
      v10 = *(v0 + 152);
      v11 = *(v0 + 112);
      v12 = v4;
      sub_2278C6800();

      v6(v11, v7, v9);
      (*(v10 + 56))(v11, 0, 1, v9);
      v6(v8, v11, v9);
    }

    else
    {
      v75 = *(v0 + 368);
      v77 = *(v0 + 376);
      v14 = *(v0 + 192);
      v15 = *(v0 + 176);
      v16 = *(v0 + 144);
      v17 = *(v0 + 152);
      v19 = *(v0 + 104);
      v18 = *(v0 + 112);
      v20 = *(v0 + 88);
      v21 = *(v0 + 96);
      v22 = *(v0 + 80);
      (*(v17 + 56))(v18, 1, 1, v16);
      sub_2278C6810();
      __swift_project_boxed_opaque_existential_1((v22 + 200), *(v22 + 224));
      sub_227804920();
      sub_2278C6760();
      (*(v21 + 8))(v19, v20);
      (*(v17 + 8))(v14, v16);
      if (v75(v18, 1, v16) != 1)
      {
        sub_227802FC4(*(v0 + 112), &qword_27D7D60A8, qword_2278C9730);
      }
    }

    v23 = *(v0 + 376);
    v24 = *(v0 + 120);
    if ((*(v0 + 368))(v24, 1, *(v0 + 144)) != 1)
    {
      sub_227802FC4(v24, &qword_27D7D60A8, qword_2278C9730);
    }
  }

  else
  {
    v13 = *(v0 + 424);
    (*(v0 + 416))(*(v0 + 176), v3, v2);
  }

  v25 = *(v0 + 280);
  v26 = *(v0 + 176);
  v27 = *(v0 + 184);
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);
  v30 = *(v0 + 144);
  v31 = *(v0 + 152);
  v32 = *(v0 + 64);
  sub_2278C67E0();
  sub_2278C67E0();
  sub_2278C67C0();
  sub_2278C7370();
  (*(v31 + 16))(v29, v28, v30);
  v33 = sub_2278C7590();
  v34 = sub_2278C7970();
  if (os_log_type_enabled(v33, v34))
  {
    v69 = *(v0 + 352);
    v70 = *(v0 + 360);
    v35 = *(v0 + 320);
    v68 = *(v0 + 328);
    v36 = *(v0 + 464);
    v76 = *(v0 + 280);
    v78 = *(v0 + 312);
    v73 = *(v0 + 256);
    v74 = *(v0 + 248);
    v37 = *(v0 + 240);
    v38 = *(v0 + 208);
    v39 = *(v0 + 152);
    v71 = *(v0 + 160);
    v72 = *(v0 + 144);
    v40 = *(v0 + 64);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v79 = v42;
    *v41 = 136315650;
    v35(v37, v36, v38);
    v43 = sub_2278C6D50();
    v45 = v44;
    v69(v37, v38);
    v46 = sub_2278021B4(v43, v45, &v79);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v40 * 100.0;
    *(v41 + 22) = 2080;
    v47 = sub_2278C6790();
    v49 = v48;
    v50 = *(v39 + 8);
    v50(v71, v72);
    v51 = sub_2278021B4(v47, v49, &v79);

    *(v41 + 24) = v51;
    _os_log_impl(&dword_2277F7000, v33, v34, "[%s] Typical Day Model suggests that %f%% of day is: %s", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v42, -1, -1);
    MEMORY[0x22AA9E860](v41, -1, -1);

    v78(v76, v74);
  }

  else
  {
    v52 = *(v0 + 312);
    v53 = *(v0 + 280);
    v54 = *(v0 + 248);
    v55 = *(v0 + 256);
    v57 = *(v0 + 152);
    v56 = *(v0 + 160);
    v58 = *(v0 + 144);

    v50 = *(v57 + 8);
    v50(v56, v58);
    v52(v53, v54);
  }

  *(v0 + 440) = v50;
  v60 = *(v0 + 320);
  v59 = *(v0 + 328);
  v61 = *(v0 + 464);
  v62 = *(v0 + 224);
  v63 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((*(v0 + 80) + 240), *(*(v0 + 80) + 264));
  v60(v62, v61, v63);
  v64 = swift_task_alloc();
  *(v0 + 448) = v64;
  *v64 = v0;
  v64[1] = sub_2278950A0;
  v65 = *(v0 + 224);
  v66 = *(v0 + 168);

  return sub_227884840(v66, v65);
}

uint64_t sub_2278950A0()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = v2[45];
  v6 = v2[44];
  v7 = v2[28];
  v8 = v2[26];
  v9 = v2[10];
  v6(v7, v8);
  if (v0)
  {
    v10 = sub_227895400;
  }

  else
  {
    v10 = sub_227895224;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_227895224()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v30 = *(v0 + 424);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 56);

  v1(v3, v6);
  v1(v4, v6);
  v2(v8, v5, v6);
  (*(v7 + 56))(v8, 0, 1, v6);
  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  v11 = *(v0 + 280);
  v12 = *(v0 + 288);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 224);
  v18 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 136);
  v27 = *(v0 + 128);
  v28 = *(v0 + 120);
  v29 = *(v0 + 112);
  v31 = *(v0 + 104);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_227895400()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152) + 8;

  v1(v4, v5);
  v1(v2, v5);
  v1(v3, v5);
  v29 = *(v0 + 456);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v15 = *(v0 + 224);
  v16 = *(v0 + 200);
  v19 = *(v0 + 192);
  v20 = *(v0 + 184);
  v21 = *(v0 + 176);
  v22 = *(v0 + 168);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);
  v25 = *(v0 + 128);
  v26 = *(v0 + 120);
  v27 = *(v0 + 112);
  v28 = *(v0 + 104);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2278955B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2278C6D60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_2278C7840();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, a2, v5);
  sub_2278040AC(a3, v20);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v6 + 32))(v17 + v15, v8, v5);
  *(v17 + v16) = v14;
  sub_2277F9D0C(v20, v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_22788B134(0, 0, v12, &unk_2278CE288, v17);
}

uint64_t sub_2278957F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_2278C6D60();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_2278C75A0();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22789591C, 0, 0);
}

uint64_t sub_22789591C()
{
  v36 = v0;
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[5];
  sub_2278C7370();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  if (v8)
  {
    v34 = v0[11];
    v15 = swift_slowAlloc();
    v32 = v7;
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136315138;
    v17 = sub_2278C6D50();
    v33 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_2278021B4(v17, v19, &v35);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v6, v32, "[%s] XPC Activity triggered", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    v21 = *(v10 + 8);
    v21(v33, v34);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[15] = v21;
  v22 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v24 = swift_task_alloc();
    v0[17] = v24;
    *v24 = v0;
    v24[1] = sub_227895BD8;
    v25 = v0[7];
    v26 = v0[5];

    return sub_22788C268(v26, v25);
  }

  else
  {
    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[10];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_227895BD8()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227895D30, 0, 0);
  }

  else
  {
    v4 = v3[16];

    v6 = v3[13];
    v5 = v3[14];
    v7 = v3[10];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_227895D30()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  sub_2278C7370();
  v4 = v1;
  v5 = sub_2278C7590();
  v6 = sub_2278C7950();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 144);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2277F7000, v5, v6, "Error scheduling Fitness Plus Plan task: %@", v9, 0xCu);
    sub_227802FC4(v10, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v10, -1, -1);
    MEMORY[0x22AA9E860](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 96) + 8;
  (*(v0 + 120))(*(v0 + 104), *(v0 + 88));
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 80);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_227895ED8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 984) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*(type metadata accessor for NotificationRequest() - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6360, &qword_2278CCC70) - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v8 = sub_2278C6DB0();
  *(v5 + 64) = v8;
  v9 = *(v8 - 8);
  *(v5 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v11 = sub_2278C6D60();
  *(v5 + 88) = v11;
  v12 = *(v11 - 8);
  *(v5 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v14 = sub_2278C6920();
  *(v5 + 192) = v14;
  v15 = *(v14 - 8);
  *(v5 + 200) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  v17 = sub_2278C6820();
  *(v5 + 216) = v17;
  v18 = *(v17 - 8);
  *(v5 + 224) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v21 = sub_2278C6860();
  *(v5 + 352) = v21;
  v22 = *(v21 - 8);
  *(v5 + 360) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65B8, &qword_2278CE268);
  *(v5 + 384) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65C0, &qword_2278CE270) - 8) + 64) + 15;
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65C8, &qword_2278CE278) - 8) + 64) + 15;
  *(v5 + 424) = swift_task_alloc();
  v28 = sub_2278C6940();
  *(v5 + 432) = v28;
  v29 = *(v28 - 8);
  *(v5 + 440) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();
  v31 = sub_2278C75A0();
  *(v5 + 456) = v31;
  v32 = *(v31 - 8);
  *(v5 + 464) = v32;
  v33 = *(v32 + 64) + 15;
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = swift_task_alloc();
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 528) = swift_task_alloc();
  *(v5 + 536) = swift_task_alloc();
  *(v5 + 544) = swift_task_alloc();
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  *(v5 + 568) = swift_task_alloc();
  *(v5 + 576) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278964E4, v4, 0);
}

uint64_t sub_2278964E4()
{
  v122 = v0;
  v1 = v0[72];
  v2 = v0[57];
  v3 = v0[58];
  v4 = v0[5];
  sub_2278C7370();
  sub_2278C7580();
  v5 = *(v3 + 8);
  v0[73] = v5;
  v0[74] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if ([*(v4 + 112) fitnessAppInstalled])
  {
    v6 = MKBGetDeviceLockState();
    if (v6 != 3 && v6)
    {
      v40 = v0[60];
      v41 = v0[14];
      v42 = v0[11];
      v43 = v0[12];
      v44 = v0[2];
      sub_2278C7370();
      (*(v43 + 16))(v41, v44, v42);
      v45 = sub_2278C7590();
      v46 = sub_2278C7970();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[60];
      v49 = v0[57];
      v50 = v0[14];
      v52 = v0[11];
      v51 = v0[12];
      if (v47)
      {
        v115 = v0[57];
        v53 = swift_slowAlloc();
        v119 = v5;
        v121[0] = swift_slowAlloc();
        v54 = v121[0];
        *v53 = 136315138;
        v109 = v46;
        v55 = sub_2278C6D50();
        v112 = v48;
        v57 = v56;
        (*(v51 + 8))(v50, v52);
        v58 = sub_2278021B4(v55, v57, v121);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_2277F7000, v45, v109, "[%s] Currently locked, skipping...", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x22AA9E860](v54, -1, -1);
        MEMORY[0x22AA9E860](v53, -1, -1);

        v119(v112, v115);
      }

      else
      {

        (*(v51 + 8))(v50, v52);
        v5(v48, v49);
      }

      v59 = v0[72];
      v60 = v0[71];
      v61 = v0[70];
      v62 = v0[69];
      v63 = v0[68];
      v64 = v0[67];
      v65 = v0[66];
      v66 = v0[65];
      v67 = v0[63];
      v68 = v0[64];
      v70 = v0[62];
      v71 = v0[61];
      v72 = v0[60];
      v73 = v0[59];
      v74 = v0[56];
      v75 = v0[53];
      v76 = v0[52];
      v77 = v0[51];
      v78 = v0[50];
      v79 = v0[49];
      v80 = v0[47];
      v81 = v0[46];
      v82 = v0[43];
      v83 = v0[42];
      v84 = v0[41];
      v85 = v0[40];
      v86 = v0[39];
      v87 = v0[38];
      v88 = v0[37];
      v89 = v0[36];
      v90 = v0[35];
      v91 = v0[34];
      v92 = v0[33];
      v93 = v0[32];
      v94 = v0[31];
      v95 = v0[30];
      v96 = v0[29];
      v97 = v0[26];
      v98 = v0[23];
      v99 = v0[22];
      v100 = v0[21];
      v101 = v0[20];
      v102 = v0[19];
      v103 = v0[18];
      v104 = v0[17];
      v105 = v0[16];
      v106 = v0[15];
      v107 = v0[14];
      v110 = v0[13];
      v113 = v0[10];
      v116 = v0[7];
      v120 = v0[6];

      v69 = v0[1];

      return v69();
    }

    else
    {
      v7 = v0[5];
      v8 = v7[18];
      v9 = v7[19];
      __swift_project_boxed_opaque_existential_1(v7 + 15, v8);
      v10 = *(v9 + 24);
      v117 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      v0[75] = v12;
      *v12 = v0;
      v12[1] = sub_227896D64;
      v13 = v0[53];

      return v117(v13, v8, v9);
    }
  }

  else
  {
    v15 = v0[59];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];
    v19 = v0[2];
    sub_2278C7370();
    (*(v17 + 16))(v16, v19, v18);
    v20 = sub_2278C7590();
    v21 = sub_2278C7970();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[59];
    v24 = v0[57];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[11];
    if (v22)
    {
      v114 = v0[57];
      v28 = swift_slowAlloc();
      v118 = v5;
      v121[0] = swift_slowAlloc();
      v29 = v121[0];
      *v28 = 136315138;
      v108 = v21;
      v30 = sub_2278C6D50();
      v111 = v23;
      v32 = v31;
      (*(v26 + 8))(v25, v27);
      v33 = sub_2278021B4(v30, v32, v121);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2277F7000, v20, v108, "[%s] Not posting notification, fitness app not installed", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AA9E860](v29, -1, -1);
      MEMORY[0x22AA9E860](v28, -1, -1);

      v118(v111, v114);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
      v5(v23, v24);
    }

    v34 = v0[29];
    v35 = v0[5];
    __swift_project_boxed_opaque_existential_1(v35 + 30, v35[33]);
    __swift_project_boxed_opaque_existential_1(v35 + 25, v35[28]);
    v36 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v36(v34);
    v37 = swift_task_alloc();
    v0[121] = v37;
    *v37 = v0;
    v37[1] = sub_22789E594;
    v38 = v0[29];
    v39 = v0[2];

    return sub_227884164(v38, v39);
  }
}

uint64_t sub_227896D64()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_22789ECC4;
  }

  else
  {
    v6 = sub_227896E90;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227896E90()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[53];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[61];
    sub_227802FC4(v3, &qword_27D7D65C8, &qword_2278CE278);
    sub_2278C7370();
    v5 = sub_2278C7590();
    v6 = sub_2278C7970();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[74];
    v9 = v0[73];
    v10 = v0[61];
    v11 = v0[57];
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2277F7000, v5, v6, "User does not have an active F+ plan", v12, 2u);
      MEMORY[0x22AA9E860](v12, -1, -1);
    }

    v9(v10, v11);
    v13 = v0[72];
    v14 = v0[71];
    v15 = v0[70];
    v16 = v0[69];
    v17 = v0[68];
    v18 = v0[67];
    v19 = v0[66];
    v20 = v0[65];
    v21 = v0[63];
    v22 = v0[64];
    v31 = v0[62];
    v32 = v0[61];
    v33 = v0[60];
    v34 = v0[59];
    v35 = v0[56];
    v36 = v0[53];
    v37 = v0[52];
    v38 = v0[51];
    v39 = v0[50];
    v40 = v0[49];
    v41 = v0[47];
    v42 = v0[46];
    v43 = v0[43];
    v44 = v0[42];
    v45 = v0[41];
    v46 = v0[40];
    v47 = v0[39];
    v48 = v0[38];
    v49 = v0[37];
    v50 = v0[36];
    v51 = v0[35];
    v52 = v0[34];
    v53 = v0[33];
    v54 = v0[32];
    v55 = v0[31];
    v56 = v0[30];
    v57 = v0[29];
    v58 = v0[26];
    v59 = v0[23];
    v60 = v0[22];
    v61 = v0[21];
    v62 = v0[20];
    v63 = v0[19];
    v64 = v0[18];
    v65 = v0[17];
    v66 = v0[16];
    v67 = v0[15];
    v68 = v0[14];
    v69 = v0[13];
    v70 = v0[10];
    v71 = v0[7];
    v72 = v0[6];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[5];
    (*(v2 + 32))(v0[56], v3, v1);
    v26 = v25[18];
    v27 = v25[19];
    __swift_project_boxed_opaque_existential_1(v25 + 15, v26);
    v28 = *(v27 + 16);
    v73 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    v0[77] = v30;
    *v30 = v0;
    v30[1] = sub_227897388;

    return v73(v26, v27);
  }
}

uint64_t sub_227897388(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  *(v4 + 985) = a1;
  *(v4 + 624) = v1;

  v7 = *(v3 + 40);
  if (v1)
  {
    v8 = sub_22789EFC0;
  }

  else
  {
    v8 = sub_2278974C0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2278974C0()
{
  if (*(v0 + 985))
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 240), *(*(v0 + 40) + 264));
    v1 = swift_task_alloc();
    *(v0 + 648) = v1;
    *v1 = v0;
    v1[1] = sub_227898104;
    v2 = *(v0 + 344);
    v3 = *(v0 + 16);

    return sub_227884658(v2, v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 240), *(*(v0 + 40) + 264));
    v5 = swift_task_alloc();
    *(v0 + 632) = v5;
    *v5 = v0;
    v5[1] = sub_2278975F4;
    v6 = *(v0 + 416);

    return sub_227885490(v6);
  }
}

uint64_t sub_2278975F4()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *v1;
  *(*v1 + 640) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_227897DF0;
  }

  else
  {
    v6 = sub_227897720;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227897720()
{
  v1 = v0[56];
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[44];
  v7 = v0[45];
  sub_2278C6930();
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = *(v5 + 48);
  sub_227850448(v2, v4, &qword_27D7D65C0, &qword_2278CE270);
  sub_227850448(v3, v4 + v8, &qword_27D7D65C0, &qword_2278CE270);
  v9 = *(v7 + 48);
  if (v9(v4, 1, v6) == 1)
  {
    v10 = v0[44];
    sub_227802FC4(v0[51], &qword_27D7D65C0, &qword_2278CE270);
    if (v9(v4 + v8, 1, v10) == 1)
    {
      sub_227802FC4(v0[49], &qword_27D7D65C0, &qword_2278CE270);
LABEL_11:
      v27 = v0[71];
      sub_2278C7370();
      v28 = sub_2278C7590();
      v29 = sub_2278C7970();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[74];
      v32 = v0[73];
      v33 = v0[71];
      v35 = v0[56];
      v34 = v0[57];
      v36 = v0[55];
      v93 = v0[54];
      v37 = v0[52];
      if (v30)
      {
        v91 = v0[56];
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2277F7000, v28, v29, "Already scheduled notification for this plan for unsubscribed user", v38, 2u);
        v39 = v38;
        v35 = v91;
        MEMORY[0x22AA9E860](v39, -1, -1);
      }

      v32(v33, v34);
      sub_227802FC4(v37, &qword_27D7D65C0, &qword_2278CE270);
      (*(v36 + 8))(v35, v93);
      v40 = v0[72];
      v41 = v0[71];
      v42 = v0[70];
      v43 = v0[69];
      v44 = v0[68];
      v45 = v0[67];
      v46 = v0[66];
      v47 = v0[65];
      v48 = v0[63];
      v49 = v0[64];
      v51 = v0[62];
      v52 = v0[61];
      v53 = v0[60];
      v54 = v0[59];
      v55 = v0[56];
      v56 = v0[53];
      v57 = v0[52];
      v58 = v0[51];
      v59 = v0[50];
      v60 = v0[49];
      v61 = v0[47];
      v62 = v0[46];
      v63 = v0[43];
      v64 = v0[42];
      v65 = v0[41];
      v66 = v0[40];
      v67 = v0[39];
      v68 = v0[38];
      v69 = v0[37];
      v70 = v0[36];
      v71 = v0[35];
      v72 = v0[34];
      v73 = v0[33];
      v74 = v0[32];
      v75 = v0[31];
      v76 = v0[30];
      v77 = v0[29];
      v78 = v0[26];
      v79 = v0[23];
      v80 = v0[22];
      v81 = v0[21];
      v82 = v0[20];
      v83 = v0[19];
      v84 = v0[18];
      v85 = v0[17];
      v86 = v0[16];
      v87 = v0[15];
      v88 = v0[14];
      v89 = v0[13];
      v90 = v0[10];
      v92 = v0[7];
      v94 = v0[6];

      v50 = v0[1];

      return v50();
    }

    goto LABEL_6;
  }

  v11 = v0[44];
  sub_227850448(v0[49], v0[50], &qword_27D7D65C0, &qword_2278CE270);
  v12 = v9(v4 + v8, 1, v11);
  v13 = v0[50];
  v14 = v0[51];
  if (v12 == 1)
  {
    v16 = v0[44];
    v15 = v0[45];
    sub_227802FC4(v0[51], &qword_27D7D65C0, &qword_2278CE270);
    (*(v15 + 8))(v13, v16);
LABEL_6:
    sub_227802FC4(v0[49], &qword_27D7D65B8, &qword_2278CE268);
    goto LABEL_7;
  }

  v21 = v0[49];
  v22 = v0[47];
  v23 = v0[44];
  v24 = v0[45];
  (*(v24 + 32))(v22, v4 + v8, v23);
  sub_2278A5F78(&qword_27D7D65D0, MEMORY[0x277CC95F0]);
  v25 = sub_2278C76E0();
  v26 = *(v24 + 8);
  v26(v22, v23);
  sub_227802FC4(v14, &qword_27D7D65C0, &qword_2278CE270);
  v26(v13, v23);
  sub_227802FC4(v21, &qword_27D7D65C0, &qword_2278CE270);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_227802FC4(v0[52], &qword_27D7D65C0, &qword_2278CE270);
  __swift_project_boxed_opaque_existential_1((v0[5] + 240), *(v0[5] + 264));
  v17 = swift_task_alloc();
  v0[81] = v17;
  *v17 = v0;
  v17[1] = sub_227898104;
  v18 = v0[43];
  v19 = v0[2];

  return sub_227884658(v18, v19);
}

uint64_t sub_227897DF0()
{
  (*(v0[55] + 8))(v0[56], v0[54]);
  v55 = v0[80];
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[63];
  v10 = v0[64];
  v13 = v0[62];
  v14 = v0[61];
  v15 = v0[60];
  v16 = v0[59];
  v17 = v0[56];
  v18 = v0[53];
  v19 = v0[52];
  v20 = v0[51];
  v21 = v0[50];
  v22 = v0[49];
  v23 = v0[47];
  v24 = v0[46];
  v25 = v0[43];
  v26 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[39];
  v30 = v0[38];
  v31 = v0[37];
  v32 = v0[36];
  v33 = v0[35];
  v34 = v0[34];
  v35 = v0[33];
  v36 = v0[32];
  v37 = v0[31];
  v38 = v0[30];
  v39 = v0[29];
  v40 = v0[26];
  v41 = v0[23];
  v42 = v0[22];
  v43 = v0[21];
  v44 = v0[20];
  v45 = v0[19];
  v46 = v0[18];
  v47 = v0[17];
  v48 = v0[16];
  v49 = v0[15];
  v50 = v0[14];
  v51 = v0[13];
  v52 = v0[10];
  v53 = v0[7];
  v54 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227898104()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 656) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_227898CD4;
  }

  else
  {
    v6 = sub_227898230;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227898230()
{
  v146 = v0;
  v1 = v0[42];
  v2 = v0[27];
  v3 = v0[28];
  sub_227850448(v0[43], v1, &qword_27D7D60A8, qword_2278C9730);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_227802FC4(v0[42], &qword_27D7D60A8, qword_2278C9730);
    goto LABEL_7;
  }

  v4 = v0[40];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[26];
  v139 = v5;
  v143 = v0[24];
  v9 = v0[5];
  (*(v6 + 32))(v0[41], v0[42]);
  __swift_project_boxed_opaque_existential_1((v9 + 200), *(v9 + 224));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v9 + 200), *(v9 + 224));
  v10 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v10(v4);
  v11 = sub_2278C68F0();
  v12 = *(v6 + 8);
  v12(v4, v139);
  (*(v7 + 8))(v8, v143);
  if ((v11 & 1) == 0)
  {
    v12(v0[41], v0[27]);
LABEL_7:
    v41 = v0[40];
    v43 = v0[27];
    v42 = v0[28];
    v44 = v0[5];
    sub_22789F96C(v0[2], v0[3], v0[38]);
    __swift_project_boxed_opaque_existential_1((v44 + 200), *(v44 + 224));
    v45 = off_283AE99E0;
    v0[83] = off_283AE99E0;
    v0[84] = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
    v0[85] = type metadata accessor for DateProvider();
    v46 = v45;
    v45(v41);
    v47 = sub_2278C6770();
    v48 = *(v42 + 8);
    v0[86] = v48;
    v0[87] = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48(v41, v43);
    if (v47)
    {
      __swift_project_boxed_opaque_existential_1((v0[5] + 368), *(v0[5] + 392));
      v49 = swift_task_alloc();
      v0[88] = v49;
      *v49 = v0;
      v49[1] = sub_227898FE8;

      return sub_227817030(0xD00000000000001ELL, 0x80000002278D2DA0);
    }

    else
    {
      v51 = v0[62];
      v52 = v0[15];
      v54 = v0[11];
      v53 = v0[12];
      v55 = v0[2];
      sub_2278C7370();
      (*(v53 + 16))(v52, v55, v54);
      v56 = sub_2278C7590();
      v137 = sub_2278C7970();
      v57 = os_log_type_enabled(v56, v137);
      v58 = v0[74];
      v59 = v0[73];
      v60 = v0[62];
      v141 = v0[57];
      v61 = v0[15];
      v63 = v0[11];
      v62 = v0[12];
      if (v57)
      {
        v134 = v0[73];
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v145[0] = v65;
        *v64 = 136315138;
        v126 = sub_2278C6D50();
        v129 = v60;
        v67 = v66;
        (*(v62 + 8))(v61, v63);
        v68 = sub_2278021B4(v126, v67, v145);

        *(v64 + 4) = v68;
        _os_log_impl(&dword_2277F7000, v56, v137, "[%s] Too late to trigger notification, skipping for today", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x22AA9E860](v65, -1, -1);
        MEMORY[0x22AA9E860](v64, -1, -1);

        v134(v129, v141);
      }

      else
      {

        (*(v62 + 8))(v61, v63);
        v59(v60, v141);
      }

      v69 = v0[30];
      __swift_project_boxed_opaque_existential_1((v0[5] + 240), *(v0[5] + 264));
      __swift_project_boxed_opaque_existential_1((v44 + 200), *(v44 + 224));
      v46(v69);
      v70 = swift_task_alloc();
      v0[119] = v70;
      *v70 = v0;
      v70[1] = sub_22789E0B0;
      v71 = v0[30];
      v72 = v0[2];

      return sub_227884164(v71, v72);
    }
  }

  v140 = v12;
  v13 = v0[70];
  v14 = v0[41];
  v15 = v0[39];
  v16 = v0[27];
  v17 = v0[28];
  v18 = v0[23];
  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[2];
  sub_2278C7370();
  (*(v20 + 16))(v18, v21, v19);
  (*(v17 + 16))(v15, v14, v16);
  v22 = sub_2278C7590();
  v23 = sub_2278C7970();
  v24 = os_log_type_enabled(v22, v23);
  v128 = v0[73];
  v131 = v0[74];
  v25 = v0[56];
  v123 = v0[57];
  v125 = v0[70];
  v26 = v0[55];
  v133 = v0[43];
  v136 = v0[54];
  v121 = v0[41];
  v27 = v0[39];
  v28 = v0[27];
  v29 = v0[23];
  v31 = v0[11];
  v30 = v0[12];
  if (v24)
  {
    v115 = v23;
    v32 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v145[0] = v117;
    *v32 = 136315394;
    v113 = v28;
    v33 = sub_2278C6D50();
    v119 = v25;
    v35 = v34;
    (*(v30 + 8))(v29, v31);
    v36 = sub_2278021B4(v33, v35, v145);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = sub_2278C6790();
    v39 = v38;
    v140(v27, v113);
    v40 = sub_2278021B4(v37, v39, v145);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_2277F7000, v22, v115, "[%s] Already scheduled notification today at %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v117, -1, -1);
    MEMORY[0x22AA9E860](v32, -1, -1);

    v128(v125, v123);
    v140(v121, v113);
    sub_227802FC4(v133, &qword_27D7D60A8, qword_2278C9730);
    (*(v26 + 8))(v119, v136);
  }

  else
  {

    v140(v27, v28);
    (*(v30 + 8))(v29, v31);
    v128(v125, v123);
    v140(v121, v28);
    sub_227802FC4(v133, &qword_27D7D60A8, qword_2278C9730);
    (*(v26 + 8))(v25, v136);
  }

  v73 = v0[72];
  v74 = v0[71];
  v75 = v0[70];
  v76 = v0[69];
  v77 = v0[68];
  v78 = v0[67];
  v79 = v0[66];
  v80 = v0[65];
  v81 = v0[63];
  v82 = v0[64];
  v84 = v0[62];
  v85 = v0[61];
  v86 = v0[60];
  v87 = v0[59];
  v88 = v0[56];
  v89 = v0[53];
  v90 = v0[52];
  v91 = v0[51];
  v92 = v0[50];
  v93 = v0[49];
  v94 = v0[47];
  v95 = v0[46];
  v96 = v0[43];
  v97 = v0[42];
  v98 = v0[41];
  v99 = v0[40];
  v100 = v0[39];
  v101 = v0[38];
  v102 = v0[37];
  v103 = v0[36];
  v104 = v0[35];
  v105 = v0[34];
  v106 = v0[33];
  v107 = v0[32];
  v108 = v0[31];
  v109 = v0[30];
  v110 = v0[29];
  v111 = v0[26];
  v112 = v0[23];
  v114 = v0[22];
  v116 = v0[21];
  v118 = v0[20];
  v120 = v0[19];
  v122 = v0[18];
  v124 = v0[17];
  v127 = v0[16];
  v130 = v0[15];
  v132 = v0[14];
  v135 = v0[13];
  v138 = v0[10];
  v142 = v0[7];
  v144 = v0[6];

  v83 = v0[1];

  return v83();
}

uint64_t sub_227898CD4()
{
  (*(v0[55] + 8))(v0[56], v0[54]);
  v55 = v0[82];
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[63];
  v10 = v0[64];
  v13 = v0[62];
  v14 = v0[61];
  v15 = v0[60];
  v16 = v0[59];
  v17 = v0[56];
  v18 = v0[53];
  v19 = v0[52];
  v20 = v0[51];
  v21 = v0[50];
  v22 = v0[49];
  v23 = v0[47];
  v24 = v0[46];
  v25 = v0[43];
  v26 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[39];
  v30 = v0[38];
  v31 = v0[37];
  v32 = v0[36];
  v33 = v0[35];
  v34 = v0[34];
  v35 = v0[33];
  v36 = v0[32];
  v37 = v0[31];
  v38 = v0[30];
  v39 = v0[29];
  v40 = v0[26];
  v41 = v0[23];
  v42 = v0[22];
  v43 = v0[21];
  v44 = v0[20];
  v45 = v0[19];
  v46 = v0[18];
  v47 = v0[17];
  v48 = v0[16];
  v49 = v0[15];
  v50 = v0[14];
  v51 = v0[13];
  v52 = v0[10];
  v53 = v0[7];
  v54 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227898FE8(unsigned __int8 a1)
{
  v3 = a1;
  v4 = *v1;
  v5 = *(*v1 + 704);
  v6 = *v1;

  if (v3 == 2 || (a1 & 1) != 0)
  {
    v7 = *(v4 + 40);
    v8 = sub_227899118;
  }

  else
  {
    v7 = *(v4 + 40);
    v8 = sub_22789D954;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_227899118()
{
  v37 = v0;
  if (sub_22785ACAC())
  {
    v1 = *__swift_project_boxed_opaque_existential_1((v0[5] + 280), *(v0[5] + 304));
    v2 = swift_task_alloc();
    v0[89] = v2;
    *v2 = v0;
    v2[1] = sub_227899420;

    return sub_22783D088();
  }

  else
  {
    v4 = v0[64];
    v5 = v0[17];
    v6 = v0[11];
    v7 = v0[12];
    v8 = v0[2];
    sub_2278C7370();
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_2278C7590();
    v10 = sub_2278C7970();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[74];
    v13 = v0[73];
    v14 = v0[64];
    v15 = v0[57];
    v16 = v0[17];
    v18 = v0[11];
    v17 = v0[12];
    if (v11)
    {
      v35 = v0[73];
      v19 = swift_slowAlloc();
      v34 = v14;
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      v33 = v15;
      v21 = sub_2278C6D50();
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_2278021B4(v21, v23, &v36);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2277F7000, v9, v10, "[%s] Fitness+ Plan notifications are disabled because fitness tracking is disabled", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AA9E860](v20, -1, -1);
      MEMORY[0x22AA9E860](v19, -1, -1);

      v35(v34, v33);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v13(v14, v15);
    }

    v25 = v0[85];
    v26 = v0[84];
    v27 = v0[83];
    v28 = v0[32];
    v29 = v0[5];
    __swift_project_boxed_opaque_existential_1(v29 + 30, v29[33]);
    __swift_project_boxed_opaque_existential_1(v29 + 25, v29[28]);
    v27(v25, &off_283AE99D8);
    v30 = swift_task_alloc();
    v0[115] = v30;
    *v30 = v0;
    v30[1] = sub_22789D470;
    v31 = v0[32];
    v32 = v0[2];

    return sub_227884164(v31, v32);
  }
}

uint64_t sub_227899420()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v4 = *v1;
  *(*v1 + 720) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2278995EC;
  }

  else
  {
    v6 = sub_22789954C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22789954C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 40) + 488), *(*(v0 + 40) + 512));
  v2 = swift_task_alloc();
  *(v0 + 728) = v2;
  *v2 = v0;
  v2[1] = sub_22789983C;

  return sub_227854324();
}

uint64_t sub_2278995EC()
{
  v30 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 176);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 16);
  sub_2278C7370();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 592);
  v10 = *(v0 + 584);
  v11 = *(v0 + 552);
  v12 = *(v0 + 456);
  v13 = *(v0 + 176);
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  if (v8)
  {
    v27 = *(v0 + 720);
    v28 = *(v0 + 552);
    v16 = swift_slowAlloc();
    v26 = v12;
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136315138;
    v25 = v10;
    v18 = sub_2278C6D50();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_2278021B4(v18, v20, &v29);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2277F7000, v6, v7, "[%s] Failed to enable first pickup retry", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9E860](v17, -1, -1);
    MEMORY[0x22AA9E860](v16, -1, -1);

    v25(v28, v26);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    v10(v11, v12);
  }

  v22 = *__swift_project_boxed_opaque_existential_1((*(v0 + 40) + 488), *(*(v0 + 40) + 512));
  v23 = swift_task_alloc();
  *(v0 + 728) = v23;
  *v23 = v0;
  v23[1] = sub_22789983C;

  return sub_227854324();
}

uint64_t sub_22789983C(char a1)
{
  v2 = *(*v1 + 728);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 986) = a1;

  return MEMORY[0x2822009F8](sub_227899954, v3, 0);
}

uint64_t sub_227899954()
{
  v100 = v0;
  if (*(v0 + 986))
  {
    v1 = *(v0 + 520);
    v2 = *(v0 + 144);
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v0 + 16);
    sub_2278C7370();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_2278C7590();
    v82 = sub_2278C7970();
    v7 = os_log_type_enabled(v6, v82);
    v8 = *(v0 + 696);
    v9 = *(v0 + 688);
    v92 = *(v0 + 584);
    v94 = *(v0 + 592);
    v10 = *(v0 + 448);
    v88 = *(v0 + 456);
    v90 = *(v0 + 520);
    v11 = *(v0 + 432);
    v12 = *(v0 + 440);
    v96 = *(v0 + 344);
    v84 = *(v0 + 216);
    v86 = *(v0 + 304);
    v13 = *(v0 + 144);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    if (v7)
    {
      v80 = *(v0 + 448);
      v16 = swift_slowAlloc();
      v78 = v11;
      v17 = swift_slowAlloc();
      v99 = v17;
      *v16 = 136315138;
      v75 = v9;
      v18 = sub_2278C6D50();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_2278021B4(v18, v20, &v99);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2277F7000, v6, v82, "[%s] Waiting for good morning screen dismissal", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA9E860](v17, -1, -1);
      MEMORY[0x22AA9E860](v16, -1, -1);

      v92(v90, v88);
      v75(v86, v84);
      sub_227802FC4(v96, &qword_27D7D60A8, qword_2278C9730);
      (*(v12 + 8))(v80, v78);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      v92(v90, v88);
      v9(v86, v84);
      sub_227802FC4(v96, &qword_27D7D60A8, qword_2278C9730);
      (*(v12 + 8))(v10, v11);
    }

    v34 = *(v0 + 576);
    v35 = *(v0 + 568);
    v36 = *(v0 + 560);
    v37 = *(v0 + 552);
    v38 = *(v0 + 544);
    v39 = *(v0 + 536);
    v40 = *(v0 + 528);
    v41 = *(v0 + 520);
    v42 = *(v0 + 504);
    v43 = *(v0 + 512);
    v45 = *(v0 + 496);
    v46 = *(v0 + 488);
    v47 = *(v0 + 480);
    v48 = *(v0 + 472);
    v49 = *(v0 + 448);
    v50 = *(v0 + 424);
    v51 = *(v0 + 416);
    v52 = *(v0 + 408);
    v53 = *(v0 + 400);
    v54 = *(v0 + 392);
    v55 = *(v0 + 376);
    v56 = *(v0 + 368);
    v57 = *(v0 + 344);
    v58 = *(v0 + 336);
    v59 = *(v0 + 328);
    v60 = *(v0 + 320);
    v61 = *(v0 + 312);
    v62 = *(v0 + 304);
    v63 = *(v0 + 296);
    v64 = *(v0 + 288);
    v65 = *(v0 + 280);
    v66 = *(v0 + 272);
    v67 = *(v0 + 264);
    v68 = *(v0 + 256);
    v69 = *(v0 + 248);
    v70 = *(v0 + 240);
    v71 = *(v0 + 232);
    v72 = *(v0 + 208);
    v73 = *(v0 + 184);
    v74 = *(v0 + 176);
    v76 = *(v0 + 168);
    v77 = *(v0 + 160);
    v79 = *(v0 + 152);
    v81 = *(v0 + 144);
    v83 = *(v0 + 136);
    v85 = *(v0 + 128);
    v87 = *(v0 + 120);
    v89 = *(v0 + 112);
    v91 = *(v0 + 104);
    v93 = *(v0 + 80);
    v95 = *(v0 + 56);
    v98 = *(v0 + 48);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    v22 = *(v0 + 680);
    v23 = *(v0 + 672);
    v24 = *(v0 + 664);
    v25 = *(v0 + 296);
    v26 = *(v0 + 40);
    v27 = v26[18];
    v28 = v26[19];
    __swift_project_boxed_opaque_existential_1(v26 + 15, v27);
    __swift_project_boxed_opaque_existential_1(v26 + 25, v26[28]);
    v24(v22, &off_283AE99D8);
    v29 = *(v28 + 8);
    v97 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    *(v0 + 736) = v31;
    *v31 = v0;
    v31[1] = sub_227899F9C;
    v32 = *(v0 + 296);

    return v97(v32, v27, v28);
  }
}

uint64_t sub_227899F9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 736);
  v6 = *(*v2 + 696);
  v7 = *(*v2 + 688);
  v8 = *(*v2 + 296);
  v9 = *(*v2 + 216);
  v10 = *v2;
  *(v4 + 744) = a1;
  *(v4 + 752) = v1;

  v7(v8, v9);
  v11 = *(v3 + 40);
  if (v1)
  {
    v12 = sub_22789F2D4;
  }

  else
  {
    v12 = sub_22789A140;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_22789A140()
{
  v17 = v0[86];
  v18 = v0[87];
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[40];
  v5 = v0[36];
  v6 = v0[26];
  v7 = v0[24];
  v8 = v0[25];
  v9 = v0[5];
  v20 = v9[18];
  v15 = v9[19];
  v16 = v0[27];
  __swift_project_boxed_opaque_existential_1(v9 + 15, v20);
  __swift_project_boxed_opaque_existential_1(v9 + 25, v9[28]);
  v3(v1, &off_283AE99D8);
  sub_2278C6900();
  sub_2278C6780();
  (*(v8 + 8))(v6, v7);
  v17(v4, v16);
  v10 = *(v15 + 8);
  v19 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[95] = v12;
  *v12 = v0;
  v12[1] = sub_22789A31C;
  v13 = v0[36];

  return v19(v13, v20, v15);
}

uint64_t sub_22789A31C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 760);
  v5 = *(*v2 + 696);
  v6 = *(*v2 + 688);
  v7 = *(*v2 + 288);
  v8 = *(*v2 + 216);
  v9 = *v2;
  v3[96] = a1;
  v3[97] = v1;

  v6(v7, v8);
  if (v1)
  {
    v10 = v3[93];
    v11 = v3[5];

    v12 = sub_22789F620;
    v13 = v11;
  }

  else
  {
    v13 = v3[5];
    v12 = sub_22789A4C8;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}