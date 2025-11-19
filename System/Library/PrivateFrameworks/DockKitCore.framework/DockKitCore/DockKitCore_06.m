uint64_t sub_2245A7954()
{

  return MEMORY[0x2822009F8](sub_2245A7A50, 0, 0);
}

uint64_t sub_2245A7A50()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);
  v4 = v0[3];
  v0[56] = sub_224627468();

  sub_224627528();

  sub_2246272F8();
  v5 = *(v4 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_referenceDimension);
  v0[57] = v5;

  return MEMORY[0x2822009F8](sub_2245A7B44, v5, 0);
}

uint64_t sub_2245A7B44()
{
  v1 = v0[57];
  v0[58] = *(v1 + 112);
  v0[59] = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_2245A7BBC, 0, 0);
}

uint64_t sub_2245A7BBC()
{
  v1 = v0[56];
  v2 = v0[3];
  sub_2246272A8();
  v3 = _s11DockKitCore13TrackingStandC29_trackingSummaryInternalState4fromAA0dgH0C011IntelligentdC0013DKIntelligentdI0C_tFZ_0(v1);
  v0[60] = v3;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_lastTrackingSummary) = v3;

  sub_22461A04C(v1);

  sub_2245A882C();
  v4 = COERCE_DOUBLE(sub_2246271E8());
  if ((v5 & 1) == 0)
  {
    v6 = v0[3];
    v7 = 1.0 / v4;
    if (*(v6 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerTimerInterval) != 1.0 / v4)
    {
      *(v6 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerTimerInterval) = v7;
      v8 = *(v6 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTimer);
      if (v8)
      {
        v9 = v0[13];
        v10 = v0[14];
        v12 = v0[11];
        v11 = v0[12];
        v13 = v0[9];
        v14 = v0[10];
        v22 = v0[8];
        ObjectType = swift_getObjectType();
        v21 = v8;
        sub_224627BD8();
        sub_224627C38();
        v16 = *(v11 + 8);
        v16(v9, v12);
        sub_2245B6538(v14);
        MEMORY[0x22AA515E0](v10, v14, ObjectType, v7);
        (*(v13 + 8))(v14, v22);
        v16(v10, v12);
      }
    }
  }

  if (*(v0[3] + OBJC_IVAR____TtC11DockKitCore13TrackingStand_debugEnabled) == 1)
  {
    v23 = (*MEMORY[0x277D21388] + MEMORY[0x277D21388]);
    v17 = swift_task_alloc();
    v0[61] = v17;
    *v17 = v0;
    v17[1] = sub_2245A7EF4;

    return v23();
  }

  else
  {

    v0[63] = *(v0[3] + v0[49]);
    v0[64] = sub_2246274B8();
    v0[65] = sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v20 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245A8118, v20, v19);
  }
}

uint64_t sub_2245A7EF4(uint64_t a1)
{
  *(*v1 + 496) = a1;

  return MEMORY[0x2822009F8](sub_2245A7FF4, 0, 0);
}

uint64_t sub_2245A7FF4()
{
  v1 = v0[62];

  if (v1)
  {
    *(v0[3] + OBJC_IVAR____TtC11DockKitCore13TrackingStand_lastTrackingSummaryDebug) = v0[62];
  }

  v0[63] = *(v0[3] + v0[49]);
  v0[64] = sub_2246274B8();
  v0[65] = sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v3 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A8118, v3, v2);
}

uint64_t sub_2245A8118()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245A8188, 0, 0);
}

uint64_t sub_2245A8188()
{
  v1 = v0[47];
  v2 = v0[45];
  v15 = v0[29];
  v3 = v0[28];
  v16 = v0[27];
  v17 = v0[41];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[3];
  v7 = v0[4];
  (*(v0[5] + 16))(v4, *(v6 + v0[44]) + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackingMode, v7);
  v1(v5, *MEMORY[0x277D213E0], v7);
  LOBYTE(v1) = sub_2246275A8();
  v2(v5, v7);
  v2(v4, v7);
  if (v1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  sub_2245A8BBC(v8);

  sub_2246191FC(0);

  sub_2246270E8();
  sub_224627098();
  v10 = v9;
  v11 = *(v3 + 8);
  v0[66] = v11;
  v0[67] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v15, v16);
  v0[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9CD0);
  sub_224627588();
  v0[68] = *(v6 + v17);

  v13 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A8388, v13, v12);
}

uint64_t sub_2245A8388()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245A83F8, 0, 0);
}

uint64_t sub_2245A83F8()
{
  (*(v0 + 528))(*(v0 + 240), *(v0 + 216));
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  *(v0 + 552) = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  *(v0 + 560) = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  *(v0 + 568) = v3;
  *v3 = v0;
  v3[1] = sub_2245A84D4;

  return v5();
}

uint64_t sub_2245A84D4()
{

  return MEMORY[0x2822009F8](sub_2245A85EC, 0, 0);
}

uint64_t sub_2245A85EC()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking))
  {

    sub_224627448();

    v1 = v0[3];
  }

  v0[72] = *(v1 + v0[69]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v3 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A86EC, v3, v2);
}

uint64_t sub_2245A86EC()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2245A882C()
{
  v1 = v0;
  v36 = sub_2246277D8();
  v2 = *(v36 - 8);
  v3 = MEMORY[0x28223BE20](v36);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - v6;
  result = sub_224627278();
  if (result)
  {
    v9 = result;
    if (result >> 62)
    {
      v30 = result;
      result = sub_224628478();
      v9 = v30;
      v10 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        if (v10 < 1)
        {
          __break(1u);
          return result;
        }

        v31[1] = v1;
        v11 = 0;
        v34 = v9 & 0xC000000000000001;
        v12 = (v2 + 8);
        v32 = MEMORY[0x277D84F90];
        v33 = MEMORY[0x277D84F90];
        v35 = v9;
        do
        {
          if (v34)
          {
            MEMORY[0x22AA517F0](v11);
          }

          else
          {
          }

          sub_2246278B8();
          v13 = sub_2246277C8();
          v14 = *v12;
          (*v12)(v7, v36);
          if (v13)
          {
            v15 = sub_224627778();
            v17 = v16;

            if ((v17 & 1) == 0)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v18 = v32;
              }

              else
              {
                v18 = sub_22452AF30(0, *(v32 + 2) + 1, 1, v32);
              }

              v20 = *(v18 + 2);
              v19 = *(v18 + 3);
              if (v20 >= v19 >> 1)
              {
                v18 = sub_22452AF30((v19 > 1), v20 + 1, 1, v18);
              }

              *(v18 + 2) = v20 + 1;
              v32 = v18;
              *&v18[8 * v20 + 32] = v15;
            }
          }

          sub_2246278B8();
          v21 = sub_2246277B8();
          v14(v5, v36);
          if (!v21 || (v22 = sub_224627728(), v24 = v23, , (v24 & 1) != 0))
          {
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_22452AF30(0, *(v33 + 2) + 1, 1, v33);
            }

            v26 = *(v33 + 2);
            v25 = *(v33 + 3);
            if (v26 >= v25 >> 1)
            {
              v33 = sub_22452AF30((v25 > 1), v26 + 1, 1, v33);
            }

            v27 = v33;
            *(v33 + 2) = v26 + 1;
            *&v27[8 * v26 + 32] = v22;
          }

          ++v11;
        }

        while (v10 != v11);

        v28 = v32;
        v29 = v33;
        goto LABEL_29;
      }
    }

    v28 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
LABEL_29:
    v37 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9488);
    sub_224627588();
    v37 = v29;
    return sub_224627588();
  }

  return result;
}

void sub_2245A8BBC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_224593F10();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC11DockKitCore13SensorTracker_state;
    v8 = *&v6[OBJC_IVAR____TtC11DockKitCore13SensorTracker_state];
    if (v8 && *(v8 + OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state) == a1)
    {
    }

    else
    {
      v19 = v6;
      v9 = type metadata accessor for SensorTrackerState();
      v10 = objc_allocWithZone(v9);
      *&v10[OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state] = a1;
      v20.receiver = v10;
      v20.super_class = v9;
      v11 = objc_msgSendSuper2(&v20, sel_init);
      v12 = *&v19[v7];
      *&v19[v7] = v11;
      v13 = v11;

      v14 = sub_224627F78();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v1;
      v15[5] = v19;
      v15[6] = v13;
      v16 = v1;
      v17 = v19;
      sub_224536440(0, 0, v5, &unk_224631C18, v15);
    }
  }
}

uint64_t sub_2245A8D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_224627B78();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245A8E58, 0, 0);
}

uint64_t sub_2245A8E58()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController);
  v0[13] = v1;
  if (v1)
  {
    v3 = v0[8];
    v2 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92C0);
    inited = swift_initStackObject();
    v0[14] = inited;
    *(inited + 16) = xmmword_22462F150;
    *(inited + 32) = v3;
    v5 = swift_allocObject();
    v0[15] = v5;
    *(v5 + 16) = xmmword_22462F150;
    *(v5 + 32) = v2;
    v1;
    v6 = v3;
    v7 = v2;
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_2245A8FDC;

    return sub_22460EF1C(inited, v5);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2245A8FDC()
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 136) = v0;

  v4 = *(v2 + 104);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2245A91A4, 0, 0);
  }

  else
  {

    swift_setDeallocating();
    swift_arrayDestroy();

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_2245A91A4()
{
  v1 = v0[17];
  (*(v0[11] + 16))(v0[12], v0[7] + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0[10]);
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628058();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224507000, v3, v4, "Unable to set tracker sensor state threw %@", v7, 0xCu);
    sub_2245098A0(v8, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v8, -1, -1);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2245A9350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  (MEMORY[0x28223BE20])();
  v3 = &v26 - v2;
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTimer;
  v12 = *&v0[OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTimer];
  if (!v12)
  {
    (*(v5 + 16))(v8, &v0[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v15 = sub_224627B58();
    v18 = sub_224628058();
    if (!os_log_type_enabled(v15, v18))
    {
      v10 = v8;
      goto LABEL_8;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_224507000, v15, v18, "Tracking loop: no loop running", v17, 2u);
    v10 = v8;
    goto LABEL_6;
  }

  v13 = v12;
  sub_2245B68F8();

  v14 = *&v1[v11];
  *&v1[v11] = 0;

  (*(v5 + 16))(v10, &v1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
  v15 = sub_224627B58();
  v16 = sub_224628058();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_224507000, v15, v16, "Tracking loop stopped", v17, 2u);
LABEL_6:
    MEMORY[0x22AA526D0](v17, -1, -1);
  }

LABEL_8:

  (*(v5 + 8))(v10, v4);
  v19 = &v1[OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation];
  v20 = *&v1[OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation];
  v21 = *&v1[OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation + 8];
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_2245AF648(v20, v21);
  v22 = sub_224627F78();
  (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v1;
  v24 = v1;
  sub_224536440(0, 0, v3, &unk_224631A68, v23);
}

uint64_t sub_2245A96B0()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[3] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2245A9778;

  return v5();
}

uint64_t sub_2245A9778()
{

  return MEMORY[0x2822009F8](sub_2245A9890, 0, 0);
}

uint64_t sub_2245A9890()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[6] = v2;
  if (v2)
  {
    v7 = (*MEMORY[0x277D21358] + MEMORY[0x277D21358]);

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2245A9A04;

    return v7();
  }

  else
  {
    v0[8] = *(v1 + v0[3]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v6 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22453F68C, v6, v5);
  }
}

uint64_t sub_2245A9A04()
{

  return MEMORY[0x2822009F8](sub_2245A9B1C, 0, 0);
}

uint64_t sub_2245A9B1C()
{
  v0[8] = *(v0[2] + v0[3]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22453F68C, v2, v1);
}

void sub_2245A9BF0()
{
  v1 = v0;
  v2 = sub_224627B98();
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_224627BC8();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224627B88();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_224627BE8();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = sub_2246280F8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224627B78();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoCheckTimer))
  {
    (*(v18 + 16))(v20, v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v17);
    v21 = sub_224627B58();
    v22 = sub_224628058();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_224507000, v21, v22, "Video check timer already running", v23, 2u);
      MEMORY[0x22AA526D0](v23, -1, -1);
    }

    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v42 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoCheckTimer;
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = type metadata accessor for RepeatingTimer();
    v24 = objc_allocWithZone(v41);
    v40 = v2;
    v25 = OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *&v24[v25] = v26;
    v24[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_state] = 0;
    sub_22450950C(0, &qword_27D0C9E08);

    sub_2246280E8();
    v27 = sub_224628108();
    (*(v14 + 8))(v16, v13);
    *&v24[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_timer] = v27;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_224627BD8();
    sub_224627C38();
    v29 = v44;
    v30 = *(v43 + 8);
    v30(v10, v44);
    v31 = v45;
    sub_2245B6538(v45);
    MEMORY[0x22AA515E0](v12, v31, ObjectType, 0.5);
    swift_unknownObjectRelease();
    (*(v46 + 8))(v31, v47);
    v30(v12, v29);
    swift_getObjectType();
    aBlock[4] = sub_2245B25CC;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224580D44;
    aBlock[3] = &block_descriptor_473;
    v32 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v33 = v48;
    sub_2245B65B8();
    v34 = v50;
    sub_2245B65BC();
    sub_224628118();
    _Block_release(v32);
    swift_unknownObjectRelease();
    (*(v52 + 8))(v34, v40);
    (*(v49 + 8))(v33, v51);

    v35 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
    *&v24[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_date] = v35;
    v53.receiver = v24;
    v53.super_class = v41;
    v36 = objc_msgSendSuper2(&v53, sel_init);
    sub_2245B6854();

    v37 = *(v1 + v42);
    *(v1 + v42) = v36;
  }
}

void sub_2245AA2F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_224627B78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoLock;
    v10 = *(Strong + OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoLock);
    sub_224628148();

    v11 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoStreamConnected;
    if ((v8[OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoStreamConnected] & 1) == 0)
    {
      v12 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_motionStopped;
      if ((v8[OBJC_IVAR____TtC11DockKitCore13TrackingStand_motionStopped] & 1) == 0)
      {
        (*(v4 + 16))(v6, &v8[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v3);
        v13 = sub_224627B58();
        v14 = sub_224628058();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v23 = v12;
          v16 = v15;
          *v15 = 0;
          _os_log_impl(&dword_224507000, v13, v14, "stopping wheels and stand due to camera inactivity", v15, 2u);
          v17 = v16;
          v12 = v23;
          MEMORY[0x22AA526D0](v17, -1, -1);
        }

        (*(v4 + 8))(v6, v3);
        sub_2245AAE28();
        v8[v12] = 1;
        v18 = sub_224627F78();
        (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
        v19 = swift_allocObject();
        v19[2] = 0;
        v19[3] = 0;
        v19[4] = v8;
        v20 = v8;
        sub_224536440(0, 0, v2, &unk_224631D88, v19);
      }
    }

    v8[v11] = 0;
    v21 = *&v8[v9];
    sub_224628158();
  }
}

uint64_t sub_2245AA5C4()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoCheckTimer;
  v10 = *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoCheckTimer);
  if (!v10)
  {
    (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v2);
    v13 = sub_224627B58();
    v16 = sub_224628058();
    if (!os_log_type_enabled(v13, v16))
    {
      v8 = v6;
      goto LABEL_8;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_224507000, v13, v16, "Video connection check loop: no loop running", v15, 2u);
    v8 = v6;
    goto LABEL_6;
  }

  v11 = v10;
  sub_2245B68F8();

  v12 = *(v1 + v9);
  *(v1 + v9) = 0;

  (*(v3 + 16))(v8, v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v2);
  v13 = sub_224627B58();
  v14 = sub_224628058();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_224507000, v13, v14, "Video connection check loop stopped", v15, 2u);
LABEL_6:
    MEMORY[0x22AA526D0](v15, -1, -1);
  }

LABEL_8:

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_2245AA810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_224627B38();
  v4[3] = swift_task_alloc();
  v5 = sub_224627418();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245AA8FC, 0, 0);
}

uint64_t sub_2245AA8FC()
{
  v1 = v0[2];
  sub_224627AF8();
  sub_224627408();
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerLock;
  v0[7] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerLock;
  v0[8] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2245AA9EC;

  return v5();
}

uint64_t sub_2245AA9EC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_2245AAB60;
  v4 = *(v1 + 48);

  return sub_2245A5958(v4);
}

uint64_t sub_2245AAB60()
{

  return MEMORY[0x2822009F8](sub_2245AAC5C, 0, 0);
}

uint64_t sub_2245AAC5C()
{
  v0[11] = *(v0[2] + v0[7]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245AAD34, v2, v1);
}

uint64_t sub_2245AAD34()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245AADA4, 0, 0);
}

uint64_t sub_2245AADA4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

void *sub_2245AAE28()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_assertion;
  if (*(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_assertion))
  {
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v2);
    v8 = sub_224627B58();
    v9 = sub_224628058();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_224507000, v8, v9, "[IdleTimer] Stopped Idling Prevention", v10, 2u);
      MEMORY[0x22AA526D0](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    result = *(v1 + v7);
    if (result)
    {
      [result invalidate];
      *(v1 + v7) = 0;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2245AAFBC()
{

  v0 = sub_22461B810();

  return v0;
}

uint64_t sub_2245AB174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_224562804;

  return sub_2245AD5E4();
}

uint64_t sub_2245AB398(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_2245627E4;

  return sub_2245AD5E4();
}

uint64_t sub_2245AB45C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22455FE48;

  return sub_2245AD95C();
}

uint64_t sub_2245AB680(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_22450D3D8;

  return sub_2245AD95C();
}

uint64_t sub_2245AB764()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[3] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2245AB82C;

  return v5();
}

uint64_t sub_2245AB82C()
{

  return MEMORY[0x2822009F8](sub_2245AB944, 0, 0);
}

uint64_t sub_2245AB944()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[6] = v2;
  if (v2)
  {
    v7 = (*MEMORY[0x277D21390] + MEMORY[0x277D21390]);

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2245ABABC;

    return v7(2);
  }

  else
  {
    v0[8] = *(v1 + v0[3]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v6 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245B2698, v6, v5);
  }
}

uint64_t sub_2245ABABC()
{

  return MEMORY[0x2822009F8](sub_2245ABBB8, 0, 0);
}

uint64_t sub_2245ABBB8()
{

  v0[8] = *(v0[2] + v0[3]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245B2698, v2, v1);
}

uint64_t sub_2245ABE08(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245627E4;

  return sub_2245AB744();
}

uint64_t sub_2245ABED0()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[3] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2245ABF98;

  return v5();
}

uint64_t sub_2245ABF98()
{

  return MEMORY[0x2822009F8](sub_2245AC0B0, 0, 0);
}

uint64_t sub_2245AC0B0()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[6] = v2;
  if (v2)
  {
    v7 = (*MEMORY[0x277D21390] + MEMORY[0x277D21390]);

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2245ABABC;

    return v7(5);
  }

  else
  {
    v0[8] = *(v1 + v0[3]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v6 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245B2698, v6, v5);
  }
}

uint64_t sub_2245AC39C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245627E4;

  return sub_2245ABEB0();
}

uint64_t sub_2245AC444(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2245AC468, 0, 0);
}

uint64_t sub_2245AC468()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[3] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2245AC530;

  return v5();
}

uint64_t sub_2245AC530()
{

  return MEMORY[0x2822009F8](sub_2245AC648, 0, 0);
}

uint64_t sub_2245AC648()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[6] = v2;
  if (v2)
  {

    sub_224627458();
    v7 = (*MEMORY[0x277D21390] + MEMORY[0x277D21390]);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2245ABABC;

    return v7(3);
  }

  else
  {
    v0[8] = *(v1 + v0[3]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v6 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245B2698, v6, v5);
  }
}

uint64_t sub_2245AC94C(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_2245627E4;

  return sub_2245AC444(a1);
}

uint64_t sub_2245ACA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v11 = sub_2245B02B0;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_debugMessageCallbacks;
  sub_2245122DC(a3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v5 + v12);
  *(v5 + v12) = 0x8000000000000000;
  sub_22458EA20(v11, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + v12) = v15;
  return result;
}

uint64_t sub_2245ACAF8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_appID);
  *v3 = a1;
  v3[1] = a2;
}

