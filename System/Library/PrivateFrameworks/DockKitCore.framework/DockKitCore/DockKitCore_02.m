uint64_t sub_2245370A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_224509D5C();
}

id ObjectTrackingAgent.__allocating_init(trackerConfig:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22455D114(a1);

  return v4;
}

id ObjectTrackingAgent.init(trackerConfig:)(void *a1)
{
  v2 = sub_22455D114(a1);

  return v2;
}

id ObjectTrackingAgent.__allocating_init(delegate:appID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_22455D75C(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v10;
}

id ObjectTrackingAgent.init(delegate:appID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22455D75C(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

id ObjectTrackingAgent.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v3 = *&v0[OBJC_IVAR___ObjectTrackingAgent_tracker];
  if (v3)
  {
    v4 = v3;
    sub_22459B6D4();

    v5 = *&v1[v2];
    if (v5)
    {
      v6 = v5;
      sub_2245697B8(0);
    }
  }

  v7 = *&v1[OBJC_IVAR___ObjectTrackingAgent_manager];
  if (v7)
  {
    v8 = v7;
    DockCoreManager.disconnect()();
  }

  *&v1[OBJC_IVAR___ObjectTrackingAgent_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ObjectTrackingAgent();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_224537584()
{

  return MEMORY[0x2822009F8](sub_22453769C, 0, 0);
}

uint64_t sub_22453769C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
    v4 = *&v2[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore];
    v5 = v2;
    v6 = v4;
    sub_224628148();

    v7 = v5[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled];
    v8 = *&v2[v3];
    sub_224628158();

    v1 = *(v0 + 16);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 56) = v7;
  *(v0 + 48) = *(v1 + *(v0 + 24));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v10 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22450CEC4, v10, v9);
}

uint64_t sub_2245377E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, double a8)
{
  *(v9 + 240) = v8;
  *(v9 + 296) = a6;
  *(v9 + 224) = a7;
  *(v9 + 232) = a8;
  *(v9 + 208) = a4;
  *(v9 + 216) = a5;
  *(v9 + 192) = a2;
  *(v9 + 200) = a3;
  *(v9 + 184) = a1;
  v10 = sub_224626FC8();
  *(v9 + 248) = v10;
  *(v9 + 256) = *(v10 - 8);
  *(v9 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245378B8, 0, 0);
}

uint64_t sub_2245378B8()
{
  sub_224628198();
  sub_224509554(&qword_27D0C9458, MEMORY[0x277CC9178]);
  sub_224628248();
  v1 = MEMORY[0x277D84F90];
  while (*(v0 + 72))
  {
    sub_224535258((v0 + 48), (v0 + 16));
    sub_2245097F8(v0 + 16, v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9348);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 176);
      if (*(v2 + 16) && (v3 = sub_2245096C8(0xD000000000000017, 0x80000002246375F0), (v4 & 1) != 0))
      {
        sub_2245097F8(*(v2 + 56) + 32 * v3, v0 + 80);

        if (*(v0 + 104))
        {
          sub_2245098A0(v0 + 80, &qword_27D0CA3B0);
          sub_224535258((v0 + 16), (v0 + 144));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22455C6A0(0, *(v1 + 16) + 1, 1);
          }

          v6 = *(v1 + 16);
          v5 = *(v1 + 24);
          if (v6 >= v5 >> 1)
          {
            sub_22455C6A0((v5 > 1), v6 + 1, 1);
          }

          *(v1 + 16) = v6 + 1;
          sub_224535258((v0 + 144), (v1 + 32 * v6 + 32));
          goto LABEL_5;
        }
      }

      else
      {

        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
    }

    sub_2245098A0(v0 + 80, &qword_27D0CA3B0);
LABEL_5:
    sub_224628248();
  }

  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  sub_2245098A0(v0 + 48, &qword_27D0CA3B0);
  v7 = sub_224537F84(v1, sub_22455C6C0, &qword_27D0C94A0);

  if (!v7)
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (!*(v7 + 16) || (v8 = *(v7 + 32), , , !*(v8 + 16)) || (v9 = sub_2245096C8(0xD000000000000017, 0x80000002246375F0), (v10 & 1) == 0))
  {

    v24 = 0;
    goto LABEL_35;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if (!*(v11 + 16))
  {
    v13 = 0.0;
    v14 = 0.0;
LABEL_39:
    v17 = 0.0;
    goto LABEL_40;
  }

  v12 = sub_2245096C8(88, 0xE100000000000000);
  v13 = 0.0;
  v14 = 0.0;
  if (v15)
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  if (!*(v11 + 16))
  {
    goto LABEL_39;
  }

  v16 = sub_2245096C8(89, 0xE100000000000000);
  v17 = 0.0;
  if (v18)
  {
    v17 = *(*(v11 + 56) + 8 * v16);
  }

  if (*(v11 + 16))
  {
    v19 = sub_2245096C8(0x6874646957, 0xE500000000000000);
    v20 = 0.0;
    if (v21)
    {
      v13 = *(*(v11 + 56) + 8 * v19);
    }

    if (*(v11 + 16))
    {
      v22 = sub_2245096C8(0x746867696548, 0xE600000000000000);
      if (v23)
      {
        v20 = *(*(v11 + 56) + 8 * v22);
      }
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = 0.0;
LABEL_41:

  v24 = [objc_allocWithZone(DKFocusObservation) initWithIdentifier:-1 rect:0 focusStrong:0 detectionType:{v14, v17, v13, v20}];
LABEL_35:
  *(v0 + 272) = v24;
  v25 = swift_task_alloc();
  *(v0 + 280) = v25;
  *v25 = v0;
  v25[1] = sub_224537D98;
  v26 = *(v0 + 296);
  v27 = *(v0 + 224);
  v28 = *(v0 + 232);
  v29 = *(v0 + 208);
  v30 = *(v0 + 216);
  v31 = *(v0 + 192);
  v32 = *(v0 + 200);
  v33 = *(v0 + 184);

  return sub_2245383B8(v24, v33, v31, v32, v29, v30, v26, v27, v28);
}

uint64_t sub_224537D98()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_224537F18;
  }

  else
  {
    v2 = sub_224537EAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224537EAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224537F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224537F84(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3)
{
  v6 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  a2(0, v6, 0);
  v7 = v14;
  if (v6)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2245097F8(i, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v14 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        a2(v9 > 1, v10 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v10 + 1;
      *(v7 + 8 * v10 + 32) = v12;
      if (!--v6)
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

uint64_t sub_224538280(void *a1, void *a2, int a3, void *a4, int a5, void *aBlock, double a7, double a8, void *a9)
{
  v9[4] = a4;
  v9[5] = a9;
  v9[2] = a1;
  v9[3] = a2;
  v9[6] = _Block_copy(aBlock);
  v17 = sub_224627CD8();
  v19 = v18;
  v9[7] = v18;
  v20 = a1;
  v21 = a2;
  v22 = a4;
  a9;
  v23 = swift_task_alloc();
  v9[8] = v23;
  *v23 = v9;
  v23[1] = sub_22456280C;

  return sub_2245377E4(v20, a2, v17, v19, v22, a5, a7, a8);
}

uint64_t sub_2245383B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double a8, double a9)
{
  *(v10 + 80) = v9;
  *(v10 + 296) = a7;
  *(v10 + 64) = a8;
  *(v10 + 72) = a9;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_224627B78();
  *(v10 + 88) = v11;
  *(v10 + 96) = *(v11 - 8);
  *(v10 + 104) = swift_task_alloc();
  *(v10 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8FA8);
  *(v10 + 120) = swift_task_alloc();
  v12 = sub_224627518();
  *(v10 + 128) = v12;
  *(v10 + 136) = *(v12 - 8);
  *(v10 + 144) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v10 + 152) = v13;
  *v13 = v10;
  v13[1] = sub_224538558;

  return sub_22450AED4();
}

uint64_t sub_224538558(char a1)
{
  *(*v1 + 300) = a1;

  return MEMORY[0x2822009F8](sub_224538658, 0, 0);
}

uint64_t sub_224538658()
{
  if (*(v0 + 300))
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    v3 = *(v0 + 120);

    sub_224627508();
    v4 = *(v2 + 48);
    v5 = v4(v3, 1, v1);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    if (v5 == 1)
    {
      (*(v7 + 104))(v6, *MEMORY[0x277D213C0], *(v0 + 128));
      if (v4(v9, 1, v8) != 1)
      {
        sub_2245098A0(*(v0 + 120), &qword_27D0C8FA8);
      }
    }

    else
    {
      (*(v7 + 32))(v6, *(v0 + 120), *(v0 + 128));
    }

    v13 = *(v0 + 80);
    v14 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
    *(v0 + 160) = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
    *(v0 + 168) = *(v13 + v14);
    v16 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_2245388A8;

    return v16();
  }

  else
  {
    sub_22452ECAC();
    swift_allocError();
    *v10 = 0xD000000000000014;
    *(v10 + 8) = 0x8000000224637610;
    *(v10 + 16) = 15;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2245388A8()
{

  return MEMORY[0x2822009F8](sub_2245389C0, 0, 0);
}

uint64_t sub_2245389C0()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR___ObjectTrackingAgent_currentCameraSession;
  if (!*(v1 + OBJC_IVAR___ObjectTrackingAgent_currentCameraSession))
  {
    v39 = OBJC_IVAR___ObjectTrackingAgent_appID;
    *(v0 + 184) = OBJC_IVAR___ObjectTrackingAgent_appID;
    v40 = (v1 + v39);
    if (*(v1 + v39 + 8))
    {
      v41 = v1;
      v42 = [objc_allocWithZone(type metadata accessor for CameraSessionInformation()) init];
      *(v0 + 192) = v42;
      v24 = v40[1];
      if (v24)
      {
        v43 = &v42[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId];
        *v43 = *v40;
        *(v43 + 1) = v24;

        v44 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
        [v44 timeIntervalSince1970];
        v46 = v45;

        v47 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime;
        *(v0 + 200) = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime;
        *&v42[v47] = v46;
        v48 = sub_2246274F8();
        v49 = 2;
        if (v48)
        {
          v49 = 0;
        }

        v50 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType;
        *(v0 + 208) = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType;
        *&v42[v50] = v49;
        v51 = *(v1 + v2);
        *(v41 + v2) = v42;
        v52 = v42;

        v53 = swift_task_alloc();
        *(v0 + 216) = v53;
        *v53 = v0;
        v53[1] = sub_224538F24;

        return sub_224549CE4(v52, 1);
      }

      goto LABEL_27;
    }
  }

  v3 = *(v0 + 296);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v10 = [objc_allocWithZone(type metadata accessor for FollowerMetadata()) init];
  *(v0 + 232) = v10;
  v11 = sub_22453CFC0(v9, v8, v6);
  v12 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations;
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations] = v11;

  v13 = sub_224627CB8();
  v14 = *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType];
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType] = v13;

  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_orientation] = v3;
  v15 = *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics];
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics] = v7;
  v16 = v7;

  v17 = v5;
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth] = v17;
  v18 = v4;
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight] = v18;
  v19 = *&v10[v12];
  if (v19 >> 62)
  {
    v20 = sub_224628478();
    v21 = *(v0 + 16);
    if (!v21)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *(v0 + 16);
    if (!v21)
    {
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22462F150;
  v23 = v21;
  *(v22 + 32) = sub_22455E72C(v23);

  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_focusObservation] = v22;

  if (__OFADD__(v20++, 1))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return MEMORY[0x2822009F8](v24, v25, v26);
  }

LABEL_5:
  if (!v20)
  {
    [*(*(v0 + 80) + OBJC_IVAR___ObjectTrackingAgent_startDate) timeIntervalSinceNow];
    if (fabs(v28) < 0.0666666667)
    {
      *(v0 + 248) = *(*(v0 + 80) + *(v0 + 160));
      sub_2246274B8();
      sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

      v29 = sub_224627F28();
      v31 = v30;
      v24 = sub_224539858;
      v25 = v29;
      v26 = v31;

      return MEMORY[0x2822009F8](v24, v25, v26);
    }
  }

  v32 = *(v0 + 80);
  v33 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v34 = *(v32 + OBJC_IVAR___ObjectTrackingAgent_startDate);
  *(v32 + OBJC_IVAR___ObjectTrackingAgent_startDate) = v33;

  v35 = *(v32 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  *(v0 + 240) = v35;
  if (v35)
  {
    v35;
    v36 = swift_task_alloc();
    *(v0 + 256) = v36;
    *v36 = v0;
    v36[1] = sub_2245398C8;
    v37 = *(v0 + 32);

    return sub_2245A03E4(v10, v37);
  }

  else
  {
    v54 = swift_task_alloc();
    *(v0 + 272) = v54;
    *v54 = v0;
    v54[1] = sub_224539A58;

    return sub_22455AE10();
  }
}

uint64_t sub_224538F24(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_224539024, 0, 0);
}

uint64_t sub_224539024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = v3;
  v4 = *(v3 + 224);
  if (v4 >> 62)
  {
    v5 = sub_224628478();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = &qword_27D0C9000;
  if (!v5)
  {

    goto LABEL_16;
  }

  v7 = __OFSUB__(v5, 1);
  v8 = v5 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_46;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v9 = MEMORY[0x22AA517F0](v8, *(v3 + 224));
    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = *(*(v3 + 224) + 8 * v8 + 32);
LABEL_9:
  v11 = *(v3 + 192);
  v10 = *(v3 + 200);

  if (*(v11 + v10) - *&v9[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime] >= 1.0 || *&v9[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType] || *(*(v3 + 192) + *(v3 + 208)) != 2)
  {

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  (*(*(v3 + 96) + 16))(*(v3 + 112), *(v3 + 80) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v3 + 88));
  v12 = sub_224627B58();
  v13 = sub_224628058();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v3 + 112);
  v17 = *(v3 + 88);
  v16 = *(v3 + 96);
  if (v14)
  {
    v73 = *(v3 + 112);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v75 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_224509F28(0xD000000000000067, 0x8000000224637630, &v75);
    _os_log_impl(&dword_224507000, v12, v13, "%s camera flip detected", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x22AA526D0](v19, -1, -1);
    MEMORY[0x22AA526D0](v18, -1, -1);

    (*(v16 + 8))(v73, v17);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v72 = *(*(v3 + 80) + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v20 = 0x400921FB54442D18;
  if (v72)
  {
    *(v72 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_flipCamera) = 1;
  }

LABEL_17:
  v21 = *(v3 + 80);
  (*(*(v3 + 96) + 16))(*(v3 + 104), v21 + OBJC_IVAR___ObjectTrackingAgent_logger, *(v3 + 88));
  v22 = v21;
  v23 = sub_224627B58();
  v24 = sub_224628058();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v3 + 80) + *(v3 + 184);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v75 = v27;
    *v26 = 136315650;
    v8 = sub_224509F28(0xD000000000000067, 0x8000000224637630, &v75);
    *(v26 + 4) = v8;
    *(v26 + 12) = 2080;
    v28 = *(v25 + 8);
    if (!v28)
    {
LABEL_50:
      __break(1u);
      return MEMORY[0x2822009F8](v8, a2, a3);
    }

    v29 = *(v3 + 192);
    v30 = *(v3 + 96);
    v74 = *(v3 + 104);
    v31 = *(v3 + 88);
    v32 = *(*(v3 + 80) + *(v3 + 184));

    v33 = sub_224509F28(v32, v28, &v75);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v20;
    _os_log_impl(&dword_224507000, v23, v24, "%s App: %s rotating to heading %f", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA526D0](v27, -1, -1);
    MEMORY[0x22AA526D0](v26, -1, -1);

    (*(v30 + 8))(v74, v31);
    v6 = &qword_27D0C9000;
  }

  else
  {
    v35 = *(v3 + 96);
    v34 = *(v3 + 104);
    v36 = *(v3 + 88);

    (*(v35 + 8))(v34, v36);
  }

  v37 = *(*(v3 + 80) + v6[131]);
  if (v37)
  {
    v38 = *(v37 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
    if (v38)
    {
      *(v38 + OBJC_IVAR____TtC11DockKitCore19ActuationController_rotateCameraAngle) = v20;
    }
  }

  v39 = *(v3 + 296);
  v41 = *(v3 + 64);
  v40 = *(v3 + 72);
  v42 = *(v3 + 48);
  v43 = *(v3 + 56);
  v44 = *(v3 + 40);
  v45 = *(v3 + 24);
  v46 = [objc_allocWithZone(type metadata accessor for FollowerMetadata()) init];
  *(v3 + 232) = v46;
  v47 = sub_22453CFC0(v45, v44, v42);
  v48 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations;
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations] = v47;

  v49 = sub_224627CB8();
  v50 = *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType];
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType] = v49;

  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_orientation] = v39;
  v51 = *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics];
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics] = v43;
  v52 = v43;

  v53 = v41;
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth] = v53;
  v54 = v40;
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight] = v54;
  v55 = *&v46[v48];
  if (v55 >> 62)
  {
    v56 = sub_224628478();
    v57 = *(v3 + 16);
    if (!v57)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v57 = *(v3 + 16);
  if (v57)
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92C0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_22462F150;
    v59 = v57;
    *(v58 + 32) = sub_22455E72C(v59);

    *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_focusObservation] = v58;

    v7 = __OFADD__(v56++, 1);
    if (!v7)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_27:
  if (!v56)
  {
    [*(*(v3 + 80) + OBJC_IVAR___ObjectTrackingAgent_startDate) timeIntervalSinceNow];
    if (fabs(v60) < 0.0666666667)
    {
      *(v3 + 248) = *(*(v3 + 80) + *(v3 + 160));
      sub_2246274B8();
      sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

      v61 = sub_224627F28();
      v63 = v62;
      v8 = sub_224539858;
      a2 = v61;
      a3 = v63;

      return MEMORY[0x2822009F8](v8, a2, a3);
    }
  }

  v64 = *(v3 + 80);
  v65 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v66 = *(v64 + OBJC_IVAR___ObjectTrackingAgent_startDate);
  *(v64 + OBJC_IVAR___ObjectTrackingAgent_startDate) = v65;

  v67 = *(v64 + v6[131]);
  *(v3 + 240) = v67;
  if (v67)
  {
    v67;
    v68 = swift_task_alloc();
    *(v3 + 256) = v68;
    *v68 = v3;
    v68[1] = sub_2245398C8;
    v69 = *(v3 + 32);

    return sub_2245A03E4(v46, v69);
  }

  else
  {
    v71 = swift_task_alloc();
    *(v3 + 272) = v71;
    *v71 = v3;
    v71[1] = sub_224539A58;

    return sub_22455AE10();
  }
}

uint64_t sub_224539858()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245627EC, 0, 0);
}

uint64_t sub_2245398C8()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  *(v3 + 264) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_224539D54, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v3 + 272) = v4;
    *v4 = v3;
    v4[1] = sub_224539A58;

    return sub_22455AE10();
  }
}

uint64_t sub_224539A58()
{

  return MEMORY[0x2822009F8](sub_224539B54, 0, 0);
}

uint64_t sub_224539B54()
{
  v0[35] = *(v0[10] + v0[20]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224539C2C, v2, v1);
}

uint64_t sub_224539C2C()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224539C9C, 0, 0);
}

uint64_t sub_224539C9C()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_224539D54()
{
  v0[36] = *(v0[10] + v0[20]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224539E2C, v2, v1);
}

uint64_t sub_224539E2C()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224539E9C, 0, 0);
}

uint64_t sub_224539E9C()
{
  v1 = v0[29];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22453A13C(void *a1, void *a2, void *a3, int a4, void *a5, int a6, void *aBlock, double a8, double a9, void *a10)
{
  v10[5] = a5;
  v10[6] = a10;
  v10[3] = a2;
  v10[4] = a3;
  v10[2] = a1;
  v10[7] = _Block_copy(aBlock);
  v19 = sub_224627CD8();
  v21 = v20;
  v10[8] = v20;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a5;
  a10;
  v26 = swift_task_alloc();
  v10[9] = v26;
  *v26 = v10;
  v26[1] = sub_22453A28C;

  return sub_2245383B8(a1, v23, a3, v19, v21, v25, a6, a8, a9);
}

uint64_t sub_22453A28C()
{
  v2 = v0;
  v14 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 56);
  if (v2)
  {
    v11 = sub_224626FA8();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v14 + 56));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_22453A4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, double a8)
{
  *(v9 + 72) = v8;
  *(v9 + 288) = a6;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_224627B78();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8FA8);
  *(v9 + 112) = swift_task_alloc();
  v11 = sub_224627518();
  *(v9 + 120) = v11;
  *(v9 + 128) = *(v11 - 8);
  *(v9 + 136) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v9 + 144) = v12;
  *v12 = v9;
  v12[1] = sub_22453A640;

  return sub_22450AED4();
}

