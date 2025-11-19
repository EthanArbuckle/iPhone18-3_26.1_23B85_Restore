uint64_t *sub_257FD5578(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v64 = a2;
  v65 = a4;
  v66 = a1;
  v67 = a3;
  v73 = *MEMORY[0x277D85DE8];
  v61 = sub_2580499C0();
  v60 = *(v61 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v58[-v9];
  v11 = sub_258049A20();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v62 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v58[-v16];
  swift_defaultActor_initialize();
  v18 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_configTasks;
  type metadata accessor for SingletonTaskManager();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v20 = MEMORY[0x277D84F90];
  *(v19 + 112) = sub_2580367CC(MEMORY[0x277D84F90]);
  *(v4 + v18) = v19;
  v21 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks;
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  v23 = v20;
  v24 = v64;
  *(v22 + 112) = sub_2580367CC(v23);
  *(v4 + v21) = v22;
  sub_257FDA854(v66, (v4 + 14));
  v63 = v4;
  v4[19] = v24;
  sub_257FDA958(v67, v10, &qword_27F915220, &qword_25804EC90);
  v25 = v12[6];
  if (v25(v10, 1, v11) == 1)
  {
    v26 = v12;
    sub_258049B10();
    v27 = v11;
    if (v25(v10, 1, v11) != 1)
    {
      sub_257FDAB84(v10, &qword_27F915220, &qword_25804EC90);
    }
  }

  else
  {
    v26 = v12;
    v28 = v12[4];
    v27 = v11;
    v28(v17, v10, v11);
  }

  *&v70 = 0x656761726F7453;
  *(&v70 + 1) = 0xE700000000000000;
  v29 = v60;
  v30 = v59;
  v31 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x277CC91D8], v61);
  sub_257FDA8B8();
  v32 = v62;
  v64 = v17;
  sub_258049A10();
  (*(v29 + 8))(v30, v31);
  v33 = objc_opt_self();
  v34 = [v33 defaultManager];
  sub_258049A00();
  v35 = sub_25804A100();

  v36 = [v34 fileExistsAtPath_];

  v37 = v63;
  if ((v36 & 1) == 0)
  {
    v38 = [v33 defaultManager];
    v39 = sub_2580499E0();
    *&v70 = 0;
    v40 = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:&v70];

    if (!v40)
    {
      v50 = v70;
      sub_2580499B0();

      swift_willThrow();
      v51 = v26[1];
      v51(v32, v27);
      v51(v64, v27);
      __swift_destroy_boxed_opaque_existential_1(v37 + 14);
      v52 = *(v37 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_configTasks);

      v53 = *(v37 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks);

      type metadata accessor for AppAssetResolverImpl();
      swift_defaultActor_destroy();
      sub_257FDAB84(v65, &qword_27F915230, &qword_25804B380);
      sub_257FDAB84(v67, &qword_27F915220, &qword_25804EC90);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v54 = *(*v37 + 48);
      v55 = *(*v37 + 52);
      swift_deallocPartialClassInstance();
      goto LABEL_14;
    }

    v41 = v70;
  }

  (v26[2])(v37 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetDirectoryURL, v32, v27);
  v42 = v65;
  sub_257FDA958(v65, &v68, &qword_27F915230, &qword_25804B380);
  if (v69)
  {
    sub_257FDAB84(v42, &qword_27F915230, &qword_25804B380);
    sub_257FDAB84(v67, &qword_27F915220, &qword_25804EC90);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v43 = v26[1];
    v43(v32, v27);
    v43(v64, v27);
    sub_257FDAA0C(&v68, &v70);
  }

  else
  {
    v44 = type metadata accessor for RemoteManagementAssetResolverImpl();
    v45 = swift_allocObject();
    v46 = MEMORY[0x277D84F90];
    *(v45 + 16) = sub_2580368D0(MEMORY[0x277D84F90]);
    v47 = sub_2580368D0(v46);
    swift_beginAccess();
    v48 = *(v45 + 16);
    *(v45 + 16) = v47;

    *(v45 + 24) = sub_257FDA9C0();
    v71 = v44;
    v72 = &off_286938E70;
    *&v70 = v45;
    sub_257FDAB84(v42, &qword_27F915230, &qword_25804B380);
    sub_257FDAB84(v67, &qword_27F915220, &qword_25804EC90);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v49 = v26[1];
    v49(v32, v27);
    v49(v64, v27);
    if (v69)
    {
      sub_257FDAB84(&v68, &qword_27F915230, &qword_25804B380);
    }
  }

  sub_257FDAA0C(&v70, v37 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver);
LABEL_14:
  v56 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t sub_257FD5CFC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for AppRecordLookalike(0);
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257FD5DF8, v2, 0);
}

uint64_t sub_257FD5DF8()
{
  v16 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_258049D30();
  v0[17] = __swift_project_value_buffer(v2, qword_27F919DD0);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v15);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_258032C5C(v6, v5, &v15);
    _os_log_impl(&dword_257FD4000, v3, v4, "%s - managementKey: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v9 = *__swift_project_boxed_opaque_existential_1((v0[12] + 112), *(v0[12] + 136));
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_257FD6010;
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[11];

  return sub_257FE1590(v11, v12, v13);
}

uint64_t sub_257FD6010()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_257FD63F0;
  }

  else
  {
    v6 = sub_257FD613C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_257FD613C()
{
  v20 = v0;
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v2 = v0[17];
    v3 = v0[11];
    sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);

    v4 = sub_258049D10();
    v5 = sub_25804A2D0();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[10];
      v6 = v0[11];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v19);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_258032C5C(v7, v6, &v19);
      _os_log_impl(&dword_257FD4000, v4, v5, "%s - no record found for managementKey: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v9, -1, -1);
      MEMORY[0x259C77210](v8, -1, -1);
    }

    v10 = v0[16];
    v11 = v0[13];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[12];
    sub_257FDABE4(v1, v0[16]);
    v0[3] = 0;
    v0[2] = 0;
    v15 = MEMORY[0x277D84F90];
    v0[8] = MEMORY[0x277D84F90];
    v0[9] = v15;
    v16 = *__swift_project_boxed_opaque_existential_1((v14 + 112), *(v14 + 136));
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = sub_257FD6610;
    v18 = v0[16];

    return sub_257FDEBB8(v18, v16, (v0 + 2), (v0 + 8), (v0 + 9));
  }
}

