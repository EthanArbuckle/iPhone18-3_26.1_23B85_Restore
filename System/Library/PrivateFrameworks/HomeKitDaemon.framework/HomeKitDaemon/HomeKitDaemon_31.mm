unint64_t sub_229834948()
{
  result = qword_27D881878;
  if (!qword_27D881878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881878);
  }

  return result;
}

uint64_t sub_22983499C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v7 = sub_22A4DBC7C();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DB7DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564F88(a1, &v41, &qword_27D880BF0, &unk_22A585580);
  if (v42)
  {
    return sub_229557188(&v41, a3);
  }

  v39 = a1;
  v40 = v3;
  sub_22953EAE4(a1, &qword_27D880BF0, &unk_22A585580);
  sub_22953EAE4(&v41, &qword_27D880BF0, &unk_22A585580);
  v17 = [a2 swiftExtensions];
  swift_unknownObjectRelease();
  v18 = sub_229834DF4();
  v37 = v19;
  v38 = v18;
  *&v41 = 91;
  *(&v41 + 1) = 0xE100000000000000;
  v20 = [a2 uuid];
  sub_22A4DB79C();

  sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
  v21 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v21);

  (*(v12 + 8))(v15, v11);
  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v36 = *(&v41 + 1);
  v22 = v41;
  sub_22A4DBC6C();
  v23 = [objc_allocWithZone(MEMORY[0x277D0F798]) init];
  v42 = v7;
  v43 = sub_229839520(&qword_281403838, MEMORY[0x277D0EFE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  v25 = v44;
  (*(v44 + 16))(boxed_opaque_existential_1, v10, v7);
  v26 = _s32DefaultAccessoryPresenceObserverCMa();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  v30 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerContinuation;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  (*(*(v31 - 8) + 56))(&v29[v30], 1, 1, v31);
  *&v29[OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask] = 0;
  v32 = &v29[OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer];
  *(v32 + 4) = 0;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v33 = v37;
  *(v29 + 14) = v38;
  *(v29 + 15) = v33;
  sub_229557188(&v41, (v29 + 128));
  *(v29 + 21) = v23;
  *(v29 + 22) = v22;
  *(v29 + 23) = v36;
  v34 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  (*(*(v35 - 8) + 56))(&v29[v34], 1, 2, v35);
  (*(v25 + 8))(v10, v7);
  a3[3] = v26;
  a3[4] = &off_283CDF900;
  *a3 = v29;
  return sub_22957F1C4(a3, v39);
}

uint64_t sub_229834DF4()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_msgSend(v0 dataSource)];
  swift_unknownObjectRelease();
  v7 = sub_22A4DD5AC();
  v8 = [v6 preferenceForKey_];

  v9 = [v8 numberValue];
  if (v9)
  {
    v10 = v9;
    v47 = v8;
    v11 = [v9 unsignedIntegerValue];
    v46 = 1000000000000000000 * v11;
    v48 = (v11 * 0xDE0B6B3A7640000uLL) >> 64;
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v12 = sub_22A4DD07C();
    __swift_project_value_buffer(v12, qword_27D8817F8);
    v13 = v0;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCCC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v2;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49 = v18;
      *v17 = 136315650;
      v19 = [v13 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v20 = sub_22A4DE5CC();
      v22 = v21;
      (v16[1])(v5, v1);
      v23 = sub_2295A3E30(v20, v22, &v49);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A5982C0, &v49);
      *(v17 + 22) = 2080;
      v24 = v46;
      v25 = sub_22A4DE82C();
      v27 = sub_2295A3E30(v25, v26, &v49);

      *(v17 + 24) = v27;
      v28 = v15;
      v29 = v24;
      _os_log_impl(&dword_229538000, v14, v28, "[%s] %s Using duration in preference: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    else
    {

      return v46;
    }
  }

  else
  {
    v47 = v2;
    v29 = sub_22A4DE88C();
    v48 = v30;
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v31 = sub_22A4DD07C();
    __swift_project_value_buffer(v31, qword_27D8817F8);
    v32 = v0;
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCCC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v36;
      *v35 = 136315650;
      v37 = [v32 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v38 = sub_22A4DE5CC();
      v40 = v39;
      (*(v47 + 1))(v5, v1);
      v41 = sub_2295A3E30(v38, v40, &v49);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A5982C0, &v49);
      *(v35 + 22) = 2080;
      v42 = sub_22A4DE82C();
      v44 = sub_2295A3E30(v42, v43, &v49);

      *(v35 + 24) = v44;
      _os_log_impl(&dword_229538000, v33, v34, "[%s] %s Using default duration: %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }
  }

  return v29;
}

uint64_t sub_229835414(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  v27 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v28 = &v27 - v6;
  v31 = sub_22A4DB7DC();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v30 = &v27 - v15;
  v17 = sub_22A4DD9DC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = [v2 uuid];
  sub_22A4DB79C();

  (*(v4 + 16))(v7, v32, v3);
  v19 = *(v8 + 32);
  v20 = v31;
  v19(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v31);
  v21 = v4;
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = (v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v8 + 80) + v23 + 8) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v21 + 32))(v25 + v22, v28, v27);
  *(v25 + v23) = v29;
  v19((v25 + v24), &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  return sub_22957F3C0(0, 0, v30, &unk_22A585600, v25);
}

uint64_t sub_229835750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_22A4DB74C();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = sub_22A4DB7DC();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v13 = _s13PresenceStateOMa();
  v6[20] = v13;
  v14 = *(v13 - 8);
  v6[21] = v14;
  v15 = *(v14 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA20, &unk_22A585610);
  v6[26] = v17;
  v18 = *(v17 - 8);
  v6[27] = v18;
  v19 = *(v18 + 64) + 15;
  v6[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229835990, 0, 0);
}

uint64_t sub_229835990()
{
  v1 = v0[28];
  v2 = v0[10];
  v3 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  sub_22A4DDA3C();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_229835A74;
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[26];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_229835A74()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229835B70, 0, 0);
}

uint64_t sub_229835B70()
{
  v75 = v0;
  v1 = v0[25];
  if ((*(v0[21] + 48))(v1, 1, v0[20]) == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[16];
    v5 = v0[12];
    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D8817F8);
    (*(v3 + 16))(v2, v5, v4);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[16];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v74 = v14;
      *v13 = 136315394;
      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v15 = sub_22A4DE5CC();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_2295A3E30(v15, v17, &v74);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD000000000000025, 0x800000022A598210, &v74);
      _os_log_impl(&dword_229538000, v7, v8, "[%s] %s RoomPresencePublisher stopped the stream", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    goto LABEL_21;
  }

  v19 = v0[11];
  sub_2296986F8(v1, v0[24]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
LABEL_20:
    v48 = v0[27];
    v47 = v0[28];
    v49 = v0[26];
    sub_229839118(v0[24], _s13PresenceStateOMa);
    (*(v48 + 8))(v47, v49);
LABEL_21:
    v50 = v0[28];
    v51 = v0[24];
    v52 = v0[25];
    v54 = v0[22];
    v53 = v0[23];
    v56 = v0[18];
    v55 = v0[19];
    v57 = v0[15];

    v58 = v0[1];

    return v58();
  }

  v21 = Strong;
  v22 = [Strong home];
  v0[31] = v22;
  if (!v22)
  {

    goto LABEL_20;
  }

  v23 = v22;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v25 = v0[23];
  v24 = v0[24];
  v26 = v0[19];
  v27 = v0[16];
  v28 = v0[17];
  v29 = v0[12];
  v30 = sub_22A4DD07C();
  __swift_project_value_buffer(v30, qword_27D8817F8);
  (*(v28 + 16))(v26, v29, v27);
  sub_229696298(v24, v25);
  v31 = sub_22A4DD05C();
  v32 = sub_22A4DDCCC();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[23];
  if (v33)
  {
    v72 = v32;
    log = v31;
    v35 = v0[19];
    v36 = v0[16];
    v37 = v0[17];
    v70 = v0[22];
    v38 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v0[9] = v71;
    *v38 = 136315650;
    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v39 = sub_22A4DE5CC();
    v41 = v40;
    (*(v37 + 8))(v35, v36);
    v42 = sub_2295A3E30(v39, v41, v0 + 9);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_2295A3E30(0xD000000000000025, 0x800000022A598210, v0 + 9);
    *(v38 + 22) = 2080;
    sub_229696298(v34, v70);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v44 = (*(*(v43 - 8) + 48))(v70, 2, v43);
    if (v44)
    {
      if (v44 == 1)
      {
        v45 = 0x6E776F6E6B6E75;
      }

      else
      {
        v45 = 0x646569707563636FLL;
      }

      if (v44 == 1)
      {
        v46 = 0xE700000000000000;
      }

      else
      {
        v46 = 0xE800000000000000;
      }
    }

    else
    {
      v63 = v0[14];
      v64 = v0[15];
      v65 = v0[13];
      (*(v63 + 32))(v64, v0[22], v65);
      v0[7] = 0;
      v0[8] = 0xE000000000000000;
      sub_22A4DE1FC();
      v66 = v0[8];

      v0[5] = 0xD000000000000016;
      v0[6] = 0x800000022A590330;
      sub_229839520(&qword_281403890, MEMORY[0x277CC9578]);
      v67 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v67);

      MEMORY[0x22AAD08C0](41, 0xE100000000000000);
      v45 = v0[5];
      v46 = v0[6];
      (*(v63 + 8))(v64, v65);
    }

    sub_229839118(v0[23], _s13PresenceStateOMa);
    v68 = sub_2295A3E30(v45, v46, v0 + 9);

    *(v38 + 24) = v68;
    _os_log_impl(&dword_229538000, log, v72, "[%s] %s %s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v71, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

  else
  {
    v60 = v0[19];
    v61 = v0[16];
    v62 = v0[17];

    sub_229839118(v34, _s13PresenceStateOMa);
    (*(v62 + 8))(v60, v61);
  }

  v69 = swift_task_alloc();
  v0[32] = v69;
  *v69 = v0;
  v69[1] = sub_22983638C;

  return sub_22981DFEC(v23, 5);
}

uint64_t sub_22983638C()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229836488, 0, 0);
}

uint64_t sub_229836488()
{
  if ((isInternalBuild() & 1) != 0 && (v1 = [*(v0 + 240) valenciaMatterEndpoint], (*(v0 + 264) = v1) != 0))
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D240, &qword_22A578188);
    v3 = sub_22A4DCD0C();
    *(v0 + 272) = v3;
    v4 = *(v3 - 8);
    v5 = v4;
    *(v0 + 280) = v4;
    v6 = *(v4 + 72);
    *(v0 + 304) = *(v5 + 80);
    v7 = swift_allocObject();
    *(v0 + 288) = v7;
    *(v7 + 16) = xmmword_22A576180;
    [v2 unsignedShortValue];
    sub_22A4DCCEC();
    v8 = swift_task_alloc();
    *(v0 + 296) = v8;
    *v8 = v0;
    v8[1] = sub_2298366B8;
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v11 = *(v0 + 192);

    return sub_229836914(v11, v9, v7);
  }

  else
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    sub_229839118(*(v0 + 192), _s13PresenceStateOMa);

    v15 = *(MEMORY[0x277D85798] + 4);
    v16 = swift_task_alloc();
    *(v0 + 232) = v16;
    *v16 = v0;
    v16[1] = sub_229835A74;
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);

    return MEMORY[0x2822003E8](v18, 0, 0, v19);
  }
}

uint64_t sub_2298366B8()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v5 = (*(*v0 + 304) + 32) & ~*(*v0 + 304);
  v7 = *v0;

  swift_setDeallocating();
  (*(v3 + 8))(v2 + v5, v4);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_229836834, 0, 0);
}

uint64_t sub_229836834()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 192);

  sub_229839118(v3, _s13PresenceStateOMa);
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_229835A74;
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_229836914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v4[33] = swift_getObjectType();
  v5 = *(*(_s13PresenceStateOMa() - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v6 = sub_22A4DCD0C();
  v4[35] = v6;
  v7 = *(v6 - 8);
  v4[36] = v7;
  v8 = *(v7 + 64) + 15;
  v4[37] = swift_task_alloc();
  v9 = sub_22A4DB7DC();
  v4[38] = v9;
  v10 = *(v9 - 8);
  v4[39] = v10;
  v11 = *(v10 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229836A78, 0, 0);
}

uint64_t sub_229836A78()
{
  v1 = v0[32];
  v2 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v3 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v3);
  sub_22978620C(&v3[2], v1, v0 + 24);
  os_unfair_lock_unlock(v3);
  swift_unknownObjectRelease();
  v4 = *__swift_project_boxed_opaque_existential_0(v0 + 24, v0[27]);
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_229836BC0;

  return sub_2296C31A8();
}

uint64_t sub_229836BC0(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 336);
  v7 = *v3;
  *(*v3 + 344) = a2;

  if (v2)
  {

    v5 = sub_2298377BC;
  }

  else
  {
    v5 = sub_229836CDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229836CDC()
{
  v105 = v0;
  v1 = v0[43];
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = v0[43];
  if (!*(v2 + 16))
  {
    v35 = v0[43];

LABEL_18:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v36 = v0[32];
    v37 = sub_22A4DD07C();
    __swift_project_value_buffer(v37, qword_27D8817F8);
    v38 = v36;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();

    if (os_log_type_enabled(v39, v40))
    {
      v42 = v0[39];
      v41 = v0[40];
      v43 = v0[38];
      v44 = v0[32];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v104 = v46;
      *v45 = 136315394;
      v47 = [v44 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v48 = sub_22A4DE5CC();
      v50 = v49;
      (*(v42 + 8))(v41, v43);
      v51 = sub_2295A3E30(v48, v50, &v104);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A598240, &v104);
      _os_log_impl(&dword_229538000, v39, v40, "[%s] %s Could not get room from adaptive temperature driver settings", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);
    }

    goto LABEL_28;
  }

  v3 = v0[30];
  (*(v0[39] + 16))(v0[41], v2 + ((*(v0[39] + 80) + 32) & ~*(v0[39] + 80)), v0[38]);

  v4 = sub_22A4DB77C();
  v5 = [v3 roomWithUUID_];

  if (!v5)
  {
    (*(v0[39] + 8))(v0[41], v0[38]);
    goto LABEL_18;
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v6 = v0[32];
  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D8817F8);
  v8 = v6;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  v102 = v5;
  v103 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[39];
    v12 = v0[40];
    v13 = v0[38];
    v14 = v0[32];
    v15 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v104 = v98;
    *v15 = 136315394;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v11 + 8))(v12, v13);
    v20 = sub_2295A3E30(v17, v19, &v104);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A598240, &v104);
    _os_log_impl(&dword_229538000, v9, v10, "[%s] %s Posting presence state changed notification", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v98, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  v21 = v0[31];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[36];
    v26 = *(v23 + 16);
    v25 = v23 + 16;
    v24 = v26;
    v27 = v21 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v28 = *(v25 + 56);
    v29 = MEMORY[0x277D84F90];
    do
    {
      v30 = v103[37];
      v31 = v103[35];
      v24(v30, v27, v31);
      v32 = sub_22A4DCCFC();
      (*(v25 - 8))(v30, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_22958BBE4(0, *(v29 + 2) + 1, 1, v29);
      }

      v34 = *(v29 + 2);
      v33 = *(v29 + 3);
      if (v34 >= v33 >> 1)
      {
        v29 = sub_22958BBE4((v33 > 1), v34 + 1, 1, v29);
      }

      *(v29 + 2) = v34 + 1;
      *&v29[2 * v34 + 32] = v32;
      v27 += v28;
      --v22;
    }

    while (v22);
    goto LABEL_24;
  }

  v29 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_24:
    v52 = v103[34];
    v53 = v103[29];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A5761B0;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v55;
    sub_229696298(v53, v52);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v57 = (*(*(v56 - 8) + 48))(v52, 2, v56);
    v58 = v103[34];
    if (v57)
    {
      sub_229839118(v103[34], _s13PresenceStateOMa);
    }

    else
    {
      v59 = sub_22A4DB74C();
      (*(*(v59 - 8) + 8))(v58, v59);
    }

    v60 = v103[39];
    v99 = v103[38];
    v100 = v103[41];
    v97 = v103[32];
    v61 = v103[30];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = v57 == 0;
    *(inited + 80) = sub_22A4DD5EC();
    *(inited + 88) = v62;
    v63 = [v102 name];
    v64 = sub_22A4DD5EC();
    v66 = v65;

    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = v64;
    *(inited + 104) = v66;
    *(inited + 128) = sub_22A4DD5EC();
    *(inited + 136) = v67;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881918, &qword_22A585630);
    *(inited + 144) = v29;
    v68 = sub_22956AC5C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
    swift_arrayDestroy();
    v69 = [v61 notificationCenter];
    sub_2296F7AE8(v68);

    v0 = v103;
    v70 = sub_22A4DD47C();

    logAndPostNotificationWithNotificationCenter(v69, @"HMDAccessoryAdaptiveTemperaturePresenceStateChanged", v97, v70);

    (*(v60 + 8))(v100, v99);
    goto LABEL_28;
  }

  v77 = v0[32];

  v78 = v77;
  v79 = sub_22A4DD05C();
  v80 = sub_22A4DDCEC();

  v81 = os_log_type_enabled(v79, v80);
  v82 = v0[41];
  if (v81)
  {
    v101 = v0[41];
    v84 = v0[39];
    v83 = v0[40];
    v85 = v0[38];
    v86 = v0[32];
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v104 = v88;
    *v87 = 136315394;
    v89 = [v86 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v90 = sub_22A4DE5CC();
    v92 = v91;
    v93 = *(v84 + 8);
    v93(v83, v85);
    v94 = sub_2295A3E30(v90, v92, &v104);

    *(v87 + 4) = v94;
    *(v87 + 12) = 2080;
    *(v87 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A598240, &v104);
    _os_log_impl(&dword_229538000, v79, v80, "[%s] %s No thermostat endpoints", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v88, -1, -1);
    MEMORY[0x22AAD4E50](v87, -1, -1);

    v93(v101, v85);
  }

  else
  {
    v96 = v0[38];
    v95 = v0[39];

    (*(v95 + 8))(v82, v96);
  }

LABEL_28:
  v72 = v0[40];
  v71 = v0[41];
  v73 = v0[37];
  v74 = v0[34];

  v75 = v0[1];

  return v75();
}

uint64_t sub_2298377BC()
{
  v24 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[39];
    v6 = v0[40];
    v8 = v0[38];
    v9 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v23);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A598240, &v23);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s Could not get room from adaptive temperature driver settings", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v18 = v0[40];
  v17 = v0[41];
  v19 = v0[37];
  v20 = v0[34];

  v21 = v0[1];

  return v21();
}

uint64_t sub_229837A4C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_229838C58(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_229837B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        goto LABEL_13;
      }

      if (a1 != 7)
      {
        goto LABEL_15;
      }
    }

    else if (a1 != 4)
    {
      v3 = MEMORY[0x277D172C8];
      goto LABEL_14;
    }

    v3 = MEMORY[0x277D172E8];
    goto LABEL_14;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      v3 = MEMORY[0x277D172D8];
      goto LABEL_14;
    }

LABEL_13:
    v3 = MEMORY[0x277D172B8];
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    v3 = MEMORY[0x277D172E0];
LABEL_14:
    v4 = *v3;
    v5 = sub_22A4DC8EC();
    v12 = *(v5 - 8);
    (*(v12 + 104))(a2, v4, v5);
    v6 = *(v12 + 56);
    v7 = a2;
    v8 = 0;
    v9 = v5;
    goto LABEL_16;
  }

LABEL_15:
  v10 = sub_22A4DC8EC();
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a2;
  v8 = 1;
LABEL_16:

  return v6(v7, v8, 1, v9);
}