uint64_t sub_22453A640(char a1)
{
  *(*v1 + 292) = a1;

  return MEMORY[0x2822009F8](sub_22453A740, 0, 0);
}

uint64_t sub_22453A740()
{
  if (*(v0 + 292))
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);
    v3 = *(v0 + 112);

    sub_224627508();
    v4 = *(v2 + 48);
    v5 = v4(v3, 1, v1);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    if (v5 == 1)
    {
      (*(v7 + 104))(v6, *MEMORY[0x277D213C0], *(v0 + 120));
      if (v4(v9, 1, v8) != 1)
      {
        sub_2245098A0(*(v0 + 112), &qword_27D0C8FA8);
      }
    }

    else
    {
      (*(v7 + 32))(v6, *(v0 + 112), *(v0 + 120));
    }

    v13 = *(v0 + 72);
    v14 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
    *(v0 + 152) = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
    *(v0 + 160) = *(v13 + v14);
    v16 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_22453A990;

    return v16();
  }

  else
  {
    sub_22452ECAC();
    swift_allocError();
    *v10 = 0xD000000000000014;
    *(v10 + 8) = 0x8000000224637610;
    *(v10 + 16) = 15;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22453A990()
{

  return MEMORY[0x2822009F8](sub_22453AAA8, 0, 0);
}

uint64_t sub_22453AAA8()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___ObjectTrackingAgent_currentCameraSession;
  if (!*(v1 + OBJC_IVAR___ObjectTrackingAgent_currentCameraSession))
  {
    v27 = OBJC_IVAR___ObjectTrackingAgent_appID;
    *(v0 + 176) = OBJC_IVAR___ObjectTrackingAgent_appID;
    v28 = (v1 + v27);
    if (*(v1 + v27 + 8))
    {
      v29 = v1;
      v30 = [objc_allocWithZone(type metadata accessor for CameraSessionInformation()) init];
      *(v0 + 184) = v30;
      v24 = v28[1];
      if (v24)
      {
        v31 = &v30[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId];
        *v31 = *v28;
        *(v31 + 1) = v24;

        v32 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
        [v32 timeIntervalSince1970];
        v34 = v33;

        v35 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime;
        *(v0 + 192) = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime;
        *&v30[v35] = v34;
        v36 = sub_2246274F8();
        v37 = 2;
        if (v36)
        {
          v37 = 0;
        }

        v38 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType;
        *(v0 + 200) = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType;
        *&v30[v38] = v37;
        v39 = *(v1 + v2);
        *(v29 + v2) = v30;
        v40 = v30;

        v41 = swift_task_alloc();
        *(v0 + 208) = v41;
        *v41 = v0;
        v41[1] = sub_22453AF94;

        return sub_224549CE4(v40, 1);
      }

      __break(1u);
      return MEMORY[0x2822009F8](v24, v25, v26);
    }
  }

  v3 = *(v0 + 288);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v10 = [objc_allocWithZone(type metadata accessor for FollowerMetadata()) init];
  *(v0 + 224) = v10;
  v11 = sub_22453C458(v9, v8, v6);
  v12 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations;
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations] = v11;

  v13 = sub_224627CB8();
  v14 = *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType];
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType] = v13;

  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_orientation] = v3;
  v15 = *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics];
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics] = v7;
  v16 = v7;

  v17 = v5;
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth] = v17;
  v18 = v4;
  *&v10[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight] = v18;
  v19 = *&v10[v12];
  if (v19 >> 62)
  {
    if (sub_224628478())
    {
      goto LABEL_16;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  [*(*(v0 + 72) + OBJC_IVAR___ObjectTrackingAgent_startDate) timeIntervalSinceNow];
  if (fabs(v20) < 0.0666666667)
  {
    *(v0 + 240) = *(*(v0 + 72) + *(v0 + 152));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v21 = sub_224627F28();
    v23 = v22;
    v24 = sub_22453B850;
    v25 = v21;
    v26 = v23;

    return MEMORY[0x2822009F8](v24, v25, v26);
  }

LABEL_16:
  v43 = *(v0 + 72);
  v44 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v45 = *(v43 + OBJC_IVAR___ObjectTrackingAgent_startDate);
  *(v43 + OBJC_IVAR___ObjectTrackingAgent_startDate) = v44;

  v46 = *(v43 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  *(v0 + 232) = v46;
  if (v46)
  {
    v46;
    v47 = swift_task_alloc();
    *(v0 + 248) = v47;
    *v47 = v0;
    v47[1] = sub_22453B8C0;
    v48 = *(v0 + 24);

    return sub_2245A03E4(v10, v48);
  }

  else
  {
    v49 = swift_task_alloc();
    *(v0 + 264) = v49;
    *v49 = v0;
    v49[1] = sub_22453BA50;

    return sub_22455AE10();
  }
}

uint64_t sub_22453AF94(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_22453B094, 0, 0);
}

uint64_t sub_22453B094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = v3;
  v4 = *(v3 + 216);
  if (v4 >> 62)
  {
    v5 = sub_224628478();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = &qword_27D0C9000;
  if (!v5)
  {

    goto LABEL_16;
  }

  v7 = __OFSUB__(v5, 1);
  v8 = v5 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_43;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_43:
    v9 = MEMORY[0x22AA517F0](v8, *(v3 + 216));
    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v9 = *(*(v3 + 216) + 8 * v8 + 32);
LABEL_9:
  v11 = *(v3 + 184);
  v10 = *(v3 + 192);

  if (*(v11 + v10) - *&v9[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime] >= 1.0 || *&v9[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType] || *(*(v3 + 184) + *(v3 + 200)) != 2)
  {

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  (*(*(v3 + 88) + 16))(*(v3 + 104), *(v3 + 72) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v3 + 80));
  v12 = sub_224627B58();
  v13 = sub_224628058();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v3 + 104);
  v17 = *(v3 + 80);
  v16 = *(v3 + 88);
  if (v14)
  {
    v69 = *(v3 + 104);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v71 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_224509F28(0xD000000000000061, 0x80000002246376A0, &v71);
    _os_log_impl(&dword_224507000, v12, v13, "%s camera flip detected", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x22AA526D0](v19, -1, -1);
    MEMORY[0x22AA526D0](v18, -1, -1);

    (*(v16 + 8))(v69, v17);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v60 = *(*(v3 + 72) + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v20 = 0x400921FB54442D18;
  if (v60)
  {
    *(v60 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_flipCamera) = 1;
  }

LABEL_17:
  v21 = *(v3 + 72);
  (*(*(v3 + 88) + 16))(*(v3 + 96), v21 + OBJC_IVAR___ObjectTrackingAgent_logger, *(v3 + 80));
  v22 = v21;
  v23 = sub_224627B58();
  v24 = sub_224628058();

  if (!os_log_type_enabled(v23, v24))
  {
    v35 = *(v3 + 88);
    v34 = *(v3 + 96);
    v36 = *(v3 + 80);

    (*(v35 + 8))(v34, v36);
    goto LABEL_21;
  }

  v25 = *(v3 + 72) + *(v3 + 176);
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v71 = v27;
  *v26 = 136315650;
  v8 = sub_224509F28(0xD000000000000061, 0x80000002246376A0, &v71);
  *(v26 + 4) = v8;
  *(v26 + 12) = 2080;
  v28 = *(v25 + 8);
  if (!v28)
  {
LABEL_46:
    __break(1u);
    return MEMORY[0x2822009F8](v8, a2, a3);
  }

  v29 = *(v3 + 184);
  v30 = *(v3 + 88);
  v70 = *(v3 + 96);
  v31 = *(v3 + 80);
  v32 = *(*(v3 + 72) + *(v3 + 176));

  v33 = sub_224509F28(v32, v28, &v71);

  *(v26 + 14) = v33;
  *(v26 + 22) = 2048;
  *(v26 + 24) = v20;
  _os_log_impl(&dword_224507000, v23, v24, "%s App: %s rotating to heading %f", v26, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x22AA526D0](v27, -1, -1);
  MEMORY[0x22AA526D0](v26, -1, -1);

  (*(v30 + 8))(v70, v31);
  v6 = &qword_27D0C9000;
LABEL_21:
  v37 = *(*(v3 + 72) + v6[131]);
  if (v37)
  {
    v38 = *(v37 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
    if (v38)
    {
      *(v38 + OBJC_IVAR____TtC11DockKitCore19ActuationController_rotateCameraAngle) = v20;
    }
  }

  v39 = *(v3 + 288);
  v41 = *(v3 + 56);
  v40 = *(v3 + 64);
  v42 = *(v3 + 40);
  v43 = *(v3 + 48);
  v44 = *(v3 + 32);
  v45 = *(v3 + 16);
  v46 = [objc_allocWithZone(type metadata accessor for FollowerMetadata()) init];
  *(v3 + 224) = v46;
  v47 = sub_22453C458(v45, v44, v42);
  v48 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations;
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations] = v47;

  v49 = sub_224627CB8();
  v50 = *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType];
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType] = v49;

  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_orientation] = v39;
  v51 = *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics];
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics] = v43;
  v52 = v43;

  v53 = v41;
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth] = v53;
  v54 = v40;
  *&v46[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight] = v54;
  v55 = *&v46[v48];
  if (v55 >> 62)
  {
    if (sub_224628478())
    {
      goto LABEL_35;
    }
  }

  else if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  [*(*(v3 + 72) + OBJC_IVAR___ObjectTrackingAgent_startDate) timeIntervalSinceNow];
  if (fabs(v56) < 0.0666666667)
  {
    *(v3 + 240) = *(*(v3 + 72) + *(v3 + 152));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v57 = sub_224627F28();
    v59 = v58;
    v8 = sub_22453B850;
    a2 = v57;
    a3 = v59;

    return MEMORY[0x2822009F8](v8, a2, a3);
  }

LABEL_35:
  v61 = *(v3 + 72);
  v62 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v63 = *(v61 + OBJC_IVAR___ObjectTrackingAgent_startDate);
  *(v61 + OBJC_IVAR___ObjectTrackingAgent_startDate) = v62;

  v64 = *(v61 + v6[131]);
  *(v3 + 232) = v64;
  if (v64)
  {
    v64;
    v65 = swift_task_alloc();
    *(v3 + 248) = v65;
    *v65 = v3;
    v65[1] = sub_22453B8C0;
    v66 = *(v3 + 24);

    return sub_2245A03E4(v46, v66);
  }

  else
  {
    v68 = swift_task_alloc();
    *(v3 + 264) = v68;
    *v68 = v3;
    v68[1] = sub_22453BA50;

    return sub_22455AE10();
  }
}

uint64_t sub_22453B850()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245627F0, 0, 0);
}

uint64_t sub_22453B8C0()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  *(v3 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22453BD4C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v3 + 264) = v4;
    *v4 = v3;
    v4[1] = sub_22453BA50;

    return sub_22455AE10();
  }
}

uint64_t sub_22453BA50()
{

  return MEMORY[0x2822009F8](sub_22453BB4C, 0, 0);
}

uint64_t sub_22453BB4C()
{
  v0[34] = *(v0[9] + v0[19]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22453BC24, v2, v1);
}

uint64_t sub_22453BC24()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22453BC94, 0, 0);
}

uint64_t sub_22453BC94()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22453BD4C()
{
  v0[35] = *(v0[9] + v0[19]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22453BE24, v2, v1);
}

uint64_t sub_22453BE24()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22453BE94, 0, 0);
}

uint64_t sub_22453BE94()
{
  v1 = v0[28];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22453C128(void *a1, void *a2, int a3, void *a4, int a5, void *aBlock, double a7, double a8, void *a9)
{
  v9[4] = a4;
  v9[5] = a9;
  v9[2] = a1;
  v9[3] = a2;
  v9[6] = _Block_copy(aBlock);
  v17 = sub_224627CD8();
  v19 = v18;
  v9[7] = v18;
  v20 = a1;
  v21 = a2;
  v22 = a4;
  a9;
  v23 = swift_task_alloc();
  v9[8] = v23;
  *v23 = v9;
  v23[1] = sub_22453C260;

  return sub_22453A4A0(v20, a2, v17, v19, v22, a5, a7, a8);
}

uint64_t sub_22453C260()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = sub_224626FA8();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_22453C458(void *a1, uint64_t a2, uint64_t a3)
{
  *&v47 = 0x6361466E616D7548;
  *(&v47 + 1) = 0xEA00000000007365;
  v4 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (*(&v48 + 1))
  {
    sub_22450950C(0, &qword_27D0C9E90);
    if (swift_dynamicCast())
    {
      v5 = v43;
      goto LABEL_9;
    }
  }

  else
  {
    sub_2245098A0(&v49, &qword_27D0CA3B0);
  }

  sub_22450950C(0, &qword_27D0C9E90);
  v5 = sub_224628018();
LABEL_9:
  strcpy(&v49, "ObjectsArray");
  BYTE13(v49) = 0;
  HIWORD(v49) = -5120;
  v6 = [v5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v6)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (*(&v48 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9460);
    if (swift_dynamicCast())
    {
      v7 = v43;
      goto LABEL_17;
    }
  }

  else
  {
    sub_2245098A0(&v49, &qword_27D0CA3B0);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_17:
  *&v47 = 0x646F426E616D7548;
  *(&v47 + 1) = 0xEB00000000736569;
  v8 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (*(&v48 + 1))
  {
    sub_22450950C(0, &qword_27D0C9E90);
    if (swift_dynamicCast())
    {
      v9 = v43;
      goto LABEL_25;
    }
  }

  else
  {
    sub_2245098A0(&v49, &qword_27D0CA3B0);
  }

  sub_22450950C(0, &qword_27D0C9E90);
  v9 = sub_224628018();
LABEL_25:
  strcpy(&v49, "ObjectsArray");
  BYTE13(v49) = 0;
  HIWORD(v49) = -5120;
  v10 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v10)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (*(&v48 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9460);
    if (swift_dynamicCast())
    {
      v11 = v43;
      goto LABEL_33;
    }
  }

  else
  {
    sub_2245098A0(&v49, &qword_27D0CA3B0);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_33:
  *&v44 = 0x6569646F42676F44;
  *(&v44 + 1) = 0xE900000000000073;
  v12 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v46 = 0u;
  }

  v47 = v44;
  v48 = v46;
  if (*(&v46 + 1))
  {
    sub_22450950C(0, &qword_27D0C9E90);
    if (swift_dynamicCast())
    {
      v13 = v42;
      goto LABEL_41;
    }
  }

  else
  {
    sub_2245098A0(&v47, &qword_27D0CA3B0);
  }

  sub_22450950C(0, &qword_27D0C9E90);
  v13 = sub_224628018();
LABEL_41:
  strcpy(&v47, "ObjectsArray");
  BYTE13(v47) = 0;
  HIWORD(v47) = -5120;
  v14 = [v13 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (*(&v48 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9460);
    if (swift_dynamicCast())
    {
      v15 = v44;
      goto LABEL_49;
    }
  }

  else
  {
    sub_2245098A0(&v49, &qword_27D0CA3B0);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_49:
  *&v45 = 0x6569646F42746143;
  *(&v45 + 1) = 0xE900000000000073;
  v16 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    sub_22450950C(0, &qword_27D0C9E90);
    if (swift_dynamicCast())
    {
      v17 = v42;
      goto LABEL_57;
    }
  }

  else
  {
    sub_2245098A0(&v47, &qword_27D0CA3B0);
  }

  sub_22450950C(0, &qword_27D0C9E90);
  v17 = sub_224628018();
LABEL_57:
  strcpy(&v47, "ObjectsArray");
  BYTE13(v47) = 0;
  HIWORD(v47) = -5120;
  v18 = [v17 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v18)
  {
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v19 = MEMORY[0x277D84F90];
  v49 = v47;
  v50 = v48;
  if (*(&v48 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9460);
    if (swift_dynamicCast())
    {
      v20 = v45;
      goto LABEL_65;
    }
  }

  else
  {
    sub_2245098A0(&v49, &qword_27D0CA3B0);
  }

  v20 = MEMORY[0x277D84F90];
LABEL_65:
  *&v49 = v15;
  sub_22453DE14(v20);
  v21 = v49;
  *&v49 = v19;
  v22 = v7[2];
  if (v22)
  {
    v23 = v7 + 4;
    do
    {

      v25 = sub_22455DD64(v24, 0);

      v26 = v25;
      MEMORY[0x22AA51310]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224627EF8();
      }

      sub_224627F08();

      ++v23;
      --v22;
    }

    while (v22);
    v19 = v49;
  }

  if ((a2 != 0xD000000000000015 || 0x8000000224637710 != a3) && (sub_224628688() & 1) == 0 && (a2 != 0x6570795474726F50 || a3 != 0xEC0000006B636142) && (sub_224628688() & 1) == 0)
  {
    goto LABEL_82;
  }

  if (qword_27D0C8870 != -1)
  {
    swift_once();
  }

  v27 = byte_27D0D6060;
  if (byte_27D0D6060 == 2)
  {
    v27 = *(v39 + OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig);
  }

  if (v27)
  {
LABEL_82:
    v28 = v11[2];
    if (v28)
    {
      v29 = 32;
      do
      {

        v31 = sub_22455DD64(v30, 1);

        v32 = v31;
        MEMORY[0x22AA51310]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224627EF8();
        }

        sub_224627F08();

        v29 += 8;
        --v28;
      }

      while (v28);
      v19 = v49;
    }
  }

  v33 = *(v21 + 16);
  if (v33)
  {
    v34 = v21 + 32;
    do
    {

      v36 = sub_22455DD64(v35, 2);

      v37 = v36;
      MEMORY[0x22AA51310]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224627EF8();
      }

      sub_224627F08();

      v34 += 8;
      --v33;
    }

    while (v33);
    v19 = v49;
  }

  return v19;
}

uint64_t sub_22453CFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v78 = a2;
  v4 = sub_224626FC8();
  v83 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v85 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v84 = &v76 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v82 = &v76 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v76 - v11;
  v81 = a1;
  sub_224628198();
  sub_224509554(&qword_27D0C9458, MEMORY[0x277CC9178]);
  sub_224628248();
  v13 = MEMORY[0x277D84F90];
  while (*(&v91 + 1))
  {
    sub_224535258(&v90, v92);
    sub_2245097F8(v92, &v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9348);
    if (swift_dynamicCast())
    {
      v14 = v89;
      if (*(v89 + 16) && (v15 = sub_2245096C8(0x444965636146, 0xE600000000000000), (v16 & 1) != 0))
      {
        sub_2245097F8(*(v14 + 56) + 32 * v15, &v90);

        if (*(&v91 + 1))
        {
          sub_2245098A0(&v90, &qword_27D0CA3B0);
          sub_224535258(v92, &v90);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22455C6A0(0, *(v13 + 16) + 1, 1);
            v13 = v93;
          }

          v19 = *(v13 + 16);
          v18 = *(v13 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_22455C6A0((v18 > 1), v19 + 1, 1);
            v13 = v93;
          }

          *(v13 + 16) = v19 + 1;
          sub_224535258(&v90, (v13 + 32 * v19 + 32));
          goto LABEL_5;
        }
      }

      else
      {

        v90 = 0u;
        v91 = 0u;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v92);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      v90 = 0u;
      v91 = 0u;
    }

    sub_2245098A0(&v90, &qword_27D0CA3B0);