uint64_t sub_257FD63F0()
{
  v19 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[11];

  v4 = v1;
  v5 = sub_258049D10();
  v6 = sub_25804A2D0();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[10];
    v7 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_258032C5C(v8, v7, &v18);
    *(v9 + 22) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_257FD4000, v5, v6, "%s - Failed to resolve assets for app record (%s) with error: %@", v9, 0x20u);
    sub_257FDAB84(v10, &qword_27F915248, &qword_25804B388);
    MEMORY[0x259C77210](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v11, -1, -1);
    MEMORY[0x259C77210](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[16];
  v15 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_257FD6610()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_257FD6A6C;
  }

  else
  {
    v6 = sub_257FD673C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_257FD673C()
{
  v1 = v0[8];
  v2 = v0[12];
  v0[22] = v1;
  v3 = v1[2];
  v4 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_configTasks;
  v0[23] = v3;
  v0[24] = v4;
  if (v3)
  {
    v0[25] = 0;
    if (v1[2])
    {
      v5 = v0[3];
      if (v5)
      {
        v7 = v1[4];
        v6 = v1[5];
        v8 = v0[2];

        v0[4] = v7;
        v0[5] = v6;

        MEMORY[0x259C76670](32, 0xE100000000000000);
        MEMORY[0x259C76670](v8, v5);
        v9 = v0[4];
        v10 = v0[5];
        v0[26] = v10;
        v0[27] = *(v2 + v4);
        v11 = swift_allocObject();
        v0[28] = v11;
        v11[2] = v2;
        v11[3] = v7;
        v11[4] = v6;
        v11[5] = v8;
        v11[6] = v5;

        v12 = swift_task_alloc();
        v0[29] = v12;
        *v12 = v0;
        v12[1] = sub_257FD6CAC;
        v13 = &unk_25804F350;
LABEL_9:

        sub_258048C6C(v9, v10, v13, v11);
        return;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v0[9];
  v0[30] = v14;
  v15 = v14[2];
  v16 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks;
  v0[31] = v15;
  v0[32] = v16;
  if (v15)
  {
    v0[33] = 0;
    if (v14[2])
    {
      v17 = v0[3];
      if (v17)
      {
        v19 = v14[4];
        v18 = v14[5];
        v20 = v0[2];

        v0[6] = v19;
        v0[7] = v18;

        MEMORY[0x259C76670](32, 0xE100000000000000);
        MEMORY[0x259C76670](v20, v17);
        v9 = v0[6];
        v10 = v0[7];
        v0[34] = v10;
        v0[35] = *(v2 + v16);
        v11 = swift_allocObject();
        v0[36] = v11;
        v11[2] = v2;
        v11[3] = v19;
        v11[4] = v18;
        v11[5] = v20;
        v11[6] = v17;

        v21 = swift_task_alloc();
        v0[37] = v21;
        *v21 = v0;
        v21[1] = sub_257FD71A4;
        v13 = &unk_25804F270;
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
      return;
    }

    goto LABEL_16;
  }

  sub_257FDAC48(v0[16]);

  v22 = v0[3];

  v23 = v0[16];
  v24 = v0[13];

  v25 = v0[1];

  v25();
}

uint64_t sub_257FD6A6C()
{
  v22 = v0;
  sub_257FDAC48(v0[16]);
  v1 = v0[9];

  v2 = v0[8];

  v3 = v0[3];

  v4 = v0[21];
  v5 = v0[17];
  v6 = v0[11];

  v7 = v4;
  v8 = sub_258049D10();
  v9 = sub_25804A2D0();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v21);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_258032C5C(v11, v10, &v21);
    *(v12 + 22) = 2112;
    v15 = v4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_257FD4000, v8, v9, "%s - Failed to resolve assets for app record (%s) with error: %@", v12, 0x20u);
    sub_257FDAB84(v13, &qword_27F915248, &qword_25804B388);
    MEMORY[0x259C77210](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v14, -1, -1);
    MEMORY[0x259C77210](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[16];
  v18 = v0[13];

  v19 = v0[1];

  return v19();
}

uint64_t sub_257FD6CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[12];
  if (v0)
  {

    v9 = sub_257FDB004;
  }

  else
  {

    v9 = sub_257FD6E58;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

void sub_257FD6E58()
{
  v1 = v0[25] + 1;
  if (v1 != v0[23])
  {
    v0[25] = v1;
    v17 = v0[22];
    if (v1 < *(v17 + 16))
    {
      v18 = v0[3];
      if (v18)
      {
        v19 = v0[24];
        v20 = v0[12];
        v21 = v17 + 16 * v1;
        v23 = *(v21 + 32);
        v22 = *(v21 + 40);
        v24 = v0[2];

        v0[4] = v23;
        v0[5] = v22;

        MEMORY[0x259C76670](32, 0xE100000000000000);
        MEMORY[0x259C76670](v24, v18);
        v25 = v0[4];
        v26 = v0[5];
        v0[26] = v26;
        v0[27] = *(v20 + v19);
        v12 = swift_allocObject();
        v0[28] = v12;
        v12[2] = v20;
        v12[3] = v23;
        v12[4] = v22;
        v12[5] = v24;
        v12[6] = v18;

        v27 = swift_task_alloc();
        v0[29] = v27;
        *v27 = v0;
        v27[1] = sub_257FD6CAC;
        v14 = &unk_25804F350;
        v15 = v25;
        v16 = v26;
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = v0[12];
  v3 = v0[9];
  v0[30] = v3;
  v4 = v3[2];
  v5 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks;
  v0[31] = v4;
  v0[32] = v5;
  if (v4)
  {
    v0[33] = 0;
    if (v3[2])
    {
      v6 = v0[3];
      if (v6)
      {
        v8 = v3[4];
        v7 = v3[5];
        v9 = v0[2];

        v0[6] = v8;
        v0[7] = v7;

        MEMORY[0x259C76670](32, 0xE100000000000000);
        MEMORY[0x259C76670](v9, v6);
        v10 = v0[6];
        v11 = v0[7];
        v0[34] = v11;
        v0[35] = *(v2 + v5);
        v12 = swift_allocObject();
        v0[36] = v12;
        v12[2] = v2;
        v12[3] = v8;
        v12[4] = v7;
        v12[5] = v9;
        v12[6] = v6;

        v13 = swift_task_alloc();
        v0[37] = v13;
        *v13 = v0;
        v13[1] = sub_257FD71A4;
        v14 = &unk_25804F270;
        v15 = v10;
        v16 = v11;
LABEL_9:

        sub_258048C6C(v15, v16, v14, v12);
        return;
      }

LABEL_18:
      __break(1u);
      return;
    }

    goto LABEL_16;
  }

  v28 = v0[22];
  sub_257FDAC48(v0[16]);

  v29 = v0[3];

  v30 = v0[16];
  v31 = v0[13];

  v32 = v0[1];

  v32();
}

uint64_t sub_257FD71A4()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;

  v5 = v2[36];
  v6 = v2[35];
  v7 = v2[34];
  v8 = v2[12];
  if (v0)
  {

    v9 = sub_257FDB008;
  }

  else
  {

    v9 = sub_257FD7350;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

void sub_257FD7350()
{
  v1 = v0[33] + 1;
  if (v1 == v0[31])
  {
    v2 = v0[30];
    v3 = v0[22];
    sub_257FDAC48(v0[16]);

    v4 = v0[3];

    v5 = v0[16];
    v6 = v0[13];

    v7 = v0[1];

    v7();
    return;
  }

  v0[33] = v1;
  v8 = v0[30];
  if (v1 >= *(v8 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v0[3];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v0[32];
  v11 = v0[12];
  v12 = v8 + 16 * v1;
  v14 = *(v12 + 32);
  v13 = *(v12 + 40);
  v15 = v0[2];

  v0[6] = v14;
  v0[7] = v13;

  MEMORY[0x259C76670](32, 0xE100000000000000);
  MEMORY[0x259C76670](v15, v9);
  v16 = v0[6];
  v17 = v0[7];
  v0[34] = v17;
  v0[35] = *(v11 + v10);
  v18 = swift_allocObject();
  v0[36] = v18;
  v18[2] = v11;
  v18[3] = v14;
  v18[4] = v13;
  v18[5] = v15;
  v18[6] = v9;

  v19 = swift_task_alloc();
  v0[37] = v19;
  *v19 = v0;
  v19[1] = sub_257FD71A4;

  sub_258048C6C(v16, v17, &unk_25804F270, v18);
}

uint64_t sub_257FD7570(unint64_t a1, void *a2, char **a3, char **a4)
{
  v60 = a1;
  swift_getKeyPath();
  sub_257FDAF94(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FDAF94(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049F00();

  v6 = v61;
  v7 = a2[1];
  *a2 = v60;
  a2[1] = v6;

  v62 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049EF0();

  sub_257FF9754(a1);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  sub_257FF976C(a1);
  v60 = a1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  v9 = a1;
  if (a1 >> 62)
  {
    result = sub_25804A480();
    v10 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v11 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x259C768B0](v11, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    ++v11;
    swift_getKeyPath();
    sub_257FDAF94(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FDAF94(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
    sub_258049EF0();

    sub_257FF9754(v12);
    v60 = v12;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049EF0();

    sub_257FF976C(v12);

    v9 = a1;
  }

  while (v10 != v11);
LABEL_10:

  result = v62;
  if (v62 >> 62)
  {
    v56 = sub_25804A480();
    result = v62;
  }

  else
  {
    v56 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = &off_25804B000;
  if (v56)
  {
    if (v56 >= 1)
    {
      v14 = 32;
      v54 = result;
      while (1)
      {
        v16 = *(result + v14);
        v60 = v16;
        swift_getKeyPath();
        sub_257FDAF94(&qword_27F9152E8, type metadata accessor for DataRecord);

        sub_258049A90();

        swift_getKeyPath();
        sub_257FDAF94(&qword_27F9152A8, type metadata accessor for DataRecord);
        sub_257FDAF94(&qword_27F915278, type metadata accessor for DataAssetRecord);
        v17 = sub_258049EE0();

        if (!v17)
        {
          if (qword_27F915160 != -1)
          {
            swift_once();
          }

          v26 = sub_258049D30();
          __swift_project_value_buffer(v26, qword_27F919DD0);

          v27 = sub_258049D10();
          v28 = sub_25804A2D0();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v58 = v52;
            *v29 = 136315394;
            *(v29 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v58);
            *(v29 + 12) = 2080;
            v60 = v16;
            swift_getKeyPath();
            v30 = v28;
            sub_258049A90();

            swift_getKeyPath();
            sub_258049F00();

            v31 = sub_258032C5C(v60, v61, &v58);

            *(v29 + 14) = v31;
            _os_log_impl(&dword_257FD4000, v27, v30, "%s - Missing assets for data record (%s)", v29, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x259C77210](v52, -1, -1);
            MEMORY[0x259C77210](v29, -1, -1);
          }

          else
          {
          }

          goto LABEL_16;
        }

        v60 = v17;
        swift_getKeyPath();
        sub_257FDAF94(&qword_27F915270, type metadata accessor for DataAssetRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FDAB10();
        sub_258049F00();

        if (v61 == 1)
        {
          goto LABEL_21;
        }

        if (v61 != 2)
        {
          break;
        }

LABEL_16:
        v14 += 8;
        v15 = v56-- == 1;
        result = v54;
        if (v15)
        {

          v13 = &off_25804B000;
          goto LABEL_33;
        }
      }

      sub_257FDAB64(v60, v61);
LABEL_21:
      v60 = v17;
      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_258049F00();

      v18 = v60;
      v19 = v61;
      v20 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_25800A2A8(0, *(v20 + 2) + 1, 1, v20);
        *a3 = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        *a3 = sub_25800A2A8((v22 > 1), v23 + 1, 1, v20);
      }

      v24 = *a3;
      *(v24 + 2) = v23 + 1;
      v25 = &v24[16 * v23];
      *(v25 + 4) = v18;
      *(v25 + 5) = v19;
      goto LABEL_16;
    }

    goto LABEL_58;
  }

LABEL_33:
  result = v59;
  if (!(v59 >> 62))
  {
    v57 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_35;
    }
  }

  v48 = v59;
  v57 = sub_25804A480();
  result = v48;
  if (!v57)
  {
  }

LABEL_35:
  if (v57 >= 1)
  {
    v32 = 32;
    v51 = *(v13 + 84);
    v55 = result;
    while (1)
    {
      v35 = *(result + v32);
      v60 = v35;
      swift_getKeyPath();
      sub_257FDAF94(&qword_27F9152F0, type metadata accessor for CredentialRecord);

      sub_258049A90();

      swift_getKeyPath();
      sub_257FDAF94(&qword_27F9152C0, type metadata accessor for CredentialRecord);
      sub_257FDAF94(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
      v36 = sub_258049EE0();

      if (v36)
      {
        v60 = v36;
        swift_getKeyPath();
        sub_257FDAF94(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FDAB10();
        sub_258049F00();

        if (v61 != 1)
        {
          if (v61 == 2)
          {

            result = v55;
            goto LABEL_39;
          }

          sub_257FDAB64(v60, v61);
        }

        v60 = v36;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        v40 = v60;
        v41 = v61;
        v42 = *a4;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v42;
        if ((v43 & 1) == 0)
        {
          v42 = sub_25800A2A8(0, *(v42 + 2) + 1, 1, v42);
          *a4 = v42;
        }

        v45 = *(v42 + 2);
        v44 = *(v42 + 3);
        if (v45 >= v44 >> 1)
        {
          *a4 = sub_25800A2A8((v44 > 1), v45 + 1, 1, v42);
        }

        v46 = *a4;
        *(v46 + 2) = v45 + 1;
        v47 = &v46[16 * v45];
        *(v47 + 4) = v40;
        *(v47 + 5) = v41;
      }

      else
      {
        if (qword_27F915160 != -1)
        {
          swift_once();
        }

        v37 = sub_258049D30();
        __swift_project_value_buffer(v37, qword_27F919DD0);

        v38 = sub_258049D10();
        v39 = sub_25804A2D0();

        if (os_log_type_enabled(v38, v39))
        {
          v33 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v58 = v53;
          *v33 = v51;
          *(v33 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v58);
          *(v33 + 12) = 2080;
          v60 = v35;
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          v34 = sub_258032C5C(v60, v61, &v58);

          *(v33 + 14) = v34;
          _os_log_impl(&dword_257FD4000, v38, v39, "%s - Missing assets for credential record (%s)", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C77210](v53, -1, -1);
          MEMORY[0x259C77210](v33, -1, -1);
        }

        else
        {
        }
      }

      result = v55;
LABEL_39:
      v32 += 8;
      if (!--v57)
      {
      }
    }
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_257FD84CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_257FD8590;

  return sub_257FD8684(a2, a3, a4, a5);
}

uint64_t sub_257FD8590()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_257FD8684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = sub_2580499C0();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v9 = *(v8 + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = sub_258049A20();
  v5[14] = v10;
  v11 = *(v10 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257FD87E0, v4, 0);
}

uint64_t sub_257FD87E0()
{
  v18 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[6];
  v3 = sub_258049D30();
  v0[17] = __swift_project_value_buffer(v3, qword_27F919DD0);

  v4 = sub_258049D10();
  v5 = sub_25804A2C0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[7];
    v6 = v0[8];
    v9 = v0[5];
    v8 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_258032C5C(0xD000000000000043, 0x800000025804FE90, &v17);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_258032C5C(v9, v8, &v17);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_258032C5C(v7, v6, &v17);
    _os_log_impl(&dword_257FD4000, v4, v5, "%s - resolving data asset: %s configurationIdentifier: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v11, -1, -1);
    MEMORY[0x259C77210](v10, -1, -1);
  }

  v12 = *__swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_257FD8A44;
  v15 = v0[5];
  v14 = v0[6];

  return sub_257FDCC84(v15, v14, v12);
}

uint64_t sub_257FD8A44(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 128);
    v8 = *(v4 + 104);
    v9 = *(v4 + 80);

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {
    v12 = *(v4 + 72);
    *(v4 + 224) = a1 & 1;

    return MEMORY[0x2822009F8](sub_257FD8BAC, v12, 0);
  }
}

uint64_t sub_257FD8BAC()
{
  v35 = v0;
  if (*(v0 + 224) == 1)
  {
    v1 = *(v0 + 128);
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v34[0] = 0x5F7465737341;
    v34[1] = 0xE600000000000000;
    MEMORY[0x259C76670](v7, v8);
    *(v0 + 16) = 0x5F7465737341;
    *(v0 + 24) = 0xE600000000000000;
    (*(v3 + 104))(v2, *MEMORY[0x277CC91D8], v5);
    sub_257FDA8B8();
    sub_258049A10();
    (*(v3 + 8))(v2, v5);

    v9 = type metadata accessor for DataPersistenceValue();
    *(v0 + 152) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 160) = v11;
    *(v0 + 168) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v4, 1, 1, v9);
    *(v0 + 32) = 0;
    v12 = __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver), *(v6 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver + 24));
    v13 = *(v6 + 152);
    v14 = *v12;
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_257FD8F0C;
    v16 = *(v0 + 128);
    v17 = *(v0 + 56);
    v18 = *(v0 + 64);
    v20 = *(v0 + 40);
    v19 = *(v0 + 48);

    return sub_258046138(v20, v19, v17, v18, v16, v13);
  }

  else
  {
    v22 = *(v0 + 136);
    v23 = *(v0 + 48);

    v24 = sub_258049D10();
    v25 = sub_25804A2C0();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 40);
      v26 = *(v0 + 48);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_258032C5C(0xD000000000000043, 0x800000025804FE90, v34);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_258032C5C(v27, v26, v34);
      _os_log_impl(&dword_257FD4000, v24, v25, "%s - data asset already resolved: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v29, -1, -1);
      MEMORY[0x259C77210](v28, -1, -1);
    }

    v30 = *(v0 + 128);
    v31 = *(v0 + 104);
    v32 = *(v0 + 80);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_257FD8F0C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_257FD9190;
  }

  else
  {
    v6 = sub_257FD9038;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_257FD9038()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[10];
  sub_257FDAB84(v7, &qword_27F915268, &qword_25804F1E0);
  (*(v5 + 16))(v7, v4, v6);
  swift_storeEnumTagMultiPayload();
  v2(v7, 0, 1, v3);
  v0[24] = v0[23];
  v0[25] = 0;
  v8 = __swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  v0[26] = v8;
  v9 = *v8;
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FDAF94(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v11 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FD9268, v11, v10);
}

uint64_t sub_257FD9190()
{
  v1 = v0[23];
  v0[4] = v1;
  v0[24] = 0;
  v0[25] = v1;
  v2 = __swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  v0[26] = v2;
  v3 = *v2;
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FDAF94(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v5 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FD9268, v5, v4);
}

uint64_t sub_257FD9268()
{
  v1 = *(v0 + 192);
  sub_257FDD348(*(v0 + 40), *(v0 + 48), **(v0 + 208), (v0 + 32), *(v0 + 80));
  *(v0 + 216) = v1;
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = sub_257FD95D4;
  }

  else
  {
    v3 = sub_257FD9304;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_257FD9304()
{
  v29 = v0;
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[6];
    v4 = v1;

    v5 = v1;
    v6 = sub_258049D10();
    v7 = sub_25804A2D0();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[5];
      v8 = v0[6];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28[0] = v12;
      *v10 = 136315650;
      *(v10 + 4) = sub_258032C5C(0xD000000000000043, 0x800000025804FE90, v28);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_258032C5C(v9, v8, v28);
      *(v10 + 22) = 2112;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 24) = v14;
      *v11 = v14;
      _os_log_impl(&dword_257FD4000, v6, v7, "%s - data asset (%s failed to resolve with error: %@", v10, 0x20u);
      sub_257FDAB84(v11, &qword_27F915248, &qword_25804B388);
      MEMORY[0x259C77210](v11, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v12, -1, -1);
      MEMORY[0x259C77210](v10, -1, -1);
    }

    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[14];
    v18 = v0[10];
    swift_willThrow();
    (*(v16 + 8))(v15, v17);

    sub_257FDAB84(v18, &qword_27F915268, &qword_25804F1E0);
    v19 = v0[16];
    v20 = v0[13];
    v21 = v0[10];

    v22 = v0[1];
  }

  else
  {
    v23 = v0[10];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_257FDAB84(v23, &qword_27F915268, &qword_25804F1E0);
    v24 = v0[16];
    v25 = v0[13];
    v26 = v0[10];

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_257FD95D4()
{
  v1 = v0[25];
  v2 = v0[10];
  (*(v0[15] + 8))(v0[16], v0[14]);

  sub_257FDAB84(v2, &qword_27F915268, &qword_25804F1E0);
  v3 = v0[27];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_257FD9698(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_257FDAF94(&qword_27F915270, type metadata accessor for DataAssetRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FDAF94(&qword_27F915278, type metadata accessor for DataAssetRecord);
    sub_257FDAB10();
    sub_258049F00();

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 0;
      }

      sub_257FDAB64(v1, v2);
    }

    return 1;
  }

  return result;
}

uint64_t sub_257FD97CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_257FDAFFC;

  return sub_257FD9890(a2, a3, a4, a5);
}

uint64_t sub_257FD9890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_257FD98B8, v4, 0);
}

uint64_t sub_257FD98B8()
{
  v20 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[6];
  v3 = sub_258049D30();
  v0[10] = __swift_project_value_buffer(v3, qword_27F919DD0);

  v4 = sub_258049D10();
  v5 = sub_25804A2C0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[7];
    v6 = v0[8];
    v9 = v0[5];
    v8 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_258032C5C(0xD000000000000049, 0x800000025804FE20, &v19);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_258032C5C(v9, v8, &v19);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_258032C5C(v7, v6, &v19);
    _os_log_impl(&dword_257FD4000, v4, v5, "%s - resolving credential asset: %s configurationIdentifier: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v11, -1, -1);
    MEMORY[0x259C77210](v10, -1, -1);
  }

  v12 = *__swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_257FD9B20;
  v14 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];

  return sub_257FDDC54(v17, v16, v14, v15, v12);
}

uint64_t sub_257FD9B20(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 72);
    *(v4 + 160) = a1 & 1;

    return MEMORY[0x2822009F8](sub_257FD9C70, v9, 0);
  }
}

uint64_t sub_257FD9C70()
{
  v21 = v0;
  if (*(v0 + 160) == 1)
  {
    v1 = *(v0 + 72);
    *(v0 + 16) = xmmword_25804B2B0;
    *(v0 + 32) = 0;
    v2 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver), *(v1 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver + 24));
    v3 = *(v1 + 152);
    v4 = *v2;
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_257FD9EC8;
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);

    return sub_258046B90(v9, v8, v6, v7, 0xD000000000000016, 0x800000025804FE70, v3);
  }

  else
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 48);

    v13 = sub_258049D10();
    v14 = sub_25804A2C0();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_258032C5C(0xD000000000000049, 0x800000025804FE20, &v20);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_258032C5C(v16, v15, &v20);
      _os_log_impl(&dword_257FD4000, v13, v14, "%s - data asset already resolved: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v18, -1, -1);
      MEMORY[0x259C77210](v17, -1, -1);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_257FD9EC8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  v6[13] = v2;

  v9 = v6[9];
  if (v2)
  {
    v10 = sub_257FDA0F0;
  }

  else
  {
    v6[14] = a2;
    v6[15] = a1;
    v10 = sub_257FDA008;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_257FDA008()
{
  v1 = v0[14];
  v2 = v0[15];
  sub_257FDAAA0(0, 0xF000000000000000);
  v0[2] = v2;
  v0[3] = v1;
  v0[16] = v0[13];
  v0[17] = 0;
  v3 = __swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  v0[18] = v3;
  v4 = *v3;
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FDAF94(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v6 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDA1C8, v6, v5);
}

uint64_t sub_257FDA0F0()
{
  v1 = v0[13];
  v0[4] = v1;
  v0[16] = 0;
  v0[17] = v1;
  v2 = __swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  v0[18] = v2;
  v3 = *v2;
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FDAF94(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v5 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDA1C8, v5, v4);
}

uint64_t sub_257FDA1C8()
{
  v1 = *(v0 + 128);
  sub_257FDE32C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), **(v0 + 144), (v0 + 32), (v0 + 16));
  *(v0 + 152) = v1;
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = sub_257FDA498;
  }

  else
  {
    v3 = sub_257FDA268;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_257FDA268()
{
  v18 = v0;
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[6];
    v4 = v1;

    v5 = v1;
    v6 = sub_258049D10();
    v7 = sub_25804A2D0();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[5];
      v8 = v0[6];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v10 = 136315650;
      *(v10 + 4) = sub_258032C5C(0xD000000000000049, 0x800000025804FE20, v17);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_258032C5C(v9, v8, v17);
      *(v10 + 22) = 2112;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 24) = v14;
      *v11 = v14;
      _os_log_impl(&dword_257FD4000, v6, v7, "%s - credential asset (%s) failed to resolve with error: %@", v10, 0x20u);
      sub_257FDAB84(v11, &qword_27F915248, &qword_25804B388);
      MEMORY[0x259C77210](v11, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v12, -1, -1);
      MEMORY[0x259C77210](v10, -1, -1);
    }

    swift_willThrow();
    sub_257FDAAA0(v0[2], v0[3]);
    v15 = v0[1];
  }

  else
  {
    sub_257FDAAA0(v0[2], v0[3]);
    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_257FDA498()
{
  sub_257FDAAA0(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 152);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257FDA504(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_257FDAF94(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FDAF94(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
    sub_257FDAB10();
    sub_258049F00();

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 0;
      }

      sub_257FDAB64(v1, v2);
    }

    return 1;
  }

  return result;
}

uint64_t sub_257FDA638()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetDirectoryURL;
  v2 = sub_258049A20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver));
  v3 = *(v0 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_configTasks);

  v4 = *(v0 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AppAssetResolverImpl()
{
  result = qword_27F9151B0;
  if (!qword_27F9151B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257FDA73C()
{
  result = sub_258049A20();
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_257FDA854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_257FDA8B8()
{
  result = qword_27F915228;
  if (!qword_27F915228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915228);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_257FDA958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_257FDA9C0()
{
  result = qword_27F915238;
  if (!qword_27F915238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F915238);
  }

  return result;
}

uint64_t sub_257FDAA0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_257FDAAA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_257FDAAB4(a1, a2);
  }

  return a1;
}

uint64_t sub_257FDAAB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_257FDAB10()
{
  result = qword_27F915260;
  if (!qword_27F915260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915260);
  }

  return result;
}

uint64_t sub_257FDAB64(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_257FDAB84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_257FDABE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRecordLookalike(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257FDAC48(uint64_t a1)
{
  v2 = type metadata accessor for AppRecordLookalike(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_257FDAD00()
{
  result = qword_27F915298;
  if (!qword_27F915298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9152A0, &qword_25804B460);
    sub_257FDAF94(&qword_27F9152A8, type metadata accessor for DataRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915298);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_257FDAE04()
{
  result = qword_27F9152B0;
  if (!qword_27F9152B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9152B8, &qword_25804B490);
    sub_257FDAF94(&qword_27F9152C0, type metadata accessor for CredentialRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9152B0);
  }

  return result;
}

unint64_t sub_257FDAEC0()
{
  result = qword_27F9152C8;
  if (!qword_27F9152C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9152D0, &qword_25804B4C0);
    sub_257FDAF94(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9152C8);
  }

  return result;
}

uint64_t sub_257FDAF94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257FDB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v9 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDB0D0, v9, v8);
}

uint64_t sub_257FDB0D0()
{
  v31 = v0;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919DE8);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_258032C5C(0xD000000000000032, 0x80000002580503E0, v30);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_258032C5C(v6, v5, v30);
    _os_log_impl(&dword_257FD4000, v3, v4, "%s - record: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v9 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  sub_257FE700C();

  v15 = sub_25800EF1C(v14, v13, v12);
  v0[2] = v15;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049F00();

  v16 = sub_257FE2864(v0[2], v0[3]);

  if (v16)
  {
    if (sub_25800C6E4(v16, v15))
    {
      sub_257FFA79C(v0[4]);

      goto LABEL_12;
    }

    v20 = v0[10];
    sub_257FFCAC0(v16);
    if (*(v20 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {
      v21 = *(v20 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

      sub_257FEEB5C(v15, v16);
    }

    v22 = v0[10];
    sub_257FE68A0(v15, 0);
    v23 = v0[10];
    sub_257FE6B38(v16, 0);
  }

  else
  {
    v19 = v0[10];
    sub_257FE68A0(v15, 0);
  }

  v24 = v0[10];
  sub_257FE6DD0();
  v25 = v0[10];
  v26 = *(v25 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);
  if (v26)
  {
    v27 = *(v26 + 16);
    v28 = *(v25 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

    sub_258043768();
    v29 = *(v26 + 24);
    sub_258043768();
  }

  sub_257FFA79C(v0[4]);
LABEL_12:

  v18 = v0[1];

  return v18();
}

uint64_t sub_257FDB4F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_257FE2864(a1, a2);
  if (!v3 && result)
  {
    v8 = result;
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v9 = sub_258049D30();
    __swift_project_value_buffer(v9, qword_27F919DE8);

    v10 = sub_258049D10();
    v11 = sub_25804A2C0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258032C5C(0xD000000000000026, 0x8000000258050380, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258032C5C(a1, a2, &v14);
      _os_log_impl(&dword_257FD4000, v10, v11, "%s - recordID: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v13, -1, -1);
      MEMORY[0x259C77210](v12, -1, -1);
    }

    sub_257FDBA58(v8, a3);
  }

  return result;
}

uint64_t sub_257FDB6B8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  result = sub_257FE2C98(a1, a2);
  if (!v4 && result)
  {
    v10 = result;
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919DE8);

    v12 = sub_258049D10();
    v13 = sub_25804A2C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_258032C5C(0xD00000000000002BLL, 0x80000002580502F0, &v16);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_258032C5C(a1, a2, &v16);
      _os_log_impl(&dword_257FD4000, v12, v13, "%s - managementKey: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v15, -1, -1);
      MEMORY[0x259C77210](v14, -1, -1);
    }

    sub_257FDC0E4(v10, a3, a4);
  }

  return result;
}

uint64_t sub_257FDB890(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_257FE2C98(a1, a2);
  if (!v3 && result)
  {
    v8 = result;
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v9 = sub_258049D30();
    __swift_project_value_buffer(v9, qword_27F919DE8);

    v10 = sub_258049D10();
    v11 = sub_25804A2C0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258032C5C(0xD00000000000002BLL, 0x80000002580502F0, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258032C5C(a1, a2, &v14);
      _os_log_impl(&dword_257FD4000, v10, v11, "%s - managementKey: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v13, -1, -1);
      MEMORY[0x259C77210](v12, -1, -1);
    }

    sub_257FDC6B4(v8, a3);
  }

  return result;
}

uint64_t sub_257FDBA58(unint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  v3 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v4 = sub_258049D30();
  __swift_project_value_buffer(v4, qword_27F919DE8);

  v5 = sub_258049D10();
  v6 = sub_25804A2C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v7 = 136315394;
    *(v7 + 4) = sub_258032C5C(0xD000000000000024, 0x8000000258050320, &v23);
    *(v7 + 12) = 2080;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v8 = sub_258032C5C(a1, v22, &v23);

    *(v7 + 14) = v8;
    _os_log_impl(&dword_257FD4000, v5, v6, "%s - record: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v19, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  else
  {
  }

  sub_257FE700C();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_258049A80();

  sub_257FE7384();
  if (!v20)
  {
    sub_257FE7A6C();
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v10 = sub_258049EE0();

    if (v3)
    {
      if (v10)
      {

        v12 = sub_25800B93C(v11, v10);

        if (v12)
        {
LABEL_16:
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          sub_257FE6DD0();
          v14 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);
          if (v14)
          {
            v15 = *(v14 + 16);
            v16 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

            sub_258043768();
            v17 = *(v14 + 24);
            sub_258043768();
          }
        }
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 == 1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {
      v13 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

      sub_257FEFACC(a1);
    }

    goto LABEL_16;
  }
}

uint64_t sub_257FDC0E4(unint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  v23 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v5 = sub_258049D30();
  __swift_project_value_buffer(v5, qword_27F919DE8);

  v6 = sub_258049D10();
  v7 = sub_25804A2C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v8 = 136315394;
    *(v8 + 4) = sub_258032C5C(0xD000000000000024, 0x8000000258050320, &v25);
    *(v8 + 12) = 2080;
    swift_getKeyPath();
    v20 = a2;
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v9 = sub_258032C5C(a1, v24, &v25);

    *(v8 + 14) = v9;
    a2 = v20;
    _os_log_impl(&dword_257FD4000, v6, v7, "%s - record: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v19, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  sub_257FE700C();
  sub_25802B180(a1, a3);
  sub_257FE7384();
  if (!v22)
  {
    sub_257FE7A6C();
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v10 = sub_258049EE0();

    if (v23)
    {
      if (v10)
      {

        v12 = sub_25800B93C(v11, v10);

        if (v12)
        {
LABEL_15:
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          sub_257FE6DD0();
          v14 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);
          if (v14)
          {
            v15 = *(v14 + 16);
            v16 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

            sub_258043768();
            v17 = *(v14 + 24);
            sub_258043768();
          }
        }
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 == 1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {
      v13 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

      sub_257FEFACC(a1);
    }

    goto LABEL_15;
  }
}

uint64_t sub_257FDC6B4(unint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  v21 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v4 = sub_258049D30();
  __swift_project_value_buffer(v4, qword_27F919DE8);

  v5 = sub_258049D10();
  v6 = sub_25804A2C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v7 = 136315394;
    *(v7 + 4) = sub_258032C5C(0xD000000000000024, 0x8000000258050320, &v23);
    *(v7 + 12) = 2080;
    swift_getKeyPath();
    v19 = a2;
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v8 = sub_258032C5C(a1, v22, &v23);

    *(v7 + 14) = v8;
    a2 = v19;
    _os_log_impl(&dword_257FD4000, v5, v6, "%s - record: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v18, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  sub_257FE700C();
  sub_25802C20C();
  sub_257FE7384();
  if (!v20)
  {
    sub_257FE7A6C();
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v9 = sub_258049EE0();

    if (v21)
    {
      if (v9)
      {

        v11 = sub_25800B93C(v10, v9);

        if (v11)
        {
LABEL_15:
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          sub_257FE6DD0();
          v13 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);
          if (v13)
          {
            v14 = *(v13 + 16);
            v15 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

            sub_258043768();
            v16 = *(v13 + 24);
            sub_258043768();
          }
        }
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 == 1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {
      v12 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

      sub_257FEFACC(a1);
    }

    goto LABEL_15;
  }
}

uint64_t sub_257FDCC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C0, &qword_25804B9F8) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C8, &qword_25804BA00);
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v9 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDCDE4, v9, v8);
}

uint64_t sub_257FDCDE4()
{
  v32 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v0[2] = type metadata accessor for DataAssetRecord(0);
  sub_258049A70();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D0, &qword_25804BA30);
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord);
  sub_258049E80();
  v8 = sub_25801CA64(v1);
  (*(v0[8] + 8))(v0[9], v0[7]);
  if (v8 >> 62)
  {
    if (sub_25804A480() >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:

    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v9 = v0[4];
    v10 = sub_258049D30();
    __swift_project_value_buffer(v10, qword_27F919DE8);

    v11 = sub_258049D10();
    v12 = sub_25804A2D0();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[3];
      v13 = v0[4];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_258032C5C(0xD000000000000021, 0x80000002580501A0, v31);
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_258032C5C(v14, v13, v31);
      _os_log_impl(&dword_257FD4000, v11, v12, "%{public}s - too many asset records found for managementKey %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v16, -1, -1);
      MEMORY[0x259C77210](v15, -1, -1);
    }

    v17 = 0;
    goto LABEL_22;
  }

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v18 = v0[4];
  v19 = sub_258049D30();
  __swift_project_value_buffer(v19, qword_27F919DE8);

  v20 = sub_258049D10();
  v21 = sub_25804A2C0();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[3];
    v22 = v0[4];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_258032C5C(0xD000000000000021, 0x80000002580501A0, v31);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_258032C5C(v23, v22, v31);
    _os_log_impl(&dword_257FD4000, v20, v21, "%s - managementKey: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v25, -1, -1);
    MEMORY[0x259C77210](v24, -1, -1);
  }

  if (v8 >> 62)
  {
    result = sub_25804A480();
    if (result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_15:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x259C768B0](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v27 = *(v8 + 32);
      }

      goto LABEL_21;
    }
  }

  v27 = 0;
LABEL_21:
  v17 = sub_257FD9698(v27);

LABEL_22:
  v28 = v0[9];
  v29 = v0[6];

  v30 = v0[1];

  return v30(v17 & 1);
}

void sub_257FDD348(uint64_t a1, NSObject *a2, uint64_t a3, void **a4, uint64_t a5)
{
  v66 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C0, &qword_25804B9F8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C8, &qword_25804BA00);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v59 - v20;
  v63 = a1;
  v68 = a1;
  v69 = a2;
  v65 = a2;
  v70[2] = type metadata accessor for DataAssetRecord(0);
  sub_258049A70();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D0, &qword_25804BA30);
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord);
  sub_258049E80();
  v23 = a3;
  v24 = v67;
  v25 = sub_25801CA64(v21);
  (*(v18 + 8))(v21, v17);
  if (v24)
  {
    return;
  }

  v26 = v65;
  v67 = v12;
  v59[1] = v23;
  v27 = v25 >> 62;
  if (v25 >> 62)
  {
    v28 = sub_25804A480();
  }

  else
  {
    v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v67;
  if (v28 >= 1)
  {
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v30 = sub_258049D30();
    __swift_project_value_buffer(v30, qword_27F919DE8);
    v31 = v26;

    v26 = sub_258049D10();
    v32 = sub_25804A2C0();

    v33 = os_log_type_enabled(v26, v32);
    v64 = v25;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v70[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_258032C5C(0xD000000000000025, 0x8000000258050170, v70);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_258032C5C(v63, v31, v70);
      _os_log_impl(&dword_257FD4000, v26, v32, "%s - managementKey: %s", v34, 0x16u);
      swift_arrayDestroy();
      v36 = v35;
      v25 = v64;
      MEMORY[0x259C77210](v36, -1, -1);
      MEMORY[0x259C77210](v34, -1, -1);
    }

    sub_257FE700C();
    if (v27)
    {
      v37 = sub_25804A480();
    }

    else
    {
      v37 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v66;
    if (!v37)
    {
LABEL_26:

      sub_257FE6DD0();
      return;
    }

    if (v37 >= 1)
    {
      v47 = 0;
      v61 = v25 & 0xC000000000000001;
      v60 = xmmword_25804B650;
      v62 = v37;
      v63 = a5;
      while (1)
      {
        if (v61)
        {
          v51 = MEMORY[0x259C768B0](v47, v25);
          v52 = *v46;
          if (*v46)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v51 = *(v25 + 8 * v47 + 32);

          v52 = *v46;
          if (*v46)
          {
LABEL_25:
            v70[0] = v52;
            v53 = v52;
            v54 = v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
            v55 = sub_25804A120();
            v57 = v56;
            v70[0] = v51;
            KeyPath = swift_getKeyPath();
            v65 = v59;
            MEMORY[0x28223BE20](KeyPath);
            v59[-4] = v51;
            v59[-3] = v55;
            v59[-2] = v57;
            sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord);
            v29 = v67;
            sub_258049A80();

            goto LABEL_20;
          }
        }

        sub_257FDA958(a5, v29, &qword_27F915268, &qword_25804F1E0);
        v70[0] = v51;
        v48 = swift_getKeyPath();
        MEMORY[0x28223BE20](v48);
        v49 = v67;
        v59[-2] = v51;
        v59[-1] = v49;
        sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord);
        sub_258049A80();

        v29 = v67;
        sub_257FDAB84(v67, &qword_27F915268, &qword_25804F1E0);
        v70[0] = v51;
        v50 = swift_getKeyPath();
        MEMORY[0x28223BE20](v50);
        v59[-4] = v51;
        *&v59[-3] = v60;
        sub_258049A80();

LABEL_20:
        ++v47;
        a5 = v63;
        v46 = v66;
        v25 = v64;
        if (v62 == v47)
        {
          goto LABEL_26;
        }
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  if (qword_27F915168 != -1)
  {
LABEL_30:
    swift_once();
  }

  v38 = sub_258049D30();
  __swift_project_value_buffer(v38, qword_27F919DE8);
  v39 = v26;

  v40 = sub_258049D10();
  v41 = sub_25804A2D0();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v63;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v70[0] = v45;
    *v44 = 136446466;
    *(v44 + 4) = sub_258032C5C(0xD000000000000025, 0x8000000258050170, v70);
    *(v44 + 12) = 2082;
    *(v44 + 14) = sub_258032C5C(v43, v39, v70);
    _os_log_impl(&dword_257FD4000, v40, v41, "%{public}s - no asset records found for managementKey %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v45, -1, -1);
    MEMORY[0x259C77210](v44, -1, -1);
  }
}

uint64_t sub_257FDDC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915328, &qword_25804B850) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915330, &qword_25804B858);
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v11 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDDDB8, v11, v10);
}

uint64_t sub_257FDDDB8()
{
  v33 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v31 = *(v0 + 40);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v6 + 16) = v31;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  *(v0 + 16) = type metadata accessor for CredentialAssetRecord(0);
  sub_258049A70();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915338, &qword_25804B888);
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  sub_258049E80();
  v8 = sub_25801CD04(v1);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  if (v8 >> 62)
  {
    if (sub_25804A480() >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:

    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 32);
    v10 = sub_258049D30();
    __swift_project_value_buffer(v10, qword_27F919DE8);

    v11 = sub_258049D10();
    v12 = sub_25804A2D0();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 24);
      v13 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_258032C5C(0xD00000000000003BLL, 0x8000000258050130, v32);
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_258032C5C(v14, v13, v32);
      _os_log_impl(&dword_257FD4000, v11, v12, "%{public}s - too many asset records found for managementKey %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v16, -1, -1);
      MEMORY[0x259C77210](v15, -1, -1);
    }

    v17 = 0;
    goto LABEL_22;
  }

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 32);
  v19 = sub_258049D30();
  __swift_project_value_buffer(v19, qword_27F919DE8);

  v20 = sub_258049D10();
  v21 = sub_25804A2C0();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = *(v0 + 24);
    v22 = *(v0 + 32);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_258032C5C(0xD00000000000003BLL, 0x8000000258050130, v32);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_258032C5C(v23, v22, v32);
    _os_log_impl(&dword_257FD4000, v20, v21, "%s - managementKey: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v25, -1, -1);
    MEMORY[0x259C77210](v24, -1, -1);
  }

  if (v8 >> 62)
  {
    result = sub_25804A480();
    if (result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_15:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x259C768B0](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v27 = *(v8 + 32);
      }

      goto LABEL_21;
    }
  }

  v27 = 0;