uint64_t sub_229837CBC()
{
  v0 = sub_22A4DC8EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22A4DC84C();
  if (v5 == 2)
  {
    return 0;
  }

  v7 = v5;
  sub_22A4DC83C();
  sub_229839520(&qword_27D87C398, MEMORY[0x277D172F0]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  (*(v1 + 8))(v4, v0);
  return (v8[15] == v8[14]) & v7;
}

uint64_t sub_229837E30(uint64_t a1)
{
  v2 = v1;
  v57[3] = *MEMORY[0x277D85DE8];
  v4 = sub_22A4DC96C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_58:
    result = 0;
    goto LABEL_62;
  }

  v12 = *(v5 + 16);
  v11 = v5 + 16;
  v10 = v12;
  v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v14 = *(v11 + 56);
  v15 = (v11 - 8);
  v49 = v11;
  v50 = v2;
  v55 = v12;
  v53 = 0;
  v54 = v14;
  v12(v8, v13, v4);
  while (1)
  {
    if ((sub_22A4DC95C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v16 = sub_22A4DC94C();
    v18 = v17;
    v19 = sub_22A4DC82C();
    v21 = v18 >> 62;
    v22 = v20 >> 62;
    if (v18 >> 62 == 3)
    {
      v23 = 0;
      if (!v16 && v18 == 0xC000000000000000 && v20 >> 62 == 3)
      {
        v23 = 0;
        if (!v19 && v20 == 0xC000000000000000)
        {
          sub_2295798D4(0, 0xC000000000000000);
          v44 = 0;
          v45 = 0xC000000000000000;
          goto LABEL_60;
        }
      }

LABEL_25:
      if (v22 > 1)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v29 = *(v16 + 16);
        v28 = *(v16 + 24);
        v26 = __OFSUB__(v28, v29);
        v23 = v28 - v29;
        if (v26)
        {
          goto LABEL_66;
        }

        goto LABEL_25;
      }

      v23 = 0;
      if (v22 > 1)
      {
        goto LABEL_19;
      }
    }

    else if (v21)
    {
      LODWORD(v23) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_65;
      }

      v23 = v23;
      if (v22 > 1)
      {
LABEL_19:
        if (v22 != 2)
        {
          if (!v23)
          {
            break;
          }

LABEL_4:
          sub_2295798D4(v19, v20);
          sub_2295798D4(v16, v18);
          v14 = v54;
          v10 = v55;
LABEL_5:
          (*v15)(v8, v4);
          goto LABEL_6;
        }

        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        v26 = __OFSUB__(v24, v25);
        v27 = v24 - v25;
        if (v26)
        {
          goto LABEL_64;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v23 = BYTE6(v18);
      if (v22 > 1)
      {
        goto LABEL_19;
      }
    }

LABEL_26:
    if (!v22)
    {
      v27 = BYTE6(v20);
LABEL_28:
      if (v23 != v27)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }

    if (__OFSUB__(HIDWORD(v19), v19))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
    }

    if (v23 != HIDWORD(v19) - v19)
    {
      goto LABEL_4;
    }

LABEL_32:
    if (v23 < 1)
    {
      break;
    }

    if (v21 > 1)
    {
      v51 = v19;
      v52 = v20;
      if (v21 != 2)
      {
        memset(v57, 0, 14);
        v30 = v51;
        v31 = v52;
        goto LABEL_53;
      }

      v32 = *(v16 + 16);
      v48 = *(v16 + 24);
      v33 = sub_22A4DB24C();
      if (v33)
      {
        v34 = sub_22A4DB27C();
        if (__OFSUB__(v32, v34))
        {
          goto LABEL_69;
        }

        v33 += v32 - v34;
      }

      if (__OFSUB__(v48, v32))
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (!v21)
      {
        v57[0] = v16;
        LOWORD(v57[1]) = v18;
        BYTE2(v57[1]) = BYTE2(v18);
        BYTE3(v57[1]) = BYTE3(v18);
        BYTE4(v57[1]) = BYTE4(v18);
        BYTE5(v57[1]) = BYTE5(v18);
        v30 = v19;
        v31 = v20;
LABEL_53:
        v37 = v53;
        sub_229838464(v57, v30, v31, &v56);
        v53 = v37;
        sub_2295798D4(v30, v31);
        sub_2295798D4(v16, v18);
        v38 = v56;
        goto LABEL_56;
      }

      if (v16 >> 32 < v16)
      {
        goto LABEL_67;
      }

      v51 = v19;
      v52 = v20;
      v35 = sub_22A4DB24C();
      if (v35)
      {
        v48 = v35;
        v36 = sub_22A4DB27C();
        if (__OFSUB__(v16, v36))
        {
          goto LABEL_70;
        }

        v33 = v16 - v36 + v48;
      }

      else
      {
        v33 = 0;
      }
    }

    sub_22A4DB26C();
    v39 = v33;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    sub_229838464(v39, v51, v52, v57);
    v53 = v42;
    sub_2295798D4(v40, v41);
    sub_2295798D4(v16, v18);
    v38 = v57[0];
LABEL_56:
    (*v15)(v8, v4);
    v14 = v54;
    v10 = v55;
    if (v38)
    {
      goto LABEL_61;
    }

LABEL_6:
    v13 += v14;
    if (!--v9)
    {
      goto LABEL_58;
    }

    v10(v8, v13, v4);
  }

  sub_2295798D4(v19, v20);
  v44 = v16;
  v45 = v18;
LABEL_60:
  sub_2295798D4(v44, v45);
  (*v15)(v8, v4);
LABEL_61:
  result = 1;
LABEL_62:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_229838314()
{
  v0 = sub_22A4DC8EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DC83C();
  sub_229839520(&qword_27D87C398, MEMORY[0x277D172F0]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  (*(v1 + 8))(v4, v0);
  return v8 == v7;
}

uint64_t sub_229838464@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22A4DB24C();
    if (v10)
    {
      v11 = sub_22A4DB27C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22A4DB26C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22A4DB24C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22A4DB27C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22A4DB26C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

BOOL sub_229838694()
{
  v0 = sub_22A4DCDAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DCD7C();
  sub_229839520(&unk_27D881930, MEMORY[0x277D17430]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v5 = *(v1 + 8);
  v5(v4, v0);
  if (v9 == v8)
  {
    return 1;
  }

  sub_22A4DCD3C();
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v5(v4, v0);
  if (v9 == v8)
  {
    return 1;
  }

  sub_22A4DCD4C();
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v5(v4, v0);
  if (v9 == v8)
  {
    return 1;
  }

  sub_22A4DCD1C();
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v5(v4, v0);
  if (v9 == v8)
  {
    return 1;
  }

  sub_22A4DCD5C();
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v5(v4, v0);
  return v9 == v8;
}

uint64_t sub_229838920(char *a1)
{
  v2 = sub_22A4DCDAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  (*(v3 + 16))(&v17 - v8, a1, v2);
  sub_22A4DCD7C();
  sub_229839520(&qword_27D87F288, MEMORY[0x277D17430]);
  v10 = sub_22A4DD58C();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v11(a1, v2);
    v11(v9, v2);
    return 6;
  }

  else
  {
    sub_22A4DCD3C();
    v13 = sub_22A4DD58C();
    v11(v7, v2);
    if (v13)
    {
      v11(a1, v2);
      v11(v9, v2);
      return 7;
    }

    else
    {
      sub_22A4DCD1C();
      v14 = sub_22A4DD58C();
      v11(v7, v2);
      if (v14)
      {
        v11(a1, v2);
        v11(v9, v2);
        return 9;
      }

      else
      {
        sub_22A4DCD5C();
        v15 = sub_22A4DD58C();
        v11(v7, v2);
        if (v15)
        {
          v11(a1, v2);
          v11(v9, v2);
          return 8;
        }

        else
        {
          sub_22A4DCD4C();
          v16 = sub_22A4DD58C();
          v11(a1, v2);
          v11(v7, v2);
          v11(v9, v2);
          if (v16)
          {
            return 10;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t sub_229838C58(uint64_t result)
{
  if (result >= 0xDu)
  {
    return 13;
  }

  else
  {
    return result;
  }
}

unint64_t sub_229838C6C()
{
  result = qword_27D881880;
  if (!qword_27D881880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881880);
  }

  return result;
}

uint64_t sub_229838CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229832E20(a1, v4, v5, v7, v6);
}

uint64_t sub_229838D80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229832AC0(a1, v4, v5, v7, v6);
}

uint64_t sub_229838E40(uint64_t a1)
{
  v3 = *(sub_22A4DCD0C() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22A4DCA9C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B0, &qword_22A5854F8) - 8);
  v10 = ((v8 & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  v17 = *(v1 + v8);
  v18 = swift_task_alloc();
  *(v2 + 16) = v18;
  *v18 = v2;
  v18[1] = sub_229569B30;

  return sub_22982F020(a1, v14, v15, v1 + 32, v1 + v4, v1 + v7, v17, v16);
}

uint64_t sub_229839118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_229839178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2298222C4(a1, v4, v5, v6);
}

uint64_t sub_22983922C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229820EB0();
}

uint64_t sub_2298392E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22A4DB7DC() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_229586D38;

  return sub_229835750(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_229839458(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_229820D1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229839520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229839568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2298200D8(a1, v4, v5, v7, v6);
}

uint64_t sub_229839628()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_22981FDB4();
}

uint64_t sub_2298396EC(uint64_t a1)
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
  v10[1] = sub_229586D38;

  return sub_22981BF48(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_100Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_229839818(uint64_t a1)
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
  v10[1] = sub_229586D38;

  return sub_2298192FC(a1, v4, v5, v6, v7, v9, v8);
}

_BYTE *sub_2298398EC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_2298399C4()
{
  result = qword_27D881950;
  if (!qword_27D881950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881950);
  }

  return result;
}

void sub_229839A44(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_229839B44(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &qword_27D87CEF0, off_278666100);
    sub_22959E62C(&qword_27D8819E0, &qword_27D87CEF0, off_278666100);
    sub_22A4DDBAC();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
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

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_22A4DE12C())
        {
          break;
        }

        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_22953EE84();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_229839DDC(unint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v24[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229562F68(0, a3, a4);
    sub_22959E62C(a5, a3, a4);
    sub_22A4DDBAC();
    v8 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
    v14 = v24[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_22953EE84();
      return;
    }

    while (1)
    {
      a6(v24);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22A4DE12C())
      {
        sub_229562F68(0, a3, a4);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_229839FD8()
{
  result = sub_22A4DD5AC();
  qword_27D8AB9C0 = result;
  return result;
}

void sub_22983A244()
{
  v1 = v0;
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger, v2);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Configuring local presence notification coordinator", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [objc_msgSend(Strong dataSource)];
    swift_unknownObjectRelease();
    if (v12)
    {
      [*(v1 + OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_notificationCenter) addObserver:v1 selector:sel_handlePresenceStateChanged_ name:@"HMDAccessoryAdaptiveTemperaturePresenceStateChanged" object:v11];
    }
  }

  sub_22983A6C0();
}

uint64_t sub_22983A430(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() defaultSecurePolicy];
    v5 = [objc_opt_self() userMessagePolicyWithHome:v3 userPrivilege:3 remoteAccessRequired:0];
    v6 = [objc_msgSend(v3 featuresDataSource)];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = [a1 name];
      if (qword_27D87BAA0 != -1)
      {
        swift_once();
      }

      v8 = sub_22A4DD5EC();
      v10 = v9;
      if (v8 == sub_22A4DD5EC() && v10 == v11)
      {

LABEL_9:
        v13 = [a1 name];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_22A582080;
        *(v14 + 32) = v4;
        *(v14 + 40) = v5;
        sub_229562F68(0, qword_281401B40, 0x277D0F838);
        v15 = v4;
        v16 = v5;
        v17 = sub_22A4DD81C();

        v18 = HMFCreateMessageBindingWithReceiver();

        return v18;
      }

      v12 = sub_22A4DE60C();

      if (v12)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

void sub_22983A6C0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_msgDispatcher);
    if (v2)
    {
      v14 = Strong;
      v3 = v2;
      v4 = [objc_msgSend(v14 featuresDataSource)];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = v14;
        v14 = v3;
      }

      else
      {
        v6 = [objc_opt_self() defaultSecurePolicy];
        v7 = [objc_opt_self() userMessagePolicyWithHome:v14 userPrivilege:3 remoteAccessRequired:0];
        v8 = [objc_msgSend(v14 featuresDataSource)];
        swift_unknownObjectRelease();
        if (v8)
        {
          if (qword_27D87BAA0 != -1)
          {
            swift_once();
          }

          v9 = qword_27D8AB9C0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_22A582080;
          *(v10 + 32) = v6;
          *(v10 + 40) = v7;
          sub_229562F68(0, qword_281401B40, 0x277D0F838);
          v11 = v6;
          v12 = v7;
          v13 = sub_22A4DD81C();

          [v3 registerForMessage:v9 receiver:v0 policies:v13 selector:sel_handlePresenceStateChangedMessage_];
        }

        v5 = v3;
      }

      Strong = v14;
    }
  }
}

void sub_22983A908()
{
  v1 = sub_22A4DB7DC();
  v92 = *(v1 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_22A4DCD0C();
  v94 = *(v3 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v93 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v78 - v15;
  if ([objc_opt_self() supportsBulletinBoard])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v89 = v7;
      v90 = v8;
      v91 = Strong;
      v18 = [Strong supportsAdaptiveTemperatureAutomations];
      v19 = [v18 BOOLValue];

      if (v19 && (v20 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v88 = v20;
        v21 = *&v0[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_msgDispatcher];
        if (v21)
        {
          v85 = v0;
          v22 = v21;
          v23 = sub_22A4DB20C();
          if (v23)
          {
            v87 = v22;
            v24 = sub_22976EEB8(v23);

            if (v24)
            {
              v25 = sub_22A4DD5EC();
              if (*(v24 + 2))
              {
                v27 = sub_229543DBC(v25, v26);
                v29 = v28;

                if (v29)
                {
                  sub_2295404B0(*(v24 + 7) + 32 * v27, v97);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881918, &qword_22A585630);
                  if (swift_dynamicCast())
                  {
                    v83 = v96;
                    v30 = *(v90 + 16);
                    v79 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger;
                    v31 = v89;
                    v81 = v90 + 16;
                    v80 = v30;
                    v30(v16, &v85[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger], v89);

                    v32 = sub_22A4DD05C();
                    v33 = sub_22A4DDCCC();
                    v84 = v24;

                    LODWORD(v86) = v33;
                    v34 = v33;
                    v35 = v32;
                    if (!os_log_type_enabled(v32, v34))
                    {

                      v45 = *(v90 + 8);
                      v46 = v16;
                      v44 = v31;
                      goto LABEL_27;
                    }

                    v36 = swift_slowAlloc();
                    v82 = swift_slowAlloc();
                    v97[0] = v82;
                    *v36 = 136315394;
                    if (qword_27D87BAA0 == -1)
                    {
                      goto LABEL_13;
                    }

                    while (1)
                    {
                      swift_once();
LABEL_13:
                      v37 = sub_22A4DD5EC();
                      v39 = sub_2295A3E30(v37, v38, v97);

                      *(v36 + 4) = v39;
                      *(v36 + 12) = 2080;
                      v96 = v84;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
                      v40 = sub_22A4DBA6C();
                      v42 = sub_2295A3E30(v40, v41, v97);

                      *(v36 + 14) = v42;
                      _os_log_impl(&dword_229538000, v35, v86, "Sending %s message with payload: %s", v36, 0x16u);
                      v43 = v82;
                      swift_arrayDestroy();
                      MEMORY[0x22AAD4E50](v43, -1, -1);
                      MEMORY[0x22AAD4E50](v36, -1, -1);

                      v44 = v89;
                      v45 = *(v90 + 8);
                      v46 = v16;
LABEL_27:
                      v82 = v45;
                      v45(v46, v44);
                      v49 = *(v83 + 2);
                      if (v49)
                      {
                        v50 = (v83 + 32);
                        v86 = v94 + 32;
                        v51 = MEMORY[0x277D84F90];
                        do
                        {
                          v52 = *v50++;
                          sub_22A4DCCEC();
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v51 = sub_22958BCE0(0, v51[2] + 1, 1, v51);
                          }

                          v54 = v51[2];
                          v53 = v51[3];
                          if (v54 >= v53 >> 1)
                          {
                            v51 = sub_22958BCE0(v53 > 1, v54 + 1, 1, v51);
                          }

                          v51[2] = v54 + 1;
                          (*(v94 + 32))(v51 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v54, v6, v3);
                          --v49;
                        }

                        while (v49);
                      }

                      else
                      {
                        v51 = MEMORY[0x277D84F90];
                      }

                      if (!v51[2])
                      {

                        v55 = v89;
                        v80(v12, &v85[v79], v89);
                        v56 = v83;

                        v57 = sub_22A4DD05C();
                        v58 = sub_22A4DDCEC();

                        if (os_log_type_enabled(v57, v58))
                        {
                          v59 = swift_slowAlloc();
                          v60 = swift_slowAlloc();
                          v97[0] = v60;
                          *v59 = 136315138;
                          v61 = MEMORY[0x22AAD0A20](v56, MEMORY[0x277D84C58]);
                          v63 = v62;

                          v64 = sub_2295A3E30(v61, v63, v97);

                          *(v59 + 4) = v64;
                          _os_log_impl(&dword_229538000, v57, v58, "endpoints are empty %s", v59, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v60);
                          MEMORY[0x22AAD4E50](v60, -1, -1);
                          MEMORY[0x22AAD4E50](v59, -1, -1);

                          v65 = v88;
                        }

                        else
                        {

                          v65 = v91;
                        }

                        v82(v12, v55);
                        return;
                      }

                      v12 = 0;
                      sub_22983C2D4(v91, v88, v51);
                      v67 = v66;

                      if ((v67 & 0xC000000000000001) != 0)
                      {
                        swift_unknownObjectRetain();
                        sub_22A4DE09C();
                        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
                        sub_22959E62C(&qword_27D8819E0, &qword_27D87CEF0, off_278666100);
                        sub_22A4DDBAC();
                        v68 = v97[0];
                        v36 = v97[1];
                        v69 = v97[2];
                        v6 = v97[3];
                        v16 = v97[4];
                      }

                      else
                      {
                        v70 = -1 << *(v67 + 32);
                        v36 = v67 + 56;
                        v69 = ~v70;
                        v71 = -v70;
                        v72 = v71 < 64 ? ~(-1 << v71) : -1;
                        v16 = (v72 & *(v67 + 56));

                        v6 = 0;
                        v68 = v67;
                      }

                      v94 = v69;
                      v3 = (v69 + 64) >> 6;
                      if (v68 < 0)
                      {
                        break;
                      }

LABEL_49:
                      v73 = v6;
                      v74 = v16;
                      v35 = v6;
                      if (v16)
                      {
LABEL_53:
                        v75 = (v74 - 1) & v74;
                        v76 = *(*(v68 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v74)))));
                        goto LABEL_56;
                      }

                      while (1)
                      {
                        v35 = (&v73->isa + 1);
                        if (__OFADD__(v73, 1))
                        {
                          break;
                        }

                        if (v35 >= v3)
                        {
                          goto LABEL_59;
                        }

                        v74 = *(v36 + 8 * v35);
                        v73 = (v73 + 1);
                        if (v74)
                        {
                          goto LABEL_53;
                        }
                      }

                      __break(1u);
                    }

                    while (1)
                    {
                      v77 = sub_22A4DE12C();
                      if (!v77)
                      {
                        break;
                      }

                      v95 = v77;
                      sub_229562F68(0, &qword_27D87CEF0, off_278666100);
                      swift_dynamicCast();
                      v76 = v96;
                      v35 = v6;
                      v75 = v16;
LABEL_56:
                      if (!v76)
                      {
                        break;
                      }

                      v96 = v76;
                      sub_22983C970(&v96, v85, v84, v87);

                      v6 = v35;
                      v16 = v75;
                      if ((v68 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_49;
                      }
                    }

LABEL_59:
                    sub_22953EE84();

                    v48 = v88;
                  }

                  else
                  {

                    v48 = v88;
                  }

                  goto LABEL_23;
                }
              }

              else
              {
              }

              v48 = v91;
LABEL_23:

              return;
            }

            v47 = v88;
          }

          else
          {

            v47 = v88;
          }
        }

        else
        {

          v47 = v88;
        }
      }

      else
      {
        v47 = v91;
      }
    }
  }
}

