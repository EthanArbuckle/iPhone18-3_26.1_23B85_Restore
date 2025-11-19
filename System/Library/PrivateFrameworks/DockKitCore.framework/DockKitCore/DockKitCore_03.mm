uint64_t sub_224556ED4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_224557D90;
  }

  else
  {

    v3 = sub_224556FF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_224556FF0()
{
  v1 = v0[18];
  v2 = *(v1 + v0[28]);
  v0[32] = v2;
  if (v2)
  {
    v3 = (v1 + OBJC_IVAR___ObjectTrackingAgent_appID);
    v0[33] = *v3;
    v0[34] = v3[1];

    v4 = v2;
    v5 = sub_22455711C;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v0[36] = *(v1 + v0[25]);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v8 = sub_224627F28();
    v10 = v9;
    v5 = sub_22455772C;
    v6 = v8;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22455711C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v0[10] = v0;
  v0[11] = sub_2245571D8;
  v4 = swift_continuation_init();
  sub_22456E510(v2, v1, 0, v3, v4);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2245571D8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 280) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245573D4;
  }

  else
  {
    v2 = sub_2245572F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245572F4()
{
  *(v0 + 288) = *(*(v0 + 144) + *(v0 + 200));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22455772C, v2, v1);
}

uint64_t sub_2245573D4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = OBJC_IVAR___ObjectTrackingAgent_logger;
  *(v0 + 296) = v1;
  *(v0 + 304) = v6;
  v7 = *(v4 + 16);
  *(v0 + 312) = v7;
  *(v0 + 320) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5 + v6, v3);
  v8 = v1;
  v9 = sub_224627B58();
  v10 = sub_224628048();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_224507000, v9, v10, "Failed selecting subject %@", v11, 0xCu);
    sub_2245098A0(v12, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v12, -1, -1);
    MEMORY[0x22AA526D0](v11, -1, -1);
  }

  v15 = *(v0 + 224);
  v16 = *(v0 + 192);
  v17 = *(v0 + 160);
  v18 = *(v0 + 168);
  v19 = *(v0 + 144);

  v20 = *(v18 + 8);
  *(v0 + 328) = v20;
  *(v0 + 336) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  v21 = *(v19 + v15);
  *(v0 + 344) = v21;
  if (v21)
  {
    v22 = (*(v0 + 144) + OBJC_IVAR___ObjectTrackingAgent_appID);
    *(v0 + 352) = *v22;
    *(v0 + 360) = v22[1];
    v23 = v1;

    v24 = v21;
    v25 = sub_2245577BC;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    (*(v0 + 312))(*(v0 + 176), *(v0 + 144) + *(v0 + 304), *(v0 + 160));
    v28 = sub_224627B58();
    v29 = sub_224628058();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 328);
    v32 = *(v0 + 296);
    v33 = *(v0 + 176);
    v34 = *(v0 + 160);
    if (v30)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v28, v29, "Notified daemon about response", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    else
    {
    }

    v31(v33, v34);
    *(v0 + 288) = *(*(v0 + 144) + *(v0 + 200));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v36 = sub_224627F28();
    v38 = v37;
    v25 = sub_22455772C;
    v26 = v36;
    v27 = v38;
  }

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_22455772C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245577BC()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[37];
  v0[2] = v0;
  v0[3] = sub_224557884;
  v5 = swift_continuation_init();
  sub_22456E510(v2, v1, v4, v3, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224557884()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_224557B58;
  }

  else
  {
    v2 = sub_2245579A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245579A0()
{
  v1 = *(v0 + 344);

  (*(v0 + 312))(*(v0 + 176), *(v0 + 144) + *(v0 + 304), *(v0 + 160));
  v2 = sub_224627B58();
  v3 = sub_224628058();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 328);
  v6 = *(v0 + 296);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_224507000, v2, v3, "Notified daemon about response", v9, 2u);
    MEMORY[0x22AA526D0](v9, -1, -1);
  }

  else
  {
  }

  v5(v7, v8);
  *(v0 + 288) = *(*(v0 + 144) + *(v0 + 200));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v11 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22455772C, v11, v10);
}

uint64_t sub_224557B58()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 184);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);

  v2(v5, v7 + v4, v6);
  v8 = v1;
  v9 = sub_224627B58();
  v10 = sub_224628048();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 368);
  v13 = *(v0 + 296);
  if (v11)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v12;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_224507000, v9, v10, "Failed reporting subject selection response: %@", v14, 0xCu);
    sub_2245098A0(v15, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v15, -1, -1);
    MEMORY[0x22AA526D0](v14, -1, -1);
  }

  else
  {
  }

  (*(v0 + 328))(*(v0 + 184), *(v0 + 160));
  *(v0 + 288) = *(*(v0 + 144) + *(v0 + 200));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v19 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22455772C, v19, v18);
}

uint64_t sub_224557D90()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = OBJC_IVAR___ObjectTrackingAgent_logger;
  *(v0 + 296) = v1;
  *(v0 + 304) = v6;
  v7 = *(v4 + 16);
  *(v0 + 312) = v7;
  *(v0 + 320) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5 + v6, v3);
  v8 = v1;
  v9 = sub_224627B58();
  v10 = sub_224628048();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_224507000, v9, v10, "Failed selecting subject %@", v11, 0xCu);
    sub_2245098A0(v12, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v12, -1, -1);
    MEMORY[0x22AA526D0](v11, -1, -1);
  }

  v15 = *(v0 + 224);
  v16 = *(v0 + 192);
  v17 = *(v0 + 160);
  v18 = *(v0 + 168);
  v19 = *(v0 + 144);

  v20 = *(v18 + 8);
  *(v0 + 328) = v20;
  *(v0 + 336) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  v21 = *(v19 + v15);
  *(v0 + 344) = v21;
  if (v21)
  {
    v22 = (*(v0 + 144) + OBJC_IVAR___ObjectTrackingAgent_appID);
    *(v0 + 352) = *v22;
    *(v0 + 360) = v22[1];
    v23 = v1;

    v24 = v21;
    v25 = sub_2245577BC;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    (*(v0 + 312))(*(v0 + 176), *(v0 + 144) + *(v0 + 304), *(v0 + 160));
    v28 = sub_224627B58();
    v29 = sub_224628058();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 328);
    v32 = *(v0 + 296);
    v33 = *(v0 + 176);
    v34 = *(v0 + 160);
    if (v30)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v28, v29, "Notified daemon about response", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    else
    {
    }

    v31(v33, v34);
    *(v0 + 288) = *(*(v0 + 144) + *(v0 + 200));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v36 = sub_224627F28();
    v38 = v37;
    v25 = sub_22455772C;
    v26 = v36;
    v27 = v38;
  }

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_22455814C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v30 - v11;
  v13 = sub_224627B78();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v5 + OBJC_IVAR___ObjectTrackingAgent_logger, v13);
  v17 = sub_224627B58();
  v18 = sub_224628058();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30[0] = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315138;
    *&v30[1] = a1;
    *&v30[2] = a2;
    *&v30[3] = a3;
    *&v30[4] = a4;
    type metadata accessor for CGRect(0);
    v22 = sub_224627D28();
    v24 = sub_224509F28(v22, v23, &v31);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_224507000, v17, v18, "Got request to set ROI to %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x22AA526D0](v21, -1, -1);
    v25 = v20;
    v5 = v30[0];
    MEMORY[0x22AA526D0](v25, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v26 = sub_224627F78();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v5;
  *(v27 + 40) = a1;
  *(v27 + 48) = a2;
  *(v27 + 56) = a3;
  *(v27 + 64) = a4;
  v28 = v5;
  sub_224536440(0, 0, v12, &unk_22462F3B0, v27);
}

uint64_t sub_224558430(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a3;
  *(v8 + 176) = a4;
  *(v8 + 152) = a1;
  *(v8 + 160) = a2;
  *(v8 + 144) = a8;
  v9 = sub_224627B78();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224558548, 0, 0);
}

uint64_t sub_224558548()
{
  v1 = v0[18];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[29] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[30] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_224558610;

  return v5();
}

uint64_t sub_224558610()
{

  return MEMORY[0x2822009F8](sub_224558728, 0, 0);
}

uint64_t sub_224558728()
{
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR___ObjectTrackingAgent_tracker;
  *(v0 + 256) = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v3 = *(v1 + v2);
  if (v3 && (v4 = *(v0 + 224), v5 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_userOverridedAspectRatio, v6 = sub_224627F78(), v20 = *(v0 + 168), v21 = *(v0 + 152), v3[v5] = 1, (*(*(v6 - 8) + 56))(v4, 1, 1, v6), v7 = swift_allocObject(), *(v7 + 16) = 0, *(v7 + 24) = 0, *(v7 + 32) = v3, *(v7 + 56) = v20, *(v7 + 40) = v21, v8 = v3, sub_224536440(0, 0, v4, &unk_22462F7D0, v7), , v9 = *(v1 + v2), *(v0 + 264) = v9, v1 = *(v0 + 144), v9))
  {
    v10 = OBJC_IVAR___ObjectTrackingAgent_appID;
    *(v0 + 272) = OBJC_IVAR___ObjectTrackingAgent_appID;
    v11 = (v1 + v10);
    *(v0 + 280) = *v11;
    *(v0 + 288) = v11[1];

    v12 = v9;
    v13 = sub_224558934;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    *(v0 + 304) = *(v1 + *(v0 + 232));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v16 = sub_224627F28();
    v18 = v17;
    v13 = sub_224558BEC;
    v14 = v16;
    v15 = v18;
  }

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_224558934()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v0[2] = v0;
  v0[3] = sub_2245589F0;
  v4 = swift_continuation_init();
  sub_22456EE3C(v2, v1, 0, v3, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245589F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_224558C8C;
  }

  else
  {
    v2 = sub_224558B0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224558B0C()
{
  *(v0 + 304) = *(*(v0 + 144) + *(v0 + 232));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224558BEC, v2, v1);
}

uint64_t sub_224558BEC()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224558C8C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 144);

  v6 = OBJC_IVAR___ObjectTrackingAgent_logger;
  *(v0 + 312) = OBJC_IVAR___ObjectTrackingAgent_logger;
  v7 = *(v4 + 16);
  *(v0 + 320) = v7;
  *(v0 + 328) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5 + v6, v3);
  v8 = v1;
  v9 = sub_224627B58();
  v10 = sub_224628048();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 296);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_224507000, v9, v10, "Failed setting ROI %@", v12, 0xCu);
    sub_2245098A0(v13, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v13, -1, -1);
    MEMORY[0x22AA526D0](v12, -1, -1);
  }

  v16 = *(v0 + 256);
  v17 = *(v0 + 216);
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);
  v20 = *(v0 + 144);

  v21 = *(v19 + 8);
  *(v0 + 336) = v21;
  *(v0 + 344) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v17, v18);
  v22 = *(v20 + v16);
  *(v0 + 352) = v22;
  if (v22)
  {
    v23 = *(v0 + 296);
    v24 = (*(v0 + 144) + *(v0 + 272));
    *(v0 + 360) = *v24;
    *(v0 + 368) = v24[1];
    v25 = v23;

    v26 = v22;
    v27 = sub_224558FE8;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    (*(v0 + 320))(*(v0 + 200), *(v0 + 144) + *(v0 + 312), *(v0 + 184));
    v30 = sub_224627B58();
    v31 = sub_224628058();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 336);
    v34 = *(v0 + 296);
    v35 = *(v0 + 200);
    v36 = *(v0 + 184);
    if (v32)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_224507000, v30, v31, "Notified daemon about response", v37, 2u);
      MEMORY[0x22AA526D0](v37, -1, -1);
    }

    else
    {
    }

    v33(v35, v36);
    *(v0 + 304) = *(*(v0 + 144) + *(v0 + 232));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v38 = sub_224627F28();
    v40 = v39;
    v27 = sub_224558BEC;
    v28 = v38;
    v29 = v40;
  }

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_224558FE8()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[37];
  v0[10] = v0;
  v0[11] = sub_2245590B0;
  v5 = swift_continuation_init();
  sub_22456EE3C(v2, v1, v4, v3, v5);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2245590B0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 376) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_224559384;
  }

  else
  {
    v2 = sub_2245591CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245591CC()
{
  v1 = *(v0 + 352);

  (*(v0 + 320))(*(v0 + 200), *(v0 + 144) + *(v0 + 312), *(v0 + 184));
  v2 = sub_224627B58();
  v3 = sub_224628058();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 336);
  v6 = *(v0 + 296);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_224507000, v2, v3, "Notified daemon about response", v9, 2u);
    MEMORY[0x22AA526D0](v9, -1, -1);
  }

  else
  {
  }

  v5(v7, v8);
  *(v0 + 304) = *(*(v0 + 144) + *(v0 + 232));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v11 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224558BEC, v11, v10);
}

uint64_t sub_224559384()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 320);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 144);

  v2(v5, v7 + v3, v6);
  v8 = v1;
  v9 = sub_224627B58();
  v10 = sub_224628048();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 376);
  v13 = *(v0 + 296);
  if (v11)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v12;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_224507000, v9, v10, "Failed reporting ROI set response: %@", v14, 0xCu);
    sub_2245098A0(v15, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v15, -1, -1);
    MEMORY[0x22AA526D0](v14, -1, -1);
  }

  else
  {
  }

  (*(v0 + 336))(*(v0 + 208), *(v0 + 184));
  *(v0 + 304) = *(*(v0 + 144) + *(v0 + 232));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v19 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224558BEC, v19, v18);
}

uint64_t sub_224559638()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = &v63 - v3;
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v72 = &v63 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - v12;
  sub_224626F68();
  swift_allocObject();
  sub_224626F58();
  sub_22452F924();
  sub_224626F48();
  v66 = v9;

  v14 = v74;
  v15 = v75;
  v16 = v76;
  v17 = *(v5 + 16);
  v67 = OBJC_IVAR___ObjectTrackingAgent_logger;
  v68 = v17;
  v69 = v5 + 16;
  v17(v13, &v0[OBJC_IVAR___ObjectTrackingAgent_logger], v4);

  v18 = sub_224627B58();
  v19 = sub_224628058();

  v20 = os_log_type_enabled(v18, v19);
  v70 = v14;
  v65 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v64 = v4;
    v23 = v22;
    v73[0] = v22;
    *v21 = 136315138;
    v74 = v14;
    v75 = v15;
    v76 = v16;

    v24 = sub_224627D28();
    v26 = sub_224509F28(v24, v25, v73);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_224507000, v18, v19, "Got request to send command: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v27 = v23;
    v4 = v64;
    MEMORY[0x22AA526D0](v27, -1, -1);
    MEMORY[0x22AA526D0](v21, -1, -1);
  }

  v28 = *(v5 + 8);
  v28(v13, v4);
  if (!*(v16 + 16))
  {
    v36 = v66;
    v68(v66, &v1[v67], v4);

    v37 = sub_224627B58();
    v38 = sub_224628048();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v4;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v73[0] = v41;
      *v40 = 136315138;
      v74 = v70;
      v75 = v65;
      v76 = v16;
      v42 = sub_224627D28();
      v44 = sub_224509F28(v42, v43, v73);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_224507000, v37, v38, "No trajectory found in trajectory command: %s ", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x22AA526D0](v41, -1, -1);
      MEMORY[0x22AA526D0](v40, -1, -1);

      v45 = v36;
      v46 = v39;
      return (v28)(v45, v46);
    }

    v45 = v36;
LABEL_16:
    v46 = v4;
    return (v28)(v45, v46);
  }

  v29 = v70;
  if (v70 != 8)
  {
    if (v70 == 1)
    {

      v30 = sub_224627F78();
      v31 = v71;
      (*(*(v30 - 8) + 56))(v71, 1, 1, v30);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = v1;
      v33 = v1;
      v34 = &unk_22462F3C0;
      v35 = v31;
LABEL_11:
      sub_224536440(0, 0, v35, v34, v32);
    }

    v68(v72, &v1[v67], v4);

    v53 = sub_224627B58();
    v54 = sub_224628048();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = v4;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v29;
      v59 = v57;
      v73[0] = v57;
      *v56 = 136315138;
      v74 = v58;
      v75 = v65;
      v76 = v16;
      v60 = sub_224627D28();
      v62 = sub_224509F28(v60, v61, v73);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_224507000, v53, v54, "command: %s not currently handled", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x22AA526D0](v59, -1, -1);
      MEMORY[0x22AA526D0](v56, -1, -1);

      v45 = v72;
      v46 = v55;
      return (v28)(v45, v46);
    }

    v45 = v72;
    goto LABEL_16;
  }

  v47 = *(v16 + 32);

  if (*(v47 + 16))
  {
    v48 = *(v47 + 40);

    v49 = sub_224627F78();
    v50 = v71;
    (*(*(v49 - 8) + 56))(v71, 1, 1, v49);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v1;
    *(v32 + 40) = v48 > 0.0;
    v51 = v1;
    v34 = &unk_22462F3B8;
    v35 = v50;
    goto LABEL_11;
  }
}

