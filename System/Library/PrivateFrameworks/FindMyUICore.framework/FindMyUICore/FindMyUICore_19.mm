uint64_t sub_24B1DA794(int a1, uint64_t a2)
{
  v43 = a1;
  v4 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = sub_24B2D1DA4();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC608);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  sub_24B1DB2AC(a2);
  v17 = v2 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  swift_beginAccess();
  v18 = *(v17 + 24);
  v19 = *(v18 + 16);
  v42 = a2;
  if (v19)
  {

    v20 = sub_24B181698(a2);
    if (v21)
    {
      sub_24B1E62E4(*(v18 + 56) + *(v5 + 72) * v20, v16, type metadata accessor for ItemsLocationsProvider.LocationState);
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

  (*(v5 + 56))(v16, v22, 1, v4);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4))
  {
    result = sub_24AFF8258(v16, &qword_27EFCC608);
    if (v43)
    {
      sub_24B2D2324();
      v25 = &v10[*(v4 + 20)];
      v26 = *(type metadata accessor for ItemsLocationsProvider.LocationState.Result(0) + 20);
      v27 = sub_24B2D1944();
      (*(*(v27 - 8) + 56))(&v25[v26], 1, 1, v27);
      *v25 = 1;
      swift_beginAccess();
      v28 = *(v17 + 24);
      sub_24B1E634C(v10, v7, type metadata accessor for ItemsLocationsProvider.LocationState);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v28;
      sub_24B1CAC28(v7, v42, isUniquelyReferenced_nonNull_native);
      *(v17 + 24) = v44[0];
      sub_24B1D5988(v28);
      swift_endAccess();
    }
  }

  else
  {
    v30 = v16[*(v4 + 20)];
    result = sub_24AFF8258(v16, &qword_27EFCC608);
    if (v30 != (v43 & 1))
    {
      v32 = v40;
      v31 = v41;
      (*(v40 + 16))(v13, v42, v41);
      v33 = sub_24B1D74D0();
      v35 = v34;
      v45 = *(v34 + 24);

      v36 = sub_24B1D6D70(v44);
      v38 = v37;
      if (!v23(v37, 1, v4))
      {
        *(v38 + *(v4 + 20)) = v43 & 1;
      }

      (v36)(v44, 0);
      (*(v32 + 8))(v13, v31);
      v39 = *(v35 + 24);
      *(v35 + 24) = v45;
      sub_24B1D5988(v39);

      return (v33)(v46, 0);
    }
  }

  return result;
}

uint64_t sub_24B1DAC38(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v60 = a4;
  v59 = a3;
  v65 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v54 - v7;
  v8 = sub_24B2D1DA4();
  v64 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v54 - v12;
  v13 = sub_24B2D3184();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  v18 = *(v14 + 16);
  v63 = v4;
  v18(v16, v4 + v17, v13);

  v19 = sub_24B2D3164();
  v20 = sub_24B2D5934();

  v21 = os_log_type_enabled(v19, v20);
  v61 = v8;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v57 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v66[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_24AFF321C(0xD000000000000049, 0x800000024B2DC900, v66);
    *(v23 + 12) = 2080;
    sub_24B2D1944();
    sub_24B1E6414(&qword_27EFCC630, MEMORY[0x277D08E20]);
    v25 = a2;
    v26 = sub_24B2D51F4();
    v28 = sub_24AFF321C(v26, v27, v66);
    v8 = v61;

    *(v23 + 14) = v28;
    _os_log_impl(&dword_24AFD2000, v19, v20, "ItemsLocationsProvider: %s - updated: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v24, -1, -1);
    v29 = v23;
    v10 = v57;
    MEMORY[0x24C23D530](v29, -1, -1);
  }

  else
  {
    v25 = a2;
  }

  result = (*(v14 + 8))(v16, v13);
  if (*(v65 + 16))
  {
    v31 = v10;
    v32 = v65 + 56;
    v33 = 1 << *(v65 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v65 + 56);
    v36 = (v33 + 63) >> 6;
    v56 = v64 + 32;
    v57 = (v64 + 16);
    v55 = (v64 + 8);

    v37 = 0;
    v38 = v25;
    v39 = v62;
    while (v35)
    {
LABEL_15:
      v42 = v64;
      v43 = v58;
      (*(v64 + 16))(v58, *(v65 + 48) + *(v64 + 72) * (__clz(__rbit64(v35)) | (v37 << 6)), v8);
      (*(v42 + 32))(v31, v43, v8);
      if (*(v38 + 16))
      {
        v44 = sub_24B181698(v31);
        v45 = v38;
        if (v46)
        {
          v47 = v44;
          v48 = *(v45 + 56);
          v49 = sub_24B2D1944();
          v50 = *(v49 - 8);
          (*(v50 + 16))(v62, v48 + *(v50 + 72) * v47, v49);
          (*(v50 + 56))(v62, 0, 1, v49);
          v39 = v62;
        }

        else
        {
          v51 = sub_24B2D1944();
          (*(*(v51 - 8) + 56))(v39, 1, 1, v51);
        }

        v38 = v45;
        v8 = v61;
      }

      else
      {
        v40 = sub_24B2D1944();
        (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
      }

      v35 &= v35 - 1;
      sub_24B1D9A8C(v39, v31, v59, v60 & 1);
      sub_24AFF8258(v39, &qword_27EFCB288);
      result = (*v55)(v31, v8);
    }

    while (1)
    {
      v41 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v41 >= v36)
      {

        v52 = v63 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
        swift_beginAccess();
        v53 = *(v52 + 16);
        *(v52 + 16) = 1;
        sub_24B1F4790(v53);
        return swift_endAccess();
      }

      v35 = *(v32 + 8 * v41);
      ++v37;
      if (v35)
      {
        v37 = v41;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B1DB2AC(uint64_t a1)
{
  v3 = sub_24B2D1DA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_loadingStateResetTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v7) + 16))
  {

    sub_24B181698(a1);
    if (v8)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  v9 = *(v4 + 16);
  v9(v6, a1, v3);
  swift_beginAccess();
  sub_24B18C820(0, v6);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_loadingStateFallbackTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v10) + 16))
  {

    sub_24B181698(a1);
    if (v11)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  v9(v6, a1, v3);
  swift_beginAccess();
  sub_24B18C820(0, v6);
  return swift_endAccess();
}

uint64_t sub_24B1DB514(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v4 = sub_24B2D1DA4();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = v5;
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v37 - v7;
  v8 = sub_24B2D18D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_24B2D1944();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v46 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v18 = a1;
  v19 = v2;
  sub_24B1DB2AC(v18);
  sub_24B008890(v45, v14, &qword_27EFCB288);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_24AFF8258(v14, &qword_27EFCB288);
  }

  (*(v16 + 32))(v46, v14, v15);
  v21 = *(v2 + 192);
  sub_24B2D18E4();
  v45 = v21(v11);
  v38 = v22;
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  if ((v24 & 1) == 0)
  {
    v25 = sub_24B2D56D4();
    v26 = v40;
    (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
    v27 = v41;
    v28 = v42;
    v29 = v43;
    (*(v42 + 16))(v41, v44, v43);
    v30 = sub_24B1E6414(&qword_27EFCE1D0, type metadata accessor for ItemsLocationsProvider);
    v31 = (*(v28 + 80) + 56) & ~*(v28 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = v19;
    *(v32 + 3) = v30;
    v33 = v38;
    *(v32 + 4) = v45;
    *(v32 + 5) = v33;
    *(v32 + 6) = v19;
    (*(v28 + 32))(&v32[v31], v27, v29);
    swift_retain_n();
    v34 = sub_24B00A9A4(0, 0, v26, &unk_24B2F02F8, v32);
    v35 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_loadingStateFallbackTaskBySubscription;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v19 + v35);
    *(v19 + v35) = 0x8000000000000000;
    sub_24B1CA400(v34, v44, isUniquelyReferenced_nonNull_native);
    *(v19 + v35) = v47;
    swift_endAccess();
  }

  return (*(v16 + 8))(v46, v15);
}

uint64_t sub_24B1DB9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_24B2D3184();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1DBB08, a6, 0);
}

uint64_t sub_24B1DBB08()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B1DBBC8;
  v3 = v0[9];
  v2 = v0[10];

  return sub_24B09A030(v3, v2, 0, 0, 1);
}

uint64_t sub_24B1DBBC8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_24B1DBDC4;
  }

  else
  {
    v7 = sub_24B1DBD50;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B1DBD50()
{
  sub_24B1DC064(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1DBDC4()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5904();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 112);
    v25 = *(v0 + 120);
    v23 = *(v0 + 160);
    v24 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "ItemsLocationsProvider: loadingStateTaskBySubscription was cancelled - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1DC064(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v4 = sub_24B2D1DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = (*(v1 + 176))(v9);
  v14 = v13;
  sub_24B1DA794(1, a1);
  v15 = sub_24B2D56D4();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  (*(v5 + 16))(v7, a1, v4);
  v16 = sub_24B1E6414(&qword_27EFCE1D0, type metadata accessor for ItemsLocationsProvider);
  v17 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v2;
  *(v18 + 3) = v16;
  *(v18 + 4) = v12;
  *(v18 + 5) = v14;
  *(v18 + 6) = v2;
  (*(v5 + 32))(&v18[v17], v7, v4);
  swift_retain_n();
  v19 = sub_24B00A9A4(0, 0, v11, &unk_24B2F0428, v18);
  v20 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_loadingStateResetTaskBySubscription;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v2 + v20);
  *(v2 + v20) = 0x8000000000000000;
  sub_24B1CA400(v19, v24, isUniquelyReferenced_nonNull_native);
  *(v2 + v20) = v25;
  return swift_endAccess();
}

uint64_t sub_24B1DC310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_24B2D3184();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1DC434, a6, 0);
}

uint64_t sub_24B1DC434()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B1DC4F4;
  v3 = v0[9];
  v2 = v0[10];

  return sub_24B09A030(v3, v2, 0, 0, 1);
}

uint64_t sub_24B1DC4F4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_24B1DC6F4;
  }

  else
  {
    v7 = sub_24B1DC67C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B1DC67C()
{
  sub_24B1DA794(0, *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1DC6F4()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5904();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 112);
    v25 = *(v0 + 120);
    v23 = *(v0 + 160);
    v24 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "ItemsLocationsProvider: loadingStateResetTaskBySubscription was cancelled - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1DC994(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v4 = sub_24B2D1DA4();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 + 64);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = *(type metadata accessor for ItemsLocationsProvider.Subscription(0) - 8);
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1DCB20, v2, 0);
}

unint64_t sub_24B1DCB20()
{
  v63 = v0 + 2;
  v69 = v0[20];
  v1 = v0[9];
  v79 = v0[10];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_loadingStateResetTaskBySubscription;
  v7 = (63 - v4) >> 6;
  v77 = v0[15];
  v64 = (v77 + 8);
  v68 = v0[9];

  v9 = 0;
  v65 = v7;
  v66 = v2;
  v76 = v0;
  v67 = v6;
  while (v5)
  {
LABEL_11:
    v14 = v0[21];
    v15 = v0[18];
    v16 = v0[19];
    v74 = v0[17];
    v17 = v0[14];
    v78 = v0[13];
    v75 = v0[12];
    v71 = v76[10];
    sub_24B1E62E4(*(v68 + 48) + *(v69 + 72) * (__clz(__rbit64(v5)) | (v9 << 6)), v14, type metadata accessor for ItemsLocationsProvider.Subscription);
    v18 = *(v77 + 16);
    v18(v16, v14, v17);
    v19 = sub_24B1E63B4(v14, type metadata accessor for ItemsLocationsProvider.Subscription);
    v20 = (*(v79 + 176))(v19);
    v72 = v21;
    v73 = v20;
    sub_24B1DA794(1, v16);
    v18(v15, v16, v17);
    v22 = sub_24B2D56D4();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v78, 1, 1, v22);
    v70 = v18;
    v18(v74, v16, v17);
    v24 = sub_24B1E6414(&qword_27EFCE1D0, type metadata accessor for ItemsLocationsProvider);
    v25 = (*(v77 + 80) + 56) & ~*(v77 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = v71;
    *(v26 + 3) = v24;
    *(v26 + 4) = v73;
    *(v26 + 5) = v72;
    *(v26 + 6) = v71;
    (*(v77 + 32))(&v26[v25], v74, v17);
    sub_24B008890(v78, v75, &qword_27EFC8580);
    LODWORD(v25) = (*(v23 + 48))(v75, 1, v22);
    v0 = v76;
    swift_retain_n();

    v27 = v76[12];
    if (v25 == 1)
    {
      sub_24AFF8258(v76[12], &qword_27EFC8580);
    }

    else
    {
      sub_24B2D56C4();
      (*(v23 + 8))(v27, v22);
    }

    v28 = *(v26 + 2);
    swift_unknownObjectRetain();

    if (v28)
    {
      swift_getObjectType();
      v29 = sub_24B2D5604();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    sub_24AFF8258(v76[13], &qword_27EFC8580);
    v32 = swift_allocObject();
    *(v32 + 16) = &unk_24B2F0150;
    *(v32 + 24) = v26;
    if (v31 | v29)
    {
      *v63 = 0;
      v63[1] = 0;
      v76[4] = v29;
      v76[5] = v31;
    }

    v33 = v76[18];
    v34 = swift_task_create();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v79 + v67);
    *(v79 + v67) = 0x8000000000000000;
    result = sub_24B181698(v33);
    v38 = v36[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v42 = v37;
    if (v36[3] < v41)
    {
      v43 = v76[18];
      sub_24B1C56C8(v41, isUniquelyReferenced_nonNull_native);
      result = sub_24B181698(v43);
      if ((v42 & 1) != (v44 & 1))
      {

        return sub_24B2D6054();
      }

LABEL_24:
      if (v42)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v50 = result;
    sub_24B1CE02C();
    result = v50;
    if (v42)
    {
LABEL_4:
      *(v36[7] + 8 * result) = v34;

      goto LABEL_5;
    }

LABEL_25:
    v45 = v76[18];
    v46 = v76[14];
    v36[(result >> 6) + 8] |= 1 << result;
    v47 = result;
    result = v70(v36[6] + *(v77 + 72) * result, v45, v46);
    *(v36[7] + 8 * v47) = v34;
    v48 = v36[2];
    v40 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v40)
    {
      goto LABEL_41;
    }

    v36[2] = v49;
LABEL_5:
    v5 &= v5 - 1;
    v10 = v76[19];
    v11 = v76[14];
    v12 = *v64;
    (*v64)(v76[18], v11);
    *(v79 + v67) = v36;
    swift_endAccess();
    result = v12(v10, v11);
    v7 = v65;
    v2 = v66;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v13 >= v7)
    {
      break;
    }

    v5 = *(v2 + 8 * v13);
    ++v9;
    if (v5)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

  v51 = v0[10];
  v52 = v0[11];
  v53 = *(v0 + 192);
  v54 = v0[9];

  v55 = sub_24B1D42D0(v54);
  v56 = sub_24B1D0E28(v55);

  v57 = sub_24B2D56D4();
  (*(*(v57 - 8) + 56))(v52, 1, 1, v57);
  v58 = sub_24B1E6414(&qword_27EFCE1D0, type metadata accessor for ItemsLocationsProvider);
  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  *(v59 + 24) = v58;
  *(v59 + 32) = v51;
  *(v59 + 40) = v56;
  *(v59 + 48) = 1;
  swift_retain_n();
  sub_24B00A9A4(0, 0, v52, &unk_24B2F0168, v59);

  if (v53 == 1)
  {
    v60 = swift_task_alloc();
    v0[22] = v60;
    *v60 = v0;
    v60[1] = sub_24B1DD3B4;

    return sub_24B1D7810();
  }

  else
  {
    v80 = (*(v0[10] + 144) + **(v0[10] + 144));
    v61 = swift_task_alloc();
    v0[23] = v61;
    *v61 = v0;
    v61[1] = sub_24B1DD644;
    v62 = v0[9];

    return v80(v62);
  }
}

uint64_t sub_24B1DD3B4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_24B1DD550, v6, 0);
  }
}

uint64_t sub_24B1DD550()
{
  v4 = (*(v0[10] + 144) + **(v0[10] + 144));
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_24B1DD644;
  v2 = v0[9];

  return v4(v2);
}

uint64_t sub_24B1DD644()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B1DD814(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC608);
  *(v3 + 120) = swift_task_alloc();
  v4 = sub_24B2D1DA4();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = *(type metadata accessor for ItemsLocationsProvider.Subscription(0) - 8);
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1DD974, v2, 0);
}

uint64_t sub_24B1DD974()
{
  v4 = (*(v0[14] + 160) + **(v0[14] + 160));
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_24B1DDA68;
  v2 = v0[13];

  return v4(v2);
}

uint64_t sub_24B1DDA68()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 112);

    return MEMORY[0x2822009F8](sub_24B1DDBCC, v6, 0);
  }
}

