uint64_t sub_219FD598C()
{

  return MEMORY[0x2822009F8](sub_219FD5A88, 0, 0);
}

uint64_t sub_219FD5A88()
{
  v1 = v0[11];
  v2 = v0[2];
  sub_219F4D494(v0[14], v2, &qword_27CCD99E0);
  v3 = type metadata accessor for NewsLiveActivities.ActivityAwaitingSubscriptionChange(0);
  sub_219FE9100(v1, v2 + *(v3 + 20), type metadata accessor for NewsLiveActivity);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219FD5B94()
{
  v1 = v0;
  v2 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v62 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB050);
  MEMORY[0x28223BE20](v65, v5);
  v71 = &v60[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB058);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v68 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9, v11);
  v66 = &v60[-v13];
  MEMORY[0x28223BE20](v12, v14);
  v67 = &v60[-v15];
  v16 = type metadata accessor for NewsLiveActivity(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v63 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB020);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v60[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v60[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v60[-v32];
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v60[-v35];
  v37 = type metadata accessor for NewsLiveActivities.ActivityAwaitingSubscriptionChange(0);
  sub_219FE9098(v1 + *(v37 + 20), v36, type metadata accessor for NewsLiveActivity);
  (*(v17 + 56))(v36, 0, 1, v16);
  v38 = *(v21 + 56);
  v64 = v1;
  sub_219F45500(v1, v24, &qword_27CCD99E0);
  sub_219F45500(v36, &v24[v38], &qword_27CCD99E0);
  v39 = *(v17 + 48);
  if (v39(v24, 1, v16) == 1)
  {
    sub_219F6409C(v36, &qword_27CCD99E0);
    if (v39(&v24[v38], 1, v16) == 1)
    {
      v40 = &qword_27CCD99E0;
      v41 = v24;
LABEL_13:
      sub_219F6409C(v41, v40);
LABEL_18:
      v54 = 0;
      return v54 & 1;
    }

    goto LABEL_6;
  }

  sub_219F45500(v24, v33, &qword_27CCD99E0);
  if (v39(&v24[v38], 1, v16) == 1)
  {
    sub_219F6409C(v36, &qword_27CCD99E0);
    sub_219FE9018(v33, type metadata accessor for NewsLiveActivity);
LABEL_6:
    sub_219F6409C(v24, &qword_27CCDB020);
    goto LABEL_7;
  }

  v55 = v63;
  sub_219FE9100(&v24[v38], v63, type metadata accessor for NewsLiveActivity);
  v61 = _s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(v33, v55);
  sub_219FE9018(v55, type metadata accessor for NewsLiveActivity);
  sub_219F6409C(v36, &qword_27CCD99E0);
  sub_219FE9018(v33, type metadata accessor for NewsLiveActivity);
  sub_219F6409C(v24, &qword_27CCD99E0);
  if (v61)
  {
    goto LABEL_18;
  }

LABEL_7:
  sub_219F45500(v64, v29, &qword_27CCD99E0);
  if (v39(v29, 1, v16) == 1)
  {
    sub_219F6409C(v29, &qword_27CCD99E0);
    v42 = 1;
    v44 = v70;
    v43 = v71;
    v46 = v68;
    v45 = v69;
    v47 = v67;
  }

  else
  {
    v48 = &v29[*(v16 + 20)];
    v47 = v67;
    sub_219FE9098(v48, v67, type metadata accessor for NewsLiveActivitySubscriptionState);
    sub_219FE9018(v29, type metadata accessor for NewsLiveActivity);
    v42 = 0;
    v44 = v70;
    v43 = v71;
    v46 = v68;
    v45 = v69;
  }

  v49 = *(v45 + 56);
  v49(v47, v42, 1, v44);
  v50 = type metadata accessor for ScheduledLiveActivity();
  v51 = v66;
  (*(*(v50 - 8) + 56))(v66, 3, 3, v50);
  v49(v51, 0, 1, v44);
  v52 = *(v65 + 48);
  sub_219F45500(v47, v43, &qword_27CCDB058);
  sub_219F45500(v51, v43 + v52, &qword_27CCDB058);
  v53 = *(v45 + 48);
  if (v53(v43, 1, v44) == 1)
  {
    sub_219F6409C(v51, &qword_27CCDB058);
    sub_219F6409C(v47, &qword_27CCDB058);
    if (v53(v43 + v52, 1, v44) == 1)
    {
      v40 = &qword_27CCDB058;
      v41 = v43;
      goto LABEL_13;
    }
  }

  else
  {
    sub_219F45500(v43, v46, &qword_27CCDB058);
    if (v53(v43 + v52, 1, v44) != 1)
    {
      v56 = v43 + v52;
      v57 = v62;
      sub_219FE9100(v56, v62, type metadata accessor for NewsLiveActivitySubscriptionState);
      v58 = _s22NewsLiveActivitiesCore0aB25ActivitySubscriptionStateO2eeoiySbAC_ACtFZ_0(v46, v57);
      sub_219FE9018(v57, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219F6409C(v51, &qword_27CCDB058);
      sub_219F6409C(v47, &qword_27CCDB058);
      sub_219FE9018(v46, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219F6409C(v43, &qword_27CCDB058);
      v54 = !v58;
      return v54 & 1;
    }

    sub_219F6409C(v51, &qword_27CCDB058);
    sub_219F6409C(v47, &qword_27CCDB058);
    sub_219FE9018(v46, type metadata accessor for NewsLiveActivitySubscriptionState);
  }

  sub_219F6409C(v43, &qword_27CCDB050);
  v54 = 1;
  return v54 & 1;
}

uint64_t sub_219FD6400(uint64_t a1, _BYTE *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  type metadata accessor for NewsLiveActivity(0);
  *(v3 + 80) = swift_task_alloc();
  type metadata accessor for ScheduledLiveActivity();
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_21A0E495C();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();
  type metadata accessor for NewsLiveActivityContent(0);
  *(v3 + 120) = swift_task_alloc();
  type metadata accessor for NewsLiveActivityAttributes(0);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = type metadata accessor for ActivityDownloadResult();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = type metadata accessor for NewsLiveActivityManager.Event(0);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 329) = *a2;

  return MEMORY[0x2822009F8](sub_219FD660C, 0, 0);
}

uint64_t sub_219FD660C()
{
  v1 = *(v0 + 329);
  v2 = *(v0 + 192);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 200) = *(v4 + 144);
  v5 = *v3;
  v6 = v3[1];
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  *(v2 + 24) = v1;
  swift_storeEnumTagMultiPayload();

  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_219FD66E8;
  v8 = *(v0 + 192);

  return sub_219FCE550(v8);
}

uint64_t sub_219FD66E8()
{
  v1 = *(*v0 + 192);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FD6814, 0, 0);
}

uint64_t sub_219FD6814()
{
  v1 = v0[8];
  v2 = *v1;
  v0[27] = *v1;
  v3 = v1[1];
  v0[28] = v3;
  v0[2] = v2;
  v0[3] = v3;

  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_219FD68E0;
  v5 = v0[22];

  return sub_219FDEC40(v5, v0 + 2);
}

uint64_t sub_219FD68E0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_219FD7F44;
  }

  else
  {
    v2 = sub_219FD6A04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FD6A04()
{
  v71 = v0;
  v1 = *(v0 + 144);
  sub_219FE9098(*(v0 + 176), *(v0 + 168), type metadata accessor for ActivityDownloadResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E30) + 48);
    sub_219FE9100(v3, v4, type metadata accessor for NewsLiveActivityAttributes);
    v8 = *v4;
    v9 = *(v1 + 8);

    sub_219FE9018(v4, type metadata accessor for NewsLiveActivityAttributes);
    (*(v6 + 8))(v3 + v7, v5);
  }

  else
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E40) + 48);
    sub_219FE9100(v3, v4, type metadata accessor for NewsLiveActivityAttributes);
    v8 = *v4;
    v9 = *(v1 + 8);

    sub_219FE9018(v4, type metadata accessor for NewsLiveActivityAttributes);
    sub_219FE9018(v3 + v10, type metadata accessor for NewsLiveActivityContent);
  }

  v11 = *(v0 + 216) == v8 && *(v0 + 224) == v9;
  if (v11 || (sub_21A0E6C5C() & 1) != 0)
  {
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);

    sub_219FE9098(v12, v13, type metadata accessor for ActivityDownloadResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *(v0 + 329);
      v15 = *(v0 + 160);
      v16 = *(v0 + 128);
      v18 = *(v0 + 104);
      v17 = *(v0 + 112);
      v19 = *(v0 + 96);
      v20 = *(v0 + 64);
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E30) + 48);
      sub_219FE9100(v15, v16, type metadata accessor for NewsLiveActivityAttributes);
      (*(v18 + 32))(v17, v15 + v21, v19);
      v22 = v20[1];
      *(v0 + 48) = *v20;
      *(v0 + 56) = v22;
      *(v0 + 328) = v14;

      v23 = swift_task_alloc();
      *(v0 + 264) = v23;
      *v23 = v0;
      v23[1] = sub_219FD74FC;
      v24 = *(v0 + 112);
      v25 = *(v0 + 88);

      return sub_219FDC5D0(v25, (v0 + 48), v24, (v0 + 328), 0);
    }

    else
    {
      v27 = *(v0 + 160);
      v28 = *(v0 + 136);
      v29 = *(v0 + 120);
      v30 = *(v0 + 72);
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E40) + 48);
      sub_219FE9100(v27, v28, type metadata accessor for NewsLiveActivityAttributes);
      sub_219FE9100(v27 + v31, v29, type metadata accessor for NewsLiveActivityContent);
      v32 = v30[5];
      v33 = v30[6];
      __swift_project_boxed_opaque_existential_1(v30 + 2, v32);
      v68 = (*(v33 + 48) + **(v33 + 48));
      v34 = swift_task_alloc();
      *(v0 + 248) = v34;
      *v34 = v0;
      v34[1] = sub_219FD729C;
      v35 = *(v0 + 136);
      v36 = *(v0 + 120);

      return v68(v35, v36, v32, v33);
    }
  }

  else
  {
    v37 = *(v0 + 176);
    v38 = *(v0 + 64);
    type metadata accessor for LiveActivitySubscriptionError(0);
    sub_219F3CA68(&qword_27CCD9E38, 255, type metadata accessor for LiveActivitySubscriptionError);
    v39 = swift_allocError();
    v40 = *v38;
    v41 = v38[1];
    *v42 = v40;
    v42[1] = v41;
    v42[2] = v8;
    v42[3] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_219FE9018(v37, type metadata accessor for ActivityDownloadResult);
    *(v0 + 296) = v39;
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 80);
    v44 = *(v0 + 64);
    v45 = sub_21A0E516C();
    __swift_project_value_buffer(v45, qword_280C88498);
    sub_219FE9098(v44, v43, type metadata accessor for NewsLiveActivity);
    v46 = v39;
    v47 = sub_21A0E514C();
    v48 = sub_21A0E669C();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 80);
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70 = v53;
      *v51 = 136446466;
      v54 = *v50;
      v55 = v50[1];

      sub_219FE9018(v50, type metadata accessor for NewsLiveActivity);
      v56 = sub_219F50144(v54, v55, &v70);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2114;
      v57 = v39;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v58;
      *v52 = v58;
      _os_log_impl(&dword_219F39000, v47, v48, "Failed to fetch or start activity for newsID: %{public}s, error: %{public}@", v51, 0x16u);
      sub_219F6409C(v52, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x21CED2D30](v53, -1, -1);
      MEMORY[0x21CED2D30](v51, -1, -1);
    }

    else
    {

      sub_219FE9018(v50, type metadata accessor for NewsLiveActivity);
    }

    v59 = *(v0 + 64);
    v60 = *(*(v0 + 72) + 152);
    v62 = *v59;
    v61 = v59[1];
    *(v0 + 304) = v61;
    v63 = v60[7];

    v64 = swift_task_alloc();
    *(v64 + 16) = v62;
    *(v64 + 24) = v61;
    os_unfair_lock_lock(v63 + 6);
    sub_219FE9448(&v63[4]);
    os_unfair_lock_unlock(v63 + 6);

    v65 = v60[5];
    v66 = v60[6];
    __swift_project_boxed_opaque_existential_1(v60 + 2, v65);
    *(v0 + 32) = v62;
    *(v0 + 40) = v61;
    v69 = (*(v66 + 24) + **(v66 + 24));
    v67 = swift_task_alloc();
    *(v0 + 312) = v67;
    *v67 = v0;
    v67[1] = sub_219FD7B24;

    return v69(v0 + 32, v65, v66);
  }
}

uint64_t sub_219FD729C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_219FD82F8;
  }

  else
  {
    v2 = sub_219FD73B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FD73B0()
{
  v1 = v0[17];
  sub_219FE9018(v0[15], type metadata accessor for NewsLiveActivityContent);
  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityAttributes);
  sub_219FE9018(v0[22], type metadata accessor for ActivityDownloadResult);

  v2 = v0[1];

  return v2();
}

uint64_t sub_219FD74FC()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_219FD8708;
  }

  else
  {
    v2 = sub_219FD7620;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FD7620()
{
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_219FD76BC;
  v2 = *(v0 + 88);

  return sub_219FDE3C8(v2);
}

uint64_t sub_219FD76BC()
{

  return MEMORY[0x2822009F8](sub_219FD77B8, 0, 0);
}

uint64_t sub_219FD77B8()
{
  v1 = *(v0 + 329);
  v2 = *(v0 + 192);
  v3 = *(v0 + 128);
  v4 = *v3;
  v5 = v3[1];
  *v2 = *(v0 + 72);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v1;
  swift_storeEnumTagMultiPayload();

  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  *v6 = v0;
  v6[1] = sub_219FD7890;
  v7 = *(v0 + 192);

  return sub_219FCE550(v7);
}

uint64_t sub_219FD7890()
{
  v1 = *(*v0 + 192);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FD79BC, 0, 0);
}

uint64_t sub_219FD79BC()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  sub_219FE9018(v0[11], type metadata accessor for ScheduledLiveActivity);
  (*(v3 + 8))(v2, v4);
  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityAttributes);
  sub_219FE9018(v0[22], type metadata accessor for ActivityDownloadResult);

  v5 = v0[1];

  return v5();
}

uint64_t sub_219FD7B24()
{

  return MEMORY[0x2822009F8](sub_219FD7C20, 0, 0);
}

uint64_t sub_219FD7C20()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 329);
  v3 = *(v0 + 192);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  v6 = *v5;
  v7 = v5[1];
  *v3 = v4;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  *(v3 + 24) = v2;
  *(v3 + 32) = v1;
  swift_storeEnumTagMultiPayload();

  v8 = v1;

  v9 = swift_task_alloc();
  *(v0 + 320) = v9;
  *v9 = v0;
  v9[1] = sub_219FD7D18;
  v10 = *(v0 + 192);

  return sub_219FCE550(v10);
}

uint64_t sub_219FD7D18()
{
  v1 = *(*v0 + 192);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FD7E44, 0, 0);
}

uint64_t sub_219FD7E44()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FD7F44()
{
  v30 = v0;
  v1 = v0[30];
  v0[37] = v1;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = v0[8];
  v4 = sub_21A0E516C();
  __swift_project_value_buffer(v4, qword_280C88498);
  sub_219FE9098(v3, v2, type metadata accessor for NewsLiveActivity);
  v5 = v1;
  v6 = sub_21A0E514C();
  v7 = sub_21A0E669C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v10 = 136446466;
    v13 = *v9;
    v14 = v9[1];

    sub_219FE9018(v9, type metadata accessor for NewsLiveActivity);
    v15 = sub_219F50144(v13, v14, &v29);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2114;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_219F39000, v6, v7, "Failed to fetch or start activity for newsID: %{public}s, error: %{public}@", v10, 0x16u);
    sub_219F6409C(v11, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CED2D30](v12, -1, -1);
    MEMORY[0x21CED2D30](v10, -1, -1);
  }

  else
  {

    sub_219FE9018(v9, type metadata accessor for NewsLiveActivity);
  }

  v18 = v0[8];
  v19 = *(v0[9] + 152);
  v21 = *v18;
  v20 = v18[1];
  v0[38] = v20;
  v22 = v19[7];

  v23 = swift_task_alloc();
  *(v23 + 16) = v21;
  *(v23 + 24) = v20;
  os_unfair_lock_lock(v22 + 6);
  sub_219FE9448(&v22[4]);
  os_unfair_lock_unlock(v22 + 6);

  v24 = v19[5];
  v25 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v24);
  v0[4] = v21;
  v0[5] = v20;
  v28 = (*(v25 + 24) + **(v25 + 24));
  v26 = swift_task_alloc();
  v0[39] = v26;
  *v26 = v0;
  v26[1] = sub_219FD7B24;

  return v28(v0 + 4, v24, v25);
}

uint64_t sub_219FD82F8()
{
  v32 = v0;
  v1 = v0[22];
  v2 = v0[17];
  sub_219FE9018(v0[15], type metadata accessor for NewsLiveActivityContent);
  sub_219FE9018(v2, type metadata accessor for NewsLiveActivityAttributes);
  sub_219FE9018(v1, type metadata accessor for ActivityDownloadResult);
  v3 = v0[32];
  v0[37] = v3;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v4 = v0[10];
  v5 = v0[8];
  v6 = sub_21A0E516C();
  __swift_project_value_buffer(v6, qword_280C88498);
  sub_219FE9098(v5, v4, type metadata accessor for NewsLiveActivity);
  v7 = v3;
  v8 = sub_21A0E514C();
  v9 = sub_21A0E669C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v12 = 136446466;
    v15 = *v11;
    v16 = v11[1];

    sub_219FE9018(v11, type metadata accessor for NewsLiveActivity);
    v17 = sub_219F50144(v15, v16, &v31);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = v3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_219F39000, v8, v9, "Failed to fetch or start activity for newsID: %{public}s, error: %{public}@", v12, 0x16u);
    sub_219F6409C(v13, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CED2D30](v14, -1, -1);
    MEMORY[0x21CED2D30](v12, -1, -1);
  }

  else
  {

    sub_219FE9018(v11, type metadata accessor for NewsLiveActivity);
  }

  v20 = v0[8];
  v21 = *(v0[9] + 152);
  v23 = *v20;
  v22 = v20[1];
  v0[38] = v22;
  v24 = v21[7];

  v25 = swift_task_alloc();
  *(v25 + 16) = v23;
  *(v25 + 24) = v22;
  os_unfair_lock_lock(v24 + 6);
  sub_219FE9448(&v24[4]);
  os_unfair_lock_unlock(v24 + 6);

  v26 = v21[5];
  v27 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v26);
  v0[4] = v23;
  v0[5] = v22;
  v30 = (*(v27 + 24) + **(v27 + 24));
  v28 = swift_task_alloc();
  v0[39] = v28;
  *v28 = v0;
  v28[1] = sub_219FD7B24;

  return v30(v0 + 4, v26, v27);
}

uint64_t sub_219FD8708()
{
  v32 = v0;
  v1 = v0[22];
  v2 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  sub_219FE9018(v2, type metadata accessor for NewsLiveActivityAttributes);
  sub_219FE9018(v1, type metadata accessor for ActivityDownloadResult);
  v3 = v0[34];
  v0[37] = v3;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v4 = v0[10];
  v5 = v0[8];
  v6 = sub_21A0E516C();
  __swift_project_value_buffer(v6, qword_280C88498);
  sub_219FE9098(v5, v4, type metadata accessor for NewsLiveActivity);
  v7 = v3;
  v8 = sub_21A0E514C();
  v9 = sub_21A0E669C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v12 = 136446466;
    v15 = *v11;
    v16 = v11[1];

    sub_219FE9018(v11, type metadata accessor for NewsLiveActivity);
    v17 = sub_219F50144(v15, v16, &v31);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = v3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_219F39000, v8, v9, "Failed to fetch or start activity for newsID: %{public}s, error: %{public}@", v12, 0x16u);
    sub_219F6409C(v13, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CED2D30](v14, -1, -1);
    MEMORY[0x21CED2D30](v12, -1, -1);
  }

  else
  {

    sub_219FE9018(v11, type metadata accessor for NewsLiveActivity);
  }

  v20 = v0[8];
  v21 = *(v0[9] + 152);
  v23 = *v20;
  v22 = v20[1];
  v0[38] = v22;
  v24 = v21[7];

  v25 = swift_task_alloc();
  *(v25 + 16) = v23;
  *(v25 + 24) = v22;
  os_unfair_lock_lock(v24 + 6);
  sub_219FE9448(&v24[4]);
  os_unfair_lock_unlock(v24 + 6);

  v26 = v21[5];
  v27 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v26);
  v0[4] = v23;
  v0[5] = v22;
  v30 = (*(v27 + 24) + **(v27 + 24));
  v28 = swift_task_alloc();
  v0[39] = v28;
  *v28 = v0;
  v28[1] = sub_219FD7B24;

  return v30(v0 + 4, v26, v27);
}

uint64_t sub_219FD8B14(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v7 = type metadata accessor for NewsLiveActivity(0);
  *(v4 + 32) = v7;
  *(v4 + 40) = *(v7 - 8);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB020);
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  *(v4 + 104) = v8;
  *(v4 + 112) = v9;
  *(v4 + 120) = v10;
  *(v4 + 136) = *a3;

  return MEMORY[0x2822009F8](sub_219FD8C98, 0, 0);
}

uint64_t sub_219FD8C98()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);
  v6 = *(v5 + 56);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v1;
  *(v7 + 40) = v5;
  os_unfair_lock_lock((v6 + 24));
  sub_219FE982C((v6 + 16), v4);
  os_unfair_lock_unlock((v6 + 24));
  v9 = (v0 + 88);
  v8 = *(v0 + 88);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v14 = *(v0 + 40);
  v37 = *(v0 + 32);

  v15 = *(v13 + 48);
  sub_219F4D494(v12, v10, &qword_27CCD99E0);
  sub_219F4D494(v12 + v15, v11, &qword_27CCD99E0);
  sub_219F45500(v11, v8, &qword_27CCD99E0);
  v16 = *(v14 + 48);
  if (v16(v8, 1, v37) == 1)
  {
    goto LABEL_4;
  }

  v9 = (v0 + 80);
  v17 = *(v0 + 80);
  v18 = *(v0 + 104);
  v19 = *(v0 + 32);
  sub_219FE9100(*(v0 + 88), *(v0 + 56), type metadata accessor for NewsLiveActivity);
  sub_219F45500(v18, v17, &qword_27CCD99E0);
  if (v16(v17, 1, v19) == 1)
  {
    sub_219FE9018(*(v0 + 56), type metadata accessor for NewsLiveActivity);
LABEL_4:
    v20 = *v9;
    v21 = *(v0 + 104);
    sub_219F6409C(*(v0 + 96), &qword_27CCD99E0);
    sub_219F6409C(v21, &qword_27CCD99E0);
    sub_219F6409C(v20, &qword_27CCD99E0);
    v22 = type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange(0);
    v23 = 1;
LABEL_5:
    (*(*(v22 - 8) + 56))(*(v0 + 16), v23, 1, v22);

    v24 = *(v0 + 8);

    return v24();
  }

  v26 = *(v0 + 48);
  v27 = *(v0 + 56);
  sub_219FE9100(*(v0 + 80), v26, type metadata accessor for NewsLiveActivity);
  if (_s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(v27, v26))
  {
    v28 = *(v0 + 104);
    v30 = *(v0 + 48);
    v29 = *(v0 + 56);
    v31 = *(v0 + 16);
    sub_219F6409C(*(v0 + 96), &qword_27CCD99E0);
    sub_219F6409C(v28, &qword_27CCD99E0);
    sub_219FE9100(v30, v31, type metadata accessor for NewsLiveActivity);
    v22 = type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange(0);
    sub_219FE9100(v29, v31 + *(v22 + 20), type metadata accessor for NewsLiveActivity);
    v23 = 0;
    goto LABEL_5;
  }

  v32 = *(v0 + 24);
  v33 = v32[5];
  v34 = v32[6];
  __swift_project_boxed_opaque_existential_1(v32 + 2, v33);
  v38 = (*(v34 + 16) + **(v34 + 16));
  v35 = swift_task_alloc();
  *(v0 + 128) = v35;
  *v35 = v0;
  v35[1] = sub_219FD9134;
  v36 = *(v0 + 56);

  return v38(v36, v33, v34);
}

uint64_t sub_219FD9134()
{

  return MEMORY[0x2822009F8](sub_219FD9230, 0, 0);
}

uint64_t sub_219FD9230()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[2];
  sub_219F6409C(v0[12], &qword_27CCD99E0);
  sub_219F6409C(v1, &qword_27CCD99E0);
  sub_219FE9100(v3, v4, type metadata accessor for NewsLiveActivity);
  v5 = type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange(0);
  sub_219FE9100(v2, v4 + *(v5 + 20), type metadata accessor for NewsLiveActivity);
  (*(*(v5 - 8) + 56))(v0[2], 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_219FD939C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v5 = type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange(0);
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB038);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  type metadata accessor for LiveActivityDismissalBehavior(0);
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB040);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = type metadata accessor for NewsLiveActivity(0);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = type metadata accessor for NewsLiveActivityManager.Event(0);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 225) = *a2;

  return MEMORY[0x2822009F8](sub_219FD9588, 0, 0);
}

uint64_t sub_219FD9588()
{
  v1 = *(v0 + 225);
  v2 = *(v0 + 160);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v0 + 168) = *(v4 + 144);
  v5 = *v3;
  v6 = v3[1];
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  *(v2 + 24) = v1;
  swift_storeEnumTagMultiPayload();

  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_219FD9664;
  v8 = *(v0 + 160);

  return sub_219FCE550(v8);
}

uint64_t sub_219FD9664()
{
  v1 = *(*v0 + 160);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FD9790, 0, 0);
}

uint64_t sub_219FD9790()
{
  v29 = v0;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[6];
  v3 = sub_21A0E516C();
  v0[23] = __swift_project_value_buffer(v3, qword_280C88498);
  sub_219FE9098(v2, v1, type metadata accessor for NewsLiveActivity);
  v4 = sub_21A0E514C();
  v5 = sub_21A0E66BC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446210;
    v10 = *v7;
    v11 = v7[1];

    sub_219FE9018(v7, type metadata accessor for NewsLiveActivity);
    v12 = sub_219F50144(v10, v11, &v28);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_219F39000, v4, v5, "Requesting controller to end live activity newsID: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  else
  {

    sub_219FE9018(v7, type metadata accessor for NewsLiveActivity);
  }

  v14 = v0[13];
  v13 = v0[14];
  v16 = v0[6];
  v15 = v0[7];
  v17 = v15[5];
  v18 = v15[6];
  __swift_project_boxed_opaque_existential_1(v15 + 2, v17);
  v19 = v16[1];
  v0[2] = *v16;
  v0[3] = v19;
  v20 = type metadata accessor for NewsLiveActivityContent(0);
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = sub_21A0E495C();
  (*(*(v21 - 8) + 56))(v14, 2, 2, v21);
  v22 = *(v18 + 64);

  v27 = (v22 + *v22);
  v23 = swift_task_alloc();
  v0[24] = v23;
  *v23 = v0;
  v23[1] = sub_219FD9AF8;
  v25 = v0[13];
  v24 = v0[14];

  return (v27)(v0 + 2, v24, v25, v17, v18);
}

uint64_t sub_219FD9AF8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);

  sub_219FE9018(v2, type metadata accessor for LiveActivityDismissalBehavior);
  sub_219F6409C(v1, &qword_27CCDB040);

  return MEMORY[0x2822009F8](sub_219FD9C74, 0, 0);
}

uint64_t sub_219FD9C74()
{
  v1 = v0[6];
  v2 = v1[1];
  v0[4] = *v1;
  v0[5] = v2;

  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_219FD9D34;
  v4 = v0[12];

  return sub_219FD3AA0(v4, v0 + 4);
}

uint64_t sub_219FD9D34()
{

  return MEMORY[0x2822009F8](sub_219FD9E4C, 0, 0);
}

uint64_t sub_219FD9E4C()
{
  v1 = *(v0 + 225);
  v2 = *(v0 + 160);
  v3 = *(v0 + 48);
  v4 = *v3;
  v5 = v3[1];
  *v2 = *(v0 + 56);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v1;
  swift_storeEnumTagMultiPayload();

  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_219FD9F20;
  v7 = *(v0 + 160);

  return sub_219FCE550(v7);
}

uint64_t sub_219FD9F20()
{
  v1 = *(*v0 + 160);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FDA04C, 0, 0);
}

uint64_t sub_219FDA04C()
{
  v22 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_219F45500(*(v0 + 96), v1, &qword_27CCDB038);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 88);
    sub_219F6409C(*(v0 + 96), &qword_27CCDB038);