uint64_t sub_224559F68()
{
  v1 = v0;
  v2 = sub_224627118();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2246271A8();
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2246271C8();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224627B78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v69 - v14;
  v16 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v16)
  {
    v73 = v5;
    v74 = v6;
    v75 = v3;
    v76 = v2;
    v17 = v16;

    v18 = sub_22461B810();

    v19 = *(v10 + 16);
    v77 = v1;
    v19(v15, v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v9);
    v20 = v17;
    v21 = v18;
    v22 = sub_224627B58();
    v23 = sub_224628058();
    v83 = v20;

    v84 = v21;
    v24 = v10;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      v27 = v84;
      *(v25 + 4) = v84;
      *v26 = v27;
      *(v25 + 12) = 2112;
      v28 = *&v83[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      *(v25 + 14) = v28;
      v26[1] = v28;
      v29 = v27;
      v30 = v28;
      _os_log_impl(&dword_224507000, v22, v23, "sending usage metric: dumped tracker diagnostics %@ for device %@", v25, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9660);
      swift_arrayDestroy();
      MEMORY[0x22AA526D0](v26, -1, -1);
      MEMORY[0x22AA526D0](v25, -1, -1);
    }

    (*(v24 + 8))(v15, v9);
    strcpy(&v85, "activeCamera");
    BYTE13(v85) = 0;
    HIWORD(v85) = -5120;
    v31 = [v84 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v31)
    {
      sub_224628278();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v93 = v85;
    v94 = v86;
    if (*(&v86 + 1))
    {
      if (swift_dynamicCast())
      {
        v36 = v88;
        v72 = *&v87;
        goto LABEL_15;
      }
    }

    else
    {
      sub_2245098A0(&v93, &qword_27D0CA3B0);
    }

    v72 = 0x6E776F6E6B6E7528;
    v36 = 0xE900000000000029;
LABEL_15:
    v71 = v36;
    *&v85 = 0xD000000000000011;
    *(&v85 + 1) = 0x8000000224637D70;
    v37 = [v84 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v37)
    {
      sub_224628278();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v93 = v85;
    v94 = v86;
    if (*(&v86 + 1))
    {
      if (swift_dynamicCast())
      {
        v38 = v88;
        v70 = *&v87;
        goto LABEL_23;
      }
    }

    else
    {
      sub_2245098A0(&v93, &qword_27D0CA3B0);
    }

    v70 = 0x6E776F6E6B6E7528;
    v38 = 0xE900000000000029;
LABEL_23:
    v69 = v38;
    *&v93 = 0x64657370616C65;
    *(&v93 + 1) = 0xE700000000000000;
    v39 = [v84 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v39)
    {
      sub_224628278();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v93 = v85;
    v94 = v86;
    if (*(&v86 + 1))
    {
      if (swift_dynamicCast())
      {
        v40 = v87;
        goto LABEL_31;
      }
    }

    else
    {
      sub_2245098A0(&v93, &qword_27D0CA3B0);
    }

    v40 = 0.0;
LABEL_31:
    *&v93 = 0xD000000000000012;
    *(&v93 + 1) = 0x8000000224637D90;
    v41 = [v84 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v41)
    {
      sub_224628278();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v93 = v85;
    v94 = v86;
    if (*(&v86 + 1))
    {
      if (swift_dynamicCast())
      {
        v42 = LODWORD(v87);
        goto LABEL_39;
      }
    }

    else
    {
      sub_2245098A0(&v93, &qword_27D0CA3B0);
    }

    v42 = 0;
LABEL_39:
    *&v93 = 0xD000000000000015;
    *(&v93 + 1) = 0x8000000224637DB0;
    v43 = [v84 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v43)
    {
      sub_224628278();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v93 = v85;
    v94 = v86;
    if (*(&v86 + 1))
    {
      if (swift_dynamicCast())
      {
        v44 = v87;
        goto LABEL_47;
      }
    }

    else
    {
      sub_2245098A0(&v93, &qword_27D0CA3B0);
    }

    v44 = 0.0;
LABEL_47:
    *&v93 = 0xD000000000000017;
    *(&v93 + 1) = 0x8000000224637DD0;
    v45 = [v84 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v45)
    {
      sub_224628278();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v93 = v85;
    v94 = v86;
    if (*(&v86 + 1))
    {
      if (swift_dynamicCast())
      {
        v46 = v87;
        goto LABEL_55;
      }
    }

    else
    {
      sub_2245098A0(&v93, &qword_27D0CA3B0);
    }

    v46 = 0.0;
LABEL_55:
    *&v93 = 0xD000000000000019;
    *(&v93 + 1) = 0x8000000224637DF0;
    v47 = [v84 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v47)
    {
      sub_224628278();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v49 = v73;
    v48 = v74;
    v93 = v85;
    v94 = v86;
    if (*(&v86 + 1))
    {
      if (swift_dynamicCast())
      {
        v50 = v87;
LABEL_63:
        v51 = v78;
        sub_224627198();
        v52 = v82;
        v53 = v80;
        (*(v82 + 104))(v80, *MEMORY[0x277CC9980], v48);
        sub_224627108();
        v54 = sub_2246271B8();
        (*(v75 + 8))(v49, v76);
        (*(v52 + 8))(v53, v48);
        (*(v79 + 8))(v51, v81);
        if ((v54 - 13) > 0xFFFFFFFFFFFFFFF7)
        {
          v55 = 0;
        }

        else if ((v54 - 18) > 0xFFFFFFFFFFFFFFFALL)
        {
          v55 = 1;
        }

        else
        {
          v55 = 2;
          if ((v54 - 22) < 0xFFFFFFFFFFFFFFFCLL)
          {
            v55 = 3;
          }
        }

        if (*(v77 + OBJC_IVAR___ObjectTrackingAgent_appID + 8))
        {
          v56 = *(v77 + OBJC_IVAR___ObjectTrackingAgent_appID);
          v57 = *(v77 + OBJC_IVAR___ObjectTrackingAgent_appID + 8);
        }

        else
        {
          v56 = 0x6E776F6E6B6E7528;
          v57 = 0xE900000000000029;
        }

        if (*&v83[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8])
        {
          v58 = *&v83[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion];
          v59 = *&v83[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8];
        }

        else
        {
          v58 = 0x6E776F6E6B6E7528;
          v59 = 0xE900000000000029;
        }

        if (*&v83[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model + 8])
        {
          v60 = *&v83[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model];
          v61 = *&v83[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model + 8];
        }

        else
        {
          v60 = 0x6E776F6E6B6E7528;
          v61 = 0xE900000000000029;
        }

        *&v93 = v56;
        *(&v93 + 1) = v57;
        *&v94 = v72;
        *(&v94 + 1) = v71;
        *&v95 = v40;
        *(&v95 + 1) = v58;
        *&v96 = v59;
        *(&v96 + 1) = v60;
        *&v97 = v61;
        DWORD2(v97) = v42;
        *&v98 = v70;
        *(&v98 + 1) = v69;
        *&v99 = v46;
        *(&v99 + 1) = v40 * v44;
        *&v100 = v50;
        *(&v100 + 1) = v55;

        v62 = sub_224627CB8();
        v63 = swift_allocObject();
        v64 = v98;
        v63[5] = v97;
        v63[6] = v64;
        v65 = v100;
        v63[7] = v99;
        v63[8] = v65;
        v66 = v94;
        v63[1] = v93;
        v63[2] = v66;
        v67 = v96;
        v63[3] = v95;
        v63[4] = v67;
        v91 = sub_224513B0C;
        v92 = v63;
        v87 = MEMORY[0x277D85DD0];
        v88 = 1107296256;
        v89 = sub_224513B14;
        v90 = &block_descriptor_618;
        v68 = _Block_copy(&v87);
        sub_224513BB8(&v93, &v85);

        AnalyticsSendEventLazy();
        _Block_release(v68);

        return sub_224562554(&v93);
      }
    }

    else
    {
      sub_2245098A0(&v93, &qword_27D0CA3B0);
    }

    v50 = 0.0;
    goto LABEL_63;
  }

  (*(v10 + 16))(v13, v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v9);
  v32 = sub_224627B58();
  v33 = sub_224628058();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_224507000, v32, v33, "no tracker, can't fetch diagnostics", v34, 2u);
    MEMORY[0x22AA526D0](v34, -1, -1);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22455AE10()
{
  v1[2] = v0;
  v2 = sub_224627B78();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_224627118();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22455AF50, 0, 0);
}

uint64_t sub_22455AF50()
{
  v1 = *(v0[2] + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v0[12] = v1;
  if (v1)
  {
    v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    v0[13] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    v0[14] = *&v1[v2];
    v7 = (*MEMORY[0x277D21398] + MEMORY[0x277D21398]);
    v3 = v1;

    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_22455B0A4;

    return v7();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22455B0A4(char a1)
{
  *(*v1 + 225) = a1;

  return MEMORY[0x2822009F8](sub_22455B1C4, 0, 0);
}

uint64_t sub_22455B1C4()
{
  if (*(v0 + 225) == 1)
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 16);
    sub_2246270E8();
    v6 = OBJC_IVAR___ObjectTrackingAgent_lastSummaryPublishTime;
    (*(v4 + 16))(v1, v5 + OBJC_IVAR___ObjectTrackingAgent_lastSummaryPublishTime, v3);
    sub_224627098();
    v8 = v7;
    v9 = *(v4 + 8);
    v9(v1, v3);
    v9(v2, v3);
    if (v8 <= 0.05)
    {
      goto LABEL_27;
    }

    v10 = *(v0 + 88);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 16);
    sub_2246270E8();
    (*(v12 + 40))(v5 + v6, v10, v11);
    v14 = *(v0 + 96);
    if (*(v13 + OBJC_IVAR___ObjectTrackingAgent_debugEnabled) == 1)
    {
      v15 = *(v14 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_lastTrackingSummaryDebug);
      *(v0 + 128) = v15;
      if (!v15)
      {
        (*(*(v0 + 32) + 16))(*(v0 + 56), *(v0 + 16) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 24));
        v24 = sub_224627B58();
        v25 = sub_224628058();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_224507000, v24, v25, "no summary", v26, 2u);
          MEMORY[0x22AA526D0](v26, -1, -1);
        }

        v28 = *(v0 + 96);
        v27 = *(v0 + 104);
        v29 = *(v0 + 56);
        v30 = *(v0 + 24);
        v31 = *(v0 + 32);

        (*(v31 + 8))(v29, v30);
        *(v0 + 160) = *(v28 + v27);
        sub_2246274B8();
        sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

        v32 = sub_224627F28();
        v34 = v33;
        v35 = sub_22455BA74;
        goto LABEL_28;
      }

      v16 = *(*(v0 + 16) + OBJC_IVAR___ObjectTrackingAgent_manager);
      *(v0 + 136) = v16;
      if (v16)
      {

        v16;
        v17 = swift_task_alloc();
        *(v0 + 144) = v17;
        *v17 = v0;
        v17[1] = sub_22455B87C;

        return DockCoreManager.updateTrackingSummaryDebug(summary:)(v15);
      }

LABEL_27:
      *(v0 + 216) = *(*(v0 + 96) + *(v0 + 104));
      sub_2246274B8();
      sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

      v32 = sub_224627F28();
      v34 = v52;
      v35 = sub_22455C014;
LABEL_28:

      return MEMORY[0x2822009F8](v35, v32, v34);
    }

    v20 = *(v14 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_lastTrackingSummary);
    *(v0 + 168) = v20;
    if (!v20)
    {
      (*(*(v0 + 32) + 16))(*(v0 + 48), *(v0 + 16) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 24));
      v36 = sub_224627B58();
      v37 = sub_224628058();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_224507000, v36, v37, "no summary", v38, 2u);
        MEMORY[0x22AA526D0](v38, -1, -1);
      }

      v40 = *(v0 + 96);
      v39 = *(v0 + 104);
      v41 = *(v0 + 48);
      v42 = *(v0 + 24);
      v43 = *(v0 + 32);

      (*(v43 + 8))(v41, v42);
      *(v0 + 208) = *(v40 + v39);
      sub_2246274B8();
      sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

      v32 = sub_224627F28();
      v34 = v44;
      v35 = sub_22455BF0C;
      goto LABEL_28;
    }

    v21 = *(v0 + 16);
    v22 = *(v21 + OBJC_IVAR___ObjectTrackingAgent_currentCameraSession);
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType);
    }

    else
    {
      v23 = 0;
    }

    v45 = v22 == 0;

    DKTrackingMetric.update(summary:cameraPort:)(v46, v23, v45);
    v47 = *(v21 + OBJC_IVAR___ObjectTrackingAgent_manager);
    *(v0 + 176) = v47;
    if (!v47)
    {

      goto LABEL_27;
    }

    v48 = v47;
    v49 = swift_task_alloc();
    *(v0 + 184) = v49;
    *(v49 + 16) = v20;
    *(v49 + 24) = v48;
    v50 = swift_task_alloc();
    *(v0 + 192) = v50;
    *v50 = v0;
    v50[1] = sub_22455BAE4;
    v51 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 224, 0, 0, 0xD00000000000001FLL, 0x8000000224637E40, sub_2245625B4, v49, v51);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_22455B87C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_22455C084;
  }

  else
  {

    v3 = sub_22455B998;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22455B998()
{

  v0[27] = *(v0[12] + v0[13]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22455C014, v2, v1);
}

uint64_t sub_22455BA74()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245627F8, 0, 0);
}

uint64_t sub_22455BAE4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_22455BCE4;
  }

  else
  {

    v2 = sub_22455BC00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22455BC00()
{

  *(v0 + 216) = *(*(v0 + 96) + *(v0 + 104));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22455C014, v2, v1);
}

uint64_t sub_22455BCE4()
{

  v1 = *(v0 + 200);
  (*(*(v0 + 32) + 16))(*(v0 + 40), *(v0 + 16) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 24));
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628048();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_224507000, v3, v4, "Failed to send tracking summary %@", v5, 0xCu);
    sub_2245098A0(v6, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v6, -1, -1);
    MEMORY[0x22AA526D0](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  *(v0 + 216) = *(*(v0 + 96) + *(v0 + 104));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v10 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22455C014, v10, v9);
}

uint64_t sub_22455BF0C()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22455BF7C, 0, 0);
}

uint64_t sub_22455BF7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22455C014()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245627F8, 0, 0);
}

uint64_t sub_22455C084()
{

  v1 = *(v0 + 152);
  (*(*(v0 + 32) + 16))(*(v0 + 40), *(v0 + 16) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 24));
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628048();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_224507000, v3, v4, "Failed to send tracking summary %@", v5, 0xCu);
    sub_2245098A0(v6, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v6, -1, -1);
    MEMORY[0x22AA526D0](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  *(v0 + 216) = *(*(v0 + 96) + *(v0 + 104));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v10 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22455C014, v10, v9);
}

uint64_t sub_22455C2A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  v15 = a1;
  sub_224536440(0, 0, v11, &unk_22462F798, v13);
}

uint64_t sub_22455C3F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_22455C444(a1, a2);
  sub_22455C574(&unk_2837F5758);
  return v3;
}

uint64_t sub_22455C444(uint64_t a1, unint64_t a2)
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

  v6 = sub_22460CEF4(v5, 0);
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

  result = sub_2246283B8();
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
        v10 = sub_224627DB8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22460CEF4(v10, 0);
        result = sub_224628368();
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

uint64_t sub_22455C574(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22452AD20(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22455C660(void *a1, int64_t a2, char a3)
{
  result = sub_22455C8F8(a1, a2, a3, *v3, &qword_27D0C9340, &unk_22462F000, &qword_27D0C9348);
  *v3 = result;
  return result;
}

char *sub_22455C6A0(char *a1, int64_t a2, char a3)
{
  result = sub_22455C7E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22455C6C0(void *a1, int64_t a2, char a3)
{
  result = sub_22455C8F8(a1, a2, a3, *v3, &qword_27D0C94A8, &unk_22462F830, &qword_27D0C94A0);
  *v3 = result;
  return result;
}

char *sub_22455C700(char *a1, int64_t a2, char a3)
{
  result = sub_22455CA2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22455C720(size_t a1, int64_t a2, char a3)
{
  result = sub_22455CD30(a1, a2, a3, *v3, &qword_27D0C9470, &unk_22462F7A0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_22455C764(char *a1, int64_t a2, char a3)
{
  result = sub_22455CB30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22455C784(char *a1, int64_t a2, char a3)
{
  result = sub_22455CC3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22455C7A4(size_t a1, int64_t a2, char a3)
{
  result = sub_22455CD30(a1, a2, a3, *v3, &qword_27D0C9260, &unk_22462EF50, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
  *v3 = result;
  return result;
}

char *sub_22455C7E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22455C8F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_22455CA2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C92D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22455CB30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22455CC3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9480);
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

size_t sub_22455CD30(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22455CF0C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22455D000;

  return v5(v2 + 32);
}

uint64_t sub_22455D000()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id sub_22455D114(void *a1)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v31 - v4;
  v5 = sub_2246280A8();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224628078();
  MEMORY[0x28223BE20](v7);
  v8 = sub_224627BC8();
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v1[OBJC_IVAR___ObjectTrackingAgent_delegate];
  *(v36 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___ObjectTrackingAgent_tracker] = 0;
  v9 = &v1[OBJC_IVAR___ObjectTrackingAgent_appID];
  v38 = v9;
  *v9 = 0;
  v9[1] = 0;
  v39 = OBJC_IVAR___ObjectTrackingAgent_debugEnabled;
  v1[OBJC_IVAR___ObjectTrackingAgent_debugEnabled] = 0;
  v10 = OBJC_IVAR___ObjectTrackingAgent_startDate;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  *&v1[OBJC_IVAR___ObjectTrackingAgent_minFrameDuration] = 0x3FA1111111111111;
  v37 = OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig;
  v1[OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig] = 1;
  v1[OBJC_IVAR___ObjectTrackingAgent__trackingEnabled] = 0;
  v1[OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect] = 0;
  *&v1[OBJC_IVAR___ObjectTrackingAgent_manager] = 0;
  sub_224627B68();
  v32 = OBJC_IVAR___ObjectTrackingAgent_agentQueue;
  sub_22450950C(0, &unk_280C518F0);
  sub_224627BA8();
  v43 = MEMORY[0x277D84F90];
  sub_224509554(&unk_280C51900, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  sub_224509674(&qword_280C51920, &unk_27D0C99E0);
  sub_224628298();
  (*(v34 + 104))(v33, *MEMORY[0x277D85260], v35);
  *&v1[v32] = sub_2246280D8();
  v1[OBJC_IVAR___ObjectTrackingAgent_setupOngoing] = 0;
  v1[OBJC_IVAR___ObjectTrackingAgent_setupComplete] = 0;
  v11 = OBJC_IVAR___ObjectTrackingAgent_lastImage;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x277CBF758]) init];
  v12 = OBJC_IVAR___ObjectTrackingAgent_lastFaces;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
  v13 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  sub_2246274B8();
  *&v1[v13] = sub_2246274A8();
  v14 = OBJC_IVAR___ObjectTrackingAgent_configStateLock;
  *&v1[v14] = sub_2246274A8();
  v1[OBJC_IVAR___ObjectTrackingAgent_registeredForTrackingConfigChanges] = 0;
  DKTrackingMetric.init()(&v1[OBJC_IVAR___ObjectTrackingAgent_trackingMetric]);
  *&v1[OBJC_IVAR___ObjectTrackingAgent_currentCameraSession] = 0;
  *&v1[OBJC_IVAR___ObjectTrackingAgent_publishSummaryPeriod] = 0x3FA999999999999ALL;
  sub_224627088();
  v15 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___ObjectTrackingAgent__selectedFaceIDs] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___ObjectTrackingAgent__selectedBodyIDs] = v15;
  v16 = OBJC_IVAR___ObjectTrackingAgent__selectedIDsLock;
  *&v1[v16] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v36 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v17 = v40;
  v18 = [v40 clientApplicationID];
  v19 = sub_224627CD8();
  v21 = v20;

  v22 = v38;
  *v38 = v19;
  v22[1] = v21;

  v23 = [v17 customInferenceEnabled];
  v2[v37] = v23;
  if (qword_280C51638 != -1)
  {
    swift_once();
  }

  v2[v39] = byte_280C51959;
  v24 = type metadata accessor for ObjectTrackingAgent();
  v42.receiver = v2;
  v42.super_class = v24;
  v25 = objc_msgSendSuper2(&v42, sel_init);
  v26 = sub_224627F78();
  v27 = v41;
  (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v25;
  v29 = v25;
  sub_224536440(0, 0, v27, &unk_22462F850, v28);

  return v29;
}

id sub_22455D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v39 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v28 - v6;
  v7 = sub_2246280A8();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224628078();
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224627BC8();
  MEMORY[0x28223BE20](v11 - 8);
  v34 = &v4[OBJC_IVAR___ObjectTrackingAgent_delegate];
  *(v34 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___ObjectTrackingAgent_tracker] = 0;
  v12 = &v4[OBJC_IVAR___ObjectTrackingAgent_appID];
  *v12 = 0;
  v12[1] = 0;
  v35 = OBJC_IVAR___ObjectTrackingAgent_debugEnabled;
  v4[OBJC_IVAR___ObjectTrackingAgent_debugEnabled] = 0;
  v13 = OBJC_IVAR___ObjectTrackingAgent_startDate;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  *&v4[OBJC_IVAR___ObjectTrackingAgent_minFrameDuration] = 0x3FA1111111111111;
  v4[OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig] = 1;
  v4[OBJC_IVAR___ObjectTrackingAgent__trackingEnabled] = 0;
  v4[OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect] = 0;
  *&v4[OBJC_IVAR___ObjectTrackingAgent_manager] = 0;
  sub_224627B68();
  v29 = OBJC_IVAR___ObjectTrackingAgent_agentQueue;
  sub_22450950C(0, &unk_280C518F0);
  sub_224627BA8();
  v42 = MEMORY[0x277D84F90];
  sub_224509554(&unk_280C51900, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  sub_224509674(&qword_280C51920, &unk_27D0C99E0);
  sub_224628298();
  (*(v32 + 104))(v31, *MEMORY[0x277D85260], v33);
  *&v4[v29] = sub_2246280D8();
  v4[OBJC_IVAR___ObjectTrackingAgent_setupOngoing] = 0;
  v4[OBJC_IVAR___ObjectTrackingAgent_setupComplete] = 0;
  v14 = OBJC_IVAR___ObjectTrackingAgent_lastImage;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277CBF758]) init];
  v15 = OBJC_IVAR___ObjectTrackingAgent_lastFaces;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
  v16 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  sub_2246274B8();
  *&v4[v16] = sub_2246274A8();
  v17 = OBJC_IVAR___ObjectTrackingAgent_configStateLock;
  *&v4[v17] = sub_2246274A8();
  v4[OBJC_IVAR___ObjectTrackingAgent_registeredForTrackingConfigChanges] = 0;
  DKTrackingMetric.init()(&v4[OBJC_IVAR___ObjectTrackingAgent_trackingMetric]);
  *&v4[OBJC_IVAR___ObjectTrackingAgent_currentCameraSession] = 0;
  *&v4[OBJC_IVAR___ObjectTrackingAgent_publishSummaryPeriod] = 0x3FA999999999999ALL;
  sub_224627088();
  v18 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___ObjectTrackingAgent__selectedFaceIDs] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___ObjectTrackingAgent__selectedBodyIDs] = v18;
  v19 = OBJC_IVAR___ObjectTrackingAgent__selectedIDsLock;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v20 = v37;
  *v12 = v36;
  v12[1] = v20;

  *(v34 + 1) = v38;
  swift_unknownObjectWeakAssign();
  if (qword_280C51638 != -1)
  {
    swift_once();
  }

  v4[v35] = byte_280C51959;
  v21 = type metadata accessor for ObjectTrackingAgent();
  v41.receiver = v4;
  v41.super_class = v21;
  v22 = objc_msgSendSuper2(&v41, &off_27852AB78);
  v23 = sub_224627F78();
  v24 = v40;
  (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v22;
  v26 = v22;
  sub_224536440(0, 0, v24, &unk_22462F840, v25);

  return v26;
}