void sub_2245ACB54()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  if (v1)
  {
    v52 = OBJC_IVAR____TtC11DockKitCore6System_components;
    v2 = *&v1[OBJC_IVAR____TtC11DockKitCore6System_components];
    v3 = v2 + 64;
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;
    v49 = v1;
    v51 = v2;

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v50 = v1;
    while (1)
    {
      v12 = v8;
      if (!v6)
      {
        break;
      }

LABEL_9:
      v13 = (*(v51 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
      v15 = *v13;
      v14 = v13[1];
      v16 = *v13 == 7823737 && v14 == 0xE300000000000000;
      if (v16 || (sub_224628688() & 1) != 0)
      {
        v17 = *&v1[v52];
        v18 = *(v17 + 16);

        v11 = 0;
        if (v18)
        {

          v19 = sub_2245096C8(v15, v14);
          if (v20)
          {
            v21 = *(*(v17 + 56) + 8 * v19);

            type metadata accessor for Actuator();
            v22 = swift_dynamicCastClass();
            if (v22)
            {
              v23 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
              v24 = *(v22 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
              v25 = v22;

              os_unfair_lock_lock(v24 + 4);

              v11 = *(v25 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
              v26 = *(v25 + v23);
              v1 = v50;

              os_unfair_lock_unlock(v26 + 4);
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }

      v27 = v15 == 0x6863746970 && v14 == 0xE500000000000000;
      if (v27 || (sub_224628688() & 1) != 0)
      {
        v28 = *&v1[v52];
        v10 = 0;
        if (*(v28 + 16))
        {

          v29 = sub_2245096C8(v15, v14);
          if (v30)
          {
            v31 = *(*(v28 + 56) + 8 * v29);

            type metadata accessor for Actuator();
            v32 = swift_dynamicCastClass();
            if (v32)
            {
              v33 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
              v34 = *(v32 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
              v35 = v32;

              os_unfair_lock_lock(v34 + 4);

              v10 = *(v35 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
              v36 = *(v35 + v33);
              v1 = v50;

              os_unfair_lock_unlock(v36 + 4);
            }
          }

          else
          {
          }
        }
      }

      v6 &= v6 - 1;
      v37 = v15 == 1819045746 && v14 == 0xE400000000000000;
      if (v37 || (sub_224628688() & 1) != 0)
      {
        v38 = *&v1[v52];
        if (*(v38 + 16) && (, v39 = sub_2245096C8(v15, v14), v41 = v40, , (v41 & 1) != 0))
        {
          v42 = *(*(v38 + 56) + 8 * v39);

          type metadata accessor for Actuator();
          v43 = swift_dynamicCastClass();
          if (v43)
          {
            v44 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
            v45 = *(v43 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
            v46 = v43;

            os_unfair_lock_lock(v45 + 4);

            v9 = *(v46 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
            v47 = *(v46 + v44);

            os_unfair_lock_unlock(v47 + 4);
          }

          else
          {

            v9 = 0;
          }
        }

        else
        {

          v9 = 0;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v8 >= v7)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C92D0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_224631950;
        *(v48 + 32) = v11;
        *(v48 + 40) = v10;
        *(v48 + 48) = v9;

        return;
      }

      v6 = *(v3 + 8 * v8);
      ++v12;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_2245AD028()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  if (v1)
  {
    v2 = 0x6863746970;
    v49 = OBJC_IVAR____TtC11DockKitCore6System_components;
    v3 = *&v1[OBJC_IVAR____TtC11DockKitCore6System_components];
    v4 = v3 + 64;
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;
    v46 = v1;
    v48 = v3;

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v47 = v1;
    while (1)
    {
      v13 = v9;
      if (!v7)
      {
        break;
      }

LABEL_9:
      v14 = (*(v48 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
      v16 = *v14;
      v15 = v14[1];
      v17 = *v14 == 7823737 && v15 == 0xE300000000000000;
      if (v17 || (sub_224628688() & 1) != 0)
      {
        v18 = *&v1[v49];
        v19 = *(v18 + 16);

        v12 = 0;
        if (v19)
        {

          v20 = sub_2245096C8(v16, v15);
          if (v21)
          {
            v22 = *(*(v18 + 56) + 8 * v20);

            type metadata accessor for Actuator();
            v23 = swift_dynamicCastClass();
            if (v23)
            {
              v24 = *(v23 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
              v25 = v2;
              v26 = v23;

              os_unfair_lock_lock(v24 + 4);
              v12 = *(v26 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity);
              v2 = v25;
              v1 = v47;
              os_unfair_lock_unlock(v24 + 4);
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }

      v27 = v16 == v2 && v15 == 0xE500000000000000;
      if (v27 || (sub_224628688() & 1) != 0)
      {
        v28 = *&v1[v49];
        v11 = 0;
        if (*(v28 + 16))
        {

          v29 = sub_2245096C8(v16, v15);
          if (v30)
          {
            v31 = *(*(v28 + 56) + 8 * v29);

            type metadata accessor for Actuator();
            v32 = swift_dynamicCastClass();
            if (v32)
            {
              v33 = *(v32 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
              v34 = v2;
              v35 = v32;

              os_unfair_lock_lock(v33 + 4);
              v11 = *(v35 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity);
              v2 = v34;
              v1 = v47;
              os_unfair_lock_unlock(v33 + 4);
            }
          }

          else
          {
          }
        }
      }

      v7 &= v7 - 1;
      v36 = v16 == 1819045746 && v15 == 0xE400000000000000;
      if (v36 || (sub_224628688() & 1) != 0)
      {
        v37 = *&v1[v49];
        if (*(v37 + 16) && (, v38 = sub_2245096C8(v16, v15), v40 = v39, , (v40 & 1) != 0))
        {
          v41 = *(*(v37 + 56) + 8 * v38);

          type metadata accessor for Actuator();
          v42 = swift_dynamicCastClass();
          if (v42)
          {
            v43 = *(v42 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
            v44 = v42;

            os_unfair_lock_lock(v43 + 4);
            v10 = *(v44 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity);
            os_unfair_lock_unlock(v43 + 4);
          }

          else
          {

            v10 = 0;
          }
        }

        else
        {

          v10 = 0;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C92D0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_224631950;
        *(v45 + 32) = v12;
        *(v45 + 40) = v11;
        *(v45 + 48) = v10;

        return;
      }

      v7 = *(v4 + 8 * v9);
      ++v13;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

unint64_t sub_2245AD4DC()
{
  result = qword_27D0C9D10;
  if (!qword_27D0C9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9D10);
  }

  return result;
}

uint64_t sub_2245AD530()
{
  v0 = [objc_opt_self() currentProcess];
  v1 = [v0 bundle];
  if (v1 && (v2 = v1, v3 = [v1 identifier], v2, v3))
  {
    v4 = sub_224627CD8();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2245AD604()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[3] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2245AD6CC;

  return v5();
}

uint64_t sub_2245AD6CC()
{

  return MEMORY[0x2822009F8](sub_2245AD7E4, 0, 0);
}

uint64_t sub_2245AD7E4()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[6] = v2;
  if (v2)
  {
    v7 = (*MEMORY[0x277D21390] + MEMORY[0x277D21390]);

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2245ABABC;

    return v7(1);
  }

  else
  {
    v0[8] = *(v1 + v0[3]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v6 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245B2698, v6, v5);
  }
}

uint64_t sub_2245AD97C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[3] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2245ADA44;

  return v5();
}

uint64_t sub_2245ADA44()
{

  return MEMORY[0x2822009F8](sub_2245ADB5C, 0, 0);
}

uint64_t sub_2245ADB5C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[6] = v2;
  if (v2)
  {
    v7 = (*MEMORY[0x277D21390] + MEMORY[0x277D21390]);

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2245ADCD4;

    return v7(4);
  }

  else
  {
    v0[8] = *(v1 + v0[3]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v6 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245ADEAC, v6, v5);
  }
}

uint64_t sub_2245ADCD4()
{

  return MEMORY[0x2822009F8](sub_2245ADDD0, 0, 0);
}

uint64_t sub_2245ADDD0()
{

  v0[8] = *(v0[2] + v0[3]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245ADEAC, v2, v1);
}

uint64_t sub_2245ADEAC()
{
  sub_224627498();

  v1 = *(v0 + 8);
  v2 = *(v0 + 48) != 0;

  return v1(v2);
}

uint64_t type metadata accessor for TrackingStand()
{
  result = qword_27D0C9D88;
  if (!qword_27D0C9D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2245ADF6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22450D030;

  return sub_224598A20(a1, v4, v5, v7, v6);
}

uint64_t sub_2245AE02C(uint64_t a1)
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

  return sub_224599D44(v7, v8, v9, v10, a1, v4, v5, v6);
}

uint64_t sub_2245AE110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_22459AB88(a1, v4, v5, v6);
}

uint64_t sub_2245AE1C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_22459ADD4(a1, v4, v5, v6);
}

uint64_t sub_2245AE278(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_22459B850(a1, v4, v5, v6);
}

void sub_2245AE32C(unint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for FollowerMetadata()) init];
  sub_22450950C(0, &unk_27D0C8D40);
  v8 = sub_224628208();
  v9 = *&v7[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType];
  *&v7[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType] = v8;

  v55 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v10 = sub_224628478();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = MEMORY[0x277D84F90];
      while (1)
      {
        v13 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x22AA517F0](v11, a1) : *(a1 + 8 * v11 + 32);
        v14 = v13;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          break;
        }

        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v16 = v20;
          v18 = 0;
          v21 = &selRef_bodyID;
          v19 = 1;
          goto LABEL_18;
        }

LABEL_7:
        if (v10 == ++v11)
        {
          goto LABEL_22;
        }
      }

      v16 = v15;
      if ([v15 hasYawAngle])
      {
        [v16 yawAngle];
        v18 = v17;
        v19 = 0;
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }

      v21 = &selRef_faceID;
LABEL_18:
      v22 = [v16 *v21];
      [v14 bounds];
      v24 = v23;
      [v14 bounds];
      v26 = v25;
      [v14 bounds];
      v28 = v27;
      [v14 bounds];
      v30 = v29;
      v31 = type metadata accessor for DockCoreObservation();
      v32 = objc_allocWithZone(v31);
      *&v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_identifier] = v22;
      *&v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_type] = v19;
      *&v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_X] = v24;
      *&v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_Y] = v26;
      *&v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_width] = v28;
      *&v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_height] = v30;
      *&v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_trackerID] = -1;
      v33 = &v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_groupId];
      *v33 = 0;
      v33[8] = 1;
      v34 = &v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_yawAngle];
      *v34 = v18;
      v34[8] = 0;
      v35 = &v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_pitchAngle];
      *v35 = 0;
      v35[8] = 1;
      *&v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_confidence] = 0x3FF0000000000000;
      v36 = &v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_printConfidence];
      *v36 = 0;
      v36[8] = 1;
      v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_newTrack] = 1;
      v37 = &v32[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_modality];
      *v37 = 0;
      v37[8] = 1;
      v54.receiver = v32;
      v54.super_class = v31;
      v38 = objc_msgSendSuper2(&v54, sel_init);
      MEMORY[0x22AA51310]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224627EF8();
      }

      sub_224627F08();

      v12 = v55;
      goto LABEL_7;
    }

    goto LABEL_30;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_22:
  *&v7[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations] = v12;

  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  *&v7[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_orientation] = a3;
  v39 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v39 timeIntervalSince1970];
  v41 = v40;

  *&v7[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_timestamp] = v41;
  if (a4)
  {
    v42 = &a4[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions];
    v43 = *&a4[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions];
    *&v7[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth] = v43;
    v44 = v42[1];
    *&v7[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96E0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_224631950;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C92D0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_224631950;
    *(v46 + 32) = *&a4[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx];
    *(v46 + 40) = 0;
    *(v46 + 48) = *&a4[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8DF0);
    *(v45 + 56) = v47;
    *(v45 + 32) = v46;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_224631950;
    *(v48 + 32) = 0;
    *(v48 + 40) = *&a4[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy];
    *(v48 + 48) = *&a4[OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy];
    *(v45 + 64) = v48;
    *(v45 + 120) = v47;
    *(v45 + 88) = v47;
    *(v45 + 96) = &unk_2837F5B28;
    v49 = objc_allocWithZone(MEMORY[0x277CBEA60]);
    v50 = a4;
    v51 = sub_224627EB8();

    v52 = [v49 initWithArray_];

    v53 = *&v7[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics];
    *&v7[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics] = v52;
  }
}

unint64_t sub_2245AE9E4()
{
  result = qword_27D0C9D60;
  if (!qword_27D0C9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9D60);
  }

  return result;
}

uint64_t _s11DockKitCore13TrackingStandC7convert4time8metadata5image011IntelligentdC021DKObservationMetadataCSg10Foundation4DateV_AA08FollowerL0CSo11CVBufferRefaSgtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v68 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9DC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v71 = sub_224627118();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9DD0);
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v58 - v13;
  v14 = sub_224627188();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v62 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v64 = &v58 - v17;
  v18 = *(a2 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_focusObservation);
  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v69 = *(a2 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations);
    if (!(v69 >> 62))
    {
      v31 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_45;
      }

LABEL_12:
      v60 = a3;
      v61 = v7;
      if (v31 < 1)
      {
        __break(1u);
        return result;
      }

      v32 = v69;
      v72 = v69 & 0xC000000000000001;
      v59 = v8;
      v66 = (v8 + 16);

      v33 = 0;
      v34 = MEMORY[0x277D84F90];
      v35 = v68;
      v67 = v31;
      while (1)
      {
        v36 = v72 ? MEMORY[0x22AA517F0](v33, v32) : *(v32 + 8 * v33 + 32);
        v37 = v36;
        v38 = *&v36[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_type];
        if (v38 == 2)
        {
          break;
        }

        if (v38 == 1)
        {
          (*v66)(v70, v35, v71);
          sub_224627178();
          v45 = sub_2246276E8();
          (*(*(v45 - 8) + 56))(v65, 1, 1, v45);
          v46 = sub_224627738();
          swift_allocObject();
          v47 = sub_224627708();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_22452B26C(0, v34[2] + 1, 1, v34);
          }

          v49 = v34[2];
          v48 = v34[3];
          v50 = v49 + 1;
          v35 = v68;
          v32 = v69;
          if (v49 >= v48 >> 1)
          {
            v34 = sub_22452B26C((v48 > 1), v49 + 1, 1, v34);
          }

          v75 = v46;
          v51 = MEMORY[0x277D21438];
          v52 = &unk_27D0C9DE8;
LABEL_39:
          v76 = sub_22450959C(v52, v51);
          *&v74 = v47;
          v34[2] = v50;
          v44 = &v34[5 * v49];
LABEL_40:
          sub_2245B2234(&v74, (v44 + 4));
          v31 = v67;
          goto LABEL_15;
        }

        if (!v38)
        {
          (*v66)(v63, v35, v71);
          sub_224627178();
          if ((v37[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_yawAngle + 8] & 1) == 0)
          {
            v73 = *&v37[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_yawAngle];
            sub_2245AD4DC();
            sub_224627C68();
          }

          v39 = sub_2246276E8();
          (*(*(v39 - 8) + 56))(v65, 1, 1, v39);
          v40 = sub_224627788();
          swift_allocObject();
          v41 = sub_224627758();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_22452B26C(0, v34[2] + 1, 1, v34);
          }

          v35 = v68;
          v32 = v69;
          v43 = v34[2];
          v42 = v34[3];
          if (v43 >= v42 >> 1)
          {
            v34 = sub_22452B26C((v42 > 1), v43 + 1, 1, v34);
          }

          v75 = v40;
          v76 = sub_22450959C(&qword_27D0C9DD8, MEMORY[0x277D21448]);
          *&v74 = v41;
          v34[2] = v43 + 1;
          v44 = &v34[5 * v43];
          goto LABEL_40;
        }

LABEL_15:
        if (v31 == ++v33)
        {

          v7 = v61;
          v8 = v59;
          a3 = v60;
          goto LABEL_45;
        }
      }

      (*v66)(v70, v35, v71);
      sub_224627178();
      v53 = sub_224627858();
      swift_allocObject();
      v47 = sub_224627848();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_22452B26C(0, v34[2] + 1, 1, v34);
      }

      v49 = v34[2];
      v54 = v34[3];
      v50 = v49 + 1;
      if (v49 >= v54 >> 1)
      {
        v34 = sub_22452B26C((v54 > 1), v49 + 1, 1, v34);
      }

      v32 = v69;

      v75 = v53;
      v51 = MEMORY[0x277D214A0];
      v52 = &unk_27D0C9DE0;
      goto LABEL_39;
    }

LABEL_44:
    result = sub_224628478();
    v31 = result;
    if (!result)
    {
LABEL_45:
      (*(v8 + 16))(v70, v68, v71);
      v55 = sub_224627B38();
      (*(*(v55 - 8) + 56))(v7, 1, 1, v55);
      v56 = objc_allocWithZone(sub_224627998());
      v57 = a3;
      return sub_224627968();
    }

    goto LABEL_12;
  }

  result = sub_224628478();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v18 & 0xC000000000000001) != 0)
  {

    v20 = MEMORY[0x22AA517F0](0, v18);

    goto LABEL_6;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_44;
  }

  v20 = *(v18 + 32);
LABEL_6:
  sub_224627178();
  v21 = sub_2246276E8();
  (*(*(v21 - 8) + 56))(v65, 1, 1, v21);
  sub_2246270E8();
  v22 = sub_224627788();
  swift_allocObject();
  v23 = MEMORY[0x277D84F90];
  v24 = sub_224627758();

  v25 = sub_22452B26C(0, 1, 1, v23);
  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_22452B26C((v26 > 1), v27 + 1, 1, v25);
  }

  v75 = v22;
  v76 = sub_22450959C(&qword_27D0C9DD8, MEMORY[0x277D21448]);
  *&v74 = v24;
  v25[2] = v27 + 1;
  sub_2245B2234(&v74, &v25[5 * v27 + 4]);
  (*(v8 + 16))(v70, v68, v71);
  v28 = sub_224627B38();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  v29 = objc_allocWithZone(sub_224627998());
  v30 = sub_224627968();

  return v30;
}

void sub_2245AF648(void *a1, void *a2)
{
  if (a2)
  {
  }
}

uint64_t _s11DockKitCore13TrackingStandC29_trackingSummaryInternalState4fromAA0dgH0C011IntelligentdC0013DKIntelligentdI0C_tFZ_0(uint64_t a1)
{
  v2 = sub_224627118();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224627838();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9DC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68 - v10;
  v87 = sub_224627A08();
  v100 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = sub_224627188();
  v13 = *(v102 - 8);
  v14 = MEMORY[0x28223BE20](v102);
  v97 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v68 - v16;
  v90 = sub_2246277A8();
  v17 = *(v90 - 8);
  v18 = MEMORY[0x28223BE20](v90);
  v89 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = &v68 - v20;
  v21 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
  v91 = a1;
  v22 = sub_224627258();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (v23 >> 62)
  {
    goto LABEL_54;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24)
  {
LABEL_6:
    v69 = v7;
    v70 = v6;
    v71 = v5;
    v72 = v3;
    v73 = v2;
    v6 = 0;
    v85 = v23 & 0xC000000000000001;
    v76 = v23 & 0xFFFFFFFFFFFFFF8;
    v75 = v23 + 32;
    v84 = *MEMORY[0x277D21450];
    v83 = (v17 + 104);
    v82 = (v17 + 8);
    v96 = (v13 + 8);
    v78 = (v13 + 32);
    v77 = (v100 + 32);
    v81 = v11;
    v80 = v23;
    v79 = v24;
    while (1)
    {
      if (v85)
      {
        v7 = MEMORY[0x22AA517F0](v6);
        v25 = __OFADD__(v6++, 1);
        if (v25)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v6 >= *(v76 + 16))
        {
          goto LABEL_53;
        }

        v7 = *(v75 + 8 * v6);

        v25 = __OFADD__(v6++, 1);
        if (v25)
        {
          goto LABEL_51;
        }
      }

      sub_2246278A8();
      sub_2246277F8();

      v92 = v103;
      v95 = v6;
      if (v103 < 1)
      {
        v94 = 0;
      }

      else
      {
        sub_2246278A8();
        sub_2246277F8();

        v94 = v103;
      }

      v26 = v88;
      sub_224627918();
      v13 = v89;
      v27 = v90;
      (*v83)(v89, v84, v90);
      v93 = sub_224627798();
      v11 = *v82;
      (*v82)(v13, v27);
      (v11)(v26, v27);
      v28 = sub_224627278();
      if (v28)
      {
        break;
      }

      v35 = 0;
LABEL_44:
      v36 = v92 < 1;
      v5 = v101;
      sub_224627928();
      v17 = sub_224627888();
      sub_224627908();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      sub_2246278F8();
      sub_2246277E8();
      v46 = v45;

      sub_2246278D8();
      sub_2246277E8();
      v48 = v47;

      v3 = v86;
      sub_2246278C8();
      type metadata accessor for TrackedSubjectInternal(0);
      v13 = swift_allocObject();
      v49 = v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_saliencyRank;
      v50 = v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_speakingConfidence;
      v2 = v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_lookingAtCameraConfidence;
      (*v78)(v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_identifier, v5, v102);
      *(v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_anstID) = v17;
      *(v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_type) = v93 & 1;
      v51 = (v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect);
      *v51 = v38;
      v51[1] = v40;
      v51[2] = v42;
      v51[3] = v44;
      *v49 = v94;
      *(v49 + 8) = v36;
      *v50 = v46;
      *(v50 + 8) = 0;
      *v2 = v48;
      *(v2 + 8) = 0;
      v52 = (*v77)(v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason, v3, v87);
      *(v13 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_trackingLock) = v35 & 1;
      MEMORY[0x22AA51310](v52);
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224627EF8();
      }

      sub_224627F08();

      v6 = v95;
      v11 = v81;
      v23 = v80;
      if (v95 == v79)
      {
        v53 = v104;

        v2 = v73;
        v3 = v72;
        v5 = v71;
        v6 = v70;
        v7 = v69;
        goto LABEL_56;
      }
    }

    v6 = v28;
    v103 = MEMORY[0x277D84F90];
    v2 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 >> 62)
    {
      v29 = sub_224628478();
      if (v29)
      {
LABEL_19:
        v17 = 0;
        v99 = v6 & 0xC000000000000001;
        v100 = v7;
        v98 = v6;
        while (1)
        {
          if (v99)
          {
            v5 = MEMORY[0x22AA517F0](v17, v6);
            v11 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (v17 >= *(v2 + 16))
            {
              goto LABEL_50;
            }

            v5 = *(v6 + 8 * v17 + 32);

            v11 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
LABEL_49:
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
              v54 = v23;
              v24 = sub_224628478();
              v23 = v54;
              if (!v24)
              {
                goto LABEL_55;
              }

              goto LABEL_6;
            }
          }

          v3 = v101;
          sub_224627928();
          v30 = v97;
          sub_224627928();
          v31 = sub_224627158();
          v13 = v96;
          v32 = *v96;
          v33 = v30;
          v7 = v102;
          (*v96)(v33, v102);
          v32(v3, v7);
          if (v31)
          {
            sub_2246283C8();
            sub_2246283E8();
            sub_2246283F8();
            sub_2246283D8();
          }

          else
          {
          }

          v6 = v98;
          ++v17;
          if (v11 == v29)
          {
            v34 = v103;
            v7 = v100;
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_19;
      }
    }

    v34 = MEMORY[0x277D84F90];
LABEL_34:

    if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
    {
      if (sub_224628478())
      {
        goto LABEL_37;
      }
    }

    else if (*(v34 + 16))
    {
LABEL_37:
      if ((v34 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA517F0](0, v34);
      }

      else
      {
        if (!*(v34 + 16))
        {
          goto LABEL_52;
        }
      }

      v35 = sub_224627898();
      goto LABEL_43;
    }

    v35 = 0;
LABEL_43:

    goto LABEL_44;
  }