LABEL_5:
    sub_224628248();
  }

  v20 = *(v83 + 8);
  v83 += 8;
  v80 = v20;
  v20(v12, v4);
  sub_2245098A0(&v90, &qword_27D0CA3B0);
  v21 = sub_224537F84(v13, sub_22455C660, &qword_27D0C9348);

  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v77 = v23;
  sub_224628198();
  sub_224628248();
  if (*(&v91 + 1))
  {
    v24 = MEMORY[0x277D84F90];
    v25 = v82;
    while (1)
    {
      sub_224535258(&v90, v92);
      sub_2245097F8(v92, &v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9348);
      if (swift_dynamicCast())
      {
        v26 = v89;
        if (*(v89 + 16) && (v27 = sub_2245096C8(17481, 0xE200000000000000), (v28 & 1) != 0))
        {
          sub_2245097F8(*(v26 + 56) + 32 * v27, &v90);

          if (*(&v91 + 1))
          {
            sub_2245098A0(&v90, &qword_27D0CA3B0);
            sub_224535258(v92, &v90);
            v29 = swift_isUniquelyReferenced_nonNull_native();
            v93 = v24;
            if ((v29 & 1) == 0)
            {
              sub_22455C6A0(0, *(v24 + 16) + 1, 1);
              v24 = v93;
            }

            v31 = *(v24 + 16);
            v30 = *(v24 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_22455C6A0((v30 > 1), v31 + 1, 1);
              v24 = v93;
            }

            *(v24 + 16) = v31 + 1;
            sub_224535258(&v90, (v24 + 32 * v31 + 32));
            v25 = v82;
            goto LABEL_24;
          }
        }

        else
        {

          v90 = 0u;
          v91 = 0u;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v92);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        v90 = 0u;
        v91 = 0u;
      }

      sub_2245098A0(&v90, &qword_27D0CA3B0);
LABEL_24:
      sub_224628248();
      if (!*(&v91 + 1))
      {
        goto LABEL_37;
      }
    }
  }

  v24 = v22;
  v25 = v82;
LABEL_37:
  v80(v25, v4);
  sub_2245098A0(&v90, &qword_27D0CA3B0);
  v32 = sub_224537F84(v24, sub_22455C660, &qword_27D0C9348);

  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v82 = v34;
  sub_224628198();
  sub_224628248();
  if (*(&v91 + 1))
  {
    while (1)
    {
      sub_224535258(&v90, v92);
      sub_2245097F8(v92, &v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9348);
      if (!swift_dynamicCast())
      {
        goto LABEL_53;
      }

      v35 = v89;
      if (!*(v89 + 16))
      {
        break;
      }

      v36 = sub_2245096C8(1701869940, 0xE400000000000000);
      if ((v37 & 1) == 0)
      {
        break;
      }

      sub_2245097F8(*(v35 + 56) + 32 * v36, &v90);

      if (!*(&v91 + 1))
      {
        goto LABEL_54;
      }

      if ((swift_dynamicCast() & 1) != 0 && v87 == 0x6569646F42746143 && v88 == 0xE900000000000073)
      {

LABEL_56:
        sub_224535258(v92, &v90);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v93 = v33;
        if ((v39 & 1) == 0)
        {
          sub_22455C6A0(0, *(v33 + 16) + 1, 1);
          v33 = v93;
        }

        v41 = *(v33 + 16);
        v40 = *(v33 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_22455C6A0((v40 > 1), v41 + 1, 1);
          v33 = v93;
        }

        *(v33 + 16) = v41 + 1;
        sub_224535258(&v90, (v33 + 32 * v41 + 32));
        goto LABEL_43;
      }

LABEL_55:
      v38 = sub_224628688();

      if (v38)
      {
        goto LABEL_56;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v92);
LABEL_43:
      sub_224628248();
      if (!*(&v91 + 1))
      {
        goto LABEL_61;
      }
    }

LABEL_53:
    v90 = 0u;
    v91 = 0u;
LABEL_54:
    sub_2245098A0(&v90, &qword_27D0CA3B0);
    goto LABEL_55;
  }

LABEL_61:
  v80(v84, v4);
  sub_2245098A0(&v90, &qword_27D0CA3B0);
  v42 = sub_224537F84(v33, sub_22455C660, &qword_27D0C9348);

  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v93 = v44;
  sub_224628198();
  sub_224628248();
  if (*(&v91 + 1))
  {
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_224535258(&v90, v92);
      sub_2245097F8(v92, &v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9348);
      if (!swift_dynamicCast())
      {
        goto LABEL_77;
      }

      v46 = v86;
      if (!*(v86 + 16))
      {
        break;
      }

      v47 = sub_2245096C8(1701869940, 0xE400000000000000);
      if ((v48 & 1) == 0)
      {
        break;
      }

      sub_2245097F8(*(v46 + 56) + 32 * v47, &v90);

      if (!*(&v91 + 1))
      {
        goto LABEL_78;
      }

      if ((swift_dynamicCast() & 1) != 0 && v87 == 0x6569646F42676F44 && v88 == 0xE900000000000073)
      {

LABEL_80:
        sub_224535258(v92, &v90);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v89 = v45;
        if ((v50 & 1) == 0)
        {
          sub_22455C6A0(0, *(v45 + 16) + 1, 1);
          v45 = v89;
        }

        v52 = *(v45 + 16);
        v51 = *(v45 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_22455C6A0((v51 > 1), v52 + 1, 1);
          v45 = v89;
        }

        *(v45 + 16) = v52 + 1;
        sub_224535258(&v90, (v45 + 32 * v52 + 32));
        goto LABEL_67;
      }

LABEL_79:
      v49 = sub_224628688();

      if (v49)
      {
        goto LABEL_80;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v92);
LABEL_67:
      sub_224628248();
      if (!*(&v91 + 1))
      {
        goto LABEL_86;
      }
    }

LABEL_77:
    v90 = 0u;
    v91 = 0u;
LABEL_78:
    sub_2245098A0(&v90, &qword_27D0CA3B0);
    goto LABEL_79;
  }

  v45 = v43;
LABEL_86:
  v80(v85, v4);
  sub_2245098A0(&v90, &qword_27D0CA3B0);
  v53 = sub_224537F84(v45, sub_22455C660, &qword_27D0C9348);

  v54 = MEMORY[0x277D84F90];
  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

  sub_22453DE14(v55);
  *&v92[0] = v54;
  v56 = *(v77 + 16);
  if (v56)
  {
    v57 = v77 + 32;
    do
    {

      v59 = sub_22455DD64(v58, 0);

      v60 = v59;
      MEMORY[0x22AA51310]();
      if (*((*&v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224627EF8();
      }

      sub_224627F08();

      v57 += 8;
      --v56;
    }

    while (v56);
    v54 = *&v92[0];
  }

  v61 = v78;
  v62 = v79;
  v63 = v82;
  if ((v78 != 0xD000000000000015 || 0x8000000224637710 != v79) && (sub_224628688() & 1) == 0 && (v61 != 0x6570795474726F50 || v62 != 0xEC0000006B636142) && (sub_224628688() & 1) == 0)
  {
    goto LABEL_106;
  }

  if (qword_27D0C8870 != -1)
  {
    swift_once();
  }

  v64 = byte_27D0D6060;
  if (byte_27D0D6060 == 2)
  {
    v64 = *(v76 + OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig);
  }

  if (v64)
  {
LABEL_106:
    v65 = *(v63 + 2);
    if (v65)
    {
      v66 = 32;
      do
      {

        v68 = sub_22455DD64(v67, 1);

        v69 = v68;
        MEMORY[0x22AA51310]();
        if (*((*&v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224627EF8();
        }

        sub_224627F08();

        v66 += 8;
        --v65;
      }

      while (v65);
      v54 = *&v92[0];
    }
  }

  v70 = *(v93 + 16);
  if (v70)
  {
    v71 = v93 + 32;
    do
    {

      v73 = sub_22455DD64(v72, 2);

      v74 = v73;
      MEMORY[0x22AA51310]();
      if (*((*&v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224627EF8();
      }

      sub_224627F08();

      v71 += 8;
      --v70;
    }

    while (v70);
    v54 = *&v92[0];
  }

  return v54;
}

void *sub_22453DE14(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22452B034(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9348);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22453DF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9488);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22453E00C, 0, 0);
}

uint64_t sub_22453E00C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[7] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[8] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22453E0D4;

  return v5();
}

uint64_t sub_22453E0D4()
{

  return MEMORY[0x2822009F8](sub_22453E1EC, 0, 0);
}

uint64_t sub_22453E1EC()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    (*(v4 + 16))(v3, v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__selectedFaceIDs, v5);
    sub_224627578();
    (*(v4 + 8))(v3, v5);
    v6 = v0[2];
    v1 = v0[3];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = v0[7];
  v8 = *(v1 + OBJC_IVAR___ObjectTrackingAgent__selectedIDsLock);
  [v8 lock];
  *(v1 + OBJC_IVAR___ObjectTrackingAgent__selectedFaceIDs) = v6;

  [v8 unlock];

  v0[10] = *(v1 + v7);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v10 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245627E8, v10, v9);
}

uint64_t sub_22453E3C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_224627F78();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v11 = v3;
  sub_224536440(0, 0, v8, a2, v10);

  v12 = *&v11[OBJC_IVAR___ObjectTrackingAgent__selectedIDsLock];
  [v12 lock];
  v13 = *&v11[*a3];

  [v12 unlock];

  return v13;
}

uint64_t sub_22453E510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9488);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22453E5DC, 0, 0);
}

uint64_t sub_22453E5DC()
{
  v1 = v0[3];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[7] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[8] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22453E6A4;

  return v5();
}

uint64_t sub_22453E6A4()
{

  return MEMORY[0x2822009F8](sub_22453E7BC, 0, 0);
}

uint64_t sub_22453E7BC()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    (*(v4 + 16))(v3, v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__selectedBodyIDs, v5);
    sub_224627578();
    (*(v4 + 8))(v3, v5);
    v6 = v0[2];
    v1 = v0[3];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = v0[7];
  v8 = *(v1 + OBJC_IVAR___ObjectTrackingAgent__selectedIDsLock);
  [v8 lock];
  *(v1 + OBJC_IVAR___ObjectTrackingAgent__selectedBodyIDs) = v6;

  [v8 unlock];

  v0[10] = *(v1 + v7);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v10 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22453E950, v10, v9);
}

uint64_t sub_22453E950()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

id sub_22453E9DC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_224627EB8();

  return v5;
}

uint64_t sub_22453EA44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v0[OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect] = 1;
  v4 = sub_224627F78();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_224536440(0, 0, v3, &unk_22462F220, v5);
}

uint64_t sub_22453EB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224627118();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_224627B78();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22453EC74, 0, 0);
}

uint64_t sub_22453EC74()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[9] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[10] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_22453ED3C;

  return v5();
}

uint64_t sub_22453ED3C()
{

  return MEMORY[0x2822009F8](sub_22453EE54, 0, 0);
}

uint64_t sub_22453EE54()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v3 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v3)
  {
    (*(v0[7] + 16))(v0[8], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[6]);
    v4 = sub_224627B58();
    v5 = sub_224628058();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_224507000, v4, v5, "calling tracker.stopTracking()", v6, 2u);
      MEMORY[0x22AA526D0](v6, -1, -1);
    }

    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];

    (*(v8 + 8))(v7, v9);
    v10 = *(v1 + v2);
    if (v10)
    {
      v11 = v10;
      sub_22459B6D4();
    }

    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    sub_224559F68();
    sub_224627108();
    DKTrackingMetric.send(time:)();
    (*(v13 + 8))(v12, v14);
    v3 = *(v1 + v2);
    if (v3)
    {
      v15 = v3;
      sub_2245697B8(0);

      v3 = *(v1 + v2);
    }
  }

  v16 = v0[2];
  *(v1 + v2) = 0;

  v17 = OBJC_IVAR___ObjectTrackingAgent_manager;
  v18 = *(v16 + OBJC_IVAR___ObjectTrackingAgent_manager);
  if (v18)
  {
    v19 = v18;
    DockCoreManager.disconnect()();

    v18 = *(v16 + v17);
  }

  v20 = v0[9];
  v21 = v0[2];
  *(v16 + v17) = 0;

  v0[12] = *(v21 + v20);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v23 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22453F0AC, v23, v22);
}

uint64_t sub_22453F0AC()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22453F24C()
{
  v1 = *(v0 + OBJC_IVAR___ObjectTrackingAgent_lastFaces);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9468);
  sub_224627EC8();

  return MEMORY[0x277D84F90];
}

uint64_t sub_22453F380(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22453F3A4, 0, 0);
}

uint64_t sub_22453F3A4()
{
  v1 = v0[4];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[5] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[6] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22453F46C;

  return v5();
}

uint64_t sub_22453F46C()
{

  return MEMORY[0x2822009F8](sub_22453F584, 0, 0);
}

uint64_t sub_22453F584()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_lastImage);
  *(v1 + OBJC_IVAR___ObjectTrackingAgent_lastImage) = v3;
  v6 = v3;

  v7 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_lastFaces);
  *(v1 + OBJC_IVAR___ObjectTrackingAgent_lastFaces) = v4;
  v8 = v4;

  v0[8] = *(v1 + v2);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v10 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22453F68C, v10, v9);
}

uint64_t sub_22453F68C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22453F884(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_22453F95C;

  return sub_22453F380(v8, v9);
}

uint64_t sub_22453F95C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

BOOL sub_22453FACC()
{
  if (*(v0 + OBJC_IVAR___ObjectTrackingAgent_tracker))
  {
    return 1;
  }

  v2 = objc_allocWithZone(type metadata accessor for DeviceNotification());
  v3 = DeviceNotification.init(name:)(0xD000000000000022, 0x8000000224637730);
  v4 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v5 = *&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], &v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]);
  v7 = *&v3[v6];
  v8 = *&v3[v4];

  os_unfair_lock_unlock(v8 + 4);

  return v7 != 0;
}

uint64_t sub_22453FBFC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[3] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22453FCC4;

  return v5();
}

uint64_t sub_22453FCC4()
{

  return MEMORY[0x2822009F8](sub_22453FDDC, 0, 0);
}

uint64_t sub_22453FDDC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
    v4 = *&v2[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore];
    v5 = v2;
    v6 = v4;
    sub_224628148();

    v7 = v5[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled];
    v8 = *&v2[v3];
    sub_224628158();

    v1 = *(v0 + 16);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 56) = v7;
  *(v0 + 48) = *(v1 + *(v0 + 24));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v10 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224562800, v10, v9);
}

uint64_t sub_224540098(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245627E4;

  return sub_22453FBDC();
}

uint64_t sub_224540140(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_224540164, 0, 0);
}

uint64_t sub_224540164()
{
  v1 = v0[4];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[5] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[6] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22454022C;

  return v5();
}

uint64_t sub_22454022C()
{

  return MEMORY[0x2822009F8](sub_224540344, 0, 0);
}

uint64_t sub_224540344()
{
  v1 = *(v0 + 4);
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  *(v0 + 8) = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    *(v0 + 9) = v3;
    *v3 = v0;
    v3[1] = sub_2245404AC;
    v4 = v0[2];
    v5 = v0[3];

    return sub_22459CD24(v4, v5);
  }

  else
  {
    v0[11] = *(v1 + *(v0 + 5));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v8 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22454069C, v8, v7);
  }
}

uint64_t sub_2245404AC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_224540708;
  }

  else
  {
    v2 = sub_2245405C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245405C0()
{
  *(v0 + 88) = *(*(v0 + 32) + *(v0 + 40));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22454069C, v2, v1);
}

uint64_t sub_22454069C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224540708()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  *(v0 + 96) = *(v1 + v2);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245407E4, v4, v3);
}

uint64_t sub_2245407E4()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224540854, 0, 0);
}

uint64_t sub_224540854()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224540A48(const void *a1, void *a2, double a3, double a4)
{
  v4[2] = a2;
  v4[3] = _Block_copy(a1);
  a2;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_224540B08;

  return sub_224540140(a3, a4);
}

uint64_t sub_224540B08()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_224626FA8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_224540C8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_224540CAC, 0, 0);
}

uint64_t sub_224540CAC()
{
  v1 = v0[3];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[4] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[5] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_224540D74;

  return v5();
}

uint64_t sub_224540D74()
{

  return MEMORY[0x2822009F8](sub_224540E8C, 0, 0);
}

uint64_t sub_224540E8C()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v0[7] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_224540FF8;
    v4 = v0[2];

    return sub_22459D5CC(v4);
  }

  else
  {
    v0[10] = *(v1 + v0[4]);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v7 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245411E8, v7, v6);
  }
}

uint64_t sub_224540FF8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_224541254;
  }

  else
  {
    v2 = sub_22454110C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22454110C()
{
  *(v0 + 80) = *(*(v0 + 24) + *(v0 + 32));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245411E8, v2, v1);
}

uint64_t sub_2245411E8()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224541254()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  *(v0 + 88) = *(v1 + v2);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224541330, v4, v3);
}

uint64_t sub_224541330()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245413A0, 0, 0);
}

uint64_t sub_2245413A0()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224541594(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_224627ED8();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_224541668;

  return sub_224540C8C(v5);
}

uint64_t sub_224541668()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_224626FA8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_224541808(double a1, double a2, double a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245418AC, 0, 0);
}

uint64_t sub_2245418AC()
{
  v1 = v0[6];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[8] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[9] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_224541974;

  return v5();
}

uint64_t sub_224541974()
{

  return MEMORY[0x2822009F8](sub_224541A8C, 0, 0);
}

uint64_t sub_224541A8C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_userOverridedAspectRatio;
    v6 = sub_224627F78();
    v14 = *(v0 + 32);
    v15 = *(v0 + 16);
    v2[v5] = 1;
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = v2;
    *(v7 + 56) = v14;
    *(v7 + 40) = v15;
    v8 = v2;
    sub_224536440(0, 0, v3, &unk_2246319B0, v7);

    *(v0 + 88) = *(v1 + v4);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v10 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_224541CC8, v10, v9);
  }

  else
  {
    sub_22452ECAC();
    swift_allocError();
    *v11 = 0xD000000000000015;
    *(v11 + 8) = 0x8000000224637760;
    *(v11 + 16) = 9;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_224541CC8()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224541EDC(const void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v6[2] = a2;
  v6[3] = _Block_copy(a1);
  a2;
  v12 = swift_task_alloc();
  v6[4] = v12;
  *v12 = v6;
  v12[1] = sub_2245627F4;

  return sub_224541808(a3, a4, a5, a6);
}

uint64_t sub_224541FB4(double a1, double a2, double a3, double a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22450D034;

  return sub_22455EAA8(a1, a2, a3, a4);
}

uint64_t sub_224542220(const void *a1, double a2, double a3, double a4, double a5)
{
  *(v5 + 16) = _Block_copy(a1);
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_2245422F8;

  return sub_22455EAA8(a2, a3, a4, a5);
}

uint64_t sub_2245422F8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_224626FA8();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_22454245C()
{

  return MEMORY[0x2822009F8](sub_224542574, 0, 0);
}

uint64_t sub_224542574()
{
  v50 = v0;
  v1 = v0[37];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[9];
  v4[OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect] = 0;
  v5 = OBJC_IVAR___ObjectTrackingAgent_logger;
  v0[41] = OBJC_IVAR___ObjectTrackingAgent_logger;
  v6 = *(v3 + 16);
  v0[42] = v6;
  v0[43] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, &v4[v5], v2);
  v7 = v4;
  v8 = sub_224627B58();
  v9 = sub_224628058();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[22];
    v45 = v0[21];
    v46 = v0[37];
    v47 = v6;
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v48 = v4;
    v49 = swift_slowAlloc();
    v13 = v49;
    *v12 = 136315138;
    v14 = *(v11 + OBJC_IVAR___ObjectTrackingAgent_appID + 8);
    v0[7] = *(v11 + OBJC_IVAR___ObjectTrackingAgent_appID);
    v0[8] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9610);
    v15 = sub_224627D28();
    v17 = v5;
    v18 = sub_224509F28(v15, v16, &v49);
    v6 = v47;

    *(v12 + 4) = v18;
    v5 = v17;
    _os_log_impl(&dword_224507000, v8, v9, "setupAgent: appID %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v19 = v13;
    v4 = v48;
    MEMORY[0x22AA526D0](v19, -1, -1);
    MEMORY[0x22AA526D0](v12, -1, -1);

    v20 = *(v10 + 8);
    v20(v46, v45);
  }

  else
  {
    v21 = v0[37];
    v22 = v0[21];
    v23 = v0[22];

    v20 = *(v23 + 8);
    v20(v21, v22);
  }

  v24 = v0[9];
  v25 = OBJC_IVAR___ObjectTrackingAgent_manager;
  v0[44] = v20;
  v0[45] = v25;
  if (!*(v24 + v25))
  {
    v26 = [objc_allocWithZone(type metadata accessor for DockCoreManager()) init];
    v27 = *(v24 + v25);
    *(v24 + v25) = v26;
    v28 = v26;

    v24 = v0[9];
    if (v28)
    {
      swift_unknownObjectWeakAssign();

      v24 = v0[9];
    }
  }

  v29 = OBJC_IVAR___ObjectTrackingAgent_setupOngoing;
  v0[46] = OBJC_IVAR___ObjectTrackingAgent_setupOngoing;
  if ((*(v24 + v29) & 1) != 0 || (v30 = OBJC_IVAR___ObjectTrackingAgent_setupComplete, v0[47] = OBJC_IVAR___ObjectTrackingAgent_setupComplete, *(v24 + v30) == 1))
  {
    v6(v0[36], &v4[v5], v0[21]);
    v31 = sub_224627B58();
    v32 = sub_224628058();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_224507000, v31, v32, "setup in process or already done, not duplicating", v33, 2u);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    v34 = v0[38];
    v35 = v0[36];
    v36 = v0[21];
    v37 = v0[9];

    v20(v35, v36);
    v0[48] = *(v37 + v34);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v38 = sub_224627F28();
    v40 = v39;
    v41 = sub_2245429DC;
  }

  else
  {
    v42 = v0[38];
    *(v24 + v29) = 1;
    v0[49] = *(v24 + v42);
    v0[50] = sub_2246274B8();
    v0[51] = sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v38 = sub_224627F28();
    v40 = v43;
    v41 = sub_224509EB8;
  }

  return MEMORY[0x2822009F8](v41, v38, v40);
}