id sub_22455DD64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }

    v4 = 17481;
    v5 = 0xE200000000000000;
  }

  else
  {
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }

    v4 = 0x444965636146;
    v5 = 0xE600000000000000;
  }

  v6 = sub_2245096C8(v4, v5);
  if (v7)
  {
    sub_2245097F8(*(a1 + 56) + 32 * v6, &v56);
    if (swift_dynamicCast())
    {
      v8 = v54;
      goto LABEL_10;
    }
  }

LABEL_9:
  v8 = 0;
LABEL_10:
  if (!*(a1 + 16))
  {
    v10 = 1.0;
LABEL_20:
    v14 = -1;
    goto LABEL_21;
  }

  v9 = sub_2245096C8(0x6E656469666E6F43, 0xEF6C6576654C6563);
  v10 = 1.0;
  if (v11)
  {
    sub_2245097F8(*(a1 + 56) + 32 * v9, &v56);
    if (swift_dynamicCast())
    {
      v10 = v54;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v12 = sub_2245096C8(0x7974696C61646F4DLL, 0xE800000000000000);
  if ((v13 & 1) == 0 || (sub_2245097F8(*(a1 + 56) + 32 * v12, &v56), !swift_dynamicCast()))
  {
    v14 = -1;
    if (*(a1 + 16))
    {
      goto LABEL_80;
    }

LABEL_21:
    v15 = MEMORY[0x277D837D0];
    v16 = MEMORY[0x277D839F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9490);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22462C900;
    *(v17 + 32) = 88;
    *(v17 + 40) = 0xE100000000000000;
    *(v17 + 56) = v15;
    *(v17 + 64) = 0;
    *(v17 + 88) = v16;
    *(v17 + 96) = 89;
    *(v17 + 104) = 0xE100000000000000;
    *(v17 + 120) = v15;
    *(v17 + 128) = 0;
    *(v17 + 152) = v16;
    *(v17 + 160) = 0x6874646957;
    *(v17 + 168) = 0xE500000000000000;
    *(v17 + 184) = v15;
    *(v17 + 192) = 0;
    *(v17 + 216) = v16;
    *(v17 + 224) = 0x746867696548;
    *(v17 + 232) = 0xE600000000000000;
    *(v17 + 280) = v16;
    *(v17 + 248) = v15;
    *(v17 + 256) = 0;
    sub_22450950C(0, &qword_27D0C9E90);
    v18 = sub_224628018();
    goto LABEL_22;
  }

  v14 = v54;
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

LABEL_80:
  v50 = sub_2245096C8(1952671058, 0xE400000000000000);
  if ((v51 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_2245097F8(*(a1 + 56) + 32 * v50, &v56);
  sub_22450950C(0, &qword_27D0C9E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v18 = v54;
LABEL_22:
  *&v56 = 88;
  *(&v56 + 1) = 0xE100000000000000;
  v19 = [v18 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  if (*(&v55 + 1))
  {
    if (swift_dynamicCast())
    {
      v20 = v52;
      goto LABEL_30;
    }
  }

  else
  {
    sub_2245098A0(&v56, &qword_27D0CA3B0);
  }

  v20 = 0;
LABEL_30:
  *&v56 = 89;
  *(&v56 + 1) = 0xE100000000000000;
  v21 = [v18 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  if (*(&v55 + 1))
  {
    if (swift_dynamicCast())
    {
      v22 = v52;
      goto LABEL_38;
    }
  }

  else
  {
    sub_2245098A0(&v56, &qword_27D0CA3B0);
  }

  v22 = 0;
LABEL_38:
  *&v56 = 0x6874646957;
  *(&v56 + 1) = 0xE500000000000000;
  v23 = [v18 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  if (*(&v55 + 1))
  {
    if (swift_dynamicCast())
    {
      v24 = v52;
      goto LABEL_46;
    }
  }

  else
  {
    sub_2245098A0(&v56, &qword_27D0CA3B0);
  }

  v24 = 0;
LABEL_46:
  *&v56 = 0x746867696548;
  *(&v56 + 1) = 0xE600000000000000;
  v25 = [v18 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v25)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  if (*(&v55 + 1))
  {
    if (swift_dynamicCast())
    {
      v26 = v52;
      goto LABEL_54;
    }
  }

  else
  {
    sub_2245098A0(&v56, &qword_27D0CA3B0);
  }

  v26 = 0;
LABEL_54:
  if (!*(a1 + 16))
  {
    v30 = 0;
    v29 = 1;
    goto LABEL_69;
  }

  v27 = sub_2245096C8(0x444970756F7247, 0xE700000000000000);
  if ((v28 & 1) != 0 && (sub_2245097F8(*(a1 + 56) + 32 * v27, &v56), swift_dynamicCast()))
  {
    v29 = 0;
    v30 = v54;
    if (!*(a1 + 16))
    {
      goto LABEL_69;
    }
  }

  else
  {
    v30 = 0;
    v29 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_69;
    }
  }

  v31 = sub_2245096C8(0x666E49656C676E41, 0xEC0000007761596FLL);
  if (v32)
  {
    sub_2245097F8(*(a1 + 56) + 32 * v31, &v56);
    if (swift_dynamicCast())
    {
        ;
      }

        ;
      }

      v34 = 0;
      v35 = i * 180.0 / 3.14159265;
      if (!*(a1 + 16))
      {
        goto LABEL_77;
      }

      goto LABEL_70;
    }
  }

LABEL_69:
  v34 = 1;
  v35 = 0.0;
  if (!*(a1 + 16))
  {
LABEL_77:
    v39 = 1;
    v40 = 0.0;
    goto LABEL_78;
  }

LABEL_70:
  v36 = sub_2245096C8(0x666E49656C676E41, 0xEE0068637469506FLL);
  if ((v37 & 1) == 0)
  {
    goto LABEL_77;
  }

  sub_2245097F8(*(a1 + 56) + 32 * v36, &v56);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_77;
  }

    ;
  }

    ;
  }

  v39 = 0;
  v40 = j * 180.0 / 3.14159265;
LABEL_78:
  v41 = type metadata accessor for DockCoreObservation();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_identifier] = v8;
  *&v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_type] = a2;
  *&v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_X] = v20;
  *&v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_Y] = v22;
  *&v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_width] = v24;
  *&v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_height] = v26;
  *&v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_trackerID] = -1;
  v43 = &v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_groupId];
  *v43 = v30;
  v43[8] = v29;
  v44 = &v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_yawAngle];
  *v44 = v35;
  *(v44 + 8) = v34;
  v45 = &v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_pitchAngle];
  *v45 = v40;
  *(v45 + 8) = v39;
  *&v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_confidence] = v10;
  v46 = &v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_printConfidence];
  *v46 = 0;
  v46[8] = 1;
  v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_newTrack] = 1;
  v47 = &v42[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_modality];
  *v47 = v14;
  v47[8] = 0;
  v53.receiver = v42;
  v53.super_class = v41;
  v48 = objc_msgSendSuper2(&v53, sel_init);

  return v48;
}

id sub_22455E72C(void *a1)
{
  v2 = [a1 detectionType];
  if (v2 > 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = qword_22462F878[v2];
  }

  [a1 rect];
  v5 = v4;
  [a1 rect];
  v7 = v6;
  [a1 rect];
  Width = CGRectGetWidth(v15);
  [a1 rect];
  Height = CGRectGetHeight(v16);
  v10 = [a1 focusStrong];
  v11 = type metadata accessor for DockKitFocusObservation();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_identifier] = -1;
  *&v12[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_x] = v5;
  *&v12[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_y] = v7;
  *&v12[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_width] = Width;
  *&v12[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_height] = Height;
  v12[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_focusStrong] = v10;
  *&v12[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_type] = v3;
  v14.receiver = v12;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_22455E88C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_22453DF40(a1, v4, v5, v6);
}

uint64_t sub_22455E940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_22453E510(a1, v4, v5, v6);
}

uint64_t sub_22455E9F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_22453EB58(a1, v4, v5, v6);
}

uint64_t sub_22455EAA8(double a1, double a2, double a3, double a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_22455EACC, 0, 0);
}

uint64_t sub_22455EACC()
{
  *(v0 + 112) = [objc_allocWithZone(type metadata accessor for DockCoreManager()) init];

  return MEMORY[0x2822009F8](sub_22455EB48, 0, 0);
}

uint64_t sub_22455EB48()
{
  v1 = *(v0 + 14);
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  *(v0 + 2) = v0;
  *(v0 + 3) = sub_22455EC0C;
  v6 = swift_continuation_init();
  sub_2245D9E80(v1, v6, v5, v4, v3, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22455EC0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_22455ED8C;
  }

  else
  {
    v2 = sub_22455ED28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22455ED28()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22455ED8C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22455EDF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22450D030;

  return sub_22454AD14(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22455EECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22450D030;

  return sub_22454DCD0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22455EF94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_22454EDD8(a1, v4, v5, v6);
}

uint64_t sub_22455F048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_22454FE84(a1, v4, v5, v6);
}

uint64_t sub_22455F0FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_224550234(a1, v4, v5, v6);
}

uint64_t sub_22455F1B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_224550974(a1, v4, v5, v6);
}

uint64_t sub_22455F264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_224551044(a1, v4, v5, v6);
}

uint64_t sub_22455F328(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_2245517F0(a1, v4, v5, v6);
}

uint64_t sub_22455F3EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_224552020(a1, v4, v5, v6);
}

uint64_t sub_22455F4A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_2245528B0(a1, v4, v5, v6);
}

uint64_t sub_22455F554(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22450D030;

  return sub_2245534A8(a1, v4, v5, v6, v7);
}

uint64_t sub_22455F618()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_224509D5C();
}

uint64_t sub_22455F6CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_224554118(a1, v4, v5, v6);
}

uint64_t sub_22455F780(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22450D030;

  return sub_22455496C(a1, v4, v5, v7, v6);
}

uint64_t sub_22455F840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22450D030;

  return sub_2245550EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22455F908(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22450D030;

  return sub_224556AAC(a1, v4, v5, v7, v6);
}

uint64_t sub_22455F9C8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22450D030;

  return sub_224558430(v7, v8, v9, v10, a1, v4, v5, v6);
}

uint64_t sub_22455FADC()
{
  result = sub_224627B78();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DKTrackingMetric();
    if (v2 <= 0x3F)
    {
      result = sub_224627118();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ObjectTrackingAgent.isTracking()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x388);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22455FE48;

  return v5();
}

uint64_t sub_22455FE48(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ObjectTrackingAgent.track(metadata:image:cameraPortType:cameraIntrinsics:referenceDimensions:orientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v18 = *((*MEMORY[0x277D85000] & *v8) + 0x390);
  v23 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_22450D030;
  v20.n128_f64[0] = a7;
  v21.n128_f64[0] = a8;

  return v23(a1, a2, a3, a4, a5, a6, v20, v21);
}

uint64_t dispatch thunk of ObjectTrackingAgent.track(focusObservation:metadata:image:cameraPortType:cameraIntrinsics:referenceDimensions:orientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v20 = *((*MEMORY[0x277D85000] & *v9) + 0x398);
  v25 = (v20 + *v20);
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_22450D030;
  v22.n128_f64[0] = a8;
  v23.n128_f64[0] = a9;

  return v25(a1, a2, a3, a4, a5, a6, a7, v22, v23);
}

uint64_t dispatch thunk of ObjectTrackingAgent.track(detectedObjectsInfo:image:cameraPortType:cameraIntrinsics:referenceDimensions:orientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v18 = *((*MEMORY[0x277D85000] & *v8) + 0x3A0);
  v23 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_22450D030;
  v20.n128_f64[0] = a7;
  v21.n128_f64[0] = a8;

  return v23(a1, a2, a3, a4, a5, a6, v20, v21);
}

uint64_t dispatch thunk of ObjectTrackingAgent.processImage(image:faces:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x3F0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22450D030;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ObjectTrackingAgent.trackingButtonEnabled()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x400);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_224562804;

  return v5();
}

uint64_t dispatch thunk of ObjectTrackingAgent.selectSubjectAt(point:)(double a1, double a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x408);
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22450D030;
  v8.n128_f64[0] = a1;
  v9.n128_f64[0] = a2;

  return v11(v8, v9);
}

uint64_t dispatch thunk of ObjectTrackingAgent.selectSubjects(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x410);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D034;

  return v7(a1);
}

uint64_t dispatch thunk of ObjectTrackingAgent.setRectOfInterestLocally(rect:)(double a1, double a2, double a3, double a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x418);
  v17 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22450D030;
  v12.n128_f64[0] = a1;
  v13.n128_f64[0] = a2;
  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;

  return v17(v12, v13, v14, v15);
}

uint64_t dispatch thunk of ObjectTrackingAgent.setRectOfInterest(rect:)(double a1, double a2, double a3, double a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x420);
  v17 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22450D030;
  v12.n128_f64[0] = a1;
  v13.n128_f64[0] = a2;
  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;

  return v17(v12, v13, v14, v15);
}

uint64_t dispatch thunk of ObjectTrackingAgent.stateEvent(info:connectedState:dockState:trackingButtonState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x470);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22450D030;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_224561274()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22450D030;

  return sub_22454D70C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_224561348(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_22450AB38(a1, v4, v5, v6);
}

uint64_t sub_224561414()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_22454A994(v2, v3, v5, v4);
}

uint64_t sub_2245614D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_22450AC20(v2, v3, v4);
}

uint64_t sub_224561598()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_22454948C(v2, v3);
}

uint64_t sub_224561644()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245489A8(v2, v3);
}

uint64_t sub_2245616F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_224547C44(v2, v3);
}

uint64_t sub_22456179C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245471D4(v2, v3);
}

uint64_t sub_224561848()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_22454661C(v2, v3);
}

uint64_t sub_2245618F4()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245455E0(v2, v4, v3);
}

uint64_t sub_2245619A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22450D030;

  return sub_224542220(v6, v2, v3, v4, v5);
}

uint64_t objectdestroy_401Tm()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224561ABC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22450D030;

  return sub_224541EDC(v6, v7, v2, v3, v4, v5);
}

uint64_t sub_224561B90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_224541594(v2, v3, v4);
}

uint64_t sub_224561C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_224540A48(v4, v5, v2, v3);
}

uint64_t sub_224561D04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_224540098(v2, v3);
}

uint64_t sub_224561DB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_22453F884(v2, v3, v5, v4);
}

uint64_t sub_224561E70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_22450D030;

  return sub_22453C128(v2, v3, v4, v5, v8, v10, v6, v7, v9);
}

uint64_t sub_224561F60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_22450D030;

  return sub_22453A13C(v2, v3, v4, v5, v6, v9, v11, v7, v8, v10);
}

uint64_t objectdestroy_496Tm()
{
  _Block_release(*(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2245620C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_22450D030;

  return sub_224538280(v2, v3, v4, v5, v8, v10, v6, v7, v9);
}

uint64_t objectdestroy_311Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_282Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_54Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_224562284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2245622F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return sub_22455CF0C(a1, v4);
}

uint64_t sub_2245623AC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22450D034;

  return sub_224599D44(v7, v8, v9, v10, a1, v4, v5, v6);
}

uint64_t sub_2245624A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_22454F8D8();
}

uint64_t sub_2245625BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_224509D5C();
}

uint64_t sub_224562670()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_224509D5C();
}

uint64_t sub_224562724(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return sub_224509900(a1, v4);
}

void *sub_22456286C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state);
  v2 = v1;
  return v1;
}

unint64_t sub_22456294C()
{
  sub_224628378();

  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name);
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

  MEMORY[0x22AA51210](v1, v2);

  MEMORY[0x22AA51210](0x223D64692022, 0xE600000000000000);
  v3 = sub_224628668();
  MEMORY[0x22AA51210](v3);

  MEMORY[0x22AA51210](15906, 0xE200000000000000);
  return 0xD000000000000015;
}

char *SensorBattery.__allocating_init(id:name:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state] = 0;
  *&v9[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v9[OBJC_IVAR____TtC11DockKitCore9Component_type] = 4;
  v10 = &v9[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v10 = a2;
  v10[1] = a3;
  v14.receiver = v9;
  v14.super_class = type metadata accessor for Component();
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state];
  *&v11[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state] = a4;

  return v11;
}

char *SensorBattery.init(id:name:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v4[OBJC_IVAR____TtC11DockKitCore9Component_type] = 4;
  v6 = &v4[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v6 = a2;
  v6[1] = a3;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for Component();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state];
  *&v7[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state] = a4;

  return v7;
}