LABEL_21:
  v17 = sub_257FDA504(v27);

LABEL_22:
  v28 = *(v0 + 88);
  v29 = *(v0 + 64);

  v30 = *(v0 + 8);

  return v30(v17 & 1);
}

void sub_257FDE32C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t *a7)
{
  v66 = a6;
  v65 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915328, &qword_25804B850);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915330, &qword_25804B858);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  v68 = a3;
  v69 = a4;
  v70 = a1;
  v71 = a2;
  v72[2] = type metadata accessor for CredentialAssetRecord(0);
  sub_258049A70();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915338, &qword_25804B888);
  (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
  sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  sub_258049E80();
  v22 = v67;
  v23 = sub_25801CD04(v20);
  (*(v17 + 8))(v20, v16);
  v67 = v22;
  if (v22)
  {
    return;
  }

  v24 = a1;
  v58[1] = a5;
  v25 = v23 >> 62;
  if (v23 >> 62)
  {
    v26 = sub_25804A480();
  }

  else
  {
    v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = a2;
  if (v26 >= 1)
  {
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v28 = sub_258049D30();
    __swift_project_value_buffer(v28, qword_27F919DE8);

    v29 = sub_258049D10();
    v30 = sub_25804A2C0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v23;
      v33 = swift_slowAlloc();
      v72[0] = v33;
      *v31 = 136315394;
      *(v31 + 4) = sub_258032C5C(0xD00000000000003FLL, 0x80000002580500F0, v72);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_258032C5C(v24, v27, v72);
      _os_log_impl(&dword_257FD4000, v29, v30, "%s - managementKey: %s", v31, 0x16u);
      swift_arrayDestroy();
      v34 = v33;
      v23 = v32;
      MEMORY[0x259C77210](v34, -1, -1);
      MEMORY[0x259C77210](v31, -1, -1);
    }

    sub_257FE700C();
    if (v25)
    {
      v35 = sub_25804A480();
      v36 = v66;
      if (!v35)
      {
LABEL_26:

        v57 = v67;
        sub_257FE6DD0();
        v67 = v57;
        return;
      }
    }

    else
    {
      v35 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v66;
      if (!v35)
      {
        goto LABEL_26;
      }
    }

    if (v35 >= 1)
    {
      v42 = 0;
      v62 = v23 & 0xC000000000000001;
      v59 = xmmword_25804B650;
      v63 = v35;
      v64 = v23;
      do
      {
        if (v62)
        {
          v48 = MEMORY[0x259C768B0](v42, v23);
        }

        else
        {
          v48 = *(v23 + 8 * v42 + 32);
        }

        v49 = *v36;
        if (*v36)
        {
          v72[0] = *v36;
          v50 = v49;
          v51 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
          v52 = sub_25804A120();
          v54 = v53;
          v72[0] = v48;
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          v58[-4] = v48;
          v58[-3] = v52;
          v58[-2] = v54;
          sub_257FEE724(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
          v56 = v67;
          sub_258049A80();
          v67 = v56;
        }

        else
        {
          v44 = *v65;
          v43 = v65[1];
          v60 = OBJC_IVAR____TtC15ManagedAppsCore21CredentialAssetRecord___observationRegistrar;
          v72[0] = v48;
          v45 = swift_getKeyPath();
          v61 = v58;
          MEMORY[0x28223BE20](v45);
          v58[-4] = v48;
          v58[-3] = v44;
          v58[-2] = v43;
          sub_257FECD68(v44, v43);
          sub_257FEE724(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
          v46 = v67;
          sub_258049A80();
          sub_257FDAAA0(v44, v43);

          v72[0] = v48;
          v47 = swift_getKeyPath();
          MEMORY[0x28223BE20](v47);
          v58[-4] = v48;
          *&v58[-3] = v59;
          sub_258049A80();
          v67 = v46;
        }

        ++v42;
        v23 = v64;
        v36 = v66;
      }

      while (v63 != v42);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (qword_27F915168 != -1)
  {
LABEL_30:
    swift_once();
  }

  v37 = sub_258049D30();
  __swift_project_value_buffer(v37, qword_27F919DE8);

  v38 = sub_258049D10();
  v39 = sub_25804A2D0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v72[0] = v41;
    *v40 = 136446466;
    *(v40 + 4) = sub_258032C5C(0xD00000000000003FLL, 0x80000002580500F0, v72);
    *(v40 + 12) = 2082;
    *(v40 + 14) = sub_258032C5C(v24, v27, v72);
    _os_log_impl(&dword_257FD4000, v38, v39, "%{public}s - no asset records found for managementKey %{public}s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v41, -1, -1);
    MEMORY[0x259C77210](v40, -1, -1);
  }
}

uint64_t sub_257FDEBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_258049FB0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v10 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDECE8, v10, v9);
}

uint64_t sub_257FDECE8()
{
  v42 = v0;
  v1 = *(v0 + 88);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  v4 = sub_258049DF0();

  if (object_getClass(v4) != _TtC15ManagedAppsCore9AppRecord || v4 == 0)
  {
    swift_unknownObjectRelease();
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = *(v0 + 16);
    v10 = sub_258049D30();
    __swift_project_value_buffer(v10, qword_27F919DE8);
    v11 = *(v8 + 16);
    v11(v6, v9, v7);
    v12 = sub_258049D10();
    v13 = sub_25804A2D0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 80);
    if (v14)
    {
      v16 = *(v0 + 64);
      v17 = *(v0 + 72);
      v18 = *(v0 + 56);
      v19 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41[0] = v40;
      *v19 = 136446466;
      *(v19 + 4) = sub_258032C5C(0xD000000000000035, 0x80000002580501D0, v41);
      *(v19 + 12) = 2082;
      v11(v17, v15, v18);
      v20 = sub_25804A120();
      v22 = v21;
      (*(v16 + 8))(v15, v18);
      v23 = sub_258032C5C(v20, v22, v41);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_257FD4000, v12, v13, "%{public}s - no app record found for persistent id %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v40, -1, -1);
      MEMORY[0x259C77210](v19, -1, -1);
    }

    else
    {
      v34 = *(v0 + 56);
      v35 = *(v0 + 64);

      (*(v35 + 8))(v15, v34);
    }
  }

  else
  {
    v24 = qword_27F915168;
    swift_unknownObjectRetain();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_258049D30();
    __swift_project_value_buffer(v25, qword_27F919DE8);
    swift_unknownObjectRetain();
    v26 = sub_258049D10();
    v27 = sub_25804A2C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_258032C5C(0xD000000000000035, 0x80000002580501D0, v41);
      *(v28 + 12) = 2080;
      swift_unknownObjectRetain();
      v30 = sub_2580177CC();
      v32 = v31;
      swift_unknownObjectRelease();
      v33 = sub_258032C5C(v30, v32, v41);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_257FD4000, v26, v27, "%s - appRecord: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v29, -1, -1);
      MEMORY[0x259C77210](v28, -1, -1);
    }

    sub_257FD7570(v4, *(v0 + 32), *(v0 + 40), *(v0 + 48));
    swift_unknownObjectRelease_n();
  }

  v37 = *(v0 + 72);
  v36 = *(v0 + 80);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_257FDF19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_258049FB0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v8 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDF2C8, v8, v7);
}

