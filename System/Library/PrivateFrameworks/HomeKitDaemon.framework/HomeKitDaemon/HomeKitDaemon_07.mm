uint64_t sub_2295E5744()
{
  v1 = v0[68];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[68];
  }

  v3 = v0[46];
  v4 = v0[44];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[20] = swift_getAssociatedTypeWitness();
  v0[21] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 17);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 17), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E5958, v4, 0);
}

uint64_t sub_2295E5958()
{
  v1 = *(v0 + 536) + 1;
  if (v1 == *(v0 + 528))
  {
    v2 = *(v0 + 520);
    v3 = *(v0 + 512);

    v4 = *(v0 + 496);
    v5 = *(v0 + 464);
    v6 = *(v0 + 472);

    (*(v6 + 8))(v4, v5);
    v8 = *(v0 + 488);
    v7 = *(v0 + 496);
    v9 = *(v0 + 480);
    v11 = *(v0 + 448);
    v10 = *(v0 + 456);
    v13 = *(v0 + 432);
    v12 = *(v0 + 440);
    v15 = *(v0 + 416);
    v14 = *(v0 + 424);
    v16 = *(v0 + 408);
    v21 = *(v0 + 400);
    v22 = *(v0 + 376);
    v23 = *(v0 + 368);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 536) = v1;
    v19 = __swift_project_boxed_opaque_existential_0((*(v0 + 520) + 40 * v1 + 32), *(*(v0 + 520) + 40 * v1 + 56));
    v20 = *v19;
    *(v0 + 544) = *v19;

    return MEMORY[0x2822009F8](sub_2295E5744, v20, 0);
  }
}

uint64_t sub_2295E5B08(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = *v1;
  v3 = sub_22A4DD07C();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v7 = sub_22A4DB21C();
  v2[30] = v7;
  v8 = *(v7 - 8);
  v2[31] = v8;
  v9 = *(v8 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E5C90, v1, 0);
}

uint64_t sub_2295E5C90()
{
  v50 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v3 = sub_22A4DB20C();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CCF150];
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v6;
  sub_22A4DE18C();
  if (!*(v4 + 16) || (v7 = sub_2295402E8(v0 + 16), (v8 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v4 + 56) + 32 * v7, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_13:
    v18 = *(v0 + 256);
    v17 = *(v0 + 264);
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    v21 = *(v0 + 224);
    sub_229541CB0(*(v0 + 200), &off_283CDDAE8);
    (*(v20 + 16))(v18, v17, v19);
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 256);
    v26 = *(v0 + 264);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);
    v48 = *(v0 + 208);
    if (v24)
    {
      v31 = swift_slowAlloc();
      v47 = v30;
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 136315138;
      v45 = v23;
      v33 = sub_22A4DB1BC();
      v46 = v26;
      v35 = v34;
      v36 = *(v27 + 8);
      v36(v25, v28);
      v37 = sub_2295A3E30(v33, v35, &v49);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_229538000, v22, v45, "Did not find scene uuid. Could not handle scene removed notification %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);

      (*(v29 + 8))(v47, v48);
      v36(v46, v28);
    }

    else
    {

      v38 = *(v27 + 8);
      v38(v25, v28);
      (*(v29 + 8))(v30, v48);
      v38(v26, v28);
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 176);

  v11 = __swift_project_boxed_opaque_existential_0((v9 + 112), *(v9 + 136))[6];
  *(v0 + 272) = v11;
  v12 = *(v11 + 16);
  *(v0 + 280) = v12;
  if (v12)
  {
    *(v0 + 288) = 0;
    v13 = *(v11 + 56);

    v15 = __swift_project_boxed_opaque_existential_0((v14 + 32), v13);
    v16 = *v15;
    *(v0 + 296) = *v15;

    return MEMORY[0x2822009F8](sub_2295E60A0, v16, 0);
  }

  (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
LABEL_16:
  v40 = *(v0 + 256);
  v39 = *(v0 + 264);
  v42 = *(v0 + 224);
  v41 = *(v0 + 232);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2295E60A0()
{
  v1 = v0[37];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[37];
  }

  v3 = v0[29];
  v4 = v0[24];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E62B4, v4, 0);
}

uint64_t sub_2295E62B4()
{
  v1 = v0[36] + 1;
  if (v1 == v0[35])
  {
    v2 = v0[34];

    (*(v0[31] + 8))(v0[33], v0[30]);
    v4 = v0[32];
    v3 = v0[33];
    v6 = v0[28];
    v5 = v0[29];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v0[36] = v1;
    v9 = __swift_project_boxed_opaque_existential_0((v0[34] + 40 * v1 + 32), *(v0[34] + 40 * v1 + 56));
    v10 = *v9;
    v0[37] = *v9;

    return MEMORY[0x2822009F8](sub_2295E60A0, v10, 0);
  }
}

uint64_t sub_2295E63C4(uint64_t a1)
{
  v2[10] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_2295E6494;

  return sub_2295E6F0C(a1);
}

uint64_t sub_2295E6494()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295E65B0, v2, 0);
}

uint64_t sub_2295E65B0()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[13] = v1;
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[16] = *v5;

    return MEMORY[0x2822009F8](sub_2295E6688, v6, 0);
  }

  else
  {
    v7 = v0[11];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2295E6688()
{
  v1 = v0[16];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[16];
  }

  v3 = v0[10];
  v4 = v0[11];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22A4DBAFC();

  sub_22953EAE4(v4, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 2), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E6898, v3, 0);
}

uint64_t sub_2295E6898()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {
    v2 = v0[13];

    v3 = v0[11];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[15] = v1;
    v6 = __swift_project_boxed_opaque_existential_0((v0[13] + 40 * v1 + 32), *(v0[13] + 40 * v1 + 56));
    v7 = *v6;
    v0[16] = *v6;

    return MEMORY[0x2822009F8](sub_2295E6688, v7, 0);
  }
}

uint64_t sub_2295E6968(uint64_t a1)
{
  v2[10] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_2295E6A38;

  return sub_2295E6F0C(a1);
}

uint64_t sub_2295E6A38()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295E6B54, v2, 0);
}

uint64_t sub_2295E6B54()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[13] = v1;
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[16] = *v5;

    return MEMORY[0x2822009F8](sub_2295E6C2C, v6, 0);
  }

  else
  {
    v7 = v0[11];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2295E6C2C()
{
  v1 = v0[16];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[16];
  }

  v3 = v0[10];
  v4 = v0[11];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22A4DBAFC();

  sub_22953EAE4(v4, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 2), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E6E3C, v3, 0);
}

uint64_t sub_2295E6E3C()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {
    v2 = v0[13];

    v3 = v0[11];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[15] = v1;
    v6 = __swift_project_boxed_opaque_existential_0((v0[13] + 40 * v1 + 32), *(v0[13] + 40 * v1 + 56));
    v7 = *v6;
    v0[16] = *v6;

    return MEMORY[0x2822009F8](sub_2295E6C2C, v7, 0);
  }
}

uint64_t sub_2295E6F0C(uint64_t a1)
{
  v3 = *v1;
  v2[26] = a1;
  v2[27] = v3;
  v4 = sub_22A4DD07C();
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v6 = *(v5 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = sub_22A4DB21C();
  v2[32] = v7;
  v8 = *(v7 - 8);
  v2[33] = v8;
  v9 = *(v8 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E7070, v1, 0);
}

uint64_t sub_2295E7070()
{
  v76 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v3 = sub_22A4DB20C();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  *(v0 + 160) = sub_22A4DD5EC();
  *(v0 + 168) = v5;
  sub_22A4DE18C();
  if (!*(v4 + 16) || (v6 = sub_2295402E8(v0 + 16), (v7 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v4 + 56) + 32 * v6, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_13:
    v17 = *(v0 + 288);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = *(v0 + 256);
    v21 = *(v0 + 240);
    sub_229541CB0(*(v0 + 216), &off_283CDDAE8);
    (*(v19 + 16))(v18, v17, v20);
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 264);
    v25 = *(v0 + 272);
    v27 = *(v0 + 256);
    v29 = *(v0 + 232);
    v28 = *(v0 + 240);
    v30 = *(v0 + 224);
    if (v24)
    {
      v73 = *(v0 + 224);
      v31 = swift_slowAlloc();
      v69 = v23;
      v32 = swift_slowAlloc();
      v75 = v32;
      *v31 = 136315138;
      v33 = sub_22A4DB1BC();
      v71 = v28;
      v35 = v34;
      (*(v26 + 8))(v25, v27);
      v36 = sub_2295A3E30(v33, v35, &v75);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_229538000, v22, v69, "Could not find accessory in notification %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);

      (*(v29 + 8))(v71, v73);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
      (*(v29 + 8))(v28, v30);
    }

    goto LABEL_16;
  }

  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(v0 + 192);
  v9 = [v8 home];
  if (v9)
  {
    goto LABEL_7;
  }

  v42 = *(v0 + 288);
  v43 = sub_22A4DB20C();
  if (!v43)
  {
    goto LABEL_28;
  }

  v44 = v43;
  *(v0 + 176) = sub_22A4DD5EC();
  *(v0 + 184) = v45;
  sub_22A4DE18C();
  if (!*(v44 + 16) || (v46 = sub_2295402E8(v0 + 56), (v47 & 1) == 0))
  {

    sub_22954045C(v0 + 56);
LABEL_28:
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    goto LABEL_29;
  }

  sub_2295404B0(*(v44 + 56) + 32 * v46, v0 + 128);
  sub_22954045C(v0 + 56);

  if (!*(v0 + 152))
  {
LABEL_29:
    sub_22953EAE4(v0 + 128, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_30;
  }

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v49 = *(v0 + 280);
    v48 = *(v0 + 288);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v52 = *(v0 + 248);
    sub_229541CB0(*(v0 + 216), &off_283CDDAE8);
    (*(v51 + 16))(v49, v48, v50);
    v53 = sub_22A4DD05C();
    v54 = sub_22A4DDCEC();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 280);
    v58 = *(v0 + 256);
    v57 = *(v0 + 264);
    v59 = *(v0 + 248);
    v61 = *(v0 + 224);
    v60 = *(v0 + 232);
    if (v55)
    {
      v74 = *(v0 + 224);
      v62 = swift_slowAlloc();
      v70 = v54;
      v63 = swift_slowAlloc();
      v75 = v63;
      *v62 = 136315138;
      log = v53;
      v64 = sub_22A4DB1BC();
      v72 = v59;
      v66 = v65;
      (*(v57 + 8))(v56, v58);
      v67 = sub_2295A3E30(v64, v66, &v75);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_229538000, log, v70, "Could not find valid instance of home in notification %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);

      (*(v60 + 8))(v72, v74);
    }

    else
    {

      (*(v57 + 8))(v56, v58);
      (*(v60 + 8))(v59, v61);
    }

    goto LABEL_16;
  }

  v9 = *(v0 + 200);
LABEL_7:
  v10 = sub_2295C08E4(v8, v9);
  v11 = v10;
  v12 = *(v10 + 16);
  if (!v12)
  {

LABEL_16:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v13 = sub_229714F6C(*(v10 + 16), 0);
  v14 = *(type metadata accessor for HomeDeviceEntity() - 8);
  v15 = sub_22971573C(&v75, v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v12, v11);
  result = sub_22953EE84();
  if (v15 != v12)
  {
    __break(1u);
    return result;
  }

LABEL_17:
  v37 = *(v0 + 280);
  v38 = *(v0 + 272);
  v39 = *(v0 + 248);
  v40 = *(v0 + 240);
  (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

  v41 = *(v0 + 8);

  return v41(v13);
}

uint64_t sub_2295E7734(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  v3 = sub_22A4DD07C();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA28, &unk_22A579B88) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v8 = sub_22A4DB21C();
  v2[24] = v8;
  v9 = *(v8 - 8);
  v2[25] = v9;
  v10 = *(v9 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E78F4, v1, 0);
}

uint64_t sub_2295E78F4()
{
  v1 = v0[26];
  v2 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v0[10])
  {
    sub_22953EAE4((v0 + 7), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_8;
  }

  sub_229562F68(0, &unk_281401B60, off_278666318);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v20 = v0[20];
    sub_229541CB0(v0[17], &off_283CDDAE8);
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[25];
    v24 = v0[26];
    v26 = v0[24];
    v28 = v0[19];
    v27 = v0[20];
    v29 = v0[18];
    if (v23)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_229538000, v21, v22, "Could not index service group as the notification did not contain a HMDServiceGroup", v30, 2u);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
    goto LABEL_11;
  }

  v3 = v0[23];
  v4 = v0[14];
  v0[27] = v4;
  sub_2295C1D64(v4, v3);
  v5 = type metadata accessor for HomeGroupEntity();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_22953EAE4(v3, &qword_27D87DA28, &unk_22A579B88);
  if (v6 == 1)
  {
    v7 = v0[21];
    sub_229541CB0(v0[17], &off_283CDDAE8);
    v8 = v4;
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_229538000, v9, v10, "Unable to create HomeGroupEntity for %@", v11, 0xCu);
      sub_22953EAE4(v12, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v12, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    v15 = v0[25];
    v14 = v0[26];
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[18];
    v19 = v0[19];

    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    goto LABEL_11;
  }

  v38 = __swift_project_boxed_opaque_existential_0((v0[16] + 112), *(v0[16] + 136))[6];
  v0[28] = v38;
  v39 = *(v38 + 16);
  v0[29] = v39;
  if (!v39)
  {

    (*(v0[25] + 8))(v0[26], v0[24]);
LABEL_11:
    v31 = v0[26];
    v32 = v0[22];
    v33 = v0[23];
    v35 = v0[20];
    v34 = v0[21];

    v36 = v0[1];

    return v36();
  }

  v0[30] = 0;
  v40 = *(v38 + 56);

  v42 = __swift_project_boxed_opaque_existential_0((v41 + 32), v40);
  v43 = *v42;
  v0[31] = *v42;

  return MEMORY[0x2822009F8](sub_2295E7D40, v43, 0);
}

uint64_t sub_2295E7D40()
{
  v1 = v0[31];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[31];
  }

  v3 = v0[22];
  v4 = v0[16];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 2), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E7F54, v4, 0);
}

uint64_t sub_2295E7F54()
{
  v1 = v0[30] + 1;
  if (v1 == v0[29])
  {
    v3 = v0[27];
    v2 = v0[28];

    (*(v0[25] + 8))(v0[26], v0[24]);
    v4 = v0[26];
    v5 = v0[22];
    v6 = v0[23];
    v8 = v0[20];
    v7 = v0[21];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v0[30] = v1;
    v11 = __swift_project_boxed_opaque_existential_0((v0[28] + 40 * v1 + 32), *(v0[28] + 40 * v1 + 56));
    v12 = *v11;
    v0[31] = *v11;

    return MEMORY[0x2822009F8](sub_2295E7D40, v12, 0);
  }
}

uint64_t sub_2295E8074(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v6 = *(v5 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = sub_22A4DD07C();
  v2[32] = v7;
  v8 = *(v7 - 8);
  v2[33] = v8;
  v9 = *(v8 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E8208, v1, 0);
}

uint64_t sub_2295E8208()
{
  v62 = v0;
  v1 = *(v0 + 280);
  sub_229541CB0(*(v0 + 208), &off_283CDDAE8);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Handling service group removed notification", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  v9 = *(v0 + 192);

  v10 = *(v7 + 8);
  v10(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v11 = sub_22A4DB20C();
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = *MEMORY[0x277CD0D58];
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v14;
  sub_22A4DE18C();
  if (!*(v12 + 16) || (v15 = sub_2295402E8(v0 + 16), (v16 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_13:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_2295404B0(*(v12 + 56) + 32 * v15, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_15:
    v25 = *(v0 + 272);
    v27 = *(v0 + 240);
    v26 = *(v0 + 248);
    v28 = *(v0 + 224);
    v29 = *(v0 + 232);
    sub_229541CB0(*(v0 + 208), &off_283CDDAE8);
    (*(v29 + 16))(v27, v26, v28);
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 264);
    v34 = *(v0 + 272);
    v35 = *(v0 + 248);
    v60 = *(v0 + 256);
    v37 = *(v0 + 232);
    v36 = *(v0 + 240);
    v38 = *(v0 + 224);
    if (v32)
    {
      v59 = v10;
      v39 = swift_slowAlloc();
      v58 = v34;
      v40 = swift_slowAlloc();
      v61 = v40;
      *v39 = 136315138;
      v57 = v31;
      *(v0 + 184) = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v41 = sub_22A4DDF7C();
      v42 = v38;
      v44 = v43;
      v45 = *(v37 + 8);
      v46 = v36;
      v47 = v42;
      v45(v46, v42);

      v48 = sub_2295A3E30(v41, v44, &v61);

      *(v39 + 4) = v48;
      _os_log_impl(&dword_229538000, v30, v57, "Did not find service group uuid. Could not handle service group removed notification %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);

      v59(v58, v60);
      v45(v35, v47);
    }

    else
    {

      v49 = *(v37 + 8);
      v49(v36, v38);
      v10(v34, v60);
      v49(v35, v38);
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = *(v0 + 200);
  v18 = *(v0 + 176);

  v19 = __swift_project_boxed_opaque_existential_0((v17 + 112), *(v17 + 136))[6];
  *(v0 + 288) = v19;
  v20 = *(v19 + 16);
  *(v0 + 296) = v20;
  if (v20)
  {
    *(v0 + 304) = 0;
    v21 = *(v19 + 56);

    v23 = __swift_project_boxed_opaque_existential_0((v22 + 32), v21);
    v24 = *v23;
    *(v0 + 312) = *v23;

    return MEMORY[0x2822009F8](sub_2295E8700, v24, 0);
  }

  (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_18:
  v51 = *(v0 + 272);
  v50 = *(v0 + 280);
  v53 = *(v0 + 240);
  v52 = *(v0 + 248);
  v54 = *(v0 + 216);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_2295E8700()
{
  v1 = v0[39];
  if (v1[29])
  {
    v2 = v1[29];

    sub_22A4DDA7C();

    v1 = v0[39];
  }

  v3 = v0[27];
  v4 = v0[25];
  sub_2295C9C1C();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E8914, v4, 0);
}

uint64_t sub_2295E8914()
{
  v1 = v0[38] + 1;
  if (v1 == v0[37])
  {
    v2 = v0[36];

    (*(v0[29] + 8))(v0[31], v0[28]);
    v4 = v0[34];
    v3 = v0[35];
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[27];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[38] = v1;
    v10 = __swift_project_boxed_opaque_existential_0((v0[36] + 40 * v1 + 32), *(v0[36] + 40 * v1 + 56));
    v11 = *v10;
    v0[39] = *v10;

    return MEMORY[0x2822009F8](sub_2295E8700, v11, 0);
  }
}

void sub_2295E8A30(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22A4DDF9C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2295E8AF4()
{
  sub_2295E8B80();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_2295E8B80()
{
  if (!qword_281403850)
  {
    sub_22A4DB21C();
    v0 = sub_22A4DBA5C();
    if (!v1)
    {
      atomic_store(v0, &qword_281403850);
    }
  }
}

uint64_t sub_2295E8C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA00, &qword_22A579B40);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA08, &qword_22A579B48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA10, &unk_22A579B50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v32[3] = &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource;
  v32[4] = &off_283CDDD78;
  v15 = swift_allocObject();
  v32[0] = v15;
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  swift_defaultActor_initialize();
  v17 = MEMORY[0x277D84F90];
  *(a2 + 152) = 0;
  *(a2 + 160) = v17;
  v18 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F0, &qword_22A579AD0);
  v20 = *(*(v19 - 8) + 56);
  v20(a2 + v18, 1, 1, v19);
  v21 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationStream;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F8, qword_22A579AD8);
  v23 = *(*(v22 - 8) + 56);
  v23(a2 + v21, 1, 1, v22);
  sub_22957F1C4(v32, a2 + 112);
  v20(v14, 1, 1, v19);
  v31 = v14;
  type metadata accessor for HomeGraphIndexer.NotificationType(0);
  (*(v29 + 104))(v28, *MEMORY[0x277D85778], v30);
  sub_22A4DDA6C();
  __swift_destroy_boxed_opaque_existential_0(v32);
  v23(v10, 0, 1, v22);
  v24 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationStream;
  swift_beginAccess();
  sub_2295E90C8(v10, a2 + v24, &qword_27D87DA08, &qword_22A579B48);
  swift_endAccess();
  v25 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationContinuation;
  swift_beginAccess();
  sub_2295E9058(v14, a2 + v25);
  swift_endAccess();
  sub_22953EAE4(v14, &qword_27D87DA10, &unk_22A579B50);
  return a2;
}

uint64_t sub_2295E9058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA10, &unk_22A579B50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295E90C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2295E9130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2295E9190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2295E91D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295E9240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295E92A8(uint64_t a1)
{
  v4 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2295D5638(a1, v1 + v5, v7, v8);
}

uint64_t sub_2295E93CC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F8, qword_22A579AD8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2295D4B38(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2295E94DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229569B30;

  return sub_2295D41A8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_2295E95F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_2295D2900(a1, v5, v4);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2295E96CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2295E9714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2295E978C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA60, &qword_22A579E88);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

unint64_t sub_2295E9808()
{
  result = qword_27D87DA68;
  if (!qword_27D87DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DA68);
  }

  return result;
}

unint64_t sub_2295E9860()
{
  result = qword_27D87DA70;
  if (!qword_27D87DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DA70);
  }

  return result;
}

unint64_t sub_2295E9938()
{
  result = qword_27D87DA78;
  if (!qword_27D87DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DA78);
  }

  return result;
}

uint64_t sub_2295E998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_22A4DCFCC();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E9A60, 0, 0);
}

uint64_t sub_2295E9A60()
{
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_22A4DCFFC();
  __swift_project_value_buffer(v2, qword_2814050D0);
  sub_22A4DCFBC();
  v3 = sub_22A4DCFEC();
  v4 = sub_22A4DDE0C();
  if (sub_22A4DDF5C())
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22A4DCFAC();
    _os_signpost_emit_with_name_impl(&dword_229538000, v3, v4, v7, "SetPersonalContentSettingIntent.perform.signpost", "", v6, 2u);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);

  (*(v11 + 16))(v8, v9, v10);
  v16 = sub_22A4DD03C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_22A4DD02C();
  (*(v11 + 8))(v9, v10);
  sub_22A4DB05C();
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  *(v0 + 144) = v20;
  sub_22A4DB05C();
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);
  *(v0 + 152) = v22;
  sub_22A4DB05C();
  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  *(v0 + 160) = v24;
  sub_22A4DB05C();
  v25 = *(v0 + 184);
  v26 = swift_task_alloc();
  *(v0 + 168) = v26;
  *v26 = v0;
  v26[1] = sub_2295E9CD0;

  return sub_2295EB030(v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_2295E9CD0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_2295E9EE8;
  }

  else
  {
    v9 = *(v4 + 152);
    v8 = *(v4 + 160);
    v10 = *(v4 + 144);

    *(v4 + 186) = a1 & 1;
    v7 = sub_2295E9E18;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2295E9E18()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  *(v0 + 185) = *(v0 + 186);
  sub_2295ECBD4();
  sub_22A4DB04C();
  sub_2295E9FA4("SetPersonalContentSettingIntent.perform.signpost", 48, 2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2295E9EE8()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];

  sub_2295E9FA4("SetPersonalContentSettingIntent.perform.signpost", 48, 2);

  v7 = v0[1];
  v8 = v0[22];

  return v7();
}