LABEL_7:
    sub_219F6409C(v4, &qword_27CCDB038);

    v14 = *(v0 + 8);

    return v14();
  }

  sub_219FE9100(*(v0 + 88), *(v0 + 80), type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);
  if (!sub_219FDEF9C())
  {
    v4 = *(v0 + 96);
    sub_219FE9018(*(v0 + 80), type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);
    goto LABEL_7;
  }

  sub_219FE9098(*(v0 + 48), *(v0 + 136), type metadata accessor for NewsLiveActivity);
  v5 = sub_21A0E514C();
  v6 = sub_21A0E66BC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 136);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    v11 = *v8;
    v12 = v8[1];

    sub_219FE9018(v8, type metadata accessor for NewsLiveActivity);
    v13 = sub_219F50144(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_219F39000, v5, v6, "Activity we just unsubscribed from received subscription request during unsubscription; automatically re-subscribing. ID=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {

    sub_219FE9018(v8, type metadata accessor for NewsLiveActivity);
  }

  v16 = *(v0 + 120);
  v17 = *(v0 + 80);
  sub_219FE9098(v17, *(v0 + 128), type metadata accessor for NewsLiveActivity);
  v18 = *(v17 + *(v16 + 28));
  if (v18 == 7)
  {
    LOBYTE(v18) = 0;
  }

  *(v0 + 224) = v18;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_219FDA3D4;
  v20 = *(v0 + 128);

  return sub_219FD6400(v20, (v0 + 224));
}

uint64_t sub_219FDA3D4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 128);

    sub_219FE9018(v3, type metadata accessor for NewsLiveActivity);
  }

  else
  {
    sub_219FE9018(*(v2 + 128), type metadata accessor for NewsLiveActivity);
  }

  return MEMORY[0x2822009F8](sub_219FDA528, 0, 0);
}

uint64_t sub_219FDA528()
{
  v1 = v0[12];
  sub_219FE9018(v0[10], type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);
  sub_219F6409C(v1, &qword_27CCDB038);

  v2 = v0[1];

  return v2();
}

uint64_t sub_219FDA62C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 160) = a1;
  v6 = type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange(0);
  *(v4 + 184) = v6;
  *(v4 + 192) = *(v6 - 8);
  *(v4 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB038);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v7 = sub_21A0E4A1C();
  *(v4 + 224) = v7;
  *(v4 + 232) = *(v7 - 8);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = type metadata accessor for NewsLiveActivity(0);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = type metadata accessor for NewsLiveActivityManager.Event(0);
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 377) = *a3;

  return MEMORY[0x2822009F8](sub_219FDA814, 0, 0);
}

uint64_t sub_219FDA814()
{
  v1 = *(v0 + 377);
  v2 = *(v0 + 288);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  *(v0 + 296) = *(v3 + 144);
  v5 = *v4;
  v6 = v4[1];
  *v2 = v3;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  *(v2 + 24) = v1;
  swift_storeEnumTagMultiPayload();

  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *v7 = v0;
  v7[1] = sub_219FDA8F4;
  v8 = *(v0 + 288);

  return sub_219FCE550(v8);
}

uint64_t sub_219FDA8F4()
{
  v1 = *(*v0 + 288);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FDAA20, 0, 0);
}

uint64_t sub_219FDAA20()
{
  v20 = v0;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[20];
  v3 = sub_21A0E516C();
  v0[39] = __swift_project_value_buffer(v3, qword_280C88498);
  sub_219FE9098(v2, v1, type metadata accessor for NewsLiveActivity);
  v4 = sub_21A0E514C();
  v5 = sub_21A0E66BC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[34];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = *v7;
    v11 = v7[1];

    sub_219FE9018(v7, type metadata accessor for NewsLiveActivity);
    v12 = sub_219F50144(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_219F39000, v4, v5, "Requesting daemon to cancel scheduled live activity newsID: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  else
  {

    sub_219FE9018(v7, type metadata accessor for NewsLiveActivity);
  }

  v13 = sub_21A0E49FC();
  v0[40] = v13;
  v14 = v13;
  v15 = sub_21A0E61DC();
  v0[41] = v15;
  type metadata accessor for ScheduledLiveActivity();
  v16 = sub_21A0E61DC();
  v0[42] = v16;
  v0[2] = v0;
  v0[3] = sub_219FDADBC;
  v17 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB010);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_219FDE31C;
  v0[13] = &block_descriptor_96;
  v0[14] = v17;
  [v14 cancelScheduledLiveActivityWithId:v15 backgroundTaskID:v16 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_219FDADBC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_219FDB8F4;
  }

  else
  {
    v2 = sub_219FDAECC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FDAECC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 160);

  v3 = v2[1];
  *(v0 + 144) = *v2;
  *(v0 + 152) = v3;

  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_219FDAF9C;
  v5 = *(v0 + 216);

  return sub_219FD3AA0(v5, (v0 + 144));
}

uint64_t sub_219FDAF9C()
{

  return MEMORY[0x2822009F8](sub_219FDB0B4, 0, 0);
}

uint64_t sub_219FDB0B4()
{
  v1 = *(v0 + 377);
  v2 = *(v0 + 288);
  v3 = *(v0 + 160);
  v4 = *v3;
  v5 = v3[1];
  *v2 = *(v0 + 176);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v1;
  swift_storeEnumTagMultiPayload();

  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *v6 = v0;
  v6[1] = sub_219FDB18C;
  v7 = *(v0 + 288);

  return sub_219FCE550(v7);
}

uint64_t sub_219FDB18C()
{
  v1 = *(*v0 + 288);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FDB2B8, 0, 0);
}

uint64_t sub_219FDB2B8()
{
  v25 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  sub_219F45500(*(v0 + 216), v1, &qword_27CCDB038);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 208);
    sub_219F6409C(*(v0 + 216), &qword_27CCDB038);
LABEL_7:
    sub_219F6409C(v4, &qword_27CCDB038);
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v16 = *(v0 + 224);
    sub_21A0E4A0C();
    swift_unknownObjectRelease();
    (*(v15 + 8))(v14, v16);

    v17 = *(v0 + 8);

    return v17();
  }

  sub_219FE9100(*(v0 + 208), *(v0 + 200), type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);
  if (!sub_219FDEF9C())
  {
    v4 = *(v0 + 216);
    sub_219FE9018(*(v0 + 200), type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);
    goto LABEL_7;
  }

  sub_219FE9098(*(v0 + 160), *(v0 + 264), type metadata accessor for NewsLiveActivity);
  v5 = sub_21A0E514C();
  v6 = sub_21A0E66BC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 264);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    v11 = *v8;
    v12 = v8[1];

    sub_219FE9018(v8, type metadata accessor for NewsLiveActivity);
    v13 = sub_219F50144(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_219F39000, v5, v6, "Scheduled activity we just cancelled received subscription request during unsubscription; automatically re-scheduling. ID=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {

    sub_219FE9018(v8, type metadata accessor for NewsLiveActivity);
  }

  v19 = *(v0 + 248);
  v20 = *(v0 + 200);
  sub_219FE9098(v20, *(v0 + 256), type metadata accessor for NewsLiveActivity);
  v21 = *(v20 + *(v19 + 28));
  if (v21 == 7)
  {
    LOBYTE(v21) = 0;
  }

  *(v0 + 376) = v21;
  v22 = swift_task_alloc();
  *(v0 + 368) = v22;
  *v22 = v0;
  v22[1] = sub_219FDB668;
  v23 = *(v0 + 256);

  return sub_219FD6400(v23, (v0 + 376));
}

uint64_t sub_219FDB668()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 256);

    sub_219FE9018(v3, type metadata accessor for NewsLiveActivity);
  }

  else
  {
    sub_219FE9018(*(v2 + 256), type metadata accessor for NewsLiveActivity);
  }

  return MEMORY[0x2822009F8](sub_219FDB7BC, 0, 0);
}

uint64_t sub_219FDB7BC()
{
  v1 = v0[27];
  sub_219FE9018(v0[25], type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);
  sub_219F6409C(v1, &qword_27CCDB038);
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  sub_21A0E4A0C();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_219FDB8F4()
{
  v1 = v0[42];
  v2 = v0[41];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  swift_willThrow();

  sub_21A0E4A0C();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_219FDBA04(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  v5 = a1[1];
  *(v3 + 48) = v2;
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 98) = *a2;
  return MEMORY[0x2822009F8](sub_219FDBA34, 0, 0);
}

uint64_t sub_219FDBA34()
{
  if (sub_219FDBDE4(*(v0 + 48), *(v0 + 56), *(v0 + 64)) & 1) != 0 || (sub_219FDBFC8(*(v0 + 48), *(v0 + 56), *(v0 + 64)))
  {
    v1 = *(v0 + 98);
    v2 = *(v0 + 64);
    *(v0 + 32) = *(v0 + 56);
    *(v0 + 40) = v2;
    *(v0 + 97) = v1;
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_219FDBBA0;

    return sub_219FD24B8((v0 + 32), (v0 + 97));
  }

  else
  {
    v5 = *(v0 + 98);
    v6 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 24) = v6;
    *(v0 + 96) = v5;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_219FDBC98;

    return sub_219FD40B0((v0 + 16), (v0 + 96));
  }
}

uint64_t sub_219FDBBA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_219FDBC98()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219FDBDCC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219FDBDE4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB060);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = a1[5];
  v11 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (*(v12 + 16) && (v13 = sub_219F477B4(a2, a3), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for NewsLiveActivityAttributes(0);
    v18 = *(v17 - 8);
    sub_219FE9098(v16 + *(v18 + 72) * v15, v9, type metadata accessor for NewsLiveActivityAttributes);

    v19 = 1;
    (*(v18 + 56))(v9, 0, 1, v17);
  }

  else
  {

    v20 = type metadata accessor for NewsLiveActivityAttributes(0);
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v19 = 0;
  }

  sub_219F6409C(v9, &qword_27CCDB060);
  return v19;
}

uint64_t sub_219FDBFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v4 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewsLiveActivity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*(a1 + 152) + 56);
  os_unfair_lock_lock(v13 + 6);

  v15 = sub_219F4B7A8(v14);
  os_unfair_lock_unlock(v13 + 6);
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 56);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  while (v18)
  {
LABEL_10:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_219FE9098(*(v15 + 48) + *(v9 + 72) * (v23 | (v21 << 6)), v12, type metadata accessor for NewsLiveActivity);
    sub_219FE9098(v12 + *(v8 + 20), v7, type metadata accessor for NewsLiveActivitySubscriptionState);
    v24 = type metadata accessor for ScheduledLiveActivity();
    if ((*(*(v24 - 8) + 48))(v7, 3, v24))
    {
      result = sub_219FE9018(v12, type metadata accessor for NewsLiveActivity);
    }

    else
    {
      sub_219FE9018(v7, type metadata accessor for NewsLiveActivitySubscriptionState);
      if (*v12 == v27 && v12[1] == v26)
      {
        sub_219FE9018(v12, type metadata accessor for NewsLiveActivity);
LABEL_18:

        return 1;
      }

      v25 = sub_21A0E6C5C();
      result = sub_219FE9018(v12, type metadata accessor for NewsLiveActivity);
      if (v25)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      return 0;
    }

    v18 = *(v15 + 56 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219FDC2D0(void *a1, uint64_t a2, char *a3)
{
  type metadata accessor for ScheduledLiveActivity();
  v7 = swift_task_alloc();
  v8 = a1[1];
  v9 = *a3;
  *(v3 + 16) = *a1;
  *(v3 + 24) = v8;
  *(v3 + 32) = v7;
  *(v3 + 56) = v9;
  v10 = swift_task_alloc();
  *(v3 + 40) = v10;
  *v10 = v3;
  v10[1] = sub_219FDC3D8;

  return sub_219FDC5D0(v7, (v3 + 16), a2, (v3 + 56), 1);
}

uint64_t sub_219FDC3D8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_219FDC56C;
  }

  else
  {
    sub_219FE9018(*(v2 + 32), type metadata accessor for ScheduledLiveActivity);
    v3 = sub_219FDC508;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219FDC508()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FDC56C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FDC5D0(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4, char a5)
{
  *(v6 + 152) = a3;
  *(v6 + 160) = v5;
  *(v6 + 416) = a5;
  *(v6 + 144) = a1;
  v9 = sub_21A0E495C();
  *(v6 + 168) = v9;
  *(v6 + 176) = *(v9 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  sub_21A0E4AEC();
  *(v6 + 200) = swift_task_alloc();
  v10 = sub_21A0E498C();
  *(v6 + 208) = v10;
  *(v6 + 216) = *(v10 - 8);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = type metadata accessor for ScheduledLiveActivity();
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v11 = sub_21A0E4A1C();
  *(v6 + 264) = v11;
  *(v6 + 272) = *(v11 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = type metadata accessor for NewsLiveActivityManager.Event(0);
  *(v6 + 296) = swift_task_alloc();
  v12 = sub_21A0E516C();
  *(v6 + 304) = v12;
  *(v6 + 312) = *(v12 - 8);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v13 = swift_task_alloc();
  v14 = *a2;
  v15 = a2[1];
  *(v6 + 336) = v13;
  *(v6 + 344) = v14;
  *(v6 + 352) = v15;
  *(v6 + 417) = *a4;

  return MEMORY[0x2822009F8](sub_219FDC894, 0, 0);
}

uint64_t sub_219FDC894()
{
  v73 = v0;
  sub_21A0E513C();

  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 344);
    v3 = *(v0 + 352);
    v5 = *(v0 + 336);
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v72[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_219F50144(v4, v3, v72);
    _os_log_impl(&dword_219F39000, v1, v2, "Will schedule live activity, id=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);

    v10 = *(v7 + 8);
    v10(v5, v6);
  }

  else
  {
    v11 = *(v0 + 336);
    v12 = *(v0 + 304);
    v13 = *(v0 + 312);

    v10 = *(v13 + 8);
    v10(v11, v12);
  }

  *(v0 + 360) = v10;
  if (*(v0 + 416) == 1)
  {
    v14 = *(v0 + 417);
    v15 = *(v0 + 344);
    v16 = *(v0 + 352);
    v17 = *(v0 + 296);
    *v17 = *(v0 + 160);
    *(v17 + 8) = v15;
    *(v17 + 16) = v16;
    *(v17 + 24) = v14;
    swift_storeEnumTagMultiPayload();

    v18 = swift_task_alloc();
    *(v0 + 368) = v18;
    *v18 = v0;
    v18[1] = sub_219FDD0C4;
    v19 = *(v0 + 296);

    return sub_219FCE550(v19);
  }

  else
  {
    v21 = sub_21A0E49FC();
    *(v0 + 376) = v21;
    v22 = *(v0 + 344);
    v23 = *(v0 + 352);
    v24 = *(v0 + 256);
    v67 = *(v0 + 248);
    v69 = *(v0 + 240);
    v71 = v21;
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v27 = *(v0 + 208);
    v28 = *(v0 + 160);
    v65 = *(v0 + 152);
    v29 = v28[16];
    v30 = v28[17];
    __swift_project_boxed_opaque_existential_1(v28 + 13, v29);
    v72[0] = v22;
    v72[1] = v23;
    sub_21A0E497C();
    v31 = sub_21A0E496C();
    v33 = v32;
    (*(v26 + 8))(v25, v27);
    (*(v30 + 8))(v72, v65, v31, v33, v29, v30);

    sub_21A0E513C();
    sub_219FE9098(v24, v67, type metadata accessor for ScheduledLiveActivity);
    sub_219FE9098(v24, v69, type metadata accessor for ScheduledLiveActivity);

    v34 = sub_21A0E514C();
    v35 = sub_21A0E66BC();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 360);
    if (v36)
    {
      v39 = *(v0 + 344);
      v38 = *(v0 + 352);
      v68 = *(v0 + 304);
      v70 = *(v0 + 328);
      v40 = *(v0 + 240);
      v41 = *(v0 + 248);
      v42 = *(v0 + 232);
      v66 = *(v0 + 360);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v72[0] = v44;
      *v43 = 136446722;
      *(v43 + 4) = sub_219F50144(v39, v38, v72);
      *(v43 + 12) = 2082;
      v45 = (v41 + *(v42 + 24));
      v46 = *v45;
      v47 = v45[1];

      sub_219FE9018(v41, type metadata accessor for ScheduledLiveActivity);
      v48 = sub_219F50144(v46, v47, v72);

      *(v43 + 14) = v48;
      *(v43 + 22) = 2080;
      v49 = ScheduledLiveActivity.description.getter();
      v51 = v50;
      sub_219FE9018(v40, type metadata accessor for ScheduledLiveActivity);
      v52 = sub_219F50144(v49, v51, v72);

      *(v43 + 24) = v52;
      _os_log_impl(&dword_219F39000, v34, v35, "Will connect to live activity XPC service on newsd to schedule live activity, id=%{public}s, backgroundTaskID=%{public}s, scheduledLiveActivity:%s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v44, -1, -1);
      MEMORY[0x21CED2D30](v43, -1, -1);

      v66(v70, v68);
    }

    else
    {
      v53 = *(v0 + 328);
      v54 = *(v0 + 304);
      v56 = *(v0 + 240);
      v55 = *(v0 + 248);

      sub_219FE9018(v56, type metadata accessor for ScheduledLiveActivity);
      sub_219FE9018(v55, type metadata accessor for ScheduledLiveActivity);
      v37(v53, v54);
    }

    v57 = *(v0 + 256);
    v58 = *(v0 + 232);
    v59 = *(v0 + 184);
    v60 = *(v0 + 168);
    v61 = *(*(v0 + 176) + 16);
    v61(*(v0 + 192), v57 + *(v58 + 20), v60);
    v61(v59, v57 + *(v58 + 28), v60);

    sub_21A0E4A6C();
    v62 = objc_allocWithZone(sub_21A0E49EC());
    v63 = sub_21A0E49BC();
    *(v0 + 384) = v63;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_219FDD82C;
    v64 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB010);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_219FDE31C;
    *(v0 + 104) = &block_descriptor_0;
    *(v0 + 112) = v64;
    [v71 scheduleLiveActivityWithRequest:v63 completionHandler:?];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_219FDD0C4()
{
  v1 = *(*v0 + 296);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FDD1F0, 0, 0);
}

uint64_t sub_219FDD1F0()
{
  v54 = v0;
  v1 = sub_21A0E49FC();
  v0[47] = v1;
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[32];
  v48 = v0[31];
  v50 = v0[30];
  v52 = v1;
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v8 = v0[20];
  v46 = v0[19];
  v9 = v8[16];
  v10 = v8[17];
  __swift_project_boxed_opaque_existential_1(v8 + 13, v9);
  v53[0] = v2;
  v53[1] = v3;
  sub_21A0E497C();
  v11 = sub_21A0E496C();
  v13 = v12;
  (*(v6 + 8))(v5, v7);
  (*(v10 + 8))(v53, v46, v11, v13, v9, v10);

  sub_21A0E513C();
  sub_219FE9098(v4, v48, type metadata accessor for ScheduledLiveActivity);
  sub_219FE9098(v4, v50, type metadata accessor for ScheduledLiveActivity);

  v14 = sub_21A0E514C();
  v15 = sub_21A0E66BC();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[45];
  if (v16)
  {
    v19 = v0[43];
    v18 = v0[44];
    v49 = v0[38];
    v51 = v0[41];
    v20 = v0[30];
    v21 = v0[31];
    v22 = v0[29];
    v47 = v0[45];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v53[0] = v24;
    *v23 = 136446722;
    *(v23 + 4) = sub_219F50144(v19, v18, v53);
    *(v23 + 12) = 2082;
    v25 = (v21 + *(v22 + 24));
    v26 = *v25;
    v27 = v25[1];

    sub_219FE9018(v21, type metadata accessor for ScheduledLiveActivity);
    v28 = sub_219F50144(v26, v27, v53);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2080;
    v29 = ScheduledLiveActivity.description.getter();
    v31 = v30;
    sub_219FE9018(v20, type metadata accessor for ScheduledLiveActivity);
    v32 = sub_219F50144(v29, v31, v53);

    *(v23 + 24) = v32;
    _os_log_impl(&dword_219F39000, v14, v15, "Will connect to live activity XPC service on newsd to schedule live activity, id=%{public}s, backgroundTaskID=%{public}s, scheduledLiveActivity:%s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v24, -1, -1);
    MEMORY[0x21CED2D30](v23, -1, -1);

    v47(v51, v49);
  }

  else
  {
    v33 = v0[41];
    v34 = v0[38];
    v36 = v0[30];
    v35 = v0[31];

    sub_219FE9018(v36, type metadata accessor for ScheduledLiveActivity);
    sub_219FE9018(v35, type metadata accessor for ScheduledLiveActivity);
    v17(v33, v34);
  }

  v37 = v0[32];
  v38 = v0[29];
  v39 = v0[23];
  v40 = v0[21];
  v41 = *(v0[22] + 16);
  v41(v0[24], v37 + *(v38 + 20), v40);
  v41(v39, v37 + *(v38 + 28), v40);

  sub_21A0E4A6C();
  v42 = objc_allocWithZone(sub_21A0E49EC());
  v43 = sub_21A0E49BC();
  v0[48] = v43;
  v0[2] = v0;
  v0[3] = sub_219FDD82C;
  v44 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB010);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_219FDE31C;
  v0[13] = &block_descriptor_0;
  v0[14] = v44;
  [v52 scheduleLiveActivityWithRequest:v43 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_219FDD82C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_219FDE1BC;
  }

  else
  {
    v2 = sub_219FDD93C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FDD93C()
{
  v22 = v0;
  v1 = *(v0 + 416);

  if (v1 == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 400) = v2;
    *v2 = v0;
    v2[1] = sub_219FDDC48;
    v3 = *(v0 + 256);

    return sub_219FDE3C8(v3);
  }

  else
  {
    sub_21A0E513C();

    v5 = sub_21A0E514C();
    v6 = sub_21A0E66BC();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 344);
      v7 = *(v0 + 352);
      v10 = *(v0 + 312);
      v9 = *(v0 + 320);
      v11 = *(v0 + 304);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_219F50144(v8, v7, &v21);
      _os_log_impl(&dword_219F39000, v5, v6, "Did schedule live activity, id=%{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CED2D30](v13, -1, -1);
      MEMORY[0x21CED2D30](v12, -1, -1);

      (*(v10 + 8))(v9, v11);
    }

    else
    {
      v15 = *(v0 + 312);
      v14 = *(v0 + 320);
      v16 = *(v0 + 304);

      (*(v15 + 8))(v14, v16);
    }

    v18 = *(v0 + 272);
    v17 = *(v0 + 280);
    v19 = *(v0 + 264);
    sub_219FE9100(*(v0 + 256), *(v0 + 144), type metadata accessor for ScheduledLiveActivity);
    sub_21A0E4A0C();
    swift_unknownObjectRelease();
    (*(v18 + 8))(v17, v19);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_219FDDC48()
{

  return MEMORY[0x2822009F8](sub_219FDDD44, 0, 0);
}

uint64_t sub_219FDDD44()
{
  v1 = *(v0 + 417);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 296);
  *v4 = *(v0 + 160);
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  *v5 = v0;
  v5[1] = sub_219FDDE1C;
  v6 = *(v0 + 296);

  return sub_219FCE550(v6);
}

uint64_t sub_219FDDE1C()
{
  v1 = *(*v0 + 296);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FDDF48, 0, 0);
}

uint64_t sub_219FDDF48()
{
  v19 = v0;
  sub_21A0E513C();

  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[43];
    v3 = v0[44];
    v6 = v0[39];
    v5 = v0[40];
    v7 = v0[38];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_219F50144(v4, v3, &v18);
    _os_log_impl(&dword_219F39000, v1, v2, "Did schedule live activity, id=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v11 = v0[39];
    v10 = v0[40];
    v12 = v0[38];

    (*(v11 + 8))(v10, v12);
  }

  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[33];
  sub_219FE9100(v0[32], v0[18], type metadata accessor for ScheduledLiveActivity);
  sub_21A0E4A0C();
  swift_unknownObjectRelease();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_219FDE1BC()
{
  v1 = v0[48];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  swift_willThrow();
  sub_219FE9018(v5, type metadata accessor for ScheduledLiveActivity);

  sub_21A0E4A0C();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_219FDE31C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_219FDE3C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB020);
  v2[5] = swift_task_alloc();
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB028);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for NewsLiveActivity(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FDE55C, 0, 0);
}

uint64_t sub_219FDE55C()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v0[3] + 56);
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v2;
  os_unfair_lock_lock((v5 + 24));
  sub_219FE93E8((v5 + 16), v1);
  os_unfair_lock_unlock((v5 + 24));
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  v34 = v0[4];

  v15 = *(v13 + 48);
  sub_219F4D494(v12, v7, &qword_27CCD99E0);
  sub_219FE9100(v12 + v15, v9, type metadata accessor for NewsLiveActivity);
  sub_219FE9098(v9, v8, type metadata accessor for NewsLiveActivity);
  (*(v11 + 56))(v8, 0, 1, v10);
  v16 = *(v34 + 48);
  sub_219F45500(v8, v14, &qword_27CCD99E0);
  sub_219F45500(v7, v14 + v16, &qword_27CCD99E0);
  v17 = *(v11 + 48);
  if (v17(v14, 1, v10) == 1)
  {
    v18 = v0[8];
    sub_219F6409C(v0[13], &qword_27CCD99E0);
    if (v17(v14 + v16, 1, v18) == 1)
    {
      sub_219F6409C(v0[5], &qword_27CCD99E0);
LABEL_11:
      v32 = v0[14];
      sub_219FE9018(v0[11], type metadata accessor for NewsLiveActivity);
      sub_219F6409C(v32, &qword_27CCD99E0);

      v33 = v0[1];

      return v33();
    }

    goto LABEL_6;
  }

  v19 = v0[8];
  sub_219F45500(v0[5], v0[12], &qword_27CCD99E0);
  v20 = v17(v14 + v16, 1, v19);
  v21 = v0[12];
  v22 = v0[13];
  if (v20 == 1)
  {
    sub_219F6409C(v0[13], &qword_27CCD99E0);
    sub_219FE9018(v21, type metadata accessor for NewsLiveActivity);
LABEL_6:
    sub_219F6409C(v0[5], &qword_27CCDB020);
    goto LABEL_7;
  }

  v29 = v0[10];
  v30 = v0[5];
  sub_219FE9100(v14 + v16, v29, type metadata accessor for NewsLiveActivity);
  v31 = _s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(v21, v29);
  sub_219FE9018(v29, type metadata accessor for NewsLiveActivity);
  sub_219F6409C(v22, &qword_27CCD99E0);
  sub_219FE9018(v21, type metadata accessor for NewsLiveActivity);
  sub_219F6409C(v30, &qword_27CCD99E0);
  if (v31)
  {
    goto LABEL_11;
  }

LABEL_7:
  v23 = v0[3];
  v24 = v23[5];
  v25 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 2, v24);
  v35 = (*(v25 + 16) + **(v25 + 16));
  v26 = swift_task_alloc();
  v0[15] = v26;
  *v26 = v0;
  v26[1] = sub_219FDEA54;
  v27 = v0[11];

  return v35(v27, v24, v25);
}

uint64_t sub_219FDEA54()
{

  return MEMORY[0x2822009F8](sub_219FDEB50, 0, 0);
}