uint64_t sub_24B1DDBCC()
{
  if (*(v0 + 184) == 1)
  {
    sub_24B1D9188();
  }

  v56 = *(v0 + 160);
  v1 = *(v0 + 104);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = *(v0 + 136);
  v6 = -1 << *(*(v0 + 104) + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v2;
  v9 = *(v0 + 112) + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  v55 = *(v0 + 104);

  v54 = v9;
  result = swift_beginAccess();
  v11 = 0;
  v12 = (63 - v6) >> 6;
  v57 = (v5 + 16);
  v53 = (v5 + 8);
  v47 = (v0 + 48);
  v48 = v0 + 16;
  v46 = v3;
  while (v8)
  {
    v15 = v11;
LABEL_13:
    v16 = *(v0 + 168);
    v17 = *(v0 + 152);
    v18 = *(v0 + 128);
    sub_24B1E62E4(*(v55 + 48) + *(v56 + 72) * (__clz(__rbit64(v8)) | (v15 << 6)), v16, type metadata accessor for ItemsLocationsProvider.Subscription);
    v51 = *v57;
    (*v57)(v17, v16, v18);
    sub_24B1E63B4(v16, type metadata accessor for ItemsLocationsProvider.Subscription);
    sub_24B1DB2AC(v17);
    v19 = *(v54 + 24);
    if (!*(v19 + 16))
    {
      v22 = *(v0 + 120);
LABEL_18:
      v25 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
      (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
      goto LABEL_19;
    }

    v20 = *(v0 + 152);

    v21 = sub_24B181698(v20);
    v22 = *(v0 + 120);
    if ((v23 & 1) == 0)
    {

      goto LABEL_18;
    }

    v24 = v21;
    v49 = *(v19 + 56);
    v25 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
    v26 = v22;
    v27 = *(v25 - 8);
    sub_24B1E62E4(v49 + *(v27 + 72) * v24, v26, type metadata accessor for ItemsLocationsProvider.LocationState);

    v28 = v26;
    v3 = v46;
    (*(v27 + 56))(v28, 0, 1, v25);
LABEL_19:
    v8 &= v8 - 1;
    v29 = *(v0 + 120);
    type metadata accessor for ItemsLocationsProvider.LocationState(0);
    v30 = *(*(v25 - 8) + 48);
    if (v30(v29, 1, v25))
    {
      v13 = *(v0 + 152);
      v14 = *(v0 + 128);
      sub_24AFF8258(v29, &qword_27EFCC608);
      result = (*v53)(v13, v14);
      v11 = v15;
    }

    else
    {
      v31 = *(v29 + *(v25 + 20));
      sub_24AFF8258(v29, &qword_27EFCC608);
      if (v31)
      {
        v51(*(v0 + 144), *(v0 + 152), *(v0 + 128));
        v32 = sub_24B1D74D0();
        v50 = v33;
        v52 = v32;
        v58 = *(v33 + 24);

        v43 = sub_24B1D6D70(v47);
        v35 = v34;
        v36 = v30(v34, 1, v25);
        v37 = *(v0 + 144);
        v45 = *(v0 + 152);
        v38 = *(v0 + 128);
        if (v36)
        {
          (v43)(v47, 0);
          v44 = *v53;
          (*v53)(v37, v38);
          v39 = *(v50 + 24);
          *(v50 + 24) = v58;
          sub_24B1D5988(v39);

          (v52)(v48, 0);
          result = v44(v45, v38);
        }

        else
        {
          *(v35 + *(v25 + 20)) = 0;
          (v43)(v47, 0);
          v40 = *v53;
          (*v53)(v37, v38);
          v41 = *(v50 + 24);
          *(v50 + 24) = v58;
          sub_24B1D5988(v41);

          (v52)(v48, 0);
          result = v40(v45, v38);
        }

        v11 = v15;
      }

      else
      {
        result = (*v53)(*(v0 + 152), *(v0 + 128));
        v11 = v15;
      }
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v8 = *(v3 + 8 * v15);
    ++v11;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t ItemsLocationsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage, &qword_27EFCE1B0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ItemsLocationsProvider.__deallocating_deinit()
{
  ItemsLocationsProvider.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B1DE2F0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B1DC994(a1, a2);
}

uint64_t sub_24B1DE394(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1DD814(a1, a2);
}

uint64_t (*sub_24B1DE498(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_24B2D1DA4();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_24B1E0124(v6);
  v6[12] = sub_24B1DEA24(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_24B1E6468;
}

uint64_t (*sub_24B1DE5D4(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_24B2D1574();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_24B1E014C(v6);
  v6[12] = sub_24B1DEFE4(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_24B1DE710;
}

uint64_t (*sub_24B1DE714(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_24B2D1DA4();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_24B1E0124(v6);
  v6[12] = sub_24B1DF5A4(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_24B1E6468;
}

uint64_t (*sub_24B1DE850(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_24B2D1574();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_24B1E0124(v6);
  v6[12] = sub_24B1DFB64(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_24B1E6468;
}

void sub_24B1DE98C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_24B1DEA24(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_24B2D1DA4();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for ItemsProvider.InfoState(0);
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC878) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_24B181698(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_24B1CE054();
      goto LABEL_21;
    }

    sub_24B1C5AA4(v26, a3 & 1);
    v29 = sub_24B181698(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_24B1E634C(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for ItemsProvider.InfoState);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return sub_24B1DED54;
}

void sub_24B1DED54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_24B008890(v5, v6, &qword_27EFCC878);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_24B1E634C(v9, v2[8], type metadata accessor for ItemsProvider.InfoState);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_24B1E634C(v13, v14, type metadata accessor for ItemsProvider.InfoState);
        sub_24B1CB8C4(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_24B008890(v5, v16, &qword_27EFCC878);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_24B1E634C(v9, v2[9], type metadata accessor for ItemsProvider.InfoState);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24B1E634C(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for ItemsProvider.InfoState);
      goto LABEL_10;
    }
  }

  sub_24AFF8258(v9, &qword_27EFCC878);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_24B190958(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_24AFF8258(v22, &qword_27EFCC878);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_24B1DEFE4(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_24B2D1574();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for PeopleProvider.PersonState(0);
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD58) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_24B18146C(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_24B1CE624();
      goto LABEL_21;
    }

    sub_24B1C6320(v26, a3 & 1);
    v29 = sub_24B18146C(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_24B1E634C(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for PeopleProvider.PersonState);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return sub_24B1DF314;
}

void sub_24B1DF314(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_24B008890(v5, v6, &qword_27EFCCD58);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_24B1E634C(v9, v2[8], type metadata accessor for PeopleProvider.PersonState);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_24B1E634C(v13, v14, type metadata accessor for PeopleProvider.PersonState);
        sub_24B1CBAB8(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_24B008890(v5, v16, &qword_27EFCCD58);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_24B1E634C(v9, v2[9], type metadata accessor for PeopleProvider.PersonState);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24B1E634C(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for PeopleProvider.PersonState);
      goto LABEL_10;
    }
  }

  sub_24AFF8258(v9, &qword_27EFCCD58);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_24B190F50(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_24AFF8258(v22, &qword_27EFCCD58);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_24B1DF5A4(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_24B2D1DA4();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC608) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_24B181698(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_24B1CE950();
      goto LABEL_21;
    }

    sub_24B1C67C0(v26, a3 & 1);
    v29 = sub_24B181698(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_24B1E634C(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for ItemsLocationsProvider.LocationState);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return sub_24B1DF8D4;
}

void sub_24B1DF8D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_24B008890(v5, v6, &qword_27EFCC608);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_24B1E634C(v9, v2[8], type metadata accessor for ItemsLocationsProvider.LocationState);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_24B1E634C(v13, v14, type metadata accessor for ItemsLocationsProvider.LocationState);
        sub_24B1CBAF8(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_24B008890(v5, v16, &qword_27EFCC608);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_24B1E634C(v9, v2[9], type metadata accessor for ItemsLocationsProvider.LocationState);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24B1E634C(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for ItemsLocationsProvider.LocationState);
      goto LABEL_10;
    }
  }

  sub_24AFF8258(v9, &qword_27EFCC608);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_24B191294(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_24AFF8258(v22, &qword_27EFCC608);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_24B1DFB64(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_24B2D1574();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_24B18146C(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_24B1CEC7C();
      goto LABEL_21;
    }

    sub_24B1C6C60(v26, a3 & 1);
    v29 = sub_24B18146C(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_24B2D6054();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_24B1E634C(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for PeopleLocationsProvider.LocationState);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return sub_24B1DFE94;
}

void sub_24B1DFE94(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_24B008890(v5, v6, &qword_27EFCCCA8);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_24B1E634C(v9, v2[8], type metadata accessor for PeopleLocationsProvider.LocationState);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_24B1E634C(v13, v14, type metadata accessor for PeopleLocationsProvider.LocationState);
        sub_24B1CBB38(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_24B008890(v5, v16, &qword_27EFCCCA8);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_24B1E634C(v9, v2[9], type metadata accessor for PeopleLocationsProvider.LocationState);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24B1E634C(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for PeopleLocationsProvider.LocationState);
      goto LABEL_10;
    }
  }

  sub_24AFF8258(v9, &qword_27EFCCCA8);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_24B1915D8(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_24AFF8258(v22, &qword_27EFCCCA8);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_24B1E0124(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24B1E645C;
}

uint64_t (*sub_24B1E014C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24B1E0174;
}

void sub_24B1E0180(uint64_t a1, uint64_t a2)
{
  v89 = sub_24B2D1494();
  v4 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v69 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBEB8);
  MEMORY[0x28223BE20](v83);
  v93 = &v69 - v9;
  v84 = type metadata accessor for ContactsProvider.ContactState(0);
  v92 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v78 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v14);
  v82 = &v69 - v15;
  v16 = type metadata accessor for ContactsProvider.Subscription(0);
  v81 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v86 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2D8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v87 = &v69 - v24;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v73 = v8;
    v25 = 0;
    v75 = a1;
    v88 = v13;
    v26 = *(a1 + 64);
    v70 = a1 + 64;
    v27 = 1 << *(a1 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v26;
    v30 = (v27 + 63) >> 6;
    v79 = (v4 + 48);
    v71 = (v4 + 32);
    v72 = (v4 + 8);
    v31 = v78;
    v90 = v22;
    v76 = v30;
    v77 = a2;
    while (v29)
    {
      v91 = (v29 - 1) & v29;
      v32 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_16:
      v37 = v75;
      v38 = v80;
      sub_24B1E62E4(*(v75 + 48) + *(v81 + 72) * v32, v80, type metadata accessor for ContactsProvider.Subscription);
      v39 = v82;
      sub_24B1E62E4(*(v37 + 56) + *(v92 + 72) * v32, v82, type metadata accessor for ContactsProvider.ContactState);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2E0);
      v41 = *(v40 + 48);
      v42 = v38;
      v22 = v90;
      sub_24B1E634C(v42, v90, type metadata accessor for ContactsProvider.Subscription);
      sub_24B1E634C(v39, &v22[v41], type metadata accessor for ContactsProvider.ContactState);
      (*(*(v40 - 8) + 56))(v22, 0, 1, v40);
LABEL_17:
      v43 = v22;
      v44 = v87;
      sub_24B0391CC(v43, v87, &qword_27EFCE2D8);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2E0);
      v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
      v47 = v46 == 1;
      if (v46 == 1)
      {
        return;
      }

      v48 = *(v45 + 48);
      v49 = v44;
      v50 = v44;
      v51 = v86;
      sub_24B1E634C(v49, v86, type metadata accessor for ContactsProvider.Subscription);
      v52 = v88;
      sub_24B1E634C(v50 + v48, v88, type metadata accessor for ContactsProvider.ContactState);
      v53 = sub_24B181540(v51);
      LOBYTE(v50) = v54;
      sub_24B1E63B4(v51, type metadata accessor for ContactsProvider.Subscription);
      if ((v50 & 1) == 0)
      {
        sub_24B1E63B4(v52, type metadata accessor for ContactsProvider.ContactState);
        return;
      }

      sub_24B1E62E4(*(a2 + 56) + *(v92 + 72) * v53, v31, type metadata accessor for ContactsProvider.ContactState);
      if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
      {
        sub_24B1E63B4(v31, type metadata accessor for ContactsProvider.ContactState);
        sub_24B1E63B4(v52, type metadata accessor for ContactsProvider.ContactState);
        return;
      }

      v85 = v47;
      v55 = *(v84 + 20);
      v56 = *(v83 + 48);
      v57 = v31 + v55;
      v58 = v31;
      v59 = v93;
      sub_24B008890(v57, v93, &qword_27EFCB688);
      sub_24B008890(v52 + v55, v59 + v56, &qword_27EFCB688);
      v60 = *v79;
      v61 = v89;
      if ((*v79)(v59, 1, v89) == 1)
      {
        sub_24B1E63B4(v58, type metadata accessor for ContactsProvider.ContactState);
        sub_24B1E63B4(v52, type metadata accessor for ContactsProvider.ContactState);
        if (v60(v93 + v56, 1, v89) != 1)
        {
          goto LABEL_31;
        }

        v31 = v58;
        sub_24AFF8258(v93, &qword_27EFCB688);
        v30 = v76;
        a2 = v77;
        v22 = v90;
        v29 = v91;
      }

      else
      {
        v62 = v93;
        v63 = v73;
        sub_24B008890(v93, v73, &qword_27EFCB688);
        if (v60(v62 + v56, 1, v61) == 1)
        {
          sub_24B1E63B4(v78, type metadata accessor for ContactsProvider.ContactState);
          sub_24B1E63B4(v88, type metadata accessor for ContactsProvider.ContactState);
          (*v72)(v63, v61);
LABEL_31:
          sub_24AFF8258(v93, &qword_27EFCBEB8);
          return;
        }

        v64 = v62 + v56;
        v65 = v74;
        (*v71)(v74, v64, v61);
        sub_24B1E6414(&qword_27EFCBEC0, MEMORY[0x277D08B20]);
        v66 = sub_24B2D52A4();
        v67 = *v72;
        (*v72)(v65, v61);
        v31 = v78;
        sub_24B1E63B4(v78, type metadata accessor for ContactsProvider.ContactState);
        sub_24B1E63B4(v88, type metadata accessor for ContactsProvider.ContactState);
        v67(v63, v61);
        sub_24AFF8258(v62, &qword_27EFCB688);
        v30 = v76;
        a2 = v77;
        v22 = v90;
        v29 = v91;
        if ((v66 & 1) == 0)
        {
          return;
        }
      }
    }

    if (v30 <= v25 + 1)
    {
      v33 = v25 + 1;
    }

    else
    {
      v33 = v30;
    }

    v34 = v33 - 1;
    while (1)
    {
      v35 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v35 >= v30)
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2E0);
        (*(*(v68 - 8) + 56))(v22, 1, 1, v68);
        v91 = 0;
        v25 = v34;
        goto LABEL_17;
      }

      v36 = *(v70 + 8 * v35);
      ++v25;
      if (v36)
      {
        v91 = (v36 - 1) & v36;
        v32 = __clz(__rbit64(v36)) | (v35 << 6);
        v25 = v35;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_24B1E0B48(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for ETAProvider.ETAState(0);
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  MEMORY[0x28223BE20](v10);
  v59 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE240);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v53 - v15);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v56 = a1;
    v57 = v4;
    v20 = *(a1 + 64);
    v19 = a1 + 64;
    v18 = v20;
    v21 = 1 << *(v19 - 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v53 = (v21 + 63) >> 6;
    v54 = v19;
    v58 = v9;
    v55 = a2;
    while (v23)
    {
      v62 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
      v29 = (*(v56 + 48) + 32 * v24);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v33 = v29[3];
      v34 = v59;
      sub_24B1E62E4(*(v56 + 56) + *(v4 + 72) * v24, v59, type metadata accessor for ETAProvider.ETAState);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE248);
      v36 = *(v35 + 48);
      v37 = v61;
      *v61 = v30;
      v37[1] = v31;
      v38 = v37;
      v37[2] = v32;
      v37[3] = v33;
      sub_24B1E634C(v34, v37 + v36, type metadata accessor for ETAProvider.ETAState);
      (*(*(v35 - 8) + 56))(v38, 0, 1, v35);

      a2 = v55;
LABEL_17:
      sub_24B0391CC(v38, v16, &qword_27EFCE240);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE248);
      if ((*(*(v39 - 8) + 48))(v16, 1, v39) == 1)
      {
        return;
      }

      v40 = a2;
      v41 = v6;
      v42 = *(v39 + 48);
      v43 = *v16;
      v44 = v16[1];
      v46 = v16[2];
      v45 = v16[3];
      v47 = v58;
      sub_24B1E634C(v16 + v42, v58, type metadata accessor for ETAProvider.ETAState);
      v48 = sub_24B1815F8(v43, v44, v46, v45);
      LOBYTE(v46) = v49;

      if ((v46 & 1) == 0)
      {
        goto LABEL_27;
      }

      v4 = v57;
      v6 = v41;
      sub_24B1E62E4(*(v40 + 56) + *(v57 + 72) * v48, v41, type metadata accessor for ETAProvider.ETAState);
      if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0 || (a2 = v40, type metadata accessor for ETAProvider.ETAState.Request(0), (sub_24B2D1C14() & 1) == 0) || (sub_24B2D1C14() & 1) == 0)
      {
        sub_24B1E63B4(v6, type metadata accessor for ETAProvider.ETAState);
LABEL_27:
        sub_24B1E63B4(v47, type metadata accessor for ETAProvider.ETAState);
        return;
      }

      v50 = sub_24B2D17B4();
      sub_24B1E63B4(v6, type metadata accessor for ETAProvider.ETAState);
      sub_24B1E63B4(v47, type metadata accessor for ETAProvider.ETAState);
      v23 = v62;
      if ((v50 & 1) == 0)
      {
        return;
      }
    }

    if (v53 <= v17 + 1)
    {
      v25 = v17 + 1;
    }

    else
    {
      v25 = v53;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v27 >= v53)
      {
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE248);
        v52 = v61;
        (*(*(v51 - 8) + 56))(v61, 1, 1, v51);
        v62 = 0;
        v17 = v26;
        v38 = v52;
        goto LABEL_17;
      }

      v28 = *(v54 + 8 * v27);
      ++v17;
      if (v28)
      {
        v62 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v17 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_24B1E10B8(uint64_t a1, uint64_t a2)
{
  v70 = sub_24B2D1F24();
  v4 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  MEMORY[0x28223BE20](v88);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v65 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE1A8);
  MEMORY[0x28223BE20](v78);
  v11 = &v65 - v10;
  v77 = type metadata accessor for ItemsProvider.InfoState(0);
  v85 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v91 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v65 - v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v65 - v16;
  v86 = sub_24B2D1DA4();
  v80 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE238);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v87 = &v65 - v25;
  v82 = a1;
  v89 = a2;
  if (a1 != a2 && *(v82 + 16) == *(v89 + 16))
  {
    v67 = v7;
    v26 = 0;
    v27 = *(v82 + 64);
    v65 = v82 + 64;
    v28 = 1 << *(v82 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v71 = v80 + 16;
    v84 = (v80 + 32);
    v73 = (v80 + 8);
    v66 = (v4 + 32);
    v68 = (v4 + 8);
    v32 = v90;
    v79 = v22;
    v72 = v31;
    while (1)
    {
      v33 = v87;
      if (!v30)
      {
        break;
      }

      v83 = (v30 - 1) & v30;
      v34 = __clz(__rbit64(v30)) | (v26 << 6);
LABEL_17:
      v39 = v82;
      v40 = v80;
      (*(v80 + 16))(v74, *(v82 + 48) + *(v80 + 72) * v34, v86, v24);
      v41 = *(v39 + 56) + *(v85 + 72) * v34;
      v42 = v75;
      sub_24B1E62E4(v41, v75, type metadata accessor for ItemsProvider.InfoState);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCA08);
      v44 = *(v43 + 48);
      v22 = v79;
      (*(v40 + 32))();
      sub_24B1E634C(v42, &v22[v44], type metadata accessor for ItemsProvider.InfoState);
      (*(*(v43 - 8) + 56))(v22, 0, 1, v43);
      v33 = v87;
LABEL_18:
      sub_24B0391CC(v22, v33, &qword_27EFCE238);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCA08);
      if ((*(*(v45 - 8) + 48))(v33, 1, v45) == 1)
      {
        return;
      }

      v46 = *(v45 + 48);
      v47 = v81;
      v48 = v86;
      (*v84)(v81, v33, v86);
      sub_24B1E634C(v33 + v46, v32, type metadata accessor for ItemsProvider.InfoState);
      v49 = sub_24B181698(v47);
      v51 = v50;
      (*v73)(v47, v48);
      if ((v51 & 1) == 0)
      {
        sub_24B1E63B4(v32, type metadata accessor for ItemsProvider.InfoState);
        return;
      }

      sub_24B1E62E4(*(v89 + 56) + *(v85 + 72) * v49, v91, type metadata accessor for ItemsProvider.InfoState);
      if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
      {
        sub_24B1E63B4(v91, type metadata accessor for ItemsProvider.InfoState);
        sub_24B1E63B4(v32, type metadata accessor for ItemsProvider.InfoState);
        return;
      }

      v52 = *(v77 + 20);
      v53 = *(v78 + 48);
      sub_24B1E62E4(v91 + v52, v11, type metadata accessor for ItemsProvider.InfoState.Result);
      v54 = v90 + v52;
      v32 = v90;
      sub_24B1E62E4(v54, &v11[v53], type metadata accessor for ItemsProvider.InfoState.Result);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = v67;
        sub_24B1E62E4(v11, v67, type metadata accessor for ItemsProvider.InfoState.Result);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_24B1E63B4(v91, type metadata accessor for ItemsProvider.InfoState);
          sub_24B1E63B4(v90, type metadata accessor for ItemsProvider.InfoState);
          (*v68)(v55, v70);
LABEL_34:
          sub_24AFF8258(v11, &qword_27EFCE1A8);
          return;
        }

        v56 = &v11[v53];
        v57 = v69;
        v58 = v70;
        (*v66)(v69, v56, v70);
        v59 = v11;
        v60 = v55;
        v61 = MEMORY[0x24C2385A0](v55, v57);
        v62 = *v68;
        (*v68)(v57, v58);
        sub_24B1E63B4(v91, type metadata accessor for ItemsProvider.InfoState);
        v32 = v90;
        sub_24B1E63B4(v90, type metadata accessor for ItemsProvider.InfoState);
        v63 = v60;
        v11 = v59;
        v22 = v79;
        v62(v63, v58);
        if ((v61 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_24B1E63B4(v91, type metadata accessor for ItemsProvider.InfoState);
        sub_24B1E63B4(v32, type metadata accessor for ItemsProvider.InfoState);
        sub_24B1E62E4(v11, v76, type metadata accessor for ItemsProvider.InfoState.Result);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_34;
        }

        if (*v76 != v11[v53])
        {
LABEL_32:
          sub_24B1E63B4(v11, type metadata accessor for ItemsProvider.InfoState.Result);
          return;
        }
      }

      sub_24B1E63B4(v11, type metadata accessor for ItemsProvider.InfoState.Result);
      v31 = v72;
      v30 = v83;
    }

    if (v31 <= v26 + 1)
    {
      v35 = v26 + 1;
    }

    else
    {
      v35 = v31;
    }

    v36 = v35 - 1;
    while (1)
    {
      v37 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v37 >= v31)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCA08);
        (*(*(v64 - 8) + 56))(v22, 1, 1, v64);
        v83 = 0;
        v26 = v36;
        goto LABEL_18;
      }

      v38 = *(v65 + 8 * v37);
      ++v26;
      if (v38)
      {
        v83 = (v38 - 1) & v38;
        v34 = __clz(__rbit64(v38)) | (v37 << 6);
        v26 = v37;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void sub_24B1E1AD8(uint64_t a1, uint64_t a2)
{
  v70 = sub_24B2D1794();
  v4 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = _s11PersonStateV6ResultOMa(0);
  MEMORY[0x28223BE20](v88);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v65 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE228);
  MEMORY[0x28223BE20](v78);
  v11 = &v65 - v10;
  v77 = type metadata accessor for PeopleProvider.PersonState(0);
  v85 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v91 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v65 - v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v65 - v16;
  v86 = sub_24B2D1574();
  v80 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE230);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v87 = &v65 - v25;
  v82 = a1;
  v89 = a2;
  if (a1 != a2 && *(v82 + 16) == *(v89 + 16))
  {
    v67 = v7;
    v26 = 0;
    v27 = *(v82 + 64);
    v65 = v82 + 64;
    v28 = 1 << *(v82 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v71 = v80 + 16;
    v84 = (v80 + 32);
    v73 = (v80 + 8);
    v66 = (v4 + 32);
    v68 = (v4 + 8);
    v32 = v90;
    v79 = v22;
    v72 = v31;
    while (1)
    {
      v33 = v87;
      if (!v30)
      {
        break;
      }

      v83 = (v30 - 1) & v30;
      v34 = __clz(__rbit64(v30)) | (v26 << 6);
LABEL_17:
      v39 = v82;
      v40 = v80;
      (*(v80 + 16))(v74, *(v82 + 48) + *(v80 + 72) * v34, v86, v24);
      v41 = *(v39 + 56) + *(v85 + 72) * v34;
      v42 = v75;
      sub_24B1E62E4(v41, v75, type metadata accessor for PeopleProvider.PersonState);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCF10);
      v44 = *(v43 + 48);
      v22 = v79;
      (*(v40 + 32))();
      sub_24B1E634C(v42, &v22[v44], type metadata accessor for PeopleProvider.PersonState);
      (*(*(v43 - 8) + 56))(v22, 0, 1, v43);
      v33 = v87;
LABEL_18:
      sub_24B0391CC(v22, v33, &qword_27EFCE230);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCF10);
      if ((*(*(v45 - 8) + 48))(v33, 1, v45) == 1)
      {
        return;
      }

      v46 = *(v45 + 48);
      v47 = v81;
      v48 = v86;
      (*v84)(v81, v33, v86);
      sub_24B1E634C(v33 + v46, v32, type metadata accessor for PeopleProvider.PersonState);
      v49 = sub_24B18146C(v47);
      v51 = v50;
      (*v73)(v47, v48);
      if ((v51 & 1) == 0)
      {
        sub_24B1E63B4(v32, type metadata accessor for PeopleProvider.PersonState);
        return;
      }

      sub_24B1E62E4(*(v89 + 56) + *(v85 + 72) * v49, v91, type metadata accessor for PeopleProvider.PersonState);
      if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
      {
        sub_24B1E63B4(v91, type metadata accessor for PeopleProvider.PersonState);
        sub_24B1E63B4(v32, type metadata accessor for PeopleProvider.PersonState);
        return;
      }

      v52 = *(v77 + 20);
      v53 = *(v78 + 48);
      sub_24B1E62E4(v91 + v52, v11, _s11PersonStateV6ResultOMa);
      v54 = v90 + v52;
      v32 = v90;
      sub_24B1E62E4(v54, &v11[v53], _s11PersonStateV6ResultOMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = v67;
        sub_24B1E62E4(v11, v67, _s11PersonStateV6ResultOMa);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_24B1E63B4(v91, type metadata accessor for PeopleProvider.PersonState);
          sub_24B1E63B4(v90, type metadata accessor for PeopleProvider.PersonState);
          (*v68)(v55, v70);
LABEL_34:
          sub_24AFF8258(v11, &qword_27EFCE228);
          return;
        }

        v56 = &v11[v53];
        v57 = v69;
        v58 = v70;
        (*v66)(v69, v56, v70);
        v59 = v11;
        v60 = v55;
        v61 = MEMORY[0x24C237E10](v55, v57);
        v62 = *v68;
        (*v68)(v57, v58);
        sub_24B1E63B4(v91, type metadata accessor for PeopleProvider.PersonState);
        v32 = v90;
        sub_24B1E63B4(v90, type metadata accessor for PeopleProvider.PersonState);
        v63 = v60;
        v11 = v59;
        v22 = v79;
        v62(v63, v58);
        if ((v61 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_24B1E63B4(v91, type metadata accessor for PeopleProvider.PersonState);
        sub_24B1E63B4(v32, type metadata accessor for PeopleProvider.PersonState);
        sub_24B1E62E4(v11, v76, _s11PersonStateV6ResultOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_34;
        }

        if (*v76 != v11[v53])
        {
LABEL_32:
          sub_24B1E63B4(v11, _s11PersonStateV6ResultOMa);
          return;
        }
      }

      sub_24B1E63B4(v11, _s11PersonStateV6ResultOMa);
      v31 = v72;
      v30 = v83;
    }

    if (v31 <= v26 + 1)
    {
      v35 = v26 + 1;
    }

    else
    {
      v35 = v31;
    }

    v36 = v35 - 1;
    while (1)
    {
      v37 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v37 >= v31)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCF10);
        (*(*(v64 - 8) + 56))(v22, 1, 1, v64);
        v83 = 0;
        v26 = v36;
        goto LABEL_18;
      }

      v38 = *(v65 + 8 * v37);
      ++v26;
      if (v38)
      {
        v83 = (v38 - 1) & v38;
        v34 = __clz(__rbit64(v38)) | (v37 << 6);
        v26 = v37;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void sub_24B1E24F8(uint64_t a1, uint64_t a2)
{
  v86 = sub_24B2D1944();
  v4 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v62 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660);
  MEMORY[0x28223BE20](v76);
  v88 = &v62 - v8;
  v77 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
  v84 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v87 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v74 = &v62 - v13;
  v85 = sub_24B2D1DA4();
  v79 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v80 = &v62 - v22;
  v81 = a1;
  if (a1 != a2 && *(v81 + 16) == *(a2 + 16))
  {
    v23 = 0;
    v24 = *(v81 + 64);
    v63 = v81 + 64;
    v25 = 1 << *(v81 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v24;
    v90 = (v25 + 63) >> 6;
    v69 = v79 + 16;
    v83 = (v79 + 32);
    v71 = (v4 + 48);
    v72 = (v79 + 8);
    v64 = (v4 + 32);
    v65 = (v4 + 8);
    v75 = v19;
    v70 = a2;
    while (v27)
    {
      v82 = (v27 - 1) & v27;
      v28 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_16:
      v34 = v81;
      v35 = v79;
      (*(v79 + 16))(v73, *(v81 + 48) + *(v79 + 72) * v28, v85, v21);
      v36 = v74;
      sub_24B1E62E4(*(v34 + 56) + *(v84 + 72) * v28, v74, type metadata accessor for ItemsLocationsProvider.LocationState);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2B8);
      v38 = *(v37 + 48);
      v19 = v75;
      (*(v35 + 32))();
      sub_24B1E634C(v36, &v19[v38], type metadata accessor for ItemsLocationsProvider.LocationState);
      (*(*(v37 - 8) + 56))(v19, 0, 1, v37);
      v31 = v80;
LABEL_17:
      sub_24B0391CC(v19, v31, &qword_27EFCE2B0);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2B8);
      if ((*(*(v39 - 8) + 48))(v31, 1, v39) == 1)
      {
        return;
      }

      v40 = *(v39 + 48);
      v41 = v78;
      v42 = v85;
      (*v83)(v78, v31, v85);
      sub_24B1E634C(v31 + v40, v89, type metadata accessor for ItemsLocationsProvider.LocationState);
      v43 = sub_24B181698(v41);
      LOBYTE(v40) = v44;
      (*v72)(v41, v42);
      if ((v40 & 1) == 0)
      {
        sub_24B1E63B4(v89, type metadata accessor for ItemsLocationsProvider.LocationState);
        return;
      }

      sub_24B1E62E4(*(a2 + 56) + *(v84 + 72) * v43, v87, type metadata accessor for ItemsLocationsProvider.LocationState);
      if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0 || (v45 = *(v77 + 20), v46 = v87 + v45, v47 = v89 + v45, *(v87 + v45) != *(v89 + v45)))
      {
        sub_24B1E63B4(v87, type metadata accessor for ItemsLocationsProvider.LocationState);
        sub_24B1E63B4(v89, type metadata accessor for ItemsLocationsProvider.LocationState);
        return;
      }

      v48 = *(type metadata accessor for ItemsLocationsProvider.LocationState.Result(0) + 20);
      v49 = *(v76 + 48);
      v50 = v88;
      sub_24B008890(v46 + v48, v88, &qword_27EFCB288);
      v51 = v47 + v48;
      v52 = v86;
      sub_24B008890(v51, v50 + v49, &qword_27EFCB288);
      v53 = *v71;
      if ((*v71)(v50, 1, v52) == 1)
      {
        sub_24B1E63B4(v87, type metadata accessor for ItemsLocationsProvider.LocationState);
        sub_24B1E63B4(v89, type metadata accessor for ItemsLocationsProvider.LocationState);
        if (v53(v88 + v49, 1, v86) != 1)
        {
          goto LABEL_32;
        }

        sub_24AFF8258(v88, &qword_27EFCB288);
        a2 = v70;
        v27 = v82;
      }

      else
      {
        v54 = v88;
        v55 = v68;
        sub_24B008890(v88, v68, &qword_27EFCB288);
        if (v53(v54 + v49, 1, v86) == 1)
        {
          sub_24B1E63B4(v87, type metadata accessor for ItemsLocationsProvider.LocationState);
          sub_24B1E63B4(v89, type metadata accessor for ItemsLocationsProvider.LocationState);
          (*v65)(v55, v86);
LABEL_32:
          sub_24AFF8258(v88, &qword_27EFCC660);
          return;
        }

        v56 = v67;
        v57 = v86;
        (*v64)(v67, v88 + v49, v86);
        sub_24B1E6414(&qword_27EFCC670, MEMORY[0x277D08CD0]);
        v66 = sub_24B2D52A4();
        v58 = *v65;
        v59 = v89;
        (*v65)(v56, v57);
        sub_24B1E63B4(v87, type metadata accessor for ItemsLocationsProvider.LocationState);
        sub_24B1E63B4(v59, type metadata accessor for ItemsLocationsProvider.LocationState);
        v60 = v57;
        v19 = v75;
        v58(v55, v60);
        sub_24AFF8258(v88, &qword_27EFCB288);
        a2 = v70;
        v27 = v82;
        if ((v66 & 1) == 0)
        {
          return;
        }
      }
    }

    if (v90 <= v23 + 1)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = v90;
    }

    v30 = v29 - 1;
    v31 = v80;
    while (1)
    {
      v32 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v32 >= v90)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2B8);
        (*(*(v61 - 8) + 56))(v19, 1, 1, v61);
        v82 = 0;
        v23 = v30;
        goto LABEL_17;
      }

      v33 = *(v63 + 8 * v32);
      ++v23;
      if (v33)
      {
        v82 = (v33 - 1) & v33;
        v28 = __clz(__rbit64(v33)) | (v32 << 6);
        v23 = v32;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_24B1E2F38(uint64_t a1, uint64_t a2)
{
  v86 = sub_24B2D1944();
  v4 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v62 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660);
  MEMORY[0x28223BE20](v76);
  v88 = &v62 - v8;
  v77 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v84 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v87 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v74 = &v62 - v13;
  v85 = sub_24B2D1574();
  v79 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v80 = &v62 - v22;
  v81 = a1;
  if (a1 != a2 && *(v81 + 16) == *(a2 + 16))
  {
    v23 = 0;
    v24 = *(v81 + 64);
    v63 = v81 + 64;
    v25 = 1 << *(v81 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v24;
    v90 = (v25 + 63) >> 6;
    v69 = v79 + 16;
    v83 = (v79 + 32);
    v71 = (v4 + 48);
    v72 = (v79 + 8);
    v64 = (v4 + 32);
    v65 = (v4 + 8);
    v75 = v19;
    v70 = a2;
    while (v27)
    {
      v82 = (v27 - 1) & v27;
      v28 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_16:
      v34 = v81;
      v35 = v79;
      (*(v79 + 16))(v73, *(v81 + 48) + *(v79 + 72) * v28, v85, v21);
      v36 = v74;
      sub_24B1E62E4(*(v34 + 56) + *(v84 + 72) * v28, v74, type metadata accessor for PeopleLocationsProvider.LocationState);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2A8);
      v38 = *(v37 + 48);
      v19 = v75;
      (*(v35 + 32))();
      sub_24B1E634C(v36, &v19[v38], type metadata accessor for PeopleLocationsProvider.LocationState);
      (*(*(v37 - 8) + 56))(v19, 0, 1, v37);
      v31 = v80;
LABEL_17:
      sub_24B0391CC(v19, v31, &qword_27EFCE2A0);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2A8);
      if ((*(*(v39 - 8) + 48))(v31, 1, v39) == 1)
      {
        return;
      }

      v40 = *(v39 + 48);
      v41 = v78;
      v42 = v85;
      (*v83)(v78, v31, v85);
      sub_24B1E634C(v31 + v40, v89, type metadata accessor for PeopleLocationsProvider.LocationState);
      v43 = sub_24B18146C(v41);
      LOBYTE(v40) = v44;
      (*v72)(v41, v42);
      if ((v40 & 1) == 0)
      {
        sub_24B1E63B4(v89, type metadata accessor for PeopleLocationsProvider.LocationState);
        return;
      }

      sub_24B1E62E4(*(a2 + 56) + *(v84 + 72) * v43, v87, type metadata accessor for PeopleLocationsProvider.LocationState);
      if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0 || (v45 = *(v77 + 20), v46 = v87 + v45, v47 = v89 + v45, *(v87 + v45) != *(v89 + v45)))
      {
        sub_24B1E63B4(v87, type metadata accessor for PeopleLocationsProvider.LocationState);
        sub_24B1E63B4(v89, type metadata accessor for PeopleLocationsProvider.LocationState);
        return;
      }

      v48 = *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);
      v49 = *(v76 + 48);
      v50 = v88;
      sub_24B008890(v46 + v48, v88, &qword_27EFCB288);
      v51 = v47 + v48;
      v52 = v86;
      sub_24B008890(v51, v50 + v49, &qword_27EFCB288);
      v53 = *v71;
      if ((*v71)(v50, 1, v52) == 1)
      {
        sub_24B1E63B4(v87, type metadata accessor for PeopleLocationsProvider.LocationState);
        sub_24B1E63B4(v89, type metadata accessor for PeopleLocationsProvider.LocationState);
        if (v53(v88 + v49, 1, v86) != 1)
        {
          goto LABEL_32;
        }

        sub_24AFF8258(v88, &qword_27EFCB288);
        a2 = v70;
        v27 = v82;
      }

      else
      {
        v54 = v88;
        v55 = v68;
        sub_24B008890(v88, v68, &qword_27EFCB288);
        if (v53(v54 + v49, 1, v86) == 1)
        {
          sub_24B1E63B4(v87, type metadata accessor for PeopleLocationsProvider.LocationState);
          sub_24B1E63B4(v89, type metadata accessor for PeopleLocationsProvider.LocationState);
          (*v65)(v55, v86);
LABEL_32:
          sub_24AFF8258(v88, &qword_27EFCC660);
          return;
        }

        v56 = v67;
        v57 = v86;
        (*v64)(v67, v88 + v49, v86);
        sub_24B1E6414(&qword_27EFCC670, MEMORY[0x277D08CD0]);
        v66 = sub_24B2D52A4();
        v58 = *v65;
        v59 = v89;
        (*v65)(v56, v57);
        sub_24B1E63B4(v87, type metadata accessor for PeopleLocationsProvider.LocationState);
        sub_24B1E63B4(v59, type metadata accessor for PeopleLocationsProvider.LocationState);
        v60 = v57;
        v19 = v75;
        v58(v55, v60);
        sub_24AFF8258(v88, &qword_27EFCB288);
        a2 = v70;
        v27 = v82;
        if ((v66 & 1) == 0)
        {
          return;
        }
      }
    }

    if (v90 <= v23 + 1)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = v90;
    }

    v30 = v29 - 1;
    v31 = v80;
    while (1)
    {
      v32 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v32 >= v90)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE2A8);
        (*(*(v61 - 8) + 56))(v19, 1, 1, v61);
        v82 = 0;
        v23 = v30;
        goto LABEL_17;
      }

      v33 = *(v63 + 8 * v32);
      ++v23;
      if (v33)
      {
        v82 = (v33 - 1) & v33;
        v28 = __clz(__rbit64(v33)) | (v32 << 6);
        v23 = v32;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_24B1E3978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsContactsProvider.Subscription();
  v51 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE278);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  if (a1 == a2)
  {
    v54 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v53 = a2;
    v14 = 0;
    v49 = a1;
    v15 = *(a1 + 64);
    v48 = a1 + 64;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v20 = &unk_27EFCE280;
    while (v18)
    {
      v55 = (v18 - 1) & v18;
      v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
      v27 = v49;
      v28 = v50;
      sub_24B1E62E4(*(v49 + 48) + *(v51 + 72) * v21, v50, type metadata accessor for SettingsContactsProvider.Subscription);
      v29 = *(*(v27 + 56) + 8 * v21);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v20);
      v31 = *(v30 + 48);
      sub_24B1E634C(v28, v11, type metadata accessor for SettingsContactsProvider.Subscription);
      *&v11[v31] = v29;
      (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
      v32 = v29;
      v24 = v53;
LABEL_17:
      sub_24B0391CC(v11, v13, &qword_27EFCE278);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v20);
      v34 = (*(*(v33 - 8) + 48))(v13, 1, v33);
      v54 = v34 == 1;
      if (v34 == 1)
      {
        return;
      }

      v35 = v19;
      v36 = v20;
      v37 = v11;
      v38 = *(v33 + 48);
      v39 = v52;
      sub_24B1E634C(v13, v52, type metadata accessor for SettingsContactsProvider.Subscription);
      v40 = v13;
      v41 = *&v13[v38];
      v42 = sub_24B18186C(v39);
      v44 = v43;
      sub_24B1E63B4(v39, type metadata accessor for SettingsContactsProvider.Subscription);
      if ((v44 & 1) == 0)
      {

        goto LABEL_24;
      }

      sub_24AFFF54C();
      v45 = *(*(v24 + 56) + 8 * v42);
      v46 = sub_24B2D5A34();

      v11 = v37;
      v13 = v40;
      v20 = v36;
      v19 = v35;
      v18 = v55;
      if ((v46 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v14 + 1)
    {
      v22 = v14 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    v24 = v53;
    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v19)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v20);
        (*(*(v47 - 8) + 56))(v11, 1, 1, v47);
        v55 = 0;
        v14 = v23;
        goto LABEL_17;
      }

      v26 = *(v48 + 8 * v25);
      ++v14;
      if (v26)
      {
        v55 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v14 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v54 = 0;
  }
}