uint64_t sub_2295E9FA4(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_22A4DD00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DCFCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v14 = sub_22A4DCFFC();
  __swift_project_value_buffer(v14, qword_2814050D0);
  v15 = sub_22A4DCFEC();
  sub_22A4DD01C();
  v20 = sub_22A4DDDFC();
  result = sub_22A4DDF5C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_22A4DD04C();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_22A4DCFAC();
      _os_signpost_emit_with_name_impl(&dword_229538000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x22AAD4E50](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2295EA2B0(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2295E998C(a1, v4, v5, v7, v6);
}

uint64_t sub_2295EA370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2295EC5B0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_2295EA39C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA90, &qword_22A57A078);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295EA414(uint64_t a1)
{
  v2 = sub_2295E9938();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2295EA450(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2295EA498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2295EA4E8()
{
  result = qword_27D87DA80;
  if (!qword_27D87DA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87DA88, &qword_22A57A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DA80);
  }

  return result;
}

char *sub_2295EA54C(void *a1, void *a2, int a3)
{
  LODWORD(v114) = a3;
  v113 = a1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v107 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v107 - v14;
  v115 = sub_22A4DB7DC();
  v16 = *(v115 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v115);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 isRestrictedGuest])
  {
    v20 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_2295EA39C();
    sub_22A4DD06C();
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();
    if (!os_log_type_enabled(v21, v22))
    {
      v24 = 15;
      v13 = v10;
LABEL_17:

      (*(v6 + 8))(v13, v5);
      sub_2295ECC28();
      swift_allocError();
      *v105 = v24;
      swift_willThrow();
      return v10;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_229538000, v21, v22, "Personal content settings does not exist for restricted guests.", v23, 2u);
    v24 = 15;
    v13 = v10;
LABEL_10:
    MEMORY[0x22AAD4E50](v23, -1, -1);
    goto LABEL_17;
  }

  v116 = v16;
  v25 = [a2 assistantAccessControl];
  if (!v25)
  {
    v63 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_2295EA39C();
    sub_22A4DD06C();
    v64 = a2;
    v21 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v21, v10))
    {
      v24 = 44;
      goto LABEL_17;
    }

    v23 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v64;
    *v65 = v64;
    v66 = v64;
    _os_log_impl(&dword_229538000, v21, v10, "Could not find assistant access control for user %@", v23, 0xCu);
    sub_22953EAE4(v65, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v65, -1, -1);
    v24 = 44;
    goto LABEL_10;
  }

  v26 = v25;
  v109 = v15;
  v110 = v3;
  v111 = v6;
  v112 = v5;
  v27 = *MEMORY[0x277CD12F8];
  v28 = sub_22A4DD5EC();
  v30 = v29;
  v108 = v26;
  v31 = encodeRootObject();
  v32 = sub_22A4DB62C();
  v34 = v33;

  v121 = MEMORY[0x277CC9318];
  v119 = v32;
  v120 = v34;
  sub_229543C58(&v119, v117);
  v35 = MEMORY[0x277D84F98];
  LOBYTE(v32) = swift_isUniquelyReferenced_nonNull_native();
  v122 = v35;
  v36 = v118;
  v37 = __swift_mutable_project_boxed_opaque_existential_0(v117, v118);
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (&v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  sub_2297FF398(*v40, v40[1], v28, v30, v32, &v122);
  __swift_destroy_boxed_opaque_existential_0(v117);

  v42 = v122;
  v43 = *MEMORY[0x277CD12D8];
  v44 = sub_22A4DD5EC();
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v121 = v47;
  v119 = MEMORY[0x277D84F90];
  sub_229543C58(&v119, v117);
  LOBYTE(v40) = swift_isUniquelyReferenced_nonNull_native();
  v122 = v42;
  v48 = v118;
  v49 = __swift_mutable_project_boxed_opaque_existential_0(v117, v118);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v107 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  sub_2297FEB3C(*v52, v44, v46, v40, &v122);
  __swift_destroy_boxed_opaque_existential_0(v117);

  v54 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_22A576180;
  v56 = [v113 uuid];
  sub_22A4DB79C();

  v57 = sub_22A4DB76C();
  v59 = v58;
  v60 = v115;
  v61 = *(v116 + 8);
  v116 += 8;
  v61(v19, v115);
  *(v55 + 32) = v57;
  *(v55 + 40) = v59;
  if (v114)
  {
    v62 = MEMORY[0x277CD12E0];
  }

  else
  {
    v62 = MEMORY[0x277CD12E8];
  }

  v67 = *v62;
  v114 = sub_22A4DD5EC();
  v69 = v68;
  v121 = v47;
  v119 = v55;
  sub_229543C58(&v119, v117);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = v54;
  v71 = v118;
  v72 = __swift_mutable_project_boxed_opaque_existential_0(v117, v118);
  v73 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v75 = (&v107 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75);
  sub_2297FEB3C(*v75, v114, v69, isUniquelyReferenced_nonNull_native, &v122);
  __swift_destroy_boxed_opaque_existential_0(v117);

  v77 = v122;
  v78 = *MEMORY[0x277CD14D8];
  v79 = sub_22A4DD5EC();
  v81 = v80;
  v82 = [a2 uuid];
  sub_22A4DB79C();

  v83 = sub_22A4DB76C();
  v85 = v84;
  v61(v19, v60);
  v121 = MEMORY[0x277D837D0];
  v119 = v83;
  v120 = v85;
  sub_229543C58(&v119, v117);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v122 = v77;
  v87 = v118;
  v88 = __swift_mutable_project_boxed_opaque_existential_0(v117, v118);
  v89 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v91 = (&v107 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v92 + 16))(v91);
  sub_2297FE940(*v91, v91[1], v79, v81, v86, &v122);
  __swift_destroy_boxed_opaque_existential_0(v117);

  v10 = v122;
  v93 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_2295EA39C();
  v94 = v109;
  sub_22A4DD06C();
  v95 = sub_22A4DD05C();
  v96 = sub_22A4DDCCC();
  v97 = os_log_type_enabled(v95, v96);
  v98 = v111;
  if (v97)
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v119 = v100;
    *v99 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v101 = sub_22A4DD4AC();
    v103 = v102;

    v104 = sub_2295A3E30(v101, v103, &v119);

    *(v99 + 4) = v104;
    _os_log_impl(&dword_229538000, v95, v96, "Prepared the Personal content message payload: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v100);
    MEMORY[0x22AAD4E50](v100, -1, -1);
    MEMORY[0x22AAD4E50](v99, -1, -1);
  }

  else
  {
  }

  (*(v98 + 8))(v94, v112);
  return v10;
}

uint64_t sub_2295EB030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 25) = a7;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_22A4DD07C();
  *(v7 + 80) = v8;
  v9 = *(v8 - 8);
  *(v7 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v12 = sub_22A4DB7DC();
  *(v7 + 152) = v12;
  v13 = *(v12 - 8);
  *(v7 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295EB1F0, 0, 0);
}

uint64_t sub_2295EB1F0()
{
  v155 = v0;
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  *(v0 + 200) = v2;

  v3 = [v2 homes];
  if (!v3)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v3;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v12 = sub_22A4DD83C();

  v151 = v12;
  v147 = v2;
  if (v12 >> 62)
  {
LABEL_52:
    v13 = sub_22A4DE0EC();
    if (v13)
    {
LABEL_4:
      v14 = 0;
      v150 = *(v0 + 160) + 8;
      while (1)
      {
        if ((v151 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x22AAD13F0](v14, v151);
        }

        else
        {
          if (v14 >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v15 = *(v151 + 8 * v14 + 32);
        }

        *(v0 + 208) = v15;
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v17 = *(v0 + 192);
        v18 = *(v0 + 152);
        v19 = *(v0 + 32);
        v20 = *(v0 + 40);
        v152 = v15;
        v21 = [v15 spiClientIdentifier];
        sub_22A4DB79C();

        v22 = sub_22A4DB76C();
        v24 = v23;
        v25 = *v150;
        *(v0 + 216) = *v150;
        *(v0 + 224) = v150 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v149 = v25;
        v25(v17, v18);
        if (v22 == v19 && v24 == v20)
        {
          break;
        }

        v26 = *(v0 + 32);
        v27 = *(v0 + 40);
        v28 = sub_22A4DE60C();

        if (v28)
        {
          goto LABEL_16;
        }

        ++v14;
        if (v16 == v13)
        {
          goto LABEL_53;
        }
      }

LABEL_16:

      v3 = [v152 users];
      if (v3)
      {
        v29 = v3;
        sub_229562F68(0, &qword_281401790, off_278666348);
        v30 = sub_22A4DD83C();

        if (v30 >> 62)
        {
          v31 = sub_22A4DE0EC();
          if (v31)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v31)
          {
LABEL_19:
            v32 = 0;
            v148 = v31;
            while (1)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x22AAD13F0](v32, v30);
              }

              else
              {
                if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_51;
                }

                v33 = *(v30 + 8 * v32 + 32);
              }

              *(v0 + 232) = v33;
              v34 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                goto LABEL_50;
              }

              v35 = *(v0 + 184);
              v36 = *(v0 + 152);
              v38 = *(v0 + 48);
              v37 = *(v0 + 56);
              v151 = v33;
              v39 = [v33 spiClientIdentifier];
              sub_22A4DB79C();

              v40 = sub_22A4DB76C();
              v42 = v41;
              v149(v35, v36);
              if (v40 == v38 && v42 == v37)
              {
                break;
              }

              v43 = *(v0 + 48);
              v44 = *(v0 + 56);
              v45 = sub_22A4DE60C();

              if (v45)
              {
                goto LABEL_31;
              }

              ++v32;
              if (v34 == v148)
              {
                goto LABEL_57;
              }
            }

LABEL_31:
            v46 = *(v0 + 152);
            v47 = *(v0 + 160);
            v48 = *(v0 + 144);
            v50 = *(v0 + 64);
            v49 = *(v0 + 72);

            sub_22A4DB75C();
            if ((*(v47 + 48))(v48, 1, v46) == 1)
            {
              sub_22953EAE4(*(v0 + 144), &unk_27D87D2A0, &unk_22A578BD0);
LABEL_39:
              v70 = *(v0 + 112);
              v71 = *(v0 + 72);
              v72 = *MEMORY[0x277D0F1A8];
              sub_22A4DD5EC();
              sub_2295EA39C();
              sub_22A4DD06C();

              v73 = sub_22A4DD05C();
              v74 = sub_22A4DDCEC();

              v75 = os_log_type_enabled(v73, v74);
              v76 = *(v0 + 112);
              v78 = *(v0 + 80);
              v77 = *(v0 + 88);
              if (v75)
              {
                v80 = *(v0 + 64);
                v79 = *(v0 + 72);
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v154[0] = v82;
                *v81 = 136315138;
                *(v81 + 4) = sub_2295A3E30(v80, v79, v154);
                _os_log_impl(&dword_229538000, v73, v74, "Could not find the accessory with %s", v81, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v82);
                MEMORY[0x22AAD4E50](v82, -1, -1);
                MEMORY[0x22AAD4E50](v81, -1, -1);
              }

              (*(v77 + 8))(v76, v78);
              sub_2295ECC28();
              swift_allocError();
              *v83 = 42;
              swift_willThrow();

              goto LABEL_60;
            }

            v51 = *(v0 + 176);
            (*(*(v0 + 160) + 32))(v51, *(v0 + 144), *(v0 + 152));
            sub_2295EE028(v51);
            *(v0 + 240) = v52;
            if (!v52)
            {
              v149(*(v0 + 176), *(v0 + 152));
              goto LABEL_39;
            }

            v53 = v52;
            objc_opt_self();
            v54 = swift_dynamicCastObjCClass();
            *(v0 + 248) = *MEMORY[0x277D0F1A8];
            sub_22A4DD5EC();
            if (v54)
            {
              v55 = *(v0 + 136);
              v56 = v53;
              sub_2295EA39C();
              sub_22A4DD06C();
              v57 = v56;
              v58 = sub_22A4DD05C();
              v59 = sub_22A4DDCCC();

              if (os_log_type_enabled(v58, v59))
              {
                v60 = *(v0 + 25);
                v61 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                *v61 = 138412546;
                *(v61 + 4) = v54;
                *v62 = v54;
                *(v61 + 12) = 1024;
                *(v61 + 14) = v60;
                v63 = v57;
                _os_log_impl(&dword_229538000, v58, v59, "Going to change personal content settings for %@ to %{BOOL}d", v61, 0x12u);
                sub_22953EAE4(v62, &qword_27D87D7D0, &unk_22A578D90);
                MEMORY[0x22AAD4E50](v62, -1, -1);
                MEMORY[0x22AAD4E50](v61, -1, -1);
              }

              v64 = *(v0 + 136);
              v66 = *(v0 + 80);
              v65 = *(v0 + 88);
              v67 = *(v0 + 25);

              v68 = *(v65 + 8);
              *(v0 + 256) = v68;
              *(v0 + 264) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v68(v64, v66);
              v69 = sub_2295EA54C(v54, v151, v67);
              *(v0 + 272) = v69;
              v97 = *(v0 + 168);
              v98 = *MEMORY[0x277CD1300];
              v99 = v69;
              v100 = sub_22A4DD5EC();
              v102 = v101;
              *(v0 + 280) = v101;
              v103 = [v152 messageTargetUUID];
              sub_22A4DB79C();

              v104 = swift_task_alloc();
              *(v0 + 288) = v104;
              v104[2] = v100;
              v104[3] = v102;
              v104[4] = v97;
              v104[5] = v99;
              v104[6] = v152;
              v105 = *(MEMORY[0x277D859E0] + 4);
              v106 = swift_task_alloc();
              *(v0 + 296) = v106;
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAD0, &qword_22A57A0C0);
              *v106 = v0;
              v106[1] = sub_2295EC054;
              v8 = sub_2295ECC7C;
              v3 = (v0 + 16);
              v7 = 0x800000022A58C610;
              v4 = 0;
              v5 = 0;
              v6 = 0xD00000000000002ALL;
              v9 = v104;

              return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
            }

            v84 = *(v0 + 120);
            sub_2295EA39C();
            sub_22A4DD06C();
            v85 = v53;
            v86 = sub_22A4DD05C();
            v87 = sub_22A4DDCEC();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              *v88 = 138412290;
              *(v88 + 4) = v85;
              *v89 = v53;
              v90 = v85;
              _os_log_impl(&dword_229538000, v86, v87, "Cannot change personal content settings for non apple media accessory: %@", v88, 0xCu);
              sub_22953EAE4(v89, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v89, -1, -1);
              MEMORY[0x22AAD4E50](v88, -1, -1);
            }

            v91 = *(v0 + 176);
            v92 = *(v0 + 152);
            v93 = *(v0 + 120);
            v95 = *(v0 + 80);
            v94 = *(v0 + 88);

            (*(v94 + 8))(v93, v95);
            sub_2295ECC28();
            swift_allocError();
            *v96 = 45;
            swift_willThrow();

            v149(v91, v92);
            goto LABEL_62;
          }
        }

LABEL_57:
        v121 = *(v0 + 104);
        v122 = *(v0 + 56);

        v123 = *MEMORY[0x277D0F1A8];
        sub_22A4DD5EC();
        sub_2295EA39C();
        sub_22A4DD06C();

        v124 = sub_22A4DD05C();
        v125 = sub_22A4DDCEC();

        v126 = os_log_type_enabled(v124, v125);
        v127 = *(v0 + 104);
        v129 = *(v0 + 80);
        v128 = *(v0 + 88);
        if (v126)
        {
          v131 = *(v0 + 48);
          v130 = *(v0 + 56);
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v154[0] = v133;
          *v132 = 136315138;
          *(v132 + 4) = sub_2295A3E30(v131, v130, v154);
          _os_log_impl(&dword_229538000, v124, v125, "Could not find the user with %s", v132, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v133);
          MEMORY[0x22AAD4E50](v133, -1, -1);
          MEMORY[0x22AAD4E50](v132, -1, -1);
        }

        (*(v128 + 8))(v127, v129);
        sub_2295ECC28();
        swift_allocError();
        *v134 = 41;
        swift_willThrow();
LABEL_60:

        goto LABEL_61;
      }

      goto LABEL_66;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }
  }

LABEL_53:
  v107 = *(v0 + 96);
  v108 = *(v0 + 40);

  v109 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_2295EA39C();
  sub_22A4DD06C();

  v110 = sub_22A4DD05C();
  v111 = sub_22A4DDCEC();

  v112 = os_log_type_enabled(v110, v111);
  v114 = *(v0 + 88);
  v113 = *(v0 + 96);
  v115 = *(v0 + 80);
  if (v112)
  {
    v117 = *(v0 + 32);
    v116 = *(v0 + 40);
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v154[0] = v119;
    *v118 = 136315138;
    *(v118 + 4) = sub_2295A3E30(v117, v116, v154);
    _os_log_impl(&dword_229538000, v110, v111, "Could not find the home with %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x22AAD4E50](v119, -1, -1);
    MEMORY[0x22AAD4E50](v118, -1, -1);
  }

  (*(v114 + 8))(v113, v115);
  sub_2295ECC28();
  swift_allocError();
  *v120 = 40;
  swift_willThrow();
LABEL_61:

LABEL_62:
  v136 = *(v0 + 184);
  v135 = *(v0 + 192);
  v138 = *(v0 + 168);
  v137 = *(v0 + 176);
  v140 = *(v0 + 136);
  v139 = *(v0 + 144);
  v142 = *(v0 + 120);
  v141 = *(v0 + 128);
  v143 = *(v0 + 104);
  v144 = *(v0 + 112);
  v153 = *(v0 + 96);

  v145 = *(v0 + 8);

  return v145(0);
}

