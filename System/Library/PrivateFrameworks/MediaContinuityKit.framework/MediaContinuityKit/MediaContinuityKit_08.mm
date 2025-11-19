uint64_t sub_25851BE14()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 360);
  v5 = *v1;

  v6 = *(v2 + 352);
  if (v0)
  {

    swift_unknownObjectRelease();
    v7 = *(v3 + 328);
    v8 = *(v3 + 336);
    v9 = sub_25852E2DC;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = *(v3 + 328);
    v8 = *(v3 + 336);
    v9 = sub_25851C2DC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_25851BF58()
{
  v1 = **(v0 + 368);
  sub_2585072A8();
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);

  return MEMORY[0x2822009F8](sub_25851BFC0, v2, v3);
}

uint64_t sub_25851BFC0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 288);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor))
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v1 = *(v0 + 288);
  }

  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor))
  {
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v1 = *(v0 + 288);
  }

  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v7, v4, &qword_27F931820, &unk_25853F380);
  v8 = (*(v6 + 48))(v4, 1, v5);
  v9 = *(v0 + 320);
  if (v8)
  {
    sub_258465168(*(v0 + 320), &qword_27F931820, &unk_25853F380);
  }

  else
  {
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 296);
    v13 = *(v0 + 280);
    (*(v11 + 16))(v10, *(v0 + 320), v12);
    sub_258465168(v9, &qword_27F931820, &unk_25853F380);
    *(v0 + 272) = v13;
    v14 = v13;
    sub_25853363C();
    (*(v11 + 8))(v10, v12);
  }

  v15 = *(v0 + 280);
  *(v0 + 248) = v15;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if (swift_dynamicCast() && *(v0 + 376) == 4)
  {
    v17 = *(v0 + 288);
    *(v0 + 264) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
  }

  else
  {
    v18 = *(v0 + 280);
    v19 = *(v0 + 288);
    *(v0 + 256) = v18;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
  }

  sub_2585337FC();
  v22 = *(v0 + 312);
  v21 = *(v0 + 320);
  v23 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  sub_2585336DC();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_25851C2DC()
{
  v1 = *(v0 + 288);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v2, v0 + 56, &qword_27F931828, &unk_25853EB90);
  if (*(v0 + 80))
  {
    sub_258464C30(v0 + 56, v0 + 96);
    sub_258465168(v0 + 56, &qword_27F931828, &unk_25853EB90);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *(v0 + 368) = v3;
    v4 = *v3;

    return MEMORY[0x2822009F8](sub_25851BF58, v4, 0);
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F931828, &unk_25853EB90);
    v5 = *(v0 + 288);
    if (*(v5 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor))
    {
      v6 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v5 = *(v0 + 288);
    }

    if (*(v5 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor))
    {
      v7 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v5 = *(v0 + 288);
    }

    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v5 + v11, v8, &qword_27F931820, &unk_25853F380);
    v12 = (*(v10 + 48))(v8, 1, v9);
    v13 = *(v0 + 320);
    if (v12)
    {
      sub_258465168(*(v0 + 320), &qword_27F931820, &unk_25853F380);
    }

    else
    {
      v15 = *(v0 + 304);
      v14 = *(v0 + 312);
      v16 = *(v0 + 296);
      v17 = *(v0 + 280);
      (*(v15 + 16))(v14, *(v0 + 320), v16);
      sub_258465168(v13, &qword_27F931820, &unk_25853F380);
      *(v0 + 272) = v17;
      v18 = v17;
      sub_25853363C();
      (*(v15 + 8))(v14, v16);
    }

    v19 = *(v0 + 280);
    *(v0 + 248) = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    if (swift_dynamicCast() && *(v0 + 376) == 4)
    {
      v21 = *(v0 + 288);
      *(v0 + 264) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
    }

    else
    {
      v22 = *(v0 + 280);
      v23 = *(v0 + 288);
      *(v0 + 256) = v22;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
    }

    sub_2585337FC();
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    v27 = *(v0 + 288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336DC();

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_25851C6C4()
{
  *(v1 + 848) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  *(v1 + 856) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25851C760, v0, 0);
}

uint64_t sub_25851C760()
{
  v1 = v0[106];
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer) == 2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection), v2);
    v4 = *(v3 + 104);
    v11 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[108] = v6;
    *v6 = v0;
    v6[1] = sub_25851C920;

    return (v11)(v0 + 65, v2, v3);
  }

  else
  {
    sub_258476AE4();
    swift_allocError();
    *v8 = 16;
    swift_willThrow();
    v9 = v0[107];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_25851C920()
{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v4 = *v1;
  *(*v1 + 872) = v0;

  v5 = *(v2 + 848);
  if (v0)
  {
    v6 = sub_25851CD58;
  }

  else
  {
    v6 = sub_25851CA4C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25851CA4C()
{
  if (!*(v0 + 544))
  {
    sub_258465168(v0 + 520, &qword_27F92FB90, &qword_258535420);
    sub_258476AE4();
    swift_allocError();
    *v19 = 14;
    swift_willThrow();
LABEL_11:
    v22 = *(v0 + 856);

    v23 = *(v0 + 8);

    return v23();
  }

  v1 = *(v0 + 848);
  sub_258464C18((v0 + 520), v0 + 480);
  if (*(v1 + 121) != 2)
  {
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v21 = 4;
    }

    else
    {
      v21 = 5;
    }

    *v20 = v21;
    swift_willThrow();
    goto LABEL_10;
  }

  v2 = *(v0 + 872);
  v3 = *(v0 + 848);
  v4 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  *(v0 + 880) = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  sub_258464C30(v3 + v4, v0 + 560);
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
  v6 = *(v0 + 504);
  v7 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v6);
  (*(v7 + 8))(v6, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
  v8 = sub_258532D5C();
  v10 = sub_2585226C8(v8, v9, &OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
  v12 = v11;

  *(v0 + 888) = v12;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 600));
  v13 = *(v0 + 504);
  v14 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v13);
  (*(v14 + 24))(v13, v14);
  v15 = __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
  v17 = v15[2];
  v16 = v15[3];
  *(v0 + 896) = v16;

  v18 = sub_2584BC58C();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 640));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));
    goto LABEL_11;
  }

  v25 = v18;
  v26 = *v5;
  v27 = swift_task_alloc();
  *(v0 + 904) = v27;
  *v27 = v0;
  v27[1] = sub_25851CDBC;

  return sub_2584EB264(v0 + 440, v10, v12, v17, v16, v25);
}

uint64_t sub_25851CD58()
{
  v1 = v0[109];
  v2 = v0[107];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25851CDBC()
{
  v2 = *v1;
  v3 = (*v1)[113];
  v12 = *v1;
  (*v1)[114] = v0;

  v4 = v2[112];
  if (v0)
  {
    v5 = v2[111];
    v6 = v2[106];

    v7 = sub_25851D2A4;
    v8 = v6;
  }

  else
  {
    v9 = v2[111];
    v10 = v2[106];

    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 80);
    v7 = sub_25851CF18;
    v8 = v10;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_25851CF18()
{
  v1 = *(v0 + 848);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
  if (*(v1 + 121) == 2)
  {
    v2 = *(v0 + 848);
    v3 = *(v0 + 504);
    v4 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v3);
    (*(v4 + 16))(v3, v4);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 680), *(v0 + 704));
    v6 = *v5;
    *(v0 + 920) = *v5;
    v7 = v5[1];
    *(v0 + 928) = v7;
    v8 = *(v0 + 504);
    v9 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v8);
    v10 = *(v9 + 24);
    sub_2584A7B8C(v6, v7);
    v10(v8, v9);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 720), *(v0 + 744));
    v12 = *v11;
    *(v0 + 936) = *v11;
    v13 = v11[1];
    *(v0 + 944) = v13;
    sub_2584A7B8C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));
    LOBYTE(v9) = *(v2 + 120);
    v14 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator;
    *(v0 + 952) = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator;
    v15 = __swift_project_boxed_opaque_existential_1((v2 + v14), *(v2 + v14 + 24));
    v16 = *v15;
    v17 = *(*v15 + 32);
    v18 = *(v16 + 40);
    *(v0 + 168) = *(v0 + 472);
    v19 = *(v0 + 456);
    *(v0 + 136) = *(v0 + 440);
    *(v0 + 152) = v19;
    *(v0 + 112) = v9;
    *&v20 = v6;
    *(&v20 + 1) = v7;
    *(v0 + 120) = v17;
    *(v0 + 128) = v18;
    *&v19 = v12;
    *(&v19 + 1) = v13;
    *(v0 + 176) = v20;
    *(v0 + 192) = v19;
    v21 = *(v0 + 168);
    *(v0 + 16) = *(v0 + 112);
    *(v0 + 24) = v17;
    *(v0 + 32) = v18;
    *(v0 + 40) = *(v0 + 136);
    *(v0 + 56) = *(v0 + 152);
    *(v0 + 72) = v21;
    *(v0 + 80) = v6;
    *(v0 + 88) = v7 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    *(v0 + 96) = v12;
    *(v0 + 104) = v13 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
    sub_2584A7B8C(v17, v18);
    sub_2584ABA3C(v0 + 440, v0 + 760);
    sub_2584A7B8C(v6, v7);
    sub_2584A7B8C(v12, v13);
    v22 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
    v23 = swift_task_alloc();
    *(v0 + 960) = v23;
    *(v23 + 16) = v2;
    *(v23 + 24) = v0 + 16;
    v24 = *(MEMORY[0x277D85A40] + 4);
    v25 = swift_task_alloc();
    *(v0 + 968) = v25;
    *v25 = v0;
    v25[1] = sub_25851D320;

    return MEMORY[0x2822008A0](v0 + 208, v2, v22, 0xD000000000000021, 0x8000000258540A30, sub_2584ABA98, v23, &type metadata for StreamMessage);
  }

  else
  {
    v26 = *(v0 + 848);
    sub_258476AE4();
    swift_allocError();
    if (*(v26 + 121) == 5)
    {
      v28 = 4;
    }

    else
    {
      v28 = 5;
    }

    *v27 = v28;
    swift_willThrow();
    sub_2584AB9E8(v0 + 440);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));
    v29 = *(v0 + 856);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_25851D2A4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);
  v1 = v0[114];
  v2 = v0[107];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25851D320()
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v7 = *v1;
  *(*v1 + 976) = v0;

  v4 = *(v2 + 848);
  if (v0)
  {
    v5 = sub_25851D718;
  }

  else
  {
    v5 = sub_25851D438;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25851D438()
{
  v1 = *(v0 + 256);
  *(v0 + 336) = *(v0 + 240);
  *(v0 + 352) = v1;
  v2 = *(v0 + 288);
  *(v0 + 368) = *(v0 + 272);
  *(v0 + 384) = v2;
  v3 = *(v0 + 224);
  *(v0 + 304) = *(v0 + 208);
  *(v0 + 320) = v3;
  if (((*(v0 + 392) >> 59) & 6 | ((*(v0 + 376) & 0x2000000000000000) != 0)) != 4)
  {
    v21 = *(v0 + 960);
    v22 = *(v0 + 944);
    v23 = *(v0 + 936);
    v24 = *(v0 + 928);
    v25 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    *v26 = 20;
    swift_willThrow();
    sub_25852E114(v0 + 112);
    sub_258467E20(v25, v24);
    v19 = v23;
    v20 = v22;
    goto LABEL_6;
  }

  v37 = *(v0 + 344);
  v38 = *(v0 + 328);
  v4 = *(v0 + 976);
  v5 = (*(v0 + 848) + *(v0 + 952));
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  v8 = *(v0 + 304);
  v9 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2584D275C();
  if (v4)
  {
    v14 = *(v0 + 960);
    v15 = *(v0 + 944);
    v16 = *(v0 + 936);
    v17 = *(v0 + 928);
    v18 = *(v0 + 920);
    sub_25852E114(v0 + 112);
    sub_258467E20(v18, v17);
    v19 = v16;
    v20 = v15;
LABEL_6:
    sub_258467E20(v19, v20);
    sub_2584AB9E8(v0 + 440);
    sub_2584A975C(v0 + 304);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

    v27 = *(v0 + 856);

    v28 = *(v0 + 8);
    goto LABEL_7;
  }

  v10 = *(v0 + 856);
  v11 = (*(v0 + 848) + *(v0 + 880));
  v12 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  *(v0 + 400) = v7;
  *(v0 + 408) = v38;
  *(v0 + 424) = v37;
  v13 = *v12;
  sub_2584EE23C((v0 + 400), v10);
  v30 = *(v0 + 960);
  v31 = *(v0 + 944);
  v32 = *(v0 + 936);
  v33 = *(v0 + 856);
  v34 = *(v0 + 848);
  sub_258467E20(*(v0 + 920), *(v0 + 928));
  sub_258467E20(v32, v31);
  sub_2584AB9E8(v0 + 440);
  sub_25852E114(v0 + 112);
  sub_2584A975C(v0 + 304);
  v35 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
  v36 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v33, v34 + v36, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

  v28 = *(v0 + 8);
LABEL_7:

  return v28();
}

uint64_t sub_25851D718()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[115];

  sub_258467E20(v5, v4);
  sub_258467E20(v3, v2);
  sub_2584AB9E8((v0 + 55));
  sub_25852E114((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);
  v6 = v0[122];
  v7 = v0[107];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25851D7CC()
{
  v1[106] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[107] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  v1[108] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v4 = sub_25853362C();
  v1[109] = v4;
  v1[110] = v3;

  return MEMORY[0x2822009F8](sub_25851D8C4, v4, v3);
}

uint64_t sub_25851D8C4()
{
  v1 = v0[106];
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer) == 2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection), v2);
    v4 = *(v3 + 104);
    v11 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[111] = v6;
    *v6 = v0;
    v6[1] = sub_25851DA84;

    return (v11)(v0 + 65, v2, v3);
  }

  else
  {
    sub_258476AE4();
    swift_allocError();
    *v8 = 16;
    swift_willThrow();
    v9 = v0[107];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_25851DA84()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = v0;

  v5 = *(v2 + 880);
  v6 = *(v2 + 872);
  if (v0)
  {
    v7 = sub_25851DECC;
  }

  else
  {
    v7 = sub_25851DBC0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25851DBC0()
{
  if (!*(v0 + 544))
  {
    sub_258465168(v0 + 520, &qword_27F92FB90, &qword_258535420);
    sub_258476AE4();
    swift_allocError();
    *v19 = 14;
    swift_willThrow();
LABEL_11:
    v22 = *(v0 + 856);

    v23 = *(v0 + 8);

    return v23();
  }

  v1 = *(v0 + 848);
  sub_258464C18((v0 + 520), v0 + 480);
  if (*(v1 + 232) != 2)
  {
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v21 = 4;
    }

    else
    {
      v21 = 5;
    }

    *v20 = v21;
    swift_willThrow();
    goto LABEL_10;
  }

  v2 = *(v0 + 896);
  v3 = *(v0 + 848);
  v4 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  *(v0 + 904) = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  sub_258464C30(v3 + v4, v0 + 560);
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
  v6 = *(v0 + 504);
  v7 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v6);
  (*(v7 + 8))(v6, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
  v8 = sub_258532D5C();
  v10 = sub_2585226C8(v8, v9, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
  v12 = v11;

  *(v0 + 912) = v12;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 600));
  v13 = *(v0 + 504);
  v14 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v13);
  (*(v14 + 24))(v13, v14);
  v15 = __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
  v17 = v15[2];
  v16 = v15[3];
  *(v0 + 920) = v16;

  v18 = sub_2584BC58C();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 640));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));
    goto LABEL_11;
  }

  v25 = v18;
  v26 = *v5;
  v27 = swift_task_alloc();
  *(v0 + 928) = v27;
  *v27 = v0;
  v27[1] = sub_25851DF30;

  return sub_2584EB264(v0 + 440, v10, v12, v17, v16, v25);
}