uint64_t sub_219FDEB50()
{
  v1 = v0[14];
  sub_219FE9018(v0[11], type metadata accessor for NewsLiveActivity);
  sub_219F6409C(v1, &qword_27CCD99E0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_219FDEC40(uint64_t a1, void *a2)
{
  v3[5] = a1;
  v3[6] = v2;
  v4 = a2[1];
  v3[7] = *a2;
  v3[8] = v4;
  return MEMORY[0x2822009F8](sub_219FDEC68, 0, 0);
}

uint64_t sub_219FDEC68()
{
  v2 = v0[7];
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_1((v0[6] + 56), *(v0[6] + 80));
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_219FDED2C;
  v4 = v0[5];

  return sub_21A05CDFC(v4, v0 + 2);
}

uint64_t sub_219FDED2C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219FDEE60, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219FDEE60()
{
  v1 = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  if (swift_dynamicCast())
  {

    type metadata accessor for LiveActivitySubscriptionError(0);
    sub_219F3CA68(&qword_27CCD9E38, 255, type metadata accessor for LiveActivitySubscriptionError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

BOOL sub_219FDEF9C()
{
  v1 = type metadata accessor for ScheduledLiveActivity();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB048);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v25 - v17;
  v19 = *(type metadata accessor for NewsLiveActivity(0) + 20);
  (*(v2 + 56))(v18, 1, 3, v1);
  v20 = *(v7 + 56);
  sub_219FE9098(v0 + v19, v10, type metadata accessor for NewsLiveActivitySubscriptionState);
  sub_219FE9098(v18, &v10[v20], type metadata accessor for NewsLiveActivitySubscriptionState);
  v21 = *(v2 + 48);
  v22 = v21(v10, 3, v1);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
      if (v21(&v10[v20], 3, v1) == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
      if (v21(&v10[v20], 3, v1) == 3)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_219F6409C(v10, &qword_27CCDB048);
    return 0;
  }

  if (!v22)
  {
    sub_219FE9098(v10, v15, type metadata accessor for NewsLiveActivitySubscriptionState);
    if (!v21(&v10[v20], 3, v1))
    {
      sub_219FE9100(&v10[v20], v5, type metadata accessor for ScheduledLiveActivity);
      v23 = _s22NewsLiveActivitiesCore09ScheduledB8ActivityV2eeoiySbAC_ACtFZ_0(v15, v5);
      sub_219FE9018(v5, type metadata accessor for ScheduledLiveActivity);
      sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219FE9018(v15, type metadata accessor for ScheduledLiveActivity);
      sub_219FE9018(v10, type metadata accessor for NewsLiveActivitySubscriptionState);
      return v23;
    }

    sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
    sub_219FE9018(v15, type metadata accessor for ScheduledLiveActivity);
    goto LABEL_11;
  }

  sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
  if (v21(&v10[v20], 3, v1) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_219FE9018(v10, type metadata accessor for NewsLiveActivitySubscriptionState);
  return 1;
}

uint64_t sub_219FDF3A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  v1 = OBJC_IVAR____TtC22NewsLiveActivitiesCore23NewsLiveActivityManager_loadActivities;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA0D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_219FDF480()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  LOBYTE(v1) = (*(v2 + 8))(v1, v2);
  sub_21A0E50AC();
  return v1 & v4 & 1;
}

uint64_t sub_219FDF4FC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  LOBYTE(v1) = (*(v2 + 16))(v1, v2);
  sub_21A0E50AC();
  return v1 & v4 & 1;
}

void sub_219FDF578()
{
  v1 = *(*(*v0 + 144) + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_219FE9894((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_219FDF5D4(uint64_t *a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F49B18;

  return sub_219FD40B0(a1, a2);
}

uint64_t sub_219FDF67C(uint64_t *a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F52D74;

  return sub_219FD24B8(a1, a2);
}

uint64_t sub_219FDF724(uint64_t *a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F49B18;

  return sub_219FDBA04(a1, a2);
}

uint64_t sub_219FDF7CC(void *a1, uint64_t a2, char *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F4996C;

  return sub_219FDC2D0(a1, a2, a3);
}

uint64_t sub_219FDF87C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB068);

  return sub_21A0E506C();
}

uint64_t sub_219FDF8D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  v5 = type metadata accessor for NewsLiveActivity(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = (&v50 - v15);

  v18 = MEMORY[0x277D84F98];
  v54 = a1;
  *a1 = MEMORY[0x277D84F98];
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v53 = *(v6 + 72);
    *&v17 = 136446210;
    v51 = v17;
    v52 = v13;
    while (1)
    {
      sub_219FE9098(v20, v16, type metadata accessor for NewsLiveActivity);
      if (qword_280C88490 != -1)
      {
        swift_once();
      }

      v21 = sub_21A0E516C();
      __swift_project_value_buffer(v21, qword_280C88498);
      sub_219FE9098(v16, v13, type metadata accessor for NewsLiveActivity);
      v22 = sub_21A0E514C();
      v23 = sub_21A0E66BC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v56 = v25;
        *v24 = v51;
        v26 = NewsLiveActivity.description.getter();
        v27 = v13;
        v29 = v28;
        sub_219FE9018(v27, type metadata accessor for NewsLiveActivity);
        v30 = sub_219F50144(v26, v29, &v56);

        *(v24 + 4) = v30;
        _os_log_impl(&dword_219F39000, v22, v23, "Updating Live Activity. %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x21CED2D30](v25, -1, -1);
        MEMORY[0x21CED2D30](v24, -1, -1);
      }

      else
      {

        sub_219FE9018(v13, type metadata accessor for NewsLiveActivity);
      }

      v32 = *v16;
      v31 = v16[1];
      sub_219FE9098(v16, v55, type metadata accessor for NewsLiveActivity);
      v33 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v33;
      v56 = v35;
      v37 = sub_219F477B4(v32, v31);
      v38 = *(v35 + 16);
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        break;
      }

      v41 = v36;
      if (*(v35 + 24) >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21A0D50BC();
        }
      }

      else
      {
        sub_21A0D2184(v40, isUniquelyReferenced_nonNull_native);
        v42 = sub_219F477B4(v32, v31);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_22;
        }

        v37 = v42;
      }

      v44 = v53;
      v18 = v56;
      if (v41)
      {
        sub_219F7DBA0(v55, v56[7] + v37 * v53);
      }

      else
      {
        v56[(v37 >> 6) + 8] |= 1 << v37;
        v45 = (v18[6] + 16 * v37);
        *v45 = v32;
        v45[1] = v31;
        sub_219FE9100(v55, v18[7] + v37 * v44, type metadata accessor for NewsLiveActivity);
        v46 = v18[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_21;
        }

        v18[2] = v48;
      }

      sub_219FE9018(v16, type metadata accessor for NewsLiveActivity);
      *v54 = v18;
      v20 += v44;
      --v19;
      v13 = v52;
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_21A0E6D0C();
    __break(1u);
  }

  else
  {
LABEL_19:
    *v50 = v18;
  }

  return result;
}

uint64_t sub_219FDFD54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v42 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v40 - v10;
  v12 = type metadata accessor for NewsLiveActivity(0);
  v13 = *(v12 - 1);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = (v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = v40 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = (v40 - v23);
  v40[1] = a1;
  v25 = *a1;
  if (*(v25 + 16) && (v26 = sub_219F477B4(a2, a3), (v27 & 1) != 0))
  {
    sub_219FE9098(*(v25 + 56) + *(v13 + 72) * v26, v21, type metadata accessor for NewsLiveActivity);
    sub_219FE9100(v21, v24, type metadata accessor for NewsLiveActivity);
    v43 = v42;
    sub_21A007428(&v43, v17);
    if ((_s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(v24, v17) & 1) == 0)
    {
      sub_219FE962C(v17);
      sub_219FE9098(v17, v11, type metadata accessor for NewsLiveActivity);
      (*(v13 + 56))(v11, 0, 1, v12);

      sub_219F7AD44(v11, a2, a3);
    }

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB028) + 48);
    v29 = v24;
    v30 = v41;
    sub_219FE9100(v29, v41, type metadata accessor for NewsLiveActivity);
    (*(v13 + 56))(v30, 0, 1, v12);
    return sub_219FE9100(v17, v30 + v28, type metadata accessor for NewsLiveActivity);
  }

  else
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB028);
    v33 = v41;
    v34 = (v41 + *(v32 + 48));
    v35 = v12[5];
    v36 = type metadata accessor for ScheduledLiveActivity();
    (*(*(v36 - 8) + 56))(v34 + v35, 1, 3, v36);
    v37 = v12[6];
    v38 = sub_21A0E495C();
    (*(*(v38 - 8) + 56))(v34 + v37, 1, 1, v38);
    *v34 = a2;
    v34[1] = a3;
    *(v34 + v12[7]) = v42;
    *(v34 + v12[8]) = 7;

    sub_219FE962C(v34);
    sub_219FE9098(v34, v11, type metadata accessor for NewsLiveActivity);
    v39 = *(v13 + 56);
    v39(v11, 0, 1, v12);

    sub_219F7AD44(v11, a2, a3);
    return v39(v33, 1, 1, v12);
  }
}

uint64_t sub_219FE016C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v70 = a4;
  v8 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for NewsLiveActivity(0);
  v13 = *(v12 - 1);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v67 = &v64[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v64[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v68 = &v64[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v64[-v26];
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v64[-v29];
  v72 = a2;
  v73 = a1;
  v31 = *a1;
  v32 = *(v31 + 16);
  v71 = a3;
  if (v32 && (v33 = sub_219F477B4(a2, a3), (v34 & 1) != 0))
  {
    sub_219FE9098(*(v31 + 56) + *(v13 + 72) * v33, v30, type metadata accessor for NewsLiveActivity);
    v35 = *(v13 + 56);
    v36 = v30;
    v37 = 0;
  }

  else
  {
    v35 = *(v13 + 56);
    v36 = v30;
    v37 = 1;
  }

  v69 = v35;
  v35(v36, v37, 1, v12);
  v38 = v19;
  sub_219F45500(v30, v27, &qword_27CCD99E0);
  if ((*(v13 + 48))(v27, 1, v12) == 1)
  {
    sub_219F6409C(v27, &qword_27CCD99E0);
  }

  else
  {
    sub_219FE9100(v27, v19, type metadata accessor for NewsLiveActivity);
    v39 = v12[5];
    v40 = type metadata accessor for ScheduledLiveActivity();
    (*(*(v40 - 8) + 56))(v11, 1, 3, v40);
    LOBYTE(v39) = _s22NewsLiveActivitiesCore0aB25ActivitySubscriptionStateO2eeoiySbAC_ACtFZ_0(&v19[v39], v11);
    sub_219FE9018(v11, type metadata accessor for NewsLiveActivitySubscriptionState);
    if (v39)
    {
      v41 = v19;
    }

    else
    {
      if (qword_280C88490 != -1)
      {
        swift_once();
      }

      v42 = sub_21A0E516C();
      __swift_project_value_buffer(v42, qword_280C88498);
      v43 = v19;
      v44 = v67;
      sub_219FE9098(v43, v67, type metadata accessor for NewsLiveActivity);
      v45 = sub_21A0E514C();
      v46 = sub_21A0E669C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v75 = v66;
        *v47 = 136446210;
        v65 = v46;
        v48 = NewsLiveActivity.description.getter();
        v50 = v49;
        sub_219FE9018(v44, type metadata accessor for NewsLiveActivity);
        v51 = sub_219F50144(v48, v50, &v75);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_219F39000, v45, v65, "Scheduling already tracked activity: %{public}s", v47, 0xCu);
        v52 = v66;
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x21CED2D30](v52, -1, -1);
        MEMORY[0x21CED2D30](v47, -1, -1);
      }

      else
      {

        sub_219FE9018(v44, type metadata accessor for NewsLiveActivity);
      }

      v41 = v38;
    }

    sub_219FE9018(v41, type metadata accessor for NewsLiveActivity);
  }

  v54 = v71;
  v53 = v72;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB028);
  v56 = v74;
  v57 = (v74 + *(v55 + 48));
  v58 = v12[5];
  sub_219FE9098(v70, v57 + v58, type metadata accessor for ScheduledLiveActivity);
  v59 = type metadata accessor for ScheduledLiveActivity();
  (*(*(v59 - 8) + 56))(v57 + v58, 0, 3, v59);
  v60 = v12[6];
  v61 = sub_21A0E495C();
  (*(*(v61 - 8) + 56))(v57 + v60, 1, 1, v61);
  *v57 = v53;
  v57[1] = v54;
  *(v57 + v12[7]) = 0;
  *(v57 + v12[8]) = 7;
  v62 = v68;
  sub_219FE9098(v57, v68, type metadata accessor for NewsLiveActivity);
  v69(v62, 0, 1, v12);
  swift_bridgeObjectRetain_n();
  sub_219F7AD44(v62, v53, v54);
  return sub_219F4D494(v30, v56, &qword_27CCD99E0);
}

uint64_t sub_219FE07E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v126 = a5;
  v123 = a4;
  v129 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v124 = &v110 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB0C0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v113 = &v110 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v115 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v116 = &v110 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v122 = &v110 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v119 = &v110 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB058);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v114 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v111 = &v110 - v34;
  v118 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v112 = *(v118 - 8);
  v36 = MEMORY[0x28223BE20](v118, v35);
  v120 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v110 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v110 - v43;
  v45 = type metadata accessor for NewsLiveActivity(0);
  v127 = *(v45 - 8);
  v128 = v45;
  v47 = MEMORY[0x28223BE20](v45, v46);
  v49 = &v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v47, v50);
  v121 = (&v110 - v52);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v56 = (&v110 - v55);
  v58 = MEMORY[0x28223BE20](v54, v57);
  v60 = &v110 - v59;
  MEMORY[0x28223BE20](v58, v61);
  v63 = &v110 - v62;
  v125 = a1;
  v64 = *a1;
  if (!*(v64 + 16))
  {
    goto LABEL_10;
  }

  v117 = a3;
  v65 = sub_219F477B4(v129, a3);
  if ((v66 & 1) == 0)
  {
LABEL_6:
    a3 = v117;
    if (*(v64 + 16))
    {
      v74 = sub_219F477B4(v129, v117);
      if (v75)
      {
        sub_219FE9098(*(v64 + 56) + *(v127 + 72) * v74, v49, type metadata accessor for NewsLiveActivity);
        v76 = v49;
        v77 = v121;
        sub_219FE9100(v76, v121, type metadata accessor for NewsLiveActivity);
        v78 = type metadata accessor for ScheduledLiveActivity();
        v79 = v111;
        (*(*(v78 - 8) + 56))(v111, 2, 3, v78);
        v80 = v112;
        (*(v112 + 56))(v79, 0, 1, v118);
        v81 = v113;
        sub_219F45500(v123, v113, &qword_27CCDB0C0);
        v82 = type metadata accessor for NewsLiveActivityContentState(0);
        if ((*(*(v82 - 8) + 48))(v81, 1, v82) == 1)
        {
          sub_219F6409C(v81, &qword_27CCDB0C0);
          v83 = sub_21A0E495C();
          (*(*(v83 - 8) + 56))(v119, 1, 1, v83);
        }

        else
        {
          sub_21A091B80(v119);
          sub_219FE9018(v81, type metadata accessor for NewsLiveActivityContentState);
        }

        v89 = v128;
        v98 = v114;
        v97 = v115;
        v99 = v77[1];
        v128 = *v77;
        sub_219F4D494(v79, v114, &qword_27CCDB058);
        v100 = *(v80 + 48);
        v101 = v118;
        if (v100(v98, 1, v118) == 1)
        {
          sub_219FE9098(v77 + v89[5], v120, type metadata accessor for NewsLiveActivitySubscriptionState);
          v102 = v100(v98, 1, v101);

          v103 = v116;
          v104 = v99;
          if (v102 != 1)
          {
            sub_219F6409C(v98, &qword_27CCDB058);
          }
        }

        else
        {
          sub_219FE9100(v98, v120, type metadata accessor for NewsLiveActivitySubscriptionState);

          v103 = v116;
          v104 = v99;
        }

        sub_219F4D494(v119, v97, &qword_27CCD97F0);
        v105 = sub_21A0E495C();
        v106 = v97;
        v107 = *(v105 - 8);
        v108 = *(v107 + 48);
        if (v108(v106, 1, v105) == 1)
        {
          sub_219F45500(v121 + v89[6], v103, &qword_27CCD97F0);
          if (v108(v106, 1, v105) != 1)
          {
            sub_219F6409C(v106, &qword_27CCD97F0);
          }
        }

        else
        {
          (*(v107 + 32))(v103, v106, v105);
          (*(v107 + 56))(v103, 0, 1, v105);
        }

        v109 = *(v121 + v89[7]);
        v91 = *(v121 + v89[8]);
        sub_219FE9018(v121, type metadata accessor for NewsLiveActivity);
        *v56 = v128;
        v56[1] = v104;
        sub_219FE9100(v120, v56 + v89[5], type metadata accessor for NewsLiveActivitySubscriptionState);
        sub_219F4D494(v103, v56 + v89[6], &qword_27CCD97F0);
        *(v56 + v89[7]) = v109;
        a3 = v117;
        v90 = v129;
        goto LABEL_14;
      }
    }

LABEL_10:
    v84 = type metadata accessor for ScheduledLiveActivity();
    (*(*(v84 - 8) + 56))(v41, 2, 3, v84);
    sub_219F45500(v123, v14, &qword_27CCDB0C0);
    v85 = type metadata accessor for NewsLiveActivityContentState(0);
    v86 = (*(*(v85 - 8) + 48))(v14, 1, v85);

    if (v86 == 1)
    {
      sub_219F6409C(v14, &qword_27CCDB0C0);
      v87 = sub_21A0E495C();
      v88 = v122;
      (*(*(v87 - 8) + 56))(v122, 1, 1, v87);
    }

    else
    {
      v88 = v122;
      sub_21A091B80(v122);
      sub_219FE9018(v14, type metadata accessor for NewsLiveActivityContentState);
    }

    v89 = v128;
    v90 = v129;
    *v56 = v129;
    v56[1] = a3;
    sub_219FE9100(v41, v56 + v89[5], type metadata accessor for NewsLiveActivitySubscriptionState);
    sub_219F4D494(v88, v56 + v89[6], &qword_27CCD97F0);
    *(v56 + v89[7]) = 0;
    v91 = 7;
LABEL_14:
    *(v56 + v89[8]) = v91;
    sub_219FE962C(v56);
    v92 = v124;
    sub_219FE9098(v56, v124, type metadata accessor for NewsLiveActivity);
    v93 = *(v127 + 56);
    v93(v92, 0, 1, v89);

    sub_219F7AD44(v92, v90, a3);
    v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB028) + 48);
    v95 = v126;
    v93(v126, 1, 1, v89);
    v72 = v95 + v94;
    v73 = v56;
    return sub_219FE9100(v73, v72, type metadata accessor for NewsLiveActivity);
  }

  v67 = v127;
  sub_219FE9098(*(v64 + 56) + *(v127 + 72) * v65, v60, type metadata accessor for NewsLiveActivity);
  sub_219FE9100(v60, v63, type metadata accessor for NewsLiveActivity);
  v68 = v128[5];
  v69 = type metadata accessor for ScheduledLiveActivity();
  (*(*(v69 - 8) + 56))(v44, 3, 3, v69);
  LOBYTE(v68) = _s22NewsLiveActivitiesCore0aB25ActivitySubscriptionStateO2eeoiySbAC_ACtFZ_0(&v63[v68], v44);
  sub_219FE9018(v44, type metadata accessor for NewsLiveActivitySubscriptionState);
  if ((v68 & 1) == 0)
  {
    sub_219FE9018(v63, type metadata accessor for NewsLiveActivity);
    goto LABEL_6;
  }

  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB028) + 48);
  v71 = v126;
  sub_219FE9098(v63, v126, type metadata accessor for NewsLiveActivity);
  (*(v67 + 56))(v71, 0, 1, v128);
  v72 = v71 + v70;
  v73 = v63;
  return sub_219FE9100(v73, v72, type metadata accessor for NewsLiveActivity);
}

uint64_t sub_219FE1430@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v41) = a4;
  v43 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v40 - v11;
  v42 = type metadata accessor for NewsLiveActivity(0);
  v13 = *(v42 - 8);
  v15 = MEMORY[0x28223BE20](v42, v14);
  v17 = (v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v18);
  v20 = v40 - v19;
  v21 = *a1;
  if (*(*a1 + 16) && (v22 = sub_219F477B4(a2, a3), (v23 & 1) != 0))
  {
    v24 = *(v21 + 56) + *(v13 + 72) * v22;
    v40[1] = v5;
    sub_219FE9098(v24, v20, type metadata accessor for NewsLiveActivity);
    v44 = v41;
    sub_21A008684(&v44, v17);
    sub_219FE962C(v17);
    sub_219FE9098(v17, v12, type metadata accessor for NewsLiveActivity);
    v41 = *(v13 + 56);
    v25 = v42;
    v41(v12, 0, 1, v42);

    sub_219F7AD44(v12, a2, a3);
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB020) + 48);
    v27 = v43;
    sub_219FE9100(v20, v43, type metadata accessor for NewsLiveActivity);
    v28 = v41;
    v41(v27, 0, 1, v25);
    sub_219FE9100(v17, v27 + v26, type metadata accessor for NewsLiveActivity);
    return v28(v27 + v26, 0, 1, v25);
  }

  else
  {
    v30 = a2;
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v31 = sub_21A0E516C();
    __swift_project_value_buffer(v31, qword_280C88498);

    v32 = sub_21A0E514C();
    v33 = sub_21A0E66BC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_219F50144(v30, a3, &v45);
      _os_log_impl(&dword_219F39000, v32, v33, "Requested to unsubscribe from Live Activity not in repository. ID=%{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x21CED2D30](v35, -1, -1);
      MEMORY[0x21CED2D30](v34, -1, -1);
    }

    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB020) + 48);
    v37 = *(v13 + 56);
    v39 = v42;
    v38 = v43;
    v37(v43, 1, 1, v42);
    return (v37)(v38 + v36, 1, 1, v39);
  }
}

uint64_t sub_219FE1838@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v105 = a5;
  v104 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v101 = &v91 - v10;
  v11 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v100 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB058);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v95 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v94 = &v91 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v98 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v99 = &v91 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v103 = &v91 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v91 - v31;
  v33 = type metadata accessor for NewsLiveActivityContentState(0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for NewsLiveActivity(0);
  v106 = *(v37 - 1);
  v39 = MEMORY[0x28223BE20](v37, v38);
  v41 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v42);
  v44 = (&v91 - v43);
  v102 = a1;
  v45 = *a1;
  v46 = *(v45 + 16);
  v107 = a3;
  if (v46 && (v47 = sub_219F477B4(a2, a3), (v48 & 1) != 0))
  {
    v93 = a2;
    sub_219FE9098(*(v45 + 56) + *(v106 + 72) * v47, v41, type metadata accessor for NewsLiveActivity);
    sub_219FE9100(v41, v44, type metadata accessor for NewsLiveActivity);
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v49 = sub_21A0E516C();
    __swift_project_value_buffer(v49, qword_280C88498);
    sub_219FE9098(v104, v36, type metadata accessor for NewsLiveActivityContentState);
    v50 = v107;

    v51 = sub_21A0E514C();
    v52 = sub_21A0E66BC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v108 = v92;
      *v53 = 136446466;
      *(v53 + 4) = sub_219F50144(v93, v50, &v108);
      *(v53 + 12) = 2082;
      v54 = v52;
      sub_21A091B80(v32);
      v55 = sub_21A0E622C();
      v57 = v56;
      sub_219FE9018(v36, type metadata accessor for NewsLiveActivityContentState);
      v58 = sub_219F50144(v55, v57, &v108);

      *(v53 + 14) = v58;
      _os_log_impl(&dword_219F39000, v51, v54, "Updating content Live Activity. ID=%{public}s, Last Updated Date=%{public}s", v53, 0x16u);
      v59 = v92;
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v59, -1, -1);
      MEMORY[0x21CED2D30](v53, -1, -1);
    }

    else
    {

      sub_219FE9018(v36, type metadata accessor for NewsLiveActivityContentState);
    }

    v68 = v97;
    v69 = v98;
    v71 = v95;
    v70 = v96;
    v72 = v94;
    (*(v96 + 56))(v94, 1, 1, v97);
    sub_21A091B80(v103);
    v73 = v44[1];
    v104 = *v44;
    sub_219F4D494(v72, v71, &qword_27CCDB058);
    v74 = *(v70 + 48);
    v75 = v74(v71, 1, v68);
    v76 = v100;
    if (v75 == 1)
    {
      sub_219FE9098(v44 + v37[5], v100, type metadata accessor for NewsLiveActivitySubscriptionState);
      v77 = v74(v71, 1, v68);

      if (v77 != 1)
      {
        sub_219F6409C(v71, &qword_27CCDB058);
      }
    }

    else
    {
      sub_219FE9100(v71, v100, type metadata accessor for NewsLiveActivitySubscriptionState);
    }

    sub_219F4D494(v103, v69, &qword_27CCD97F0);
    v78 = sub_21A0E495C();
    v79 = v69;
    v80 = *(v78 - 8);
    v81 = *(v80 + 48);
    if (v81(v79, 1, v78) == 1)
    {
      v82 = v99;
      sub_219F45500(v44 + v37[6], v99, &qword_27CCD97F0);
      v83 = v81(v79, 1, v78);
      v84 = v82;
      if (v83 != 1)
      {
        sub_219F6409C(v79, &qword_27CCD97F0);
      }
    }

    else
    {
      v84 = v99;
      (*(v80 + 32))(v99, v79, v78);
      (*(v80 + 56))(v84, 0, 1, v78);
    }

    v85 = *(v44 + v37[7]);
    v86 = *(v44 + v37[8]);
    v87 = v105;
    *v105 = v104;
    *(v87 + 8) = v73;
    sub_219FE9100(v76, v87 + v37[5], type metadata accessor for NewsLiveActivitySubscriptionState);
    sub_219F4D494(v84, v87 + v37[6], &qword_27CCD97F0);
    *(v87 + v37[7]) = v85;
    *(v87 + v37[8]) = v86;
    v88 = v101;
    sub_219FE9098(v87, v101, type metadata accessor for NewsLiveActivity);
    v89 = *(v106 + 56);
    v89(v88, 0, 1, v37);
    v90 = v107;

    sub_219F7AD44(v88, v93, v90);
    sub_219FE9018(v44, type metadata accessor for NewsLiveActivity);
    return (v89)(v87, 0, 1, v37);
  }

  else
  {
    v60 = a2;
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v61 = sub_21A0E516C();
    __swift_project_value_buffer(v61, qword_280C88498);
    v62 = v107;

    v63 = sub_21A0E514C();
    v64 = sub_21A0E669C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v108 = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_219F50144(v60, v62, &v108);
      _os_log_impl(&dword_219F39000, v63, v64, "Requested to update the content of a Live Activity not in repository. ID=%{public}s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x21CED2D30](v66, -1, -1);
      MEMORY[0x21CED2D30](v65, -1, -1);
    }

    return (*(v106 + 56))(v105, 1, 1, v37);
  }
}

uint64_t sub_219FE2238@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v45[0] = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v45 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = v45 - v16;
  v18 = type metadata accessor for NewsLiveActivity(0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = v45 - v25;
  v45[1] = a1;
  v27 = *a1;
  if (*(v27 + 16) && (v28 = sub_219F477B4(a2, a3), (v29 & 1) != 0))
  {
    sub_219FE9098(*(v27 + 56) + *(v19 + 72) * v28, v26, type metadata accessor for NewsLiveActivity);
    sub_21A009A48(v17);
    sub_219F45500(v17, v14, &qword_27CCD99E0);
    if ((*(v19 + 48))(v14, 1, v18) == 1)
    {
      sub_219F6409C(v14, &qword_27CCD99E0);
      if (qword_280C88490 != -1)
      {
        swift_once();
      }

      v30 = sub_21A0E516C();
      __swift_project_value_buffer(v30, qword_280C88498);

      v31 = sub_21A0E514C();
      v32 = sub_21A0E66BC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v47 = v34;
        *v33 = 136446210;
        *(v33 + 4) = sub_219F50144(a2, a3, &v47);
        _os_log_impl(&dword_219F39000, v31, v32, "Removing Live Activity. ID=%{public}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x21CED2D30](v34, -1, -1);
        MEMORY[0x21CED2D30](v33, -1, -1);
      }
    }

    else
    {
      sub_219FE9100(v14, v23, type metadata accessor for NewsLiveActivity);
      sub_219FE962C(v23);
      sub_219FE9018(v23, type metadata accessor for NewsLiveActivity);
    }

    v42 = v45[0];
    sub_219F45500(v17, v45[0], &qword_27CCD99E0);

    sub_219F7AD44(v42, a2, a3);
    v43 = v46;
    sub_219FE9100(v26, v46, type metadata accessor for NewsLiveActivity);
    v44 = type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange(0);
    sub_219F4D494(v17, v43 + *(v44 + 20), &qword_27CCD99E0);
    return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  }

  else
  {
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v35 = sub_21A0E516C();
    __swift_project_value_buffer(v35, qword_280C88498);

    v36 = sub_21A0E514C();
    v37 = sub_21A0E669C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_219F50144(a2, a3, &v47);
      _os_log_impl(&dword_219F39000, v36, v37, "Requested to remove a Live Activity we weren't tracking. ID=%{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x21CED2D30](v39, -1, -1);
      MEMORY[0x21CED2D30](v38, -1, -1);
    }

    v40 = type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange(0);
    return (*(*(v40 - 8) + 56))(v46, 1, 1, v40);
  }
}