void sub_224562BC4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state);
  v4 = sub_224627CB8();
  [a1 encodeObject:v3 forKey:v4];

  sub_2245B3720(a1);
}

void *SensorBattery.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state] = 0;
  v4 = sub_2245B47B4();
  v5 = v4;
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC11DockKitCore9Component_type) = 4;
    type metadata accessor for AccessoryBatteryState();
    v6 = v5;
    v7 = sub_2246281A8();

    a1 = *&v6[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state];
    *&v6[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state] = v7;
  }

  return v5;
}

void *SensorBattery.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state) = 0;
  v3 = sub_2245B47B4();
  v4 = v3;
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC11DockKitCore9Component_type) = 4;
    type metadata accessor for AccessoryBatteryState();
    v5 = v4;
    v6 = sub_2246281A8();

    a1 = *&v5[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state];
    *&v5[OBJC_IVAR____TtC11DockKitCore13SensorBattery_state] = v6;
  }

  return v4;
}

id SensorBattery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SensorBattery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_224563000()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 0xE600000000000000;
      v3 = 0x64656D617246;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 0xE900000000000067;
      v3 = 0x6E69686372616553;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E55;
    goto LABEL_11;
  }

  if (!v1)
  {
    v2 = 0xE800000000000000;
    v3 = 0x64656C6261736944;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xE700000000000000;
  v3 = 0x64656C62616E45;
LABEL_11:
  sub_224628378();

  MEMORY[0x22AA51210](v3, v2);

  MEMORY[0x22AA51210](15906, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

id SensorTrackerState.__allocating_init(state:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SensorTrackerState.init(state:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SensorTrackerState();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_224563210(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state);
  v4 = sub_224627CB8();
  [a1 encodeInteger:v3 forKey:v4];
}

char *SensorTrackerState.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for SensorData();
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = sub_224627CB8();
  v6 = [a1 decodeIntegerForKey_];

  if (v6 >= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  *&v4[OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state] = v7;

  return v4;
}

char *SensorTrackerState.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SensorData();
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = sub_224627CB8();
  v5 = [a1 decodeIntegerForKey_];

  if (v5 >= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  *&v3[OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state] = v6;

  return v3;
}

id SensorTrackerState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_224563588()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore13SensorTracker_state);
  v2 = v1;
  return v1;
}

id sub_224563618(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_224627CB8();

  return v5;
}

unint64_t sub_224563688()
{
  sub_224628378();

  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name);
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

  MEMORY[0x22AA51210](v1, v2);

  MEMORY[0x22AA51210](0x223D64692022, 0xE600000000000000);
  v3 = sub_224628668();
  MEMORY[0x22AA51210](v3);

  MEMORY[0x22AA51210](15906, 0xE200000000000000);
  return 0xD000000000000015;
}

char *SensorTracker.__allocating_init(id:name:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state] = 0;
  *&v9[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v9[OBJC_IVAR____TtC11DockKitCore9Component_type] = 3;
  v10 = &v9[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v10 = a2;
  v10[1] = a3;
  v15.receiver = v9;
  v15.super_class = type metadata accessor for Component();
  v11 = objc_msgSendSuper2(&v15, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state];
  *&v11[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state] = a4;
  v13 = v11;

  v13[OBJC_IVAR____TtC11DockKitCore9Component_type] = 3;
  return v13;
}

char *SensorTracker.init(id:name:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v4[OBJC_IVAR____TtC11DockKitCore9Component_type] = 3;
  v6 = &v4[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v6 = a2;
  v6[1] = a3;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for Component();
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state];
  *&v7[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state] = a4;
  v9 = v7;

  v9[OBJC_IVAR____TtC11DockKitCore9Component_type] = 3;
  return v9;
}

void sub_224563930(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore13SensorTracker_state);
  v4 = sub_224627CB8();
  [a1 encodeObject:v3 forKey:v4];

  sub_2245B3720(a1);
}

void *SensorTracker.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state] = 0;
  v4 = sub_2245B47B4();
  v5 = v4;
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC11DockKitCore9Component_type) = 3;
    type metadata accessor for SensorTrackerState();
    v6 = v5;
    v7 = sub_2246281A8();

    a1 = *&v6[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state];
    *&v6[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state] = v7;
  }

  return v5;
}

void *SensorTracker.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC11DockKitCore13SensorTracker_state) = 0;
  v3 = sub_2245B47B4();
  v4 = v3;
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC11DockKitCore9Component_type) = 3;
    type metadata accessor for SensorTrackerState();
    v5 = v4;
    v6 = sub_2246281A8();

    a1 = *&v5[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state];
    *&v5[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state] = v6;
  }

  return v4;
}

void sub_224563BFC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore13SensorTracker_state);
  *(v1 + OBJC_IVAR____TtC11DockKitCore13SensorTracker_state) = a1;
  v2 = a1;
}

id sub_224563C9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_224563D30()
{
  result = qword_27D0C94C8;
  if (!qword_27D0C94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C94C8);
  }

  return result;
}

uint64_t sub_224563EA0()
{
  sub_224627D78();
}

DockKitCore::TrackedSubjectTypeInternal_optional __swiftcall TrackedSubjectTypeInternal.init(rawValue:)(Swift::Int rawValue)
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

void *sub_22456402C@<X0>(void *result@<X0>, char *a2@<X8>)
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

void sub_2245642CC(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_224564324(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_saliencyRank;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_224564380(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_speakingConfidence;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2245643DC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_lookingAtCameraConfidence;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

unint64_t sub_2245644F0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 1701869940;
    if (a1 != 2)
    {
      v6 = 1952671090;
    }

    if (a1)
    {
      v5 = 0x444974736E61;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0x6F697463656C6573;
    if (a1 != 7)
    {
      v2 = 0x676E696B63617274;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x79636E65696C6173;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_224564630()
{
  sub_224628778();
  sub_224563EA0();
  return sub_2246287C8();
}

uint64_t sub_224564680()
{
  sub_224628778();
  sub_224563EA0();
  return sub_2246287C8();
}

uint64_t sub_2245646C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224568714();
  *a1 = result;
  return result;
}

unint64_t sub_2245646F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2245644F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22456473C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224568714();
  *a1 = result;
  return result;
}

uint64_t sub_224564764(uint64_t a1)
{
  v2 = sub_22456526C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2245647A0(uint64_t a1)
{
  v2 = sub_22456526C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrackedSubjectInternal.__allocating_init(identifier:anstID:type:rect:saliencyRank:speakingConfidence:lookingAtCameraConfidence:selectionReason:trackingLock:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, char a15)
{
  v23 = swift_allocObject();
  LOBYTE(a3) = *a3;
  v24 = v23 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_saliencyRank;
  v25 = v23 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_speakingConfidence;
  v26 = v23 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_lookingAtCameraConfidence;
  v27 = OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_identifier;
  v28 = sub_224627188();
  (*(*(v28 - 8) + 32))(v23 + v27, a1, v28);
  *(v23 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_anstID) = a2;
  *(v23 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_type) = a3;
  v29 = (v23 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect);
  *v29 = a9;
  v29[1] = a10;
  v29[2] = a11;
  v29[3] = a12;
  *v24 = a4;
  *(v24 + 8) = a5 & 1;
  *v25 = a6;
  *(v25 + 8) = a7 & 1;
  *v26 = a8;
  *(v26 + 8) = a13 & 1;
  v30 = OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason;
  v31 = sub_224627A08();
  (*(*(v31 - 8) + 32))(v23 + v30, a14, v31);
  *(v23 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_trackingLock) = a15;
  return v23;
}

uint64_t TrackedSubjectInternal.init(identifier:anstID:type:rect:saliencyRank:speakingConfidence:lookingAtCameraConfidence:selectionReason:trackingLock:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, char a15)
{
  v23 = *a3;
  v24 = v15 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_saliencyRank;
  v25 = v15 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_speakingConfidence;
  v26 = v15 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_lookingAtCameraConfidence;
  v27 = OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_identifier;
  v28 = sub_224627188();
  (*(*(v28 - 8) + 32))(v15 + v27, a1, v28);
  *(v15 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_anstID) = a2;
  *(v15 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_type) = v23;
  v29 = (v15 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect);
  *v29 = a9;
  v29[1] = a10;
  v29[2] = a11;
  v29[3] = a12;
  *v24 = a4;
  *(v24 + 8) = a5 & 1;
  *v25 = a6;
  *(v25 + 8) = a7 & 1;
  *v26 = a8;
  *(v26 + 8) = a13 & 1;
  v30 = OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason;
  v31 = sub_224627A08();
  (*(*(v31 - 8) + 32))(v15 + v30, a14, v31);
  *(v15 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_trackingLock) = a15;
  return v15;
}

uint64_t TrackedSubjectInternal.deinit()
{
  v1 = OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_identifier;
  v2 = sub_224627188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason;
  v4 = sub_224627A08();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TrackedSubjectInternal.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_identifier;
  v2 = sub_224627188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason;
  v4 = sub_224627A08();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_224564CE0(void *a1)
{
  v2 = sub_224627A08();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224627188();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C94D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22456526C();
  v12 = v24;
  sub_224628808();
  (*(v5 + 16))(v7, v12 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_identifier, v4);
  LOBYTE(v26) = 0;
  sub_224565314(&qword_27D0C8C80, MEMORY[0x277CC95F0]);
  v13 = v25;
  sub_224628648();
  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    return (*(v9 + 8))(v11, v8);
  }

  LOBYTE(v26) = 1;
  sub_224628638();
  LOBYTE(v26) = *(v12 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_type);
  v28 = 2;
  sub_2245652C0();
  sub_224628648();
  v15 = v9;
  v16 = *(v12 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect + 16);
  v26 = *(v12 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect);
  v27 = v16;
  v28 = 3;
  type metadata accessor for CGRect(0);
  sub_224565314(&qword_27D0C8AF0, type metadata accessor for CGRect);
  sub_224628648();
  LOBYTE(v26) = 4;
  sub_2246285D8();
  LOBYTE(v26) = 5;
  sub_2246285C8();
  LOBYTE(v26) = 6;
  sub_2246285C8();
  v18 = v21;
  v17 = v22;
  v19 = v23;
  (*(v22 + 16))(v21, v12 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason, v23);
  LOBYTE(v26) = 7;
  sub_224565314(&qword_27D0C94E8, MEMORY[0x277D214A8]);
  sub_224628648();
  (*(v17 + 8))(v18, v19);
  LOBYTE(v26) = 8;
  sub_224628608();
  return (*(v15 + 8))(v11, 0);
}

unint64_t sub_22456526C()
{
  result = qword_27D0C94D8;
  if (!qword_27D0C94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C94D8);
  }

  return result;
}

unint64_t sub_2245652C0()
{
  result = qword_27D0C94E0;
  if (!qword_27D0C94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C94E0);
  }

  return result;
}

uint64_t sub_224565314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TrackedSubjectInternal.init(from:)(void *a1)
{
  v3 = sub_224627A08();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224627188();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C94F0);
  v38 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = &v33 - v7;
  v9 = v1 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_saliencyRank;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_speakingConfidence;
  *v10 = 0;
  *(v10 + 8) = 1;
  v45 = v1;
  v46 = a1;
  v11 = v1 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_lookingAtCameraConfidence;
  *v11 = 0;
  *(v11 + 8) = 1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22456526C();
  v42 = v8;
  v12 = v44;
  sub_2246287F8();
  if (v12)
  {
    v13 = v45;
    type metadata accessor for TrackedSubjectInternal(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = v9;
    v34 = v11;
    v35 = v10;
    v14 = v38;
    v15 = v39;
    v16 = v40;
    LOBYTE(v47) = 0;
    sub_224565314(&qword_27D0C9820, MEMORY[0x277CC95F0]);
    v17 = v41;
    sub_224628578();
    v18 = *(v37 + 32);
    v13 = v45;
    v41 = v5;
    v18(v45 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_identifier, v17, v5);
    LOBYTE(v47) = 1;
    *(v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_anstID) = sub_224628568();
    v49 = 2;
    sub_224565A38();
    sub_224628578();
    *(v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_type) = v47;
    type metadata accessor for CGRect(0);
    v49 = 3;
    sub_224565314(&qword_27D0C8B10, type metadata accessor for CGRect);
    sub_224628578();
    v19 = (v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect);
    v20 = v48;
    *v19 = v47;
    v19[1] = v20;
    LOBYTE(v47) = 4;
    v21 = sub_224628508();
    v22 = v44;
    *v44 = v21;
    *(v22 + 8) = v23 & 1;
    LOBYTE(v47) = 5;
    v24 = sub_2246284F8();
    v25 = v35;
    *v35 = v24;
    *(v25 + 8) = v26 & 1;
    LOBYTE(v47) = 6;
    v27 = sub_2246284F8();
    v29 = v34;
    *v34 = v27;
    *(v29 + 8) = v30 & 1;
    LOBYTE(v47) = 7;
    sub_224565314(&qword_27D0C9500, MEMORY[0x277D214A8]);
    v31 = v36;
    sub_224628578();
    (*(v15 + 32))(v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason, v31, v16);
    LOBYTE(v47) = 8;
    v32 = sub_224628538();
    (*(v14 + 8))(v42, v43);
    *(v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_trackingLock) = v32 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return v13;
}

unint64_t sub_224565A38()
{
  result = qword_27D0C94F8;
  if (!qword_27D0C94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C94F8);
  }

  return result;
}

id sub_224565B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = (*(v9 + 16))(&v15 - v10, a1 + *a4, v8);
  v13 = a5(v12);
  (*(v9 + 8))(v11, v8);

  return v13;
}

uint64_t sub_224565C58@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_224565D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), void *a6)
{
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v15 - v12;
  a5(a3);
  return (*(v11 + 40))(a1 + *a6, v13, v10);
}

uint64_t sub_224565E14(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = a3(0);
  v7 = *(*(v6 - 8) + 40);

  return v7(v3 + v5, a1, v6);
}

uint64_t sub_224565E8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void *a6)
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v14 - v11;
  (*(v10 + 16))(&v14 - v11, a1, v9);
  return (*(v10 + 40))(*a2 + *a6, v12, v9);
}

void sub_224566088(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_2245660D0()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_224566198()
{
  sub_224627D78();
}

uint64_t sub_22456624C()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_224566310@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224568760();
  *a1 = result;
  return result;
}

void sub_224566340(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701669236;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7461746E6569726FLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000002246350B0;
  }

  if (*v1)
  {
    v3 = 0x737463656A627573;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2245663C4()
{
  v1 = 1701669236;
  v2 = 0x7461746E6569726FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x737463656A627573;
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

uint64_t sub_224566444@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224568760();
  *a1 = result;
  return result;
}

uint64_t sub_22456646C(uint64_t a1)
{
  v2 = sub_2245672E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2245664A8(uint64_t a1)
{
  v2 = sub_2245672E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrackingSummaryInternal.__allocating_init(time:subjects:orientation:referenceDimension:)(uint64_t a1, uint64_t a2, _BYTE *a3, double a4, double a5)
{
  v10 = swift_allocObject();
  LOBYTE(a3) = *a3;
  v11 = OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_time;
  v12 = sub_224627118();
  (*(*(v12 - 8) + 32))(v10 + v11, a1, v12);
  *(v10 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_subjects) = a2;
  *(v10 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_orientation) = a3;
  v13 = (v10 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension);
  *v13 = a4;
  v13[1] = a5;
  return v10;
}

uint64_t TrackingSummaryInternal.init(time:subjects:orientation:referenceDimension:)(uint64_t a1, uint64_t a2, char *a3, double a4, double a5)
{
  v10 = *a3;
  v11 = OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_time;
  v12 = sub_224627118();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  *(v5 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_subjects) = a2;
  *(v5 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_orientation) = v10;
  v13 = (v5 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension);
  *v13 = a4;
  v13[1] = a5;
  return v5;
}

uint64_t static TrackingSummaryInternal.decode(data:)()
{
  sub_224626F68();
  swift_allocObject();
  sub_224626F58();
  sub_224565314(&qword_27D0C9508, type metadata accessor for TrackingSummaryInternal);
  sub_224626F48();

  return v1;
}

uint64_t sub_224566878()
{
  sub_224626F98();
  swift_allocObject();
  sub_224626F88();
  type metadata accessor for TrackingSummaryInternal(0);
  sub_224565314(&qword_27D0C9510, type metadata accessor for TrackingSummaryInternal);
  v0 = sub_224626F78();

  return v0;
}

uint64_t sub_224566AE0()
{
  v0 = sub_224627D18();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_224626EA8();
  MEMORY[0x28223BE20](v1);
  sub_224626EE8();
  swift_allocObject();
  sub_224626ED8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9518);
  *(swift_allocObject() + 16) = xmmword_22462F9E0;
  sub_224626E88();
  sub_224626E98();
  sub_224565314(&qword_27D0C9520, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9528);
  sub_224566DB0();
  sub_224628298();
  sub_224626EB8();
  type metadata accessor for TrackingSummaryInternal(0);
  sub_224565314(&qword_27D0C9510, type metadata accessor for TrackingSummaryInternal);
  v3 = sub_224626EC8();
  v5 = v4;
  sub_224627D08();
  v6 = sub_224627CE8();
  v8 = v7;
  sub_22452F684(v3, v5);

  if (v8)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_224566DB0()
{
  result = qword_27D0C9530;
  if (!qword_27D0C9530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C9528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9530);
  }

  return result;
}

uint64_t TrackingSummaryInternal.deinit()
{
  v1 = OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_time;
  v2 = sub_224627118();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TrackingSummaryInternal.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_time;
  v2 = sub_224627118();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_224566F30(void *a1)
{
  v2 = sub_224627118();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9538);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_2245672E4();
  v10 = v13[0];
  sub_224628808();
  (*(v3 + 16))(v5, v10 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_time, v2);
  LOBYTE(v14) = 0;
  sub_224565314(&qword_27D0C9548, MEMORY[0x277CC9578]);
  v11 = v13[1];
  sub_224628648();
  if (v11)
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    *&v14 = *(v10 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_subjects);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9550);
    sub_2245678A0(&qword_27D0C9558, &qword_27D0C9560);
    sub_224628648();
    LOBYTE(v14) = *(v10 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_orientation);
    v15 = 2;
    sub_224567338();
    sub_224628648();
    v14 = *(v10 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension);
    v15 = 3;
    type metadata accessor for CGSize(0);
    sub_224565314(&qword_27D0C9570, type metadata accessor for CGSize);
    sub_224628648();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2245672E4()
{
  result = qword_27D0C9540;
  if (!qword_27D0C9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9540);
  }

  return result;
}

unint64_t sub_224567338()
{
  result = qword_27D0C9568;
  if (!qword_27D0C9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9568);
  }

  return result;
}