uint64_t sub_25851DECC()
{
  v1 = v0[112];
  v2 = v0[107];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25851DF30()
{
  v2 = *v1;
  v3 = (*v1)[116];
  v11 = *v1;
  (*v1)[117] = v0;

  v4 = v2[115];
  if (v0)
  {
    v5 = v2[114];

    v6 = v2[110];
    v7 = v2[109];
    v8 = sub_25851E3D0;
  }

  else
  {
    v9 = v2[114];

    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 80);
    v6 = v2[110];
    v7 = v2[109];
    v8 = sub_25851E07C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25851E07C()
{
  v1 = *(v0 + 848);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
  if (*(v1 + 232) == 2)
  {
    v31 = *(v0 + 864);
    v2 = *(v0 + 848);
    v3 = *(v0 + 504);
    v4 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v3);
    (*(v4 + 16))(v3, v4);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 680), *(v0 + 704));
    v6 = *v5;
    *(v0 + 944) = *v5;
    v7 = v5[1];
    *(v0 + 952) = v7;
    v9 = *(v0 + 504);
    v8 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v9);
    v10 = *(v8 + 24);
    sub_2584A7B8C(v6, v7);
    v10(v9, v8);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 720), *(v0 + 744));
    v12 = *v11;
    *(v0 + 960) = *v11;
    v13 = v11[1];
    *(v0 + 968) = v13;
    sub_2584A7B8C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));
    LODWORD(v8) = *(v2 + 48);
    v14 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator;
    *(v0 + 976) = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator;
    v15 = __swift_project_boxed_opaque_existential_1((v2 + v14), *(v2 + v14 + 24));
    v16 = *v15;
    v17 = *(*v15 + 32);
    v18 = *(v16 + 40);
    v19 = *(v0 + 472);
    *(v0 + 168) = v19;
    v20 = *(v0 + 456);
    *(v0 + 136) = *(v0 + 440);
    *(v0 + 152) = v20;
    *(v0 + 112) = v8 >> 7;
    *(v0 + 120) = v17;
    *(v0 + 128) = v18;
    *&v21 = v6;
    *(&v21 + 1) = v7;
    *&v20 = v12;
    *(&v20 + 1) = v13;
    *(v0 + 176) = v21;
    *(v0 + 192) = v20;
    *(v0 + 16) = *(v0 + 112);
    *(v0 + 24) = v17;
    *(v0 + 32) = v18;
    *(v0 + 40) = *(v0 + 136);
    *(v0 + 56) = *(v0 + 152);
    *(v0 + 72) = v19;
    *(v0 + 80) = v6;
    *(v0 + 88) = v7 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    *(v0 + 96) = v12;
    *(v0 + 104) = v13 & 0xCFFFFFFFFFFFFFFFLL;
    sub_2584A7B8C(v17, v18);
    sub_2584ABA3C(v0 + 440, v0 + 760);
    sub_2584A7B8C(v6, v7);
    sub_2584A7B8C(v12, v13);
    v22 = swift_task_alloc();
    *(v0 + 984) = v22;
    *(v22 + 16) = v2;
    *(v22 + 24) = v0 + 16;
    v23 = *(MEMORY[0x277D85A40] + 4);
    v24 = swift_task_alloc();
    *(v0 + 992) = v24;
    *v24 = v0;
    v24[1] = sub_25851E44C;

    return MEMORY[0x2822008A0](v0 + 208, v2, v31, 0xD000000000000021, 0x8000000258540A30, sub_2584AC338, v22, &type metadata for StreamMessage);
  }

  else
  {
    v25 = *(v0 + 848);
    sub_258476AE4();
    swift_allocError();
    if (*(v25 + 232) == 5)
    {
      v27 = 4;
    }

    else
    {
      v27 = 5;
    }

    *v26 = v27;
    swift_willThrow();
    sub_2584AB9E8(v0 + 440);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));
    v28 = *(v0 + 856);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_25851E3D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);
  v1 = v0[117];
  v2 = v0[107];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25851E44C()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v8 = *v1;
  *(*v1 + 1000) = v0;

  v4 = *(v2 + 880);
  v5 = *(v2 + 872);
  if (v0)
  {
    v6 = sub_25851E848;
  }

  else
  {
    v6 = sub_25851E568;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_25851E568()
{
  v1 = *(v0 + 256);
  *(v0 + 336) = *(v0 + 240);
  *(v0 + 352) = v1;
  v2 = *(v0 + 288);
  *(v0 + 368) = *(v0 + 272);
  *(v0 + 384) = v2;
  v3 = *(v0 + 224);
  *(v0 + 304) = *(v0 + 208);
  *(v0 + 320) = v3;
  if (((*(v0 + 392) >> 59) & 6 | ((*(v0 + 376) & 0x2000000000000000) != 0)) != 2)
  {
    v21 = *(v0 + 984);
    v22 = *(v0 + 968);
    v23 = *(v0 + 960);
    v24 = *(v0 + 952);
    v25 = *(v0 + 944);
    sub_258476AE4();
    swift_allocError();
    *v26 = 20;
    swift_willThrow();
    sub_25852D92C(v0 + 112);
    sub_258467E20(v25, v24);
    v19 = v23;
    v20 = v22;
    goto LABEL_6;
  }

  v37 = *(v0 + 344);
  v38 = *(v0 + 328);
  v4 = *(v0 + 1000);
  v5 = (*(v0 + 848) + *(v0 + 976));
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  v8 = *(v0 + 304);
  v9 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2584D275C();
  if (v4)
  {
    v14 = *(v0 + 984);
    v15 = *(v0 + 968);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v18 = *(v0 + 944);
    sub_25852D92C(v0 + 112);
    sub_258467E20(v18, v17);
    v19 = v16;
    v20 = v15;
LABEL_6:
    sub_258467E20(v19, v20);
    sub_2584AB9E8(v0 + 440);
    sub_2584A975C(v0 + 304);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

    v27 = *(v0 + 856);

    v28 = *(v0 + 8);
    goto LABEL_7;
  }

  v10 = *(v0 + 856);
  v11 = (*(v0 + 848) + *(v0 + 904));
  v12 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  *(v0 + 400) = v7;
  *(v0 + 408) = v38;
  *(v0 + 424) = v37;
  v13 = *v12;
  sub_2584EE23C((v0 + 400), v10);
  v30 = *(v0 + 984);
  v31 = *(v0 + 968);
  v32 = *(v0 + 960);
  v33 = *(v0 + 856);
  v34 = *(v0 + 848);
  sub_258467E20(*(v0 + 944), *(v0 + 952));
  sub_258467E20(v32, v31);
  sub_2584AB9E8(v0 + 440);
  sub_25852D92C(v0 + 112);
  sub_2584A975C(v0 + 304);
  v35 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
  v36 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v33, v34 + v36, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

  v28 = *(v0 + 8);
LABEL_7:

  return v28();
}

uint64_t sub_25851E848()
{
  v1 = v0[123];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];

  sub_258467E20(v5, v4);
  sub_258467E20(v3, v2);
  sub_2584AB9E8((v0 + 55));
  sub_25852D92C((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);
  v6 = v0[125];
  v7 = v0[107];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25851E8FC()
{
  *(v1 + 592) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  *(v1 + 600) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25851E998, v0, 0);
}

uint64_t sub_25851E998()
{
  v1 = *(v0 + 592) + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer;
  v2 = *v1;
  if (*v1 == 2)
  {
    sub_258476AE4();
    swift_allocError();
    *v3 = 17;
    swift_willThrow();
LABEL_9:
    v35 = *(v0 + 600);

    v36 = *(v0 + 8);

    return v36();
  }

  *(v0 + 16) = v2;
  v4 = *(v1 + 8);
  *(v0 + 40) = *(v1 + 24);
  *(v0 + 24) = v4;
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 72);
  *(v0 + 104) = *(v1 + 88);
  *(v0 + 88) = v7;
  *(v0 + 72) = v6;
  *(v0 + 56) = v5;
  *(v0 + 448) = &type metadata for AudioStreamOffer;
  *(v0 + 456) = &off_28698DC78;
  v8 = swift_allocObject();
  *(v0 + 424) = v8;
  *(v8 + 16) = v2;
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  *(v8 + 104) = *(v1 + 88);
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = v9;
  v12 = *(v1 + 8);
  *(v8 + 40) = *(v1 + 24);
  *(v8 + 24) = v12;
  sub_258464C18((v0 + 424), v0 + 384);
  __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
  sub_2584A9620(v0 + 16, v0 + 112);
  v13 = sub_2584ADC4C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *(v0 + 608) = v13;
  *(v0 + 616) = v14;
  *(v0 + 624) = v16;
  *(v0 + 632) = v18;
  sub_2584A7B8C(v16, v18);
  sub_2584A7B8C(v13, v15);
  sub_258467E20(v13, v15);
  sub_258467E20(v17, v19);
  sub_2584A7B8C(v17, v19);
  sub_2584B80A0(v17, v19);
  if (!v20 || (v21 = sub_2584BA8B8(), v23 = v22, , !v23))
  {
    sub_258476AE4();
    swift_allocError();
    v34 = 12;
LABEL_8:
    *v33 = v34;
    swift_willThrow();
    sub_258467E20(v17, v19);
    sub_258467E20(v13, v15);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
    goto LABEL_9;
  }

  v24 = sub_2584ADD54(v17, v19, v13, v15);
  *(v0 + 640) = v25;
  if (!v25)
  {

    sub_258476AE4();
    swift_allocError();
    v34 = 13;
    goto LABEL_8;
  }

  v26 = v25;
  v42 = v24;
  v27 = *(v0 + 592);
  v28 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  *(v0 + 648) = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  sub_258464C30(v27 + v28, v0 + 464);
  v29 = __swift_project_boxed_opaque_existential_1((v0 + 464), *(v0 + 488));
  v41 = sub_2585226C8(v21, v23, &OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
  v31 = v30;

  *(v0 + 656) = v31;
  v32 = sub_2584BC58C();
  v38 = *v29;
  v39 = v32;
  v40 = swift_task_alloc();
  *(v0 + 664) = v40;
  *v40 = v0;
  v40[1] = sub_25851EDA8;

  return sub_2584EB264(v0 + 344, v41, v31, v42, v26, v39);
}

uint64_t sub_25851EDA8()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v13 = *v1;
  *(*v1 + 672) = v0;

  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = *(v2 + 640);
    v6 = *(v2 + 592);

    v7 = sub_25851F38C;
    v8 = v6;
  }

  else
  {
    v9 = *(v2 + 640);
    v10 = *(v2 + 592);
    *(v2 + 744) = *(v2 + 344);
    v11 = *(v2 + 368);
    *(v2 + 680) = *(v2 + 352);
    *(v2 + 696) = v11;

    v7 = sub_25851EF18;
    v8 = v10;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_25851EF18()
{
  v1 = *(v0 + 592);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 464));
  if (*(v1 + 121) != 2)
  {
    v12 = *(v0 + 632);
    v13 = *(v0 + 624);
    v14 = *(v0 + 616);
    v15 = *(v0 + 608);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v17 = 4;
    }

    else
    {
      v17 = 5;
    }

    *v16 = v17;
    goto LABEL_8;
  }

  v2 = *(v0 + 672);
  v3 = *(v0 + 600);
  sub_258464C30(*(v0 + 592) + *(v0 + 648), v0 + 504);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  v5 = *(v0 + 408);
  v6 = *(v0 + 416);
  __swift_project_boxed_opaque_existential_1((v0 + 384), v5);
  (*(v6 + 32))(v5, v6);
  v7 = *v4;
  sub_2584EE23C((v0 + 304), v3);
  if (v2)
  {
    v8 = *(v0 + 632);
    v9 = *(v0 + 624);
    v10 = *(v0 + 616);
    v11 = *(v0 + 608);
    sub_2584AB9E8(v0 + 344);
    sub_258467E20(v9, v8);
    sub_258467E20(v11, v10);
    sub_2584AB9E8(v0 + 304);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
    v18 = *(v0 + 600);

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = *(v0 + 600);
  v22 = *(v0 + 592);
  sub_2584AB9E8(v0 + 304);
  v23 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
  v24 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v21, v22 + v24, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
  v25 = __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator), *(v22 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator + 24));
  if (*(*v25 + 24))
  {
    v12 = *(v0 + 632);
    v13 = *(v0 + 624);
    v14 = *(v0 + 616);
    v15 = *(v0 + 608);
    sub_2584D29F0();
    swift_allocError();
    *v26 = 0;
LABEL_8:
    swift_willThrow();
    sub_2584AB9E8(v0 + 344);
    sub_258467E20(v13, v12);
    sub_258467E20(v15, v14);
    goto LABEL_9;
  }

  v27 = *(v0 + 704);
  v28 = *(v0 + 696);
  v29 = *(v0 + 688);
  v30 = *(v0 + 680);
  v44 = *(v0 + 744);
  v31 = *(v0 + 592);
  v32 = [*(*v25 + 16) answer];
  v33 = sub_25853292C();
  v35 = v34;

  *(v0 + 712) = v33;
  *(v0 + 720) = v35;
  v36 = (v31 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
  v37 = *(v31 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
  v38 = *(v31 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
  v43 = v37;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  *(v0 + 208) = v33;
  *(v0 + 216) = v35;
  *(v0 + 224) = v44;
  *(v0 + 232) = v30;
  *(v0 + 240) = v29;
  *(v0 + 248) = v28;
  *(v0 + 256) = v27;
  *(v0 + 280) = 0;
  *(v0 + 296) = 0x2000000000000000;
  v39 = *(v38 + 80);
  sub_2584A7B8C(v33, v35);
  sub_2584ABAF4(v30, v29);
  sub_2584ABAF4(v28, v27);
  v42 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  *(v0 + 728) = v41;
  *v41 = v0;
  v41[1] = sub_25851F420;

  return v42(v0 + 208, v43, v38);
}

uint64_t sub_25851F38C()
{
  v1 = v0[77];
  v2 = v0[76];
  sub_258467E20(v0[78], v0[79]);
  sub_258467E20(v2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 58);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  v3 = v0[84];
  v4 = v0[75];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25851F420()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v7 = *v1;
  *(*v1 + 736) = v0;

  v4 = *(v2 + 592);
  if (v0)
  {
    v5 = sub_25851F654;
  }

  else
  {
    v5 = sub_25851F538;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25851F538()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[76];
  v12 = v0[77];
  v13 = v0[75];
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v8, v7);
  sub_258467E20(v9, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25851F654()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[79];
  v8 = v0[78];
  v14 = v0[77];
  v9 = v0[76];
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v8, v7);
  sub_258467E20(v9, v14);
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  v10 = v0[92];
  v11 = v0[75];

  v12 = v0[1];

  return v12();
}

uint64_t sub_25851F76C()
{
  v1[74] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[75] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v4 = sub_25853362C();
  v1[76] = v4;
  v1[77] = v3;

  return MEMORY[0x2822009F8](sub_25851F860, v4, v3);
}

uint64_t sub_25851F860()
{
  v1 = *(v0 + 592) + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer;
  v2 = *v1;
  if (*v1 == 2)
  {
    sub_258476AE4();
    swift_allocError();
    *v3 = 17;
    swift_willThrow();
LABEL_9:
    v35 = *(v0 + 600);

    v36 = *(v0 + 8);

    return v36();
  }

  *(v0 + 16) = v2;
  v4 = *(v1 + 8);
  *(v0 + 40) = *(v1 + 24);
  *(v0 + 24) = v4;
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 72);
  *(v0 + 104) = *(v1 + 88);
  *(v0 + 88) = v7;
  *(v0 + 72) = v6;
  *(v0 + 56) = v5;
  *(v0 + 448) = &type metadata for VideoStreamOffer;
  *(v0 + 456) = &off_28698E288;
  v8 = swift_allocObject();
  *(v0 + 424) = v8;
  *(v8 + 16) = v2;
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  *(v8 + 104) = *(v1 + 88);
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = v9;
  v12 = *(v1 + 8);
  *(v8 + 40) = *(v1 + 24);
  *(v8 + 24) = v12;
  sub_258464C18((v0 + 424), v0 + 384);
  __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
  sub_2584A9700(v0 + 16, v0 + 112);
  v13 = sub_2584ADC4C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *(v0 + 624) = v13;
  *(v0 + 632) = v14;
  *(v0 + 640) = v16;
  *(v0 + 648) = v18;
  sub_2584A7B8C(v16, v18);
  sub_2584A7B8C(v13, v15);
  sub_258467E20(v13, v15);
  sub_258467E20(v17, v19);
  sub_2584A7B8C(v17, v19);
  sub_2584B80A0(v17, v19);
  if (!v20 || (v21 = sub_2584BA8B8(), v23 = v22, , !v23))
  {
    sub_258476AE4();
    swift_allocError();
    v34 = 12;
LABEL_8:
    *v33 = v34;
    swift_willThrow();
    sub_258467E20(v17, v19);
    sub_258467E20(v13, v15);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
    goto LABEL_9;
  }

  v24 = sub_2584ADD54(v17, v19, v13, v15);
  *(v0 + 656) = v25;
  if (!v25)
  {

    sub_258476AE4();
    swift_allocError();
    v34 = 13;
    goto LABEL_8;
  }

  v26 = v25;
  v42 = v24;
  v27 = *(v0 + 592);
  v28 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  *(v0 + 664) = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  sub_258464C30(v27 + v28, v0 + 464);
  v29 = __swift_project_boxed_opaque_existential_1((v0 + 464), *(v0 + 488));
  v41 = sub_2585226C8(v21, v23, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
  v31 = v30;

  *(v0 + 672) = v31;
  v32 = sub_2584BC58C();
  v38 = *v29;
  v39 = v32;
  v40 = swift_task_alloc();
  *(v0 + 680) = v40;
  *v40 = v0;
  v40[1] = sub_25851FC70;

  return sub_2584EB264(v0 + 344, v41, v31, v42, v26, v39);
}

uint64_t sub_25851FC70()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v12 = *v1;
  *(*v1 + 688) = v0;

  v4 = *(v2 + 672);
  if (v0)
  {
    v5 = *(v2 + 656);

    v6 = *(v2 + 616);
    v7 = *(v2 + 608);
    v8 = sub_258520244;
  }

  else
  {
    v9 = *(v2 + 656);
    *(v2 + 760) = *(v2 + 344);
    v10 = *(v2 + 368);
    *(v2 + 696) = *(v2 + 352);
    *(v2 + 712) = v10;

    v6 = *(v2 + 616);
    v7 = *(v2 + 608);
    v8 = sub_25851FDD0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25851FDD0()
{
  v1 = *(v0 + 592);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 464));
  if (*(v1 + 232) != 2)
  {
    v12 = *(v0 + 648);
    v13 = *(v0 + 640);
    v14 = *(v0 + 632);
    v15 = *(v0 + 624);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v17 = 4;
    }

    else
    {
      v17 = 5;
    }

    *v16 = v17;
    goto LABEL_8;
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 600);
  sub_258464C30(*(v0 + 592) + *(v0 + 664), v0 + 504);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  v5 = *(v0 + 408);
  v6 = *(v0 + 416);
  __swift_project_boxed_opaque_existential_1((v0 + 384), v5);
  (*(v6 + 32))(v5, v6);
  v7 = *v4;
  sub_2584EE23C((v0 + 304), v3);
  if (v2)
  {
    v8 = *(v0 + 648);
    v9 = *(v0 + 640);
    v10 = *(v0 + 632);
    v11 = *(v0 + 624);
    sub_2584AB9E8(v0 + 344);
    sub_258467E20(v9, v8);
    sub_258467E20(v11, v10);
    sub_2584AB9E8(v0 + 304);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
    v18 = *(v0 + 600);

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = *(v0 + 600);
  v22 = *(v0 + 592);
  sub_2584AB9E8(v0 + 304);
  v23 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
  v24 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v21, v22 + v24, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
  v25 = __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator), *(v22 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator + 24));
  if (*(*v25 + 24))
  {
    v12 = *(v0 + 648);
    v13 = *(v0 + 640);
    v14 = *(v0 + 632);
    v15 = *(v0 + 624);
    sub_2584D29F0();
    swift_allocError();
    *v26 = 0;
LABEL_8:
    swift_willThrow();
    sub_2584AB9E8(v0 + 344);
    sub_258467E20(v13, v12);
    sub_258467E20(v15, v14);
    goto LABEL_9;
  }

  v27 = *(v0 + 720);
  v28 = *(v0 + 712);
  v29 = *(v0 + 704);
  v30 = *(v0 + 696);
  v44 = *(v0 + 760);
  v31 = *(v0 + 592);
  v32 = [*(*v25 + 16) answer];
  v33 = sub_25853292C();
  v35 = v34;

  *(v0 + 728) = v33;
  *(v0 + 736) = v35;
  v36 = (v31 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
  v37 = *(v31 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
  v38 = *(v31 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
  v43 = v37;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  *(v0 + 208) = v33;
  *(v0 + 216) = v35;
  *(v0 + 224) = v44;
  *(v0 + 232) = v30;
  *(v0 + 240) = v29;
  *(v0 + 248) = v28;
  *(v0 + 256) = v27;
  *(v0 + 280) = 0;
  *(v0 + 296) = 0x1000000000000000;
  v39 = *(v38 + 80);
  sub_2584A7B8C(v33, v35);
  sub_2584ABAF4(v30, v29);
  sub_2584ABAF4(v28, v27);
  v42 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  *(v0 + 744) = v41;
  *v41 = v0;
  v41[1] = sub_2585202D8;

  return v42(v0 + 208, v43, v38);
}

uint64_t sub_258520244()
{
  v1 = v0[79];
  v2 = v0[78];
  sub_258467E20(v0[80], v0[81]);
  sub_258467E20(v2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 58);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  v3 = v0[86];
  v4 = v0[75];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2585202D8()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v8 = *v1;
  *(*v1 + 752) = v0;

  v4 = *(v2 + 616);
  v5 = *(v2 + 608);
  if (v0)
  {
    v6 = sub_258520510;
  }

  else
  {
    v6 = sub_2585203F4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2585203F4()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[78];
  v12 = v0[79];
  v13 = v0[75];
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v8, v7);
  sub_258467E20(v9, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  v10 = v0[1];

  return v10();
}

uint64_t sub_258520510()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[81];
  v8 = v0[80];
  v14 = v0[79];
  v9 = v0[78];
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v8, v7);
  sub_258467E20(v9, v14);
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  v10 = v0[94];
  v11 = v0[75];

  v12 = v0[1];

  return v12();
}

uint64_t sub_258520628()
{
  v1[34] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v1[36] = v3;
  v4 = *(v3 - 8);
  v1[37] = v4;
  v1[38] = *(v4 + 64);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v6 = type metadata accessor for MediaConnectionPrerequisites();
  v1[42] = v6;
  v7 = *(v6 - 8);
  v1[43] = v7;
  v8 = *(v7 + 64) + 15;
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2585207D4, v0, 0);
}