uint64_t sub_257FDF2C8()
{
  v42 = v0;
  v1 = *(v0 + 72);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  v4 = sub_258049DF0();

  if (object_getClass(v4) != _TtC15ManagedAppsCore9AppRecord || v4 == 0)
  {
    swift_unknownObjectRelease();
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = sub_258049D30();
    __swift_project_value_buffer(v10, qword_27F919DE8);
    v11 = *(v8 + 16);
    v11(v6, v9, v7);
    v12 = sub_258049D10();
    v13 = sub_25804A2D0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 64);
    if (v14)
    {
      v16 = *(v0 + 48);
      v17 = *(v0 + 56);
      v18 = *(v0 + 40);
      v19 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41[0] = v40;
      *v19 = 136446466;
      *(v19 + 4) = sub_258032C5C(0xD000000000000035, 0x80000002580501D0, v41);
      *(v19 + 12) = 2082;
      v11(v17, v15, v18);
      v20 = sub_25804A120();
      v22 = v21;
      (*(v16 + 8))(v15, v18);
      v23 = sub_258032C5C(v20, v22, v41);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_257FD4000, v12, v13, "%{public}s - no app record found for persistent id %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v40, -1, -1);
      MEMORY[0x259C77210](v19, -1, -1);
    }

    else
    {
      v34 = *(v0 + 40);
      v35 = *(v0 + 48);

      (*(v35 + 8))(v15, v34);
    }
  }

  else
  {
    v24 = qword_27F915168;
    swift_unknownObjectRetain();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_258049D30();
    __swift_project_value_buffer(v25, qword_27F919DE8);
    swift_unknownObjectRetain();
    v26 = sub_258049D10();
    v27 = sub_25804A2C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_258032C5C(0xD000000000000035, 0x80000002580501D0, v41);
      *(v28 + 12) = 2080;
      swift_unknownObjectRetain();
      v30 = sub_2580177CC();
      v32 = v31;
      swift_unknownObjectRelease();
      v33 = sub_258032C5C(v30, v32, v41);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_257FD4000, v26, v27, "%s - appRecord: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v29, -1, -1);
      MEMORY[0x259C77210](v28, -1, -1);
    }

    sub_25802E0C8(v4, *(v0 + 32));
    swift_unknownObjectRelease_n();
  }

  v37 = *(v0 + 56);
  v36 = *(v0 + 64);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_257FDF778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = *(*(type metadata accessor for ExtensionRecordLookalike(0) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AppRecordLookalike(0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for LookalikeType(0);
  v4[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = sub_258049FB0();
  v4[29] = v9;
  v10 = *(v9 - 8);
  v4[30] = v10;
  v11 = *(v10 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v13 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDF934, v13, v12);
}

uint64_t sub_257FDF934()
{
  v58 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  sub_257FECC14(v6, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 248);
  v9 = *(v0 + 224);
  v10 = *(v0 + 232);
  v11 = 184;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v11 = 192;
    v12 = type metadata accessor for AppRecordLookalike;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v13 = type metadata accessor for AppRecordLookalike;
  }

  v14 = *(v0 + v11);
  sub_257FECC78(*(v0 + 224), v14, v12);
  (*(v2 + 16))(v8, v14, v10);
  sub_257FECCE0(v14, v13);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v17 = *(v0 + 232);
  v18 = sub_258049DF0();
  v20 = v19;

  (*(v16 + 8))(v15, v17);
  *(v0 + 136) = v18;
  *(v0 + 144) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155A8, &qword_25804BC38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_257FDA958(v0 + 16, v0 + 96, &qword_27F9155B0, &unk_25804BC40);
  if (*(v0 + 120))
  {
    v21 = (v0 + 56);
    sub_257FDAA0C((v0 + 96), v0 + 56);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 216);
    v23 = *(v0 + 152);
    v24 = sub_258049D30();
    __swift_project_value_buffer(v24, qword_27F919DE8);
    sub_257FECC14(v23, v22);
    v25 = sub_258049D10();
    v26 = sub_25804A2C0();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 216);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v57[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_258032C5C(0xD00000000000002DLL, 0x80000002580500C0, v57);
      *(v29 + 12) = 2080;
      v31 = sub_257FF8B88();
      v33 = v32;
      sub_257FECCE0(v28, type metadata accessor for LookalikeType);
      v34 = sub_258032C5C(v31, v33, v57);

      *(v29 + 14) = v34;
      _os_log_impl(&dword_257FD4000, v25, v26, "%s - containerRecord: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v30, -1, -1);
      MEMORY[0x259C77210](v29, -1, -1);
    }

    else
    {

      sub_257FECCE0(v28, type metadata accessor for LookalikeType);
    }

    v48 = *(v0 + 168);
    (*(v0 + 160))(v21);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_257FDAB84(v0 + 96, &qword_27F9155B0, &unk_25804BC40);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 208);
    v36 = *(v0 + 152);
    v37 = sub_258049D30();
    __swift_project_value_buffer(v37, qword_27F919DE8);
    sub_257FECC14(v36, v35);
    v38 = sub_258049D10();
    v39 = sub_25804A2D0();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 208);
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57[0] = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_258032C5C(0xD00000000000002DLL, 0x80000002580500C0, v57);
      *(v42 + 12) = 2082;
      v44 = sub_257FF8B88();
      v46 = v45;
      sub_257FECCE0(v41, type metadata accessor for LookalikeType);
      v47 = sub_258032C5C(v44, v46, v57);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_257FD4000, v38, v39, "%{public}s - no container record found for %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v43, -1, -1);
      MEMORY[0x259C77210](v42, -1, -1);
    }

    else
    {

      sub_257FECCE0(v41, type metadata accessor for LookalikeType);
    }
  }

  v49 = *(v0 + 248);
  v51 = *(v0 + 216);
  v50 = *(v0 + 224);
  v52 = *(v0 + 208);
  v54 = *(v0 + 184);
  v53 = *(v0 + 192);
  sub_257FDAB84(v0 + 16, &qword_27F9155B0, &unk_25804BC40);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_257FDFFF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 256) = a4;
  *(v4 + 160) = a2;
  *(v4 + 168) = a3;
  *(v4 + 152) = a1;
  v5 = *(*(type metadata accessor for ExtensionRecordLookalike(0) - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v6 = *(*(type metadata accessor for AppRecordLookalike(0) - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v7 = type metadata accessor for LookalikeType(0);
  *(v4 + 192) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v9 = sub_258049FB0();
  *(v4 + 224) = v9;
  v10 = *(v9 - 8);
  *(v4 + 232) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v13 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE01B8, v13, v12);
}

uint64_t sub_257FE01B8()
{
  v57 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  sub_257FECC14(v6, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 240);
  v9 = *(v0 + 216);
  v10 = *(v0 + 224);
  v11 = 176;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v11 = 184;
    v12 = type metadata accessor for AppRecordLookalike;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v13 = type metadata accessor for AppRecordLookalike;
  }

  v14 = *(v0 + v11);
  sub_257FECC78(*(v0 + 216), v14, v12);
  (*(v2 + 16))(v8, v14, v10);
  sub_257FECCE0(v14, v13);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 224);
  v18 = sub_258049DF0();
  v20 = v19;

  (*(v16 + 8))(v15, v17);
  *(v0 + 136) = v18;
  *(v0 + 144) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915598, &qword_25804BC28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_257FDA958(v0 + 16, v0 + 96, &qword_27F9155A0, &qword_25804BC30);
  if (*(v0 + 120))
  {
    v21 = (v0 + 56);
    sub_257FDAA0C((v0 + 96), v0 + 56);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 208);
    v23 = *(v0 + 152);
    v24 = sub_258049D30();
    __swift_project_value_buffer(v24, qword_27F919DE8);
    sub_257FECC14(v23, v22);
    v25 = sub_258049D10();
    v26 = sub_25804A2C0();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 208);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v56[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_258032C5C(0xD000000000000034, 0x8000000258050080, v56);
      *(v29 + 12) = 2080;
      v31 = sub_257FF8B88();
      v33 = v32;
      sub_257FECCE0(v28, type metadata accessor for LookalikeType);
      v34 = sub_258032C5C(v31, v33, v56);

      *(v29 + 14) = v34;
      _os_log_impl(&dword_257FD4000, v25, v26, "%s - containerRecord: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v30, -1, -1);
      MEMORY[0x259C77210](v29, -1, -1);
    }

    else
    {

      sub_257FECCE0(v28, type metadata accessor for LookalikeType);
    }

    sub_258026E18(v21, *(v0 + 168), *(v0 + 256));
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_257FDAB84(v0 + 96, &qword_27F9155A0, &qword_25804BC30);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 200);
    v36 = *(v0 + 152);
    v37 = sub_258049D30();
    __swift_project_value_buffer(v37, qword_27F919DE8);
    sub_257FECC14(v36, v35);
    v38 = sub_258049D10();
    v39 = sub_25804A2D0();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 200);
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v56[0] = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_258032C5C(0xD000000000000034, 0x8000000258050080, v56);
      *(v42 + 12) = 2082;
      v44 = sub_257FF8B88();
      v46 = v45;
      sub_257FECCE0(v41, type metadata accessor for LookalikeType);
      v47 = sub_258032C5C(v44, v46, v56);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_257FD4000, v38, v39, "%{public}s - no container record found for %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v43, -1, -1);
      MEMORY[0x259C77210](v42, -1, -1);
    }

    else
    {

      sub_257FECCE0(v41, type metadata accessor for LookalikeType);
    }
  }

  v48 = *(v0 + 240);
  v50 = *(v0 + 208);
  v49 = *(v0 + 216);
  v51 = *(v0 + 200);
  v53 = *(v0 + 176);
  v52 = *(v0 + 184);
  sub_257FDAB84(v0 + 16, &qword_27F9155A0, &qword_25804BC30);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_257FE0874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = *(*(type metadata accessor for ExtensionRecordLookalike(0) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AppRecordLookalike(0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for LookalikeType(0);
  v4[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = sub_258049FB0();
  v4[29] = v9;
  v10 = *(v9 - 8);
  v4[30] = v10;
  v11 = *(v10 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v13 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE0A30, v13, v12);
}

uint64_t sub_257FE0A30()
{
  v58 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  sub_257FECC14(v6, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 248);
  v9 = *(v0 + 224);
  v10 = *(v0 + 232);
  v11 = 184;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v11 = 192;
    v12 = type metadata accessor for AppRecordLookalike;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v13 = type metadata accessor for AppRecordLookalike;
  }

  v14 = *(v0 + v11);
  sub_257FECC78(*(v0 + 224), v14, v12);
  (*(v2 + 16))(v8, v14, v10);
  sub_257FECCE0(v14, v13);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v17 = *(v0 + 232);
  v18 = sub_258049DF0();
  v20 = v19;

  (*(v16 + 8))(v15, v17);
  *(v0 + 136) = v18;
  *(v0 + 144) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915598, &qword_25804BC28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_257FDA958(v0 + 16, v0 + 96, &qword_27F9155A0, &qword_25804BC30);
  if (*(v0 + 120))
  {
    v21 = (v0 + 56);
    sub_257FDAA0C((v0 + 96), v0 + 56);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 216);
    v23 = *(v0 + 152);
    v24 = sub_258049D30();
    __swift_project_value_buffer(v24, qword_27F919DE8);
    sub_257FECC14(v23, v22);
    v25 = sub_258049D10();
    v26 = sub_25804A2C0();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 216);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v57[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_258032C5C(0xD000000000000034, 0x8000000258050080, v57);
      *(v29 + 12) = 2080;
      v31 = sub_257FF8B88();
      v33 = v32;
      sub_257FECCE0(v28, type metadata accessor for LookalikeType);
      v34 = sub_258032C5C(v31, v33, v57);

      *(v29 + 14) = v34;
      _os_log_impl(&dword_257FD4000, v25, v26, "%s - containerRecord: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v30, -1, -1);
      MEMORY[0x259C77210](v29, -1, -1);
    }

    else
    {

      sub_257FECCE0(v28, type metadata accessor for LookalikeType);
    }

    v48 = *(v0 + 168);
    (*(v0 + 160))(v21);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_257FDAB84(v0 + 96, &qword_27F9155A0, &qword_25804BC30);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 208);
    v36 = *(v0 + 152);
    v37 = sub_258049D30();
    __swift_project_value_buffer(v37, qword_27F919DE8);
    sub_257FECC14(v36, v35);
    v38 = sub_258049D10();
    v39 = sub_25804A2D0();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 208);
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57[0] = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_258032C5C(0xD000000000000034, 0x8000000258050080, v57);
      *(v42 + 12) = 2082;
      v44 = sub_257FF8B88();
      v46 = v45;
      sub_257FECCE0(v41, type metadata accessor for LookalikeType);
      v47 = sub_258032C5C(v44, v46, v57);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_257FD4000, v38, v39, "%{public}s - no container record found for %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v43, -1, -1);
      MEMORY[0x259C77210](v42, -1, -1);
    }

    else
    {

      sub_257FECCE0(v41, type metadata accessor for LookalikeType);
    }
  }

  v49 = *(v0 + 248);
  v51 = *(v0 + 216);
  v50 = *(v0 + 224);
  v52 = *(v0 + 208);
  v54 = *(v0 + 184);
  v53 = *(v0 + 192);
  sub_257FDAB84(v0 + 16, &qword_27F9155A0, &qword_25804BC30);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_257FE10F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v35 = a1;
  v36 = a2;
  v37[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049E80();
  v16 = sub_25801CA08(v14);
  if (v3)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v33 = v10;
  v18 = v34;
  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    if (qword_27F915168 == -1)
    {
LABEL_11:
      v24 = sub_258049D30();
      __swift_project_value_buffer(v24, qword_27F919DE8);

      v25 = sub_258049D10();
      v26 = sub_25804A2C0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v32 = a2;
        v28 = v27;
        v29 = swift_slowAlloc();
        v37[0] = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_258032C5C(0xD000000000000022, 0x80000002580503B0, v37);
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_258032C5C(a1, v32, v37);
        _os_log_impl(&dword_257FD4000, v25, v26, "%s - no result found for recordID %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v29, -1, -1);
        MEMORY[0x259C77210](v28, -1, -1);
      }

      (*(v11 + 8))(v14, v33);
      v21 = 1;
      v20 = v18;
      goto LABEL_14;
    }

LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  v22 = v16;
  v23 = sub_25804A480();
  v16 = v22;
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C768B0](0);
    a2 = v33;
    goto LABEL_8;
  }

  a2 = v33;
  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = *(v16 + 32);

LABEL_8:

  v20 = v18;
  sub_257FFA79C(v18);

  (*(v11 + 8))(v14, a2);
  v21 = 0;
LABEL_14:
  v30 = type metadata accessor for AppRecordLookalike(0);
  return (*(*(v30 - 8) + 56))(v20, v21, 1, v30);
}

uint64_t sub_257FE1590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v10 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE16EC, v10, v9);
}

uint64_t sub_257FE16EC()
{
  v36 = v0;
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v0[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049E80();
  v8 = sub_25801CA08(v1);
  if (v8 >> 62)
  {
    v15 = v8;
    v16 = sub_25804A480();
    v8 = v15;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](0);
      goto LABEL_6;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);

LABEL_6:
      v11 = v0[9];
      v10 = v0[10];
      v12 = v0[8];
      v13 = v0[3];

      sub_257FFA79C(v13);

      (*(v11 + 8))(v10, v12);
      v14 = 0;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_27F915168 != -1)
  {
LABEL_17:
    swift_once();
  }

  v17 = v0[5];
  v18 = sub_258049D30();
  __swift_project_value_buffer(v18, qword_27F919DE8);

  v19 = sub_258049D10();
  v20 = sub_25804A2C0();

  v21 = os_log_type_enabled(v19, v20);
  v23 = v0[9];
  v22 = v0[10];
  v24 = v0[8];
  if (v21)
  {
    v25 = v0[4];
    v34 = v0[5];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_258032C5C(0xD000000000000027, 0x8000000258050350, v35);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_258032C5C(v25, v34, v35);
    _os_log_impl(&dword_257FD4000, v19, v20, "%s - no result found for managementKey %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v27, -1, -1);
    MEMORY[0x259C77210](v26, -1, -1);
  }

  (*(v23 + 8))(v22, v24);
  v14 = 1;
LABEL_12:
  v28 = v0[10];
  v29 = v0[7];
  v30 = v0[3];
  v31 = type metadata accessor for AppRecordLookalike(0);
  (*(*(v31 - 8) + 56))(v30, v14, 1, v31);

  v32 = v0[1];

  return v32();
}

uint64_t sub_257FE1B48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v9 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE1CA4, v9, v8);
}

uint64_t sub_257FE1CA4()
{
  v41 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_258044130(*(v0 + 24));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  type metadata accessor for AppRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049E80();
  v5 = sub_25801CA08(v1);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    if (qword_27F915168 == -1)
    {
LABEL_9:
      v14 = *(v0 + 24);
      v15 = sub_258049D30();
      __swift_project_value_buffer(v15, qword_27F919DE8);
      v16 = v14;
      v17 = sub_258049D10();
      v18 = sub_25804A2C0();

      v19 = os_log_type_enabled(v17, v18);
      v21 = *(v0 + 56);
      v20 = *(v0 + 64);
      v22 = *(v0 + 48);
      if (v19)
      {
        v39 = *(v0 + 64);
        v23 = *(v0 + 24);
        v38 = *(v0 + 48);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_258032C5C(0xD000000000000026, 0x8000000258050050, v40);
        *(v24 + 12) = 2082;
        v26 = v23;
        v27 = [v26 description];
        v28 = sub_25804A110();
        v30 = v29;

        v31 = sub_258032C5C(v28, v30, v40);

        *(v24 + 14) = v31;
        _os_log_impl(&dword_257FD4000, v17, v18, "%s - no result found for app: %{public}s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v25, -1, -1);
        MEMORY[0x259C77210](v24, -1, -1);

        (*(v21 + 8))(v39, v38);
      }

      else
      {

        (*(v21 + 8))(v20, v22);
      }

      v11 = 1;
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  v12 = v5;
  v13 = sub_25804A480();
  v5 = v12;
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C768B0](0);
    goto LABEL_6;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(v5 + 32);

LABEL_6:
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  sub_257FFA79C(v10);

  (*(v8 + 8))(v7, v9);
  v11 = 0;
LABEL_13:
  v32 = *(v0 + 64);
  v33 = *(v0 + 40);
  v34 = *(v0 + 16);
  v35 = type metadata accessor for AppRecordLookalike(0);
  (*(*(v35 - 8) + 56))(v34, v11, 1, v35);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_257FE210C()
{
  v1[3] = v0;
  v2 = *(type metadata accessor for AppRecordLookalike(0) - 8);
  v1[4] = v2;
  v3 = *(v2 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v9 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE22C8, v9, v8);
}

size_t sub_257FE22C8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  v0[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  v5 = MEMORY[0x277D84F90];
  sub_258049E80();
  v6 = sub_25801CA08(v1);
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_25804A480();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_16:
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];

    (*(v24 + 8))(v23, v25);
    v10 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_3:
  result = sub_258033224(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = v5;
  v11 = v0[4];
  if ((v7 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      v13 = v0[6];
      MEMORY[0x259C768B0](i, v7);
      sub_257FFA79C(v13);
      swift_unknownObjectRelease();
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_258033224(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[6];
      *(v10 + 16) = v15 + 1;
      sub_257FECC78(v16, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, type metadata accessor for AppRecordLookalike);
    }
  }

  else
  {
    v17 = 32;
    do
    {
      v18 = v0[5];
      v19 = *(v7 + v17);

      sub_257FFA79C(v18);

      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_258033224(v20 > 1, v21 + 1, 1);
      }

      v22 = v0[5];
      *(v10 + 16) = v21 + 1;
      sub_257FECC78(v22, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, type metadata accessor for AppRecordLookalike);
      v17 += 8;
      --v8;
    }

    while (v8);
  }

  (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_17:
  v26 = v0[10];
  v27 = v0[6];
  v28 = v0[7];
  v29 = v0[5];

  v30 = v0[1];

  return v30(v10);
}

uint64_t sub_257FE26E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915548, &qword_25804BBB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *a1;
  sub_257FECB0C(&qword_27F915558, &qword_27F915548, &qword_25804BBB8);
  sub_258049990();
  swift_getKeyPath();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915588, &qword_25804BC20);
  a2[4] = sub_257FECB64();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_258049930();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_257FE2864(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v27 = a1;
  v28 = a2;
  v29[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049E80();
  v16 = sub_25801CA08(v14);
  if (v3)
  {
    (*(v11 + 8))(v14, v10);
    return v2;
  }

  if (v16 >> 62)
  {
    v17 = v16;
    v18 = sub_25804A480();
    v16 = v17;
    if (v18)
    {
      goto LABEL_5;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x259C768B0](0);
      goto LABEL_8;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v16 + 32);

LABEL_8:

      (*(v11 + 8))(v14, v10);
      return v2;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_27F915168 != -1)
  {
LABEL_17:
    swift_once();
  }

  v19 = sub_258049D30();
  __swift_project_value_buffer(v19, qword_27F919DE8);

  v20 = sub_258049D10();
  v21 = sub_25804A2C0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29[0] = v26;
    *v22 = 136315394;
    *(v22 + 4) = sub_258032C5C(0xD000000000000019, 0x8000000258050030, v29);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_258032C5C(a1, a2, v29);
    _os_log_impl(&dword_257FD4000, v20, v21, "%s - no result found for recordID %s", v22, 0x16u);
    v23 = v26;
    swift_arrayDestroy();
    MEMORY[0x259C77210](v23, -1, -1);
    MEMORY[0x259C77210](v22, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  return 0;
}

uint64_t sub_257FE2C98(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v27 = a1;
  v28 = a2;
  v29[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049E80();
  v16 = sub_25801CA08(v14);
  if (v3)
  {
    (*(v11 + 8))(v14, v10);
    return v2;
  }

  if (v16 >> 62)
  {
    v17 = v16;
    v18 = sub_25804A480();
    v16 = v17;
    if (v18)
    {
      goto LABEL_5;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x259C768B0](0);
      goto LABEL_8;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v16 + 32);

LABEL_8:

      (*(v11 + 8))(v14, v10);
      return v2;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_27F915168 != -1)
  {
LABEL_17:
    swift_once();
  }

  v19 = sub_258049D30();
  __swift_project_value_buffer(v19, qword_27F919DE8);

  v20 = sub_258049D10();
  v21 = sub_25804A2C0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29[0] = v26;
    *v22 = 136315394;
    *(v22 + 4) = sub_258032C5C(0xD00000000000001ELL, 0x8000000258050010, v29);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_258032C5C(a1, a2, v29);
    _os_log_impl(&dword_257FD4000, v20, v21, "%s - no result found for managementKey %s", v22, 0x16u);
    v23 = v26;
    swift_arrayDestroy();
    MEMORY[0x259C77210](v23, -1, -1);
    MEMORY[0x259C77210](v22, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  return 0;
}

uint64_t sub_257FE30CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a4;
  v27 = a2;
  v28 = a3;
  v29 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915340, &qword_25804B890);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915548, &qword_25804BBB8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915550, &qword_25804BBC0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = *a1;
  sub_257FECB0C(&qword_27F915558, &qword_27F915548, &qword_25804BBB8);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v12 + 8))(v15, v11);
  v32 = v27;
  v33 = v28;
  sub_258049980();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915560, &qword_25804BBC8);
  v23 = v29;
  v29[3] = v22;
  v23[4] = sub_257FEC644(&qword_27F915568, &qword_27F915560, &qword_25804BBC8, sub_257FECA5C);
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_257FECB0C(&qword_27F915580, &qword_27F915550, &qword_25804BBC0);
  sub_257FECB0C(&qword_27F915370, &qword_27F915340, &qword_25804B890);
  v24 = v30;
  sub_258049920();
  (*(v31 + 8))(v10, v24);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_257FE3464(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915418, &qword_25804BA78) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915420, &qword_25804BA80);
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v9 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE35C0, v9, v8);
}