uint64_t sub_22983B668(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DB57C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 messagePayload];
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14;
  v56 = v9;
  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v17 = sub_22A4DD49C();

  v18 = sub_22A4DD5EC();
  if (!*(v17 + 16))
  {

    goto LABEL_14;
  }

  v55 = v10;
  v20 = sub_229543DBC(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2295404B0(*(v17 + 56) + 32 * v20, v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = v57;
  v24 = sub_22A4DD5EC();
  if (!*(v17 + 16))
  {

    goto LABEL_14;
  }

  v54[3] = v23;
  v26 = sub_229543DBC(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_2295404B0(*(v17 + 56) + 32 * v26, v59);

  v29 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    v31 = v57;
    v30 = v58;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      v34 = [Strong home];
      if (v34)
      {
        v35 = v34;
        v36 = v33;
        v37 = [v36 name];
        sub_22A4DD5EC();

        sub_2295575D8(v36, v35, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_22A576180;
        *(v38 + 56) = v29;
        *(v38 + 64) = sub_229562E8C();
        *(v38 + 32) = v31;
        *(v38 + 40) = v30;
        v39 = sub_22A4DD5AC();
        v40 = HMDLocalizedStringForKey(v39);

        sub_22A4DD5EC();
        sub_22A4DD5BC();

        v41 = [v36 bulletinBoard];
        v42 = [v36 name];
        if (!v42)
        {
          sub_22A4DD5EC();
          v42 = sub_22A4DD5AC();
        }

        v43 = sub_22A4DD5AC();

        v44 = sub_22A4DB4EC();
        [v41 insertClimateBulletinForAccessory:v36 title:v42 body:v43 actionURL:v44];

        return (*(v55 + 8))(v13, v56);
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  v4 = v16;
LABEL_16:
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger, v4);
  v46 = v2;
  v47 = sub_22A4DD05C();
  v48 = sub_22A4DDCEC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59[0] = v50;
    *v49 = 136315138;
    v51 = sub_22A4DB76C();
    v53 = sub_2295A3E30(v51, v52, v59);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_229538000, v47, v48, "%s Could not get payload from message", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AAD4E50](v50, -1, -1);
    MEMORY[0x22AAD4E50](v49, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

id sub_22983BCF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalPresenceBulletinNotificationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LocalPresenceBulletinNotificationCoordinator()
{
  result = qword_27D8819D0;
  if (!qword_27D8819D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22983BEA0()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22A4DD07C();
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

id sub_22983BF90(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x22AAD13F0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_229572000(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_22A4DE0EC();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

id sub_22983C084(void *a1, void *a2)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v21[1] = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_home;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_msgDispatcher;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_msgDispatcher] = 0;
  v11 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_notificationCenter] = a2;
  v12 = a2;
  v13 = [a1 uuid];
  sub_22A4DB79C();

  v14 = *(v6 + 32);
  v14(&v2[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_messageTargetUUID], v9, v5);
  swift_unknownObjectWeakAssign();
  v15 = [a1 uuid];
  sub_22A4DB79C();

  v14(&v2[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_accessoryUUID], v9, v5);
  v16 = [a1 home];
  swift_unknownObjectWeakAssign();

  v17 = [a1 msgDispatcher];
  v18 = *&v2[v10];
  *&v2[v10] = v17;

  v19 = type metadata accessor for LocalPresenceBulletinNotificationCoordinator();
  v22.receiver = v2;
  v22.super_class = v19;
  return objc_msgSendSuper2(&v22, sel_init);
}

void sub_22983C2D4(uint64_t a1, id a2, uint64_t a3)
{
  v51 = [a2 accessoryBulletinNotificationManager];
  if (!v51)
  {
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    return;
  }

  v48 = *(a3 + 16);
  if (!v48)
  {
    goto LABEL_55;
  }

  v47 = objc_opt_self();
  v4 = 0;
  v5 = *(sub_22A4DCD0C() - 8);
  v46 = a3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v6 = MEMORY[0x277D84FA0];
  v45 = *(v5 + 72);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    v9 = [v47 bulletinSupportedMatterPathsForAccessory:a1 endpointID:v8];

    if (!v9)
    {
      goto LABEL_5;
    }

    v50 = v4;
    sub_229562F68(0, &qword_27D87E358, off_278666270);
    sub_22959E62C(&qword_27D8819F0, &qword_27D87E358, off_278666270);
    v10 = sub_22A4DDB6C();

    if ((v10 & 0xC000000000000001) != 0)
    {
      sub_22A4DE09C();
      sub_22A4DDBAC();
      v10 = v60;
      v11 = v61;
      v12 = v62;
      v13 = v63;
      v14 = v64;
    }

    else
    {
      v13 = 0;
      v15 = -1 << *(v10 + 32);
      v11 = v10 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v10 + 56);
    }

    v18 = (v12 + 64) >> 6;
    v53 = v11;
    v54 = v10;
    v52 = v18;
LABEL_15:
    if ((v10 & 0x8000000000000000) == 0)
    {
      v19 = v13;
      v20 = v14;
      v21 = v13;
      if (v14)
      {
LABEL_20:
        v22 = (v20 - 1) & v20;
        v23 = *(*(v10 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        if (v23)
        {
          break;
        }
      }

      else
      {
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            return;
          }

          if (v21 >= v18)
          {
            break;
          }

          v20 = *(v11 + 8 * v21);
          ++v19;
          if (v20)
          {
            goto LABEL_20;
          }
        }
      }

      goto LABEL_4;
    }

    v24 = sub_22A4DE12C();
    if (v24)
    {
      v59 = v24;
      swift_dynamicCast();
      v23 = v70;
      v21 = v13;
      v22 = v14;
      if (v70)
      {
        break;
      }
    }

LABEL_4:
    sub_22953EE84();
    v4 = v50;
LABEL_5:
    if (++v4 == v48)
    {
      goto LABEL_55;
    }
  }

  v55 = v23;
  v25 = [v51 devicesToNotifyForMatterPath_];
  sub_229562F68(0, &qword_27D87CEF0, off_278666100);
  sub_22959E62C(&qword_27D8819E0, &qword_27D87CEF0, off_278666100);
  v26 = sub_22A4DDB6C();

  v70 = v7;
  v56 = v6;
  if ((v26 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v27 = v65;
    v28 = v66;
    v30 = v67;
    v29 = v68;
    v31 = v69;
  }

  else
  {
    v32 = -1 << *(v26 + 32);
    v28 = v26 + 56;
    v30 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(v26 + 56);

    v29 = 0;
    v27 = v26;
  }

  v57 = v7;
  v58 = v27;
  while (2)
  {
    v35 = v29;
    v36 = v31;
LABEL_35:
    if (v27 < 0)
    {
      if (!sub_22A4DE12C() || (swift_dynamicCast(), v39 = v59, v29 = v35, v31 = v36, !v59))
      {
LABEL_14:
        sub_22953EE84();

        v6 = sub_22983BF90(v57, v56);

        v13 = v21;
        v14 = v22;
        v7 = MEMORY[0x277D84F90];
        v11 = v53;
        v10 = v54;
        v18 = v52;
        goto LABEL_15;
      }

LABEL_44:
      v40 = [v39 account];
      v41 = [objc_opt_self() sharedManager];
      v42 = [v41 account];

      if (v40)
      {
        if (v42)
        {
          sub_229562F68(0, &qword_27D8819F8, off_278666000);
          v43 = sub_22A4DDEDC();

          if (v43)
          {
LABEL_49:
            MEMORY[0x22AAD09E0]();
            if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v44 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22A4DD85C();
            }

            sub_22A4DD87C();
            v57 = v70;
            v27 = v58;
            continue;
          }

          goto LABEL_34;
        }

        v42 = v40;
      }

      else if (!v42)
      {
        goto LABEL_49;
      }

LABEL_34:
      v35 = v29;
      v36 = v31;
      v27 = v58;
      goto LABEL_35;
    }

    break;
  }

  v37 = v35;
  v38 = v36;
  v29 = v35;
  if (v36)
  {
LABEL_40:
    v31 = (v38 - 1) & v38;
    v39 = *(*(v27 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v38)))));
    if (!v39)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

  while (1)
  {
    v29 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v29 >= ((v30 + 64) >> 6))
    {
      goto LABEL_14;
    }

    v38 = *(v28 + 8 * v29);
    ++v37;
    if (v38)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_55:
}

void sub_22983C970(void **a1, void *a2, uint64_t a3, void *a4)
{
  v77 = a4;
  v78 = a3;
  v6 = sub_22A4DD07C();
  v79 = *(v6 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_messageTargetUUID;
  swift_beginAccess();
  v17 = v11[2];
  v68 = v11 + 2;
  v69 = v16;
  v67 = v17;
  v17(v14, v16 + a2, v10);
  v18 = objc_allocWithZone(HMDRemoteDeviceMessageDestination);
  v19 = sub_22A4DB77C();
  v75 = v15;
  v20 = [v18 initWithTarget:v19 device:v15];

  v21 = v11[1];
  v64 = v14;
  v72 = v11 + 1;
  v73 = v10;
  v71 = v21;
  v21(v14, v10);
  if (qword_27D87BAA0 != -1)
  {
    swift_once();
  }

  v22 = qword_27D8AB9C0;
  v23 = objc_allocWithZone(HMDRemoteMessage);
  v24 = v20;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v25 = sub_22A4DD47C();
  v26 = [v23 initWithName:v22 destination:v24 payload:v25];
  v76 = v24;

  v27 = v79;
  (*(v79 + 16))(v9, a2 + OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger, v6);
  v28 = a2;
  v74 = v6;
  v29 = v28;
  v30 = v26;
  v31 = v9;
  v32 = v75;

  v33 = sub_22A4DD05C();
  LODWORD(v26) = sub_22A4DDCCC();

  v65 = v32;

  v75 = v30;
  v66 = v26;
  if (os_log_type_enabled(v33, v26))
  {
    v34 = swift_slowAlloc();
    v63 = v31;
    v35 = v34;
    v36 = swift_slowAlloc();
    v61 = v36;
    v62 = swift_slowAlloc();
    v80 = v62;
    *v35 = 136316162;
    v37 = sub_22A4DB76C();
    v39 = sub_2295A3E30(v37, v38, &v80);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2112;
    v40 = v75;
    *(v35 + 14) = v75;
    *v36 = v40;
    *(v35 + 22) = 2080;
    v41 = v69 + a2;
    v42 = v64;
    v69 = v33;
    v43 = v73;
    v67(v64, v41, v73);
    sub_229586A3C();
    v44 = v40;
    v45 = sub_22A4DE5CC();
    v47 = v46;
    v48 = v71;
    v71(v42, v43);
    v49 = sub_2295A3E30(v45, v47, &v80);

    *(v35 + 24) = v49;
    *(v35 + 32) = 2080;
    v50 = [v65 identifier];
    sub_22A4DB79C();

    v51 = sub_22A4DE5CC();
    v53 = v52;
    v48(v42, v43);
    v54 = sub_2295A3E30(v51, v53, &v80);

    *(v35 + 34) = v54;
    *(v35 + 42) = 2080;
    v55 = sub_22A4DD4AC();
    v57 = sub_2295A3E30(v55, v56, &v80);

    *(v35 + 44) = v57;
    v58 = v69;
    _os_log_impl(&dword_229538000, v69, v66, "%s Sending %@ to target=%s for device=%s with payload=%s", v35, 0x34u);
    v59 = v61;
    sub_2295A1C40(v61);
    MEMORY[0x22AAD4E50](v59, -1, -1);
    v60 = v62;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v60, -1, -1);
    MEMORY[0x22AAD4E50](v35, -1, -1);

    (*(v79 + 8))(v63, v74);
  }

  else
  {

    (*(v27 + 8))(v31, v74);
    v40 = v75;
  }

  [v77 sendMessage_];
}

unint64_t sub_22983CF80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v50 = MEMORY[0x277D84F90];
  sub_229583714(0, v1, 0);
  v2 = v50;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = sub_22A4DE04C();
  v7 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
  v43 = v3;
  v9 = 0;
  v39 = v3 + 72;
  v40 = v1;
  v41 = v3 + 64;
  v42 = v7;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v44 = v9;
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v6);
    v48[0] = 1701667182;
    v48[1] = 0xE400000000000000;
    v48[2] = v13;
    v48[3] = v14;
    v48[5] = MEMORY[0x277D837D0];
    v49[0] = 0x65756C6176;
    v49[1] = 0xE500000000000000;
    v49[5] = MEMORY[0x277D839F8];
    v49[2] = v15;
    v16 = sub_22A4DE40C();
    swift_bridgeObjectRetain_n();

    sub_229564F88(v48, &v45, &unk_27D87DE50, &qword_22A577CD0);
    v17 = v45;
    v18 = v46;
    result = sub_229543DBC(v45, v46);
    if (v19)
    {
      goto LABEL_25;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v20 = (v16[6] + 16 * result);
    *v20 = v17;
    v20[1] = v18;
    result = sub_229543C58(v47, v16[7] + 32 * result);
    v21 = v16[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v23;
    sub_229564F88(v49, &v45, &unk_27D87DE50, &qword_22A577CD0);
    v24 = v45;
    v25 = v46;
    result = sub_229543DBC(v45, v46);
    if (v26)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v27 = (v16[6] + 16 * result);
    *v27 = v24;
    v27[1] = v25;
    result = sub_229543C58(v47, v16[7] + 32 * result);
    v28 = v16[2];
    v22 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
    swift_arrayDestroy();

    v50 = v2;
    v31 = *(v2 + 16);
    v30 = *(v2 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_229583714((v30 > 1), v31 + 1, 1);
      v2 = v50;
    }

    *(v2 + 16) = v31 + 1;
    *(v2 + 8 * v31 + 32) = v16;
    LODWORD(v7) = v42;
    v3 = v43;
    v10 = 1 << *(v43 + 32);
    if (v6 >= v10)
    {
      goto LABEL_30;
    }

    v4 = v41;
    v32 = *(v41 + 8 * v11);
    if ((v32 & (1 << v6)) == 0)
    {
      goto LABEL_31;
    }

    if (v42 != *(v43 + 36))
    {
      goto LABEL_32;
    }

    v33 = v32 & (-2 << (v6 & 0x3F));
    if (v33)
    {
      v10 = __clz(__rbit64(v33)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v11 << 6;
      v35 = v11 + 1;
      v36 = (v39 + 8 * v11);
      while (v35 < (v10 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_22962F424(v6, v42, 0);
          v10 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_22962F424(v6, v42, 0);
    }

LABEL_4:
    v9 = v44 + 1;
    v6 = v10;
    if (v44 + 1 == v40)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_22983D390(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v50 = MEMORY[0x277D84F90];
  sub_229583714(0, v1, 0);
  v2 = v50;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = sub_22A4DE04C();
  v7 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
  v43 = v3;
  v9 = 0;
  v39 = v3 + 72;
  v40 = v1;
  v41 = v3 + 64;
  v42 = v7;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v44 = v9;
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v6);
    v48[0] = 1701667182;
    v48[1] = 0xE400000000000000;
    v48[2] = v13;
    v48[3] = v14;
    v48[5] = MEMORY[0x277D837D0];
    v49[0] = 0x65756C6176;
    v49[5] = MEMORY[0x277D83B88];
    v49[1] = 0xE500000000000000;
    v49[2] = v15;
    v16 = sub_22A4DE40C();
    swift_bridgeObjectRetain_n();

    sub_229564F88(v48, &v45, &unk_27D87DE50, &qword_22A577CD0);
    v17 = v45;
    v18 = v46;
    result = sub_229543DBC(v45, v46);
    if (v19)
    {
      goto LABEL_25;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v20 = (v16[6] + 16 * result);
    *v20 = v17;
    v20[1] = v18;
    result = sub_229543C58(v47, v16[7] + 32 * result);
    v21 = v16[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v23;
    sub_229564F88(v49, &v45, &unk_27D87DE50, &qword_22A577CD0);
    v24 = v45;
    v25 = v46;
    result = sub_229543DBC(v45, v46);
    if (v26)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v27 = (v16[6] + 16 * result);
    *v27 = v24;
    v27[1] = v25;
    result = sub_229543C58(v47, v16[7] + 32 * result);
    v28 = v16[2];
    v22 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
    swift_arrayDestroy();

    v50 = v2;
    v31 = *(v2 + 16);
    v30 = *(v2 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_229583714((v30 > 1), v31 + 1, 1);
      v2 = v50;
    }

    *(v2 + 16) = v31 + 1;
    *(v2 + 8 * v31 + 32) = v16;
    LODWORD(v7) = v42;
    v3 = v43;
    v10 = 1 << *(v43 + 32);
    if (v6 >= v10)
    {
      goto LABEL_30;
    }

    v4 = v41;
    v32 = *(v41 + 8 * v11);
    if ((v32 & (1 << v6)) == 0)
    {
      goto LABEL_31;
    }

    if (v42 != *(v43 + 36))
    {
      goto LABEL_32;
    }

    v33 = v32 & (-2 << (v6 & 0x3F));
    if (v33)
    {
      v10 = __clz(__rbit64(v33)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v11 << 6;
      v35 = v11 + 1;
      v36 = (v39 + 8 * v11);
      while (v35 < (v10 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_22962F424(v6, v42, 0);
          v10 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_22962F424(v6, v42, 0);
    }

LABEL_4:
    v9 = v44 + 1;
    v6 = v10;
    if (v44 + 1 == v40)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22983D944()
{
  v1 = v0;
  v2 = [v0 legacyCountersManager];
  [v2 delegate];

  _s16CoreDataDelegateCMa();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + 24);

    swift_unknownObjectRelease();
    v5 = [v0 internalSwiftData];
    _s9SwiftDataCMa();
    v6 = swift_dynamicCastClassUnconditional();
    sub_22957F1C4(v6 + OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDMetricsManager9SwiftData_dailyScheduler, v13);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v13, v14);
    swift_retain_n();
    sub_22A4DC0DC();

    __swift_destroy_boxed_opaque_existential_0(v13);
    v7 = [v0 dateProvider];
    v8 = [v1 internalSwiftData];
    v9 = swift_dynamicCastClassUnconditional();
    sub_22957F1C4(v9 + OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDMetricsManager9SwiftData_dailyScheduler, v13);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v13, v14);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v4;

    v11 = v7;
    sub_22A4DC0DC();

    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_22983DC40()
{
  v1 = *(v0 + 16);
  sub_22A4DBF2C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22983DCC0()
{
  v1 = *(v0 + 16);
  sub_22A4DBF4C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22983DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_22A4DB74C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22983DDEC, 0, 0);
}

uint64_t sub_22983DDEC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = [v5 startOfDayByAddingDayCount_];
  sub_22A4DB70C();

  v7 = [v5 startOfDayByAddingDayCount_];
  sub_22A4DB70C();

  sub_22A4DBF7C();
  sub_22A4DBF6C();
  v8 = *(v4 + 8);
  v8(v1, v3);
  v8(v2, v3);

  v9 = v0[1];

  return v9();
}

void sub_22983DF50(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - v6;
  v8 = sub_22A4DD5AC();
  v9 = [a1 stringForKey_];

  if (v9)
  {
    v10 = sub_22A4DD5EC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *a2 = v10;
  a2[1] = v12;
  v13 = sub_22A4DD5AC();
  v14 = [a1 stringForKey_];

  if (v14)
  {
    v15 = sub_22A4DD5EC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  a2[2] = v15;
  a2[3] = v17;
  v18 = sub_22A4DD5AC();
  v19 = [a1 stringForKey_];

  if (v19)
  {
    v20 = sub_22A4DD5EC();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  a2[4] = v20;
  a2[5] = v22;
  v23 = sub_22A4DD5AC();
  v24 = [a1 stringForKey_];

  if (v24)
  {
    v25 = sub_22A4DD5EC();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  a2[6] = v25;
  a2[7] = v27;
  v28 = sub_22A4DD5AC();
  v29 = [a1 stringForKey_];

  if (v29)
  {
    v30 = sub_22A4DD5EC();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  a2[8] = v30;
  a2[9] = v32;
  v33 = sub_22A4DD5AC();
  v34 = [a1 stringForKey_];

  if (v34)
  {
    v35 = sub_22A4DD5EC();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  a2[10] = v35;
  a2[11] = v37;
  v38 = sub_22A4DD5AC();
  v39 = [a1 dateForKey_];

  if (v39)
  {
    sub_22A4DB70C();

    v40 = sub_22A4DB74C();
    (*(*(v40 - 8) + 56))(v7, 0, 1, v40);
  }

  else
  {
    v41 = sub_22A4DB74C();
    (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
  }

  v42 = _s11GroupFilterVMa();
  sub_2296692F8(v7, a2 + *(v42 + 40));
  v43 = sub_22A4DD5AC();
  v44 = [a1 stringForKey_];

  if (v44)
  {
    v45 = sub_22A4DD5EC();
    v47 = v46;
  }

  else
  {

    v45 = 0;
    v47 = 0;
  }

  v48 = (a2 + *(v42 + 44));
  *v48 = v45;
  v48[1] = v47;
}

uint64_t sub_22983E3B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22A4DC02C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = v2[1];
  if (!v15)
  {
LABEL_9:
    v23 = v2[3];
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v16 = *v2;
  (*(v5 + 104))(&v43 - v13, *MEMORY[0x277D17D20], v4);
  if (!*(a1 + 16) || (v17 = sub_2296DC140(v14), (v18 & 1) == 0))
  {
    (*(v5 + 8))(v14, v4);
    goto LABEL_30;
  }

  v19 = (*(a1 + 56) + 16 * v17);
  v45 = *v19;
  v46 = v9;
  v20 = v19[1];
  v44 = *(v5 + 8);

  v44(v14, v4);
  if (v16 != v45 || v15 != v20)
  {
    v22 = sub_22A4DE60C();

    v9 = v46;
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_30:
    v41 = 0;
    return v41 & 1;
  }

  v9 = v46;
  v23 = v2[3];
  if (!v23)
  {
    goto LABEL_21;
  }

LABEL_10:
  v24 = v2[2];
  (*(v5 + 104))(v12, *MEMORY[0x277D17D18], v4);
  if (!*(a1 + 16) || (v25 = sub_2296DC140(v12), (v26 & 1) == 0))
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_30;
  }

  v27 = (*(a1 + 56) + 16 * v25);
  v28 = v27[1];
  v45 = *v27;
  v46 = v9;
  v29 = *(v5 + 8);

  v29(v12, v4);
  if (v24 == v45 && v23 == v28)
  {

    v9 = v46;
    v32 = v2[5];
    if (v32)
    {
      goto LABEL_22;
    }

LABEL_33:
    v41 = 1;
    return v41 & 1;
  }

  v31 = sub_22A4DE60C();

  v9 = v46;
  if ((v31 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  v32 = v2[5];
  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_22:
  v33 = v2[4];
  (*(v5 + 104))(v9, *MEMORY[0x277D17D10], v4);
  if (!*(a1 + 16) || (v34 = sub_2296DC140(v9), (v35 & 1) == 0))
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_30;
  }

  v36 = (*(a1 + 56) + 16 * v34);
  v38 = *v36;
  v37 = v36[1];
  v39 = *(v5 + 8);

  v39(v9, v4);
  if (v33 == v38 && v32 == v37)
  {

    v41 = 1;
  }

  else
  {
    v41 = sub_22A4DE60C();
  }

  return v41 & 1;
}

uint64_t sub_22983E750()
{
  v4 = MEMORY[0x277D84F90];
  v1 = objc_allocWithZone(type metadata accessor for CharacteristicReadWriteLogEventObserver());
  sub_2298438AC(v0, v1);
  MEMORY[0x22AAD09E0]();
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22A4DD85C();
  }

  sub_22A4DD87C();
  return v4;
}

unint64_t sub_22983E86C()
{
  v1 = v0;
  v2 = sub_22956BA70(MEMORY[0x277D84F90]);
  v3 = sub_22A4DD5EC();
  v5 = v4;
  v6 = [v1 legacyCountersManager];
  v7 = [v6 delegate];

  _s16CoreDataDelegateCMa();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRelease();
  v10 = [v1 logEventDispatcher];
  v11 = objc_allocWithZone(type metadata accessor for CleanEnergyAutomationConfigurationLogEventFactory());
  v12 = sub_2298439DC(v1, v9, v10, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v2;
  sub_229843F0C(v12, v3, v5, isUniquelyReferenced_nonNull_native, &v15);

  return v15;
}

void sub_22983EA34()
{
  v1 = v0;
  v2 = [v0 homeManager];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 homes];
    if (!v4)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v5 = v4;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v6 = sub_22A4DD83C();

    if (v6 >> 62)
    {
      v7 = sub_22A4DE0EC();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_5:
        if (v7 >= 1)
        {
          v8 = 0;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x22AAD13F0](v8, v6);
            }

            else
            {
              v13 = *(v6 + 8 * v8 + 32);
            }

            v14 = v13;
            v15 = [v13 currentUser];
            if (!v15)
            {
              goto LABEL_10;
            }

            v16 = v15;
            if ([v15 isOwner])
            {
              v9 = [v1 logEventSubmitter];
              v10 = objc_allocWithZone(type metadata accessor for RestrictedGuestFeatureLogEvent());
              v11 = RestrictedGuestFeatureLogEvent.init(home:)(v14);
            }

            else
            {
              if (![v16 isRestrictedGuest])
              {
                goto LABEL_9;
              }

              v9 = [v1 logEventSubmitter];
              v17 = objc_allocWithZone(type metadata accessor for RestrictedGuestInfoLogEvent());
              v11 = RestrictedGuestInfoLogEvent.init(home:)(v14);
            }

            v12 = v11;
            [v9 submitLogEvent_];
            swift_unknownObjectRelease();

LABEL_9:
LABEL_10:
            ++v8;

            if (v7 == v8)
            {
              goto LABEL_20;
            }
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

LABEL_20:
  }
}

uint64_t sub_22983ECEC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  v11 = a1;
  v12 = [v11 legacyCountersManager];
  v13 = [v12 delegate];

  _s16CoreDataDelegateCMa();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(v14 + 24);

    swift_unknownObjectRelease();
    a4(v10);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_22983F06C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = _s11GroupFilterVMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [v1 legacyCountersManager];
  v12 = [v11 delegate];

  _s16CoreDataDelegateCMa();
  v13 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = a1;
    sub_22983DF50(v14, v10);
    sub_229564F88(v10 + *(v7 + 40), v6, &unk_27D881AA0, &qword_22A57BC20);
    v15 = sub_22A4DB74C();
    v16 = (*(*(v15 - 8) + 48))(v6, 1, v15);
    sub_22953EAE4(v6, &unk_27D881AA0, &qword_22A57BC20);
    if (v16 == 1 || !*(v10 + *(v7 + 44) + 8))
    {
      sub_22983F388(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v20 = sub_22A4DD47C();

      [v14 respondWithPayload_];
    }

    else
    {
      v17 = objc_opt_self();
      v18 = sub_22A4DD5AC();
      v19 = [v17 hmfErrorWithCode:3 reason:v18];

      v20 = sub_22A4DB3DC();
      [v14 respondWithError_];
    }

    sub_229843E8C(v10);
  }

  else
  {
    v21 = [v1 notEnabledError];
    v24 = sub_22A4DB3DC();

    [a1 respondWithError_];
    v22 = v24;
  }
}

void *sub_22983F388(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E338, &qword_22A57BB48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v54 - v4;
  v6 = sub_22A4DB82C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v54 - v13;
  v15 = _s11GroupFilterVMa();
  sub_229564F88(a1 + *(v15 + 40), v14, &unk_27D881AA0, &qword_22A57BC20);
  v16 = sub_22A4DB74C();
  v17 = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_22953EAE4(v14, &unk_27D881AA0, &qword_22A57BC20);
  if (v17 != 1 && *(a1 + *(v15 + 44) + 8))
  {
    return sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  v18 = [v58 legacyCountersManager];
  v19 = [v18 delegate];

  _s16CoreDataDelegateCMa();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    return sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  v55 = v15;
  v56 = a1;
  v21 = *(v20 + 24);

  swift_unknownObjectRelease();
  v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_22A4DB7EC();
  v23 = sub_22A4DB7FC();
  (*(v7 + 8))(v10, v6);
  [v22 setLocale_];

  v24 = sub_22A4DD5AC();
  v57 = v22;
  [v22 setDateFormat_];

  sub_22A4DB8DC();
  v25 = sub_22A4DB91C();
  v26 = *(v25 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v5, 1, v25) != 1)
  {
    v27 = sub_22A4DB8EC();
    (*(v26 + 8))(v5, v25);
  }

  [v57 setTimeZone_];

  v54 = v21;
  v28 = sub_22A4DBFFC();
  v29 = v28;
  v30 = v28 + 64;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 64);
  v34 = (v31 + 63) >> 6;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  while (v33)
  {
LABEL_15:
    v39 = (v36 << 9) | (8 * __clz(__rbit64(v33)));
    v40 = *(*(v29 + 48) + v39);
    v41 = *(*(v29 + 56) + v39);

    v42 = sub_229840D40(v40, v41, v56, v58, v57);

    v43 = *(v42 + 16);
    v44 = v37[2];
    v45 = v44 + v43;
    if (__OFADD__(v44, v43))
    {
      goto LABEL_32;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v45 > v37[3] >> 1)
    {
      if (v44 <= v45)
      {
        v46 = v44 + v43;
      }

      else
      {
        v46 = v44;
      }

      result = sub_22958A770(result, v46, 1, v37);
      v37 = result;
    }

    v33 &= v33 - 1;
    if (*(v42 + 16))
    {
      if ((v37[3] >> 1) - v37[2] < v43)
      {
        goto LABEL_34;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      swift_arrayInitWithCopy();

      if (v43)
      {
        v47 = v37[2];
        v48 = __OFADD__(v47, v43);
        v49 = v47 + v43;
        if (v48)
        {
          goto LABEL_35;
        }

        v37[2] = v49;
      }
    }

    else
    {

      if (v43)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v34)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A5761A0;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x800000022A598760;
      v51 = sub_2298429B0(*(v56 + *(v55 + 44)), *(v56 + *(v55 + 44) + 8));
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      *(inited + 48) = v51;
      *(inited + 72) = v52;
      *(inited + 80) = 0x7370756F7267;
      *(inited + 88) = 0xE600000000000000;
      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      *(inited + 96) = v37;
      v53 = sub_22956AC5C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
      swift_arrayDestroy();

      return v53;
    }

    v33 = *(v30 + 8 * v38);
    ++v36;
    if (v33)
    {
      v36 = v38;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void sub_22983FA6C(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + 24);

    swift_unknownObjectRelease();
    sub_22A4DBFBC();
    [a1 respondWithSuccess];
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = [v1 notEnabledError];
    v8 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

void sub_22983FBFC(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v47 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v45 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v45 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v48 = v45 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v45 - v24;
  MEMORY[0x28223BE20](v23);
  v49 = v45 - v26;
  v27 = [v2 legacyCountersManager];
  v28 = [v27 delegate];

  _s16CoreDataDelegateCMa();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = *(v29 + 24);
    v45[0] = v9;
    v45[1] = v30;

    swift_unknownObjectRelease();
    v31 = sub_22A4DD5AC();
    v32 = a1;
    v33 = [a1 dateForKey_];

    if (v33)
    {
      sub_22A4DB70C();

      v34 = *(v5 + 56);
      v34(v25, 0, 1, v4);
    }

    else
    {
      v34 = *(v5 + 56);
      v34(v25, 1, 1, v4);
    }

    v37 = v48;
    sub_2296692F8(v25, v49);
    v38 = sub_22A4DD5AC();
    v39 = [v32 dateForKey_];

    if (v39)
    {
      sub_22A4DB70C();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v34(v20, v40, 1, v4);
    sub_2296692F8(v20, v37);
    sub_229564F88(v49, v17, &unk_27D881AA0, &qword_22A57BC20);
    v41 = *(v5 + 48);
    if (v41(v17, 1, v4) == 1)
    {
      sub_22953EAE4(v17, &unk_27D881AA0, &qword_22A57BC20);
    }

    else
    {
      v42 = v46;
      (*(v5 + 32))(v46, v17, v4);
      sub_22A4DBF7C();
      (*(v5 + 8))(v42, v4);
    }

    v43 = v47;
    sub_229564F88(v37, v47, &unk_27D881AA0, &qword_22A57BC20);
    if (v41(v43, 1, v4) == 1)
    {
      sub_22953EAE4(v43, &unk_27D881AA0, &qword_22A57BC20);
    }

    else
    {
      v44 = v45[0];
      (*(v5 + 32))(v45[0], v43, v4);
      sub_22A4DBF6C();
      (*(v5 + 8))(v44, v4);
    }

    [v32 respondWithSuccess];

    sub_22953EAE4(v37, &unk_27D881AA0, &qword_22A57BC20);
    sub_22953EAE4(v49, &unk_27D881AA0, &qword_22A57BC20);
  }

  else
  {
    swift_unknownObjectRelease();
    v35 = [v2 notEnabledError];
    v49 = sub_22A4DB3DC();

    [a1 respondWithError_];
    v36 = v49;
  }
}

void sub_2298402E0(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = [v2 legacyCountersManager];
  v6 = [v5 delegate];

  _s16CoreDataDelegateCMa();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + 24);

    swift_unknownObjectRelease();
    v9 = sub_22A4DD5AC();
    v10 = [a1 stringForKey_];

    if (v10)
    {
      v11 = sub_22A4DD5EC();
      v13 = v12;

      a2(v11, v13);

      [a1 respondWithSuccess];

      return;
    }

    v15 = [v2 ephemeralContainNameRequiredError];
    v16 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = [v2 notEnabledError];
    v16 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

void sub_229840550(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  v5 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = sub_22A4DD5AC();
    v7 = [a1 stringForKey_];

    v8 = [v1 userDefaults];
    v9 = v8;
    if (v7)
    {
      [v8 setObject:v7 forKey:@"HMDStartupEphemeralContainer"];

      v9 = v7;
    }

    else
    {
      [v8 removeObjectForKey_];
    }

    [a1 respondWithSuccess];
  }

  else
  {
    v10 = [v1 notEnabledError];
    v11 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

void sub_22984076C(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    v55 = [v1 notEnabledError];
    v63 = sub_22A4DB3DC();

    [a1 respondWithError_];

    return;
  }

  v58 = a1;
  v6 = *(v5 + 24);

  swift_unknownObjectRelease();
  v7 = sub_22A4DBFAC();
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v59 = v7;

  v13 = 0;
  for (i = MEMORY[0x277D84F98]; ; i = v28)
  {
    if (!v11)
    {
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22A576180;
          *(inited + 32) = 0xD000000000000013;
          *(inited + 40) = 0x800000022A5986D0;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881A98, &qword_22A585810);
          *(inited + 48) = i;

          sub_22956AC5C(inited);
          swift_setDeallocating();
          sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          v54 = sub_22A4DD47C();

          [v58 respondWithPayload_];

          return;
        }

        v11 = *(v8 + 8 * v15);
        ++v13;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v15 = v13;
LABEL_13:
    v16 = __clz(__rbit64(v11)) | (v15 << 6);
    v17 = (*(v59 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v59 + 56) + 8 * v16);

    v60 = v20;
    v61 = sub_22A4DC12C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v18;
    v23 = sub_229543DBC(v18, v19);
    v24 = *(i + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_45;
    }

    v27 = v22;
    if (*(i + 24) >= v26)
    {
      break;
    }

    sub_229897420(v26, isUniquelyReferenced_nonNull_native);
    v28 = i;
    v29 = v62;
    v30 = sub_229543DBC(v62, v19);
    if ((v27 & 1) != (v31 & 1))
    {
      goto LABEL_48;
    }

    v23 = v30;
LABEL_20:
    v11 &= v11 - 1;
    if (v27)
    {
      *(*(v28 + 56) + v23) = v61 & 1;
    }

    else
    {
      *(v28 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v32 = (*(v28 + 48) + 16 * v23);
      *v32 = v29;
      v32[1] = v19;
      *(*(v28 + 56) + v23) = v61 & 1;
      v33 = *(v28 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_46;
      }

      *(v28 + 16) = v35;
    }

    v13 = v15;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v28 = i;
LABEL_19:
    v29 = v62;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882070, &qword_22A586C60);
  v36 = sub_22A4DE3DC();
  v28 = v36;
  if (!*(i + 16))
  {
LABEL_39:

    goto LABEL_19;
  }

  v37 = (v36 + 64);
  v38 = (i + 64);
  v39 = ((1 << *(v28 + 32)) + 63) >> 6;
  if (v28 != i || v37 >= &v38[8 * v39])
  {
    memmove(v37, v38, 8 * v39);
  }

  v40 = 0;
  *(v28 + 16) = *(i + 16);
  v41 = 1 << *(i + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(i + 64);
  v44 = (v41 + 63) >> 6;
  v56 = v44;
  if (v43)
  {
    do
    {
      v45 = __clz(__rbit64(v43));
      v57 = (v43 - 1) & v43;
LABEL_37:
      v48 = v45 | (v40 << 6);
      v49 = (*(i + 48) + 16 * v48);
      v51 = *v49;
      v50 = v49[1];
      LOBYTE(v49) = *(*(i + 56) + v48);
      v52 = (*(v28 + 48) + 16 * v48);
      *v52 = v51;
      v52[1] = v50;
      *(*(v28 + 56) + v48) = v49;

      v44 = v56;
      v43 = v57;
    }

    while (v57);
  }

  v46 = v40;
  while (1)
  {
    v40 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v40 >= v44)
    {
      goto LABEL_39;
    }

    v47 = *(i + 64 + 8 * v40);
    ++v46;
    if (v47)
    {
      v45 = __clz(__rbit64(v47));
      v57 = (v47 - 1) & v47;
      goto LABEL_37;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  sub_22A4DE67C();
  __break(1u);
}

uint64_t sub_229840D40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v122 = a5;
  v123 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881420, qword_22A583C08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v118 - v10;
  v12 = sub_22A4DC09C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v118 - v22;
  if ((sub_22983E3B4(a1) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v120 = v13;
  v24 = _s11GroupFilterVMa();
  v25 = (a3 + *(v24 + 44));
  v26 = v25[1];
  v121 = a1;
  v124 = a2;
  if (!v26)
  {
    v120 = *(v24 + 40);
    sub_229564F88(a3 + v120, v23, &unk_27D881AA0, &qword_22A57BC20);
    v31 = sub_22A4DB74C();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    v34 = v33(v23, 1, v31);
    sub_22953EAE4(v23, &unk_27D881AA0, &qword_22A57BC20);
    if (v34 == 1)
    {
      v35 = v124;
      v36 = sub_22A4DBE7C();
      v37 = v36;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AB0, &qword_22A578548);
      v88 = *(v32 + 72);
      v89 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_22A576180;
      sub_229564F88(a3 + v120, v21, &unk_27D881AA0, &qword_22A57BC20);
      result = v33(v21, 1, v31);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v36 = (*(v32 + 32))(v37 + v89, v21, v31);
      v35 = v124;
    }

    MEMORY[0x28223BE20](v36);
    *(&v118 - 6) = a3;
    *(&v118 - 5) = v35;
    v91 = v123;
    *(&v118 - 4) = v122;
    *(&v118 - 3) = v91;
    *(&v118 - 2) = v92;
    v93 = sub_229716E90(sub_229843EE8, (&v118 - 8), v37);

    return v93;
  }

  v27 = *v25;
  v123 = a3[7];
  if (v123)
  {
    v28 = a3[6];

    v29 = sub_22A4DBE9C();
    if ((v30 & 1) == 0)
    {
      v39 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AD8, &qword_22A585830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = v28;
      v41 = inited + 32;
      *(inited + 40) = v123;
      *(inited + 48) = v39;
      v122 = sub_22956BB80(inited);
      swift_setDeallocating();
      sub_22953EAE4(v41, &unk_27D881AE0, &qword_22A585838);
      v38 = a3[9];
      if (!v38)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v122 = 0;
  v38 = a3[9];
  if (!v38)
  {
LABEL_14:
    v119 = 0;
    v45 = a3[11];
    if (v45)
    {
      goto LABEL_15;
    }

LABEL_18:
    v48 = 0;
    goto LABEL_20;
  }

LABEL_12:
  v42 = a3[8];

  v43 = sub_22A4DBEEC();
  if (v44)
  {

    goto LABEL_14;
  }

  v49 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AC8, &qword_22A585820);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_22A576180;
  v118 = v27;
  *(v50 + 32) = v42;
  v51 = v50 + 32;
  *(v50 + 40) = v38;
  *(v50 + 48) = v49;
  v119 = sub_22956BC7C(v50);
  swift_setDeallocating();
  v52 = v51;
  v27 = v118;
  sub_22953EAE4(v52, &qword_27D881AD0, &qword_22A585828);
  v45 = a3[11];
  if (!v45)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = a3[10];

  sub_22A4DBE2C();
  v47 = v120;
  if ((*(v120 + 48))(v11, 1, v12) == 1)
  {

    sub_22953EAE4(v11, &qword_27D881420, qword_22A583C08);
    v48 = 0;
  }

  else
  {
    (*(v47 + 32))(v16, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AB8, &qword_22A585818);
    v118 = v27;
    v53 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDC0, &qword_22A577C38) - 8);
    v54 = *(*v53 + 72);
    v55 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_22A576180;
    v57 = (v56 + v55);
    v58 = v53[14];
    *v57 = v46;
    *(v57 + 1) = v45;
    (*(v47 + 16))(&v57[v58], v16, v12);
    v48 = sub_22956BD80(v56);
    swift_setDeallocating();
    sub_22953EAE4(v57, &qword_27D87CDC0, &qword_22A577C38);
    v27 = v118;
    swift_deallocClassInstance();
    (*(v47 + 8))(v16, v12);
  }

LABEL_20:
  v59 = v119;
  v60 = v122;
  if (v38 | v123 | v45)
  {
    if (v122 && *(v122 + 16))
    {
      goto LABEL_29;
    }
  }

  else
  {

    v60 = sub_22A4DBECC();
    v61 = v27;
    v62 = sub_22A4DBF0C();

    v63 = sub_22A4DBE4C();

    v48 = v63;
    v59 = v62;
    v27 = v61;
    if (*(v60 + 16))
    {
      goto LABEL_29;
    }
  }

  if ((!v59 || !*(v59 + 16)) && (!v48 || !*(v48 + 16)))
  {

    return MEMORY[0x277D84F90];
  }

LABEL_29:
  v129 = MEMORY[0x277D837D0];
  v128[0] = v27;
  v128[1] = v26;
  sub_229543C58(v128, v126);
  v64 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = v64;
  v66 = v127;
  v67 = __swift_mutable_project_boxed_opaque_existential_0(v126, v127);
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = (&v118 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  sub_2297FE940(*v70, v70[1], 0x656E6961746E6F63, 0xE900000000000072, isUniquelyReferenced_nonNull_native, &v125);
  __swift_destroy_boxed_opaque_existential_0(v126);
  v72 = v125;
  v73 = sub_229844088(v121);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815B0, &qword_22A584538);
  v128[0] = v73;
  sub_229543C58(v128, v126);
  LOBYTE(v73) = swift_isUniquelyReferenced_nonNull_native();
  v125 = v72;
  v74 = v127;
  v75 = __swift_mutable_project_boxed_opaque_existential_0(v126, v127);
  v76 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = (&v118 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v79 + 16))(v78);
  sub_2297FF234(*v78, 0x7470697263736564, 0xEA0000000000726FLL, v73, &v125);
  __swift_destroy_boxed_opaque_existential_0(v126);
  v80 = v125;
  if (v60)
  {
    if (*(v60 + 16))
    {
      v81 = sub_22983D390(v60);

      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      v128[0] = v81;
      sub_229543C58(v128, v126);
      LOBYTE(v81) = swift_isUniquelyReferenced_nonNull_native();
      v125 = v80;
      v82 = v127;
      v83 = __swift_mutable_project_boxed_opaque_existential_0(v126, v127);
      v84 = *(*(v82 - 8) + 64);
      MEMORY[0x28223BE20](v83);
      v86 = (&v118 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v87 + 16))(v86);
      sub_2297FED58(*v86, 0x737265746E756F63, 0xE800000000000000, v81, &v125);
      __swift_destroy_boxed_opaque_existential_0(v126);
      v80 = v125;
      if (!v59)
      {
        goto LABEL_42;
      }

LABEL_40:
      if (*(v59 + 16))
      {
        v94 = sub_22983CF80(v59);
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        v128[0] = v94;
        sub_229543C58(v128, v126);
        LOBYTE(v94) = swift_isUniquelyReferenced_nonNull_native();
        v125 = v80;
        v95 = v127;
        v96 = __swift_mutable_project_boxed_opaque_existential_0(v126, v127);
        v97 = *(*(v95 - 8) + 64);
        MEMORY[0x28223BE20](v96);
        v99 = (&v118 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v100 + 16))(v99);
        sub_2297FED58(*v99, 0x6E6F697461727564, 0xE900000000000073, v94, &v125);
        __swift_destroy_boxed_opaque_existential_0(v126);
        v80 = v125;
      }

      goto LABEL_42;
    }
  }

  if (v59)
  {
    goto LABEL_40;
  }

LABEL_42:
  if (v48)
  {
    if (*(v48 + 16))
    {
      v101 = sub_2298444E0(v48, sub_2298433F0);
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      v129 = v102;
      v128[0] = v101;
      sub_229543C58(v128, v126);
      LOBYTE(v101) = swift_isUniquelyReferenced_nonNull_native();
      v125 = v80;
      v103 = v127;
      v104 = __swift_mutable_project_boxed_opaque_existential_0(v126, v127);
      v105 = *(*(v103 - 8) + 64);
      MEMORY[0x28223BE20](v104);
      v107 = (&v118 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v108 + 16))(v107);
      sub_2297FED58(*v107, 0x7562697274736964, 0xED0000736E6F6974, v101, &v125);
      __swift_destroy_boxed_opaque_existential_0(v126);
      v109 = v125;
      v110 = sub_2298444E0(v48, sub_229843668);
      v129 = v102;
      v128[0] = v110;
      sub_229543C58(v128, v126);
      LOBYTE(v102) = swift_isUniquelyReferenced_nonNull_native();
      v125 = v109;
      v111 = v127;
      v112 = __swift_mutable_project_boxed_opaque_existential_0(v126, v127);
      v113 = *(*(v111 - 8) + 64);
      MEMORY[0x28223BE20](v112);
      v115 = (&v118 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v116 + 16))(v115);
      sub_2297FED58(*v115, 0x6974736974617473, 0xEA00000000007363, v102, &v125);
      __swift_destroy_boxed_opaque_existential_0(v126);
      v80 = v125;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D380, &unk_22A578500);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_22A576180;
  *(v117 + 32) = v80;

  return v117;
}

uint64_t sub_229841C90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v108 = a5;
  v107 = a4;
  v109 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881420, qword_22A583C08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v104 - v12;
  v106 = sub_22A4DC09C();
  v112 = *(v106 - 8);
  v14 = *(v112 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[7];
  v114 = a1;
  v111 = v6;
  v113 = a3;
  v110 = v16;
  if (v16)
  {
    v17 = a2[6];

    v18 = sub_22A4DBEAC();
    if (v19)
    {

      v20 = 0;
    }

    else
    {
      v21 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AD8, &qword_22A585830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = v17;
      v23 = inited + 32;
      *(inited + 40) = v16;
      *(inited + 48) = v21;
      v20 = sub_22956BB80(inited);
      swift_setDeallocating();
      sub_22953EAE4(v23, &unk_27D881AE0, &qword_22A585838);
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = v112;
  v25 = a2[9];
  if (v25)
  {
    v26 = a2[8];
    v27 = a2[9];

    v28 = sub_22A4DBEFC();
    if (v29)
    {

      v30 = 0;
    }

    else
    {
      v33 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AC8, &qword_22A585820);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_22A576180;
      v35 = v20;
      *(v34 + 32) = v26;
      v36 = v34 + 32;
      *(v34 + 40) = v25;
      *(v34 + 48) = v33;
      v30 = sub_22956BC7C(v34);
      v24 = v112;
      swift_setDeallocating();
      v37 = v36;
      v20 = v35;
      sub_22953EAE4(v37, &qword_27D881AD0, &qword_22A585828);
    }

    v31 = a2[11];
    if (v31)
    {
      goto LABEL_13;
    }

LABEL_10:
    v32 = 0;
    goto LABEL_16;
  }

  v30 = 0;
  v31 = a2[11];
  if (!v31)
  {
    goto LABEL_10;
  }

LABEL_13:
  v38 = a2[10];

  sub_22A4DBE3C();
  v39 = v106;
  if ((*(v24 + 48))(v13, 1, v106) == 1)
  {

    sub_22953EAE4(v13, &qword_27D881420, qword_22A583C08);
    v32 = 0;
  }

  else
  {
    v40 = v105;
    (*(v24 + 32))(v105, v13, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AB8, &qword_22A585818);
    v112 = v20;
    v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDC0, &qword_22A577C38) - 8);
    v42 = *(*v41 + 72);
    v43 = *(*v41 + 80);
    v104 = v30;
    v44 = (v43 + 32) & ~v43;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_22A576180;
    v46 = (v45 + v44);
    v47 = v41[14];
    *v46 = v38;
    *(v46 + 1) = v31;
    (*(v24 + 16))(&v46[v47], v40, v39);
    v32 = sub_22956BD80(v45);
    swift_setDeallocating();
    v48 = v46;
    v30 = v104;
    sub_22953EAE4(v48, &qword_27D87CDC0, &qword_22A577C38);
    v20 = v112;
    swift_deallocClassInstance();
    (*(v24 + 8))(v40, v39);
  }

LABEL_16:
  if (v25 | v110 | v31)
  {
    if (v20 && *(v20 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {

    v20 = sub_22A4DBEDC();
    v49 = sub_22A4DBF1C();

    v50 = sub_22A4DBE5C();

    v32 = v50;
    v30 = v49;
    if (*(v20 + 16))
    {
      goto LABEL_25;
    }
  }

  if (!v30 || !*(v30 + 16))
  {
    if (v32)
    {
      if (*(v32 + 16))
      {
        goto LABEL_25;
      }
    }

    v72 = 0;
    goto LABEL_40;
  }

LABEL_25:
  v51 = sub_22A4DB6AC();
  v52 = [v107 stringFromDate_];

  v53 = sub_22A4DD5EC();
  v54 = v20;
  v56 = v55;

  v118 = MEMORY[0x277D837D0];
  v117[0] = v53;
  v117[1] = v56;
  sub_229543C58(v117, v115);
  v57 = MEMORY[0x277D84F98];
  LOBYTE(v52) = swift_isUniquelyReferenced_nonNull_native();
  v119 = v57;
  v58 = v116;
  v59 = __swift_mutable_project_boxed_opaque_existential_0(v115, v116);
  v60 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v104 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  sub_2297FE940(*v62, v62[1], 0x6F69746974726170, 0xE90000000000006ELL, v52, &v119);
  __swift_destroy_boxed_opaque_existential_0(v115);
  v64 = v119;
  v65 = sub_229844088(v108);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815B0, &qword_22A584538);
  v117[0] = v65;
  sub_229543C58(v117, v115);
  LOBYTE(v65) = swift_isUniquelyReferenced_nonNull_native();
  v119 = v64;
  v66 = v116;
  v67 = __swift_mutable_project_boxed_opaque_existential_0(v115, v116);
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = (&v104 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  sub_2297FF234(*v70, 0x7470697263736564, 0xEA0000000000726FLL, v65, &v119);
  __swift_destroy_boxed_opaque_existential_0(v115);
  v72 = v119;
  if (v54)
  {
    if (!*(v54 + 16))
    {

      if (!v30)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v73 = sub_22983D390(v54);

    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v117[0] = v73;
    sub_229543C58(v117, v115);
    LOBYTE(v73) = swift_isUniquelyReferenced_nonNull_native();
    v119 = v72;
    v74 = v116;
    v75 = __swift_mutable_project_boxed_opaque_existential_0(v115, v116);
    v76 = *(*(v74 - 8) + 64);
    MEMORY[0x28223BE20](v75);
    v78 = (&v104 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v79 + 16))(v78);
    sub_2297FED58(*v78, 0x737265746E756F63, 0xE800000000000000, v73, &v119);
    __swift_destroy_boxed_opaque_existential_0(v115);
    v72 = v119;
  }

  if (!v30)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (*(v30 + 16))
  {
    v80 = sub_22983CF80(v30);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v117[0] = v80;
    sub_229543C58(v117, v115);
    LOBYTE(v80) = swift_isUniquelyReferenced_nonNull_native();
    v119 = v72;
    v81 = v116;
    v82 = __swift_mutable_project_boxed_opaque_existential_0(v115, v116);
    v83 = *(*(v81 - 8) + 64);
    MEMORY[0x28223BE20](v82);
    v85 = (&v104 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v86 + 16))(v85);
    sub_2297FED58(*v85, 0x6E6F697461727564, 0xE900000000000073, v80, &v119);
    __swift_destroy_boxed_opaque_existential_0(v115);
    v72 = v119;
  }

LABEL_31:
  if (!v32)
  {
LABEL_37:

    goto LABEL_40;
  }

  if (!*(v32 + 16))
  {

    goto LABEL_37;
  }

  v87 = sub_2298444E0(v32, sub_2298433F0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  v118 = v88;
  v117[0] = v87;
  sub_229543C58(v117, v115);
  LOBYTE(v87) = swift_isUniquelyReferenced_nonNull_native();
  v119 = v72;
  v89 = v116;
  v90 = __swift_mutable_project_boxed_opaque_existential_0(v115, v116);
  v91 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v93 = (&v104 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v94 + 16))(v93);
  sub_2297FED58(*v93, 0x7562697274736964, 0xED0000736E6F6974, v87, &v119);
  __swift_destroy_boxed_opaque_existential_0(v115);
  v95 = v119;
  v96 = sub_2298444E0(v32, sub_229843668);
  v118 = v88;
  v117[0] = v96;
  sub_229543C58(v117, v115);
  LOBYTE(v88) = swift_isUniquelyReferenced_nonNull_native();
  v119 = v95;
  v97 = v116;
  v98 = __swift_mutable_project_boxed_opaque_existential_0(v115, v116);
  v99 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = (&v104 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v102 + 16))(v101);
  sub_2297FED58(*v101, 0x6974736974617473, 0xEA00000000007363, v88, &v119);

  result = __swift_destroy_boxed_opaque_existential_0(v115);
  v72 = v119;
LABEL_40:
  *v109 = v72;
  return result;
}

unint64_t sub_2298429B0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() productInfo];
  v4 = [objc_allocWithZone(MEMORY[0x277D0F910]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22A577B20;
  *(v5 + 32) = 0x646C697562;
  *(v5 + 40) = 0xE500000000000000;
  v6 = [v3 softwareVersion];
  v7 = [v6 buildVersion];

  if (v7)
  {
    v8 = sub_22A4DD5EC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  *(v5 + 48) = v8;
  *(v5 + 56) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = 0x6C65646F6DLL;
  *(v5 + 88) = 0xE500000000000000;
  v12 = [v3 modelIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22A4DD5EC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v5 + 96) = v14;
  *(v5 + 104) = v16;
  *(v5 + 120) = v11;
  strcpy((v5 + 128), "serialNumber");
  *(v5 + 141) = 0;
  *(v5 + 142) = -5120;
  v17 = [v4 serialNumber];
  if (v17)
  {
    v18 = v17;
    v19 = sub_22A4DD5EC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(v5 + 144) = v19;
  *(v5 + 152) = v21;
  *(v5 + 168) = v11;
  *(v5 + 176) = 0x6D726F6674616C70;
  *(v5 + 184) = 0xE800000000000000;
  [v3 productPlatform];
  v22 = HMFProductPlatformToString();
  if (v22)
  {
    v23 = v22;
    v24 = sub_22A4DD5EC();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(v5 + 192) = v24;
  *(v5 + 200) = v26;
  *(v5 + 216) = v11;
  strcpy((v5 + 224), "isHH2Enabled");
  *(v5 + 237) = 0;
  *(v5 + 238) = -5120;
  v27 = MEMORY[0x277D839B0];
  *(v5 + 264) = MEMORY[0x277D839B0];
  *(v5 + 240) = 1;
  v28 = sub_22956AC5C(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = [v2 cachedConfiguration];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 totalHomes];
    v32 = MEMORY[0x277D83B88];
    v99 = MEMORY[0x277D83B88];
    v98[0] = v31;
    sub_229543C58(v98, v96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v28;
    v34 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v34, 0x6D6F486C61746F74, 0xEA00000000007365, isUniquelyReferenced_nonNull_native, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v35 = v95;
    v36 = [v30 totalUsers];
    v99 = v32;
    v98[0] = v36;
    sub_229543C58(v98, v96);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v35;
    v38 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v38, 0x6573556C61746F74, 0xEA00000000007372, v37, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v39 = v95;
    v40 = [v30 totalAccessories];
    v99 = v32;
    v98[0] = v40;
    sub_229543C58(v98, v96);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v39;
    v42 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v42, 0xD000000000000010, 0x800000022A598780, v41, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v43 = v95;
    v44 = [v30 totalHAPAccessories];
    v99 = v32;
    v98[0] = v44;
    sub_229543C58(v98, v96);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v43;
    v46 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v46, 0xD000000000000013, 0x800000022A5987A0, v45, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v47 = v95;
    v48 = [v30 totalCHIPAccessories];
    v99 = v32;
    v98[0] = v48;
    sub_229543C58(v98, v96);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v47;
    v50 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v50, 0xD000000000000016, 0x800000022A5987C0, v49, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v51 = v95;
    v52 = [v30 totalThreadAccessories];
    v99 = v32;
    v98[0] = v52;
    sub_229543C58(v98, v96);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v51;
    v54 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v54, 0xD000000000000016, 0x800000022A5987E0, v53, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v55 = v95;
    v56 = [v30 totalCameraAccessories];
    v99 = v32;
    v98[0] = v56;
    sub_229543C58(v98, v96);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v55;
    v58 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v58, 0xD000000000000016, 0x800000022A598800, v57, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v59 = v95;
    v60 = [v30 totalAppleAudioAccessories];
    v99 = v32;
    v98[0] = v60;
    sub_229543C58(v98, v96);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v59;
    v62 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v62, 0xD00000000000001ALL, 0x800000022A598820, v61, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v63 = v95;
    v64 = [v30 totalAppleTVAccessories];
    v99 = v32;
    v98[0] = v64;
    sub_229543C58(v98, v96);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v63;
    v66 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v66, 0xD000000000000017, 0x800000022A598840, v65, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v67 = v95;
    v68 = [v30 totalScenes];
    v99 = v32;
    v98[0] = v68;
    sub_229543C58(v98, v96);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v67;
    v70 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v70, 0x6563536C61746F74, 0xEB0000000073656ELL, v69, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v71 = v95;
    v72 = [v30 totalTriggers];
    v99 = v32;
    v98[0] = v72;
    sub_229543C58(v98, v96);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v71;
    v74 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v74, 0x6972546C61746F74, 0xED00007372656767, v73, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v75 = v95;
    v76 = [v30 totalWidgets];
    v99 = v32;
    v98[0] = v76;
    sub_229543C58(v98, v96);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v75;
    v78 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FF0D4(*v78, 0x6469576C61746F74, 0xEC00000073746567, v77, &v95);
    __swift_destroy_boxed_opaque_existential_0(v96);
    v79 = v95;
    v80 = [v30 isFMFDevice];
    v99 = v27;
    LOBYTE(v98[0]) = v80;
    sub_229543C58(v98, v96);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v79;
    v82 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
    sub_2297FEF7C(*v82, 0x766544464D467369, 0xEB00000000656369, v81, &v95);

    __swift_destroy_boxed_opaque_existential_0(v96);
    v28 = v95;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v83 = [v2 legacyCountersManager];
  v84 = [v83 delegate];

  _s16CoreDataDelegateCMa();
  v85 = swift_dynamicCastClass();
  if (!v85)
  {

    swift_unknownObjectRelease();
    return v28;
  }

  v86 = *(v85 + 24);

  swift_unknownObjectRelease();
  v87 = sub_22A4DBF9C();
  if (!v87)
  {

LABEL_21:

    return v28;
  }

  v88 = v87;
  sub_22A4DC11C();
  v90 = lround(v89);
  v99 = MEMORY[0x277D83B88];
  v98[0] = v90;
  sub_229543C58(v98, v96);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v28;
  v92 = __swift_mutable_project_boxed_opaque_existential_0(v96, v97);
  sub_2297FF0D4(*v92, 0x6E6F697461727564, 0xEC00000073636553, v91, &v95);

  __swift_destroy_boxed_opaque_existential_0(v96);
  return v95;
}

unint64_t sub_2298433F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DC03C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  if (v4)
  {
    *(inited + 16) = xmmword_22A57CFE0;
    *(inited + 32) = 1701667182;
    v6 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v6;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v7 = sub_22A4DC07C();
    v8 = MEMORY[0x277D83B88];
    *(inited + 96) = v7;
    *(inited + 120) = v8;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_22A4DC06C();
    *(inited + 168) = v8;
    *(inited + 176) = 0x65676172657661;
    *(inited + 184) = 0xE700000000000000;
    sub_22A4DC04C();
    v9 = MEMORY[0x277D839F8];
    *(inited + 192) = v10;
    *(inited + 216) = v9;
    *(inited + 224) = 0x746E756F63;
    *(inited + 232) = 0xE500000000000000;
    *(inited + 240) = sub_22A4DC03C();
    *(inited + 264) = v8;
    *(inited + 272) = 0x65636E6169726176;
    *(inited + 280) = 0xE800000000000000;
    sub_22A4DC08C();
    *(inited + 288) = v11;
    *(inited + 312) = v9;
    *(inited + 320) = 0x766564647473;
    *(inited + 328) = 0xE600000000000000;
    sub_22A4DC05C();
    *(inited + 360) = v9;
    *(inited + 336) = v12;
  }

  else
  {
    *(inited + 16) = xmmword_22A5779B0;
    *(inited + 32) = 1701667182;
    v14 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v14;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v15 = sub_22A4DC07C();
    v16 = MEMORY[0x277D83B88];
    *(inited + 96) = v15;
    *(inited + 120) = v16;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_22A4DC06C();
    *(inited + 168) = v16;
    *(inited + 176) = 0x746E756F63;
    *(inited + 184) = 0xE500000000000000;
    v17 = sub_22A4DC03C();
    *(inited + 216) = v16;
    *(inited + 192) = v17;
  }

  v13 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v13;
}

unint64_t sub_229843668(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DC03C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  if (v4)
  {
    *(inited + 16) = xmmword_22A577B20;
    strcpy((inited + 32), "statisticsName");
    v6 = MEMORY[0x277D837D0];
    *(inited + 47) = -18;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v6;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v7 = sub_22A4DC07C();
    v8 = MEMORY[0x277D83B88];
    *(inited + 96) = v7;
    *(inited + 120) = v8;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_22A4DC06C();
    *(inited + 168) = v8;
    *(inited + 176) = 0x65676172657661;
    *(inited + 184) = 0xE700000000000000;
    sub_22A4DC04C();
    v9 = MEMORY[0x277D839F8];
    *(inited + 192) = v10;
    *(inited + 216) = v9;
    *(inited + 224) = 0x746E756F63;
    *(inited + 232) = 0xE500000000000000;
    v11 = sub_22A4DC03C();
    *(inited + 264) = v8;
    *(inited + 240) = v11;
  }

  else
  {
    *(inited + 16) = xmmword_22A5779B0;
    strcpy((inited + 32), "statisticsName");
    v13 = MEMORY[0x277D837D0];
    *(inited + 47) = -18;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v13;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v14 = sub_22A4DC07C();
    v15 = MEMORY[0x277D83B88];
    *(inited + 96) = v14;
    *(inited + 120) = v15;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_22A4DC06C();
    *(inited + 168) = v15;
    *(inited + 176) = 0x746E756F63;
    *(inited + 184) = 0xE500000000000000;
    v16 = sub_22A4DC03C();
    *(inited + 216) = v15;
    *(inited + 192) = v16;
  }

  v12 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v12;
}

id sub_2298438AC(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver_eventBuilders;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B18, &qword_22A585868);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22A576180;
  *(v5 + 56) = &type metadata for TemperatureHumidityReadWriteLogEvent.Builder;
  *(v5 + 64) = &off_283CE81B0;
  *&a2[v4] = v5;
  v6 = [a1 logEventSubmitter];
  *&a2[OBJC_IVAR____TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver_logEventSubmitter] = v6;
  v10.receiver = a2;
  v10.super_class = type metadata accessor for CharacteristicReadWriteLogEventObserver();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = [a1 logEventDispatcher];
  sub_229562F68(0, &qword_281401800, off_2786660C8);
  [v8 addObserver:v7 forEventClass:swift_getObjCClassFromMetadata()];

  swift_unknownObjectRelease();
  return v7;
}

id sub_2298439DC(void *a1, uint64_t a2, void *a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_dataSource] = a1;
  *&a4[OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_countersManager] = a2;
  *&a4[OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_logEventDispatcher] = a3;
  v11.receiver = a4;
  v11.super_class = type metadata accessor for CleanEnergyAutomationConfigurationLogEventFactory();
  v6 = a1;

  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v11, sel_init);
  type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  [a3 addObserver:v9 forEventClass:{ObjCClassFromMetadata, v11.receiver, v11.super_class}];

  swift_unknownObjectRelease();
  return v9;
}

id sub_229843ACC()
{
  v0 = sub_22A4DC10C();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22A4DD9DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DC16C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DC15C();
  sub_22A4DD96C();
  v14 = sub_22A4DC14C();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  sub_22A4DC0FC();
  v15 = sub_22A4DC0EC();
  (*(v20 + 8))(v3, v21);
  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881A78, &qword_22A585800);
  v24[4] = sub_229590C00(&unk_281401D10, &unk_27D881A78, &qword_22A585800);
  v24[0] = v14;
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881A88, &qword_22A585808);
  v23[4] = sub_229590C00(qword_281401D20, &unk_27D881A88, &qword_22A585808);
  v23[0] = v15;
  v16 = _s9SwiftDataCMa();
  v17 = objc_allocWithZone(v16);
  sub_22957F1C4(v24, v17 + OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDMetricsManager9SwiftData_repeatingScheduler);
  sub_22957F1C4(v23, v17 + OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDMetricsManager9SwiftData_dailyScheduler);
  v22.receiver = v17;
  v22.super_class = v16;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v18;
}

uint64_t _s11GroupFilterVMa()
{
  result = qword_27D881B20;
  if (!qword_27D881B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229843E8C(uint64_t a1)
{
  v2 = _s11GroupFilterVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229843F0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_229543DBC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_229897178(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_229543DBC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22989A2E0();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_229844088(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AF8, &qword_22A585848);
  v2 = *(*(v62 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v62);
  v70 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v71 = &v57 - v7;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v60 = v6 + 8;
  v61 = v6;
  v12 = (v9 + 63) >> 6;
  v63 = a1;

  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v58 = v12;
  v59 = a1 + 64;
  while (v11)
  {
    v69 = v14;
LABEL_12:
    v19 = __clz(__rbit64(v11)) | (v13 << 6);
    v20 = v63;
    v21 = *(v63 + 48);
    v22 = sub_22A4DC02C();
    v68 = *(v22 - 8);
    v23 = v71;
    (*(v68 + 16))(v71, v21 + *(v68 + 72) * v19, v22);
    v24 = (*(v20 + 56) + 16 * v19);
    v25 = *v24;
    v26 = v24[1];
    v27 = v61;
    v28 = v62;
    v29 = (v23 + *(v62 + 48));
    *v29 = v25;
    v29[1] = v26;
    sub_229564F88(v23, v27, &unk_27D881AF8, &qword_22A585848);
    v30 = *(v60 + *(v28 + 48));

    v31 = sub_22A4DC01C();
    v67 = v32;
    v64 = *(v68 + 8);
    v65 = v22;
    v64(v27, v22);
    v33 = v70;
    v34 = v31;
    v35 = v67;
    sub_229564F88(v23, v70, &unk_27D881AF8, &qword_22A585848);
    v36 = (v33 + *(v28 + 48));
    v38 = *v36;
    v37 = v36[1];
    v66 = v38;
    v68 = v37;
    v39 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v39;
    v42 = sub_229543DBC(v34, v35);
    v43 = v39[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_25;
    }

    v46 = v41;
    if (v39[3] >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v41)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_22989A450();
        if (v46)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_2298976C0(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_229543DBC(v34, v35);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_27;
      }

      v42 = v47;
      if (v46)
      {
LABEL_4:

        v14 = v72;
        v15 = (v72[7] + 16 * v42);
        v16 = v15[1];
        v17 = v68;
        *v15 = v66;
        v15[1] = v17;

        sub_22953EAE4(v71, &unk_27D881AF8, &qword_22A585848);
        goto LABEL_5;
      }
    }

    v49 = v71;
    v14 = v72;
    v72[(v42 >> 6) + 8] |= 1 << v42;
    v50 = (v14[6] + 16 * v42);
    *v50 = v34;
    v50[1] = v35;
    v51 = (v14[7] + 16 * v42);
    v52 = v68;
    *v51 = v66;
    v51[1] = v52;
    sub_22953EAE4(v49, &unk_27D881AF8, &qword_22A585848);
    v53 = v14[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_26;
    }

    v14[2] = v55;
LABEL_5:
    v11 &= v11 - 1;
    v64(v70, v65);
    v12 = v58;
    v8 = v59;
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v12)
    {

      return v14;
    }

    v11 = *(v8 + 8 * v18);
    ++v13;
    if (v11)
    {
      v69 = v14;
      v13 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

uint64_t sub_2298444E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AF0, &qword_22A585840);
  v3 = *(*(v32 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v32);
  v31 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v39 = MEMORY[0x277D84F90];
  sub_229583714(0, v7, 0);
  v8 = v39;
  v9 = a1 + 64;
  v10 = -1 << *(a1 + 32);
  result = sub_22A4DE04C();
  v12 = result;
  v28 = a1 + 64;
  v29 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_14;
    }

    v36 = 1 << v12;
    v37 = v12 >> 6;
    v34 = v7;
    v35 = *(a1 + 36);
    v13 = v32;
    v14 = *(v32 + 48);
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + 16 * v12);
    v17 = *v16;
    v18 = v16[1];
    v19 = sub_22A4DC09C();
    v20 = *(v19 - 8);
    v38 = v8;
    v21 = v20;
    v22 = v30;
    (*(v20 + 16))(&v30[v14], v15 + *(v20 + 72) * v12, v19);
    v23 = v31;
    *v31 = v17;
    *(v23 + 8) = v18;
    v24 = *(v13 + 48);
    (*(v21 + 32))(v23 + v24, &v22[v14], v19);
    v8 = v38;

    v25 = v33(v17, v18, v23 + v24);
    result = sub_22953EAE4(v23, &qword_27D881AF0, &qword_22A585840);
    v39 = v8;
    v27 = *(v8 + 16);
    v26 = *(v8 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_229583714((v26 > 1), v27 + 1, 1);
      v8 = v39;
    }

    *(v8 + 16) = v27 + 1;
    *(v8 + 8 * v27 + 32) = v25;
    a1 = v29;
    if (v12 >= -(-1 << *(v29 + 32)))
    {
      goto LABEL_15;
    }

    v9 = v28;
    if ((*(v28 + 8 * v37) & v36) == 0)
    {
      goto LABEL_16;
    }

    if (v35 != *(v29 + 36))
    {
      goto LABEL_17;
    }

    result = sub_22A4DE06C();
    v12 = result;
    v7 = v34 - 1;
    if (v34 == 1)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2298447EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_22983DC20(a1, v1);
}

uint64_t sub_229844884(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229569B30;

  return sub_22983DCA0(a1, v1);
}

uint64_t sub_22984491C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22983DD20(a1, v5, v4);
}

void sub_2298449EC()
{
  sub_2295C10D0();
  if (v0 <= 0x3F)
  {
    sub_2296A9F44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_229844AA4(void *a1)
{
  result = [a1 homeManager];
  if (result)
  {
    v2 = result;
    v3 = [result capabilitiesController];

    if (v3 && (v4 = [v3 currentResidentCapabilities], v3, v4))
    {
      v5 = [v4 supportsDistributedExecutionOnAppleMediaAccessories];
      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t HMMediaRepeatState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 7105601;
      }

      return 0x746C7561666564;
    }

    return 6647375;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 6710863;
      }

      return 0x746C7561666564;
    }

    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_229844BCC()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 7105601;
      }

      return 0x746C7561666564;
    }

    return 6647375;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 6710863;
      }

      return 0x746C7561666564;
    }

    return 0x6E776F6E6B6E55;
  }
}

uint64_t *PassUpdater.shared.unsafeMutableAddressor()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  return &static PassUpdater.shared;
}

uint64_t sub_229844CA4(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return v5();
}

uint64_t sub_229844D8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229844DB0, v2, 0);
}

void sub_229844DB0()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
LABEL_2:
  if (v1 <= 5)
  {
    v3 = 5;
  }

  else
  {
    v3 = v1;
  }

  v4 = &unk_283CDBA00 + 24 * v1++;
  v5 = -v3;
  v6 = (v4 + 48);
  do
  {
    if (v5 + v1 == 1)
    {
      __break(1u);
      return;
    }

    v8 = v0[2];
    v7 = v0[3];
    v10 = *(v6 - 1);
    v9 = *v6;

    v12 = sub_22985A474(v11, v8, v7);
    if (v13)
    {
      v16 = v13;
      v17 = v12;
      v18 = v14;
      v19 = v15;
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_22958B990(0, v2[2] + 1, 1, v2);
      }

      v22 = v2[2];
      v21 = v2[3];
      if (v22 >= v21 >> 1)
      {
        v26 = sub_22958B990((v21 > 1), v22 + 1, 1, v2);
        v24 = v16;
        v2 = v26;
        v23 = v17;
      }

      else
      {
        v23 = v17;
        v24 = v16;
      }

      v2[2] = v22 + 1;
      v25 = &v2[4 * v22];
      v25[4] = v23;
      v25[5] = v24;
      v25[6] = &unk_22A585FF0;
      v25[7] = v20;
      if (v1 == 5)
      {
        goto LABEL_18;
      }

      goto LABEL_2;
    }

    ++v1;
    v6 += 3;
  }

  while (v1 != 6);
  if (v2[2])
  {
LABEL_18:
    v28 = v2[4];
    v27 = v2[5];
    v0[5] = v27;
    v30 = v2[6];
    v29 = v2[7];

    v31 = swift_allocObject();
    v0[6] = v31;
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4C0, &qword_22A578658);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_22A576180;
    v33 = swift_allocObject();
    *(v33 + 16) = &unk_22A580520;
    *(v33 + 24) = v31;
    *(v32 + 32) = v28;
    *(v32 + 40) = v27;
    *(v32 + 48) = &unk_22A586000;
    *(v32 + 56) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D881B98, &qword_22A586008);
    v34 = swift_allocObject();
    v0[7] = v34;
    *(v34 + 16) = xmmword_22A576180;
    *(v34 + 32) = 0x796D6D7564;
    *(v34 + 40) = 0xE500000000000000;
    *(v34 + 48) = v32;

    v35 = swift_task_alloc();
    v0[8] = v35;
    *v35 = v0;
    v35[1] = sub_229845154;

    runHomeUtilOnDeviceTests(_:)(v34);
    return;
  }

  v36 = v0[1];

  v36(0x6E756F6620746F6ELL, 0xE900000000000064);
}