uint64_t sub_2585207D4()
{
  v1 = *(v0 + 272);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  *(v0 + 360) = v3;
  if (!v3)
  {
    sub_258476AE4();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v0 + 336);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);
  *(v0 + 368) = *(v2 + 8);
  v7 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v7, v6, &qword_27F930580, &unk_2585382B0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = *(v0 + 328);
    swift_unknownObjectRetain();
    sub_258465168(v8, &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:
    v11 = *(v0 + 352);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    v14 = *(v0 + 312);
    v15 = *(v0 + 280);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 272);
  sub_25850BB7C(*(v0 + 328), *(v0 + 352));
  if ((*(v18 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_shouldPerformTrafficRegistration) & 1) != 0 && *(*(v0 + 352) + *(*(v0 + 336) + 20)) == 1)
  {
    v19 = *(v0 + 272);
    v20 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
    swift_beginAccess();
    sub_2584AC3B8(v19 + v20, v0 + 136, &qword_27F931828, &unk_25853EB90);
    v21 = *(v0 + 160);
    swift_unknownObjectRetain();
    sub_258465168(v0 + 136, &qword_27F931828, &unk_25853EB90);
    if (!v21)
    {
      v22 = swift_task_alloc();
      *(v0 + 376) = v22;
      *v22 = v0;
      v22[1] = sub_258520D00;
      v23 = *(v0 + 272);

      return sub_25852BA04();
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v24 = *(v0 + 272);
  v25 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  *(v0 + 392) = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC3B8(v24 + v25, v0 + 16, &qword_27F931828, &unk_25853EB90);
  if (*(v0 + 40))
  {
    sub_258464C30(v0 + 16, v0 + 96);
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *(v0 + 400) = v26;
    v27 = *v26;

    return MEMORY[0x2822009F8](sub_258520E2C, v27, 0);
  }

  else
  {
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v28 = *(v0 + 392);
    v29 = *(v0 + 272);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_2584AC5D0(v0 + 56, v29 + v28, &qword_27F931828, &unk_25853EB90);
    swift_endAccess();
    v31 = *(v0 + 360);
    v30 = *(v0 + 368);
    v32 = *(v0 + 272);
    ObjectType = swift_getObjectType();
    v34 = *(v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused);
    v35 = *(v30 + 24);
    v39 = (v35 + *v35);
    v36 = v35[1];
    v37 = swift_task_alloc();
    *(v0 + 408) = v37;
    *v37 = v0;
    v37[1] = sub_258521040;
    v38 = *(v0 + 320);

    return v39(v38, v34, ObjectType, v30);
  }
}

uint64_t sub_258520D00()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 272);
  if (v0)
  {
    v6 = sub_2585215A0;
  }

  else
  {
    v6 = sub_258521458;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258520E2C()
{
  v1 = *(v0 + 272);
  v2 = **(v0 + 400);
  sub_2585072A8();

  return MEMORY[0x2822009F8](sub_258520E9C, v1, 0);
}

uint64_t sub_258520E9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 392);
  v2 = *(v0 + 272);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 56, v2 + v1, &qword_27F931828, &unk_25853EB90);
  swift_endAccess();
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 272);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused);
  v8 = *(v3 + 24);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 408) = v10;
  *v10 = v0;
  v10[1] = sub_258521040;
  v11 = *(v0 + 320);

  return v13(v11, v7, ObjectType, v3);
}

uint64_t sub_258521040()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 272);
  if (v0)
  {
    v6 = sub_2585213A8;
  }

  else
  {
    v6 = sub_25852116C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25852116C()
{
  v19 = v0[45];
  v20 = v0[44];
  v1 = v0[40];
  v21 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v18 = v6;
  v8 = sub_25853368C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = v2;
  (*(v4 + 16))(v2, v1, v5);
  v10 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v10;
  (*(v4 + 32))(v13 + v11, v9, v5);
  *(v13 + v12) = v7;
  swift_retain_n();
  v14 = sub_258476C88(0, 0, v18, &unk_25853F518, v13);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1, v5);
  sub_25852D594(v20);
  v15 = *(v7 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor);
  *(v7 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor) = v14;

  v16 = v0[1];

  return v16();
}

uint64_t sub_2585213A8()
{
  v2 = v0[44];
  v1 = v0[45];
  swift_unknownObjectRelease();
  sub_25852D594(v2);
  v3 = v0[52];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v8 = v0[35];

  v9 = v0[1];

  return v9();
}

uint64_t sub_258521458()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[34];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused);
  v6 = *(v1 + 24);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_258521040;
  v9 = v0[40];

  return v11(v9, v5, ObjectType, v1);
}

uint64_t sub_2585215A0()
{
  v2 = v0[44];
  v1 = v0[45];
  swift_unknownObjectRelease();
  sub_25852D594(v2);
  v3 = v0[48];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v8 = v0[35];

  v9 = v0[1];

  return v9();
}

uint64_t sub_258521650()
{
  v1[34] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v1[36] = v3;
  v4 = *(v3 - 8);
  v1[37] = v4;
  v1[38] = *(v4 + 64);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v6 = type metadata accessor for MediaConnectionPrerequisites();
  v1[42] = v6;
  v7 = *(v6 - 8);
  v1[43] = v7;
  v8 = *(v7 + 64) + 15;
  v1[44] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  v1[45] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v10 = sub_25853362C();
  v1[46] = v10;
  v1[47] = v9;

  return MEMORY[0x2822009F8](sub_258521854, v10, v9);
}

uint64_t sub_258521854()
{
  v1 = *(v0 + 272);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  *(v0 + 384) = v3;
  if (!v3)
  {
    sub_258476AE4();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v0 + 336);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);
  *(v0 + 392) = *(v2 + 8);
  v7 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v7, v6, &qword_27F930580, &unk_2585382B0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = *(v0 + 328);
    swift_unknownObjectRetain();
    sub_258465168(v8, &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:
    v11 = *(v0 + 352);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    v14 = *(v0 + 312);
    v15 = *(v0 + 280);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 272);
  sub_25850BB7C(*(v0 + 328), *(v0 + 352));
  if ((*(v18 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_shouldPerformTrafficRegistration) & 1) != 0 && *(*(v0 + 352) + *(*(v0 + 336) + 20)) == 1)
  {
    v19 = *(v0 + 272);
    v20 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
    swift_beginAccess();
    sub_2584AC3B8(v19 + v20, v0 + 136, &qword_27F931828, &unk_25853EB90);
    v21 = *(v0 + 160);
    swift_unknownObjectRetain();
    sub_258465168(v0 + 136, &qword_27F931828, &unk_25853EB90);
    if (!v21)
    {
      v22 = swift_task_alloc();
      *(v0 + 400) = v22;
      *v22 = v0;
      v22[1] = sub_258521D80;
      v23 = *(v0 + 272);

      return sub_25852C14C();
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v24 = *(v0 + 272);
  v25 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  *(v0 + 416) = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC3B8(v24 + v25, v0 + 16, &qword_27F931828, &unk_25853EB90);
  if (*(v0 + 40))
  {
    sub_258464C30(v0 + 16, v0 + 96);
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *(v0 + 424) = v26;
    v27 = *v26;

    return MEMORY[0x2822009F8](sub_258521EBC, v27, 0);
  }

  else
  {
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v28 = *(v0 + 416);
    v29 = *(v0 + 272);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_2584AC5D0(v0 + 56, v29 + v28, &qword_27F931828, &unk_25853EB90);
    swift_endAccess();
    v31 = *(v0 + 384);
    v30 = *(v0 + 392);
    v32 = *(v0 + 272);
    ObjectType = swift_getObjectType();
    v34 = *(v32 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused);
    v35 = *(v30 + 24);
    v39 = (v35 + *v35);
    v36 = v35[1];
    v37 = swift_task_alloc();
    *(v0 + 432) = v37;
    *v37 = v0;
    v37[1] = sub_2585220C8;
    v38 = *(v0 + 320);

    return v39(v38, v34, ObjectType, v30);
  }
}

uint64_t sub_258521D80()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 376);
  v6 = *(v2 + 368);
  if (v0)
  {
    v7 = sub_2585225FC;
  }

  else
  {
    v7 = sub_2585224B4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258521EBC()
{
  v1 = **(v0 + 424);
  sub_2585072A8();
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);

  return MEMORY[0x2822009F8](sub_258521F24, v2, v3);
}

uint64_t sub_258521F24()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 416);
  v2 = *(v0 + 272);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 56, v2 + v1, &qword_27F931828, &unk_25853EB90);
  swift_endAccess();
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = *(v0 + 272);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused);
  v8 = *(v3 + 24);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 432) = v10;
  *v10 = v0;
  v10[1] = sub_2585220C8;
  v11 = *(v0 + 320);

  return v13(v11, v7, ObjectType, v3);
}

uint64_t sub_2585220C8()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 376);
  v6 = *(v2 + 368);
  if (v0)
  {
    v7 = sub_258522400;
  }

  else
  {
    v7 = sub_258522204;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258522204()
{
  v16 = v0[45];
  v17 = v0[48];
  v1 = v0[40];
  v18 = v0[44];
  v19 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = sub_25853368C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v5);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v16;
  (*(v4 + 32))(v11 + v9, v2, v5);
  *(v11 + v10) = v7;
  swift_retain_n();
  v12 = sub_258476C88(0, 0, v6, &unk_25853F408, v11);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1, v5);
  sub_25852D594(v18);
  v13 = *(v7 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor);
  *(v7 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor) = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_258522400()
{
  v1 = v0[48];
  v2 = v0[44];
  swift_unknownObjectRelease();
  sub_25852D594(v2);
  v3 = v0[55];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v8 = v0[35];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2585224B4()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[34];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused);
  v6 = *(v1 + 24);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[54] = v8;
  *v8 = v0;
  v8[1] = sub_2585220C8;
  v9 = v0[40];

  return v11(v9, v5, ObjectType, v1);
}

uint64_t sub_2585225FC()
{
  v1 = v0[48];
  v2 = v0[44];
  swift_unknownObjectRelease();
  sub_25852D594(v2);
  v3 = v0[51];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v8 = v0[35];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2585226C8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *__swift_project_boxed_opaque_existential_1((v3 + *a3), *(v3 + *a3 + 24));

  v7 = sub_2585138CC(0, 1);
  if (v7 == 2 || (v7 & 1) != 0)
  {
    if (a1 == 0x306C647761 && a2 == 0xE500000000000000 || (sub_258533E2C() & 1) != 0)
    {

      v8 = 0xE400000000000000;
      v9 = 1;
      v10 = 813132908;
      goto LABEL_10;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = a1;
  v8 = a2;
LABEL_10:
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v11 = sub_258532A4C();
  __swift_project_value_buffer(v11, qword_27F93CFD8);

  v12 = sub_258532A2C();
  v13 = sub_2585338EC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 67109634;
    *(v14 + 4) = v9;
    *(v14 + 8) = 2080;

    v16 = sub_2584713B0(v10, v8, &v18);

    *(v14 + 10) = v16;
    *(v14 + 18) = 2080;
    *(v14 + 20) = sub_2584713B0(a1, a2, &v18);
    _os_log_impl(&dword_25845E000, v12, v13, "UseLLW=%{BOOL}d, localInterface=%s, controlInterface=%s", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v15, -1, -1);
    MEMORY[0x259C82900](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_258522910()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for MediaConnectionPrerequisites();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258522A08, v0, 0);
}

uint64_t sub_258522A08()
{
  v1 = v0[5];
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  v0[10] = v3;
  if (!v3)
  {
    sub_258476AE4();
    swift_allocError();
    *v11 = 8;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = *(v2 + 8);
  v0[11] = v7;
  v8 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v8, v6, &qword_27F930580, &unk_2585382B0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v9 = v0[6];
    swift_unknownObjectRetain();
    sub_258465168(v9, &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:
    v12 = v0[9];
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }

  sub_25850BB7C(v0[6], v0[9]);
  ObjectType = swift_getObjectType();
  v0[12] = ObjectType;
  v17 = *(v7 + 48);
  swift_unknownObjectRetain();
  v20 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_258522CC4;

  return v20(ObjectType, v7);
}

uint64_t sub_258522CC4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_258522ED4;
  }

  else
  {
    v6 = sub_258522DF0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258522DF0()
{
  v1 = v0[5];
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor))
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v4 = v0[10];
  v3 = v0[11];
  v5 = *(v3 + 64);
  v3 += 64;
  v6 = v0[12];
  v0[15] = v5;
  v0[16] = v3 & 0xFFFFFFFFFFFFLL | 0x8E85000000000000;
  v7 = *(v3 - 56);
  v9 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_258522F54, v9, v8);
}

uint64_t sub_258522ED4()
{
  v2 = v0[9];
  v1 = v0[10];
  swift_unknownObjectRelease();
  sub_25852D594(v2);
  v3 = v0[14];
  v4 = v0[9];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_258522F54()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(v0 + 40);
  *(v0 + 136) = (*(v0 + 120))(*(v0 + 96), *(v0 + 88));

  return MEMORY[0x2822009F8](sub_258522FCC, v3, 0);
}

uint64_t sub_258522FCC()
{
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = sub_25853295C();
  [v1 setRtpNWConnectionClientID_];

  v6 = *(v2 + 56);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_25852311C;
  v9 = v0[17];
  v10 = v0[12];

  return v12(v9, v10, v2);
}

uint64_t sub_25852311C()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_2585233B4, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[20] = v5;
    *v5 = v3;
    v5[1] = sub_258523288;
    v6 = v3[5];

    return sub_258520628();
  }
}

uint64_t sub_258523288()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2585234D4;
  }

  else
  {
    v6 = sub_258523440;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2585233B4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  swift_unknownObjectRelease();
  sub_25852D594(v1);
  v3 = *(v0 + 152);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_258523440()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);

  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2585234D4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  swift_unknownObjectRelease();
  sub_25852D594(v1);
  v3 = *(v0 + 168);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_258523560()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for MediaConnectionPrerequisites();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v7 = sub_25853362C();
  v1[10] = v7;
  v1[11] = v6;

  return MEMORY[0x2822009F8](sub_2585236AC, v7, v6);
}

uint64_t sub_2585236AC()
{
  v1 = v0[5];
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  v0[12] = v3;
  if (!v3)
  {
    sub_258476AE4();
    swift_allocError();
    *v11 = 8;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = *(v2 + 8);
  v0[13] = v7;
  v8 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v8, v6, &qword_27F930580, &unk_2585382B0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v9 = v0[6];
    swift_unknownObjectRetain();
    sub_258465168(v9, &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:
    v12 = v0[9];
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }

  sub_25850BB7C(v0[6], v0[9]);
  ObjectType = swift_getObjectType();
  v0[14] = ObjectType;
  v17 = *(v7 + 48);
  swift_unknownObjectRetain();
  v20 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_258523968;

  return v20(ObjectType, v7);
}

uint64_t sub_258523968()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_258523B88;
  }

  else
  {
    v7 = sub_258523AA4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258523AA4()
{
  v1 = v0[5];
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor))
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v4 = v0[12];
  v3 = v0[13];
  v5 = *(v3 + 64);
  v3 += 64;
  v6 = v0[14];
  v0[17] = v5;
  v0[18] = v3 & 0xFFFFFFFFFFFFLL | 0x8E85000000000000;
  v7 = *(v3 - 56);
  v9 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_258523C0C, v9, v8);
}

uint64_t sub_258523B88()
{
  v1 = v0[12];
  v2 = v0[9];
  swift_unknownObjectRelease();
  sub_25852D594(v2);
  v3 = v0[16];
  v4 = v0[9];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_258523C0C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  *(v0 + 152) = (*(v0 + 136))(*(v0 + 112), *(v0 + 104));
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_258523C7C, v3, v4);
}

uint64_t sub_258523C7C()
{
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v5 = sub_25853295C();
  [v1 setRtpNWConnectionClientID_];

  v6 = *(v2 + 56);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_258523DCC;
  v9 = v0[19];
  v10 = v0[14];

  return v12(v9, v10, v2);
}

uint64_t sub_258523DCC()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[10];
    v5 = v3[11];

    return MEMORY[0x2822009F8](sub_258524070, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[22] = v6;
    *v6 = v3;
    v6[1] = sub_258523F34;
    v7 = v3[5];

    return sub_258521650();
  }
}

uint64_t sub_258523F34()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_258524198;
  }

  else
  {
    v7 = sub_258524100;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258524070()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  swift_unknownObjectRelease();
  sub_25852D594(v2);
  v3 = *(v0 + 168);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_258524100()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  swift_unknownObjectRelease();
  sub_25852D594(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_258524198()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  swift_unknownObjectRelease();
  sub_25852D594(v2);
  v3 = *(v0 + 184);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_258524228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319E0, &qword_25853F458);
  v5[56] = v7;
  v8 = *(v7 - 8);
  v5[57] = v8;
  v9 = *(v8 + 64) + 15;
  v5[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2585242F8, a5, 0);
}