uint64_t sub_257FE35C0()
{
  v87 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  sub_258044D78(*(v0 + 96));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_257FEE724(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord);
  v5 = MEMORY[0x277D84F90];
  sub_258049E80();
  v6 = sub_25801CDBC(v1);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_35:

LABEL_36:
    if (qword_27F915168 == -1)
    {
LABEL_37:
      v33 = *(v0 + 96);
      v34 = sub_258049D30();
      __swift_project_value_buffer(v34, qword_27F919DE8);
      v35 = v33;
      v36 = sub_258049D10();
      v37 = sub_25804A2C0();

      v38 = os_log_type_enabled(v36, v37);
      v40 = *(v0 + 128);
      v39 = *(v0 + 136);
      v41 = *(v0 + 120);
      if (!v38)
      {

        (*(v40 + 8))(v39, v41);
        goto LABEL_42;
      }

      v85 = *(v0 + 136);
      v42 = *(v0 + 96);
      v83 = *(v0 + 120);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v86[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_258032C5C(0xD00000000000002CLL, 0x800000025804FFE0, v86);
      *(v43 + 12) = 2082;
      v45 = v42;
      v46 = [v45 description];
      v47 = sub_25804A110();
      v49 = v48;

      v50 = sub_258032C5C(v47, v49, v86);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_257FD4000, v36, v37, "%s - no result found for extension code identity: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v44, -1, -1);
      MEMORY[0x259C77210](v43, -1, -1);

      goto LABEL_39;
    }

LABEL_45:
    swift_once();
    goto LABEL_37;
  }

LABEL_34:
  v31 = v6;
  v32 = sub_25804A480();
  v6 = v31;
  if (!v32)
  {
    goto LABEL_35;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x259C768B0](0);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_45;
    }

    v7 = *(v6 + 32);
  }

  *(v0 + 48) = v7;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  v8 = sub_258049EE0();

  if (!v8)
  {

    goto LABEL_36;
  }

  *(v0 + 56) = v8;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  v9 = *(v0 + 64);
  v86[0] = v5;
  if (v9 >> 62)
  {
    v6 = sub_25804A480();
    v10 = v6;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_9:
      v11 = 0;
      v81 = v9 & 0xFFFFFFFFFFFFFF8;
      v82 = v9 & 0xC000000000000001;
      v79 = v9;
      v80 = v10;
      while (1)
      {
        if (v82)
        {
          v14 = MEMORY[0x259C768B0](v11, v9);
          v15 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            v30 = v86[0];
            goto LABEL_48;
          }
        }

        else
        {
          if (v11 >= *(v81 + 16))
          {
            __break(1u);
            goto LABEL_34;
          }

          v14 = *(v9 + 8 * v11 + 32);

          v15 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_30;
          }
        }

        v84 = v15;
        v16 = *(v0 + 96);
        *(v0 + 72) = v14;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
        sub_258049A90();

        swift_getKeyPath();
        v5 = sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
        sub_258049F00();

        v18 = *(v0 + 16);
        v17 = *(v0 + 24);
        v19 = [v16 codeSigningID];
        v20 = sub_25804A110();
        v22 = v21;

        if (v18 == v20 && v17 == v22)
        {
        }

        else
        {
          v23 = sub_25804A560();

          if ((v23 & 1) == 0)
          {

            goto LABEL_11;
          }
        }

        v24 = *(v0 + 96);
        *(v0 + 80) = v14;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
        sub_258049F00();

        v5 = *(v0 + 32);
        v25 = *(v0 + 40);
        v26 = [v24 teamID];
        v27 = sub_25804A110();
        v29 = v28;

        if (!v25)
        {

LABEL_11:
          v9 = v79;
          v12 = v80;
          v13 = v84;
          goto LABEL_12;
        }

        v12 = v80;
        v13 = v84;
        if (v5 == v27 && v25 == v29)
        {
        }

        else
        {
          v5 = sub_25804A560();

          if ((v5 & 1) == 0)
          {

            v9 = v79;
            goto LABEL_12;
          }
        }

        sub_25804A410();
        v5 = *(v86[0] + 16);
        sub_25804A440();
        sub_25804A450();
        v6 = sub_25804A420();
        v9 = v79;
LABEL_12:
        ++v11;
        if (v13 == v12)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_48:

  if ((v30 & 0x8000000000000000) == 0 && (v30 & 0x4000000000000000) == 0)
  {
    if (*(v30 + 16))
    {
      goto LABEL_51;
    }

LABEL_59:

    if (qword_27F915168 == -1)
    {
LABEL_60:
      v62 = *(v0 + 96);
      v63 = sub_258049D30();
      __swift_project_value_buffer(v63, qword_27F919DE8);
      v64 = v62;
      v65 = sub_258049D10();
      v66 = sub_25804A2E0();

      v67 = os_log_type_enabled(v65, v66);
      v40 = *(v0 + 128);
      v68 = *(v0 + 136);
      v69 = *(v0 + 120);
      if (!v67)
      {

        (*(v40 + 8))(v68, v69);
        goto LABEL_42;
      }

      v85 = *(v0 + 136);
      v70 = *(v0 + 96);
      v83 = *(v0 + 120);
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v86[0] = v72;
      *v71 = 136446210;
      v73 = v70;
      v74 = [v73 description];
      v75 = sub_25804A110();
      v77 = v76;

      v78 = sub_258032C5C(v75, v77, v86);

      *(v71 + 4) = v78;
      _os_log_impl(&dword_257FD4000, v65, v66, "Extension record for code identity %{public}s not found", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x259C77210](v72, -1, -1);
      MEMORY[0x259C77210](v71, -1, -1);

LABEL_39:
      (*(v40 + 8))(v85, v83);
LABEL_42:
      v51 = 1;
      goto LABEL_55;
    }

LABEL_65:
    swift_once();
    goto LABEL_60;
  }

  if (!sub_25804A480())
  {
    goto LABEL_59;
  }

LABEL_51:
  if ((v30 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C768B0](0, v30);
    goto LABEL_54;
  }

  if (!*(v30 + 16))
  {
    __break(1u);
    goto LABEL_65;
  }

  v52 = *(v30 + 32);

LABEL_54:

  v54 = *(v0 + 128);
  v53 = *(v0 + 136);
  v55 = *(v0 + 120);
  sub_257FFB7F4(*(v0 + 88));

  (*(v54 + 8))(v53, v55);
  v51 = 0;
LABEL_55:
  v56 = *(v0 + 136);
  v57 = *(v0 + 112);
  v58 = *(v0 + 88);
  v59 = type metadata accessor for ExtensionRecordLookalike(0);
  (*(*(v59 - 8) + 56))(v58, v51, 1, v59);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_257FE4184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915340, &qword_25804B890);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D8, &qword_25804BA38);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153E0, &qword_25804BA40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  sub_257FECB0C(&qword_27F9153E8, &qword_27F9153D8, &qword_25804BA38);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  sub_258049980();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153F0, &qword_25804BA70);
  a4[4] = sub_257FEC644(&qword_27F9153F8, &qword_27F9153F0, &qword_25804BA70, sub_257FEC6C8);
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_257FECB0C(&qword_27F915410, &qword_27F9153E0, &qword_25804BA40);
  sub_257FECB0C(&qword_27F915370, &qword_27F915340, &qword_25804B890);
  v22 = v26;
  sub_258049920();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_257FE451C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v42 = a2;
  v43 = a3;
  v48 = a6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915340, &qword_25804B890);
  v51 = *(v49 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915348, &qword_25804B898);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915350, &qword_25804B8A0);
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915358, &qword_25804B8A8);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v41 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v39 = *a1;
  v40 = v37 - v24;
  sub_257FECB0C(&qword_27F915360, &qword_27F915348, &qword_25804B898);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  v25 = *(v11 + 8);
  v37[1] = v11 + 8;
  v38 = v25;
  v25(v14, v10);
  v52 = v42;
  v53 = v43;
  sub_258049980();
  v43 = sub_257FECB0C(&qword_27F915368, &qword_27F915350, &qword_25804B8A0);
  sub_257FECB0C(&qword_27F915370, &qword_27F915340, &qword_25804B890);
  v26 = v49;
  sub_258049920();
  v27 = *(v51 + 8);
  v51 += 8;
  v27(v9, v26);
  v28 = *(v50 + 8);
  v50 += 8;
  v28(v18, v15);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  v38(v14, v10);
  v52 = v46;
  v53 = v47;
  sub_258049980();
  v29 = v41;
  v30 = v49;
  sub_258049920();
  v27(v9, v30);
  v28(v18, v15);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915378, &qword_25804B900);
  v32 = v48;
  v48[3] = v31;
  v32[4] = sub_257FEB248();
  __swift_allocate_boxed_opaque_existential_1(v32);
  sub_257FECB0C(&qword_27F9153A8, &qword_27F915358, &qword_25804B8A8);
  v33 = v40;
  v34 = v44;
  sub_258049970();
  v35 = *(v45 + 8);
  v35(v29, v34);
  return (v35)(v33, v34);
}

void sub_257FE4AB4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_257FE2864(a1, a2);
  if (!v3)
  {
    v8 = v7;
    if (v7)
    {
      v19 = v7;
      swift_getKeyPath();
      sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
      sub_258049F00();

      if (v19 == 1 && *(v2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
      {
        v9 = *(v2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

        sub_257FEFACC(v8);
      }

      sub_257FE700C();
      sub_257FE6B38(v8, 0);
      sub_257FE6DD0();
      v15 = *(v2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);
      if (v15)
      {
        v16 = *(v15 + 16);
        v17 = *(v4 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

        sub_258043768();
        v18 = *(v15 + 24);
        sub_258043768();
      }
    }

    else
    {
      if (qword_27F915168 != -1)
      {
        swift_once();
      }

      v10 = sub_258049D30();
      __swift_project_value_buffer(v10, qword_27F919DE8);

      v11 = sub_258049D10();
      v12 = sub_25804A2D0();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19 = v14;
        *v13 = 136446466;
        *(v13 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x80000002580502D0, &v19);
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_258032C5C(a1, a2, &v19);
        _os_log_impl(&dword_257FD4000, v11, v12, "%{public}s - no app record for %s!", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v14, -1, -1);
        MEMORY[0x259C77210](v13, -1, -1);
      }
    }
  }
}

uint64_t sub_257FE4DCC()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915328, &qword_25804B850) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915330, &qword_25804B858);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155B8, &qword_25804BCE0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155C0, &qword_25804BCE8);
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C0, &qword_25804B9F8) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C8, &qword_25804BA00);
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155C8, &qword_25804BCF0) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155D0, &qword_25804BCF8);
  v1[16] = v15;
  v16 = *(v15 - 8);
  v1[17] = v16;
  v17 = *(v16 + 64) + 15;
  v1[18] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915418, &qword_25804BA78) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915420, &qword_25804BA80);
  v1[20] = v19;
  v20 = *(v19 - 8);
  v1[21] = v20;
  v21 = *(v20 + 64) + 15;
  v1[22] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154A8, &qword_25804BAE0) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154B0, &qword_25804BAE8);
  v1[24] = v23;
  v24 = *(v23 - 8);
  v1[25] = v24;
  v25 = *(v24 + 64) + 15;
  v1[26] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155D8, &qword_25804BD00) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155E0, &qword_25804BD08);
  v1[28] = v27;
  v28 = *(v27 - 8);
  v1[29] = v28;
  v29 = *(v28 + 64) + 15;
  v1[30] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v1[32] = v31;
  v32 = *(v31 - 8);
  v1[33] = v32;
  v33 = *(v32 + 64) + 15;
  v1[34] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v35 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE5384, v35, v34);
}

void *sub_257FE5384()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[2];
  v6 = MEMORY[0x277D84F90];
  v7 = sub_258036A84(MEMORY[0x277D84F90]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  type metadata accessor for AppRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049E80();
  v9 = sub_25801CA08(v1);
  (*(v2 + 8))(v1, v4);
  if (v9 >> 62)
  {
    v10 = sub_25804A480();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  sub_258033244(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
LABEL_25:
    v24 = sub_25804A480();
    if (!v24)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](i, v9);
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
    }

    v13 = sub_258014598();

    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_258033244((v14 > 1), v15 + 1, 1);
    }

    *(v6 + 16) = v15 + 1;
    *(v6 + 8 * v15 + 32) = v13;
  }

LABEL_13:

  v16 = v154[29];
  v17 = v154[30];
  v18 = v154[27];
  v19 = v154[28];
  v20 = v154[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v6, 0x6F63655220707041, 0xEA00000000006472, isUniquelyReferenced_nonNull_native);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155E8, &qword_25804BD10);
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  type metadata accessor for ExtensionRecord(0);
  sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
  v6 = MEMORY[0x277D84F90];
  sub_258049E80();
  v9 = sub_25801CED0(v17);
  v23 = *(v16 + 8);
  v0 = (v16 + 8);
  v23(v17, v19);
  if (v9 >> 62)
  {
    goto LABEL_25;
  }

  v24 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_26;
  }

LABEL_15:
  sub_258033244(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    __break(1u);
LABEL_41:
    v37 = sub_25804A480();
    if (!v37)
    {
      goto LABEL_42;
    }

    goto LABEL_28;
  }

  for (j = 0; j != v24; ++j)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](j, v9);
    }

    else
    {
      v26 = *(v9 + 8 * j + 32);
    }

    v27 = sub_2580151A0();

    v29 = *(v6 + 16);
    v28 = *(v6 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_258033244((v28 > 1), v29 + 1, 1);
    }

    *(v6 + 16) = v29 + 1;
    *(v6 + 8 * v29 + 32) = v27;
  }

LABEL_26:

  v0 = 0xD000000000000011;
  v31 = v154[25];
  v30 = v154[26];
  v32 = v154[23];
  v33 = v154[24];
  v34 = v154[2];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v6, 0xD000000000000010, 0x8000000258050210, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154B8, &qword_25804BAF0);
  (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
  type metadata accessor for AppCodeIdentityRecord(0);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  v6 = MEMORY[0x277D84F90];
  sub_258049E80();
  v9 = sub_25801CD60(v30);
  (*(v31 + 8))(v30, v33);
  if (v9 >> 62)
  {
    goto LABEL_41;
  }

  v37 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_42;
  }

LABEL_28:
  sub_258033244(0, v37 & ~(v37 >> 63), 0);
  if (v37 < 0)
  {
    __break(1u);
LABEL_57:
    v54 = sub_25804A480();
    if (!v54)
    {
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    for (k = 0; k != v37; ++k)
    {
      MEMORY[0x259C768B0](k, v9);
      v39 = sub_25801593C();
      swift_unknownObjectRelease();
      v41 = *(v6 + 16);
      v40 = *(v6 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_258033244((v40 > 1), v41 + 1, 1);
      }

      *(v6 + 16) = v41 + 1;
      *(v6 + 8 * v41 + 32) = v39;
    }
  }

  else
  {
    v42 = 32;
    do
    {
      v43 = *(v9 + v42);

      v44 = sub_25801593C();

      v46 = *(v6 + 16);
      v45 = *(v6 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_258033244((v45 > 1), v46 + 1, 1);
      }

      *(v6 + 16) = v46 + 1;
      *(v6 + 8 * v46 + 32) = v44;
      v42 += 8;
      --v37;
    }

    while (v37);
  }

LABEL_42:

  v48 = v154[21];
  v47 = v154[22];
  v49 = v154[19];
  v50 = v154[20];
  v51 = v154[2];
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v6, v0 + 7, 0x8000000258050230, v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  (*(*(v53 - 8) + 56))(v49, 1, 1, v53);
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_257FEE724(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord);
  v6 = MEMORY[0x277D84F90];
  sub_258049E80();
  v9 = sub_25801CDBC(v47);
  (*(v48 + 8))(v47, v50);
  if (v9 >> 62)
  {
    goto LABEL_57;
  }

  v54 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v54)
  {
    goto LABEL_58;
  }

LABEL_44:
  sub_258033244(0, v54 & ~(v54 >> 63), 0);
  if (v54 < 0)
  {
    __break(1u);
LABEL_73:
    v71 = sub_25804A480();
    if (!v71)
    {
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    for (m = 0; m != v54; ++m)
    {
      MEMORY[0x259C768B0](m, v9);
      v56 = sub_258015D8C();
      swift_unknownObjectRelease();
      v58 = *(v6 + 16);
      v57 = *(v6 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_258033244((v57 > 1), v58 + 1, 1);
      }

      *(v6 + 16) = v58 + 1;
      *(v6 + 8 * v58 + 32) = v56;
    }
  }

  else
  {
    v59 = 32;
    do
    {
      v60 = *(v9 + v59);

      v61 = sub_258015D8C();

      v63 = *(v6 + 16);
      v62 = *(v6 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_258033244((v62 > 1), v63 + 1, 1);
      }

      *(v6 + 16) = v63 + 1;
      *(v6 + 8 * v63 + 32) = v61;
      v59 += 8;
      --v54;
    }

    while (v54);
  }

LABEL_58:

  v65 = v154[17];
  v64 = v154[18];
  v66 = v154[15];
  v67 = v154[16];
  v68 = v154[2];
  v69 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v6, v0 + 13, 0x8000000258050250, v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155F0, &qword_25804BD18);
  (*(*(v70 - 8) + 56))(v66, 1, 1, v70);
  type metadata accessor for DataRecord(0);
  sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord);
  v6 = MEMORY[0x277D84F90];
  sub_258049E80();
  v9 = sub_25801CE74(v64);
  (*(v65 + 8))(v64, v67);
  if (v9 >> 62)
  {
    goto LABEL_73;
  }

  v71 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v71)
  {
    goto LABEL_74;
  }

LABEL_60:
  sub_258033244(0, v71 & ~(v71 >> 63), 0);
  if (v71 < 0)
  {
    __break(1u);
LABEL_89:
    v88 = sub_25804A480();
    if (!v88)
    {
      goto LABEL_90;
    }

    goto LABEL_76;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    for (n = 0; n != v71; ++n)
    {
      MEMORY[0x259C768B0](n, v9);
      v73 = sub_2580161DC();
      swift_unknownObjectRelease();
      v75 = *(v6 + 16);
      v74 = *(v6 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_258033244((v74 > 1), v75 + 1, 1);
      }

      *(v6 + 16) = v75 + 1;
      *(v6 + 8 * v75 + 32) = v73;
    }
  }

  else
  {
    v76 = 32;
    do
    {
      v77 = *(v9 + v76);

      v78 = sub_2580161DC();

      v80 = *(v6 + 16);
      v79 = *(v6 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_258033244((v79 > 1), v80 + 1, 1);
      }

      *(v6 + 16) = v80 + 1;
      *(v6 + 8 * v80 + 32) = v78;
      v76 += 8;
      --v71;
    }

    while (v71);
  }