uint64_t sub_2295EC054()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_2295EC1AC, 0, 0);
}

uint64_t sub_2295EC1AC()
{
  v64 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  (*(v0 + 216))(*(v0 + 168), *(v0 + 152));
  if (v3 == 1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 216);
    v59 = *(v0 + 224);
    v7 = v2;
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    swift_willThrow();
    v12 = v7;

    sub_2295ECC8C(v7, 1);
    v6(v10, v11);
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v21 = *(v0 + 112);
    v57 = *(v0 + 104);
    v60 = *(v0 + 96);

    v22 = *(v0 + 8);
    v23 = 0;
  }

  else
  {
    v24 = *(v0 + 248);
    v25 = *(v0 + 128);
    sub_22A4DD5EC();
    sub_2295EA39C();
    sub_22A4DD06C();

    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCCC();
    sub_2295ECC8C(v2, 0);
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 264);
    v30 = *(v0 + 240);
    v32 = *(v0 + 216);
    v31 = *(v0 + 224);
    v34 = *(v0 + 200);
    v33 = *(v0 + 208);
    v58 = *(v0 + 176);
    v61 = *(v0 + 256);
    v55 = *(v0 + 128);
    v56 = *(v0 + 152);
    v53 = *(v0 + 232);
    v54 = *(v0 + 80);
    if (v28)
    {
      v51 = *(v0 + 25);
      v52 = *(v0 + 216);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v63 = v36;
      *v35 = 136315394;
      v37 = sub_22A4DD4AC();
      v39 = sub_2295A3E30(v37, v38, &v63);

      *(v35 + 4) = v39;
      *(v35 + 12) = 1024;
      *(v35 + 14) = v51;
      _os_log_impl(&dword_229538000, v26, v27, "Personal content settings was updated successfully. %s with enabled: %{BOOL}d", v35, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);

      sub_2295ECC8C(v2, 0);
      v61(v55, v54);
      v52(v58, v56);
    }

    else
    {

      sub_2295ECC8C(v2, 0);
      v61(v55, v54);
      v32(v58, v56);
    }

    v41 = *(v0 + 184);
    v40 = *(v0 + 192);
    v43 = *(v0 + 168);
    v42 = *(v0 + 176);
    v45 = *(v0 + 136);
    v44 = *(v0 + 144);
    v47 = *(v0 + 120);
    v46 = *(v0 + 128);
    v49 = *(v0 + 104);
    v48 = *(v0 + 112);
    v62 = *(v0 + 96);

    v22 = *(v0 + 8);
    v23 = 1;
  }

  return v22(v23);
}

uint64_t sub_2295EC5B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA98, &qword_22A57A080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v42 = &v37 - v2;
  v53 = sub_22A4DB08C();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v53);
  v55 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAA0, &qword_22A57A088);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAA8, &qword_22A57A090);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAB0, &qword_22A57A098);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAB8, &qword_22A57A0A0);
  sub_22A4DB3FC();
  v47 = sub_22A4DB40C();
  v18 = *(v47 - 8);
  v39 = *(v18 + 56);
  v54 = v18 + 56;
  v39(v17, 0, 1, v47);
  v51 = sub_22A4DD59C();
  v56 = 0;
  v57 = 0;
  v19 = *(v51 - 8);
  v20 = *(v19 + 56);
  v49 = v19 + 56;
  v50 = v20;
  v20(v13, 1, 1, v51);
  v21 = sub_22A4DB03C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v46 = v22 + 56;
  v52 = v21;
  v23(v9, 1, 1, v21);
  v38 = v23;
  v45 = *MEMORY[0x277CBA308];
  v24 = *(v3 + 104);
  v44 = v3 + 104;
  v48 = v24;
  v25 = v53;
  v24(v55);
  v41 = sub_22A4DB06C();
  sub_22A4DB3FC();
  v26 = v47;
  v27 = v39;
  v39(v17, 0, 1, v47);
  v56 = 0;
  v57 = 0;
  v50(v13, 1, 1, v51);
  v28 = v9;
  v23(v9, 1, 1, v21);
  v29 = v45;
  v48(v55, v45, v25);
  v40 = sub_22A4DB06C();
  sub_22A4DB3FC();
  v27(v17, 0, 1, v26);
  v56 = 0;
  v57 = 0;
  v50(v13, 1, 1, v51);
  v30 = v38;
  v38(v28, 1, 1, v52);
  v31 = v55;
  v32 = v29;
  v33 = v53;
  v34 = v48;
  v48(v55, v32, v53);
  sub_22A4DB06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAC0, &qword_22A57A0A8);
  sub_22A4DB3FC();
  v27(v17, 0, 1, v47);
  LOBYTE(v56) = 2;
  v35 = sub_22A4DD89C();
  (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
  v30(v28, 1, 1, v52);
  v34(v31, v45, v33);
  sub_22A4DB07C();
  return v41;
}

unint64_t sub_2295ECBD4()
{
  result = qword_281401CE8;
  if (!qword_281401CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281401CE8);
  }

  return result;
}

unint64_t sub_2295ECC28()
{
  result = qword_27D87DAC8;
  if (!qword_27D87DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DAC8);
  }

  return result;
}

void sub_2295ECC8C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2295ECC98()
{
  v0 = sub_22A4DD07C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_22A4DCFFC();
  __swift_allocate_value_buffer(v2, qword_2814050D0);
  __swift_project_value_buffer(v2, qword_2814050D0);
  v3 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_2295ED93C();
  sub_22A4DD06C();
  return sub_22A4DCFDC();
}

uint64_t sub_2295ECD8C@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  result = [v9 isHidden];
  if (result)
  {
    v11 = 2;
  }

  else
  {
    v12 = [v9 spiClientIdentifier];
    sub_22A4DB79C();

    v13 = sub_22A4DB78C();
    result = (*(v5 + 8))(v8, v4);
    v11 = v13 & 1;
  }

  *a2 = v11;
  return result;
}

uint64_t sub_2295ECEC8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 uniqueIdentifier];
  sub_22A4DB79C();

  v10 = sub_22A4DB78C();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v10 & 1;
  return result;
}

void sub_2295ECFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v32 = a1;
  v33 = a6;
  v29 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAD8, &qword_22A57A0C8);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - v8;
  v28 = sub_22A4DD5AC();
  v9 = objc_allocWithZone(MEMORY[0x277D0F820]);
  v10 = sub_22A4DB77C();
  v11 = [v9 initWithTarget_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v13;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_2295ED9B4(inited + 32);
  sub_22956AC5C(MEMORY[0x277D84F90]);
  v14 = objc_allocWithZone(MEMORY[0x277D0F818]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v15 = sub_22A4DD47C();

  v16 = sub_22A4DD47C();

  v17 = sub_22A4DD47C();
  v18 = v28;
  v19 = [v14 initWithName:v28 qualityOfService:25 destination:v11 userInfo:v15 headers:v16 payload:v17];

  v21 = v30;
  v20 = v31;
  (*(v6 + 16))(v30, v32, v31);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v21, v20);
  aBlock[4] = sub_2295EDA1C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_6;
  v24 = _Block_copy(aBlock);

  [v19 setResponseHandler_];
  _Block_release(v24);
  v25 = [v33 msgDispatcher];
  if (v25)
  {
    v26 = v25;
    [v25 dispatchMessage_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2295ED394(void *a1, unint64_t a2)
{
  v4 = sub_22A4DCFCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v12 = sub_22A4DCFFC();
  __swift_project_value_buffer(v12, qword_2814050D0);
  sub_22A4DCFBC();
  v13 = sub_22A4DCFEC();
  v14 = sub_22A4DDE0C();
  if (sub_22A4DDF5C())
  {
    v15 = swift_slowAlloc();
    v26 = a1;
    v16 = v15;
    *v15 = 0;
    v17 = sub_22A4DCFAC();
    _os_signpost_emit_with_name_impl(&dword_229538000, v13, v14, v17, "dispatchMessage.toolbox.signpost", "", v16, 2u);
    a1 = v26;
    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  (*(v5 + 16))(v9, v11, v4);
  v18 = sub_22A4DD03C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_22A4DD02C();
  (*(v5 + 8))(v11, v4);
  if (a1)
  {
    v27 = a1;
    v28 = 1;
    v21 = a1;
  }

  else
  {
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = sub_22956AC5C(MEMORY[0x277D84F90]);
    }

    v23 = sub_2296F7AE8(v22);

    v27 = v23;
    v28 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAD8, &qword_22A57A0C8);
  sub_22A4DD8FC();
  sub_2295ED660("dispatchMessage.toolbox.signpost", 32, 2);
}

uint64_t sub_2295ED660(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_22A4DD00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DCFCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v14 = sub_22A4DCFFC();
  __swift_project_value_buffer(v14, qword_2814050D0);
  v15 = sub_22A4DCFEC();
  sub_22A4DD01C();
  v20 = sub_22A4DDDFC();
  result = sub_22A4DDF5C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_22A4DD04C();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_22A4DCFAC();
      _os_signpost_emit_with_name_impl(&dword_229538000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x22AAD4E50](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2295ED93C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DAE0, &qword_22A57A0F8);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295ED9B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295EDA1C(void *a1, unint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAD8, &qword_22A57A0C8) - 8) + 80);

  return sub_2295ED394(a1, a2);
}

void *sub_2295EDAA8(uint64_t a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 spiClientIdentifier];
  sub_22A4DB79C();

  LOBYTE(v9) = sub_22A4DB78C();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    goto LABEL_26;
  }

  v11 = [a2 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v12 = sub_22A4DD83C();

  MEMORY[0x28223BE20](v13);
  v50[-2] = a1;
  v14 = sub_229716318(sub_2295EEFC8, &v50[-4], v12);

  v15 = *(v14 + 2);
  if (v15)
  {
    v16 = (v14 + 32);
    while (v15)
    {
      v17 = *v16++;
      --v15;
      if (v17 == 1)
      {
LABEL_25:

        goto LABEL_26;
      }
    }
  }

  v18 = [a2 mediaProfile];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 uniqueIdentifier];
    sub_22A4DB79C();

    LOBYTE(v20) = sub_22A4DB78C();
    v10(v8, v4);
    if (v20)
    {
      goto LABEL_26;
    }
  }

  v21 = [a2 cameraProfiles];
  sub_229562F68(0, &qword_27D87D938, off_278666080);
  sub_22959E62C(&qword_27D881EF0, &qword_27D87D938, off_278666080);
  v22 = sub_22A4DDB6C();

  MEMORY[0x28223BE20](v23);
  v50[-2] = a1;
  sub_2297164E4(sub_2295EF0A0, &v50[-4], v22);
  v25 = v24;

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + 32);
    while (v26)
    {
      v28 = *v27++;
      --v26;
      if (v28 == 1)
      {
        goto LABEL_25;
      }
    }
  }

  v29 = [a2 siriEndpointProfile];
  v30 = v50[0];
  if (!v29)
  {
    goto LABEL_16;
  }

  v31 = v29;
  v32 = [v29 uniqueIdentifier];
  sub_22A4DB79C();

  LOBYTE(v32) = sub_22A4DB78C();
  v10(v8, v30);
  if (v32)
  {
LABEL_26:
    v48 = a2;
  }

  else
  {
LABEL_16:
    v33 = [a2 lightProfiles];
    sub_229562F68(0, &unk_27D880970, off_278666228);
    sub_22959E62C(&unk_27D87E4A0, &unk_27D880970, off_278666228);
    v34 = sub_22A4DDB6C();

    MEMORY[0x28223BE20](v35);
    v50[-2] = a1;
    sub_229716514(sub_2295EEFE4, &v50[-4], v34);
    v37 = v36;

    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = (v37 + 32);
      while (v38)
      {
        v40 = *v39++;
        --v38;
        if (v40 == 1)
        {
          goto LABEL_25;
        }
      }
    }

    v41 = [a2 identifiersForBridgedAccessories];
    sub_2295EF000();
    v42 = sub_22A4DDB6C();

    MEMORY[0x28223BE20](v43);
    v50[-2] = a1;
    v44 = sub_22971682C(sub_2295EF058, &v50[-4], v42);

    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = (v44 + 32);
      while (v45)
      {
        v47 = *v46++;
        --v45;
        if (v47)
        {
          goto LABEL_25;
        }
      }
    }

    return 0;
  }

  return a2;
}

void sub_2295EE028(uint64_t a1)
{
  v153 = a1;
  v1 = sub_22A4DB7DC();
  v135 = *(v1 - 8);
  v2 = *(v135 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v131 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v127 - v5;
  v154 = sub_22A4DD07C();
  v134 = *(v154 - 8);
  v7 = *(v134 + 64);
  v8 = MEMORY[0x28223BE20](v154);
  v132 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v127 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v127 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v127 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v127 - v19;
  v21 = [objc_opt_self() driver];
  v22 = [v21 homeManager];

  v23 = [v22 homes];
  if (v23)
  {
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v24 = sub_22A4DD83C();

    v26 = v24;
    v137 = v24;
    if (v24 >> 62)
    {
LABEL_50:
      v27 = sub_22A4DE0EC();
      v26 = v137;
    }

    else
    {
      v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = MEMORY[0x277D0F1A8];
    if (v27)
    {
      v128 = v18;
      v127 = v12;
      v29 = 0;
      v136 = v26 & 0xC000000000000001;
      v130 = v26 & 0xFFFFFFFFFFFFFF8;
      v129 = v26 + 32;
      v30 = *MEMORY[0x277D0F1A8];
      v152 = (v134 + 8);
      v145 = (v135 + 8);
      *&v25 = 136315394;
      v143 = v25;
      v147 = v1;
      v155 = v6;
      v133 = v27;
      v142 = v15;
      v149 = v30;
      v144 = v20;
      while (1)
      {
        if (v136)
        {
          v31 = v29;
          v32 = MEMORY[0x22AAD13F0](v29, v26);
          v33 = __OFADD__(v31, 1);
          v34 = v31 + 1;
          if (v33)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v29 >= *(v130 + 16))
          {
            __break(1u);
            goto LABEL_52;
          }

          v35 = v29;
          v32 = *(v129 + 8 * v29);
          v33 = __OFADD__(v35, 1);
          v34 = v35 + 1;
          if (v33)
          {
            goto LABEL_49;
          }
        }

        v138 = v34;
        v139 = v32;
        v36 = [v32 accessories];
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v12 = sub_22A4DD83C();

        v37 = v12;
        if (v12 >> 62)
        {
          v38 = sub_22A4DE0EC();
          v37 = v12;
          if (v38)
          {
LABEL_15:
            v1 = 0;
            v150 = v37;
            v151 = v37 & 0xC000000000000001;
            v141 = v37 & 0xFFFFFFFFFFFFFF8;
            v148 = v38;
            while (1)
            {
              if (v151)
              {
                v41 = MEMORY[0x22AAD13F0](v1);
              }

              else
              {
                if (v1 >= *(v141 + 16))
                {
                  goto LABEL_48;
                }

                v41 = *(v37 + 8 * v1 + 32);
              }

              v18 = v41;
              v6 = (v1 + 1);
              if (__OFADD__(v1, 1))
              {
                break;
              }

              objc_opt_self();
              v42 = swift_dynamicCastObjCClass();
              sub_22A4DD5EC();
              v156 = v1 + 1;
              v157 = v18;
              if (v42)
              {
                v18 = v18;
                sub_2295ED93C();
                sub_22A4DD06C();
                v6 = v18;
                v43 = v20;
                v44 = sub_22A4DD05C();
                v12 = sub_22A4DDCCC();

                v45 = os_log_type_enabled(v44, v12);
                v146 = v6;
                if (v45)
                {
                  v46 = swift_slowAlloc();
                  v47 = swift_slowAlloc();
                  v158 = v47;
                  *v46 = v143;
                  v48 = [v6 name];
                  v49 = sub_22A4DD5EC();
                  v51 = v50;

                  v52 = sub_2295A3E30(v49, v51, &v158);

                  *(v46 + 4) = v52;
                  *(v46 + 12) = 2080;
                  v53 = [v6 spiClientIdentifier];

                  sub_22A4DB79C();
                  v54 = sub_22A4DB76C();
                  v18 = v55;
                  (*v145)(v155, v147);
                  v56 = sub_2295A3E30(v54, v18, &v158);

                  *(v46 + 14) = v56;
                  _os_log_impl(&dword_229538000, v44, v12, "Checking HAP accessory: %s with UUID: %s", v46, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x22AAD4E50](v47, -1, -1);
                  v57 = v46;
                  v15 = v142;
                  MEMORY[0x22AAD4E50](v57, -1, -1);

                  v39 = *v152;
                  v20 = v144;
                  (*v152)(v144, v154);
                }

                else
                {

                  v39 = *v152;
                  (*v152)(v43, v154);
                  v20 = v43;
                }

                v40 = sub_2295EDAA8(v153, v42);
                if (v40)
                {
                  v90 = v40;

                  sub_22A4DD5EC();
                  sub_2295ED93C();
                  v91 = v128;
                  sub_22A4DD06C();
                  v92 = v90;
                  v93 = v139;
                  v94 = sub_22A4DD05C();
                  v95 = sub_22A4DDCCC();

                  if (os_log_type_enabled(v94, v95))
                  {
                    v96 = swift_slowAlloc();
                    v97 = swift_slowAlloc();
                    v158 = v97;
                    *v96 = v143;
                    v98 = [v92 name];
                    v99 = sub_22A4DD5EC();
                    v101 = v100;

                    v102 = sub_2295A3E30(v99, v101, &v158);

                    *(v96 + 4) = v102;
                    *(v96 + 12) = 2080;
                    v103 = [v93 name];
                    v104 = sub_22A4DD5EC();
                    v106 = v105;

                    v107 = sub_2295A3E30(v104, v106, &v158);

                    *(v96 + 14) = v107;
                    _os_log_impl(&dword_229538000, v94, v95, "Found matching HAP accessory: %s in home: %s", v96, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x22AAD4E50](v97, -1, -1);
                    MEMORY[0x22AAD4E50](v96, -1, -1);

                    v108 = v128;
                  }

                  else
                  {

                    v108 = v91;
                  }

LABEL_45:
                  v39(v108, v154);
                  return;
                }
              }

              else
              {
                sub_2295ED93C();
                sub_22A4DD06C();
                v12 = v18;
                v58 = sub_22A4DD05C();
                v59 = v15;
                v60 = sub_22A4DDCCC();

                if (os_log_type_enabled(v58, v60))
                {
                  v61 = swift_slowAlloc();
                  v146 = v12;
                  v62 = v61;
                  v140 = swift_slowAlloc();
                  v158 = v140;
                  *v62 = v143;
                  v63 = [v146 name];
                  v64 = sub_22A4DD5EC();
                  v66 = v65;

                  v67 = sub_2295A3E30(v64, v66, &v158);

                  *(v62 + 4) = v67;
                  *(v62 + 12) = 2080;
                  v68 = [v146 spiClientIdentifier];
                  v18 = v155;
                  sub_22A4DB79C();

                  v69 = sub_22A4DB76C();
                  v71 = v70;
                  v6 = v145;
                  v72 = v147;
                  (*v145)(v18, v147);
                  v73 = sub_2295A3E30(v69, v71, &v158);

                  *(v62 + 14) = v73;
                  _os_log_impl(&dword_229538000, v58, v60, "Checking non-HAP accessory: %s with UUID: %s", v62, 0x16u);
                  v74 = v140;
                  swift_arrayDestroy();
                  MEMORY[0x22AAD4E50](v74, -1, -1);
                  v75 = v62;
                  v12 = v146;
                  MEMORY[0x22AAD4E50](v75, -1, -1);

                  v39 = *v152;
                  v15 = v142;
                  (*v152)(v142, v154);
                }

                else
                {

                  v39 = *v152;
                  (*v152)(v59, v154);
                  v72 = v147;
                  v18 = v155;
                  v15 = v59;
                  v6 = v145;
                }

                v76 = [v12 spiClientIdentifier];
                sub_22A4DB79C();

                LOBYTE(v76) = sub_22A4DB78C();
                (*v6)(v18, v72);
                v20 = v144;
                if (v76)
                {

                  sub_22A4DD5EC();
                  sub_2295ED93C();
                  v109 = v127;
                  sub_22A4DD06C();
                  v110 = v12;
                  v111 = v139;
                  v112 = sub_22A4DD05C();
                  v113 = sub_22A4DDCCC();

                  if (os_log_type_enabled(v112, v113))
                  {
                    v115 = swift_slowAlloc();
                    v157 = swift_slowAlloc();
                    v158 = v157;
                    *v115 = v143;
                    v116 = [v110 name];
                    v117 = sub_22A4DD5EC();
                    v119 = v118;

                    v120 = sub_2295A3E30(v117, v119, &v158);

                    *(v115 + 4) = v120;
                    *(v115 + 12) = 2080;
                    v121 = [v111 name];
                    v122 = sub_22A4DD5EC();
                    v124 = v123;

                    v125 = sub_2295A3E30(v122, v124, &v158);

                    *(v115 + 14) = v125;
                    _os_log_impl(&dword_229538000, v112, v113, "Found matching non-HAP accessory: %s in home: %s", v115, 0x16u);
                    v126 = v157;
                    swift_arrayDestroy();
                    MEMORY[0x22AAD4E50](v126, -1, -1);
                    MEMORY[0x22AAD4E50](v115, -1, -1);
                  }

                  else
                  {
                  }

                  v108 = v109;
                  goto LABEL_45;
                }
              }

              ++v1;
              v37 = v150;
              if (v156 == v148)
              {
                goto LABEL_6;
              }
            }

            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        else
        {
          v38 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38)
          {
            goto LABEL_15;
          }
        }

LABEL_6:

        v29 = v138;
        v1 = v147;
        v26 = v137;
        if (v138 == v133)
        {

          goto LABEL_35;
        }
      }
    }

    v77 = *v28;
LABEL_35:
    sub_22A4DD5EC();
    sub_2295ED93C();
    v78 = v132;
    sub_22A4DD06C();
    v79 = v135;
    v80 = v131;
    (*(v135 + 16))(v131, v153, v1);
    v81 = sub_22A4DD05C();
    v82 = sub_22A4DDCEC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = v78;
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v158 = v85;
      *v84 = 136315138;
      v86 = sub_22A4DB76C();
      v88 = v87;
      (*(v79 + 8))(v80, v1);
      v89 = sub_2295A3E30(v86, v88, &v158);

      *(v84 + 4) = v89;
      _os_log_impl(&dword_229538000, v81, v82, "Could not find any accessory with UUID: %s in any home after searching all the homes", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x22AAD4E50](v85, -1, -1);
      MEMORY[0x22AAD4E50](v84, -1, -1);

      (*(v134 + 8))(v83, v154);
    }

    else
    {

      (*(v79 + 8))(v80, v1);
      (*(v134 + 8))(v78, v154);
    }
  }

  else
  {
LABEL_52:
    __break(1u);
  }
}

unint64_t sub_2295EF000()
{
  result = qword_281403880;
  if (!qword_281403880)
  {
    sub_22A4DB7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403880);
  }

  return result;
}