uint64_t sub_2245429DC()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224542B3C()
{
  (*(v0 + 336))(*(v0 + 280), *(v0 + 72) + *(v0 + 328), *(v0 + 168));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "setting up agent - register for darwin notifications", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v4 = *(v0 + 352);
  v5 = *(v0 + 304);
  v6 = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 72);

  v4(v6, v7);
  *(v0 + 416) = *(v8 + v5);
  v11 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v9 = swift_task_alloc();
  *(v0 + 424) = v9;
  *v9 = v0;
  v9[1] = sub_224542CC0;

  return v11();
}

uint64_t sub_224542CC0()
{

  return MEMORY[0x2822009F8](sub_22450AEF4, 0, 0);
}

uint64_t sub_224542DD8()
{
  (*(v0 + 336))(*(v0 + 272), *(v0 + 72) + *(v0 + 328), *(v0 + 168));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "registered for state events", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v4 = *(v0 + 272);
  v5 = *(v0 + 440);
  *(v0 + 456) = v5;
  v6 = *(v0 + 72);
  (*(v0 + 352))(v4, *(v0 + 168));
  v7 = OBJC_IVAR___ObjectTrackingAgent_appID;
  *(v0 + 464) = OBJC_IVAR___ObjectTrackingAgent_appID;
  if (*(v6 + v7 + 8))
  {
    *(v0 + 472) = *(*(v0 + 72) + *(v0 + 304));
    v11 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v8 = swift_task_alloc();
    *(v0 + 480) = v8;
    *v8 = v0;
    v9 = sub_224542FD8;
  }

  else
  {
    *(v0 + 512) = v5;
    *(v0 + 520) = *(*(v0 + 72) + *(v0 + 304));
    v11 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v8 = swift_task_alloc();
    *(v0 + 528) = v8;
    *v8 = v0;
    v9 = sub_2245430F0;
  }

  v8[1] = v9;

  return v11();
}

uint64_t sub_224542FD8()
{

  return MEMORY[0x2822009F8](sub_22450B154, 0, 0);
}

uint64_t sub_2245430F0()
{

  return MEMORY[0x2822009F8](sub_224543208, 0, 0);
}

uint64_t sub_224543208()
{
  v1 = *(v0 + 72);
  if (*(v1 + *(v0 + 360)))
  {
    *(v0 + 544) = *(v1 + *(v0 + 304));

    v2 = sub_224627F28();
    v4 = v3;
    v5 = sub_22450BDF0;
  }

  else
  {
    (*(v0 + 336))(*(v0 + 256), v1 + *(v0 + 328), *(v0 + 168));
    v6 = sub_224627B58();
    v7 = sub_224628048();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_224507000, v6, v7, "manager is nil, aborting setupAgent", v8, 2u);
      MEMORY[0x22AA526D0](v8, -1, -1);
    }

    v9 = *(v0 + 368);
    v10 = *(v0 + 352);
    v11 = *(v0 + 304);
    v12 = *(v0 + 256);
    v13 = *(v0 + 168);
    v14 = *(v0 + 72);

    v10(v12, v13);
    *(v14 + v9) = 0;
    *(v0 + 536) = *(v14 + v11);

    v2 = sub_224627F28();
    v4 = v15;
    v5 = sub_22450D278;
  }

  return MEMORY[0x2822009F8](v5, v2, v4);
}

uint64_t sub_2245433BC(char a1)
{
  *(*v1 + 753) = a1;

  return MEMORY[0x2822009F8](sub_22450C3FC, 0, 0);
}

uint64_t sub_2245434BC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 584) = v3;
  *v3 = v2;
  v3[1] = sub_2245435FC;

  return sub_224548A50();
}

uint64_t sub_2245435FC(uint64_t a1)
{
  *(*v1 + 592) = a1;

  return MEMORY[0x2822009F8](sub_22450C768, 0, 0);
}

uint64_t sub_2245436FC()
{

  return MEMORY[0x2822009F8](sub_22450CBE0, 0, 0);
}

uint64_t sub_224543814(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 754) = a2;

  return MEMORY[0x2822009F8](sub_22454391C, 0, 0);
}

uint64_t sub_22454391C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);
  v3 = *(v0 + 168);
  v4 = *(v0 + 72);
  if ((*(v0 + 754) & 1) != 0 || *(v0 + 24))
  {
    v1(*(v0 + 208), v4 + v2, v3);
    v21 = sub_224627B58();
    v22 = sub_224628058();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_224507000, v21, v22, "tracking button on, enabling tracking for stand", v23, 2u);
      MEMORY[0x22AA526D0](v23, -1, -1);
    }

    v24 = *(v0 + 352);
    v25 = *(v0 + 304);
    v26 = *(v0 + 208);
    v27 = *(v0 + 168);
    v28 = *(v0 + 72);

    v24(v26, v27);
    *(v0 + 664) = *(v28 + v25);
    v30 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v19 = swift_task_alloc();
    *(v0 + 672) = v19;
    *v19 = v0;
    v20 = sub_224544198;
  }

  else
  {
    v1(*(v0 + 216), v4 + v2, v3);
    v5 = sub_224627B58();
    v6 = sub_224628058();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_224507000, v5, v6, "tracking button off, disabling tracking for stand", v7, 2u);
      MEMORY[0x22AA526D0](v7, -1, -1);
    }

    v8 = *(v0 + 600);
    v9 = *(v0 + 352);
    v10 = *(v0 + 304);
    v11 = *(v0 + 216);
    v12 = *(v0 + 168);
    v13 = *(v0 + 72);

    v9(v11, v12);
    v14 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
    v15 = *&v8[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore];
    v16 = v8;
    v17 = v15;
    sub_224628148();

    v16[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled] = 0;
    v18 = *&v8[v14];
    sub_224628158();

    *(v0 + 640) = *(v13 + v10);
    v30 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v19 = swift_task_alloc();
    *(v0 + 648) = v19;
    *v19 = v0;
    v20 = sub_224543BFC;
  }

  v19[1] = v20;

  return v30();
}

uint64_t sub_224543BFC()
{

  return MEMORY[0x2822009F8](sub_224543D14, 0, 0);
}

uint64_t sub_224543D14()
{
  v1 = v0[9];
  v2 = *(v1 + v0[45]);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock];
    v4 = v2;

    os_unfair_lock_lock(v3 + 5);
    *&v4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState] = 0;
    os_unfair_lock_unlock(v3 + 5);

    v1 = v0[9];
  }

  v0[82] = *(v1 + v0[38]);

  v6 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224543E04, v6, v5);
}

uint64_t sub_224543E04()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224543E74, 0, 0);
}

uint64_t sub_224543E74()
{
  v1 = *(v0 + 600);
  sub_22459B6D4();

  v2 = v1;
  sub_2245697B8(1);

  v3 = *(v0 + 600);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v37 = *(v0 + 144);
  v29 = *(v0 + 128);
  v35 = *(v0 + 112);
  v36 = *(v0 + 104);
  v7 = *(v0 + 72);
  v33 = *(v0 + 120);
  v34 = *(v0 + 80);
  v8 = (v7 + *(v0 + 464));
  v9 = *(v0 + 88);
  v32 = *(v0 + 96);
  sub_224627108();
  v10 = *v8;
  v11 = v8[1];
  v28 = v10;
  v12 = *(v3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8);
  v31 = *(v3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion);
  v13 = *(v3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model + 8);
  v30 = *(v3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model);
  v14 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info;
  *(v0 + 696) = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info;
  v15 = (*(v3 + v14) + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
  v16 = v15[1];
  v27 = *v15;
  v17 = v7 + OBJC_IVAR___ObjectTrackingAgent_trackingMetric;

  DKTrackingMetric.init()(v6);
  sub_224516100(v6, v17);
  (*(v4 + 24))(v17 + *(v29 + 96), v5, v37);
  v18 = v28;
  if (v11)
  {
    v19 = v11;
  }

  else
  {
    v18 = 0x6E776F6E6B6E55;
    v19 = 0xE700000000000000;
  }

  *v17 = v18;
  *(v17 + 8) = v19;

  *(v17 + 16) = v27;
  *(v17 + 24) = v16;

  v20 = v30;
  if (v13)
  {
    v21 = v13;
  }

  else
  {
    v20 = 0x6E776F6E6B6E55;
    v21 = 0xE700000000000000;
  }

  *(v17 + 32) = v20;
  *(v17 + 40) = v21;

  v22 = v31;
  if (v12)
  {
    v23 = v12;
  }

  else
  {
    v22 = 0x6E776F6E6B6E55;
    v23 = 0xE700000000000000;
  }

  *(v17 + 48) = v22;
  *(v17 + 56) = v23;

  *(v17 + 64) = 0;
  sub_224627198();
  (*(v9 + 104))(v32, *MEMORY[0x277CC9980], v34);
  v24 = sub_2246271B8();
  (*(v9 + 8))(v32, v34);
  (*(v35 + 8))(v33, v36);
  (*(v4 + 8))(v5, v37);
  *(v17 + 72) = v24 / 3;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 92) = 0u;
  *(v17 + 108) = 0u;
  *(v17 + 124) = 0;
  v25 = swift_task_alloc();
  *(v0 + 704) = v25;
  *v25 = v0;
  v25[1] = sub_224544914;

  return sub_2245467FC();
}

uint64_t sub_224544198()
{

  return MEMORY[0x2822009F8](sub_2245442B0, 0, 0);
}

uint64_t sub_2245442B0()
{
  v1 = v0[9];
  v2 = *(v1 + v0[45]);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock];
    v4 = v2;

    os_unfair_lock_lock(v3 + 5);
    *&v4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState] = 1;
    os_unfair_lock_unlock(v3 + 5);

    v1 = v0[9];
  }

  v0[85] = *(v1 + v0[38]);

  v6 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245443A4, v6, v5);
}

uint64_t sub_2245443A4()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224544414, 0, 0);
}

uint64_t sub_224544414()
{
  v1 = *(v0 + 600);
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  v3 = *&v1[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore];
  v4 = v1;
  v5 = v3;
  sub_224628148();

  v4[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled] = 1;
  v6 = *&v1[v2];
  sub_224628158();

  v7 = v4;
  v8 = swift_task_alloc();
  *(v0 + 688) = v8;
  *v8 = v0;
  v8[1] = sub_224544504;

  return sub_22459A328();
}

uint64_t sub_224544504()
{
  v1 = *(*v0 + 600);

  return MEMORY[0x2822009F8](sub_224544618, 0, 0);
}

uint64_t sub_224544618()
{
  v1 = v0[75];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v35 = v0[18];
  v27 = v0[16];
  v33 = v0[14];
  v34 = v0[13];
  v5 = v0[9];
  v31 = v0[15];
  v32 = v0[10];
  v6 = (v5 + v0[58]);
  v7 = v0[11];
  v30 = v0[12];
  sub_224627108();
  v8 = *v6;
  v9 = v6[1];
  v26 = v8;
  v10 = *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8);
  v29 = *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion);
  v11 = *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model + 8);
  v28 = *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model);
  v12 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info;
  v0[87] = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info;
  v13 = (*(v1 + v12) + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
  v14 = v13[1];
  v25 = *v13;
  v15 = v5 + OBJC_IVAR___ObjectTrackingAgent_trackingMetric;

  DKTrackingMetric.init()(v4);
  sub_224516100(v4, v15);
  (*(v2 + 24))(v15 + *(v27 + 96), v3, v35);
  v16 = v26;
  if (v9)
  {
    v17 = v9;
  }

  else
  {
    v16 = 0x6E776F6E6B6E55;
    v17 = 0xE700000000000000;
  }

  *v15 = v16;
  *(v15 + 8) = v17;

  *(v15 + 16) = v25;
  *(v15 + 24) = v14;

  v18 = v28;
  if (v11)
  {
    v19 = v11;
  }

  else
  {
    v18 = 0x6E776F6E6B6E55;
    v19 = 0xE700000000000000;
  }

  *(v15 + 32) = v18;
  *(v15 + 40) = v19;

  v20 = v29;
  if (v10)
  {
    v21 = v10;
  }

  else
  {
    v20 = 0x6E776F6E6B6E55;
    v21 = 0xE700000000000000;
  }

  *(v15 + 48) = v20;
  *(v15 + 56) = v21;

  *(v15 + 64) = 0;
  sub_224627198();
  (*(v7 + 104))(v30, *MEMORY[0x277CC9980], v32);
  v22 = sub_2246271B8();
  (*(v7 + 8))(v30, v32);
  (*(v33 + 8))(v31, v34);
  (*(v2 + 8))(v3, v35);
  *(v15 + 72) = v22 / 3;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 92) = 0u;
  *(v15 + 108) = 0u;
  *(v15 + 124) = 0;
  v23 = swift_task_alloc();
  v0[88] = v23;
  *v23 = v0;
  v23[1] = sub_224544914;

  return sub_2245467FC();
}

uint64_t sub_224544914()
{

  return MEMORY[0x2822009F8](sub_224544A10, 0, 0);
}

uint64_t sub_224544A10()
{
  v1 = v0[9] + OBJC_IVAR___ObjectTrackingAgent_delegate;
  if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
  {
    v2 = v0[87];
    v3 = v0[75];
    v4 = *(v1 + 8);
    swift_getObjectType();
    v5 = *(v4 + 8);
    v6 = *&v3[v2];
    v5();

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v0[75];
  }

  v0[89] = *(v0[9] + v0[38]);
  v9 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v7 = swift_task_alloc();
  v0[90] = v7;
  *v7 = v0;
  v7[1] = sub_224544B68;

  return v9();
}

uint64_t sub_224544B68()
{

  return MEMORY[0x2822009F8](sub_224544C80, 0, 0);
}

uint64_t sub_224544C80()
{
  v1 = v0[47];
  v2 = v0[38];
  v3 = v0[9];
  *(v3 + v0[46]) = 0;
  *(v3 + v1) = 1;
  v0[91] = *(v3 + v2);

  v5 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224544D28, v5, v4);
}

uint64_t sub_224544D28()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224544D98, 0, 0);
}

uint64_t sub_224544D98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224544EF0()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224544F60, 0, 0);
}

uint64_t sub_224544F60()
{
  v1 = *(v0 + 432);
  (*(v0 + 336))(*(v0 + 192), *(v0 + 72) + *(v0 + 328), *(v0 + 168));
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 432);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224507000, v3, v4, "failed registering for state events, err %@", v7, 0xCu);
    sub_2245098A0(v8, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v8, -1, -1);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 192);
  *(v0 + 456) = 0;
  v12 = *(v0 + 72);
  (*(v0 + 352))(v11, *(v0 + 168));
  v13 = OBJC_IVAR___ObjectTrackingAgent_appID;
  *(v0 + 464) = OBJC_IVAR___ObjectTrackingAgent_appID;
  if (*(v12 + v13 + 8))
  {
    *(v0 + 472) = *(*(v0 + 72) + *(v0 + 304));
    v17 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v14 = swift_task_alloc();
    *(v0 + 480) = v14;
    *v14 = v0;
    v15 = sub_224542FD8;
  }

  else
  {
    *(v0 + 512) = 0;
    *(v0 + 520) = *(*(v0 + 72) + *(v0 + 304));
    v17 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v14 = swift_task_alloc();
    *(v0 + 528) = v14;
    *v14 = v0;
    v15 = sub_2245430F0;
  }

  v14[1] = v15;

  return v17();
}

uint64_t sub_2245451EC()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22454525C, 0, 0);
}

uint64_t sub_22454525C()
{
  v1 = *(v0 + 488);
  (*(v0 + 336))(*(v0 + 184), *(v0 + 72) + *(v0 + 328), *(v0 + 168));
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 488);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224507000, v3, v4, "failed registering for config updates, %@", v7, 0xCu);
    sub_2245098A0(v8, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v8, -1, -1);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 352))(*(v0 + 184), *(v0 + 168));
  *(v0 + 512) = 0;
  *(v0 + 520) = *(*(v0 + 72) + *(v0 + 304));
  v13 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v11 = swift_task_alloc();
  *(v0 + 528) = v11;
  *v11 = v0;
  v11[1] = sub_2245430F0;

  return v13();
}

uint64_t sub_2245455E0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_2245627E0;

  return sub_224509AAC(a1);
}

uint64_t sub_22454569C()
{
  v1[10] = v0;
  v2 = sub_224627B78();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224545780, 0, 0);
}

uint64_t sub_224545780()
{
  v1 = v0[10];
  v2 = OBJC_IVAR___ObjectTrackingAgent_configStateLock;
  v0[17] = OBJC_IVAR___ObjectTrackingAgent_configStateLock;
  v0[18] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_224545848;

  return v5();
}

uint64_t sub_224545848()
{

  return MEMORY[0x2822009F8](sub_224545960, 0, 0);
}