LABEL_74:

  v82 = v154[13];
  v81 = v154[14];
  v83 = v154[11];
  v84 = v154[12];
  v85 = v154[2];
  v86 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v6, 0x6365522061746144, 0xEB0000000064726FLL, v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D0, &qword_25804BA30);
  (*(*(v87 - 8) + 56))(v83, 1, 1, v87);
  type metadata accessor for DataAssetRecord(0);
  sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord);
  v6 = MEMORY[0x277D84F90];
  sub_258049E80();
  v9 = sub_25801CA64(v81);
  (*(v82 + 8))(v81, v84);
  if (v9 >> 62)
  {
    goto LABEL_89;
  }

  v88 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v88)
  {
    goto LABEL_90;
  }

LABEL_76:
  sub_258033244(0, v88 & ~(v88 >> 63), 0);
  if (v88 < 0)
  {
    __break(1u);
LABEL_105:
    v105 = sub_25804A480();
    if (!v105)
    {
      goto LABEL_106;
    }

    goto LABEL_92;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    for (ii = 0; ii != v88; ++ii)
    {
      MEMORY[0x259C768B0](ii, v9);
      v90 = sub_25801672C();
      swift_unknownObjectRelease();
      v92 = *(v6 + 16);
      v91 = *(v6 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_258033244((v91 > 1), v92 + 1, 1);
      }

      *(v6 + 16) = v92 + 1;
      *(v6 + 8 * v92 + 32) = v90;
    }
  }

  else
  {
    v93 = 32;
    do
    {
      v94 = *(v9 + v93);

      v95 = sub_25801672C();

      v97 = *(v6 + 16);
      v96 = *(v6 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_258033244((v96 > 1), v97 + 1, 1);
      }

      *(v6 + 16) = v97 + 1;
      *(v6 + 8 * v97 + 32) = v95;
      v93 += 8;
      --v88;
    }

    while (v88);
  }

LABEL_90:

  v99 = v154[9];
  v98 = v154[10];
  v100 = v154[7];
  v101 = v154[8];
  v102 = v154[2];
  v103 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v6, 0xD000000000000011, 0x8000000258050270, v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155F8, &qword_25804BD20);
  (*(*(v104 - 8) + 56))(v100, 1, 1, v104);
  type metadata accessor for CredentialRecord(0);
  sub_257FEE724(&qword_27F9152C0, type metadata accessor for CredentialRecord);
  v6 = MEMORY[0x277D84F90];
  sub_258049E80();
  v9 = sub_25801CE18(v98);
  (*(v99 + 8))(v98, v101);
  if (v9 >> 62)
  {
    goto LABEL_105;
  }

  v105 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v105)
  {
    goto LABEL_106;
  }

LABEL_92:
  sub_258033244(0, v105 & ~(v105 >> 63), 0);
  if (v105 < 0)
  {
    __break(1u);
LABEL_121:
    v123 = sub_25804A480();
    if (v123)
    {
      goto LABEL_108;
    }

LABEL_122:

    v125 = MEMORY[0x277D84F90];
    goto LABEL_123;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    for (jj = 0; jj != v105; ++jj)
    {
      MEMORY[0x259C768B0](jj, v9);
      v107 = sub_258016CCC();
      swift_unknownObjectRelease();
      v109 = *(v6 + 16);
      v108 = *(v6 + 24);
      if (v109 >= v108 >> 1)
      {
        sub_258033244((v108 > 1), v109 + 1, 1);
      }

      *(v6 + 16) = v109 + 1;
      *(v6 + 8 * v109 + 32) = v107;
    }
  }

  else
  {
    v110 = 32;
    do
    {
      v111 = *(v9 + v110);

      v112 = sub_258016CCC();

      v114 = *(v6 + 16);
      v113 = *(v6 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_258033244((v113 > 1), v114 + 1, 1);
      }

      *(v6 + 16) = v114 + 1;
      *(v6 + 8 * v114 + 32) = v112;
      v110 += 8;
      --v105;
    }

    while (v105);
  }

LABEL_106:

  v116 = v154[5];
  v115 = v154[6];
  v117 = v154[3];
  v118 = v154[4];
  v119 = v154[2];
  v120 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v6, 0xD000000000000011, 0x8000000258050290, v120);
  v121 = v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915338, &qword_25804B888);
  (*(*(v122 - 8) + 56))(v117, 1, 1, v122);
  type metadata accessor for CredentialAssetRecord(0);
  sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
  v7 = MEMORY[0x277D84F90];
  sub_258049E80();
  v9 = sub_25801CD04(v115);
  (*(v116 + 8))(v115, v118);
  v152 = v121;
  if (v9 >> 62)
  {
    goto LABEL_121;
  }

  v123 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v123)
  {
    goto LABEL_122;
  }

LABEL_108:
  result = sub_258033244(0, v123 & ~(v123 >> 63), 0);
  if (v123 < 0)
  {
    __break(1u);
    return result;
  }

  v125 = v7;
  if ((v9 & 0xC000000000000001) != 0)
  {
    for (kk = 0; kk != v123; ++kk)
    {
      MEMORY[0x259C768B0](kk, v9);
      v127 = sub_2580171AC();
      swift_unknownObjectRelease();
      v129 = *(v125 + 16);
      v128 = *(v125 + 24);
      if (v129 >= v128 >> 1)
      {
        sub_258033244((v128 > 1), v129 + 1, 1);
      }

      *(v125 + 16) = v129 + 1;
      *(v125 + 8 * v129 + 32) = v127;
    }
  }

  else
  {
    v130 = 32;
    do
    {
      v131 = *(v9 + v130);

      v132 = sub_2580171AC();

      v134 = *(v125 + 16);
      v133 = *(v125 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_258033244((v133 > 1), v134 + 1, 1);
      }

      *(v125 + 16) = v134 + 1;
      *(v125 + 8 * v134 + 32) = v132;
      v130 += 8;
      --v123;
    }

    while (v123);
  }

LABEL_123:
  v135 = v154[34];
  v137 = v154[30];
  v136 = v154[31];
  v138 = v154[26];
  v139 = v154[27];
  v142 = v154[23];
  v143 = v154[22];
  v144 = v154[19];
  v145 = v154[18];
  v146 = v154[15];
  v147 = v154[14];
  v148 = v154[11];
  v149 = v154[10];
  v153 = v154[6];
  v150 = v154[7];
  v151 = v154[3];
  v140 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v125, v0 + 6, 0x80000002580502B0, v140);

  v141 = v154[1];

  return v141(v152);
}

uint64_t sub_257FE68A0(unint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919DE8);

  v7 = sub_258049D10();
  v8 = sub_25804A2C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_258032C5C(0xD00000000000001BLL, 0x800000025804FFC0, &v17);
    *(v10 + 12) = 2080;
    v12 = sub_2580177CC();
    v14 = sub_258032C5C(v12, v13, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_257FD4000, v7, v8, "%s - record: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v11, -1, -1);
    v15 = v10;
    a2 = v9;
    v3 = v2;
    MEMORY[0x259C77210](v15, -1, -1);
  }

  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  type metadata accessor for AppRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049E10();

  result = sub_257FE8154(a1);
  if (!v3)
  {
    result = sub_257FE9848(a1);
    if (a2)
    {
      return sub_257FE6DD0();
    }
  }

  return result;
}

uint64_t sub_257FE6B38(unint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919DE8);

  v7 = sub_258049D10();
  v8 = sub_25804A2C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_258032C5C(0xD00000000000001BLL, 0x800000025804FFA0, &v17);
    *(v10 + 12) = 2080;
    v12 = sub_2580177CC();
    v14 = sub_258032C5C(v12, v13, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_257FD4000, v7, v8, "%s - record: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v11, -1, -1);
    v15 = v10;
    a2 = v9;
    v3 = v2;
    MEMORY[0x259C77210](v15, -1, -1);
  }

  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  type metadata accessor for AppRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049E00();

  result = sub_257FE8C78(a1);
  if (!v3)
  {
    result = sub_257FEA3C4(a1);
    if (a2)
    {
      return sub_257FE6DD0();
    }
  }

  return result;
}

uint64_t sub_257FE6DD0()
{
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  sub_258049DD0();
  if (!v0)
  {
  }

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919DE8);
  v2 = v0;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v5 = 136446210;
    v6 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v7 = sub_25804A120();
    v9 = sub_258032C5C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_257FD4000, v3, v4, "AppConfigDatabase - save failed with error: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x259C77210](v11, -1, -1);
    MEMORY[0x259C77210](v5, -1, -1);
  }

  sub_258049D70();
  sub_258049E20();

  return swift_willThrow();
}

uint64_t sub_257FE700C()
{
  type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  v0 = sub_258049D90();

  if (v0)
  {
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v2 = sub_258049D30();
    __swift_project_value_buffer(v2, qword_27F919DE8);

    v3 = sub_258049D10();
    v4 = sub_25804A2D0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v5 = 136446978;
      *(v5 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x800000025804FF80, &v23);
      *(v5 + 12) = 2082;
      sub_258049D70();
      v6 = sub_258049DC0();

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
      v8 = MEMORY[0x259C766F0](v6, v7);
      v10 = v9;

      v11 = sub_258032C5C(v8, v10, &v23);

      *(v5 + 14) = v11;
      *(v5 + 22) = 2082;
      sub_258049D70();
      v12 = sub_258049DA0();

      v13 = MEMORY[0x259C766F0](v12, v7);
      v15 = v14;

      v16 = sub_258032C5C(v13, v15, &v23);

      *(v5 + 24) = v16;
      *(v5 + 32) = 2082;
      sub_258049D70();
      v17 = sub_258049DB0();

      v18 = MEMORY[0x259C766F0](v17, v7);
      v20 = v19;

      v21 = sub_258032C5C(v18, v20, &v23);

      *(v5 + 34) = v21;
      _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - Model context has unexpected modification: (inserted models: %{public}s, changed models: %{public}s, deleted models: %{public}s", v5, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v22, -1, -1);
      MEMORY[0x259C77210](v5, -1, -1);
    }

    sub_258049D70();
    sub_258049E20();
  }

  return result;
}

uint64_t sub_257FE7384()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154A8, &qword_25804BAE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154B0, &qword_25804BAE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for AppCodeIdentityRecord(0);
  v26 = v11;
  sub_258049A70();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154B8, &qword_25804BAF0);
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  sub_258049E80();
  v13 = sub_25801CD60(v10);
  if (v1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = v13;
  v24 = v11;
  v25 = v0;
  v21 = v10;
  v22 = v7;
  v23 = v6;
  v20 = 0;
  if (v13 >> 62)
  {
    goto LABEL_15;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_5:
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v17, v15);
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v18 = *(v15 + 8 * v17 + 32);

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          v16 = sub_25804A480();
          if (!v16)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      type metadata accessor for AppConfigDatabaseImpl();
      sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
      sub_258049D70();
      sub_258049E00();

      ++v17;
    }

    while (v19 != v16);
  }

  return (*(v22 + 8))(v21, v23);
}

uint64_t sub_257FE76E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915438, &qword_25804BA90);
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154C8, &qword_25804BAF8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154D0, &qword_25804BB00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v19 = *a1;
  sub_257FECB0C(&qword_27F9154D8, &qword_27F9154C8, &qword_25804BAF8);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v10 + 8))(v13, v9);
  type metadata accessor for AppRecord(0);
  sub_258049960();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154E0, &qword_25804BB30);
  a2[4] = sub_257FEC780(&qword_27F9154E8, &qword_27F9154E0, &qword_25804BB30, sub_257FEC99C);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_257FECB0C(&qword_27F915500, &qword_27F9154D0, &qword_25804BB00);
  sub_257FECB0C(&qword_27F915488, &qword_27F915438, &qword_25804BA90);
  sub_257FEC8E0();
  v20 = v22;
  sub_258049920();
  (*(v23 + 8))(v8, v20);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_257FE7A6C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915418, &qword_25804BA78);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915420, &qword_25804BA80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ExtensionCodeIdentityRecord(0);
  v26 = v11;
  sub_258049A70();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  sub_257FEE724(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord);
  sub_258049E80();
  v13 = sub_25801CDBC(v10);
  if (v1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = v13;
  v24 = v11;
  v25 = v0;
  v21 = v10;
  v22 = v7;
  v23 = v6;
  v20 = 0;
  if (v13 >> 62)
  {
    goto LABEL_15;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_5:
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v17, v15);
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v18 = *(v15 + 8 * v17 + 32);

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          v16 = sub_25804A480();
          if (!v16)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      type metadata accessor for AppConfigDatabaseImpl();
      sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
      sub_258049D70();
      sub_258049E00();

      ++v17;
    }

    while (v19 != v16);
  }

  return (*(v22 + 8))(v21, v23);
}

uint64_t sub_257FE7DC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915438, &qword_25804BA90);
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915440, &qword_25804BA98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915448, &qword_25804BAA0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v19 = *a1;
  sub_257FECB0C(&qword_27F915450, &qword_27F915440, &qword_25804BA98);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v10 + 8))(v13, v9);
  type metadata accessor for AppRecord(0);
  sub_258049960();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915458, &qword_25804BAD0);
  a2[4] = sub_257FEC780(&qword_27F915460, &qword_27F915458, &qword_25804BAD0, sub_257FEC830);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_257FECB0C(&qword_27F915480, &qword_27F915448, &qword_25804BAA0);
  sub_257FECB0C(&qword_27F915488, &qword_27F915438, &qword_25804BA90);
  sub_257FEC8E0();
  v20 = v22;
  sub_258049920();
  (*(v23 + 8))(v8, v20);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_257FE8154(unint64_t a1)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_257FDAD00();
  sub_258049EF0();

  sub_257FE84E8(a1);

  if (!v8)
  {
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    v3 = a1;
    if (a1 >> 62)
    {
      goto LABEL_14;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x259C768B0](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
          }

LABEL_8:
          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
          sub_258049A90();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
          sub_258049EF0();

          sub_257FE84E8(v6);

          ++v5;
          if (v7 == v4)
          {
          }
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_14:
        v4 = sub_25804A480();
        if (!v4)
        {
        }
      }

      v6 = *(v3 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257FE84E8(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C0, &qword_25804B9F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v40 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C8, &qword_25804BA00);
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v46);
  v45 = &v40 - v11;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    do
    {
      v13 = 0;
      v50 = a1;
      v51 = a1 & 0xC000000000000001;
      v43 = (v8 + 8);
      v44 = a1 & 0xFFFFFFFFFFFFFF8;
      v42 = v12;
      while (v51)
      {
        v14 = MEMORY[0x259C768B0](v13, a1);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_26;
        }

LABEL_12:
        v53 = v13;
        v54 = v15;
        v16 = v12;
        v17 = OBJC_IVAR____TtC15ManagedAppsCore10DataRecord___observationRegistrar;
        v55 = v14;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E8, type metadata accessor for DataRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord);
        sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord);
        v8 = sub_258049EE0();

        if (!v8)
        {
          v55 = v14;
          swift_getKeyPath();
          v49 = v17;
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          v19 = v56;
          MEMORY[0x28223BE20](v18);
          *(&v40 - 2) = v20;
          *(&v40 - 1) = v19;
          v21 = type metadata accessor for DataAssetRecord(0);
          v57 = v21;
          v22 = v47;
          sub_258049A70();

          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D0, &qword_25804BA30);
          (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
          a1 = v45;
          sub_258049E80();
          v24 = v52;
          v25 = sub_25801CA64(a1);
          v52 = v24;
          if (v24)
          {

            return (*v43)(a1, v46);
          }

          v8 = v25;
          v48 = &v40;
          (*v43)(a1, v46);
          if (v8 >> 62)
          {
            v30 = sub_25804A480();
            v12 = v42;
            v26 = v49;
            if (!v30)
            {
              goto LABEL_21;
            }

LABEL_16:
            if ((v8 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x259C768B0](0, v8);
            }

            else
            {
              if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v27 = *(v8 + 32);
            }

            v55 = v14;
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v40 - 2) = v14;
            *(&v40 - 1) = v27;
            v8 = v14 + v26;
            v29 = v52;
            sub_258049A80();
            v52 = v29;
          }

          else
          {
            v12 = v42;
            v26 = v49;
            if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

LABEL_21:

            v55 = v14;
            swift_getKeyPath();
            sub_258049A90();

            swift_getKeyPath();
            sub_258049F00();

            v31 = v55;
            v32 = v56;
            v33 = type metadata accessor for DataPersistenceValue();
            v34 = v41;
            (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
            v35 = *(v21 + 48);
            v36 = *(v21 + 52);
            swift_allocObject();
            v37 = sub_258006980(v31, v32, v34);
            v55 = v14;
            v38 = swift_getKeyPath();
            MEMORY[0x28223BE20](v38);
            *(&v40 - 2) = v14;
            *(&v40 - 1) = v37;
            v8 = v14 + v26;
            v39 = v52;
            sub_258049A80();
            v52 = v39;
          }

          a1 = v50;
          goto LABEL_5;
        }

        a1 = v50;
        v12 = v16;
LABEL_5:
        v13 = v53 + 1;
        if (v54 == v12)
        {
          return result;
        }
      }

      if (v13 >= *(v44 + 16))
      {
        goto LABEL_27;
      }

      v14 = *(a1 + 8 * v13 + 32);

      v15 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_12;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_25804A480();
      v12 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_257FE8C78(unint64_t a1)
{
  v2 = a1;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  v3 = sub_257FDAD00();
  sub_258049EF0();

  sub_257FE9408(a1);

  if (!v1)
  {
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    if (v2 >> 62)
    {
      goto LABEL_36;
    }

    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      v6 = 0;
      v19 = v2;
      v20 = v2 & 0xC000000000000001;
      v16 = v2 + 32;
      v17 = v2 & 0xFFFFFFFFFFFFFF8;
      v18 = v5;
      v22 = v3;
      while (1)
      {
        if (v20)
        {
          v7 = v6;
          v21 = MEMORY[0x259C768B0](v6++, v2);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v6 >= *(v17 + 16))
          {
            goto LABEL_35;
          }

          v21 = *(v16 + 8 * v6);

          if (__OFADD__(v6++, 1))
          {
            goto LABEL_34;
          }
        }

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
        sub_258049EF0();

        v9 = v21;
        if (v21 >> 62)
        {
          break;
        }

        v10 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_14;
        }

LABEL_5:

        v2 = v19;
        if (v6 == v18)
        {
        }
      }

      v10 = sub_25804A480();
      if (!v10)
      {
        goto LABEL_5;
      }