uint64_t sub_2295EF058@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_22A4DB78C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2295EF0B8()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87DAF0);
  __swift_project_value_buffer(v0, qword_27D87DAF0);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2295EF130(void *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v44[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v44[-v11];
  type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  result = swift_dynamicCastClass();
  if (result)
  {
    v14 = result;
    v15 = a1;
    v16 = [v14 homeUUID];
    sub_22A4DB79C();

    if (sub_2295EF754())
    {
      sub_22A4DBE1C();
      if (qword_27D87B8F0 != -1)
      {
        swift_once();
      }

      v17 = sub_22A4DD07C();
      __swift_project_value_buffer(v17, qword_27D87DAF0);
      (*(v3 + 16))(v10, v12, v2);
      v18 = v15;
      v19 = sub_22A4DD05C();
      v20 = sub_22A4DDCCC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v50 = v49;
        *v21 = 136315650;
        sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0]);
        v46 = v19;
        v22 = sub_22A4DE5CC();
        v45 = v20;
        v24 = v23;
        v48 = v2;
        v25 = *(v3 + 8);
        v25(v10, v2);
        v26 = sub_2295A3E30(v22, v24, &v50);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_2295A3E30(0x286576726573626FLL, 0xEB00000000293A5FLL, &v50);
        *(v21 + 22) = 2112;
        *(v21 + 24) = v14;
        v27 = v47;
        *v47 = v14;
        v28 = v18;
        v29 = v46;
        _os_log_impl(&dword_229538000, v46, v45, "[%s]%s Incremented reduced usage count with log event %@", v21, 0x20u);
        sub_22953EAE4(v27, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v27, -1, -1);
        v30 = v49;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v30, -1, -1);
        MEMORY[0x22AAD4E50](v21, -1, -1);

        return (v25)(v12, v48);
      }

      v43 = *(v3 + 8);
      v43(v10, v2);
    }

    else
    {
      if (qword_27D87B8F0 != -1)
      {
        swift_once();
      }

      v31 = sub_22A4DD07C();
      __swift_project_value_buffer(v31, qword_27D87DAF0);
      (*(v3 + 16))(v7, v12, v2);
      v32 = sub_22A4DD05C();
      v33 = sub_22A4DDCEC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v47 = v15;
        v35 = v2;
        v36 = v34;
        v49 = swift_slowAlloc();
        v50 = v49;
        *v36 = 136315394;
        sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0]);
        v37 = sub_22A4DE5CC();
        v39 = v38;
        v40 = *(v3 + 8);
        v40(v7, v35);
        v41 = sub_2295A3E30(v37, v39, &v50);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_2295A3E30(0x286576726573626FLL, 0xEB00000000293A5FLL, &v50);
        _os_log_impl(&dword_229538000, v32, v33, "[%s]%s Counter group is nil", v36, 0x16u);
        v42 = v49;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v42, -1, -1);
        MEMORY[0x22AAD4E50](v36, -1, -1);

        return (v40)(v12, v35);
      }

      v43 = *(v3 + 8);
      v43(v7, v2);
    }

    return (v43)(v12, v2);
  }

  return result;
}

uint64_t sub_2295EF754()
{
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_countersManager))
  {

    v1 = sub_22A4DBFDC();

    return v1;
  }

  else
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v3 = sub_22A4DD07C();
    __swift_project_value_buffer(v3, qword_27D87DAF0);
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCEC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2295A3E30(0xD000000000000017, 0x800000022A58C810, &v8);
      _os_log_impl(&dword_229538000, v4, v5, "%s Counters manager is nil", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AAD4E50](v7, -1, -1);
      MEMORY[0x22AAD4E50](v6, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_2295EF94C(uint64_t a1, uint64_t a2)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v72 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v73 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v72 = &v72 - v16;
  v17 = [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_dataSource) homeDataSources];
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DB80, &qword_22A57A150);
  v19 = v6;
  v20 = v5;
  v21 = sub_22A4DD83C();

  MEMORY[0x28223BE20](v22);
  *(&v72 - 2) = a1;
  v23 = sub_229685214(sub_2295F1E3C, (&v72 - 4), v21);
  v5 = v20;
  v6 = v19;

  if (!v23)
  {
LABEL_8:
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v36 = sub_22A4DD07C();
    __swift_project_value_buffer(v36, qword_27D87DAF0);
    (*(v6 + 16))(v10, a1, v5);
    v37 = sub_22A4DD05C();
    v38 = sub_22A4DDCEC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v75 = v40;
      *v39 = 136315394;
      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0]);
      v41 = sub_22A4DE5CC();
      v43 = v42;
      (*(v6 + 8))(v10, v5);
      v44 = sub_2295A3E30(v41, v43, &v75);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_2295A3E30(0xD00000000000002FLL, 0x800000022A58C720, &v75);
      _os_log_impl(&dword_229538000, v37, v38, "[%s]%s Unable to find homeDataSource", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v10, v5);
    }

    return 0;
  }

  v24 = v13;
  v25 = sub_2295F07B4(a1, a2);
  if (v26)
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v27 = sub_22A4DD07C();
    __swift_project_value_buffer(v27, qword_27D87DAF0);
    (*(v19 + 16))(v13, a1, v5);
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCEC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v75 = v31;
      *v30 = 136315394;
      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0]);
      v32 = sub_22A4DE5CC();
      v34 = v33;
      (*(v6 + 8))(v24, v5);
      v35 = sub_2295A3E30(v32, v34, &v75);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2295A3E30(0xD00000000000002FLL, 0x800000022A58C720, &v75);
      _os_log_impl(&dword_229538000, v28, v29, "[%s]%s Error getting reduced usage count", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v19 + 8))(v13, v5);
    }

    return 0;
  }

  v45 = v25;
  if ([v23 isCurrentDevicePrimaryResident])
  {
    v46 = sub_2295F1E5C(v23, a1, v45);
  }

  else
  {
    v48 = v72;
    (*(v19 + 16))(v72, a1, v5);
    v49 = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
    v50 = objc_allocWithZone(v49);
    v51 = &v50[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName];
    *v51 = 0xD000000000000034;
    v51[1] = 0x800000022A58C750;
    *&v50[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
    *&v50[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount] = 0;
    *&v50[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount] = 0;
    v50[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeConnectedToUtility] = 0;
    v50[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeElectricityRatesEnabled] = 0;
    *&v50[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount] = v45;
    v50[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] = 0;
    v52 = sub_22A4DB77C();
    v74.receiver = v50;
    v74.super_class = v49;
    v46 = objc_msgSendSuper2(&v74, sel_initWithHomeUUID_, v52);

    (*(v6 + 8))(v48, v5);
  }

  v53 = v73;
  v54 = qword_27D87B8F0;
  v55 = v46;
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = sub_22A4DD07C();
  __swift_project_value_buffer(v56, qword_27D87DAF0);
  (*(v6 + 16))(v53, a1, v5);
  v57 = v55;
  v58 = sub_22A4DD05C();
  v59 = sub_22A4DDCCC();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v73 = v23;
    v61 = v53;
    v62 = v60;
    v63 = v5;
    v64 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v75 = v72;
    *v62 = 136315650;
    sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0]);
    v65 = sub_22A4DE5CC();
    v67 = v66;
    (*(v6 + 8))(v61, v63);
    v68 = sub_2295A3E30(v65, v67, &v75);

    *(v62 + 4) = v68;
    *(v62 + 12) = 2080;
    *(v62 + 14) = sub_2295A3E30(0xD00000000000002FLL, 0x800000022A58C720, &v75);
    *(v62 + 22) = 2112;
    *(v62 + 24) = v57;
    *v64 = v57;
    v69 = v57;
    _os_log_impl(&dword_229538000, v58, v59, "[%s]%s Log event %@", v62, 0x20u);
    sub_22953EAE4(v64, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v64, -1, -1);
    v70 = v72;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v70, -1, -1);
    MEMORY[0x22AAD4E50](v62, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v53, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_22A576190;
  *(v71 + 32) = v57;
  swift_unknownObjectRelease();

  return v71;
}

uint64_t sub_2295F0324(id *a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = [*a1 uuid];
  if (v21)
  {
    v22 = v21;
    sub_22A4DB79C();

    v23 = *(v5 + 56);
    v23(v20, 0, 1, v4);
  }

  else
  {
    v23 = *(v5 + 56);
    v23(v20, 1, 1, v4);
  }

  (*(v5 + 16))(v18, a2, v4);
  v23(v18, 0, 1, v4);
  v24 = *(v8 + 48);
  sub_2295F2274(v20, v11);
  sub_2295F2274(v18, &v11[v24]);
  v25 = *(v5 + 48);
  if (v25(v11, 1, v4) != 1)
  {
    v27 = v32;
    sub_2295F2274(v11, v32);
    if (v25(&v11[v24], 1, v4) != 1)
    {
      v28 = v31;
      (*(v5 + 32))(v31, &v11[v24], v4);
      sub_2295F22E4(&qword_281403870, MEMORY[0x277CC95F0]);
      v26 = sub_22A4DD58C();
      v29 = *(v5 + 8);
      v29(v28, v4);
      sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
      sub_22953EAE4(v20, &unk_27D87D2A0, &unk_22A578BD0);
      v29(v32, v4);
      sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
      return v26 & 1;
    }

    sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v20, &unk_27D87D2A0, &unk_22A578BD0);
    (*(v5 + 8))(v27, v4);
    goto LABEL_9;
  }

  sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v20, &unk_27D87D2A0, &unk_22A578BD0);
  if (v25(&v11[v24], 1, v4) != 1)
  {
LABEL_9:
    sub_22953EAE4(v11, &qword_27D87DBA0, &qword_22A57A158);
    v26 = 0;
    return v26 & 1;
  }

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_2295F07B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DB74C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2295EF754())
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v14 = sub_22A4DD07C();
    __swift_project_value_buffer(v14, qword_27D87DAF0);
    (*(v10 + 16))(v13, a2, v9);
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCCC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = a2;
      v38 = v18;
      v19 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2295A3E30(0xD000000000000021, 0x800000022A58C7C0, &v38);
      *(v17 + 12) = 2080;
      sub_2295F22E4(&qword_281403890, MEMORY[0x277CC9578]);
      v20 = sub_22A4DE5CC();
      v22 = v21;
      (*(v10 + 8))(v13, v9);
      v23 = sub_2295A3E30(v20, v22, &v38);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_229538000, v15, v16, "%s from date %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v33 = sub_22A4DBEAC();
    v35 = v34;

    if (v35)
    {
      return 0;
    }

    else
    {
      return v33;
    }
  }

  else
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v24 = sub_22A4DD07C();
    __swift_project_value_buffer(v24, qword_27D87DAF0);
    (*(v5 + 16))(v8, a1, v4);
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315394;
      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0]);
      v29 = sub_22A4DE5CC();
      v31 = v30;
      (*(v5 + 8))(v8, v4);
      v32 = sub_2295A3E30(v29, v31, &v38);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A58C7C0, &v38);
      _os_log_impl(&dword_229538000, v25, v26, "[%s]%s Counter group is nil", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return 0;
  }
}

uint64_t sub_2295F120C()
{
  v0 = sub_22A4DB74C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  return (*(v1 + 8))(v4, v0);
}

id sub_2295F1304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CleanEnergyAutomationConfigurationLogEventFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2295F13B8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DCD0C();
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v2);
  v87 = &v83[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22A4DB7DC();
  v94 = *(v5 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v92 = &v83[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v83[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v83[-v19];
  sub_229785E38();
  v21 = v0;
  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCCC();

  v24 = os_log_type_enabled(v22, v23);
  v91 = v8;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v90 = v9;
    v26 = v25;
    v27 = swift_slowAlloc();
    v93 = ObjectType;
    v85 = v27;
    v98[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_2295A3E30(0xD000000000000029, 0x800000022A58C790, v98);
    *(v26 + 12) = 2080;
    v28 = [v21 uuid];
    v84 = v23;
    v29 = v28;
    sub_22A4DB79C();

    sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0]);
    v30 = sub_22A4DE5CC();
    v31 = v14;
    v32 = v10;
    v34 = v33;
    (*(v94 + 8))(v8, v5);
    v35 = sub_2295A3E30(v30, v34, v98);
    v10 = v32;
    v14 = v31;

    *(v26 + 14) = v35;
    _os_log_impl(&dword_229538000, v22, v84, "%s Fetching climate accessory endpoint settings for accessory %s", v26, 0x16u);
    v36 = v85;
    swift_arrayDestroy();
    ObjectType = v93;
    MEMORY[0x22AAD4E50](v36, -1, -1);
    v37 = v26;
    v9 = v90;
    MEMORY[0x22AAD4E50](v37, -1, -1);
  }

  v38 = *(v10 + 8);
  v38(v20, v9);
  v39 = [v21 matterAdapter];
  if (!v39)
  {
    goto LABEL_8;
  }

  v40 = v39;
  v41 = [v39 matterDevice];
  if (!v41)
  {

LABEL_8:
    v90 = v38;
    v46 = v92;
    sub_229785E38();
    v47 = v21;
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCEC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v89 = v10;
      v51 = v50;
      v52 = swift_slowAlloc();
      v98[0] = v52;
      *v51 = 136315394;
      *(v51 + 4) = sub_2295A3E30(0xD000000000000029, 0x800000022A58C790, v98);
      *(v51 + 12) = 2080;
      v53 = [v47 uuid];
      v54 = v91;
      sub_22A4DB79C();

      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0]);
      v55 = sub_22A4DE5CC();
      v57 = v56;
      (*(v94 + 8))(v54, v5);
      v58 = sub_2295A3E30(v55, v57, v98);

      *(v51 + 14) = v58;
      _os_log_impl(&dword_229538000, v48, v49, "%s [%s] Missing matter device", v51, 0x16u);
      v75 = 2;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v51, -1, -1);

      v90(v46, v9);
      return v75;
    }

    v90(v46, v9);
    return 2;
  }

  v42 = v41;
  v96 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
  v97 = MEMORY[0x277D17450];
  *&v95 = v42;
  sub_229557188(&v95, v98);
  v43 = [v21 alvaradoMatterEndpoint];
  v93 = ObjectType;
  if (!v43)
  {
    v92 = v5;
    v90 = v9;
    v59 = v86;
    sub_229785E38();
    v60 = v21;
    v61 = sub_22A4DD05C();
    v62 = sub_22A4DDCEC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v89 = v10;
      v64 = v63;
      v88 = swift_slowAlloc();
      *&v95 = v88;
      *v64 = 136315394;
      *(v64 + 4) = sub_2295A3E30(0xD000000000000029, 0x800000022A58C790, &v95);
      *(v64 + 12) = 2080;
      v65 = [v60 uuid];
      v66 = v91;
      sub_22A4DB79C();

      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0]);
      v67 = v92;
      v68 = sub_22A4DE5CC();
      v70 = v69;
      (*(v94 + 8))(v66, v67);
      v71 = sub_2295A3E30(v68, v70, &v95);

      *(v64 + 14) = v71;
      _os_log_impl(&dword_229538000, v61, v62, "%s [%s] Found no Alvarado-capable endpoint", v64, 0x16u);
      v72 = v88;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v72, -1, -1);
      MEMORY[0x22AAD4E50](v64, -1, -1);

      v73 = v86;
    }

    else
    {

      v73 = v59;
    }

    v76 = v90;
    v38(v73, v90);
    v77 = [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v98);
    sub_229785E38();
    v78 = sub_22A4DD05C();
    v79 = sub_22A4DDCEC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v98[0] = v81;
      *v80 = 136315138;
      *(v80 + 4) = sub_2295A3E30(0xD000000000000029, 0x800000022A58C790, v98);
      _os_log_impl(&dword_229538000, v78, v79, "%s Failed to fetch clean energy automation configuration", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AAD4E50](v81, -1, -1);
      MEMORY[0x22AAD4E50](v80, -1, -1);
    }

    v38(v14, v76);
    return 2;
  }

  v44 = v43;
  [v43 unsignedShortValue];
  v45 = v87;
  sub_22A4DCCEC();
  v74 = sub_22A4DCBFC();

  (*(v88 + 8))(v45, v89);
  __swift_destroy_boxed_opaque_existential_0(v98);
  return v74 & 1;
}