uint64_t sub_2585242F8()
{
  v1 = v0[58];
  v2 = v0[54];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0);
  sub_2585336FC();
  v3 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
  v0[59] = v3;
  v4 = v0[55];
  v5 = *(MEMORY[0x277D858B8] + 4);
  v6 = swift_task_alloc();
  v0[60] = v6;
  *v6 = v0;
  v6[1] = sub_258524410;
  v7 = v0[58];
  v8 = v0[56];

  return MEMORY[0x2822005A8](v0 + 2, v4, v3, v8, v0 + 53);
}

uint64_t sub_258524410()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v7 = *v1;

  v4 = *(v2 + 440);
  if (v0)
  {
    v5 = sub_2585247CC;
  }

  else
  {
    v5 = sub_258524524;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_258524524()
{
  if (*(v0 + 112) == 255)
  {
    (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
    goto LABEL_5;
  }

  v1 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v2 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v2;
  *(v0 + 216) = *(v0 + 112);
  v3 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v3;
  *(v0 + 152) = v1;
  if (sub_25853376C())
  {
    v5 = *(v0 + 456);
    v4 = *(v0 + 464);
    v6 = *(v0 + 448);
    sub_258465168(v0 + 120, &qword_27F9319E8, &qword_25853F460);
    (*(v5 + 8))(v4, v6);
LABEL_5:
    v7 = *(v0 + 464);

    v8 = *(v0 + 8);

    return v8();
  }

  sub_2584AC3B8(v0 + 120, v0 + 224, &qword_27F9319E8, &qword_25853F460);
  if (*(v0 + 320))
  {
    if (*(v0 + 320) == 1)
    {
      sub_258465168(v0 + 120, &qword_27F9319E8, &qword_25853F460);
      v10 = &qword_27F92FB90;
      v11 = &qword_258535420;
      v12 = v0 + 264;
    }

    else
    {
      v10 = &qword_27F9319E8;
      v11 = &qword_25853F460;
      v12 = v0 + 120;
    }

    sub_258465168(v12, v10, v11);
    sub_258465168(v0 + 224, v10, v11);
    v18 = *(v0 + 472);
    v19 = *(v0 + 440);
    v20 = *(MEMORY[0x277D858B8] + 4);
    v21 = swift_task_alloc();
    *(v0 + 480) = v21;
    *v21 = v0;
    v21[1] = sub_258524410;
    v22 = *(v0 + 464);
    v23 = *(v0 + 448);

    return MEMORY[0x2822005A8](v0 + 16, v19, v18, v23, v0 + 424);
  }

  else
  {
    v13 = *(v0 + 272);
    *(v0 + 360) = *(v0 + 256);
    *(v0 + 376) = v13;
    v14 = *(v0 + 304);
    *(v0 + 392) = *(v0 + 288);
    *(v0 + 408) = v14;
    v15 = *(v0 + 240);
    *(v0 + 328) = *(v0 + 224);
    *(v0 + 344) = v15;
    v16 = swift_task_alloc();
    *(v0 + 488) = v16;
    *v16 = v0;
    v16[1] = sub_258524A0C;
    v17 = *(v0 + 440);

    return sub_258525E04(v0 + 328);
  }
}

uint64_t sub_2585247CC()
{
  v18 = v0;
  (*(v0[57] + 8))(v0[58], v0[56]);
  v1 = v0[53];
  v0[63] = v1;
  v2 = v0[55];

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[55];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136315394;

    *(v8 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v17);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s Connection event processing failed with error: %@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
    v13 = v0[55];
  }

  v14 = swift_task_alloc();
  v0[64] = v14;
  *v14 = v0;
  v14[1] = sub_258524E7C;
  v15 = v0[55];

  return sub_258519188(v1);
}

uint64_t sub_258524A0C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 440);
  if (v0)
  {
    v6 = sub_258524C14;
  }

  else
  {
    v6 = sub_258524B38;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258524B38()
{
  sub_2584A975C((v0 + 41));
  sub_258465168((v0 + 15), &qword_27F9319E8, &qword_25853F460);
  v1 = v0[59];
  v2 = v0[55];
  v3 = *(MEMORY[0x277D858B8] + 4);
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_258524410;
  v5 = v0[58];
  v6 = v0[56];

  return MEMORY[0x2822005A8](v0 + 2, v2, v1, v6, v0 + 53);
}

uint64_t sub_258524C14()
{
  v21 = v0;
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  sub_2584A975C((v0 + 41));
  sub_258465168((v0 + 15), &qword_27F9319E8, &qword_25853F460);
  (*(v2 + 8))(v1, v3);
  v4 = v0[62];
  v0[63] = v4;
  v5 = v0[55];

  v6 = v4;
  v7 = sub_258532A2C();
  v8 = sub_2585338CC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[55];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;

    *(v11 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v20);
    *(v11 + 12) = 2112;
    v14 = v4;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_25845E000, v7, v8, "%s Connection event processing failed with error: %@", v11, 0x16u);
    sub_258465168(v12, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C82900](v13, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  else
  {
    v16 = v0[55];
  }

  v17 = swift_task_alloc();
  v0[64] = v17;
  *v17 = v0;
  v17[1] = sub_258524E7C;
  v18 = v0[55];

  return sub_258519188(v4);
}

uint64_t sub_258524E7C()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258524F8C, v2, 0);
}

uint64_t sub_258524F8C()
{
  v1 = *(v0 + 464);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258524FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319E0, &qword_25853F458);
  v5[56] = v6;
  v7 = *(v6 - 8);
  v5[57] = v7;
  v8 = *(v7 + 64) + 15;
  v5[58] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  v5[59] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v10 = sub_25853362C();
  v5[60] = v10;
  v5[61] = v9;

  return MEMORY[0x2822009F8](sub_258525120, v10, v9);
}

uint64_t sub_258525120()
{
  v1 = v0[58];
  v2 = v0[54];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0);
  sub_2585336FC();
  v3 = v0[59];
  v4 = v0[55];
  v5 = *(MEMORY[0x277D858B8] + 4);
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_258525200;
  v7 = v0[58];
  v8 = v0[56];

  return MEMORY[0x2822005A8](v0 + 2, v4, v3, v8, v0 + 53);
}

uint64_t sub_258525200()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v8 = *v1;

  v4 = *(v2 + 480);
  v5 = *(v2 + 488);
  if (v0)
  {
    v6 = sub_2585255B8;
  }

  else
  {
    v6 = sub_258525310;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_258525310()
{
  if (*(v0 + 112) == 255)
  {
    (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
    goto LABEL_5;
  }

  v1 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v2 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v2;
  *(v0 + 216) = *(v0 + 112);
  v3 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v3;
  *(v0 + 152) = v1;
  if (sub_25853376C())
  {
    v5 = *(v0 + 456);
    v4 = *(v0 + 464);
    v6 = *(v0 + 448);
    sub_258465168(v0 + 120, &qword_27F9319E8, &qword_25853F460);
    (*(v5 + 8))(v4, v6);
LABEL_5:
    v7 = *(v0 + 464);

    v8 = *(v0 + 8);

    return v8();
  }

  sub_2584AC3B8(v0 + 120, v0 + 224, &qword_27F9319E8, &qword_25853F460);
  if (*(v0 + 320))
  {
    if (*(v0 + 320) == 1)
    {
      sub_258465168(v0 + 120, &qword_27F9319E8, &qword_25853F460);
      v10 = &qword_27F92FB90;
      v11 = &qword_258535420;
      v12 = v0 + 264;
    }

    else
    {
      v10 = &qword_27F9319E8;
      v11 = &qword_25853F460;
      v12 = v0 + 120;
    }

    sub_258465168(v12, v10, v11);
    sub_258465168(v0 + 224, v10, v11);
    v18 = *(v0 + 472);
    v19 = *(v0 + 440);
    v20 = *(MEMORY[0x277D858B8] + 4);
    v21 = swift_task_alloc();
    *(v0 + 496) = v21;
    *v21 = v0;
    v21[1] = sub_258525200;
    v22 = *(v0 + 464);
    v23 = *(v0 + 448);

    return MEMORY[0x2822005A8](v0 + 16, v19, v18, v23, v0 + 424);
  }

  else
  {
    v13 = *(v0 + 272);
    *(v0 + 360) = *(v0 + 256);
    *(v0 + 376) = v13;
    v14 = *(v0 + 304);
    *(v0 + 392) = *(v0 + 288);
    *(v0 + 408) = v14;
    v15 = *(v0 + 240);
    *(v0 + 328) = *(v0 + 224);
    *(v0 + 344) = v15;
    v16 = swift_task_alloc();
    *(v0 + 504) = v16;
    *v16 = v0;
    v16[1] = sub_2585257F8;
    v17 = *(v0 + 440);

    return sub_258526570(v0 + 328);
  }
}

uint64_t sub_2585255B8()
{
  v18 = v0;
  (*(v0[57] + 8))(v0[58], v0[56]);
  v1 = v0[53];
  v0[65] = v1;
  v2 = v0[55];

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[55];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136315394;

    *(v8 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v17);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s Connection event processing failed with error: %@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
    v13 = v0[55];
  }

  v14 = swift_task_alloc();
  v0[66] = v14;
  *v14 = v0;
  v14[1] = sub_258525C78;
  v15 = v0[55];

  return sub_258519A34(v1);
}

uint64_t sub_2585257F8()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 488);
  v6 = *(v2 + 480);
  if (v0)
  {
    v7 = sub_258525A10;
  }

  else
  {
    v7 = sub_258525934;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258525934()
{
  sub_2584A975C((v0 + 41));
  sub_258465168((v0 + 15), &qword_27F9319E8, &qword_25853F460);
  v1 = v0[59];
  v2 = v0[55];
  v3 = *(MEMORY[0x277D858B8] + 4);
  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_258525200;
  v5 = v0[58];
  v6 = v0[56];

  return MEMORY[0x2822005A8](v0 + 2, v2, v1, v6, v0 + 53);
}

uint64_t sub_258525A10()
{
  v21 = v0;
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  sub_2584A975C((v0 + 41));
  sub_258465168((v0 + 15), &qword_27F9319E8, &qword_25853F460);
  (*(v2 + 8))(v1, v3);
  v4 = v0[64];
  v0[65] = v4;
  v5 = v0[55];

  v6 = v4;
  v7 = sub_258532A2C();
  v8 = sub_2585338CC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[55];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;

    *(v11 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v20);
    *(v11 + 12) = 2112;
    v14 = v4;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_25845E000, v7, v8, "%s Connection event processing failed with error: %@", v11, 0x16u);
    sub_258465168(v12, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C82900](v13, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  else
  {
    v16 = v0[55];
  }

  v17 = swift_task_alloc();
  v0[66] = v17;
  *v17 = v0;
  v17[1] = sub_258525C78;
  v18 = v0[55];

  return sub_258519A34(v4);
}

uint64_t sub_258525C78()
{
  v1 = *v0;
  v2 = *(*v0 + 528);
  v6 = *v0;

  v3 = *(v1 + 488);
  v4 = *(v1 + 480);

  return MEMORY[0x2822009F8](sub_258525D98, v4, v3);
}

uint64_t sub_258525D98()
{
  v1 = *(v0 + 464);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258525E04(uint64_t a1)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = v1;
  return MEMORY[0x2822009F8](sub_258525E24, v1, 0);
}

uint64_t sub_258525E24()
{
  v42 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);

  sub_2584A97B0(v2, v0 + 16);
  v3 = sub_258532A2C();
  v4 = sub_2585338BC();
  sub_2584A975C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 312);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315394;

    *(v7 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v35);
    *(v7 + 12) = 2080;
    v9 = v5[3];
    v38 = v5[2];
    v39 = v9;
    v10 = v5[5];
    v40 = v5[4];
    v41 = v10;
    v11 = v5[1];
    v36 = *v5;
    v37 = v11;
    sub_2584A97B0(v5, v0 + 208);
    v12 = sub_2584B2E74();
    v14 = v13;
    v15 = v39;
    *(v0 + 144) = v38;
    *(v0 + 160) = v15;
    v16 = v41;
    *(v0 + 176) = v40;
    *(v0 + 192) = v16;
    v17 = v37;
    *(v0 + 112) = v36;
    *(v0 + 128) = v17;
    sub_2584A975C(v0 + 112);
    v18 = sub_2584713B0(v12, v14, &v35);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_25845E000, v3, v4, "%s received message:%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  else
  {
    v19 = *(v0 + 312);
  }

  v20 = *(v0 + 304);
  v21 = (*(v20 + 11) >> 59) & 6 | ((*(v20 + 9) & 0x2000000000000000) != 0);
  if (v21 > 6)
  {
    goto LABEL_16;
  }

  if (((1 << ((*(v20 + 11) >> 59) & 6 | ((*(v20 + 9) & 0x2000000000000000) != 0))) & 0x54) != 0)
  {
    v22 = *(v0 + 312);
    sub_258528EF4(v20, &OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation);
    v23 = *(v0 + 8);

    return v23();
  }

  if (((1 << ((*(v20 + 11) >> 59) & 6 | ((*(v20 + 9) & 0x2000000000000000) != 0))) & 0xA) != 0)
  {
    sub_258476AE4();
    v24 = swift_allocError();
    *(v0 + 344) = v24;
    *v25 = 19;
    v26 = swift_task_alloc();
    *(v0 + 352) = v26;
    *v26 = v0;
    v27 = sub_25852645C;
LABEL_17:
    v26[1] = v27;
    v34 = *(v0 + 312);

    return sub_258519188(v24);
  }

  if (v21 != 5)
  {
LABEL_16:
    v32 = byte_25853F562[*v20];
    sub_258476AE4();
    v24 = swift_allocError();
    *(v0 + 328) = v24;
    *v33 = v32;
    v26 = swift_task_alloc();
    *(v0 + 336) = v26;
    *v26 = v0;
    v27 = sub_258526348;
    goto LABEL_17;
  }

  v29 = swift_task_alloc();
  *(v0 + 320) = v29;
  *v29 = v0;
  v29[1] = sub_258526254;
  v30 = *(v0 + 304);
  v31 = *(v0 + 312);

  return sub_258526A58(v30);
}

uint64_t sub_258526254()
{
  v1 = *(*v0 + 320);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258526348()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25852645C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_258526570(uint64_t a1)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = v1;
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v4 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_258526628, v4, v3);
}

uint64_t sub_258526628()
{
  v42 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);

  sub_2584A97B0(v2, v0 + 16);
  v3 = sub_258532A2C();
  v4 = sub_2585338BC();
  sub_2584A975C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 312);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315394;

    *(v7 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v35);
    *(v7 + 12) = 2080;
    v9 = v5[3];
    v38 = v5[2];
    v39 = v9;
    v10 = v5[5];
    v40 = v5[4];
    v41 = v10;
    v11 = v5[1];
    v36 = *v5;
    v37 = v11;
    sub_2584A97B0(v5, v0 + 208);
    v12 = sub_2584B2E74();
    v14 = v13;
    v15 = v39;
    *(v0 + 144) = v38;
    *(v0 + 160) = v15;
    v16 = v41;
    *(v0 + 176) = v40;
    *(v0 + 192) = v16;
    v17 = v37;
    *(v0 + 112) = v36;
    *(v0 + 128) = v17;
    sub_2584A975C(v0 + 112);
    v18 = sub_2584713B0(v12, v14, &v35);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_25845E000, v3, v4, "%s received message:%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  else
  {
    v19 = *(v0 + 312);
  }

  v20 = *(v0 + 304);
  v21 = (*(v20 + 11) >> 59) & 6 | ((*(v20 + 9) & 0x2000000000000000) != 0);
  if (v21 > 6)
  {
    goto LABEL_16;
  }

  if (((1 << ((*(v20 + 11) >> 59) & 6 | ((*(v20 + 9) & 0x2000000000000000) != 0))) & 0x54) != 0)
  {
    v22 = *(v0 + 312);
    sub_258528EF4(v20, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation);
    v23 = *(v0 + 8);

    return v23();
  }

  if (((1 << ((*(v20 + 11) >> 59) & 6 | ((*(v20 + 9) & 0x2000000000000000) != 0))) & 0xA) != 0)
  {
    sub_258476AE4();
    v24 = swift_allocError();
    *(v0 + 344) = v24;
    *v25 = 19;
    v26 = swift_task_alloc();
    *(v0 + 352) = v26;
    *v26 = v0;
    v27 = sub_25852E29C;
LABEL_17:
    v26[1] = v27;
    v34 = *(v0 + 312);

    return sub_258519A34(v24);
  }

  if (v21 != 5)
  {
LABEL_16:
    v32 = byte_25853F562[*v20];
    sub_258476AE4();
    v24 = swift_allocError();
    *(v0 + 328) = v24;
    *v33 = v32;
    v26 = swift_task_alloc();
    *(v0 + 336) = v26;
    *v26 = v0;
    v27 = sub_25852E298;
    goto LABEL_17;
  }

  v29 = swift_task_alloc();
  *(v0 + 320) = v29;
  *v29 = v0;
  v29[1] = sub_25852E2A4;
  v30 = *(v0 + 304);
  v31 = *(v0 + 312);

  return sub_258527C84(v30);
}

uint64_t sub_258526A58(_OWORD *a1)
{
  *(v2 + 928) = v1;
  *(v2 + 920) = a1;
  v3 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v3;
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  *(v2 + 936) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258526B10, v1, 0);
}