uint64_t sub_229845154(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = v6[4];
    v10 = sub_229845310;
  }

  else
  {
    v11 = v6[7];
    v12 = v6[4];

    v6[10] = a2;
    v6[11] = a1;
    v10 = sub_2298452A0;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2298452A0()
{
  v1 = v0[5];
  v2 = v0[6];

  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_229845310()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

id sub_229845388()
{
  v0 = type metadata accessor for PassUpdater();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v2 = sub_22A4DBA1C();
  v3 = MEMORY[0x277D84F98];
  v1[14] = v2;
  v1[15] = v3;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  static PassUpdater.shared = result;
  return result;
}

id PassUpdater.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v2 = sub_22A4DBA1C();
  v3 = MEMORY[0x277D84F98];
  v1[14] = v2;
  v1[15] = v3;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static PassUpdater.shared.getter()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22984555C()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_22984562C;
  v4 = MEMORY[0x277D839B0];

  return v6(v0 + 40, &unk_22A585988, 0, v4);
}

uint64_t sub_22984562C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_229845774;
  }

  else
  {
    v6 = sub_229845758;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2298457B0()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 32) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_22984584C, v1, 0);
}

uint64_t sub_22984584C()
{
  v1 = *(*(v0 + 32) + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  *v3 = v0;
  v3[1] = sub_229845930;

  return v6(v0 + 16, &unk_22A586688, 0, v4);
}

uint64_t sub_229845930()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_229845B20;
  }

  else
  {
    v6 = sub_229845A5C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_229845A80()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    v2 = sub_22A4DE0EC();
    v6 = v0[7];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[3];

  *v3 = v2 > 0;
  v4 = v0[1];

  return v4();
}