LABEL_14:
      v2 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          MEMORY[0x259C768B0](v2, v9);
          v11 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v2 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v12 = *(v9 + 8 * v2 + 32);

          v11 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v5 = sub_25804A480();
            if (!v5)
            {
            }

            goto LABEL_4;
          }
        }

        v23 = v11;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E8, type metadata accessor for DataRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord);
        sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord);
        v13 = sub_258049EE0();

        if (v13)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_258049A80();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord);
          sub_258049A90();

          swift_getKeyPath();
          v3 = v22;
          sub_258049EF0();

          if (v13 >> 62)
          {
            v15 = sub_25804A480();
          }

          else
          {
            v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v15)
          {
            type metadata accessor for AppConfigDatabaseImpl();
            sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
            sub_258049D70();
            type metadata accessor for DataAssetRecord(0);
            sub_258049E00();

            sub_257FEC164(v13);
          }

          v9 = v21;
        }

        else
        {
          v3 = v22;
          v9 = v21;
        }

        ++v2;
        if (v23 == v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

unint64_t sub_257FE9408(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_23;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      v12 = v1;
      v13 = v1 & 0xC000000000000001;
      v10 = v1 & 0xFFFFFFFFFFFFFF8;
      v11 = v2;
      while (v13)
      {
        MEMORY[0x259C768B0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_21;
        }

LABEL_12:
        v15 = v5;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E8, type metadata accessor for DataRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord);
        sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord);
        v7 = sub_258049EE0();

        if (v7)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_258049A80();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord);
          sub_258049A90();

          swift_getKeyPath();
          type metadata accessor for DataRecord(0);
          sub_257FDAD00();
          sub_258049EF0();

          if (v7 >> 62)
          {
            v9 = sub_25804A480();
          }

          else
          {
            v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v1 = v12;
          if (!v9)
          {
            type metadata accessor for AppConfigDatabaseImpl();
            sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
            sub_258049D70();
            type metadata accessor for DataAssetRecord(0);
            sub_258049E00();

            sub_257FEC164(v7);
            if (v14)
            {
            }
          }

          v4 = v11;
        }

        else
        {
          v4 = v11;
          v1 = v12;
        }

        ++v3;
        if (v15 == v4)
        {
          return result;
        }
      }

      if (v3 >= *(v10 + 16))
      {
        goto LABEL_22;
      }

      v6 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = sub_25804A480();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_257FE9848(unint64_t a1)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  sub_257FE9D00(a1, v14, a1);

  if (!v15)
  {
    v3 = 0;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    v4 = a1;
    if (a1 >> 62)
    {
      goto LABEL_16;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = 0;
    if (v5)
    {
      while (1)
      {
        v7 = 0;
        v10 = v4 & 0xFFFFFFFFFFFFFF8;
        v11 = v4 & 0xC000000000000001;
        v9 = v4;
        while (v11)
        {
          v3 = MEMORY[0x259C768B0](v7, v4);
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
          }

LABEL_8:
          v12 = v8;
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
          sub_258049A90();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
          sub_258049EF0();

          sub_257FE9D00(a1, v14, v3);

          if (!v6)
          {
            ++v7;
            v4 = v9;
            if (v12 != v5)
            {
              continue;
            }
          }
        }

        if (v7 < *(v10 + 16))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v5 = sub_25804A480();
        v6 = v3;
        if (!v5)
        {
        }
      }

      v3 = *(v4 + 8 * v7 + 32);

      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257FE9D00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v41 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915328, &qword_25804B850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v36 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915330, &qword_25804B858);
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v39);
  v38 = &v36 - v10;
  if (a3 >> 62)
  {
    goto LABEL_29;
  }

  v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    do
    {
      v12 = 0;
      v46 = a3;
      v47 = a3 & 0xC000000000000001;
      v36 = (v7 + 8);
      v37 = a3 & 0xFFFFFFFFFFFFFF8;
      v45 = v11;
      while (v47)
      {
        v13 = MEMORY[0x259C768B0](v12, a3);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_26;
        }

LABEL_12:
        v49 = v12;
        v50 = v14;
        v15 = OBJC_IVAR____TtC15ManagedAppsCore16CredentialRecord___observationRegistrar;
        v51 = v13;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152F0, type metadata accessor for CredentialRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152C0, type metadata accessor for CredentialRecord);
        sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
        v7 = sub_258049EE0();

        if (!v7)
        {
          v51 = v13;
          swift_getKeyPath();
          v43 = v15;
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          v44 = &v36;
          v17 = v52;
          MEMORY[0x28223BE20](v16);
          v18 = v42;
          *(&v36 - 4) = v41;
          *(&v36 - 3) = v18;
          *(&v36 - 2) = v19;
          *(&v36 - 1) = v17;
          v20 = type metadata accessor for CredentialAssetRecord(0);
          v53 = v20;
          v21 = v40;
          sub_258049A70();

          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915338, &qword_25804B888);
          (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
          a3 = v38;
          sub_258049E80();
          v23 = v48;
          v24 = sub_25801CD04(a3);
          v48 = v23;
          if (v23)
          {

            return (*v36)(a3, v39);
          }

          v7 = v24;
          (*v36)(a3, v39);
          if (v7 >> 62)
          {
            if (!sub_25804A480())
            {
              goto LABEL_21;
            }

LABEL_16:
            if ((v7 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x259C768B0](0, v7);
              v25 = v43;
            }

            else
            {
              v25 = v43;
              if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v26 = *(v7 + 32);
            }

            v51 = v13;
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v36 - 2) = v13;
            *(&v36 - 1) = v26;
          }

          else
          {
            if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

LABEL_21:

            v51 = v13;
            swift_getKeyPath();
            v28 = v42;

            v25 = v43;
            sub_258049A90();

            swift_getKeyPath();
            sub_258049F00();

            v29 = v51;
            v30 = v52;
            v31 = *(v20 + 48);
            v32 = *(v20 + 52);
            swift_allocObject();
            v33 = sub_258007B54(v41, v28, v29, v30, 0, 0xF000000000000000);
            v51 = v13;
            v34 = swift_getKeyPath();
            MEMORY[0x28223BE20](v34);
            *(&v36 - 2) = v13;
            *(&v36 - 1) = v33;
          }

          v7 = v13 + v25;
          v35 = v48;
          sub_258049A80();
          v48 = v35;

          goto LABEL_5;
        }

LABEL_5:
        a3 = v46;
        v12 = v49 + 1;
        if (v50 == v45)
        {
          return result;
        }
      }

      if (v12 >= *(v37 + 16))
      {
        goto LABEL_27;
      }

      v13 = *(a3 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_12;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_25804A480();
      v11 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_257FEA3C4(unint64_t a1)
{
  KeyPath = a1;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  v3 = sub_257FDAE04();
  sub_258049EF0();

  sub_257FEAADC(a1);

  if (!v1)
  {
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    if (KeyPath >> 62)
    {
      goto LABEL_33;
    }

    v5 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = KeyPath; v5; i = KeyPath)
    {
      v17 = v5;
      v18 = KeyPath & 0xC000000000000001;
      v14 = KeyPath + 32;
      v15 = KeyPath & 0xFFFFFFFFFFFFFF8;
      KeyPath = 0;
      v21 = v3;
      while (v18)
      {
        v20 = MEMORY[0x259C768B0](KeyPath, i);
        v6 = __OFADD__(KeyPath++, 1);
        if (v6)
        {
          goto LABEL_30;
        }

LABEL_12:
        v19 = KeyPath;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
        sub_258049A90();

        KeyPath = swift_getKeyPath();
        sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
        sub_258049EF0();

        v7 = v20;
        if (v20 >> 62)
        {
          v8 = sub_25804A480();
          if (!v8)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v8 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v8)
          {
            goto LABEL_5;
          }
        }

        if (v8 < 1)
        {
          goto LABEL_31;
        }

        v9 = 0;
        v22 = v8;
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            MEMORY[0x259C768B0](v9, v7);
          }

          else
          {
            v10 = *(v7 + 8 * v9 + 32);
          }

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152F0, type metadata accessor for CredentialRecord);
          sub_258049A90();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152C0, type metadata accessor for CredentialRecord);
          sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
          v11 = sub_258049EE0();

          if (v11)
          {
            v12 = swift_getKeyPath();
            MEMORY[0x28223BE20](v12);
            sub_258049A80();

            swift_getKeyPath();
            sub_257FEE724(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
            sub_258049A90();

            swift_getKeyPath();
            v3 = v21;
            sub_258049EF0();

            if (v11 >> 62)
            {
              v13 = sub_25804A480();
            }

            else
            {
              v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v13)
            {
              type metadata accessor for AppConfigDatabaseImpl();
              sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
              sub_258049D70();
              type metadata accessor for CredentialAssetRecord(0);
              sub_258049E00();
            }
          }

          else
          {

            v3 = v21;
          }

          v7 = v20;
          ++v9;
        }

        while (v22 != v9);
LABEL_5:

        KeyPath = v19;
        if (v19 == v17)
        {
        }
      }

      if (KeyPath >= *(v15 + 16))
      {
        goto LABEL_32;
      }

      v20 = *(v14 + 8 * KeyPath);

      v6 = __OFADD__(KeyPath++, 1);
      if (!v6)
      {
        goto LABEL_12;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v5 = sub_25804A480();
    }
  }

  return result;
}

uint64_t sub_257FEAADC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    result = sub_25804A480();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v8 = v1 & 0xC000000000000001;
    v9 = result;
    v10 = v1;
    do
    {
      if (v8)
      {
        MEMORY[0x259C768B0](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      swift_getKeyPath();
      sub_257FEE724(&qword_27F9152F0, type metadata accessor for CredentialRecord);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FEE724(&qword_27F9152C0, type metadata accessor for CredentialRecord);
      sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
      v5 = sub_258049EE0();

      if (v5)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_258049A80();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
        sub_258049A90();

        swift_getKeyPath();
        type metadata accessor for CredentialRecord(0);
        sub_257FDAE04();
        sub_258049EF0();

        if (v5 >> 62)
        {
          v7 = sub_25804A480();
        }

        else
        {
          v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v1 = v10;
        if (!v7)
        {
          type metadata accessor for AppConfigDatabaseImpl();
          sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
          sub_258049D70();
          type metadata accessor for CredentialAssetRecord(0);
          sub_258049E00();
        }
      }

      else
      {

        v1 = v10;
      }

      ++v3;
      result = v9;
    }

    while (v9 != v3);
  }

  return result;
}

uint64_t sub_257FEAED0()
{
  sub_257FDAB84(v0 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_storageDirectoryURL, &qword_27F915220, &qword_25804EC90);
  v1 = *(v0 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

  v2 = *(v0 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_modelExecutor);
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_modelContainer);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for AppConfigDatabaseImpl()
{
  result = qword_27F915308;
  if (!qword_27F915308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257FEAFC8()
{
  sub_257FEB088();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_257FEB088()
{
  if (!qword_27F915318)
  {
    sub_258049A20();
    v0 = sub_25804A340();
    if (!v1)
    {
      atomic_store(v0, &qword_27F915318);
    }
  }
}

uint64_t sub_257FEB128()
{
  v0 = type metadata accessor for AppConfigDatabaseImpl();
  v1 = sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);

  return MEMORY[0x28212C8C8](v0, v1);
}

uint64_t sub_257FEB1AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_modelExecutor);
  v2 = *(v0 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_modelExecutor + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_257FEB1E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258005DCC();
}

unint64_t sub_257FEB248()
{
  result = qword_27F915380;
  if (!qword_27F915380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915378, &qword_25804B900);
    sub_257FEC644(&qword_27F915388, &qword_27F915358, &qword_25804B8A8, sub_257FEB2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915380);
  }

  return result;
}

unint64_t sub_257FEB2F8()
{
  result = qword_27F915390;
  if (!qword_27F915390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915350, &qword_25804B8A0);
    sub_257FECB0C(&qword_27F915398, &qword_27F915348, &qword_25804B898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915390);
  }

  return result;
}

unint64_t sub_257FEB3A8()
{
  result = qword_27F9153A0;
  if (!qword_27F9153A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915340, &qword_25804B890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9153A0);
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

uint64_t sub_257FEB4A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258004A24();
}

uint64_t sub_257FEB4C4(uint64_t a1)
{
  v8[3] = &type metadata for NotificationCenterNotifier;
  v8[4] = &off_286938E60;
  v7[3] = &type metadata for DarwinNotifier;
  v7[4] = &off_286938E50;
  sub_257FDA854(v8, v6);
  type metadata accessor for BatchedNotifier();
  v2 = swift_allocObject();
  sub_257FDAA0C(v6, v2 + 16);
  v3 = MEMORY[0x277D84FA0];
  *(v2 + 56) = MEMORY[0x277D84FA0];
  *(a1 + 16) = v2;
  sub_257FDA854(v7, v6);
  v4 = swift_allocObject();
  sub_257FDAA0C(v6, v4 + 16);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  *(v4 + 56) = v3;
  *(a1 + 24) = v4;
  return a1;
}

void *sub_257FEB5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v110 = a2;
  v97 = a1;
  v111[3] = *MEMORY[0x277D85DE8];
  v3 = sub_2580499C0();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  MEMORY[0x28223BE20](v3);
  v100 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258049F70();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258049F50();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  v12 = *(*(v96 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v96);
  v95 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v94 - v15;
  v17 = sub_258049A20();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v98 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v99 = &v94 - v23;
  MEMORY[0x28223BE20](v22);
  v106 = &v94 - v24;
  v25 = sub_258049F80();
  v107 = *(v25 - 8);
  v108 = v25;
  v26 = *(v107 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25804A050();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915610, &qword_25804BDE8);
  v31 = swift_allocObject();
  v104 = xmmword_25804B660;
  *(v31 + 16) = xmmword_25804B660;
  v32 = type metadata accessor for AppRecord(0);
  v33 = sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  sub_25804A060();
  v34 = sub_25804A0B0();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v110;
  v38 = sub_25804A0C0();
  sub_257FDA958(v37, v16, &qword_27F915220, &qword_25804EC90);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v39 = v18;
    sub_257FDAB84(v16, &qword_27F915220, &qword_25804EC90);

    sub_258049F40();
    sub_258049F40();
    sub_258049F90();
    v40 = v109;
  }

  else
  {
    v94 = v9;
    v103 = v38;
    (*(v18 + 32))(v106, v16, v17);
    v41 = objc_opt_self();
    v42 = [v41 defaultManager];
    sub_258049A00();
    v43 = sub_25804A100();

    v44 = [v42 fileExistsAtPath_];

    if ((v44 & 1) == 0)
    {
      v45 = [v41 defaultManager];
      v46 = v106;
      v47 = sub_2580499E0();
      v111[0] = 0;
      v48 = [v45 createDirectoryAtURL:v47 withIntermediateDirectories:1 attributes:0 error:v111];

      if (!v48)
      {
        v63 = v111[0];
        sub_2580499B0();

        swift_willThrow();

        sub_257FDAB84(v110, &qword_27F915220, &qword_25804EC90);
        (*(v18 + 8))(v46, v17);
        goto LABEL_16;
      }

      v49 = v111[0];
    }

    v111[0] = 0xD000000000000012;
    v111[1] = 0x80000002580504B0;
    v51 = v100;
    v50 = v101;
    v52 = v102;
    (*(v101 + 104))(v100, *MEMORY[0x277CC91D8], v102);
    sub_257FDA8B8();
    v53 = v99;
    v54 = v106;
    sub_258049A10();
    (*(v50 + 8))(v51, v52);
    (*(v18 + 16))(v98, v53, v17);
    v38 = v103;

    sub_258049F40();
    sub_258049FA0();
    v39 = v18;
    v55 = *(v18 + 8);
    v56 = v53;
    v40 = v109;
    v55(v56, v17);
    v55(v54, v17);
  }

  v57 = v17;
  sub_258049E70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915618, &unk_25804BDF0);
  v58 = v107;
  v59 = *(v107 + 72);
  v60 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v104;
  v62 = v61 + v60;
  v63 = v108;
  (*(v58 + 16))(v62, v28, v108);

  v64 = v105;
  v65 = sub_258049E50();
  if (v64)
  {

    sub_257FDAB84(v110, &qword_27F915220, &qword_25804EC90);
    (*(v58 + 8))(v28, v63);
  }

  else
  {
    v66 = v65;
    v105 = 0;
    v106 = v28;
    v103 = v38;
    v67 = type metadata accessor for AppConfigDatabaseImpl();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    v63 = swift_allocObject();
    v63[2] = 0;
    (*(v39 + 56))(v63 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_storageDirectoryURL, 1, 1, v57);
    *(v63 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier) = 0;
    v70 = sub_258049E30();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    swift_retain_n();
    sub_258049E40();
    v73 = sub_258049FD0();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    v76 = sub_258049FC0();
    v77 = sub_257FEE724(&qword_27F915620, MEMORY[0x277CDD598]);
    v78 = (v63 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_modelExecutor);
    *v78 = v76;
    v78[1] = v77;
    *(v63 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_modelContainer) = v66;
    v63[2] = v97;
    v79 = OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_storageDirectoryURL;
    swift_beginAccess();

    v80 = v110;
    sub_257FEE76C(v110, v63 + v79);
    swift_endAccess();
    v81 = v40;
    if (!v40)
    {
      type metadata accessor for AppConfigNotifier();
      v82 = swift_allocObject();
      v81 = sub_257FEB4C4(v82);
    }

    *(v63 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier) = v81;
    v83 = qword_27F915168;

    if (v83 != -1)
    {
      swift_once();
    }

    v84 = sub_258049D30();
    __swift_project_value_buffer(v84, qword_27F919DE8);
    v85 = sub_258049D10();
    v86 = sub_25804A2C0();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v111[0] = v88;
      *v87 = 136315394;
      *(v87 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258050480, v111);
      *(v87 + 12) = 2080;
      sub_257FDA958(v63 + v79, v95, &qword_27F915220, &qword_25804EC90);
      v89 = sub_25804A120();
      v91 = sub_258032C5C(v89, v90, v111);

      *(v87 + 14) = v91;
      _os_log_impl(&dword_257FD4000, v85, v86, "%s - storage URL: %s", v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v88, -1, -1);
      MEMORY[0x259C77210](v87, -1, -1);
    }

    sub_257FDAB84(v80, &qword_27F915220, &qword_25804EC90);
    (*(v107 + 8))(v106, v108);
  }

LABEL_16:
  v92 = *MEMORY[0x277D85DE8];
  return v63;
}

uint64_t sub_257FEC164(void *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - v4;
  v6 = sub_258049A20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a1;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord);
  sub_257FEC568();
  sub_258049F00();

  v11 = type metadata accessor for DataPersistenceValue();
  if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
  {
    result = sub_257FDAB84(v5, &qword_27F915268, &qword_25804F1E0);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = objc_opt_self();
    v14 = [v13 defaultManager];
    sub_258049A00();
    v15 = sub_25804A100();

    v16 = [v14 fileExistsAtPath_];

    if (v16)
    {
      v17 = [v13 defaultManager];
      v18 = sub_2580499E0();
      v25[0] = 0;
      v19 = [v17 removeItemAtURL:v18 error:v25];

      if (v19)
      {
        v20 = *(v7 + 8);
        v21 = v25[0];
        result = v20(v10, v6);
      }

      else
      {
        v23 = v25[0];
        sub_2580499B0();

        swift_willThrow();
        result = (*(v7 + 8))(v10, v6);
      }
    }

    else
    {
      result = (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    result = sub_257FECCE0(v5, type metadata accessor for DataPersistenceValue);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_257FEC568()
{
  result = qword_27F9153B0;
  if (!qword_27F9153B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915268, &qword_25804F1E0);
    sub_257FEE724(&qword_27F9153B8, type metadata accessor for DataPersistenceValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9153B0);
  }

  return result;
}

uint64_t sub_257FEC644(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_257FEB3A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257FEC6C8()
{
  result = qword_27F915400;
  if (!qword_27F915400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9153E0, &qword_25804BA40);
    sub_257FECB0C(&qword_27F915408, &qword_27F9153D8, &qword_25804BA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915400);
  }

  return result;
}

uint64_t sub_257FEC780(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_257FECB0C(&qword_27F915478, &qword_27F915438, &qword_25804BA90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257FEC830()
{
  result = qword_27F915468;
  if (!qword_27F915468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915448, &qword_25804BAA0);
    sub_257FECB0C(&qword_27F915470, &qword_27F915440, &qword_25804BA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915468);
  }

  return result;
}

unint64_t sub_257FEC8E0()
{
  result = qword_27F915490;
  if (!qword_27F915490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915498, &qword_25804BAD8);
    sub_257FEE724(&qword_27F9154A0, type metadata accessor for AppRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915490);
  }

  return result;
}

unint64_t sub_257FEC99C()
{
  result = qword_27F9154F0;
  if (!qword_27F9154F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9154D0, &qword_25804BB00);
    sub_257FECB0C(&qword_27F9154F8, &qword_27F9154C8, &qword_25804BAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9154F0);
  }

  return result;
}

unint64_t sub_257FECA5C()
{
  result = qword_27F915570;
  if (!qword_27F915570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915550, &qword_25804BBC0);
    sub_257FECB0C(&qword_27F915578, &qword_27F915548, &qword_25804BBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915570);
  }

  return result;
}