uint64_t sub_2245673B8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t TrackingSummaryInternal.init(from:)(void *a1)
{
  v3 = sub_224627118();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9578);
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v14 - v8;
  v10 = a1[3];
  v17 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_2245672E4();
  sub_2246287F8();
  if (v1)
  {
    v11 = v16;
    type metadata accessor for TrackingSummaryInternal(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v7;
    LOBYTE(v18) = 0;
    sub_224565314(&qword_27D0C9580, MEMORY[0x277CC9578]);
    sub_224628578();
    v11 = v16;
    (*(v4 + 32))(v16 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_time, v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9550);
    v19 = 1;
    sub_2245678A0(&qword_27D0C9588, &qword_27D0C9590);
    sub_224628578();
    *(v11 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_subjects) = v18;
    v19 = 2;
    sub_22456793C();
    sub_224628578();
    *(v11 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_orientation) = v18;
    type metadata accessor for CGSize(0);
    v19 = 3;
    sub_224565314(&qword_27D0C95A0, type metadata accessor for CGSize);
    sub_224628578();
    (*(v12 + 8))(v9, v15);
    *(v11 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension) = v18;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v11;
}

uint64_t sub_2245678A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C9550);
    sub_224565314(a2, type metadata accessor for TrackedSubjectInternal);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22456793C()
{
  result = qword_27D0C9598;
  if (!qword_27D0C9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9598);
  }

  return result;
}

unint64_t sub_224567994()
{
  result = qword_27D0C95A8;
  if (!qword_27D0C95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C95A8);
  }

  return result;
}

uint64_t sub_224567A28@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v5 + v6, v7);
}

uint64_t sub_224567B50()
{
  result = sub_224627188();
  if (v1 <= 0x3F)
  {
    result = sub_224627A08();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2245681B0()
{
  result = sub_224627118();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_224568508()
{
  result = qword_27D0C95D0;
  if (!qword_27D0C95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C95D0);
  }

  return result;
}

unint64_t sub_224568560()
{
  result = qword_27D0C95D8;
  if (!qword_27D0C95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C95D8);
  }

  return result;
}

unint64_t sub_2245685B8()
{
  result = qword_27D0C95E0;
  if (!qword_27D0C95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C95E0);
  }

  return result;
}

unint64_t sub_224568610()
{
  result = qword_27D0C95E8;
  if (!qword_27D0C95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C95E8);
  }

  return result;
}

unint64_t sub_224568668()
{
  result = qword_27D0C95F0;
  if (!qword_27D0C95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C95F0);
  }

  return result;
}

unint64_t sub_2245686C0()
{
  result = qword_27D0C95F8;
  if (!qword_27D0C95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C95F8);
  }

  return result;
}

uint64_t sub_224568714()
{
  v0 = sub_2246284B8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_224568760()
{
  v0 = sub_2246284B8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2245687AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22452F684(a1, a2);
  }

  return a1;
}

unint64_t sub_2245687C0()
{
  result = qword_27D0C9600;
  if (!qword_27D0C9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9600);
  }

  return result;
}

unint64_t sub_224568974()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  v3 = [v2 description];
  v4 = sub_224627CD8();
  v6 = v5;

  v28[0] = 0xD000000000000019;
  v28[1] = 0x8000000224638300;
  MEMORY[0x22AA51210](v4, v6);

  MEMORY[0x22AA51210](0x20687469772022, 0xE700000000000000);

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems) >> 62)
  {
    sub_224628478();
  }

  v7 = sub_224628668();
  v9 = v8;

  MEMORY[0x22AA51210](v7, v9);

  MEMORY[0x22AA51210](0xD00000000000001BLL, 0x8000000224638320);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9610);
  v10 = sub_224627D28();
  v12 = v11;

  MEMORY[0x22AA51210](v10, v12);

  MEMORY[0x22AA51210](0xD000000000000010, 0x8000000224638340);

  v13 = sub_224627D28();
  v15 = v14;

  MEMORY[0x22AA51210](v13, v15);

  MEMORY[0x22AA51210](0xD000000000000011, 0x8000000224638360);

  v16 = sub_224627D28();
  v18 = v17;

  MEMORY[0x22AA51210](v16, v18);

  MEMORY[0x22AA51210](0x6574616572632022, 0xEB00000000223D64);

  v19 = sub_2246270F8();
  v21 = v20;

  MEMORY[0x22AA51210](v19, v21);

  strcpy(v28, " version=");
  HIDWORD(v28[1]) = -352321536;
  v22 = sub_224628668();
  MEMORY[0x22AA51210](v22);

  MEMORY[0x22AA51210](34, 0xE100000000000000);

  MEMORY[0x22AA51210](v28[0], v28[1]);

  sub_224628378();

  strcpy(v28, " certified=");
  HIWORD(v28[1]) = -5120;
  if (*(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_certified))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_certified))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x22AA51210](v23, v24);

  MEMORY[0x22AA51210](0x67614D7361682022, 0xEE00223D65666153);
  if (*(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_isMagSafe))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_isMagSafe))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x22AA51210](v25, v26);

  MEMORY[0x22AA51210](15906, 0xE200000000000000);

  MEMORY[0x22AA51210](v28[0], v28[1]);

  return 0xD000000000000019;
}

id sub_224568F18(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_224627CB8();

  return v5;
}

uint64_t sub_224568F88()
{
  v1 = [v0 description];
  v2 = sub_224627CD8();

  result = v2;
  v11 = v2;
  v4 = *&v0[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems];
  if (v4 >> 62)
  {
    v10 = v2;
    v5 = sub_224628478();
    result = v10;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA517F0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = sub_2245B39E8();
      MEMORY[0x22AA51210](v9);

      MEMORY[0x22AA51210](0x202020200ALL, 0xE500000000000000);
    }

    while (v5 != v6);

    return v11;
  }

  return result;
}

uint64_t sub_2245690F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model);

  return v1;
}

uint64_t sub_224569130(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_224569174()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion);

  return v1;
}

uint64_t sub_2245691B0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_2245691F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_serialNumber);

  return v1;
}

uint64_t sub_224569230(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_serialNumber);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t DockCoreAccessory.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_created;
  v4 = sub_224627118();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2245693D4(uint64_t a1)
{
  sub_22457C960(a1, v9);
  if (!v10)
  {
    sub_2245098A0(v9, &qword_27D0CA3B0);
    goto LABEL_5;
  }

  type metadata accessor for DockCoreAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  v3 = *&v8[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
  v10 = type metadata accessor for DockCoreInfo(0);
  v9[0] = v3;
  v4 = v2;
  v5 = v3;
  v6 = DockCoreInfo.isEqual(_:)(v9);

  sub_2245098A0(v9, &qword_27D0CA3B0);
  return v6 & 1;
}

id DockCoreAccessory.__allocating_init(info:systems:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_22457E1D8(a1, a2);

  return v6;
}

id DockCoreAccessory.init(info:systems:)(void *a1, uint64_t a2)
{
  v3 = sub_22457E1D8(a1, a2);

  return v3;
}

uint64_t sub_224569698(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info) = v3;
  v5 = v3;

  *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems) = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems);

  *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_version) = 2;
  return result;
}

uint64_t sub_2245697B8(char a1)
{
  v3 = sub_224627B78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v3);
  v7 = v1;
  v8 = sub_224627B58();
  v9 = sub_224628058();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = *&v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection];
    *(v10 + 4) = v12;
    *v11 = v12;
    v13 = v12;
    _os_log_impl(&dword_224507000, v8, v9, "Asked to disconnect, invalidating any XPC connections %@", v10, 0xCu);
    sub_2245098A0(v11, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v11, -1, -1);
    MEMORY[0x22AA526D0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v14 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v15 = *&v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

  os_unfair_lock_lock(v15 + 4);

  v16 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection;
  [*&v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection] invalidate];
  v17 = *&v7[v16];
  if (v17)
  {
    [v17 setExportedObject_];
    v18 = *&v7[v16];
  }

  else
  {
    v18 = 0;
  }

  *&v7[v16] = 0;

  v19 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture;
  [*&v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture] invalidate];
  v20 = *&v7[v19];
  if (v20)
  {
    [v20 setExportedObject_];
    v21 = *&v7[v19];
  }

  else
  {
    v21 = 0;
  }

  *&v7[v19] = 0;

  v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] = a1 & 1;
  v22 = *&v7[v14];

  os_unfair_lock_unlock(v22 + 4);

  v23 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_feedbackDelegates] = MEMORY[0x277D84F90];

  *&v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_sensorDelegates] = v23;

  *&v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_eventDelegates] = v23;

  *&v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_batteryDelegates] = v23;

  *&v7[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_trackingSummaryDelegates] = v23;
}

id DockCoreAccessory.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v2);
  v6 = sub_224627B58();
  v7 = sub_224628058();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_224507000, v6, v7, "de-init DockCoreAccessory and release delegates", v8, 2u);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_feedbackDelegates] = MEMORY[0x277D84F90];

  *&v1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_sensorDelegates] = v9;

  *&v1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_eventDelegates] = v9;

  *&v1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_batteryDelegates] = v9;

  *&v1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_trackingSummaryDelegates] = v9;

  v10 = type metadata accessor for DockCoreAccessory();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

BOOL sub_224569ED0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems);
  v17 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    v15 = a2;
    v16 = a1;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AA517F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = *&v8[OBJC_IVAR____TtC11DockKitCore6System_name] == a1 && *&v8[OBJC_IVAR____TtC11DockKitCore6System_name + 8] == a2;
      if (v11 || (sub_224628688()) && ([v9 isKindOfClass_])
      {
        sub_2246283C8();
        sub_2246283E8();
        sub_2246283F8();
        sub_2246283D8();
        a2 = v15;
        a1 = v16;
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        v12 = v17;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_21:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v13 = sub_224628478();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  return v13 > 0;
}

BOOL sub_22456A140(uint64_t *a1, uint64_t *a2, void *a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems);
  v33 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
  {

    if (i)
    {
      v29 = a3;
      v9 = 0;
      a3 = (v7 & 0xFFFFFFFFFFFFFF8);
      v31 = i;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x22AA517F0](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = *&v10[OBJC_IVAR____TtC11DockKitCore6System_name] == a1 && *&v10[OBJC_IVAR____TtC11DockKitCore6System_name + 8] == a2;
        if (v13 || (sub_224628688()) && (type metadata accessor for ActuationController(), ([v11 isKindOfClass_]))
        {
          sub_2246283C8();
          sub_2246283E8();
          sub_2246283F8();
          sub_2246283D8();
          i = v31;
        }

        else
        {
        }

        ++v9;
        if (v12 == i)
        {
          v14 = v33;
          a3 = v29;
          goto LABEL_21;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_21:

    if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
    {
      a2 = *(v14 + 16);
      if (!a2)
      {
        break;
      }

      goto LABEL_24;
    }

    a2 = sub_224628478();
    if (!a2)
    {
      break;
    }

LABEL_24:
    a1 = 0;
    v15 = a3[2];
    v25 = v14 + 32;
    v26 = v15;
    v30 = a3 + 5;
    v32 = v14 & 0xC000000000000001;
    v27 = a2;
    v28 = v14;
    while (1)
    {
      if (v32)
      {
        v16 = MEMORY[0x22AA517F0](a1, v14);
      }

      else
      {
        if (a1 >= *(v14 + 16))
        {
          goto LABEL_45;
        }

        v16 = *(v25 + 8 * a1);
      }

      a3 = v16;
      v17 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      if (v17)
      {
        break;
      }

      type metadata accessor for ActuationController();
      v18 = swift_dynamicCastClassUnconditional();
      if (v15)
      {
        v19 = v18;
        v7 = 0;
        v20 = OBJC_IVAR____TtC11DockKitCore6System_components;
        a2 = v30;
        do
        {
          if (*(*(v19 + v20) + 16))
          {
            v22 = *(a2 - 1);
            v21 = *a2;

            sub_2245096C8(v22, v21);
            LOBYTE(v22) = v23;

            if (v22)
            {
              v17 = __OFADD__(v7++, 1);
              if (v17)
              {
                __break(1u);
                goto LABEL_42;
              }
            }
          }

          a2 += 2;
          --v15;
        }

        while (v15);

        a2 = v27;
        v14 = v28;
        v15 = v26;
        if (a1 != v27)
        {
          continue;
        }

        return v7 == v26;
      }

      if (a1 == a2)
      {

        return 1;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  return 0;
}

uint64_t sub_22456A4B4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems);
  v30 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
  {

    if (i)
    {
      v9 = 0;
      v28 = a4;
      v29 = a3;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x22AA517F0](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = *&v10[OBJC_IVAR____TtC11DockKitCore6System_name] == a3 && *&v10[OBJC_IVAR____TtC11DockKitCore6System_name + 8] == a4;
        if (v13 || (sub_224628688()) && (type metadata accessor for ActuationController(), ([v11 isKindOfClass_]))
        {
          sub_2246283C8();
          sub_2246283E8();
          sub_2246283F8();
          sub_2246283D8();
          a4 = v28;
          a3 = v29;
        }

        else
        {
        }

        ++v9;
        if (v12 == i)
        {
          a4 = v30;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    a4 = MEMORY[0x277D84F90];
LABEL_21:

    if ((a4 & 0x8000000000000000) == 0 && (a4 & 0x4000000000000000) == 0)
    {
      v7 = *(a4 + 16);
      if (!v7)
      {
        break;
      }

      goto LABEL_24;
    }

    v7 = sub_224628478();
    if (!v7)
    {
      break;
    }

LABEL_24:
    a3 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x22AA517F0](a3, a4);
      }

      else
      {
        if (a3 >= *(a4 + 16))
        {
          goto LABEL_39;
        }

        v14 = *(a4 + 8 * a3 + 32);
      }

      v15 = v14;
      v16 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      type metadata accessor for ActuationController();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = *(v17 + OBJC_IVAR____TtC11DockKitCore6System_components);
        if (*(v18 + 16))
        {
          v19 = v15;

          v20 = sub_2245096C8(a1, a2);
          if (v21)
          {
            v22 = v20;

            v23 = *(*(v18 + 56) + 8 * v22);

            v24 = *&v23[OBJC_IVAR____TtC11DockKitCore9Component_id];
            return v24;
          }
        }
      }

      ++a3;
      if (v16 == v7)
      {
        goto LABEL_42;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_42:

  return -1;
}

BOOL sub_22456A83C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems);
  v38 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
  {

    if (!i)
    {
      break;
    }

    v34 = a3;
    v9 = 0;
    v36 = i;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA517F0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      a3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = *&v10[OBJC_IVAR____TtC11DockKitCore6System_name] == a1 && *&v10[OBJC_IVAR____TtC11DockKitCore6System_name + 8] == a2;
      if (v12 || (sub_224628688()) && (type metadata accessor for SensorController(), ([v11 isKindOfClass_]))
      {
        sub_2246283C8();
        sub_2246283E8();
        sub_2246283F8();
        sub_2246283D8();
        i = v36;
      }

      else
      {
      }

      ++v9;
      if (a3 == i)
      {
        a2 = v38;
        a3 = v34;
        goto LABEL_21;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  a2 = MEMORY[0x277D84F90];
LABEL_21:

  if ((a2 & 0x8000000000000000) == 0 && (a2 & 0x4000000000000000) == 0)
  {
    v13 = *(a2 + 16);
    if (v13)
    {
      goto LABEL_24;
    }

LABEL_54:

    return 0;
  }

  v13 = sub_224628478();
  if (!v13)
  {
    goto LABEL_54;
  }

LABEL_24:
  a1 = 0;
  v14 = *(a3 + 16);
  v29 = a2 + 32;
  v30 = v14;
  v33 = (a3 + 40);
  v35 = a2 & 0xC000000000000001;
  v31 = v13;
  v32 = a2;
  while (1)
  {
LABEL_26:
    if (v35)
    {
      v15 = MEMORY[0x22AA517F0](a1, a2);
    }

    else
    {
      if (a1 >= *(a2 + 16))
      {
        goto LABEL_51;
      }

      v15 = *(v29 + 8 * a1);
    }

    v7 = v15;
    v16 = __OFADD__(a1++, 1);
    if (v16)
    {
      goto LABEL_50;
    }

    type metadata accessor for SensorController();
    v17 = swift_dynamicCastClassUnconditional();
    if (v14)
    {
      break;
    }

    if (a1 == v13)
    {

      return 1;
    }
  }

  a3 = v17;
  v37 = v7;
  v7 = 0;
  a2 = OBJC_IVAR____TtC11DockKitCore6System_components;
  v18 = v33;
  do
  {
    if (*(*(a3 + a2) + 16))
    {
      v20 = *(v18 - 1);
      v19 = *v18;

      sub_2245096C8(v20, v19);
      if ((v21 & 1) == 0)
      {

LABEL_33:

        goto LABEL_34;
      }

      v22 = *(a3 + a2);
      if (!*(v22 + 16))
      {
        goto LABEL_33;
      }

      v23 = sub_2245096C8(v20, v19);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        goto LABEL_33;
      }

      v26 = *(*(v22 + 56) + 8 * v23);

      type metadata accessor for Sensor();
      v27 = swift_dynamicCastClass();

      if (v27)
      {
        v16 = __OFADD__(v7++, 1);
        if (v16)
        {
          __break(1u);
          goto LABEL_48;
        }
      }
    }

LABEL_34:
    v18 += 2;
    --v14;
  }

  while (v14);

  v13 = v31;
  a2 = v32;
  v14 = v30;
  if (a1 != v31)
  {
    goto LABEL_26;
  }

  return v7 == v30;
}

uint64_t sub_22456AC30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = sub_224627CD8();
  v9 = v8;
  v10 = sub_224627ED8();
  v11 = a1;
  LOBYTE(a5) = a5(v7, v9, v10);

  return a5 & 1;
}

uint64_t sub_22456ACC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems);
  v46 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_55;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v40 = a3;
    v10 = 0;
    v42 = a2;
    v44 = a1;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA517F0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      a3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_51;
      }

      v13 = *&v11[OBJC_IVAR____TtC11DockKitCore6System_name] == a1 && *&v11[OBJC_IVAR____TtC11DockKitCore6System_name + 8] == a2;
      if (v13 || (sub_224628688()) && (type metadata accessor for SensorController(), ([v12 isKindOfClass_]))
      {
        sub_2246283C8();
        sub_2246283E8();
        sub_2246283F8();
        sub_2246283D8();
        a2 = v42;
        a1 = v44;
      }

      else
      {
      }

      ++v10;
    }

    while (a3 != v8);
    a2 = v46;
    a3 = v40;
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    a2 = MEMORY[0x277D84F90];
  }

  v46 = v9;
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v14 = sub_224628478();
    if (v14)
    {
LABEL_24:
      v7 = 0;
      v15 = *(a3 + 16);
      v41 = a2 & 0xC000000000000001;
      v35 = a2 + 32;
      v36 = (a3 + 40);
      v16 = MEMORY[0x277D84F90];
      v37 = v15;
      v38 = v14;
      v39 = a2;
      while (1)
      {
        if (v41)
        {
          v17 = MEMORY[0x22AA517F0](v7, a2);
        }

        else
        {
          if (v7 >= *(a2 + 16))
          {
            goto LABEL_54;
          }

          v17 = *(v35 + 8 * v7);
        }

        v45 = v17;
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_53;
        }

        v43 = v7;
        type metadata accessor for SensorController();
        v19 = v45;
        v20 = swift_dynamicCastClassUnconditional();
        if (v15)
        {
          break;
        }

LABEL_25:

        a2 = v39;
        v7 = v43;
        v15 = v37;
        if (v43 == v38)
        {
          goto LABEL_58;
        }
      }

      a3 = v20;
      a2 = OBJC_IVAR____TtC11DockKitCore6System_components;
      a1 = v36;
      while (1)
      {
        if (*(*(a3 + a2) + 16))
        {
          v22 = *(a1 - 1);
          v21 = *a1;
          v23 = v19;

          sub_2245096C8(v22, v21);
          if (v24)
          {

            v25 = *(a3 + a2);
            if (*(v25 + 16))
            {

              v26 = sub_2245096C8(v22, v21);
              if (v27)
              {
                v28 = *(*(v25 + 56) + 8 * v26);

                v7 = type metadata accessor for Sensor();
                if (swift_dynamicCastClass())
                {

                  v29 = *(a3 + a2);

                  if (!*(v29 + 16))
                  {
                    __break(1u);
LABEL_50:
                    __break(1u);
LABEL_51:
                    __break(1u);
LABEL_52:
                    __break(1u);
LABEL_53:
                    __break(1u);
LABEL_54:
                    __break(1u);
LABEL_55:
                    v8 = sub_224628478();
                    goto LABEL_3;
                  }

                  v30 = sub_2245096C8(v22, v21);
                  v32 = v31;

                  if ((v32 & 1) == 0)
                  {
                    goto LABEL_50;
                  }

                  v33 = *(*(v29 + 56) + 8 * v30);

                  swift_dynamicCastClassUnconditional();
                  MEMORY[0x22AA51310]();
                  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_224627EF8();
                  }

                  sub_224627F08();
                  v16 = v46;
                }

                else
                {
                }

                goto LABEL_47;
              }
            }

LABEL_47:
            v19 = v45;
            goto LABEL_34;
          }
        }

LABEL_34:
        a1 += 2;
        if (!--v15)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v14 = *(a2 + 16);
    if (v14)
    {
      goto LABEL_24;
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_58:

  return v16;
}

uint64_t sub_22456B224(uint64_t a1, uint64_t a2)
{
  v4 = sub_22456B370(0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  type metadata accessor for ActuationController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v6 = sub_2245BB488(a1, a2);
  }

  return v6;
}

uint64_t sub_22456B370(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems);
  v13 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA517F0](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_24;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (*&v7[OBJC_IVAR____TtC11DockKitCore6System_type] == a1)
      {
        sub_2246283C8();
        sub_2246283E8();
        sub_2246283F8();
        sub_2246283D8();
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
  {
    if (*(v9 + 16))
    {
      goto LABEL_19;
    }

LABEL_27:

    return 0;
  }

  result = sub_224628478();
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_19:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x22AA517F0](0, v9);
    goto LABEL_22;
  }

  if (*(v9 + 16))
  {
    v11 = *(v9 + 32);
LABEL_22:
    v12 = v11;

    return v12;
  }

  __break(1u);
  return result;
}