id sub_2295F1E5C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 hapAccessories];
  if (result)
  {
    v12 = result;
    v40 = a2;
    v41 = a3;
    v42 = v10;
    v43 = v7;
    v44 = v6;
    sub_229562F68(0, &qword_281401B70, off_278666148);
    v13 = sub_22A4DD83C();

    v46 = MEMORY[0x277D84F90];
    if (v13 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AAD13F0](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v19 = [v16 supportsCleanEnergyAutomation];
        v20 = [v19 BOOLValue];

        if (v20)
        {
          sub_22A4DE27C();
          v21 = *(v46 + 16);
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
        }

        else
        {
        }

        ++v15;
        if (v18 == i)
        {
          v22 = v46;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_19:

    if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
    {
      goto LABEL_36;
    }

    v23 = *(v22 + 16);
    if (v23)
    {
LABEL_22:
      if (v23 < 1)
      {
        __break(1u);
        goto LABEL_40;
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x22AAD13F0](v27, v22);
        }

        else
        {
          v28 = *(v22 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = sub_2295F13B8();

        if (v30 != 2)
        {
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_35;
          }

          if ((v30 & 1) != 0 && __OFADD__(v24++, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            result = sub_22A4DE0EC();
            v23 = result;
            if (!result)
            {
              break;
            }

            goto LABEL_22;
          }

          ++v26;
        }

        if (v23 == ++v27)
        {
          goto LABEL_38;
        }
      }
    }

    v24 = 0;
    v25 = 0;
LABEL_38:

    v33 = v42;
    v32 = v43;
    v34 = v44;
    (*(v43 + 16))(v42, v40, v44);
    v35 = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
    v36 = objc_allocWithZone(v35);
    v37 = &v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName];
    *v37 = 0xD000000000000034;
    v37[1] = 0x800000022A58C750;
    *&v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
    *&v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount] = v25;
    *&v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount] = v24;
    v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeConnectedToUtility] = 0;
    v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeElectricityRatesEnabled] = 0;
    *&v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount] = v41;
    v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] = 1;
    v38 = sub_22A4DB77C();
    v45.receiver = v36;
    v45.super_class = v35;
    v39 = objc_msgSendSuper2(&v45, sel_initWithHomeUUID_, v38);

    (*(v32 + 8))(v33, v34);
    return v39;
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_2295F2274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295F22E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2295F232C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x22AAD13F0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
    if (swift_dynamicCastClass())
    {
      v5 = sub_229722C64();

      return v5;
    }

LABEL_9:
    if (qword_27D87B8F0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D87DAF0);

  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v8, v9))
  {
LABEL_17:

    return 0;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v14 = v12;
  *v10 = 136315394;
  result = sub_2295A3E30(0xD000000000000016, 0x800000022A58C940, &v14);
  *(v10 + 4) = result;
  *(v10 + 12) = 2112;
  if (!v2)
  {
    v13 = 0;
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x22AAD13F0](0, a1);
    goto LABEL_16;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a1 + 32);
LABEL_16:
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_229538000, v8, v9, "%s Failed to cast log event: %@ to CleanEnergyAutomationConfigurationLogEvent", v10, 0x16u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2295F25A8(uint64_t a1)
{
  v1 = sub_22976EEB8(a1);
  if (v1 && (v2 = v1, type metadata accessor for CleanEnergyAutomationConfigurationLogEvent(), (v3 = sub_2297220F4(v2)) != 0))
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    result = swift_allocObject();
    *(result + 16) = xmmword_22A576190;
    *(result + 32) = v4;
  }

  else
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D87DAF0);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2295A3E30(0xD000000000000010, 0x800000022A58C920, &v11);
      _os_log_impl(&dword_229538000, v7, v8, "%s Failed to create CleanEnergyAutomationConfigurationLogEvent from dictionary", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2295F2740(unint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_20:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v7 = sub_22A4DE0EC();
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x22AAD09E0]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    v9 = v55;
  }

  while (v8 != v7);
LABEL_21:
  if (!(v9 >> 62))
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_53:

    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v44 = sub_22A4DD07C();
    __swift_project_value_buffer(v44, qword_27D87DAF0);

    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_2295A3E30(0xD000000000000022, 0x800000022A58C8F0, &v55);
      *(v26 + 12) = 2080;
      v45 = sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
      v46 = MEMORY[0x22AAD0A20](a1, v45);
      v48 = sub_2295A3E30(v46, v47, &v55);

      *(v26 + 14) = v48;
      v32 = "%s No CleanEnergyAutomationConfigurationLogEvent found in sourceLogEvents %s";
LABEL_57:
      _os_log_impl(&dword_229538000, v24, v25, v32, v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    goto LABEL_58;
  }

LABEL_52:
  v14 = sub_22A4DE0EC();
  if (!v14)
  {
    goto LABEL_53;
  }

LABEL_23:
  v50 = v4;
  v51 = v3;
  v15 = 0;
  v16 = v9 & 0xC000000000000001;
  v4 = v9 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v16)
    {
      v17 = MEMORY[0x22AAD13F0](v15, v9);
    }

    else
    {
      if (v15 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v17 = *(v9 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v17[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] == 1)
    {
      a1 = 0;
      v20 = 0;
      while (v14 != a1)
      {
        if (v16)
        {
          v21 = MEMORY[0x22AAD13F0](a1, v9);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (a1 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v21 = *(v9 + 8 * a1 + 32);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_50;
          }
        }

        v3 = *&v21[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount];

        ++a1;
        v22 = __OFADD__(v20, v3);
        v20 += v3;
        if (v22)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      v33 = v50;
      v34 = v53;
      (*(v50 + 16))(v53, v52, v51);
      v35 = *&v18[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount];
      v36 = *&v18[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount];
      v37 = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
      v38 = objc_allocWithZone(v37);
      v39 = &v38[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName];
      *v39 = 0xD000000000000034;
      v39[1] = 0x800000022A58C750;
      *&v38[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
      *&v38[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount] = v35;
      *&v38[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount] = v36;
      v38[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeConnectedToUtility] = 0;
      v38[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeElectricityRatesEnabled] = 0;
      *&v38[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount] = v20;
      v38[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] = 0;
      v40 = sub_22A4DB77C();
      v54.receiver = v38;
      v54.super_class = v37;
      v41 = objc_msgSendSuper2(&v54, sel_initWithHomeUUID_, v40);

      (*(v33 + 8))(v34, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_22A576190;
      *(v42 + 32) = v41;

      return v42;
    }

    ++v15;
  }

  while (v19 != v14);
LABEL_43:

  if (qword_27D87B8F0 != -1)
  {
    swift_once();
  }

  v23 = sub_22A4DD07C();
  __swift_project_value_buffer(v23, qword_27D87DAF0);

  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCEC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v55 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_2295A3E30(0xD000000000000022, 0x800000022A58C8F0, &v55);
    *(v26 + 12) = 2080;
    v28 = sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
    v29 = MEMORY[0x22AAD0A20](a1, v28);
    v31 = sub_2295A3E30(v29, v30, &v55);

    *(v26 + 14) = v31;
    v32 = "%s Missing CleanEnergyAutomationConfigurationLogEvent from primary resident in sourceLogEvents %s";
    goto LABEL_57;
  }

LABEL_58:

  return MEMORY[0x277D84F90];
}

uint64_t sub_2295F2E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA8, &qword_22A57A160);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 16))(v6, a1, v2);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v6, v2);
  sub_22957F3C0(0, 0, v10, &unk_22A57A170, v13);
  return sub_22A4DD9FC();
}

uint64_t sub_2295F3068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_22A4DDE4C();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB8, &qword_22A57A178);
  v4[14] = v9;
  v10 = *(v9 - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F31C8, 0, 0);
}

uint64_t sub_2295F31C8()
{
  v1 = [objc_opt_self() sharedManager];
  *(v0 + 136) = v1;
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x277D0F768];
  *(v0 + 144) = sub_22A4DDE5C();

  v4 = [v1 currentNetworkAssociation];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 SSID];
    v7 = sub_22A4DD5EC();
    v9 = v8;

    v10 = [v5 requiresPassword];
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v15 = *(v0 + 72);
  *(v0 + 16) = v7;
  *(v0 + 24) = v9;
  *(v0 + 32) = v10;

  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA8, &qword_22A57A160);
  sub_22A4DDA0C();
  v16 = *(v11 + 8);
  *(v0 + 160) = v16;
  *(v0 + 168) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v13);

  sub_22A4DDE3C();
  *(v0 + 33) = v10;
  *(v0 + 176) = v7;
  *(v0 + 184) = v9;
  v17 = sub_2295F39B0();
  v18 = *(MEMORY[0x277D856D0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 192) = v19;
  *v19 = v0;
  v19[1] = sub_2295F33F8;
  v20 = *(v0 + 104);
  v21 = *(v0 + 80);
  v22 = *(v0 + 88);

  return MEMORY[0x282200308](v21, v22, v17);
}

uint64_t sub_2295F33F8()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_2295F3804;
  }

  else
  {
    v3 = sub_2295F350C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295F3528()
{
  v1 = *(v0 + 80);
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 184);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = *(v0 + 72);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    sub_22A4DDA1C();

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = [*(v0 + 136) currentNetworkAssociation];
  v12 = *(v0 + 184);
  if (!v11)
  {
    v15 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v13 = v11;
  v14 = [v11 SSID];
  v15 = sub_22A4DD5EC();
  v17 = v16;

  v18 = [v13 requiresPassword];
  if (v12)
  {
    v19 = *(v0 + 33);
    if (v15 != *(v0 + 176) || *(v0 + 184) != v17)
    {
      v21 = *(v0 + 184);
      if (sub_22A4DE60C() & 1) == 0 || ((v18 ^ v19))
      {
        goto LABEL_17;
      }

LABEL_18:

      goto LABEL_19;
    }

    if (v18 == v19)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = *(v0 + 184);
  v23 = *(v0 + 160);
  v34 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = *(v0 + 128);
  v26 = *(v0 + 112);
  v27 = *(v0 + 72);
  *(v0 + 40) = v15;
  *(v0 + 48) = v17;
  *(v0 + 56) = v18;

  sub_22A4DDA0C();

  v23(v25, v26);
LABEL_19:
  sub_2295F3A08(*(v0 + 80));
  *(v0 + 33) = v18;
  *(v0 + 176) = v15;
  *(v0 + 184) = v17;
  v28 = sub_2295F39B0();
  v29 = *(MEMORY[0x277D856D0] + 4);
  v30 = swift_task_alloc();
  *(v0 + 192) = v30;
  *v30 = v0;
  v30[1] = sub_2295F33F8;
  v31 = *(v0 + 104);
  v32 = *(v0 + 80);
  v33 = *(v0 + 88);

  return MEMORY[0x282200308](v32, v33, v28);
}

uint64_t sub_2295F3804()
{
  *(v0 + 64) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2295F3890(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA8, &qword_22A57A160) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2295F3068(a1, v6, v7, v1 + v5);
}

unint64_t sub_2295F39B0()
{
  result = qword_27D87DBC0;
  if (!qword_27D87DBC0)
  {
    sub_22A4DDE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DBC0);
  }

  return result;
}

uint64_t sub_2295F3A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295F3A70(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v30 = *a1;
  v6 = *(a1 + 32);
  v31 = v5;
  v32 = v6;
  v33 = *(a1 + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCA0, &qword_22A57A3B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24[-v9 - 8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCA8, &qword_22A57A3B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-v14 - 8];
  KeyPath = swift_getKeyPath();
  v17 = sub_22956ECE8(KeyPath, a2);

  if (v17 & 1) != 0 || (v18 = swift_getKeyPath(), v19 = sub_22956ECE8(v18, a2), result = , (v19))
  {
    sub_229564F88(v2 + OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_continuation, v10, &qword_27D87DCA0, &qword_22A57A3B0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC08, &qword_22A57A1A0);
    v22 = *(v21 - 8);
    result = (*(v22 + 48))(v10, 1, v21);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v25 = v30;
      v26 = v31;
      v27 = v32;
      v28 = v33;
      v29 = a2;
      sub_2295F59D4(a1, v24);

      sub_22A4DDA0C();
      (*(v12 + 8))(v15, v11);
      return (*(v22 + 8))(v10, v21);
    }
  }

  return result;
}

uint64_t sub_2295F3CF4()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_events;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC90, &qword_22A57A3A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_continuation, &qword_27D87DCA0, &qword_22A57A3B0);
  v3 = OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_uuid;
  v4 = sub_22A4DB7DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2295F3E24()
{
  sub_2295F3F80(319, &qword_27D87DBF0, &qword_27D87DBF8, "zc\b", MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2295F3F80(319, &qword_27D87DC00, &qword_27D87DC08, &qword_22A57A1A0, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_22A4DB7DC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2295F3F80(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2295F3FE4()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295F5810(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295F4084()
{
  v1 = *v0;
  sub_22A4DB7DC();
  sub_2295F5810(&qword_281403880, MEMORY[0x277CC95F0]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295F410C()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295F5810(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295F41A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_22A4DB78C();
}

uint64_t sub_2295F41C4()
{
  v1 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_observationTask;
  if (*(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_observationTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_observationTask);

    sub_22A4DDA7C();
  }

  v3 = *(v0 + 112);

  sub_2295F5E68(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_controlBlock, _s20ControlBlockInternalVMa);
  MEMORY[0x22AAD4F90](v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_home);
  v4 = *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_deviceMediaStateObserver);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_deviceMediaStateAdapter);

  v6 = *(v0 + v1);

  v7 = *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_runningTask);

  v8 = *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_description + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2295F42C0()
{
  sub_2295F41C4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2295F4314()
{
  result = _s20ControlBlockInternalVMa();
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

uint64_t sub_2295F43E8(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_229564F88(a1, v8, &unk_27D881FF0, &qword_22A57A380);
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  sub_2295F5AFC(v8, v16 + v15);
  *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v17 = sub_22957F3C0(0, 0, v12, &unk_22A57A398, v16);
  v18 = *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_observationTask);
  *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_observationTask) = v17;
}

uint64_t sub_2295F4624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[38] = a5;
  v6[39] = a6;
  v6[37] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC88, &qword_22A57A3A0);
  v6[40] = v7;
  v8 = *(v7 - 8);
  v6[41] = v8;
  v9 = *(v8 + 64) + 15;
  v6[42] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC90, &qword_22A57A3A8);
  v6[43] = v10;
  v11 = *(v10 - 8);
  v6[44] = v11;
  v12 = *(v11 + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v13 = sub_22A4DD07C();
  v6[47] = v13;
  v14 = *(v13 - 8);
  v6[48] = v14;
  v15 = *(v14 + 64) + 15;
  v6[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F47C4, 0, 0);
}

uint64_t sub_2295F47C4()
{
  v1 = v0[37];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[37];
    v0[50] = *(Strong + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_deviceMediaStateAdapter);

    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      v5 = v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_deviceMediaStateObserver;
      v0[51] = *(v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_deviceMediaStateObserver);
      v6 = *(v5 + 8);
      swift_unknownObjectRetain();

      swift_getObjectType();
      v7 = *(v6 + 16);

      v9 = sub_22A4DD8CC();

      return MEMORY[0x2822009F8](sub_2295F4958, v9, v8);
    }
  }

  v10 = v0[49];
  v11 = v0[45];
  v12 = v0[46];
  v13 = v0[42];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2295F4958()
{
  *(v0 + 440) = sub_2295F5CAC(*(v0 + 400), 1, *(v0 + 408)) & 1;

  return MEMORY[0x2822009F8](sub_2295F49D8, 0, 0);
}

uint64_t sub_2295F49D8()
{
  if (*(v0 + 440))
  {
    v1 = *(v0 + 296);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(v0 + 360);
      v4 = *(v0 + 368);
      v5 = *(v0 + 344);
      v6 = *(v0 + 352);
      v7 = *(v0 + 336);
      v8 = *(v0 + 296);
      v9 = *(Strong + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_deviceMediaStateAdapter);

      (*(v6 + 16))(v3, v9 + OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_events, v5);

      (*(v6 + 32))(v4, v3, v5);
      sub_22A4DDA3C();
      swift_beginAccess();
      v10 = *(MEMORY[0x277D85798] + 4);
      v11 = swift_task_alloc();
      *(v0 + 416) = v11;
      *v11 = v0;
      v11[1] = sub_2295F4CB0;
      v12 = *(v0 + 336);
      v13 = *(v0 + 320);

      return MEMORY[0x2822003E8](v0 + 80, 0, 0, v13);
    }

    v25 = *(v0 + 400);
    v26 = *(v0 + 408);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(v0 + 392);
    sub_229541CB0(*(v0 + 312), &off_283CDDFF0);
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCEC();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 400);
    v18 = *(v0 + 408);
    v21 = *(v0 + 384);
    v20 = *(v0 + 392);
    v22 = *(v0 + 376);
    if (v17)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_229538000, v15, v16, "Unable to add DeviceMediaStateAdapter as an observer", v23, 2u);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      v24 = *(v0 + 400);

      swift_unknownObjectRelease();
    }

    (*(v21 + 8))(v20, v22);
  }

  v27 = *(v0 + 392);
  v28 = *(v0 + 360);
  v29 = *(v0 + 368);
  v30 = *(v0 + 336);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2295F4CB0()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2295F4DAC, 0, 0);
}

uint64_t sub_2295F4DAC()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  v3 = *(v0 + 72);
  *(v0 + 424) = v3;
  if (v3)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v5;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = *(v0 + 64);
    Strong = swift_weakLoadStrong();
    *(v0 + 432) = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_2295F4F30, Strong, 0);
    }

    sub_229588CF8(v0 + 16);
  }

  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 368);
  v10 = *(v0 + 344);
  v11 = *(v0 + 352);
  v13 = *(v0 + 328);
  v12 = *(v0 + 336);
  v14 = *(v0 + 320);
  swift_unknownObjectRelease();

  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v9, v10);
  v15 = *(v0 + 392);
  v16 = *(v0 + 360);
  v17 = *(v0 + 368);
  v18 = *(v0 + 336);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2295F4F30()
{
  v1 = v0[54];
  sub_2295F5064(v0[38], v0 + 18, v0[53]);

  sub_229588CF8((v0 + 2));

  return MEMORY[0x2822009F8](sub_2295F4FB4, 0, 0);
}

uint64_t sub_2295F4FB4()
{
  v1 = v0[54];

  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[52] = v3;
  *v3 = v0;
  v3[1] = sub_2295F4CB0;
  v4 = v0[42];
  v5 = v0[40];

  return MEMORY[0x2822003E8](v0 + 10, 0, 0, v5);
}

void sub_2295F5064(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v42 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0E8, &qword_22A57A370);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v40 - v9;
  v10 = sub_22A4DD07C();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC78, &qword_22A57A378);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  v18 = _s24AppleMediaAccessoryStateO5EventVMa();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = v10;
    v27 = Strong;
    sub_2295F59D4(a2, v49);

    sub_229586D58(v27, a2, a3, v17);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {

      sub_22953EAE4(v17, &qword_27D87DC78, &qword_22A57A378);
    }

    else
    {
      sub_2295F5A30(v17, v25);
      v28 = v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_controlBlock;
      swift_beginAccess();
      if (v28[*(_s20ControlBlockInternalVMa() + 20)] == 1)
      {
        sub_229541CB0(v42, &off_283CDDFF0);
        sub_2295F5A94(v25, v23, _s24AppleMediaAccessoryStateO5EventVMa);

        v29 = sub_22A4DD05C();
        v30 = sub_22A4DDCDC();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v49[0] = v42;
          *v31 = 136315394;
          *(v31 + 4) = sub_2295A3E30(*(v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_description), *(v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_description + 8), v49);
          *(v31 + 12) = 2080;
          v32 = sub_229890C68();
          v34 = v33;
          sub_2295F5E68(v23, _s24AppleMediaAccessoryStateO5EventVMa);
          v35 = sub_2295A3E30(v32, v34, v49);

          *(v31 + 14) = v35;
          _os_log_impl(&dword_229538000, v29, v30, "%s received event: %s", v31, 0x16u);
          v36 = v42;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v36, -1, -1);
          MEMORY[0x22AAD4E50](v31, -1, -1);
        }

        else
        {

          sub_2295F5E68(v23, _s24AppleMediaAccessoryStateO5EventVMa);
        }

        (*(v43 + 8))(v13, v41);
        v49[3] = v18;
        v49[4] = sub_2295F5810(&qword_27D87DC80, _s24AppleMediaAccessoryStateO5EventVMa);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
        sub_2295F5A94(v25, boxed_opaque_existential_1, _s24AppleMediaAccessoryStateO5EventVMa);
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) + 28);
        sub_22957F1C4(v49, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
        v39 = v44;
        sub_22A4DDA0C();

        (*(v45 + 8))(v39, v46);
        sub_2295F5E68(v25, _s24AppleMediaAccessoryStateO5EventVMa);
        __swift_destroy_boxed_opaque_existential_0(v49);
      }

      else
      {
        sub_2295F5E68(v25, _s24AppleMediaAccessoryStateO5EventVMa);
      }
    }
  }
}