uint64_t sub_229845CB0(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_229845D2C, a2, 0);
}

uint64_t sub_229845D2C()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_229845DFC;
  v4 = MEMORY[0x277D839B0];

  return v6(v0 + 48, &unk_22A585988, 0, v4);
}

uint64_t sub_229845DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_229845FA8;
  }

  else
  {
    v6 = sub_229845F28;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_229845F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  (*(v2 + 16))(v2, *(v0 + 48), 0);
  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229845FA8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = sub_22A4DB3DC();

  (*(v3 + 16))(v3, 0, v4);
  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t PassUpdater.updatePassOnKeychainUpdateFor(homeUUID:flow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_229846070, v3, 0);
}

uint64_t sub_229846070()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = 0;
  *(v5 + 32) = v3;
  *(v5 + 40) = 0;
  *(v5 + 48) = 1;
  *(v5 + 56) = v1;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v7 = v0;
  v7[1] = sub_22984618C;

  return v10(v0 + 2, &unk_22A5859A0, v5, v8);
}

uint64_t sub_22984618C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_2298462EC;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);

    v5 = sub_2298462B0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2298462B0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v4;
  *(v1 + 24) = v3;
  *(v1 + 40) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2298462EC()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_2298464E4(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v4[8] = a2;
  v4[9] = a4;
  v7 = sub_22A4DB7DC();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[12] = v10;
  v4[13] = _Block_copy(a3);
  sub_22A4DB79C();
  v11 = a2;

  v12 = swift_task_alloc();
  v4[14] = v12;
  *v12 = v4;
  v12[1] = sub_229846630;

  return PassUpdater.updatePassOnKeychainUpdateFor(homeUUID:flow:)((v4 + 2), v10, v11);
}