void sub_22456B570(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  v5 = sub_224627CB8();
  [a1 encodeObject:v4 forKey:v5];

  type metadata accessor for System();

  v6 = sub_224627EB8();

  v7 = sub_224627CB8();
  [a1 encodeObject:v6 forKey:v7];

  if (*(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8))
  {

    v8 = sub_224627CB8();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_224627CB8();
  [a1 encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model + 8))
  {

    v10 = sub_224627CB8();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_224627CB8();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = sub_2246270A8();
  v13 = sub_224627CB8();
  [a1 encodeObject:v12 forKey:v13];

  v14 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_version);
  v15 = sub_224627CB8();
  [a1 encodeInteger:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_certified);
  v17 = sub_224627CB8();
  [a1 encodeBool:v16 forKey:v17];

  v18 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_isMagSafe);
  v19 = sub_224627CB8();
  [a1 encodeBool:v18 forKey:v19];

  if (*(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_serialNumber + 8))
  {

    v20 = sub_224627CB8();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_224627CB8();
  [a1 encodeObject:v20 forKey:v21];
  swift_unknownObjectRelease();

  v22 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_needsMigration);
  v23 = sub_224627CB8();
  [a1 encodeBool:v22 forKey:v23];
}

uint64_t DockCoreAccessory.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9668);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v68 - v5;
  v78 = sub_224627118();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection] = 0;
  v11 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v12 = swift_allocObject();
  *&v2[v11] = v12;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;
  v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] = 0;
  *(v12 + 16) = 0;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_XPCTIMEOUT] = 0x4008000000000000;
  v13 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_feedbackDelegates] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_sensorDelegates] = v13;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_eventDelegates] = v13;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_batteryDelegates] = v13;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_trackingSummaryDelegates] = v13;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger;
  sub_224627B68();
  v69 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems] = v13;
  v15 = &v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model];
  *v15 = 0;
  v15[1] = 0;
  v70 = v15;
  v16 = &v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_serialNumber];
  *v17 = 0;
  v17[1] = 0;
  v75 = v17;
  v71 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_certified;
  v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_certified] = 0;
  v72 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_isMagSafe;
  v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_isMagSafe] = 0;
  v18 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_version;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_version] = -1;
  v77 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_needsMigration;
  v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_needsMigration] = 0;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture] = 0;
  v19 = sub_224627CB8();
  v79 = a1;
  v20 = [a1 decodeIntegerForKey_];

  *&v2[v18] = v20;
  if (v20 != 2)
  {
    (*(v8 + 16))(v10, &v2[v14], v7);
    v21 = v2;
    v22 = sub_224627B58();
    v23 = sub_224628058();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = *&v2[v18];

      *(v24 + 12) = 2048;
      *(v24 + 14) = 2;
      _os_log_impl(&dword_224507000, v22, v23, "converting DockCoreAccessory from v%ld to v%ld", v24, 0x16u);
      MEMORY[0x22AA526D0](v24, -1, -1);
    }

    else
    {

      v22 = v21;
    }

    (*(v8 + 8))(v10, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v25 = swift_allocObject();
  v80 = xmmword_22462C8F0;
  *(v25 + 16) = xmmword_22462C8F0;
  v26 = type metadata accessor for DockCoreInfo(0);
  *(v25 + 32) = v26;
  v27 = v79;
  sub_2246281B8();

  if (v85)
  {
    v28 = swift_dynamicCast();
    v29 = v78;
    v30 = v76;
    if (v28)
    {
      v31 = v81;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2245098A0(v84, &qword_27D0CA3B0);
    v29 = v78;
    v30 = v76;
  }

  v31 = [objc_allocWithZone(v26) init];
LABEL_11:
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info] = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22462F9E0;
  *(v32 + 32) = sub_22450950C(0, &qword_27D0C9FB0);
  *(v32 + 40) = type metadata accessor for System();
  sub_2246281B8();

  if (v85)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96A8);
    if (swift_dynamicCast())
    {
      v33 = v81;
      goto LABEL_16;
    }
  }

  else
  {
    sub_2245098A0(v84, &qword_27D0CA3B0);
  }

  v33 = MEMORY[0x277D84F90];
LABEL_16:
  *&v2[v69] = v33;

  v34 = swift_allocObject();
  *(v34 + 16) = v80;
  v35 = sub_22450950C(0, &unk_27D0C8D40);
  *(v34 + 32) = v35;
  sub_2246281B8();

  if (v85)
  {
    if (swift_dynamicCast())
    {
      v36 = v81;
      v37 = v82;
      goto LABEL_21;
    }
  }

  else
  {
    sub_2245098A0(v84, &qword_27D0CA3B0);
  }

  v36 = 0;
  v37 = 0;
LABEL_21:
  *v16 = v36;
  v16[1] = v37;

  v38 = swift_allocObject();
  *(v38 + 16) = v80;
  *(v38 + 32) = v35;
  sub_2246281B8();

  if (v85)
  {
    v39 = swift_dynamicCast();
    v40 = v74;
    if (v39)
    {
      v41 = v81;
      v42 = v82;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    sub_2245098A0(v84, &qword_27D0CA3B0);
    v41 = 0;
    v42 = 0;
    v40 = v74;
  }

  v43 = v70;
  *v70 = v41;
  v43[1] = v42;

  v44 = swift_allocObject();
  *(v44 + 16) = v80;
  *(v44 + 32) = sub_22450950C(0, &qword_27D0C9698);
  sub_2246281B8();

  if (v85)
  {
    v45 = swift_dynamicCast();
    (*(v30 + 56))(v40, v45 ^ 1u, 1, v29);
    v46 = (*(v30 + 48))(v40, 1, v29);
    v47 = v73;
    if (v46 != 1)
    {
      (*(v30 + 32))(v73, v40, v29);
      goto LABEL_32;
    }
  }

  else
  {
    sub_2245098A0(v84, &qword_27D0CA3B0);
    (*(v30 + 56))(v40, 1, 1, v29);
    v47 = v73;
  }

  sub_2246270E8();
  if ((*(v30 + 48))(v40, 1, v29) != 1)
  {
    sub_2245098A0(v40, &qword_27D0C9668);
  }

LABEL_32:
  (*(v30 + 32))(&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_created], v47, v29);
  v48 = sub_224627CB8();
  v49 = [v27 decodeBoolForKey_];

  v2[v71] = v49;
  v50 = sub_224627CB8();
  v51 = [v27 decodeBoolForKey_];

  v2[v72] = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = v80;
  *(v52 + 32) = v35;
  sub_2246281B8();

  if (v85)
  {
    if (swift_dynamicCast())
    {
      v53 = v81;
      v54 = v82;
      goto LABEL_37;
    }
  }

  else
  {
    sub_2245098A0(v84, &qword_27D0CA3B0);
  }

  v53 = 0;
  v54 = 0;
LABEL_37:
  v55 = v75;
  *v75 = v53;
  v55[1] = v54;

  v56 = sub_224627CB8();
  v57 = [v27 decodeBoolForKey_];

  v2[v77] = v57;
  v58 = type metadata accessor for DockCoreAccessory();
  v83.receiver = v2;
  v83.super_class = v58;
  result = objc_msgSendSuper2(&v83, sel_init);
  v60 = result;
  v61 = *(result + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems);
  if (!(v61 >> 62))
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
      goto LABEL_39;
    }

LABEL_49:
    v67 = v60;

LABEL_50:
    *(v60 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed) = 1;

    return v60;
  }

  result = sub_224628478();
  v62 = result;
  if (!result)
  {
    goto LABEL_49;
  }

LABEL_39:
  if (v62 >= 1)
  {
    v63 = v60;

    for (i = 0; i != v62; ++i)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x22AA517F0](i, v61);
      }

      else
      {
        v65 = *(v61 + 8 * i + 32);
      }

      v66 = v65;
      type metadata accessor for SystemController();
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectWeakAssign();
      }
    }

    goto LABEL_50;
  }

  __break(1u);
  return result;
}

uint64_t sub_22456C5D8()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v85 - v6;
  if ((*(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed) & 1) == 0)
  {
    (*(v2 + 16))(&v85 - v6, v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v1);
    v52 = sub_224627B58();
    v53 = sub_224628048();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_224507000, v52, v53, "not configured for XPC, failing out", v54, 2u);
      MEMORY[0x22AA526D0](v54, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    return 0;
  }

  v8 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v9 = *(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = *(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection);
  if (v10)
  {
    goto LABEL_23;
  }

  v86 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection;
  v87 = v8;
  v11 = *(v2 + 16);
  v88 = v0;
  v11(v5, v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v1);
  v12 = sub_224627B58();
  v13 = sub_224628058();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_224507000, v12, v13, "dockkit: creating XPC connection", v14, 2u);
    MEMORY[0x22AA526D0](v14, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  v15 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v16 = sub_224627CB8();
  v17 = [v15 initWithMachServiceName:v16 options:4096];

  v18 = objc_opt_self();
  v19 = [v18 interfaceWithProtocol_];
  [v17 setRemoteObjectInterface_];

  v20 = [v18 interfaceWithProtocol_];
  [v17 setExportedInterface_];

  sub_22450950C(0, &qword_27D0C96D8);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22462FF60;
  v22 = type metadata accessor for DockCoreAccessory();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96E8);
  *(v21 + 56) = v115;
  v117 = v22;
  *(v21 + 32) = v22;
  v23 = type metadata accessor for System();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96F0);
  v114 = v23;
  *(v21 + 88) = v113;
  *(v21 + 64) = v23;
  v24 = type metadata accessor for Actuator();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96F8);
  v112 = v24;
  *(v21 + 120) = v111;
  *(v21 + 96) = v24;
  v25 = type metadata accessor for DockCoreInfo(0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9700);
  v110 = v25;
  *(v21 + 152) = v109;
  *(v21 + 128) = v25;
  v26 = type metadata accessor for SensorData();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9708);
  v108 = v26;
  *(v21 + 184) = v107;
  *(v21 + 160) = v26;
  v27 = type metadata accessor for SensorLEDState();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9710);
  v106 = v27;
  *(v21 + 216) = v105;
  *(v21 + 192) = v27;
  v28 = type metadata accessor for SensorButtonState();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9718);
  *(v21 + 248) = v103;
  v104 = v28;
  *(v21 + 224) = v28;
  v29 = sub_22450950C(0, &qword_27D0C9FB0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9720);
  *(v21 + 280) = v101;
  v102 = v29;
  *(v21 + 256) = v29;
  v30 = sub_22450950C(0, &unk_27D0C89A0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9730);
  *(v21 + 312) = v99;
  v100 = v30;
  *(v21 + 288) = v30;
  v31 = sub_22450950C(0, &unk_27D0C8D40);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9738);
  *(v21 + 344) = v97;
  v98 = v31;
  *(v21 + 320) = v31;
  v32 = sub_22450950C(0, &qword_27D0C9740);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9748);
  *(v21 + 376) = v95;
  v96 = v32;
  *(v21 + 352) = v32;
  v33 = sub_22450950C(0, &qword_27D0C9698);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9750);
  *(v21 + 408) = v93;
  v94 = v33;
  *(v21 + 384) = v33;
  v34 = sub_22450950C(0, &qword_27D0C9E90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9760);
  *(v21 + 440) = v91;
  v92 = v34;
  *(v21 + 416) = v34;
  v35 = sub_22450950C(0, &qword_27D0C9768);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9770);
  *(v21 + 472) = v89;
  v90 = v35;
  *(v21 + 448) = v35;
  v36 = sub_22450950C(0, &qword_27D0C9778);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9780);
  *(v21 + 504) = v37;
  *(v21 + 480) = v36;
  v38 = MEMORY[0x22AA515F0](v21);
  aBlock = 0;
  result = sub_224627FE8();
  if (aBlock)
  {

    v40 = [v17 exportedInterface];
    if (v40)
    {
      v41 = v40;
      v42 = sub_224627FD8();
      [v41 setClasses:v42 forSelector:sel_sensorDataWithInfo_system_sensors_data_ argumentIndex:0 ofReply:0];
    }

    v43 = [v17 exportedInterface];
    if (v43)
    {
      v44 = v43;
      v45 = sub_224627FD8();
      [v44 setClasses:v45 forSelector:sel_sensorDataWithInfo_system_sensors_data_ argumentIndex:1 ofReply:0];
    }

    v46 = [v17 exportedInterface];
    if (v46)
    {
      v47 = v46;
      v48 = sub_224627FD8();
      [v47 setClasses:v48 forSelector:sel_sensorDataWithInfo_system_sensors_data_ argumentIndex:2 ofReply:0];
    }

    v49 = [v17 exportedInterface];
    if (v49)
    {
      v50 = v49;
      v51 = sub_224627FD8();

      [v50 setClasses:v51 forSelector:sel_sensorDataWithInfo_system_sensors_data_ argumentIndex:3 ofReply:0];
    }

    else
    {
    }

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_22462FF70;
    v56 = type metadata accessor for AccessoryBatteryState();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9788);
    v58 = v117;
    *(v55 + 56) = v57;
    *(v55 + 64) = v58;
    *(v55 + 32) = v56;
    v59 = v114;
    *(v55 + 88) = v115;
    *(v55 + 96) = v59;
    v60 = v112;
    *(v55 + 120) = v113;
    *(v55 + 128) = v60;
    v61 = v110;
    *(v55 + 152) = v111;
    *(v55 + 160) = v61;
    v62 = v108;
    *(v55 + 184) = v109;
    *(v55 + 192) = v62;
    v63 = v106;
    *(v55 + 216) = v107;
    *(v55 + 224) = v63;
    v64 = v104;
    *(v55 + 248) = v105;
    *(v55 + 256) = v64;
    v65 = v102;
    *(v55 + 280) = v103;
    *(v55 + 288) = v65;
    v66 = v100;
    *(v55 + 312) = v101;
    *(v55 + 320) = v66;
    v67 = v98;
    *(v55 + 344) = v99;
    *(v55 + 352) = v67;
    v68 = v96;
    *(v55 + 376) = v97;
    *(v55 + 384) = v68;
    v69 = v94;
    *(v55 + 408) = v95;
    *(v55 + 416) = v69;
    v70 = v92;
    *(v55 + 440) = v93;
    *(v55 + 448) = v70;
    v71 = v90;
    *(v55 + 472) = v91;
    *(v55 + 480) = v71;
    *(v55 + 536) = v37;
    *(v55 + 504) = v89;
    *(v55 + 512) = v36;
    v72 = MEMORY[0x22AA515F0](v55);
    aBlock = 0;
    result = sub_224627FE8();
    if (aBlock)
    {

      v73 = [v17 remoteObjectInterface];
      v0 = v88;
      if (v73)
      {
        v74 = v73;
        v75 = sub_224627FD8();

        [v74 setClasses:v75 forSelector:sel_getCurrentBatteryDataWithInfo_completion_ argumentIndex:0 ofReply:1];
      }

      else
      {
      }

      v76 = swift_allocObject();
      swift_unknownObjectWeakInit();
      Strong = swift_unknownObjectWeakLoadStrong();
      [v17 setExportedObject_];

      v122 = sub_22457FD20;
      v123 = v76;
      aBlock = MEMORY[0x277D85DD0];
      v119 = 1107296256;
      v120 = sub_224580D44;
      v121 = &block_descriptor_140;
      v78 = _Block_copy(&aBlock);

      [v17 setInterruptionHandler_];
      _Block_release(v78);
      v122 = sub_22457FD28;
      v123 = v76;
      aBlock = MEMORY[0x277D85DD0];
      v119 = 1107296256;
      v120 = sub_224580D44;
      v121 = &block_descriptor_143;
      v79 = _Block_copy(&aBlock);

      [v17 setInvalidationHandler_];
      _Block_release(v79);
      v80 = v86;
      v81 = *(v0 + v86);
      *(v0 + v86) = v17;
      v82 = v17;

      [v82 resume];

      v10 = *(v0 + v80);
      v8 = v87;
      if (!v10)
      {
        v83 = *(v0 + v87);
        goto LABEL_24;
      }

LABEL_23:
      v83 = *(v0 + v8);
      v84 = v10;
LABEL_24:

      os_unfair_lock_unlock(v83 + 4);

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22456D298()
{
  v0 = sub_224627B78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection);

      [v7 invalidate];
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection);
      v10 = v8;
      v11 = v9;

      if (v9)
      {
        [v11 setExportedObject_];
      }
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = *&v12[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection];
      *&v12[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection] = 0;
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);
      v16 = v14;

      os_unfair_lock_lock(v15 + 4);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_22452ECAC();
      v19 = swift_allocError();
      *v20 = xmmword_22462FF80;
      *(v20 + 16) = 1;
      v21 = *&v18[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
      *&v18[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = v19;
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);
      v24 = v22;

      os_unfair_lock_unlock(v23 + 4);
    }
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    (*(v1 + 16))(v3, v25 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0);

    v27 = sub_224627B58();
    v28 = sub_224628058();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_224507000, v27, v28, "dockkit: Connection interrupted", v29, 2u);
      MEMORY[0x22AA526D0](v29, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = *(v32 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v33 = 0;
    }

    sub_224570C54(v33);
  }
}