uint64_t sub_24B1E3DF0(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
  MEMORY[0x28223BE20](v81);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE288);
  MEMORY[0x28223BE20](v94);
  v7 = &v79 - v6;
  v8 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v83 = &v79 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v98 = &v79 - v19;
  MEMORY[0x28223BE20](v18);
  v92 = &v79 - v20;
  v82 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  v91 = *(v82 - 8);
  v21 = MEMORY[0x28223BE20](v82);
  v95 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v90 = &v79 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE290);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  result = MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  if (a1 == a2)
  {
    return 1;
  }

  v30 = *(a1 + 16);
  v93 = a2;
  if (v30 != *(a2 + 16))
  {
    return 0;
  }

  v89 = v27;
  v96 = v17;
  v86 = v5;
  v87 = v8;
  v31 = 0;
  v84 = v7;
  v85 = a1;
  v32 = *(a1 + 64);
  v79 = a1 + 64;
  v80 = v12;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v36 = (v33 + 63) >> 6;
  v37 = v93;
  v88 = v29;
  v99 = v9;
  while (1)
  {
    if (!v35)
    {
      if (v36 <= v31 + 1)
      {
        v41 = v31 + 1;
      }

      else
      {
        v41 = v36;
      }

      v42 = v41 - 1;
      while (1)
      {
        v43 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v43 >= v36)
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE298);
          v51 = v89;
          (*(*(v78 - 8) + 56))(v89, 1, 1, v78);
          v97 = 0;
          v31 = v42;
          goto LABEL_20;
        }

        v44 = *(v79 + 8 * v43);
        ++v31;
        if (v44)
        {
          v97 = (v44 - 1) & v44;
          v40 = __clz(__rbit64(v44)) | (v43 << 6);
          v31 = v43;
          goto LABEL_19;
        }
      }

      __break(1u);
      return result;
    }

    v97 = (v35 - 1) & v35;
    v40 = __clz(__rbit64(v35)) | (v31 << 6);