uint64_t sub_224545960()
{
  v45 = v0;
  v1 = v0[10];
  v2 = OBJC_IVAR___ObjectTrackingAgent_registeredForTrackingConfigChanges;
  v0[20] = OBJC_IVAR___ObjectTrackingAgent_registeredForTrackingConfigChanges;
  if (v1[v2] != 1)
  {
    v7 = &v1[OBJC_IVAR___ObjectTrackingAgent_appID];
    v8 = *&v1[OBJC_IVAR___ObjectTrackingAgent_appID + 8];
    v9 = OBJC_IVAR___ObjectTrackingAgent_logger;
    v0[22] = OBJC_IVAR___ObjectTrackingAgent_logger;
    v10 = v0[11];
    v11 = v0[12];
    v12 = *(v11 + 16);
    v0[23] = v12;
    v0[24] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    if (v8)
    {
      v12(v0[15], &v1[v9], v10);
      v13 = v1;
      v14 = sub_224627B58();
      v15 = sub_224628058();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v44 = v17;
        *v16 = 136315138;
        v20 = v7[1];
        if (!v20)
        {
          goto LABEL_21;
        }

        v21 = v17;
        v43 = v0[15];
        v23 = v0[11];
        v22 = v0[12];
        v24 = *v7;

        v25 = sub_224509F28(v24, v20, &v44);

        *(v16 + 4) = v25;
        _os_log_impl(&dword_224507000, v14, v15, "Registering for config updates for app %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x22AA526D0](v21, -1, -1);
        MEMORY[0x22AA526D0](v16, -1, -1);

        v26 = *(v22 + 8);
        v17 = v26(v43, v23);
      }

      else
      {
        v34 = v0[15];
        v35 = v0[11];
        v36 = v0[12];

        v26 = *(v36 + 8);
        v17 = v26(v34, v35);
      }

      v0[25] = v26;
      v37 = v0[10];
      v38 = *(v37 + OBJC_IVAR___ObjectTrackingAgent_manager);
      v0[26] = v38;
      if (v38)
      {
        v39 = v7[1];
        v0[27] = v39;
        if (v39)
        {
          v0[28] = *v7;
          v40 = v38;

          v17 = sub_224545F20;
          v18 = 0;
          v19 = 0;
          goto LABEL_17;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return MEMORY[0x2822009F8](v17, v18, v19);
      }

      *(v37 + v0[20]) = 1;
    }

    else
    {
      v12(v0[13], &v1[v9], v10);
      v27 = sub_224627B58();
      v28 = sub_224628058();
      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[12];
      v30 = v0[13];
      v32 = v0[11];
      if (v29)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_224507000, v27, v28, "No appID, can't register for config updates", v33, 2u);
        MEMORY[0x22AA526D0](v33, -1, -1);
      }

      (*(v31 + 8))(v30, v32);
    }

    v0[30] = *(v0[10] + v0[17]);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v3 = sub_224627F28();
    v5 = v41;
    v6 = sub_224546414;
    goto LABEL_16;
  }

  v0[21] = *&v1[v0[17]];
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v3 = sub_224627F28();
  v5 = v4;
  v6 = sub_224545D6C;
LABEL_16:
  v17 = v6;
  v18 = v3;
  v19 = v5;
LABEL_17:

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_224545D6C()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224545DDC, 0, 0);
}

uint64_t sub_224545DDC()
{
  (*(v0[12] + 16))(v0[16], v0[10] + OBJC_IVAR___ObjectTrackingAgent_logger, v0[11]);
  v1 = sub_224627B58();
  v2 = sub_224628058();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[12];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "Already registered for config updates", v7, 2u);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_224545F20()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[10];
  v0[2] = v0;
  v0[3] = sub_224545FE8;
  v5 = swift_continuation_init();
  sub_2245F8AEC(v4, v1, v2, v3, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224545FE8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245461F4;
  }

  else
  {
    v2 = sub_224546104;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224546104()
{
  *(*(v0 + 80) + *(v0 + 160)) = 1;
  *(v0 + 240) = *(*(v0 + 80) + *(v0 + 136));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224546414, v2, v1);
}

uint64_t sub_2245461F4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v4 = *(v0 + 112);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);

  v2(v4, v6 + v3, v5);
  v7 = v1;
  v8 = sub_224627B58();
  v9 = sub_224628058();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 232);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_224507000, v8, v9, "Failed registering for config updates: %@", v12, 0xCu);
    sub_2245098A0(v13, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v13, -1, -1);
    MEMORY[0x22AA526D0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0 + 200))(*(v0 + 112), *(v0 + 88));
  *(v0 + 240) = *(*(v0 + 80) + *(v0 + 136));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v17 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224546414, v17, v16);
}

uint64_t sub_224546414()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22454661C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245466C4;

  return sub_22454569C();
}

uint64_t sub_2245466C4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2245467FC()
{
  v1[10] = v0;
  v2 = sub_224627B78();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245468E0, 0, 0);
}

uint64_t sub_2245468E0()
{
  v1 = v0[10];
  v2 = OBJC_IVAR___ObjectTrackingAgent_manager;
  if (!*(v1 + OBJC_IVAR___ObjectTrackingAgent_manager))
  {
    (*(v0[12] + 16))(v0[16], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[11]);
    v5 = sub_224627B58();
    v6 = sub_224628058();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[16];
    v9 = v0[11];
    v10 = v0[12];
    if (!v7)
    {
      goto LABEL_14;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "manager is nil, not registering for debug notifications";
LABEL_13:
    _os_log_impl(&dword_224507000, v5, v6, v12, v11, 2u);
    MEMORY[0x22AA526D0](v11, -1, -1);
    goto LABEL_14;
  }

  if ((_s11DockKitCore0aC7ManagerC12debugAllowedSbvgZ_0() & 1) == 0)
  {
    (*(v0[12] + 16))(v0[15], v0[10] + OBJC_IVAR___ObjectTrackingAgent_logger, v0[11]);
    v5 = sub_224627B58();
    v6 = sub_224628058();
    v13 = os_log_type_enabled(v5, v6);
    v8 = v0[15];
    v9 = v0[11];
    v10 = v0[12];
    if (!v13)
    {
      goto LABEL_14;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "debug not allowed, skipping register for debug";
    goto LABEL_13;
  }

  v3 = *(v1 + v2);
  v0[17] = v3;
  if (v3)
  {
    v4 = v3;

    return MEMORY[0x2822009F8](sub_224546B84, 0, 0);
  }

  (*(v0[12] + 16))(v0[13], v0[10] + OBJC_IVAR___ObjectTrackingAgent_logger, v0[11]);
  v5 = sub_224627B58();
  v6 = sub_224628058();
  v14 = os_log_type_enabled(v5, v6);
  v10 = v0[12];
  v8 = v0[13];
  v9 = v0[11];
  if (v14)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "registered for debug notifications";
    goto LABEL_13;
  }

LABEL_14:

  (*(v10 + 8))(v8, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_224546B84()
{
  v1 = v0[17];
  v2 = v0[10];
  v0[2] = v0;
  v0[3] = sub_224546C30;
  v3 = swift_continuation_init();
  sub_2245F96B8(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224546C30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 144) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_224546E94;
  }

  else
  {
    v2 = sub_224546D4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224546D4C()
{
  (*(*(v0 + 96) + 16))(*(v0 + 104), *(v0 + 80) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 88));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "registered for debug notifications", v7, 2u);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_224546E94()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);

  (*(v4 + 16))(v2, v5 + OBJC_IVAR___ObjectTrackingAgent_logger, v3);
  v6 = v1;
  v7 = sub_224627B58();
  v8 = sub_224628048();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 144);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_224507000, v7, v8, "failed registering for debug notifications: %@", v11, 0xCu);
    sub_2245098A0(v12, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v12, -1, -1);
    MEMORY[0x22AA526D0](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2245471D4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245627E0;

  return sub_2245467FC();
}

uint64_t sub_22454727C()
{
  v1[10] = v0;
  v2 = sub_224627B78();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224547360, 0, 0);
}

uint64_t sub_224547360()
{
  v1 = v0[10];
  v2 = OBJC_IVAR___ObjectTrackingAgent_manager;
  if (!*(v1 + OBJC_IVAR___ObjectTrackingAgent_manager))
  {
    (*(v0[12] + 16))(v0[16], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[11]);
    v5 = sub_224627B58();
    v6 = sub_224628058();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[16];
    v9 = v0[11];
    v10 = v0[12];
    if (!v7)
    {
      goto LABEL_14;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "manager is nil, not de-registering from debug notifications";
LABEL_13:
    _os_log_impl(&dword_224507000, v5, v6, v12, v11, 2u);
    MEMORY[0x22AA526D0](v11, -1, -1);
    goto LABEL_14;
  }

  if ((_s11DockKitCore0aC7ManagerC12debugAllowedSbvgZ_0() & 1) == 0)
  {
    (*(v0[12] + 16))(v0[15], v0[10] + OBJC_IVAR___ObjectTrackingAgent_logger, v0[11]);
    v5 = sub_224627B58();
    v6 = sub_224628058();
    v13 = os_log_type_enabled(v5, v6);
    v8 = v0[15];
    v9 = v0[11];
    v10 = v0[12];
    if (!v13)
    {
      goto LABEL_14;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "debug not allowed, skipping de-register from debug";
    goto LABEL_13;
  }

  v3 = *(v1 + v2);
  v0[17] = v3;
  if (v3)
  {
    v4 = v3;

    return MEMORY[0x2822009F8](sub_224547604, 0, 0);
  }

  (*(v0[12] + 16))(v0[13], v0[10] + OBJC_IVAR___ObjectTrackingAgent_logger, v0[11]);
  v5 = sub_224627B58();
  v6 = sub_224628058();
  v14 = os_log_type_enabled(v5, v6);
  v10 = v0[12];
  v8 = v0[13];
  v9 = v0[11];
  if (v14)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "stopped debug notifications";
    goto LABEL_13;
  }

LABEL_14:

  (*(v10 + 8))(v8, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_224547604()
{
  v1 = v0[17];
  v0[2] = v0;
  v0[3] = sub_2245476A0;
  v2 = swift_continuation_init();
  sub_2245E72B4(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245476A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 144) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_224547904;
  }

  else
  {
    v2 = sub_2245477BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245477BC()
{
  (*(*(v0 + 96) + 16))(*(v0 + 104), *(v0 + 80) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 88));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "stopped debug notifications", v7, 2u);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_224547904()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);

  (*(v4 + 16))(v2, v5 + OBJC_IVAR___ObjectTrackingAgent_logger, v3);
  v6 = v1;
  v7 = sub_224627B58();
  v8 = sub_224628048();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 144);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_224507000, v7, v8, "failed stopping debug notifications: %@", v11, 0xCu);
    sub_2245098A0(v12, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v12, -1, -1);
    MEMORY[0x22AA526D0](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_224547C44(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245627E0;

  return sub_22454727C();
}

uint64_t sub_224547CEC()
{
  v1[12] = v0;
  v2 = sub_224627B78();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224547DAC, 0, 0);
}

uint64_t sub_224547DAC()
{
  v1 = v0[12];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[16] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[17] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_224547E74;

  return v5();
}

uint64_t sub_224547E74()
{

  return MEMORY[0x2822009F8](sub_224547F8C, 0, 0);
}

uint64_t sub_224547F8C()
{
  v1 = v0[12];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_manager);
  v0[19] = v2;
  if (v2 && (v3 = OBJC_IVAR___ObjectTrackingAgent_appID, v0[20] = OBJC_IVAR___ObjectTrackingAgent_appID, v4 = (v1 + v3), v5 = v4[1], (v0[21] = v5) != 0))
  {
    v0[23] = *v4;
    v6 = v2;

    v7 = sub_22454813C;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v0[22] = *(v1 + v0[16]);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v10 = sub_224627F28();
    v12 = v11;
    v7 = sub_2245480C8;
    v8 = v10;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2245480C8()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22454813C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_224548200;
  v4 = swift_continuation_init();
  sub_2245E1170(v1, v2, v3, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224548200()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_22454847C;
  }

  else
  {
    *(v1 + 217) = *(v1 + 216);
    v3 = sub_224548324;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_224548324()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  *(v0 + 200) = *(v2 + v1);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224548404, v4, v3);
}

uint64_t sub_224548404()
{
  sub_224627498();

  v1 = *(v0 + 217);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22454847C()
{
  v31 = v0;
  v1 = *(v0 + 192);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  (*(v3 + 16))(v2, v5 + OBJC_IVAR___ObjectTrackingAgent_logger, v4);
  v6 = v5;
  v7 = v1;
  v8 = sub_224627B58();
  v9 = sub_224628058();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 192);
    v11 = *(v0 + 112);
    v28 = *(v0 + 104);
    v29 = *(v0 + 120);
    v12 = (*(v0 + 96) + *(v0 + 160));
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 136315394;
    v16 = v12[1];
    *(v0 + 80) = *v12;
    *(v0 + 88) = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9610);
    v17 = sub_224627D28();
    v19 = sub_224509F28(v17, v18, &v30);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v10;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v14 = v21;
    _os_log_impl(&dword_224507000, v8, v9, "Failed checking if app is enabled: %s, %@", v13, 0x16u);
    sub_2245098A0(v14, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x22AA526D0](v15, -1, -1);
    MEMORY[0x22AA526D0](v13, -1, -1);

    (*(v11 + 8))(v29, v28);
  }

  else
  {
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v24 = *(v0 + 104);

    (*(v23 + 8))(v22, v24);
  }

  *(v0 + 208) = *(*(v0 + 96) + *(v0 + 128));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v26 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224548758, v26, v25);
}

uint64_t sub_224548758()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245487C8, 0, 0);
}

uint64_t sub_2245487C8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2245489A8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245627E4;

  return sub_224547CEC();
}

uint64_t sub_224548A50()
{
  v1[11] = v0;
  v2 = sub_224627B78();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224548B28, 0, 0);
}

uint64_t sub_224548B28()
{
  v1 = v0[11];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_manager);
  v0[17] = v2;
  if (v2)
  {
    v3 = v2;

    return MEMORY[0x2822009F8](sub_224548CC4, 0, 0);
  }

  else
  {
    (*(v0[13] + 16))(v0[14], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[12]);
    v4 = sub_224627B58();
    v5 = sub_224628058();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_224507000, v4, v5, "manager is nil, can't get/set tracker", v10, 2u);
      MEMORY[0x22AA526D0](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_224548CC4()
{
  v1 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_224548D68;
  v2 = swift_continuation_init();
  sub_2245DBB6C(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224548D68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 144) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_224549120;
  }

  else
  {
    *(v1 + 152) = *(v1 + 80);
    v3 = sub_224548E8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_224548E8C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    type metadata accessor for TrackingStand();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      (*(*(v0 + 104) + 16))(*(v0 + 120), *(v0 + 88) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 96));
      v3 = v1;
      v4 = sub_224627B58();
      v5 = sub_224628058();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        *(v6 + 4) = v2;
        *v7 = v2;
        v8 = v3;
        _os_log_impl(&dword_224507000, v4, v5, "daemon connected %@", v6, 0xCu);
        sub_2245098A0(v7, &qword_27D0C9660);
        MEMORY[0x22AA526D0](v7, -1, -1);
        MEMORY[0x22AA526D0](v6, -1, -1);
      }

      v9 = *(v0 + 88);
      (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
      if (*(v9 + OBJC_IVAR___ObjectTrackingAgent_appID + 8))
      {
        v10 = *(v9 + OBJC_IVAR___ObjectTrackingAgent_appID);
        v11 = *(v9 + OBJC_IVAR___ObjectTrackingAgent_appID + 8);
      }

      else
      {
        v11 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E55;
      }

      v12 = (v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_appID);
      *v12 = v10;
      v12[1] = v11;
    }

    else
    {
    }
  }

  else
  {
    v2 = 0;
  }

  if (qword_27D0C8870 != -1)
  {
    swift_once();
  }

  v13 = byte_27D0D6060;

  if (v13 == 2)
  {
    LOBYTE(v13) = *(*(v0 + 88) + OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig);
  }

  if (v2 && (v13 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_isInferenceEnabled) = 0;
  }

  v14 = *(v0 + 8);

  return v14(v2);
}

uint64_t sub_224549120()
{
  v1 = *(v0 + 144);
  (*(*(v0 + 104) + 16))(*(v0 + 128), *(v0 + 88) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 96));
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224507000, v3, v4, "Failed fetching connected accessory: %@", v7, 0xCu);
    sub_2245098A0(v8, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v8, -1, -1);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 96));
  if (qword_27D0C8870 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_22454948C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_224549534;

  return sub_224548A50();
}

uint64_t sub_224549534(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_224549680()
{
  v1[11] = v0;
  v2 = sub_224627B78();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22454974C, 0, 0);
}

uint64_t sub_22454974C()
{
  v1 = v0[11];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_manager);
  v0[16] = v2;
  if (v2)
  {
    v3 = v2;

    return MEMORY[0x2822009F8](sub_2245498E0, 0, 0);
  }

  else
  {
    (*(v0[13] + 16))(v0[14], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[12]);
    v4 = sub_224627B58();
    v5 = sub_224628058();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_224507000, v4, v5, "manager is nil, can't get/set tracker", v10, 2u);
      MEMORY[0x22AA526D0](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11(0, 1);
  }
}

uint64_t sub_2245498E0()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_224549984;
  v2 = swift_continuation_init();
  sub_2245DDB30(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224549984()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 136) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_224549B24;
  }

  else
  {
    *(v1 + 144) = *(v1 + 80);
    v3 = sub_224549AA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_224549AA8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1, 0);
}

uint64_t sub_224549B24()
{
  v1 = v0[17];
  (*(v0[13] + 16))(v0[15], v0[11] + OBJC_IVAR___ObjectTrackingAgent_logger, v0[12]);
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628048();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[16];
  v6 = v0[17];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_224507000, v3, v4, "Failed fetching tracking button state: %@", v8, 0xCu);
    sub_2245098A0(v9, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v9, -1, -1);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[13] + 8))(v0[15], v0[12]);

  v12 = v0[1];

  return v12(0, 1);
}

uint64_t sub_224549CE4(uint64_t a1, char a2)
{
  *(v3 + 160) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = sub_224627B78();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224549DCC, 0, 0);
}

uint64_t sub_224549DCC()
{
  v44 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v2 + OBJC_IVAR___ObjectTrackingAgent_manager);
  *(v0 + 88) = v3;
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 24);
    v7 = OBJC_IVAR___ObjectTrackingAgent_logger;
    *(v0 + 96) = OBJC_IVAR___ObjectTrackingAgent_logger;
    v8 = *(v4 + 16);
    *(v0 + 104) = v8;
    *(v0 + 112) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v5, v2 + v7, v1);
    v9 = v6;
    v10 = v3;
    v11 = sub_224627B58();
    v12 = sub_224628058();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 80);
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 24);
    if (v13)
    {
      v42 = v10;
      v18 = swift_slowAlloc();
      v41 = v14;
      v19 = swift_slowAlloc();
      v43 = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_224509F28(0xD000000000000021, 0x8000000224637E10, &v43);
      *(v18 + 12) = 2080;
      v40 = v16;
      v21 = *&v17[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId];
      v20 = *&v17[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId + 8];

      v22 = sub_224509F28(v21, v20, &v43);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2048;
      *(v18 + 24) = *&v17[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType];

      _os_log_impl(&dword_224507000, v11, v12, "%s current session app=%s cam=%ld", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA526D0](v19, -1, -1);
      v23 = v18;
      v10 = v42;
      MEMORY[0x22AA526D0](v23, -1, -1);

      v24 = *(v15 + 8);
      v24(v41, v40);
    }

    else
    {

      v24 = *(v15 + 8);
      v24(v14, v16);
    }

    *(v0 + 120) = 0x8000000224637E10;
    *(v0 + 128) = v24;
    v35 = *(v0 + 160);
    v36 = *(v0 + 24);
    v37 = swift_task_alloc();
    *(v0 + 136) = v37;
    *(v37 + 16) = v10;
    *(v37 + 24) = v36;
    *(v37 + 32) = v35;
    v38 = swift_task_alloc();
    *(v0 + 144) = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9498);
    *v38 = v0;
    v38[1] = sub_22454A1EC;

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000021, 0x8000000224637E10, sub_2245625A8, v37, v39);
  }

  else
  {
    (*(v4 + 16))(*(v0 + 56), v2 + OBJC_IVAR___ObjectTrackingAgent_logger, v1);
    v25 = sub_224627B58();
    v26 = sub_224628058();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);
    v30 = *(v0 + 40);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_224507000, v25, v26, "manager is nil, can't get/set tracker", v31, 2u);
      MEMORY[0x22AA526D0](v31, -1, -1);
    }

    (*(v29 + 8))(v28, v30);

    v32 = *(v0 + 8);
    v33 = MEMORY[0x277D84F90];

    return v32(v33);
  }
}