uint64_t sub_257FECB0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257FECB64()
{
  result = qword_27F915590;
  if (!qword_27F915590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915588, &qword_25804BC20);
    sub_257FECB0C(&qword_27F915578, &qword_27F915548, &qword_25804BBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915590);
  }

  return result;
}

uint64_t sub_257FECC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LookalikeType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257FECC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257FECCE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257FECD48()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_258007834();
}

uint64_t sub_257FECD68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_257FECD7C(a1, a2);
  }

  return a1;
}

uint64_t sub_257FECD7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_257FECDF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2580065FC();
}

uint64_t sub_257FECE3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v11 = sub_257FE2C98(a1, a2);
  if (v5 || !v11)
  {
  }

  v18 = v11;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v13 = sub_258049D30();
  __swift_project_value_buffer(v13, qword_27F919DE8);

  v14 = sub_258049D10();
  v15 = sub_25804A2C0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_258032C5C(0xD00000000000002BLL, 0x80000002580502F0, &v19);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_258032C5C(a1, a2, &v19);
    _os_log_impl(&dword_257FD4000, v14, v15, "%s - managementKey: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v17, -1, -1);
    MEMORY[0x259C77210](v16, -1, -1);
  }

  sub_257FED068(v18, a3, a4, a5, sub_258029E90);

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_257FED068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, uint64_t))
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  v7 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v8 = a1;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v9 = sub_258049D30();
  __swift_project_value_buffer(v9, qword_27F919DE8);

  v10 = sub_258049D10();
  v11 = sub_25804A2C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v12 = 136315394;
    *(v12 + 4) = sub_258032C5C(0xD000000000000024, 0x8000000258050320, &v31);
    *(v12 + 12) = 2080;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v13 = sub_258032C5C(a1, v30, &v31);

    *(v12 + 14) = v13;
    _os_log_impl(&dword_257FD4000, v10, v11, "%s - record: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v25, -1, -1);
    v14 = v12;
    v8 = a1;
    MEMORY[0x259C77210](v14, -1, -1);
  }

  sub_257FE700C();
  a5(a1, a3, a4);
  sub_257FE7384();
  if (!v29)
  {
    sub_257FE7A6C();
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v15 = sub_258049EE0();

    if (v7)
    {
      if (v15)
      {

        v17 = sub_25800B93C(v16, v15);

        if (v17)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!v15)
      {
LABEL_15:
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        if (v8 != a1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
        {
          v19 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

          sub_257FEFACC(a1);
        }

        sub_257FE6DD0();
        v20 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);
        if (v20)
        {
          v21 = *(v20 + 16);
          v22 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

          sub_258043768();
          v23 = *(v20 + 24);
          sub_258043768();
        }
      }
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 == 1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {
      v18 = *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

      sub_257FEFACC(a1);
    }

    goto LABEL_15;
  }
}

void sub_257FED63C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a4;

  v11 = sub_257FE2C98(a1, a2);
  if (v5 || !v11)
  {
  }

  else
  {
    v18 = v11;
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v12 = sub_258049D30();
    __swift_project_value_buffer(v12, qword_27F919DE8);

    v13 = sub_258049D10();
    v14 = sub_25804A2C0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_258032C5C(0xD00000000000002BLL, 0x80000002580502F0, &v19);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_258032C5C(a1, a2, &v19);
      _os_log_impl(&dword_257FD4000, v13, v14, "%s - managementKey: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v17, -1, -1);
      MEMORY[0x259C77210](v15, -1, -1);
    }

    v16 = v10;

    sub_257FED068(v18, a3, v16, a5, sub_25802A708);

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_257FED888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[47] = a4;
  v5[48] = a5;
  v5[45] = a2;
  v5[46] = a3;
  v5[44] = a1;
  v6 = *(*(type metadata accessor for ExtensionRecordLookalike(0) - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v7 = *(*(type metadata accessor for AppRecordLookalike(0) - 8) + 64) + 15;
  v5[50] = swift_task_alloc();
  v8 = type metadata accessor for LookalikeType(0);
  v5[51] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v10 = sub_258049FB0();
  v5[54] = v10;
  v11 = *(v10 - 8);
  v5[55] = v11;
  v12 = *(v11 + 64) + 15;
  v5[56] = swift_task_alloc();
  v5[57] = type metadata accessor for AppConfigDatabaseImpl();
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
  v14 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FEDA40, v14, v13);
}

uint64_t sub_257FEDA40()
{
  v88 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl);
  sub_258049D70();
  sub_257FECC14(v6, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 448);
  v9 = *(v0 + 424);
  v10 = *(v0 + 432);
  v11 = 392;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v11 = 400;
    v12 = type metadata accessor for AppRecordLookalike;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v13 = type metadata accessor for AppRecordLookalike;
  }

  v14 = *(v0 + v11);
  sub_257FECC78(*(v0 + 424), v14, v12);
  (*(v2 + 16))(v8, v14, v10);
  sub_257FECCE0(v14, v13);
  v16 = *(v0 + 440);
  v15 = *(v0 + 448);
  v17 = *(v0 + 432);
  v18 = sub_258049DF0();
  v20 = v19;

  (*(v16 + 8))(v15, v17);
  *(v0 + 240) = v18;
  v21 = (v0 + 16);
  *(v0 + 248) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155A8, &qword_25804BC38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *v21 = 0u;
    *(v0 + 32) = 0u;
  }

  sub_257FDA958(v0 + 16, v0 + 96, &qword_27F9155B0, &unk_25804BC40);
  if (*(v0 + 120))
  {
    sub_257FDAA0C((v0 + 96), v0 + 56);
    v22 = *(v0 + 80);
    v23 = *(v0 + 88);
    v86 = (v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v22);
    v24 = sub_258019BEC(1, v22, v23);
    if (!v24)
    {
      if (qword_27F915168 != -1)
      {
        swift_once();
      }

      v53 = sub_258049D30();
      __swift_project_value_buffer(v53, qword_27F919DE8);
      sub_257FDA854(v86, v0 + 136);
      v54 = sub_258049D10();
      v55 = sub_25804A2C0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v87 = v57;
        *v56 = 136446210;
        sub_257FDA854(v0 + 136, v0 + 176);
        v58 = sub_25804A120();
        v60 = v59;
        __swift_destroy_boxed_opaque_existential_1((v0 + 136));
        v61 = sub_258032C5C(v58, v60, &v87);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_257FD4000, v54, v55, "Data record for container %{public}s does not exist", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x259C77210](v57, -1, -1);
        MEMORY[0x259C77210](v56, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      }

      goto LABEL_42;
    }

    v25 = v24;
    *(v0 + 320) = v24;
    swift_getKeyPath();
    sub_257FEE724(&qword_27F9152E8, type metadata accessor for DataRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord);
    sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0);
    sub_258049F00();

    v84 = *(v0 + 288);
    v85 = *(v0 + 296);
    *(v0 + 328) = v25;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
    sub_258049F00();

    v26 = *(v0 + 264);
    v83 = *(v0 + 256);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v27 = sub_258049D30();
    __swift_project_value_buffer(v27, qword_27F919DE8);

    v28 = sub_258049D10();
    v29 = sub_25804A2C0();

    if (os_log_type_enabled(v28, v29))
    {
      v82 = v26;
      v30 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v87 = v81;
      *v30 = 136315394;
      *(v30 + 4) = sub_258032C5C(0xD000000000000028, 0x8000000258050420, &v87);
      *(v30 + 12) = 2080;

      v31 = sub_258018424();
      v33 = v32;

      v34 = sub_258032C5C(v31, v33, &v87);
      v21 = (v0 + 16);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_257FD4000, v28, v29, "%s - dataRecord: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v81, -1, -1);
      v35 = v30;
      v26 = v82;
      MEMORY[0x259C77210](v35, -1, -1);
    }

    v37 = *(v0 + 376);
    v36 = *(v0 + 384);
    v38 = *(v0 + 360);
    v39 = *(v0 + 368);
    sub_257FE700C();
    sub_2580259B0();
    *(v0 + 336) = v25;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v62 = *(v0 + 312);
    if (v85)
    {
      if ((*(v0 + 312) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if ((*(v0 + 312) & 1) != 0 || v84 != *(v0 + 304))
    {
      goto LABEL_36;
    }

    *(v0 + 344) = v25;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v63 = *(v0 + 280);
    if (v26)
    {
      if (v63)
      {
        if (v83 == *(v0 + 272) && v26 == v63)
        {
        }

        else
        {
          v79 = *(v0 + 280);
          v80 = sub_25804A560();

          if ((v80 & 1) == 0)
          {
LABEL_37:
            v64 = *(*(v0 + 360) + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);
            if (v64)
            {
              v65 = *(v64 + 24);
              swift_beginAccess();

              sub_257FF2318(&v87, 0xD00000000000002CLL, 0x8000000258050450);
              swift_endAccess();
            }
          }
        }

LABEL_39:
        v66 = *(v0 + 360);
        sub_257FE6DD0();
        v67 = *(v0 + 360);
        v68 = *(v67 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);
        if (v68)
        {
          v69 = *(v68 + 16);
          v70 = *(v67 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier);

          sub_258043768();
          v71 = *(v68 + 24);
          sub_258043768();
        }

LABEL_42:
        __swift_destroy_boxed_opaque_existential_1(v86);
        goto LABEL_43;
      }
    }

    else if (!v63)
    {
      goto LABEL_39;
    }

LABEL_36:

    goto LABEL_37;
  }

  sub_257FDAB84(v0 + 96, &qword_27F9155B0, &unk_25804BC40);
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 416);
  v41 = *(v0 + 352);
  v42 = sub_258049D30();
  __swift_project_value_buffer(v42, qword_27F919DE8);
  sub_257FECC14(v41, v40);
  v43 = sub_258049D10();
  v44 = sub_25804A2D0();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 416);
  if (v45)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v87 = v48;
    *v47 = 136446466;
    *(v47 + 4) = sub_258032C5C(0xD000000000000028, 0x8000000258050420, &v87);
    *(v47 + 12) = 2082;
    v49 = sub_257FF8B88();
    v51 = v50;
    sub_257FECCE0(v46, type metadata accessor for LookalikeType);
    v52 = sub_258032C5C(v49, v51, &v87);

    *(v47 + 14) = v52;
    _os_log_impl(&dword_257FD4000, v43, v44, "%{public}s - no container record found for %{public}s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v48, -1, -1);
    MEMORY[0x259C77210](v47, -1, -1);
  }

  else
  {

    sub_257FECCE0(v46, type metadata accessor for LookalikeType);
  }

LABEL_43:
  v72 = *(v0 + 448);
  v74 = *(v0 + 416);
  v73 = *(v0 + 424);
  v76 = *(v0 + 392);
  v75 = *(v0 + 400);
  sub_257FDAB84(v21, &qword_27F9155B0, &unk_25804BC40);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_257FEE668()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_257FFE9B4();
}

uint64_t sub_257FEE6B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257FEE724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257FEE76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_257FEE84C(unint64_t result, void *a2)
{
  v3 = result;
  if (result >> 62)
  {
LABEL_27:
    result = sub_25804A480();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v28 = v3 & 0xFFFFFFFFFFFFFF8;
      v29 = v3 & 0xC000000000000001;
      v26 = v4;
      v27 = v3;
      do
      {
        if (v29)
        {
          v8 = MEMORY[0x259C768B0](v5, v3);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v5 >= *(v28 + 16))
          {
            goto LABEL_24;
          }

          v8 = *(v3 + 8 * v5 + 32);

          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v32 = v9;
        swift_getKeyPath();
        sub_257FF4390(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FF4390(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
        sub_258049F00();

        v3 = v8;

        v10 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *a2;
        v30 = *a2;
        v13 = a2;
        *a2 = 0x8000000000000000;
        v15 = sub_2580337E4(v8, v31);
        v16 = v12[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        a2 = v14;
        if (v12[3] >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v21 = v30;
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_2580358E8();
            v21 = v30;
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_258033EFC(v18, isUniquelyReferenced_nonNull_native);
          v19 = sub_2580337E4(v8, v31);
          if ((a2 & 1) != (v20 & 1))
          {
            result = sub_25804A580();
            __break(1u);
            return result;
          }

          v15 = v19;
          v21 = v30;
          if (a2)
          {
LABEL_4:
            v6 = v21[7];
            v7 = *(v6 + 8 * v15);
            *(v6 + 8 * v15) = v8;

            goto LABEL_5;
          }
        }

        v21[(v15 >> 6) + 8] |= 1 << v15;
        v22 = (v21[6] + 16 * v15);
        *v22 = v8;
        v22[1] = v31;
        *(v21[7] + 8 * v15) = v8;
        v23 = v21[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_26;
        }

        v21[2] = v25;
LABEL_5:
        a2 = v13;
        *v13 = v21;

        ++v5;
        v3 = v27;
      }

      while (v32 != v26);
    }
  }

  return result;
}

void sub_257FEEB5C(uint64_t a1, unint64_t a2)
{
  v88[0] = a1;
  swift_getKeyPath();
  sub_257FF4390(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FF4390(&qword_27F915290, type metadata accessor for AppRecord);
  sub_257FF4390(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord);
  v4 = sub_258049EE0();

  if (v4)
  {
    v5 = sub_257FF03DC();

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 != 1)
    {

      return;
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for DataRecord(0);
    sub_257FDAD00();
    sub_258049EF0();

    swift_getKeyPath();
    v85 = v5;
    sub_258049A90();

    swift_getKeyPath();
    sub_258049EF0();

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for CredentialRecord(0);
    sub_257FDAE04();
    sub_258049EF0();

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049EF0();

    sub_257FF0CE0(a2, a1, a2, a1, v5);

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    v6 = a2;
    v7 = MEMORY[0x277D84F90];
    v88[0] = sub_258036980(MEMORY[0x277D84F90]);
    sub_257FEE84C(v6, v88);

    v8 = v88[0];
    v88[0] = a1;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049EF0();

    v9 = v88[0];
    v88[0] = sub_258036980(v7);
    sub_257FEE84C(v9, v88);

    v10 = v88[0];

    v12 = sub_257FEF9B0(v11);

    v14 = sub_257FEF9B0(v13);
    v86 = v14;
    v84 = v12;
    if (*(v12 + 16) <= *(v14 + 16) >> 3)
    {
      v88[0] = v14;

      sub_257FF2468(v12);
      v16 = v88[0];
    }

    else
    {
      v15 = v14;

      v16 = sub_257FF2594(v12, v15);
    }

    v25 = 1 << *(v16 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v16 + 56);
    v28 = (v25 + 63) >> 6;

    v29 = 0;
    while (v27)
    {
      v30 = v27;
LABEL_21:
      v27 = (v30 - 1) & v30;
      if (*(v10 + 16))
      {
        v32 = (*(v16 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v30)))));
        v33 = *v32;
        v34 = v32[1];

        v35 = sub_2580337E4(v33, v34);
        if (v36)
        {
          v37 = *(*(v10 + 56) + 8 * v35);

          sub_257FF055C(v38);
        }
      }
    }

    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_62;
      }

      if (v31 >= v28)
      {
        break;
      }

      v30 = *(v16 + 56 + 8 * v31);
      ++v29;
      if (v30)
      {
        v29 = v31;
        goto LABEL_21;
      }
    }

    v39 = sub_257FF2D64(v12, v86);
    v40 = v39;
    v41 = v39 + 56;
    v42 = 1 << *(v39 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v39 + 56);
    v45 = (v42 + 63) >> 6;

    v46 = 0;
    while (v44)
    {
      v47 = v44;
LABEL_35:
      v44 = (v47 - 1) & v47;
      if (*(v8 + 16))
      {
        v49 = (*(v40 + 48) + ((v46 << 10) | (16 * __clz(__rbit64(v47)))));
        v50 = *v49;
        v51 = v49[1];

        v52 = sub_2580337E4(v50, v51);
        if ((v53 & 1) != 0 && *(v10 + 16))
        {
          v87 = *(*(v8 + 56) + 8 * v52);

          v54 = sub_2580337E4(v50, v51);
          if (v55)
          {
            v81 = v10;
            v82 = v40;
            v56 = *(*(v10 + 56) + 8 * v54);
            v88[0] = v87;
            swift_getKeyPath();
            sub_257FF4390(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
            v83 = v56;

            sub_258049A90();

            swift_getKeyPath();
            sub_257FF4390(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
            sub_257FF42EC();
            sub_258049F00();

            if (!v88[1])
            {
              goto LABEL_42;
            }

            v88[0] = v87;
            swift_getKeyPath();
            sub_258049A90();

            swift_getKeyPath();
            sub_258049F00();

            v77 = objc_allocWithZone(MEMORY[0x277D034C8]);
            v57 = sub_25804A100();

            v58 = sub_25804A100();

            v59 = sub_25804A100();
            v60 = [v77 initWithCodeSigningID:v57 teamID:v58 path:v59];

            if (v60)
            {
              v88[0] = v87;
              swift_getKeyPath();
              v80 = v60;
              sub_258049A90();

              swift_getKeyPath();
              sub_258049EF0();

              v79 = v88[0];
              v88[0] = v83;
              swift_getKeyPath();
              sub_258049A90();

              swift_getKeyPath();
              sub_258049EF0();

              v78 = v88[0];
              v88[0] = v87;
              swift_getKeyPath();
              sub_258049A90();

              swift_getKeyPath();
              sub_258049EF0();

              v61 = v88[0];
              v88[0] = v83;
              swift_getKeyPath();
              sub_258049A90();

              swift_getKeyPath();
              sub_258049EF0();

              sub_257FF0CE0(v79, v78, v61, v88[0], v80);
            }

            else
            {
LABEL_42:
            }

            v10 = v81;
            v40 = v82;
          }

          else
          {
          }
        }
      }
    }

    while (1)
    {
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v48 >= v45)
      {

        if (*(v86 + 16) <= *(v84 + 16) >> 3)
        {
          v88[0] = v84;
          sub_257FF2468(v86);

          v62 = v88[0];
        }

        else
        {
          v62 = sub_257FF2594(v86, v84);
        }

        v63 = 1 << *(v62 + 32);
        v64 = -1;
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        v65 = v64 & *(v62 + 56);
        v66 = (v63 + 63) >> 6;

        v67 = 0;
        while (v65)
        {
          v68 = v65;
LABEL_57:
          v65 = (v68 - 1) & v68;
          if (*(v8 + 16))
          {
            v70 = (*(v62 + 48) + ((v67 << 10) | (16 * __clz(__rbit64(v68)))));
            v71 = *v70;
            v72 = v70[1];

            v73 = sub_2580337E4(v71, v72);
            if (v74)
            {
              v75 = *(*(v8 + 56) + 8 * v73);

              sub_257FF055C(v76);
            }
          }
        }

        while (1)
        {
          v69 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_63;
          }

          if (v69 >= v66)
          {

            return;
          }

          v68 = *(v62 + 56 + 8 * v69);
          ++v67;
          if (v68)
          {
            v67 = v69;
            goto LABEL_57;
          }
        }
      }

      v47 = *(v41 + 8 * v48);
      ++v46;
      if (v47)
      {
        v46 = v48;
        goto LABEL_35;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (qword_27F915178 != -1)
  {
LABEL_64:
    swift_once();
  }

  v17 = sub_258049D30();
  __swift_project_value_buffer(v17, qword_27F919E18);

  v18 = sub_258049D10();
  v19 = sub_25804A2D0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v88[0] = v21;
    *v20 = 136315138;
    v22 = sub_2580177CC();
    v24 = sub_258032C5C(v22, v23, v88);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_257FD4000, v18, v19, "Cannot send notification for: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x259C77210](v21, -1, -1);
    MEMORY[0x259C77210](v20, -1, -1);
  }
}