LABEL_19:
    v45 = v85;
    v46 = v90;
    sub_24B1E62E4(*(v85 + 48) + *(v91 + 72) * v40, v90, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
    v47 = *(v45 + 56) + *(v9 + 72) * v40;
    v48 = v92;
    sub_24B1E62E4(v47, v92, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE298);
    v50 = *(v49 + 48);
    v51 = v89;
    sub_24B1E634C(v46, v89, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
    sub_24B1E634C(v48, v51 + v50, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    (*(*(v49 - 8) + 56))(v51, 0, 1, v49);
    v7 = v84;
LABEL_20:
    v52 = v51;
    v53 = v88;
    sub_24B0391CC(v52, v88, &qword_27EFCE290);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE298);
    v55 = 1;
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
      return v55;
    }

    v56 = *(v54 + 48);
    v57 = v95;
    sub_24B1E634C(v53, v95, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
    v58 = v98;
    sub_24B1E634C(v53 + v56, v98, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    v59 = sub_24B181A88(v57);
    v61 = v60;
    sub_24B1E63B4(v57, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
    if ((v61 & 1) == 0)
    {
      sub_24B1E63B4(v58, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      return 0;
    }

    v62 = *(v37 + 56) + *(v99 + 72) * v59;
    v63 = v96;
    sub_24B1E62E4(v62, v96, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    v64 = v58;
    v65 = *(v94 + 48);
    sub_24B1E62E4(v63, v7, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    sub_24B1E62E4(v64, &v7[v65], type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_24B1E63B4(v63, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      sub_24B1E63B4(v64, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      v76 = v83;
      sub_24B1E62E4(v7, v83, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_41;
      }

      v77 = *v76;
      v9 = v99;
      v37 = v93;
      if (v77 != v7[v65])
      {
        goto LABEL_39;
      }

      goto LABEL_8;
    }

    v39 = v80;
    sub_24B1E62E4(v7, v80, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v66 = v86;
    sub_24B1E634C(&v7[v65], v86, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
    if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0() & 1) == 0 || ((v67 = *(v82 + 20), v68 = *(v39 + v67), v69 = *(v39 + v67 + 8), v70 = (v66 + v67), v68 != *v70) || v69 != v70[1]) && (sub_24B2D6004() & 1) == 0)
    {
      sub_24B1E63B4(v96, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      sub_24B1E63B4(v98, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
LABEL_38:
      sub_24B1E63B4(v86, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
      sub_24B1E63B4(v39, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
LABEL_39:
      sub_24B1E63B4(v7, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      return 0;
    }

    v71 = *(v81 + 20);
    v72 = *(v39 + v71);
    v73 = *(v39 + v71 + 8);
    v74 = (v66 + v71);
    v75 = v98;
    if (v72 == *v74 && v73 == v74[1])
    {
      sub_24B1E63B4(v96, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      sub_24B1E63B4(v75, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      v9 = v99;
      v37 = v93;
    }

    else
    {
      v38 = sub_24B2D6004();
      sub_24B1E63B4(v96, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      v39 = v80;
      sub_24B1E63B4(v75, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      v9 = v99;
      v37 = v93;
      if ((v38 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    sub_24B1E63B4(v86, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
    sub_24B1E63B4(v39, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
LABEL_8:
    result = sub_24B1E63B4(v7, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    v35 = v97;
  }

  sub_24B1E63B4(v96, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  sub_24B1E63B4(v98, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  sub_24B1E63B4(v39, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
LABEL_41:
  sub_24AFF8258(v7, &qword_27EFCE288);
  return 0;
}

uint64_t sub_24B1E47C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v45 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE268);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  result = MEMORY[0x28223BE20](v9);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v47 = &v41 - v11;
  v42 = a1;
  v43 = v12;
  v13 = 0;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v48 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v43;
LABEL_16:
    v28 = v42;
    v29 = v44;
    sub_24B1E62E4(*(v42 + 48) + *(v45 + 72) * v21, v44, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v30 = *(*(v28 + 56) + 8 * v21);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE270);
    v32 = *(v31 + 48);
    sub_24B1E634C(v29, v22, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    *(v22 + v32) = v30;
    (*(*(v31 - 8) + 56))(v22, 0, 1, v31);

    v25 = v47;
LABEL_17:
    sub_24B0391CC(v22, v25, &qword_27EFCE268);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE270);
    v34 = (*(*(v33 - 8) + 48))(v25, 1, v33);
    v35 = v34 == 1;
    if (v34 == 1)
    {
      return v35;
    }

    v36 = v46;
    sub_24B1E634C(v25, v46, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    sub_24B18176C(v36);
    v38 = v37;
    sub_24B1E63B4(v36, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    if ((v38 & 1) == 0)
    {

      return 0;
    }

    v39 = sub_24B2D5754();

    v19 = v48;
    if ((v39 & 1) == 0)
    {
      return v35;
    }
  }

  if (v20 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  v22 = v43;
  v25 = v47;
  while (1)
  {
    v26 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v26 >= v20)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE270);
      (*(*(v40 - 8) + 56))(v22, 1, 1, v40);
      v48 = 0;
      v13 = v24;
      goto LABEL_17;
    }

    v27 = *(v15 + 8 * v26);
    ++v13;
    if (v27)
    {
      v48 = (v27 - 1) & v27;
      v21 = __clz(__rbit64(v27)) | (v26 << 6);
      v13 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B1E4C44(uint64_t a1, uint64_t a2)
{
  v96 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  MEMORY[0x28223BE20](v96);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE250);
  MEMORY[0x28223BE20](v89);
  v7 = &v79 - v6;
  v88 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v95 = *(v88 - 8);
  v8 = MEMORY[0x28223BE20](v88);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v79 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v79 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v16);
  v87 = &v79 - v19;
  v20 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v86 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v90 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v85 = &v79 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE258);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v25);
  v91 = &v79 - v29;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v81 = v12;
  v92 = v15;
  v93 = v18;
  v30 = 0;
  v31 = *(a1 + 64);
  v79 = a1 + 64;
  v80 = v7;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v35 = (v32 + 63) >> 6;
  v36 = v95;
  v94 = v27;
  v82 = v35;
  v83 = v5;
  while (v34)
  {
    v95 = (v34 - 1) & v34;
    v39 = __clz(__rbit64(v34)) | (v30 << 6);
LABEL_20:
    v44 = v85;
    sub_24B1E62E4(*(a1 + 48) + *(v86 + 72) * v39, v85, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v45 = a1;
    v46 = v87;
    sub_24B1E62E4(*(a1 + 56) + *(v36 + 72) * v39, v87, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE260);
    v48 = *(v47 + 48);
    v49 = v44;
    v27 = v94;
    sub_24B1E634C(v49, v94, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    sub_24B1E634C(v46, &v27[v48], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    (*(*(v47 - 8) + 56))(v27, 0, 1, v47);
LABEL_21:
    v50 = v91;
    sub_24B0391CC(v27, v91, &qword_27EFCE258);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE260);
    v37 = 1;
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      return v37;
    }

    v52 = *(v51 + 48);
    v53 = v90;
    sub_24B1E634C(v50, v90, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v54 = v50 + v52;
    v55 = v93;
    sub_24B1E634C(v54, v93, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    v56 = sub_24B18176C(v53);
    v58 = v57;
    sub_24B1E63B4(v53, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    if ((v58 & 1) == 0)
    {
      v78 = v55;
      goto LABEL_49;
    }

    v59 = v36;
    v60 = *(a2 + 56) + *(v36 + 72) * v56;
    v61 = v92;
    sub_24B1E62E4(v60, v92, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    v62 = *(v89 + 48);
    sub_24B1E62E4(v61, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    sub_24B1E62E4(v55, &v7[v62], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v63 = v84;
      sub_24B1E62E4(v7, v84, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_24B1E63B4(v92, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
        sub_24B1E63B4(v93, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
        sub_24B1E63B4(v63, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
LABEL_48:
        sub_24AFF8258(v7, &qword_27EFCE250);
        return 0;
      }

      v38 = v83;
      sub_24B1E634C(&v7[v62], v83, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0() & 1) == 0)
      {
        goto LABEL_44;
      }

      v64 = v96[5];
      v65 = (v63 + v64);
      v66 = *(v63 + v64 + 8);
      v67 = (v38 + v64);
      v68 = v67[1];
      if (v66)
      {
        if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_24B2D6004() & 1) == 0)
        {
LABEL_44:
          sub_24B1E63B4(v92, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
          sub_24B1E63B4(v93, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
          v71 = v63;
LABEL_45:
          sub_24B1E63B4(v38, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
          sub_24B1E63B4(v71, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
          v78 = v80;
LABEL_49:
          sub_24B1E63B4(v78, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
          return 0;
        }
      }

      else if (v68)
      {
        goto LABEL_44;
      }

      if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO08FollowerI0O2eeoiySbAG_AGtFZ_0(v63 + v96[6], v38 + v96[6]) & 1) == 0)
      {
        goto LABEL_44;
      }

      v36 = v59;
      v71 = v63;
      MyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO09FollowingI0O2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO09FollowingI0O2eeoiySbAG_AGtFZ_0(v63 + v96[7], v38 + v96[7]);
      sub_24B1E63B4(v92, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      sub_24B1E63B4(v93, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if ((MyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO09FollowingI0O2eeoiySbAG_AGtFZ_0 & 1) == 0)
      {
        goto LABEL_45;
      }

      v73 = v96[8];
      v74 = (v63 + v73);
      v75 = *(v63 + v73 + 8);
      v76 = (v38 + v73);
      v77 = *(v38 + v73 + 8);
      if (v75)
      {
        v38 = v83;
        if ((v77 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (*v74 != *v76)
        {
          v77 = 1;
        }

        v38 = v83;
        if (v77)
        {
          goto LABEL_45;
        }
      }

      sub_24B1E63B4(v38, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      sub_24B1E63B4(v63, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      a1 = v45;
      v7 = v80;
    }

    else
    {
      sub_24B1E63B4(v61, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      sub_24B1E63B4(v55, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v69 = v81;
      sub_24B1E62E4(v7, v81, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_48;
      }

      a1 = v45;
      v36 = v59;
      if (*v69 != v7[v62])
      {
        v78 = v7;
        goto LABEL_49;
      }
    }

    result = sub_24B1E63B4(v7, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    v27 = v94;
    v34 = v95;
    v35 = v82;
  }

  if (v35 <= v30 + 1)
  {
    v40 = v30 + 1;
  }

  else
  {
    v40 = v35;
  }

  v41 = v40 - 1;
  while (1)
  {
    v42 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v42 >= v35)
    {
      v45 = a1;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE260);
      (*(*(v70 - 8) + 56))(v27, 1, 1, v70);
      v95 = 0;
      v30 = v41;
      goto LABEL_21;
    }

    v43 = *(v79 + 8 * v42);
    ++v30;
    if (v43)
    {
      v95 = (v43 - 1) & v43;
      v39 = __clz(__rbit64(v43)) | (v42 << 6);
      v30 = v42;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ItemsLocationsProvider()
{
  result = qword_27EFCE200;
  if (!qword_27EFCE200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1E5698(uint64_t a1)
{
  v4 = *(sub_24B2D1DA4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B1DC310(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24B1E57A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B1D923C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24B1E586C(uint64_t a1)
{
  *(a1 + 8) = sub_24B1E6414(&qword_27EFCE1D8, type metadata accessor for ItemsLocationsProvider);
  result = sub_24B1E6414(&qword_27EFCE1E0, type metadata accessor for ItemsLocationsProvider);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24B1E593C()
{
  result = qword_27EFCE1E8;
  if (!qword_27EFCE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCE1F0);
    sub_24B1E6414(&qword_27EFCE1F8, type metadata accessor for ItemsLocationsProvider.LocationState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE1E8);
  }

  return result;
}

void sub_24B1E59F8()
{
  sub_24B1E5E30();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ItemsLocationsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 344) + **(*v2 + 344));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFD370;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ItemsLocationsProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 352) + **(*v2 + 352));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return v8(a1, a2);
}

void sub_24B1E5E30()
{
  if (!qword_27EFCE210)
  {
    type metadata accessor for ItemsLocationsProvider.Subscription(255);
    sub_24B1E6414(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
    v0 = type metadata accessor for SubscriptionManagerStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCE210);
    }
  }
}

uint64_t sub_24B1E5EC4(uint64_t a1)
{
  v4 = *(sub_24B2D1DA4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B1DB9E4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24B1E5FD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B1D7F08(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t objectdestroyTm_26()
{
  v1 = sub_24B2D1DA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B1E61A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFD370;

  return sub_24B18E044(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_24B1E62E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1E634C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1E63B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B1E6414(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 ItemsLocationsProvider.Dependencies.init<A>(fetchLocations:observeLocationsChanges:addSubscriptions:removeSubscriptions:loadingStateResetDuration:loadingStateFallbackDuration:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  v20 = swift_allocObject();
  v20[2] = a13;
  v20[3] = a14;
  v20[4] = a3;
  v20[5] = a4;
  a9[1].n128_u64[0] = &unk_24B2F0460;
  a9[1].n128_u64[1] = v20;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t sub_24B1E6528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B183450(a1, v7, v6, v4, v5);
}

uint64_t sub_24B1E65F4(uint64_t *a1, int a2)
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

uint64_t sub_24B1E663C(uint64_t result, int a2, int a3)
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

uint64_t ItemsLocationsProvider.Subscription.init(identifier:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D1DA4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ItemsLocationsProvider.Subscription.Priority.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24B2D5E14();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24B1E6798()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B1E67FC()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B1E6848@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24B2D5E14();

  *a1 = v2 != 0;
  return result;
}

unint64_t ItemsLocationsProvider.Subscription.debugDescription.getter()
{
  sub_24B2D5C34();

  v1 = MEMORY[0x24C238570](v0);
  MEMORY[0x24C23BC10](v1);

  MEMORY[0x24C23BC10](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t ItemsLocationsProvider.Subscription.hash(into:)()
{
  sub_24B2D1DA4();
  sub_24B1E7960(&qword_27EFCC630, MEMORY[0x277D08E20]);
  sub_24B2D5254();

  return sub_24B2D5404();
}

uint64_t ItemsLocationsProvider.Subscription.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D1DA4();
  sub_24B1E7960(&qword_27EFCC630, MEMORY[0x277D08E20]);
  sub_24B2D5254();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B1E6A84()
{
  sub_24B2D60E4();
  sub_24B2D1DA4();
  sub_24B1E7960(&qword_27EFCC630, MEMORY[0x277D08E20]);
  sub_24B2D5254();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B1E6B24()
{
  sub_24B2D1DA4();
  sub_24B1E7960(&qword_27EFCC630, MEMORY[0x277D08E20]);
  sub_24B2D5254();

  return sub_24B2D5404();
}

uint64_t sub_24B1E6BC0()
{
  sub_24B2D60E4();
  sub_24B2D1DA4();
  sub_24B1E7960(&qword_27EFCC630, MEMORY[0x277D08E20]);
  sub_24B2D5254();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B1E6DE0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ItemsLocationsProvider.LocationState.Request.timestamp.setter(uint64_t a1)
{
  v3 = sub_24B2D24A4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ItemsLocationsProvider.LocationState.Result.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ItemsLocationsProvider.LocationState.Result(0) + 20);

  return sub_24B1418C4(v3, a1);
}

uint64_t ItemsLocationsProvider.LocationState.Result.location.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ItemsLocationsProvider.LocationState.Result(0) + 20);

  return sub_24B1E71FC(a1, v3);
}

uint64_t _s12FindMyUICore22ItemsLocationsProviderC12SubscriptionV2eeoiySbAE_AEtFZ_0()
{
  sub_24B2D1DA4();
  sub_24B1E7960(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
  sub_24B2D54E4();
  sub_24B2D54E4();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_24B2D6004();
  }

  return v1 & 1;
}

uint64_t sub_24B1E710C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1E7194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1E71FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s12FindMyUICore22ItemsLocationsProviderC13LocationStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for ItemsLocationsProvider.LocationState(0) + 20);
  v15 = (a1 + v14);
  v16 = a2 + v14;
  if (*v15 != *(a2 + v14))
  {
    return 0;
  }

  v17 = *(type metadata accessor for ItemsLocationsProvider.LocationState.Result(0) + 20);
  v18 = *(v11 + 48);
  sub_24B1418C4(&v15[v17], v13);
  sub_24B1418C4(v16 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFCB288);
      return 1;
    }

    goto LABEL_8;
  }

  sub_24B1418C4(v13, v10);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_24AFF8258(v13, &qword_27EFCC660);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_24B1E7960(&qword_27EFCC670, MEMORY[0x277D08CD0]);
  v21 = sub_24B2D52A4();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_24AFF8258(v13, &qword_27EFCB288);
  return (v21 & 1) != 0;
}

BOOL _s12FindMyUICore22ItemsLocationsProviderC13LocationStateV6ResultV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_24B2D1944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = *(type metadata accessor for ItemsLocationsProvider.LocationState.Result(0) + 20);
  v15 = *(v11 + 48);
  sub_24B1418C4(&a1[v14], v13);
  sub_24B1418C4(&a2[v14], &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFCB288);
      return 1;
    }

    goto LABEL_7;
  }

  sub_24B1418C4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_24AFF8258(v13, &qword_27EFCC660);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_24B1E7960(&qword_27EFCC670, MEMORY[0x277D08CD0]);
  v18 = sub_24B2D52A4();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_24AFF8258(v13, &qword_27EFCB288);
  return (v18 & 1) != 0;
}

unint64_t sub_24B1E78C4()
{
  result = qword_27EFCE2E8;
  if (!qword_27EFCE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE2E8);
  }

  return result;
}

uint64_t sub_24B1E7960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B1E79F0()
{
  result = sub_24B2D1DA4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B1E7A9C()
{
  result = type metadata accessor for ItemsLocationsProvider.LocationState.Request(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ItemsLocationsProvider.LocationState.Result(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void sub_24B1E7C54()
{
  sub_24B1E7CD0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B1E7CD0()
{
  if (!qword_27EFCC648)
  {
    sub_24B2D1944();
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCC648);
    }
  }
}

uint64_t sub_24B1E7D44(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24B008890(a1, &v10 - v5, &qword_27EFCC7E8);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1E7EE4(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24B1E7E1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v1 + v3, a1, &qword_27EFCC7E8);
}

uint64_t sub_24B1E7E84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1E7EE4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24B1E7EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1E7FB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
}

uint64_t sub_24B1E8034(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
}

uint64_t sub_24B1E80EC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v8 = v3[3];
  v7 = v3[4];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_24B1E8168(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v1 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = *(a1 + 3);
}

uint64_t PeopleProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  PeopleProvider.init(dependencies:)(a1);
  return v2;
}

_OWORD *PeopleProvider.init(dependencies:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  swift_defaultActor_initialize();
  v8 = v2 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E8);
  v10 = v9[9];
  v11 = MEMORY[0x277D84F90];
  *&v8[v10] = sub_24B1931A4(MEMORY[0x277D84F90]);
  *&v8[v9[10]] = MEMORY[0x277D84FA0];
  v8[v9[11]] = 0;
  sub_24B2D3174();
  v12 = v2 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  *(v12 + 3) = sub_24B1931CC(v11);
  v12[16] = 0;
  *(v12 + 4) = sub_24B1933E8(v11);
  *v12 = 0xD000000000000015;
  *(v12 + 1) = 0x800000024B2DCA00;
  v13 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_taskQueue;
  sub_24B2D12D4();
  v14 = sub_24B2D1294();
  v15 = *(*(v14 - 8) + 56);
  v16 = *a1;
  v21 = a1[1];
  v22 = v16;
  v20 = a1[2];
  v15(v7, 1, 1, v14);
  sub_24B2D24F4();
  *(v2 + v13) = sub_24B2D12B4();
  *(v2 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_valuePublisher) = 0;
  v17 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_loadingStateResetTaskBySubscription;
  *(v2 + v17) = sub_24B193614(v11);
  v18 = v21;
  v2[7] = v22;
  v2[8] = v18;
  v2[9] = v20;
  return v2;
}

uint64_t sub_24B1E8528()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[20] = swift_task_alloc();
  v2 = sub_24B2D3184();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1E8620, v0, 0);
}

uint64_t sub_24B1E8620()
{
  v29 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v0[18] = v11;
    v14 = sub_24B2D53C4();
    v16 = sub_24AFF321C(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v28);
    _os_log_impl(&dword_24AFD2000, v6, v7, "PeopleProvider%s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_valuePublisher;
  v0[24] = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_valuePublisher;
  if (*(v20 + v21))
  {

    sub_24B2D5764();

    v22 = v0[19];
  }

  else
  {
    v22 = v20;
  }

  *(v20 + v21) = 0;

  v23 = v22 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  swift_beginAccess();
  v24 = *(v23 + 16);
  *(v23 + 16) = 0;
  sub_24B1F4754(v24);
  swift_endAccess();
  v27 = (*(v22 + 128) + **(v22 + 128));
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_24B1E8974;

  return v27(v0 + 2);
}

uint64_t sub_24B1E8974()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_24B17DAFC;
  }

  else
  {
    v4 = sub_24B1E8AA0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B1E8AA0()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24B0C43AC(v0 + 16, v0 + 56);
  v5 = sub_24B1EF014(&qword_27EFCE350, type metadata accessor for PeopleProvider);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  sub_24B07F7D0((v0 + 56), (v6 + 4));
  v6[9] = v3;
  swift_retain_n();
  v7 = sub_24B00A9A4(0, 0, v2, &unk_24B2F0920, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  *(v3 + v1) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B1E8C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v5[13] = swift_task_alloc();
  v7 = sub_24B2D1794();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE390);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3A8);
  v5[20] = swift_task_alloc();
  v8 = sub_24B2D1574();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v9 = sub_24B2D24A4();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1E8E80, a5, 0);
}

uint64_t sub_24B1E8E80()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24B2D57B4();

  v6 = sub_24B1EF014(&qword_27EFCE350, type metadata accessor for PeopleProvider);
  v0[30] = v6;
  v7 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_24B1E907C;

  return MEMORY[0x282200310](v0 + 7, v7, v6);
}

uint64_t sub_24B1E907C()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_24B1E918C, v4, 0);
  }

  return result;
}

uint64_t sub_24B1E918C()
{
  v118 = v0;
  if (v0[7])
  {
    v102 = v0[7];
    sub_24B2D2494();
    v1 = MEMORY[0x277D84FA0];
    v0[8] = MEMORY[0x277D84FA0];
    v0[9] = v1;
    v2 = sub_24B194FF8(MEMORY[0x277D84F90]);
    v5 = v102;
    v6 = v2;
    v103 = *(v102 + 16);
    if (!v103)
    {

      v87 = MEMORY[0x277D84FA0];
      if (!*(MEMORY[0x277D84FA0] + 16))
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v7 = 0;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
LABEL_64:
        __break(1u);
        return MEMORY[0x282200310](v2, v3, v4);
      }

      v8 = v102 + 32 + 16 * v7;
      v2 = *v8;
      v9 = *(v8 + 8);
      v107 = v2;
      if (v9)
      {
        break;
      }

      v69 = *(v2 + 16);
      if (v69)
      {
        v104 = v7;
        v115 = v6;
        v70 = v0[22];
        v71 = v2 + ((*(v70 + 80) + 32) & ~*(v70 + 80));

        v113 = *(v70 + 72);
        v72 = *(v70 + 16);
        do
        {
          v74 = v0[25];
          v73 = v0[26];
          v75 = v0[21];
          v76 = v0[22];
          v72(v73, v71, v75);
          sub_24B1AF4EC(v74, v73);
          (*(v76 + 8))(v74, v75);
          v71 += v113;
          --v69;
        }

        while (v69);
LABEL_4:

LABEL_5:
        v6 = v115;
        v5 = v102;
        v7 = v104;
      }

LABEL_6:
      if (++v7 == v103)
      {

        v87 = v0[8];
        if (!*(v87 + 16))
        {
LABEL_57:

          goto LABEL_58;
        }

LABEL_55:
        v88 = v0[30];
        v90 = v0[12];
        v89 = v0[13];
        v91 = sub_24B2D56D4();
        (*(*(v91 - 8) + 56))(v89, 1, 1, v91);
        v92 = swift_allocObject();
        v92[2] = v90;
        v92[3] = v88;
        v92[4] = v90;
        v92[5] = v87;
        swift_retain_n();
        sub_24B00A9A4(0, 0, v89, &unk_24B2F0930, v92);

LABEL_58:
        v93 = v0[28];
        v94 = v0[29];
        v95 = v0[27];

        v97 = sub_24B1D27E8(v96);
        sub_24B25A824(v0[9], v97);
        v117 = v98;
        sub_24B1EB5EC(&v117, v6, v94);

        (*(v93 + 8))(v94, v95);
        v99 = v0[30];
        v100 = v0[12];
        __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
        v101 = swift_task_alloc();
        v0[31] = v101;
        *v101 = v0;
        v101[1] = sub_24B1E907C;
        v2 = (v0 + 7);
        v3 = v100;
        v4 = v99;

        return MEMORY[0x282200310](v2, v3, v4);
      }
    }

    if (v9 == 1)
    {
      v104 = v7;
      v10 = v2;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v6;
      v106 = v10 + 64;
      v12 = -1 << *(v10 + 32);
      if (-v12 < 64)
      {
        v13 = ~(-1 << -v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v10 + 64);
      v105 = (63 - v12) >> 6;

      for (i = 0; ; i = v111)
      {
        v115 = v6;
        v112 = isUniquelyReferenced_nonNull_native;
        if (!v14)
        {
          if (v105 <= i + 1)
          {
            v18 = i + 1;
          }

          else
          {
            v18 = v105;
          }

          while (1)
          {
            v17 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v17 >= v105)
            {
              v111 = v18 - 1;
              v67 = v0[19];
              v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE398);
              (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
              v14 = 0;
              goto LABEL_25;
            }

            v14 = *(v106 + 8 * v17);
            ++i;
            if (v14)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v17 = i;
LABEL_24:
        v19 = v0[21];
        v20 = v0[22];
        v21 = v0[19];
        v22 = v0[17];
        v23 = v0[15];
        v108 = v0[14];
        v110 = v0[25];
        v24 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v25 = v24 | (v17 << 6);
        (*(v20 + 16))(v110);
        (*(v23 + 16))(v22, *(v107 + 56) + *(v23 + 72) * v25, v108);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE398);
        v27 = *(v26 + 48);
        (*(v20 + 32))(v21, v110, v19);
        (*(v23 + 32))(v21 + v27, v22, v108);
        (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
        v111 = v17;
LABEL_25:
        v28 = v0[18];
        sub_24B0391CC(v0[19], v28, &qword_27EFCE390);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE398);
        if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
        {
          v30 = v0[20];
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEC0);
          (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
        }

        else
        {
          v32 = v0[21];
          v33 = v0[22];
          v34 = v0[20];
          v35 = v0[18];
          v36 = v0[15];
          v109 = v0[14];
          v37 = *(v29 + 48);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEC0);
          v39 = *(v38 + 48);
          (*(v33 + 16))(v34, v35, v32);
          (*(v36 + 16))(v34 + v39, v35 + v37, v109);
          sub_24AFF8258(v35, &qword_27EFCE398);
          (*(*(v38 - 8) + 56))(v34, 0, 1, v38);
        }

        v40 = v0[20];
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEC0);
        if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_5;
        }

        v42 = v0[24];
        v44 = v0[15];
        v43 = v0[16];
        v45 = v0[14];
        v46 = *(v41 + 48);
        v47 = *(v0[22] + 32);
        v47(v42, v40, v0[21]);
        v48 = v43;
        v49 = *(v44 + 32);
        v49(v48, v40 + v46, v45);
        v50 = sub_24B18146C(v42);
        v51 = *(v115 + 16);
        v52 = (v3 & 1) == 0;
        v2 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          goto LABEL_62;
        }

        v53 = v3;
        if (*(v115 + 24) >= v2)
        {
          if ((v112 & 1) == 0)
          {
            sub_24B1CEFE4();
          }
        }

        else
        {
          v54 = v0[24];
          sub_24B1C75CC(v2, v112 & 1);
          v55 = sub_24B18146C(v54);
          if ((v53 & 1) != (v56 & 1))
          {

            return sub_24B2D6054();
          }

          v50 = v55;
        }

        v57 = v0[24];
        v58 = v0[21];
        v59 = v0[22];
        v60 = v0[15];
        v116 = v0[16];
        v61 = v0[14];
        if (v53)
        {
          (*(v59 + 8))(v57, v58);
          v16 = v0[10];
          v2 = (*(v60 + 40))(*(v16 + 56) + *(v60 + 72) * v50, v116, v61);
          v6 = v16;
        }

        else
        {
          v62 = v0[10];
          v62[(v50 >> 6) + 8] |= 1 << v50;
          v47(v62[6] + *(v59 + 72) * v50, v57, v58);
          v63 = *(v60 + 72);
          v6 = v62;
          v2 = (v49)(v62[7] + v63 * v50, v116, v61);
          v64 = v62[2];
          v65 = __OFADD__(v64, 1);
          v66 = v64 + 1;
          if (v65)
          {
            goto LABEL_63;
          }

          v62[2] = v66;
        }

        isUniquelyReferenced_nonNull_native = 1;
      }
    }

    v77 = *(v2 + 16);
    if (!v77)
    {
      goto LABEL_6;
    }

    v104 = v7;
    v115 = v6;
    v78 = v0[22];
    v79 = v2 + ((*(v78 + 80) + 32) & ~*(v78 + 80));

    v114 = *(v78 + 72);
    v80 = *(v78 + 16);
    do
    {
      v81 = v0[25];
      v83 = v0[22];
      v82 = v0[23];
      v84 = v0[21];
      v80(v82, v79, v84);
      sub_24B1AF4EC(v81, v82);
      (*(v83 + 8))(v81, v84);
      v79 += v114;
      --v77;
    }

    while (v77);
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v85 = v0[1];

  return v85();
}

uint64_t sub_24B1E9C78()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_valuePublisher;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_valuePublisher))
  {

    sub_24B2D5764();
  }

  *(v0 + v1) = 0;

  v2 = v0 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  sub_24B1F4754(v3);
  return swift_endAccess();
}

uint64_t sub_24B1E9D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = sub_24B2D3184();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_24B2D24A4();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1E9E4C, a4, 0);
}

uint64_t sub_24B1E9E4C()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_24B2D2494();
  v3 = *(v1 + 112);
  v0[8] = v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_24B1E9F54;

  return v6(v0 + 8);
}

uint64_t sub_24B1E9F54(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  v5 = *(v4 + 80);
  if (v1)
  {
    v6 = sub_24B1EA140;
  }

  else
  {
    *(v4 + 160) = a1;
    v6 = sub_24B1EA080;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24B1EA080()
{
  v8 = v0;
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v7 = v0[11];
  sub_24B1EB5EC(&v7, v1, v2);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B1EA140()
{
  v27 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v6 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v6, v3);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 104);
    v25 = *(v0 + 112);
    v23 = *(v0 + 152);
    v24 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AFF321C(0xD00000000000001BLL, 0x800000024B2DC570, &v26);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleProvider: %s - fetchError - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1EA430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v77 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3A0);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v71 - v8;
  v9 = _s11PersonStateV6ResultOMa(0);
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for PeopleProvider.PersonState(0);
  v11 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v71 - v14;
  v15 = sub_24B2D1574();
  v84 = *(v15 - 8);
  v85 = v15;
  MEMORY[0x28223BE20](v15);
  v82 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24B2D3184();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s11PersonStateV7RequestVMa(0);
  MEMORY[0x28223BE20](v18 - 8);
  v89 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD58);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v71 - v24;
  v26 = sub_24B2D24A4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v75 = &v71 - v31;
  v88 = v3;
  v32 = v3 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  swift_beginAccess();
  v33 = *(v32 + 24);
  if (*(v33 + 16))
  {

    v34 = a2;
    v35 = sub_24B18146C(a2);
    if (v36)
    {
      sub_24B1EF244(*(v33 + 56) + *(v11 + 72) * v35, v25, type metadata accessor for PeopleProvider.PersonState);
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v34 = a2;
    v37 = 1;
  }

  v38 = v90;
  (*(v11 + 56))(v25, v37, 1, v90);
  if ((*(v11 + 48))(v25, 1, v38))
  {
    sub_24AFF8258(v25, &qword_27EFCCD58);
    v39 = v87;
    v40 = v26;
LABEL_14:
    sub_24B1EC0EC(v34);
    v55 = v84;
    v54 = v85;
    v56 = v82;
    (*(v84 + 16))(v82, v34, v85);
    (*(v27 + 16))(v89, v39, v40);
    v57 = v78;
    sub_24B008890(v77, v78, &qword_27EFCB018);
    v58 = sub_24B2D1794();
    v59 = *(v58 - 8);
    v60 = 1;
    v61 = (*(v59 + 48))(v57, 1, v58);
    v62 = v80;
    v63 = v76;
    if (v61 != 1)
    {
      (*(v59 + 32))(v76, v57, v58);
      swift_storeEnumTagMultiPayload();
      v60 = 0;
    }

    v64 = v79;
    (*(v79 + 56))(v63, v60, 1, v62);
    v65 = *(v64 + 48);
    if (v65(v63, 1, v62) == 1)
    {
      v66 = v83;
      *v83 = 0;
      swift_storeEnumTagMultiPayload();
      if (v65(v63, 1, v62) != 1)
      {
        sub_24AFF8258(v63, &qword_27EFCE3A0);
      }
    }

    else
    {
      v66 = v83;
      sub_24B1EF05C(v63, v83, _s11PersonStateV6ResultOMa);
    }

    v67 = v81;
    sub_24B1EF05C(v89, v81, _s11PersonStateV7RequestVMa);
    sub_24B1EF05C(v66, v67 + *(v90 + 20), _s11PersonStateV6ResultOMa);
    swift_beginAccess();
    v68 = *(v32 + 24);
    v69 = v86;
    sub_24B1EF05C(v67, v86, type metadata accessor for PeopleProvider.PersonState);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v68;
    sub_24B1CAA18(v69, v56, isUniquelyReferenced_nonNull_native);
    (*(v55 + 8))(v56, v54);
    *(v32 + 24) = v91;
    sub_24B1D54CC(v68);
    swift_endAccess();
  }

  sub_24B1EF244(v25, v22, _s11PersonStateV7RequestVMa);
  sub_24AFF8258(v25, &qword_27EFCCD58);
  v41 = *(v27 + 32);
  v42 = v22;
  v40 = v26;
  v41(v29, v42, v26);
  v43 = v75;
  v41(v75, v29, v26);
  v39 = v87;
  if ((sub_24B2D23C4() & 1) == 0)
  {
    (*(v27 + 8))(v43, v26);
    goto LABEL_14;
  }

  v44 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  v45 = v88;
  swift_beginAccess();
  v46 = v73;
  v47 = v72;
  v48 = v74;
  (*(v73 + 16))(v72, v45 + v44, v74);
  v49 = sub_24B2D3164();
  v50 = sub_24B2D5934();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v91 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2DC830, &v91);
    _os_log_impl(&dword_24AFD2000, v49, v50, "PeopleProvider: %s - Skipping due to older timestamp", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x24C23D530](v52, -1, -1);
    MEMORY[0x24C23D530](v51, -1, -1);
  }

  (*(v46 + 8))(v47, v48);
  return (*(v27 + 8))(v43, v40);
}

uint64_t sub_24B1EAE40(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24B2D1574();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = _s11PersonStateV6ResultOMa(0);
  MEMORY[0x28223BE20](v61);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v55 - v10;
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - v12;
  v13 = type metadata accessor for PeopleProvider.PersonState(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD58);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  v64 = a2;
  sub_24B1EC0EC(a2);
  v57 = a1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  v56 = v6;
  v26 = v3 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  swift_beginAccess();
  v27 = *(v26 + 24);
  if (!*(v27 + 16))
  {
LABEL_16:
    (*(v14 + 56))(v25, 1, 1, v13);
    sub_24AFF8258(v25, &qword_27EFCCD58);
    sub_24B2D2324();
    v19[*(v13 + 20)] = 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v44 = *(v26 + 24);
    sub_24B1EF05C(v19, v16, type metadata accessor for PeopleProvider.PersonState);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65[0] = v44;
    sub_24B1CAA18(v16, v64, isUniquelyReferenced_nonNull_native);
    *(v26 + 24) = v65[0];
    sub_24B1D54CC(v44);
    swift_endAccess();
  }

  v28 = sub_24B18146C(v64);
  if ((v29 & 1) == 0)
  {

    goto LABEL_16;
  }

  sub_24B1EF244(*(v27 + 56) + *(v14 + 72) * v28, v25, type metadata accessor for PeopleProvider.PersonState);

  (*(v14 + 56))(v25, 0, 1, v13);
  sub_24AFF8258(v25, &qword_27EFCCD58);
  v6 = v56;
LABEL_5:
  v30 = v3 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  swift_beginAccess();
  v31 = *(v30 + 24);
  if (*(v31 + 16))
  {

    v32 = sub_24B18146C(v64);
    v33 = v62;
    if (v34)
    {
      sub_24B1EF244(*(v31 + 56) + *(v14 + 72) * v32, v22, type metadata accessor for PeopleProvider.PersonState);
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v37 = v63;
    v36 = v6;
  }

  else
  {
    v36 = v6;
    v35 = 1;
    v33 = v62;
    v37 = v63;
  }

  (*(v14 + 56))(v22, v35, 1, v13);
  v38 = *(v14 + 48);
  if (v38(v22, 1, v13))
  {
    return sub_24AFF8258(v22, &qword_27EFCCD58);
  }

  v40 = v58;
  sub_24B1EF244(&v22[*(v13 + 20)], v58, _s11PersonStateV6ResultOMa);
  sub_24AFF8258(v22, &qword_27EFCCD58);
  v41 = v40;
  v42 = v60;
  sub_24B1EF05C(v41, v60, _s11PersonStateV6ResultOMa);
  v43 = v59;
  sub_24B1EF244(v42, v59, _s11PersonStateV6ResultOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B1EF2AC(v43, _s11PersonStateV6ResultOMa);
    return sub_24B1EF2AC(v42, _s11PersonStateV6ResultOMa);
  }

  else
  {
    (*(v37 + 16))(v33, v64, v36);
    v46 = sub_24B1E81FC();
    v47 = v37;
    v49 = v48;
    v66 = *(v48 + 24);

    v50 = sub_24B1D6C54(v65);
    v52 = v51;
    if (!v38(v51, 1, v13))
    {
      v54 = *(v13 + 20);
      sub_24B1EF2AC(&v52[v54], _s11PersonStateV6ResultOMa);
      v52[v54] = v57 & 1;
      swift_storeEnumTagMultiPayload();
    }

    (v50)(v65, 0);
    (*(v47 + 8))(v33, v36);
    v53 = *(v49 + 24);
    *(v49 + 24) = v66;
    sub_24B1D54CC(v53);

    (v46)(v67, 0);
    return sub_24B1EF2AC(v60, _s11PersonStateV6ResultOMa);
  }
}

uint64_t sub_24B1EB5EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v6 = sub_24B2D1794();
  v109 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v105 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE390);
  MEMORY[0x28223BE20](v8 - 8);
  v106 = (&v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v98 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  MEMORY[0x28223BE20](v13 - 8);
  v110 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v108 = &v98 - v16;
  v17 = sub_24B2D1574();
  v112 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v117 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = (&v98 - v20);
  MEMORY[0x28223BE20](v21);
  v107 = (&v98 - v22);
  v23 = sub_24B2D3184();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  swift_beginAccess();
  v29 = *(v24 + 16);
  v114 = v3;
  v104 = v23;
  v29(v26, v3 + v28, v23);

  v115 = v26;
  v30 = sub_24B2D3164();
  v31 = sub_24B2D5934();

  v32 = os_log_type_enabled(v30, v31);
  v111 = a2;
  v118 = v6;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v103 = v27;
    v34 = v33;
    v35 = swift_slowAlloc();
    v119[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_24AFF321C(0xD000000000000028, 0x800000024B2DC800, v119);
    *(v34 + 12) = 2080;
    sub_24B1EF014(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    v36 = sub_24B2D51F4();
    v38 = v30;
    v39 = sub_24AFF321C(v36, v37, v119);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_24AFD2000, v38, v31, "PeopleProvider: %s - updated: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v35, -1, -1);
    v40 = v34;
    v27 = v103;
    MEMORY[0x24C23D530](v40, -1, -1);
  }

  else
  {
  }

  result = (*(v24 + 8))(v115, v104);
  v115 = v17;
  v42 = v106;
  if (v27)
  {
    if (*(v27 + 16))
    {
      v43 = v27 + 56;
      v44 = 1 << *(v27 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v27 + 56);
      v47 = (v44 + 63) >> 6;
      v117 = (v112 + 16);
      v110 = (v112 + 32);
      v105 = (v109 + 16);
      v106 = (v109 + 56);
      v48 = (v112 + 8);

      v49 = 0;
      v50 = v118;
      while (v46)
      {
LABEL_16:
        v55 = v27;
        v56 = *(v27 + 48);
        v57 = v112;
        v58 = v107;
        v59 = v115;
        (*(v112 + 16))(v107, v56 + *(v112 + 72) * (__clz(__rbit64(v46)) | (v49 << 6)), v115);
        v60 = *(v57 + 32);
        v61 = v116;
        v60(v116, v58, v59);
        v62 = v111;
        if (*(v111 + 16))
        {
          v63 = sub_24B18146C(v61);
          if (v64)
          {
            v50 = v118;
            (*(v109 + 16))(v108, *(v62 + 56) + *(v109 + 72) * v63, v118);
            v51 = 0;
          }

          else
          {
            v51 = 1;
            v50 = v118;
          }
        }

        else
        {
          v51 = 1;
        }

        v46 &= v46 - 1;
        v52 = v108;
        (*v106)(v108, v51, 1, v50);
        v53 = v116;
        sub_24B1EA430(v52, v116, v113);
        sub_24AFF8258(v52, &qword_27EFCB018);
        result = (*v48)(v53, v115);
        v27 = v55;
      }

      while (1)
      {
        v54 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v54 >= v47)
        {

          v65 = v114 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
          goto LABEL_38;
        }

        v46 = *(v43 + 8 * v54);
        ++v49;
        if (v46)
        {
          v49 = v54;
          goto LABEL_16;
        }
      }

LABEL_41:
      __break(1u);
    }
  }

  else
  {
    v66 = v114 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
    swift_beginAccess();
    v67 = *(v66 + 24);
    *(v66 + 24) = MEMORY[0x277D84F98];
    v98 = v66;
    sub_24B1D54CC(v67);
    swift_endAccess();

    v68 = *(v111 + 64);
    v100 = v111 + 64;
    v69 = 1 << *(v111 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & v68;
    v99 = (v69 + 63) >> 6;
    v103 = v112 + 16;
    v102 = v109 + 16;
    v116 = (v112 + 32);
    v72 = (v109 + 32);
    v107 = (v112 + 8);
    v108 = (v109 + 56);

    v73 = 0;
    v104 = v12;
    v101 = v72;
    if (!v71)
    {
LABEL_25:
      if (v99 <= v73 + 1)
      {
        v75 = v73 + 1;
      }

      else
      {
        v75 = v99;
      }

      v76 = v75 - 1;
      while (1)
      {
        v74 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v74 >= v99)
        {
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE398);
          (*(*(v96 - 8) + 56))(v42, 1, 1, v96);
          v71 = 0;
          goto LABEL_33;
        }

        v71 = *(v100 + 8 * v74);
        ++v73;
        if (v71)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    while (1)
    {
      v74 = v73;
LABEL_32:
      v77 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v78 = v77 | (v74 << 6);
      v80 = v111;
      v79 = v112;
      v81 = v117;
      (*(v112 + 16))(v117, *(v111 + 48) + *(v112 + 72) * v78, v17);
      v82 = v17;
      v83 = v109;
      v84 = v105;
      v85 = v118;
      (*(v109 + 16))(v105, *(v80 + 56) + *(v109 + 72) * v78, v118);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE398);
      v87 = *(v86 + 48);
      v88 = *(v79 + 32);
      v42 = v106;
      v88(v106, v81, v82);
      v89 = v84;
      v72 = v101;
      (*(v83 + 32))(v42 + v87, v89, v85);
      (*(*(v86 - 8) + 56))(v42, 0, 1, v86);
      v76 = v74;
      v12 = v104;
LABEL_33:
      sub_24B0391CC(v42, v12, &qword_27EFCE390);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE398);
      if ((*(*(v90 - 8) + 48))(v12, 1, v90) == 1)
      {
        break;
      }

      v91 = *(v90 + 48);
      v92 = v117;
      v17 = v115;
      (*v116)(v117, v12, v115);
      v93 = &v12[v91];
      v94 = v110;
      v95 = v118;
      (*v72)(v110, v93, v118);
      (*v108)(v94, 0, 1, v95);
      sub_24B1EA430(v94, v92, v113);
      sub_24AFF8258(v94, &qword_27EFCB018);
      result = (*v107)(v92, v17);
      v73 = v76;
      if (!v71)
      {
        goto LABEL_25;
      }
    }

    v65 = v98;
LABEL_38:
    swift_beginAccess();
    v97 = *(v65 + 16);
    *(v65 + 16) = 1;
    sub_24B1F4754(v97);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24B1EC0EC(uint64_t a1)
{
  v3 = sub_24B2D1574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_loadingStateResetTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v7) + 16))
  {

    sub_24B18146C(a1);
    if (v8)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  (*(v4 + 16))(v6, a1, v3);
  swift_beginAccess();
  sub_24B18CA24(0, v6);
  return swift_endAccess();
}

uint64_t sub_24B1EC27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_24B2D3184();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1EC3A0, a6, 0);
}

uint64_t sub_24B1EC3A0()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B1EC460;
  v3 = v0[9];
  v2 = v0[10];

  return sub_24B09A030(v3, v2, 0, 0, 1);
}

uint64_t sub_24B1EC460()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_24B1EC660;
  }

  else
  {
    v7 = sub_24B1EC5E8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B1EC5E8()
{
  sub_24B1EAE40(0, *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1EC660()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5904();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 112);
    v25 = *(v0 + 120);
    v23 = *(v0 + 160);
    v24 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleProvider: loadingStateResetTaskBySubscription was cancelled - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1EC900(uint64_t a1, char a2)
{
  *(v3 + 272) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v4 = sub_24B2D1574();
  *(v3 + 136) = v4;
  v5 = *(v4 - 8);
  *(v3 + 144) = v5;
  *(v3 + 152) = *(v5 + 64);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = *(type metadata accessor for PeopleProvider.Subscription(0) - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1ECB30, v2, 0);
}

unint64_t sub_24B1ECB30()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 72);
  v112 = *(v0 + 80);
  v94 = v2 + 56;
  v3 = *(v0 + 144);
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_loadingStateResetTaskBySubscription;
  v93 = (63 - v5) >> 6;
  v8 = (v3 + 48);
  v101 = *(v0 + 144);
  v95 = (v3 + 8);

  v10 = 0;
  v97 = v2;
  v98 = v1;
  v99 = v7;
  v96 = v8;
  while (v6)
  {
LABEL_11:
    v15 = *(v0 + 240);
    v16 = *(v0 + 248);
    v17 = *(v0 + 136);
    v18 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_24B1EF244(*(v2 + 48) + *(v1 + 72) * (v18 | (v10 << 6)), v16, type metadata accessor for PeopleProvider.Subscription);
    sub_24B1EF05C(v16, v15, type metadata accessor for PeopleProvider.Subscription);
    result = (*v8)(v15, 1, v17);
    if (result != 1)
    {
      v20 = *(v0 + 176);
      v19 = *(v0 + 184);
      v103 = *(v0 + 168);
      v21 = *(v0 + 128);
      v22 = *(v0 + 136);
      v109 = *(v0 + 120);
      v104 = *(v0 + 80);
      v107 = *(v101 + 32);
      v23 = v107(v19, *(v0 + 240), v22);
      v24 = (*(v112 + 144))(v23);
      v105 = v25;
      v106 = v24;
      sub_24B1EAE40(1, v19);
      v26 = *(v101 + 16);
      v26(v20, v19, v22);
      v27 = sub_24B2D56D4();
      v102 = *(v27 - 8);
      (*(v102 + 56))(v21, 1, 1, v27);
      v100 = v26;
      v26(v103, v19, v22);
      v28 = sub_24B1EF014(&qword_27EFCE350, type metadata accessor for PeopleProvider);
      v29 = (*(v101 + 80) + 56) & ~*(v101 + 80);
      v30 = swift_allocObject();
      v30[2] = v104;
      v30[3] = v28;
      v30[4] = v106;
      v30[5] = v105;
      v30[6] = v104;
      v107(v30 + v29, v103, v22);
      sub_24B008890(v21, v109, &qword_27EFC8580);
      LODWORD(v29) = (*(v102 + 48))(v109, 1, v27);
      swift_retain_n();

      v31 = *(v0 + 120);
      if (v29 == 1)
      {
        sub_24AFF8258(*(v0 + 120), &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v102 + 8))(v31, v27);
      }

      v32 = v30[2];
      swift_unknownObjectRetain();

      if (v32)
      {
        swift_getObjectType();
        v33 = sub_24B2D5604();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      sub_24AFF8258(*(v0 + 128), &qword_27EFC8580);
      v36 = swift_allocObject();
      *(v36 + 16) = &unk_24B2F07A0;
      *(v36 + 24) = v30;
      if (v35 | v33)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v33;
        *(v0 + 40) = v35;
      }

      v37 = *(v0 + 176);
      v38 = swift_task_create();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v112 + v99);
      *(v112 + v99) = 0x8000000000000000;
      result = sub_24B18146C(v37);
      v42 = v40[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return result;
      }

      v46 = v41;
      if (v40[3] < v45)
      {
        v47 = *(v0 + 176);
        sub_24B1C5F44(v45, isUniquelyReferenced_nonNull_native);
        result = sub_24B18146C(v47);
        if ((v46 & 1) != (v48 & 1))
        {

          return sub_24B2D6054();
        }

LABEL_25:
        if (v46)
        {
          goto LABEL_4;
        }

        goto LABEL_26;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v54 = result;
      sub_24B1CE380();
      result = v54;
      if (v46)
      {
LABEL_4:
        *(v40[7] + 8 * result) = v38;

        goto LABEL_5;
      }

LABEL_26:
      v49 = *(v0 + 176);
      v50 = *(v0 + 136);
      v40[(result >> 6) + 8] |= 1 << result;
      v51 = result;
      result = v100(v40[6] + *(v101 + 72) * result, v49, v50);
      *(v40[7] + 8 * v51) = v38;
      v52 = v40[2];
      v44 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v44)
      {
        goto LABEL_65;
      }

      v40[2] = v53;
LABEL_5:
      v11 = *(v0 + 184);
      v12 = *(v0 + 136);
      v13 = *v95;
      (*v95)(*(v0 + 176), v12);
      *(v112 + v99) = v40;
      swift_endAccess();
      result = v13(v11, v12);
      v2 = v97;
      v1 = v98;
      v8 = v96;
    }
  }

  while (2)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v14 < v93)
    {
      v6 = *(v94 + 8 * v14);
      ++v10;
      if (v6)
      {
        v10 = v14;
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  v55 = *(v0 + 272);

  if ((v55 & 1) == 0)
  {
    v57 = *(v0 + 72);
    v58 = -1;
    v59 = -1 << *(v57 + 32);
    if (-v59 < 64)
    {
      v58 = ~(-1 << -v59);
    }

    v60 = v58 & *(v57 + 56);
    v61 = (63 - v59) >> 6;
    v111 = (*(v0 + 144) + 56);

    v62 = 0;
    v108 = MEMORY[0x277D84F90];
    v110 = v61;
    while (v60)
    {
      v63 = *(v0 + 72);
LABEL_43:
      v65 = *(v0 + 232);
      v66 = *(v0 + 216);
      v68 = *(v0 + 136);
      v67 = *(v0 + 144);
      sub_24B1EF244(*(v63 + 48) + *(*(v0 + 192) + 72) * (__clz(__rbit64(v60)) | (v62 << 6)), v65, type metadata accessor for PeopleProvider.Subscription);
      sub_24B1EF244(v65, v66, type metadata accessor for PeopleProvider.Subscription);
      v113 = *(v67 + 48);
      v69 = v113(v66, 1, v68);
      v70 = *(v0 + 216);
      if (v69 == 1)
      {
        (*v111)(*(v0 + 88), 1, 1, *(v0 + 136));
        sub_24B1EF2AC(v70, type metadata accessor for PeopleProvider.Subscription);
      }

      else
      {
        v71 = *(v0 + 136);
        v72 = *(v0 + 88);
        (*(*(v0 + 144) + 32))(v72, *(v0 + 216), v71);
        (*v111)(v72, 0, 1, v71);
      }

      v60 &= v60 - 1;
      v73 = *(v0 + 232);
      v74 = *(v0 + 136);
      v76 = *(v0 + 96);
      v75 = *(v0 + 104);
      sub_24B0391CC(*(v0 + 88), v76, &qword_27EFCE348);
      sub_24B0391CC(v76, v75, &qword_27EFCE348);
      sub_24B1EF2AC(v73, type metadata accessor for PeopleProvider.Subscription);
      if (v113(v75, 1, v74) == 1)
      {
        result = sub_24AFF8258(*(v0 + 104), &qword_27EFCE348);
        v61 = v110;
      }

      else
      {
        v77 = *(*(v0 + 144) + 32);
        v77(*(v0 + 160), *(v0 + 104), *(v0 + 136));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_24B006E38(0, *(v108 + 2) + 1, 1, v108);
        }

        v79 = *(v108 + 2);
        v78 = *(v108 + 3);
        if (v79 >= v78 >> 1)
        {
          v108 = sub_24B006E38(v78 > 1, v79 + 1, 1, v108);
        }

        v80 = *(v0 + 160);
        v81 = *(v0 + 136);
        v82 = *(v0 + 144);
        *(v108 + 2) = v79 + 1;
        result = v77(&v108[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v79], v80, v81);
        v61 = v110;
      }
    }

    while (1)
    {
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_63;
      }

      if (v64 >= v61)
      {
        v83 = *(v0 + 224);
        v84 = *(v0 + 136);
        v85 = *(v0 + 72);

        (*v111)(v83, 1, 1, v84);
        LOBYTE(v84) = sub_24B1268E4(v83, v85);
        sub_24B1EF2AC(v83, type metadata accessor for PeopleProvider.Subscription);
        if (v84)
        {

          v86 = 0;
        }

        else
        {
          v86 = sub_24B1D0FC4(v108);
        }

        v87 = *(v0 + 112);
        v88 = *(v0 + 80);
        v89 = sub_24B2D56D4();
        (*(*(v89 - 8) + 56))(v87, 1, 1, v89);
        v90 = sub_24B1EF014(&qword_27EFCE350, type metadata accessor for PeopleProvider);
        v91 = swift_allocObject();
        v91[2] = v88;
        v91[3] = v90;
        v91[4] = v88;
        v91[5] = v86;
        swift_retain_n();
        sub_24B00A9A4(0, 0, v87, &unk_24B2F07B0, v91);

        v92 = *(v0 + 8);

        return v92();
      }

      v63 = *(v0 + 72);
      v60 = *(v63 + 8 * v64 + 56);
      ++v62;
      if (v60)
      {
        v62 = v64;
        goto LABEL_43;
      }
    }
  }

  v56 = swift_task_alloc();
  *(v0 + 256) = v56;
  *v56 = v0;
  v56[1] = sub_24B1ED78C;

  return sub_24B1E8528();
}

uint64_t sub_24B1ED78C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_24B1EDE58;
  }

  else
  {
    v4 = sub_24B1ED8B8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B1ED8B8()
{
  v1 = v0[9];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;
  v41 = (v0[18] + 56);

  v7 = 0;
  v39 = MEMORY[0x277D84F90];
  v40 = v5;
  while (v4)
  {
    v8 = v0[9];
LABEL_10:
    v10 = v0[29];
    v11 = v0[27];
    v13 = v0[17];
    v12 = v0[18];
    sub_24B1EF244(*(v8 + 48) + *(v0[24] + 72) * (__clz(__rbit64(v4)) | (v7 << 6)), v10, type metadata accessor for PeopleProvider.Subscription);
    sub_24B1EF244(v10, v11, type metadata accessor for PeopleProvider.Subscription);
    v14 = *(v12 + 48);
    v15 = v14(v11, 1, v13);
    v16 = v0[27];
    v42 = v14;
    if (v15 == 1)
    {
      (*v41)(v0[11], 1, 1, v0[17]);
      sub_24B1EF2AC(v16, type metadata accessor for PeopleProvider.Subscription);
    }

    else
    {
      v17 = v0[17];
      v18 = v0[11];
      (*(v0[18] + 32))(v18, v16, v17);
      (*v41)(v18, 0, 1, v17);
    }

    v4 &= v4 - 1;
    v19 = v0[29];
    v20 = v0[17];
    v22 = v0[12];
    v21 = v0[13];
    sub_24B0391CC(v0[11], v22, &qword_27EFCE348);
    sub_24B0391CC(v22, v21, &qword_27EFCE348);
    sub_24B1EF2AC(v19, type metadata accessor for PeopleProvider.Subscription);
    if (v42(v21, 1, v20) == 1)
    {
      result = sub_24AFF8258(v0[13], &qword_27EFCE348);
      v5 = v40;
    }

    else
    {
      v23 = *(v0[18] + 32);
      v23(v0[20], v0[13], v0[17]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_24B006E38(0, *(v39 + 2) + 1, 1, v39);
      }

      v25 = *(v39 + 2);
      v24 = *(v39 + 3);
      if (v25 >= v24 >> 1)
      {
        v39 = sub_24B006E38(v24 > 1, v25 + 1, 1, v39);
      }

      v26 = v0[20];
      v27 = v0[17];
      v28 = v0[18];
      *(v39 + 2) = v25 + 1;
      result = v23(&v39[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25], v26, v27);
      v5 = v40;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v5)
    {
      break;
    }

    v8 = v0[9];
    v4 = *(v8 + 8 * v9 + 56);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v29 = v0[28];
  v30 = v0[17];
  v31 = v0[9];

  (*v41)(v29, 1, 1, v30);
  LOBYTE(v30) = sub_24B1268E4(v29, v31);
  sub_24B1EF2AC(v29, type metadata accessor for PeopleProvider.Subscription);
  if (v30)
  {

    v32 = 0;
  }

  else
  {
    v32 = sub_24B1D0FC4(v39);
  }

  v33 = v0[14];
  v34 = v0[10];
  v35 = sub_24B2D56D4();
  (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
  v36 = sub_24B1EF014(&qword_27EFCE350, type metadata accessor for PeopleProvider);
  v37 = swift_allocObject();
  v37[2] = v34;
  v37[3] = v36;
  v37[4] = v34;
  v37[5] = v32;
  swift_retain_n();
  sub_24B00A9A4(0, 0, v33, &unk_24B2F07B0, v37);

  v38 = v0[1];

  return v38();
}

uint64_t sub_24B1EDE58()
{
  v1 = v0[9];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v0[9];
LABEL_10:
    v10 = v0[25];
    v11 = v0[26];
    v12 = v0[17];
    v13 = v0[18];
    v14 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_24B1EF244(*(v8 + 48) + *(v0[24] + 72) * (v14 | (v7 << 6)), v11, type metadata accessor for PeopleProvider.Subscription);
    sub_24B1EF05C(v11, v10, type metadata accessor for PeopleProvider.Subscription);
    result = (*(v13 + 48))(v10, 1, v12);
    if (result != 1)
    {
      v15 = v0[21];
      v16 = v0[17];
      v17 = v0[18];
      (*(v17 + 32))(v15, v0[25], v16);
      sub_24B1EAE40(0, v15);
      result = (*(v17 + 8))(v15, v16);
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v5)
    {
      break;
    }

    v8 = v0[9];
    v4 = *(v8 + 8 * v9 + 56);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_24B1EE0F8(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_24B2D1574();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *(type metadata accessor for PeopleProvider.Subscription(0) - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1EE220, v2, 0);
}

uint64_t sub_24B1EE220()
{
  if (*(v0 + 80) == 1)
  {
    sub_24B1E9C78();
  }

  v20 = *(v0 + 56);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;
  v7 = (v1 + 48);
  v18 = (v1 + 8);
  v19 = (v1 + 32);

  v9 = 0;
  while (v5)
  {
LABEL_11:
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 32);
    v14 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_24B1EF244(*(v2 + 48) + *(v20 + 72) * (v14 | (v9 << 6)), v11, type metadata accessor for PeopleProvider.Subscription);
    sub_24B1EF05C(v11, v12, type metadata accessor for PeopleProvider.Subscription);
    result = (*v7)(v12, 1, v13);
    if (result != 1)
    {
      v15 = *(v0 + 48);
      v16 = *(v0 + 32);
      (*v19)(v15, *(v0 + 64), v16);
      sub_24B1EAE40(0, v15);
      result = (*v18)(v15, v16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t PeopleProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage, &qword_27EFCC7E8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PeopleProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage, &qword_27EFCC7E8);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B1EE5FC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B1EC900(a1, a2);
}

uint64_t sub_24B1EE6A0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1EE0F8(a1, a2);
}

uint64_t type metadata accessor for PeopleProvider()
{
  result = qword_27EFCE378;
  if (!qword_27EFCE378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1EE7F0(uint64_t a1)
{
  v4 = *(sub_24B2D1574() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B1EC27C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24B1EE8FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B1E9D2C(a1, v4, v5, v7, v6);
}

uint64_t sub_24B1EE9BC(uint64_t a1)
{
  *(a1 + 8) = sub_24B1EF014(&qword_27EFCE358, type metadata accessor for PeopleProvider);
  result = sub_24B1EF014(&qword_27EFCE360, type metadata accessor for PeopleProvider);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24B1EEA8C()
{
  result = qword_27EFCE368;
  if (!qword_27EFCE368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCCF20);
    sub_24B1EF014(&qword_27EFCE370, type metadata accessor for PeopleProvider.PersonState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE368);
  }

  return result;
}

void sub_24B1EEB48()
{
  sub_24B1EEF80();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PeopleProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 304) + **(*v2 + 304));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFD370;

  return v8(a1, a2);
}

uint64_t dispatch thunk of PeopleProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 312) + **(*v2 + 312));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return v8(a1, a2);
}

void sub_24B1EEF80()
{
  if (!qword_27EFCE388)
  {
    type metadata accessor for PeopleProvider.Subscription(255);
    sub_24B1EF014(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
    v0 = type metadata accessor for SubscriptionManagerStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCE388);
    }
  }
}

uint64_t sub_24B1EF014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B1EF05C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1EF0C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B1E8C20(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_24B1EF184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B1E9D2C(a1, v4, v5, v7, v6);
}

uint64_t sub_24B1EF244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1EF2AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PeopleProvider.Dependencies.init<A>(fetchPeople:observePeopleChanges:loadingStateResetDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  result = swift_allocObject();
  result[2] = a7;
  result[3] = a8;
  result[4] = a3;
  result[5] = a4;
  a9[2] = &unk_24B2F0940;
  a9[3] = result;
  a9[4] = a5;
  a9[5] = a6;
  return result;
}

uint64_t sub_24B1EF398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B183450(a1, v7, v6, v4, v5);
}

uint64_t sub_24B1EF474(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3B0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_24B1EF5E0;

  return v8(v5);
}

uint64_t sub_24B1EF5E0()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];
    v7[3] = v8;
    v7[4] = sub_24B039184(&qword_27EFCE3B8, &qword_27EFCE3B0);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v8);
  }

  v4 = v3[1];

  return v4();
}

uint64_t static PeopleProvider.Dependencies.liveDaemon()@<X0>(void *a1@<X8>)
{
  v2 = sub_24B2D2674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_24B2D3174();
  sub_24B2D2AE4();
  (*(v3 + 104))(v5, *MEMORY[0x277D09048], v2);
  v13 = sub_24B2D2954();
  (*(v3 + 8))(v5, v2);
  v14 = *(v7 + 32);
  v14(v9, v12, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v14((v16 + v15), v9, v6);
  *a1 = &unk_24B2F0990;
  a1[1] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_24B2F09A0;
  *(v17 + 24) = v13;
  a1[2] = &unk_24B2F09B0;
  a1[3] = v17;
  a1[4] = sub_24B1F0DA0;
  a1[5] = 0;
}

uint64_t sub_24B1EFA08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v3[2] = a3;
  v3[3] = v5;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24B1EFAB0;

  return MEMORY[0x28215F4B8](a3);
}

uint64_t sub_24B1EFAB0(uint64_t a1)
{
  v3 = *v2;
  v3[5] = a1;
  v3[6] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24B1EFBE4, 0, 0);
  }
}

uint64_t sub_24B1EFBE4()
{
  v14 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[5];

    v3 = sub_24B1F2320(v2, v1);
  }

  else
  {
    v3 = v0[5];
  }

  v4 = sub_24B2D3164();
  v5 = sub_24B2D5904();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0x6D6561446576696CLL, 0xEC00000029286E6FLL, v13);
    *(v6 + 12) = 2080;
    sub_24B2D1574();
    sub_24B2D1794();
    sub_24B1F24E0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    v8 = sub_24B2D51F4();
    v10 = sub_24AFF321C(v8, v9, v13);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "%s - result %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v11 = v0[1];

  return v11(v3);
}

uint64_t sub_24B1EFE08(uint64_t *a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B0384BC;

  return sub_24B1EFA08(a1, v6, v1 + v5);
}

uint64_t sub_24B1EFEE8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8918);
  v2 = swift_task_alloc();
  v1[4] = v2;
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_24B1EFFCC;

  return MEMORY[0x28215FAF0](v2, 0);
}

uint64_t sub_24B1EFFCC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24B1F01CC;
  }

  else
  {
    v2 = sub_24B1F00E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B1F00E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3C0);
  sub_24B039184(&qword_27EFC8940, &qword_27EFC8918);
  sub_24B2D5D84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1F01CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1F0230(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFD370;

  return sub_24B1EFEE8(a1);
}