uint64_t sub_22454A1EC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_22454A62C;
  }

  else
  {

    v2 = sub_22454A308;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22454A308()
{
  v30 = v0;
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_224628478();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v24 = v1;
  do
  {
    if (v4)
    {
      v9 = MEMORY[0x22AA517F0](v3, v1);
    }

    else
    {
      v9 = *(v1 + 8 * v3 + 32);
    }

    v10 = v9;
    (*(v0 + 104))(*(v0 + 64), *(v0 + 32) + *(v0 + 96), *(v0 + 40));
    v11 = v10;
    v12 = sub_224627B58();
    v13 = sub_224628058();
    v14 = os_log_type_enabled(v12, v13);
    v28 = *(v0 + 128);
    if (v14)
    {
      v15 = *(v0 + 120);
      v26 = *(v0 + 40);
      v27 = *(v0 + 64);
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v16 = 136316162;
      *(v16 + 4) = sub_224509F28(0xD000000000000021, v15, &v29);
      *(v16 + 12) = 2080;
      v17 = v4;
      v18 = v2;
      v19 = *&v11[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId];
      v20 = *&v11[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId + 8];

      v21 = sub_224509F28(v19, v20, &v29);
      v2 = v18;
      v4 = v17;

      *(v16 + 14) = v21;
      *(v16 + 22) = 2048;
      *(v16 + 24) = *&v11[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType];

      *(v16 + 32) = 2048;
      *(v16 + 34) = *&v11[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime];
      *(v16 + 42) = 2048;
      *(v16 + 44) = *&v11[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime];
      _os_log_impl(&dword_224507000, v12, v13, "%s previous session app=%s cam=%ld start=%f end=%f", v16, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x22AA526D0](v25, -1, -1);
      v22 = v16;
      v1 = v24;
      MEMORY[0x22AA526D0](v22, -1, -1);

      v8 = v26;
      v7 = v27;
    }

    else
    {
      v5 = *(v0 + 64);
      v6 = *(v0 + 40);

      v7 = v5;
      v8 = v6;
    }

    v28(v7, v8);
    ++v3;
  }

  while (v2 != v3);
LABEL_13:

  v23 = *(v0 + 8);

  v23(v1);
}

uint64_t sub_22454A62C()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[12];
  v4 = v0[9];
  v6 = v0[4];
  v5 = v0[5];

  v2(v4, v6 + v3, v5);
  v7 = v1;
  v8 = sub_224627B58();
  v9 = sub_224628048();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_224507000, v8, v9, "Failed updating camera session: %@", v11, 0xCu);
    sub_2245098A0(v12, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v12, -1, -1);
    MEMORY[0x22AA526D0](v11, -1, -1);
  }

  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[11];
  v18 = v0[9];
  v19 = v0[5];

  v16(v18, v19);

  v20 = v0[1];
  v21 = MEMORY[0x277D84F90];

  return v20(v21);
}

uint64_t sub_22454A994(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_22454AA60;

  return sub_224549CE4(v8, a2);
}

uint64_t sub_22454AA60()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  type metadata accessor for CameraSessionInformation();
  v4 = sub_224627EB8();

  (v1)[2](v1, v4);

  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22454ABE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_224536440(0, 0, v11, &unk_22462F278, v13);
}

uint64_t sub_22454AD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_22450D034;

  return sub_22454AF0C(a5, a6, a7, a8);
}

uint64_t sub_22454AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_2246271A8();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_2246271C8();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for DKTrackingMetric();
  v5[21] = swift_task_alloc();
  v8 = sub_224627118();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v9 = sub_224627B78();
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22454B160, 0, 0);
}

uint64_t sub_22454B160()
{
  v40 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  v6 = OBJC_IVAR___ObjectTrackingAgent_logger;
  *(v0 + 272) = OBJC_IVAR___ObjectTrackingAgent_logger;
  v7 = *(v3 + 16);
  *(v0 + 280) = v7;
  *(v0 + 288) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);
  v8 = v5;
  v9 = sub_224627B58();
  v10 = sub_224628058();

  if (!os_log_type_enabled(v9, v10))
  {
    v18 = *(v0 + 264);
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);

    v21 = *(v20 + 8);
    v21(v18, v19);
LABEL_24:
    *(v0 + 296) = v21;
    v36 = swift_task_alloc();
    *(v0 + 304) = v36;
    *v36 = v0;
    v36[1] = sub_22454B5A0;

    return sub_224547CEC();
  }

  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v39 = v15;
  *v13 = 138413058;
  *(v13 + 4) = v12;
  *v14 = v12;
  *(v13 + 12) = 2080;
  if (v11)
  {
    if (v11 == 2)
    {
      v16 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E55;
    }

    else
    {
      if (v11 != 1)
      {
        v27 = *(v0 + 72);
        *(v0 + 48) = *(v0 + 80);
        v28 = v27;
        goto LABEL_28;
      }

      v16 = 0xEC00000064657463;
      v17 = 0x656E6E6F43746F4ELL;
    }
  }

  else
  {
    v16 = 0xE900000000000064;
    v17 = 0x657463656E6E6F43;
  }

  v22 = *(v0 + 88);
  v23 = *(v0 + 72);
  v24 = sub_224509F28(v17, v16, &v39);

  *(v13 + 14) = v24;
  *(v13 + 22) = 2080;
  if (v22)
  {
    if (v22 == 2)
    {
      v25 = 0xE700000000000000;
      v26 = 0x6E776F6E6B6E55;
    }

    else
    {
      if (v22 != 1)
      {
        *(v0 + 56) = *(v0 + 88);
        goto LABEL_28;
      }

      v25 = 0xE800000000000000;
      v26 = 0x64656B636F646E55;
    }
  }

  else
  {
    v25 = 0xE600000000000000;
    v26 = 0x64656B636F44;
  }

  v29 = *(v0 + 96);
  v30 = sub_224509F28(v26, v25, &v39);

  *(v13 + 24) = v30;
  *(v13 + 32) = 2080;
  switch(v29)
  {
    case 2:
      v31 = 0xE700000000000000;
      v32 = 0x6E776F6E6B6E55;
      goto LABEL_23;
    case 1:
      v31 = 0xE200000000000000;
      v32 = 28239;
      goto LABEL_23;
    case 0:
      v31 = 0xE300000000000000;
      v32 = 6710863;
LABEL_23:
      v38 = *(v0 + 264);
      v34 = *(v0 + 208);
      v33 = *(v0 + 216);
      v35 = sub_224509F28(v32, v31, &v39);

      *(v13 + 34) = v35;
      _os_log_impl(&dword_224507000, v9, v10, "state event, %@, connected %s, docked %s, tracking button %s", v13, 0x2Au);
      sub_2245098A0(v14, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v14, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v13, -1, -1);

      v21 = *(v33 + 8);
      v21(v38, v34);
      goto LABEL_24;
  }

  *(v0 + 64) = *(v0 + 96);
LABEL_28:

  return sub_2246286B8();
}

uint64_t sub_22454B5A0(char a1)
{
  *(*v1 + 416) = a1;

  return MEMORY[0x2822009F8](sub_22454B6A0, 0, 0);
}

uint64_t sub_22454B6A0()
{
  v21 = v0;
  v1 = *(v0 + 104);
  (*(v0 + 280))(*(v0 + 256), &v1[*(v0 + 272)], *(v0 + 208));
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628058();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    if (*(v5 + OBJC_IVAR___ObjectTrackingAgent_appID + 8))
    {
      v8 = *(v5 + OBJC_IVAR___ObjectTrackingAgent_appID);
      v9 = *(v5 + OBJC_IVAR___ObjectTrackingAgent_appID + 8);
    }

    else
    {
      v9 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }

    v13 = *(v0 + 416);
    v18 = *(v0 + 256);
    v19 = *(v0 + 296);
    v14 = *(v0 + 208);

    v15 = sub_224509F28(v8, v9, &v20);

    *(v6 + 4) = v15;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v13;
    _os_log_impl(&dword_224507000, v3, v4, "tracking enabled for app %s? %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x22AA526D0](v7, -1, -1);
    MEMORY[0x22AA526D0](v6, -1, -1);

    v19(v18, v14);
  }

  else
  {
    v10 = *(v0 + 296);
    v11 = *(v0 + 256);
    v12 = *(v0 + 208);

    v10(v11, v12);
  }

  v16 = swift_task_alloc();
  *(v0 + 312) = v16;
  *v16 = v0;
  v16[1] = sub_22454B8DC;

  return sub_224548A50();
}

uint64_t sub_22454B8DC(uint64_t a1)
{
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_22454B9DC, 0, 0);
}

uint64_t sub_22454B9DC()
{
  v1 = v0[13];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[41] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[42] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_22454BAA4;

  return v5();
}

uint64_t sub_22454BAA4()
{

  return MEMORY[0x2822009F8](sub_22454BBBC, 0, 0);
}

uint64_t sub_22454BBBC()
{
  v133 = v0;
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR___ObjectTrackingAgent_tracker;
  *(v0 + 352) = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 72);
    v5 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info;
    v6 = *&v3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
    v7 = type metadata accessor for DockCoreInfo(0);
    *(v0 + 16) = v4;
    *(v0 + 40) = v7;
    v8 = v3;
    v9 = v4;
    v10 = v8;
    v11 = v6;
    LOBYTE(v6) = DockCoreInfo.isEqual(_:)(v0 + 16);

    sub_2245098A0(v0 + 16, &qword_27D0CA3B0);
    if ((v6 & 1) != 0 && *(v0 + 80) == 1)
    {
      (*(v0 + 280))(*(v0 + 240), *(v0 + 104) + *(v0 + 272), *(v0 + 208));
      v12 = v10;
      v13 = sub_224627B58();
      v14 = sub_224628058();

      v129 = v14;
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 296);
      v17 = *(v0 + 240);
      v18 = *(v0 + 208);
      if (v15)
      {
        v123 = *(v0 + 240);
        v19 = swift_slowAlloc();
        v121 = v18;
        v20 = swift_slowAlloc();
        v132 = v20;
        *v19 = 136315138;
        v21 = (*&v3[v5] + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
        v126 = v12;
        v119 = v16;
        v23 = *v21;
        v22 = v21[1];

        v24 = sub_224509F28(v23, v22, &v132);

        *(v19 + 4) = v24;
        v12 = v126;
        _os_log_impl(&dword_224507000, v13, v129, "tracking device %s disconnected, stopping tracking", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x22AA526D0](v20, -1, -1);
        MEMORY[0x22AA526D0](v19, -1, -1);

        v119(v123, v121);
      }

      else
      {

        v16(v17, v18);
      }

      v57 = *(v0 + 104) + OBJC_IVAR___ObjectTrackingAgent_delegate;
      v58 = v12;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v59 = *(v57 + 8);
        ObjectType = swift_getObjectType();
        v58 = *&v3[v5];

        (*(v59 + 16))(v58, ObjectType, v59);
        swift_unknownObjectRelease();
      }

      (*(v0 + 280))(*(v0 + 232), *(v0 + 104) + *(v0 + 272), *(v0 + 208));
      v61 = sub_224627B58();
      v62 = sub_224628058();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_224507000, v61, v62, "calling tracker.stopTracking()", v63, 2u);
        MEMORY[0x22AA526D0](v63, -1, -1);
      }

      v64 = *(v0 + 296);
      v65 = *(v0 + 232);
      v66 = *(v0 + 208);

      v64(v65, v66);
      v67 = *(v1 + v2);
      if (v67)
      {
        v68 = v67;
        sub_22459B6D4();
      }

      v70 = *(v0 + 184);
      v69 = *(v0 + 192);
      v71 = *(v0 + 176);
      sub_224559F68();
      sub_224627108();
      DKTrackingMetric.send(time:)();
      (*(v70 + 8))(v69, v71);
      v72 = *(v1 + v2);
      if (v72)
      {
        v73 = v72;
        sub_2245697B8(0);
      }

      v10 = *(v1 + v2);
      *(v1 + v2) = 0;
    }

    else
    {
    }

    goto LABEL_40;
  }

  v25 = *(v0 + 320);
  if (!v25)
  {
LABEL_47:
    (*(v0 + 280))(*(v0 + 224), v1 + *(v0 + 272), *(v0 + 208));
    v84 = sub_224627B58();
    v85 = sub_224628048();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_224507000, v84, v85, "No connected tracking stand found", v86, 2u);
      MEMORY[0x22AA526D0](v86, -1, -1);
    }

    v88 = *(v0 + 216);
    v87 = *(v0 + 224);
    v89 = *(v0 + 208);

    (*(v88 + 8))(v87, v89);
    v90 = swift_task_alloc();
    *(v0 + 400) = v90;
    *v90 = v0;
    v90[1] = sub_22454D230;

    return sub_22454727C();
  }

  v26 = *(v0 + 72);
  if (*&v26[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type] != 1 || *(v0 + 80) != 0 || *(v0 + 88) != 0 || *(v0 + 96) != 1 || *(v0 + 416) == 0)
  {
LABEL_40:
    v1 = *(v0 + 104);
    v74 = *(v1 + *(v0 + 352));
    if (v74)
    {
      v75 = *(v0 + 96);
      v76 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
      v77 = *&v74[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore];
      v78 = v74;
      v79 = v77;
      sub_224628148();

      v80 = v78[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled];
      v81 = *&v74[v76];
      sub_224628158();

      v1 = *(v0 + 104);
      if ((((v75 != 1) ^ v80) & 1) == 0)
      {
        sub_22454D948(*(v0 + 72), *(v0 + 96));
        v1 = *(v0 + 104);
      }
    }

    if (*(v0 + 320))
    {
      *(v0 + 408) = *(v1 + *(v0 + 328));
      sub_2246274B8();
      sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

      v83 = sub_224627F28();

      return MEMORY[0x2822009F8](sub_22454D404, v83, v82);
    }

    goto LABEL_47;
  }

  v127 = *(v0 + 280);
  v124 = *(v0 + 272);
  v31 = *(v0 + 248);
  v32 = *(v0 + 208);
  v33 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  v34 = *&v25[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore];
  v35 = v25;
  v36 = v34;
  sub_224628148();

  v35[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled] = 1;
  v37 = *&v25[v33];
  sub_224628158();

  v127(v31, v1 + v124, v32);
  v38 = v26;
  v39 = sub_224627B58();
  v40 = sub_224628058();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v0 + 72);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v41;
    *v43 = v41;
    v44 = v41;
    _os_log_impl(&dword_224507000, v39, v40, "tracking stand just docked and connected %@", v42, 0xCu);
    sub_2245098A0(v43, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v43, -1, -1);
    MEMORY[0x22AA526D0](v42, -1, -1);
  }

  v45 = *(v0 + 320);
  v46 = *(v0 + 296);
  v47 = *(v0 + 248);
  v48 = *(v0 + 208);

  v46(v47, v48);
  v49 = *(v1 + v2);
  *(v1 + v2) = v45;
  v50 = v35;

  v51 = *(v1 + v2);
  if (v51)
  {
    *(v51 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_debugEnabled) = *(*(v0 + 104) + OBJC_IVAR___ObjectTrackingAgent_debugEnabled);
  }

  v52 = *(v0 + 104);
  v53 = *(v52 + OBJC_IVAR___ObjectTrackingAgent_currentCameraSession);
  *(v0 + 360) = v53;
  if (v53)
  {
    v54 = v53;
    v55 = swift_task_alloc();
    *(v0 + 368) = v55;
    *v55 = v0;
    v55[1] = sub_22454C77C;

    return sub_224549CE4(v54, 0);
  }

  else
  {
    v91 = *(v0 + 352);
    sub_224627108();
    v92 = *(v52 + OBJC_IVAR___ObjectTrackingAgent_appID + 8);
    v115 = *(v52 + OBJC_IVAR___ObjectTrackingAgent_appID);
    v93 = *(v52 + v91);
    if (v93)
    {
      v94 = *(v93 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8);
      v125 = *(v93 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion);
      v95 = (v93 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model);
      v118 = v95[1];
      v120 = *v95;

      v122 = v94;
    }

    else
    {
      v118 = 0;
      v120 = 0;
      v122 = 0;
      v125 = 0;
    }

    v131 = *(v0 + 320);
    v96 = *(v0 + 200);
    v98 = *(v0 + 176);
    v97 = *(v0 + 184);
    v99 = *(v0 + 160);
    v100 = *(v0 + 168);
    v114 = *(v0 + 152);
    v128 = *(v0 + 144);
    v130 = *(v0 + 136);
    v101 = *(v0 + 120);
    v116 = *(v0 + 112);
    v117 = *(v0 + 128);
    v102 = (*(v0 + 72) + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
    v103 = v102[1];
    v113 = *v102;
    v104 = *(v0 + 104) + OBJC_IVAR___ObjectTrackingAgent_trackingMetric;

    DKTrackingMetric.init()(v100);
    sub_224516100(v100, v104);
    (*(v97 + 24))(v104 + *(v99 + 96), v96, v98);
    v105 = v115;
    if (v92)
    {
      v106 = v92;
    }

    else
    {
      v105 = 0x6E776F6E6B6E55;
      v106 = 0xE700000000000000;
    }

    *v104 = v105;
    *(v104 + 8) = v106;

    *(v104 + 16) = v113;
    *(v104 + 24) = v103;

    v108 = v118;
    v107 = v120;
    if (!v118)
    {
      v107 = 0x6E776F6E6B6E55;
      v108 = 0xE700000000000000;
    }

    *(v104 + 32) = v107;
    *(v104 + 40) = v108;

    v110 = v122;
    v109 = v125;
    if (!v122)
    {
      v109 = 0x6E776F6E6B6E55;
      v110 = 0xE700000000000000;
    }

    *(v104 + 48) = v109;
    *(v104 + 56) = v110;

    *(v104 + 64) = 0;
    sub_224627198();
    (*(v101 + 104))(v117, *MEMORY[0x277CC9980], v116);
    v111 = sub_2246271B8();
    (*(v101 + 8))(v117, v116);
    (*(v128 + 8))(v114, v130);
    (*(v97 + 8))(v96, v98);
    *(v104 + 72) = v111 / 3;
    *(v104 + 80) = 0;
    *(v104 + 88) = 0;
    *(v104 + 92) = 0u;
    *(v104 + 108) = 0u;
    *(v104 + 124) = 0;
    v131;
    v112 = swift_task_alloc();
    *(v0 + 376) = v112;
    *v112 = v0;
    v112[1] = sub_22454CBB0;

    return sub_22459A328();
  }
}

uint64_t sub_22454C77C()
{

  return MEMORY[0x2822009F8](sub_22454C884, 0, 0);
}

uint64_t sub_22454C884()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 104);
  sub_224627108();
  v3 = *(v2 + OBJC_IVAR___ObjectTrackingAgent_appID + 8);
  v27 = *(v2 + OBJC_IVAR___ObjectTrackingAgent_appID);
  v4 = *(v2 + v1);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8);
    v33 = *(v4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion);
    v6 = (v4 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model);
    v30 = v6[1];
    v31 = *v6;

    v32 = v5;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  v36 = *(v0 + 320);
  v7 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v26 = *(v0 + 152);
  v34 = *(v0 + 144);
  v35 = *(v0 + 136);
  v12 = *(v0 + 120);
  v28 = *(v0 + 112);
  v29 = *(v0 + 128);
  v13 = (*(v0 + 72) + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
  v14 = v13[1];
  v25 = *v13;
  v15 = *(v0 + 104) + OBJC_IVAR___ObjectTrackingAgent_trackingMetric;

  DKTrackingMetric.init()(v11);
  sub_224516100(v11, v15);
  (*(v8 + 24))(v15 + *(v10 + 96), v7, v9);
  v16 = v27;
  if (v3)
  {
    v17 = v3;
  }

  else
  {
    v16 = 0x6E776F6E6B6E55;
    v17 = 0xE700000000000000;
  }

  *v15 = v16;
  *(v15 + 8) = v17;

  *(v15 + 16) = v25;
  *(v15 + 24) = v14;

  v19 = v30;
  v18 = v31;
  if (!v30)
  {
    v18 = 0x6E776F6E6B6E55;
    v19 = 0xE700000000000000;
  }

  *(v15 + 32) = v18;
  *(v15 + 40) = v19;

  v21 = v32;
  v20 = v33;
  if (!v32)
  {
    v20 = 0x6E776F6E6B6E55;
    v21 = 0xE700000000000000;
  }

  *(v15 + 48) = v20;
  *(v15 + 56) = v21;

  *(v15 + 64) = 0;
  sub_224627198();
  (*(v12 + 104))(v29, *MEMORY[0x277CC9980], v28);
  v22 = sub_2246271B8();
  (*(v12 + 8))(v29, v28);
  (*(v34 + 8))(v26, v35);
  (*(v8 + 8))(v7, v9);
  *(v15 + 72) = v22 / 3;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 92) = 0u;
  *(v15 + 108) = 0u;
  *(v15 + 124) = 0;
  v36;
  v23 = swift_task_alloc();
  *(v0 + 376) = v23;
  *v23 = v0;
  v23[1] = sub_22454CBB0;

  return sub_22459A328();
}