uint64_t sub_2295F5664@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_controlBlock;
  swift_beginAccess();
  return sub_2295F5A94(v1 + v3, a1, _s20ControlBlockInternalVMa);
}

uint64_t sub_2295F5730()
{
  v1 = (*v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_description);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2295F578C(uint64_t a1)
{
  *(a1 + 16) = sub_2295F5810(&qword_27D87DC48, _s8ObserverCMa_0);
  result = sub_2295F5810(&qword_27D87DC50, _s8ObserverCMa_0);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_2295F5810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2295F5858(uint64_t a1)
{
  result = sub_2295F5810(&qword_27D87DC50, _s8ObserverCMa_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2295F58B0(uint64_t a1)
{
  *(a1 + 8) = sub_2295F5810(&qword_27D87DC58, _s8ObserverCMa_0);
  result = sub_2295F5810(&qword_27D87DC60, _s8ObserverCMa_0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2295F597C(uint64_t a1)
{
  result = sub_2295F5810(&qword_27D87DC70, type metadata accessor for DeviceMediaStateAdapter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2295F5A30(uint64_t a1, uint64_t a2)
{
  v4 = _s24AppleMediaAccessoryStateO5EventVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295F5A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295F5AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295F5B6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_229569B30;

  return sub_2295F4624(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_2295F5CAC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_2295F5810(&qword_27D87DC98, type metadata accessor for DeviceMediaStateAdapter);
  swift_getObjectType();
  *&v25[0] = a1;
  swift_beginAccess();
  v7 = *(v6 + 8);
  swift_unknownObjectRetain();
  v8 = sub_22A4DDBCC();
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v8 & 1) != 0 && (a2)
  {
    LOBYTE(v25[0]) = 1;
    v16 = 0u;
    v17 = 0u;
    LODWORD(v18) = 0;
    BYTE4(v18) = 1;
    *(&v18 + 1) = 0;
    v19 = 0;
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    v22 = 1;
    v23 = 0;
    v24 = 0;
    sub_2295F59D4(&v16, v27);
    sub_229588CF8(v20);
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v9 = *(a3 + 128);
    v27[0] = *(a3 + 112);
    v27[1] = v9;
    v27[2] = *(a3 + 144);
    v28 = *(a3 + 160);
    sub_2295F59D4(v27, v25);
    v10 = sub_22972336C(v27);
    sub_229588CF8(v27);
    v25[0] = v12;
    v25[1] = v13;
    v25[2] = v14;
    v26 = v15;
    sub_2295F3A70(v25, v10);
    sub_229588CF8(v25);
  }

  return v8 & 1;
}

uint64_t sub_2295F5E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2295F5EC8()
{
  v0 = sub_22A4DD25C();
  __swift_allocate_value_buffer(v0, qword_2814017D0);
  *__swift_project_value_buffer(v0, qword_2814017D0) = 2;
  v1 = *MEMORY[0x277D85188];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_2295F5FE4(os_unfair_lock_s *a1)
{
  v2 = v1;
  v93 = a1;
  v3 = sub_22A4DD07C();
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v83 = &v80 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v84 = &v80 - v11;
  MEMORY[0x28223BE20](v10);
  v90 = &v80 - v12;
  v13 = sub_22A4DD2CC();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v80 - v17;
  v18 = sub_22A4DB7DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v80 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v80 - v27;
  v85 = v2;
  v29 = [objc_msgSend(v2 dataSource)];
  swift_unknownObjectRelease();
  if (!v29 || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DB80, &qword_22A57A150), v30 = sub_22A4DD83C(), v29, MEMORY[0x28223BE20](v31), *(&v80 - 2) = v93, v32 = sub_229685214(sub_2295F86BC, &(&v80)[-1], v30), , !v32))
  {
    v56 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v57 = v19;
    v58 = *(v19 + 16);
    v59 = v18;
    v58(v22, v93, v18);
    v60 = sub_22A4DD05C();
    v61 = sub_22A4DDCEC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v94 = v63;
      *v62 = 136315394;
      *(v62 + 4) = sub_2295A3E30(0xD00000000000002FLL, 0x800000022A58C720, &v94);
      *(v62 + 12) = 2080;
      sub_2295FB2E8(&qword_281403860, MEMORY[0x277CC95F0]);
      v64 = sub_22A4DE5CC();
      v66 = v65;
      (*(v57 + 8))(v22, v59);
      v67 = sub_2295A3E30(v64, v66, &v94);

      *(v62 + 14) = v67;
      _os_log_impl(&dword_229538000, v60, v61, "%s Unable to find homeDataSource for homeUUID %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);
    }

    else
    {

      (*(v57 + 8))(v22, v18);
    }

    (*(v91 + 8))(v7, v92);
    return 0;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v80 = (v33 + 16);
  *(v33 + 24) = 0;
  v81 = dispatch_group_create();
  dispatch_group_enter(v81);
  v34 = sub_22A4DD9DC();
  v35 = *(*(v34 - 8) + 56);
  v82 = v28;
  v35(v28, 1, 1, v34);
  (*(v19 + 16))(v24, v93, v18);
  v36 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v37 = (v20 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  v39 = v85;
  *(v38 + 4) = v85;
  *(v38 + 5) = v32;
  (*(v19 + 32))(&v38[v36], v24, v18);
  *&v38[v37] = v33;
  v40 = v81;
  *&v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8] = v81;
  v41 = v33;
  v42 = v39;

  v43 = v40;
  swift_unknownObjectRetain();
  sub_22957F3C0(0, 0, v82, &unk_22A57A410, v38);

  v44 = v86;
  sub_22A4DD2AC();
  if (qword_2814017C8 != -1)
  {
    swift_once();
  }

  v45 = sub_22A4DD25C();
  __swift_project_value_buffer(v45, qword_2814017D0);
  v46 = v87;
  sub_22A4DD2BC();
  v47 = v89;
  v48 = *(v88 + 8);
  v48(v44, v89);
  v49 = sub_22A4DDD3C();
  v48(v46, v47);
  v50 = v90;
  if (v49)
  {
    v51 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCEC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "Timed out collecting event";
LABEL_18:
      _os_log_impl(&dword_229538000, v52, v53, v55, v54, 2u);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      swift_unknownObjectRelease();

LABEL_20:
      (*(v91 + 8))(v50, v92);

      return 0;
    }

    goto LABEL_19;
  }

  v68 = v80;
  os_unfair_lock_lock(v80);
  v69 = *(v41 + 24);
  v70 = v69;
  os_unfair_lock_unlock(v68);
  v71 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (!v69)
  {
    v50 = v83;
    sub_22A4DD06C();
    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCEC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "Finished collecting but returned event is nil";
      goto LABEL_18;
    }

LABEL_19:

    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  sub_22A4DD06C();
  v72 = v70;
  v73 = sub_22A4DD05C();
  v74 = sub_22A4DDD0C();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v75 = 138412290;
    *(v75 + 4) = v72;
    *v76 = v69;
    v77 = v72;
    _os_log_impl(&dword_229538000, v73, v74, "Finished collecting %@", v75, 0xCu);
    sub_22953EAE4(v76, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v76, -1, -1);
    MEMORY[0x22AAD4E50](v75, -1, -1);
  }

  (*(v91 + 8))(v84, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_22A576190;
  *(v78 + 32) = v72;
  swift_unknownObjectRelease();

  return v78;
}

uint64_t sub_2295F6A24(id *a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = [*a1 uuid];
  if (v21)
  {
    v22 = v21;
    sub_22A4DB79C();

    v23 = *(v5 + 56);
    v23(v20, 0, 1, v4);
  }

  else
  {
    v23 = *(v5 + 56);
    v23(v20, 1, 1, v4);
  }

  (*(v5 + 16))(v18, a2, v4);
  v23(v18, 0, 1, v4);
  v24 = *(v8 + 48);
  sub_2295F2274(v20, v11);
  sub_2295F2274(v18, &v11[v24]);
  v25 = *(v5 + 48);
  if (v25(v11, 1, v4) != 1)
  {
    v27 = v32;
    sub_2295F2274(v11, v32);
    if (v25(&v11[v24], 1, v4) != 1)
    {
      v28 = v31;
      (*(v5 + 32))(v31, &v11[v24], v4);
      sub_2295FB2E8(&qword_281403870, MEMORY[0x277CC95F0]);
      v26 = sub_22A4DD58C();
      v29 = *(v5 + 8);
      v29(v28, v4);
      sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
      sub_22953EAE4(v20, &unk_27D87D2A0, &unk_22A578BD0);
      v29(v32, v4);
      sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
      return v26 & 1;
    }

    sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v20, &unk_27D87D2A0, &unk_22A578BD0);
    (*(v5 + 8))(v27, v4);
    goto LABEL_9;
  }

  sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v20, &unk_27D87D2A0, &unk_22A578BD0);
  if (v25(&v11[v24], 1, v4) != 1)
  {
LABEL_9:
    sub_22953EAE4(v11, &qword_27D87DBA0, &qword_22A57A158);
    v26 = 0;
    return v26 & 1;
  }

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_2295F6EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_2295F6F6C;

  return (sub_2295FA8BC)(a5, a6);
}

uint64_t sub_2295F6F6C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2295F706C, 0, 0);
}

uint64_t sub_2295F706C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  os_unfair_lock_lock((v3 + 16));

  *(v3 + 24) = v1;
  v4 = v1;
  os_unfair_lock_unlock((v3 + 16));
  dispatch_group_leave(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2295F72F4()
{
  v1[17] = v0;
  v1[18] = swift_getObjectType();
  v2 = sub_22A4DCD0C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_22A4DB7DC();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v8 = sub_22A4DD07C();
  v1[26] = v8;
  v9 = *(v8 - 8);
  v1[27] = v9;
  v10 = *(v9 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F74A8, 0, 0);
}

uint64_t sub_2295F74A8()
{
  v121 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_229785E38();
  v4 = v3;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 248);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  if (v7)
  {
    v117 = *(v0 + 248);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 184);
    v14 = *(v0 + 136);
    v15 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v120[0] = v114;
    *v15 = 136315394;
    *(v15 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, v120);
    *(v15 + 12) = 2080;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_2295FB2E8(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v111 = v9;
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_2295A3E30(v17, v19, v120);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_229538000, v5, v6, "%s Fetching climate thermostat endpoint settings for thermostat %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v114, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    v21 = *(v10 + 8);
    v21(v117, v111);
  }

  else
  {

    v21 = *(v10 + 8);
    v21(v8, v9);
  }

  *(v0 + 256) = v21;
  v22 = [*(v0 + 136) matterAdapter];
  *(v0 + 264) = v22;
  if (v22)
  {
    v23 = v22;
    v24 = [v22 matterDevice];
    if (v24)
    {
      v25 = v24;
      v26 = *(v0 + 136);
      v27 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
      v28 = MEMORY[0x277D17450];
      *(v0 + 80) = v27;
      *(v0 + 88) = v28;
      *(v0 + 56) = v25;
      sub_229557188((v0 + 56), v0 + 16);
      v29 = [v26 valenciaMatterEndpoint];
      *(v0 + 272) = v29;
      if (v29)
      {
        v31 = *(v0 + 168);
        v30 = *(v0 + 176);
        v32 = *(v0 + 152);
        v33 = *(v0 + 160);
        v34 = *(v0 + 136);
        [v29 unsignedShortValue];
        sub_22A4DCCEC();
        (*(v33 + 16))(v31, v30, v32);
        sub_22957F1C4(v0 + 16, v0 + 96);
        v35 = v34;
        v36 = v23;
        v37 = swift_task_alloc();
        *(v0 + 280) = v37;
        *v37 = v0;
        v37[1] = sub_2295F7EB0;
        v38 = *(v0 + 168);
        v39 = *(v0 + 136);

        return sub_2295FA170(v38, v36, v0 + 96, v39);
      }

      v72 = *(v0 + 240);
      v74 = *(v0 + 136);
      v73 = *(v0 + 144);
      sub_229785E38();
      v75 = v74;
      v76 = sub_22A4DD05C();
      v77 = sub_22A4DDCEC();

      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v0 + 240);
      v80 = *(v0 + 208);
      v81 = *(v0 + 216);
      if (v78)
      {
        v113 = *(v0 + 216);
        v116 = *(v0 + 240);
        v83 = *(v0 + 192);
        v82 = *(v0 + 200);
        v107 = *(v0 + 184);
        v110 = *(v0 + 208);
        v84 = *(v0 + 136);
        v119 = v21;
        v85 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v120[0] = v108;
        *v85 = 136315394;
        *(v85 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, v120);
        *(v85 + 12) = 2080;
        v86 = [v84 uuid];
        sub_22A4DB79C();

        sub_2295FB2E8(&qword_281403860, MEMORY[0x277CC95F0]);
        v87 = sub_22A4DE5CC();
        v89 = v88;
        (*(v83 + 8))(v82, v107);
        v90 = sub_2295A3E30(v87, v89, v120);

        *(v85 + 14) = v90;
        _os_log_impl(&dword_229538000, v76, v77, "%s [%s] Found no Valencia-capable endpoint", v85, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v108, -1, -1);
        MEMORY[0x22AAD4E50](v85, -1, -1);

        v119(v116, v110);
      }

      else
      {

        v21(v79, v80);
      }

      v91 = [objc_opt_self() hmErrorWithCode_];
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v92 = *(v0 + 224);
      v93 = *(v0 + 144);
      sub_229785E38();
      v94 = v91;
      v95 = sub_22A4DD05C();
      v96 = sub_22A4DDCEC();

      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 256);
      v100 = *(v0 + 216);
      v99 = *(v0 + 224);
      v101 = *(v0 + 208);
      if (!v97)
      {

        v98(v99, v101);
        goto LABEL_15;
      }

      v118 = *(v0 + 256);
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v120[0] = v104;
      *v102 = 136315394;
      *(v102 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, v120);
      *(v102 + 12) = 2112;
      v105 = v91;
      v106 = _swift_stdlib_bridgeErrorToNSError();
      *(v102 + 14) = v106;
      *v103 = v106;
      _os_log_impl(&dword_229538000, v95, v96, "%s Failed to fetch climate thermostat endpoint settings %@", v102, 0x16u);
      sub_22953EAE4(v103, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v103, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x22AAD4E50](v104, -1, -1);
      MEMORY[0x22AAD4E50](v102, -1, -1);

      v62 = v99;
      v63 = v101;
      goto LABEL_13;
    }
  }

  v41 = *(v0 + 232);
  v43 = *(v0 + 136);
  v42 = *(v0 + 144);
  sub_229785E38();
  v44 = v43;
  v45 = sub_22A4DD05C();
  v46 = sub_22A4DDCEC();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 232);
  v49 = *(v0 + 208);
  v50 = *(v0 + 216);
  if (!v47)
  {

    v21(v48, v49);
    goto LABEL_15;
  }

  v112 = *(v0 + 216);
  v115 = *(v0 + 232);
  v52 = *(v0 + 192);
  v51 = *(v0 + 200);
  v53 = *(v0 + 184);
  v54 = *(v0 + 136);
  v55 = swift_slowAlloc();
  v118 = v21;
  v120[0] = swift_slowAlloc();
  v56 = v120[0];
  *v55 = 136315394;
  *(v55 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, v120);
  *(v55 + 12) = 2080;
  v57 = [v54 uuid];
  sub_22A4DB79C();

  sub_2295FB2E8(&qword_281403860, MEMORY[0x277CC95F0]);
  v58 = sub_22A4DE5CC();
  v109 = v49;
  v60 = v59;
  (*(v52 + 8))(v51, v53);
  v61 = sub_2295A3E30(v58, v60, v120);

  *(v55 + 14) = v61;
  _os_log_impl(&dword_229538000, v45, v46, "%s [%s] Missing matter device", v55, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAD4E50](v56, -1, -1);
  MEMORY[0x22AAD4E50](v55, -1, -1);

  v62 = v115;
  v63 = v109;
LABEL_13:
  v118(v62, v63);
LABEL_15:
  v65 = *(v0 + 240);
  v64 = *(v0 + 248);
  v67 = *(v0 + 224);
  v66 = *(v0 + 232);
  v68 = *(v0 + 200);
  v70 = *(v0 + 168);
  v69 = *(v0 + 176);

  v71 = *(v0 + 8);

  return v71(2);
}

uint64_t sub_2295F7EB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_2295F80C8;
  }

  else
  {
    *(v4 + 296) = a1;
    v7 = sub_2295F7FD8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2295F7FD8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);

  (*(v5 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v10 = *(v0 + 200);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);

  v13 = *(v0 + 8);

  return v13(v1 & 0xFFFFFFFFFFFFLL);
}

uint64_t sub_2295F80C8()
{
  v32 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *(v0 + 288);
  v6 = *(v0 + 224);
  v7 = *(v0 + 144);
  sub_229785E38();
  v8 = v5;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 256);
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v15 = *(v0 + 208);
  if (v11)
  {
    v30 = *(v0 + 256);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, &v31);
    *(v16 + 12) = 2112;
    v19 = v5;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v20;
    *v17 = v20;
    _os_log_impl(&dword_229538000, v9, v10, "%s Failed to fetch climate thermostat endpoint settings %@", v16, 0x16u);
    sub_22953EAE4(v17, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAD4E50](v18, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);

    v30(v13, v15);
  }

  else
  {

    v12(v13, v15);
  }

  v22 = *(v0 + 240);
  v21 = *(v0 + 248);
  v24 = *(v0 + 224);
  v23 = *(v0 + 232);
  v25 = *(v0 + 200);
  v27 = *(v0 + 168);
  v26 = *(v0 + 176);

  v28 = *(v0 + 8);

  return v28(2);
}

uint64_t sub_2295F835C()
{
  v0 = sub_22A4DB74C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  return (*(v1 + 8))(v4, v0);
}

HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory __swiftcall HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.dataSource = v2;
  result.super.super.isa = v1;
  return result;
}

BOOL sub_2295F84E0()
{
  v0 = sub_22A4DC8EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DC83C();
  sub_2295FB2E8(&qword_27D87C398, MEMORY[0x277D172F0]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  (*(v1 + 8))(v4, v0);
  return v8 == v7;
}

uint64_t sub_2295F8630()
{
  v0 = sub_22A4DC94C();
  v2 = v1;
  v3 = sub_22A4DC82C();
  v5 = v4;
  v6 = sub_2297B7550(v0, v2, v3, v4);
  sub_2295798D4(v3, v5);
  sub_2295798D4(v0, v2);
  return v6 & 1;
}

uint64_t sub_2295F86DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229569B30;

  return sub_2295F6EB4(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_2295F882C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCC8, &qword_22A57A440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22A4DC96C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  v18 = sub_22A4DC85C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_229685338(sub_2295FB2A8, a2, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_22953EAE4(v17, &unk_27D8818D0, &qword_22A57A448);
  }

  else
  {
    v23 = (*(v19 + 32))(v22, v17, v18);
    MEMORY[0x28223BE20](v23);
    *(&v26 - 2) = v22;
    sub_229685364(sub_2295FB2C8, v27, v8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v13, v8, v9);
      v24 = sub_22A4DC95C();
      (*(v10 + 8))(v13, v9);
      (*(v19 + 8))(v22, v18);
      return v24 & 1;
    }

    sub_22953EAE4(v8, &qword_27D87DCC8, &qword_22A57A440);
    (*(v19 + 8))(v22, v18);
  }

  v24 = 0;
  return v24 & 1;
}

uint64_t sub_2295F8BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22A4DD07C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v9 = sub_22A4DC8EC();
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F8CDC, 0, 0);
}