LABEL_55:

  v53 = MEMORY[0x277D84F90];
LABEL_56:
  sub_2246272C8();
  v55 = sub_224627AE8();
  if ((*(*(v55 - 8) + 48))(v11, 1, v55))
  {
    sub_2245098A0(v11, &qword_27D0C9DC0);
    v56 = 0;
  }

  else
  {
    v57 = v74;
    sub_224627A88();
    sub_2245098A0(v11, &qword_27D0C9DC0);
    v58 = sub_224627828();
    (*(v7 + 8))(v57, v6);
    v56 = v58;
  }

  CameraOrientationInternal.init(rawValue:)(v56);
  if (v103 == 8)
  {
    v59 = 0;
  }

  else
  {
    v59 = v103;
  }

  sub_2246272B8();
  v60 = COERCE_DOUBLE(sub_224627298());
  if (v62)
  {
    v63 = 0.0;
  }

  else
  {
    v63 = v60;
  }

  if (v62)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = v61;
  }

  type metadata accessor for TrackingSummaryInternal(0);
  v65 = swift_allocObject();
  v3[4](v65 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_time, v5, v2);
  *(v65 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_subjects) = v53;
  *(v65 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_orientation) = v59;
  v66 = (v65 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension);
  *v66 = v63;
  v66[1] = v64;
  return v65;
}

uint64_t sub_2245B01FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_2245A9690(a1, v4, v5, v6);
}

uint64_t keypath_set_57Tm(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*a2 + *a5) = *a1;
}

void sub_2245B032C()
{
  sub_224627118();
  if (v0 <= 0x3F)
  {
    sub_2245B19D4();
    if (v1 <= 0x3F)
    {
      sub_2245B1A38();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of TrackingStand.resetIntelligentTrackingSecure()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB20);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22450D034;

  return v5();
}

uint64_t dispatch thunk of TrackingStand.startTracking()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB40);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22450D030;

  return v5();
}

uint64_t dispatch thunk of TrackingStand.trackObservations(data:image:camera:orientation:calibration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xB50);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22450D030;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TrackingStand.executeTrajectoryName(trajectoryName:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB60);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22457F22C;

  return v7(a1);
}

uint64_t dispatch thunk of TrackingStand.selectSubject(at:)(double a1, double a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB68);
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22450D034;
  v8.n128_f64[0] = a1;
  v9.n128_f64[0] = a2;

  return v11(v8, v9);
}

uint64_t dispatch thunk of TrackingStand.selectSubjects(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB70);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return v7(a1);
}

uint64_t dispatch thunk of TrackingStand.trackSecureMetadata(secureMetadata:camera:orientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xB88);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22450D030;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TrackingStand.trackObservations(metadata:image:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB90);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22450D030;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TrackingStand.search(calibrate:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC28);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_224562804;

  return v7(a1);
}

uint64_t dispatch thunk of TrackingStand.stopSearch(calibrate:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC30);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22455FE48;

  return v7(a1);
}

uint64_t dispatch thunk of TrackingStand.returnToBase()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC38);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_224562804;

  return v5();
}

uint64_t dispatch thunk of TrackingStand.stopReturnToBase()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC40);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_224562804;

  return v5();
}

uint64_t dispatch thunk of TrackingStand.flip180(clockwise:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC48);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_224562804;

  return v7(a1);
}

void sub_2245B19D4()
{
  if (!qword_27D0C9D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C9D28);
    v0 = sub_224627598();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0C9D98);
    }
  }
}

void sub_2245B1A38()
{
  if (!qword_27D0C9DA0)
  {
    v0 = sub_224627598();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0C9DA0);
    }
  }
}

void sub_2245B1A88(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2245B1A98(uint64_t a1)
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

  return sub_2245A8D94(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2245B1B60(uint64_t a1)
{
  v4 = *(sub_2246273E8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22450D030;

  return sub_2245A3E0C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2245B1C60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_2245A51C0(a1, v4, v5, v6);
}

uint64_t sub_2245B1D14()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245AC94C(v2, v4, v3);
}

uint64_t sub_2245B1DC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245AC39C(v2, v3);
}

uint64_t sub_2245B1E74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245ABE08(v2, v3);
}

uint64_t sub_2245B1F20()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245AB680(v2, v4, v3);
}

uint64_t objectdestroy_322Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2245B2014()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245AB398(v2, v4, v3);
}

uint64_t sub_2245B20C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245A0A44(v2, v3, v5, v4);
}

uint64_t sub_2245B2188()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_22459B62C(v2, v3);
}

uint64_t sub_2245B2234(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_304Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2245B2328(uint64_t a1)
{
  v4 = *(sub_224627418() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22450D030;

  return sub_2245A16C8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2245B2428(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22450D030;

  return sub_2245A1D38(a1, v5, v4);
}

uint64_t sub_2245B24D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return sub_224509900(a1, v4);
}

id sub_2245B258C(id result, void *a2)
{
  if (a2)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_2245B25D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_2245AA810(a1, v4, v5, v6);
}

unint64_t LEDState.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2245B26C0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_2245B276C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_state);
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  if (v1 == 1)
  {
    v3 = 6710895;
    v2 = 0xE300000000000000;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 28271;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  sub_224628378();
  MEMORY[0x22AA51210](0xD000000000000017, 0x8000000224639460);
  MEMORY[0x22AA51210](v4, v5);

  MEMORY[0x22AA51210](0x7468676972622022, 0xEE00223D7373656ELL);
  sub_224627FB8();
  MEMORY[0x22AA51210](0x3D726F6C6F632022, 0xE900000000000022);
  sub_224627FB8();
  MEMORY[0x22AA51210](15906, 0xE200000000000000);
  return 0;
}

id SensorLEDState.__allocating_init(state:brightness:color:)(uint64_t a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_brightness;
  v9 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_color;
  *&v7[OBJC_IVAR____TtC11DockKitCore14SensorLEDState_state] = a1;
  *&v7[v8] = a2;
  *&v7[v9] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id SensorLEDState.init(state:brightness:color:)(uint64_t a1, double a2, double a3)
{
  v4 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_brightness;
  v5 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_color;
  *&v3[OBJC_IVAR____TtC11DockKitCore14SensorLEDState_state] = a1;
  *&v3[v4] = a2;
  *&v3[v5] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for SensorLEDState();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_2245B2A38(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_state);
  v4 = sub_224627CB8();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_brightness);
  v6 = sub_224627CB8();
  [a1 encodeDouble:v6 forKey:v5];

  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_color);
  v8 = sub_224627CB8();
  [a1 encodeDouble:v8 forKey:v7];
}

id SensorLEDState.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2245B342C(a1);

  return v4;
}

id SensorLEDState.init(coder:)(void *a1)
{
  v2 = sub_2245B342C(a1);

  return v2;
}

id SensorLEDState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_2245B2D18()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore9SensorLED_state);
  v2 = v1;
  return v1;
}

id sub_2245B2DA8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_224627CB8();

  return v5;
}

unint64_t sub_2245B2E18()
{
  sub_224628378();

  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name);
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

  MEMORY[0x22AA51210](v1, v2);

  MEMORY[0x22AA51210](0x223D64692022, 0xE600000000000000);
  v3 = sub_224628668();
  MEMORY[0x22AA51210](v3);

  MEMORY[0x22AA51210](15906, 0xE200000000000000);
  return 0xD000000000000011;
}

char *SensorLED.__allocating_init(id:name:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11DockKitCore9SensorLED_state] = 0;
  *&v9[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v9[OBJC_IVAR____TtC11DockKitCore9Component_type] = 2;
  v10 = &v9[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v10 = a2;
  v10[1] = a3;
  v15.receiver = v9;
  v15.super_class = type metadata accessor for Component();
  v11 = objc_msgSendSuper2(&v15, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC11DockKitCore9SensorLED_state];
  *&v11[OBJC_IVAR____TtC11DockKitCore9SensorLED_state] = a4;
  v13 = v11;

  v13[OBJC_IVAR____TtC11DockKitCore9Component_type] = 2;
  return v13;
}

char *SensorLED.init(id:name:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11DockKitCore9SensorLED_state] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v4[OBJC_IVAR____TtC11DockKitCore9Component_type] = 2;
  v6 = &v4[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v6 = a2;
  v6[1] = a3;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for Component();
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC11DockKitCore9SensorLED_state];
  *&v7[OBJC_IVAR____TtC11DockKitCore9SensorLED_state] = a4;
  v9 = v7;

  v9[OBJC_IVAR____TtC11DockKitCore9Component_type] = 2;
  return v9;
}

void sub_2245B30C0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore9SensorLED_state);
  v4 = sub_224627CB8();
  [a1 encodeObject:v3 forKey:v4];

  sub_2245B3720(a1);
}

void *SensorLED.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11DockKitCore9SensorLED_state] = 0;
  v4 = sub_2245B47B4();
  v5 = v4;
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC11DockKitCore9Component_type) = 2;
    type metadata accessor for SensorLEDState();
    v6 = v5;
    v7 = sub_2246281A8();

    a1 = *&v6[OBJC_IVAR____TtC11DockKitCore9SensorLED_state];
    *&v6[OBJC_IVAR____TtC11DockKitCore9SensorLED_state] = v7;
  }

  return v5;
}

void *SensorLED.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC11DockKitCore9SensorLED_state) = 0;
  v3 = sub_2245B47B4();
  v4 = v3;
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC11DockKitCore9Component_type) = 2;
    type metadata accessor for SensorLEDState();
    v5 = v4;
    v6 = sub_2246281A8();

    a1 = *&v5[OBJC_IVAR____TtC11DockKitCore9SensorLED_state];
    *&v5[OBJC_IVAR____TtC11DockKitCore9SensorLED_state] = v6;
  }

  return v4;
}

id sub_2245B33E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2245B342C(void *a1)
{
  v3 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_brightness;
  *&v1[OBJC_IVAR____TtC11DockKitCore14SensorLEDState_brightness] = 0;
  v4 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_color;
  *&v1[OBJC_IVAR____TtC11DockKitCore14SensorLEDState_color] = 0;
  v5 = sub_224627CB8();
  v6 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC11DockKitCore14SensorLEDState_state] = v6 != 0;
  v7 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v9 = v8;

  *&v1[v3] = v9;
  v10 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v12 = v11;

  *&v1[v4] = v12;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SensorData();
  return objc_msgSendSuper2(&v14, sel_init);
}

unint64_t sub_2245B3584()
{
  result = qword_27D0C9E30;
  if (!qword_27D0C9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9E30);
  }

  return result;
}

void sub_2245B3720(void *a1)
{
  v2 = sub_224628008();
  v3 = sub_224627CB8();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_224628008();
  v5 = sub_224627CB8();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_224627CB8();

  v7 = sub_224627CB8();
  [a1 encodeObject:v6 forKey:v7];
}

id Component.init(coder:)(void *a1)
{
  v2 = sub_2245B47B4();

  return v2;
}

uint64_t sub_2245B3880()
{
  v1 = [v0 description];
  v2 = sub_224627CD8();

  return v2;
}

uint64_t sub_2245B38FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name);

  return v1;
}

id System.init(id:type:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR____TtC11DockKitCore6System_id] = a1;
  *&v4[OBJC_IVAR____TtC11DockKitCore6System_type] = a2;
  v5 = &v4[OBJC_IVAR____TtC11DockKitCore6System_name];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for System();
  return objc_msgSendSuper2(&v7, sel_init);
}

id System.init(coder:)(void *a1)
{
  v2 = sub_2245B4A54();

  return v2;
}

uint64_t sub_2245B39E8()
{
  v1 = [v0 description];
  v2 = sub_224627CD8();

  v3 = *&v0[OBJC_IVAR____TtC11DockKitCore6System_components];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = )
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v3 + 56) + 8 * (v11 | (v10 << 6)));

    v13 = [v12 description];
    v14 = sub_224627CD8();
    v16 = v15;

    MEMORY[0x22AA51210](v14, v16);

    MEMORY[0x22AA51210](0x202020202020200ALL, 0xE900000000000020);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2245B3BA4(void *a1)
{
  v2 = sub_224628008();
  v3 = sub_224627CB8();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_224628008();
  v5 = sub_224627CB8();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_224627CB8();
  v7 = sub_224627CB8();
  [a1 encodeObject:v6 forKey:v7];

  type metadata accessor for Component();

  v8 = sub_224627C48();

  v9 = sub_224627CB8();
  [a1 encodeObject:v8 forKey:v9];
}

unint64_t SystemType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

DockKitCore::ComponentType_optional __swiftcall ComponentType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id Component.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2245B47B4();

  return v4;
}

uint64_t System.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore6System_name);

  return v1;
}

uint64_t sub_2245B4088()
{
  sub_224628378();

  v1 = sub_224628668();
  MEMORY[0x22AA51210](v1);

  MEMORY[0x22AA51210](0x3D6570797420, 0xE600000000000000);
  swift_getObjectType();
  v2 = sub_224628838();
  MEMORY[0x22AA51210](v2);

  MEMORY[0x22AA51210](0x223D656D616E20, 0xE700000000000000);
  MEMORY[0x22AA51210](*(v0 + OBJC_IVAR____TtC11DockKitCore6System_name), *(v0 + OBJC_IVAR____TtC11DockKitCore6System_name + 8));
  MEMORY[0x22AA51210](0x20687469772022, 0xE700000000000000);
  v3 = sub_224628668();
  v5 = v4;

  MEMORY[0x22AA51210](v3, v5);

  MEMORY[0x22AA51210](0x656E6F706D6F6320, 0xEC0000003E73746ELL);

  return 0x206D65747379533CLL;
}

id System.__allocating_init(id:type:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&v9[OBJC_IVAR____TtC11DockKitCore6System_id] = a1;
  *&v9[OBJC_IVAR____TtC11DockKitCore6System_type] = a2;
  v10 = &v9[OBJC_IVAR____TtC11DockKitCore6System_name];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_2245B4398(uint64_t a1)
{
  sub_22457C960(a1, v6);
  if (!v7)
  {
    sub_2245B4E00(v6);
    goto LABEL_12;
  }

  type metadata accessor for System();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore6System_id) != *&v5[OBJC_IVAR____TtC11DockKitCore6System_id] || *(v1 + OBJC_IVAR____TtC11DockKitCore6System_type) != *&v5[OBJC_IVAR____TtC11DockKitCore6System_type])
  {

    goto LABEL_12;
  }

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore6System_name) == *&v5[OBJC_IVAR____TtC11DockKitCore6System_name] && *(v1 + OBJC_IVAR____TtC11DockKitCore6System_name + 8) == *&v5[OBJC_IVAR____TtC11DockKitCore6System_name + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_224628688();
  }

  return v3 & 1;
}

id System.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2245B4A54();

  return v4;
}

id System.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2245B472C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2245B47B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22462C8F0;
  v3 = sub_22450950C(0, &unk_27D0C89A0);
  *(v2 + 32) = v3;
  sub_2246281B8();

  if (v19)
  {
    if (swift_dynamicCast())
    {
      v4 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245B4E00(v18);
  }

  v4 = 0;
LABEL_6:
  *&v0[OBJC_IVAR____TtC11DockKitCore9Component_id] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22462C8F0;
  *(v5 + 32) = v3;
  sub_2246281B8();

  if (v19)
  {
    if (swift_dynamicCast())
    {
      v6 = v15;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2245B4E00(v18);
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_11:
  v7 = [v6 integerValue];
  if (v7 >= 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v0[OBJC_IVAR____TtC11DockKitCore9Component_type] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v14;
  *(v9 + 32) = sub_22450950C(0, &unk_27D0C8D40);
  sub_2246281B8();

  if (!v19)
  {
    sub_2245B4E00(v18);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    v10 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_19;
  }

  v10 = v15;
  v11 = v16;

LABEL_19:
  v12 = &v1[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v12 = v10;
  *(v12 + 1) = v11;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for Component();
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_2245B4A54()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11DockKitCore6System_components;
  *&v0[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22462C8F0;
  v4 = sub_22450950C(0, &unk_27D0C89A0);
  *(v3 + 32) = v4;
  sub_2246281B8();

  if (v22)
  {
    if (swift_dynamicCast())
    {
      v5 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245B4E00(v21);
  }

  v5 = 0;
LABEL_6:
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22462C8F0;
  *(v6 + 32) = v4;
  sub_2246281B8();

  if (v22)
  {
    if (swift_dynamicCast())
    {
      v7 = v18;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2245B4E00(v21);
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_11:
  *&v0[OBJC_IVAR____TtC11DockKitCore6System_id] = v5;
  v8 = [v7 integerValue] == 1;
  *&v0[OBJC_IVAR____TtC11DockKitCore6System_type] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v17;
  v10 = sub_22450950C(0, &unk_27D0C8D40);
  *(v9 + 32) = v10;
  sub_2246281B8();

  if (v22)
  {
    if (swift_dynamicCast())
    {
      v11 = v18;
      v12 = v19;
      goto LABEL_16;
    }
  }

  else
  {
    sub_2245B4E00(v21);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_16:
  v13 = &v0[OBJC_IVAR____TtC11DockKitCore6System_name];
  *v13 = v11;
  *(v13 + 1) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22462C900;
  *(v14 + 32) = type metadata accessor for Component();
  *(v14 + 40) = sub_22450950C(0, &qword_27D0C9FB0);
  *(v14 + 48) = v10;
  *(v14 + 56) = sub_22450950C(0, &qword_27D0C9E90);
  sub_2246281B8();

  if (!v22)
  {
    sub_2245B4E00(v21);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9E98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v15 = sub_22452E234(MEMORY[0x277D84F90]);
    goto LABEL_21;
  }

  v15 = v18;
LABEL_21:

  *&v1[v2] = v15;

  v20.receiver = v1;
  v20.super_class = type metadata accessor for System();
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_2245B4E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2245B4E6C()
{
  result = qword_27D0C9E80;
  if (!qword_27D0C9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9E80);
  }

  return result;
}

unint64_t sub_2245B4EC4()
{
  result = qword_27D0C9E88;
  if (!qword_27D0C9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9E88);
  }

  return result;
}

uint64_t DeviceNotification.state.getter()
{
  v1 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*(v0 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token), (v0 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state));
  v4 = *(v0 + v3);
  v5 = *(v0 + v1);

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

void DeviceNotification.state.setter(uint64_t a1)
{
  v3 = v1;
  v4 = sub_224627B58();
  v5 = sub_224628058();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_224509F28(*&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_name], *&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_name + 8], &v19);
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    *(v6 + 22) = 2048;
    *(v6 + 24) = *&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state];

    _os_log_impl(&dword_224507000, v4, v5, "Trying to set %s's state to %llu old value %llu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x22AA526D0](v7, -1, -1);
    MEMORY[0x22AA526D0](v6, -1, -1);
  }

  else
  {
  }

  if (*&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_name])
  {
    v8 = 0;
  }

  else
  {
    v8 = *&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_name + 8] == 0xE000000000000000;
  }

  if (v8 || (sub_224628688() & 1) != 0)
  {
    oslog = sub_224627B58();
    v9 = sub_224628048();
    if (!os_log_type_enabled(oslog, v9))
    {
LABEL_12:

      return;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Name is empty!";
LABEL_11:
    _os_log_impl(&dword_224507000, oslog, v9, v11, v10, 2u);
    MEMORY[0x22AA526D0](v10, -1, -1);
    goto LABEL_12;
  }

  v12 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token;
  if (*&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token] == -1)
  {
    oslog = sub_224627B58();
    v9 = sub_224628048();
    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "token invalid";
    goto LABEL_11;
  }

  v13 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  if (*&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state] == a1)
  {
    oslog = sub_224627B58();
    v9 = sub_224628048();
    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "new state matches old state";
    goto LABEL_11;
  }

  v14 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v15 = *&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];

  os_unfair_lock_lock(v15 + 4);

  *&v3[v13] = a1;
  v16 = *&v3[v14];

  os_unfair_lock_unlock(v16 + 4);

  notify_set_state(*&v3[v12], a1);
  v17 = sub_224627D48();
  notify_post((v17 + 32));
}

uint64_t sub_2245B5714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v5 = *(*a1 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*(v3 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token), (v3 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state));
  v7 = *(v3 + v6);
  v8 = *(v3 + v4);

  os_unfair_lock_unlock(v8 + 4);

  *a2 = v7;
  return result;
}