uint64_t sub_219FE27C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v9 = sub_21A0E516C();
  __swift_project_value_buffer(v9, qword_280C88498);

  v10 = sub_21A0E514C();
  v11 = sub_21A0E66BC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_219F50144(a2, a3, &v17);
    _os_log_impl(&dword_219F39000, v10, v11, "Removing revoked Live Activity from store. ID=%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x21CED2D30](v13, -1, -1);
    MEMORY[0x21CED2D30](v12, -1, -1);
  }

  v14 = type metadata accessor for NewsLiveActivity(0);
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);

  return sub_219F7AD44(v8, a2, a3);
}

uint64_t sub_219FE29CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_219FE2A0C(unint64_t *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_219FE98B0(a1, a2);
  result = swift_unknownObjectRelease();
  if (*a1 >> 62)
  {
    result = sub_21A0E699C();
    v6 = result;
    if (result >= v4)
    {
      return sub_219FE9C98(v4, v6);
    }
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
      return sub_219FE9C98(v4, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219FE2AAC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *(v2 + 16) = *a1;

  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_219FE2B60;

  return sub_219FE50F8(v4, a2);
}

uint64_t sub_219FE2B60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_219FE2C70()
{

  return swift_deallocClassInstance();
}

unint64_t sub_219FE2CA8()
{
  v1 = v0;
  v2 = type metadata accessor for NewsLiveActivity(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NewsLiveActivityManager.Event(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FE9098(v1, v9, type metadata accessor for NewsLiveActivityManager.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      v13 = v9[24];
      if (EnumCaseMultiPayload)
      {

        v34 = 0;
        v35 = 0xE000000000000000;
        sub_21A0E686C();

        v14 = 0x6465686353646964;
        v15 = 0xEC00000028656C75;
      }

      else
      {

        v34 = 0;
        v35 = 0xE000000000000000;
        sub_21A0E686C();

        v14 = 0x736275536C6C6977;
        v15 = 0xEE00286562697263;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      v13 = v9[24];

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_21A0E686C();

      v14 = 0x6373627553646964;
      v15 = 0xED00002865626972;
      goto LABEL_17;
    }

    v22 = *(v9 + 1);
    v23 = *(v9 + 2);
    v24 = v9[24];
    v25 = *(v9 + 4);

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_21A0E686C();
    MEMORY[0x21CED1980](0xD000000000000012, 0x800000021A10A5F0);
    MEMORY[0x21CED1980](v22, v23);

    MEMORY[0x21CED1980](8236, 0xE200000000000000);
    if (v24 <= 2)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          v26 = 0x6C69546F63736964;
          v27 = 0xE900000000000065;
        }

        else
        {
          v27 = 0xE800000000000000;
          v26 = 0x6465626D45626577;
        }
      }

      else
      {
        v26 = 0x6E776F6E6B6E75;
        v27 = 0xE700000000000000;
      }

      goto LABEL_55;
    }

    if (v24 > 4)
    {
      if (v24 == 5)
      {
        v27 = 0xE800000000000000;
        v26 = 0x6B6E696C70656564;
        goto LABEL_55;
      }

      v26 = 0x7974697669746361;
      v31 = 7629131;
    }

    else
    {
      if (v24 == 3)
      {
        v26 = 0x6163696669746F6ELL;
        v27 = 0xEC0000006E6F6974;
LABEL_55:
        MEMORY[0x21CED1980](v26, v27);

        MEMORY[0x21CED1980](8236, 0xE200000000000000);
        v32 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
        sub_21A0E697C();
        MEMORY[0x21CED1980](41, 0xE100000000000000);

        return v34;
      }

      v26 = 0x50676E69646E616CLL;
      v31 = 6645601;
    }

    v27 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_55;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      v13 = v9[24];

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_21A0E686C();

      v34 = 0xD000000000000010;
      v35 = 0x800000021A10A5D0;
LABEL_18:
      MEMORY[0x21CED1980](v11, v12);

      MEMORY[0x21CED1980](8236, 0xE200000000000000);
      if (v13 > 2)
      {
        if (v13 <= 4)
        {
          if (v13 == 3)
          {
            goto LABEL_21;
          }

          goto LABEL_14;
        }

        if (v13 == 5)
        {
          v17 = 0xE800000000000000;
LABEL_27:
          v20 = 0x6B6E696C70656564;
          goto LABEL_45;
        }

LABEL_43:
        v20 = 0x7974697669746361;
        v21 = 7629131;
        goto LABEL_44;
      }

      if (!v13)
      {
        v20 = 0x6E776F6E6B6E75;
        v17 = 0xE700000000000000;
        goto LABEL_45;
      }

      if (v13 == 1)
      {
LABEL_24:
        v20 = 0x6C69546F63736964;
        v17 = 0xE900000000000065;
        goto LABEL_45;
      }

      v17 = 0xE800000000000000;
LABEL_35:
      v20 = 0x6465626D45626577;
      goto LABEL_45;
    }

    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    v13 = v9[24];

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_21A0E686C();

    v14 = 0x6275736E55646964;
    v15 = 0xEF28656269726373;
LABEL_17:
    v34 = v14;
    v35 = v15;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 6)
  {

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB018);
    sub_219FE9100(&v9[*(v28 + 48)], v5, type metadata accessor for NewsLiveActivity);
    v34 = 0xD000000000000016;
    v35 = 0x800000021A10A590;
    MEMORY[0x21CED1980](*v5, v5[1]);
    MEMORY[0x21CED1980](41, 0xE100000000000000);
    v29 = v34;
    sub_219FE9018(v5, type metadata accessor for NewsLiveActivity);
    return v29;
  }

  v16 = v9[24];

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_21A0E686C();

  v34 = 0xD00000000000001BLL;
  v35 = 0x800000021A10A5B0;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_21A0E686C();

  v17 = 0xE800000000000000;
  v32 = 0x3D64657472617453;
  v33 = 0xE800000000000000;
  sub_219F4DBDC();
  v18 = sub_21A0E65EC();
  MEMORY[0x21CED1980](v18);

  MEMORY[0x21CED1980](0x3D6465646E45202CLL, 0xE800000000000000);
  v19 = sub_21A0E65EC();
  MEMORY[0x21CED1980](v19);

  MEMORY[0x21CED1980](v32, v33);

  MEMORY[0x21CED1980](8236, 0xE200000000000000);
  if (v16 <= 2)
  {
    if (!v16)
    {
      v17 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
      goto LABEL_45;
    }

    if (v16 == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  if (v16 > 4)
  {
    if (v16 == 5)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

  if (v16 != 3)
  {
LABEL_14:
    v20 = 0x50676E69646E616CLL;
    v21 = 6645601;
LABEL_44:
    v17 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_45;
  }

LABEL_21:
  v20 = 0x6163696669746F6ELL;
  v17 = 0xEC0000006E6F6974;
LABEL_45:
  MEMORY[0x21CED1980](v20, v17);

  MEMORY[0x21CED1980](41, 0xE100000000000000);
  return v34;
}

uint64_t sub_219FE3440()
{
  sub_219FE9F70(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_219FE3478(void *a1, void *a2, _BYTE *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_219F49B18;

  return sub_219FE6D54(v9, a2, a3, v3, v7, v8);
}

uint64_t sub_219FE3544(void *a1, void *a2, _BYTE *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_219F4996C;

  return sub_219FE70D0(v9, a2, a3, v3, v7, v8);
}

uint64_t sub_219FE3610(void *a1, void *a2, _BYTE *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_219F49B18;

  return sub_219FE74B4(v9, a2, a3, v3, v7, v8);
}

uint64_t sub_219FE36DC(void *a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_219F49B18;

  return sub_219FE7734(v11, a2, a3, a4, v4, v9, v10);
}

uint64_t sub_219FE37B8(void *a1, void *a2, _BYTE *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_219F49B18;

  return sub_219FE7B1C(v9, a2, a3, v3, v7, v8);
}

uint64_t sub_219FE3884(void *a1, void *a2, _BYTE *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_219F49B18;

  return sub_219FE7D9C(v9, a2, a3, v3, v7, v8);
}

uint64_t sub_219FE3950(void *a1, _OWORD *a2, _BYTE *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_219F49B18;

  return sub_219FE801C(v9, a2, a3, v3, v7, v8);
}

uint64_t sub_219FE3A1C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_219FE3A40, 0, 0);
}

uint64_t sub_219FE3A40()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = *(v0[4] + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 64) + **(v2 + 64));
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_219FE3BB4;
    v6 = v0[2];
    v5 = v0[3];

    return v9(v6, v5, ObjectType, v2);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_219FE3BB4()
{

  return MEMORY[0x2822009F8](sub_219FE3CB0, 0, 0);
}

uint64_t sub_219FE3CB0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_219FE3D10()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = &unk_21A0F16E0;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = &unk_21A0F16E0;
    *(v6 + 24) = v4;
    *(v1 + 16) = &unk_21A0F16F0;
    *(v1 + 24) = v6;

    os_unfair_lock_unlock((v1 + 32));
    v7 = swift_allocObject();
    *(v7 + 16) = &unk_21A0F16E8;
    *(v7 + 24) = v5;
    return &unk_21A0F16D8;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 32));
    return 0;
  }
}

uint64_t sub_219FE3E28(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_219F49B18;

  return v5();
}

uint64_t sub_219FE3F1C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_219F49B18;

  return v7(a2);
}

BOOL sub_219FE4010(uint64_t a1)
{
  v2 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsLiveActivity(0);
  sub_219FE9098(a1 + *(v6 + 20), v5, type metadata accessor for NewsLiveActivitySubscriptionState);
  v7 = type metadata accessor for ScheduledLiveActivity();
  v8 = (*(*(v7 - 8) + 48))(v5, 3, v7);
  if (!v8)
  {
    sub_219FE9018(v5, type metadata accessor for NewsLiveActivitySubscriptionState);
  }

  return v8 != 0;
}

BOOL sub_219FE411C(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledLiveActivity();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v28 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB048);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v27 - v17;
  v19 = *(type metadata accessor for NewsLiveActivity(0) + 20);
  (*(v3 + 56))(v18, 1, 3, v2);
  v20 = *(v7 + 56);
  sub_219FE9098(a1 + v19, v10, type metadata accessor for NewsLiveActivitySubscriptionState);
  sub_219FE9098(v18, &v10[v20], type metadata accessor for NewsLiveActivitySubscriptionState);
  v21 = *(v3 + 48);
  v22 = v21(v10, 3, v2);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
      if (v21(&v10[v20], 3, v2) == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
      if (v21(&v10[v20], 3, v2) == 3)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_219F6409C(v10, &qword_27CCDB048);
    return 0;
  }

  if (!v22)
  {
    sub_219FE9098(v10, v15, type metadata accessor for NewsLiveActivitySubscriptionState);
    if (!v21(&v10[v20], 3, v2))
    {
      v25 = &v10[v20];
      v26 = v28;
      sub_219FE9100(v25, v28, type metadata accessor for ScheduledLiveActivity);
      v23 = _s22NewsLiveActivitiesCore09ScheduledB8ActivityV2eeoiySbAC_ACtFZ_0(v15, v26);
      sub_219FE9018(v26, type metadata accessor for ScheduledLiveActivity);
      sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219FE9018(v15, type metadata accessor for ScheduledLiveActivity);
      sub_219FE9018(v10, type metadata accessor for NewsLiveActivitySubscriptionState);
      return v23;
    }

    sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
    sub_219FE9018(v15, type metadata accessor for ScheduledLiveActivity);
    goto LABEL_11;
  }

  sub_219FE9018(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
  if (v21(&v10[v20], 3, v2) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_219FE9018(v10, type metadata accessor for NewsLiveActivitySubscriptionState);
  return 1;
}

uint64_t sub_219FE4538()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_219FE459C()
{
  v1 = MEMORY[0x277D84F98];
  sub_219F4C568(MEMORY[0x277D84FA0], sub_219FC783C, 0, 1, &v1);
  return v1;
}

uint64_t sub_219FE465C()
{
  sub_219FE9E0C();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FE4704()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_219FE47A4;

  return MEMORY[0x28218EB48]();
}

uint64_t sub_219FE47A4()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_219FE48A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA0D0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FE4954, 0, 0);
}

uint64_t sub_219FE4954()
{
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v2 = 0;
      v24 = v1 & 0xFFFFFFFFFFFFFF8;
      v25 = v1 & 0xC000000000000001;
      v21 = v0 + 2;
      while (v25)
      {
        v3 = MEMORY[0x21CED1F60](v2, v0[10]);
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_18;
        }

LABEL_8:
        v27 = v4;
        v28 = v2;
        v6 = v0[13];
        v5 = v0[14];
        v26 = v3;
        v8 = v0[11];
        v7 = v0[12];
        v9 = sub_21A0E652C();
        v10 = *(v9 - 8);
        (*(v10 + 56))(v5, 1, 1, v9);
        v11 = swift_allocObject();
        v11[2] = 0;
        v11[3] = 0;
        v11[4] = v8;
        v11[5] = v7;
        v11[6] = v26;
        sub_219F45500(v5, v6, &qword_27CCDA0D0);
        LODWORD(v5) = (*(v10 + 48))(v6, 1, v9);

        v12 = v0[13];
        if (v5 == 1)
        {
          sub_219F6409C(v0[13], &qword_27CCDA0D0);
        }

        else
        {
          sub_21A0E651C();
          (*(v10 + 8))(v12, v9);
        }

        if (v11[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v13 = sub_21A0E647C();
          v15 = v14;
          swift_unknownObjectRelease();
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v0 = v22;
        v16 = **(v22 + 72);
        v17 = swift_allocObject();
        *(v17 + 16) = &unk_21A0F1498;
        *(v17 + 24) = v11;
        v18 = (v15 | v13);
        if (v15 | v13)
        {
          v18 = v21;
          *v21 = 0;
          v21[1] = 0;
          *(v22 + 32) = v13;
          *(v22 + 40) = v15;
        }

        v1 = *(v22 + 112);
        *(v22 + 48) = 1;
        *(v22 + 56) = v18;
        *(v22 + 64) = v16;
        swift_task_create();

        sub_219F6409C(v1, &qword_27CCDA0D0);
        v2 = v28 + 1;
        if (v27 == v23)
        {
          goto LABEL_21;
        }
      }

      if (v2 >= *(v24 + 16))
      {
        goto LABEL_19;
      }

      v4 = v2 + 1;
      if (!__OFADD__(v2, 1))
      {
        goto LABEL_8;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    while (sub_21A0E699C());
  }

LABEL_21:

  v19 = v0[1];

  return v19();
}

uint64_t sub_219FE4CD8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21A0E699C();
LABEL_9:
  result = sub_21A0E689C();
  *v1 = result;
  return result;
}

uint64_t sub_219FE4DB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21A0E699C();
  }

  return sub_21A0E689C();
}

uint64_t sub_219FE4E38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F49B18;

  return sub_219FE48A8(a1, a2, v10, a4, a5);
}

uint64_t sub_219FE4F00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, void *a6)
{
  *(v6 + 16) = *a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_219FE4FFC;

  return v9(v6 + 16);
}

uint64_t sub_219FE4FFC()
{

  return MEMORY[0x2822009F8](sub_219F53078, 0, 0);
}

uint64_t sub_219FE50F8(uint64_t a1, uint64_t a2)
{
  v2[56] = a1;
  v2[57] = a2;
  type metadata accessor for NewsLiveActivity(0);
  v2[58] = swift_task_alloc();
  v2[59] = type metadata accessor for NewsLiveActivityManager.Event(0);
  v2[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FE51B8, 0, 0);
}

uint64_t sub_219FE51B8()
{
  v1 = *(v0 + 480);
  sub_219FE9098(*(v0 + 456), v1, type metadata accessor for NewsLiveActivityManager.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *v1;
  *(v0 + 488) = v3;
  v4 = *(v0 + 480);
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v40 = *(v4 + 8);
        v39 = *(v4 + 16);
        *(v0 + 520) = v39;
        v41 = *(v4 + 24);
        *(v0 + 280) = type metadata accessor for NewsLiveActivityManager(0);
        *(v0 + 288) = sub_219F3CA68(&qword_280C87EE8, 255, type metadata accessor for NewsLiveActivityManager);
        *(v0 + 256) = v3;
        swift_retain_n();
        Strong = swift_unknownObjectWeakLoadStrong();
        *(v0 + 528) = Strong;
        if (Strong)
        {
          v43 = *(*(v0 + 448) + 24);
          ObjectType = swift_getObjectType();
          *(v0 + 416) = v40;
          *(v0 + 424) = v39;
          *(v0 + 701) = v41;
          v77 = (*(v43 + 16) + **(v43 + 16));
          v45 = swift_task_alloc();
          *(v0 + 536) = v45;
          *v45 = v0;
          v45[1] = sub_219FE61F8;
          v12 = v0 + 256;
          v13 = v0 + 416;
          v14 = v0 + 701;
          v15 = ObjectType;
          v16 = v43;
          v17 = v77;

          return v17(v12, v13, v14, v15, v16);
        }

        v69 = v0 + 256;
      }

      else
      {
        v6 = *(v4 + 8);
        v5 = *(v4 + 16);
        *(v0 + 496) = v5;
        v7 = *(v4 + 24);
        *(v0 + 320) = type metadata accessor for NewsLiveActivityManager(0);
        *(v0 + 328) = sub_219F3CA68(&qword_280C87EE8, 255, type metadata accessor for NewsLiveActivityManager);
        *(v0 + 296) = v3;
        swift_retain_n();
        v8 = swift_unknownObjectWeakLoadStrong();
        *(v0 + 504) = v8;
        if (v8)
        {
          v9 = *(*(v0 + 448) + 24);
          v10 = swift_getObjectType();
          *(v0 + 432) = v6;
          *(v0 + 440) = v5;
          *(v0 + 702) = v7;
          v73 = (*(v9 + 8) + **(v9 + 8));
          v11 = swift_task_alloc();
          *(v0 + 512) = v11;
          *v11 = v0;
          v11[1] = sub_219FE6064;
          v12 = v0 + 296;
          v13 = v0 + 432;
          v14 = v0 + 702;
          v15 = v10;
          v16 = v9;
          v17 = v73;

          return v17(v12, v13, v14, v15, v16);
        }

        v69 = v0 + 296;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v26 = *(v4 + 8);
      v25 = *(v4 + 16);
      *(v0 + 544) = v25;
      v27 = *(v4 + 24);
      *(v0 + 240) = type metadata accessor for NewsLiveActivityManager(0);
      *(v0 + 248) = sub_219F3CA68(&qword_280C87EE8, 255, type metadata accessor for NewsLiveActivityManager);
      *(v0 + 216) = v3;
      swift_retain_n();
      v28 = swift_unknownObjectWeakLoadStrong();
      *(v0 + 552) = v28;
      if (v28)
      {
        v29 = *(*(v0 + 448) + 24);
        v30 = swift_getObjectType();
        *(v0 + 400) = v26;
        *(v0 + 408) = v25;
        *(v0 + 700) = v27;
        v75 = (*(v29 + 24) + **(v29 + 24));
        v31 = swift_task_alloc();
        *(v0 + 560) = v31;
        *v31 = v0;
        v31[1] = sub_219FE6390;
        v12 = v0 + 216;
        v13 = v0 + 400;
        v14 = v0 + 700;
        v15 = v30;
        v16 = v29;
        v17 = v75;

        return v17(v12, v13, v14, v15, v16);
      }

      v69 = v0 + 216;
      goto LABEL_46;
    }

    v55 = *(v4 + 8);
    v54 = *(v4 + 16);
    *(v0 + 568) = v54;
    v56 = *(v4 + 24);
    v57 = *(v4 + 32);
    *(v0 + 576) = v57;
    *(v0 + 200) = type metadata accessor for NewsLiveActivityManager(0);
    *(v0 + 208) = sub_219F3CA68(&qword_280C87EE8, 255, type metadata accessor for NewsLiveActivityManager);
    *(v0 + 176) = v3;
    swift_retain_n();
    v58 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 584) = v58;
    if (v58)
    {
      v59 = *(*(v0 + 448) + 24);
      v60 = swift_getObjectType();
      *(v0 + 384) = v55;
      *(v0 + 392) = v54;
      *(v0 + 699) = v56;
      v79 = (*(v59 + 32) + **(v59 + 32));
      v61 = swift_task_alloc();
      *(v0 + 592) = v61;
      *v61 = v0;
      v61[1] = sub_219FE6528;

      return v79(v0 + 176, v0 + 384, v0 + 699, v57, v60, v59);
    }

    v70 = *(v0 + 576);
    __swift_destroy_boxed_opaque_existential_1(v0 + 176);

LABEL_48:

    goto LABEL_50;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v19 = *(v4 + 8);
      v18 = *(v4 + 16);
      *(v0 + 600) = v18;
      v20 = *(v4 + 24);
      *(v0 + 160) = type metadata accessor for NewsLiveActivityManager(0);
      *(v0 + 168) = sub_219F3CA68(&qword_280C87EE8, 255, type metadata accessor for NewsLiveActivityManager);
      *(v0 + 136) = v3;
      swift_retain_n();
      v21 = swift_unknownObjectWeakLoadStrong();
      *(v0 + 608) = v21;
      if (v21)
      {
        v22 = *(*(v0 + 448) + 24);
        v23 = swift_getObjectType();
        *(v0 + 368) = v19;
        *(v0 + 376) = v18;
        *(v0 + 698) = v20;
        v74 = (*(v22 + 40) + **(v22 + 40));
        v24 = swift_task_alloc();
        *(v0 + 616) = v24;
        *v24 = v0;
        v24[1] = sub_219FE66D4;
        v12 = v0 + 136;
        v13 = v0 + 368;
        v14 = v0 + 698;
        v15 = v23;
        v16 = v22;
        v17 = v74;

        return v17(v12, v13, v14, v15, v16);
      }

      v69 = v0 + 136;
    }

    else
    {
      v47 = *(v4 + 8);
      v46 = *(v4 + 16);
      *(v0 + 624) = v46;
      v48 = *(v4 + 24);
      *(v0 + 120) = type metadata accessor for NewsLiveActivityManager(0);
      *(v0 + 128) = sub_219F3CA68(&qword_280C87EE8, 255, type metadata accessor for NewsLiveActivityManager);
      *(v0 + 96) = v3;
      swift_retain_n();
      v49 = swift_unknownObjectWeakLoadStrong();
      *(v0 + 632) = v49;
      if (v49)
      {
        v50 = *(*(v0 + 448) + 24);
        v51 = swift_getObjectType();
        *(v0 + 352) = v47;
        *(v0 + 360) = v46;
        *(v0 + 697) = v48;
        v78 = (*(v50 + 48) + **(v50 + 48));
        v52 = swift_task_alloc();
        *(v0 + 640) = v52;
        *v52 = v0;
        v52[1] = sub_219FE686C;
        v12 = v0 + 96;
        v13 = v0 + 352;
        v14 = v0 + 697;
        v15 = v51;
        v16 = v50;
        v17 = v78;

        return v17(v12, v13, v14, v15, v16);
      }

      v69 = v0 + 96;
    }

LABEL_46:
    __swift_destroy_boxed_opaque_existential_1(v69);

LABEL_50:

    v72 = *(v0 + 8);

    return v72();
  }

  if (EnumCaseMultiPayload == 6)
  {
    v32 = *(v4 + 8);
    *(v0 + 648) = v32;
    v33 = *(v4 + 16);
    *(v0 + 656) = v33;
    v34 = *(v4 + 24);
    *(v0 + 80) = type metadata accessor for NewsLiveActivityManager(0);
    *(v0 + 88) = sub_219F3CA68(&qword_280C87EE8, 255, type metadata accessor for NewsLiveActivityManager);
    *(v0 + 56) = v3;
    swift_retain_n();
    v35 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 664) = v35;
    if (v35)
    {
      v36 = *(*(v0 + 448) + 24);
      v37 = swift_getObjectType();
      *(v0 + 336) = v32;
      *(v0 + 344) = v33;
      *(v0 + 696) = v34;
      v76 = (*(v36 + 56) + **(v36 + 56));
      v38 = swift_task_alloc();
      *(v0 + 672) = v38;
      *v38 = v0;
      v38[1] = sub_219FE6A04;
      v12 = v0 + 56;
      v13 = v0 + 336;
      v14 = v0 + 696;
      v15 = v37;
      v16 = v36;
      v17 = v76;

      return v17(v12, v13, v14, v15, v16);
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 56);

    goto LABEL_48;
  }

  v62 = *(v0 + 464);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB018);
  sub_219FE9100(v4 + *(v63 + 48), v62, type metadata accessor for NewsLiveActivity);
  *(v0 + 40) = type metadata accessor for NewsLiveActivityManager(0);
  *(v0 + 48) = sub_219F3CA68(&qword_280C87EE8, 255, type metadata accessor for NewsLiveActivityManager);
  *(v0 + 16) = v3;

  v64 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 680) = v64;
  if (!v64)
  {
    v71 = *(v0 + 464);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    sub_219FE9018(v71, type metadata accessor for NewsLiveActivity);
    goto LABEL_50;
  }

  v65 = *(*(v0 + 448) + 24);
  v66 = swift_getObjectType();
  v80 = (*(v65 + 64) + **(v65 + 64));
  v67 = swift_task_alloc();
  *(v0 + 688) = v67;
  *v67 = v0;
  v67[1] = sub_219FE6BB0;
  v68 = *(v0 + 464);

  return v80(v0 + 16, v68, v66, v65);
}

uint64_t sub_219FE6064()
{

  return MEMORY[0x2822009F8](sub_219FE6160, 0, 0);
}

uint64_t sub_219FE6160()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FE61F8()
{

  return MEMORY[0x2822009F8](sub_219FE62F4, 0, 0);
}

uint64_t sub_219FE62F4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FE6390()
{

  return MEMORY[0x2822009F8](sub_219FE648C, 0, 0);
}

uint64_t sub_219FE648C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FE6528()
{

  return MEMORY[0x2822009F8](sub_219FE6624, 0, 0);
}

uint64_t sub_219FE6624()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 576);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219FE66D4()
{

  return MEMORY[0x2822009F8](sub_219FE67D0, 0, 0);
}

uint64_t sub_219FE67D0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FE686C()
{

  return MEMORY[0x2822009F8](sub_219FE6968, 0, 0);
}

uint64_t sub_219FE6968()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FE6A04()
{

  return MEMORY[0x2822009F8](sub_219FE6B00, 0, 0);
}

uint64_t sub_219FE6B00()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FE6BB0()
{

  return MEMORY[0x2822009F8](sub_219FE6CAC, 0, 0);
}

uint64_t sub_219FE6CAC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 464);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivity);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219FE6D54(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v12 = a2[1];
  *(v6 + 80) = *a2;
  *(v6 + 88) = v12;
  *(v6 + 113) = *a3;

  return MEMORY[0x2822009F8](sub_219FE6E1C, 0, 0);
}

uint64_t sub_219FE6E1C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 113);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(*(v0 + 72) + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 56) = v4;
    *(v0 + 64) = v3;
    *(v0 + 112) = v2;
    v10 = (*(v5 + 8) + **(v5 + 8));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_219FE6FD4;

    return v10(v0 + 16, v0 + 56, v0 + 112, ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_219FE6FD4()
{

  return MEMORY[0x2822009F8](sub_219FEAAA4, 0, 0);
}

uint64_t sub_219FE70D0(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v12 = a2[1];
  *(v6 + 80) = *a2;
  *(v6 + 88) = v12;
  *(v6 + 113) = *a3;

  return MEMORY[0x2822009F8](sub_219FE7198, 0, 0);
}

uint64_t sub_219FE7198()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 113);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(*(v0 + 72) + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 56) = v4;
    *(v0 + 64) = v3;
    *(v0 + 112) = v2;
    v10 = (*(v5 + 16) + **(v5 + 16));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_219FE7350;

    return v10(v0 + 16, v0 + 56, v0 + 112, ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_219FE7350()
{

  return MEMORY[0x2822009F8](sub_219FE744C, 0, 0);
}

uint64_t sub_219FE744C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FE74B4(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v12 = a2[1];
  *(v6 + 80) = *a2;
  *(v6 + 88) = v12;
  *(v6 + 113) = *a3;

  return MEMORY[0x2822009F8](sub_219FE757C, 0, 0);
}

uint64_t sub_219FE757C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 113);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(*(v0 + 72) + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 56) = v4;
    *(v0 + 64) = v3;
    *(v0 + 112) = v2;
    v10 = (*(v5 + 24) + **(v5 + 24));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_219FE6FD4;

    return v10(v0 + 16, v0 + 56, v0 + 112, ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_219FE7734(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 16));
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  v13 = a2[1];
  *(v7 + 88) = *a2;
  *(v7 + 96) = v13;
  *(v7 + 121) = *a3;

  return MEMORY[0x2822009F8](sub_219FE77FC, 0, 0);
}