uint64_t sub_22454CBB0()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 384) = v4;
  *v4 = v3;
  v4[1] = sub_22454CD08;

  return sub_22454569C();
}

uint64_t sub_22454CD08()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 392) = v3;
  *v3 = v2;
  v3[1] = sub_22454CE48;

  return sub_2245467FC();
}

uint64_t sub_22454CE48()
{

  return MEMORY[0x2822009F8](sub_22454CF44, 0, 0);
}

uint64_t sub_22454CF44()
{
  v1 = *(v0 + 104) + OBJC_IVAR___ObjectTrackingAgent_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 320);
    v3 = *(v1 + 8);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
    v4();
    swift_unknownObjectRelease();
  }

  v6 = *(*(v0 + 104) + *(v0 + 352));
  if (v6)
  {
    v7 = *(v0 + 96);
    v8 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
    v9 = *&v6[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore];
    v10 = v6;
    v11 = v9;
    sub_224628148();

    v12 = v10[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled];
    v13 = *&v6[v8];
    sub_224628158();

    if ((((v7 != 1) ^ v12) & 1) == 0)
    {
      sub_22454D948(*(v0 + 72), *(v0 + 96));
    }
  }

  if (*(v0 + 320))
  {
    *(v0 + 408) = *(*(v0 + 104) + *(v0 + 328));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v15 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22454D404, v15, v14);
  }

  else
  {
    (*(v0 + 280))(*(v0 + 224), *(v0 + 104) + *(v0 + 272), *(v0 + 208));
    v16 = sub_224627B58();
    v17 = sub_224628048();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_224507000, v16, v17, "No connected tracking stand found", v18, 2u);
      MEMORY[0x22AA526D0](v18, -1, -1);
    }

    v20 = *(v0 + 216);
    v19 = *(v0 + 224);
    v21 = *(v0 + 208);

    (*(v20 + 8))(v19, v21);
    v22 = swift_task_alloc();
    *(v0 + 400) = v22;
    *v22 = v0;
    v22[1] = sub_22454D230;

    return sub_22454727C();
  }
}

uint64_t sub_22454D230()
{

  return MEMORY[0x2822009F8](sub_22454D32C, 0, 0);
}

uint64_t sub_22454D32C()
{
  v0[51] = *(v0[13] + v0[41]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22454D404, v2, v1);
}

uint64_t sub_22454D404()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22454D474, 0, 0);
}

uint64_t sub_22454D474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22454D70C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  v12 = a1;
  a6;
  v13 = swift_task_alloc();
  v6[5] = v13;
  *v13 = v6;
  v13[1] = sub_22454D7F0;

  return sub_22454AF0C(v12, a2, a3, a4);
}

uint64_t sub_22454D7F0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22454D948(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_224627B78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v3 + OBJC_IVAR___ObjectTrackingAgent_logger, v9);
  v13 = a1;
  v14 = sub_224627B58();
  v15 = sub_224628058();

  v16 = os_log_type_enabled(v14, v15);
  v30 = a2;
  if (!v16)
  {

    (*(v10 + 8))(v12, v9);
LABEL_10:
    v22 = sub_224627F78();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v3;
    v23[5] = v13;
    v23[6] = v30;
    v24 = v13;
    v25 = v3;
    sub_224536440(0, 0, v8, &unk_22462F2C0, v23);
  }

  v28 = v8;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v32 = v18;
  *v17 = 136315394;
  *(v17 + 4) = sub_224509F28(*&v13[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name], *&v13[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name + 8], &v32);
  *(v17 + 12) = 2080;
  v29 = v3;
  switch(a2)
  {
    case 2:
      v19 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E55;
      goto LABEL_9;
    case 1:
      v19 = 0xE200000000000000;
      v20 = 28239;
LABEL_9:
      v21 = sub_224509F28(v20, v19, &v32);

      *(v17 + 14) = v21;
      _os_log_impl(&dword_224507000, v14, v15, "%s Tracking button state changed to: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA526D0](v18, -1, -1);
      MEMORY[0x22AA526D0](v17, -1, -1);

      (*(v10 + 8))(v12, v9);
      v8 = v28;
      v3 = v29;
      goto LABEL_10;
    case 0:
      v19 = 0xE300000000000000;
      v20 = 6710863;
      goto LABEL_9;
  }

  v31 = a2;
  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t sub_22454DCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_224627B78();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22454DDAC, 0, 0);
}

uint64_t sub_22454DDAC()
{
  v1 = v0[6];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[14] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[15] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_22454DE74;

  return v5();
}

uint64_t sub_22454DE74()
{

  return MEMORY[0x2822009F8](sub_22454DF8C, 0, 0);
}

uint64_t sub_22454DF8C()
{
  v58 = v0;
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v0[17] = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v0[7];
  v4 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info;
  v5 = *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
  v6 = type metadata accessor for DockCoreInfo(0);
  v0[2] = v3;
  v0[5] = v6;
  v7 = v2;
  v8 = v5;
  v9 = v3;
  LOBYTE(v3) = DockCoreInfo.isEqual(_:)((v0 + 2));

  sub_2245098A0((v0 + 2), &qword_27D0CA3B0);
  if ((v3 & 1) == 0)
  {

    v1 = v0[6];
LABEL_8:
    v27 = v0[7];
    (*(v0[10] + 16))(v0[11], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[9]);
    v28 = v27;
    v29 = sub_224627B58();
    v30 = sub_224628058();

    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[10];
    v32 = v0[11];
    v34 = v0[9];
    if (v31)
    {
      v35 = v0[7];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_224509F28(*(v35 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name), *(v35 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name + 8), &v57);
      _os_log_impl(&dword_224507000, v29, v30, "No tracker matching %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x22AA526D0](v37, -1, -1);
      MEMORY[0x22AA526D0](v36, -1, -1);
    }

    (*(v33 + 8))(v32, v34);
    goto LABEL_11;
  }

  v10 = v0[8];
  v11 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  v12 = *&v7[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore];
  sub_224628148();

  v7[OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled] = v10 == 1;
  v13 = *&v7[v11];
  sub_224628158();

  if (v10)
  {
    if (v10 == 1)
    {
      (*(v0[10] + 16))(v0[12], v0[6] + OBJC_IVAR___ObjectTrackingAgent_logger, v0[9]);
      v14 = v7;
      v15 = sub_224627B58();
      v16 = sub_224628058();

      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[12];
      v20 = v0[9];
      v19 = v0[10];
      if (v17)
      {
        v55 = v0[12];
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v57 = v22;
        *v21 = 136315138;
        v23 = (*&v2[v4] + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
        v24 = *v23;
        v25 = v23[1];

        v26 = sub_224509F28(v24, v25, &v57);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_224507000, v15, v16, "Tracking button on, starting %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x22AA526D0](v22, -1, -1);
        MEMORY[0x22AA526D0](v21, -1, -1);

        (*(v19 + 8))(v55, v20);
      }

      else
      {

        (*(v19 + 8))(v18, v20);
      }

      v53 = swift_task_alloc();
      v0[18] = v53;
      *v53 = v0;
      v53[1] = sub_22454E5A4;

      return sub_22459A328();
    }
  }

  else
  {
    (*(v0[10] + 16))(v0[13], v0[6] + OBJC_IVAR___ObjectTrackingAgent_logger, v0[9]);
    v40 = v7;
    v41 = sub_224627B58();
    v42 = sub_224628058();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[13];
    v46 = v0[9];
    v45 = v0[10];
    if (v43)
    {
      v56 = v0[13];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v57 = v48;
      *v47 = 136315138;
      v49 = (*&v2[v4] + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
      v50 = *v49;
      v51 = v49[1];

      v52 = sub_224509F28(v50, v51, &v57);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_224507000, v41, v42, "Tracking button off, stopping %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x22AA526D0](v48, -1, -1);
      MEMORY[0x22AA526D0](v47, -1, -1);

      (*(v45 + 8))(v56, v46);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
    }

    sub_22459B6D4();
    sub_2245697B8(1);
  }

LABEL_11:
  v0[21] = *(v0[6] + v0[14]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v39 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22454EA08, v39, v38);
}

uint64_t sub_22454E5A4()
{

  return MEMORY[0x2822009F8](sub_22454E6A0, 0, 0);
}

uint64_t sub_22454E6A0()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR___ObjectTrackingAgent_currentCameraSession);
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_22454E818;

    return sub_224549CE4(v2, 0);
  }

  else
  {

    *(v0 + 168) = *(*(v0 + 48) + *(v0 + 112));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v6 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22454EA08, v6, v5);
  }
}

uint64_t sub_22454E818()
{

  return MEMORY[0x2822009F8](sub_22454E920, 0, 0);
}

uint64_t sub_22454E920()
{
  v1 = *(v0 + 136);

  *(v0 + 168) = *(*(v0 + 48) + *(v0 + 112));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v3 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22454EA08, v3, v2);
}

uint64_t sub_22454EA08()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22454EB08(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, &v2[OBJC_IVAR___ObjectTrackingAgent_logger], v7);
  v11 = a1;
  v12 = sub_224627B58();
  v13 = sub_224628058();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    if (a1)
    {
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v14 + 4) = v17;
    *v15 = v18;
    _os_log_impl(&dword_224507000, v12, v13, "agent disconnected with error %@", v14, 0xCu);
    sub_2245098A0(v15, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v15, -1, -1);
    MEMORY[0x22AA526D0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v2[OBJC_IVAR___ObjectTrackingAgent_setupComplete] = 0;
  v19 = sub_224627F78();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;
  v21 = v2;
  sub_224536440(0, 0, v6, &unk_22462F2D0, v20);
}

uint64_t sub_22454EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_224627B78();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_224627B98();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_224627BC8();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v8 = sub_224627BE8();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v9 = sub_224627118();
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22454F014, 0, 0);
}

uint64_t sub_22454F014()
{
  v1 = v0[9];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[26] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[27] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_22454F0DC;

  return v5();
}

uint64_t sub_22454F0DC()
{

  return MEMORY[0x2822009F8](sub_22454F1F4, 0, 0);
}

uint64_t sub_22454F1F4()
{
  v1 = v0[9] + OBJC_IVAR___ObjectTrackingAgent_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      v3 = *(v0[9] + OBJC_IVAR___ObjectTrackingAgent_tracker);
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
        v5 = v4;
      }

      else
      {
        v4 = 0;
      }

      ObjectType = swift_getObjectType();
      (*(v2 + 16))(v4, ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }

  v7 = v0[9];
  v8 = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v9 = *(v7 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v9)
  {
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    sub_224559F68();
    sub_224627108();
    DKTrackingMetric.send(time:)();
    (*(v11 + 8))(v10, v12);
    v9 = *(v7 + v8);
    if (v9)
    {
      v13 = v9;
      sub_22459B6D4();

      v9 = *(v7 + v8);
      if (v9)
      {
        v14 = v9;
        sub_2245697B8(0);

        v9 = *(v7 + v8);
      }
    }
  }

  v15 = v0[9];
  *(v7 + v8) = 0;

  v16 = OBJC_IVAR___ObjectTrackingAgent_manager;
  v17 = *(v15 + OBJC_IVAR___ObjectTrackingAgent_manager);
  if (v17)
  {
    v18 = v0[21];
    v38 = v0[22];
    v19 = v0[20];
    v20 = v0[18];
    v44 = v0[16];
    v45 = v0[19];
    v42 = v0[14];
    v43 = v0[17];
    v40 = v0[15];
    v41 = v0[13];
    v21 = v0[9];
    v22 = v17;
    DockCoreManager.disconnect()();

    v23 = *(v15 + v16);
    *(v15 + v16) = 0;

    v39 = *&v21[OBJC_IVAR___ObjectTrackingAgent_agentQueue];
    sub_224627BD8();
    sub_224627C38();
    v24 = *(v19 + 8);
    v24(v18, v45);
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    v0[6] = sub_224562490;
    v0[7] = v25;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_224580D44;
    v0[5] = &block_descriptor_0;
    v26 = _Block_copy(v0 + 2);
    v27 = v21;
    sub_224627BA8();
    v0[8] = MEMORY[0x277D84F90];
    sub_224509554(&qword_27D0C9EF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
    sub_224509674(&qword_27D0C9F00, &unk_27D0C9A40);
    sub_224628298();
    MEMORY[0x22AA514F0](v38, v20, v40, v26);
    _Block_release(v26);

    (*(v42 + 8))(v40, v41);
    (*(v43 + 8))(v20, v44);
    v24(v38, v45);
  }

  else
  {
    (*(v0[11] + 16))(v0[12], v0[9] + OBJC_IVAR___ObjectTrackingAgent_logger, v0[10]);
    v28 = sub_224627B58();
    v29 = sub_224628058();
    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[11];
    v31 = v0[12];
    v33 = v0[10];
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_224507000, v28, v29, "agent stopped, not starting again", v34, 2u);
      MEMORY[0x22AA526D0](v34, -1, -1);
    }

    (*(v32 + 8))(v31, v33);
  }

  v0[29] = *(v0[9] + v0[26]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v36 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22454F70C, v36, v35);
}

uint64_t sub_22454F70C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22454F7D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_224627F78();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v7 = a1;
  sub_224536440(0, 0, v4, &unk_22462F7F0, v6);
}

uint64_t sub_22454F8D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_224509AAC(0);
}

uint64_t sub_22454F9C4()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR___ObjectTrackingAgent_logger, v1);
  v5 = sub_224627B58();
  v6 = sub_224628058();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_224507000, v5, v6, "Manager informed that XPC is connected", v7, 2u);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_22454FB64()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_224627F78();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v0;
  v13 = v0;
  sub_224536440(0, 0, v10, &unk_22462F2E0, v12);

  v14 = OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect;
  v15 = *(v2 + 16);
  v16 = &v13[OBJC_IVAR___ObjectTrackingAgent_logger];
  if (v13[OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect])
  {
    v15(v5, v16, v1);
    v17 = sub_224627B58();
    v18 = sub_224628058();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_224507000, v17, v18, "Manager disconnected, but this is expected", v19, 2u);
      MEMORY[0x22AA526D0](v19, -1, -1);
    }

    result = (*(v2 + 8))(v5, v1);
    v13[v14] = 0;
  }

  else
  {
    v15(v7, v16, v1);
    v21 = sub_224627B58();
    v22 = sub_224628058();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_224507000, v21, v22, "Manager XPC disconnected unexpectedly", v23, 2u);
      MEMORY[0x22AA526D0](v23, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    return sub_22454EB08(0);
  }

  return result;
}

uint64_t sub_22454FEA4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_configStateLock;
  v0[3] = OBJC_IVAR___ObjectTrackingAgent_configStateLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22454FF6C;

  return v5();
}

uint64_t sub_22454FF6C()
{

  return MEMORY[0x2822009F8](sub_224550084, 0, 0);
}

uint64_t sub_224550084()
{
  v2 = v0[2];
  v1 = v0[3];
  *(v2 + OBJC_IVAR___ObjectTrackingAgent_registeredForTrackingConfigChanges) = 0;
  v0[6] = *(v2 + v1);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224550164, v4, v3);
}

uint64_t sub_224550164()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224550234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224627B78();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224550300, 0, 0);
}

uint64_t sub_224550300()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[7] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[8] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2245503C8;

  return v5();
}

uint64_t sub_2245503C8()
{

  return MEMORY[0x2822009F8](sub_2245504E0, 0, 0);
}

uint64_t sub_2245504E0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v0[10] = v3;
  v4 = v0[4];
  if (v3)
  {
    v6 = v0 + 6;
    v5 = v0[6];
    v7 = v3;

    v8 = sub_22461B810();

    (*(v4 + 16))(v5, v2 + OBJC_IVAR___ObjectTrackingAgent_logger, v1);
    v9 = v8;
    v10 = sub_224627B58();
    v11 = sub_224628058();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_224507000, v10, v11, "dumped tracker diagnostics %@", v12, 0xCu);
      sub_2245098A0(v13, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v13, -1, -1);
      MEMORY[0x22AA526D0](v12, -1, -1);
    }

    else
    {
      v14 = v10;
      v10 = v9;
    }
  }

  else
  {
    v6 = v0 + 5;
    (*(v4 + 16))(v0[5], v2 + OBJC_IVAR___ObjectTrackingAgent_logger, v1);
    v10 = sub_224627B58();
    v15 = sub_224628058();
    if (os_log_type_enabled(v10, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_224507000, v10, v15, "no tracker to dump diag from", v16, 2u);
      MEMORY[0x22AA526D0](v16, -1, -1);
    }
  }

  v17 = *v6;
  v18 = v0[7];
  v19 = v0[3];
  v20 = v0[4];
  v21 = v0[2];

  (*(v20 + 8))(v17, v19);
  v0[11] = *(v21 + v18);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v23 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245507CC, v23, v22);
}

uint64_t sub_2245507CC()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224562810, 0, 0);
}

uint64_t sub_22455087C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_224627F78();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v10 = v3;
  sub_224536440(0, 0, v7, a3, v9);
}

uint64_t sub_224550974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224627B78();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224550A40, 0, 0);
}

uint64_t sub_224550A40()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[7] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[8] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_224550B08;

  return v5();
}

uint64_t sub_224550B08()
{

  return MEMORY[0x2822009F8](sub_224550C20, 0, 0);
}

uint64_t sub_224550C20()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v4 = v0[4];
  v0[10] = v3;
  v5 = *(v4 + 16);
  if (v3)
  {
    v6 = v0 + 6;
    v5(v0[6], v2 + OBJC_IVAR___ObjectTrackingAgent_logger, v1);
    v7 = v3;
    v8 = sub_224627B58();
    LOBYTE(v3) = sub_224628058();
    if (os_log_type_enabled(v8, v3))
    {
      v9 = "dumped state";
LABEL_6:
      v10 = *v6;
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_224507000, v8, v3, v9, v11, 2u);
      MEMORY[0x22AA526D0](v11, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = v0 + 5;
    v5(v0[5], v2 + OBJC_IVAR___ObjectTrackingAgent_logger, v1);
    v8 = sub_224627B58();
    v3 = sub_224628058();
    if (os_log_type_enabled(v8, v3))
    {
      v9 = "no tracker to dump state from";
      goto LABEL_6;
    }
  }

  v10 = *v6;
LABEL_8:
  v12 = v0[7];
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  (*(v14 + 8))(v10, v13);
  v0[11] = *(v15 + v12);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v17 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224550E24, v17, v16);
}

uint64_t sub_224550E24()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224550E94, 0, 0);
}

uint64_t sub_224550E94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224550F28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  sub_224536440(0, 0, v9, a5, v11);
}

uint64_t sub_224551044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_224627B78();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224551110, 0, 0);
}

uint64_t sub_224551110()
{
  v1 = v0[4];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[9] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[10] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_2245511D8;

  return v5();
}

uint64_t sub_2245511D8()
{

  return MEMORY[0x2822009F8](sub_2245512F0, 0, 0);
}

uint64_t sub_2245512F0()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v0[12] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_224551514;

    return sub_2245AD5E4();
  }

  else
  {
    (*(v0[6] + 16))(v0[8], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[5]);
    v5 = sub_224627B58();
    v6 = sub_224628058();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_224507000, v5, v6, "no tracker to search", v7, 2u);
      MEMORY[0x22AA526D0](v7, -1, -1);
    }

    v8 = v0[9];
    v9 = v0[4];
    (*(v0[6] + 8))(v0[8], v0[5]);
    v0[14] = *(v9 + v8);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v11 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245627FC, v11, v10);
  }
}

uint64_t sub_224551514(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_224551618, 0, 0);
}

uint64_t sub_224551618()
{
  (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 40));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 24);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_224507000, v1, v2, "started search: %{BOOL}d", v4, 8u);
    MEMORY[0x22AA526D0](v4, -1, -1);
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 72);
  v7 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  *(v0 + 112) = *(v7 + v6);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v9 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245627FC, v9, v8);
}