void (*DeviceNotification.state.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*(v1 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token), (v1 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state));
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245B5858;
}

void sub_2245B590C(int a1, uint64_t a2, void (*a3)(uint64_t))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v6 = sub_224627B58();
    v7 = sub_224628058();
    v8 = &unk_280C51000;
    v9 = &unk_280C51000;
    if (os_log_type_enabled(v6, v7))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315650;
      v12 = *&v27[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_name];
      v13 = *&v27[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_name + 8];

      v14 = sub_224509F28(v12, v13, &v28);

      *(v10 + 4) = v14;
      *(v10 + 12) = 1024;
      *(v10 + 14) = a1;
      *(v10 + 18) = 2048;
      v15 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
      v16 = *&v27[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];

      os_unfair_lock_lock(v16 + 4);

      v17 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
      notify_get_state(*&v27[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], &v27[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]);
      v18 = *&v27[v17];
      v19 = *&v27[v15];

      os_unfair_lock_unlock(v19 + 4);

      *(v10 + 20) = v18;

      _os_log_impl(&dword_224507000, v6, v7, "%s got a value %d %llu", v10, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v20 = v11;
      v8 = &unk_280C51000;
      MEMORY[0x22AA526D0](v20, -1, -1);
      v21 = v10;
      v9 = &unk_280C51000;
      MEMORY[0x22AA526D0](v21, -1, -1);
    }

    else
    {
    }

    v22 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
    v23 = *&v27[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];

    os_unfair_lock_lock(v23 + 4);

    v24 = v9[295];
    notify_get_state(*&v27[v8[309]], &v27[v24]);
    v25 = *&v27[v24];
    v26 = *&v27[v22];

    os_unfair_lock_unlock(v26 + 4);

    a3(v25);
  }
}

uint64_t sub_2245B5BAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id DeviceNotification.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token];
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id DeviceNotification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RepeatingTimer.init(interval:fireOnce:queue:_:)(int a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v61 = a4;
  v62 = a2;
  v53 = a3;
  LODWORD(v51) = a1;
  v8 = sub_224627B98();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224627BC8();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_224627B88();
  v49 = *(v52 - 8);
  v12 = MEMORY[0x28223BE20](v52);
  v48 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = (&v48 - v14);
  v16 = sub_224627BE8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = sub_2246280F8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *&v6[v27] = v28;
  v6[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_state] = 0;
  sub_2245B64EC();
  sub_2246280E8();
  v29 = sub_224628108();
  (*(v24 + 8))(v26, v23);
  v60 = v6;
  *&v6[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_timer] = v29;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_224627BD8();
  sub_224627C38();
  v31 = *(v17 + 8);
  v50 = v16;
  v31(v20, v16);
  if (v51)
  {
    v32 = *MEMORY[0x277D85180];
    v33 = v49;
    v51 = ObjectType;
    v34 = *(v49 + 104);
    v35 = v52;
    v34(v15, v32, v52);
    v36 = v48;
    *v48 = 0;
    v34(v36, *MEMORY[0x277D85168], v35);
    MEMORY[0x22AA515D0](v22, v15, v36, v51);
    swift_unknownObjectRelease();
    v37 = *(v33 + 8);
    v37(v36, v35);
    v37(v15, v35);
  }

  else
  {
    *v15 = 0;
    v38 = v49;
    v39 = v52;
    (*(v49 + 104))(v15, *MEMORY[0x277D85168], v52);
    MEMORY[0x22AA515E0](v22, v15, ObjectType, a5);
    swift_unknownObjectRelease();
    (*(v38 + 8))(v15, v39);
  }

  v31(v22, v50);
  v40 = v60;
  swift_getObjectType();
  aBlock[4] = v53;
  aBlock[5] = v61;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224580D44;
  aBlock[3] = &block_descriptor_5;
  v41 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v42 = v54;
  sub_224627BA8();
  v43 = v57;
  sub_2245B65BC();
  sub_224628118();
  _Block_release(v41);
  swift_unknownObjectRelease();
  (*(v58 + 8))(v43, v59);
  (*(v55 + 8))(v42, v56);

  v44 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  *&v40[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_date] = v44;
  v45 = type metadata accessor for RepeatingTimer();
  v63.receiver = v40;
  v63.super_class = v45;
  v46 = objc_msgSendSuper2(&v63, sel_init);
  sub_2245B6854();

  return v46;
}

unint64_t sub_2245B64EC()
{
  result = qword_27D0C9E08;
  if (!qword_27D0C9E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0C9E08);
  }

  return result;
}

uint64_t sub_2245B6538@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_224627B88();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2245B65BC()
{
  sub_224627B98();
  sub_2245B6CBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
  sub_2245B6D14();
  return sub_224628298();
}

id RepeatingTimer.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock;
  v3 = *&v0[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock];

  os_unfair_lock_lock(v3 + 4);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_224628128();
  swift_unknownObjectRelease();
  v4 = *&v1[v2];

  os_unfair_lock_unlock(v4 + 4);

  sub_2245B6854();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RepeatingTimer();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_2245B6854()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock;
  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock);

  os_unfair_lock_lock(v3 + 4);

  if (!*(v1 + OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_state))
  {
    *(v1 + OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_state) = 1;
    swift_getObjectType();
    sub_224628138();
  }

  v4 = *(v1 + v2);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_2245B6930(char a1, void (*a2)(uint64_t))
{
  v5 = v2;
  v6 = OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock;
  v7 = *(v2 + OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock);

  os_unfair_lock_lock(v7 + 4);

  if (*(v5 + OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_state) == 1)
  {
    *(v5 + OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_state) = a1;
    ObjectType = swift_getObjectType();
    a2(ObjectType);
  }

  v9 = *(v5 + v6);

  os_unfair_lock_unlock(v9 + 4);
}

BOOL sub_2245B69E8()
{
  v1 = OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock;
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_state);
  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);

  return v3 == 1;
}

id RepeatingTimer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_2245B6C68()
{
  result = qword_27D0C9EE8;
  if (!qword_27D0C9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9EE8);
  }

  return result;
}

unint64_t sub_2245B6CBC()
{
  result = qword_27D0C9EF0;
  if (!qword_27D0C9EF0)
  {
    sub_224627B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9EF0);
  }

  return result;
}

unint64_t sub_2245B6D14()
{
  result = qword_27D0C9F00;
  if (!qword_27D0C9F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D0C9A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9F00);
  }

  return result;
}

DockKitCore::DockKitPanoramaMotionDirection_optional __swiftcall DockKitPanoramaMotionDirection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DKPanoramaController.__allocating_init(manager:)(void *a1)
{
  swift_allocObject();
  v2 = sub_22450D878();

  return v2;
}

uint64_t DKPanoramaController.setup()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2245B6E78;

  return sub_2245B6F94(0);
}

uint64_t sub_2245B6E78()
{

  return MEMORY[0x2822009F8](sub_2245B6F74, 0, 0);
}

uint64_t sub_2245B6F94(char a1)
{
  *(v2 + 112) = v1;
  *(v2 + 136) = a1;
  return MEMORY[0x2822009F8](sub_2245B6FB8, 0, 0);
}

uint64_t sub_2245B6FB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2245B705C, 0, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_2245B705C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 136);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2245B7108;
  v3 = swift_continuation_init();
  sub_2245E07A0(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245B7108()
{
  v1 = *(*v0 + 48);
  *(*v0 + 128) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245B7284;
  }

  else
  {
    v2 = sub_2245B7224;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245B7224()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245B7284()
{
  v15 = v0;
  v1 = *(v0 + 128);

  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628058();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_2246286F8();
    v10 = sub_224509F28(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_224507000, v3, v4, "Unable to enable system tracking: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x22AA526D0](v7, -1, -1);
    MEMORY[0x22AA526D0](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 128);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t DKPanoramaController.tearDown()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D034;

  return sub_2245B6F94(1);
}

uint64_t sub_2245B74A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 136) = a2;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  *(v5 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245B7548, 0, 0);
}

uint64_t sub_2245B7548()
{
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "Starting panorama capture...", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v4 = *(v0 + 96);

  v5 = *(v4 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  if (!v5)
  {
    v7 = sub_224627B58();
    v8 = sub_224628048();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_224507000, v7, v8, "Actuation limits not available, not taking Panorama", v9, 2u);
      MEMORY[0x22AA526D0](v9, -1, -1);
    }

    goto LABEL_8;
  }

  v6 = v5;
  v11 = ActuationController.getActuatorLimits()();
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 104);
  v15 = *(v0 + 136);

  v16 = *(v13 + 32);
  *(v13 + 32) = v14;
  *(v13 + 40) = v12;
  sub_2245122DC(v14);
  result = sub_224512308(v16);
  *(v13 + 24) = v15;
  *(v13 + 25) = 0;
  if ((v15 - 2) < 2)
  {
    if (*(v11 + 2) >= 2uLL)
    {
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v21 = *(v0 + 136);
      v22 = *(v0 + 96);
      v23 = *(v11 + 13);
      v24 = *(v11 + 88);
      *(v0 + 16) = *(v11 + 72);
      *(v0 + 32) = v24;
      *(v0 + 48) = v23;
      sub_2245BA53C(v0 + 16, v0 + 56);

      v25 = (v0 + 32);
      v26 = -0.1;
      if ((v21 == 2) != (*(v20 + 26) == 2))
      {
        v26 = 0.1;
      }

      else
      {
        v25 = (v0 + 40);
      }

      v27 = *v25 + v26;
      v28 = sub_224627F78();
      (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = *(v0 + 32);
      *(v29 + 32) = *(v0 + 16);
      *(v29 + 48) = v30;
      *(v29 + 64) = *(v0 + 48);
      *(v29 + 72) = v27;
      *(v29 + 80) = v20;
      *(v29 + 88) = v22;

      v31 = v22;
      v32 = &unk_2246323A8;
      goto LABEL_29;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  result = v11;
  if (v15)
  {
    if (v15 != 1)
    {

      goto LABEL_8;
    }

    v18 = -0.174532925;
  }

  else
  {
    v18 = 0.174532925;
  }

  if (!*(v11 + 2))
  {
    __break(1u);
    goto LABEL_32;
  }

  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v33 = *(v0 + 96);
  if (*(v20 + 26) == 1)
  {
    v34 = -v18;
  }

  else
  {
    v34 = v18;
  }

  v35 = *(v11 + 6);
  v36 = *(v11 + 7);

  v37 = v36 - v35 + -0.1;
  if (v37 <= 6.28318531)
  {
    v38 = -v37;
  }

  else
  {
    v38 = -6.28318531;
  }

  v39 = sub_224627F78();
  (*(*(v39 - 8) + 56))(v19, 1, 1, v39);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v38;
  *(v29 + 40) = v20;
  *(v29 + 48) = v33;
  *(v29 + 56) = v34;

  v40 = v33;
  v32 = &unk_224632398;
LABEL_29:
  *(v20 + 48) = sub_224536440(0, 0, v19, v32, v29);

LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2245B798C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 40) = a1;
  *(v7 + 32) = a5;
  return MEMORY[0x2822009F8](sub_2245B79B4, 0, 0);
}

uint64_t sub_2245B79B4()
{
  super_class = v0[2].super_class;
  v2 = fabs((*(v0[2].receiver + 3) - *(v0[2].receiver + 2)) / 0.174532925);
  v3 = type metadata accessor for Orientation();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v4[v5] = v6;
  v7 = OBJC_IVAR____TtC11DockKitCore11Orientation__pitch;
  v8 = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
  *&v4[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = 0x7FF0000000000000;
  *&v4[v7] = super_class;
  *&v4[v8] = 0x7FF0000000000000;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v9 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[4].receiver = v9;
  v10 = swift_task_alloc();
  v0[4].super_class = v10;
  *v10 = v0;
  *(v10 + 1) = sub_2245B7B10;
  v11 = v0[3].super_class;

  return sub_2245B7CB4(v11, v9, 0, v2);
}

uint64_t sub_2245B7B10()
{

  return MEMORY[0x2822009F8](sub_2245B7C0C, 0, 0);
}

uint64_t sub_2245B7C0C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 32);
  if (v2)
  {

    v2(1);
    sub_224512308(v2);
  }

  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_224512308(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245B7CB4(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v5 + 40) = v4;
  *(v5 + 32) = a4;
  *(v5 + 81) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2245B7CE0, 0, 0);
}

uint64_t sub_2245B7CE0()
{
  *(v0 + 48) = OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_logger;
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "Sending panorama rotation...", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v4 = *(v0 + 16);

  v5 = *(v4 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  *(v0 + 56) = v5;
  if (v5)
  {
    *(v0 + 80) = 0;
    v5;
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_2245B7E8C;
    v7 = *(v0 + 32);
    v8 = *(v0 + 81);
    v9 = *(v0 + 24);

    return ActuationController.setOrientation(orientation:relative:duration:priority:progressCallback:)(v9, v8, (v0 + 80), nullsub_1, 0, v7);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2245B7E8C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2245B7FD8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2245B7FD8()
{
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224507000, v3, v4, "Failed sending rotation command: %@", v7, 0xCu);
    sub_2245BA66C(v8);
    MEMORY[0x22AA526D0](v8, -1, -1);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2245B812C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a2;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2245B8154, 0, 0);
}

uint64_t sub_2245B8154()
{
  v1 = *(v0 + 16) / 0.174532925;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2245B820C;
  v3 = *(v0 + 40);
  v4 = *(v0 + 32);

  return sub_2245B83B4(v4, *&v1 & 0x7FFFFFFFFFFFFFFFLL, 0, v3, 0.0);
}

uint64_t sub_2245B820C()
{

  return MEMORY[0x2822009F8](sub_2245B8308, 0, 0);
}

uint64_t sub_2245B8308()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  if (v2)
  {

    v2(1);
    sub_224512308(v2);
    v3 = *(v1 + 32);
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_224512308(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245B83B4(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  *(v6 + 104) = a3;
  *(v6 + 40) = a2;
  *(v6 + 48) = v5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2245B83E0, 0, 0);
}

uint64_t sub_2245B83E0()
{
  *(v0 + 56) = OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_logger;
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 104);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = v7;
    *v7 = 134218496;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v5;
    *(v7 + 22) = 2048;
    v9 = 0.0;
    if ((v3 & 1) == 0)
    {
      v9 = v4;
    }

    *(v7 + 24) = v9;
    _os_log_impl(&dword_224507000, v1, v2, "Sending panorama velocity... %f %f for duration %f", v7, 0x20u);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 16);

  v12 = *(v11 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  *(v0 + 64) = v12;
  if (v10)
  {
    if (v12)
    {
      v12;
      v13 = swift_task_alloc();
      *(v0 + 88) = v13;
      *v13 = v0;
      v13[1] = sub_2245B87AC;
      v14 = *(v0 + 24);
      v15 = *(v0 + 32);

      return ActuationController.setRotationalVelocity(yaw:pitch:roll:)(v14, v15, INFINITY);
    }

    goto LABEL_14;
  }

  if (!v12)
  {
LABEL_14:
    v21 = *(v0 + 8);

    return v21();
  }

  v17 = *(v0 + 40);
  v12;
  v18 = swift_task_alloc();
  *(v0 + 72) = v18;
  *v18 = v0;
  v18[1] = sub_2245B8670;
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);

  return ActuationController.setRotationalVelocity(yaw:pitch:roll:duration:progressCallback:)(nullsub_1, 0, v19, v20, INFINITY, v17);
}