uint64_t sub_229846630()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 80);
  v9 = *(*v1 + 72);
  v10 = *(*v1 + 64);
  v11 = *v1;
  v21 = *(*v1 + 16);
  v22 = *(*v1 + 24);
  v23 = *(*v1 + 32);
  v24 = *(*v1 + 40);
  v20 = *(*v1 + 48);
  v19 = *(*v1 + 56);

  (*(v7 + 8))(v6, v8);

  v12 = *(v3 + 104);
  if (v2)
  {
    v13 = sub_22A4DB3DC();

    (v12)[2](v12, 0, 0, 0, 0, 0, 0, v13);
    _Block_release(v12);
  }

  else
  {
    sub_229562F68(0, &qword_281401930, 0x277D37FE0);
    v14 = sub_22A4DD81C();
    v15 = sub_22A4DD81C();
    (v12)[2](v12, v21, v14, v15, v24, v20, v19, 0);

    _Block_release(v12);
  }

  v16 = *(v4 + 96);

  v17 = *(v11 + 8);

  return v17();
}

uint64_t PassUpdater.updatePassFor(homeUUID:isOnboarding:ignoreCache:flow:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 58) = a4;
  *(v6 + 57) = a3;
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  return MEMORY[0x2822009F8](sub_229846980, v5, 0);
}

uint64_t sub_229846980()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 58);
  v4 = *(v0 + 57);
  v5 = *(v0 + 72);
  v6 = *(v1 + 112);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = 0;
  *(v7 + 48) = 1;
  *(v7 + 49) = v3;
  *(v7 + 56) = v1;
  v8 = *(MEMORY[0x277D0EF78] + 4);
  v12 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v9 = v0;
  v9[1] = sub_229846AB0;

  return v12(v0 + 16, &unk_22A5859B8, v7, v10);
}

uint64_t sub_229846AB0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_22985CBFC;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);

    v5 = sub_22985CBF8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229846D84(uint64_t a1, char a2, char a3, void *a4, const void *a5, uint64_t a6)
{
  v6[8] = a4;
  v6[9] = a6;
  v11 = sub_22A4DB7DC();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v6[12] = v14;
  v6[13] = _Block_copy(a5);
  sub_22A4DB79C();
  v15 = a4;

  v16 = swift_task_alloc();
  v6[14] = v16;
  *v16 = v6;
  v16[1] = sub_22985CC0C;

  return PassUpdater.updatePassFor(homeUUID:isOnboarding:ignoreCache:flow:)((v6 + 2), v14, a2, a3, v15);
}

uint64_t PassUpdater.updatePassFor(homeUUID:isOnboarding:optionsRawValue:ignoreCache:flow:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 58) = a5;
  *(v7 + 72) = a2;
  *(v7 + 80) = a4;
  *(v7 + 57) = a3;
  *(v7 + 64) = a1;
  return MEMORY[0x2822009F8](sub_229846F18, v6, 0);
}

uint64_t sub_229846F18()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 58);
  v4 = *(v0 + 57);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v1 + 112);
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v4;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = 0;
  *(v8 + 49) = v3;
  *(v8 + 56) = v1;
  v9 = *(MEMORY[0x277D0EF78] + 4);
  v13 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v10 = v0;
  v10[1] = sub_229847048;

  return v13(v0 + 16, &unk_22A5859C8, v8, v11);
}

uint64_t sub_229847048()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_22984716C;
  }

  else
  {
    v7 = *(v2 + 96);
    v6 = *(v2 + 104);

    v5 = sub_22985CBF8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22984716C()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_229847390(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, const void *a6, uint64_t a7)
{
  v7[8] = a5;
  v7[9] = a7;
  v13 = sub_22A4DB7DC();
  v7[10] = v13;
  v14 = *(v13 - 8);
  v7[11] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v7[12] = v16;
  v7[13] = _Block_copy(a6);
  sub_22A4DB79C();
  v17 = a5;

  v18 = swift_task_alloc();
  v7[14] = v18;
  *v18 = v7;
  v18[1] = sub_22985CC0C;

  return PassUpdater.updatePassFor(homeUUID:isOnboarding:optionsRawValue:ignoreCache:flow:)((v7 + 2), v16, a2, a3, a4, v17);
}

uint64_t sub_2298474FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 40) = a5;
  *(v8 + 48) = a8;
  *(v8 + 98) = a7;
  *(v8 + 97) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 96) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_229847530, a8, 0);
}

uint64_t sub_229847530()
{
  v1 = *(v0 + 98);
  v2 = *(v0 + 97);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 96);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v4;
  *(v8 + 40) = v2 & 1;
  *(v8 + 41) = v1;
  *(v8 + 48) = v3;
  v9 = *MEMORY[0x277D0F1A8];
  v10 = sub_22A4DD5EC();
  v12 = v11;
  *(v0 + 64) = v11;
  v13 = sub_22A4DBCEC();
  v15 = v14;
  *(v0 + 72) = v14;
  v16 = *(MEMORY[0x277D0EFF8] + 4);
  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v17 = v0;
  v17[1] = sub_229847694;
  v18 = *(v0 + 16);

  return MEMORY[0x2821677F0](v18, v6, v10, v12, v13, v15, &unk_22A585F78, v8);
}

uint64_t sub_229847694()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_2298477E8, v4, 0);
  }

  else
  {
    v6 = v3[8];
    v5 = v3[9];
    v7 = v3[7];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2298477E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_229847860(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 59) = a6;
  *(v7 + 58) = a5;
  *(v7 + 216) = a4;
  *(v7 + 224) = a7;
  *(v7 + 57) = a2;
  *(v7 + 200) = a1;
  *(v7 + 208) = a3;
  v9 = type metadata accessor for HomePassState(0);
  *(v7 + 232) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229847908, a7, 0);
}

uint64_t sub_229847908()
{
  if (*(v0 + 57) == 1)
  {
    v1 = [objc_allocWithZone(type metadata accessor for HMDHomeKeySetupWalletLogEventV2()) init];
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 248) = v1;
  v2 = *(v0 + 58);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  sub_22A4DE1FC();

  sub_22A4DB7DC();
  sub_22985C0F4(&qword_281403860, MEMORY[0x277CC95F0]);
  v5 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  *(v0 + 128) = v4;
  *(v0 + 136) = v2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B90, &qword_22A585F80);
  v6 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v6);

  sub_22A4DBD0C();

  v7 = [objc_opt_self() driver];
  v8 = [v7 homeManager];
  *(v0 + 256) = v8;

  v9 = [v8 homes];
  if (v9)
  {
    v10 = v9;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v11 = sub_22A4DD83C();
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 152) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();
  v12 = *(v0 + 208);

  v13 = *(v0 + 144);
  v14 = swift_task_alloc();
  *(v14 + 16) = v12;
  v15 = sub_22968FFF0(sub_22985C544, v14, v13);

  *(v0 + 192) = v15;
  v35 = sub_229562F68(0, &qword_2814017B0, off_278666198);
  sub_22A4DBD4C();

  v16 = *(v0 + 184);
  *(v0 + 264) = v16;
  if (([v8 hasFinishedStartingUp] & 1) == 0)
  {
    sub_2297B8424();
    v20 = swift_allocError();
    v21 = xmmword_22A585950;
    goto LABEL_13;
  }

  v17 = *(v0 + 59);
  v18 = *(v0 + 58);
  if (([v8 hasBeenOneMinuteSinceFinishedStartingUp] & 1) == 0 && (v18 & 1) != 0 && (v17 & 1) == 0)
  {
    sub_2297B8424();
    v20 = swift_allocError();
    v21 = xmmword_22A585960;
LABEL_13:
    *v19 = v21;
    swift_willThrow();

    *(v0 + 160) = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    if (swift_dynamicCast())
    {
      sub_22985C530(*(v0 + 112), *(v0 + 120));
      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5993B0);
      swift_getErrorValue();
      v23 = *(v0 + 88);
      v24 = *(v0 + 96);
      sub_22A4DE5EC();
      sub_22A4DBD0C();
    }

    else
    {
      v25 = *(v0 + 248);

      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A599350);
      swift_getErrorValue();
      v26 = *(v0 + 64);
      v27 = *(v0 + 72);
      sub_22A4DE5EC();
      sub_22A4DBD3C();

      if (v25)
      {
        v28 = *(v0 + 248);
        sub_22A4DBD0C();
        v29 = [objc_opt_self() sharedLogEventSubmitter];
        v30 = sub_22A4DB3DC();
        [v29 submitLogEvent:v28 error:v30];

        swift_unknownObjectRelease();
      }
    }

    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }

  return MEMORY[0x2822009F8](sub_229847F6C, 0, 0);
}

uint64_t sub_229847F6C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 58);
  v3 = *(v0 + 216);
  v4 = *(v0 + 57);
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2 & 1;
  *(v5 + 33) = v4;
  v6 = *(MEMORY[0x277D0EFF0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_229848074;
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);

  return MEMORY[0x2821677C0](v8, 0xD000000000000022, 0x800000022A5993D0, &unk_22A585F88, v5, v9);
}

uint64_t sub_229848074()
{
  v2 = *(*v1 + 280);
  v3 = *v1;
  *(v3 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229848384, 0, 0);
  }

  else
  {
    v5 = *(v3 + 264);
    v4 = *(v3 + 272);

    v6 = v5;
    v7 = swift_task_alloc();
    *(v3 + 296) = v7;
    *v7 = v3;
    v7[1] = sub_229848210;
    v8 = *(v3 + 240);
    v9 = *(v3 + 224);
    v10 = *(v3 + 59);

    return sub_229848F10(v3 + 16, v5, v8, v10);
  }
}

uint64_t sub_229848210()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 296);
  v5 = *v1;
  v3[38] = v0;
  v3[39] = v2[2];
  v6 = *(v3 + 5);
  *(v3 + 20) = *(v3 + 3);
  *(v3 + 21) = v6;
  *(v3 + 60) = *(v3 + 56);

  v7 = v2[33];
  v8 = v2[28];

  if (v0)
  {
    v9 = sub_229848A50;
  }

  else
  {
    v9 = sub_229848648;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_229848384()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_2298483F0, v2, 0);
}

uint64_t sub_2298483F0()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 288);
  *(v0 + 160) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (swift_dynamicCast())
  {
    sub_22985C530(*(v0 + 112), *(v0 + 120));
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5993B0);
    swift_getErrorValue();
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    sub_22A4DE5EC();
    sub_22A4DBD0C();
  }

  else
  {
    v6 = *(v0 + 248);

    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A599350);
    swift_getErrorValue();
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    sub_22A4DE5EC();
    sub_22A4DBD3C();

    if (v6)
    {
      v9 = *(v0 + 248);
      sub_22A4DBD0C();
      v10 = [objc_opt_self() sharedLogEventSubmitter];
      v11 = sub_22A4DB3DC();
      [v10 submitLogEvent:v9 error:v11];

      swift_unknownObjectRelease();
    }
  }

  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_229848648()
{
  v1 = v0[31];
  if (v1)
  {
    v1[OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_success] = 1;
    v2 = v1;
    sub_22A4DBD0C();
    [objc_msgSend(objc_opt_self() sharedLogEventSubmitter)];
    swift_unknownObjectRelease();
  }

  v3 = sub_22A4DBCDC();
  v0[44] = v3;
  v4 = *MEMORY[0x277D0F1A8];
  v5 = sub_22A4DD5EC();
  v7 = v6;
  v0[45] = v6;
  v8 = sub_22A4DBCEC();
  v10 = v9;
  v0[46] = v9;
  v11 = *(MEMORY[0x277D0EFF8] + 4);
  v12 = swift_task_alloc();
  v0[47] = v12;
  *v12 = v0;
  v12[1] = sub_2298487E0;
  v13 = v0[28];

  return MEMORY[0x2821677F0](v12, v3, v5, v7, v8, v10, &unk_22A585F90, v13);
}

uint64_t sub_2298487E0()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;

  v5 = v2[46];
  v6 = v2[45];
  v7 = v2[28];
  if (v0)
  {

    v8 = sub_22985CC10;
  }

  else
  {

    v8 = sub_229848968;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_229848968()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 60);
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v9 = *(v0 + 200);
  v12 = *(v0 + 320);

  sub_22985C628(v7, type metadata accessor for HomePassState);
  *v9 = v4;
  *(v9 + 8) = v12;
  *(v9 + 24) = v3;
  *(v9 + 32) = v1;
  *(v9 + 40) = v2;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_229848A50()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);

  sub_22985C628(v2, type metadata accessor for HomePassState);
  v3 = *(v0 + 304);
  *(v0 + 160) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (swift_dynamicCast())
  {
    sub_22985C530(*(v0 + 112), *(v0 + 120));
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5993B0);
    swift_getErrorValue();
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    sub_22A4DE5EC();
    sub_22A4DBD0C();
  }

  else
  {
    v7 = *(v0 + 248);

    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A599350);
    swift_getErrorValue();
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    sub_22A4DE5EC();
    sub_22A4DBD3C();

    if (v7)
    {
      v10 = *(v0 + 248);
      sub_22A4DBD0C();
      v11 = [objc_opt_self() sharedLogEventSubmitter];
      v12 = sub_22A4DB3DC();
      [v11 submitLogEvent:v10 error:v12];

      swift_unknownObjectRelease();
    }
  }

  v13 = *(v0 + 240);
  v14 = *(v0 + 248);
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_229848CC8(id *a1, uint64_t a2)
{
  v19[1] = a2;
  v4 = &unk_27D87D2A0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  v17 = [*a1 uuid];
  sub_22A4DB79C();

  (*(v10 + 32))(v8, v14, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_22A4DBD4C();
  sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
  if (!v2)
  {
    LOBYTE(v4) = sub_22A4DB78C();
    (*(v10 + 8))(v16, v9);
  }

  return v4 & 1;
}

uint64_t sub_229848F10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 57) = a4;
  *(v5 + 96) = a3;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  return MEMORY[0x2822009F8](sub_229848F38, v4, 0);
}