uint64_t sub_2245517F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_224627B78();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245518BC, 0, 0);
}

uint64_t sub_2245518BC()
{
  v1 = v0[4];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[9] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[10] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_224551984;

  return v5();
}

uint64_t sub_224551984()
{

  return MEMORY[0x2822009F8](sub_224551A9C, 0, 0);
}

uint64_t sub_224551A9C()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v0[12] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_224551CC0;

    return sub_2245AD95C();
  }

  else
  {
    (*(v0[6] + 16))(v0[8], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[5]);
    v5 = sub_224627B58();
    v6 = sub_224628058();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_224507000, v5, v6, "no tracker to stop search", v7, 2u);
      MEMORY[0x22AA526D0](v7, -1, -1);
    }

    v8 = v0[9];
    v9 = v0[4];
    (*(v0[6] + 8))(v0[8], v0[5]);
    v0[14] = *(v9 + v8);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v11 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_224551F5C, v11, v10);
  }
}

uint64_t sub_224551CC0(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_224551DC4, 0, 0);
}

uint64_t sub_224551DC4()
{
  (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 40));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 24);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_224507000, v1, v2, "stopped search: %{BOOL}d", v4, 8u);
    MEMORY[0x22AA526D0](v4, -1, -1);
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 72);
  v7 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  *(v0 + 112) = *(v7 + v6);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v9 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224551F5C, v9, v8);
}

uint64_t sub_224551F5C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224552020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_224627B78();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245520EC, 0, 0);
}

uint64_t sub_2245520EC()
{
  v1 = v0[4];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[9] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[10] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_2245521B4;

  return v5();
}

uint64_t sub_2245521B4()
{

  return MEMORY[0x2822009F8](sub_2245522CC, 0, 0);
}

uint64_t sub_2245522CC()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v0[12] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_2245524DC;

    return sub_2245AB744();
  }

  else
  {
    (*(v0[6] + 16))(v0[8], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[5]);
    v5 = sub_224627B58();
    v6 = sub_224628058();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_224507000, v5, v6, "no tracker to rtb", v7, 2u);
      MEMORY[0x22AA526D0](v7, -1, -1);
    }

    v8 = v0[9];
    v9 = v0[4];
    (*(v0[6] + 8))(v0[8], v0[5]);
    v0[14] = *(v9 + v8);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v11 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245627FC, v11, v10);
  }
}

uint64_t sub_2245524DC(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_2245525E0, 0, 0);
}

uint64_t sub_2245525E0()
{
  (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 40));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 24);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_224507000, v1, v2, "started RTB: %{BOOL}d", v4, 8u);
    MEMORY[0x22AA526D0](v4, -1, -1);
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 72);
  v7 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  *(v0 + 112) = *(v7 + v6);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v9 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245627FC, v9, v8);
}

uint64_t sub_2245527B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_224627F78();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v9 = v2;
  sub_224536440(0, 0, v6, a2, v8);
}

uint64_t sub_2245528B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_224627B78();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22455297C, 0, 0);
}

uint64_t sub_22455297C()
{
  v1 = v0[4];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[9] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[10] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_224552A44;

  return v5();
}

uint64_t sub_224552A44()
{

  return MEMORY[0x2822009F8](sub_224552B5C, 0, 0);
}

uint64_t sub_224552B5C()
{
  v0[12] = *(v0[4] + v0[9]);
  v3 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_224552C1C;

  return v3();
}

uint64_t sub_224552C1C()
{

  return MEMORY[0x2822009F8](sub_224552D34, 0, 0);
}

uint64_t sub_224552D34()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  v0[14] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_224552F44;

    return sub_2245ABEB0();
  }

  else
  {
    (*(v0[6] + 16))(v0[8], v1 + OBJC_IVAR___ObjectTrackingAgent_logger, v0[5]);
    v5 = sub_224627B58();
    v6 = sub_224628058();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_224507000, v5, v6, "no tracker to stop RTB", v7, 2u);
      MEMORY[0x22AA526D0](v7, -1, -1);
    }

    v8 = v0[9];
    v9 = v0[4];
    (*(v0[6] + 8))(v0[8], v0[5]);
    v0[16] = *(v9 + v8);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v11 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245531E0, v11, v10);
  }
}

uint64_t sub_224552F44(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_224553048, 0, 0);
}

uint64_t sub_224553048()
{
  (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 40));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 24);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_224507000, v1, v2, "stopped RTB: %{BOOL}d", v4, 8u);
    MEMORY[0x22AA526D0](v4, -1, -1);
  }

  v5 = *(v0 + 112);

  v6 = *(v0 + 72);
  v7 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  *(v0 + 128) = *(v7 + v6);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v9 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245531E0, v9, v8);
}

uint64_t sub_2245531E0()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224553284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_224627F78();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v11 = a1;
  sub_224536440(0, 0, v8, a4, v10);
}

uint64_t sub_2245533A0(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_224627F78();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v3;
  *(v10 + 40) = a1;
  v11 = v3;
  sub_224536440(0, 0, v8, a3, v10);
}

uint64_t sub_2245534A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 120) = a5;
  *(v5 + 32) = a4;
  v6 = sub_224627B78();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224553578, 0, 0);
}

uint64_t sub_224553578()
{
  v1 = v0[4];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[9] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[10] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_224553640;

  return v5();
}

uint64_t sub_224553640()
{

  return MEMORY[0x2822009F8](sub_224553758, 0, 0);
}

uint64_t sub_224553758()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  *(v0 + 96) = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_224553970;
    v4 = *(v0 + 120);

    return sub_2245AC444(v4);
  }

  else
  {
    (*(*(v0 + 48) + 16))(*(v0 + 64), v1 + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 40));
    v6 = sub_224627B58();
    v7 = sub_224628058();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_224507000, v6, v7, "no tracker to flip180", v8, 2u);
      MEMORY[0x22AA526D0](v8, -1, -1);
    }

    v9 = *(v0 + 72);
    v10 = *(v0 + 32);
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
    *(v0 + 112) = *(v10 + v9);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v12 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245627FC, v12, v11);
  }
}

uint64_t sub_224553970(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_224553A74, 0, 0);
}

uint64_t sub_224553A74()
{
  (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32) + OBJC_IVAR___ObjectTrackingAgent_logger, *(v0 + 40));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 24);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_224507000, v1, v2, "started flip180: %{BOOL}d", v4, 8u);
    MEMORY[0x22AA526D0](v4, -1, -1);
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 72);
  v7 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  *(v0 + 112) = *(v7 + v6);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v9 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245627FC, v9, v8);
}

uint64_t sub_224553C2C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_224627F78();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a3;
  v13 = a1;
  sub_224536440(0, 0, v10, a5, v12);
}

uint64_t sub_224553D38(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_224627B78();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v4[OBJC_IVAR___ObjectTrackingAgent_appID + 8];
  if (v16)
  {
    v17 = *&v4[OBJC_IVAR___ObjectTrackingAgent_appID] == a2 && v16 == a3;
    if (v17 || (result = sub_224628688(), (result & 1) != 0))
    {
      v34 = a1;
      (*(v12 + 16))(v15, &v4[OBJC_IVAR___ObjectTrackingAgent_logger], v11);

      v18 = sub_224627B58();
      v19 = sub_224628058();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v33 = v10;
        v21 = v20;
        v22 = swift_slowAlloc();
        v35 = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_224509F28(a2, a3, &v35);
        *(v21 + 12) = 1024;
        *(v21 + 14) = v34 & 1;
        _os_log_impl(&dword_224507000, v18, v19, "tracking enable changed for %s: %{BOOL}d", v21, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x22AA526D0](v22, -1, -1);
        v23 = v21;
        v10 = v33;
        MEMORY[0x22AA526D0](v23, -1, -1);
      }

      result = (*(v12 + 8))(v15, v11);
      v24 = OBJC_IVAR___ObjectTrackingAgent__trackingEnabled;
      if (v4[OBJC_IVAR___ObjectTrackingAgent__trackingEnabled] == 1)
      {
        v25 = v34;
        if ((v34 & 1) == 0)
        {
          v26 = sub_224627F78();
          (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
          v27 = swift_allocObject();
          v27[2] = 0;
          v27[3] = 0;
          v27[4] = v4;
          v28 = v4;
          sub_224536440(0, 0, v10, &unk_22462F370, v27);

          v28[OBJC_IVAR___ObjectTrackingAgent_setupOngoing] = 0;
          v28[OBJC_IVAR___ObjectTrackingAgent_setupComplete] = 0;
        }
      }

      else
      {
        v25 = v34;
        if (v34)
        {
          v29 = sub_224627F78();
          (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
          v30 = swift_allocObject();
          v30[2] = 0;
          v30[3] = 0;
          v30[4] = v4;
          v31 = v4;
          sub_224536440(0, 0, v10, &unk_22462F360, v30);
        }
      }

      v4[v24] = v25 & 1;
    }
  }

  return result;
}

uint64_t sub_224554118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224627118();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245541D8, 0, 0);
}

uint64_t sub_2245541D8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[6] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[7] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2245542A0;

  return v5();
}

uint64_t sub_2245542A0()
{

  return MEMORY[0x2822009F8](sub_2245543B8, 0, 0);
}

uint64_t sub_2245543B8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v3 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v3)
  {
    v4 = v3;
    sub_22459B6D4();

    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v5;
      sub_2245697B8(0);

      v5 = *(v1 + v2);
      if (v5)
      {
        v8 = v0[4];
        v7 = v0[5];
        v9 = v0[3];
        sub_224559F68();
        sub_224627108();
        DKTrackingMetric.send(time:)();
        (*(v8 + 8))(v7, v9);
        v5 = *(v1 + v2);
      }
    }

    *(v1 + v2) = 0;

    v1 = v0[2];
  }

  v0[9] = *(v1 + v0[6]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v11 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22455452C, v11, v10);
}

uint64_t sub_22455452C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22455460C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2 + OBJC_IVAR___ObjectTrackingAgent_logger, v7);
  v11 = sub_224627B58();
  v12 = sub_224628058();
  if (!os_log_type_enabled(v11, v12))
  {

    (*(v8 + 8))(v10, v7);
LABEL_13:
    v18 = sub_224627F78();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v2;
    v19[5] = a1;
    v20 = v2;
    sub_224536440(0, 0, v6, &unk_22462F380, v19);
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v25 = v14;
  *v13 = 136315138;
  v22 = a1;
  v23 = v2;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v15 = 0xE400000000000000;
      v16 = 1952867660;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v15 = 0xE500000000000000;
      v16 = 0x7468676952;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a1)
    {
      v15 = 0xE900000000000063;
      v16 = 0x6974616D6F747541;
LABEL_12:
      v17 = sub_224509F28(v16, v15, &v25);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_224507000, v11, v12, "Got framing mode config change: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x22AA526D0](v14, -1, -1);
      MEMORY[0x22AA526D0](v13, -1, -1);

      (*(v8 + 8))(v10, v7);
      a1 = v22;
      v2 = v23;
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v15 = 0xE600000000000000;
      v16 = 0x7265746E6543;
      goto LABEL_12;
    }
  }

  v24 = v22;
  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t sub_22455496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224554A08, 0, 0);
}

uint64_t sub_224554A08()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[5] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[6] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_224554AD0;

  return v5();
}

uint64_t sub_224554AD0()
{

  return MEMORY[0x2822009F8](sub_224554BE8, 0, 0);
}

uint64_t sub_224554BE8()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  if (v2)
  {
    v4 = v0[3];
    v3 = v0[4];
    v2[OBJC_IVAR____TtC11DockKitCore13TrackingStand_userOverridedAspectRatio] = 1;
    v5 = sub_224627F78();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v2;
    v6[5] = v4;
    v7 = v2;
    sub_224536440(0, 0, v3, &unk_2246319A0, v6);

    v1 = v0[2];
  }

  v0[8] = *(v1 + v0[5]);
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v9 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224554D7C, v9, v8);
}

uint64_t sub_224554D7C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224554E44(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_224627B78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v3 + OBJC_IVAR___ObjectTrackingAgent_logger, v9);
  v13 = a1;
  v14 = a2;
  v15 = sub_224627B58();
  v16 = sub_224628058();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    [v13 doubleValue];
    *(v17 + 4) = v18;
    *(v17 + 12) = 2048;
    [v14 doubleValue];
    *(v17 + 14) = v19;
    _os_log_impl(&dword_224507000, v15, v16, "Got request to select subject at: %f, %f", v17, 0x16u);
    MEMORY[0x22AA526D0](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = sub_224627F78();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v3;
  v21[5] = v13;
  v21[6] = v14;
  v22 = v13;
  v23 = v14;
  v24 = v3;
  sub_224536440(0, 0, v8, &unk_22462F390, v21);
}

uint64_t sub_2245550EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_224627B78();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245551C8, 0, 0);
}

uint64_t sub_2245551C8()
{
  v1 = v0[18];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[26] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[27] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_224555290;

  return v5();
}

uint64_t sub_224555290()
{

  return MEMORY[0x2822009F8](sub_2245553A8, 0, 0);
}

uint64_t sub_2245553A8()
{
  v1 = v0[18];
  v2 = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v0[29] = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v3 = *(v1 + v2);
  v0[30] = v3;
  if (v3)
  {
    v4 = v0[19];
    v5 = v0[20];
    v3;
    [v4 doubleValue];
    v7 = v6;
    [v5 doubleValue];
    v9 = v8;
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_224555548;

    return sub_22459CD24(v7, v9);
  }

  else
  {
    v0[37] = *(v1 + v0[26]);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v13 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_224555DA0, v13, v12);
  }
}

uint64_t sub_224555548()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_224556404;
  }

  else
  {

    v3 = sub_224555664;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_224555664()
{
  v1 = v0[18];
  v2 = *(v1 + v0[29]);
  v0[33] = v2;
  if (v2)
  {
    v3 = (v1 + OBJC_IVAR___ObjectTrackingAgent_appID);
    v0[34] = *v3;
    v0[35] = v3[1];

    v4 = v2;
    v5 = sub_224555790;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v0[37] = *(v1 + v0[26]);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v8 = sub_224627F28();
    v10 = v9;
    v5 = sub_224555DA0;
    v6 = v8;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_224555790()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v0[10] = v0;
  v0[11] = sub_22455584C;
  v4 = swift_continuation_init();
  sub_22456E510(v2, v1, 0, v3, v4);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_22455584C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 288) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_224555A48;
  }

  else
  {
    v2 = sub_224555968;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224555968()
{
  *(v0 + 296) = *(*(v0 + 144) + *(v0 + 208));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224555DA0, v2, v1);
}

uint64_t sub_224555A48()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = OBJC_IVAR___ObjectTrackingAgent_logger;
  *(v0 + 304) = v1;
  *(v0 + 312) = v6;
  v7 = *(v4 + 16);
  *(v0 + 320) = v7;
  *(v0 + 328) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
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

  v15 = *(v0 + 232);
  v16 = *(v0 + 200);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 144);

  v20 = *(v18 + 8);
  *(v0 + 336) = v20;
  *(v0 + 344) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  v21 = *(v19 + v15);
  *(v0 + 352) = v21;
  if (v21)
  {
    v22 = (*(v0 + 144) + OBJC_IVAR___ObjectTrackingAgent_appID);
    *(v0 + 360) = *v22;
    *(v0 + 368) = v22[1];
    v23 = v1;

    v24 = v21;
    v25 = sub_224555E30;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    (*(v0 + 320))(*(v0 + 184), *(v0 + 144) + *(v0 + 312), *(v0 + 168));
    v28 = sub_224627B58();
    v29 = sub_224628058();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 336);
    v32 = *(v0 + 304);
    v33 = *(v0 + 184);
    v34 = *(v0 + 168);
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
    *(v0 + 296) = *(*(v0 + 144) + *(v0 + 208));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v36 = sub_224627F28();
    v38 = v37;
    v25 = sub_224555DA0;
    v26 = v36;
    v27 = v38;
  }

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_224555DA0()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224555E30()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[38];
  v0[2] = v0;
  v0[3] = sub_224555EF8;
  v5 = swift_continuation_init();
  sub_22456E510(v2, v1, v4, v3, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224555EF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245561CC;
  }

  else
  {
    v2 = sub_224556014;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224556014()
{
  v1 = *(v0 + 352);

  (*(v0 + 320))(*(v0 + 184), *(v0 + 144) + *(v0 + 312), *(v0 + 168));
  v2 = sub_224627B58();
  v3 = sub_224628058();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 336);
  v6 = *(v0 + 304);
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);
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
  *(v0 + 296) = *(*(v0 + 144) + *(v0 + 208));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v11 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224555DA0, v11, v10);
}

uint64_t sub_2245561CC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);

  v2(v5, v7 + v4, v6);
  v8 = v1;
  v9 = sub_224627B58();
  v10 = sub_224628048();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 376);
  v13 = *(v0 + 304);
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

  (*(v0 + 336))(*(v0 + 192), *(v0 + 168));
  *(v0 + 296) = *(*(v0 + 144) + *(v0 + 208));
  sub_2246274B8();
  sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

  v19 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224555DA0, v19, v18);
}

uint64_t sub_224556404()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = OBJC_IVAR___ObjectTrackingAgent_logger;
  *(v0 + 304) = v1;
  *(v0 + 312) = v6;
  v7 = *(v4 + 16);
  *(v0 + 320) = v7;
  *(v0 + 328) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
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

  v15 = *(v0 + 232);
  v16 = *(v0 + 200);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 144);

  v20 = *(v18 + 8);
  *(v0 + 336) = v20;
  *(v0 + 344) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  v21 = *(v19 + v15);
  *(v0 + 352) = v21;
  if (v21)
  {
    v22 = (*(v0 + 144) + OBJC_IVAR___ObjectTrackingAgent_appID);
    *(v0 + 360) = *v22;
    *(v0 + 368) = v22[1];
    v23 = v1;

    v24 = v21;
    v25 = sub_224555E30;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    (*(v0 + 320))(*(v0 + 184), *(v0 + 144) + *(v0 + 312), *(v0 + 168));
    v28 = sub_224627B58();
    v29 = sub_224628058();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 336);
    v32 = *(v0 + 304);
    v33 = *(v0 + 184);
    v34 = *(v0 + 168);
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
    *(v0 + 296) = *(*(v0 + 144) + *(v0 + 208));
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v36 = sub_224627F28();
    v38 = v37;
    v25 = sub_224555DA0;
    v26 = v36;
    v27 = v38;
  }

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_2245567D8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2 + OBJC_IVAR___ObjectTrackingAgent_logger, v7);

  v11 = sub_224627B58();
  v12 = sub_224628058();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v6;
    v16 = v15;
    v29 = v15;
    *v14 = 136315138;
    v17 = MEMORY[0x22AA51350](a1, MEMORY[0x277D837D0]);
    v19 = sub_224509F28(v17, v18, &v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_224507000, v11, v12, "Got request to select subjects with ids : %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v20 = v16;
    v6 = v27;
    MEMORY[0x22AA526D0](v20, -1, -1);
    v21 = v14;
    v2 = v28;
    MEMORY[0x22AA526D0](v21, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v22 = sub_224627F78();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v2;
  v23[5] = a1;

  v24 = v2;
  sub_224536440(0, 0, v6, &unk_22462F3A0, v23);
}

uint64_t sub_224556AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_224627B78();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224556B84, 0, 0);
}

uint64_t sub_224556B84()
{
  v1 = v0[18];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[25] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[26] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_224556C4C;

  return v5();
}

uint64_t sub_224556C4C()
{

  return MEMORY[0x2822009F8](sub_224556D64, 0, 0);
}

uint64_t sub_224556D64()
{
  v1 = v0[18];
  v2 = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v0[28] = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v3 = *(v1 + v2);
  v0[29] = v3;
  if (v3)
  {
    v3;
    v4 = swift_task_alloc();
    v0[30] = v4;
    *v4 = v0;
    v4[1] = sub_224556ED4;
    v5 = v0[19];

    return sub_22459D5CC(v5);
  }

  else
  {
    v0[36] = *(v1 + v0[25]);
    sub_2246274B8();
    sub_224509554(&qword_280C51570, MEMORY[0x277D213A8]);

    v8 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22455772C, v8, v7);
  }
}