uint64_t sub_2245B8670()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2245B88E8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2245B87AC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2245B8A40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2245B88E8()
{
  v1 = *(v0 + 80);

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
    _os_log_impl(&dword_224507000, v3, v4, "Failed sending velocity command: %@", v5, 0xCu);
    sub_2245BA66C(v6);
    MEMORY[0x22AA526D0](v6, -1, -1);
    MEMORY[0x22AA526D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2245B8A40()
{
  v1 = *(v0 + 96);

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
    _os_log_impl(&dword_224507000, v3, v4, "Failed sending velocity command: %@", v5, 0xCu);
    sub_2245BA66C(v6);
    MEMORY[0x22AA526D0](v6, -1, -1);
    MEMORY[0x22AA526D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t DKPanoramaController.stopPanorama(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2245B8BB8, 0, 0);
}

uint64_t sub_2245B8BB8()
{
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "Stopping panorama capture...", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v4 = v0[3];

  v5 = v4[4];
  v4[4] = 0;
  v4[5] = 0;
  sub_224512308(v5);
  if (v4[6])
  {

    sub_224627F88();
  }

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_2245B8D28;
  v7 = v0[2];

  return sub_2245B83B4(v7, 0, 1, 0.0, 0.0);
}

uint64_t sub_2245B8D28()
{

  return MEMORY[0x2822009F8](sub_2245B8E24, 0, 0);
}

uint64_t sub_2245B8E24()
{
  v1 = v0[3];
  if ((*(v1 + 25) & 1) != 0 || (*(v1 + 24) & 0xFE) != 2)
  {
    v11 = v0[1];

    return v11();
  }

  else
  {
    v2 = [objc_allocWithZone(type metadata accessor for Orientation()) init];
    v0[5] = v2;
    v3 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
    v4 = *&v2[OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock];

    os_unfair_lock_lock(v4 + 4);

    *&v2[OBJC_IVAR____TtC11DockKitCore11Orientation__pitch] = 0;
    v5 = *&v2[v3];

    os_unfair_lock_unlock(v5 + 4);

    v6 = *&v2[v3];

    os_unfair_lock_lock(v6 + 4);

    *&v2[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = 0x7FF0000000000000;
    v7 = *&v2[v3];

    os_unfair_lock_unlock(v7 + 4);

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_2245B8FD0;
    v9 = v0[2];

    return sub_2245B7CB4(v9, v2, 0, 1.0);
  }
}

uint64_t sub_2245B8FD0()
{

  return MEMORY[0x2822009F8](sub_2245B90CC, 0, 0);
}

uint64_t sub_2245B90CC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DKPanoramaController.panoramaDidStart(for:direction:finishedCallback:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_2245B9158, 0, 0);
}

uint64_t sub_2245B9158()
{
  v22 = v0;
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "Starting panorama capture...", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v4 = *(v0 + 16);

  v5 = *(v4 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  if (v5)
  {
    v6 = v5;
    ActuationController.getActuatorLimits()();
    v12 = *(v0 + 56);
    v13 = *(v0 + 16);

    v21[0] = v12;
    sub_2245BA10C(v13, v21);
    v15 = v14;

    if (v15)
    {
      v16 = *(v0 + 32);
      v17 = *(v0 + 40);
      v18 = *(v0 + 24);
      v19 = *(v17 + 32);
      *(v17 + 32) = v18;
      *(v17 + 40) = v16;
      sub_2245122DC(v18);
      sub_224512308(v19);
      v20 = swift_task_alloc();
      *(v0 + 48) = v20;
      *v20 = v0;
      v20[1] = sub_2245B93B0;

      return sub_2245B6F94(0);
    }
  }

  else
  {
    v7 = sub_224627B58();
    v8 = sub_224628048();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_224507000, v7, v8, "Actuation limits not available, not taking Panorama", v9, 2u);
      MEMORY[0x22AA526D0](v9, -1, -1);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2245B93B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t DKPanoramaController.panoramaDidStop(for:direction:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_2245B94CC, 0, 0);
}

uint64_t sub_2245B94CC()
{
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "Stopping panorama capture...", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v4 = v0[3];

  v5 = v4[4];
  v4[4] = 0;
  v4[5] = 0;
  sub_224512308(v5);
  if (v4[6])
  {

    sub_224627F88();
  }

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_2245B963C;
  v7 = v0[2];

  return sub_2245B83B4(v7, 0, 1, 0.0, 0.0);
}

uint64_t sub_2245B963C()
{

  return MEMORY[0x2822009F8](sub_2245B9738, 0, 0);
}

uint64_t sub_2245B9738()
{
  if ((*(v0 + 56) & 0xFE) == 2)
  {
    v1 = [objc_allocWithZone(type metadata accessor for Orientation()) init];
    *(v0 + 40) = v1;
    v2 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
    v3 = *&v1[OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock];

    os_unfair_lock_lock(v3 + 4);

    *&v1[OBJC_IVAR____TtC11DockKitCore11Orientation__pitch] = 0;
    v4 = *&v1[v2];

    os_unfair_lock_unlock(v4 + 4);

    v5 = *&v1[v2];

    os_unfair_lock_lock(v5 + 4);

    *&v1[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = 0x7FF0000000000000;
    v6 = *&v1[v2];

    os_unfair_lock_unlock(v6 + 4);

    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_2245B98D8;
    v8 = *(v0 + 16);

    return sub_2245B7CB4(v8, v1, 0, 1.0);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2245B98D8()
{

  return MEMORY[0x2822009F8](sub_2245BA6D8, 0, 0);
}

uint64_t DKPanoramaController.panoramaPaintingUpdated(for:currentSpeed:maxAllowedSpeed:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2245B99FC, 0, 0);
}

void sub_2245B99FC()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_configuration;
  if (*(v1 + 24))
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    v4 = *(v1 + 8);
    v5 = *v1;

    sub_2245AD028();
    if (v6)
    {
      v7 = v6;
      sub_2245ACB54();
      if (v8)
      {
        v9 = v8;
        v10 = *(v7 + 16);
        v11 = v5 & 0xFE;
        if ((v5 & 0xFE) != 0)
        {
          if (v10 < 2)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v12 = *(v7 + 40);

          if (*(v9 + 16) < 2uLL)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v13 = 40;
        }

        else
        {
          if (!v10)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v12 = *(v7 + 32);

          if (!*(v9 + 16))
          {
LABEL_47:
            __break(1u);
            return;
          }

          v13 = 32;
        }

        v15 = *(v9 + v13);

        if (vabdd_f64(v15, v3) < 0.1 && v12 > 0.0 || vabdd_f64(v15, v2) < 0.1 && v12 < 0.0)
        {
          v16 = sub_224627B58();
          v17 = sub_224628058();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_224507000, v16, v17, "stopping panorama", v18, 2u);
            MEMORY[0x22AA526D0](v18, -1, -1);
          }

          v19 = *(v0 + 40);

          v20 = *(v19 + 32);
          if (v20)
          {

            v20(1);
            sub_224512308(v20);
          }
        }

        v21 = *(v0 + 40);
        v23 = *(v0 + 24);
        v22 = *(v0 + 32);

        v24 = v22 * 0.8 - v23;
        v25 = -*(v21 + OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_yDrift);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C92D0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_22462F9E0;
        *(v26 + 32) = v24;
        *(v26 + 40) = v25;
        v27 = *(v21 + 56);
        v28 = sub_2246276A8();

        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = fabs(v4);
          v31 = fabs(v12) + v30 * *(v28 + 32);
          v32 = 0.174532925;
          if (v31 <= 0.174532925)
          {
            v32 = v31;
          }

          if (v31 > 0.02)
          {
            v33 = v32;
          }

          else
          {
            v33 = 0.02;
          }

          if (v29 != 1)
          {
            v34 = *(v28 + 40);
            v35 = v4 / v30;

            v36 = 0.0;
            if (v34 != 0.0)
            {
              v37 = fabs(v34);
              if (v37 > 0.02)
              {
                v38 = v37;
              }

              else
              {
                v38 = 0.02;
              }

              v36 = v34 / v37 * v38;
            }

            v39 = v35 * v33;
            v40 = swift_task_alloc();
            if (v11)
            {
              *(v0 + 56) = v40;
              *v40 = v0;
              v40[1] = sub_2245B9E24;
              v41 = *(v0 + 16);
              v42 = -v36;
              v43 = v39;
            }

            else
            {
              *(v0 + 48) = v40;
              *v40 = v0;
              v40[1] = sub_2245BA6D4;
              v41 = *(v0 + 16);
              v42 = v39;
              v43 = v36;
            }

            sub_2245B83B4(v41, 0, 1, v42, v43);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_44;
      }
    }
  }

  v14 = *(v0 + 8);

  v14();
}

uint64_t sub_2245B9E24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t DKPanoramaController.deinit()
{
  MEMORY[0x22AA52780](v0 + 16);
  sub_224512308(*(v0 + 32));

  v1 = OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_pidConfig;
  v2 = sub_2246274D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_logger;
  v4 = sub_224627B78();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DKPanoramaController.__deallocating_deinit()
{
  MEMORY[0x22AA52780](v0 + 16);
  sub_224512308(*(v0 + 32));

  v1 = OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_pidConfig;
  v2 = sub_2246274D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_logger;
  v4 = sub_224627B78();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

void sub_2245BA10C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = *(a1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  if (!v4)
  {
    v7 = sub_224627B58();
    v8 = sub_224628048();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_224507000, v7, v8, "Actuation limits not available, not taking Panorama", v9, 2u);
      MEMORY[0x22AA526D0](v9, -1, -1);
    }

    goto LABEL_15;
  }

  v5 = *a2;
  v6 = v4;
  v10 = ActuationController.getActuatorLimits()();
  v11 = 0x3FC1DF46A2529D39;

  v12 = *(v10 + 2);
  if (v5 > 1)
  {
    if (v12 >= 2)
    {
      v14 = *(v10 + 9);
      v13 = *(v10 + 10);
      v15 = *(v10 + 11);
      v16 = *(v10 + 12);
      v17 = *(v10 + 13);

      goto LABEL_12;
    }
  }

  else
  {
    if (v12)
    {
      v14 = *(v10 + 4);
      v13 = *(v10 + 5);
      v15 = *(v10 + 6);
      v16 = *(v10 + 7);
      v17 = *(v10 + 8);

      if (!v5)
      {
LABEL_14:
        v18 = (v3 + OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_configuration);
        *v18 = v5;
        v18[1] = v11;
        v18[2] = v14;
        v18[3] = v13;
        v18[4] = v15;
        v18[5] = v16;
        v18[6] = v17;

        v7 = *(v3 + 56);
        sub_2246276B8();
LABEL_15:

        return;
      }

LABEL_12:
      if (v5 != 3)
      {
        v11 = 0xBFC1DF46A2529D39;
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2245BA2DC()
{
  result = qword_27D0C9F10;
  if (!qword_27D0C9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9F10);
  }

  return result;
}

uint64_t type metadata accessor for DKPanoramaController()
{
  result = qword_280C51838;
  if (!qword_280C51838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2245BA3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2245BA408(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2245BA464(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22450D034;

  return sub_2245B812C(v6, v9, a1, v4, v5, v7, v8);
}

uint64_t sub_2245BA598(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[9];
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22450D030;

  return sub_2245B798C(v6, a1, v4, v5, (v1 + 4), v7, v8);
}

uint64_t sub_2245BA66C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t ButtonPressEvent.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2245BA720()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore17SensorButtonState_state);
  v2 = 0xE600000000000000;
  v3 = 0x656C62756F64;
  v4 = 0x6E776F6E6B6E75;
  if (v1 == 1)
  {
    v4 = 0x64657373657270;
  }

  if (v1 != 2)
  {
    v3 = v4;
    v2 = 0xE700000000000000;
  }

  if (v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6573736572706E75;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  sub_224628378();

  MEMORY[0x22AA51210](v5, v6);

  MEMORY[0x22AA51210](15906, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

id SensorButtonState.__allocating_init(state:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11DockKitCore17SensorButtonState_state] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SensorButtonState.init(state:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11DockKitCore17SensorButtonState_state] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SensorButtonState();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_2245BA930(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore17SensorButtonState_state);
  v4 = sub_224627CB8();
  [a1 encodeInteger:v3 forKey:v4];
}

id SensorButtonState.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2245BB290(a1);

  return v4;
}

id SensorButtonState.init(coder:)(void *a1)
{
  v2 = sub_2245BB290(a1);

  return v2;
}

id SensorButtonState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_2245BABAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore12SensorButton_state);
  v2 = v1;
  return v1;
}

id sub_2245BAC3C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_224627CB8();

  return v5;
}

unint64_t sub_2245BACAC()
{
  sub_224628378();

  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name);
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

  MEMORY[0x22AA51210](v1, v2);

  MEMORY[0x22AA51210](0x223D64692022, 0xE600000000000000);
  v3 = sub_224628668();
  MEMORY[0x22AA51210](v3);

  MEMORY[0x22AA51210](15906, 0xE200000000000000);
  return 0xD000000000000014;
}

char *SensorButton.__allocating_init(id:name:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11DockKitCore12SensorButton_state] = 0;
  *&v9[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v9[OBJC_IVAR____TtC11DockKitCore9Component_type] = 1;
  v10 = &v9[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v10 = a2;
  v10[1] = a3;
  v14.receiver = v9;
  v14.super_class = type metadata accessor for Component();
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC11DockKitCore12SensorButton_state];
  *&v11[OBJC_IVAR____TtC11DockKitCore12SensorButton_state] = a4;

  return v11;
}

char *SensorButton.init(id:name:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11DockKitCore12SensorButton_state] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v4[OBJC_IVAR____TtC11DockKitCore9Component_type] = 1;
  v6 = &v4[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v6 = a2;
  v6[1] = a3;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for Component();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC11DockKitCore12SensorButton_state];
  *&v7[OBJC_IVAR____TtC11DockKitCore12SensorButton_state] = a4;

  return v7;
}

void sub_2245BAF24(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore12SensorButton_state);
  v4 = sub_224627CB8();
  [a1 encodeObject:v3 forKey:v4];

  sub_2245B3720(a1);
}

void *SensorButton.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11DockKitCore12SensorButton_state] = 0;
  v4 = sub_2245B47B4();
  v5 = v4;
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC11DockKitCore9Component_type) = 1;
    type metadata accessor for SensorButtonState();
    v6 = v5;
    v7 = sub_2246281A8();

    a1 = *&v6[OBJC_IVAR____TtC11DockKitCore12SensorButton_state];
    *&v6[OBJC_IVAR____TtC11DockKitCore12SensorButton_state] = v7;
  }

  return v5;
}

void *SensorButton.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC11DockKitCore12SensorButton_state) = 0;
  v3 = sub_2245B47B4();
  v4 = v3;
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC11DockKitCore9Component_type) = 1;
    type metadata accessor for SensorButtonState();
    v5 = v4;
    v6 = sub_2246281A8();

    a1 = *&v5[OBJC_IVAR____TtC11DockKitCore12SensorButton_state];
    *&v5[OBJC_IVAR____TtC11DockKitCore12SensorButton_state] = v6;
  }

  return v4;
}

id sub_2245BB248(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2245BB290(void *a1)
{
  v3 = sub_224627CB8();
  v4 = [a1 decodeIntegerForKey_];

  v5 = v4 == 1;
  if (v4 == 2)
  {
    v5 = 2;
  }

  *&v1[OBJC_IVAR____TtC11DockKitCore17SensorButtonState_state] = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SensorData();
  return objc_msgSendSuper2(&v7, sel_init);
}

unint64_t sub_2245BB354()
{
  result = qword_27D0C9F28;
  if (!qword_27D0C9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9F28);
  }

  return result;
}

uint64_t sub_2245BB488(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11DockKitCore6System_components);
  if (*(v3 + 16))
  {

    v6 = sub_2245096C8(a1, a2);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      type metadata accessor for Actuator();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_2245BB528()
{
  v1[2] = v0;
  v2 = sub_224627B78();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9D40);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_224627118();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245BB6C4, 0, 0);
}

uint64_t sub_2245BB6C4()
{
  v50 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v2 + 16);
  v4(v1, *(v0 + 16) + OBJC_IVAR____TtC11DockKitCore19ActuationController_lastFeedbackTime, v3);
  sub_2246270B8();
  v6 = v5;
  v7 = *(v2 + 8);
  v7(v1, v3);
  if (fabs(v6) <= 2.0)
  {
    v12 = 0;
  }

  else
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    v4(v8, *(v0 + 16) + OBJC_IVAR____TtC11DockKitCore19ActuationController_lastFeedbackRequest, v9);
    sub_2246270B8();
    v11 = v10;
    v7(v8, v9);
    v12 = fabs(v11) > 2.0;
  }

  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v15 = *(v0 + 64);
  v16 = *(v0 + 16);
  v17 = OBJC_IVAR____TtC11DockKitCore19ActuationController__feedbackStarted;
  *(v0 + 112) = OBJC_IVAR____TtC11DockKitCore19ActuationController__feedbackStarted;
  v18 = *(v14 + 16);
  v18(v13, v16 + v17, v15);
  sub_224627578();
  v19 = *(v14 + 8);
  v19(v13, v15);
  if (*(v0 + 160) == 1 && !v12)
  {

    v20 = *(v0 + 8);

    return v20();
  }

  v22 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v0 + 32);
  v48 = *(v0 + 16);
  v18(v22, v16 + v17, v23);
  sub_224627578();
  v19(v22, v23);
  v25 = *(v0 + 161);
  v26 = OBJC_IVAR____TtC11DockKitCore19ActuationController_logger;
  v27 = *(v24 + 16);
  *(v0 + 120) = v27;
  v28 = *(v0 + 24);
  if (v25)
  {
    v29 = (v0 + 48);
    v27(*(v0 + 48), v48 + v26, v28);
    v30 = sub_224627B58();
    v31 = sub_224628058();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Requesting actuator feedback again";
LABEL_14:
      _os_log_impl(&dword_224507000, v30, v31, v33, v32, 2u);
      v34 = *v29;
      MEMORY[0x22AA526D0](v32, -1, -1);
      goto LABEL_16;
    }
  }

  else
  {
    v29 = (v0 + 56);
    v27(*(v0 + 56), v48 + v26, v28);
    v30 = sub_224627B58();
    v31 = sub_224628058();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Requesting actuator feedback first time";
      goto LABEL_14;
    }
  }

  v34 = *v29;
LABEL_16:
  v35 = *(v0 + 24);
  v36 = *(v0 + 32);
  v37 = *(v0 + 16);

  v38 = *(v36 + 8);
  *(v0 + 128) = v38;
  v38(v34, v35);
  v39 = *(v37 + OBJC_IVAR____TtC11DockKitCore6System_components);
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = sub_22452B914(*(v39 + 16), 0);
    v42 = sub_22452C1A4(&v49, (v41 + 32), v40, v39);

    result = sub_22452C308();
    if (v42 != v40)
    {
      __break(1u);
      return result;
    }

    if (v41 < 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }
  }

  if ((v41 & 0x4000000000000000) == 0)
  {

    sub_224628698();
    type metadata accessor for Actuator();
    if (swift_dynamicCastMetatype() || (v45 = *(v41 + 16)) == 0)
    {
LABEL_23:
    }

    else
    {
      v46 = 32;
      while (swift_dynamicCastClass())
      {
        v46 += 8;
        if (!--v45)
        {
          goto LABEL_23;
        }
      }

      v41 |= 1uLL;
    }

    goto LABEL_24;
  }

LABEL_33:
  type metadata accessor for Actuator();

  v47 = sub_224628468();

  v41 = v47;
LABEL_24:
  *(v0 + 136) = v41;
  v43 = swift_task_alloc();
  *(v0 + 144) = v43;
  *v43 = v0;
  v43[1] = sub_2245BBBEC;
  v44 = *(v0 + 16);

  return ActuationController.getActuatorFeedback(actuators:delegate:occurrence:)(v41, v44, 1);
}

uint64_t sub_2245BBBEC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2245BBDF4;
  }

  else
  {

    v2 = sub_2245BBD08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245BBD08()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 16);
  *(v0 + 163) = 1;
  sub_224627588();
  sub_224627108();
  (*(v3 + 40))(v4 + OBJC_IVAR____TtC11DockKitCore19ActuationController_lastFeedbackRequest, v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2245BBDF4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v2(v3, v5 + OBJC_IVAR____TtC11DockKitCore19ActuationController_logger, v4);
  v6 = v1;
  v7 = sub_224627B58();
  v8 = sub_224628048();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_224507000, v7, v8, "Failed getting actuator feedback: %@", v10, 0xCu);
    sub_2245098A0(v11, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v11, -1, -1);
    MEMORY[0x22AA526D0](v10, -1, -1);
  }

  v14 = *(v0 + 152);
  v15 = *(v0 + 128);
  v16 = *(v0 + 40);
  v17 = *(v0 + 24);

  v15(v16, v17);
  *(v0 + 162) = 0;
  sub_224627588();

  v18 = *(v0 + 104);
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  v21 = *(v0 + 16);
  *(v0 + 163) = 1;
  sub_224627588();
  sub_224627108();
  (*(v20 + 40))(v21 + OBJC_IVAR____TtC11DockKitCore19ActuationController_lastFeedbackRequest, v18, v19);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t ActuationController.sendTrajectoryCommand(trajectoryCommand:progressCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = v3;
  *(v4 + 168) = a2;
  v6 = sub_224628438();
  *(v4 + 192) = v6;
  *(v4 + 200) = *(v6 - 8);
  *(v4 + 208) = swift_task_alloc();
  v7 = sub_224628428();
  *(v4 + 216) = v7;
  *(v4 + 224) = *(v7 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v8 = sub_224627B78();
  *(v4 + 248) = v8;
  *(v4 + 256) = *(v8 - 8);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9F30);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v9 = sub_224627118();
  *(v4 + 296) = v9;
  *(v4 + 304) = *(v9 - 8);
  *(v4 + 312) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v4 + 164) = *a1;
  v11 = *(a1 + 8);
  *(v4 + 320) = v10;
  *(v4 + 328) = v11;

  return MEMORY[0x2822009F8](sub_2245BC298, 0, 0);
}

uint64_t sub_2245BC298()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[42] = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[43] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_2245BC360;

  return v5();
}

uint64_t sub_2245BC360()
{

  return MEMORY[0x2822009F8](sub_2245BC478, 0, 0);
}

uint64_t sub_2245BC478()
{
  v0[45] = OBJC_IVAR____TtC11DockKitCore16SystemController_accessory;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v2 = (v0[23] + OBJC_IVAR____TtC11DockKitCore6System_name);
    v0[47] = *v2;
    v0[48] = v2[1];
    v3 = sub_2245BC604;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    sub_22452ECAC();
    v6 = swift_allocError();
    *v7 = 0xD000000000000019;
    *(v7 + 8) = 0x8000000224639AB0;
    *(v7 + 16) = 7;
    swift_willThrow();
    v0[65] = v6;
    v0[66] = *(v0[23] + v0[42]);
    sub_2246274B8();
    sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

    v8 = sub_224627F28();
    v10 = v9;
    v3 = sub_2245BDB24;
    v4 = v8;
    v5 = v10;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2245BC604()
{
  v1 = v0 + 16;
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 328);
  v6 = *(v0 + 184);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2245BC6D4;
  v7 = *(v0 + 164);
  v8 = swift_continuation_init();
  sub_22457CA1C(v3, v2, v6, v7, v5, v4, v8);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2245BC6D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245BCF6C;
  }

  else
  {
    v2 = sub_2245BC7F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245BC7F0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 184);

  *(v0 + 400) = *(v2 + v1);
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245BC8D0, v4, v3);
}

uint64_t sub_2245BC8D0()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245BC940, 0, 0);
}

uint64_t sub_2245BC940()
{
  v61 = v0;
  v1 = *(v0 + 320);
  v2 = *(*(v0 + 184) + OBJC_IVAR____TtC11DockKitCore19ActuationController_lastTrajectoryProgress);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_lock;
  *(v0 + 408) = v2;
  *(v0 + 416) = v5;
  v6 = *(v2 + v5);

  os_unfair_lock_lock(v6 + 4);

  *(v2 + 18) = 0;
  *(v2 + 16) = 1536;
  sub_224627108();
  v7 = OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_stamp;
  *(v0 + 424) = OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_stamp;
  v8 = *(v4 + 40);
  *(v0 + 432) = v8;
  *(v0 + 440) = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
  v8(v2 + v7, v1, v3);
  v9 = *(v2 + v5);

  os_unfair_lock_unlock(v9 + 4);

  sub_224627108();
  sub_2246270B8();
  if (fabs(v10) >= 5.0)
  {
    v26 = *(v0 + 304);
    v25 = *(v0 + 312);
    v27 = *(v0 + 296);
    v28 = *(v0 + 168);
    v59 = *(v0 + 164);
    v60 = 4;
    v28(&v59);
    (*(v26 + 8))(v25, v27);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = *(v0 + 416);
    v58 = *(v0 + 424);
    v14 = *(v0 + 408);
    v15 = *(v0 + 280);
    v16 = *(v0 + 288);
    v17 = *(v0 + 272);
    v18 = *(v17 + 48);
    v19 = *(v14 + v13);

    os_unfair_lock_lock(v19 + 4);

    v20 = *(v14 + 16);
    *(v16 + 2) = *(v14 + 18);
    *v16 = v20;
    (*(v12 + 16))(v16 + v18, v14 + v58, v11);
    v21 = *(v14 + v13);

    os_unfair_lock_unlock(v21 + 4);

    sub_2245C84E8(v16, v15);
    v22 = *v15 | (v15[2] << 16);
    v23 = *(v17 + 48);
    if ((*v15 & 0xFF00) == 0x600)
    {
      v24 = *(*(v0 + 304) + 8);
      v24(&v15[v23], *(v0 + 296));
      goto LABEL_14;
    }

    v56 = *(v0 + 432);
    v55 = *(v0 + 424);
    v54 = *(v0 + 416);
    v31 = *(v0 + 408);
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    v34 = *(v0 + 296);
    v35 = *(v0 + 304);
    v57 = *(v0 + 168);
    v24 = *(v35 + 8);
    *(v0 + 448) = v24;
    *(v0 + 456) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(&v15[v23], v34);
    sub_224627108();
    v24(v33, v34);
    (*(v35 + 32))(v33, v32, v34);
    v36 = *(v31 + v54);

    os_unfair_lock_lock(v36 + 4);

    *(v31 + 18) = 0;
    *(v31 + 16) = 1536;
    sub_224627108();
    v56(v31 + v55, v32, v34);
    v37 = *(v31 + v54);

    os_unfair_lock_unlock(v37 + 4);

    *(v0 + 161) = v22;
    *(v0 + 163) = BYTE2(v22);
    v57(v0 + 161);
    if ((BYTE1(v22) - 3) >= 3u)
    {
LABEL_14:
      *(v0 + 480) = v24;
      v49 = *(v0 + 232);
      v50 = *(v0 + 216);
      v51 = *(v0 + 224);
      sub_224628408();
      sub_224628418();
      v52 = *(v51 + 8);
      *(v0 + 488) = v52;
      *(v0 + 496) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52(v49, v50);
      *(v0 + 152) = 0;
      *(v0 + 144) = 0;
      *(v0 + 160) = 1;
      sub_2246286E8();
      v53 = swift_task_alloc();
      *(v0 + 504) = v53;
      v48 = sub_2245C8558(&unk_27D0C9F40, MEMORY[0x277D85928]);
      *v53 = v0;
      v53[1] = sub_2245BD414;
      Strong = *(v0 + 240);
      v46 = *(v0 + 208);
      v47 = *(v0 + 192);
      v45 = v0 + 144;

      return MEMORY[0x282200488](Strong, v45, v46, v47, v48);
    }

    (*(*(v0 + 256) + 16))(*(v0 + 264), *(v0 + 184) + OBJC_IVAR____TtC11DockKitCore19ActuationController_logger, *(v0 + 248));
    v38 = sub_224627B58();
    v39 = sub_224628058();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 16777472;
      v40[4] = BYTE1(v22);
      _os_log_impl(&dword_224507000, v38, v39, "Completed the trajectory execution status=%hhu stopping listening trajectory progress feedback", v40, 5u);
      MEMORY[0x22AA526D0](v40, -1, -1);
    }

    v42 = *(v0 + 256);
    v41 = *(v0 + 264);
    v43 = *(v0 + 248);

    (*(v42 + 8))(v41, v43);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 464) = Strong;
    if (!Strong)
    {
      __break(1u);
      return MEMORY[0x282200488](Strong, v45, v46, v47, v48);
    }

    return MEMORY[0x2822009F8](sub_2245BD054, 0, 0);
  }
}