uint64_t sub_2295F8CDC()
{
  v45 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(v2 + 104))(v1, *MEMORY[0x277D172D8], v3);
  *(v0 + 176) = sub_2295F882C(v1, v5, v4) & 1;

  (*(v2 + 8))(v1, v3);
  *(v0 + 120) = sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 88);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2295A3E30(0xD000000000000043, 0x800000022A58CCE0, v44);
    _os_log_impl(&dword_229538000, v6, v7, "%s Fetched applePresetsAdditionalInfo", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  *(v0 + 128) = v14;
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  *(v0 + 177) = sub_22A4DCABC() & 1;
  v17 = *(v0 + 80);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 80);
  v22 = *(v0 + 56);
  v23 = *(v0 + 64);
  if (v20)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2295A3E30(0xD000000000000043, 0x800000022A58CCE0, v44);
    _os_log_impl(&dword_229538000, v18, v19, "%s Fetched appleIgnoredPredictedPresets", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v24, -1, -1);
  }

  v14(v21, v22);
  v26 = [*(v0 + 32) home];
  *(v0 + 136) = v26;
  if (v26)
  {
    v27 = v26;
    if ([v26 isLocalPresenceSupported])
    {
      v28 = swift_task_alloc();
      *(v0 + 144) = v28;
      *v28 = v0;
      v28[1] = sub_2295F9214;
      v29 = *(v0 + 32);

      return sub_2297D361C();
    }

    v31 = *(v0 + 24);
    v32 = *(v0 + 32);
    v33 = *(v0 + 16);
  }

  else
  {
    v31 = *(v0 + 24);
    v32 = *(v0 + 32);
    v33 = *(v0 + 16);
  }

  v34 = sub_22A4DCD0C();
  (*(*(v34 - 8) + 8))(v31, v34);
  __swift_destroy_boxed_opaque_existential_0(v33);
  v35 = *(v0 + 177);
  v36 = *(v0 + 176);
  v37 = *(v0 + 112);
  v38 = *(v0 + 80);
  v39 = *(v0 + 88);
  v40 = *(v0 + 72);

  if (v36)
  {
    v41 = 0x10000;
  }

  else
  {
    v41 = 0;
  }

  if (v35)
  {
    v42 = 2;
  }

  else
  {
    v42 = 258;
  }

  v43 = *(v0 + 8);

  return v43(v42 | v41);
}

uint64_t sub_2295F9214(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 144);
  v8 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {
    v6 = sub_2295F95D4;
  }

  else
  {
    v6 = sub_2295F932C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2295F932C()
{
  v33 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 120);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 64);
  v9 = *(v0 + 56);
  v30 = v9;
  v31 = *(v0 + 72);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  v12 = *(v0 + 16);
  if (v5)
  {
    v29 = *(v0 + 160);
    v13 = swift_slowAlloc();
    v28 = v7;
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2295A3E30(0xD000000000000043, 0x800000022A58CCE0, &v32);
    _os_log_impl(&dword_229538000, v3, v4, "%s Fetched adaptiveThermostatDriverConfiguration", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    v15 = sub_22A4DCD0C();
    (*(*(v15 - 8) + 8))(v11, v15);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v28(v31, v30);
  }

  else
  {

    v16 = sub_22A4DCD0C();
    (*(*(v16 - 8) + 8))(v11, v16);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v7(v31, v30);
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 177);
  v19 = *(v0 + 176);
  v20 = *(v0 + 112);
  v21 = *(v0 + 80);
  v22 = *(v0 + 88);
  v23 = *(v0 + 72);

  if (v19)
  {
    v24 = 0x10000;
  }

  else
  {
    v24 = 0;
  }

  if (v18)
  {
    v25 = 0;
  }

  else
  {
    v25 = 256;
  }

  if (v17 == 2)
  {
    ++v25;
  }

  v26 = *(v0 + 8);

  return v26(v25 | v24);
}

uint64_t sub_2295F95D4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 168);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = sub_22A4DCD0C();
  (*(*(v9 - 8) + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_0(v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2295F96C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_22A4DC8EC();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_22A4DCD0C();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F985C, 0, 0);
}

uint64_t sub_2295F985C()
{
  v52 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = sub_22A4DC97C();
  *(v0 + 204) = v3 & 1;
  v49 = v3;
  v4 = *(v0 + 160);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_2295A3E30(0xD000000000000020, 0x800000022A58CCB0, v51);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v49 & 1;
    _os_log_impl(&dword_229538000, v5, v6, "%s Fetched appleFollowSystemModeInPreset %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  v13 = *(v10 + 8);
  v13(v8, v9);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = sub_22A4DC8BC();
  *(v0 + 168) = v16;
  v50 = v16;
  v17 = *(v0 + 152);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 136);
  if (v20)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v51[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2295A3E30(0xD000000000000020, 0x800000022A58CCB0, v51);
    _os_log_impl(&dword_229538000, v18, v19, "%s Fetched presets", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v24, -1, -1);
  }

  v13(v21, v22);
  v26 = *(v0 + 56);
  v27 = *(v0 + 64);
  v28 = sub_22A4DCA6C();
  *(v0 + 176) = v28;
  v29 = v28;
  v30 = *(v0 + 144);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v31 = sub_22A4DD05C();
  v32 = sub_22A4DDCCC();
  v33 = os_log_type_enabled(v31, v32);
  v35 = *(v0 + 136);
  v34 = *(v0 + 144);
  v36 = *(v0 + 128);
  if (v33)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_2295A3E30(0xD000000000000020, 0x800000022A58CCB0, v51);
    _os_log_impl(&dword_229538000, v31, v32, "%s Fetched applePresetsAdditionalInfo", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);
  }

  v13(v34, v36);
  v39 = *(v0 + 112);
  v40 = *(v0 + 120);
  v41 = *(v0 + 104);
  v42 = *(v0 + 64);
  v43 = *(v0 + 72);
  sub_22957F1C4(*(v0 + 56), v0 + 16);
  (*(v39 + 16))(v40, v42, v41);
  v44 = v43;

  v45 = swift_task_alloc();
  *(v0 + 184) = v45;
  *v45 = v0;
  v45[1] = sub_2295F9DCC;
  v46 = *(v0 + 120);
  v47 = *(v0 + 72);

  return sub_2295F8BA0(v0 + 16, v46, v47, v50, v29);
}

uint64_t sub_2295F9DCC(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = *(v4 + 168);
    v8 = *(v4 + 176);

    v9 = sub_2295FA0A0;
  }

  else
  {
    *(v4 + 200) = a1;
    v9 = sub_2295F9F04;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2295F9F04()
{
  v21 = *(v0 + 200);
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v20 = *(v0 + 204);
  v16 = *(v0 + 160);
  v17 = *(v0 + 152);
  v3 = *(v0 + 112);
  v18 = *(v0 + 144);
  v19 = *(v0 + 120);
  v4 = *(v0 + 96);
  v14 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  (*(v5 + 104))(v4, *MEMORY[0x277D172E8], v6);
  v15 = sub_2295F882C(v4, v2, v1);

  (*(v3 + 8))(v7, v14);
  __swift_destroy_boxed_opaque_existential_0(v9);
  (*(v5 + 8))(v4, v6);

  v10 = 0x100000000;
  if (!v20)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((v15 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = *(v0 + 8);

  return v12(v10 | v21 & 0x101FFLL | v11);
}

uint64_t sub_2295FA0A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);

  (*(v2 + 8))(v3, v1);
  __swift_destroy_boxed_opaque_existential_0(v4);
  v5 = *(v0 + 192);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = *(v0 + 120);
  v10 = *(v0 + 96);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2295FA170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_22A4DCD0C();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_22A4DD07C();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295FA290, 0, 0);
}

uint64_t sub_2295FA290()
{
  v33 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = sub_22A4DC92C();
  *(v0 + 160) = v3 & 1;
  v4 = v3;
  v5 = *(v0 + 128);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_2295A3E30(0x5F3A5F2874696E69, 0xEE00293A5F3A5F3ALL, &v32);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v4 & 1;
    _os_log_impl(&dword_229538000, v6, v7, "%s Fetched valenciaStateEnabled %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  if (v4)
  {
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 56);
    sub_22957F1C4(*(v0 + 72), v0 + 16);
    (*(v15 + 16))(v14, v18, v16);
    v19 = v17;
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v20[1] = sub_2295FA600;
    v21 = *(v0 + 104);
    v22 = *(v0 + 80);

    return sub_2295F96C8(v0 + 16, v21, v22);
  }

  else
  {
    v24 = *(v0 + 80);

    v25 = *(v0 + 160);
    v26 = *(v0 + 128);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 88);
    v30 = *(v0 + 56);
    __swift_destroy_boxed_opaque_existential_0(*(v0 + 72));
    (*(v28 + 8))(v30, v29);

    v31 = *(v0 + 8);

    return v31(v25 | 0x20000);
  }
}

uint64_t sub_2295FA600(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_2295FA808;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_2295FA728;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2295FA728()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);

  v3 = (v1 << 8) & 0x1010101FF00;
  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = *(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0(*(v0 + 72));
  (*(v7 + 8))(v9, v8);

  v10 = *(v0 + 8);

  return v10(v3 | v4);
}

uint64_t sub_2295FA808()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0(v3);
  (*(v2 + 8))(v5, v1);
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2295FA8BC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_22A4DB7DC();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295FA97C, 0, 0);
}

uint64_t sub_2295FA97C()
{
  v1 = *(v0 + 32);
  *(v0 + 232) = [v1 isLocalPresenceSupported];
  result = [v1 hapAccessories];
  if (!result)
  {
    goto LABEL_34;
  }

  v3 = result;
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v4 = sub_22A4DD83C();

  v29 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v28 = v0;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v0 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = [v7 supportsAdaptiveTemperatureAutomations];
      v10 = [v9 BOOLValue];

      if (v10)
      {
        sub_22A4DE27C();
        v11 = *(v29 + 16);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v6;
      if (v0 == i)
      {
        v0 = v28;
        v12 = v29;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:
  *(v0 + 72) = v12;

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    result = sub_22A4DE0EC();
    *(v0 + 80) = result;
    if (result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = *(v12 + 16);
    *(v0 + 80) = result;
    if (result)
    {
LABEL_22:
      if (result >= 1)
      {
        *(v0 + 200) = 0;
        *(v0 + 184) = 0u;
        *(v0 + 168) = 0u;
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
        *(v0 + 120) = 0u;
        *(v0 + 104) = 0u;
        *(v0 + 88) = 0u;
        v13 = *(v0 + 72);
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v14 = *(v13 + 32);
        }

        *(v0 + 208) = v14;
        v15 = swift_task_alloc();
        *(v0 + 216) = v15;
        *v15 = v0;
        v15[1] = sub_2295FADA8;

        return sub_2295F72F4();
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }
  }

  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 232);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);
  v21 = *(v0 + 40);

  (*(v20 + 16))(v17, v21, v19);
  v22 = type metadata accessor for AdaptiveTemperatureAutomationsConfigurationLogEvent();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventName];
  *v24 = 0xD00000000000003DLL;
  v24[1] = 0x800000022A58CC30;
  *&v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
  *&v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_accessoryCount] = 0;
  *&v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_adaptiveTemperatureEnabledCount] = 0;
  *&v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_modeSwitchingEnabledCount] = 0;
  *&v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_arrivalPredictionEnabledCount] = 0;
  *&v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_extendedAwayEnabledCount] = 0;
  *&v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_roomOccupancyEnabledCount] = 0;
  *&v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_sleepScheduleEnabledCount] = 0;
  v23[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_isHomeRoomOccupancySupported] = v18;
  v25 = sub_22A4DB77C();
  *(v0 + 16) = v23;
  *(v0 + 24) = v22;
  v26 = objc_msgSendSuper2((v0 + 16), sel_initWithHomeUUID_, v25);

  (*(v20 + 8))(v17, v19);

  v27 = *(v0 + 8);

  return v27(v26);
}

uint64_t sub_2295FADA8(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_2295FAEA8, 0, 0);
}

void sub_2295FAEA8()
{
  v1 = *(v0 + 224);

  if (v1 == 2)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
LABEL_10:
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    goto LABEL_11;
  }

  v14 = *(v0 + 192);
  v9 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v15 = *(v0 + 224);
  v2 = *(v0 + 184);
  if ((v15 & 1) == 0)
  {
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    goto LABEL_9;
  }

  v10 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_42;
  }

  v16 = (v15 >> 8) & 0xFFFFFFFFFFLL;
  if (((v15 >> 8) & 0xFF00) == 0x200)
  {
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v13 = *(v0 + 112);
    v11 = *(v0 + 120);
    v12 = *(v0 + 104);
    v2 = v10;
LABEL_9:
    v3 = v9;
    goto LABEL_10;
  }

  v4 = *(v0 + 176);
  if (((v15 >> 8) & 0x100000000) == 0)
  {
    v11 = *(v0 + 120);
    goto LABEL_25;
  }

  v11 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  ++v4;
LABEL_25:
  if ((*(v0 + 224) & 0xFF00) == 0x200)
  {
    v5 = *(v0 + 168);
    goto LABEL_36;
  }

  v5 = *(v0 + 168);
  if ((v15 & 0x100) == 0)
  {
LABEL_36:
    v17 = *(v0 + 96);
    v6 = *(v0 + 160);
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  v17 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_47:
    __break(1u);
    return;
  }

  ++v5;
  v6 = *(v0 + 160);
  if ((v16 & 0x100) != 0)
  {
LABEL_30:
    v13 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      ++v6;
      v7 = *(v0 + 152);
      if ((v16 & 0x10000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_37:
  v13 = *(v0 + 112);
  v7 = *(v0 + 152);
  if ((v16 & 0x10000) == 0)
  {
LABEL_38:
    v18 = *(v0 + 88);
    v8 = *(v0 + 144);
    if ((v16 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_32:
  v18 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  ++v7;
  v8 = *(v0 + 144);
  if ((v16 & 0x1000000) == 0)
  {
LABEL_39:
    v12 = *(v0 + 104);
    goto LABEL_40;
  }

LABEL_34:
  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  ++v8;
LABEL_40:
  v2 = v10;
  v3 = v9;
LABEL_11:
  v19 = *(v0 + 200) + 1;
  if (v19 == *(v0 + 80))
  {
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v36 = *(v0 + 232);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v37 = v22;
    v24 = *(v0 + 40);
    v34 = v17;
    v35 = v18;

    (*(v23 + 16))(v21, v24, v22);
    v25 = type metadata accessor for AdaptiveTemperatureAutomationsConfigurationLogEvent();
    v26 = objc_allocWithZone(v25);
    v27 = &v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventName];
    *v27 = 0xD00000000000003DLL;
    v27[1] = 0x800000022A58CC30;
    *&v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
    *&v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_accessoryCount] = v9;
    *&v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_adaptiveTemperatureEnabledCount] = v10;
    *&v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_modeSwitchingEnabledCount] = v11;
    *&v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_arrivalPredictionEnabledCount] = v13;
    *&v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_extendedAwayEnabledCount] = v12;
    *&v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_roomOccupancyEnabledCount] = v34;
    *&v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_sleepScheduleEnabledCount] = v35;
    v26[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_isHomeRoomOccupancySupported] = v36;
    v28 = sub_22A4DB77C();
    *(v0 + 16) = v26;
    *(v0 + 24) = v25;
    v29 = objc_msgSendSuper2((v0 + 16), sel_initWithHomeUUID_, v28);

    (*(v23 + 8))(v21, v37);

    v30 = *(v0 + 8);

    v30(v29);
  }

  else
  {
    *(v0 + 192) = v3;
    *(v0 + 200) = v19;
    *(v0 + 176) = v4;
    *(v0 + 184) = v2;
    *(v0 + 160) = v6;
    *(v0 + 168) = v5;
    *(v0 + 144) = v8;
    *(v0 + 152) = v7;
    *(v0 + 128) = v10;
    *(v0 + 136) = v9;
    *(v0 + 112) = v13;
    *(v0 + 120) = v11;
    *(v0 + 96) = v17;
    *(v0 + 104) = v12;
    *(v0 + 88) = v18;
    v31 = *(v0 + 72);
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v32 = *(v31 + 8 * v19 + 32);
    }

    *(v0 + 208) = v32;
    v33 = swift_task_alloc();
    *(v0 + 216) = v33;
    *v33 = v0;
    v33[1] = sub_2295FADA8;

    sub_2295F72F4();
  }
}