uint64_t sub_22456D5D4()
{
  v0 = sub_224627B78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);
    v6 = Strong;

    os_unfair_lock_lock(v5 + 4);
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection);

      [v10 invalidate];
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection);
      v13 = v11;
      v14 = v12;

      if (v12)
      {
        [v14 setExportedObject_];
      }
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = *&v15[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection];
      *&v15[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection] = 0;
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_22452ECAC();
      v19 = swift_allocError();
      *v20 = xmmword_22462FF90;
      *(v20 + 16) = 2;
      v21 = *&v18[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
      *&v18[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = v19;
    }
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    (*(v1 + 16))(v3, v22 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0);

    v24 = sub_224627B58();
    v25 = sub_224628058();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_224507000, v24, v25, "dockkit: Connection invalidated", v26, 2u);
      MEMORY[0x22AA526D0](v26, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
      v31 = v29;
      v32 = v30;
    }

    else
    {
      v30 = 0;
    }

    sub_224570C54(v30);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(result + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);
    v35 = result;

    os_unfair_lock_unlock(v34 + 4);
  }

  return result;
}

void *sub_22456D924()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock - v6;
  if (*(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed))
  {
    v8 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v9 = *(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

    os_unfair_lock_lock(v9 + 4);

    v10 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture;
    v11 = *(v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture);
    if (v11)
    {
      goto LABEL_6;
    }

    v12 = v0;
    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v1);
    v13 = sub_224627B58();
    v14 = sub_224628058();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_224507000, v13, v14, "dockkit: creating camera capture XPC connection", v15, 2u);
      MEMORY[0x22AA526D0](v15, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v16 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v17 = sub_224627CB8();
    v18 = [v16 initWithMachServiceName:v17 options:4096];

    v19 = objc_opt_self();
    v20 = [v19 interfaceWithProtocol_];
    [v18 setRemoteObjectInterface_];

    v21 = [v19 interfaceWithProtocol_];
    [v18 setExportedInterface_];

    v22 = swift_allocObject();
    v0 = v12;
    swift_unknownObjectWeakInit();
    Strong = swift_unknownObjectWeakLoadStrong();
    [v18 setExportedObject_];

    v38 = sub_22457FD08;
    v39 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_224580D44;
    v37 = &block_descriptor_1;
    v24 = _Block_copy(&aBlock);

    [v18 setInterruptionHandler_];
    _Block_release(v24);
    v38 = sub_22457FD18;
    v39 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_224580D44;
    v37 = &block_descriptor_136;
    v25 = _Block_copy(&aBlock);

    [v18 setInvalidationHandler_];
    _Block_release(v25);
    v26 = *(v12 + v10);
    *(v12 + v10) = v18;
    v27 = v18;

    [v27 resume];

    v11 = *(v12 + v10);
    if (v11)
    {
LABEL_6:
      v28 = *(v0 + v8);
      v29 = v11;
    }

    else
    {
      v28 = *(v12 + v8);
    }

    os_unfair_lock_unlock(v28 + 4);
  }

  else
  {
    (*(v2 + 16))(&aBlock - v6, v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v1);
    v30 = sub_224627B58();
    v31 = sub_224628048();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_224507000, v30, v31, "not configured for XPC, failing out", v32, 2u);
      MEMORY[0x22AA526D0](v32, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    return 0;
  }

  return v11;
}

uint64_t sub_22456DE5C()
{
  v0 = sub_224627B78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture);

      [v7 invalidate];
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture);
      v10 = v8;
      v11 = v9;

      if (v9)
      {
        [v11 setExportedObject_];
      }
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = *&v12[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture];
      *&v12[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture] = 0;
    }
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_22452ECAC();
    v16 = swift_allocError();
    *v17 = xmmword_22462FF80;
    *(v17 + 16) = 1;
    v18 = *&v15[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
    *&v15[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = v16;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    (*(v1 + 16))(v3, result + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0);

    v21 = sub_224627B58();
    v22 = sub_224628058();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_224507000, v21, v22, "dockkit: Accessory Camera Connection interrupted", v23, 2u);
      MEMORY[0x22AA526D0](v23, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_22456E0D8()
{
  v0 = sub_224627B78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);
    v6 = Strong;

    os_unfair_lock_lock(v5 + 4);
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture);

      [v10 invalidate];
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = *&v11[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture];
      *&v11[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture] = 0;
    }
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    (*(v1 + 16))(v3, v13 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0);

    v15 = sub_224627B58();
    v16 = sub_224628058();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_224507000, v15, v16, "dockkit: Accessory Camera Connection invalidated", v17, 2u);
      MEMORY[0x22AA526D0](v17, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    sub_22452ECAC();
    v20 = swift_allocError();
    *v21 = xmmword_22462FF90;
    *(v21 + 16) = 2;
    v22 = *&v19[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
    *&v19[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = v20;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(result + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);
    v25 = result;

    os_unfair_lock_unlock(v24 + 4);
  }

  return result;
}

void sub_22456E38C(uint64_t *a1)
{
  v3 = v1;
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
  v8 = sub_224627B58();
  v9 = sub_224628048();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_224507000, v8, v9, "No reply or XPC failed to open in time, closing XPC", v10, 2u);
    MEMORY[0x22AA526D0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *a1;
  [*(v3 + *a1) invalidate];
  v12 = *(v3 + v11);
  *(v3 + v11) = 0;
}

uint64_t sub_22456E510(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a1;
  v72 = a2;
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v67 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v67 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  if (*(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed) != 1)
  {
    (*(v9 + 16))(v20, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v8);
    v36 = sub_224627B58();
    v37 = sub_224628048();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224507000, v36, v37, "xpc lock/queue not initialized, no XPC configured", v38, 2u);
      MEMORY[0x22AA526D0](v38, -1, -1);
    }

    (*(v9 + 8))(v20, v8);
    sub_22452ECAC();
    v39 = swift_allocError();
    *v40 = xmmword_22462FFA0;
    *(v40 + 16) = 3;
    goto LABEL_19;
  }

  v70 = a5;
  v22 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v23 = *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

  os_unfair_lock_lock(v23 + 4);

  v24 = *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
  *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError) = 0;

  v25 = *(a4 + v22);

  os_unfair_lock_unlock(v25 + 4);

  v26 = sub_22456D924();
  if (!v26)
  {
    v41 = *(v9 + 16);
    v41(v18, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v8);
    v42 = sub_224627B58();
    v43 = sub_224628048();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v72 = v41;
      v45 = v44;
      *v44 = 0;
      _os_log_impl(&dword_224507000, v42, v43, "failed connecting to server xpc", v44, 2u);
      v46 = v45;
      v41 = v72;
      MEMORY[0x22AA526D0](v46, -1, -1);
    }

    v72 = *(v9 + 8);
    (v72)(v18, v8);
    sub_22452ECAC();
    v39 = swift_allocError();
    *v47 = 0xD00000000000001FLL;
    *(v47 + 8) = 0x8000000224638700;
    *(v47 + 16) = 4;
    swift_willThrow();
    goto LABEL_16;
  }

  v68 = a3;
  v27 = v26;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = sub_2245803FC;
  v29[4] = v21;
  v78 = sub_224580418;
  v79 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2245D42E8;
  v77 = &block_descriptor_554;
  v30 = _Block_copy(&aBlock);

  v69 = v27;
  v31 = [v27 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_224628278();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = v28;
    v41 = *(v9 + 16);
    v41(v15, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v8);
    v48 = sub_224627B58();
    v49 = sub_224628048();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v72 = v41;
      v51 = v50;
      *v50 = 0;
      _os_log_impl(&dword_224507000, v48, v49, "failed asynchronous server XPC connection", v50, 2u);
      v52 = v51;
      v41 = v72;
      MEMORY[0x22AA526D0](v52, -1, -1);
    }

    v72 = *(v9 + 8);
    (v72)(v15, v8);
    sub_22452ECAC();
    v39 = swift_allocError();
    *v53 = xmmword_22462FFB0;
    *(v53 + 16) = 4;
    swift_willThrow();

LABEL_16:
    v41(v12, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v8);
    v54 = v39;
    v55 = sub_224627B58();
    v56 = sub_224628048();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = v39;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_224507000, v55, v56, "dockkit: failed getting sync connection, can't send xpc: %@", v57, 0xCu);
      sub_2245098A0(v58, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v58, -1, -1);
      MEMORY[0x22AA526D0](v57, -1, -1);
    }

    (v72)(v12, v8);
    sub_22456D918();
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v61 = v39;
    swift_continuation_throwingResumeWithError();
  }

  v33 = v72;
  v32 = v73;
  v34 = v68;
  if (v72)
  {
    swift_unknownObjectRetain();
    v33 = sub_224627CB8();
    if (v34)
    {
LABEL_6:
      v35 = sub_224626FA8();
      goto LABEL_23;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    if (v34)
    {
      goto LABEL_6;
    }
  }

  v35 = 0;
LABEL_23:
  v63 = swift_allocObject();
  *(v63 + 16) = sub_2245803FC;
  *(v63 + 24) = v21;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2245803F4;
  *(v64 + 24) = v63;
  v78 = sub_2245803F0;
  v79 = v64;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2245D4378;
  v77 = &block_descriptor_564;
  v65 = _Block_copy(&aBlock);

  [v32 selectSubjectResponseWithAppID:v33 err:v35 completion:v65];

  swift_unknownObjectRelease_n();
  _Block_release(v65);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22456EE3C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a1;
  v72 = a2;
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v67 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v67 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  if (*(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed) != 1)
  {
    (*(v9 + 16))(v20, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v8);
    v36 = sub_224627B58();
    v37 = sub_224628048();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224507000, v36, v37, "xpc lock/queue not initialized, no XPC configured", v38, 2u);
      MEMORY[0x22AA526D0](v38, -1, -1);
    }

    (*(v9 + 8))(v20, v8);
    sub_22452ECAC();
    v39 = swift_allocError();
    *v40 = xmmword_22462FFA0;
    *(v40 + 16) = 3;
    goto LABEL_19;
  }

  v70 = a5;
  v22 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v23 = *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

  os_unfair_lock_lock(v23 + 4);

  v24 = *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
  *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError) = 0;

  v25 = *(a4 + v22);

  os_unfair_lock_unlock(v25 + 4);

  v26 = sub_22456D924();
  if (!v26)
  {
    v41 = *(v9 + 16);
    v41(v18, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v8);
    v42 = sub_224627B58();
    v43 = sub_224628048();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v72 = v41;
      v45 = v44;
      *v44 = 0;
      _os_log_impl(&dword_224507000, v42, v43, "failed connecting to server xpc", v44, 2u);
      v46 = v45;
      v41 = v72;
      MEMORY[0x22AA526D0](v46, -1, -1);
    }

    v72 = *(v9 + 8);
    (v72)(v18, v8);
    sub_22452ECAC();
    v39 = swift_allocError();
    *v47 = 0xD00000000000001FLL;
    *(v47 + 8) = 0x8000000224638700;
    *(v47 + 16) = 4;
    swift_willThrow();
    goto LABEL_16;
  }

  v68 = a3;
  v27 = v26;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = sub_2245803FC;
  v29[4] = v21;
  v78 = sub_224580418;
  v79 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2245D42E8;
  v77 = &block_descriptor_534;
  v30 = _Block_copy(&aBlock);

  v69 = v27;
  v31 = [v27 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_224628278();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = v28;
    v41 = *(v9 + 16);
    v41(v15, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v8);
    v48 = sub_224627B58();
    v49 = sub_224628048();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v72 = v41;
      v51 = v50;
      *v50 = 0;
      _os_log_impl(&dword_224507000, v48, v49, "failed asynchronous server XPC connection", v50, 2u);
      v52 = v51;
      v41 = v72;
      MEMORY[0x22AA526D0](v52, -1, -1);
    }

    v72 = *(v9 + 8);
    (v72)(v15, v8);
    sub_22452ECAC();
    v39 = swift_allocError();
    *v53 = xmmword_22462FFB0;
    *(v53 + 16) = 4;
    swift_willThrow();

LABEL_16:
    v41(v12, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v8);
    v54 = v39;
    v55 = sub_224627B58();
    v56 = sub_224628048();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = v39;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_224507000, v55, v56, "dockkit: failed getting sync connection, can't send xpc: %@", v57, 0xCu);
      sub_2245098A0(v58, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v58, -1, -1);
      MEMORY[0x22AA526D0](v57, -1, -1);
    }

    (v72)(v12, v8);
    sub_22456E380();
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v61 = v39;
    swift_continuation_throwingResumeWithError();
  }

  v33 = v72;
  v32 = v73;
  v34 = v68;
  if (v72)
  {
    swift_unknownObjectRetain();
    v33 = sub_224627CB8();
    if (v34)
    {
LABEL_6:
      v35 = sub_224626FA8();
      goto LABEL_23;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    if (v34)
    {
      goto LABEL_6;
    }
  }

  v35 = 0;
LABEL_23:
  v63 = swift_allocObject();
  *(v63 + 16) = sub_2245803FC;
  *(v63 + 24) = v21;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2245803F4;
  *(v64 + 24) = v63;
  v78 = sub_2245803F0;
  v79 = v64;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2245D4378;
  v77 = &block_descriptor_544;
  v65 = _Block_copy(&aBlock);

  [v32 setRectOfInterestResponseWithAppID:v33 err:v35 completion:v65];

  swift_unknownObjectRelease_n();
  _Block_release(v65);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22456F768(void *a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, const char *a5)
{
  v9 = sub_224627B78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*(v10 + 16))(v12, Strong + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v9);

    v15 = a1;
    v16 = sub_224627B58();
    v17 = sub_224628048();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27[1] = a4;
      v19 = a3;
      v20 = a5;
      v21 = v18;
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      v25 = v20;
      a3 = v19;
      _os_log_impl(&dword_224507000, v16, v17, v25, v21, 0xCu);
      sub_2245098A0(v22, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v22, -1, -1);
      MEMORY[0x22AA526D0](v21, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }

  return a3(0, a1);
}

uint64_t sub_22456F984(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = a3;
  v9 = sub_224627B78();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v87 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v87 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = &v87 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  if (*(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed) != 1)
  {
    (*(v10 + 16))(v20, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v9);
    v34 = sub_224627B58();
    v35 = sub_224628048();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_224507000, v34, v35, "xpc lock/queue not initialized, no XPC configured", v36, 2u);
      MEMORY[0x22AA526D0](v36, -1, -1);
    }

    (*(v10 + 8))(v20, v9);
    sub_22452ECAC();
    v37 = swift_allocError();
    *v38 = xmmword_22462FFA0;
    *(v38 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v39 = v37;
    swift_continuation_throwingResumeWithError();
  }

  v97 = a4;
  v90 = a1;
  v92 = v15;
  v95 = v18;
  if (a2 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
  {
    v23 = v98;
    v24 = v99;
    v94 = v21;
    v96 = a5;
    if (i)
    {
      aBlock = MEMORY[0x277D84F90];
      result = sub_22455C764(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_48:
        __break(1u);
        return result;
      }

      *&v91 = v10;
      v93 = v9;
      v26 = aBlock;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v27 = 0;
        do
        {
          v28 = MEMORY[0x22AA517F0](v27, a2);
          v29 = *(v28 + OBJC_IVAR____TtC11DockKitCore9Component_name);
          v30 = *(v28 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

          swift_unknownObjectRelease();
          aBlock = v26;
          v32 = *(v26 + 16);
          v31 = *(v26 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_22455C764((v31 > 1), v32 + 1, 1);
            v26 = aBlock;
          }

          ++v27;
          *(v26 + 16) = v32 + 1;
          v33 = v26 + 16 * v32;
          *(v33 + 32) = v29;
          *(v33 + 40) = v30;
        }

        while (i != v27);
      }

      else
      {
        v40 = (a2 + 32);
        do
        {
          v41 = (*v40 + OBJC_IVAR____TtC11DockKitCore9Component_name);
          v43 = *v41;
          v42 = v41[1];
          aBlock = v26;
          v45 = *(v26 + 16);
          v44 = *(v26 + 24);

          if (v45 >= v44 >> 1)
          {
            sub_22455C764((v44 > 1), v45 + 1, 1);
            v26 = aBlock;
          }

          *(v26 + 16) = v45 + 1;
          v46 = v26 + 16 * v45;
          *(v46 + 32) = v43;
          *(v46 + 40) = v42;
          ++v40;
          --i;
        }

        while (i);
      }

      v9 = v93;
      v23 = v98;
      v24 = v99;
      v10 = v91;
    }

    v47 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v48 = v97;
    v49 = *(v97 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

    os_unfair_lock_lock(v49 + 4);

    v50 = *(v48 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
    *(v48 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError) = 0;

    v51 = *(v48 + v47);

    os_unfair_lock_unlock(v51 + 4);

    v52 = sub_22456C5D8();
    if (!v52)
    {

      v65 = v95;
      (*(v10 + 16))(v95, v48 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v9);
      v66 = sub_224627B58();
      v67 = sub_224628048();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_224507000, v66, v67, "failed connecting to server xpc", v68, 2u);
        MEMORY[0x22AA526D0](v68, -1, -1);
      }

      (*(v10 + 8))(v65, v9);
      sub_22452ECAC();
      v69 = swift_allocError();
      *v70 = 0xD00000000000001FLL;
      *(v70 + 8) = 0x8000000224638700;
      *(v70 + 16) = 4;
      swift_willThrow();
      goto LABEL_40;
    }

    v93 = v52;
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    v54[2] = v53;
    v54[3] = sub_2245803FC;
    v21 = v94;
    v54[4] = v94;
    v105 = sub_224580418;
    v106 = v54;
    aBlock = MEMORY[0x277D85DD0];
    v102 = 1107296256;
    v103 = sub_2245D42E8;
    v104 = &block_descriptor_251;
    v55 = _Block_copy(&aBlock);
    v89 = v53;

    v56 = [v93 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v55);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v71 = v92;
      (*(v10 + 16))(v92, v48 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v9);
      v72 = sub_224627B58();
      v73 = sub_224628048();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_224507000, v72, v73, "failed asynchronous server XPC connection", v74, 2u);
        MEMORY[0x22AA526D0](v74, -1, -1);
      }

      (*(v10 + 8))(v71, v9);
      sub_22452ECAC();
      v69 = swift_allocError();
      *v75 = xmmword_22462FFB0;
      *(v75 + 16) = 4;
      swift_willThrow();