uint64_t sub_2245BCF6C()
{
  *(v0 + 520) = *(v0 + 392);
  *(v0 + 528) = *(*(v0 + 184) + *(v0 + 336));
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245BDB24, v2, v1);
}

uint64_t sub_2245BD054()
{
  v1 = v0[58];
  v2 = v0[23];
  v0[10] = v0;
  v0[11] = sub_2245BD100;
  v3 = swift_continuation_init();
  sub_2245796CC(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2245BD100()
{
  v1 = *(*v0 + 112);
  *(*v0 + 472) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245BD318;
  }

  else
  {
    v2 = sub_2245BD21C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245BD21C()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);

  sub_2245098A0(v4, &qword_27D0C9F30);
  v1(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2245BD318()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);

  sub_2245098A0(v4, &qword_27D0C9F30);
  v1(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2245BD414()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = v2[61];
  if (v0)
  {
    v4 = v2[30];
    v5 = v2[27];
    (*(v2[25] + 8))(v2[26], v2[24]);
    v3(v4, v5);
    v6 = sub_2245BDC68;
  }

  else
  {
    v7 = v2[30];
    v8 = v2[27];
    (*(v2[25] + 8))(v2[26], v2[24]);
    v3(v7, v8);
    v6 = sub_2245BD590;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2245BD590()
{
  v52 = v0;
  sub_2245098A0(*(v0 + 288), &qword_27D0C9F30);
  sub_2246270B8();
  if (fabs(v1) >= 5.0)
  {
    v17 = *(v0 + 304);
    v16 = *(v0 + 312);
    v18 = *(v0 + 296);
    v19 = *(v0 + 168);
    v50 = *(v0 + 164);
    v51 = 4;
    v19(&v50);
    (*(v17 + 8))(v16, v18);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v2 = *(v0 + 416);
    v49 = *(v0 + 424);
    v3 = *(v0 + 408);
    v4 = *(v0 + 296);
    v5 = *(v0 + 304);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    v8 = *(v0 + 272);
    v9 = *(v8 + 48);
    v10 = *(v3 + v2);

    os_unfair_lock_lock(v10 + 4);

    v11 = *(v3 + 16);
    *(v7 + 2) = *(v3 + 18);
    *v7 = v11;
    (*(v5 + 16))(v7 + v9, v3 + v49, v4);
    v12 = *(v3 + v2);

    os_unfair_lock_unlock(v12 + 4);

    sub_2245C84E8(v7, v6);
    v13 = *v6 | (v6[2] << 16);
    v14 = *(v8 + 48);
    if ((*v6 & 0xFF00) == 0x600)
    {
      v15 = *(*(v0 + 304) + 8);
      v15(&v6[v14], *(v0 + 296));
      goto LABEL_14;
    }

    v47 = *(v0 + 432);
    v46 = *(v0 + 424);
    v45 = *(v0 + 416);
    v22 = *(v0 + 408);
    v24 = *(v0 + 312);
    v23 = *(v0 + 320);
    v25 = *(v0 + 296);
    v26 = *(v0 + 304);
    v48 = *(v0 + 168);
    v15 = *(v26 + 8);
    *(v0 + 448) = v15;
    *(v0 + 456) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(&v6[v14], v25);
    sub_224627108();
    v15(v24, v25);
    (*(v26 + 32))(v24, v23, v25);
    v27 = *(v22 + v45);

    os_unfair_lock_lock(v27 + 4);

    *(v22 + 18) = 0;
    *(v22 + 16) = 1536;
    sub_224627108();
    v47(v22 + v46, v23, v25);
    v28 = *(v22 + v45);

    os_unfair_lock_unlock(v28 + 4);

    *(v0 + 161) = v13;
    *(v0 + 163) = BYTE2(v13);
    v48(v0 + 161);
    if ((BYTE1(v13) - 3) >= 3u)
    {
LABEL_14:
      *(v0 + 480) = v15;
      v40 = *(v0 + 232);
      v41 = *(v0 + 216);
      v42 = *(v0 + 224);
      sub_224628408();
      sub_224628418();
      v43 = *(v42 + 8);
      *(v0 + 488) = v43;
      *(v0 + 496) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v43(v40, v41);
      *(v0 + 152) = 0;
      *(v0 + 144) = 0;
      *(v0 + 160) = 1;
      sub_2246286E8();
      v44 = swift_task_alloc();
      *(v0 + 504) = v44;
      v39 = sub_2245C8558(&unk_27D0C9F40, MEMORY[0x277D85928]);
      *v44 = v0;
      v44[1] = sub_2245BD414;
      Strong = *(v0 + 240);
      v37 = *(v0 + 208);
      v38 = *(v0 + 192);
      v36 = v0 + 144;

      return MEMORY[0x282200488](Strong, v36, v37, v38, v39);
    }

    (*(*(v0 + 256) + 16))(*(v0 + 264), *(v0 + 184) + OBJC_IVAR____TtC11DockKitCore19ActuationController_logger, *(v0 + 248));
    v29 = sub_224627B58();
    v30 = sub_224628058();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 16777472;
      v31[4] = BYTE1(v13);
      _os_log_impl(&dword_224507000, v29, v30, "Completed the trajectory execution status=%hhu stopping listening trajectory progress feedback", v31, 5u);
      MEMORY[0x22AA526D0](v31, -1, -1);
    }

    v33 = *(v0 + 256);
    v32 = *(v0 + 264);
    v34 = *(v0 + 248);

    (*(v33 + 8))(v32, v34);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 464) = Strong;
    if (!Strong)
    {
      __break(1u);
      return MEMORY[0x282200488](Strong, v36, v37, v38, v39);
    }

    return MEMORY[0x2822009F8](sub_2245BD054, 0, 0);
  }
}

uint64_t sub_2245BDB24()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245BDB94, 0, 0);
}

uint64_t sub_2245BDB94()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245BDC68()
{
  v1 = v0[60];
  v2 = v0[39];
  v3 = v0[37];
  sub_2245098A0(v0[36], &qword_27D0C9F30);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

char *ActuationController.getOrientation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v57 - v3;
  v5 = sub_224627118();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for Orientation()) init];
  (*(v6 + 16))(v11, &v1[OBJC_IVAR____TtC11DockKitCore19ActuationController_lastFeedbackTime], v5);
  sub_224627088();
  v13 = sub_2246270C8();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  if (v13)
  {
    v15 = sub_224627F78();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;
    v17 = v1;
    sub_224536440(0, 0, v4, &unk_224632500, v16);

    return 0;
  }

  v18 = OBJC_IVAR____TtC11DockKitCore6System_components;
  v19 = *&v1[OBJC_IVAR____TtC11DockKitCore6System_components];
  if (!*(v19 + 16))
  {
    goto LABEL_8;
  }

  v20 = sub_2245096C8(7823737, 0xE300000000000000);
  if ((v21 & 1) == 0)
  {

LABEL_8:
    v23 = 0;
    goto LABEL_9;
  }

  v22 = *(*(v19 + 56) + 8 * v20);

  type metadata accessor for Actuator();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
  }

LABEL_9:
  v24 = *&v1[v18];
  if (!*(v24 + 16))
  {
LABEL_14:
    v28 = 0;
    goto LABEL_15;
  }

  v25 = sub_2245096C8(0x6863746970, 0xE500000000000000);
  if ((v26 & 1) == 0)
  {

    goto LABEL_14;
  }

  v27 = *(*(v24 + 56) + 8 * v25);

  type metadata accessor for Actuator();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
  }

LABEL_15:
  v29 = *&v1[v18];
  if (*(v29 + 16))
  {

    v30 = sub_2245096C8(1819045746, 0xE400000000000000);
    if (v31)
    {
      v32 = *(*(v29 + 56) + 8 * v30);

      type metadata accessor for Actuator();
      v33 = swift_dynamicCastClass();
      if (!v33)
      {
      }

      goto LABEL_21;
    }
  }

  v33 = 0;