uint64_t sub_219FE77FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 121);
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(*(v0 + 80) + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 56) = v4;
    *(v0 + 64) = v3;
    *(v0 + 120) = v2;
    v11 = (*(v5 + 32) + **(v5 + 32));
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_219FE79B8;
    v8 = *(v0 + 72);

    return v11(v0 + 16, v0 + 56, v0 + 120, v8, ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_219FE79B8()
{

  return MEMORY[0x2822009F8](sub_219FE7AB4, 0, 0);
}

uint64_t sub_219FE7AB4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FE7B1C(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v12 = a2[1];
  *(v6 + 80) = *a2;
  *(v6 + 88) = v12;
  *(v6 + 113) = *a3;

  return MEMORY[0x2822009F8](sub_219FE7BE4, 0, 0);
}

uint64_t sub_219FE7BE4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 113);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(*(v0 + 72) + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 56) = v4;
    *(v0 + 64) = v3;
    *(v0 + 112) = v2;
    v10 = (*(v5 + 40) + **(v5 + 40));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_219FE6FD4;

    return v10(v0 + 16, v0 + 56, v0 + 112, ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_219FE7D9C(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v12 = a2[1];
  *(v6 + 80) = *a2;
  *(v6 + 88) = v12;
  *(v6 + 113) = *a3;

  return MEMORY[0x2822009F8](sub_219FE7E64, 0, 0);
}

uint64_t sub_219FE7E64()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 113);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(*(v0 + 72) + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 56) = v4;
    *(v0 + 64) = v3;
    *(v0 + 112) = v2;
    v10 = (*(v5 + 48) + **(v5 + 48));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_219FE6FD4;

    return v10(v0 + 16, v0 + 56, v0 + 112, ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_219FE801C(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  *(v6 + 80) = *a2;
  *(v6 + 113) = *a3;

  return MEMORY[0x2822009F8](sub_219FE80E4, 0, 0);
}

uint64_t sub_219FE80E4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 113);
    v3 = *(*(v0 + 72) + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 56) = *(v0 + 80);
    *(v0 + 112) = v2;
    v8 = (*(v3 + 56) + **(v3 + 56));
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_219FE6FD4;

    return v8(v0 + 16, v0 + 56, v0 + 112, ObjectType, v3);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t _s22NewsLiveActivitiesCore0B25ActivitySubscriptionErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A0E495C();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LiveActivitySubscriptionError(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB088);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v37 - v19;
  v21 = (&v37 + *(v18 + 56) - v19);
  sub_219FE9098(a1, &v37 - v19, type metadata accessor for LiveActivitySubscriptionError);
  sub_219FE9098(a2, v21, type metadata accessor for LiveActivitySubscriptionError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_38;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  v23 = v38;
  if (!EnumCaseMultiPayload)
  {
    sub_219FE9098(v20, v15, type metadata accessor for LiveActivitySubscriptionError);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v23 + 32))(v7, v21, v4);
      v32 = sub_21A0E492C();
      v33 = *(v23 + 8);
      v33(v7, v4);
      v33(v15, v4);
      sub_219FE9018(v20, type metadata accessor for LiveActivitySubscriptionError);
      return v32 & 1;
    }

    (*(v23 + 8))(v15, v4);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_219FE9098(v20, v12, type metadata accessor for LiveActivitySubscriptionError);
    v25 = *v12;
    v24 = v12[1];
    v27 = v12[2];
    v26 = v12[3];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v21[2];
      v28 = v21[3];
      if (v25 == *v21 && v24 == v21[1])
      {
      }

      else
      {
        v31 = sub_21A0E6C5C();

        if ((v31 & 1) == 0)
        {

LABEL_36:
          sub_219FE9018(v20, type metadata accessor for LiveActivitySubscriptionError);
          goto LABEL_28;
        }
      }

      if (v27 == v29 && v26 == v28)
      {
      }

      else
      {
        v35 = sub_21A0E6C5C();

        if ((v35 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

LABEL_38:
      sub_219FE9018(v20, type metadata accessor for LiveActivitySubscriptionError);
      v32 = 1;
      return v32 & 1;
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_38;
  }

LABEL_27:
  sub_219F6409C(v20, &qword_27CCDB088);
LABEL_28:
  v32 = 0;
  return v32 & 1;
}

unint64_t sub_219FE872C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 56 * result + 56 * a3;
  v10 = (v6 + 32 + 56 * a2);
  v11 = 56 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_219FE87E0(uint64_t a1)
{
  v2 = type metadata accessor for ActivityAsset();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = *(a1 + 16);
  v12 = sub_219F3CA68(qword_280C88B70, 255, type metadata accessor for ActivityAsset);
  result = MEMORY[0x21CED1CD0](v11, v2, v12);
  v17 = result;
  if (v11)
  {
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_219FE9098(v14, v7, type metadata accessor for ActivityAsset);
      sub_21A033088(v10, v7);
      sub_219FE9018(v10, type metadata accessor for ActivityAsset);
      v14 += v15;
      --v11;
    }

    while (v11);
    return v17;
  }

  return result;
}

uint64_t dispatch thunk of NewsLiveActivityManagerType.subscribe(to:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_219F49B18;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of NewsLiveActivityManagerType.unsubscribe(from:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_219F49B18;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of NewsLiveActivityManagerType.toggleSubscription(to:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_219F49B18;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of NewsLiveActivityManagerType.scheduleLiveActivity(newsroomID:scheduleDate:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 88) + **(a5 + 88));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F49B18;

  return v13(a1, a2, a3, a4, a5);
}

void sub_219FE8EF4()
{
  sub_219FE8F68();
  if (v0 <= 0x3F)
  {
    sub_219FE8FB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_219FE8F68()
{
  if (!qword_27CCDB000)
  {
    v0 = sub_21A0E495C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCDB000);
    }
  }
}

void sub_219FE8FB0()
{
  if (!qword_27CCDB008)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CCDB008);
    }
  }
}

uint64_t sub_219FE9018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219FE9098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FE9100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FE9168(uint64_t *a1)
{
  v4 = *(type metadata accessor for NewsLiveActivityManager.Event(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_219F4996C;

  return sub_219FE2AAC(a1, v1 + v5);
}

uint64_t sub_219FE9240(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_219F49B18;

  return sub_219FE4E38(a1, a2, v6, v7, v8);
}

uint64_t sub_219FE9310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_219F49B18;

  return sub_219FE4F00(a1, v4, v5, v6, v7, v1 + 6);
}

uint64_t sub_219FE9484(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_219FE9FEC();
  result = MEMORY[0x21CED1CD0](v2, &type metadata for ActivityDirectoryKey, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_21A034134(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_219FE951C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CED1CD0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21A034594(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_219FE95B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_219FE9F98();
  result = MEMORY[0x21CED1CD0](v2, &type metadata for VariantCondition, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      sub_21A032C6C(v8, v6, v7);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

void sub_219FE962C(uint64_t a1)
{
  v2 = type metadata accessor for NewsLiveActivity(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v6 = sub_21A0E516C();
  __swift_project_value_buffer(v6, qword_280C88498);
  sub_219FE9098(a1, v5, type metadata accessor for NewsLiveActivity);
  v7 = sub_21A0E514C();
  v8 = sub_21A0E66BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = NewsLiveActivity.description.getter();
    v13 = v12;
    sub_219FE9018(v5, type metadata accessor for NewsLiveActivity);
    v14 = sub_219F50144(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_219F39000, v7, v8, "Updating Live Activity. %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {

    sub_219FE9018(v5, type metadata accessor for NewsLiveActivity);
  }
}

uint64_t sub_219FE98B0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = sub_21A0E699C();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CED1F60](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v11 == sub_21A0E699C())
            {
              return v7;
            }
          }

          else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CED1F60](v11, v3);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }
          }

          v12 = swift_unknownObjectWeakLoadStrong();

          if (!v12 || (swift_unknownObjectRelease(), v12 != a2))
          {
            if (v7 != v11)
            {
              if (v5)
              {
                v13 = MEMORY[0x21CED1F60](v7, v3);
                v14 = MEMORY[0x21CED1F60](v11, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v15)
                {
                  goto LABEL_60;
                }

                if (v11 >= v15)
                {
                  goto LABEL_61;
                }

                v13 = *(v3 + 32 + 8 * v7);
                v14 = *(v3 + 32 + 8 * v11);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_219FE4DB4(v3);
                v16 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v16) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v14;

              if ((v3 & 0x8000000000000000) != 0 || v16)
              {
                v3 = sub_219FE4DB4(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v11 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return sub_21A0E699C();
                }
              }

              else if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v11 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              *(v5 + 8 * v11 + 32) = v13;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v11++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return sub_21A0E699C();
  }

  return *(v4 + 16);
}

uint64_t sub_219FE9B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for WeakNewsLiveActivityManagerObserverProxy();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21A0E699C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_21A0E699C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_219FE9C98(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21A0E699C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_21A0E699C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_219FE4CD8(result);

  return sub_219FE9B98(v4, v2, 0);
}

uint64_t sub_219FE9D70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_219F4996C;

  return sub_219FE4704();
}

unint64_t sub_219FE9E0C()
{
  result = qword_27CCDB070;
  if (!qword_27CCDB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB070);
  }

  return result;
}

uint64_t sub_219FE9E60(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB078) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_219F49B18;

  return sub_219F49CD8(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_219FE9F98()
{
  result = qword_27CCDB080;
  if (!qword_27CCDB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB080);
  }

  return result;
}

unint64_t sub_219FE9FEC()
{
  result = qword_280C87AF8;
  if (!qword_280C87AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C87AF8);
  }

  return result;
}

uint64_t sub_219FEA040(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_219FEA0CC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F49B18;

  return sub_219FE3F1C(a1, a2, v6);
}

unint64_t sub_219FEA194()
{
  result = qword_280C87940;
  if (!qword_280C87940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C87940);
  }

  return result;
}

uint64_t sub_219FEA208(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F49B18;

  return sub_219FE3E28(a1, v4);
}

void sub_219FEA300()
{
  if (!qword_280C88CA0)
  {
    type metadata accessor for NewsLiveActivity(255);
    v0 = sub_21A0E674C();
    if (!v1)
    {
      atomic_store(v0, &qword_280C88CA0);
    }
  }
}

uint64_t sub_219FEA380()
{
  result = type metadata accessor for NewsLiveActivity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NewsLiveActivity(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NewsLiveActivity(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_219FEA67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_219FEA734()
{
  result = type metadata accessor for NewsLiveActivity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_219FEA7A0()
{
  sub_219FEA848();
  if (v0 <= 0x3F)
  {
    sub_219FEA8B8();
    if (v1 <= 0x3F)
    {
      sub_219FEA954();
      if (v2 <= 0x3F)
      {
        sub_219FEA9C8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_219FEA848()
{
  if (!qword_280C87DE8)
  {
    type metadata accessor for NewsLiveActivityManager(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280C87DE8);
    }
  }
}

void sub_219FEA8B8()
{
  if (!qword_280C87DF0)
  {
    type metadata accessor for NewsLiveActivityManager(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9E48);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_280C87DF0);
    }
  }
}

void sub_219FEA954()
{
  if (!qword_280C87DD8)
  {
    type metadata accessor for NewsLiveActivityManager(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280C87DD8);
    }
  }
}

void sub_219FEA9C8()
{
  if (!qword_280C87DE0)
  {
    type metadata accessor for NewsLiveActivityManager(255);
    type metadata accessor for NewsLiveActivity(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C87DE0);
    }
  }
}

unint64_t sub_219FEAA40()
{
  result = qword_27CCDB120;
  if (!qword_27CCDB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB120);
  }

  return result;
}

uint64_t ActivityHeaderTheme.kicker.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 176);
  v30 = *(v1 + 160);
  v31 = v3;
  v4 = *(v1 + 80);
  v5 = *(v1 + 112);
  v26 = *(v1 + 96);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 112);
  v8 = *(v1 + 144);
  v28 = *(v1 + 128);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 48);
  v22 = *(v1 + 32);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 48);
  v14 = *(v1 + 80);
  v24 = *(v1 + 64);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 16);
  v21[0] = *v1;
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 176);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 192);
  *(a1 + 192) = *(v1 + 192);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_219F9336C(v21, v20);
}

__n128 ActivityHeaderTheme.kicker.setter(uint64_t a1)
{
  v3 = *(v1 + 176);
  v15[10] = *(v1 + 160);
  v15[11] = v3;
  v16 = *(v1 + 192);
  v4 = *(v1 + 112);
  v15[6] = *(v1 + 96);
  v15[7] = v4;
  v5 = *(v1 + 144);
  v15[8] = *(v1 + 128);
  v15[9] = v5;
  v6 = *(v1 + 48);
  v15[2] = *(v1 + 32);
  v15[3] = v6;
  v7 = *(v1 + 80);
  v15[4] = *(v1 + 64);
  v15[5] = v7;
  v8 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v9;
  *(v1 + 192) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v11;
  v12 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v12;
  v13 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v13;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t ActivityHeaderTheme.title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  v19[2] = *(v1 + 232);
  v19[3] = v3;
  v19[0] = *(v1 + 200);
  v19[1] = v2;
  v4 = *(v1 + 344);
  v5 = *(v1 + 376);
  v26 = *(v1 + 360);
  v27 = v5;
  v6 = *(v1 + 280);
  v7 = *(v1 + 312);
  v22 = *(v1 + 296);
  v8 = v22;
  v23 = v7;
  v9 = *(v1 + 312);
  v10 = *(v1 + 344);
  v24 = *(v1 + 328);
  v11 = v24;
  v25 = v10;
  v12 = *(v1 + 280);
  v20 = *(v1 + 264);
  v13 = v20;
  v21 = v12;
  v14 = *(v1 + 376);
  *(a1 + 160) = v26;
  *(a1 + 176) = v14;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  v28 = *(v1 + 392);
  *(a1 + 192) = *(v1 + 392);
  *(a1 + 128) = v11;
  *(a1 + 144) = v4;
  v15 = *(v1 + 248);
  *(a1 + 32) = *(v1 + 232);
  *(a1 + 48) = v15;
  v16 = *(v1 + 216);
  *(a1 + 64) = v13;
  *(a1 + 80) = v6;
  *a1 = *(v1 + 200);
  *(a1 + 16) = v16;
  return sub_219F9336C(v19, v18);
}

__n128 ActivityHeaderTheme.title.setter(__int128 *a1)
{
  v16 = *(v1 + 392);
  v3 = *(v1 + 216);
  v4 = *(v1 + 248);
  v15[2] = *(v1 + 232);
  v15[3] = v4;
  v15[0] = *(v1 + 200);
  v15[1] = v3;
  v5 = *(v1 + 376);
  v15[10] = *(v1 + 360);
  v15[11] = v5;
  v6 = *(v1 + 312);
  v15[6] = *(v1 + 296);
  v15[7] = v6;
  v7 = *(v1 + 344);
  v15[8] = *(v1 + 328);
  v15[9] = v7;
  v8 = *(v1 + 280);
  v15[4] = *(v1 + 264);
  v15[5] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = a1[11];
  *(v1 + 360) = a1[10];
  *(v1 + 376) = v9;
  v10 = a1[7];
  *(v1 + 296) = a1[6];
  *(v1 + 312) = v10;
  v11 = a1[9];
  *(v1 + 328) = a1[8];
  *(v1 + 344) = v11;
  v12 = *a1;
  *(v1 + 216) = a1[1];
  v13 = a1[3];
  *(v1 + 232) = a1[2];
  *(v1 + 248) = v13;
  result = a1[5];
  *(v1 + 264) = a1[4];
  *(v1 + 280) = result;
  *(v1 + 392) = *(a1 + 24);
  *(v1 + 200) = v12;
  return result;
}

uint64_t ActivityHeaderTheme.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 544);
  v3 = *(v1 + 576);
  v30 = *(v1 + 560);
  v31 = v3;
  v4 = *(v1 + 480);
  v5 = *(v1 + 512);
  v26 = *(v1 + 496);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 512);
  v8 = *(v1 + 544);
  v28 = *(v1 + 528);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 416);
  v11 = *(v1 + 448);
  v22 = *(v1 + 432);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 448);
  v14 = *(v1 + 480);
  v24 = *(v1 + 464);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 416);
  v21[0] = *(v1 + 400);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 576);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 592);
  *(a1 + 192) = *(v1 + 592);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_219F9336C(v21, v20);
}

__n128 ActivityHeaderTheme.subtitle.setter(uint64_t a1)
{
  v3 = *(v1 + 576);
  v15[10] = *(v1 + 560);
  v15[11] = v3;
  v16 = *(v1 + 592);
  v4 = *(v1 + 512);
  v15[6] = *(v1 + 496);
  v15[7] = v4;
  v5 = *(v1 + 544);
  v15[8] = *(v1 + 528);
  v15[9] = v5;
  v6 = *(v1 + 448);
  v15[2] = *(v1 + 432);
  v15[3] = v6;
  v7 = *(v1 + 480);
  v15[4] = *(v1 + 464);
  v15[5] = v7;
  v8 = *(v1 + 416);
  v15[0] = *(v1 + 400);
  v15[1] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = *(a1 + 176);
  *(v1 + 560) = *(a1 + 160);
  *(v1 + 576) = v9;
  *(v1 + 592) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v1 + 496) = *(a1 + 96);
  *(v1 + 512) = v10;
  v11 = *(a1 + 144);
  *(v1 + 528) = *(a1 + 128);
  *(v1 + 544) = v11;
  v12 = *(a1 + 48);
  *(v1 + 432) = *(a1 + 32);
  *(v1 + 448) = v12;
  v13 = *(a1 + 80);
  *(v1 + 464) = *(a1 + 64);
  *(v1 + 480) = v13;
  result = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = result;
  return result;
}

uint64_t ActivityHeaderTheme.excerpt.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 744);
  v3 = *(v1 + 776);
  v30 = *(v1 + 760);
  v31 = v3;
  v4 = *(v1 + 680);
  v5 = *(v1 + 712);
  v26 = *(v1 + 696);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 712);
  v8 = *(v1 + 744);
  v28 = *(v1 + 728);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 616);
  v11 = *(v1 + 648);
  v22 = *(v1 + 632);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 648);
  v14 = *(v1 + 680);
  v24 = *(v1 + 664);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 616);
  v21[0] = *(v1 + 600);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 776);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 792);
  *(a1 + 192) = *(v1 + 792);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_219F9336C(v21, v20);
}

__n128 ActivityHeaderTheme.excerpt.setter(uint64_t a1)
{
  v16 = *(v1 + 792);
  v3 = *(v1 + 776);
  v15[10] = *(v1 + 760);
  v15[11] = v3;
  v4 = *(v1 + 712);
  v15[6] = *(v1 + 696);
  v15[7] = v4;
  v5 = *(v1 + 744);
  v15[8] = *(v1 + 728);
  v15[9] = v5;
  v6 = *(v1 + 648);
  v15[2] = *(v1 + 632);
  v15[3] = v6;
  v7 = *(v1 + 680);
  v15[4] = *(v1 + 664);
  v15[5] = v7;
  v8 = *(v1 + 616);
  v15[0] = *(v1 + 600);
  v15[1] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = *(a1 + 176);
  *(v1 + 760) = *(a1 + 160);
  *(v1 + 776) = v9;
  *(v1 + 792) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v1 + 696) = *(a1 + 96);
  *(v1 + 712) = v10;
  v11 = *(a1 + 144);
  *(v1 + 728) = *(a1 + 128);
  *(v1 + 744) = v11;
  v12 = *(a1 + 48);
  *(v1 + 632) = *(a1 + 32);
  *(v1 + 648) = v12;
  v13 = *(a1 + 80);
  *(v1 + 664) = *(a1 + 64);
  *(v1 + 680) = v13;
  result = *(a1 + 16);
  *(v1 + 600) = *a1;
  *(v1 + 616) = result;
  return result;
}

__n128 ActivityHeaderTheme.init(kicker:title:subtitle:excerpt:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_219F639B0(&v88);
  v10 = v98;
  v11 = v99;
  v12 = v99;
  *(a5 + 360) = v98;
  *(a5 + 376) = v11;
  v13 = v94;
  v14 = v95;
  v15 = v95;
  *(a5 + 296) = v94;
  *(a5 + 312) = v14;
  v16 = v97;
  v17 = v97;
  v18 = v96;
  *(a5 + 328) = v96;
  *(a5 + 344) = v16;
  v19 = v89;
  *(a5 + 216) = v89;
  v20 = v90;
  *(a5 + 232) = v90;
  v21 = v91;
  *(a5 + 248) = v91;
  v22 = v93;
  v23 = v93;
  v24 = v92;
  *(a5 + 264) = v92;
  *(a5 + 280) = v22;
  v25 = v88;
  *(a5 + 200) = v88;
  *(a5 + 560) = v10;
  *(a5 + 576) = v12;
  *(a5 + 496) = v13;
  *(a5 + 512) = v15;
  *(a5 + 528) = v18;
  *(a5 + 544) = v17;
  *(a5 + 432) = v20;
  *(a5 + 448) = v21;
  *(a5 + 464) = v24;
  *(a5 + 480) = v23;
  *(a5 + 400) = v25;
  *(a5 + 416) = v19;
  v26 = v98;
  v27 = v99;
  v28 = v99;
  *(a5 + 760) = v98;
  *(a5 + 776) = v27;
  v29 = v94;
  v30 = v95;
  v31 = v95;
  *(a5 + 696) = v94;
  *(a5 + 712) = v30;
  v32 = v97;
  v33 = v97;
  v34 = v96;
  *(a5 + 728) = v96;
  *(a5 + 744) = v32;
  v35 = v90;
  v36 = v91;
  v37 = v91;
  *(a5 + 632) = v90;
  *(a5 + 648) = v36;
  v38 = v93;
  v39 = v93;
  v40 = v92;
  *(a5 + 664) = v92;
  *(a5 + 680) = v38;
  v41 = v89;
  v42 = v89;
  v43 = v88;
  *(a5 + 600) = v88;
  *(a5 + 616) = v41;
  v101[10] = v26;
  v101[11] = v28;
  v101[6] = v29;
  v101[7] = v31;
  v101[8] = v34;
  v101[9] = v33;
  v101[2] = v35;
  v101[3] = v37;
  v101[4] = v40;
  v101[5] = v39;
  v44 = v100;
  *(a5 + 392) = v100;
  *(a5 + 592) = v44;
  v45 = v100;
  *(a5 + 792) = v100;
  v102 = v45;
  v101[0] = v43;
  v101[1] = v42;
  sub_219F6409C(v101, &qword_27CCD95B8);
  v46 = *(a1 + 176);
  *(a5 + 160) = *(a1 + 160);
  *(a5 + 176) = v46;
  *(a5 + 192) = *(a1 + 192);
  v47 = *(a1 + 112);
  *(a5 + 96) = *(a1 + 96);
  *(a5 + 112) = v47;
  v48 = *(a1 + 144);
  *(a5 + 128) = *(a1 + 128);
  *(a5 + 144) = v48;
  v49 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v49;
  v50 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v50;
  v51 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v51;
  v52 = *(a5 + 376);
  v103[10] = *(a5 + 360);
  v103[11] = v52;
  v104 = *(a5 + 392);
  v53 = *(a5 + 312);
  v103[6] = *(a5 + 296);
  v103[7] = v53;
  v54 = *(a5 + 344);
  v103[8] = *(a5 + 328);
  v103[9] = v54;
  v55 = *(a5 + 216);
  v56 = *(a5 + 248);
  v103[2] = *(a5 + 232);
  v103[3] = v56;
  v57 = *(a5 + 280);
  v103[4] = *(a5 + 264);
  v103[5] = v57;
  v103[0] = *(a5 + 200);
  v103[1] = v55;
  sub_219F6409C(v103, &qword_27CCD95B8);
  v58 = a2[11];
  *(a5 + 360) = a2[10];
  *(a5 + 376) = v58;
  *(a5 + 392) = *(a2 + 24);
  v59 = a2[7];
  *(a5 + 296) = a2[6];
  *(a5 + 312) = v59;
  v60 = a2[9];
  *(a5 + 328) = a2[8];
  *(a5 + 344) = v60;
  v61 = *a2;
  *(a5 + 216) = a2[1];
  v62 = a2[3];
  *(a5 + 232) = a2[2];
  *(a5 + 248) = v62;
  v63 = a2[5];
  *(a5 + 264) = a2[4];
  *(a5 + 280) = v63;
  *(a5 + 200) = v61;
  v64 = *(a5 + 576);
  v105[10] = *(a5 + 560);
  v105[11] = v64;
  v106 = *(a5 + 592);
  v65 = *(a5 + 512);
  v105[6] = *(a5 + 496);
  v105[7] = v65;
  v66 = *(a5 + 544);
  v105[8] = *(a5 + 528);
  v105[9] = v66;
  v67 = *(a5 + 448);
  v105[2] = *(a5 + 432);
  v105[3] = v67;
  v68 = *(a5 + 480);
  v105[4] = *(a5 + 464);
  v105[5] = v68;
  v69 = *(a5 + 416);
  v105[0] = *(a5 + 400);
  v105[1] = v69;
  sub_219F6409C(v105, &qword_27CCD95B8);
  v70 = *(a3 + 176);
  *(a5 + 560) = *(a3 + 160);
  *(a5 + 576) = v70;
  *(a5 + 592) = *(a3 + 192);
  v71 = *(a3 + 112);
  *(a5 + 496) = *(a3 + 96);
  *(a5 + 512) = v71;
  v72 = *(a3 + 144);
  *(a5 + 528) = *(a3 + 128);
  *(a5 + 544) = v72;
  v73 = *(a3 + 48);
  *(a5 + 432) = *(a3 + 32);
  *(a5 + 448) = v73;
  v74 = *(a3 + 80);
  *(a5 + 464) = *(a3 + 64);
  *(a5 + 480) = v74;
  v75 = *(a3 + 16);
  *(a5 + 400) = *a3;
  *(a5 + 416) = v75;
  v76 = *(a5 + 776);
  v107[10] = *(a5 + 760);
  v107[11] = v76;
  v108 = *(a5 + 792);
  v77 = *(a5 + 712);
  v107[6] = *(a5 + 696);
  v107[7] = v77;
  v78 = *(a5 + 744);
  v107[8] = *(a5 + 728);
  v107[9] = v78;
  v79 = *(a5 + 648);
  v107[2] = *(a5 + 632);
  v107[3] = v79;
  v80 = *(a5 + 680);
  v107[4] = *(a5 + 664);
  v107[5] = v80;
  v81 = *(a5 + 616);
  v107[0] = *(a5 + 600);
  v107[1] = v81;
  sub_219F6409C(v107, &qword_27CCD95B8);
  v82 = *(a4 + 176);
  *(a5 + 760) = *(a4 + 160);
  *(a5 + 776) = v82;
  *(a5 + 792) = *(a4 + 192);
  v83 = *(a4 + 112);
  *(a5 + 696) = *(a4 + 96);
  *(a5 + 712) = v83;
  v84 = *(a4 + 144);
  *(a5 + 728) = *(a4 + 128);
  *(a5 + 744) = v84;
  v85 = *(a4 + 48);
  *(a5 + 632) = *(a4 + 32);
  *(a5 + 648) = v85;
  v86 = *(a4 + 80);
  *(a5 + 664) = *(a4 + 64);
  *(a5 + 680) = v86;
  result = *(a4 + 16);
  *(a5 + 600) = *a4;
  *(a5 + 616) = result;
  return result;
}