uint64_t sub_24B1F02CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D1574();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348) - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_24B2D28E4();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_24B2D2884();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = sub_24B2D2744();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F0570, 0, 0);
}

uint64_t sub_24B1F0570()
{
  v3 = v0[25];
  v1 = v0[26];
  v2 = v0 + 25;
  v5 = v0 + 24;
  v4 = v0[24];
  (*(v3 + 16))(v1, v0[3], v4);
  v6 = (*(v3 + 88))(v1, v4);
  if (v6 == *MEMORY[0x277D090C0])
  {
    v8 = v0 + 23;
    v7 = v0[23];
    v9 = v0[26];
    v10 = v0[19];
    v11 = v0[20];
    v13 = v0[17];
    v12 = v0[18];
    v66 = v0[16];
    v69 = v0[15];
    v14 = v0[9];
    v15 = v0[5];
    v72 = v0[14];
    v75 = v0[4];
    (*(v0[25] + 96))(v9, v0[24]);
    (*(v11 + 32))(v7, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3C8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24B2DE430;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3D0);
    v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v18 = swift_allocObject() + v17;
    sub_24B2D2864();
    sub_24B2D2894();
    (*(v13 + 8))(v12, v66);
    sub_24B1F0E6C(v18, v69);
    sub_24B1F0EDC(v69, v72);
    v19 = (*(v15 + 48))(v72, 1, v75);
    v20 = v0[14];
    if (v19 != 1)
    {
      v21 = v16;
      v22 = *(v0[5] + 32);
      v22(v0[8], v0[14], v0[4]);
      v23 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_24B006E38(0, *(v23 + 2) + 1, 1, v23);
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v23 = sub_24B006E38(v24 > 1, v25 + 1, 1, v23);
      }

      v27 = v0[8];
LABEL_19:
      v52 = v0[4];
      v53 = v0[5];
      *(v23 + 2) = v26;
      v22(&v23[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v25], v27, v52);
      v16 = v21;
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (v6 == *MEMORY[0x277D090C8])
  {
    v8 = v0 + 21;
    v28 = v0[21];
    v29 = v0[26];
    v30 = v0[19];
    v31 = v0[20];
    v33 = v0[17];
    v32 = v0[18];
    v67 = v0[16];
    v70 = v0[11];
    v73 = v0[10];
    v34 = v0[9];
    v35 = v0[5];
    v76 = v0[4];
    (*(v0[25] + 96))(v29, v0[24]);
    (*(v31 + 32))(v28, v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3C8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24B2DE430;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3D0);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v18 = swift_allocObject() + v36;
    sub_24B2D2864();
    sub_24B2D2894();
    (*(v33 + 8))(v32, v67);
    sub_24B1F0E6C(v18, v70);
    sub_24B1F0EDC(v70, v73);
    v37 = (*(v35 + 48))(v73, 1, v76);
    v20 = v0[10];
    if (v37 != 1)
    {
      v21 = v16;
      v22 = *(v0[5] + 32);
      v22(v0[6], v0[10], v0[4]);
      v23 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_24B006E38(0, *(v23 + 2) + 1, 1, v23);
      }

      v25 = *(v23 + 2);
      v51 = *(v23 + 3);
      v26 = v25 + 1;
      if (v25 >= v51 >> 1)
      {
        v23 = sub_24B006E38(v51 > 1, v25 + 1, 1, v23);
      }

      v27 = v0[6];
      goto LABEL_19;
    }

LABEL_10:
    sub_24AFF8258(v20, &qword_27EFCE348);
    v23 = MEMORY[0x277D84F90];
LABEL_20:
    v54 = *v8;
    swift_setDeallocating();
    sub_24AFF8258(v18, &qword_27EFCE348);
    swift_deallocClassInstance();
    v55 = v54;
    *(v16 + 32) = v23;
    *(v16 + 40) = 0;
    v2 = v0 + 20;
    v5 = v0 + 19;
    goto LABEL_21;
  }

  v38 = v0[26];
  if (v6 == *MEMORY[0x277D090D0])
  {
    v8 = v0 + 22;
    v39 = v0[22];
    v40 = v0[24];
    v41 = v0[19];
    v42 = v0[20];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[13];
    v68 = v0[16];
    v71 = v0[12];
    v46 = v0[9];
    v47 = v0[5];
    v74 = v0[4];
    v48 = *(v0[25] + 96);
    v65 = v0;
    v49 = v0[26];
    v48(v38, v40);
    (*(v42 + 32))(v39, v49, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3C8);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_24B2DE430;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE3D0);
    v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v18 = swift_allocObject() + v50;
    sub_24B2D2864();
    sub_24B2D2894();
    (*(v43 + 8))(v44, v68);
    sub_24B1F0E6C(v18, v45);
    sub_24B1F0EDC(v45, v71);
    if ((*(v47 + 48))(v71, 1, v74) == 1)
    {
      sub_24AFF8258(*(v8 - 10), &qword_27EFCE348);
      v23 = MEMORY[0x277D84F90];
      v16 = v77;
      v0 = v65;
    }

    else
    {
      v0 = v65;
      v59 = *(v65[5] + 32);
      v59(v65[7], *(v8 - 10), v65[4]);
      v23 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_24B006E38(0, *(v23 + 2) + 1, 1, v23);
      }

      v61 = *(v23 + 2);
      v60 = *(v23 + 3);
      if (v61 >= v60 >> 1)
      {
        v23 = sub_24B006E38(v60 > 1, v61 + 1, 1, v23);
      }

      v62 = v65[7];
      v63 = v65[4];
      v64 = v65[5];
      *(v23 + 2) = v61 + 1;
      v59(&v23[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v61], v62, v63);
      v16 = v77;
    }

    goto LABEL_20;
  }

  v16 = MEMORY[0x277D84F90];
  v55 = v0[26];