uint64_t sub_258526B10()
{
  v1 = *(v0 + 928);
  if (*(v1 + 121) != 4)
  {
    sub_258476AE4();
    swift_allocError();
    *v27 = 0;
LABEL_9:
    swift_willThrow();
    goto LABEL_12;
  }

  v2 = *(v0 + 920);
  v3 = v2[1];
  *(v0 + 944) = v3;
  *(v0 + 952) = v2[4];
  *(v0 + 960) = v2[5];
  *(v0 + 968) = v2[6];
  *(v0 + 976) = v2[7];
  *(v0 + 984) = v2[8];
  if (((v2[11] >> 59) & 6 | ((v2[9] & 0x2000000000000000) != 0)) != 5)
  {
    sub_258476AE4();
    swift_allocError();
    *v28 = 19;
    goto LABEL_9;
  }

  v4 = v2[3];
  *(v0 + 992) = v4;
  v5 = v2[2];
  *(v0 + 1000) = v5;
  v6 = *v2;
  *(v0 + 1008) = *v2;
  *(v1 + 121) = 3;
  v7 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v7;
  v8 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v8;
  v9 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v9;
  v10 = *(v0 + 200) & 0xCFFFFFFFFFFFFFFFLL;
  *(v0 + 184) &= ~0x2000000000000000uLL;
  *(v0 + 200) = v10;
  sub_25852DBD0(v0 + 112, v0 + 496);
  sub_25852FFD0(4);
  v11 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
  *(v0 + 1016) = v11;
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2584EAE98();
  *(v0 + 672) = v11;
  *(v0 + 680) = &off_28698FE70;
  *(v0 + 648) = v14;
  *(v0 + 872) = v5;
  *(v0 + 880) = v4;
  *(v0 + 856) = v6;
  *(v0 + 864) = v3;
  sub_25852DC2C(v0 + 872, v0 + 888);
  sub_25852DC2C(v0 + 856, v0 + 904);
  sub_2584A7B8C(v5, v4);
  sub_2584B80A0(v5, v4);
  if (v15 && (v16 = sub_2584BA8B8(), v18 = v17, , v18))
  {
    v19 = sub_2584ADD54(v5, v4, v6, v3);
    *(v0 + 1024) = v20;
    if (v20)
    {
      v21 = v20;
      v39 = v19;
      v22 = *(v0 + 928);
      v23 = __swift_project_boxed_opaque_existential_1((v0 + 648), *(v0 + 672));
      v38 = sub_2585226C8(v16, v18, &OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
      v25 = v24;

      *(v0 + 1032) = v25;
      v26 = sub_2584BC58C();
      v35 = *v23;
      v36 = v26;
      v37 = swift_task_alloc();
      *(v0 + 1040) = v37;
      *v37 = v0;
      v37[1] = sub_258526F18;

      return sub_2584EB264(v0 + 608, v38, v25, v39, v21, v36);
    }

    v29 = *(v0 + 920);

    sub_258476AE4();
    swift_allocError();
    v31 = 13;
  }

  else
  {
    v29 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    v31 = 12;
  }

  *v30 = v31;
  swift_willThrow();
  sub_2584A975C(v29);
  sub_258467E20(v5, v4);
  sub_258467E20(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
LABEL_12:
  v32 = *(v0 + 936);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_258526F18()
{
  v2 = *v1;
  v3 = *(*v1 + 1040);
  v12 = *v1;
  *(*v1 + 1048) = v0;

  v4 = *(v2 + 1032);
  if (v0)
  {
    v5 = *(v2 + 1024);
    v6 = *(v2 + 928);

    v7 = sub_258527410;
    v8 = v6;
  }

  else
  {
    v9 = *(v2 + 1024);
    v10 = *(v2 + 928);
    *(v2 + 1120) = *(v2 + 608);
    *(v2 + 1056) = *(v2 + 616);
    *(v2 + 1072) = *(v2 + 632);

    v7 = sub_25852708C;
    v8 = v10;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_25852708C()
{
  v1 = *(v0 + 928);
  if (*(v1 + 121) != 3)
  {
    v12 = *(v0 + 1008);
    v13 = *(v0 + 1000);
    v14 = *(v0 + 992);
    v15 = *(v0 + 944);
    v16 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v18 = 4;
    }

    else
    {
      v18 = 5;
    }

    *v17 = v18;
    swift_willThrow();
    sub_2584A975C(v16);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v13, v14);
    sub_258467E20(v12, v15);
    goto LABEL_8;
  }

  v2 = *(v0 + 1048);
  v3 = *(v0 + 984);
  v4 = *(v0 + 936);
  v36 = *(v0 + 968);
  v37 = *(v0 + 952);
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 648), *(v0 + 672));
  *(v0 + 568) = v37;
  *(v0 + 584) = v36;
  *(v0 + 600) = v3;
  v6 = *v5;
  sub_2584EE23C((v0 + 568), v4);
  if (v2)
  {
    v7 = *(v0 + 1008);
    v8 = *(v0 + 1000);
    v9 = *(v0 + 992);
    v10 = *(v0 + 944);
    v11 = *(v0 + 920);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v8, v9);
    sub_258467E20(v7, v10);
    sub_2584A975C(v11);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
    v19 = *(v0 + 936);

    v20 = *(v0 + 8);

    return v20();
  }

  v22 = *(v0 + 1016);
  v23 = *(v0 + 936);
  v24 = *(v0 + 928);
  v25 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
  v26 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v23, v24 + v26, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  sub_258464C30(v0 + 648, v0 + 688);
  v27 = *(v0 + 712);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 688, v27);
  v29 = *(v27 - 8);
  v30 = *(v29 + 64) + 15;
  v31 = swift_task_alloc();
  (*(v29 + 16))(v31, v28, v27);
  v32 = *v31;
  *(v0 + 752) = v22;
  *(v0 + 760) = &off_28698FE70;
  *(v0 + 728) = v32;
  v33 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v24 + v33));
  sub_258464C18((v0 + 728), v24 + v33);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 688));

  v34 = swift_task_alloc();
  *(v0 + 1088) = v34;
  *v34 = v0;
  v34[1] = sub_2585274B0;
  v35 = *(v0 + 928);

  return sub_258522910();
}

uint64_t sub_258527410()
{
  v1 = v0[126];
  v2 = v0[118];
  v3 = v0[115];
  sub_258467E20(v0[125], v0[124]);
  sub_258467E20(v1, v2);
  sub_2584A975C(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);
  v4 = v0[131];
  v5 = v0[117];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2585274B0()
{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v4 = *v1;
  *(*v1 + 1096) = v0;

  v5 = *(v2 + 928);
  if (v0)
  {
    v6 = sub_25852783C;
  }

  else
  {
    v6 = sub_2585275DC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2585275DC()
{
  v1 = *(v0 + 928);
  if (*(v1 + 121) == 3)
  {
    v2 = *(v0 + 1120);
    v3 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
    v4 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
    v5 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
    v19 = *(v0 + 1072);
    v21 = *(v0 + 1056);
    __swift_project_boxed_opaque_existential_1(v3, v4);
    *(v0 + 208) = v2;
    *(v0 + 232) = v19;
    *(v0 + 216) = v21;
    *(v0 + 280) = 0;
    *(v0 + 296) = 0x3000000000000000;
    v6 = *(v5 + 80);
    sub_2584ABA3C(v0 + 608, v0 + 768);
    v20 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 1104) = v8;
    *v8 = v0;
    v8[1] = sub_2585278E8;

    return v20(v0 + 208, v4, v5);
  }

  else
  {
    v10 = *(v0 + 1008);
    v11 = *(v0 + 1000);
    v12 = *(v0 + 992);
    v13 = *(v0 + 944);
    v14 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v16 = 4;
    }

    else
    {
      v16 = 5;
    }

    *v15 = v16;
    swift_willThrow();
    sub_2584A975C(v14);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v11, v12);
    sub_258467E20(v10, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
    v17 = *(v0 + 936);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_25852783C()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[118];
  sub_2584A975C(v0[115]);
  sub_2584AB9E8((v0 + 76));
  sub_258467E20(v2, v3);
  sub_258467E20(v1, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);
  v5 = v0[137];
  v6 = v0[117];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2585278E8()
{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v4 = *v1;
  *(v2 + 1112) = v0;

  v5 = *(v2 + 928);
  v6 = *(v2 + 224);
  if (v0)
  {
    *(v2 + 304) = *(v2 + 208);
    *(v2 + 320) = v6;
    v7 = *(v2 + 240);
    v8 = *(v2 + 256);
    v9 = *(v2 + 288);
    *(v2 + 368) = *(v2 + 272);
    *(v2 + 384) = v9;
    *(v2 + 336) = v7;
    *(v2 + 352) = v8;
    sub_2584A975C(v2 + 304);
    v10 = sub_258527BCC;
  }

  else
  {
    *(v2 + 400) = *(v2 + 208);
    *(v2 + 416) = v6;
    v11 = *(v2 + 240);
    v12 = *(v2 + 256);
    v13 = *(v2 + 288);
    *(v2 + 464) = *(v2 + 272);
    *(v2 + 480) = v13;
    *(v2 + 432) = v11;
    *(v2 + 448) = v12;
    sub_2584A975C(v2 + 400);
    v10 = sub_258527A58;
  }

  return MEMORY[0x2822009F8](v10, v5, 0);
}

uint64_t sub_258527A58()
{
  v1 = v0[116];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[118];
  if (*(v1 + 121) == 3)
  {
    v6 = v0[117];
    v7 = v0[115];
    *(v1 + 121) = 4;
    sub_25852FFD0(3);
    sub_2584A975C(v7);
    sub_2584AB9E8((v0 + 76));
    sub_258467E20(v3, v4);
    sub_258467E20(v2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

    v8 = v0[1];
  }

  else
  {
    v9 = v0[115];
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    *v10 = v11;
    swift_willThrow();
    sub_2584A975C(v9);
    sub_2584AB9E8((v0 + 76));
    sub_258467E20(v3, v4);
    sub_258467E20(v2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);
    v12 = v0[117];

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_258527BCC()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[118];
  v5 = v0[115];
  sub_2584AB9E8((v0 + 76));
  sub_258467E20(v2, v3);
  sub_258467E20(v1, v4);
  sub_2584A975C(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);
  v6 = v0[139];
  v7 = v0[117];

  v8 = v0[1];

  return v8();
}

uint64_t sub_258527C84(_OWORD *a1)
{
  *(v2 + 928) = v1;
  *(v2 + 920) = a1;
  v3 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v3;
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  *(v2 + 936) = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v8 = sub_25853362C();
  *(v2 + 944) = v8;
  *(v2 + 952) = v7;

  return MEMORY[0x2822009F8](sub_258527D94, v8, v7);
}

uint64_t sub_258527D94()
{
  v1 = *(v0 + 928);
  if (*(v1 + 232) != 4)
  {
    sub_258476AE4();
    swift_allocError();
    *v27 = 0;
LABEL_9:
    swift_willThrow();
    goto LABEL_12;
  }

  v2 = *(v0 + 920);
  v3 = v2[1];
  *(v0 + 960) = v3;
  *(v0 + 968) = v2[4];
  *(v0 + 976) = v2[5];
  *(v0 + 984) = v2[6];
  *(v0 + 992) = v2[7];
  *(v0 + 1000) = v2[8];
  if (((v2[11] >> 59) & 6 | ((v2[9] & 0x2000000000000000) != 0)) != 5)
  {
    sub_258476AE4();
    swift_allocError();
    *v28 = 19;
    goto LABEL_9;
  }

  v4 = v2[3];
  *(v0 + 1008) = v4;
  v5 = v2[2];
  *(v0 + 1016) = v5;
  v6 = *v2;
  *(v0 + 1024) = *v2;
  *(v1 + 232) = 3;
  v7 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v7;
  v8 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v8;
  v9 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v9;
  v10 = *(v0 + 200) & 0xCFFFFFFFFFFFFFFFLL;
  *(v0 + 184) &= ~0x2000000000000000uLL;
  *(v0 + 200) = v10;
  sub_25852DBD0(v0 + 112, v0 + 496);
  sub_2585084C8(4);
  v11 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
  *(v0 + 1032) = v11;
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2584EAE98();
  *(v0 + 672) = v11;
  *(v0 + 680) = &off_28698FE70;
  *(v0 + 648) = v14;
  *(v0 + 872) = v5;
  *(v0 + 880) = v4;
  *(v0 + 856) = v6;
  *(v0 + 864) = v3;
  sub_25852DC2C(v0 + 872, v0 + 888);
  sub_25852DC2C(v0 + 856, v0 + 904);
  sub_2584A7B8C(v5, v4);
  sub_2584B80A0(v5, v4);
  if (v15 && (v16 = sub_2584BA8B8(), v18 = v17, , v18))
  {
    v19 = sub_2584ADD54(v5, v4, v6, v3);
    *(v0 + 1040) = v20;
    if (v20)
    {
      v21 = v20;
      v39 = v19;
      v22 = *(v0 + 928);
      v23 = __swift_project_boxed_opaque_existential_1((v0 + 648), *(v0 + 672));
      v38 = sub_2585226C8(v16, v18, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
      v25 = v24;

      *(v0 + 1048) = v25;
      v26 = sub_2584BC58C();
      v35 = *v23;
      v36 = v26;
      v37 = swift_task_alloc();
      *(v0 + 1056) = v37;
      *v37 = v0;
      v37[1] = sub_25852819C;

      return sub_2584EB264(v0 + 608, v38, v25, v39, v21, v36);
    }

    v29 = *(v0 + 920);

    sub_258476AE4();
    swift_allocError();
    v31 = 13;
  }

  else
  {
    v29 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    v31 = 12;
  }

  *v30 = v31;
  swift_willThrow();
  sub_2584A975C(v29);
  sub_258467E20(v5, v4);
  sub_258467E20(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
LABEL_12:
  v32 = *(v0 + 936);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_25852819C()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v11 = *v1;
  *(*v1 + 1064) = v0;

  v4 = *(v2 + 1048);
  if (v0)
  {
    v5 = *(v2 + 1040);

    v6 = *(v2 + 952);
    v7 = *(v2 + 944);
    v8 = sub_258528684;
  }

  else
  {
    v9 = *(v2 + 1040);
    *(v2 + 1136) = *(v2 + 608);
    *(v2 + 1072) = *(v2 + 616);
    *(v2 + 1088) = *(v2 + 632);

    v6 = *(v2 + 952);
    v7 = *(v2 + 944);
    v8 = sub_258528300;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_258528300()
{
  v1 = *(v0 + 928);
  if (*(v1 + 232) != 3)
  {
    v12 = *(v0 + 1024);
    v13 = *(v0 + 1016);
    v14 = *(v0 + 1008);
    v15 = *(v0 + 960);
    v16 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v18 = 4;
    }

    else
    {
      v18 = 5;
    }

    *v17 = v18;
    swift_willThrow();
    sub_2584A975C(v16);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v13, v14);
    sub_258467E20(v12, v15);
    goto LABEL_8;
  }

  v2 = *(v0 + 1064);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 936);
  v36 = *(v0 + 984);
  v37 = *(v0 + 968);
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 648), *(v0 + 672));
  *(v0 + 568) = v37;
  *(v0 + 584) = v36;
  *(v0 + 600) = v3;
  v6 = *v5;
  sub_2584EE23C((v0 + 568), v4);
  if (v2)
  {
    v7 = *(v0 + 1024);
    v8 = *(v0 + 1016);
    v9 = *(v0 + 1008);
    v10 = *(v0 + 960);
    v11 = *(v0 + 920);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v8, v9);
    sub_258467E20(v7, v10);
    sub_2584A975C(v11);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
    v19 = *(v0 + 936);

    v20 = *(v0 + 8);

    return v20();
  }

  v22 = *(v0 + 1032);
  v23 = *(v0 + 936);
  v24 = *(v0 + 928);
  v25 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
  v26 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v23, v24 + v26, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  sub_258464C30(v0 + 648, v0 + 688);
  v27 = *(v0 + 712);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 688, v27);
  v29 = *(v27 - 8);
  v30 = *(v29 + 64) + 15;
  v31 = swift_task_alloc();
  (*(v29 + 16))(v31, v28, v27);
  v32 = *v31;
  *(v0 + 752) = v22;
  *(v0 + 760) = &off_28698FE70;
  *(v0 + 728) = v32;
  v33 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v24 + v33));
  sub_258464C18((v0 + 728), v24 + v33);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 688));

  v34 = swift_task_alloc();
  *(v0 + 1104) = v34;
  *v34 = v0;
  v34[1] = sub_258528724;
  v35 = *(v0 + 928);

  return sub_258523560();
}

uint64_t sub_258528684()
{
  v1 = v0[128];
  v2 = v0[120];
  v3 = v0[115];
  sub_258467E20(v0[127], v0[126]);
  sub_258467E20(v1, v2);
  sub_2584A975C(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);
  v4 = v0[133];
  v5 = v0[117];

  v6 = v0[1];

  return v6();
}