void *sub_219FEB494(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v7 = v6;
  memcpy(v129, v2, sizeof(v129));
  memcpy(v130, v4, sizeof(v130));
  memcpy(v131, v5, sizeof(v131));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v131) != 1)
  {
    memcpy(__dst, v130, sizeof(__dst));
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(__dst) != 1)
    {
      v125[9] = __dst[9];
      v125[10] = __dst[10];
      v125[11] = __dst[11];
      v125[5] = __dst[5];
      v125[6] = __dst[6];
      v125[7] = __dst[7];
      v125[8] = __dst[8];
      v125[1] = __dst[1];
      v125[2] = __dst[2];
      v125[3] = __dst[3];
      v125[4] = __dst[4];
      v126 = *&__dst[12];
      v125[0] = __dst[0];
      v16 = __dst;
      if (sub_219F63C20(v125) == 1)
      {
        v16 = v131;
        sub_219F9336C(v131, __src);
      }

      v17 = v16[8];
      v121 = v16[9];
      v18 = v16[11];
      v122 = v16[10];
      v123 = v18;
      v19 = v16[4];
      v117 = v16[5];
      v20 = v16[7];
      v118 = v16[6];
      v119 = v20;
      v120 = v17;
      v21 = *v16;
      v113 = v16[1];
      v22 = v16[3];
      v114 = v16[2];
      v115 = v22;
      v116 = v19;
      v112 = v21;
      v110[9] = *(&__dst[21] + 8);
      v110[10] = *(&__dst[22] + 8);
      v110[11] = *(&__dst[23] + 8);
      v110[5] = *(&__dst[17] + 8);
      v110[6] = *(&__dst[18] + 8);
      v110[7] = *(&__dst[19] + 8);
      v110[8] = *(&__dst[20] + 8);
      v110[1] = *(&__dst[13] + 8);
      v110[2] = *(&__dst[14] + 8);
      v110[3] = *(&__dst[15] + 8);
      v124 = *(v16 + 24);
      v111 = *(&__dst[24] + 1);
      v110[4] = *(&__dst[16] + 8);
      v110[0] = *(&__dst[12] + 8);
      v23 = &__dst[12] + 8;
      if (sub_219F63C20(v110) == 1)
      {
        v23 = &v131[12] + 8;
        sub_219F9336C(&v131[12] + 8, __src);
      }

      v24 = *(v23 + 8);
      v106 = *(v23 + 9);
      v25 = *(v23 + 11);
      v107 = *(v23 + 10);
      v108 = v25;
      v26 = *(v23 + 4);
      v102 = *(v23 + 5);
      v27 = *(v23 + 7);
      v103 = *(v23 + 6);
      v104 = v27;
      v105 = v24;
      v28 = *v23;
      v98 = *(v23 + 1);
      v29 = *(v23 + 3);
      v99 = *(v23 + 2);
      v100 = v29;
      v101 = v26;
      v97 = v28;
      v95[9] = __dst[34];
      v95[10] = __dst[35];
      v95[11] = __dst[36];
      v95[5] = __dst[30];
      v95[6] = __dst[31];
      v95[7] = __dst[32];
      v95[8] = __dst[33];
      v95[1] = __dst[26];
      v95[2] = __dst[27];
      v95[3] = __dst[28];
      v95[4] = __dst[29];
      v109 = *(v23 + 24);
      v96 = *&__dst[37];
      v95[0] = __dst[25];
      v30 = &__dst[25];
      if (sub_219F63C20(v95) == 1)
      {
        v30 = &v131[25];
        sub_219F9336C(&v131[25], __src);
      }

      v31 = v30[8];
      v91 = v30[9];
      v32 = v30[11];
      v92 = v30[10];
      v93 = v32;
      v33 = v30[4];
      v87 = v30[5];
      v34 = v30[7];
      v88 = v30[6];
      v89 = v34;
      v90 = v31;
      v35 = *v30;
      v83 = v30[1];
      v36 = v30[3];
      v84 = v30[2];
      v85 = v36;
      v86 = v33;
      v94 = *(v30 + 24);
      v37 = &__dst[37] + 8;
      v82 = v35;
      sub_219F9336C(__dst, __src);
      sub_219F9336C(&__dst[12] + 8, __src);
      sub_219F9336C(&__dst[37] + 8, __src);
      sub_219F9336C(&__dst[25], __src);
      sub_219F6409C(v130, &qword_27CCDB160);
      v80[9] = *(&__dst[46] + 8);
      v80[10] = *(&__dst[47] + 8);
      v80[11] = *(&__dst[48] + 8);
      v80[5] = *(&__dst[42] + 8);
      v80[6] = *(&__dst[43] + 8);
      v80[7] = *(&__dst[44] + 8);
      v80[8] = *(&__dst[45] + 8);
      v80[1] = *(&__dst[38] + 8);
      v80[2] = *(&__dst[39] + 8);
      v80[3] = *(&__dst[40] + 8);
      v80[4] = *(&__dst[41] + 8);
      v81 = *(&__dst[49] + 1);
      v80[0] = *(&__dst[37] + 8);
      if (sub_219F63C20(v80) == 1)
      {
        v37 = &v131[37] + 8;
        sub_219F9336C(&v131[37] + 8, __src);
      }

      sub_219F6409C(v129, &qword_27CCDB160);
      v38 = *(v37 + 11);
      v77 = *(v37 + 10);
      v78 = v38;
      v79 = *(v37 + 24);
      v39 = *(v37 + 7);
      v73 = *(v37 + 6);
      v74 = v39;
      v40 = *(v37 + 9);
      v75 = *(v37 + 8);
      v76 = v40;
      v41 = *(v37 + 3);
      v69 = *(v37 + 2);
      v70 = v41;
      v42 = *(v37 + 5);
      v71 = *(v37 + 4);
      v72 = v42;
      v43 = *(v37 + 1);
      v67 = *v37;
      v68 = v43;
      sub_219F639B0(&v46);
      *(&__src[22] + 8) = v56;
      *(&__src[23] + 8) = v57;
      *(&__src[18] + 8) = v52;
      *(&__src[19] + 8) = v53;
      *(&__src[20] + 8) = v54;
      *(&__src[21] + 8) = v55;
      *(&__src[16] + 8) = v50;
      *(&__src[17] + 8) = v51;
      *(&__src[13] + 8) = v47;
      *(&__src[14] + 8) = v48;
      *(&__src[15] + 8) = v49;
      *(&__src[12] + 8) = v46;
      __src[35] = v56;
      __src[36] = v57;
      __src[31] = v52;
      __src[32] = v53;
      __src[33] = v54;
      __src[34] = v55;
      __src[27] = v48;
      __src[28] = v49;
      __src[29] = v50;
      __src[30] = v51;
      __src[25] = v46;
      __src[26] = v47;
      *(&__src[47] + 8) = v56;
      *(&__src[48] + 8) = v57;
      *(&__src[43] + 8) = v52;
      *(&__src[44] + 8) = v53;
      *(&__src[45] + 8) = v54;
      *(&__src[46] + 8) = v55;
      *(&__src[39] + 8) = v48;
      *(&__src[40] + 8) = v49;
      *(&__src[41] + 8) = v50;
      *(&__src[42] + 8) = v51;
      *(&__src[37] + 8) = v46;
      *(&__src[38] + 8) = v47;
      v59[10] = v56;
      v59[11] = v57;
      v59[6] = v52;
      v59[7] = v53;
      v59[8] = v54;
      v59[9] = v55;
      v59[2] = v48;
      v59[3] = v49;
      v59[4] = v50;
      v59[5] = v51;
      *(&__src[24] + 1) = v58;
      *&__src[37] = v58;
      *(&__src[49] + 1) = v58;
      v60 = v58;
      v59[0] = v46;
      v59[1] = v47;
      sub_219F6409C(v59, &qword_27CCD95B8);
      v61[10] = *(&__src[22] + 8);
      v61[11] = *(&__src[23] + 8);
      v62 = *(&__src[24] + 1);
      v61[6] = *(&__src[18] + 8);
      v61[7] = *(&__src[19] + 8);
      v61[8] = *(&__src[20] + 8);
      v61[9] = *(&__src[21] + 8);
      v61[2] = *(&__src[14] + 8);
      v61[3] = *(&__src[15] + 8);
      v61[4] = *(&__src[16] + 8);
      v61[5] = *(&__src[17] + 8);
      v61[0] = *(&__src[12] + 8);
      v61[1] = *(&__src[13] + 8);
      sub_219F6409C(v61, &qword_27CCD95B8);
      v63[10] = __src[35];
      v63[11] = __src[36];
      v64 = *&__src[37];
      v63[6] = __src[31];
      v63[7] = __src[32];
      v63[8] = __src[33];
      v63[9] = __src[34];
      v63[2] = __src[27];
      v63[3] = __src[28];
      v63[4] = __src[29];
      v63[5] = __src[30];
      v63[0] = __src[25];
      v63[1] = __src[26];
      sub_219F6409C(v63, &qword_27CCD95B8);
      v65[10] = *(&__src[47] + 8);
      v65[11] = *(&__src[48] + 8);
      v66 = *(&__src[49] + 1);
      v65[6] = *(&__src[43] + 8);
      v65[7] = *(&__src[44] + 8);
      v65[8] = *(&__src[45] + 8);
      v65[9] = *(&__src[46] + 8);
      v65[2] = *(&__src[39] + 8);
      v65[3] = *(&__src[40] + 8);
      v65[4] = *(&__src[41] + 8);
      v65[5] = *(&__src[42] + 8);
      v65[0] = *(&__src[37] + 8);
      v65[1] = *(&__src[38] + 8);
      sub_219F6409C(v65, &qword_27CCD95B8);
      goto LABEL_17;
    }

    v121 = v131[9];
    v122 = v131[10];
    v123 = v131[11];
    v117 = v131[5];
    v118 = v131[6];
    v119 = v131[7];
    v120 = v131[8];
    v113 = v131[1];
    v114 = v131[2];
    v115 = v131[3];
    v116 = v131[4];
    v112 = v131[0];
    v106 = *(&v131[21] + 8);
    v107 = *(&v131[22] + 8);
    v108 = *(&v131[23] + 8);
    v102 = *(&v131[17] + 8);
    v103 = *(&v131[18] + 8);
    v104 = *(&v131[19] + 8);
    v105 = *(&v131[20] + 8);
    v98 = *(&v131[13] + 8);
    v99 = *(&v131[14] + 8);
    v100 = *(&v131[15] + 8);
    v101 = *(&v131[16] + 8);
    v97 = *(&v131[12] + 8);
    v91 = v131[34];
    v92 = v131[35];
    v93 = v131[36];
    v87 = v131[30];
    v88 = v131[31];
    v89 = v131[32];
    v90 = v131[33];
    v83 = v131[26];
    v84 = v131[27];
    v85 = v131[28];
    v9 = (&v131[37] + 8);
    v124 = *&v131[12];
    v109 = *(&v131[24] + 1);
    v94 = *&v131[37];
    v86 = v131[29];
    v82 = v131[25];
    v77 = *(&v131[47] + 8);
    v78 = *(&v131[48] + 8);
    v10 = *(&v131[49] + 1);
LABEL_7:
    v79 = v10;
    v11 = v9[7];
    v73 = v9[6];
    v74 = v11;
    v12 = v9[9];
    v75 = v9[8];
    v76 = v12;
    v13 = v9[3];
    v69 = v9[2];
    v70 = v13;
    v14 = v9[5];
    v71 = v9[4];
    v72 = v14;
    v15 = v9[1];
    v67 = *v9;
    v68 = v15;
LABEL_17:
    __src[10] = v122;
    __src[11] = v123;
    __src[6] = v118;
    __src[7] = v119;
    __src[8] = v120;
    __src[9] = v121;
    __src[2] = v114;
    __src[3] = v115;
    __src[4] = v116;
    __src[5] = v117;
    __src[0] = v112;
    __src[1] = v113;
    *(&__src[22] + 8) = v107;
    *(&__src[23] + 8) = v108;
    *(&__src[18] + 8) = v103;
    *(&__src[19] + 8) = v104;
    *(&__src[20] + 8) = v105;
    *(&__src[21] + 8) = v106;
    *(&__src[16] + 8) = v101;
    *(&__src[17] + 8) = v102;
    *&__src[12] = v124;
    *(&__src[24] + 1) = v109;
    *(&__src[13] + 8) = v98;
    *(&__src[14] + 8) = v99;
    *(&__src[15] + 8) = v100;
    *(&__src[12] + 8) = v97;
    __src[35] = v92;
    __src[36] = v93;
    *&__src[37] = v94;
    __src[31] = v88;
    __src[32] = v89;
    __src[33] = v90;
    __src[34] = v91;
    __src[27] = v84;
    __src[28] = v85;
    __src[29] = v86;
    __src[30] = v87;
    __src[25] = v82;
    __src[26] = v83;
    *(&__src[47] + 8) = v77;
    *(&__src[48] + 8) = v78;
    *(&__src[43] + 8) = v73;
    *(&__src[44] + 8) = v74;
    *(&__src[45] + 8) = v75;
    *(&__src[46] + 8) = v76;
    *(&__src[39] + 8) = v69;
    *(&__src[40] + 8) = v70;
    *(&__src[41] + 8) = v71;
    *(&__src[42] + 8) = v72;
    *(&__src[37] + 8) = v67;
    *(&__src[38] + 8) = v68;
    *(&__src[49] + 1) = v79;
    memcpy(__dst, __src, sizeof(__dst));
    nullsub_1(__dst, v44);
    v8 = __dst;
    return memcpy(v7, v8, 0x320uLL);
  }

  memcpy(__dst, v130, sizeof(__dst));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(__dst) != 1)
  {
    v121 = __dst[9];
    v122 = __dst[10];
    v123 = __dst[11];
    v117 = __dst[5];
    v118 = __dst[6];
    v119 = __dst[7];
    v120 = __dst[8];
    v113 = __dst[1];
    v114 = __dst[2];
    v115 = __dst[3];
    v116 = __dst[4];
    v112 = __dst[0];
    v106 = *(&__dst[21] + 8);
    v107 = *(&__dst[22] + 8);
    v108 = *(&__dst[23] + 8);
    v102 = *(&__dst[17] + 8);
    v103 = *(&__dst[18] + 8);
    v104 = *(&__dst[19] + 8);
    v105 = *(&__dst[20] + 8);
    v98 = *(&__dst[13] + 8);
    v99 = *(&__dst[14] + 8);
    v100 = *(&__dst[15] + 8);
    v101 = *(&__dst[16] + 8);
    v97 = *(&__dst[12] + 8);
    v91 = __dst[34];
    v92 = __dst[35];
    v93 = __dst[36];
    v87 = __dst[30];
    v88 = __dst[31];
    v89 = __dst[32];
    v90 = __dst[33];
    v83 = __dst[26];
    v84 = __dst[27];
    v85 = __dst[28];
    v9 = (&__dst[37] + 8);
    v124 = *&__dst[12];
    v109 = *(&__dst[24] + 1);
    v94 = *&__dst[37];
    v86 = __dst[29];
    v82 = __dst[25];
    v77 = *(&__dst[47] + 8);
    v78 = *(&__dst[48] + 8);
    v10 = *(&__dst[49] + 1);
    goto LABEL_7;
  }

  v8 = v130;
  return memcpy(v7, v8, 0x320uLL);
}

uint64_t sub_219FEBF7C()
{
  v1 = 0x72656B63696BLL;
  v2 = 0x656C746974627573;
  if (*v0 != 2)
  {
    v2 = 0x74707265637865;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_219FEBFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219FEEDC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219FEC018(uint64_t a1)
{
  v2 = sub_219FEE9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FEC054(uint64_t a1)
{
  v2 = sub_219FEE9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityHeaderTheme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB128);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v36 - v7;
  v9 = v1[11];
  v106 = v1[10];
  v107 = v9;
  v108 = *(v1 + 24);
  v10 = v1[7];
  v102 = v1[6];
  v103 = v10;
  v11 = v1[8];
  v105 = v1[9];
  v104 = v11;
  v12 = v1[3];
  v98 = v1[2];
  v99 = v12;
  v13 = v1[4];
  v101 = v1[5];
  v100 = v13;
  v14 = *v1;
  v97 = v1[1];
  v96 = v14;
  v15 = *(v1 + 376);
  v119 = *(v1 + 360);
  v120 = v15;
  v121 = *(v1 + 49);
  v16 = *(v1 + 312);
  v115 = *(v1 + 296);
  v116 = v16;
  v17 = *(v1 + 328);
  v118 = *(v1 + 344);
  v117 = v17;
  v18 = *(v1 + 216);
  v19 = *(v1 + 248);
  v111 = *(v1 + 232);
  v112 = v19;
  v20 = *(v1 + 264);
  v114 = *(v1 + 280);
  v113 = v20;
  v21 = *(v1 + 200);
  v110 = v18;
  v109 = v21;
  v22 = v1[36];
  v132 = v1[35];
  v133 = v22;
  v134 = *(v1 + 74);
  v23 = v1[32];
  v128 = v1[31];
  v129 = v23;
  v24 = v1[33];
  v131 = v1[34];
  v130 = v24;
  v25 = v1[28];
  v124 = v1[27];
  v125 = v25;
  v26 = v1[29];
  v127 = v1[30];
  v126 = v26;
  v27 = v1[25];
  v123 = v1[26];
  v122 = v27;
  v28 = *(v1 + 776);
  v145 = *(v1 + 760);
  v146 = v28;
  v147 = *(v1 + 99);
  v29 = *(v1 + 712);
  v141 = *(v1 + 696);
  v142 = v29;
  v30 = *(v1 + 728);
  v144 = *(v1 + 744);
  v143 = v30;
  v31 = *(v1 + 648);
  v137 = *(v1 + 632);
  v138 = v31;
  v32 = *(v1 + 664);
  v140 = *(v1 + 680);
  v139 = v32;
  v33 = *(v1 + 600);
  v136 = *(v1 + 616);
  v135 = v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F9336C(&v96, &v83);
  sub_219FEE9F8();
  sub_21A0E6EAC();
  v93 = v106;
  v94 = v107;
  v95 = v108;
  v89 = v102;
  v90 = v103;
  v92 = v105;
  v91 = v104;
  v85 = v98;
  v86 = v99;
  v88 = v101;
  v87 = v100;
  v84 = v97;
  v83 = v96;
  v151 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA2B8);
  sub_219F984C0(&qword_27CCDA2C0);
  sub_21A0E6B6C();
  v81[10] = v93;
  v81[11] = v94;
  v82 = v95;
  v81[6] = v89;
  v81[7] = v90;
  v81[9] = v92;
  v81[8] = v91;
  v81[2] = v85;
  v81[3] = v86;
  v81[5] = v88;
  v81[4] = v87;
  v81[1] = v84;
  v81[0] = v83;
  if (v2)
  {
    v34 = v81;
  }

  else
  {
    sub_219F6409C(v81, &qword_27CCD95B8);
    v78 = v119;
    v79 = v120;
    v80 = v121;
    v74 = v115;
    v75 = v116;
    v77 = v118;
    v76 = v117;
    v70 = v111;
    v71 = v112;
    v73 = v114;
    v72 = v113;
    v69 = v110;
    v68 = v109;
    v150 = 1;
    sub_219F9336C(&v109, v66);
    sub_21A0E6B6C();
    v66[10] = v78;
    v66[11] = v79;
    v67 = v80;
    v66[6] = v74;
    v66[7] = v75;
    v66[8] = v76;
    v66[9] = v77;
    v66[2] = v70;
    v66[3] = v71;
    v66[4] = v72;
    v66[5] = v73;
    v66[0] = v68;
    v66[1] = v69;
    sub_219F6409C(v66, &qword_27CCD95B8);
    v63 = v132;
    v64 = v133;
    v65 = v134;
    v59 = v128;
    v60 = v129;
    v61 = v130;
    v62 = v131;
    v55 = v124;
    v56 = v125;
    v57 = v126;
    v58 = v127;
    v53 = v122;
    v54 = v123;
    v149 = 2;
    sub_219F9336C(&v122, v51);
    sub_21A0E6B6C();
    v51[10] = v63;
    v51[11] = v64;
    v52 = v65;
    v51[6] = v59;
    v51[7] = v60;
    v51[8] = v61;
    v51[9] = v62;
    v51[2] = v55;
    v51[3] = v56;
    v51[4] = v57;
    v51[5] = v58;
    v51[0] = v53;
    v51[1] = v54;
    sub_219F6409C(v51, &qword_27CCD95B8);
    v48 = v145;
    v49 = v146;
    v50 = v147;
    v44 = v141;
    v45 = v142;
    v46 = v143;
    v47 = v144;
    v40 = v137;
    v41 = v138;
    v42 = v139;
    v43 = v140;
    v38 = v135;
    v39 = v136;
    v148 = 3;
    sub_219F9336C(&v135, v36);
    sub_21A0E6B6C();
    v36[10] = v48;
    v36[11] = v49;
    v37 = v50;
    v36[6] = v44;
    v36[7] = v45;
    v36[8] = v46;
    v36[9] = v47;
    v36[2] = v40;
    v36[3] = v41;
    v36[4] = v42;
    v36[5] = v43;
    v36[0] = v38;
    v36[1] = v39;
    v34 = v36;
  }

  sub_219F6409C(v34, &qword_27CCD95B8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t ActivityHeaderTheme.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 23);
  v4 = *(v1 + 24);
  v5 = (v1 + 200);
  v7 = *(v1 + 48);
  v6 = *(v1 + 49);
  v8 = *(v1 + 73);
  v9 = *(v1 + 74);
  v51 = *(v1 + 98);
  v52 = *(v1 + 99);
  v10 = v1[9];
  v95[8] = v1[8];
  v95[9] = v10;
  v95[10] = v1[10];
  v11 = *(v1 + 22);
  v12 = v1[5];
  v95[4] = v1[4];
  v95[5] = v12;
  v13 = v1[7];
  v95[6] = v1[6];
  v95[7] = v13;
  v14 = v1[1];
  v95[0] = *v1;
  v95[1] = v14;
  v15 = v1[3];
  v95[2] = v1[2];
  v95[3] = v15;
  v96 = v11;
  v97 = v3;
  v98 = v4;
  if (sub_219F63C20(v95) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v16 = v1[9];
    v89 = v1[8];
    v90 = v16;
    v91 = v1[10];
    v92 = *(v1 + 22);
    v17 = v1[5];
    v85 = v1[4];
    v86 = v17;
    v18 = v1[7];
    v87 = v1[6];
    v88 = v18;
    v19 = v1[1];
    v81 = *v1;
    v82 = v19;
    v20 = v1[3];
    v83 = v1[2];
    v84 = v20;
    sub_21A0E6DCC();
    v93 = v3;
    v94 = v4;
    ActivityTextTheme.hash(into:)(a1);
    sub_219F91544(a1, v3);
    sub_219F6AF9C(a1, v4);
  }

  v21 = v1 + 25;
  v22 = *(v1 + 344);
  v89 = *(v1 + 328);
  v90 = v22;
  v91 = *(v1 + 360);
  v23 = *(v1 + 47);
  v24 = *(v1 + 280);
  v85 = *(v1 + 264);
  v86 = v24;
  v25 = *(v1 + 312);
  v87 = *(v1 + 296);
  v88 = v25;
  v26 = *(v1 + 216);
  v81 = *v5;
  v82 = v26;
  v27 = *(v1 + 248);
  v83 = *(v1 + 232);
  v84 = v27;
  v92 = v23;
  v93 = v7;
  v94 = v6;
  if (sub_219F63C20(&v81) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v28 = *(v1 + 344);
    v75 = *(v1 + 328);
    v76 = v28;
    v77 = *(v1 + 360);
    v78 = *(v1 + 47);
    v29 = *(v1 + 280);
    v71 = *(v1 + 264);
    v72 = v29;
    v30 = *(v1 + 312);
    v73 = *(v1 + 296);
    v74 = v30;
    v31 = *(v1 + 216);
    v67 = *v5;
    v68 = v31;
    v32 = *(v1 + 248);
    v69 = *(v1 + 232);
    v70 = v32;
    sub_21A0E6DCC();
    v79 = v7;
    v80 = v6;
    ActivityTextTheme.hash(into:)(a1);
    sub_219F91544(a1, v7);
    sub_219F6AF9C(a1, v6);
  }

  v33 = v1[34];
  v75 = v1[33];
  v76 = v33;
  v77 = v1[35];
  v34 = *(v1 + 72);
  v35 = v1[30];
  v71 = v1[29];
  v72 = v35;
  v36 = v1[32];
  v73 = v1[31];
  v74 = v36;
  v37 = v1[26];
  v67 = *v21;
  v68 = v37;
  v38 = v1[28];
  v69 = v1[27];
  v70 = v38;
  v78 = v34;
  v79 = v8;
  v80 = v9;
  if (sub_219F63C20(&v67) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v39 = v1[34];
    v61 = v1[33];
    v62 = v39;
    v63 = v1[35];
    v64 = *(v1 + 72);
    v40 = v1[30];
    v57 = v1[29];
    v58 = v40;
    v41 = v1[32];
    v59 = v1[31];
    v60 = v41;
    v42 = v1[26];
    v53 = *v21;
    v54 = v42;
    v43 = v1[28];
    v55 = v1[27];
    v56 = v43;
    sub_21A0E6DCC();
    v65 = v8;
    v66 = v9;
    ActivityTextTheme.hash(into:)(a1);
    sub_219F91544(a1, v8);
    sub_219F6AF9C(a1, v9);
  }

  v44 = *(v1 + 744);
  v61 = *(v1 + 728);
  v62 = v44;
  v63 = *(v1 + 760);
  v45 = *(v1 + 97);
  v46 = *(v1 + 680);
  v57 = *(v1 + 664);
  v58 = v46;
  v47 = *(v1 + 712);
  v59 = *(v1 + 696);
  v60 = v47;
  v48 = *(v1 + 616);
  v53 = *(v1 + 600);
  v54 = v48;
  v49 = *(v1 + 648);
  v55 = *(v1 + 632);
  v56 = v49;
  v64 = v45;
  v65 = v51;
  v66 = v52;
  if (sub_219F63C20(&v53) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  ActivityTextTheme.hash(into:)(a1);
  sub_219F91544(a1, v51);
  return sub_219F6AF9C(a1, v52);
}

uint64_t ActivityHeaderTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityHeaderTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t ActivityHeaderTheme.init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v11 = v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB138);
  v12 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v5);
  v7 = &v11 - v6;
  sub_219F639B0(&v133);
  v132[10] = v143;
  v132[11] = v144;
  v132[6] = v139;
  v132[7] = v140;
  v132[9] = v142;
  v132[8] = v141;
  v132[2] = v135;
  v132[3] = v136;
  v132[5] = v138;
  v132[4] = v137;
  v132[1] = v134;
  v132[0] = v133;
  *(&v132[22] + 8) = v143;
  *(&v132[23] + 8) = v144;
  *(&v132[18] + 8) = v139;
  *(&v132[19] + 8) = v140;
  *(&v132[20] + 8) = v141;
  *(&v132[21] + 8) = v142;
  *(&v132[16] + 8) = v137;
  *(&v132[17] + 8) = v138;
  *(&v132[13] + 8) = v134;
  *(&v132[14] + 8) = v135;
  *(&v132[15] + 8) = v136;
  *(&v132[12] + 8) = v133;
  v132[35] = v143;
  v132[36] = v144;
  v132[31] = v139;
  v132[32] = v140;
  v132[34] = v142;
  v132[33] = v141;
  v132[27] = v135;
  v132[28] = v136;
  v132[30] = v138;
  v132[29] = v137;
  v132[26] = v134;
  v132[25] = v133;
  *(&v132[47] + 8) = v143;
  *(&v132[48] + 8) = v144;
  *(&v132[43] + 8) = v139;
  *(&v132[44] + 8) = v140;
  *(&v132[45] + 8) = v141;
  *(&v132[46] + 8) = v142;
  *(&v132[39] + 8) = v135;
  *(&v132[40] + 8) = v136;
  *(&v132[41] + 8) = v137;
  *(&v132[42] + 8) = v138;
  *&v132[12] = v145;
  *(&v132[24] + 1) = v145;
  *&v132[37] = v145;
  *(&v132[37] + 8) = v133;
  *(&v132[38] + 8) = v134;
  *(&v132[49] + 1) = v145;
  v8 = v3[3];
  v146 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v8);
  sub_219FEE9F8();
  v13 = v7;
  sub_21A0E6E7C();
  if (!v2)
  {
    v9 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA2B8);
    v117 = 0;
    sub_219F984C0(&qword_27CCDA2D0);
    sub_21A0E6A8C();
    v112 = v128;
    v113 = v129;
    v114 = v130;
    v108 = v124;
    v109 = v125;
    v111 = v127;
    v110 = v126;
    v104 = v120;
    v105 = v121;
    v107 = v123;
    v106 = v122;
    v103 = v119;
    v102 = v118;
    v115[10] = v132[10];
    v115[11] = v132[11];
    v116 = *&v132[12];
    v115[6] = v132[6];
    v115[7] = v132[7];
    v115[9] = v132[9];
    v115[8] = v132[8];
    v115[2] = v132[2];
    v115[3] = v132[3];
    v115[5] = v132[5];
    v115[4] = v132[4];
    v115[1] = v132[1];
    v115[0] = v132[0];
    sub_219F6409C(v115, &qword_27CCD95B8);
    v132[10] = v112;
    v132[11] = v113;
    *&v132[12] = v114;
    v132[6] = v108;
    v132[7] = v109;
    v132[9] = v111;
    v132[8] = v110;
    v132[2] = v104;
    v132[3] = v105;
    v132[5] = v107;
    v132[4] = v106;
    v132[1] = v103;
    v132[0] = v102;
    v88 = 1;
    sub_21A0E6A8C();
    v83 = v99;
    v84 = v100;
    v85 = v101;
    v79 = v95;
    v80 = v96;
    v82 = v98;
    v81 = v97;
    v75 = v91;
    v76 = v92;
    v78 = v94;
    v77 = v93;
    v74 = v90;
    v73 = v89;
    v86[10] = *(&v132[22] + 8);
    v86[11] = *(&v132[23] + 8);
    v87 = *(&v132[24] + 1);
    v86[6] = *(&v132[18] + 8);
    v86[7] = *(&v132[19] + 8);
    v86[9] = *(&v132[21] + 8);
    v86[8] = *(&v132[20] + 8);
    v86[2] = *(&v132[14] + 8);
    v86[3] = *(&v132[15] + 8);
    v86[5] = *(&v132[17] + 8);
    v86[4] = *(&v132[16] + 8);
    v86[1] = *(&v132[13] + 8);
    v86[0] = *(&v132[12] + 8);
    sub_219F6409C(v86, &qword_27CCD95B8);
    *(&v132[22] + 8) = v83;
    *(&v132[23] + 8) = v84;
    *(&v132[24] + 1) = v85;
    *(&v132[18] + 8) = v79;
    *(&v132[19] + 8) = v80;
    *(&v132[20] + 8) = v81;
    *(&v132[21] + 8) = v82;
    *(&v132[14] + 8) = v75;
    *(&v132[15] + 8) = v76;
    *(&v132[16] + 8) = v77;
    *(&v132[17] + 8) = v78;
    *(&v132[12] + 8) = v73;
    *(&v132[13] + 8) = v74;
    v59 = 2;
    sub_21A0E6A8C();
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v50 = v66;
    v51 = v67;
    v53 = v69;
    v52 = v68;
    v46 = v62;
    v47 = v63;
    v49 = v65;
    v48 = v64;
    v45 = v61;
    v44 = v60;
    v57[10] = v132[35];
    v57[11] = v132[36];
    v58 = *&v132[37];
    v57[6] = v132[31];
    v57[7] = v132[32];
    v57[9] = v132[34];
    v57[8] = v132[33];
    v57[2] = v132[27];
    v57[3] = v132[28];
    v57[5] = v132[30];
    v57[4] = v132[29];
    v57[1] = v132[26];
    v57[0] = v132[25];
    sub_219F6409C(v57, &qword_27CCD95B8);
    v132[35] = v54;
    v132[36] = v55;
    *&v132[37] = v56;
    v132[31] = v50;
    v132[32] = v51;
    v132[33] = v52;
    v132[34] = v53;
    v132[27] = v46;
    v132[28] = v47;
    v132[29] = v48;
    v132[30] = v49;
    v132[25] = v44;
    v132[26] = v45;
    v30[807] = 3;
    sub_21A0E6A8C();
    (*(v9 + 8))(v13, v14);
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v24 = v40;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v15 = v31;
    v16 = v32;
    v28[10] = *(&v132[47] + 8);
    v28[11] = *(&v132[48] + 8);
    v29 = *(&v132[49] + 1);
    v28[6] = *(&v132[43] + 8);
    v28[7] = *(&v132[44] + 8);
    v28[8] = *(&v132[45] + 8);
    v28[9] = *(&v132[46] + 8);
    v28[2] = *(&v132[39] + 8);
    v28[3] = *(&v132[40] + 8);
    v28[4] = *(&v132[41] + 8);
    v28[5] = *(&v132[42] + 8);
    v28[0] = *(&v132[37] + 8);
    v28[1] = *(&v132[38] + 8);
    sub_219F6409C(v28, &qword_27CCD95B8);
    *(&v132[47] + 8) = v25;
    *(&v132[48] + 8) = v26;
    *(&v132[49] + 1) = v27;
    *(&v132[43] + 8) = v21;
    *(&v132[44] + 8) = v22;
    *(&v132[45] + 8) = v23;
    *(&v132[46] + 8) = v24;
    *(&v132[39] + 8) = v17;
    *(&v132[40] + 8) = v18;
    *(&v132[41] + 8) = v19;
    *(&v132[42] + 8) = v20;
    *(&v132[37] + 8) = v15;
    *(&v132[38] + 8) = v16;
    memcpy(v30, v132, 0x320uLL);
    memcpy(v11, v132, 0x320uLL);
    sub_219FEEA7C(v30, v131);
  }

  __swift_destroy_boxed_opaque_existential_1(v146);
  memcpy(v131, v132, sizeof(v131));
  return sub_219FEEA4C(v131);
}