LABEL_21:
  if (v23)
  {
    v34 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
    v35 = *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock];
    v36 = v23;

    os_unfair_lock_lock(v35 + 4);

    v37 = *&v36[OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition];
    v38 = *&v23[v34];

    os_unfair_lock_unlock(v38 + 4);
  }

  else
  {
    v37 = 0;
    if (!(v33 | v28))
    {

      return 0;
    }
  }

  v39 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  v40 = *&v12[OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock];

  os_unfair_lock_lock(v40 + 4);

  *&v12[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = v37;
  v41 = *&v12[v39];

  os_unfair_lock_unlock(v41 + 4);

  v42 = 0;
  v43 = 0;
  if (v28)
  {
    v44 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
    v45 = *(v28 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
    v46 = v28;

    os_unfair_lock_lock(v45 + 4);

    v43 = *&v46[OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition];
    v47 = *(v28 + v44);

    os_unfair_lock_unlock(v47 + 4);
  }

  v48 = *&v12[v39];

  os_unfair_lock_lock(v48 + 4);

  *&v12[OBJC_IVAR____TtC11DockKitCore11Orientation__pitch] = v43;
  v49 = *&v12[v39];

  os_unfair_lock_unlock(v49 + 4);

  if (v33)
  {
    v50 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
    v51 = *(v33 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
    v52 = v33;

    os_unfair_lock_lock(v51 + 4);

    v42 = *&v52[OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition];
    v53 = *(v33 + v50);

    os_unfair_lock_unlock(v53 + 4);
  }

  v54 = *&v12[v39];

  os_unfair_lock_lock(v54 + 4);

  *&v12[OBJC_IVAR____TtC11DockKitCore11Orientation__roll] = v42;
  v55 = *&v12[v39];

  os_unfair_lock_unlock(v55 + 4);

  return v12;
}

uint64_t ActuationController.setOrientation(orientation:relative:duration:priority:progressCallback:)(uint64_t a1, char a2, _BYTE *a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = v6;
  *(v7 + 48) = a4;
  *(v7 + 40) = a6;
  *(v7 + 152) = a2;
  *(v7 + 32) = a1;
  v9 = sub_224627B78();
  *(v7 + 72) = v9;
  *(v7 + 80) = *(v9 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 153) = *a3;

  return MEMORY[0x2822009F8](sub_2245BE430, 0, 0);
}

uint64_t sub_2245BE430()
{
  v272 = v0;
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = OBJC_IVAR____TtC11DockKitCore11Orientation__yaw;
  v5 = *(v1 + OBJC_IVAR____TtC11DockKitCore11Orientation__yaw);
  v6 = *(v1 + v2);

  os_unfair_lock_unlock(v6 + 4);

  v7 = &unk_27D0D6000;
  if ((~v5 & 0x7FF0000000000000) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(*(v0 + 64) + OBJC_IVAR____TtC11DockKitCore6System_components);
  if (!*(v8 + 16))
  {
    goto LABEL_13;
  }

  v9 = sub_2245096C8(7823737, 0xE300000000000000);
  if ((v10 & 1) == 0)
  {

LABEL_13:
    v53 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  type metadata accessor for Actuator();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_13;
  }

  v13 = v12;
  v267 = v11;
  v14 = *(v1 + v2);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(v1 + v4);
  v16 = *(v1 + v2);

  os_unfair_lock_unlock(v16 + 4);

  v17 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
  v18 = *(v13 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

  os_unfair_lock_lock(v18 + 4);

  v19 = OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition;
  v20 = *(v13 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
  v21 = *(v13 + v17);

  os_unfair_lock_unlock(v21 + 4);

  v22 = *(v13 + v17);

  os_unfair_lock_lock(v22 + 4);

  v265 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition;
  v23 = *(v13 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
  v24 = *(v13 + v17);

  os_unfair_lock_unlock(v24 + 4);

  if ((v20 >= v23 || (v25 = *(v13 + v17), , os_unfair_lock_lock(v25 + 4), , v26 = *(v13 + v19), v27 = *(v13 + v17), , os_unfair_lock_unlock(v27 + 4), , v15 >= v26)) && ((v28 = *(v13 + v17), , os_unfair_lock_lock(v28 + 4), , v29 = *(v13 + v19), v30 = *(v13 + v17), , os_unfair_lock_unlock(v30 + 4), , v31 = *(v13 + v17), , os_unfair_lock_lock(v31 + 4), , v32 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition, v33 = *(v13 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition), v34 = *(v13 + v17), , os_unfair_lock_unlock(v34 + 4), , v33 >= v29) || (v35 = *(v13 + v17), , os_unfair_lock_lock(v35 + 4), , v36 = *(v13 + v19), v37 = *(v13 + v17), , os_unfair_lock_unlock(v37 + 4), , v36 >= v15)))
  {
    v263 = v4;
    v259 = *(v0 + 152);
    v105 = *(v13 + v17);

    os_unfair_lock_lock(v105 + 4);

    v106 = *(v13 + v265);
    v107 = *(v13 + v17);

    os_unfair_lock_unlock(v107 + 4);

    v108 = *(v13 + v17);

    os_unfair_lock_lock(v108 + 4);

    v109 = *(v13 + v32);
    v110 = *(v13 + v17);

    os_unfair_lock_unlock(v110 + 4);

    if (v106 > v15)
    {
      v111 = v106;
    }

    else
    {
      v111 = v15;
    }

    if (v109 >= v111)
    {
      v112 = v111;
    }

    else
    {
      v112 = v109;
    }

    v113 = *(v13 + OBJC_IVAR____TtC11DockKitCore9Component_id);
    v114 = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_22452AE14((v115 > 1), v116 + 1, 1, v114);
    }

    *(v114 + 2) = v116 + 1;
    v117 = &v114[24 * v116];
    *(v117 + 4) = 0x3FF0000000000000;
    *(v117 + 5) = v112;
    *(v117 + 6) = 0;
    v118 = sub_22452B5E0(0, 1, 1, MEMORY[0x277D84F90]);
    v120 = *(v118 + 2);
    v119 = *(v118 + 3);
    v121 = v118;
    if (v120 >= v119 >> 1)
    {
      v121 = sub_22452B5E0((v119 > 1), v120 + 1, 1, v118);
    }

    v122 = *(v0 + 40);

    *(v121 + 2) = v120 + 1;
    v123 = &v121[32 * v120];
    *(v123 + 4) = v114;
    *(v123 + 5) = v122;
    *(v123 + 6) = v113;
    v53 = v121;
    v123[56] = v259;
    *(v123 + 57) = 257;
    v4 = v263;
  }

  else
  {
    v253 = v19;
    (*(*(v0 + 80) + 16))(*(v0 + 112), *(v0 + 64) + OBJC_IVAR____TtC11DockKitCore19ActuationController_logger, *(v0 + 72));
    v38 = v267;
    v39 = sub_224627B58();
    v40 = sub_224628058();

    v248 = v40;
    v41 = os_log_type_enabled(v39, v40);
    v268 = *(v0 + 112);
    v42 = *(v0 + 80);
    v256 = *(v0 + 72);
    if (v41)
    {
      v245 = v38;
      v43 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v271 = v241;
      *v43 = 136316162;
      *(v43 + 4) = sub_224509F28(0xD000000000000048, 0x8000000224639AD0, &v271);
      *(v43 + 12) = 2048;
      v261 = v4;
      v44 = *(v13 + v17);

      os_unfair_lock_lock(v44 + 4);

      v45 = *(v13 + v253);
      v46 = *(v13 + v17);

      os_unfair_lock_unlock(v46 + 4);

      *(v43 + 14) = v45;
      *(v43 + 22) = 2048;
      *(v43 + 24) = v15;
      *(v43 + 32) = 2048;
      v47 = *(v13 + v17);

      os_unfair_lock_lock(v47 + 4);

      v48 = *(v13 + v265);
      v49 = *(v13 + v17);

      os_unfair_lock_unlock(v49 + 4);

      *(v43 + 34) = v48;
      *(v43 + 42) = 2048;
      v50 = *(v13 + v17);

      os_unfair_lock_lock(v50 + 4);
      v4 = v261;

      v51 = *(v13 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition);
      v52 = *(v13 + v17);

      os_unfair_lock_unlock(v52 + 4);

      *(v43 + 44) = v51;
      _os_log_impl(&dword_224507000, v39, v248, "%s Current yaw %f and current yaw command %f is out of bounds %f,%f", v43, 0x34u);
      __swift_destroy_boxed_opaque_existential_1Tm(v241);
      MEMORY[0x22AA526D0](v241, -1, -1);
      MEMORY[0x22AA526D0](v43, -1, -1);
    }

    else
    {
    }

    (*(v42 + 8))(v268, v256);
    v53 = MEMORY[0x277D84F90];
  }

  v7 = &unk_27D0D6000;
LABEL_14:
  v54 = *(v0 + 32);
  v55 = *(v1 + v2);

  os_unfair_lock_lock(v55 + 4);

  v266 = OBJC_IVAR____TtC11DockKitCore11Orientation__pitch;
  v269 = v54;
  v56 = *(v54 + OBJC_IVAR____TtC11DockKitCore11Orientation__pitch);
  v57 = *(v1 + v2);

  os_unfair_lock_unlock(v57 + 4);

  if ((~v56 & 0x7FF0000000000000) != 0)
  {
    v58 = *(*(v0 + 64) + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v58 + 16))
    {

      v59 = sub_2245096C8(0x6863746970, 0xE500000000000000);
      if (v60)
      {
        v61 = *(*(v58 + 56) + 8 * v59);

        type metadata accessor for Actuator();
        v62 = swift_dynamicCastClass();
        if (v62)
        {
          v63 = v62;
          v254 = v53;
          v257 = v61;
          v262 = v4;
          v64 = *(v1 + v2);

          os_unfair_lock_lock(v64 + 4);

          v65 = *(v269 + v266);
          v66 = *(v1 + v2);

          os_unfair_lock_unlock(v66 + 4);

          v67 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
          v68 = *(v63 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

          os_unfair_lock_lock(v68 + 4);

          v69 = OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition;
          v70 = *(v63 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
          v71 = *(v63 + v67);

          os_unfair_lock_unlock(v71 + 4);

          v72 = *(v63 + v67);

          os_unfair_lock_lock(v72 + 4);

          v73 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition;
          v74 = *(v63 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
          v75 = *(v63 + v67);

          os_unfair_lock_unlock(v75 + 4);

          if ((v70 >= v74 || (v76 = *(v63 + v67), , os_unfair_lock_lock(v76 + 4), , v77 = *(v63 + v69), v78 = *(v63 + v67), , os_unfair_lock_unlock(v78 + 4), , v65 >= v77)) && ((v79 = *(v63 + v67), , os_unfair_lock_lock(v79 + 4), , v80 = *(v63 + v69), v81 = *(v63 + v67), , os_unfair_lock_unlock(v81 + 4), , v82 = *(v63 + v67), , os_unfair_lock_lock(v82 + 4), , v83 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition, v84 = *(v63 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition), v85 = *(v63 + v67), , os_unfair_lock_unlock(v85 + 4), , v84 >= v80) || (v86 = *(v63 + v67), , os_unfair_lock_lock(v86 + 4), , v87 = *(v63 + v69), v88 = *(v63 + v67), , os_unfair_lock_unlock(v88 + 4), , v87 >= v65)))
          {
            v250 = *(v0 + 152);
            v124 = *(v63 + v67);

            os_unfair_lock_lock(v124 + 4);

            v125 = *(v63 + v73);
            v126 = *(v63 + v67);

            os_unfair_lock_unlock(v126 + 4);

            v127 = *(v63 + v67);

            os_unfair_lock_lock(v127 + 4);

            v128 = *(v63 + v83);
            v129 = *(v63 + v67);

            os_unfair_lock_unlock(v129 + 4);

            if (v125 > v65)
            {
              v130 = v125;
            }

            else
            {
              v130 = v65;
            }

            if (v128 < v130)
            {
              v130 = v128;
            }

            v131 = *(v63 + OBJC_IVAR____TtC11DockKitCore9Component_id);
            v132 = -v130;
            v133 = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
            v135 = *(v133 + 2);
            v134 = *(v133 + 3);
            if (v135 >= v134 >> 1)
            {
              v133 = sub_22452AE14((v134 > 1), v135 + 1, 1, v133);
            }

            v4 = v262;
            *(v133 + 2) = v135 + 1;
            v136 = &v133[24 * v135];
            *(v136 + 4) = 0x3FF0000000000000;
            *(v136 + 5) = v132;
            *(v136 + 6) = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v254 = sub_22452B5E0(0, *(v254 + 2) + 1, 1, v254);
            }

            v138 = *(v254 + 2);
            v137 = *(v254 + 3);
            if (v138 >= v137 >> 1)
            {
              v254 = sub_22452B5E0((v137 > 1), v138 + 1, 1, v254);
            }

            v139 = *(v0 + 40);

            *(v254 + 2) = v138 + 1;
            v140 = &v254[32 * v138];
            *(v140 + 4) = v133;
            *(v140 + 5) = v139;
            *(v140 + 6) = v131;
            v53 = v254;
            v140[56] = v250;
            *(v140 + 57) = 257;
            v7 = &unk_27D0D6000;
          }

          else
          {
            v246 = v69;
            (*(*(v0 + 80) + 16))(*(v0 + 104), *(v0 + 64) + OBJC_IVAR____TtC11DockKitCore19ActuationController_logger, *(v0 + 72));
            v89 = v257;
            v90 = sub_224627B58();
            v91 = sub_224628058();
            v258 = v89;

            v242 = v91;
            v92 = os_log_type_enabled(v90, v91);
            v93 = *(v0 + 104);
            v94 = *(v0 + 80);
            v249 = *(v0 + 72);
            if (v92)
            {
              v235 = v73;
              v95 = swift_slowAlloc();
              v237 = swift_slowAlloc();
              v271 = v237;
              *v95 = 136316162;
              *(v95 + 4) = sub_224509F28(0xD000000000000048, 0x8000000224639AD0, &v271);
              *(v95 + 12) = 2048;
              v239 = v93;
              v96 = *(v63 + v67);

              os_unfair_lock_lock(v96 + 4);

              v97 = *(v63 + v246);
              v98 = *(v63 + v67);

              os_unfair_lock_unlock(v98 + 4);

              *(v95 + 14) = v97;
              *(v95 + 22) = 2048;
              *(v95 + 24) = v65;
              *(v95 + 32) = 2048;
              v99 = *(v63 + v67);

              os_unfair_lock_lock(v99 + 4);

              v100 = *(v63 + v235);
              v101 = *(v63 + v67);

              os_unfair_lock_unlock(v101 + 4);

              *(v95 + 34) = v100;
              *(v95 + 42) = 2048;
              v102 = *(v63 + v67);

              os_unfair_lock_lock(v102 + 4);

              v103 = *(v63 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition);
              v104 = *(v63 + v67);

              os_unfair_lock_unlock(v104 + 4);

              *(v95 + 44) = v103;
              _os_log_impl(&dword_224507000, v90, v242, "%s Current pitch %f and current pitch command %f is out of bounds %f,%f", v95, 0x34u);
              __swift_destroy_boxed_opaque_existential_1Tm(v237);
              MEMORY[0x22AA526D0](v237, -1, -1);
              MEMORY[0x22AA526D0](v95, -1, -1);

              (*(v94 + 8))(v239, v249);
            }

            else
            {

              (*(v94 + 8))(v93, v249);
            }

            v4 = v262;
            v7 = &unk_27D0D6000;
            v53 = v254;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  v141 = *(v0 + 32);
  v142 = *(v1 + v2);

  os_unfair_lock_lock(v142 + 4);

  v264 = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
  v143 = *(v141 + OBJC_IVAR____TtC11DockKitCore11Orientation__roll);
  v144 = *(v1 + v2);

  os_unfair_lock_unlock(v144 + 4);

  v260 = v141;
  if ((~v143 & 0x7FF0000000000000) != 0)
  {
    v145 = *(*(v0 + 64) + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v145 + 16))
    {

      v146 = sub_2245096C8(1819045746, 0xE400000000000000);
      if (v147)
      {
        v148 = *(*(v145 + 56) + 8 * v146);

        type metadata accessor for Actuator();
        v149 = swift_dynamicCastClass();
        if (v149)
        {
          v150 = v149;
          v251 = v148;
          v255 = v53;
          v151 = *(v1 + v2);

          os_unfair_lock_lock(v151 + 4);

          v152 = *(v141 + v264);
          v153 = *(v1 + v2);

          os_unfair_lock_unlock(v153 + 4);

          v154 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
          v155 = *(v150 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

          os_unfair_lock_lock(v155 + 4);

          v156 = OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition;
          v157 = *(v150 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
          v158 = *(v150 + v154);

          os_unfair_lock_unlock(v158 + 4);

          v159 = *(v150 + v154);

          os_unfair_lock_lock(v159 + 4);

          v247 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition;
          v160 = *(v150 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
          v161 = *(v150 + v154);

          os_unfair_lock_unlock(v161 + 4);

          if ((v157 >= v160 || (v162 = *(v150 + v154), , os_unfair_lock_lock(v162 + 4), , v163 = *(v150 + v156), v164 = *(v150 + v154), , os_unfair_lock_unlock(v164 + 4), , v152 >= v163)) && ((v165 = *(v150 + v154), , os_unfair_lock_lock(v165 + 4), , v166 = *(v150 + v156), v167 = *(v150 + v154), , os_unfair_lock_unlock(v167 + 4), , v168 = *(v150 + v154), , os_unfair_lock_lock(v168 + 4), , v169 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition, v170 = *(v150 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition), v171 = *(v150 + v154), , os_unfair_lock_unlock(v171 + 4), , v170 >= v166) || (v172 = *(v150 + v154), , os_unfair_lock_lock(v172 + 4), , v173 = *(v150 + v156), v174 = *(v150 + v154), , os_unfair_lock_unlock(v174 + 4), , v173 >= v152)))
          {
            v244 = *(v0 + 152);
            v191 = *(v150 + v154);

            os_unfair_lock_lock(v191 + 4);

            v192 = *(v150 + v247);
            v193 = *(v150 + v154);

            os_unfair_lock_unlock(v193 + 4);

            v194 = *(v150 + v154);

            os_unfair_lock_lock(v194 + 4);

            v195 = *(v150 + v169);
            v196 = *(v150 + v154);

            os_unfair_lock_unlock(v196 + 4);

            if (v192 > v152)
            {
              v197 = v192;
            }

            else
            {
              v197 = v152;
            }

            if (v195 >= v197)
            {
              v198 = v197;
            }

            else
            {
              v198 = v195;
            }

            v199 = *(v150 + OBJC_IVAR____TtC11DockKitCore9Component_id);
            v200 = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
            v202 = *(v200 + 2);
            v201 = *(v200 + 3);
            if (v202 >= v201 >> 1)
            {
              v200 = sub_22452AE14((v201 > 1), v202 + 1, 1, v200);
            }

            v203 = v255;
            *(v200 + 2) = v202 + 1;
            v204 = &v200[24 * v202];
            *(v204 + 4) = 0x3FF0000000000000;
            *(v204 + 5) = v198;
            *(v204 + 6) = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v203 = sub_22452B5E0(0, *(v255 + 2) + 1, 1, v255);
            }

            v206 = *(v203 + 2);
            v205 = *(v203 + 3);
            if (v206 >= v205 >> 1)
            {
              v203 = sub_22452B5E0((v205 > 1), v206 + 1, 1, v203);
            }

            v207 = *(v0 + 40);

            *(v203 + 2) = v206 + 1;
            v208 = &v203[32 * v206];
            v53 = v203;
            *(v208 + 4) = v200;
            *(v208 + 5) = v207;
            *(v208 + 6) = v199;
            v208[56] = v244;
            *(v208 + 57) = 257;
            v7 = &unk_27D0D6000;
          }

          else
          {
            v240 = v156;
            v7 = &unk_27D0D6000;
            (*(*(v0 + 80) + 16))(*(v0 + 96), *(v0 + 64) + OBJC_IVAR____TtC11DockKitCore19ActuationController_logger, *(v0 + 72));
            v175 = v251;
            v176 = sub_224627B58();
            v177 = sub_224628058();

            v238 = v177;
            v178 = os_log_type_enabled(v176, v177);
            v252 = *(v0 + 96);
            v179 = *(v0 + 80);
            v243 = *(v0 + 72);
            if (v178)
            {
              v180 = swift_slowAlloc();
              v236 = swift_slowAlloc();
              v271 = v236;
              *v180 = 136316162;
              *(v180 + 4) = sub_224509F28(0xD000000000000048, 0x8000000224639AD0, &v271);
              *(v180 + 12) = 2048;
              log = v176;
              v181 = *(v150 + v154);

              os_unfair_lock_lock(v181 + 4);

              v182 = *(v150 + v240);
              v183 = *(v150 + v154);

              os_unfair_lock_unlock(v183 + 4);

              *(v180 + 14) = v182;
              *(v180 + 22) = 2048;
              *(v180 + 24) = v152;
              *(v180 + 32) = 2048;
              v184 = *(v150 + v154);

              os_unfair_lock_lock(v184 + 4);

              v185 = *(v150 + v247);
              v186 = *(v150 + v154);

              os_unfair_lock_unlock(v186 + 4);

              *(v180 + 34) = v185;
              *(v180 + 42) = 2048;
              v187 = *(v150 + v154);

              os_unfair_lock_lock(v187 + 4);

              v188 = *(v150 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition);
              v189 = *(v150 + v154);

              os_unfair_lock_unlock(v189 + 4);

              *(v180 + 44) = v188;
              _os_log_impl(&dword_224507000, log, v238, "%s Current roll %f and current roll command %f is out of bounds %f,%f", v180, 0x34u);
              __swift_destroy_boxed_opaque_existential_1Tm(v236);
              MEMORY[0x22AA526D0](v236, -1, -1);
              v190 = v180;
              v7 = &unk_27D0D6000;
              MEMORY[0x22AA526D0](v190, -1, -1);
            }

            else
            {
            }

            (*(v179 + 8))(v252, v243);
            v53 = v255;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  v209 = v53;
  *(v0 + 120) = v53;
  v210 = *(v0 + 32);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 64) + v7[75], *(v0 + 72));
  v211 = v210;
  v212 = sub_224627B58();
  v213 = sub_224628058();

  if (os_log_type_enabled(v212, v213))
  {
    v214 = *(v0 + 40);
    v215 = *(v0 + 152);
    v216 = swift_slowAlloc();
    *v216 = 134219008;
    v217 = *(v1 + v2);

    os_unfair_lock_lock(v217 + 4);

    v218 = *(v1 + v4);
    v219 = *(v1 + v2);

    os_unfair_lock_unlock(v219 + 4);

    *(v216 + 4) = v218;
    *(v216 + 12) = 2048;
    v220 = *(v1 + v2);

    os_unfair_lock_lock(v220 + 4);

    v221 = *(v269 + v266);
    v222 = *(v1 + v2);

    os_unfair_lock_unlock(v222 + 4);

    *(v216 + 14) = v221;
    *(v216 + 22) = 2048;
    v223 = *(v1 + v2);

    os_unfair_lock_lock(v223 + 4);

    v224 = *(v260 + v264);
    v225 = *(v1 + v2);

    os_unfair_lock_unlock(v225 + 4);

    *(v216 + 24) = v224;
    *(v216 + 32) = 2048;
    *(v216 + 34) = v214;
    *(v216 + 42) = 1024;
    *(v216 + 44) = v215;
    _os_log_impl(&dword_224507000, v212, v213, "setOrientation: yaw %f pitch %f roll %f duration %f relative %{BOOL}d", v216, 0x30u);
    MEMORY[0x22AA526D0](v216, -1, -1);
  }

  v226 = *(v0 + 153);
  v228 = *(v0 + 80);
  v227 = *(v0 + 88);
  v230 = *(v0 + 64);
  v229 = *(v0 + 72);
  v270 = *(v0 + 48);

  (*(v228 + 8))(v227, v229);
  *(v0 + 16) = 0;
  *(v0 + 17) = v226;
  *(v0 + 24) = v209;
  v231 = swift_task_alloc();
  *(v0 + 128) = v231;
  *(v231 + 16) = v230;
  *(v231 + 24) = v270;
  v232 = swift_task_alloc();
  *(v0 + 136) = v232;
  *v232 = v0;
  v232[1] = sub_2245BFB64;

  return ActuationController.sendTrajectoryCommand(trajectoryCommand:progressCallback:)(v0 + 16, sub_2245C8654, v231);
}

uint64_t sub_2245BFB64()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2245BFCEC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2245BFCEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ActuationController.setRotationalVelocity(yaw:pitch:roll:)(double a1, double a2, double a3)
{
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_2245BFDB8, 0, 0);
}

uint64_t sub_2245BFDB8()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v2 = (v0 + 16);
  v3 = v1;
  if (*(v0 + 24) != INFINITY)
  {
    v6 = *(*(v0 + 48) + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v6 + 16))
    {

      v7 = sub_2245096C8(7823737, 0xE300000000000000);
      if (v8)
      {
        v9 = *(*(v6 + 56) + 8 * v7);

        type metadata accessor for Actuator();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          v12 = v9;
          MEMORY[0x22AA51310]();
          if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224627EF8();
          }

          v13 = *(v0 + 24);
          sub_224627F08();
          v3 = *(v0 + 16);
          v14 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
          v15 = *(v11 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

          os_unfair_lock_lock(v15 + 4);

          v16 = OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition;
          v17 = *(v11 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
          v18 = *(v11 + v14);

          os_unfair_lock_unlock(v18 + 4);

          v19 = *(v11 + v14);

          os_unfair_lock_lock(v19 + 4);

          v20 = *(v11 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
          v21 = *(v11 + v14);

          os_unfair_lock_unlock(v21 + 4);

          if ((v17 >= v20 || v13 >= 0.0) && ((v22 = *(v0 + 24), v23 = *(v11 + v14), , os_unfair_lock_lock(v23 + 4), , v24 = *(v11 + v16), v25 = *(v11 + v14), , os_unfair_lock_unlock(v25 + 4), , v26 = *(v11 + v14), , os_unfair_lock_lock(v26 + 4), , v27 = *(v11 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition), v28 = *(v11 + v14), , os_unfair_lock_unlock(v28 + 4), , v27 >= v24) || v22 <= 0.0))
          {
            v1 = sub_22452B168(0, 1, 1, MEMORY[0x277D84F90]);
            v82 = *(v1 + 2);
            v81 = *(v1 + 3);
            if (v82 >= v81 >> 1)
            {
              v1 = sub_22452B168((v81 > 1), v82 + 1, 1, v1);
            }

            v83 = *(v0 + 24);

            *(v1 + 2) = v82 + 1;
            *&v1[8 * v82 + 32] = v83;
          }

          else
          {
            v1 = sub_22452B168(0, 1, 1, MEMORY[0x277D84F90]);
            v30 = *(v1 + 2);
            v29 = *(v1 + 3);
            if (v30 >= v29 >> 1)
            {
              v1 = sub_22452B168((v29 > 1), v30 + 1, 1, v1);
            }

            *(v1 + 2) = v30 + 1;
            *&v1[8 * v30 + 32] = 0;
          }
        }

        else
        {

          v3 = v1;
        }
      }

      else
      {

        v3 = v1;
      }
    }

    else
    {
      v3 = v1;
    }
  }

  if (*(v0 + 32) != INFINITY)
  {
    v31 = *(*(v0 + 48) + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v31 + 16))
    {

      v32 = sub_2245096C8(0x6863746970, 0xE500000000000000);
      if (v33)
      {
        v34 = *(*(v31 + 56) + 8 * v32);

        type metadata accessor for Actuator();
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = v34;
          MEMORY[0x22AA51310]();
          if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224627EF8();
          }

          v38 = *(v0 + 32);
          sub_224627F08();
          v3 = *(v0 + 16);
          v39 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
          v40 = *(v36 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

          os_unfair_lock_lock(v40 + 4);

          v41 = OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition;
          v42 = *(v36 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
          v43 = *(v36 + v39);

          os_unfair_lock_unlock(v43 + 4);

          v44 = *(v36 + v39);

          os_unfair_lock_lock(v44 + 4);

          v45 = *(v36 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
          v46 = *(v36 + v39);

          os_unfair_lock_unlock(v46 + 4);

          if ((v42 >= v45 || v38 >= 0.0) && ((v47 = *(v0 + 32), v48 = *(v36 + v39), , os_unfair_lock_lock(v48 + 4), , v49 = *(v36 + v41), v50 = *(v36 + v39), , os_unfair_lock_unlock(v50 + 4), , v51 = *(v36 + v39), , os_unfair_lock_lock(v51 + 4), , v52 = *(v36 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition), v53 = *(v36 + v39), , os_unfair_lock_unlock(v53 + 4), , v52 >= v49) || v47 <= 0.0))
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_22452B168(0, *(v1 + 2) + 1, 1, v1);
            }

            v85 = *(v1 + 2);
            v84 = *(v1 + 3);
            if (v85 >= v84 >> 1)
            {
              v1 = sub_22452B168((v84 > 1), v85 + 1, 1, v1);
            }

            v86 = *(v0 + 32);

            *(v1 + 2) = v85 + 1;
            *&v1[8 * v85 + 32] = v86;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_22452B168(0, *(v1 + 2) + 1, 1, v1);
            }

            v55 = *(v1 + 2);
            v54 = *(v1 + 3);
            if (v55 >= v54 >> 1)
            {
              v1 = sub_22452B168((v54 > 1), v55 + 1, 1, v1);
            }

            *(v1 + 2) = v55 + 1;
            *&v1[8 * v55 + 32] = 0;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  if (*(v0 + 40) != INFINITY)
  {
    v56 = *(*(v0 + 48) + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v56 + 16))
    {

      v57 = sub_2245096C8(1819045746, 0xE400000000000000);
      if (v58)
      {
        v59 = *(*(v56 + 56) + 8 * v57);

        type metadata accessor for Actuator();
        v60 = swift_dynamicCastClass();
        if (v60)
        {
          v61 = v60;
          v62 = v59;
          MEMORY[0x22AA51310]();
          if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224627EF8();
          }

          v63 = *(v0 + 40);
          sub_224627F08();
          v3 = *(v0 + 16);
          v64 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
          v65 = *(v61 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

          os_unfair_lock_lock(v65 + 4);

          v66 = OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition;
          v67 = *(v61 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
          v68 = *(v61 + v64);

          os_unfair_lock_unlock(v68 + 4);

          v69 = *(v61 + v64);

          os_unfair_lock_lock(v69 + 4);

          v70 = *(v61 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
          v71 = *(v61 + v64);

          os_unfair_lock_unlock(v71 + 4);

          if ((v67 >= v70 || v63 >= 0.0) && ((v72 = *(v0 + 40), v73 = *(v61 + v64), , os_unfair_lock_lock(v73 + 4), , v74 = *(v61 + v66), v75 = *(v61 + v64), , os_unfair_lock_unlock(v75 + 4), , v76 = *(v61 + v64), , os_unfair_lock_lock(v76 + 4), , v77 = *(v61 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition), v78 = *(v61 + v64), , os_unfair_lock_unlock(v78 + 4), , v77 >= v74) || v72 <= 0.0))
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_22452B168(0, *(v1 + 2) + 1, 1, v1);
            }

            v88 = *(v1 + 2);
            v87 = *(v1 + 3);
            if (v88 >= v87 >> 1)
            {
              v1 = sub_22452B168((v87 > 1), v88 + 1, 1, v1);
            }

            v89 = *(v0 + 40);

            *(v1 + 2) = v88 + 1;
            *&v1[8 * v88 + 32] = v89;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_22452B168(0, *(v1 + 2) + 1, 1, v1);
            }

            v80 = *(v1 + 2);
            v79 = *(v1 + 3);
            if (v80 >= v79 >> 1)
            {
              v1 = sub_22452B168((v79 > 1), v80 + 1, 1, v1);
            }

            *(v1 + 2) = v80 + 1;
            *&v1[8 * v80 + 32] = 0;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  *(v0 + 56) = v1;
  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_2245C07A8;

  return ActuationController.setActuatorVelocities(actuators:velocities:)(v3, v1);
}

uint64_t sub_2245C07A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2245CA41C;
  }

  else
  {

    v2 = sub_2245CA428;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *ActuationController.getActuatorLimits()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11DockKitCore6System_components;
  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore6System_components);
  if (!*(v3 + 16))
  {
    goto LABEL_8;
  }

  v4 = sub_2245096C8(7823737, 0xE300000000000000);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  type metadata accessor for Actuator();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
  v9 = *(v7 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
  v10 = v7;

  os_unfair_lock_lock(v9 + 4);

  v11 = *(v10 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
  v12 = *(v10 + v8);

  os_unfair_lock_unlock(v12 + 4);

  v13 = *(v10 + v8);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(v10 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition);
  v15 = *(v10 + v8);

  os_unfair_lock_unlock(v15 + 4);

  v16 = *(v10 + v8);

  os_unfair_lock_lock(v16 + 4);

  v17 = *(v10 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed);
  v18 = *(v10 + v8);

  os_unfair_lock_unlock(v18 + 4);

  if (v17 < 0.0)
  {
    v19 = 0x8000000224636D00;
    sub_22452ECAC();
    swift_allocError();
    *v20 = 0xD00000000000001CLL;
    *(v20 + 8) = 0x8000000224636D00;
    *(v20 + 16) = 22;
    swift_willThrow();
LABEL_25:

    return v19;
  }

  v19 = sub_22452B6EC(0, 1, 1, MEMORY[0x277D84F90]);
  v56 = *(v19 + 2);
  v55 = *(v19 + 3);
  if (v56 >= v55 >> 1)
  {
    v19 = sub_22452B6EC((v55 > 1), v56 + 1, 1, v19);
  }

  *(v19 + 2) = v56 + 1;
  v57 = &v19[40 * v56];
  *(v57 + 4) = 7823737;
  *(v57 + 5) = 0xE300000000000000;
  *(v57 + 6) = v11;
  *(v57 + 7) = v14;
  *(v57 + 8) = v17;
LABEL_9:
  v21 = *(v1 + v2);
  if (*(v21 + 16))
  {

    v22 = sub_2245096C8(0x6863746970, 0xE500000000000000);
    if (v23)
    {
      v6 = *(*(v21 + 56) + 8 * v22);

      type metadata accessor for Actuator();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
        v26 = *(v24 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
        v27 = v24;

        os_unfair_lock_lock(v26 + 4);

        v28 = *(v27 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
        v29 = *(v27 + v25);

        os_unfair_lock_unlock(v29 + 4);

        v30 = *(v27 + v25);

        os_unfair_lock_lock(v30 + 4);

        v31 = *(v27 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition);
        v32 = *(v27 + v25);

        os_unfair_lock_unlock(v32 + 4);

        v33 = *(v27 + v25);

        os_unfair_lock_lock(v33 + 4);

        v34 = *(v27 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed);
        v35 = *(v27 + v25);

        os_unfair_lock_unlock(v35 + 4);

        if (v34 < 0.0)
        {
LABEL_24:
          sub_22452ECAC();
          swift_allocError();
          *v54 = 0xD00000000000001CLL;
          *(v54 + 8) = 0x8000000224636D00;
          *(v54 + 16) = 22;
          swift_willThrow();

          goto LABEL_25;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_22452B6EC(0, *(v19 + 2) + 1, 1, v19);
        }

        v37 = *(v19 + 2);
        v36 = *(v19 + 3);
        if (v37 >= v36 >> 1)
        {
          v19 = sub_22452B6EC((v36 > 1), v37 + 1, 1, v19);
        }

        *(v19 + 2) = v37 + 1;
        v38 = &v19[40 * v37];
        *(v38 + 4) = 0x6863746970;
        *(v38 + 5) = 0xE500000000000000;
        *(v38 + 6) = v28;
        *(v38 + 7) = v31;
        *(v38 + 8) = v34;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v39 = *(v1 + v2);
  if (*(v39 + 16))
  {

    v40 = sub_2245096C8(1819045746, 0xE400000000000000);
    if ((v41 & 1) == 0)
    {

      return v19;
    }

    v6 = *(*(v39 + 56) + 8 * v40);

    type metadata accessor for Actuator();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      goto LABEL_25;
    }

    v43 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
    v44 = *(v42 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
    v45 = v42;

    os_unfair_lock_lock(v44 + 4);

    v46 = *(v45 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
    v47 = *(v45 + v43);

    os_unfair_lock_unlock(v47 + 4);

    v48 = *(v45 + v43);

    os_unfair_lock_lock(v48 + 4);

    v49 = *(v45 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition);
    v50 = *(v45 + v43);

    os_unfair_lock_unlock(v50 + 4);

    v51 = *(v45 + v43);

    os_unfair_lock_lock(v51 + 4);

    v52 = *(v45 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed);
    v53 = *(v45 + v43);

    os_unfair_lock_unlock(v53 + 4);

    if (v52 < 0.0)
    {
      goto LABEL_24;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_22452B6EC(0, *(v19 + 2) + 1, 1, v19);
    }

    v59 = *(v19 + 2);
    v58 = *(v19 + 3);
    if (v59 >= v58 >> 1)
    {
      v19 = sub_22452B6EC((v58 > 1), v59 + 1, 1, v19);
    }

    *(v19 + 2) = v59 + 1;
    v60 = &v19[40 * v59];
    *(v60 + 4) = 1819045746;
    *(v60 + 5) = 0xE400000000000000;
    *(v60 + 6) = v46;
    *(v60 + 7) = v49;
    *(v60 + 8) = v52;
  }

  return v19;
}

uint64_t ActuationController.setRotationalVelocity(yaw:pitch:roll:duration:progressCallback:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 72) = a2;
  *(v7 + 80) = v6;
  *(v7 + 64) = a1;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  return MEMORY[0x2822009F8](sub_2245C0F80, 0, 0);
}

uint64_t sub_2245C0F80()
{
  if (*(v0 + 32) == INFINITY)
  {
    goto LABEL_2;
  }

  v7 = *(*(v0 + 80) + OBJC_IVAR____TtC11DockKitCore6System_components);
  if (!*(v7 + 16))
  {
    goto LABEL_2;
  }

  v8 = sub_2245096C8(7823737, 0xE300000000000000);
  if ((v9 & 1) == 0)
  {

LABEL_2:
    v1 = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  type metadata accessor for Actuator();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

    goto LABEL_2;
  }

  v12 = *(v11 + OBJC_IVAR____TtC11DockKitCore9Component_id);
  v13 = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  v16 = v14 >> 1;
  v17 = v15 + 1;
  if (v14 >> 1 <= v15)
  {
    v13 = sub_22452AE14((v14 > 1), v15 + 1, 1, v13);
    v14 = *(v13 + 3);
    v16 = v14 >> 1;
  }

  v18 = *(v0 + 32);
  *(v13 + 2) = v17;
  v19 = &v13[24 * v15];
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  *(v19 + 6) = v18;
  v20 = v15 + 2;
  if (v16 < v20)
  {
    v13 = sub_22452AE14((v14 > 1), v20, 1, v13);
  }

  v21 = *(v0 + 32);
  *(v13 + 2) = v20;
  v22 = &v13[24 * v17];
  *(v22 + 2) = xmmword_2246324D0;
  *(v22 + 6) = v21;
  v1 = sub_22452B5E0(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v1 + 2);
  v23 = *(v1 + 3);
  if (v24 >= v23 >> 1)
  {
    v1 = sub_22452B5E0((v23 > 1), v24 + 1, 1, v1);
  }

  v25 = *(v0 + 56);

  *(v1 + 2) = v24 + 1;
  v26 = &v1[32 * v24];
  *(v26 + 4) = v13;
  *(v26 + 5) = v25;
  *(v26 + 6) = v12;
  v26[56] = 0;
  *(v26 + 57) = 256;
LABEL_3:
  if (*(v0 + 40) != INFINITY)
  {
    v27 = *(*(v0 + 80) + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v27 + 16))
    {

      v28 = sub_2245096C8(0x6863746970, 0xE500000000000000);
      if (v29)
      {
        v30 = *(*(v27 + 56) + 8 * v28);

        type metadata accessor for Actuator();
        v31 = swift_dynamicCastClass();
        if (v31)
        {
          v32 = *(v31 + OBJC_IVAR____TtC11DockKitCore9Component_id);
          v33 = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
          v35 = *(v33 + 2);
          v34 = *(v33 + 3);
          v36 = v34 >> 1;
          v37 = v35 + 1;
          if (v34 >> 1 <= v35)
          {
            v67 = sub_22452AE14((v34 > 1), v35 + 1, 1, v33);
            v37 = v35 + 1;
            v33 = v67;
            v34 = *(v67 + 3);
            v36 = v34 >> 1;
          }

          v38 = *(v0 + 40);
          *(v33 + 2) = v37;
          v39 = &v33[24 * v35];
          *(v39 + 4) = 0;
          *(v39 + 5) = 0;
          *(v39 + 6) = v38;
          v40 = v35 + 2;
          if (v36 < (v35 + 2))
          {
            v68 = v37;
            v69 = sub_22452AE14((v34 > 1), v40, 1, v33);
            v37 = v68;
            v33 = v69;
          }

          v41 = *(v0 + 40);
          *(v33 + 2) = v40;
          v42 = &v33[24 * v37];
          *(v42 + 2) = xmmword_2246324D0;
          *(v42 + 6) = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_22452B5E0(0, *(v1 + 2) + 1, 1, v1);
          }

          v44 = *(v1 + 2);
          v43 = *(v1 + 3);
          if (v44 >= v43 >> 1)
          {
            v1 = sub_22452B5E0((v43 > 1), v44 + 1, 1, v1);
          }

          v45 = *(v0 + 56);

          *(v1 + 2) = v44 + 1;
          v46 = &v1[32 * v44];
          *(v46 + 4) = v33;
          *(v46 + 5) = v45;
          *(v46 + 6) = v32;
          v46[56] = 0;
          *(v46 + 57) = 256;
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  if (*(v0 + 48) != INFINITY)
  {
    v47 = *(*(v0 + 80) + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v47 + 16))
    {

      v48 = sub_2245096C8(0x6863746970, 0xE500000000000000);
      if (v49)
      {
        v50 = *(*(v47 + 56) + 8 * v48);

        type metadata accessor for Actuator();
        v51 = swift_dynamicCastClass();
        if (v51)
        {
          v52 = *(v51 + OBJC_IVAR____TtC11DockKitCore9Component_id);
          v53 = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
          v55 = *(v53 + 2);
          v54 = *(v53 + 3);
          v56 = v54 >> 1;
          v57 = v55 + 1;
          if (v54 >> 1 <= v55)
          {
            v70 = sub_22452AE14((v54 > 1), v55 + 1, 1, v53);
            v57 = v55 + 1;
            v53 = v70;
            v54 = *(v70 + 3);
            v56 = v54 >> 1;
          }

          v58 = *(v0 + 48);
          *(v53 + 2) = v57;
          v59 = &v53[24 * v55];
          *(v59 + 4) = 0;
          *(v59 + 5) = 0;
          *(v59 + 6) = v58;
          v60 = v55 + 2;
          if (v56 < (v55 + 2))
          {
            v71 = v57;
            v72 = sub_22452AE14((v54 > 1), v60, 1, v53);
            v57 = v71;
            v53 = v72;
          }

          v61 = *(v0 + 48);
          *(v53 + 2) = v60;
          v62 = &v53[24 * v57];
          *(v62 + 2) = xmmword_2246324D0;
          *(v62 + 6) = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_22452B5E0(0, *(v1 + 2) + 1, 1, v1);
          }

          v64 = *(v1 + 2);
          v63 = *(v1 + 3);
          if (v64 >= v63 >> 1)
          {
            v1 = sub_22452B5E0((v63 > 1), v64 + 1, 1, v1);
          }

          v65 = *(v0 + 56);

          *(v1 + 2) = v64 + 1;
          v66 = &v1[32 * v64];
          *(v66 + 4) = v53;
          *(v66 + 5) = v65;
          *(v66 + 6) = v52;
          v66[56] = 0;
          *(v66 + 57) = 256;
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  *(v0 + 88) = v1;
  v2 = *(v0 + 80);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 64);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_2245C166C;

  return ActuationController.sendTrajectoryCommand(trajectoryCommand:progressCallback:)(v0 + 16, sub_2245CA420, v3);
}

uint64_t sub_2245C166C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2245C17B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2245C17B4()
{

  v1 = *(v0 + 8);

  return v1();
}

id ActuatorFeedback.__allocating_init(velocities:positions:timestamp:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC11DockKitCore16ActuatorFeedback_velocities] = a1;
  *&v7[OBJC_IVAR____TtC11DockKitCore16ActuatorFeedback_positions] = a2;
  *&v7[OBJC_IVAR____TtC11DockKitCore16ActuatorFeedback_timestamp] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ActuatorFeedback.init(velocities:positions:timestamp:)(uint64_t a1, uint64_t a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11DockKitCore16ActuatorFeedback_velocities] = a1;
  *&v3[OBJC_IVAR____TtC11DockKitCore16ActuatorFeedback_positions] = a2;
  *&v3[OBJC_IVAR____TtC11DockKitCore16ActuatorFeedback_timestamp] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::Void __swiftcall ActuatorFeedback.encode(with:)(NSCoder with)
{
  v2 = sub_224627EB8();
  v3 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_224627EB8();
  v5 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = sub_224627FA8();
  v7 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id ActuatorFeedback.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2245C8674();

  return v4;
}

id ActuatorFeedback.init(coder:)(void *a1)
{
  v2 = sub_2245C8674();

  return v2;
}

id ActuatorFeedback.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t ActuatorOccurrence.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t MotionModel.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t ActuationController.__allocating_init(accessory:id:motionModel:name:actuators:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_2245C894C(a1, a2, a3, a4, a5, a6);

  return v14;
}

uint64_t ActuationController.init(accessory:id:motionModel:name:actuators:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v7 = sub_2245C894C(a1, a2, a3, a4, a5, a6);

  return v7;
}

id ActuationController.__allocating_init(accessory:id:type:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9D40);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = objc_allocWithZone(v5);
  sub_224627B68();
  sub_224627088();
  sub_224627088();
  v13 = OBJC_IVAR____TtC11DockKitCore19ActuationController_feedbackLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v12[v13] = v14;
  *&v12[OBJC_IVAR____TtC11DockKitCore19ActuationController_yawOffset] = 0;
  *&v12[OBJC_IVAR____TtC11DockKitCore19ActuationController_rotateCameraAngle] = 0;
  v15 = OBJC_IVAR____TtC11DockKitCore19ActuationController_lastTrajectoryProgress;
  type metadata accessor for TrajectoryCommand.StampedProgress(0);
  v16 = swift_allocObject();
  *(v16 + 18) = 0;
  *(v16 + 16) = 1536;
  sub_224627088();
  v17 = OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_lock;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v16 + v17) = v18;
  *&v12[v15] = v16;
  v19 = OBJC_IVAR____TtC11DockKitCore19ActuationController_imu;
  type metadata accessor for StandOrientationMonitor();
  swift_allocObject();
  *&v12[v19] = sub_22460AC58();
  v20 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  sub_2246274B8();
  *&v12[v20] = sub_2246274A8();
  v21 = OBJC_IVAR____TtC11DockKitCore19ActuationController__feedbackStarted;
  v32 = 0;
  sub_224627568();
  (*(v9 + 32))(&v12[v21], v11, v8);
  *&v12[OBJC_IVAR____TtC11DockKitCore19ActuationController_motionModel] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&v12[OBJC_IVAR____TtC11DockKitCore6System_id] = a2;
  v22 = v29;
  *&v12[OBJC_IVAR____TtC11DockKitCore6System_type] = v28;
  v23 = &v12[OBJC_IVAR____TtC11DockKitCore6System_name];
  v24 = v30;
  *v23 = v22;
  *(v23 + 1) = v24;
  v25 = type metadata accessor for System();
  v31.receiver = v12;
  v31.super_class = v25;
  v26 = objc_msgSendSuper2(&v31, sel_init);
  swift_unknownObjectWeakAssign();

  return v26;
}

id ActuationController.init(accessory:id:type:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_2245C8E90(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t ActuationController.getActuatorFeedback(actuators:delegate:occurrence:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_2245C2260, 0, 0);
}

uint64_t sub_2245C2260()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[14] = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[15] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_2245C2328;

  return v5();
}

uint64_t sub_2245C2328()
{

  return MEMORY[0x2822009F8](sub_2245C2440, 0, 0);
}

uint64_t sub_2245C2440()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = sub_2245C25A0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_22452ECAC();
    v5 = swift_allocError();
    *v6 = 0xD000000000000019;
    *(v6 + 8) = 0x8000000224639AB0;
    *(v6 + 16) = 7;
    swift_willThrow();
    v0[20] = v5;
    v0[21] = *(v0[13] + v0[14]);
    sub_2246274B8();
    sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

    v7 = sub_224627F28();
    v9 = v8;
    v2 = sub_2245C29AC;
    v3 = v7;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2245C25A0()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245C2664;
  v6 = swift_continuation_init();
  sub_2245783A4(v2, v5, v4, v3, v1, v6);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245C2664()
{
  v1 = *(*v0 + 48);
  *(*v0 + 144) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245C28C8;
  }

  else
  {
    v2 = sub_2245C2780;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245C2780()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  *(v0 + 152) = *(v1 + v2);
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245C285C, v4, v3);
}

uint64_t sub_2245C285C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245C28C8()
{
  *(v0 + 160) = *(v0 + 144);
  *(v0 + 168) = *(*(v0 + 104) + *(v0 + 112));
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245C29AC, v2, v1);
}

uint64_t sub_2245C29AC()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245C2A1C, 0, 0);
}

uint64_t sub_2245C2A1C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245C2AA8()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[11] = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[12] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2245C2B70;

  return v5();
}

uint64_t sub_2245C2B70()
{

  return MEMORY[0x2822009F8](sub_2245C2C88, 0, 0);
}

uint64_t sub_2245C2C88()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = sub_2245C2DE8;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_22452ECAC();
    v5 = swift_allocError();
    *v6 = 0xD000000000000019;
    *(v6 + 8) = 0x8000000224639AB0;
    *(v6 + 16) = 7;
    swift_willThrow();
    v0[17] = v5;
    v0[18] = *(v0[10] + v0[11]);
    sub_2246274B8();
    sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

    v7 = sub_224627F28();
    v9 = v8;
    v2 = sub_2245C31DC;
    v3 = v7;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2245C2DE8()
{
  v1 = v0[14];
  v2 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245C2E94;
  v3 = swift_continuation_init();
  sub_224578F04(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245C2E94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245C30F8;
  }

  else
  {
    v2 = sub_2245C2FB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245C2FB0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  *(v0 + 128) = *(v1 + v2);
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245C308C, v4, v3);
}

uint64_t sub_2245C308C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245C30F8()
{
  *(v0 + 136) = *(v0 + 120);
  *(v0 + 144) = *(*(v0 + 80) + *(v0 + 88));
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245C31DC, v2, v1);
}

uint64_t sub_2245C31DC()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245C324C, 0, 0);
}

uint64_t sub_2245C324C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245C346C(double a1, double a2, double a3)
{
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_2245C3494, 0, 0);
}

uint64_t sub_2245C3494()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v1;
  if (*(v0 + 3) != INFINITY)
  {
    v6 = *(v0[6] + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v6 + 16))
    {

      v7 = sub_2245096C8(7823737, 0xE300000000000000);
      if (v8)
      {
        v9 = *(*(v6 + 56) + 8 * v7);

        type metadata accessor for Actuator();
        if (swift_dynamicCastClass())
        {
          v10 = v9;
          MEMORY[0x22AA51310]();
          if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224627EF8();
          }

          sub_224627F08();
          v3 = *v2;
          v1 = sub_22452B168(0, 1, 1, MEMORY[0x277D84F90]);
          v12 = *(v1 + 2);
          v11 = *(v1 + 3);
          if (v12 >= v11 >> 1)
          {
            v1 = sub_22452B168((v11 > 1), v12 + 1, 1, v1);
          }

          v13 = v0[3];

          *(v1 + 2) = v12 + 1;
          *&v1[8 * v12 + 32] = v13;
        }

        else
        {

          v3 = v1;
        }
      }

      else
      {

        v3 = v1;
      }
    }

    else
    {
      v3 = v1;
    }
  }

  if (*(v0 + 4) != INFINITY)
  {
    v14 = *(v0[6] + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v14 + 16))
    {

      v15 = sub_2245096C8(0x6863746970, 0xE500000000000000);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);

        type metadata accessor for Actuator();
        if (swift_dynamicCastClass())
        {
          v18 = v17;
          MEMORY[0x22AA51310]();
          if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224627EF8();
          }

          sub_224627F08();
          v3 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_22452B168(0, *(v1 + 2) + 1, 1, v1);
          }

          v20 = *(v1 + 2);
          v19 = *(v1 + 3);
          if (v20 >= v19 >> 1)
          {
            v1 = sub_22452B168((v19 > 1), v20 + 1, 1, v1);
          }

          v21 = v0[4];

          *(v1 + 2) = v20 + 1;
          *&v1[8 * v20 + 32] = v21;
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  if (*(v0 + 5) != INFINITY)
  {
    v22 = *(v0[6] + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v22 + 16))
    {

      v23 = sub_2245096C8(1819045746, 0xE400000000000000);
      if (v24)
      {
        v25 = *(*(v22 + 56) + 8 * v23);

        type metadata accessor for Actuator();
        if (swift_dynamicCastClass())
        {
          v26 = v25;
          MEMORY[0x22AA51310]();
          if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224627EF8();
          }

          sub_224627F08();
          v3 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_22452B168(0, *(v1 + 2) + 1, 1, v1);
          }

          v28 = *(v1 + 2);
          v27 = *(v1 + 3);
          if (v28 >= v27 >> 1)
          {
            v1 = sub_22452B168((v27 > 1), v28 + 1, 1, v1);
          }

          v29 = v0[5];

          *(v1 + 2) = v28 + 1;
          *&v1[8 * v28 + 32] = v29;
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  v0[7] = v1;
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2245C398C;

  return ActuationController.setActuatorPositions(actuators:positions:)(v3, v1);
}

uint64_t sub_2245C398C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2245C3AC8;
  }

  else
  {

    v2 = sub_2245C3AB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245C3AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ActuationController.setActuatorPositions(actuators:positions:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2245C3B58, 0, 0);
}

uint64_t sub_2245C3B58()
{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[13] = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[14] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2245C3C20;

  return v5();
}

uint64_t sub_2245C3C20()
{

  return MEMORY[0x2822009F8](sub_2245C3D38, 0, 0);
}

uint64_t sub_2245C3D38()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = sub_2245C3E98;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_22452ECAC();
    v5 = swift_allocError();
    *v6 = 0xD000000000000019;
    *(v6 + 8) = 0x8000000224639AB0;
    *(v6 + 16) = 7;
    swift_willThrow();
    v0[20] = v5;
    v0[21] = *(v0[12] + v0[13]);
    sub_2246274B8();
    sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

    v7 = sub_224627F28();
    v9 = v8;
    v2 = sub_2245C43CC;
    v3 = v7;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}