uint64_t sub_229848F38()
{
  v1 = *(v0 + 96);
  v22 = *(v0 + 104);
  v2 = *(v0 + 57);
  v3 = *(v0 + 88);
  v4 = objc_opt_self();
  v5 = v1 + *(type metadata accessor for HomePassState(0) + 48);
  v6 = type metadata accessor for HomePassData(0);
  v7 = v5 + *(v6 + 20);
  v8 = sub_22A4DB77C();
  v9 = v5 + *(v6 + 28);
  v10 = sub_22A4DB77C();
  v11 = [v4 passSerialNumberWithHomeUUID:v8 userUUID:v10];

  v12 = sub_22A4DD5EC();
  v14 = v13;

  *(v0 + 112) = v14;
  sub_22A4DE1FC();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD00000000000002BLL, 0x800000022A598C70);
  MEMORY[0x22AAD08C0](v12, v14);
  MEMORY[0x22AAD08C0](0x3A6574617473202CLL, 0xE900000000000020);
  sub_22A4DE31C();
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  *(v0 + 120) = v16;
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v1;
  *(v17 + 40) = v3;
  *(v17 + 48) = v22;
  *(v17 + 56) = v2;
  v18 = *(MEMORY[0x277D0EFF0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v19 = v0;
  v19[1] = sub_229849184;

  return MEMORY[0x2821677C0](v0 + 16, v15, v16, &unk_22A585CD0, v17, v20);
}

uint64_t sub_229849184()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v12 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = sub_229849300;
  }

  else
  {
    v7 = v2[15];
    v6 = v2[16];
    v10 = v2 + 13;
    v9 = v2[13];
    v8 = v10[1];

    v5 = sub_2298492C4;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2298492C4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v4;
  *(v1 + 24) = v3;
  *(v1 + 40) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_229849300()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_229849378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 483) = a7;
  *(v7 + 3040) = a6;
  *(v7 + 3032) = a5;
  *(v7 + 3024) = a4;
  *(v7 + 3016) = a3;
  *(v7 + 3008) = a2;
  *(v7 + 3000) = a1;
  v9 = sub_22A4DB7DC();
  *(v7 + 3048) = v9;
  v10 = *(v9 - 8);
  *(v7 + 3056) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 3064) = swift_task_alloc();
  v12 = type metadata accessor for HomePassState(0);
  *(v7 + 3072) = v12;
  v13 = *(v12 - 8);
  *(v7 + 3080) = v13;
  *(v7 + 3088) = *(v13 + 64);
  *(v7 + 3096) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8) - 8) + 64) + 15;
  *(v7 + 3104) = swift_task_alloc();
  v15 = type metadata accessor for HomePassData(0);
  *(v7 + 3112) = v15;
  v16 = *(v15 - 8);
  *(v7 + 3120) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 3128) = swift_task_alloc();
  *(v7 + 3136) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  *(v7 + 3144) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v7 + 3152) = swift_task_alloc();
  *(v7 + 3160) = swift_task_alloc();
  *(v7 + 3168) = swift_task_alloc();
  *(v7 + 3176) = swift_task_alloc();
  *(v7 + 3184) = swift_task_alloc();
  *(v7 + 3192) = swift_task_alloc();
  *(v7 + 3200) = swift_task_alloc();
  *(v7 + 3208) = swift_task_alloc();
  *(v7 + 3216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298495F4, a6, 0);
}

uint64_t sub_2298495F4()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  v0[403] = static PassLibrary.shared;
  if (qword_281402FC0 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  v2 = unk_281405100;
  v0[404] = qword_2814050F8;
  v0[405] = v2;

  return MEMORY[0x2822009F8](sub_2298496DC, v1, 0);
}

uint64_t sub_2298496DC()
{
  v9 = *(v0 + 3232);
  v1 = *(v0 + 3016);
  v2 = *(v0 + 3008);
  v3 = *(*(v0 + 3224) + 112);
  v4 = swift_task_alloc();
  *(v0 + 3248) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  *(v0 + 3256) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *(v0 + 3264) = v7;
  *v6 = v0;
  v6[1] = sub_2298497FC;

  return v10(v0 + 2984, &unk_22A57B7C0, v4, v7);
}

uint64_t sub_2298497FC()
{
  v2 = *v1;
  v3 = *(*v1 + 3256);
  v9 = *v1;
  *(*v1 + 3272) = v0;

  if (v0)
  {
    v4 = *(v2 + 3224);
    v5 = sub_229849D9C;
  }

  else
  {
    v6 = *(v2 + 3248);
    v7 = *(v2 + 3224);

    v5 = sub_229849924;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229849924()
{
  v1 = v0[380];
  v0[410] = v0[373];
  return MEMORY[0x2822009F8](sub_229849948, v1, 0);
}

id sub_229849948()
{
  v1 = *(*(v0 + 3024) + 9);
  *(v0 + 2414) = v1;
  if (v1 == 2)
  {
LABEL_2:
    v2 = 0;
    goto LABEL_5;
  }

  if (!*(v0 + 3280))
  {
    v33 = *(v0 + 3032);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000046, 0x800000022A598CA0);
    if (v33)
    {
      v34 = *(v0 + 3216);
      v35 = [*(v0 + 3032) uuid];
      sub_22A4DB79C();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = *(v0 + 3144);
    (*(*(v0 + 3056) + 56))(*(v0 + 3216), v36, 1, *(v0 + 3048));
    v38 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v38);

    sub_22A4DBD0C();

    if (v33)
    {
      v39 = *(v0 + 3032);
      result = [v39 walletKeyManager];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v40 = result;
      [result removeWalletKeyMigrationSettingsFileFromDisk];
    }

    goto LABEL_2;
  }

  v2 = 1;
LABEL_5:
  *(v0 + 2415) = v2;
  v3 = *(v0 + 3040);
  swift_beginAccess();
  v4 = *(v3 + 120);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 3016);
    v6 = *(v0 + 3008);

    v7 = sub_229543DBC(v6, v5);
    if (v8)
    {
      v9 = *(v0 + 3280);
      v10 = *(v0 + 3136);
      v11 = *(v0 + 3128);
      v12 = *(v0 + 483);
      sub_22985B3BC(*(v4 + 56) + *(*(v0 + 3120) + 72) * v7, v11, type metadata accessor for HomePassData);

      sub_22985B584(v11, v10, type metadata accessor for HomePassData);
      if ((v12 & 1) == 0)
      {
        if (v9)
        {
          v13 = _s13HomeKitDaemon0A8PassDataV23__derived_struct_equalsySbAC_ACtFZ_0((*(v0 + 3024) + *(*(v0 + 3072) + 48)), *(v0 + 3136));
          if (v1 == 2 && (v13 & 1) != 0)
          {
            v14 = *(v0 + 3280);
            v15 = *(v0 + 3136);
            v16 = *(v0 + 3000);
            sub_22A4DBD0C();
            *v16 = 4;

            v17 = MEMORY[0x277D84F90];
            *(v16 + 8) = MEMORY[0x277D84F90];
            *(v16 + 16) = v17;
            *(v16 + 24) = 0;
            sub_22985C628(v15, type metadata accessor for HomePassData);
            *(v16 + 32) = 0;
            *(v16 + 40) = 0;
            v18 = *(v0 + 3216);
            v19 = *(v0 + 3208);
            v20 = *(v0 + 3200);
            v21 = *(v0 + 3192);
            v22 = *(v0 + 3184);
            v23 = *(v0 + 3176);
            v24 = *(v0 + 3168);
            v25 = *(v0 + 3160);
            v26 = *(v0 + 3152);
            v27 = *(v0 + 3136);
            v41 = *(v0 + 3128);
            v42 = *(v0 + 3104);
            v43 = *(v0 + 3096);
            v44 = *(v0 + 3064);

            v28 = *(v0 + 8);

            return v28();
          }
        }
      }

      sub_22985C628(*(v0 + 3136), type metadata accessor for HomePassData);
    }

    else
    {
    }
  }

  v30 = swift_task_alloc();
  *(v0 + 3288) = v30;
  *v30 = v0;
  v30[1] = sub_229849ED4;
  v31 = *(v0 + 3280);
  v32 = *(v0 + 3024);

  return sub_22984D340(v0 + 2304, v32, v31);
}

uint64_t sub_229849D9C()
{
  v1 = v0[406];

  v2 = v0[402];
  v3 = v0[401];
  v4 = v0[400];
  v5 = v0[399];
  v6 = v0[398];
  v7 = v0[397];
  v8 = v0[396];
  v9 = v0[395];
  v10 = v0[394];
  v11 = v0[392];
  v14 = v0[391];
  v15 = v0[388];
  v16 = v0[387];
  v17 = v0[383];
  v18 = v0[409];

  v12 = v0[1];

  return v12();
}