LABEL_21:
  v56 = v0[2];
  (*(*v2 + 8))(v55, *v5);
  *v56 = v16;

  v57 = v0[1];

  return v57();
}

uint64_t sub_24B1F0DB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1EF474(a1, v4);
}

uint64_t sub_24B1F0E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1F0EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_24B1F0F4C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_24B1F1D88(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_24B1F1024(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v63 = sub_24B2D1704();
  v61 = *(v63 - 8);
  v8 = MEMORY[0x28223BE20](v63);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE18);
  result = sub_24B2D5DE4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v50 = v61 + 16;
  v51 = result;
  v62 = v61 + 32;
  v16 = result + 64;
  v52 = a1;
  v48 = v10;
  v49 = a2;
  v47 = a4;
  v17 = v63;
  while (v14)
  {
    v60 = a3;
    v18 = __clz(__rbit64(v14));
    v54 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v23 = v61;
    v59 = *(v61 + 72);
    v24 = v53;
    (*(v61 + 16))(v53, v22 + v59 * v21, v17);
    v25 = a4[7] + 32 * v21;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v30 = v48;
    v55 = *(v23 + 32);
    v55(v48, v24, v17);
    v13 = v51;
    v57 = v28;
    v58 = v27;
    v31 = v27;
    v32 = v26;
    v56 = v29;
    sub_24B034224(v31, v26, v28);
    sub_24B1F24E0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    v33 = v30;
    result = sub_24B2D5244();
    v34 = -1 << *(v13 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v16 + 8 * (v35 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v34) >> 6;
      a1 = v52;
      a2 = v49;
      v38 = v60;
      while (++v36 != v40 || (v39 & 1) == 0)
      {
        v41 = v36 == v40;
        if (v36 == v40)
        {
          v36 = 0;
        }

        v39 |= v41;
        v42 = *(v16 + 8 * v36);
        if (v42 != -1)
        {
          v37 = __clz(__rbit64(~v42)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v16 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a1 = v52;
    a2 = v49;
    v38 = v60;
LABEL_26:
    *(v16 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    result = (v55)(*(v13 + 48) + v37 * v59, v33, v63);
    v43 = *(v13 + 56) + 32 * v37;
    v44 = v57;
    *v43 = v58;
    *(v43 + 8) = v32;
    *(v43 + 16) = v44;
    *(v43 + 24) = v56;
    ++*(v13 + 16);
    v45 = __OFSUB__(v38, 1);
    a3 = v38 - 1;
    if (v45)
    {
      goto LABEL_32;
    }

    a4 = v47;
    v14 = v54;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v60 = a3;
      v18 = __clz(__rbit64(v20));
      v54 = (v20 - 1) & v20;
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

uint64_t sub_24B1F1450(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t a7, uint64_t (*a8)(void))
{
  v62 = a8;
  v13 = a5(0);
  v54 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v61 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v53 = &v47 - v16;
  v17 = sub_24B2D1704();
  v58 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v60 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v52 = &v47 - v20;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  result = sub_24B2D5DE4();
  v22 = result;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v49 = v58 + 16;
  v50 = a2;
  v59 = v58 + 32;
  v25 = result + 64;
  v51 = a1;
  v48 = a4;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v55 = (v23 - 1) & v23;
LABEL_16:
    v29 = v26 | (v24 << 6);
    v30 = a4[6];
    v31 = v58;
    v57 = *(v58 + 72);
    v32 = v52;
    (*(v58 + 16))(v52, v30 + v57 * v29, v17);
    v33 = a4[7];
    v34 = v53;
    v56 = *(v54 + 72);
    v35 = v33 + v56 * v29;
    v36 = v62;
    sub_24B1F2528(v35, v53, v62);
    v37 = *(v31 + 32);
    v37(v60, v32, v17);
    sub_24B1F2590(v34, v61, v36);
    sub_24B1F24E0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    result = sub_24B2D5244();
    v38 = -1 << *(v22 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v25 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v50;
      a1 = v51;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v25 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v25 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v50;
    a1 = v51;
LABEL_26:
    *(v25 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v37((*(v22 + 48) + v41 * v57), v60, v17);
    result = sub_24B1F2590(v61, *(v22 + 56) + v41 * v56, v62);
    ++*(v22 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v48;
    v23 = v55;
    if (!a3)
    {
      return v22;
    }
  }

  v27 = v24;
  while (1)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v24 >= a2)
    {
      return v22;
    }

    v28 = a1[v24];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v55 = (v28 - 1) & v28;
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

uint64_t sub_24B1F18E4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = sub_24B2D1794();
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = v44 - v10;
  v11 = sub_24B2D1574();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v56 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v47 = v44 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEC8);
  result = sub_24B2D5DE4();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_24B1F24E0(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    result = sub_24B2D5244();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
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

void sub_24B1F1D88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v51 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE398);
  MEMORY[0x28223BE20](v64);
  v73 = &v49 - v6;
  v7 = sub_24B2D1794();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v67 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D1574();
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v49 - v16;
  v17 = 0;
  v65 = a3;
  v18 = *(a3 + 64);
  v52 = a3 + 64;
  v53 = 0;
  v19 = 1 << *(a3 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v71 = v14 + 16;
  v72 = a4;
  v59 = v8 + 16;
  v60 = v22;
  v23 = a4 + 56;
  v24 = v7;
  v61 = v14;
  v62 = v8;
  v56 = (v8 + 8);
  v57 = (v14 + 8);
  v63 = v7;
  v58 = v23;
  v55 = v12;
  while (v21)
  {
    v25 = __clz(__rbit64(v21));
    v66 = (v21 - 1) & v21;
LABEL_13:
    v28 = v25 | (v17 << 6);
    v29 = v65;
    v30 = v65[6];
    v70 = *(v61 + 72);
    v31 = *(v61 + 16);
    v31(v68, v30 + v70 * v28, v10, v15);
    v32 = v29[7];
    v33 = *(v62 + 72);
    v54 = v28;
    v34 = *(v62 + 16);
    v35 = v67;
    v34(v67, v32 + v33 * v28, v24);
    v36 = v24;
    v37 = v73;
    v69 = v31;
    (v31)(v73, v68, v10);
    v34((v37 + *(v64 + 48)), v35, v36);
    v38 = v57;
    v39 = v58;
    v40 = v55;
    if (*(v72 + 16) && (v41 = v72, sub_24B1F24E0(&qword_27EFCC6C0, MEMORY[0x277D08B50]), v42 = sub_24B2D5244(), v43 = -1 << *(v41 + 32), v44 = v42 & ~v43, ((*(v39 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0))
    {
      v45 = ~v43;
      while (1)
      {
        v69(v40, *(v72 + 48) + v44 * v70, v10);
        sub_24B1F24E0(&qword_27EFCC6C8, MEMORY[0x277D08B50]);
        v46 = sub_24B2D52A4();
        v47 = *v38;
        (*v38)(v40, v10);
        if (v46)
        {
          break;
        }

        v44 = (v44 + 1) & v45;
        if (((*(v39 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_24AFF8258(v73, &qword_27EFCE398);
      v24 = v63;
      (*v56)(v67, v63);
      v47(v68, v10);
      *(v51 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      v48 = __OFADD__(v53++, 1);
      v22 = v60;
      v21 = v66;
      if (v48)
      {
        __break(1u);
LABEL_22:
        sub_24B1F18E4(v51, v50, v53, v65);
        return;
      }
    }

    else
    {
LABEL_5:
      sub_24AFF8258(v73, &qword_27EFCE398);
      v24 = v63;
      (*v56)(v67, v63);
      (*v38)(v68, v10);
      v22 = v60;
      v21 = v66;
    }
  }

  v26 = v17;
  while (1)
  {
    v17 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      goto LABEL_22;
    }

    v27 = *(v52 + 8 * v17);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v66 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_24B1F2320(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_24B1F0F4C(v13, v7, a1, a2);
      MEMORY[0x24C23D530](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_24B1F1D88((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_24B1F24E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B1F2528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1F2590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PeopleProvider.Subscription.debugDescription.getter()
{
  v1 = type metadata accessor for PeopleProvider.Subscription(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_24B2D5C34();

  strcpy(v18, "Subscription(");
  HIWORD(v18[1]) = -4864;
  sub_24B1F3B00(v0, v3, type metadata accessor for PeopleProvider.Subscription);
  v10 = sub_24B2D1574();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v3, 1, v10) == 1)
  {
    (*(v11 + 56))(v6, 1, 1, v10);
    sub_24B1EF2AC(v3, type metadata accessor for PeopleProvider.Subscription);
  }

  else
  {
    (*(v11 + 32))(v6, v3, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
  }

  sub_24B1F0EDC(v6, v9);
  if (v12(v9, 1, v10) == 1)
  {
    sub_24AFF8258(v9, &qword_27EFCE348);
    v13 = 0xE300000000000000;
    v14 = 7105633;
  }

  else
  {
    v15 = MEMORY[0x24C237D40]();
    v13 = v16;
    (*(v11 + 8))(v9, v10);
    v14 = v15;
  }

  MEMORY[0x24C23BC10](v14, v13);

  MEMORY[0x24C23BC10](41, 0xE100000000000000);
  return v18[0];
}

uint64_t PeopleProvider.Subscription.hash(into:)()
{
  v1 = sub_24B2D1574();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PeopleProvider.Subscription(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1F3B00(v0, v7, type metadata accessor for PeopleProvider.Subscription);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x24C23C8D0](0);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x24C23C8D0](1);
  sub_24B1F3884(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t PeopleProvider.Subscription.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24B2D1574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeopleProvider.Subscription(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B1F3B00(v1, v8, type metadata accessor for PeopleProvider.Subscription);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](1);
    sub_24B1F3884(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B1F2CB4()
{
  v1 = sub_24B2D1574();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1F3B00(v0, v7, type metadata accessor for PeopleProvider.Subscription);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x24C23C8D0](0);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x24C23C8D0](1);
  sub_24B1F3884(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24B1F2E80()
{
  v1 = v0;
  v2 = sub_24B2D1574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B1F3B00(v1, v8, type metadata accessor for PeopleProvider.Subscription);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](1);
    sub_24B1F3884(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t static PeopleProvider.PersonState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for PeopleProvider.PersonState(0) + 20);

  return sub_24B1F3148(a1 + v4, a2 + v4);
}

uint64_t sub_24B1F30E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_24B1F3148(a1 + v6, a2 + v6);
}

uint64_t sub_24B1F3148(uint64_t a1, uint64_t a2)
{
  v24 = sub_24B2D1794();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11PersonStateV6ResultOMa(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE228);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v17 = *(v16 + 56);
  sub_24B1F3B00(a1, &v23 - v14, _s11PersonStateV6ResultOMa);
  sub_24B1F3B00(a2, &v15[v17], _s11PersonStateV6ResultOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B1F3B00(v15, v12, _s11PersonStateV6ResultOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = *v12 ^ v15[v17];
      sub_24B1EF2AC(v15, _s11PersonStateV6ResultOMa);
      v19 = v21 ^ 1;
      return v19 & 1;
    }

LABEL_7:
    sub_24AFF8258(v15, &qword_27EFCE228);
    v19 = 0;
    return v19 & 1;
  }

  sub_24B1F3B00(v15, v9, _s11PersonStateV6ResultOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v9, v24);
    goto LABEL_7;
  }

  v18 = v24;
  (*(v4 + 32))(v6, &v15[v17], v24);
  v19 = MEMORY[0x24C237E10](v9, v6);
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v9, v18);
  sub_24B1EF2AC(v15, _s11PersonStateV6ResultOMa);
  return v19 & 1;
}

uint64_t _s12FindMyUICore14PeopleProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PeopleProvider.Subscription(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v15 = *(v14 + 56);
  sub_24B1F3B00(a1, v21 - v12, type metadata accessor for PeopleProvider.Subscription);
  sub_24B1F3B00(a2, &v13[v15], type metadata accessor for PeopleProvider.Subscription);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_24B1F3B00(v13, v10, type metadata accessor for PeopleProvider.Subscription);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_24AFF8258(v13, &qword_27EFCC6D0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_24B1F3884(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
  sub_24B2D54E4();
  sub_24B2D54E4();
  if (v21[2] == v21[0] && v21[3] == v21[1])
  {
    v18 = *(v5 + 8);
    v18(v7, v4);

    v18(v10, v4);
  }

  else
  {
    v19 = sub_24B2D6004();
    v20 = *(v5 + 8);
    v20(v7, v4);

    v20(v10, v4);
    if ((v19 & 1) == 0)
    {
      sub_24B1EF2AC(v13, type metadata accessor for PeopleProvider.Subscription);
      return 0;
    }
  }

LABEL_12:
  sub_24B1EF2AC(v13, type metadata accessor for PeopleProvider.Subscription);
  return 1;
}

uint64_t sub_24B1F3884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B1F38F4()
{
  v0 = sub_24B2D1574();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24B1F39B4()
{
  result = _s11PersonStateV7RequestVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s11PersonStateV6ResultOMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B1F3A64()
{
  result = sub_24B1D4214();
  if (v1 <= 0x3F)
  {
    result = sub_24B2D1794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B1F3B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1F3B68(uint64_t a1)
{
  v3 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D1574();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = MEMORY[0x277D84F90];
  sub_24B007AC0(0, v9, 0);
  v10 = v42;
  v11 = a1 + 56;
  result = sub_24B2D5B54();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 64;
  v32 = v9;
  v33 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_24B1FBCE0(*(a1 + 48) + *(v39 + 72) * v14, v38, type metadata accessor for PeopleLocationsProvider.Subscription);
    (*v36)(v8, v19, v5);
    sub_24B1FBA64(v19);
    v42 = v10;
    v20 = v5;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_24B007AC0(v21 > 1, v22 + 1, 1);
      v10 = v42;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_24B040A60(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_24B040A60(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_24B1F3F1C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v17 = *(*(a3 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));

      v13 = a1(&v17);
      if (v3)
      {

        return v15 & 1;
      }

      v14 = v13;

      if (v14)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v15 = 1;
    return v15 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v15 = 0;
        return v15 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B1F4070(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v19 = a1;
  v6 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
LABEL_9:
    sub_24B1FBCE0(*(a3 + 48) + *(v18 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v8, type metadata accessor for PeopleLocationsProvider.Subscription);
    v16 = v19(v8);
    result = sub_24B1FBA64(v8);
    if (v3)
    {
      goto LABEL_13;
    }

    v11 &= v11 - 1;
    if (v16)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v11 = *(a3 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_24B1F42A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v55 = a2;
  v56 = a3;
  v6 = a1 & 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = v44 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v12 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = v44 - v16;
  if (*(v5 + 16) != v6)
  {
    v17 = v5[4];
    v18 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 64);
    v22 = *v5;
    v46 = v5[1];
    v47 = v22;
    v23 = (v19 + 63) >> 6;
    v44[2] = v12 + 16;
    v44[1] = v12 + 32;
    v44[0] = v15 + 7;
    v51 = v17;

    v24 = 0;
    v48 = v18;
    v49 = v12;
    v45 = v23;
    v50 = v9;
    while (v21)
    {
LABEL_11:
      v26 = v52;
      v27 = v54;
      (*(v12 + 16))(v52, *(v51 + 56) + *(v12 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v54);
      v28 = sub_24B2D56D4();
      v59 = *(v28 - 8);
      (*(v59 + 56))(v60, 1, 1, v28);
      v29 = *(v12 + 32);
      v30 = v53;
      v29(v53, v26, v27);
      v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v32 = (v44[0] + v31) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      v34 = v33 + v31;
      v35 = v59;
      v29(v34, v30, v27);
      v36 = (v33 + v32);
      v37 = v46;
      *v36 = v47;
      v36[1] = v37;
      v38 = v50;
      sub_24B008890(v60, v50, &qword_27EFC8580);
      LODWORD(v29) = (*(v35 + 48))(v38, 1, v28);

      if (v29 == 1)
      {
        sub_24AFF8258(v38, &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v35 + 8))(v38, v28);
      }

      v39 = *(v33 + 16);
      swift_unknownObjectRetain();

      v18 = v48;
      if (v39)
      {
        swift_getObjectType();
        v40 = sub_24B2D5604();
        v42 = v41;
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      v43 = swift_allocObject();
      *(v43 + 16) = v57;
      *(v43 + 24) = v33;
      if (v42 | v40)
      {
        v61 = 0;
        v62 = 0;
        v63 = v40;
        v64 = v42;
      }

      v12 = v49;
      v21 &= v21 - 1;
      swift_task_create();
      sub_24AFF8258(v60, &qword_27EFC8580);

      v23 = v45;
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        return;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v24 = v25;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24B1F47CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24B008890(a1, &v10 - v5, &qword_27EFCC7D0);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1F496C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24B1F48A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v1 + v3, a1, &qword_27EFCC7D0);
}

uint64_t sub_24B1F490C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1F496C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24B1F496C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1F4A3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
}

uint64_t sub_24B1F4ABC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
}

uint64_t sub_24B1F4B74@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v8 = v3[3];
  v7 = v3[4];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_24B1F4BF0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v1 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = *(a1 + 3);
}

uint64_t PeopleLocationsProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  PeopleLocationsProvider.init(dependencies:)(a1);
  return v2;
}

_OWORD *PeopleLocationsProvider.init(dependencies:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = a1[3];
  v26 = a1[2];
  v27 = v8;
  v9 = a1[5];
  v28 = a1[4];
  v29 = v9;
  v10 = a1[1];
  v24 = *a1;
  v25 = v10;
  swift_defaultActor_initialize();
  v11 = v1 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0);
  v13 = v12[9];
  v14 = MEMORY[0x277D84F90];
  *&v11[v13] = sub_24B1937FC(MEMORY[0x277D84F90]);
  *&v11[v12[10]] = MEMORY[0x277D84FA0];
  v11[v12[11]] = 0;
  sub_24B2D3174();
  v15 = v1 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  *(v15 + 3) = sub_24B193824(v14);
  v15[16] = 0;
  *(v15 + 4) = sub_24B1933E8(v14);
  *v15 = 0xD00000000000001ELL;
  *(v15 + 1) = 0x800000024B2DCAC0;
  v16 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_taskQueue;
  sub_24B2D12D4();
  v17 = sub_24B2D1294();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_24B2D24F4();
  *(v1 + v16) = sub_24B2D12B4();
  *(v1 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_valuePublisher) = 0;
  v18 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateFallbackTaskBySubscription;
  *(v2 + v18) = sub_24B193614(v14);
  v19 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateResetTaskBySubscription;
  *(v2 + v19) = sub_24B193614(v14);
  v20 = v25;
  v2[7] = v24;
  v2[8] = v20;
  v21 = v29;
  v2[11] = v28;
  v2[12] = v21;
  v22 = v27;
  v2[9] = v26;
  v2[10] = v22;
  return v2;
}

uint64_t sub_24B1F4FCC()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[20] = swift_task_alloc();
  v2 = sub_24B2D3184();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F50C4, v0, 0);
}

uint64_t sub_24B1F50C4()
{
  v29 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v0[18] = v11;
    v14 = sub_24B2D53C4();
    v16 = sub_24AFF321C(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v28);
    _os_log_impl(&dword_24AFD2000, v6, v7, "PeopleLocationsProvider%s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_valuePublisher;
  v0[24] = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_valuePublisher;
  if (*(v20 + v21))
  {

    sub_24B2D5764();

    v22 = v0[19];
  }

  else
  {
    v22 = v20;
  }

  *(v20 + v21) = 0;

  v23 = v22 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  v24 = *(v23 + 16);
  *(v23 + 16) = 0;
  sub_24B1F42A4(v24, &unk_285E54538, &unk_285E54560, &unk_24B2EF960, &unk_24B2F0DC0);
  swift_endAccess();
  v27 = (*(v22 + 128) + **(v22 + 128));
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_24B1F5450;

  return v27(v0 + 2);
}