uint64_t sub_219FED4CC()
{
  sub_21A0E6DAC();
  ActivityHeaderTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219FED510()
{
  sub_21A0E6DAC();
  ActivityHeaderTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore19ActivityHeaderThemeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = *(v2 + 144);
  v7 = *(v2 + 176);
  v249 = *(v2 + 160);
  v250 = v7;
  v8 = *(v2 + 80);
  v9 = *(v2 + 112);
  v245 = *(v2 + 96);
  v246 = v9;
  v11 = *(v2 + 112);
  v10 = *(v2 + 128);
  v12 = v10;
  v248 = *(v2 + 144);
  v247 = v10;
  v13 = *(v2 + 16);
  v14 = *(v2 + 48);
  v241 = *(v2 + 32);
  v242 = v14;
  v16 = *(v2 + 48);
  v15 = *(v2 + 64);
  v17 = v15;
  v244 = *(v2 + 80);
  v243 = v15;
  v18 = *v2;
  v19 = *v2;
  v240[1] = *(v2 + 16);
  v240[0] = v18;
  v20 = *(v2 + 376);
  v262 = *(v2 + 360);
  v263 = v20;
  v21 = *(v2 + 312);
  v258 = *(v2 + 296);
  v259 = v21;
  v22 = *(v2 + 328);
  v261 = *(v2 + 344);
  v260 = v22;
  v23 = *(v2 + 216);
  v24 = *(v2 + 248);
  v254 = *(v2 + 232);
  v255 = v24;
  v25 = *(v2 + 264);
  v257 = *(v2 + 280);
  v256 = v25;
  v26 = *(v2 + 200);
  v253 = v23;
  v252 = v26;
  v27 = *(v2 + 576);
  v275 = *(v2 + 560);
  v276 = v27;
  v28 = *(v2 + 512);
  v271 = *(v2 + 496);
  v272 = v28;
  v29 = *(v2 + 528);
  v274 = *(v2 + 544);
  v273 = v29;
  v30 = *(v2 + 448);
  v267 = *(v2 + 432);
  v268 = v30;
  v31 = *(v2 + 464);
  v270 = *(v2 + 480);
  v269 = v31;
  v32 = *(v2 + 400);
  v266 = *(v2 + 416);
  v265 = v32;
  v33 = *(v2 + 776);
  v288 = *(v2 + 760);
  v289 = v33;
  v34 = *(v2 + 712);
  v284 = *(v2 + 696);
  v285 = v34;
  v35 = *(v2 + 728);
  v287 = *(v2 + 744);
  v286 = v35;
  v36 = *(v2 + 648);
  v280 = *(v2 + 632);
  v281 = v36;
  v37 = *(v2 + 664);
  v283 = *(v2 + 680);
  v282 = v37;
  v38 = *(v2 + 600);
  v279 = *(v2 + 616);
  v278 = v38;
  v39 = v3[9];
  v40 = v3[11];
  v300 = v3[10];
  v301 = v40;
  v41 = v3[5];
  v42 = v3[7];
  v296 = v3[6];
  v297 = v42;
  v43 = v3[7];
  v44 = v3[8];
  v45 = v44;
  v299 = v3[9];
  v298 = v44;
  v46 = v3[1];
  v47 = v3[3];
  v292 = v3[2];
  v293 = v47;
  v48 = v3[4];
  v49 = v3[3];
  v295 = v3[5];
  v294 = v48;
  v50 = *v3;
  v51 = *v3;
  v291[1] = v3[1];
  v291[0] = v50;
  v52 = *(v3 + 376);
  v313 = *(v3 + 360);
  v314 = v52;
  v53 = *(v3 + 312);
  v309 = *(v3 + 296);
  v310 = v53;
  v54 = *(v3 + 328);
  v312 = *(v3 + 344);
  v311 = v54;
  v55 = *(v3 + 216);
  v56 = *(v3 + 248);
  v305 = *(v3 + 232);
  v306 = v56;
  v57 = *(v3 + 264);
  v308 = *(v3 + 280);
  v307 = v57;
  v58 = *(v3 + 200);
  v304 = v55;
  v303 = v58;
  v59 = v3[36];
  v326 = v3[35];
  v327 = v59;
  v60 = v3[32];
  v322 = v3[31];
  v323 = v60;
  v61 = v3[33];
  v325 = v3[34];
  v324 = v61;
  v62 = v3[28];
  v318 = v3[27];
  v319 = v62;
  v63 = v3[29];
  v321 = v3[30];
  v320 = v63;
  v64 = v3[25];
  v317 = v3[26];
  v316 = v64;
  v65 = *(v3 + 776);
  v339 = *(v3 + 760);
  v340 = v65;
  v66 = *(v3 + 712);
  v335 = *(v3 + 696);
  v336 = v66;
  v67 = *(v3 + 728);
  v338 = *(v3 + 744);
  v337 = v67;
  v68 = *(v3 + 648);
  v331 = *(v3 + 632);
  v332 = v68;
  v69 = *(v3 + 664);
  v334 = *(v3 + 680);
  v333 = v69;
  v70 = *(v3 + 600);
  v330 = *(v3 + 616);
  v329 = v70;
  v71 = *(v2 + 144);
  v72 = *(v2 + 176);
  __src[10] = *(v2 + 160);
  __src[11] = v72;
  v73 = *(v2 + 80);
  v74 = *(v2 + 112);
  __src[6] = *(v2 + 96);
  __src[7] = v74;
  v75 = *(v2 + 128);
  __src[9] = v71;
  __src[8] = v75;
  v76 = *(v2 + 16);
  v77 = *(v2 + 48);
  __src[2] = *(v2 + 32);
  __src[3] = v77;
  v78 = *(v2 + 64);
  __src[5] = v73;
  __src[4] = v78;
  v79 = *v2;
  __src[1] = v76;
  __src[0] = v79;
  v80 = v3[11];
  *(&__src[22] + 8) = v300;
  *(&__src[23] + 8) = v80;
  *(&__src[18] + 8) = v296;
  *(&__src[19] + 8) = v43;
  *(&__src[20] + 8) = v45;
  *(&__src[21] + 8) = v39;
  *(&__src[16] + 8) = v48;
  *(&__src[17] + 8) = v41;
  *(&__src[13] + 8) = v46;
  *(&__src[14] + 8) = v292;
  *(&__src[15] + 8) = v49;
  *(&__src[12] + 8) = v51;
  v81 = *(v2 + 176);
  v342[10] = v249;
  v342[11] = v81;
  v342[6] = v245;
  v342[7] = v11;
  v342[9] = v6;
  v342[8] = v12;
  v342[2] = v241;
  v342[3] = v16;
  v342[5] = v8;
  v342[4] = v17;
  v251 = *(v2 + 192);
  v264 = *(v2 + 392);
  v277 = *(v2 + 592);
  v290 = *(v2 + 792);
  v302 = *(v3 + 24);
  v315 = *(v3 + 49);
  v328 = *(v3 + 74);
  v341 = *(v3 + 99);
  v82 = *(v3 + 24);
  *&__src[12] = *(v2 + 192);
  *(&__src[24] + 1) = v82;
  v343 = *(v2 + 192);
  v342[1] = v13;
  v342[0] = v19;
  if (sub_219F63C20(v342) == 1)
  {
    v83 = v4[11];
    __dst[10] = v4[10];
    __dst[11] = v83;
    *&__dst[12] = *(v4 + 24);
    v84 = v4[7];
    __dst[6] = v4[6];
    __dst[7] = v84;
    v85 = v4[8];
    __dst[9] = v4[9];
    __dst[8] = v85;
    v86 = v4[3];
    __dst[2] = v4[2];
    __dst[3] = v86;
    v87 = v4[4];
    __dst[5] = v4[5];
    __dst[4] = v87;
    v88 = *v4;
    __dst[1] = v4[1];
    __dst[0] = v88;
    if (sub_219F63C20(__dst) == 1)
    {
      v89 = *(v5 + 176);
      v237 = *(v5 + 160);
      v238 = v89;
      v239 = *(v5 + 192);
      v90 = *(v5 + 112);
      v233 = *(v5 + 96);
      v234 = v90;
      v91 = *(v5 + 128);
      v236 = *(v5 + 144);
      v235 = v91;
      v92 = *(v5 + 48);
      v229 = *(v5 + 32);
      v230 = v92;
      v93 = *(v5 + 64);
      v232 = *(v5 + 80);
      v231 = v93;
      v94 = *v5;
      v228 = *(v5 + 16);
      v227 = v94;
      sub_219F9336C(v240, v225);
      sub_219F9336C(v291, v225);
      sub_219F6409C(&v227, &qword_27CCD95B8);
      goto LABEL_7;
    }

LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_219F9336C(v240, &v227);
    v101 = v291;
    v102 = &v227;
LABEL_24:
    sub_219F9336C(v101, v102);
    sub_219F6409C(__dst, &qword_27CCDA2F8);
    return 0;
  }

  v95 = v4[11];
  __dst[10] = v4[10];
  __dst[11] = v95;
  *&__dst[12] = *(v4 + 24);
  v96 = v4[7];
  __dst[6] = v4[6];
  __dst[7] = v96;
  v97 = v4[8];
  __dst[9] = v4[9];
  __dst[8] = v97;
  v98 = v4[3];
  __dst[2] = v4[2];
  __dst[3] = v98;
  v99 = v4[4];
  __dst[5] = v4[5];
  __dst[4] = v99;
  v100 = *v4;
  __dst[1] = v4[1];
  __dst[0] = v100;
  if (sub_219F63C20(__dst) == 1)
  {
    goto LABEL_5;
  }

  v103 = v4[9];
  v104 = v4[11];
  v222 = v4[10];
  v223 = v104;
  v105 = v4[5];
  v106 = v4[7];
  v218 = v4[6];
  v219 = v106;
  v108 = v4[7];
  v107 = v4[8];
  v109 = v107;
  v221 = v4[9];
  v220 = v107;
  v110 = v4[1];
  v111 = v4[3];
  v214 = v4[2];
  v215 = v111;
  v113 = v4[3];
  v112 = v4[4];
  v114 = v112;
  v217 = v4[5];
  v216 = v112;
  v115 = *v4;
  v116 = *v4;
  v213 = v4[1];
  v212 = v115;
  v117 = v4[11];
  v237 = v222;
  v238 = v117;
  v233 = v218;
  v234 = v108;
  v236 = v103;
  v235 = v109;
  v229 = v214;
  v230 = v113;
  v232 = v105;
  v231 = v114;
  v224 = *(v4 + 24);
  v239 = *(v4 + 24);
  v228 = v110;
  v227 = v116;
  v118 = *(v5 + 176);
  v225[10] = *(v5 + 160);
  v225[11] = v118;
  v226 = *(v5 + 192);
  v119 = *(v5 + 112);
  v225[6] = *(v5 + 96);
  v225[7] = v119;
  v120 = *(v5 + 128);
  v225[9] = *(v5 + 144);
  v225[8] = v120;
  v121 = *(v5 + 48);
  v225[2] = *(v5 + 32);
  v225[3] = v121;
  v122 = *(v5 + 64);
  v225[5] = *(v5 + 80);
  v225[4] = v122;
  v123 = *v5;
  v225[1] = *(v5 + 16);
  v225[0] = v123;
  sub_219F9336C(v240, &v199);
  sub_219F9336C(v291, &v199);
  v124 = sub_21A0D9624(v225, &v227);
  sub_219F6409C(&v212, &qword_27CCD95B8);
  v125 = *(v5 + 176);
  v209 = *(v5 + 160);
  v210 = v125;
  v211 = *(v5 + 192);
  v126 = *(v5 + 112);
  v205 = *(v5 + 96);
  v206 = v126;
  v127 = *(v5 + 128);
  v208 = *(v5 + 144);
  v207 = v127;
  v128 = *(v5 + 48);
  v201 = *(v5 + 32);
  v202 = v128;
  v129 = *(v5 + 64);
  v204 = *(v5 + 80);
  v203 = v129;
  v130 = *v5;
  v200 = *(v5 + 16);
  v199 = v130;
  sub_219F6409C(&v199, &qword_27CCD95B8);
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  __src[10] = v262;
  __src[11] = v263;
  __src[6] = v258;
  __src[7] = v259;
  __src[9] = v261;
  __src[8] = v260;
  __src[2] = v254;
  __src[3] = v255;
  __src[5] = v257;
  __src[4] = v256;
  __src[1] = v253;
  __src[0] = v252;
  *(&__src[22] + 8) = v313;
  *(&__src[23] + 8) = v314;
  *(&__src[18] + 8) = v309;
  *(&__src[19] + 8) = v310;
  *(&__src[20] + 8) = v311;
  *(&__src[21] + 8) = v312;
  *(&__src[16] + 8) = v307;
  *(&__src[17] + 8) = v308;
  *(&__src[13] + 8) = v304;
  *(&__src[14] + 8) = v305;
  *(&__src[15] + 8) = v306;
  *(&__src[12] + 8) = v303;
  v156[10] = v262;
  v156[11] = v263;
  v156[6] = v258;
  v156[7] = v259;
  v156[9] = v261;
  v156[8] = v260;
  v156[2] = v254;
  v156[3] = v255;
  v156[5] = v257;
  v156[4] = v256;
  *&__src[12] = v264;
  *(&__src[24] + 1) = v315;
  v157 = v264;
  v156[1] = v253;
  v156[0] = v252;
  if (sub_219F63C20(v156) == 1)
  {
    __dst[10] = *(&__src[22] + 8);
    __dst[11] = *(&__src[23] + 8);
    *&__dst[12] = *(&__src[24] + 1);
    __dst[6] = *(&__src[18] + 8);
    __dst[7] = *(&__src[19] + 8);
    __dst[9] = *(&__src[21] + 8);
    __dst[8] = *(&__src[20] + 8);
    __dst[2] = *(&__src[14] + 8);
    __dst[3] = *(&__src[15] + 8);
    __dst[5] = *(&__src[17] + 8);
    __dst[4] = *(&__src[16] + 8);
    __dst[1] = *(&__src[13] + 8);
    __dst[0] = *(&__src[12] + 8);
    if (sub_219F63C20(__dst) == 1)
    {
      v222 = __src[10];
      v223 = __src[11];
      v224 = *&__src[12];
      v218 = __src[6];
      v219 = __src[7];
      v221 = __src[9];
      v220 = __src[8];
      v214 = __src[2];
      v215 = __src[3];
      v217 = __src[5];
      v216 = __src[4];
      v213 = __src[1];
      v212 = __src[0];
      sub_219F9336C(&v252, &v199);
      sub_219F9336C(&v303, &v199);
      sub_219F6409C(&v212, &qword_27CCD95B8);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  __dst[10] = *(&__src[22] + 8);
  __dst[11] = *(&__src[23] + 8);
  *&__dst[12] = *(&__src[24] + 1);
  __dst[6] = *(&__src[18] + 8);
  __dst[7] = *(&__src[19] + 8);
  __dst[9] = *(&__src[21] + 8);
  __dst[8] = *(&__src[20] + 8);
  __dst[2] = *(&__src[14] + 8);
  __dst[3] = *(&__src[15] + 8);
  __dst[5] = *(&__src[17] + 8);
  __dst[4] = *(&__src[16] + 8);
  __dst[1] = *(&__src[13] + 8);
  __dst[0] = *(&__src[12] + 8);
  if (sub_219F63C20(__dst) == 1)
  {
LABEL_11:
    memcpy(__dst, __src, sizeof(__dst));
    sub_219F9336C(&v252, &v212);
    v101 = &v303;
    v102 = &v212;
    goto LABEL_24;
  }

  v196 = *(&__src[22] + 8);
  v197 = *(&__src[23] + 8);
  v192 = *(&__src[18] + 8);
  v193 = *(&__src[19] + 8);
  v195 = *(&__src[21] + 8);
  v194 = *(&__src[20] + 8);
  v188 = *(&__src[14] + 8);
  v189 = *(&__src[15] + 8);
  v191 = *(&__src[17] + 8);
  v190 = *(&__src[16] + 8);
  v187 = *(&__src[13] + 8);
  v186 = *(&__src[12] + 8);
  v222 = *(&__src[22] + 8);
  v223 = *(&__src[23] + 8);
  v218 = *(&__src[18] + 8);
  v219 = *(&__src[19] + 8);
  v221 = *(&__src[21] + 8);
  v220 = *(&__src[20] + 8);
  v214 = *(&__src[14] + 8);
  v215 = *(&__src[15] + 8);
  v217 = *(&__src[17] + 8);
  v216 = *(&__src[16] + 8);
  v198 = *(&__src[24] + 1);
  v224 = *(&__src[24] + 1);
  v213 = *(&__src[13] + 8);
  v212 = *(&__src[12] + 8);
  v209 = __src[10];
  v210 = __src[11];
  v211 = *&__src[12];
  v205 = __src[6];
  v206 = __src[7];
  v208 = __src[9];
  v207 = __src[8];
  v201 = __src[2];
  v202 = __src[3];
  v204 = __src[5];
  v203 = __src[4];
  v200 = __src[1];
  v199 = __src[0];
  sub_219F9336C(&v252, &v173);
  sub_219F9336C(&v303, &v173);
  v131 = sub_21A0D9624(&v199, &v212);
  sub_219F6409C(&v186, &qword_27CCD95B8);
  v183 = __src[10];
  v184 = __src[11];
  v185 = *&__src[12];
  v179 = __src[6];
  v180 = __src[7];
  v182 = __src[9];
  v181 = __src[8];
  v175 = __src[2];
  v176 = __src[3];
  v178 = __src[5];
  v177 = __src[4];
  v174 = __src[1];
  v173 = __src[0];
  sub_219F6409C(&v173, &qword_27CCD95B8);
  if ((v131 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  __src[10] = v275;
  __src[11] = v276;
  __src[6] = v271;
  __src[7] = v272;
  __src[9] = v274;
  __src[8] = v273;
  __src[2] = v267;
  __src[3] = v268;
  __src[5] = v270;
  __src[4] = v269;
  __src[1] = v266;
  __src[0] = v265;
  *(&__src[22] + 8) = v326;
  *(&__src[23] + 8) = v327;
  *(&__src[18] + 8) = v322;
  *(&__src[19] + 8) = v323;
  *(&__src[20] + 8) = v324;
  *(&__src[21] + 8) = v325;
  *(&__src[16] + 8) = v320;
  *(&__src[17] + 8) = v321;
  *(&__src[13] + 8) = v317;
  *(&__src[14] + 8) = v318;
  *(&__src[15] + 8) = v319;
  *(&__src[12] + 8) = v316;
  v154[10] = v275;
  v154[11] = v276;
  v154[6] = v271;
  v154[7] = v272;
  v154[8] = v273;
  v154[9] = v274;
  v154[2] = v267;
  v154[3] = v268;
  v154[4] = v269;
  v154[5] = v270;
  *&__src[12] = v277;
  *(&__src[24] + 1) = v328;
  v155 = v277;
  v154[0] = v265;
  v154[1] = v266;
  if (sub_219F63C20(v154) == 1)
  {
    __dst[10] = *(&__src[22] + 8);
    __dst[11] = *(&__src[23] + 8);
    *&__dst[12] = *(&__src[24] + 1);
    __dst[6] = *(&__src[18] + 8);
    __dst[7] = *(&__src[19] + 8);
    __dst[9] = *(&__src[21] + 8);
    __dst[8] = *(&__src[20] + 8);
    __dst[2] = *(&__src[14] + 8);
    __dst[3] = *(&__src[15] + 8);
    __dst[5] = *(&__src[17] + 8);
    __dst[4] = *(&__src[16] + 8);
    __dst[1] = *(&__src[13] + 8);
    __dst[0] = *(&__src[12] + 8);
    if (sub_219F63C20(__dst) == 1)
    {
      v196 = __src[10];
      v197 = __src[11];
      v198 = *&__src[12];
      v192 = __src[6];
      v193 = __src[7];
      v195 = __src[9];
      v194 = __src[8];
      v188 = __src[2];
      v189 = __src[3];
      v191 = __src[5];
      v190 = __src[4];
      v187 = __src[1];
      v186 = __src[0];
      sub_219F9336C(&v265, &v173);
      sub_219F9336C(&v316, &v173);
      sub_219F6409C(&v186, &qword_27CCD95B8);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  __dst[10] = *(&__src[22] + 8);
  __dst[11] = *(&__src[23] + 8);
  *&__dst[12] = *(&__src[24] + 1);
  __dst[6] = *(&__src[18] + 8);
  __dst[7] = *(&__src[19] + 8);
  __dst[9] = *(&__src[21] + 8);
  __dst[8] = *(&__src[20] + 8);
  __dst[2] = *(&__src[14] + 8);
  __dst[3] = *(&__src[15] + 8);
  __dst[5] = *(&__src[17] + 8);
  __dst[4] = *(&__src[16] + 8);
  __dst[1] = *(&__src[13] + 8);
  __dst[0] = *(&__src[12] + 8);
  if (sub_219F63C20(__dst) == 1)
  {
LABEL_17:
    memcpy(__dst, __src, sizeof(__dst));
    sub_219F9336C(&v265, &v186);
    v101 = &v316;
    v102 = &v186;
    goto LABEL_24;
  }

  v170 = *(&__src[22] + 8);
  v171 = *(&__src[23] + 8);
  v166 = *(&__src[18] + 8);
  v167 = *(&__src[19] + 8);
  v169 = *(&__src[21] + 8);
  v168 = *(&__src[20] + 8);
  v162 = *(&__src[14] + 8);
  v163 = *(&__src[15] + 8);
  v165 = *(&__src[17] + 8);
  v164 = *(&__src[16] + 8);
  v161 = *(&__src[13] + 8);
  v160 = *(&__src[12] + 8);
  v196 = *(&__src[22] + 8);
  v197 = *(&__src[23] + 8);
  v192 = *(&__src[18] + 8);
  v193 = *(&__src[19] + 8);
  v195 = *(&__src[21] + 8);
  v194 = *(&__src[20] + 8);
  v188 = *(&__src[14] + 8);
  v189 = *(&__src[15] + 8);
  v191 = *(&__src[17] + 8);
  v190 = *(&__src[16] + 8);
  v172 = *(&__src[24] + 1);
  v198 = *(&__src[24] + 1);
  v187 = *(&__src[13] + 8);
  v186 = *(&__src[12] + 8);
  v183 = __src[10];
  v184 = __src[11];
  v185 = *&__src[12];
  v179 = __src[6];
  v180 = __src[7];
  v182 = __src[9];
  v181 = __src[8];
  v175 = __src[2];
  v176 = __src[3];
  v178 = __src[5];
  v177 = __src[4];
  v174 = __src[1];
  v173 = __src[0];
  sub_219F9336C(&v265, &v141);
  sub_219F9336C(&v316, &v141);
  v132 = sub_21A0D9624(&v173, &v186);
  sub_219F6409C(&v160, &qword_27CCD95B8);
  v151 = __src[10];
  v152 = __src[11];
  v153 = *&__src[12];
  v147 = __src[6];
  v148 = __src[7];
  v149 = __src[8];
  v150 = __src[9];
  v143 = __src[2];
  v144 = __src[3];
  v145 = __src[4];
  v146 = __src[5];
  v141 = __src[0];
  v142 = __src[1];
  sub_219F6409C(&v141, &qword_27CCD95B8);
  if ((v132 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  __src[10] = v288;
  __src[11] = v289;
  __src[6] = v284;
  __src[7] = v285;
  __src[9] = v287;
  __src[8] = v286;
  __src[2] = v280;
  __src[3] = v281;
  __src[5] = v283;
  __src[4] = v282;
  __src[1] = v279;
  __src[0] = v278;
  *(&__src[22] + 8) = v339;
  *(&__src[23] + 8) = v340;
  *(&__src[18] + 8) = v335;
  *(&__src[19] + 8) = v336;
  *(&__src[20] + 8) = v337;
  *(&__src[21] + 8) = v338;
  *(&__src[16] + 8) = v333;
  *(&__src[17] + 8) = v334;
  *(&__src[13] + 8) = v330;
  *(&__src[14] + 8) = v331;
  *(&__src[15] + 8) = v332;
  *(&__src[12] + 8) = v329;
  v151 = v288;
  v152 = v289;
  v147 = v284;
  v148 = v285;
  v149 = v286;
  v150 = v287;
  v143 = v280;
  v144 = v281;
  v145 = v282;
  v146 = v283;
  *&__src[12] = v290;
  *(&__src[24] + 1) = v341;
  v153 = v290;
  v141 = v278;
  v142 = v279;
  if (sub_219F63C20(&v141) != 1)
  {
    v139[10] = *(&__src[22] + 8);
    v139[11] = *(&__src[23] + 8);
    v140 = *(&__src[24] + 1);
    v139[6] = *(&__src[18] + 8);
    v139[7] = *(&__src[19] + 8);
    v139[8] = *(&__src[20] + 8);
    v139[9] = *(&__src[21] + 8);
    v139[2] = *(&__src[14] + 8);
    v139[3] = *(&__src[15] + 8);
    v139[4] = *(&__src[16] + 8);
    v139[5] = *(&__src[17] + 8);
    v139[0] = *(&__src[12] + 8);
    v139[1] = *(&__src[13] + 8);
    if (sub_219F63C20(v139) == 1)
    {
      goto LABEL_23;
    }

    v137[10] = *(&__src[22] + 8);
    v137[11] = *(&__src[23] + 8);
    v137[6] = *(&__src[18] + 8);
    v137[7] = *(&__src[19] + 8);
    v137[8] = *(&__src[20] + 8);
    v137[9] = *(&__src[21] + 8);
    v137[2] = *(&__src[14] + 8);
    v137[3] = *(&__src[15] + 8);
    v137[4] = *(&__src[16] + 8);
    v137[5] = *(&__src[17] + 8);
    v137[0] = *(&__src[12] + 8);
    v137[1] = *(&__src[13] + 8);
    __dst[10] = *(&__src[22] + 8);
    __dst[11] = *(&__src[23] + 8);
    __dst[6] = *(&__src[18] + 8);
    __dst[7] = *(&__src[19] + 8);
    __dst[9] = *(&__src[21] + 8);
    __dst[8] = *(&__src[20] + 8);
    __dst[2] = *(&__src[14] + 8);
    __dst[3] = *(&__src[15] + 8);
    __dst[5] = *(&__src[17] + 8);
    __dst[4] = *(&__src[16] + 8);
    v138 = *(&__src[24] + 1);
    *&__dst[12] = *(&__src[24] + 1);
    __dst[1] = *(&__src[13] + 8);
    __dst[0] = *(&__src[12] + 8);
    v170 = __src[10];
    v171 = __src[11];
    v172 = *&__src[12];
    v166 = __src[6];
    v167 = __src[7];
    v169 = __src[9];
    v168 = __src[8];
    v162 = __src[2];
    v163 = __src[3];
    v165 = __src[5];
    v164 = __src[4];
    v161 = __src[1];
    v160 = __src[0];
    sub_219F9336C(&v278, v135);
    sub_219F9336C(&v329, v135);
    v134 = sub_21A0D9624(&v160, __dst);
    sub_219F6409C(v137, &qword_27CCD95B8);
    v135[10] = __src[10];
    v135[11] = __src[11];
    v136 = *&__src[12];
    v135[6] = __src[6];
    v135[7] = __src[7];
    v135[8] = __src[8];
    v135[9] = __src[9];
    v135[2] = __src[2];
    v135[3] = __src[3];
    v135[4] = __src[4];
    v135[5] = __src[5];
    v135[0] = __src[0];
    v135[1] = __src[1];
    sub_219F6409C(v135, &qword_27CCD95B8);
    return (v134 & 1) != 0;
  }

  __dst[10] = *(&__src[22] + 8);
  __dst[11] = *(&__src[23] + 8);
  *&__dst[12] = *(&__src[24] + 1);
  __dst[6] = *(&__src[18] + 8);
  __dst[7] = *(&__src[19] + 8);
  __dst[9] = *(&__src[21] + 8);
  __dst[8] = *(&__src[20] + 8);
  __dst[2] = *(&__src[14] + 8);
  __dst[3] = *(&__src[15] + 8);
  __dst[5] = *(&__src[17] + 8);
  __dst[4] = *(&__src[16] + 8);
  __dst[1] = *(&__src[13] + 8);
  __dst[0] = *(&__src[12] + 8);
  if (sub_219F63C20(__dst) != 1)
  {
LABEL_23:
    memcpy(__dst, __src, sizeof(__dst));
    sub_219F9336C(&v278, &v160);
    v101 = &v329;
    v102 = &v160;
    goto LABEL_24;
  }

  v170 = __src[10];
  v171 = __src[11];
  v172 = *&__src[12];
  v166 = __src[6];
  v167 = __src[7];
  v169 = __src[9];
  v168 = __src[8];
  v162 = __src[2];
  v163 = __src[3];
  v165 = __src[5];
  v164 = __src[4];
  v161 = __src[1];
  v160 = __src[0];
  sub_219F9336C(&v278, v139);
  sub_219F9336C(&v329, v139);
  sub_219F6409C(&v160, &qword_27CCD95B8);
  return 1;
}

unint64_t sub_219FEE9F8()
{
  result = qword_27CCDB130;
  if (!qword_27CCDB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB130);
  }

  return result;
}

unint64_t sub_219FEEAB8()
{
  result = qword_27CCDB140;
  if (!qword_27CCDB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB140);
  }

  return result;
}

uint64_t sub_219FEEB14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 800))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 184);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_219FEEB70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 792) = 0;
    *(result + 248) = 0u;
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
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 800) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 800) = 0;
    }

    if (a2)
    {
      *(result + 184) = a2;
    }
  }

  return result;
}