uint64_t sub_258528724()
{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v4 = *v1;
  *(*v1 + 1112) = v0;

  v5 = *(v2 + 952);
  v6 = *(v2 + 944);
  if (v0)
  {
    v7 = sub_258528AC0;
  }

  else
  {
    v7 = sub_258528860;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_258528860()
{
  v1 = *(v0 + 928);
  if (*(v1 + 232) == 3)
  {
    v2 = *(v0 + 1136);
    v3 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
    v4 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
    v5 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
    v19 = *(v0 + 1088);
    v21 = *(v0 + 1072);
    __swift_project_boxed_opaque_existential_1(v3, v4);
    *(v0 + 208) = v2;
    *(v0 + 232) = v19;
    *(v0 + 216) = v21;
    *(v0 + 280) = 0;
    *(v0 + 296) = 0x3000000000000000;
    v6 = *(v5 + 80);
    sub_2584ABA3C(v0 + 608, v0 + 768);
    v20 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 1120) = v8;
    *v8 = v0;
    v8[1] = sub_258528B6C;

    return v20(v0 + 208, v4, v5);
  }

  else
  {
    v10 = *(v0 + 1024);
    v11 = *(v0 + 1016);
    v12 = *(v0 + 1008);
    v13 = *(v0 + 960);
    v14 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v16 = 4;
    }

    else
    {
      v16 = 5;
    }

    *v15 = v16;
    swift_willThrow();
    sub_2584A975C(v14);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v11, v12);
    sub_258467E20(v10, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
    v17 = *(v0 + 936);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_258528AC0()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[120];
  sub_2584A975C(v0[115]);
  sub_2584AB9E8((v0 + 76));
  sub_258467E20(v2, v3);
  sub_258467E20(v1, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);
  v5 = v0[139];
  v6 = v0[117];

  v7 = v0[1];

  return v7();
}

uint64_t sub_258528B6C()
{
  v2 = *v1;
  v3 = *(*v1 + 1120);
  v15 = *v1;
  *(*v1 + 1128) = v0;

  v4 = *(v2 + 224);
  if (v0)
  {
    *(v2 + 304) = *(v2 + 208);
    *(v2 + 320) = v4;
    v5 = *(v2 + 240);
    v6 = *(v2 + 256);
    v7 = *(v2 + 288);
    *(v2 + 368) = *(v2 + 272);
    *(v2 + 384) = v7;
    *(v2 + 336) = v5;
    *(v2 + 352) = v6;
    sub_2584A975C(v2 + 304);
    v8 = *(v2 + 952);
    v9 = *(v2 + 944);
    v10 = sub_258528E3C;
  }

  else
  {
    *(v2 + 400) = *(v2 + 208);
    *(v2 + 416) = v4;
    v11 = *(v2 + 240);
    v12 = *(v2 + 256);
    v13 = *(v2 + 288);
    *(v2 + 464) = *(v2 + 272);
    *(v2 + 480) = v13;
    *(v2 + 432) = v11;
    *(v2 + 448) = v12;
    sub_2584A975C(v2 + 400);
    v8 = *(v2 + 952);
    v9 = *(v2 + 944);
    v10 = sub_258528CC8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_258528CC8()
{
  v1 = v0[116];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[120];
  if (*(v1 + 232) == 3)
  {
    v6 = v0[117];
    v7 = v0[115];
    *(v1 + 232) = 4;
    sub_2585084C8(3);
    sub_2584A975C(v7);
    sub_2584AB9E8((v0 + 76));
    sub_258467E20(v3, v4);
    sub_258467E20(v2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

    v8 = v0[1];
  }

  else
  {
    v9 = v0[115];
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    *v10 = v11;
    swift_willThrow();
    sub_2584A975C(v9);
    sub_2584AB9E8((v0 + 76));
    sub_258467E20(v3, v4);
    sub_258467E20(v2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);
    v12 = v0[117];

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_258528E3C()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[120];
  v5 = v0[115];
  sub_2584AB9E8((v0 + 76));
  sub_258467E20(v2, v3);
  sub_258467E20(v1, v4);
  sub_2584A975C(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);
  v6 = v0[141];
  v7 = v0[117];

  v8 = v0[1];

  return v8();
}

uint64_t sub_258528EF4(__int128 *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v27[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v27[-v19];
  v21 = *a2;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v21, v14, &qword_27F931820, &unk_25853F380);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_258465168(v14, &qword_27F931820, &unk_25853F380);
    sub_258476AE4();
    swift_allocError();
    *v22 = 20;
    return swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v20, v14, v15);
    v24 = a1[3];
    v30 = a1[2];
    v31 = v24;
    v25 = a1[5];
    v32 = a1[4];
    v33 = v25;
    v26 = a1[1];
    v28 = *a1;
    v29 = v26;
    sub_2584A97B0(a1, v27);
    sub_25853364C();
    (*(v16 + 8))(v20, v15);
    (*(v16 + 56))(v11, 1, 1, v15);
    swift_beginAccess();
    sub_2584AC5D0(v11, v4 + v21, &qword_27F931820, &unk_25853F380);
    return swift_endAccess();
  }
}

uint64_t sub_2585291B0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v26[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v26[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v15, a2 + v18, &qword_27F931820, &unk_25853F380);
  swift_endAccess();
  v19 = sub_25853368C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
  v21 = swift_allocObject();
  v22 = a3[3];
  *(v21 + 72) = a3[2];
  *(v21 + 88) = v22;
  v23 = a3[5];
  *(v21 + 104) = a3[4];
  *(v21 + 120) = v23;
  v24 = a3[1];
  *(v21 + 40) = *a3;
  *(v21 + 16) = a2;
  *(v21 + 24) = v20;
  *(v21 + 32) = a2;
  *(v21 + 56) = v24;
  swift_retain_n();
  sub_2584A97B0(a3, v26);
  sub_2585135CC(0, 0, v10, &unk_25853F540, v21);
}

uint64_t sub_25852945C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v26[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v26[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v15, a2 + v18, &qword_27F931820, &unk_25853F380);
  swift_endAccess();
  v19 = sub_25853368C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v21 = swift_allocObject();
  v22 = a3[3];
  *(v21 + 72) = a3[2];
  *(v21 + 88) = v22;
  v23 = a3[5];
  *(v21 + 104) = a3[4];
  *(v21 + 120) = v23;
  v24 = a3[1];
  *(v21 + 40) = *a3;
  *(v21 + 16) = a2;
  *(v21 + 24) = v20;
  *(v21 + 32) = a2;
  *(v21 + 56) = v24;
  swift_retain_n();
  sub_2584A97B0(a3, v26);
  sub_2585135CC(0, 0, v10, &unk_25853F450, v21);
}

uint64_t sub_258529708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v5[23] = v7;
  v8 = *(v7 - 8);
  v5[24] = v8;
  v9 = *(v8 + 64) + 15;
  v5[25] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25852981C, a4, 0);
}

uint64_t sub_25852981C()
{
  v1 = *(v0 + 176);
  v2 = (*(v0 + 168) + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v8;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  v9 = *(v4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 224) = v11;
  *v11 = v0;
  v11[1] = sub_258529978;

  return v13(v0 + 16, v3, v4);
}

uint64_t sub_258529978()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {
    v4 = v3[21];

    return MEMORY[0x2822009F8](sub_258529AC8, v4, 0);
  }

  else
  {
    v6 = v3[26];
    v5 = v3[27];
    v7 = v3[25];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_258529AC8()
{
  v32 = v0;
  v1 = v0[29];
  v2 = v0[21];

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v8 = 136315394;

    *(v8 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v31);
    *(v8 + 12) = 2112;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s Send message failed with error: %@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
    v13 = v0[21];
  }

  v14 = v0[27];
  v15 = v0[23];
  v16 = v0[24];
  v17 = v0[21];
  v18 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v17 + v18, v14, &qword_27F931820, &unk_25853F380);
  v19 = (*(v16 + 48))(v14, 1, v15);
  v20 = v0[29];
  v21 = v0[27];
  if (v19)
  {

    sub_258465168(v21, &qword_27F931820, &unk_25853F380);
  }

  else
  {
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[23];
    (*(v23 + 16))(v22, v0[27], v24);
    sub_258465168(v21, &qword_27F931820, &unk_25853F380);
    v0[20] = v20;
    sub_25853363C();
    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[26];
  (*(v0[24] + 56))(v25, 1, 1, v0[23]);
  swift_beginAccess();
  sub_2584AC5D0(v25, v17 + v18, &qword_27F931820, &unk_25853F380);
  swift_endAccess();
  v27 = v0[26];
  v26 = v0[27];
  v28 = v0[25];

  v29 = v0[1];

  return v29();
}

uint64_t sub_258529E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v11 = sub_25853362C();
  v5[28] = v11;
  v5[29] = v10;

  return MEMORY[0x2822009F8](sub_258529F80, v11, v10);
}

uint64_t sub_258529F80()
{
  v1 = *(v0 + 176);
  v2 = (*(v0 + 168) + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v8;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  v9 = *(v4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 240) = v11;
  *v11 = v0;
  v11[1] = sub_25852A0DC;

  return v13(v0 + 16, v3, v4);
}

uint64_t sub_25852A0DC()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {
    v4 = v3[28];
    v5 = v3[29];

    return MEMORY[0x2822009F8](sub_25852A228, v4, v5);
  }

  else
  {
    v7 = v3[26];
    v6 = v3[27];
    v8 = v3[25];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_25852A228()
{
  v32 = v0;
  v1 = v0[31];
  v2 = v0[21];

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v8 = 136315394;

    *(v8 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v31);
    *(v8 + 12) = 2112;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s Send message failed with error: %@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
    v13 = v0[21];
  }

  v14 = v0[27];
  v15 = v0[23];
  v16 = v0[24];
  v17 = v0[21];
  v18 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v17 + v18, v14, &qword_27F931820, &unk_25853F380);
  v19 = (*(v16 + 48))(v14, 1, v15);
  v20 = v0[31];
  v21 = v0[27];
  if (v19)
  {

    sub_258465168(v21, &qword_27F931820, &unk_25853F380);
  }

  else
  {
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[23];
    (*(v23 + 16))(v22, v0[27], v24);
    sub_258465168(v21, &qword_27F931820, &unk_25853F380);
    v0[20] = v20;
    sub_25853363C();
    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[26];
  (*(v0[24] + 56))(v25, 1, 1, v0[23]);
  swift_beginAccess();
  sub_2584AC5D0(v25, v17 + v18, &qword_27F931820, &unk_25853F380);
  swift_endAccess();
  v27 = v0[26];
  v26 = v0[27];
  v28 = v0[25];

  v29 = v0[1];

  return v29();
}

uint64_t sub_25852A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D8, &qword_25853F440);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25852A6B0, a5, 0);
}

uint64_t sub_25852A6B0()
{
  v1 = v0[10];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  sub_2585336FC();
  v3 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
  v4 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_logger;
  v0[11] = v3;
  v0[12] = v4;
  v0[13] = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStreamContinuation;
  v5 = v0[4];
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_25852A7E4;
  v8 = v0[10];
  v9 = v0[8];

  return MEMORY[0x2822005A8](v0 + 17, v5, v3, v9, v0 + 2);
}

uint64_t sub_25852A7E4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;

  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_25852ABE0;
  }

  else
  {
    v5 = sub_25852A8F8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25852A8F8()
{
  v30 = v0;
  v1 = *(v0 + 136);
  if (v1 == 2)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 32);

  v4 = sub_258532A2C();
  v5 = sub_2585338EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;

    *(v8 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v29);
    *(v8 + 12) = 2080;
    *(v0 + 138) = v1 & 1;
    v10 = sub_25853347C();
    v12 = sub_2584713B0(v10, v11, &v29);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s received media stream event %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
    v13 = *(v0 + 32);
  }

  if (sub_25853376C())
  {
LABEL_6:
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v14 = *(v0 + 80);
    v15 = *(v0 + 56);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      v18 = *(v0 + 104);
      v20 = *(v0 + 48);
      v19 = *(v0 + 56);
      v22 = *(v0 + 32);
      v21 = *(v0 + 40);
      *(v0 + 137) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
      sub_2585336CC();
      (*(v20 + 8))(v19, v21);
    }

    v23 = *(v0 + 88);
    v24 = *(v0 + 32);
    v25 = *(MEMORY[0x277D858B8] + 4);
    v26 = swift_task_alloc();
    *(v0 + 112) = v26;
    *v26 = v0;
    v26[1] = sub_25852A7E4;
    v27 = *(v0 + 80);
    v28 = *(v0 + 64);

    return MEMORY[0x2822005A8](v0 + 136, v24, v23, v28, v0 + 16);
  }
}

uint64_t sub_25852ABE0()
{
  v19 = v0;
  v1 = v0[12];
  v2 = v0[4];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v3 = v0[2];
  v0[15] = v3;

  v4 = v3;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[4];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315394;

    *(v9 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v18);
    *(v9 + 12) = 2112;
    v12 = v3;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_25845E000, v5, v6, "%s Stream failed with error: %@", v9, 0x16u);
    sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  else
  {
    v14 = v0[4];
  }

  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_25852AE20;
  v16 = v0[4];

  return sub_258519188(v3);
}

uint64_t sub_25852AE20()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25852AF30, v2, 0);
}

uint64_t sub_25852AF30()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25852AFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D8, &qword_25853F440);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  v5[11] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v13 = sub_25853362C();
  v5[12] = v13;
  v5[13] = v12;

  return MEMORY[0x2822009F8](sub_25852B138, v13, v12);
}

uint64_t sub_25852B138()
{
  v1 = v0[10];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  sub_2585336FC();
  v3 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStreamContinuation;
  v0[14] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_logger;
  v0[15] = v3;
  v4 = v0[11];
  v5 = v0[4];
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_25852B234;
  v8 = v0[10];
  v9 = v0[8];

  return MEMORY[0x2822005A8](v0 + 19, v5, v4, v9, v0 + 2);
}

uint64_t sub_25852B234()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;

  v4 = *(v2 + 96);
  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_25852B62C;
  }

  else
  {
    v6 = sub_25852B344;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25852B344()
{
  v30 = v0;
  v1 = *(v0 + 152);
  if (v1 == 2)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 32);

  v4 = sub_258532A2C();
  v5 = sub_2585338EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;

    *(v8 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v29);
    *(v8 + 12) = 2080;
    *(v0 + 154) = v1 & 1;
    v10 = sub_25853347C();
    v12 = sub_2584713B0(v10, v11, &v29);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s received media stream event %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
    v13 = *(v0 + 32);
  }

  if (sub_25853376C())
  {
LABEL_6:
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v14 = *(v0 + 80);
    v15 = *(v0 + 56);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      v18 = *(v0 + 120);
      v20 = *(v0 + 48);
      v19 = *(v0 + 56);
      v22 = *(v0 + 32);
      v21 = *(v0 + 40);
      *(v0 + 153) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
      sub_2585336CC();
      (*(v20 + 8))(v19, v21);
    }

    v23 = *(v0 + 88);
    v24 = *(v0 + 32);
    v25 = *(MEMORY[0x277D858B8] + 4);
    v26 = swift_task_alloc();
    *(v0 + 128) = v26;
    *v26 = v0;
    v26[1] = sub_25852B234;
    v27 = *(v0 + 80);
    v28 = *(v0 + 64);

    return MEMORY[0x2822005A8](v0 + 152, v24, v23, v28, v0 + 16);
  }
}

uint64_t sub_25852B62C()
{
  v19 = v0;
  v1 = v0[14];
  v2 = v0[4];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v3 = v0[2];
  v0[17] = v3;

  v4 = v3;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[4];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315394;

    *(v9 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v18);
    *(v9 + 12) = 2112;
    v12 = v3;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_25845E000, v5, v6, "%s Stream failed with error: %@", v9, 0x16u);
    sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  else
  {
    v14 = v0[4];
  }

  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_25852B86C;
  v16 = v0[4];

  return sub_258519A34(v3);
}

uint64_t sub_25852B86C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_25852B98C, v4, v3);
}

uint64_t sub_25852B98C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25852BA04()
{
  v1[18] = v0;
  v2 = sub_258532A4C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for MediaConnectionPrerequisites();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25852BB64, v0, 0);
}

uint64_t sub_25852BB64()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v1, &qword_27F930580, &unk_2585382B0);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[26];
  if (v6)
  {
    sub_258465168(v7, &qword_27F930580, &unk_2585382B0);
LABEL_4:
    sub_258476AE4();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();
    v17 = v0[25];
    v16 = v0[26];
    v19 = v0[21];
    v18 = v0[22];

    v20 = v0[1];

    return v20();
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[26];
  sub_25852D71C(v7, v8);
  sub_258465168(v10, &qword_27F930580, &unk_2585382B0);
  v11 = (v8 + *(v9 + 24));
  v12 = *(v11 + 2);
  v13 = *v11;
  v14 = *(v11 + 6);
  sub_25852D594(v8);
  if (v14)
  {
    goto LABEL_4;
  }

  v22 = v13 | (v12 << 32);
  v23 = v0[21];
  v24 = v0[22];
  v49 = v24;
  v25 = v0[19];
  v26 = v0[20];
  v27 = v0[18];
  v28.i64[0] = 0xFFFFFFFFFFFFLL;
  v28.i64[1] = 0xFFFFFFFFFFFFLL;
  v29 = vandq_s8(vdupq_n_s64(v22), v28);
  v48 = vshlq_u64(v29, xmmword_25853F2F0);
  v47 = vshlq_u64(v29, xmmword_25853F300);
  v45 = *(v27 + 157);
  v46 = *(v27 + 156);
  v30 = *(v26 + 16);
  v31 = *(v27 + 140);
  v43 = v31;
  v44 = *(v27 + 124);
  v30(v24, v27 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_logger, v25);
  v30(v23, v24, v25);
  v32 = type metadata accessor for WiFiP2PBackedTrafficRegistration();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v35 + 112) = 0;
  v36 = (v35 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
  *v36 = 0;
  v36[1] = 0;
  *(v35 + 132) = v43;
  *(v35 + 116) = v44;
  *(v35 + 148) = v46;
  *(v35 + 149) = v45;
  *(v35 + 150) = v22;
  v37.i64[1] = v48.i64[1];
  v38 = vmovn_s64(v47);
  *v37.i8 = vmovn_s64(v48);
  v37.i16[1] = v37.i16[2];
  v37.i16[2] = v38.i16[0];
  v37.i16[3] = v38.i16[2];
  *(v35 + 151) = vmovn_s16(v37).u32[0];
  *(v35 + 155) = BYTE5(v22);
  v30(v35 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_logger, v23, v25);
  v39 = [objc_allocWithZone(MEMORY[0x277D7BA60]) init];
  v40 = *(v26 + 8);
  v40(v23, v25);
  *(v35 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_awdlServiceDiscoveryManager) = v39;
  v0[5] = v32;
  v0[6] = &off_286990CE8;
  v0[2] = v35;
  v40(v49, v25);
  v41 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[27] = v41;
  v42 = *v41;

  return MEMORY[0x2822009F8](sub_25852BF18, v42, 0);
}

uint64_t sub_25852BF18()
{
  v1 = **(v0 + 216);
  sub_258506FA4(sub_25852E014, *(v0 + 144));
  *(v0 + 224) = 0;
  v2 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_25852BFCC, v2, 0);
}

uint64_t sub_25852BFCC()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  sub_258464C30((v0 + 2), (v0 + 7));
  v6 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC5D0((v0 + 7), v5 + v6, &qword_27F931828, &unk_25853EB90);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25852C0BC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[21];
  v4 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25852C14C()
{
  v1[18] = v0;
  v2 = sub_258532A4C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for MediaConnectionPrerequisites();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v10 = sub_25853362C();
  v1[27] = v10;
  v1[28] = v9;

  return MEMORY[0x2822009F8](sub_25852C300, v10, v9);
}

uint64_t sub_25852C300()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v1, &qword_27F930580, &unk_2585382B0);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[26];
  if (v6)
  {
    sub_258465168(v7, &qword_27F930580, &unk_2585382B0);
LABEL_4:
    sub_258476AE4();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();
    v17 = v0[25];
    v16 = v0[26];
    v19 = v0[21];
    v18 = v0[22];

    v20 = v0[1];

    return v20();
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[26];
  sub_25852D71C(v7, v8);
  sub_258465168(v10, &qword_27F930580, &unk_2585382B0);
  v11 = (v8 + *(v9 + 24));
  v12 = *(v11 + 2);
  v13 = *v11;
  v14 = *(v11 + 6);
  sub_25852D594(v8);
  if (v14)
  {
    goto LABEL_4;
  }

  v22 = v13 | (v12 << 32);
  v23 = v0[21];
  v24 = v0[22];
  v49 = v24;
  v25 = v0[19];
  v26 = v0[20];
  v27 = v0[18];
  v28.i64[0] = 0xFFFFFFFFFFFFLL;
  v28.i64[1] = 0xFFFFFFFFFFFFLL;
  v29 = vandq_s8(vdupq_n_s64(v22), v28);
  v48 = vshlq_u64(v29, xmmword_25853F2F0);
  v47 = vshlq_u64(v29, xmmword_25853F300);
  v45 = *(v27 + 269);
  v46 = *(v27 + 268);
  v30 = *(v26 + 16);
  v31 = *(v27 + 252);
  v43 = v31;
  v44 = *(v27 + 236);
  v30(v24, v27 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_logger, v25);
  v30(v23, v24, v25);
  v32 = type metadata accessor for WiFiP2PBackedTrafficRegistration();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v35 + 112) = 0;
  v36 = (v35 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
  *v36 = 0;
  v36[1] = 0;
  *(v35 + 132) = v43;
  *(v35 + 116) = v44;
  *(v35 + 148) = v46;
  *(v35 + 149) = v45;
  *(v35 + 150) = v22;
  v37.i64[1] = v48.i64[1];
  v38 = vmovn_s64(v47);
  *v37.i8 = vmovn_s64(v48);
  v37.i16[1] = v37.i16[2];
  v37.i16[2] = v38.i16[0];
  v37.i16[3] = v38.i16[2];
  *(v35 + 151) = vmovn_s16(v37).u32[0];
  *(v35 + 155) = BYTE5(v22);
  v30(v35 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_logger, v23, v25);
  v39 = [objc_allocWithZone(MEMORY[0x277D7BA60]) init];
  v40 = *(v26 + 8);
  v40(v23, v25);
  *(v35 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_awdlServiceDiscoveryManager) = v39;
  v0[5] = v32;
  v0[6] = &off_286990CE8;
  v0[2] = v35;
  v40(v49, v25);
  v41 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[29] = v41;
  v42 = *v41;

  return MEMORY[0x2822009F8](sub_25852C6B4, v42, 0);
}