LABEL_40:
      sub_22456D918();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
      swift_allocError();
      *v76 = v69;
      swift_continuation_throwingResumeWithError();
    }

    v88 = v100;
    a2 = *(v23 + 2);
    if (!a2)
    {
      break;
    }

    v98 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger;
    v95 = (v10 + 8);
    v96 = (v10 + 16);
    v92 = "torFeedback8@NSError16";

    a5 = 4;
    *&v57 = 136315394;
    v91 = v57;
    while (1)
    {
      v10 = a5 - 4;
      if ((a5 - 4) >= *(v23 + 2))
      {
        break;
      }

      if ((~*&v23[8 * a5] & 0x7FF0000000000000) == 0)
      {
        (*v96)(v24, v48 + v98, v9);
        v58 = sub_224627B58();
        v21 = v9;
        v59 = sub_224628058();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = v23;
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          aBlock = v62;
          *v61 = v91;
          *(v61 + 4) = sub_224509F28(0xD00000000000003FLL, v92 | 0x8000000000000000, &aBlock);
          *(v61 + 12) = 2048;
          *(v61 + 14) = v10;
          _os_log_impl(&dword_224507000, v58, v59, "%s Invalid actuator velocity value at index %ld", v61, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          v63 = v62;
          v48 = v97;
          MEMORY[0x22AA526D0](v63, -1, -1);
          v64 = v61;
          v23 = v60;
          v24 = v99;
          MEMORY[0x22AA526D0](v64, -1, -1);
        }

        (*v95)(v24, v21);
        v9 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_22461CA10(v23);
        }

        if (v10 >= *(v23 + 2))
        {
          goto LABEL_45;
        }

        *&v23[8 * a5] = 0;
      }

      ++a5;
      if (!--a2)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_42:
  v98 = v23;
  v77 = *(v48 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  v78 = v88;
  swift_unknownObjectRetain();
  v79 = v77;
  v80 = sub_224627CB8();
  v81 = sub_224627EB8();

  v82 = sub_224627EB8();
  v83 = swift_allocObject();
  v84 = v94;
  *(v83 + 16) = sub_2245803FC;
  *(v83 + 24) = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_2245803F4;
  *(v85 + 24) = v83;
  v105 = sub_2245803F0;
  v106 = v85;
  aBlock = MEMORY[0x277D85DD0];
  v102 = 1107296256;
  v103 = sub_2245D4378;
  v104 = &block_descriptor_261;
  v86 = _Block_copy(&aBlock);

  [v78 setActuatorVelocitiesWithInfo:v79 system:v80 actuators:v81 velocities:v82 completion:v86];

  swift_unknownObjectRelease_n();
  _Block_release(v86);
  LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

  if (v79)
  {
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_2245705BC(uint64_t result, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_feedbackDelegates);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;

    v7 = 32;
    do
    {
      v8 = *(v3 + v7);
      if (v8)
      {
        swift_unknownObjectRetain();
        v9 = sub_224627CB8();
        v10 = sub_224627EB8();
        v11 = sub_224627EB8();
        v12 = sub_224627EB8();
        [v8 actuatorFeedbackWithInfo:v6 system:v9 actuators:v10 positions:v11 velocities:v12 timestamp:a2];
        swift_unknownObjectRelease();
      }

      v7 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_22457082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_224627CB8();
    [v7 trajectoryProgressFeedbackWithInfo:a1 system:v8 progress:a4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_224570B30(uint64_t result, uint64_t a2, void *a3, SEL *a4)
{
  v5 = *(v4 + *a3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = result;

    v10 = 32;
    do
    {
      v11 = *(v5 + v10);
      if (v11)
      {
        [v11 *a4];
      }

      v10 += 8;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_224570C54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - v10;
  v12 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_feedbackDelegates;
  v13 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_feedbackDelegates);
  v14 = *(v13 + 16);
  v56 = a1;
  v57 = v2;
  v55 = v9;
  if (v14)
  {
    v47 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_feedbackDelegates;
    v48 = v5;
    v49 = v8;
    v52 = (v5 + 16);
    v53 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger;
    v51 = (v5 + 8);

    v15 = 32;
    *&v16 = 136315138;
    v50 = v16;
    v54 = v13;
    do
    {
      v18 = *(v13 + v15);
      if (v18)
      {
        (*v52)(v11, v53 + v2, v4);
        swift_unknownObjectRetain_n();
        v19 = sub_224627B58();
        v20 = sub_224628058();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v58 = v18;
          v59 = v22;
          *v21 = v50;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C96B8);
          v23 = sub_224627D28();
          v25 = sub_224509F28(v23, v24, &v59);
          v4 = v55;

          *(v21 + 4) = v25;
          a1 = v56;
          _os_log_impl(&dword_224507000, v19, v20, "Informing delegate %s it was disconnected", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          v26 = v22;
          v2 = v57;
          MEMORY[0x22AA526D0](v26, -1, -1);
          MEMORY[0x22AA526D0](v21, -1, -1);
        }

        (*v51)(v11, v4);
        swift_unknownObjectRetain();
        v13 = v54;
        if (a1)
        {
          v17 = sub_224626FA8();
        }

        else
        {
          v17 = 0;
        }

        [v18 disconnectedWithErr_];

        swift_unknownObjectRelease_n();
      }

      v15 += 8;
      --v14;
    }

    while (v14);

    v12 = v47;
    v5 = v48;
    v8 = v49;
  }

  v27 = MEMORY[0x277D84F90];
  *(v2 + v12) = MEMORY[0x277D84F90];

  v28 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_eventDelegates;
  v29 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_eventDelegates);
  v30 = v29[2];
  if (v30)
  {
    v49 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_eventDelegates;
    v53 = (v5 + 16);
    v54 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger;
    v52 = (v5 + 8);

    v31 = 4;
    *&v32 = 136315138;
    v50 = v32;
    v51 = v29;
    do
    {
      v34 = v29[v31];
      if (v34)
      {
        (*v53)(v8, v2 + v54, v4);
        swift_unknownObjectRetain_n();
        v35 = sub_224627B58();
        v36 = v8;
        v37 = sub_224628058();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v35, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v58 = v34;
          v59 = v39;
          *v38 = v50;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96B0);
          v40 = sub_224627D28();
          v42 = sub_224509F28(v40, v41, &v59);
          a1 = v56;

          *(v38 + 4) = v42;
          v4 = v55;
          _os_log_impl(&dword_224507000, v35, v37, "Informing delegate %s it was disconnected", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          v43 = v39;
          v2 = v57;
          MEMORY[0x22AA526D0](v43, -1, -1);
          v44 = v38;
          v29 = v51;
          MEMORY[0x22AA526D0](v44, -1, -1);
        }

        (*v52)(v36, v4);
        v8 = v36;
        swift_unknownObjectRetain();
        if (a1)
        {
          v33 = sub_224626FA8();
        }

        else
        {
          v33 = 0;
        }

        [v34 disconnectedWithErr_];

        swift_unknownObjectRelease_n();
      }

      ++v31;
      v30 = (v30 - 1);
    }

    while (v30);

    v28 = v49;
    v27 = MEMORY[0x277D84F90];
  }

  *(v2 + v28) = v27;
}

uint64_t sub_2245711CC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v95 = a1;
  v9 = sub_224627B78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v89 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v97 = v89 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v89 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  if (*(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed) != 1)
  {
    (*(v10 + 16))(v20, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v9);
    v32 = sub_224627B58();
    v33 = sub_224628048();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_224507000, v32, v33, "xpc lock/queue not initialized, no XPC configured", v34, 2u);
      MEMORY[0x22AA526D0](v34, -1, -1);
    }

    (*(v10 + 8))(v20, v9);
    sub_22452ECAC();
    v35 = swift_allocError();
    *v36 = xmmword_22462FFA0;
    *(v36 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v37 = v35;
    goto LABEL_33;
  }

  v96 = v10;
  v91 = a3;
  v92 = v16;
  if (a2 >> 62)
  {
    v22 = sub_224628478();
  }

  else
  {
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = a4;
  v93 = v13;
  v94 = v9;
  if (v22)
  {
    aBlock = MEMORY[0x277D84F90];
    result = sub_22455C764(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
      return result;
    }

    v89[1] = a5;
    v90 = v21;
    v24 = aBlock;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      do
      {
        v26 = MEMORY[0x22AA517F0](v25, a2);
        v28 = *(v26 + OBJC_IVAR____TtC11DockKitCore9Component_name);
        v27 = *(v26 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

        swift_unknownObjectRelease();
        aBlock = v24;
        v30 = *(v24 + 16);
        v29 = *(v24 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_22455C764((v29 > 1), v30 + 1, 1);
          v24 = aBlock;
        }

        ++v25;
        *(v24 + 16) = v30 + 1;
        v31 = v24 + 16 * v30;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
      }

      while (v22 != v25);
    }

    else
    {
      v38 = (a2 + 32);
      do
      {
        v39 = (*v38 + OBJC_IVAR____TtC11DockKitCore9Component_name);
        v41 = *v39;
        v40 = v39[1];
        aBlock = v24;
        v43 = *(v24 + 16);
        v42 = *(v24 + 24);

        if (v43 >= v42 >> 1)
        {
          sub_22455C764((v42 > 1), v43 + 1, 1);
          v24 = aBlock;
        }

        *(v24 + 16) = v43 + 1;
        v44 = v24 + 16 * v43;
        *(v44 + 32) = v41;
        *(v44 + 40) = v40;
        ++v38;
        --v22;
      }

      while (v22);
    }

    v21 = v90;
    v9 = v94;
    a4 = v98;
  }

  v45 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v46 = *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

  os_unfair_lock_lock(v46 + 4);

  v47 = *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
  *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError) = 0;

  v48 = *(a4 + v45);

  os_unfair_lock_unlock(v48 + 4);

  v49 = sub_22456C5D8();
  if (v49)
  {
    v50 = v49;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = swift_allocObject();
    v51[2] = v9;
    v51[3] = sub_2245803FC;
    v51[4] = v21;
    v104 = sub_224580418;
    v105 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v101 = 1107296256;
    v102 = sub_2245D42E8;
    v103 = &block_descriptor_271;
    v52 = _Block_copy(&aBlock);

    v53 = [v50 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v52);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v97 = v9;
      v71 = v50;

      v72 = v96;
      v64 = *(v96 + 16);
      v73 = v92;
      v64(v92, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v94);
      v74 = sub_224627B58();
      v75 = sub_224628048();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_224507000, v74, v75, "failed asynchronous server XPC connection", v76, 2u);
        MEMORY[0x22AA526D0](v76, -1, -1);
      }

      v68 = *(v72 + 8);
      v77 = v94;
      v68(v73, v94);
      sub_22452ECAC();
      v69 = swift_allocError();
      *v78 = xmmword_22462FFB0;
      *(v78 + 16) = 4;
      swift_willThrow();

      v9 = v77;

      goto LABEL_30;
    }

    v54 = v99;
    v98 = v50;
    v55 = *(a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
    swift_unknownObjectRetain();
    v97 = v55;
    v56 = sub_224627CB8();
    v57 = sub_224627EB8();

    v58 = sub_224627EB8();
    a4 = swift_allocObject();
    a4[2] = sub_2245803FC;
    a4[3] = v21;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_2245803F4;
    *(v59 + 24) = a4;
    v104 = sub_2245803F0;
    v105 = v59;
    aBlock = MEMORY[0x277D85DD0];
    v101 = 1107296256;
    v102 = sub_2245D4378;
    v103 = &block_descriptor_281;
    v60 = _Block_copy(&aBlock);

    v61 = v97;
    [v54 setActuatorPositionsWithInfo:v97 system:v56 actuators:v57 positions:v58 completion:v60];

    swift_unknownObjectRelease_n();
    _Block_release(v60);
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if ((v60 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v62 = v96;
  v63 = v97;
  v64 = *(v96 + 16);
  v64(v97, a4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v9);
  v65 = sub_224627B58();
  v66 = sub_224628048();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_224507000, v65, v66, "failed connecting to server xpc", v67, 2u);
    MEMORY[0x22AA526D0](v67, -1, -1);
  }

  v68 = *(v62 + 8);
  v68(v63, v9);
  sub_22452ECAC();
  v69 = swift_allocError();
  *v70 = 0xD00000000000001FLL;
  *(v70 + 8) = 0x8000000224638700;
  *(v70 + 16) = 4;
  swift_willThrow();
LABEL_30:
  v79 = v93;
  v64(v93, &v98[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v9);
  v80 = v69;
  v81 = v79;
  v82 = sub_224627B58();
  v83 = sub_224628048();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v84 = 138412290;
    v86 = v69;
    v87 = _swift_stdlib_bridgeErrorToNSError();
    *(v84 + 4) = v87;
    *v85 = v87;
    _os_log_impl(&dword_224507000, v82, v83, "dockkit: failed getting sync connection, can't send xpc %@", v84, 0xCu);
    sub_2245098A0(v85, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v85, -1, -1);
    MEMORY[0x22AA526D0](v84, -1, -1);
  }

  v68(v81, v9);
  sub_22456D918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v88 = v69;
LABEL_33:
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_224571D00(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v84 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v92 = &v84 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v84 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  if (a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] == 1)
  {
    v90 = v9;
    v91 = a3;
    v88 = v12;
    v89 = v8;
    v86 = a1;
    v87 = v15;
    if (!a2)
    {
      v22 = 0;
      goto LABEL_22;
    }

    if (a2 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
    {
      v22 = MEMORY[0x277D84F90];
      if (i)
      {
        aBlock = MEMORY[0x277D84F90];
        result = sub_22455C764(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v84 = a4;
        v85 = v20;
        v22 = aBlock;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v24 = 0;
          do
          {
            v25 = MEMORY[0x22AA517F0](v24, a2);
            v27 = *(v25 + OBJC_IVAR____TtC11DockKitCore9Component_name);
            v26 = *(v25 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

            swift_unknownObjectRelease();
            aBlock = v22;
            v29 = *(v22 + 16);
            v28 = *(v22 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_22455C764((v28 > 1), v29 + 1, 1);
              v22 = aBlock;
            }

            ++v24;
            *(v22 + 16) = v29 + 1;
            v30 = v22 + 16 * v29;
            *(v30 + 32) = v27;
            *(v30 + 40) = v26;
          }

          while (i != v24);
        }

        else
        {
          v37 = (a2 + 32);
          do
          {
            v38 = (*v37 + OBJC_IVAR____TtC11DockKitCore9Component_name);
            v40 = *v38;
            v39 = v38[1];
            aBlock = v22;
            v42 = *(v22 + 16);
            v41 = *(v22 + 24);

            if (v42 >= v41 >> 1)
            {
              sub_22455C764((v41 > 1), v42 + 1, 1);
              v22 = aBlock;
            }

            *(v22 + 16) = v42 + 1;
            v43 = v22 + 16 * v42;
            *(v43 + 32) = v40;
            *(v43 + 40) = v39;
            ++v37;
            --i;
          }

          while (i);
        }

        v20 = v85;
        v8 = v89;
        a3 = v91;
      }

LABEL_22:
      v44 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
      v45 = *&a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

      os_unfair_lock_lock(v45 + 4);

      v46 = *&a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
      *&a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

      v47 = *&a3[v44];

      os_unfair_lock_unlock(v47 + 4);

      v48 = sub_22456C5D8();
      if (!v48)
      {
        break;
      }

      v49 = v48;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = swift_allocObject();
      v50[2] = v8;
      v50[3] = sub_22457FE40;
      v50[4] = v20;
      v98 = sub_224580420;
      v99 = v50;
      aBlock = MEMORY[0x277D85DD0];
      v95 = 1107296256;
      v96 = sub_2245D42E8;
      v97 = &block_descriptor_232;
      v51 = _Block_copy(&aBlock);

      v92 = v49;
      v52 = [v49 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v51);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v86 = v8;

        v65 = v90;
        v58 = *(v90 + 16);
        v66 = v87;
        v58(v87, &a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v89);
        v67 = v66;
        v68 = sub_224627B58();
        v69 = sub_224628048();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_224507000, v68, v69, "failed asynchronous server XPC connection", v70, 2u);
          MEMORY[0x22AA526D0](v70, -1, -1);
        }

        v62 = *(v65 + 8);
        v71 = v67;
        v8 = v89;
        v62(v71, v89);
        sub_22452ECAC();
        v63 = swift_allocError();
        *v72 = xmmword_22462FFB0;
        *(v72 + 16) = 4;
        swift_willThrow();

        goto LABEL_32;
      }

      v53 = v93;
      v54 = *&a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      swift_unknownObjectRetain();
      a3 = v54;
      v55 = sub_224627CB8();
      if (v22)
      {
        v56 = sub_224627EB8();
      }

      else
      {
        v56 = 0;
      }

      a4 = swift_allocObject();
      *(a4 + 16) = sub_22457FE40;
      *(a4 + 24) = v20;
      a2 = v20;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_2245803F8;
      *(v20 + 24) = a4;
      v98 = sub_22457FE5C;
      v99 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v95 = 1107296256;
      v96 = sub_224572818;
      v97 = &block_descriptor_241;
      v83 = _Block_copy(&aBlock);

      [v53 getCurrentActuatorFeedbackWithInfo:a3 system:v55 actuators:v56 completion:v83];

      swift_unknownObjectRelease_n();
      _Block_release(v83);
      LOBYTE(v83) = swift_isEscapingClosureAtFileLocation();

      if ((v83 & 1) == 0)
      {
        return result;
      }

      __break(1u);
LABEL_40:
      ;
    }

    v57 = v90;
    v58 = *(v90 + 16);
    v58(v92, &a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
    v59 = sub_224627B58();
    v60 = sub_224628048();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_224507000, v59, v60, "failed connecting to server xpc", v61, 2u);
      MEMORY[0x22AA526D0](v61, -1, -1);
    }

    v62 = *(v57 + 8);
    v62(v92, v8);
    sub_22452ECAC();
    v63 = swift_allocError();
    *v64 = 0xD00000000000001FLL;
    *(v64 + 8) = 0x8000000224638700;
    *(v64 + 16) = 4;
    swift_willThrow();
LABEL_32:
    v73 = v88;
    v58(v88, &v91[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
    v74 = v63;
    v75 = v73;
    v76 = sub_224627B58();
    v77 = sub_224628048();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      v80 = v63;
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 4) = v81;
      *v79 = v81;
      _os_log_impl(&dword_224507000, v76, v77, "dockkit: failed getting sync connection, can't send xpc %@", v78, 0xCu);
      sub_2245098A0(v79, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v79, -1, -1);
      MEMORY[0x22AA526D0](v78, -1, -1);
    }

    v62(v75, v8);
    sub_22456D918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v82 = v63;
  }

  else
  {
    (*(v9 + 16))(v19, &a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
    v31 = sub_224627B58();
    v32 = sub_224628048();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_224507000, v31, v32, "xpc lock/queue not initialized, no XPC configured", v33, 2u);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    (*(v9 + 8))(v19, v8);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v35 = xmmword_22462FFA0;
    *(v35 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v36 = v34;
  }

  swift_continuation_throwingResumeWithError();
}