uint64_t sub_2295FB2E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2295FB338()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DC55C();
  v7 = *(v6 - 8);
  v89 = v6;
  v90 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v88 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DCD0C();
  v83 = *(v10 - 8);
  v11 = *(v83 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v86 = &v71 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v85 = (&v71 - v18);
  MEMORY[0x28223BE20](v17);
  v77 = &v71 - v19;
  v91 = sub_22A4DC52C();
  v72 = *(v91 - 8);
  v20 = *(v72 + 64);
  v21 = MEMORY[0x28223BE20](v91);
  v87 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  v25 = [v0 matterDevice];
  if (v25)
  {
    v26 = v25;
    sub_22A4DC53C();
    v94 = MEMORY[0x277D84F90];
    v96[0] = v26;
    v27 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    result = sub_22A4DC79C();
    v92 = v24;
    v74 = v27;
    v78 = 0;
    v76 = v26;
    v75 = v14;
    v39 = *(result + 16);
    v79 = v10;
    v84 = v39;
    if (v39)
    {
      v40 = 0;
      v41 = v83 + 8;
      v80 = (v83 + 32);
      v81 = (v83 + 16);
      v82 = MEMORY[0x277D84F90];
      v42 = v77;
      while (v40 < *(result + 16))
      {
        v43 = v83;
        v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v45 = result;
        v46 = *(v83 + 72);
        (*(v83 + 16))(v42, result + v44 + v46 * v40, v10);
        v47 = v41;
        v48 = v85;
        sub_22A4DCCDC();
        sub_2295FD1D4(&qword_27D87DCD8, MEMORY[0x277D17408]);
        v49 = sub_22A4DD58C();
        v50 = *(v43 + 8);
        v51 = v48;
        v41 = v47;
        v50(v51, v10);
        if (v49)
        {
          v50(v42, v10);
        }

        else
        {
          v52 = v42;
          v53 = *v80;
          (*v80)(v86, v52, v10);
          v54 = v82;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93 = v54;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2295837D8(0, *(v54 + 16) + 1, 1);
            v54 = v93;
          }

          v57 = *(v54 + 16);
          v56 = *(v54 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2295837D8(v56 > 1, v57 + 1, 1);
            v54 = v93;
          }

          *(v54 + 16) = v57 + 1;
          v82 = v54;
          v10 = v79;
          v53((v54 + v44 + v57 * v46), v86, v79);
          v42 = v77;
          v41 = v47;
        }

        ++v40;
        result = v45;
        if (v84 == v40)
        {
          goto LABEL_19;
        }
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v82 = MEMORY[0x277D84F90];
LABEL_19:

    v58 = v76;
    v80 = *(v82 + 16);
    v59 = v92;
    if (v80)
    {
      v60 = 0;
      v77 = (v83 + 16);
      v86 = (v90 + 16);
      v84 = v90 + 8;
      v85 = (v72 + 8);
      v73 = (v83 + 8);
      v71 = MEMORY[0x277D84F90];
      v61 = v75;
      v62 = v78;
      v63 = v90;
      while (v60 < *(v82 + 16))
      {
        (*(v83 + 16))(v61, v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, v10);
        v96[0] = v58;
        result = sub_22A4DC78C();
        if (v62)
        {
          (*v73)(v61, v79);

          (*(v72 + 8))(v59, v91);
          return MEMORY[0x277D84F90];
        }

        v64 = result;
        v78 = 0;
        v65 = 0;
        v81 = (v60 + 1);
        v66 = *(result + 16);
        do
        {
          if (v66 == v65)
          {
            v61 = v75;
            v10 = v79;
            (*v73)(v75, v79);

            goto LABEL_22;
          }

          if (v65 >= *(v64 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v68 = v88;
          v67 = v89;
          (*(v63 + 16))(v88, v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v65++, v89);
          v69 = v87;
          sub_22A4DC54C();
          sub_2295FD1D4(&qword_27D87DCE0, MEMORY[0x277D17180]);
          v70 = v91;
          sub_22A4DD7DC();
          sub_22A4DD7DC();
          (*v85)(v69, v70);
          result = (*(v63 + 8))(v68, v67);
        }

        while (LODWORD(v96[0]) != v93);

        v61 = v75;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
        MEMORY[0x22AAD09E0]();
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v10 = v79;
        result = (*v73)(v61, v79);
        v71 = v94;
LABEL_22:
        v60 = v81;
        v59 = v92;
        v58 = v76;
        v62 = v78;
        if (v81 == v80)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      __break(1u);
      return result;
    }

    v71 = MEMORY[0x277D84F90];
LABEL_33:
    (*(v72 + 8))(v59, v91);

    return v71;
  }

  else
  {
    v92 = v1;
    sub_2296F8604();
    v29 = v0;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315394;
      v94 = 91;
      v95 = 0xE100000000000000;
      v96[0] = v33;
      v34 = [v29 logIdentifier];
      v35 = sub_22A4DD5EC();
      v37 = v36;

      MEMORY[0x22AAD08C0](v35, v37);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v38 = sub_2295A3E30(v94, v95, v96);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2295A3E30(0xD000000000000018, 0x800000022A58CDE0, v96);
      _os_log_impl(&dword_229538000, v30, v31, "%s %s - Matter device is nil", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    (*(v2 + 8))(v5, v92);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2295FBE68(int a1, void *a2)
{
  v3 = v2;
  v51 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22A4DC52C();
  v45 = *(v50 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v50);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DC55C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22A4DCD0C();
  v47 = *(v16 - 8);
  v17 = *(v47 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v3 matterDevice];
  if (v20)
  {
    v21 = v20;
    ObjectType = v16;
    [a2 unsignedShortValue];
    sub_22A4DCCEC();
    v52 = v21;
    sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    result = sub_22A4DC78C();
    v36 = result;
    v43 = v21;
    v44 = v19;
    v37 = 0;
    v38 = *(result + 16);
    v48 = v12 + 16;
    v49 = v38;
    v39 = (v45 + 8);
    while (1)
    {
      v40 = v49 != v37;
      if (v49 == v37)
      {
LABEL_8:
        (*(v47 + 8))(v44, ObjectType);

        return v40;
      }

      if (v37 >= *(v36 + 16))
      {
        break;
      }

      (*(v12 + 16))(v15, v36 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v37++, v11);
      sub_22A4DC54C();
      v41 = sub_22A4DC51C();
      (*v39)(v10, v50);
      result = (*(v12 + 8))(v15, v11);
      if (v41 == v51)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = v5;
    sub_2296F8604();
    v24 = v3;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = v48;
      v29 = v27;
      v30 = swift_slowAlloc();
      *v29 = 136315394;
      v52 = 91;
      v53 = 0xE100000000000000;
      v54 = v30;
      v31 = [v24 logIdentifier];
      v32 = sub_22A4DD5EC();
      v34 = v33;

      MEMORY[0x22AAD08C0](v32, v34);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v35 = sub_2295A3E30(v52, v53, &v54);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A58CDB0, &v54);
      _os_log_impl(&dword_229538000, v25, v26, "%s %s - Matter device is nil", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);

      (*(v28 + 8))(v49, v23);
    }

    else
    {

      (*(v48 + 8))(v49, v5);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2295FC45C(void (**a1)(char *, uint64_t))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22A4DCDAC();
  v8 = *(v46 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v46);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22A4DCC4C();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v45);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22A4DCD0C();
  v16 = *(v44 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v44);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = [v2 matterDevice];
  if (v47)
  {
    if (a1 >> 62)
    {
LABEL_23:
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      ObjectType = sub_22A4DE0EC();
    }

    else
    {
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      ObjectType = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v7 = 0;
    v41 = a1;
    v42 = a1 & 0xC000000000000001;
    a1 = v8 + 1;
    v38 = (v12 + 8);
    v39 = (v16 + 8);
    while (1)
    {
      if (ObjectType == v4)
      {

        return 1;
      }

      if (v42)
      {
        v20 = MEMORY[0x22AAD13F0](v4, v41);
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v4 >= *(v40 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v20 = v41[v4 + 4];
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      v8 = v20;
      v21 = [v8 endpoint];
      [v21 unsignedShortValue];

      sub_22A4DCCEC();
      v22 = [v8 cluster];

      [v22 unsignedIntValue];
      sub_22A4DCC2C();
      v23 = [v8 attribute];
      [v23 unsignedIntValue];

      sub_22A4DCD8C();
      v48 = v47;
      sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
      v24 = sub_22A4DC7BC();
      v12 = sub_2296C8DFC(v15, v24);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v48 = v47;
      v2 = sub_22A4DC7AC();
      v16 = sub_2296C8E44(v11, v2);

      (*a1)(v11, v46);
      (*v38)(v15, v45);
      (*v39)(v19, v44);
      ++v4;
      if ((v16 & 1) == 0)
      {

        return 0;
      }
    }

    (*a1)(v11, v46);
    (*v38)(v15, v45);
    (*v39)(v19, v44);
  }

  else
  {
LABEL_15:
    v25 = v42;
    v26 = v4;
    sub_2296F8604();
    v27 = v2;
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCEC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136315394;
      v48 = 91;
      v49 = 0xE100000000000000;
      v50 = v31;
      v32 = [v27 logIdentifier];
      v33 = sub_22A4DD5EC();
      v35 = v34;

      MEMORY[0x22AAD08C0](v33, v35);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v36 = sub_2295A3E30(v48, v49, &v50);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2295A3E30(0xD000000000000020, 0x800000022A58CD80, &v50);
      _os_log_impl(&dword_229538000, v28, v29, "%s %s - Matter device is nil", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    (*(v25 + 8))(v7, v26);
  }

  return 0;
}

uint64_t sub_2295FCBB8(void (**a1)(char *, uint64_t))
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22A4DCD0C();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22A4DCC4C();
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v39);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [v2 matterDevice];
  if (v41)
  {
    v17 = v9;
    if (a1 >> 62)
    {
LABEL_21:
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      v38 = sub_22A4DE0EC();
    }

    else
    {
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    v37 = a1;
    v19 = a1 & 0xC000000000000001;
    v20 = (v17 + 8);
    a1 = (v13 + 8);
    while (v38 != v18)
    {
      if (v19)
      {
        v21 = MEMORY[0x22AAD13F0](v18, v37);
      }

      else
      {
        if (v18 >= *(v36 + 16))
        {
          goto LABEL_20;
        }

        v21 = v37[v18 + 4];
      }

      v22 = v21;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v23 = [v21 cluster];
      [v23 unsignedIntValue];

      sub_22A4DCC2C();
      v24 = [v22 endpoint];
      [v24 unsignedShortValue];

      sub_22A4DCCEC();
      v42 = v41;
      sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
      v13 = sub_22A4DC7BC();
      v17 = sub_2296C8DFC(v16, v13);

      (*v20)(v12, v40);
      (*a1)(v16, v39);
      ++v18;
      if (!v17)
      {

        return 0;
      }
    }

    return 1;
  }

  else
  {
    sub_2296F8604();
    v25 = v2;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 136315394;
      v42 = 91;
      v43 = 0xE100000000000000;
      v44 = v29;
      v30 = [v25 logIdentifier];
      v31 = sub_22A4DD5EC();
      v33 = v32;

      MEMORY[0x22AAD08C0](v31, v33);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v34 = sub_2295A3E30(v42, v43, &v44);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2295A3E30(0xD00000000000001ELL, 0x800000022A58CD60, &v44);
      _os_log_impl(&dword_229538000, v26, v27, "%s %s - Matter device is nil", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

uint64_t sub_2295FD15C(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_229562F68(0, a4, a5);
  v8 = sub_22A4DD83C();
  v9 = a1;
  LOBYTE(a6) = a6(v8);

  return a6 & 1;
}

uint64_t sub_2295FD1D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2295FD26C(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = [*v5 *a3];
  sub_229562F68(0, a4, a5);
  v9 = sub_22A4DD83C();

  return v9;
}

uint64_t sub_2295FD2D8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);

    v4 = 32;
    do
    {
      v5 = *(v1 + v4);

      sub_22A4DDA7C();

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2295FD3D4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v52 = *(v5 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = v50 - v9;
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v50 - v16;
  v59 = v4;
  sub_229541CB0(v4, &off_283CDE168);
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_229538000, v18, v19, "Registering for add resident notifications", v20, 2u);
    MEMORY[0x22AAD4E50](v20, -1, -1);
  }

  v21 = *(v11 + 8);
  v21(v17, v10);
  v22 = v2[2];
  v56 = sub_22A4DDE5C();
  sub_229541CB0(v59, &off_283CDE168);
  v23 = sub_22A4DD05C();
  v24 = sub_22A4DDCCC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_229538000, v23, v24, "Registering for remove resident notifications", v25, 2u);
    MEMORY[0x22AAD4E50](v25, -1, -1);
  }

  v21(v15, v10);
  v54 = sub_22A4DDE5C();
  v26 = sub_22A4DD9DC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = v57;
  v50[1] = v27 + 56;
  v51 = v28;
  v28(v57, 1, 1, v26);
  v30 = swift_allocObject();
  swift_weakInit();
  v55 = a1;
  v31 = v58;
  sub_2295FE8C0(a1, v58);
  v32 = (*(v52 + 80) + 48) & ~*(v52 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v56;
  v34[5] = v30;
  sub_2295FE930(v31, v34 + v32);
  *(v34 + v33) = v59;

  v35 = sub_22957F3C0(0, 0, v29, &unk_22A57A548, v34);
  swift_beginAccess();
  v36 = v2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_22958A8B4(0, v36[2] + 1, 1, v36);
    v2[3] = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_22958A8B4((v38 > 1), v39 + 1, 1, v36);
  }

  v36[2] = v39 + 1;
  v36[v39 + 4] = v35;
  v2[3] = v36;
  swift_endAccess();
  v40 = v57;
  v51(v57, 1, 1, v26);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v58;
  sub_2295FE8C0(v55, v58);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v54;
  v43[5] = v41;
  sub_2295FE930(v42, v43 + v32);
  *(v43 + v33) = v59;

  v44 = sub_22957F3C0(0, 0, v40, &unk_22A57A558, v43);
  swift_beginAccess();
  v45 = v2[3];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v45;
  if ((v46 & 1) == 0)
  {
    v45 = sub_22958A8B4(0, v45[2] + 1, 1, v45);
    v2[3] = v45;
  }

  v48 = v45[2];
  v47 = v45[3];
  if (v48 >= v47 >> 1)
  {
    v45 = sub_22958A8B4((v47 > 1), v48 + 1, 1, v45);
  }

  v45[2] = v48 + 1;
  v45[v48 + 4] = v44;
  v2[3] = v45;
  swift_endAccess();
}

uint64_t sub_2295FDA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v10 = *(v9 + 64) + 15;
  v7[22] = swift_task_alloc();
  v11 = sub_22A4DD07C();
  v7[23] = v11;
  v12 = *(v11 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v15 = sub_22A4DDE4C();
  v7[27] = v15;
  v16 = *(v15 - 8);
  v7[28] = v16;
  v17 = *(v16 + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295FDBF4, 0, 0);
}

uint64_t sub_2295FDBF4()
{
  v1 = v0[29];
  v2 = v0[16];
  v3 = v0[17];

  sub_22A4DDE3C();
  swift_beginAccess();
  v4 = sub_2295F39B0();
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_2295FDCC8;
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];

  return MEMORY[0x282200308](v8, v9, v4);
}

uint64_t sub_2295FDCC8()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2295FED88;
  }

  else
  {
    v3 = sub_2295FDDDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295FDDF8()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:
    v25 = v0[29];
    v26 = v0[25];
    v27 = v0[26];
    v28 = v0[22];

    v29 = v0[1];

    return v29();
  }

  v3 = v0[17];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v24);
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = v0[25];
  sub_229541CB0(v0[19], &off_283CDE168);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Received NSNotification.Name.HMDResidentDeviceManagerAddResident", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[19];
  v31 = v0[20];
  v32 = v0[26];
  v16 = v0[18];

  (*(v12 + 8))(v10, v11);
  v0[5] = v15;
  v0[6] = &off_283CDE180;
  v0[2] = v5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) + 28);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v14 + 8))(v13, v31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v32);
  v18 = sub_2295F39B0();
  v19 = *(MEMORY[0x277D856D0] + 4);
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_2295FDCC8;
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[27];

  return MEMORY[0x282200308](v22, v23, v18);
}

uint64_t sub_2295FE104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v10 = *(v9 + 64) + 15;
  v7[22] = swift_task_alloc();
  v11 = sub_22A4DD07C();
  v7[23] = v11;
  v12 = *(v11 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v15 = sub_22A4DDE4C();
  v7[27] = v15;
  v16 = *(v15 - 8);
  v7[28] = v16;
  v17 = *(v16 + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295FE2C4, 0, 0);
}

uint64_t sub_2295FE2C4()
{
  v1 = v0[29];
  v2 = v0[16];
  v3 = v0[17];

  sub_22A4DDE3C();
  swift_beginAccess();
  v4 = sub_2295F39B0();
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_2295FE398;
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];

  return MEMORY[0x282200308](v8, v9, v4);
}

uint64_t sub_2295FE398()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2295FE7D4;
  }

  else
  {
    v3 = sub_2295FE4AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295FE4C8()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:
    v25 = v0[29];
    v26 = v0[25];
    v27 = v0[26];
    v28 = v0[22];

    v29 = v0[1];

    return v29();
  }

  v3 = v0[17];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v24);
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = v0[25];
  sub_229541CB0(v0[19], &off_283CDE168);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Received NSNotification.Name.HMDResidentDeviceManagerRemoveResident", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[19];
  v31 = v0[20];
  v32 = v0[26];
  v16 = v0[18];

  (*(v12 + 8))(v10, v11);
  v0[5] = v15;
  v0[6] = &off_283CDE180;
  v0[2] = v5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) + 28);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v14 + 8))(v13, v31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v32);
  v18 = sub_2295F39B0();
  v19 = *(MEMORY[0x277D856D0] + 4);
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_2295FE398;
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[27];

  return MEMORY[0x282200308](v22, v23, v18);
}

uint64_t sub_2295FE7D4()
{
  *(v0 + 120) = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2295FE8C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295FE930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295FE9A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_2295FDA34(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t objectdestroy_3Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[4];

  v7 = v0[5];

  v8 = v0 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D600, &qword_22A5821B0);
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = v1[9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  (*(*(v11 - 8) + 8))(&v8[v10], v11);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2295FEC44(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_2295FE104(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2295FED9C@<X0>(uint64_t *a1@<X8>)
{
  result = symptom_create();
  *a1 = result;
  return result;
}

uint64_t sub_2295FEDCC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return symptom_create();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DD08, &qword_22A57A598);
  result = sub_22A4DE1EC();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2295FEE90(void *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = (v2 + *(type metadata accessor for NetworkDiagnosticsSymptom() + 32));
  v4 = *v3;
  v5 = v3[1];

  sub_2295FEDCC(v4, v5);

  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF8, &qword_22A57A590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = 0;
  *(inited + 40) = *v6;
  *(inited + 48) = 1;
  *(inited + 56) = *(v6 + 1);
  v8 = sub_22956B0EC(inited);
  swift_setDeallocating();
  v9 = 0;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
LABEL_4:
  if (v12)
  {
    v14 = v9;
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v8 + 64 + 8 * v14);
    ++v9;
    if (v12)
    {
      v9 = v14;
LABEL_10:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v14 << 6);
      v17 = *(*(v8 + 48) + 4 * v16);
      v18 = *(*(v8 + 56) + 8 * v16);
      v19 = symptom_set_qualifier();
      if (v19)
      {
        v20 = v17 | (v19 << 32);
        sub_2295FF38C();
        swift_allocError();
        *v21 = v20;
        *(v21 + 8) = 0;
        swift_willThrow();

        goto LABEL_39;
      }

      goto LABEL_4;
    }
  }

  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v23 = sub_22970DD00();
  v24 = v23;
  v25 = 0;
  v26 = v23 + 64;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v23 + 64);
  v30 = (v27 + 63) >> 6;
  v46 = v23;
  if (v29)
  {
    while (1)
    {
      v31 = v25;
LABEL_19:
      v32 = __clz(__rbit64(v29)) | (v31 << 6);
      v33 = *(*(v24 + 48) + 4 * v32);
      v34 = (*(v24 + 56) + 16 * v32);
      v35 = *v34;
      v36 = v34[1];
      v37 = v36 >> 62;
      if ((v36 >> 62) > 1)
      {
        if (v37 != 2)
        {
LABEL_32:
          v39 = symptom_set_additional_qualifier();
          if (v39)
          {
            goto LABEL_40;
          }

          goto LABEL_35;
        }

        v47 = v33;
        v38 = *(v35 + 16);
        v45 = *(v35 + 24);

        if (sub_22A4DB24C() && __OFSUB__(v38, sub_22A4DB27C()))
        {
          goto LABEL_45;
        }

        if (__OFSUB__(v45, v38))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (!v37)
        {
          goto LABEL_32;
        }

        if (v35 >> 32 < v35)
        {
          goto LABEL_43;
        }

        v47 = v33;

        if (sub_22A4DB24C() && __OFSUB__(v35, sub_22A4DB27C()))
        {
          goto LABEL_46;
        }
      }

      sub_22A4DB26C();
      v33 = v47;
      v39 = symptom_set_additional_qualifier();
      v24 = v46;
      if (v39)
      {
LABEL_40:
        v43 = v33 | (v39 << 32);
        sub_2295FF38C();
        swift_allocError();
        *v44 = v43;
        *(v44 + 8) = 1;
        swift_willThrow();

        result = sub_2295798D4(v35, v36);
        goto LABEL_39;
      }

LABEL_35:
      v29 &= v29 - 1;
      sub_2295798D4(v35, v36);
      v25 = v31;
      if (!v29)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
LABEL_16:
    v31 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_42;
    }

    if (v31 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v31);
    ++v25;
    if (v29)
    {
      goto LABEL_19;
    }
  }

  result = symptom_send();
  if (result)
  {
    v40 = result;
    sub_2295FF38C();
    swift_allocError();
    *v41 = v40;
    *(v41 + 8) = 2;
    result = swift_willThrow();
  }

LABEL_39:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2295FF38C()
{
  result = qword_27D87DD00;
  if (!qword_27D87DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DD00);
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemSymptomReporter.SymptomReporterFailure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SystemSymptomReporter.SymptomReporterFailure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

id sub_2295FF59C(uint64_t a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v4 = *a3;
  v5 = [objc_opt_self() *a4];

  return v5;
}

id sub_2295FF6DC(uint64_t a1, uint64_t a2, Class *a3)
{
  if (isWatchLegacy())
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(*a3) init];
  }

  return v4;
}

id sub_2295FFA7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, Class *a5)
{
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v12 = objc_allocWithZone(*a5);
  v13 = a4;
  v14 = sub_22A4DB77C();
  v15 = [v12 initWithUUID:v14 workQueue:v13];

  (*(v8 + 8))(v11, v7);

  return v15;
}

unint64_t type metadata accessor for HMDHomeDefaultDataSource()
{
  result = qword_27D87DD78;
  if (!qword_27D87DD78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87DD78);
  }

  return result;
}

unint64_t sub_2295FFD80(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = v3;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v4, v30);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_229606190(&v39, &v38);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v38;
      v10 = v38 >> 62;
      if (v38 >> 62)
      {
        v6 = sub_22A4DE0EC();
      }

      else
      {
        v6 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_22A4DE0EC();
        v13 = v27 + v6;
        if (__OFADD__(v27, v6))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v6;
        if (__OFADD__(v12, v6))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_22A4DE0EC();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v6 > 0)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v6)
      {
        goto LABEL_46;
      }

      v36 = v5;
      v20 = v14 + 8 * v16 + 32;
      v31 = v14;
      if (v10)
      {
        if (v18 < 1)
        {
          goto LABEL_48;
        }

        sub_229606AFC();
        for (i = 0; i != v18; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
          v22 = sub_22958C03C(v37, i, v9);
          v24 = *v23;
          (v22)(v37, 0);
          *(v20 + 8 * i) = v24;
        }
      }

      else
      {
        sub_229562F68(0, &unk_27D87E490, off_2786660B8);
        swift_arrayInitWithCopy();
      }

      v2 = v8;
      v5 = v36;
      if (v6 >= 1)
      {
        v25 = *(v31 + 16);
        v7 = __OFADD__(v25, v6);
        v26 = v25 + v6;
        if (v7)
        {
          goto LABEL_47;
        }

        *(v31 + 16) = v26;
      }

LABEL_5:
      if (v4 == v32)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x277D84F90];
}