uint64_t sub_25852C6B4()
{
  v1 = **(v0 + 232);
  sub_258506FA4(sub_25852D780, *(v0 + 144));
  *(v0 + 240) = 0;
  v2 = *(v0 + 144);

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_25852C760, v3, v4);
}

uint64_t sub_25852C760()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  sub_258464C30((v0 + 2), (v0 + 7));
  v6 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC5D0((v0 + 7), v5 + v6, &qword_27F931828, &unk_25853EB90);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25852C850()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[21];
  v4 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25852C8E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v15 - v5;

  v7 = sub_258532A2C();
  v8 = sub_2585338EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;

    *(v9 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v16);
    _os_log_impl(&dword_25845E000, v7, v8, "%s TrafficRegistration interrupted", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  else
  {
  }

  v11 = sub_25853368C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v12;
  v13[4] = a1;
  swift_retain_n();
  sub_2585135CC(0, 0, v6, &unk_25853F530, v13);
}

uint64_t sub_25852CB28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v15 - v5;

  v7 = sub_258532A2C();
  v8 = sub_2585338EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;

    *(v9 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v16);
    _os_log_impl(&dword_25845E000, v7, v8, "%s TrafficRegistration interrupted", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  else
  {
  }

  v11 = sub_25853368C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v12;
  v13[4] = a1;
  swift_retain_n();
  sub_2585135CC(0, 0, v6, &unk_25853F420, v13);
}

uint64_t sub_25852CD90()
{
  sub_258476AE4();
  v1 = swift_allocError();
  v0[3] = v1;
  *v2 = 15;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25852CE68;
  v4 = v0[2];

  return sub_258519188(v1);
}

uint64_t sub_25852CE68()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25852CF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VideoStreamAVConference();
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v6 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_25852D034, v6, v5);
}

uint64_t sub_25852D034()
{
  sub_258476AE4();
  v1 = swift_allocError();
  v0[3] = v1;
  *v2 = 15;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25852E2A0;
  v4 = v0[2];

  return sub_258519A34(v1);
}

uint64_t sub_25852D10C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_258513B98(a1);
}

uint64_t sub_25852D1BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_258516F24();
}

uint64_t sub_25852D25C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_258517F08();
}

uint64_t sub_25852D2FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518904();
}

uint64_t sub_25852D3B0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_258524FF8(a1, v6, v7, v1 + v5, v8);
}

BOOL sub_25852D4DC(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  result = 0;
  if (!swift_dynamicCast() || v5 != 6)
  {
    v3 = a1;
    if (!swift_dynamicCast() || v5 != 7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25852D594(uint64_t a1)
{
  v2 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25852D5F0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_25852AFA8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_25852D71C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25852D788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_25852CF78(a1, v4, v5, v6);
}

uint64_t sub_25852D83C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25852D874(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258472CF8;

  return sub_2584A4D50(a1, v5);
}

uint64_t sub_25852D980(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v17 = (a12 >> 59) & 6 | ((a10 & 0x2000000000000000) != 0);
  if (v17 > 3)
  {
    if (v17 != 4)
    {
      if (v17 == 5)
      {
        sub_258467E20(result, a2);
        sub_258467E20(a3, a4);
        sub_2584AE960(a6, a7);
        v18 = a8;
        v19 = a9;
      }

      else
      {
        if (v17 != 6)
        {
          return result;
        }

        sub_2584AE960(a2, a3);
        v18 = a4;
        v19 = a5;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (v17 == 1)
    {
LABEL_5:
      sub_258467E20(a2, a3);
      sub_2584AE960(a5, a6);
      sub_2584AE960(a7, a8);
      sub_258467E20(a9, a10 & 0xDFFFFFFFFFFFFFFFLL);

      return sub_258467E20(a11, a12 & 0xCFFFFFFFFFFFFFFFLL);
    }

    if (v17 != 2)
    {
      if (v17 != 3)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

  sub_258467E20(result, a2);
  sub_2584AE960(a4, a5);
  v18 = a6;
  v19 = a7;
LABEL_15:

  return sub_2584AE960(v18, v19);
}

uint64_t sub_25852DB10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_258529E18(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_25852DC88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25852DCD0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_258524228(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_25852DEE8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_25852A578(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25852E060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return sub_25852CD70(a1, v4, v5, v6);
}

uint64_t objectdestroy_67Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_25852D980(v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16]);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_25852E1D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_258529708(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_25852E2E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307C0, &qword_25853A850);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v52 = &v48 - v8;
  v9 = sub_258532C8C();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v48 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v48 - v21;
  v23 = sub_258532CFC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v49 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_258532AAC();
  v53 = *(v28 - 8);
  v54 = v28;
  v29 = *(v53 + 64);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_258532D8C();
  v34 = *(*(v33 - 8) + 56);
  v34(v17, 1, 1, v33);
  sub_2584A7B8C(a1, a2);
  sub_258532D0C();
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    sub_258467E20(a1, a2);
    v42 = *(v24 + 32);
    v43 = v49;
    v42(v49, v22, v23);
    v42(v32, v43, v23);
    v44 = MEMORY[0x277CD8AE0];
LABEL_6:
    v41 = v53;
    v40 = v54;
    (*(v53 + 104))(v32, *v44, v54);
    v39 = v55;
    (*(v41 + 32))(v55, v32, v40);
    v38 = 0;
    return (*(v41 + 56))(v39, v38, 1, v40);
  }

  sub_258465168(v22, &unk_27F931350, qword_258538C60);
  v34(v17, 1, 1, v33);
  v35 = v52;
  sub_258532C9C();
  v37 = v50;
  v36 = v51;
  if ((*(v50 + 48))(v35, 1, v51) != 1)
  {
    v45 = *(v37 + 32);
    v46 = v48;
    v45(v48, v35, v36);
    v45(v32, v46, v36);
    v44 = MEMORY[0x277CD8AD8];
    goto LABEL_6;
  }

  sub_258465168(v35, &qword_27F9307C0, &qword_25853A850);
  v38 = 1;
  v40 = v54;
  v39 = v55;
  v41 = v53;
  return (*(v41 + 56))(v39, v38, 1, v40);
}

uint64_t sub_25852E7A4()
{
  v1 = [v0 domain];
  v2 = sub_25853342C();
  v4 = v3;

  v5 = *MEMORY[0x277CE5608];
  if (sub_25853342C() == v2 && v6 == v4)
  {

LABEL_8:

    return sub_25852E9FC();
  }

  v8 = sub_258533E2C();

  if (v8)
  {
    goto LABEL_8;
  }

  v10 = *MEMORY[0x277D7BB48];
  if (sub_25853342C() == v2 && v11 == v4)
  {
  }

  else
  {
    v13 = sub_258533E2C();

    if ((v13 & 1) == 0)
    {
      if (qword_27F92F8F8 != -1)
      {
        swift_once();
      }

      v14 = sub_258532A4C();
      __swift_project_value_buffer(v14, qword_27F93D038);
      v15 = v0;
      v16 = sub_258532A2C();
      v17 = sub_2585338DC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&dword_25845E000, v16, v17, "Did not find end reason mapping for NSError=%@", v18, 0xCu);
        sub_2584D1214(v19);
        MEMORY[0x259C82900](v19, -1, -1);
        MEMORY[0x259C82900](v18, -1, -1);
      }

      return 35;
    }
  }

  return sub_25852EB64();
}

uint64_t sub_25852E9FC()
{
  v1 = [v0 code];
  if (v1 == 32016)
  {
    return 16;
  }

  if (v1 == 32002)
  {
    return 18;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93D038);
  v4 = v0;
  v5 = sub_258532A2C();
  v6 = sub_2585338DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_25845E000, v5, v6, "Did not find end reason mapping for AVC error=%@", v7, 0xCu);
    sub_2584D1214(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  return 17;
}

uint64_t sub_25852EB64()
{
  if ([v0 code] == 5)
  {
    return 38;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D038);
  v3 = v0;
  v4 = sub_258532A2C();
  v5 = sub_2585338DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_25845E000, v4, v5, "Did not find end reason mapping for WiFiP2P error=%@", v6, 0xCu);
    sub_2584D1214(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  return 39;
}

unint64_t sub_25852ECD8(uint64_t a1)
{
  result = sub_25852ED00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25852ED00()
{
  result = qword_27F931A00;
  if (!qword_27F931A00)
  {
    sub_25852ED58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931A00);
  }

  return result;
}

unint64_t sub_25852ED58()
{
  result = qword_27F931A08;
  if (!qword_27F931A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F931A08);
  }

  return result;
}

BOOL NWError.isFatalForWaitingConnection.getter()
{
  v1 = v0;
  v2 = sub_25853322C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, v1, v2);
  if ((*(v3 + 88))(v7, v2) == *MEMORY[0x277CD8FA0])
  {
    (*(v3 + 96))(v7, v2);
    return *v7 >> 1 == 2147450871;
  }

  else
  {
    (*(v3 + 8))(v7, v2);
    return 0;
  }
}

uint64_t sub_25852EEE4()
{
  v1 = v0;
  v2 = sub_25853322C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 != *MEMORY[0x277CD8FB0])
  {
    if (v8 == *MEMORY[0x277CD8FA0])
    {
      (*(v3 + 96))(v7, v2);
      if (*v7 == -65553)
      {
        return 31;
      }

      else
      {
        return 32;
      }
    }

    (*(v3 + 8))(v7, v2);
    return 25;
  }

  (*(v3 + 96))(v7, v2);
  v9 = *v7;
  if (*v7 <= 53)
  {
    if (v9 == 22)
    {
      return 27;
    }

    if (v9 == 50)
    {
      return 26;
    }

    return 25;
  }

  if (v9 == 54)
  {
    return 30;
  }

  if (v9 != 57)
  {
    if (v9 == 60)
    {
      return 28;
    }

    return 25;
  }

  return 29;
}

unint64_t sub_25852F0B0(uint64_t a1)
{
  result = sub_2584E260C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25852F0FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v14 = *(v4 + 16);
  v14(&v27 - v15, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931A10, &qword_25853F610);
  if (swift_dynamicCast())
  {
    sub_258464C18(v29, v31);
    v16 = v32;
    v17 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v18 = (*(v17 + 16))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    return v18;
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_258465168(v29, &qword_27F931A18, &qword_25853F618);
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v20 = sub_258532A4C();
    __swift_project_value_buffer(v20, qword_27F93D038);
    v14(v12, v2, a1);
    v21 = sub_258532A2C();
    v22 = sub_2585338DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v23 = 138412290;
      v14(v8, v12, a1);
      if (sub_258533E1C())
      {
        (*(v4 + 8))(v8, a1);
      }

      else
      {
        swift_allocError();
        (*(v4 + 32))(v24, v8, a1);
      }

      v25 = _swift_stdlib_bridgeErrorToNSError();
      (*(v4 + 8))(v12, a1);
      *(v23 + 4) = v25;
      v26 = v28;
      *v28 = v25;
      _os_log_impl(&dword_25845E000, v21, v22, "Did not find end reason mapping for error=%@", v23, 0xCu);
      sub_258465168(v26, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v26, -1, -1);
      MEMORY[0x259C82900](v23, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v12, a1);
    }

    return 1;
  }
}

uint64_t sub_25852F4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2585329BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25852F578(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = sub_2585329BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AudioStreamInternalInitParameters()
{
  result = qword_27F931A20;
  if (!qword_27F931A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25852F668()
{
  sub_2584BA560();
  if (v0 <= 0x3F)
  {
    sub_25852F73C();
    if (v1 <= 0x3F)
    {
      sub_2585329BC();
      if (v2 <= 0x3F)
      {
        sub_2584BA61C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25852F73C()
{
  if (!qword_27F931A30)
  {
    v0 = sub_258533A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F931A30);
    }
  }
}

uint64_t sub_25852F78C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931A38, &unk_25853F680);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84B78];
  *(v7 + 16) = xmmword_25853F650;
  v9 = MEMORY[0x277D84BC0];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v1;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v2;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  *(v7 + 112) = v3;
  *(v7 + 176) = v8;
  *(v7 + 184) = v9;
  *(v7 + 152) = v4;
  *(v7 + 216) = v8;
  *(v7 + 224) = v9;
  *(v7 + 192) = v5;
  *(v7 + 256) = v8;
  *(v7 + 264) = v9;
  *(v7 + 232) = v6;

  return sub_25853343C();
}

uint64_t sub_25852F870(int64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v2)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 6)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v2 != 2)
    {
      if (v2 != 1)
      {
        v19 = vdupq_n_s64(a1);
        *v19.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v19, xmmword_25853F2F0), vshlq_u64(v19, xmmword_25853F300)));
        v20 = a1 >> 40;
        goto LABEL_23;
      }

      v7 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_27;
      }

      v8 = sub_25853285C();
      if (!v8)
      {
        goto LABEL_32;
      }

      v9 = v8;
      v10 = sub_25853287C();
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_29;
      }

      v11 = v7 - v10 + v9;
      a1 = sub_25853286C();
      if (v11)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_26;
      }

      if (HIDWORD(a1) - a1 != 6)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = sub_25853285C();
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v16;
    v18 = sub_25853287C();
    if (!__OFSUB__(v15, v18))
    {
      v11 = v15 - v18 + v17;
      sub_25853286C();
      if (!v11)
      {
        goto LABEL_31;
      }

LABEL_21:
      LOBYTE(a1) = *v11;
      v12.i32[0] = *(v11 + 1);
      v19 = vmovl_u8(v12);
      LOBYTE(v20) = *(v11 + 5);
LABEL_23:
      v14 = 0;
      v21 = vmovl_u16((v19.i64[0] & 0xFF00FF00FF00FFLL));
      v22.i64[0] = v21.u32[0];
      v22.i64[1] = v21.u32[1];
      v23 = v22;
      v22.i64[0] = v21.u32[2];
      v22.i64[1] = v21.u32[3];
      v24 = vorrq_s8(vshlq_u64(v23, xmmword_25853F670), vshlq_u64(v22, xmmword_25853F660));
      v13 = *&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | (v20 << 40) | a1;
      return v13 | (v14 << 48);
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_25853286C();
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_25853286C();
    __break(1u);
    return result;
  }

  if (v2 != 2)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 == 6)
  {
    goto LABEL_8;
  }

LABEL_17:
  v13 = 0;
  v14 = 1;
  return v13 | (v14 << 48);
}

void sub_25852FA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  (*(v3 + 16))(v7, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v7, v2);
  aBlock[4] = sub_2584C9794;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2584D170C;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);

  [v8 notifyWhenClockManagerIsAvailable_];
  _Block_release(v11);
}

void sub_25852FC00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  (*(v3 + 16))(v7, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v7, v2);
  aBlock[4] = sub_2584C9628;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2584D170C;
  aBlock[3] = &block_descriptor_7;
  v11 = _Block_copy(aBlock);

  [v8 notifyWhengPTPManagerIsAvailable_];
  _Block_release(v11);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25852FE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_25853341C();
  v8 = MGGetStringAnswer();

  if (v8)
  {
    v9 = sub_25853342C();
    v11 = v10;

    *a4 = v9;
    *a5 = v11;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25852FEC4()
{
  result = sub_258532FEC();
  if (result)
  {
    sub_258532E6C();

    sub_258532EEC();

    server_mode = nw_parameters_get_server_mode();
    swift_unknownObjectRelease();
    return server_mode;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25852FF2C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931450, &qword_25853C1E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v8 - v5;
  sub_25853300C();
  return sub_2584F207C(v6, a1);
}

void sub_25852FFD0(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930590, &qword_25853F8A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v30 - v13;

  v15 = sub_258532A2C();
  v16 = sub_2585338EC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33[0] = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, v33);
    *(v18 + 12) = 2080;
    v32 = a1;
    v20 = sub_25853347C();
    v30 = v14;
    v21 = a1;
    v22 = v4;
    v24 = sub_2584713B0(v20, v23, v33);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v32 = *(v2 + 121);
    v25 = sub_25853347C();
    v27 = sub_2584713B0(v25, v26, v33);

    *(v18 + 24) = v27;
    v4 = v22;
    a1 = v21;
    v14 = v30;
    _os_log_impl(&dword_25845E000, v15, v16, "%s state changed from %s to %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v19, -1, -1);
    v28 = v18;
    v9 = v31;
    MEMORY[0x259C82900](v28, -1, -1);
  }

  if (a1 == 2)
  {
    v29 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_activatingContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v2 + v29, v14, &qword_27F930590, &qword_25853F8A0);
    if ((*(v5 + 48))(v14, 1, v4))
    {
      sub_258465168(v14, &qword_27F930590, &qword_25853F8A0);
    }

    else
    {
      (*(v5 + 16))(v9, v14, v4);
      sub_258465168(v14, &qword_27F930590, &qword_25853F8A0);
      sub_25853364C();
      (*(v5 + 8))(v9, v4);
    }
  }
}