uint64_t sub_229849ED4()
{
  v2 = *v1;
  v3 = *(*v1 + 3288);
  v7 = *v1;
  *(*v1 + 3296) = v0;

  v4 = *(v2 + 3040);
  if (v0)
  {
    v5 = sub_22984D0C8;
  }

  else
  {
    *(v2 + 3304) = *(v2 + 2304);
    *(v2 + 3320) = *(v2 + 2320);
    *(v2 + 3336) = *(v2 + 2336);
    *(v2 + 484) = *(v2 + 2352);
    v5 = sub_22984A018;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22984A018()
{
  sub_22A4DE1FC();
  *(v0 + 2944) = 0;
  *(v0 + 2952) = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD00000000000001ELL, 0x800000022A598CF0);
  v1 = *(v0 + 2320);
  *(v0 + 2360) = *(v0 + 2304);
  *(v0 + 2376) = v1;
  *(v0 + 2392) = *(v0 + 2336);
  *(v0 + 2408) = *(v0 + 2352);
  sub_22A4DE31C();
  v2 = *(v0 + 2944);
  v3 = *(v0 + 2952);
  sub_22A4DBD0C();

  *(v0 + 3352) = *(v0 + 2304);
  v4 = *(v0 + 2312);
  *(v0 + 3360) = v4;
  v5 = *(v0 + 2320);
  *(v0 + 3368) = v5;
  v6 = *(v0 + 2328);
  *(v0 + 3376) = v6;
  v7 = *(v0 + 2336);
  *(v0 + 2468) = v7;
  *(v0 + 2412) = *(v0 + 2353);
  v8 = *(v0 + 2355);
  *(v0 + 2469) = v8;
  v9 = *(v0 + 3280);
  if (!v4)
  {
    if (v9)
    {
      v17 = *(v0 + 3224);
      v16 = sub_22984A624;
      goto LABEL_21;
    }

    v27 = *(v0 + 3032);
    if (v27)
    {
      v28 = *(v0 + 2415);
      v29 = v27;
      [v29 resetHomeKeyMiscInfo];
      if (v28 == 1)
      {
        v16 = [v29 walletKeyManager];
        if (!v16)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v16, v17, v30);
        }

        v31 = v16;
        v32 = *(v0 + 3280);
        v33 = *(v0 + 3000);
        [v16 removeWalletKeyMigrationSettingsFileFromDisk];

        goto LABEL_27;
      }

      v32 = *(v0 + 3280);
    }

    else
    {
      v32 = 0;
    }

    v33 = *(v0 + 3000);
LABEL_27:
    *v33 = 2;

    v45 = MEMORY[0x277D84F90];
    *(v33 + 8) = MEMORY[0x277D84F90];
    *(v33 + 16) = v45;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    *(v33 + 40) = 0;
    v46 = *(v0 + 3216);
    v47 = *(v0 + 3208);
    v48 = *(v0 + 3200);
    v49 = *(v0 + 3192);
    v50 = *(v0 + 3184);
    v51 = *(v0 + 3176);
    v52 = *(v0 + 3168);
    v53 = *(v0 + 3160);
    v54 = *(v0 + 3152);
    v55 = *(v0 + 3136);
    v67 = *(v0 + 3128);
    v69 = *(v0 + 3104);
    v71 = *(v0 + 3096);
    v73 = *(v0 + 3064);

    v56 = *(v0 + 8);

    return v56();
  }

  v10 = (v0 + 3336);
  v11 = (v0 + 3320);
  v12 = (v0 + 3304);
  *(v0 + 2928) = *(v0 + 2337);
  if (v9)
  {
    if (v8)
    {
      v13 = *(v0 + 484);
      v14 = *(v0 + 3224);
      *(v0 + 2752) = *v12;
      *(v0 + 2768) = *v11;
      *(v0 + 2784) = *v10;
      *(v0 + 2800) = v13;
      sub_22985B0DC(v0 + 2752, v0 + 2248);
      sub_22A4DBD0C();
      v15 = v9;
      v16 = sub_22984B3F0;
      v17 = v14;
      goto LABEL_21;
    }

    v22 = *(v0 + 484);
    *(v0 + 2640) = *v12;
    *(v0 + 2656) = *v11;
    *(v0 + 2672) = *v10;
    *(v0 + 2688) = v22;
    sub_22985B0DC(v0 + 2640, v0 + 2696);
    v23 = *(v0 + 2468);
    v24 = *(v0 + 3368);
    v72 = *(v0 + 2468);
    v68 = v24;
    if (v72)
    {
      if (v23 == 1)
      {
        v25 = 0;
        v26 = *(v0 + 3368);
        v23 = v26;
LABEL_20:
        *(v0 + 3480) = v25;
        *(v0 + 3472) = v23;
        v64 = *(v0 + 2412);
        v60 = *(v0 + 3360);
        v61 = *(v0 + 3376);
        v59 = *(v0 + 3352);
        v65 = *(v0 + 484);
        v66 = *(v0 + 2469);
        v62 = *(v0 + 3336);
        v63 = *(v0 + 3344);
        v70 = *(v0 + 3224);
        v35 = *(v0 + 3112);
        v36 = *(v0 + 3096);
        v37 = *(v0 + 3088);
        v38 = *(v0 + 3080);
        v39 = *(v0 + 3072);
        v40 = *(v0 + 3024);
        v41 = v26;
        *(v0 + 2300) = *(v39 + 48);
        *(v0 + 2356) = *(v35 + 24);
        v57 = *(v0 + 3320);
        v58 = *v12;
        sub_22985B3BC(v40, v36, type metadata accessor for HomePassState);
        v42 = (*(v38 + 80) + 16) & ~*(v38 + 80);
        v43 = swift_allocObject();
        *(v0 + 3488) = v43;
        sub_22985B584(v36, v43 + v42, type metadata accessor for HomePassState);
        v44 = v43 + ((v37 + v42 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v44 = v59;
        *(v44 + 8) = v60;
        *(v44 + 16) = v68;
        *(v44 + 24) = v61;
        *(v44 + 32) = v72;
        *(v44 + 33) = *(v0 + 2928);
        *(v44 + 49) = v64;
        *(v44 + 51) = v66;
        *(v0 + 2544) = v57;
        *(v0 + 2528) = v58;
        *(v0 + 2560) = v62;
        *(v0 + 2568) = v63;
        *(v0 + 2576) = v65;
        sub_22985B0DC(v0 + 2528, v0 + 2584);
        v16 = sub_22984B9B8;
        v17 = v70;
LABEL_21:
        v30 = 0;

        return MEMORY[0x2822009F8](v16, v17, v30);
      }

      v26 = *(v0 + 3376);
      v34 = v24;
      v23 = v26;
    }

    else
    {
      v26 = *(v0 + 3368);
    }

    v25 = v24;
    goto LABEL_20;
  }

  v18 = *(v0 + 484);
  *(v0 + 2416) = *v12;
  *(v0 + 2432) = *v11;
  *(v0 + 2448) = *v10;
  *(v0 + 2464) = v18;
  sub_22985B0DC(v0 + 2416, v0 + 2472);
  v19 = swift_task_alloc();
  *(v0 + 3432) = v19;
  *v19 = v0;
  v19[1] = sub_22984B0C0;
  v20 = *(v0 + 3024);

  return sub_22984E0D0(v20, v5, v6, v7);
}

uint64_t sub_22984A624()
{
  v8 = *(v0 + 3232);
  v1 = *(v0 + 3016);
  v2 = *(v0 + 3008);
  v3 = *(*(v0 + 3224) + 112);
  v4 = swift_task_alloc();
  *(v0 + 3384) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  *(v0 + 3392) = v6;
  *v6 = v0;
  v6[1] = sub_22984A72C;

  return v9();
}

uint64_t sub_22984A72C()
{
  v2 = *v1;
  v3 = *(*v1 + 3392);
  v9 = *v1;
  *(*v1 + 3400) = v0;

  if (v0)
  {
    v4 = *(v2 + 3224);
    v5 = sub_22984AB4C;
  }

  else
  {
    v6 = *(v2 + 3384);
    v7 = *(v2 + 3224);

    v5 = sub_22984A854;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22984A870()
{
  v1 = v0[403];
  v2 = v0[388];
  v3 = v0[380];
  v4 = v0[377];
  v5 = v0[376];
  swift_beginAccess();
  sub_2297FD6F8(v5, v4, v2);
  sub_22953EAE4(v2, &qword_27D881B40, &qword_22A585CD8);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22984A93C, v1, 0);
}

uint64_t sub_22984A93C()
{
  v1 = *(*(v0 + 3224) + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 3408) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  *v3 = v0;
  v3[1] = sub_22984AA20;

  return v6(v0 + 2992, &unk_22A586688, 0, v4);
}

uint64_t sub_22984AA20()
{
  v2 = *v1;
  v3 = *(*v1 + 3408);
  v4 = *v1;
  *(*v1 + 3416) = v0;

  v5 = *(v2 + 3224);
  if (v0)
  {
    v6 = sub_22984AF6C;
  }

  else
  {
    v6 = sub_22984ACF0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22984AB4C()
{
  v1 = *(v0 + 3384);
  v2 = *(v0 + 3040);

  return MEMORY[0x2822009F8](sub_22984ABB8, v2, 0);
}

uint64_t sub_22984ABB8()
{
  v1 = *(v0 + 3216);
  v2 = *(v0 + 3208);
  v3 = *(v0 + 3200);
  v4 = *(v0 + 3192);
  v5 = *(v0 + 3184);
  v6 = *(v0 + 3176);
  v7 = *(v0 + 3168);
  v8 = *(v0 + 3160);
  v9 = *(v0 + 3152);
  v10 = *(v0 + 3136);
  v13 = *(v0 + 3128);
  v14 = *(v0 + 3104);
  v15 = *(v0 + 3096);
  v16 = *(v0 + 3064);
  v17 = *(v0 + 3400);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22984ACF0()
{
  v1 = v0[380];
  v0[428] = v0[374];
  return MEMORY[0x2822009F8](sub_22984AD14, v1, 0);
}

id sub_22984AD14()
{
  v1 = *(v0 + 3424);
  if (v1 >> 62)
  {
    v2 = sub_22A4DE0EC();
    v26 = *(v0 + 3424);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 3016);
  v4 = *(v0 + 3008);

  v5 = [objc_opt_self() sharedRecorder];
  v6 = sub_22A4DD5AC();
  [v5 recordRemovedWalletKeyWithSerialNumber:v6 noWalletKeysRemaining:v2 == 0];

  v7 = *(v0 + 3032);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = *(v0 + 2415);
  v9 = v7;
  [v9 resetHomeKeyMiscInfo];
  if (v8 != 1)
  {

LABEL_8:
    v12 = *(v0 + 3280);
    v13 = *(v0 + 3000);
    goto LABEL_9;
  }

  result = [v9 walletKeyManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = *(v0 + 3280);
  v13 = *(v0 + 3000);
  [result removeWalletKeyMigrationSettingsFileFromDisk];

LABEL_9:
  *v13 = 2;

  v14 = MEMORY[0x277D84F90];
  *(v13 + 8) = MEMORY[0x277D84F90];
  *(v13 + 16) = v14;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  v15 = *(v0 + 3216);
  v16 = *(v0 + 3208);
  v17 = *(v0 + 3200);
  v18 = *(v0 + 3192);
  v19 = *(v0 + 3184);
  v20 = *(v0 + 3176);
  v21 = *(v0 + 3168);
  v22 = *(v0 + 3160);
  v23 = *(v0 + 3152);
  v24 = *(v0 + 3136);
  v27 = *(v0 + 3128);
  v28 = *(v0 + 3104);
  v29 = *(v0 + 3096);
  v30 = *(v0 + 3064);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22984AF88()
{
  v1 = *(v0 + 3216);
  v2 = *(v0 + 3208);
  v3 = *(v0 + 3200);
  v4 = *(v0 + 3192);
  v5 = *(v0 + 3184);
  v6 = *(v0 + 3176);
  v7 = *(v0 + 3168);
  v8 = *(v0 + 3160);
  v9 = *(v0 + 3152);
  v10 = *(v0 + 3136);
  v13 = *(v0 + 3128);
  v14 = *(v0 + 3104);
  v15 = *(v0 + 3096);
  v16 = *(v0 + 3064);
  v17 = *(v0 + 3416);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22984B0C0()
{
  v2 = *v1;
  v3 = *(*v1 + 3432);
  v4 = *v1;
  *(*v1 + 3440) = v0;

  v5 = *(v2 + 3040);
  if (v0)
  {
    v6 = sub_22984D200;
  }

  else
  {
    v6 = sub_22984B1EC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22984B1EC()
{
  v1 = *(v0 + 2468);
  v2 = *(v0 + 3368);
  v28 = *(v0 + 2468);
  if (v28)
  {
    if (v1 == 1)
    {
      v3 = 0;
      v4 = *(v0 + 3368);
      v1 = v4;
      goto LABEL_7;
    }

    v4 = *(v0 + 3376);
    v5 = v2;
    v1 = v4;
  }

  else
  {
    v4 = *(v0 + 3368);
  }

  v3 = v2;
LABEL_7:
  *(v0 + 3480) = v3;
  *(v0 + 3472) = v1;
  v24 = *(v0 + 2412);
  v20 = *(v0 + 3360);
  v21 = *(v0 + 3376);
  v19 = *(v0 + 3352);
  v25 = *(v0 + 484);
  v26 = *(v0 + 2469);
  v22 = *(v0 + 3336);
  v23 = *(v0 + 3344);
  v27 = *(v0 + 3224);
  v6 = *(v0 + 3112);
  v7 = *(v0 + 3096);
  v8 = *(v0 + 3088);
  v9 = *(v0 + 3080);
  v10 = *(v0 + 3072);
  v11 = *(v0 + 3024);
  v12 = v4;
  *(v0 + 2300) = *(v10 + 48);
  *(v0 + 2356) = *(v6 + 24);
  v17 = *(v0 + 3320);
  v18 = *(v0 + 3304);
  sub_22985B3BC(v11, v7, type metadata accessor for HomePassState);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v0 + 3488) = v14;
  sub_22985B584(v7, v14 + v13, type metadata accessor for HomePassState);
  v15 = v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v19;
  *(v15 + 8) = v20;
  *(v15 + 16) = v2;
  *(v15 + 24) = v21;
  *(v15 + 32) = v28;
  *(v15 + 33) = *(v0 + 2928);
  *(v15 + 49) = v24;
  *(v15 + 51) = v26;
  *(v0 + 2544) = v17;
  *(v0 + 2528) = v18;
  *(v0 + 2560) = v22;
  *(v0 + 2568) = v23;
  *(v0 + 2576) = v25;
  sub_22985B0DC(v0 + 2528, v0 + 2584);

  return MEMORY[0x2822009F8](sub_22984B9B8, v27, 0);
}

uint64_t sub_22984B3F0()
{
  v1 = v0[410];
  v2 = *(v0[403] + 112);
  v3 = swift_task_alloc();
  v0[431] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[432] = v5;
  *v5 = v0;
  v5[1] = sub_22984B4DC;

  return v7();
}

uint64_t sub_22984B4DC()
{
  v2 = *v1;
  v3 = *(*v1 + 3456);
  v4 = *v1;
  *(v2 + 3464) = v0;

  v5 = *(v2 + 3448);
  if (v0)
  {
    v6 = *(v2 + 3224);

    v7 = sub_22984B854;
  }

  else
  {
    v6 = *(v2 + 3224);

    v7 = sub_22984B62C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22984B648()
{
  v1 = *(v0 + 2468);
  v2 = *(v0 + 3368);
  v28 = *(v0 + 2468);
  if (v28)
  {
    if (v1 == 1)
    {
      v3 = 0;
      v4 = *(v0 + 3368);
      v1 = v4;
      goto LABEL_7;
    }

    v4 = *(v0 + 3376);
    v5 = v2;
    v1 = v4;
  }

  else
  {
    v4 = *(v0 + 3368);
  }

  v3 = v2;
LABEL_7:
  *(v0 + 3480) = v3;
  *(v0 + 3472) = v1;
  v24 = *(v0 + 2412);
  v20 = *(v0 + 3360);
  v21 = *(v0 + 3376);
  v19 = *(v0 + 3352);
  v25 = *(v0 + 484);
  v26 = *(v0 + 2469);
  v22 = *(v0 + 3336);
  v23 = *(v0 + 3344);
  v27 = *(v0 + 3224);
  v6 = *(v0 + 3112);
  v7 = *(v0 + 3096);
  v8 = *(v0 + 3088);
  v9 = *(v0 + 3080);
  v10 = *(v0 + 3072);
  v11 = *(v0 + 3024);
  v12 = v4;
  *(v0 + 2300) = *(v10 + 48);
  *(v0 + 2356) = *(v6 + 24);
  v17 = *(v0 + 3320);
  v18 = *(v0 + 3304);
  sub_22985B3BC(v11, v7, type metadata accessor for HomePassState);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v0 + 3488) = v14;
  sub_22985B584(v7, v14 + v13, type metadata accessor for HomePassState);
  v15 = v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v19;
  *(v15 + 8) = v20;
  *(v15 + 16) = v2;
  *(v15 + 24) = v21;
  *(v15 + 32) = v28;
  *(v15 + 33) = *(v0 + 2928);
  *(v15 + 49) = v24;
  *(v15 + 51) = v26;
  *(v0 + 2544) = v17;
  *(v0 + 2528) = v18;
  *(v0 + 2560) = v22;
  *(v0 + 2568) = v23;
  *(v0 + 2576) = v25;
  sub_22985B0DC(v0 + 2528, v0 + 2584);

  return MEMORY[0x2822009F8](sub_22984B9B8, v27, 0);
}

uint64_t sub_22984B870()
{
  sub_22985B114(v0 + 2304);
  sub_22985B114(v0 + 2304);
  v1 = *(v0 + 3216);
  v2 = *(v0 + 3208);
  v3 = *(v0 + 3200);
  v4 = *(v0 + 3192);
  v5 = *(v0 + 3184);
  v6 = *(v0 + 3176);
  v7 = *(v0 + 3168);
  v8 = *(v0 + 3160);
  v9 = *(v0 + 3152);
  v10 = *(v0 + 3136);
  v13 = *(v0 + 3128);
  v14 = *(v0 + 3104);
  v15 = *(v0 + 3096);
  v16 = *(v0 + 3064);
  v17 = *(v0 + 3464);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22984B9B8()
{
  v1 = *(v0 + 3488);
  v2 = *(v0 + 3480);
  v3 = *(v0 + 3472);
  v4 = *(v0 + 2412);
  v5 = *(v0 + 3360);
  v6 = *(v0 + 3352);
  v14 = *(v0 + 3232);
  v7 = *(v0 + 3224);
  v8 = *(v0 + 3024) + *(v0 + 2300) + *(v0 + 2356);
  v16 = *(v7 + 112);
  v9 = swift_task_alloc();
  *(v0 + 3496) = v9;
  *(v9 + 16) = v14;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  *(v9 + 64) = v2;
  *(v9 + 72) = v3;
  *(v9 + 80) = &unk_22A585CF8;
  *(v9 + 88) = v1;
  *(v9 + 96) = v4;
  v10 = *(MEMORY[0x277D0EF78] + 4);
  v15 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v11 = swift_task_alloc();
  *(v0 + 3504) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B48, &qword_22A585D08);
  *v11 = v0;
  v11[1] = sub_22984BB30;

  return v15(v0 + 16, &unk_22A585D00, v9, v12);
}

uint64_t sub_22984BB30()
{
  v2 = *v1;
  v3 = *(*v1 + 3504);
  v9 = *v1;
  *(*v1 + 3512) = v0;

  if (v0)
  {
    v4 = *(v2 + 3224);
    v5 = sub_22984BF64;
  }

  else
  {
    v6 = *(v2 + 3496);
    v7 = *(v2 + 3224);

    v5 = sub_22984BC58;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22984BC58()
{
  v1 = *(v0 + 3488);
  v2 = *(v0 + 3224);

  *(v0 + 3520) = *(v0 + 16);
  *(v0 + 3528) = *(v0 + 24);
  memcpy((v0 + 488), (v0 + 40), 0x1B8uLL);
  *(v0 + 2470) = *(v0 + 480);
  *(v0 + 2471) = *(v0 + 481);
  *(v0 + 2524) = *(v0 + 482);

  return MEMORY[0x2822009F8](sub_22984BD00, v2, 0);
}

uint64_t sub_22984BD00()
{
  v9 = *(v0 + 3232);
  v1 = *(v0 + 3016);
  v2 = *(v0 + 3008);
  v3 = *(*(v0 + 3224) + 112);
  v4 = swift_task_alloc();
  *(v0 + 3544) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  *(v0 + 3552) = v6;
  *v6 = v0;
  v6[1] = sub_22984BE08;
  v7 = *(v0 + 3264);

  return v10(v0 + 2976, &unk_22A585D10, v4, v7);
}

uint64_t sub_22984BE08()
{
  v2 = *v1;
  v3 = *(*v1 + 3552);
  v13 = *v1;
  *(*v1 + 3560) = v0;

  if (v0)
  {
    v4 = v2[443];
    v5 = v2[442];
    v6 = v2[441];
    v7 = v2[403];

    sub_2296EBFB4((v2 + 61));

    v8 = sub_22984CF54;
    v9 = v7;
  }

  else
  {
    v10 = v2[443];
    v11 = v2[403];

    v8 = sub_22984C134;
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22984BF64()
{
  v1 = v0[437];
  v2 = v0[436];
  v3 = v0[380];

  return MEMORY[0x2822009F8](sub_22984BFDC, v3, 0);
}

uint64_t sub_22984BFDC()
{
  v1 = *(v0 + 3480);
  v2 = *(v0 + 3472);

  sub_22985B114(v0 + 2304);
  sub_22985B114(v0 + 2304);
  v3 = *(v0 + 3216);
  v4 = *(v0 + 3208);
  v5 = *(v0 + 3200);
  v6 = *(v0 + 3192);
  v7 = *(v0 + 3184);
  v8 = *(v0 + 3176);
  v9 = *(v0 + 3168);
  v10 = *(v0 + 3160);
  v11 = *(v0 + 3152);
  v12 = *(v0 + 3136);
  v15 = *(v0 + 3128);
  v16 = *(v0 + 3104);
  v17 = *(v0 + 3096);
  v18 = *(v0 + 3064);
  v19 = *(v0 + 3512);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22984C134()
{
  v1 = v0[380];
  v0[446] = v0[372];
  return MEMORY[0x2822009F8](sub_22984C158, v1, 0);
}

id sub_22984C158()
{
  if (*(v0 + 3568))
  {
    v143 = *(v0 + 3568);
    v1 = *(v0 + 3280);
    v2 = *(v0 + 3120);
    v3 = *(v0 + 3112);
    v4 = *(v0 + 3104);
    v5 = *(v0 + 3040);
    v6 = *(v0 + 3016);
    v7 = *(v0 + 3008);
    sub_22985B3BC(*(v0 + 3024) + *(v0 + 2300), v4, type metadata accessor for HomePassData);
    (*(v2 + 56))(v4, 0, 1, v3);
    swift_beginAccess();

    sub_229891770(v4, v7, v6);
    swift_endAccess();
    if (v1)
    {
      v8 = *(v0 + 3280);
      v9 = sub_22A4DBCDC();
      v10 = [objc_allocWithZone(HMDHomeWalletKey) initWithPKPass:v8 flow:v9];
    }

    else
    {
      v10 = 0;
    }

    v28 = *(v0 + 3520);
    v146 = v10;
    if (v28)
    {
      if (v28 != 1)
      {
        v37 = *(v0 + 2470);
        v38 = *(v0 + 3032);
        if (v38)
        {
LABEL_71:
          if (*(v0 + 2415))
          {
            v113 = v38;
            result = [v113 walletKeyManager];
            if (!result)
            {
              __break(1u);
              return result;
            }

            v115 = result;
            sub_2296EBFB4(v0 + 488);
            [v115 removeWalletKeyMigrationSettingsFileFromDisk];
          }

          else
          {
            sub_2296EBFB4(v0 + 488);
          }

          v39 = v28;
          v40 = *(v0 + 2524);
          if (v40 != 2 && (v40 & 1) == 0)
          {
            [v38 updateLocalUWBOnboardingDismissed_];
            LOBYTE(v40) = 0;
          }

          goto LABEL_78;
        }

LABEL_13:
        v39 = v28;
        LOBYTE(v40) = *(v0 + 2524);
        sub_2296EBFB4(v0 + 488);
LABEL_78:
        v116 = *(v0 + 3536);
        v117 = *(v0 + 3528);
        v138 = *(v0 + 3480);
        v141 = *(v0 + 3568);
        v134 = *(v0 + 3280);
        v136 = *(v0 + 3472);
        v118 = *(v0 + 3000);
        if (*(v0 + 2471))
        {
          v119 = v37 & 1 | 2;
        }

        else
        {
          v119 = v37 & 1;
        }

        v120 = v143;
        sub_22A4DE1FC();
        *(v0 + 2960) = 0;
        *(v0 + 2968) = 0xE000000000000000;
        MEMORY[0x22AAD08C0](0xD000000000000016, 0x800000022A598D50);
        *(v0 + 2808) = v39;
        *(v0 + 2816) = v117;
        *(v0 + 2824) = v116;
        *(v0 + 2832) = v120;
        *(v0 + 2840) = v119;
        v121 = v40 & 1;
        *(v0 + 2848) = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B50, &qword_22A585D18);
        sub_22A4DE31C();
        v122 = *(v0 + 2960);
        v123 = *(v0 + 2968);
        sub_22A4DBD0C();

        sub_22985B114(v0 + 2304);
        sub_22985B114(v0 + 2304);
        *v118 = v39;
        *(v118 + 8) = v117;
        *(v118 + 16) = v116;
        *(v118 + 24) = v141;
        *(v118 + 32) = v119;
        *(v118 + 40) = v121;
        v124 = *(v0 + 3216);
        v125 = *(v0 + 3208);
        v126 = *(v0 + 3200);
        v127 = *(v0 + 3192);
        v128 = *(v0 + 3184);
        v129 = *(v0 + 3176);
        v130 = *(v0 + 3168);
        v131 = *(v0 + 3160);
        v132 = *(v0 + 3152);
        v133 = *(v0 + 3136);
        v139 = *(v0 + 3128);
        v142 = *(v0 + 3104);
        v145 = *(v0 + 3096);
        v147 = *(v0 + 3064);

        v27 = *(v0 + 8);
        goto LABEL_82;
      }

      v29 = *(v0 + 3032);
      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD00000000000001ALL, 0x800000022A598D70);
      if (v29)
      {
        v30 = *(v0 + 3176);
        v31 = [*(v0 + 3032) uuid];
        sub_22A4DB79C();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v41 = *(v0 + 3144);
      v42 = *(*(v0 + 3056) + 56);
      v42(*(v0 + 3176), v32, 1, *(v0 + 3048));
      v43 = sub_22A4DD64C();
      MEMORY[0x22AAD08C0](v43);

      MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A598D90);
      if (v29)
      {
        v44 = [*(v0 + 3032) clientWalletKeyUUID];
        if (v44)
        {
          v45 = *(v0 + 3160);
          v46 = v44;
          sub_22A4DB79C();

          v47 = 0;
        }

        else
        {
          v47 = 1;
        }

        v57 = *(v0 + 3168);
        v58 = *(v0 + 3160);
        v59 = *(v0 + 3056) + 56;
        v42(v58, v47, 1, *(v0 + 3048));
        sub_229564B0C(v58, v57);
      }

      else
      {
        v48 = *(v0 + 3056) + 56;
        v42(*(v0 + 3168), 1, 1, *(v0 + 3048));
      }

      v60 = *(v0 + 3168);
      v61 = *(v0 + 3144);
      v62 = sub_22A4DD64C();
      MEMORY[0x22AAD08C0](v62);

      MEMORY[0x22AAD08C0](0x784573736170202CLL, 0xEE00203A73747369);
      if (v10)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v10)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      MEMORY[0x22AAD08C0](v63, v64);

      sub_22A4DBD0C();

      if (v29 && v10)
      {
        v65 = *(v0 + 3032);
        v66 = v10;
        v67 = [v65 clientWalletKeyUUID];
        v68 = *(v0 + 3152);
        if (v67)
        {
          v69 = *(v0 + 3056);
          v70 = *(v0 + 3048);
          v71 = *(v0 + 3152);
          v72 = v67;
          sub_22A4DB79C();

          v42(v68, 0, 1, v70);
          sub_22953EAE4(v68, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          v100 = *(v0 + 3064);
          v101 = *(v0 + 3056);
          v102 = *(v0 + 3048);
          v42(*(v0 + 3152), 1, 1, v102);
          sub_22953EAE4(v68, &unk_27D87D2A0, &unk_22A578BD0);
          v103 = [v66 uuid];
          sub_22A4DB79C();

          v104 = sub_22A4DB77C();
          (*(v101 + 8))(v100, v102);
          [v65 saveClientWalletKeyUUIDToLocalStore_];
        }
      }

      v92 = [objc_opt_self() sharedRecorder];
      sub_2296EBF7C(v0 + 488, v0 + 928);
      v37 = *(v0 + 2470);
      goto LABEL_69;
    }

    v33 = *(v0 + 3032);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000018, 0x800000022A598DC0);
    if (v33)
    {
      v34 = *(v0 + 3208);
      v35 = [*(v0 + 3032) uuid];
      sub_22A4DB79C();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v49 = *(v0 + 3144);
    v50 = *(*(v0 + 3056) + 56);
    v50(*(v0 + 3208), v36, 1, *(v0 + 3048));
    v51 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v51);

    MEMORY[0x22AAD08C0](0xD000000000000022, 0x800000022A598D90);
    if (v33)
    {
      v52 = [*(v0 + 3032) clientWalletKeyUUID];
      if (v52)
      {
        v53 = *(v0 + 3192);
        v54 = v52;
        sub_22A4DB79C();

        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v73 = *(v0 + 3200);
      v74 = *(v0 + 3192);
      v75 = *(v0 + 3056) + 56;
      v50(v74, v55, 1, *(v0 + 3048));
      sub_229564B0C(v74, v73);
    }

    else
    {
      v56 = *(v0 + 3056) + 56;
      v50(*(v0 + 3200), 1, 1, *(v0 + 3048));
    }

    v76 = *(v0 + 2469);
    v77 = *(v0 + 3200);
    v78 = *(v0 + 3144);
    v79 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v79);

    MEMORY[0x22AAD08C0](0x784573736170202CLL, 0xEE00203A73747369);
    if (v10)
    {
      v80 = 1702195828;
    }

    else
    {
      v80 = 0x65736C6166;
    }

    if (v10)
    {
      v81 = 0xE400000000000000;
    }

    else
    {
      v81 = 0xE500000000000000;
    }

    MEMORY[0x22AAD08C0](v80, v81);

    MEMORY[0x22AAD08C0](0x646C756F6873202CLL, 0xEE00203A6C6C6F52);
    if (v76)
    {
      v82 = 1702195828;
    }

    else
    {
      v82 = 0x65736C6166;
    }

    if (v76)
    {
      v83 = 0xE400000000000000;
    }

    else
    {
      v83 = 0xE500000000000000;
    }

    MEMORY[0x22AAD08C0](v82, v83);

    sub_22A4DBD0C();

    if (v33)
    {
      v84 = *(v0 + 3032);
      v85 = [v84 clientWalletKeyUUID];
      v86 = *(v0 + 2469);
      v87 = *(v0 + 3184);
      v88 = *(v0 + 3056);
      v89 = *(v0 + 3048);
      if (v85)
      {
        v90 = *(v0 + 3184);
        v91 = v85;
        sub_22A4DB79C();

        v50(v87, 0, 1, v89);
        sub_22953EAE4(v87, &unk_27D87D2A0, &unk_22A578BD0);
        if (v86)
        {
          goto LABEL_63;
        }

LABEL_55:
        v92 = [objc_opt_self() sharedRecorder];
        sub_2296EBF7C(v0 + 488, v0 + 1368);
        v28 = 0;
        v37 = *(v0 + 2470);
        v93 = &selRef_recordAddedWalletKey_;
        goto LABEL_70;
      }

      v50(*(v0 + 3184), 1, 1, *(v0 + 3048));
      sub_22953EAE4(v87, &unk_27D87D2A0, &unk_22A578BD0);
      if (!v146 || (v86 & 1) == 0)
      {
        v105 = *(v0 + 3064);
        v106 = *(v0 + 3056);
        v107 = *(v0 + 3048);
        v108 = *(v0 + 2469);
        sub_22A4DB7CC();
        v109 = sub_22A4DB77C();
        (*(v106 + 8))(v105, v107);
        [v84 saveClientWalletKeyUUIDToLocalStore_];

        if (!v146 && (v108 & 1) != 0)
        {
          goto LABEL_63;
        }

        goto LABEL_55;
      }

      v94 = *(v0 + 3064);
      v95 = *(v0 + 3056);
      v96 = *(v0 + 3048);
      v97 = v146;
      v98 = [v97 uuid];
      sub_22A4DB79C();

      v99 = sub_22A4DB77C();
      (*(v95 + 8))(v94, v96);
      [v84 saveClientWalletKeyUUIDToLocalStore_];
    }

    else if ((*(v0 + 2469) & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_63:
    v110 = *(v0 + 2414);
    v111 = (*(v0 + 3280) == 0) & *(v0 + 2470);
    if ((v110 & 1) == 0)
    {
      v111 = *(v0 + 2470);
    }

    if (v110 == 2)
    {
      v37 = *(v0 + 2470);
    }

    else
    {
      v37 = v111;
    }

    v92 = [objc_opt_self() sharedRecorder];
    sub_2296EBF7C(v0 + 488, v0 + 1808);
LABEL_69:
    v93 = &selRef_recordUpdatedWalletKey_;
    v28 = 1;
LABEL_70:
    sub_22985A26C((v0 + 488));
    sub_2296EBFB4(v0 + 488);
    v112 = sub_22A4DD5AC();

    [v92 *v93];

    v38 = *(v0 + 3032);
    if (v38)
    {
      goto LABEL_71;
    }

    goto LABEL_13;
  }

  v11 = *(v0 + 3536);
  v12 = *(v0 + 3528);
  v13 = *(v0 + 3480);
  v14 = *(v0 + 3472);
  v15 = *(v0 + 3280);
  sub_2296EBFB4(v0 + 488);

  sub_22962F2A8();
  swift_allocError();
  *v16 = 0xD00000000000003ELL;
  *(v16 + 8) = 0x800000022A598D10;
  *(v16 + 16) = 0;
  swift_willThrow();

  sub_22985B114(v0 + 2304);
  sub_22985B114(v0 + 2304);
  v17 = *(v0 + 3216);
  v18 = *(v0 + 3208);
  v19 = *(v0 + 3200);
  v20 = *(v0 + 3192);
  v21 = *(v0 + 3184);
  v22 = *(v0 + 3176);
  v23 = *(v0 + 3168);
  v24 = *(v0 + 3160);
  v25 = *(v0 + 3152);
  v26 = *(v0 + 3136);
  v135 = *(v0 + 3128);
  v137 = *(v0 + 3104);
  v140 = *(v0 + 3096);
  v144 = *(v0 + 3064);

  v27 = *(v0 + 8);
LABEL_82:

  return v27();
}