unint64_t sub_219FEECBC()
{
  result = qword_27CCDB148;
  if (!qword_27CCDB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB148);
  }

  return result;
}

unint64_t sub_219FEED14()
{
  result = qword_27CCDB150;
  if (!qword_27CCDB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB150);
  }

  return result;
}

unint64_t sub_219FEED6C()
{
  result = qword_27CCDB158;
  if (!qword_27CCDB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB158);
  }

  return result;
}

uint64_t sub_219FEEDC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656B63696BLL && a2 == 0xE600000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74707265637865 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

uint64_t type metadata accessor for ActivityMinimalView()
{
  result = qword_27CCDB168;
  if (!qword_27CCDB168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219FEEF90()
{
  result = type metadata accessor for ActivityMinimalAppearanceTheme();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_219FEF018@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FC8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v62 - v4;
  v6 = type metadata accessor for ActivityAssetView(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219F45500(v1, &v10[v7[7]], &qword_27CCD98D0);
  v11 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v12 = (v1 + *(v11 + 24));
  v13 = v12[5];
  v68 = v12[4];
  v69 = v13;
  v14 = v12[3];
  v66 = v12[2];
  v67 = v14;
  v15 = v12[10];
  v73 = v12[9];
  v74 = v15;
  v16 = v12[8];
  v71 = v12[7];
  v72 = v16;
  v70 = v12[6];
  v17 = v12[1];
  v64 = *v12;
  v65 = v17;
  v18 = (v1 + *(v11 + 20));
  v19 = v18[9];
  v83 = v18[8];
  v84 = v19;
  v85 = v18[10];
  v20 = v18[5];
  v79 = v18[4];
  v80 = v20;
  v21 = v18[7];
  v81 = v18[6];
  v82 = v21;
  v22 = v18[1];
  v75 = *v18;
  v76 = v22;
  v23 = v18[3];
  v77 = v18[2];
  v78 = v23;
  *v10 = swift_getKeyPath();
  *(v10 + 24) = 0u;
  v10[40] = 0;
  *(v10 + 8) = 0u;
  v24 = &v10[v7[8]];
  sub_219F5EC1C(v86);
  v25 = v86[9];
  *(v24 + 8) = v86[8];
  *(v24 + 9) = v25;
  *(v24 + 10) = v86[10];
  v26 = v86[5];
  *(v24 + 4) = v86[4];
  *(v24 + 5) = v26;
  v27 = v86[7];
  *(v24 + 6) = v86[6];
  *(v24 + 7) = v27;
  v28 = v86[1];
  *v24 = v86[0];
  *(v24 + 1) = v28;
  v29 = v86[3];
  *(v24 + 2) = v86[2];
  *(v24 + 3) = v29;
  v30 = &v10[v7[9]];
  sub_219F5EC1C(v87);
  v31 = v87[5];
  *(v30 + 4) = v87[4];
  *(v30 + 5) = v31;
  v32 = v87[10];
  *(v30 + 9) = v87[9];
  *(v30 + 10) = v32;
  v33 = v87[8];
  *(v30 + 7) = v87[7];
  *(v30 + 8) = v33;
  *(v30 + 6) = v87[6];
  v34 = v87[1];
  *v30 = v87[0];
  *(v30 + 1) = v34;
  v35 = v87[3];
  *(v30 + 2) = v87[2];
  *(v30 + 3) = v35;
  v10[v7[10]] = 0;
  v36 = *(v24 + 9);
  v88[8] = *(v24 + 8);
  v88[9] = v36;
  v88[10] = *(v24 + 10);
  v37 = *(v24 + 5);
  v88[4] = *(v24 + 4);
  v88[5] = v37;
  v38 = *(v24 + 7);
  v88[6] = *(v24 + 6);
  v88[7] = v38;
  v39 = *(v24 + 1);
  v88[0] = *v24;
  v88[1] = v39;
  v40 = *(v24 + 3);
  v88[2] = *(v24 + 2);
  v88[3] = v40;
  sub_219F45500(&v64, v89, &qword_27CCDA4A8);
  sub_219F45500(&v75, v89, &qword_27CCD9B40);
  sub_219F6409C(v88, &qword_27CCDA4A8);
  v41 = v69;
  *(v24 + 4) = v68;
  *(v24 + 5) = v41;
  v42 = v74;
  *(v24 + 9) = v73;
  *(v24 + 10) = v42;
  v43 = v72;
  *(v24 + 7) = v71;
  *(v24 + 8) = v43;
  *(v24 + 6) = v70;
  v44 = v65;
  *v24 = v64;
  *(v24 + 1) = v44;
  v45 = v67;
  *(v24 + 2) = v66;
  *(v24 + 3) = v45;
  v46 = *(v30 + 8);
  v89[9] = *(v30 + 9);
  v89[10] = *(v30 + 10);
  v47 = *(v30 + 5);
  v89[4] = *(v30 + 4);
  v89[5] = v47;
  v48 = *(v30 + 6);
  v89[7] = *(v30 + 7);
  v89[8] = v46;
  v89[6] = v48;
  v49 = *(v30 + 1);
  v89[0] = *v30;
  v89[1] = v49;
  v50 = *(v30 + 3);
  v89[2] = *(v30 + 2);
  v89[3] = v50;
  sub_219F6409C(v89, &qword_27CCD9B40);
  v51 = v84;
  *(v30 + 8) = v83;
  *(v30 + 9) = v51;
  *(v30 + 10) = v85;
  v52 = v80;
  *(v30 + 4) = v79;
  *(v30 + 5) = v52;
  v53 = v82;
  *(v30 + 6) = v81;
  *(v30 + 7) = v53;
  v54 = v76;
  *v30 = v75;
  *(v30 + 1) = v54;
  v55 = v78;
  *(v30 + 2) = v77;
  *(v30 + 3) = v55;
  v56 = v63;
  sub_219F9DD20(v10, v63);
  *(v56 + v7[10]) = 1;
  sub_219F9DD84(v10);
  v57 = sub_21A0E57FC();
  (*(*(v57 - 8) + 56))(v5, 1, 1, v57);
  v58 = sub_21A0E589C();
  sub_219F6409C(v5, &qword_27CCD9FC8);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB178);
  v61 = (v56 + *(result + 36));
  *v61 = KeyPath;
  v61[1] = v58;
  return result;
}

unint64_t sub_219FEF42C()
{
  result = qword_27CCDB180;
  if (!qword_27CCDB180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB178);
    sub_219FB27C0();
    sub_219FEF4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB180);
  }

  return result;
}

unint64_t sub_219FEF4B8()
{
  result = qword_27CCDB188;
  if (!qword_27CCDB188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDB190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB188);
  }

  return result;
}

uint64_t type metadata accessor for NationalElectionWatchHeroUpdateView()
{
  result = qword_27CCDB198;
  if (!qword_27CCDB198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219FEF590()
{
  result = type metadata accessor for NationalElectionUpdate.Hero(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_219FEF618(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = (v2 + *(type metadata accessor for NationalElectionUpdate.Hero(0) + 32));
  v6 = v5[3];
  v141 = v5[2];
  *v142 = v6;
  *&v142[13] = *(v5 + 61);
  v7 = *v5;
  v140 = v5[1];
  v139 = v7;
  sub_219F72F28(&v139, v207);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v8 = qword_27CCDBDB0;
  v9 = *&v142[16] | (v142[20] << 32);
  *&v146[13] = *(v5 + 61);
  v10 = v5[3];
  v145 = v5[2];
  *v146 = v10;
  v11 = *v5;
  v144 = v5[1];
  v143 = v11;
  v12 = *&v146[16] | (v146[20] << 32);
  memset(v147, 0, sizeof(v147));
  v148 = 0;

  v127 = v141;
  v128 = v139;
  v125 = *v142;
  v126 = v140;
  v133 = v145;
  v135 = v143;
  v129 = *v146;
  v131 = v144;
  sub_219F72F28(&v143, v207);

  sub_219F6409C(v147, &qword_27CCD9F78);
  memset(v149, 0, sizeof(v149));
  v150 = 0;
  sub_219F6409C(v149, &qword_27CCD9F78);
  v152 = v126;
  v151 = v128;
  v154 = v125;
  v153 = v127;
  *&v155 = v9;
  *(&v155 + 1) = v8;
  v13 = MEMORY[0x277D84F90];
  *&v156[24] = v131;
  *&v156[8] = v135;
  *&v156[56] = v129;
  *&v156[40] = v133;
  *v156 = MEMORY[0x277D84F90];
  *&v156[72] = v12;
  *&v157 = v8;
  *(&v157 + 1) = MEMORY[0x277D84F90];
  nullsub_1(&v151, v14);
  *&v161[13] = *(v5 + 61);
  v15 = v5[3];
  v160 = v5[2];
  *v161 = v15;
  v16 = *v5;
  v159 = v5[1];
  v158 = v16;
  v17 = qword_27CCDBDB0;
  v18 = *&v161[16] | (v161[20] << 32);
  memset(v162, 0, sizeof(v162));
  v163 = 0;
  v134 = v160;
  v136 = v16;
  v130 = *v161;
  v132 = v159;
  sub_219F72F28(&v158, v207);

  sub_219F6409C(v162, &qword_27CCD9F78);
  memset(v164, 0, sizeof(v164));
  v165 = 0;
  sub_219F6409C(v164, &qword_27CCD9F78);
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  *&v171[24] = v132;
  *&v171[8] = v136;
  *&v171[56] = v130;
  *&v171[40] = v134;
  *v171 = 0;
  *&v171[72] = v18;
  *&v172 = v17;
  *(&v172 + 1) = v13;
  nullsub_1(&v166, v19);
  sub_219F5EC1C(v173);
  __src[8] = v173[8];
  __src[9] = v173[9];
  __src[10] = v173[10];
  __src[4] = v173[4];
  __src[5] = v173[5];
  __src[6] = v173[6];
  __src[7] = v173[7];
  __src[0] = v173[0];
  __src[1] = v173[1];
  __src[2] = v173[2];
  __src[3] = v173[3];
  sub_219F5EC1C(v174);
  __src[19] = v174[8];
  __src[20] = v174[9];
  __src[21] = v174[10];
  __src[15] = v174[4];
  __src[16] = v174[5];
  __src[17] = v174[6];
  __src[18] = v174[7];
  __src[11] = v174[0];
  __src[12] = v174[1];
  __src[13] = v174[2];
  __src[14] = v174[3];
  v175[8] = __src[8];
  v175[9] = __src[9];
  v175[10] = __src[10];
  v175[4] = __src[4];
  v175[5] = __src[5];
  v175[7] = __src[7];
  v175[6] = __src[6];
  v175[0] = __src[0];
  v175[1] = __src[1];
  v175[3] = __src[3];
  v175[2] = __src[2];
  sub_219F6409C(v175, &qword_27CCDA4A8);
  __src[8] = *&v156[48];
  __src[9] = *&v156[64];
  __src[10] = v157;
  __src[4] = v155;
  __src[5] = *v156;
  __src[6] = *&v156[16];
  __src[7] = *&v156[32];
  __src[0] = v151;
  __src[1] = v152;
  __src[2] = v153;
  __src[3] = v154;
  v176[8] = __src[19];
  v176[9] = __src[20];
  v176[10] = __src[21];
  v176[4] = __src[15];
  v176[5] = __src[16];
  v176[7] = __src[18];
  v176[6] = __src[17];
  v176[0] = __src[11];
  v176[1] = __src[12];
  v176[3] = __src[14];
  v176[2] = __src[13];
  sub_219F6409C(v176, &qword_27CCD9B40);
  __src[19] = *&v171[48];
  __src[20] = *&v171[64];
  __src[21] = v172;
  __src[15] = v170;
  __src[16] = *v171;
  __src[17] = *&v171[16];
  __src[18] = *&v171[32];
  __src[11] = v166;
  __src[12] = v167;
  __src[13] = v168;
  __src[14] = v169;
  memcpy(__dst, __src, sizeof(__dst));
  nullsub_1(__dst, v20);
  sub_219FB2474(v178);
  memcpy(&v138[352], v178, 0x160uLL);
  memcpy(v179, v178, sizeof(v179));
  sub_219F6409C(v179, &qword_27CCDA9B0);
  memcpy(v138, __dst, 0x160uLL);
  memcpy(v180, &v138[352], sizeof(v180));
  sub_219F6409C(v180, &qword_27CCDA9B0);
  memcpy(&v138[352], v178, 0x160uLL);
  memcpy(v181, v138, sizeof(v181));
  nullsub_1(v181, v21);
  sub_219F639B0(&v182);
  sub_219FF06D0(v195);
  v22 = v191;
  v23 = v192;
  v24 = v193;
  *(v4 + 864) = v192;
  *(v4 + 880) = v24;
  v25 = v187;
  v26 = v188;
  v27 = v189;
  *(v4 + 800) = v188;
  *(v4 + 816) = v27;
  v28 = v189;
  v29 = v190;
  v30 = v191;
  *(v4 + 832) = v190;
  *(v4 + 848) = v30;
  v31 = v183;
  v32 = v184;
  v33 = v185;
  *(v4 + 736) = v184;
  *(v4 + 752) = v33;
  v34 = v185;
  v35 = v186;
  v36 = v187;
  *(v4 + 768) = v186;
  *(v4 + 784) = v36;
  v37 = v183;
  *(v4 + 704) = v182;
  *(v4 + 720) = v37;
  v38 = v191;
  v39 = v193;
  *(v4 + 1064) = v192;
  *(v4 + 1080) = v39;
  v40 = v187;
  v41 = v189;
  *(v4 + 1000) = v188;
  *(v4 + 1016) = v41;
  *(v4 + 1032) = v190;
  *(v4 + 1048) = v38;
  v42 = v182;
  v43 = v183;
  v44 = v185;
  *(v4 + 936) = v184;
  *(v4 + 952) = v44;
  *(v4 + 968) = v186;
  *(v4 + 984) = v40;
  *(v4 + 904) = v182;
  *(v4 + 920) = v43;
  v45 = v192;
  *(v4 + 1248) = v191;
  *(v4 + 1264) = v45;
  *(v4 + 1280) = v193;
  v46 = v188;
  *(v4 + 1184) = v187;
  *(v4 + 1200) = v46;
  v47 = v190;
  *(v4 + 1216) = v189;
  *(v4 + 1232) = v47;
  v48 = v184;
  *(v4 + 1120) = v183;
  *(v4 + 1136) = v48;
  v49 = v186;
  *(v4 + 1152) = v185;
  *(v4 + 1168) = v49;
  *(v4 + 1104) = v182;
  v50 = v191;
  v51 = v193;
  *(v4 + 1464) = v192;
  *(v4 + 1480) = v51;
  v52 = v187;
  v53 = v189;
  *(v4 + 1400) = v188;
  *(v4 + 1416) = v53;
  *(v4 + 1432) = v190;
  *(v4 + 1448) = v50;
  v54 = v183;
  v55 = v185;
  *(v4 + 1336) = v184;
  *(v4 + 1352) = v55;
  *(v4 + 1368) = v186;
  *(v4 + 1384) = v52;
  *(v4 + 1304) = v182;
  *(v4 + 1320) = v54;
  *(v4 + 1648) = v22;
  *(v4 + 1664) = v23;
  *(v4 + 1680) = v193;
  *(v4 + 1584) = v25;
  *(v4 + 1600) = v26;
  *(v4 + 1616) = v28;
  *(v4 + 1632) = v29;
  *(v4 + 1520) = v31;
  *(v4 + 1536) = v32;
  *(v4 + 1552) = v34;
  *(v4 + 1568) = v35;
  v56 = v194;
  *(v4 + 896) = v194;
  *(v4 + 1096) = v56;
  v57 = v194;
  *(v4 + 1296) = v194;
  *(v4 + 1496) = v57;
  *(v4 + 1696) = v194;
  *(v4 + 1504) = v42;
  memcpy((v4 + 1704), v195, 0x2C0uLL);
  memcpy(v196, v195, sizeof(v196));
  sub_219F6409C(v196, &qword_27CCDB1B8);
  memcpy(v4, v181, 0x2C0uLL);
  v58 = *(v4 + 880);
  v197[10] = *(v4 + 864);
  v197[11] = v58;
  v198 = *(v4 + 896);
  v59 = *(v4 + 816);
  v197[6] = *(v4 + 800);
  v197[7] = v59;
  v60 = *(v4 + 832);
  v197[9] = *(v4 + 848);
  v197[8] = v60;
  v61 = *(v4 + 752);
  v197[2] = *(v4 + 736);
  v197[3] = v61;
  v62 = *(v4 + 768);
  v197[5] = *(v4 + 784);
  v197[4] = v62;
  v63 = *(v4 + 704);
  v197[1] = *(v4 + 720);
  v197[0] = v63;
  sub_219F6409C(v197, &qword_27CCD95B8);
  v64 = v193;
  *(v4 + 864) = v192;
  *(v4 + 880) = v64;
  *(v4 + 896) = v194;
  v65 = v189;
  *(v4 + 800) = v188;
  *(v4 + 816) = v65;
  v66 = v191;
  *(v4 + 832) = v190;
  *(v4 + 848) = v66;
  v67 = v185;
  *(v4 + 736) = v184;
  *(v4 + 752) = v67;
  v68 = v187;
  *(v4 + 768) = v186;
  *(v4 + 784) = v68;
  v69 = v183;
  *(v4 + 704) = v182;
  *(v4 + 720) = v69;
  v70 = *(v4 + 1080);
  v199[10] = *(v4 + 1064);
  v199[11] = v70;
  v200 = *(v4 + 1096);
  v71 = *(v4 + 1016);
  v199[6] = *(v4 + 1000);
  v199[7] = v71;
  v72 = *(v4 + 1032);
  v199[9] = *(v4 + 1048);
  v199[8] = v72;
  v73 = *(v4 + 952);
  v199[2] = *(v4 + 936);
  v199[3] = v73;
  v74 = *(v4 + 968);
  v199[5] = *(v4 + 984);
  v199[4] = v74;
  v75 = *(v4 + 904);
  v199[1] = *(v4 + 920);
  v199[0] = v75;
  sub_219F6409C(v199, &qword_27CCD95B8);
  v76 = v193;
  *(v4 + 1064) = v192;
  *(v4 + 1080) = v76;
  *(v4 + 1096) = v194;
  v77 = v189;
  *(v4 + 1000) = v188;
  *(v4 + 1016) = v77;
  v78 = v191;
  *(v4 + 1032) = v190;
  *(v4 + 1048) = v78;
  v79 = v185;
  *(v4 + 936) = v184;
  *(v4 + 952) = v79;
  v80 = v187;
  *(v4 + 968) = v186;
  *(v4 + 984) = v80;
  v81 = v183;
  *(v4 + 904) = v182;
  *(v4 + 920) = v81;
  v82 = *(v4 + 1248);
  v83 = *(v4 + 1280);
  v201[10] = *(v4 + 1264);
  v201[11] = v83;
  v202 = *(v4 + 1296);
  v84 = *(v4 + 1184);
  v85 = *(v4 + 1216);
  v201[6] = *(v4 + 1200);
  v201[7] = v85;
  v86 = *(v4 + 1232);
  v201[9] = v82;
  v201[8] = v86;
  v87 = *(v4 + 1120);
  v88 = *(v4 + 1152);
  v201[2] = *(v4 + 1136);
  v201[3] = v88;
  v89 = *(v4 + 1168);
  v201[5] = v84;
  v201[4] = v89;
  v90 = *(v4 + 1104);
  v201[1] = v87;
  v201[0] = v90;
  sub_219F6409C(v201, &qword_27CCD95B8);
  v91 = v190;
  *(v4 + 1248) = v191;
  v92 = v193;
  *(v4 + 1264) = v192;
  *(v4 + 1280) = v92;
  v93 = v186;
  *(v4 + 1184) = v187;
  v94 = v189;
  *(v4 + 1200) = v188;
  *(v4 + 1216) = v94;
  *(v4 + 1232) = v91;
  v95 = v182;
  *(v4 + 1120) = v183;
  v96 = v185;
  *(v4 + 1136) = v184;
  *(v4 + 1152) = v96;
  *(v4 + 1296) = v194;
  *(v4 + 1168) = v93;
  *(v4 + 1104) = v95;
  v97 = *(v4 + 1480);
  v203[10] = *(v4 + 1464);
  v203[11] = v97;
  v204 = *(v4 + 1496);
  v98 = *(v4 + 1416);
  v203[6] = *(v4 + 1400);
  v203[7] = v98;
  v99 = *(v4 + 1432);
  v203[9] = *(v4 + 1448);
  v203[8] = v99;
  v100 = *(v4 + 1352);
  v203[2] = *(v4 + 1336);
  v203[3] = v100;
  v101 = *(v4 + 1368);
  v203[5] = *(v4 + 1384);
  v203[4] = v101;
  v102 = *(v4 + 1304);
  v203[1] = *(v4 + 1320);
  v203[0] = v102;
  sub_219F6409C(v203, &qword_27CCD95B8);
  v103 = v193;
  *(v4 + 1464) = v192;
  *(v4 + 1480) = v103;
  *(v4 + 1496) = v194;
  v104 = v189;
  *(v4 + 1400) = v188;
  *(v4 + 1416) = v104;
  v105 = v191;
  *(v4 + 1432) = v190;
  *(v4 + 1448) = v105;
  v106 = v185;
  *(v4 + 1336) = v184;
  *(v4 + 1352) = v106;
  v107 = v187;
  *(v4 + 1368) = v186;
  *(v4 + 1384) = v107;
  v108 = v183;
  *(v4 + 1304) = v182;
  *(v4 + 1320) = v108;
  v109 = *(v4 + 1648);
  v110 = *(v4 + 1680);
  v205[10] = *(v4 + 1664);
  v205[11] = v110;
  v206 = *(v4 + 1696);
  v111 = *(v4 + 1584);
  v112 = *(v4 + 1616);
  v205[6] = *(v4 + 1600);
  v205[7] = v112;
  v113 = *(v4 + 1632);
  v205[9] = v109;
  v205[8] = v113;
  v114 = *(v4 + 1520);
  v115 = *(v4 + 1552);
  v205[2] = *(v4 + 1536);
  v205[3] = v115;
  v116 = *(v4 + 1568);
  v205[5] = v111;
  v205[4] = v116;
  v117 = *(v4 + 1504);
  v205[1] = v114;
  v205[0] = v117;
  sub_219F6409C(v205, &qword_27CCD95B8);
  v118 = v190;
  *(v4 + 1648) = v191;
  v119 = v193;
  *(v4 + 1664) = v192;
  *(v4 + 1680) = v119;
  v120 = v186;
  *(v4 + 1584) = v187;
  v121 = v189;
  *(v4 + 1600) = v188;
  *(v4 + 1616) = v121;
  *(v4 + 1632) = v118;
  v122 = v182;
  *(v4 + 1520) = v183;
  v123 = v185;
  *(v4 + 1536) = v184;
  *(v4 + 1552) = v123;
  *(v4 + 1568) = v120;
  *(v4 + 1696) = v194;
  *(v4 + 1504) = v122;
  memcpy(v207, (v4 + 1704), 0x2C0uLL);
  sub_219F6409C(v207, &qword_27CCDB1B8);
  return memcpy((v4 + 1704), v195, 0x2C0uLL);
}