uint64_t sub_25853034C()
{
  sub_2584A9614(*(v0 + 112), *(v0 + 120));
  v1 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_sessionID;
  v2 = sub_2585329BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection));
  sub_25850FA84(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 16), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 24), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 32), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 40), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 48), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 56), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 64), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 72), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 80), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProviderVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_delegatedPIDProvider));
  v3 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F8, &qword_25853F8B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStreamContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStream;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStreamContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_logger;
  v12 = sub_258532A4C();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider));
  v13 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor);

  v14 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor);

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation, &qword_27F931820, &unk_25853F380);
  v15 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  swift_unknownObjectRelease();
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites, &qword_27F930580, &unk_2585382B0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistrationVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration, &qword_27F931828, &unk_25853EB90);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_activatingContinuation, &qword_27F930590, &qword_25853F8A0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2585306A8()
{
  sub_25853034C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AudioStreamAVConference()
{
  result = qword_27F931A40;
  if (!qword_27F931A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258530728()
{
  v0 = sub_2585329BC();
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    sub_258530AB0(319, &qword_27F931A50, MEMORY[0x277D858D8]);
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      sub_258530AB0(319, &qword_27F931A58, MEMORY[0x277D858B0]);
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_2585090C8(319, &qword_27F931798, MEMORY[0x277D857B8]);
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          sub_2585090C8(319, &qword_27F9317A0, MEMORY[0x277D85788]);
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            v10 = sub_258532A4C();
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              sub_2584A7894(319, &qword_27F9317A8, &qword_27F9317B0, &qword_25853EA00);
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                sub_25850911C();
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  sub_2584A7894(319, &qword_27F9317C0, &qword_27F930570, &qword_258538220);
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_258530AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for AudioStreamEvent, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258530B2C()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_2585329BC();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = type metadata accessor for MediaConnectionPrerequisites();
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v9 = *(v8 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258530CC4, v0, 0);
}

uint64_t sub_258530CC4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v3, &qword_27F930580, &unk_2585382B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_258465168(v0[11], &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();
    v22 = v0[14];
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];
    v26 = v0[6];

    v27 = v0[1];

    return v27();
  }

  else
  {
    v7 = v0[14];
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[8];
    v11 = v0[5];
    sub_25850BB7C(v0[11], v7);
    v12 = *(v10 + 16);
    v12(v8, v7, v9);
    v13 = sub_258509C6C();
    v14 = v0[9];
    v15 = v0[7];
    v16 = v0[8];
    v17 = v0[6];
    v12(v14, v0[10], v15);
    (*(v16 + 56))(v17, 1, 1, v15);
    v18 = type metadata accessor for AVConferenceBackedAudioStream();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_2584BA9FC(v14, v17, v13);
    v0[15] = v21;
    v29 = v21;
    v30 = v0[5];
    (*(v0[8] + 8))(v0[10], v0[7]);
    v31 = sub_2585315D4(&unk_27F930960, type metadata accessor for AVConferenceBackedAudioStream);
    v32 = (v30 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
    v33 = *(v30 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
    *v32 = v29;
    v32[1] = v31;

    swift_unknownObjectRelease();
    v0[16] = sub_258531250();
    v0[17] = 0;

    return MEMORY[0x2822009F8](sub_258531020, v29, 0);
  }
}

uint64_t sub_258531020()
{
  v1 = v0[17];
  sub_2584BB594(v0[16], v0[15]);
  v0[18] = v1;
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[5];
  if (v1)
  {

    v5 = sub_258531194;
  }

  else
  {
    v6 = v0[15];

    v5 = sub_2585310D4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2585310D4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  sub_258532770(v0[14], type metadata accessor for MediaConnectionPrerequisites);

  v5 = v0[1];

  return v5();
}

uint64_t sub_258531194()
{
  sub_258532770(v0[14], type metadata accessor for MediaConnectionPrerequisites);
  v1 = v0[18];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

id sub_258531250()
{
  v2 = v0;
  v3 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator + 24));
  result = sub_2584D2938();
  if (!v1 && (*(v2 + 120) & 1) == 0)
  {
    v5 = *(v2 + 112);
    if (v5)
    {
      v6 = result;

      result = [v6 audio];
      if (!result)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      v7 = result;
      v8 = *(v5 + 16);
      if (v8)
      {
        v15 = result;
        v19 = MEMORY[0x277D84F90];
        sub_258533C1C();
        if (*(v5 + 16))
        {
          v9 = 0;
          v10 = (v5 + 32);
          while (1)
          {
            v11 = v10[1];
            v17 = *v10;
            v18 = v11;
            v12 = objc_allocWithZone(MEMORY[0x277CE56F0]);
            v16[0] = v17;
            v16[1] = v18;
            result = [v12 initWithAuditToken_];
            if (!result)
            {
              break;
            }

            sub_258533BFC();
            v13 = *(v19 + 16);
            sub_258533C2C();
            sub_258533C3C();
            sub_258533C0C();
            if (v8 - 1 == v9)
            {
              goto LABEL_12;
            }

            v10 += 2;
            if (++v9 >= *(v5 + 16))
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_17;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        sub_2584A9614(v5, 0);
        v7 = v15;
      }

      else
      {
        sub_2584A9614(v5, 0);
      }

      sub_25853161C();
      v14 = sub_2585335CC();

      [v7 setSystemAudioCaptureIncludedAuditTokens_];

      return v6;
    }
  }

  return result;
}

uint64_t sub_258531448(uint64_t a1)
{
  *(a1 + 8) = sub_2585315D4(&qword_27F931A60, type metadata accessor for AudioStreamAVConference);
  result = sub_2585315D4(&qword_27F931A68, type metadata accessor for AudioStreamAVConference);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_2585314D0()
{
  result = qword_27F931A70;
  if (!qword_27F931A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931A70);
  }

  return result;
}

uint64_t sub_258531524(uint64_t a1)
{
  result = sub_2585315D4(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25853157C(uint64_t a1)
{
  result = sub_2585315D4(&qword_27F931A60, type metadata accessor for AudioStreamAVConference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2585315D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25853161C()
{
  result = qword_27F931A78;
  if (!qword_27F931A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F931A78);
  }

  return result;
}

uint64_t sub_258531668(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 33) == 1)
  {
    if (*(a1 + 32))
    {
      v2 = 0;
    }

    else
    {
      v2 = (*(a1 + 16) | *(a1 + 24) | *a1 | *(a1 + 8)) == 0;
    }

    if (!v2 && !*(a1 + 32))
    {
      v2 = *a1 == 1;
    }

    sub_258476AE4();
    swift_allocError();
    *v3 = 1;
    return swift_willThrow();
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *MEMORY[0x277CE55E0];
    v7 = sub_25853342C();
    v9 = v8;
    if (v5)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v14 = MEMORY[0x277D83B88];
    *&v13 = v10;
    sub_2584F6C74(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25850D118(v12, v7, v9, isUniquelyReferenced_nonNull_native);

    return 13;
  }
}

uint64_t sub_258531798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931850, &qword_25853EBD0);
  v159 = *(v2 - 8);
  v160 = v2;
  v3 = *(v159 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v158 = &v131 - v5;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  v171 = *(v197 - 8);
  v6 = *(v171 + 64);
  MEMORY[0x28223BE20](v197, v7);
  v157 = &v131 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v169 = *(v9 - 8);
  v170 = v9;
  v10 = *(v169 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v156 = &v131 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931A80, &qword_25853F8B8);
  v13 = *(v155 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v155, v15);
  v17 = &v131 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
  v167 = *(v18 - 8);
  v168 = v18;
  v19 = *(v167 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v131 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F8, &qword_25853F8B0);
  v165 = *(v23 - 8);
  v166 = v23;
  v24 = *(v165 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v131 - v26;
  inited = type metadata accessor for AudioStreamInternalInitParameters();
  v28 = *(*(inited - 8) + 64);
  MEMORY[0x28223BE20](inited, v29);
  v162 = a1;
  v163 = (&v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25853270C(a1, v163);
  v31 = type metadata accessor for AVConferenceBackedMediaStreamNegotiatorVendor();
  v32 = swift_allocObject();
  v190 = v31;
  v191 = &off_28698F1B8;
  v189[0] = v32;
  v33 = type metadata accessor for AVConferenceBackedMediaStreamAVCVendor();
  v34 = swift_allocObject();
  v188[4] = &off_28698EA90;
  v188[3] = v33;
  v188[0] = v34;
  v35 = type metadata accessor for TrafficRegistrationVendor();
  v36 = swift_allocObject();
  v187[4] = &off_286990C48;
  v187[3] = v35;
  v187[0] = v36;
  v37 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProviderVendor();
  v38 = swift_allocObject();
  v186[4] = &off_281DA7598;
  v186[3] = v37;
  v186[0] = v38;
  v39 = type metadata accessor for AVConferenceBackedDelegatedPIDProvider();
  v40 = swift_allocObject();
  v185[4] = &off_28698E800;
  v185[3] = v39;
  v185[0] = v40;
  v41 = type metadata accessor for FoundationBackedUserDefaultsProvider();
  v42 = swift_allocObject();
  v42[3] = 0xD00000000000001CLL;
  v42[4] = 0x800000025853FF50;
  v43 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v44 = sub_25853341C();
  v45 = [v43 initWithSuiteName_];

  v42[2] = v45;
  v184[4] = &off_28698F5C8;
  v184[3] = v41;
  v184[0] = v42;
  v46 = type metadata accessor for AudioStreamAVConference();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v154 = v46;
  v49 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v49 + 121) = 0;
  v50 = v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStream;
  v51 = v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStreamContinuation;
  v52 = v155;
  (*(v13 + 104))(v17, *MEMORY[0x277D858A0], v155);
  sub_2585337BC();
  (*(v13 + 8))(v17, v52);
  v53 = *(v165 + 32);
  v153 = v50;
  v53(v50, v27, v166);
  v54 = *(v167 + 32);
  v155 = v51;
  v54(v51, v22, v168);
  v55 = v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStream;
  v56 = v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStreamContinuation;
  v58 = v158;
  v57 = v159;
  v59 = v160;
  (*(v159 + 104))(v158, *MEMORY[0x277D85778], v160);
  v60 = v156;
  v61 = v157;
  sub_25853369C();
  (*(v57 + 8))(v58, v59);
  v62 = *(v169 + 32);
  v159 = v55;
  v62(v55, v60, v170);
  v63 = *(v171 + 32);
  v160 = v56;
  v63(v56, v61, v197);
  v64 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_logger;
  if (qword_27F92F8E8 != -1)
  {
    swift_once();
  }

  v65 = sub_258532A4C();
  v66 = __swift_project_value_buffer(v65, qword_27F93D008);
  v156 = *(v65 - 8);
  v157 = v65;
  v67 = *(v156 + 2);
  v158 = v64;
  v67(v49 + v64, v66, v65);
  *(v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused) = 0;
  v150 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor;
  *(v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor) = 0;
  v151 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor;
  *(v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor) = 0;
  v68 = v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v70 = *(*(v69 - 8) + 56);
  v152 = v68;
  v70(v68, 1, 1, v69);
  v71 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  *v71 = 0;
  v71[1] = 0;
  v148 = v71;
  v72 = v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  v73 = type metadata accessor for MediaConnectionPrerequisites();
  v74 = *(*(v73 - 8) + 56);
  v149 = v72;
  v74(v72, 1, 1, v73);
  v75 = v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  *v75 = 0u;
  *(v75 + 16) = 0u;
  v147 = v75;
  *(v75 + 32) = 0;
  v76 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_activatingContinuation;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  (*(*(v77 - 8) + 56))(v49 + v76, 1, 1, v77);
  v78 = v163;
  v79 = v163[1];
  *(v49 + 124) = *v163;
  v80 = *(v78 + 32);
  v81 = *(v78 + 33);
  *(v49 + 140) = v79;
  *(v49 + 156) = v80;
  *(v49 + 157) = v81;
  v82 = *(v78 + 5);
  LOBYTE(v65) = *(v78 + 48);
  *(v49 + 112) = v82;
  v83 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
  *(v49 + 120) = v65;
  v145 = v83;
  sub_258464C30(v78 + 56, v83);
  v85 = v78[9];
  v193 = v78[8];
  v84 = v193;
  v194 = v85;
  v87 = v78[11];
  v195 = v78[10];
  v86 = v195;
  v196 = v87;
  v88 = v78[7];
  v192[0] = v78[6];
  v192[1] = v88;
  v89 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer);
  *v89 = v192[0];
  v89[1] = v88;
  v89[2] = v84;
  v89[3] = v85;
  v89[4] = v86;
  v89[5] = v87;
  v90 = v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_sessionID;
  v91 = inited;
  v92 = *(inited + 32);
  v93 = sub_2585329BC();
  v141 = *(v93 - 8);
  v94 = *(v141 + 16);
  v143 = v93;
  v144 = v90;
  v94(v90, v78 + v92);
  *(v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_shouldPerformTrafficRegistration) = *(v78 + *(v91 + 36));
  v95 = v78 + *(v91 + 40);
  v146 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider);
  sub_258464C30(v95, v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider);
  v142 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProviderVendor);
  sub_258464C30(v186, v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProviderVendor);
  v96 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_allocObject();
  sub_2584742A4(v82, v65);
  sub_2584AC3B8(v192, &v178, &qword_27F9303B0, &unk_25853F8C0);
  v99 = sub_2584EAE98();
  v100 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider);
  v100[3] = v96;
  v100[4] = &off_28698FE70;
  *v100 = v99;
  v140 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamVendor);
  sub_258464C30(v188, v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamVendor);
  v139 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_delegatedPIDProvider);
  sub_258464C30(v185, v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_delegatedPIDProvider);
  v101 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
  sub_258464C30(v184, v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
  v102 = (v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistrationVendor);
  sub_258464C30(v187, v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistrationVendor);
  v103 = *(v49 + 156);
  v104 = *(v49 + 157);
  v105 = *(v49 + 140);
  v175[0] = *(v49 + 124);
  v175[1] = v105;
  v176 = v103;
  v177 = v104;
  v106 = *(v49 + 120);
  v173 = *(v49 + 112);
  v174 = v106;
  sub_2584742A4(v173, v106);
  v107 = v161;
  v108 = sub_258531668(v175, &v173);
  inited = v107;
  if (!v107)
  {
    v119 = v109;
    v161 = v101;
    v138 = v108;
    sub_2584A9614(v173, v174);
    v120 = v89[3];
    v180 = v89[2];
    v181 = v120;
    v121 = v89[5];
    v182 = v89[4];
    v183 = v121;
    v122 = v89[1];
    v178 = *v89;
    v179 = v122;
    if (v178 == 2)
    {
      v123 = *__swift_project_boxed_opaque_existential_1(v189, v190);
      v124 = inited;
      sub_2584D2AD4(v138, v119, v172);
      if (v124)
      {
        inited = v124;

        v101 = v161;
        goto LABEL_5;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v184);
      __swift_destroy_boxed_opaque_existential_1Tm(v185);
      __swift_destroy_boxed_opaque_existential_1Tm(v186);
      __swift_destroy_boxed_opaque_existential_1Tm(v187);
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      v130 = v78;
    }

    else
    {
      v131 = v102;
      v126 = *(&v178 + 1);
      v125 = v179;
      v127 = *__swift_project_boxed_opaque_existential_1(v189, v190);
      v128 = v180;
      v132 = *(&v181 + 1);
      v133 = v181;
      v134 = *(&v182 + 1);
      v135 = v182;
      v137 = v183;
      v138 = v127;
      v136 = *(&v183 + 1);
      sub_2584A7B8C(v126, v125);
      sub_2584ABAF4(v128, *(&v128 + 1));
      sub_2584ABAF4(v133, v132);
      sub_2584A7B8C(v135, v134);
      sub_2584A7B8C(v137, v136);
      v129 = inited;
      sub_2584D2BD8(v126, v125, v119, v172);
      if (v129)
      {
        inited = v129;

        sub_258465168(&v178, &qword_27F9303B0, &unk_25853F8C0);
        v101 = v161;
        v78 = v163;
        v102 = v131;
        goto LABEL_5;
      }

      sub_258465168(&v178, &qword_27F9303B0, &unk_25853F8C0);

      __swift_destroy_boxed_opaque_existential_1Tm(v184);
      __swift_destroy_boxed_opaque_existential_1Tm(v185);
      __swift_destroy_boxed_opaque_existential_1Tm(v186);
      __swift_destroy_boxed_opaque_existential_1Tm(v187);
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      v130 = v163;
    }

    sub_258532770(v130, type metadata accessor for AudioStreamInternalInitParameters);
    sub_258464C18(v172, v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator);
    __swift_destroy_boxed_opaque_existential_1Tm(v189);
    sub_258532770(v162, type metadata accessor for AudioStreamInternalInitParameters);
    return v49;
  }

  sub_2584A9614(v173, v174);
LABEL_5:
  sub_2584A9614(*(v49 + 112), *(v49 + 120));
  (*(v141 + 8))(v144, v143);
  __swift_destroy_boxed_opaque_existential_1Tm(v145);
  v110 = v89[3];
  v180 = v89[2];
  v181 = v110;
  v111 = v89[5];
  v182 = v89[4];
  v183 = v111;
  v112 = v89[1];
  v178 = *v89;
  v179 = v112;
  sub_258465168(&v178, &qword_27F9303B0, &unk_25853F8C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v142);
  __swift_destroy_boxed_opaque_existential_1Tm(v140);
  __swift_destroy_boxed_opaque_existential_1Tm(v139);
  (*(v165 + 8))(v153, v166);
  (*(v167 + 8))(v155, v168);
  (*(v169 + 8))(v159, v170);
  (*(v171 + 8))(v160, v197);
  (*(v156 + 1))(&v158[v49], v157);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  v113 = *(v49 + v150);

  v114 = *(v49 + v151);

  sub_258465168(v152, &qword_27F931820, &unk_25853F380);
  v115 = *v148;
  swift_unknownObjectRelease();
  sub_258465168(v149, &qword_27F930580, &unk_2585382B0);
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  sub_258465168(v147, &qword_27F931828, &unk_25853EB90);
  __swift_destroy_boxed_opaque_existential_1Tm(v146);
  sub_258465168(v49 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_activatingContinuation, &qword_27F930590, &qword_25853F8A0);
  swift_defaultActor_destroy();
  __swift_destroy_boxed_opaque_existential_1Tm(v184);
  __swift_destroy_boxed_opaque_existential_1Tm(v185);
  __swift_destroy_boxed_opaque_existential_1Tm(v186);
  __swift_destroy_boxed_opaque_existential_1Tm(v187);
  __swift_destroy_boxed_opaque_existential_1Tm(v188);
  sub_258532770(v78, type metadata accessor for AudioStreamInternalInitParameters);
  v116 = *(*v49 + 48);
  v117 = *(*v49 + 52);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm(v189);
  sub_258532770(v162, type metadata accessor for AudioStreamInternalInitParameters);
  return v49;
}

uint64_t sub_25853270C(uint64_t a1, uint64_t a2)
{
  inited = type metadata accessor for AudioStreamInternalInitParameters();
  (*(*(inited - 8) + 16))(a2, a1, inited);
  return a2;
}

uint64_t sub_258532770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2585327E0()
{
  result = qword_27F931A88;
  if (!qword_27F931A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931A88);
  }

  return result;
}