void sub_22B79C298()
{
  v1 = *(v0 + 16);
  v2 = sub_22B7DB8F8();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_22B79C2F8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_22B79B56C(*a1);
  v3();
}

id sub_22B79C35C()
{
  result = [objc_allocWithZone(IMDMessageFromStorageMonitor) init];
  qword_27D8CF6B8 = result;
  return result;
}

id sub_22B79C3EC()
{
  *(v0 + OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount) = 0;
  *(v0 + OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec) = 0;
  v9.super_class = IMDMessageFromStorageMonitor;
  v1 = objc_msgSendSuper2(&v9, sel_init);
  v2 = qword_27D8CCC50;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_27D8D4888);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Initialized MesasgesFromStorageMonitor", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  return v3;
}

void sub_22B79C534(double a1)
{
  v4 = objc_opt_self();
  v5 = [v4 messagesDomain];
  if (v5)
  {
    v6 = v5;
    v7 = sub_22B7DB678();
    v2 = [v6 integerForKey_];

    if (v2 >= 2)
    {
      if (qword_27D8CCC50 != -1)
      {
        swift_once();
      }

      v8 = sub_22B7DB2B8();
      sub_22B4CFA74(v8, qword_27D8D4888);
      oslog = sub_22B7DB298();
      v9 = sub_22B7DBCB8();
      if (!os_log_type_enabled(oslog, v9))
      {
        goto LABEL_19;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "FromStorageMonitor version default > target version, this should never happen";
      goto LABEL_13;
    }
  }

  v12 = [v4 messagesDomain];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22B7DB678();
    v15 = [v13 integerForKey_];

    if (v15 == 1)
    {
      if (qword_27D8CCC50 != -1)
      {
        swift_once();
      }

      v16 = sub_22B7DB2B8();
      sub_22B4CFA74(v16, qword_27D8D4888);
      oslog = sub_22B7DB298();
      v9 = sub_22B7DBCB8();
      if (!os_log_type_enabled(oslog, v9))
      {
        goto LABEL_19;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "We've already spawned TTR for this version, don't do it anymore";
LABEL_13:
      _os_log_impl(&dword_22B4CC000, oslog, v9, v11, v10, 2u);
      v17 = v10;
LABEL_18:
      MEMORY[0x231898D60](v17, -1, -1);
LABEL_19:
      v27 = oslog;
      goto LABEL_21;
    }
  }

  v18 = OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount;
  v19 = *&v1[OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount] = v21;
    v2 = OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec;
    *&v1[OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec] = *&v1[OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec] + a1;
    if (qword_27D8CCC50 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v22 = sub_22B7DB2B8();
  sub_22B4CFA74(v22, qword_27D8D4888);
  v23 = v1;
  v24 = v1;
  oslog = sub_22B7DB298();
  v25 = sub_22B7DBCB8();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = *&v23[v18];

    *(v26 + 12) = 2048;
    *(v26 + 14) = *&v23[v2];
    _os_log_impl(&dword_22B4CC000, oslog, v25, "Message count: %ld, total elapsed: %f", v26, 0x16u);
    v17 = v26;
    goto LABEL_18;
  }

  v27 = v24;
LABEL_21:
}

void sub_22B79C910()
{
  if (qword_27D8CCC50 != -1)
  {
    swift_once();
  }

  v0 = sub_22B7DB2B8();
  sub_22B4CFA74(v0, qword_27D8D4888);
  v1 = sub_22B7DB298();
  v2 = sub_22B7DBCB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B4CC000, v1, v2, "App launched, spawn TTR if needed", v3, 2u);
    MEMORY[0x231898D60](v3, -1, -1);
  }

  v4 = objc_opt_self();
  v5 = [v4 messagesDomain];
  if (!v5 || (v6 = v5, v7 = sub_22B7DB678(), v8 = [v6 integerForKey_], v6, v7, v8 <= 0))
  {
    if (sub_22B79CB84())
    {
      v9 = sub_22B7DB298();
      v10 = sub_22B7DBCB8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_22B4CC000, v9, v10, "Slow delivery detected! Update version and spawn TTR", v11, 2u);
        MEMORY[0x231898D60](v11, -1, -1);
      }

      v12 = [v4 messagesDomain];
      if (v12)
      {
        v13 = v12;
        v14 = sub_22B7DBB38();
        v15 = sub_22B7DB678();
        [v13 setValue:v14 forKey:v15];
      }

      sub_22B79CCE4();
    }
  }
}

BOOL sub_22B79CB84()
{
  v1 = OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount;
  v2 = *&v0[OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount];
  if (v2 < 100)
  {
    return 0;
  }

  v4 = v0;
  v5 = fabs(*&v0[OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec]);
  v6 = v2;
  if (qword_27D8CCC50 != -1)
  {
    swift_once();
  }

  v7 = v5 / v6;
  v8 = sub_22B7DB2B8();
  sub_22B4CFA74(v8, qword_27D8D4888);
  v9 = v0;
  v10 = sub_22B7DB298();
  v11 = sub_22B7DBC78();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    *(v12 + 4) = v7;
    *(v12 + 12) = 2048;
    *(v12 + 14) = *&v4[v1];

    _os_log_impl(&dword_22B4CC000, v10, v11, "Current average: %f, number of messages: %ld", v12, 0x16u);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  return v7 > 1.0;
}

uint64_t sub_22B79CCE4()
{
  v0 = sub_22B7DB348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B7DB398();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B7DB368();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D851C8], v9);
  v14 = sub_22B7DBD98();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_22B79DC20;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F6A0;
  v16 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v20 = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v8, v4, v16);
  _Block_release(v16);

  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v19);
}

void sub_22B79D094()
{
  v0 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  if (qword_27D8CCC50 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_27D8D4888);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Async spawning TTR alert", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
    v10 = sub_22B79D34C();
    if (v10)
    {
      v11 = v10;
      v12 = sub_22B7DBA58();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v13;
      v14[5] = v11;
      v15 = v11;
      sub_22B77E3D4(0, 0, v3, &unk_22B7FD140, v14);
    }

    else
    {
      v15 = sub_22B7DB298();
      v16 = sub_22B7DBC98();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v15, v16, "Tried to launch TapToRadarDraft but could not convert IMUserNotificationCenter.sharedInstance() to IMUserNotificationCenter!", v17, 2u);
        MEMORY[0x231898D60](v17, -1, -1);
      }
    }
  }
}

uint64_t sub_22B79D34C()
{
  if ([swift_getObjCClassFromMetadata() sharedInstance])
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B4D0138(v4);
    return 0;
  }
}

uint64_t sub_22B79D414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return MEMORY[0x2822009F8](sub_22B79D434, 0, 0);
}

uint64_t sub_22B79D434()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_22B79DCE8();
    if (v4)
    {
      v5 = v4;
      v6 = v0[12];
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_22B79DF38;
      v0[7] = v7;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22B79DB9C;
      v0[5] = &unk_283F1F6F0;
      v8 = _Block_copy(v0 + 2);
      v9 = v0[7];
      v10 = v5;

      [v6 addUserNotification:v10 listener:0 completionHandler:v8];
      _Block_release(v8);

      v11 = v3;
      v3 = v10;
    }

    else
    {
      if (qword_27D8CCC50 != -1)
      {
        swift_once();
      }

      v12 = sub_22B7DB2B8();
      sub_22B4CFA74(v12, qword_27D8D4888);
      v11 = sub_22B7DB298();
      v13 = sub_22B7DBC98();
      if (os_log_type_enabled(v11, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22B4CC000, v11, v13, "Could not create a user notification for Tap-to-Radar", v14, 2u);
        MEMORY[0x231898D60](v14, -1, -1);
      }
    }
  }

  v15 = v0[1];

  return v15();
}

void sub_22B79D65C(void *a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v29 - v4;
  if (!a1 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    if (qword_27D8CCC50 != -1)
    {
      swift_once();
    }

    v16 = sub_22B7DB2B8();
    sub_22B4CFA74(v16, qword_27D8D4888);
    v7 = sub_22B7DB298();
    v17 = sub_22B7DBC98();
    if (os_log_type_enabled(v7, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22B4CC000, v7, v17, "Error processing the Tap-to-Radar notification callback", v18, 2u);
      MEMORY[0x231898D60](v18, -1, -1);
    }

    goto LABEL_27;
  }

  v7 = Strong;
  v8 = qword_27D8CCC50;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_22B7DB2B8();
  sub_22B4CFA74(v10, qword_27D8D4888);
  v11 = v9;
  v12 = sub_22B7DB298();
  v13 = sub_22B7DBCB8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136315138;
    if ([v11 identifier])
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32[0] = v30;
    v32[1] = v31;
    if (*(&v31 + 1))
    {
      if (swift_dynamicCast())
      {
        v19 = v29[0];
        v20 = v29[1];
LABEL_18:
        v21 = sub_22B4CFAAC(v19, v20, &v33);

        *(v14 + 4) = v21;
        _os_log_impl(&dword_22B4CC000, v12, v13, "Finished processing user notification: %s", v14, 0xCu);
        sub_22B4CFB78(v15);
        MEMORY[0x231898D60](v15, -1, -1);
        MEMORY[0x231898D60](v14, -1, -1);
        goto LABEL_19;
      }
    }

    else
    {
      sub_22B4D0138(v32);
    }

    v20 = 0x800000022B80F0A0;
    v19 = 0xD00000000000001CLL;
    goto LABEL_18;
  }

LABEL_19:

  v22 = [v11 response];
  if (v22 == 3)
  {
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC78();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v32[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_22B4CFAAC(0xD000000000000016, 0x800000022B8116E0, v32);
      _os_log_impl(&dword_22B4CC000, v25, v26, "%s: user cancelled Tap-to-Radar", v27, 0xCu);
      sub_22B4CFB78(v28);
      MEMORY[0x231898D60](v28, -1, -1);
      MEMORY[0x231898D60](v27, -1, -1);
    }

    goto LABEL_25;
  }

  if (!v22)
  {
    v23 = sub_22B7DBA58();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v7;
    v7 = v7;
    sub_22B722F28(0, 0, v5, &unk_22B7FD150, v24);

LABEL_25:

    return;
  }

LABEL_27:
}

uint64_t sub_22B79DB10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F0D94;

  return sub_22B79DFF4();
}

void sub_22B79DB9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_22B79DC28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B79D414(a1, v4, v5, v7, v6);
}

uint64_t sub_22B79DCE8()
{
  v0 = sub_22B7DA9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_22B7DA998();
  sub_22B7DA978();
  (*(v1 + 8))(v4, v0);
  v6 = sub_22B7DB678();

  v7 = sub_22B7DB678();
  v8 = sub_22B7DB678();
  v9 = sub_22B7DB678();
  v10 = sub_22B7DB678();
  v11 = [v5 userNotificationWithIdentifier:v6 title:v7 message:v8 defaultButton:v9 alternateButton:v10 otherButton:0];

  if (v11)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_22B4D01A0(0, &qword_27D8CE548, 0x277D192D0);
    if (swift_dynamicCast())
    {
      return v13[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B4D0138(v16);
    return 0;
  }
}

uint64_t sub_22B79DF40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F0D94;

  return sub_22B79DB10();
}

uint64_t sub_22B79DFF4()
{
  v1 = sub_22B7DAD38();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_22B7DAD48();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = sub_22B7DAD28();
  v0[8] = v7;
  v8 = *(v7 - 8);
  v0[9] = v8;
  v9 = *(v8 + 64) + 15;
  v0[10] = swift_task_alloc();
  v10 = sub_22B7DAD88();
  v0[11] = v10;
  v11 = *(v10 - 8);
  v0[12] = v11;
  v12 = *(v11 + 64) + 15;
  v0[13] = swift_task_alloc();
  v13 = sub_22B7DAD98();
  v0[14] = v13;
  v14 = *(v13 - 8);
  v0[15] = v14;
  v15 = *(v14 + 64) + 15;
  v0[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B79E220, 0, 0);
}

uint64_t sub_22B79E220()
{
  v15 = v0[16];
  v16 = v0[12];
  v1 = v0[10];
  v17 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v14 = v0[13];
  v9 = v0[2];
  v8 = v0[3];
  sub_22B7DAD68();
  (*(v3 + 104))(v1, *MEMORY[0x277D195B0], v2);
  (*(v4 + 104))(v5, *MEMORY[0x277D195D8], v6);
  (*(v8 + 104))(v7, *MEMORY[0x277D195C8], v9);
  sub_22B7DAD08();
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);
  (*(v16 + 8))(v14, v17);
  v10 = *(MEMORY[0x277D195E8] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_22B79E448;
  v12 = v0[16];

  return MEMORY[0x282173A08]();
}

uint64_t sub_22B79E448()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_22B79E618;
  }

  else
  {
    v3 = sub_22B79E55C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B79E55C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B79E618()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

unint64_t FileCreateFlags.init(rawValue:)@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_22B79E758()
{
  result = qword_27D8CF6D8;
  if (!qword_27D8CF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF6D8);
  }

  return result;
}

unint64_t sub_22B79E7B0()
{
  result = qword_27D8CF6E0;
  if (!qword_27D8CF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF6E0);
  }

  return result;
}

unint64_t sub_22B79E814()
{
  result = qword_27D8CF6E8;
  if (!qword_27D8CF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF6E8);
  }

  return result;
}

unint64_t sub_22B79E86C()
{
  result = qword_27D8CF6F0;
  if (!qword_27D8CF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF6F0);
  }

  return result;
}

BOOL sub_22B79E904(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_22B79E934@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_22B79E960@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_22B79EA20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_22B79EA54()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF6F8);
  sub_22B4CFA74(v0, qword_27D8CF6F8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

Swift::String_optional __swiftcall NSBundle.__im_localizedString(forKey:table:)(Swift::String forKey, Swift::String table)
{
  v3 = v2;
  v64 = table;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v6 = sub_22B7DAA08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA9F8();
  v11 = sub_22B7DA9C8();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v65 = v3;
  v14 = [v3 localizations];
  if (!v14)
  {
    sub_22B7DB918();
    v14 = sub_22B7DB8F8();
  }

  v15 = objc_opt_self();
  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22B7F93B0;
  *(v16 + 32) = v11;
  *(v16 + 40) = v13;

  v17 = v11;
  v18 = sub_22B7DB8F8();

  v19 = [v15 preferredLocalizationsFromArray:v14 forPreferences:v18];

  v20 = sub_22B7DB918();
  v21 = v20[2];
  v60 = v17;
  if (v21)
  {
    v17 = v20[4];
    v22 = v20[5];

    v59 = v17;
    v23 = v22;
  }

  else
  {

    v59 = 0;
    v23 = 0;
    v22 = v13;
  }

  v62 = countAndFlagsBits;
  v63 = object;
  v24 = sub_22B7DB678();
  v25 = sub_22B7DB678();
  v26 = sub_22B7DB678();
  v61 = v17;
  v27 = sub_22B7DB678();
  v28 = [v65 localizedStringForKey:v24 value:v25 table:v26 localization:v27];

  v29 = sub_22B7DB6A8();
  v31 = v30;

  if (v29 == 0x46544F4E4D495F5FLL && v31 == 0xEE005F5F444E554FLL || (sub_22B7DC518() & 1) != 0)
  {

    v33 = v62;
    v32 = v63;
    if (qword_27D8CCD00 != -1)
    {
      swift_once();
    }

    v34 = sub_22B7DB2B8();
    sub_22B4CFA74(v34, qword_27D8CF6F8);

    v35 = sub_22B7DB298();
    v36 = sub_22B7DBC98();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_22B4CFAAC(v33, v32, v66);
      *(v37 + 12) = 2080;
      v39 = sub_22B4CFAAC(v61, v22, v66);

      *(v37 + 14) = v39;
      _os_log_impl(&dword_22B4CC000, v35, v36, "Failed to find localized string for key %s with localization %s, falling back to system lookup behavior", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v38, -1, -1);
      MEMORY[0x231898D60](v37, -1, -1);
    }

    else
    {
    }

    v40 = sub_22B7DB678();
    v41 = sub_22B7DB678();
    v42 = [v65 localizedStringForKey:v40 value:0 table:v41];

    v29 = sub_22B7DB6A8();
    v31 = v43;
  }

  else
  {

    v46 = v23;
    if (qword_27D8CCD00 != -1)
    {
      swift_once();
    }

    v47 = sub_22B7DB2B8();
    sub_22B4CFA74(v47, qword_27D8CF6F8);

    v48 = v63;

    v49 = sub_22B7DB298();
    v50 = sub_22B7DBC78();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v67 = v52;
      *v51 = 136315650;
      *(v51 + 4) = sub_22B4CFAAC(v62, v48, &v67);
      *(v51 + 12) = 2080;
      v53 = sub_22B4CFAAC(v60, v13, &v67);

      *(v51 + 14) = v53;
      *(v51 + 22) = 2080;
      v66[0] = v59;
      v66[1] = v46;
      sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
      v54 = sub_22B7DB6C8();
      v56 = sub_22B4CFAAC(v54, v55, &v67);

      *(v51 + 24) = v56;
      _os_log_impl(&dword_22B4CC000, v49, v50, "Localized string for key: %s, localeID: %s, preferredLocalization: %s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v52, -1, -1);
      MEMORY[0x231898D60](v51, -1, -1);
    }

    else
    {
    }
  }

  v44 = v29;
  v45 = v31;
  result.value._object = v45;
  result.value._countAndFlagsBits = v44;
  return result;
}

id sub_22B79F198(void *a1)
{
  v2 = sub_22B7DB6A8();
  v4 = v3;
  v5 = sub_22B7DB6A8();
  v7 = v6;
  v8 = a1;
  v9._countAndFlagsBits = v2;
  v9._object = v4;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  object = NSBundle.__im_localizedString(forKey:table:)(v9, v10).value._object;

  if (object)
  {
    v12 = sub_22B7DB678();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

Swift::String_optional __swiftcall NSBundle.__im_localizedString(forKey:)(Swift::String forKey)
{
  v2 = sub_22B7DB678();
  v3 = sub_22B7DB678();
  v4 = [v1 __im_localizedStringForKey_table_];

  if (v4)
  {
    v5 = sub_22B7DB6A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v5;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

id sub_22B79F304(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_22B7DB678();
  v7 = [v5 __im_localizedStringForKey_table_];

  if (v7)
  {
    sub_22B7DB6A8();

    v8 = sub_22B7DB678();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

unint64_t RecoverableMessageStore.batchOfRecordsToWrite(filter:limit:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = [objc_msgSend(objc_opt_self() synchronousDatabase)];
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v6 = sub_22B7DB918();

  v7 = OBJC_IVAR___IMDRecoverableMessageStore_metadataByRecordNameMap;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v58 = v7;
  *(v3 + v7) = MEMORY[0x277D84F98];

  v57 = *(v6 + 16);
  if (!v57)
  {

    if (qword_28141F368 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v60 = sub_22B7A51F8(v4);
  if (!v60)
  {

    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v48 = sub_22B7DB2B8();
    sub_22B4CFA74(v48, qword_281422608);
    v49 = sub_22B7DB298();
    v50 = sub_22B7DBC98();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22B4CC000, v49, v50, "There is no zone in IMDRecordZoneManager for recoverableMessages", v51, 2u);
      MEMORY[0x231898D60](v51, -1, -1);
    }

    return sub_22B71EA68(MEMORY[0x277D84F90]);
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v55 = v4;
  v56 = v6;
  v53 = v3;
  while (v9 < *(v6 + 16))
  {
    v11 = *(v6 + 8 * v9 + 32);
    swift_beginAccess();

    v13 = sub_22B79FA44(v12, v60, v3 + v58, v4);
    v15 = v14;
    v17 = v16;
    swift_endAccess();
    if (!v13)
    {

      goto LABEL_5;
    }

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {

      if (qword_28141F368 != -1)
      {
        swift_once();
      }

      v29 = sub_22B7DB2B8();
      sub_22B4CFA74(v29, qword_281422608);

      v30 = sub_22B7DB298();
      v31 = sub_22B7DBC98();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v59 = v54;
        *v32 = 136315138;
        v33 = sub_22B7DB598();
        v35 = v34;

        v36 = sub_22B4CFAAC(v33, v35, &v59);
        v4 = v55;

        *(v32 + 4) = v36;
        v3 = v53;
        _os_log_impl(&dword_22B4CC000, v30, v31, "messageGUID is empty or nil for recoverableMessage %s", v32, 0xCu);
        sub_22B4CFB78(v54);
        MEMORY[0x231898D60](v54, -1, -1);
        MEMORY[0x231898D60](v32, -1, -1);
      }

      else
      {
      }

      goto LABEL_5;
    }

    v19 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v10;
    v21 = sub_22B723648(v15, v17);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_39;
    }

    v27 = v22;
    if (v10[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v21;
        sub_22B7A4F5C(&qword_27D8CDBD8, &unk_22B7FA3E0);
        v21 = v40;
        v4 = v55;
        if (v27)
        {
LABEL_21:
          v37 = v21;

          v10 = v59;
          v38 = v59[7];
          v39 = *(v38 + 8 * v37);
          *(v38 + 8 * v37) = v19;

          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_22B7A3A68(v26, isUniquelyReferenced_nonNull_native, &qword_27D8CDBD8, &unk_22B7FA3E0);
      v21 = sub_22B723648(v15, v17);
      if ((v27 & 1) != (v28 & 1))
      {
        result = sub_22B7DC578();
        __break(1u);
        return result;
      }
    }

    v4 = v55;
    if (v27)
    {
      goto LABEL_21;
    }

LABEL_25:
    v10 = v59;
    v59[(v21 >> 6) + 8] |= 1 << v21;
    v41 = (v10[6] + 16 * v21);
    *v41 = v15;
    v41[1] = v17;
    *(v10[7] + 8 * v21) = v19;

    v42 = v10[2];
    v25 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v25)
    {
      goto LABEL_40;
    }

    v10[2] = v43;
LABEL_5:
    ++v9;
    v6 = v56;
    if (v57 == v9)
    {

      return v10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_29:
  v44 = sub_22B7DB2B8();
  sub_22B4CFA74(v44, qword_281422608);
  v45 = sub_22B7DB298();
  v46 = sub_22B7DBC98();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_22B4CC000, v45, v46, "Recently Deleted | No recoverable messages data to sync", v47, 2u);
    MEMORY[0x231898D60](v47, -1, -1);
  }

  return MEMORY[0x277D84F98];
}

id sub_22B79FA44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B6F0AD4(&qword_27D8CF780, &unk_22B7FC160);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v68 - v13;
  v15 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_22B7A5330(a4);
  if (!v20)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v28 = sub_22B7DB2B8();
    sub_22B4CFA74(v28, qword_281422608);
    v29 = sub_22B7DB298();
    v30 = sub_22B7DBC98();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22B4CC000, v29, v30, "Recoverable Message Zone is nil in IMDRecordZoneManager", v31, 2u);
      MEMORY[0x231898D60](v31, -1, -1);
    }

    return 0;
  }

  v21 = v20;
  v68[2] = a3;
  v69 = a2;
  v22 = [v20 zoneID];
  v23 = [v22 zoneName];

  v24 = sub_22B7DB6A8();
  v70 = v16;
  v26 = v25;

  sub_22B7A0FA8(v24, v26, a1, v14);
  v27 = v70;

  if ((*(v27 + 48))(v14, 1, v15) == 1)
  {

    sub_22B4D0D64(v14, &qword_27D8CF780, &unk_22B7FC160);
    return 0;
  }

  sub_22B7A6368(v14, v19, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = [result cachedSalt];

  if (!v34)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v53 = sub_22B7DB2B8();
    sub_22B4CFA74(v53, qword_281422608);
    v54 = sub_22B7DB298();
    v55 = sub_22B7DBC98();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_24;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_22B4CC000, v54, v55, "No cached salt available from IMDCKRecordSaltManager could not create CKRecord!", v56, 2u);
    goto LABEL_23;
  }

  v35 = objc_opt_self();
  v36 = v19[2];
  v68[0] = v19[3];
  v68[1] = v36;
  v72[0] = v36;
  v72[1] = v68[0];

  MEMORY[0x231895140](43, 0xE100000000000000);
  MEMORY[0x231895140](*v19, v19[1]);
  MEMORY[0x231895140](43, 0xE100000000000000);
  v71 = v19[7];
  v37 = sub_22B7DC4E8();
  MEMORY[0x231895140](v37);

  v38 = sub_22B7DB678();

  v39 = [v35 recordIDUsingSalt:v34 zoneID:v69 guid:v38];

  if (!v39)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v57 = sub_22B7DB2B8();
    sub_22B4CFA74(v57, qword_281422608);

    v54 = sub_22B7DB298();
    v58 = sub_22B7DBC98();

    if (!os_log_type_enabled(v54, v58))
    {
      goto LABEL_24;
    }

    v56 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v72[0] = v59;
    *v56 = 136315138;
    v60 = sub_22B7DB598();
    v62 = sub_22B4CFAAC(v60, v61, v72);

    *(v56 + 4) = v62;
    _os_log_impl(&dword_22B4CC000, v54, v58, "Recently Deleted: returning nil record. recordID nil for metadata: %s", v56, 0xCu);
    sub_22B4CFB78(v59);
    MEMORY[0x231898D60](v59, -1, -1);
LABEL_23:
    MEMORY[0x231898D60](v56, -1, -1);
LABEL_24:

    sub_22B7A52D4(v19);
    return 0;
  }

  sub_22B4D01A0(0, &qword_28141EFE8, 0x277CBC5A0);
  v40 = v39;
  v41 = sub_22B7DBFA8();
  v42 = *(v15 + 40);

  v43 = sub_22B7DB678();
  [v41 _setCKRecordString_forKey_];

  v44 = sub_22B7DA8B8();
  v69 = v41;
  [v41 _setCKRecordDate_forKey_];

  v45 = v19[5];
  if (v45)
  {
    v46 = v45;
    v47 = JWEncodeCodableObject();
    if (v47)
    {
      v48 = v47;
      v49 = sub_22B7DA848();
      v51 = v50;

      sub_22B705E44(v49, v51);
      v52 = sub_22B7DA838();
      sub_22B705E98(v49, v51);
    }

    else
    {
      v52 = 0;
      v49 = 0;
      v51 = 0xF000000000000000;
    }

    v63 = sub_22B7DB678();
    [v69 _setCKRecordData_forKey_];

    sub_22B7A62A4(v49, v51);
    v27 = v70;
  }

  v64 = [v40 recordName];
  v65 = sub_22B7DB6A8();
  v67 = v66;

  sub_22B7A6300(v19, v12, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
  (*(v27 + 56))(v12, 0, 1, v15);
  sub_22B786C3C(v12, v65, v67);

  sub_22B7A52D4(v19);
  return v69;
}

Swift::Void __swiftcall RecoverableMessageStore.recordUpdateSucceeded(forRecord:)(CKRecord forRecord)
{
  v3 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = [(objc_class *)forRecord.super.isa recordID];
  v12 = [v11 recordName];

  v13 = sub_22B7DB6A8();
  v15 = v14;

  v16 = OBJC_IVAR___IMDRecoverableMessageStore_metadataByRecordNameMap;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (*(v17 + 16))
  {
    v18 = sub_22B723648(v13, v15);
    v20 = v19;

    if (v20)
    {
      sub_22B7A6300(*(v17 + 56) + *(v4 + 72) * v18, v8, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      sub_22B7A6368(v8, v10, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      swift_endAccess();
      [objc_msgSend(objc_opt_self() database)];
      swift_unknownObjectRelease();
      sub_22B7A52D4(v10);
      return;
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v21 = sub_22B7DB2B8();
  sub_22B4CFA74(v21, qword_281422608);
  v22 = forRecord.super.isa;
  v23 = sub_22B7DB298();
  v24 = sub_22B7DBC98();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315138;
    v27 = [(objc_class *)v22 recordID];
    v28 = [v27 recordName];

    v29 = sub_22B7DB6A8();
    v31 = v30;

    v32 = sub_22B4CFAAC(v29, v31, &v34);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_22B4CC000, v23, v24, "Record update succeeded, but could not find metadata in map for %s", v25, 0xCu);
    sub_22B4CFB78(v26);
    MEMORY[0x231898D60](v26, -1, -1);
    MEMORY[0x231898D60](v25, -1, -1);
  }
}

void RecoverableMessageStore.batchOfRecordIDsToDelete(limit:)(uint64_t a1)
{
  v6 = MEMORY[0x277D84F98];
  v3 = [objc_msgSend(objc_opt_self() synchronousDatabase)];
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v4 = sub_22B7DB918();

  v5 = objc_autoreleasePoolPush();
  sub_22B7A084C(v4, v1, &v6);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
    __break(1u);
  }

  else
  {

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t sub_22B7A084C(uint64_t result, uint64_t a2, uint64_t **a3)
{
  v68 = *(result + 16);
  if (!v68)
  {
    return result;
  }

  v3 = a3;
  v4 = 0;
  v67 = result + 32;
  v5 = &selRef_setFirstSyncDateToNow;
LABEL_4:
  v69 = v4;
  v6 = *(v67 + 8 * v4);
  v7 = objc_opt_self();

  v8 = [v7 v5[437]];
  if (v8)
  {
    v9 = v5;
    v10 = v8;
    v11 = [v8 recoverableMessageRecordZone];

    v74[0] = v11;
    v12 = [v7 v9 + 744];
    if (!v12)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v13 = v12;
    v70 = v69 + 1;
    v14 = [v12 chatBotRecoverableMessageRecordZone];

    v15 = 0;
    v16 = 0;
    v74[1] = v14;
    while (1)
    {
      v17 = v15;
      v18 = v74[v16];
      v19 = v18;
      v20 = sub_22B7A580C(v6, v18);
      if (!v20)
      {
        if (qword_28141F368 != -1)
        {
          swift_once();
        }

        v28 = sub_22B7DB2B8();
        sub_22B4CFA74(v28, qword_281422608);

        v29 = sub_22B7DB298();
        v30 = sub_22B7DBC98();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = v17;
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v75 = v33;
          *v32 = 136315138;
          v34 = sub_22B7DB598();
          v36 = sub_22B4CFAAC(v34, v35, &v75);

          *(v32 + 4) = v36;
          _os_log_impl(&dword_22B4CC000, v29, v30, "Could not create delete sync CKRecord for %s", v32, 0xCu);
          sub_22B4CFB78(v33);
          v37 = v33;
          v3 = a3;
          MEMORY[0x231898D60](v37, -1, -1);
          v38 = v32;
          v17 = v31;
          MEMORY[0x231898D60](v38, -1, -1);
        }

        goto LABEL_8;
      }

      v23 = v20;
      v24 = v21;
      v25 = v22;
      v26 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v26 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (!v26)
      {

        if (qword_28141F368 != -1)
        {
          swift_once();
        }

        v39 = sub_22B7DB2B8();
        sub_22B4CFA74(v39, qword_281422608);

        v40 = sub_22B7DB298();
        v41 = sub_22B7DBC98();

        if (os_log_type_enabled(v40, v41))
        {
          v72 = v17;
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v75 = v43;
          *v42 = 136315138;
          v44 = sub_22B7DB598();
          v46 = sub_22B4CFAAC(v44, v45, &v75);

          *(v42 + 4) = v46;
          _os_log_impl(&dword_22B4CC000, v40, v41, "messageGUID is empty or nil for recoverableMessage %s", v42, 0xCu);
          sub_22B4CFB78(v43);
          MEMORY[0x231898D60](v43, -1, -1);
          v47 = v42;
          v17 = v72;
          MEMORY[0x231898D60](v47, -1, -1);
        }

        v3 = a3;
        goto LABEL_8;
      }

      if (!(*v3)[2])
      {
        v73 = v17;
        goto LABEL_27;
      }

      sub_22B7237AC(v20);
      if ((v27 & 1) == 0)
      {
        break;
      }

LABEL_8:
      v15 = 1;
      v16 = 1;
      if (v17)
      {

        sub_22B6F0AD4(&qword_27D8CF778, &unk_22B7FD3C0);
        result = swift_arrayDestroy();
        v4 = v70;
        v5 = &selRef_setFirstSyncDateToNow;
        if (v70 == v68)
        {
          return result;
        }

        goto LABEL_4;
      }
    }

    v73 = v17;
    v48 = *v3;
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *v3;
    v50 = v75;
    *v3 = 0x8000000000000000;
    v52 = sub_22B7237AC(v23);
    v53 = *(v50 + 16);
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v56 = v51;
    if (*(v50 + 24) < v55)
    {
      sub_22B7A2454(v55, isUniquelyReferenced_nonNull_native);
      v57 = sub_22B7237AC(v23);
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_44;
      }

      v52 = v57;
      v59 = v75;
      if ((v56 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_34:
      v60 = (v59[7] + 16 * v52);
      v61 = v60[1];
      *v60 = v24;
      v60[1] = v25;

LABEL_38:
      v3 = a3;
      v66 = *a3;
      *a3 = v59;

      v17 = v73;
      goto LABEL_8;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v59 = v75;
      if (v51)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_22B7A428C();
      v59 = v75;
      if (v56)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    v59[(v52 >> 6) + 8] |= 1 << v52;
    *(v59[6] + 8 * v52) = v23;
    v62 = (v59[7] + 16 * v52);
    *v62 = v24;
    v62[1] = v25;

    v63 = v59[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_41;
    }

    v59[2] = v65;
    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  result = sub_22B7DC578();
  __break(1u);
  return result;
}

uint64_t sub_22B7A0FA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v64 - v10;
  v12 = sub_22B7DA968();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  strcpy(v72, "messageRowID");
  BYTE5(v72[1]) = 0;
  HIWORD(v72[1]) = -5120;
  sub_22B7DC248();
  if (!*(a3 + 16))
  {
    goto LABEL_20;
  }

  v20 = sub_22B4D7EC0(v73);
  if ((v21 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v20, v74);
  sub_22B4DA138(v73);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v39 = sub_22B7DB2B8();
    sub_22B4CFA74(v39, qword_281422608);

    v40 = sub_22B7DB298();
    v41 = sub_22B7DBC98();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73[0] = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_22B4CFAAC(a1, a2, v73);
      *(v42 + 12) = 2080;
      v44 = sub_22B7DB598();
      v46 = sub_22B4CFAAC(v44, v45, v73);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_22B4CC000, v40, v41, "Could not create CKRecord in zone %s for metadata dictionary %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v43, -1, -1);
      MEMORY[0x231898D60](v42, -1, -1);
    }

    goto LABEL_26;
  }

  v71 = v72[0];
  strcpy(v72, "messageGUID");
  HIDWORD(v72[1]) = -352321536;
  sub_22B7DC248();
  if (!*(a3 + 16) || (v22 = sub_22B4D7EC0(v73), (v23 & 1) == 0))
  {
LABEL_20:
    sub_22B4DA138(v73);
    goto LABEL_21;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v22, v74);
  sub_22B4DA138(v73);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v69 = v72[0];
  v70 = v72[1];
  strcpy(v72, "chatGUID");
  BYTE1(v72[1]) = 0;
  WORD1(v72[1]) = 0;
  HIDWORD(v72[1]) = -402653184;
  sub_22B7DC248();
  if (!*(a3 + 16) || (v24 = sub_22B4D7EC0(v73), (v25 & 1) == 0))
  {
    sub_22B4DA138(v73);
    goto LABEL_28;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v24, v74);
  sub_22B4DA138(v73);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:

    goto LABEL_21;
  }

  v67 = v72[0];
  v68 = v72[1];
  v72[0] = 0xD000000000000012;
  v72[1] = 0x800000022B811910;
  sub_22B7DC248();
  if (!*(a3 + 16) || (v26 = sub_22B4D7EC0(v73), (v27 & 1) == 0))
  {
    sub_22B4DA138(v73);
    goto LABEL_30;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v26, v74);
  sub_22B4DA138(v73);
  sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    goto LABEL_28;
  }

  v66 = v72[0];
  [v72[0] doubleValue];
  v29 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
  if (!v29 || (v30 = v29, (*(v13 + 56))(v11, 1, 1, v12), sub_22B7A62B8(&qword_27D8CF7A0, MEMORY[0x277CC9578]), v65 = v30, sub_22B7DC4A8(), v65, (*(v13 + 48))(v11, 1, v12) == 1))
  {

    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v31 = sub_22B7DB2B8();
    sub_22B4CFA74(v31, qword_281422608);

    v32 = sub_22B7DB298();
    v33 = sub_22B7DBC98();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_22B4CFAAC(a1, a2, v73);
      *(v34 + 12) = 2080;
      v36 = sub_22B7DB598();
      v38 = sub_22B4CFAAC(v36, v37, v73);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_22B4CC000, v32, v33, "Could not create CKRecord in zone %s due to missing date for metadata dictionary %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v35, -1, -1);
      MEMORY[0x231898D60](v34, -1, -1);
    }

LABEL_26:
    v47 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
    return (*(*(v47 - 8) + 56))(a4, 1, 1, v47);
  }

  v49 = *(v13 + 32);
  v49(v17, v11, v12);
  v49(v19, v17, v12);
  strcpy(v72, "partBody");
  BYTE1(v72[1]) = 0;
  WORD1(v72[1]) = 0;
  HIDWORD(v72[1]) = -402653184;
  sub_22B7DC248();
  if (!*(a3 + 16) || (v50 = sub_22B4D7EC0(v73), (v51 & 1) == 0))
  {
    sub_22B4DA138(v73);
    goto LABEL_39;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v50, v74);
  sub_22B4DA138(v73);
  sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    v52 = 0;
    goto LABEL_40;
  }

  v52 = v72[0];
  v53 = *MEMORY[0x277D19160];
  v54 = v72[0];
  v55 = v53;
  v56 = [v54 attributesAtIndex:0 effectiveRange:0];
  type metadata accessor for Key(0);
  sub_22B7A62B8(&qword_27D8CCE68, type metadata accessor for Key);
  v57 = sub_22B7DB588();

  if (!*(v57 + 16) || (v58 = sub_22B725574(v55), (v59 & 1) == 0))
  {

    goto LABEL_40;
  }

  sub_22B4D1F68(*(v57 + 56) + 32 * v58, v73);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    v60 = -1;
    goto LABEL_41;
  }

  v60 = v74[0];
LABEL_41:
  v61 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
  v49((a4 + *(v61 + 40)), v19, v12);
  v62 = v68;
  *a4 = v67;
  *(a4 + 8) = v62;
  v63 = v70;
  *(a4 + 16) = v69;
  *(a4 + 24) = v63;
  *(a4 + 32) = v71;
  *(a4 + 40) = v52;
  *(a4 + 48) = v52 != 0;
  *(a4 + 56) = v60;
  return (*(*(v61 - 8) + 56))(a4, 0, 1, v61);
}

id RecoverableMessageStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecoverableMessageStore.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___IMDRecoverableMessageStore_metadataByRecordNameMap] = MEMORY[0x277D84F98];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id RecoverableMessageStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B7A1BDC(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v47 = a6;
  v9 = v6;
  v12 = a3(0);
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v46 = &v43 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  sub_22B6F0AD4(a4, a5);
  v45 = a2;
  result = sub_22B7DC478();
  v18 = result;
  if (*(v15 + 16))
  {
    v43 = v9;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(*(v15 + 48) + 8 * v30);
      v32 = *(v44 + 72);
      v33 = *(v15 + 56) + v32 * v30;
      if (v45)
      {
        sub_22B7A6368(v33, v46, v47);
      }

      else
      {
        sub_22B7A6300(v33, v46, v47);
      }

      v34 = *(v18 + 40);
      sub_22B7DC668();
      MEMORY[0x231895FF0](v31);
      result = sub_22B7DC6B8();
      v35 = -1 << *(v18 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v25 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v25 + 8 * v37);
          if (v41 != -1)
          {
            v26 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v36) & ~*(v25 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v18 + 48) + 8 * v26) = v31;
      result = sub_22B7A6368(v46, *(v18 + 56) + v32 * v26, v47);
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v9 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v15 + 32);
    v9 = v43;
    if (v42 >= 64)
    {
      bzero((v15 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v42;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_22B7A1F14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CDB88, &qword_22B7FA390);
  result = sub_22B7DC478();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v33 = *(*(v5 + 48) + 16 * v20);
      v21 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = *(v8 + 40);
      sub_22B7DC668();
      MEMORY[0x231895FF0](v33);
      MEMORY[0x231895FF0](*(&v33 + 1));
      result = sub_22B7DC6B8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v33;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22B7A21AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CDB80, &qword_22B7FA388);
  v38 = a2;
  result = sub_22B7DC478();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B7A2454(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CF770, &qword_22B7FA3F8);
  v37 = a2;
  result = sub_22B7DC478();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
        v26 = v22;
      }

      v27 = *(v8 + 40);
      result = sub_22B7DBFC8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B7A26D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CDB50, &qword_22B7FA350);
  v34 = a2;
  result = sub_22B7DC478();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_22B7DC668();
      MEMORY[0x231895FF0](v21);
      result = sub_22B7DC6B8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B7A2978(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_22B6F0AD4(a3, a4);
  v40 = a2;
  result = sub_22B7DC478();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22B7A2C2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CDBB0, &unk_22B7FD3B0);
  result = sub_22B7DC478();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = *(v21 + 8 * v20);
      }

      v24 = *(v8 + 40);
      sub_22B7DC668();
      MEMORY[0x231895FF0](v34);
      MEMORY[0x231895FF0](*(&v34 + 1));
      result = sub_22B7DC6B8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B7A2ECC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B6F0AD4(&unk_27D8CF750, &unk_22B7FA378);
  result = sub_22B7DC478();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = *(v21 + 8 * v20);
      }

      v24 = *(v8 + 40);
      sub_22B7DC668();
      MEMORY[0x231895FF0](v34);
      MEMORY[0x231895FF0](*(&v34 + 1));
      result = sub_22B7DC6B8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B7A316C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
  result = sub_22B7DC478();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_22B4D7F04((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_22B4DA0DC(v24, &v38);
        sub_22B4D1F68(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_22B7DC228();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_22B4D7F04(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22B7A3424(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
  v36 = a2;
  result = sub_22B7DC478();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_22B4D7F04(v25, v37);
      }

      else
      {
        sub_22B4D1F68(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22B4D7F04(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22B7A36DC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CF788, &unk_22B7FD3D0);
  v44 = a2;
  result = sub_22B7DC478();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_22B7A6368(v31, v45, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      }

      else
      {
        sub_22B7A6300(v31, v45, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      }

      v32 = *(v12 + 40);
      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_22B7A6368(v45, *(v12 + 56) + v30 * v20, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22B7A3A68(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_22B6F0AD4(a3, a4);
  v41 = a2;
  result = sub_22B7DC478();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *sub_22B7A3D7C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v37 = a4;
  v7 = v4;
  v8 = a1(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v35 = &v33 - v10;
  sub_22B6F0AD4(a2, a3);
  v11 = *v4;
  v12 = sub_22B7DC468();
  v13 = v12;
  if (*(v11 + 16))
  {
    v34 = v7;
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, (v11 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v38 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = *(v11 + 64);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = v24 | (v17 << 6);
        v28 = *(*(v11 + 48) + 8 * v27);
        v29 = v35;
        v30 = *(v36 + 72) * v27;
        v31 = v37;
        sub_22B7A6300(*(v11 + 56) + v30, v35, v37);
        v32 = v38;
        *(*(v38 + 48) + 8 * v27) = v28;
        result = sub_22B7A6368(v29, *(v32 + 56) + v30, v31);
      }

      while (v22);
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v23)
      {

        v7 = v34;
        v13 = v38;
        goto LABEL_21;
      }

      v26 = *(v11 + 64 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

id sub_22B7A3FBC()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDB88, &qword_22B7FA390);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22B7A411C()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDB80, &qword_22B7FA388);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22B7A428C()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CF770, &qword_22B7FA3F8);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_22B7A43FC()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDB50, &qword_22B7FA350);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22B7A456C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_22B6F0AD4(a1, a2);
  v4 = *v2;
  v5 = sub_22B7DC468();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22B7A46E0()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDBB0, &unk_22B7FD3B0);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22B7A4840()
{
  v1 = v0;
  sub_22B6F0AD4(&unk_27D8CF750, &unk_22B7FA378);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22B7A49A0()
{
  v1 = v0;
  sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_22B4DA0DC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_22B4D1F68(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_22B4D7F04(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22B7A4B44()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
  v2 = *v0;
  v3 = sub_22B7DC468();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22B4D1F68(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22B4D7F04(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_22B7A4CE8()
{
  v1 = v0;
  v2 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B6F0AD4(&qword_27D8CF788, &unk_22B7FD3D0);
  v5 = *v0;
  v6 = sub_22B7DC468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_22B7A6300(v22 + v28, v33, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_22B7A6368(v27, *(v29 + 56) + v28, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_22B7A4F5C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_22B6F0AD4(a1, a2);
  v4 = *v2;
  v5 = sub_22B7DC468();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_22B7A50B8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_22B7DC518() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_22B7DC518() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
    v8 = v7;
    v9 = v6;
    v10 = sub_22B7DBFD8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v11 = *(type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata() + 40);

  return sub_22B7DA918();
}

id sub_22B7A51F8(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  v3 = result;
  if (a1 == 4)
  {
    if (result)
    {
      v4 = &selRef_chatBotRecoverableMessageRecordZoneID;
LABEL_6:
      v5 = [result *v4];

      return v5;
    }

    __break(1u);
  }

  else if (result)
  {
    v4 = &selRef_recoverableMessageRecordZoneID;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata()
{
  result = qword_27D8CF720;
  if (!qword_27D8CF720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B7A52D4(uint64_t a1)
{
  v2 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22B7A5330(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  v3 = result;
  if (a1 == 4)
  {
    if (result)
    {
      v4 = &selRef_chatBotRecoverableMessageRecordZone;
LABEL_6:
      v5 = [result *v4];

      return v5;
    }

    __break(1u);
  }

  else if (result)
  {
    v4 = &selRef_recoverableMessageRecordZone;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_22B7A53C0(void *a1, void *a2)
{
  v5 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = [a1 recordName];
  v14 = sub_22B7DB6A8();
  v16 = v15;

  v17 = OBJC_IVAR___IMDRecoverableMessageStore_metadataByRecordNameMap;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (*(v18 + 16))
  {
    v19 = sub_22B723648(v14, v16);
    v21 = v20;

    if (v21)
    {
      sub_22B7A6300(*(v18 + 56) + *(v6 + 72) * v19, v10, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      sub_22B7A6368(v10, v12, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      swift_endAccess();
      if (qword_28141F368 != -1)
      {
        swift_once();
      }

      v22 = sub_22B7DB2B8();
      sub_22B4CFA74(v22, qword_281422608);
      v23 = a2;
      v24 = sub_22B7DB298();
      v25 = sub_22B7DBC98();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = a2;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_22B4CC000, v24, v25, "Encountered error during recoverableMessage write %@, updating status to synced", v26, 0xCu);
        sub_22B4D0D64(v27, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v27, -1, -1);
        MEMORY[0x231898D60](v26, -1, -1);
      }

      [objc_msgSend(objc_opt_self() database)];
      swift_unknownObjectRelease();
      sub_22B7A52D4(v12);
      return;
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v30 = sub_22B7DB2B8();
  sub_22B4CFA74(v30, qword_281422608);
  v31 = a1;
  v32 = sub_22B7DB298();
  v33 = sub_22B7DBC98();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v34 = 136315138;
    v36 = [v31 recordName];
    v37 = sub_22B7DB6A8();
    v39 = v38;

    v40 = sub_22B4CFAAC(v37, v39, &v42);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_22B4CC000, v32, v33, "No record metadata for recordName: %s!", v34, 0xCu);
    sub_22B4CFB78(v35);
    MEMORY[0x231898D60](v35, -1, -1);
    MEMORY[0x231898D60](v34, -1, -1);
  }
}

id sub_22B7A580C(uint64_t a1, void *a2)
{
  if (!a2)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v34 = sub_22B7DB2B8();
    sub_22B4CFA74(v34, qword_281422608);
    v35 = sub_22B7DB298();
    v36 = sub_22B7DBC98();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22B4CC000, v35, v36, "Recoverable Message Zone is nil in IMDRecordZoneManager", v37, 2u);
      MEMORY[0x231898D60](v37, -1, -1);
    }

    return 0;
  }

  v3 = a2;
  sub_22B7DC248();
  if (!*(a1 + 16) || (v4 = sub_22B4D7EC0(v46), (v5 & 1) == 0))
  {
    sub_22B4DA138(v46);
    goto LABEL_16;
  }

  sub_22B4D1F68(*(a1 + 56) + 32 * v4, v47);
  sub_22B4DA138(v46);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v19 = sub_22B7DB2B8();
    sub_22B4CFA74(v19, qword_281422608);
    v20 = v3;

    v21 = sub_22B7DB298();
    v22 = sub_22B7DBC98();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46[0] = v24;
      *v23 = 136315394;
      v25 = [v20 zoneID];
      v26 = [v25 zoneName];

      v27 = sub_22B7DB6A8();
      v29 = v28;

      v30 = sub_22B4CFAAC(v27, v29, v46);

      *(v23 + 4) = v30;
      *(v23 + 12) = 2080;
      v31 = sub_22B7DB598();
      v33 = sub_22B4CFAAC(v31, v32, v46);

      *(v23 + 14) = v33;
      _os_log_impl(&dword_22B4CC000, v21, v22, "Could not create CKRecord in zone %s for tombstone dictionary %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v24, -1, -1);
      MEMORY[0x231898D60](v23, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_22B7DC248();
  if (!*(a1 + 16) || (v6 = sub_22B4D7EC0(v46), (v7 & 1) == 0))
  {
    sub_22B4DA138(v46);
    goto LABEL_28;
  }

  sub_22B4D1F68(*(a1 + 56) + 32 * v6, v47);
  sub_22B4DA138(v46);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:

    goto LABEL_16;
  }

  sub_22B7DC248();
  if (!*(a1 + 16) || (v8 = sub_22B4D7EC0(v46), (v9 & 1) == 0))
  {
    sub_22B4DA138(v46);
    goto LABEL_30;
  }

  sub_22B4D1F68(*(a1 + 56) + 32 * v8, v47);
  sub_22B4DA138(v46);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    goto LABEL_28;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v12 = [result cachedSalt];

    if (v12)
    {
      v46[0] = 0x476567617373656DLL;
      v46[1] = 0xEB00000000444955;

      MEMORY[0x231895140](43, 0xE100000000000000);
      MEMORY[0x231895140](0x4449554774616863, 0xE800000000000000);

      MEMORY[0x231895140](43, 0xE100000000000000);
      v47[0] = 0x65646E4974726170;
      v13 = sub_22B7DC4E8();
      MEMORY[0x231895140](v13);

      v14 = [v3 zoneID];
      v15 = objc_opt_self();
      v16 = v14;
      v17 = sub_22B7DB678();

      v18 = [v15 recordIDUsingSalt:v12 zoneID:v16 guid:v17];

      if (v18)
      {

        return v18;
      }

      if (qword_28141F368 != -1)
      {
        swift_once();
      }

      v38 = sub_22B7DB2B8();
      sub_22B4CFA74(v38, qword_281422608);

      v39 = sub_22B7DB298();
      v40 = sub_22B7DBC98();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v46[0] = v42;
        *v41 = 136315138;
        v43 = sub_22B7DB598();
        v45 = sub_22B4CFAAC(v43, v44, v46);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_22B4CC000, v39, v40, "Recently deleted: returning nil record. recordID nil for metadata: %s", v41, 0xCu);
        sub_22B4CFB78(v42);
        MEMORY[0x231898D60](v42, -1, -1);
        MEMORY[0x231898D60](v41, -1, -1);
      }

      return 0;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t _s12IMDaemonCore23RecoverableMessageStoreC15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(uint64_t a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
    v8 = MEMORY[0x2318952A0](a1, v7);
    v10 = sub_22B4CFAAC(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing recoverable message tombstones for recordIDs: %s", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  [objc_msgSend(objc_opt_self() synchronousDatabase)];

  return swift_unknownObjectRelease();
}

void sub_22B7A6188()
{
  sub_22B7A623C();
  if (v0 <= 0x3F)
  {
    sub_22B7DA968();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B7A623C()
{
  if (!qword_27D8CF730)
  {
    sub_22B4D01A0(255, &qword_28141F1F0, 0x277CCA898);
    v0 = sub_22B7DC018();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8CF730);
    }
  }
}

uint64_t sub_22B7A62A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B705E98(a1, a2);
  }

  return a1;
}

uint64_t sub_22B7A62B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B7A6300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B7A6368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B7A63D0()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F4B0);
  sub_22B4CFA74(v0, qword_28141F4B0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B7A6440()
{
  v1 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - v6;
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22B7F97B0;
  *(v8 + 56) = sub_22B4D01A0(0, &unk_28141F1B8, 0x277CC3400);
  *(v8 + 64) = sub_22B7AA56C();
  *(v8 + 32) = v0;
  v9 = v0;
  v10 = [v9 url];
  if (v10)
  {
    v11 = v10;
    sub_22B7DA7D8();

    v12 = sub_22B7DA828();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  }

  else
  {
    v12 = sub_22B7DA828();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  sub_22B7AA5D4(v5, v7);
  sub_22B7DA828();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_22B4D0D64(v7, &qword_27D8CFC90, &unk_22B7FE140);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = sub_22B7DA748();
    v15 = v16;
    (*(v13 + 8))(v7, v12);
  }

  v17 = MEMORY[0x277D837D0];
  *(v8 + 96) = MEMORY[0x277D837D0];
  v18 = sub_22B704A5C();
  *(v8 + 104) = v18;
  if (v15)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0x296C6C756E28;
  }

  v20 = 0xE600000000000000;
  if (v15)
  {
    v20 = v15;
  }

  *(v8 + 72) = v19;
  *(v8 + 80) = v20;
  v21 = [v9 error];
  if (!v21)
  {
    v24 = (v8 + 112);
    *(v8 + 136) = v17;
    *(v8 + 144) = v18;
    goto LABEL_16;
  }

  v26[1] = v21;
  sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
  v22 = sub_22B7DB6E8();
  v24 = (v8 + 112);
  *(v8 + 136) = v17;
  *(v8 + 144) = v18;
  if (!v23)
  {
LABEL_16:
    *v24 = 0x296C6C756E28;
    v23 = 0xE600000000000000;
    goto LABEL_17;
  }

  *v24 = v22;
LABEL_17:
  *(v8 + 120) = v23;
  return sub_22B7DB6B8();
}

void sub_22B7A675C()
{
  v1 = v0;
  v2 = sub_22B7DBD48();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B7DBD38();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22B7DB398();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = OBJC_IVAR___IMDSpotlightDaemonClient_indexes;
  v10 = MEMORY[0x277D84F90];
  *&v0[v9] = sub_22B71EA7C(MEMORY[0x277D84F90]);
  v11 = OBJC_IVAR___IMDSpotlightDaemonClient_interestingProtectionClasses;
  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v13 = *MEMORY[0x277CCA1A0];
  *(inited + 32) = sub_22B7DB6A8();
  *(inited + 40) = v14;
  v15 = sub_22B7179DC(inited);
  swift_setDeallocating();
  sub_22B74763C(inited + 32);
  *&v0[v11] = v15;
  v20 = OBJC_IVAR___IMDSpotlightDaemonClient_queue;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DACD8();
  v25 = v10;
  sub_22B76CBD8(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v22 + 104))(v21, *MEMORY[0x277D85260], v23);
  *&v0[v20] = sub_22B7DBD88();
  v16 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v11) = [v16 isSpotlightDaemonDelegateEnabled];

  if (v11)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D18EA0]) init];
    *&v1[OBJC_IVAR___IMDSpotlightDaemonClient_importer] = v17;
    v24.receiver = v1;
    v24.super_class = IMDSpotlightDaemonClient;
    v18 = objc_msgSendSuper2(&v24, sel_init);
    [*&v18[OBJC_IVAR___IMDSpotlightDaemonClient_importer] setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

id sub_22B7A6B14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___IMDSpotlightDaemonClient_indexes;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_22B723648(a1, a2), (v9 & 1) != 0))
  {
    v18 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    return v18;
  }

  else
  {
    swift_endAccess();
    v11 = objc_allocWithZone(MEMORY[0x277CC34A8]);
    v12 = sub_22B7DB678();
    v13 = sub_22B7DB678();
    v14 = [v11 initWithName:v12 bundleIdentifier:v13];

    swift_beginAccess();

    v15 = v14;
    v16 = *(v3 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_22B769430(v15, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v6) = v19;
    swift_endAccess();
    return v15;
  }
}

void sub_22B7A6CA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v12 = sub_22B7DB2B8();
  sub_22B4CFA74(v12, qword_28141F4B0);

  v13 = sub_22B7DB298();
  v14 = sub_22B7DBC78();

  v24 = a2;
  if (os_log_type_enabled(v13, v14))
  {
    v23 = a5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446722;
    *(v15 + 4) = sub_22B4CFAAC(0xD000000000000044, 0x800000022B811C80, aBlock);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_22B4CFAAC(a1, a2, aBlock);
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_22B4CFAAC(a3, a4, aBlock);
    _os_log_impl(&dword_22B4CC000, v13, v14, "%{public}s bundleID: %{public}s protectionClass: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v16, -1, -1);
    v17 = v15;
    a5 = v23;
    MEMORY[0x231898D60](v17, -1, -1);
  }

  if (sub_22B4D90D4(a3, a4, *(v6 + OBJC_IVAR___IMDSpotlightDaemonClient_interestingProtectionClasses)))
  {
    v18 = *(v6 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
    v19 = sub_22B7A6B14(a1, v24);
    aBlock[4] = a5;
    aBlock[5] = a6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4D22C0;
    aBlock[3] = &unk_283F1F9F0;
    v20 = _Block_copy(aBlock);

    [v18 searchableIndex:v19 reindexAllSearchableItemsWithAcknowledgementHandler:v20];
    _Block_release(v20);
  }

  else
  {
    osloga = sub_22B7DB298();
    v21 = sub_22B7DBC78();
    if (os_log_type_enabled(osloga, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22B4CC000, osloga, v21, "Ignoring reindex request for uninteresting protection class", v22, 2u);
      MEMORY[0x231898D60](v22, -1, -1);
    }
  }
}

void sub_22B7A70CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v14 = sub_22B7DB2B8();
  sub_22B4CFA74(v14, qword_28141F4B0);

  v15 = sub_22B7DB298();
  v16 = sub_22B7DBC78();

  v32 = a2;
  if (os_log_type_enabled(v15, v16))
  {
    v30 = a5;
    v17 = swift_slowAlloc();
    v31 = a7;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446978;
    *(v17 + 4) = sub_22B4CFAAC(0xD00000000000004ELL, 0x800000022B811C30, aBlock);
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_22B4CFAAC(a2, a3, aBlock);
    *(v17 + 22) = 2050;
    *(v17 + 24) = *(a1 + 16);

    *(v17 + 32) = 2080;
    v19 = MEMORY[0x2318952A0](a1, MEMORY[0x277D837D0]);
    v21 = sub_22B4CFAAC(v19, v20, aBlock);

    *(v17 + 34) = v21;
    _os_log_impl(&dword_22B4CC000, v15, v16, "%{public}s bundleID: %{public}s identifiersCount: %{public}ld identifiers: %s", v17, 0x2Au);
    swift_arrayDestroy();
    v22 = v18;
    a7 = v31;
    MEMORY[0x231898D60](v22, -1, -1);
    v23 = v17;
    a5 = v30;
    MEMORY[0x231898D60](v23, -1, -1);
  }

  else
  {
  }

  if (sub_22B4D90D4(a4, a5, *(v7 + OBJC_IVAR___IMDSpotlightDaemonClient_interestingProtectionClasses)))
  {
    v24 = *(v7 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
    v25 = sub_22B7A6B14(v32, a3);
    v26 = sub_22B7DB8F8();
    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4D22C0;
    aBlock[3] = &unk_283F1F9A0;
    v27 = _Block_copy(aBlock);

    [v24 searchableIndex:v25 reindexSearchableItemsWithIdentifiers:v26 acknowledgementHandler:v27];
    _Block_release(v27);
  }

  else
  {
    osloga = sub_22B7DB298();
    v28 = sub_22B7DBC78();
    if (os_log_type_enabled(osloga, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B4CC000, osloga, v28, "Ignoring reindex request for uninteresting protection class", v29, 2u);
      MEMORY[0x231898D60](v29, -1, -1);
    }
  }
}

uint64_t sub_22B7A75F0(void *a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, void *aBlock, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_22B7DB6A8();
  v13 = v12;
  v14 = sub_22B7DB6A8();
  v16 = v15;
  v17 = sub_22B7DB6A8();
  v19 = v18;
  v20 = sub_22B7DB6A8();
  v22 = v21;
  _Block_copy(v10);
  v23 = a1;
  a9(v11, v13, v14, v16, v17, v19, v20, v22, a7, v23, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_22B7A7848(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_28141F4B0);

  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC78();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446978;
    *(v9 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B811A80, &v42);
    *(v9 + 12) = 2050;
    if (a1 >> 62)
    {
      v11 = sub_22B7DC1C8();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 14) = v11;

    *(v9 + 22) = 2050;
    *(v9 + 24) = a2;
    *(v9 + 32) = 2080;
    if (a1 >> 62)
    {
      v12 = sub_22B7DC1C8();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x277D84F90];
    v39 = v10;
    if (v12)
    {
      v41 = MEMORY[0x277D84F90];
      sub_22B7AB6B4(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return;
      }

      v36 = v8;
      v37 = v7;
      v38 = v3;
      v13 = v41;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = 0;
        do
        {
          MEMORY[0x231895C80](v14, a1);
          v15 = [swift_unknownObjectRetain() uniqueIdentifier];
          v16 = sub_22B7DB6A8();
          v18 = v17;
          swift_unknownObjectRelease_n();

          v20 = *(v41 + 16);
          v19 = *(v41 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_22B7AB6B4((v19 > 1), v20 + 1, 1);
          }

          ++v14;
          *(v41 + 16) = v20 + 1;
          v21 = v41 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
        }

        while (v12 != v14);
      }

      else
      {
        v22 = (a1 + 32);
        do
        {
          v23 = *v22;
          v24 = [v23 uniqueIdentifier];
          v25 = sub_22B7DB6A8();
          v27 = v26;

          v29 = *(v41 + 16);
          v28 = *(v41 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_22B7AB6B4((v28 > 1), v29 + 1, 1);
          }

          *(v41 + 16) = v29 + 1;
          v30 = v41 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
          ++v22;
          --v12;
        }

        while (v12);
      }

      v3 = v38;
      v7 = v37;
      v8 = v36;
    }

    v31 = MEMORY[0x2318952A0](v13, MEMORY[0x277D837D0]);
    v33 = v32;

    v34 = sub_22B4CFAAC(v31, v33, &v42);

    *(v9 + 34) = v34;
    _os_log_impl(&dword_22B4CC000, v7, v8, "%{public}s itemCount: %{public}ld mask: %{public}ld itemIdentifiers: %s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v39, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  else
  {
  }

  v35 = *(v3 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
  sub_22B4D01A0(0, &qword_28141F260, 0x277CC34B0);
  v40 = sub_22B7DB8F8();
  [v35 searchableItemsDidUpdate:v40 mask:a2];
}

void sub_22B7A7D60()
{
  v0 = [objc_opt_self() sharedInstance];
  sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
  v1 = sub_22B7DB568();
  [v0 updateChatsUsingMessageGUIDsAndSummaries_];
}

void sub_22B7A7EB8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_22B7DB8F8();
  [v2 updateChatsUsingMessageGUIDsWithPriority_];

  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_28141F4B0);

  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x2318952A0](a1, MEMORY[0x277D837D0]);
    v11 = sub_22B4CFAAC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Received prioirity messages %s, and relay to watch", v7, 0xCu);
    sub_22B4CFB78(v8);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v12 = [objc_opt_self() sharedInstance];
  v13 = sub_22B7DB8F8();
  [v12 relayPriorityMessageFor_];
}

uint64_t sub_22B7A8150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a3;
  v9 = sub_22B7DB348();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22B7DB398();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v40 = a2;
  v18 = sub_22B7DB2B8();
  sub_22B4CFA74(v18, qword_28141F4B0);

  v19 = sub_22B7DB298();
  v20 = sub_22B7DBC78();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v10;
    aBlock[0] = v37;
    *v21 = 136446978;
    *(v21 + 4) = sub_22B4CFAAC(0xD000000000000042, 0x800000022B8119E0, aBlock);
    *(v21 + 12) = 2050;
    *(v21 + 14) = *(a1 + 16);

    *(v21 + 22) = 2080;
    v22 = MEMORY[0x2318952A0](a1, MEMORY[0x277D837D0]);
    v36 = v20;
    v24 = v5;
    v25 = sub_22B4CFAAC(v22, v23, aBlock);

    *(v21 + 24) = v25;
    v5 = v24;
    *(v21 + 32) = 2048;
    v26 = v40;
    *(v21 + 34) = v40;
    _os_log_impl(&dword_22B4CC000, v19, v36, "%{public}s guidsCount: %{public}ld guids: %s options: %ld", v21, 0x2Au);
    v27 = v37;
    swift_arrayDestroy();
    v28 = v27;
    v10 = v38;
    MEMORY[0x231898D60](v28, -1, -1);
    MEMORY[0x231898D60](v21, -1, -1);
  }

  else
  {

    v26 = v40;
  }

  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v29 = sub_22B7DBD58();
  v30 = swift_allocObject();
  v30[2] = a1;
  v30[3] = v26;
  v31 = v39;
  v30[4] = v5;
  v30[5] = v31;
  v30[6] = a4;
  aBlock[4] = sub_22B7A8E28;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F810;
  v32 = _Block_copy(aBlock);

  v33 = v5;

  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v17, v13, v32);
  _Block_release(v32);

  (*(v10 + 8))(v13, v9);
  return (*(v41 + 8))(v17, v42);
}

void sub_22B7A862C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22B7DB8F8();
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a4;
    v12[4] = a5;
    v15[4] = sub_22B7A8E38;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_22B7A8ABC;
    v15[3] = &unk_283F1F860;
    v13 = _Block_copy(v15);
    v14 = a3;

    [v10 retrieveLocalFileURLForFileTransferWithGUIDs:v11 options:a2 completion:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B7A8780(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v34 = a7;
  v35 = a8;
  v30 = a2;
  v31 = a4;
  v32 = a10;
  v33 = a6;
  v16 = sub_22B7DB348();
  v39 = *(v16 - 8);
  v17 = *(v39 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22B7DB398();
  v36 = *(v38 - 8);
  v20 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a11 + OBJC_IVAR___IMDSpotlightDaemonClient_queue);
  v23 = swift_allocObject();
  *(v23 + 16) = a12;
  *(v23 + 24) = a13;
  *(v23 + 32) = a1;
  v24 = v31;
  *(v23 + 40) = v30;
  *(v23 + 48) = a3;
  *(v23 + 56) = v24;
  *(v23 + 64) = a5;
  v25 = v34;
  *(v23 + 72) = v33;
  *(v23 + 80) = v25;
  *(v23 + 88) = v35;
  *(v23 + 96) = a9;
  v26 = v32;
  *(v23 + 104) = v32;
  aBlock[4] = sub_22B7A8E70;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F8B0;
  v27 = _Block_copy(aBlock);

  v28 = v26;
  sub_22B7DACD8();
  v40 = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v22, v19, v27);
  _Block_release(v27);
  (*(v39 + 8))(v19, v16);
  (*(v36 + 8))(v22, v38);
}

uint64_t sub_22B7A8ABC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *(a1 + 40);
  v25 = *(a1 + 32);
  if (a3)
  {
    v23 = sub_22B7DB6A8();
    v13 = v12;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = 0;
    v13 = 0;
    if (a4)
    {
LABEL_3:
      v14 = sub_22B7DB6A8();
      v16 = v15;
      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v17 = 0;
      if (a6)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v14 = 0;
  v16 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v17 = sub_22B7DB6A8();
  a5 = v18;
  if (a6)
  {
LABEL_5:
    v19 = sub_22B7DB6A8();
    a6 = v20;
    goto LABEL_10;
  }

LABEL_9:
  v19 = 0;
LABEL_10:

  v21 = a7;
  v25(a2, v23, v13, v14, v16, v17, a5, v19, a6, a7);
}

void sub_22B7A8CCC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a5;
  if (a3)
  {
    v14 = sub_22B7DB678();
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a5)
  {
LABEL_3:
    v12 = sub_22B7DB678();
  }

LABEL_4:
  if (a7)
  {
    a7 = sub_22B7DB678();
  }

  if (a9)
  {
    v15 = sub_22B7DB678();
    if (a10)
    {
LABEL_8:
      v16 = sub_22B7DA6E8();
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
    if (a10)
    {
      goto LABEL_8;
    }
  }

  v16 = 0;
LABEL_13:
  v17 = v16;
  (*(a11 + 16))(a11, a1 & 1, v14, v12, a7, v15);
}

uint64_t sub_22B7A8E70()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 96);
  return (*(v0 + 16))(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v2, *(v0 + 104));
}

void sub_22B7A8EC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = a10;
  v46[1] = *MEMORY[0x277D85DE8];
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v18 = sub_22B7DB2B8();
  sub_22B4CFA74(v18, qword_28141F4B0);

  v19 = sub_22B7DB298();
  v20 = sub_22B7DBC78();

  v42 = v20;
  v21 = os_log_type_enabled(v19, v20);
  v22 = a8;
  if (v21)
  {
    v23 = swift_slowAlloc();
    v43 = a5;
    v24 = swift_slowAlloc();
    v46[0] = v24;
    *v23 = 136447490;
    *(v23 + 4) = sub_22B4CFAAC(0xD000000000000061, 0x800000022B811BC0, v46);
    *(v23 + 12) = 2082;
    v25 = a1;
    *(v23 + 14) = sub_22B4CFAAC(a1, a2, v46);
    *(v23 + 22) = 2082;
    *(v23 + 24) = sub_22B4CFAAC(a3, a4, v46);
    *(v23 + 32) = 2080;
    *(v23 + 34) = sub_22B4CFAAC(v43, a6, v46);
    *(v23 + 42) = 2080;
    *(v23 + 44) = sub_22B4CFAAC(a7, v22, v46);
    *(v23 + 52) = 2048;
    *(v23 + 54) = a9;
    _os_log_impl(&dword_22B4CC000, v19, v42, "%{public}s bundleID: %{public}s protectionClass: %{public}s itemIdentifier: %s typeIdentifier: %s options: %ld", v23, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v24, -1, -1);
    v26 = v23;
    v17 = a10;
    MEMORY[0x231898D60](v26, -1, -1);
  }

  else
  {

    v25 = a1;
  }

  v27 = *(v17 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
  v28 = sub_22B7A6B14(v25, a2);
  v29 = sub_22B7DB678();
  v30 = sub_22B7DB678();
  v46[0] = 0;
  v31 = [v27 dataForSearchableIndex:v28 itemIdentifier:v29 typeIdentifier:v30 error:v46];

  v32 = v46[0];
  if (v31)
  {
    v33 = sub_22B7DA848();
    v35 = v34;

    sub_22B705E44(v33, v35);
    v36 = sub_22B7DA838();
    (*(a11 + 16))(a11, v36, 0);

    sub_22B705E98(v33, v35);
    sub_22B705E98(v33, v35);
  }

  else
  {
    v37 = v32;
    v38 = sub_22B7DA6F8();

    swift_willThrow();
    v39 = v38;
    v40 = sub_22B7DA6E8();
    (*(a11 + 16))(a11, 0, v40);
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B7A92AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = a5;
  v73 = a7;
  v65 = a3;
  v69 = a1;
  v70 = a10;
  v77[1] = *MEMORY[0x277D85DE8];
  v15 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v63 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v66 = &v61 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  v26 = sub_22B7DA828();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v67 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v71 = v27;
  v74 = a11;
  v76 = a9;
  v30 = sub_22B7DB2B8();
  sub_22B4CFA74(v30, qword_28141F4B0);

  v31 = sub_22B7DB298();
  v32 = sub_22B7DBC78();

  v33 = os_log_type_enabled(v31, v32);
  v75 = a8;
  v64 = v21;
  v68 = v25;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v62 = v26;
    v36 = v35;
    v77[0] = v35;
    *v34 = 136447490;
    *(v34 + 4) = sub_22B4CFAAC(0xD000000000000064, 0x800000022B811B50, v77);
    *(v34 + 12) = 2082;
    v37 = v69;
    *(v34 + 14) = sub_22B4CFAAC(v69, a2, v77);
    *(v34 + 22) = 2082;
    *(v34 + 24) = sub_22B4CFAAC(v65, a4, v77);
    *(v34 + 32) = 2080;
    *(v34 + 34) = sub_22B4CFAAC(v72, a6, v77);
    *(v34 + 42) = 2080;
    *(v34 + 44) = sub_22B4CFAAC(v73, v75, v77);
    *(v34 + 52) = 2048;
    *(v34 + 54) = v76;
    _os_log_impl(&dword_22B4CC000, v31, v32, "%{public}s bundleID: %{public}s protectionClass: %{public}s itemIdentifier: %s typeIdentifier: %s options: %ld", v34, 0x3Eu);
    swift_arrayDestroy();
    v38 = v36;
    v26 = v62;
    MEMORY[0x231898D60](v38, -1, -1);
    MEMORY[0x231898D60](v34, -1, -1);
  }

  else
  {

    v37 = v69;
  }

  v39 = *(v70 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
  v40 = sub_22B7A6B14(v37, a2);
  v41 = sub_22B7DB678();
  v42 = sub_22B7DB678();
  v77[0] = 0;
  v43 = [v39 fileURLForSearchableIndex:v40 itemIdentifier:v41 typeIdentifier:v42 options:v76 error:v77];

  v44 = v77[0];
  if (v43)
  {
    v45 = v67;
    sub_22B7DA7D8();
    v46 = v44;

    v47 = v71;
    v48 = v68;
    (*(v71 + 16))(v68, v45, v26);
    (*(v47 + 56))(v48, 0, 1, v26);
    v49 = v66;
    sub_22B7AA644(v48, v66);
    if ((*(v47 + 48))(v49, 1, v26) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_22B7DA788();
      (*(v47 + 8))(v49, v26);
    }

    (*(v74 + 16))(v74, v50, 0);

    sub_22B4D0D64(v48, &qword_27D8CFC90, &unk_22B7FE140);
    result = (*(v47 + 8))(v45, v26);
  }

  else
  {
    v51 = v77[0];
    v52 = sub_22B7DA6F8();

    swift_willThrow();
    v53 = v71;
    v54 = v64;
    (*(v71 + 56))(v64, 1, 1, v26);
    v55 = v63;
    sub_22B7AA644(v54, v63);
    LODWORD(v51) = (*(v53 + 48))(v55, 1, v26);
    v56 = v52;
    if (v51 == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_22B7DA788();
      (*(v53 + 8))(v55, v26);
    }

    v59 = sub_22B7DA6E8();
    (*(v74 + 16))(v74, v57, v59);

    result = sub_22B4D0D64(v54, &qword_27D8CFC90, &unk_22B7FE140);
  }

  v60 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B7A993C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a10;
  v81[1] = *MEMORY[0x277D85DE8];
  if (qword_28141F4A8 != -1)
  {
    swift_once();
  }

  v16 = sub_22B7DB2B8();
  sub_22B4CFA74(v16, qword_28141F4B0);

  v17 = sub_22B7DB298();
  v18 = sub_22B7DBC78();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v81[0] = v20;
    *v19 = 136447746;
    *(v19 + 4) = sub_22B4CFAAC(0xD000000000000066, 0x800000022B811AB0, v81);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_22B4CFAAC(a1, a2, v81);
    *(v19 + 22) = 2082;
    *(v19 + 24) = sub_22B4CFAAC(a3, a4, v81);
    *(v19 + 32) = 2050;
    *(v19 + 34) = *(a5 + 16);

    *(v19 + 42) = 2080;
    v21 = MEMORY[0x2318952A0](a5, MEMORY[0x277D837D0]);
    v23 = sub_22B4CFAAC(v21, v22, v81);

    *(v19 + 44) = v23;
    *(v19 + 52) = 2080;
    *(v19 + 54) = sub_22B4CFAAC(a6, a7, v81);
    *(v19 + 62) = 2048;
    *(v19 + 64) = a8;
    _os_log_impl(&dword_22B4CC000, v17, v18, "%{public}s bundleID: %{public}s protectionClass: %{public}s itemIdentifiersCount: %{public}ld itemIdentifiers: %s typeIdentifier: %s options: %ld", v19, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v20, -1, -1);
    MEMORY[0x231898D60](v19, -1, -1);

    v24 = *(a5 + 16);
    if (v24)
    {
LABEL_5:
      v25 = *(a9 + OBJC_IVAR___IMDSpotlightDaemonClient_importer);
      v26 = sub_22B7A6B14(a1, a2);
      v27 = sub_22B7DB8F8();
      v28 = sub_22B7DB678();
      v81[0] = 0;
      v29 = [v25 fileURLsForSearchableIndex:v26 itemIdentifiers:v27 typeIdentifier:v28 options:a8 error:v81];

      v30 = v81[0];
      if (v29)
      {
        sub_22B4D01A0(0, &unk_28141F1B8, 0x277CC3400);
        v31 = sub_22B7DB918();
        v32 = v30;

        v33 = sub_22B7DB298();
        v34 = sub_22B7DBC78();
        if (os_log_type_enabled(v33, v34))
        {
          v76 = v34;
          v35 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v81[0] = v74;
          *v35 = 136446978;
          *(v35 + 4) = sub_22B4CFAAC(0xD000000000000066, 0x800000022B811AB0, v81);
          *(v35 + 12) = 2050;
          if (v31 >> 62)
          {
            v36 = sub_22B7DC1C8();
          }

          else
          {
            v36 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v35 + 14) = v36;

          *(v35 + 22) = 2050;
          *(v35 + 24) = v24;

          *(v35 + 32) = 2080;
          if (v31 >> 62)
          {
            v37 = sub_22B7DC1C8();
          }

          else
          {
            v37 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          bufb = v35;
          v57 = MEMORY[0x277D84F90];
          if (v37)
          {
            v80 = MEMORY[0x277D84F90];
            sub_22B7AB6B4(0, v37 & ~(v37 >> 63), 0);
            if (v37 < 0)
            {
              __break(1u);
            }

            v58 = 0;
            v57 = v80;
            do
            {
              if ((v31 & 0xC000000000000001) != 0)
              {
                v59 = MEMORY[0x231895C80](v58, v31);
              }

              else
              {
                v59 = *(v31 + 8 * v58 + 32);
              }

              v60 = v59;
              v61 = sub_22B7A6440();
              v63 = v62;

              v65 = *(v80 + 16);
              v64 = *(v80 + 24);
              if (v65 >= v64 >> 1)
              {
                sub_22B7AB6B4((v64 > 1), v65 + 1, 1);
              }

              ++v58;
              *(v80 + 16) = v65 + 1;
              v66 = v80 + 16 * v65;
              *(v66 + 32) = v61;
              *(v66 + 40) = v63;
            }

            while (v37 != v58);
            v15 = a10;
          }

          v67 = MEMORY[0x2318952A0](v57, MEMORY[0x277D837D0]);
          v69 = v68;

          v70 = sub_22B4CFAAC(v67, v69, v81);

          *(bufb + 34) = v70;
          _os_log_impl(&dword_22B4CC000, v33, v76, "%{public}s got %{public}ld results for %{public}ld items: %s", bufb, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v74, -1, -1);
          MEMORY[0x231898D60](bufb, -1, -1);
        }

        else
        {
        }

        v71 = sub_22B7DB8F8();
        (*(v15 + 16))(v15, v71, 0);
      }

      else
      {
        v42 = v81[0];
        v43 = sub_22B7DA6F8();

        swift_willThrow();

        v44 = v43;
        v45 = sub_22B7DB298();
        v46 = sub_22B7DBC98();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v81[0] = v49;
          *v47 = 136446978;
          *(v47 + 4) = sub_22B4CFAAC(0xD000000000000066, 0x800000022B811AB0, v81);
          *(v47 + 12) = 2050;
          *(v47 + 14) = v24;

          *(v47 + 22) = 2112;
          v50 = v43;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 24) = v51;
          *v48 = v51;
          *(v47 + 32) = 2080;
          v52 = MEMORY[0x2318952A0](a5, MEMORY[0x277D837D0]);
          v54 = sub_22B4CFAAC(v52, v53, v81);

          *(v47 + 34) = v54;
          _os_log_impl(&dword_22B4CC000, v45, v46, "%{public}s failed to retrieve file URLs for %{public}ld items: %@ - item identifiers: %s", v47, 0x2Au);
          sub_22B4D0D64(v48, &unk_27D8CEC60, &qword_22B7F9E20);
          MEMORY[0x231898D60](v48, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v49, -1, -1);
          MEMORY[0x231898D60](v47, -1, -1);
        }

        else
        {
        }

        v55 = v43;
        v56 = sub_22B7DA6E8();
        (*(a10 + 16))(a10, 0, v56);
      }

      v72 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {

    v24 = *(a5 + 16);
    if (v24)
    {
      goto LABEL_5;
    }
  }

  v38 = sub_22B7DB298();
  v39 = sub_22B7DBC78();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_22B4CC000, v38, v39, "Bailing on request for an empty array of item identifiers", v40, 2u);
    MEMORY[0x231898D60](v40, -1, -1);
  }

  sub_22B4D01A0(0, &unk_28141F1B8, 0x277CC3400);
  bufa = sub_22B7DB8F8();
  (*(a10 + 16))(a10);
  v41 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B7AA288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22B7DB348();
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B7DB398();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v15 = sub_22B7DBD58();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);

  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v20 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v19);
}

unint64_t sub_22B7AA56C()
{
  result = qword_28141F1B0;
  if (!qword_28141F1B0)
  {
    sub_22B4D01A0(255, &unk_28141F1B8, 0x277CC3400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F1B0);
  }

  return result;
}

uint64_t sub_22B7AA5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B7AA644(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B7AA6F4()
{
  sub_22B7DC2E8();
  v1 = *(v0 + 120);
  v2 = sub_22B7DBF38();

  v8 = v2;
  MEMORY[0x231895140](0x2820736B73617420, 0xE800000000000000);
  v3 = *(v0 + 112);
  sub_22B7DBE78();
  v4 = sub_22B7DB6D8();
  v6 = v5;

  MEMORY[0x231895140](v4, v6);

  MEMORY[0x231895140](0x29656E616C20, 0xE600000000000000);
  return v8;
}

id sub_22B7AA7C8()
{
  type metadata accessor for IMDPersistentTaskNotifier();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isPersistentTaskNotificationsEnabled];

  if (v2 && (IMIsRunningInUnitTesting() & 1) == 0 && (result = [objc_allocWithZone(MEMORY[0x277D1A9A8]) init]) != 0)
  {
    *(v0 + 112) = result;
  }

  else
  {
    *(v0 + 112) = 0;

    v0 = 0;
  }

  qword_281422740 = v0;
  return result;
}

uint64_t sub_22B7AA884(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      return 0xD000000000000012;
    }

    if (a3 != 4)
    {
      return 0x2064656D75736572;
    }

    sub_22B7DC2E8();

    v15 = 0xD000000000000018;
    sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
    sub_22B7665AC();
    v6 = sub_22B7DB5F8();
    MEMORY[0x231895140](v6);

    return v15;
  }

  if (!a3)
  {
    v15 = 0;
    sub_22B7DC2E8();
    v8 = "ied";
    v9 = "suspended due to throttling";
    v10 = 0xD000000000000025;
    if (a1 != 2)
    {
      v10 = 0xD00000000000002DLL;
      v9 = " higher priority work";
    }

    v11 = 0xD00000000000001BLL;
    if (a1)
    {
      v8 = "suspended by DAS";
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (a1 <= 1u)
    {
      v13 = v8;
    }

    else
    {
      v13 = v9;
    }

    MEMORY[0x231895140](v12, v13 | 0x8000000000000000);

    MEMORY[0x231895140](0x7365636F7270202CLL, 0xEC00000020646573);
    v14 = sub_22B7DC4E8();
    MEMORY[0x231895140](v14);

    MEMORY[0x231895140](0x736B73617420, 0xE600000000000000);
    return v15;
  }

  v3 = 0xD00000000000001ELL;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000010;
  if ((a1 & 1) == 0)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (a3 == 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

void sub_22B7AAB3C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = *(v3 + 112);
  if (v4)
  {
    v7 = sub_22B7DB678();
    sub_22B7AA6F4();
    MEMORY[0x231895140](32, 0xE100000000000000);
    v8 = sub_22B7AA884(a2, a3, 0);
    MEMORY[0x231895140](v8);

    v9 = sub_22B7DB678();

    [v4 postNotificationWithTitle:v7 body:v9];
  }
}

void sub_22B7AAC44(uint64_t a1, char a2)
{
  v3 = *(v2 + 112);
  if (v3)
  {
    v5 = sub_22B7DB678();
    sub_22B7AA6F4();
    MEMORY[0x231895140](32, 0xE100000000000000);
    if (a2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a2)
    {
      v7 = "couldn't be withdrawn from DAS";
    }

    else
    {
      v7 = "submitted to DAS";
    }

    MEMORY[0x231895140](v6, v7 | 0x8000000000000000);

    v8 = sub_22B7DB678();

    [v3 postNotificationWithTitle:v5 body:v8];
  }
}

void sub_22B7AAD68(uint64_t a1, char a2)
{
  v3 = *(v2 + 112);
  if (v3)
  {
    v5 = sub_22B7DB678();
    sub_22B7AA6F4();
    MEMORY[0x231895140](32, 0xE100000000000000);
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a2)
    {
      v7 = "couldn't be submitted to DAS";
    }

    else
    {
      v7 = "updated with revisions: ";
    }

    MEMORY[0x231895140](v6, v7 | 0x8000000000000000);

    v8 = sub_22B7DB678();

    [v3 postNotificationWithTitle:v5 body:v8];
  }
}

void sub_22B7AAE8C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = sub_22B7DB678();
    sub_22B7AA6F4();
    MEMORY[0x231895140](32, 0xE100000000000000);
    MEMORY[0x231895140](0x2064656D75736572, 0xEE00534144207962);
    v3 = sub_22B7DB678();

    [v1 postNotificationWithTitle:v2 body:v3];
  }
}

uint64_t sub_22B7AAF84()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22B7AAFE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v4, 0);
    v6 = (a2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v16 + 16);
      v9 = *(v16 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_22B7AB6B4((v9 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  v12 = *(v3 + 112);
  if (v12)
  {
    v13 = sub_22B7DB678();
    sub_22B7AA6F4();
    MEMORY[0x231895140](32, 0xE100000000000000);
    sub_22B7DC2E8();

    sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
    sub_22B7665AC();
    v14 = sub_22B7DB5F8();
    MEMORY[0x231895140](v14);

    MEMORY[0x231895140](0xD000000000000018, 0x800000022B811D70);

    v15 = sub_22B7DB678();

    [v12 postNotificationWithTitle:v13 body:v15];
  }

  else
  {
  }
}

void sub_22B7AB20C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = sub_22B7DB678();
    sub_22B7AA6F4();
    MEMORY[0x231895140](32, 0xE100000000000000);
    MEMORY[0x231895140](0xD000000000000012, 0x800000022B811D50);
    v3 = sub_22B7DB678();

    [v1 postNotificationWithTitle:v2 body:v3];
  }
}

void FileEventFlags.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = *v0;
LABEL_2:
  if (v1 <= 0x16)
  {
    v4 = 22;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_283F1B690 + 24 * v1 + 32);
  while (v1 != 22)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 6;
    v8 = *v6;
    v6 += 6;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22B7AB714(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_22B7AB714((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      *(v13 + 8) = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_22B7AB6B4((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7665AC();
  sub_22B7DB5F8();
}

unint64_t FileEventFlags.init(rawValue:)@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_22B7AB674(void *a1, int64_t a2, char a3)
{
  result = sub_22B7AC35C(a1, a2, a3, *v3, &qword_27D8CF920, &qword_22B7FD658, &qword_27D8CF928, &qword_22B7FD660);
  *v3 = result;
  return result;
}

char *sub_22B7AB6B4(char *a1, int64_t a2, char a3)
{
  result = sub_22B7AB964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B7AB6D4(char *a1, int64_t a2, char a3)
{
  result = sub_22B7ABA70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B7AB6F4(char *a1, int64_t a2, char a3)
{
  result = sub_22B7ABB74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B7AB714(void *a1, int64_t a2, char a3)
{
  result = sub_22B7ABDC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22B7AB738()
{
  result = qword_27D8CF8F0;
  if (!qword_27D8CF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF8F0);
  }

  return result;
}

unint64_t sub_22B7AB790()
{
  result = qword_27D8CF8F8;
  if (!qword_27D8CF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF8F8);
  }

  return result;
}

unint64_t sub_22B7AB7E8()
{
  result = qword_27D8CF900;
  if (!qword_27D8CF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF900);
  }

  return result;
}

unint64_t sub_22B7AB840()
{
  result = qword_27D8CF908;
  if (!qword_27D8CF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF908);
  }

  return result;
}

char *sub_22B7AB8A4(char *a1, int64_t a2, char a3)
{
  result = sub_22B7ABF10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B7AB8C4(char *a1, int64_t a2, char a3)
{
  result = sub_22B7AC014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B7AB8E4(void *a1, int64_t a2, char a3)
{
  result = sub_22B7AC118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B7AB904(char *a1, int64_t a2, char a3)
{
  result = sub_22B7AC24C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B7AB924(void *a1, int64_t a2, char a3)
{
  result = sub_22B7AC35C(a1, a2, a3, *v3, &qword_27D8CF918, &qword_22B7FD650, &qword_27D8CF590, &unk_22B7F97C0);
  *v3 = result;
  return result;
}

char *sub_22B7AB964(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_22B7ABA70(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&qword_27D8CDA58, &qword_22B7FA088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22B7ABB74(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&qword_27D8CDA20, &unk_22B7FA040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_22B7ABC80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CDA60, &unk_22B7FA098);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CD650, &unk_22B7F9750);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B7ABDC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CF940, &qword_22B7FD678);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CF948, qword_22B7FD680);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B7ABF10(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&qword_27D8CD9D8, &qword_22B7F9FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22B7AC014(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(&qword_27D8CDA28, &unk_22B7FB420);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_22B7AC118(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CF910, &qword_22B7FD648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B7AC24C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_22B7AC35C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_22B6F0AD4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_22B7AC494()
{
  result = qword_27D8CF968;
  if (!qword_27D8CF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF968);
  }

  return result;
}

unint64_t sub_22B7AC4EC()
{
  result = qword_27D8CF970;
  if (!qword_27D8CF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF970);
  }

  return result;
}

uint64_t type metadata accessor for DaemonRequestIntentFileOutput()
{
  result = qword_27D8CFA08;
  if (!qword_27D8CFA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B7AC5D4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF950);
  sub_22B4CFA74(v0, qword_27D8CF950);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B7AC640()
{
  v0 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_22B7DA718();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_22B7DA628();
  sub_22B6F24F4(v7, qword_27D8D4940);
  sub_22B4CFA74(v7, qword_27D8D4940);
  sub_22B7DA708();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_22B7DA618();
}

unint64_t sub_22B7AC7A4()
{
  result = qword_27D8CF980;
  if (!qword_27D8CF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF980);
  }

  return result;
}

unint64_t sub_22B7AC7FC()
{
  result = qword_27D8CF990;
  if (!qword_27D8CF990)
  {
    sub_22B6FB8C4(&qword_27D8CF998, qword_22B7FD708);
    sub_22B7B03A8(&qword_27D8CF988, type metadata accessor for DaemonRequestIntentFileOutput);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF990);
  }

  return result;
}

uint64_t sub_22B7AC8B0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_22B7ACA40();
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

unint64_t sub_22B7ACA40()
{
  result = qword_27D8CF9B8;
  if (!qword_27D8CF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF9B8);
  }

  return result;
}

uint64_t sub_22B7ACBA0(uint64_t a1)
{
  v2 = sub_22B7B03A8(&qword_27D8CF978, type metadata accessor for DaemonRequestIntentFileOutput);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22B7ACC64(uint64_t a1)
{
  v2 = sub_22B7B03A8(&qword_27D8CF9D0, type metadata accessor for DaemonRequestIntentFileOutput);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_22B7ACCE4()
{
  result = qword_27D8CF9F0;
  if (!qword_27D8CF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF9F0);
  }

  return result;
}

unint64_t sub_22B7ACD3C()
{
  result = qword_27D8CF9F8;
  if (!qword_27D8CF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF9F8);
  }

  return result;
}

unint64_t sub_22B7ACE14()
{
  result = qword_27D8CFA00;
  if (!qword_27D8CFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFA00);
  }

  return result;
}

uint64_t sub_22B7ACE68()
{
  v0 = sub_22B7DA718();
  sub_22B6F24F4(v0, qword_27D8D4958);
  sub_22B4CFA74(v0, qword_27D8D4958);
  return sub_22B7DA708();
}

uint64_t sub_22B7ACECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  v4 = sub_22B7DAFD8();
  v3[45] = v4;
  v5 = *(v4 - 8);
  v3[46] = v5;
  v6 = *(v5 + 64) + 15;
  v3[47] = swift_task_alloc();
  v7 = *(*(sub_22B6F0AD4(&qword_27D8CF530, &unk_22B7FCDB0) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v8 = *(*(sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v9 = sub_22B7DA718();
  v3[50] = v9;
  v10 = *(v9 - 8);
  v3[51] = v10;
  v11 = *(v10 + 64) + 15;
  v3[52] = swift_task_alloc();
  v12 = *(*(sub_22B6F0AD4(&qword_27D8CEB28, &qword_22B7FAF90) - 8) + 64) + 15;
  v3[53] = swift_task_alloc();
  v13 = type metadata accessor for DaemonRequestIntentFileOutput();
  v3[54] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v15 = *(*(sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0) - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v16 = sub_22B7DA4B8();
  v3[57] = v16;
  v17 = *(v16 - 8);
  v3[58] = v17;
  v18 = *(v17 + 64) + 15;
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v19 = sub_22B7DB018();
  v3[64] = v19;
  v20 = *(v19 - 8);
  v3[65] = v20;
  v21 = *(v20 + 64) + 15;
  v3[66] = swift_task_alloc();
  v22 = sub_22B7DA9A8();
  v3[67] = v22;
  v23 = *(v22 - 8);
  v3[68] = v23;
  v24 = *(v23 + 64) + 15;
  v3[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7AD240, 0, 0);
}

uint64_t sub_22B7AD240()
{
  v76 = v0;
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isRockNRollEnabled];

  if (!v2)
  {
    if (qword_27D8CCD08 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_27D8CF950);
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v9, v10, "perform[]: dropping intent because the feature is not enabled.", v11, 2u);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    sub_22B796928();
    swift_allocError();
    *v12 = 0;
    goto LABEL_19;
  }

  v3 = [objc_opt_self() sharedDaemon];
  if ([v3 respondsToSelector_])
  {
    v4 = [v3 intentProcessor];
    swift_unknownObjectRelease();
    sub_22B7DC118();
    swift_unknownObjectRelease();
    sub_22B6F0AD4(&qword_27D8CF4F0, &unk_22B7FCD60);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        v5 = *(v0 + 352);
        sub_22B4DFB0C((v0 + 56), v0 + 16);
        sub_22B7DA578();
        v6 = *(v0 + 296);
        if (v6)
        {
          v7 = *(v0 + 288);
        }

        else
        {
          v30 = *(v0 + 552);
          v31 = *(v0 + 544);
          v32 = *(v0 + 536);
          sub_22B7DA998();
          v7 = sub_22B7DA978();
          v6 = v33;
          (*(v31 + 8))(v30, v32);
        }

        *(v0 + 568) = v6;
        *(v0 + 560) = v7;
        if (qword_27D8CCD08 != -1)
        {
          swift_once();
        }

        v34 = sub_22B7DB2B8();
        *(v0 + 576) = sub_22B4CFA74(v34, qword_27D8CF950);

        v35 = sub_22B7DB298();
        v36 = sub_22B7DBCB8();

        v74 = v7;
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v75[0] = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_22B4CFAAC(v7, v6, v75);
          _os_log_impl(&dword_22B4CC000, v35, v36, "perform[%s]: decoding request", v37, 0xCu);
          sub_22B4CFB78(v38);
          MEMORY[0x231898D60](v38, -1, -1);
          MEMORY[0x231898D60](v37, -1, -1);
        }

        v39 = *(v0 + 528);
        v41 = *(v0 + 504);
        v40 = *(v0 + 512);
        v42 = v0;
        v43 = *(v0 + 464);
        v44 = *(v42 + 57);
        v45 = *(v42 + 43);
        sub_22B7DA578();
        v46 = sub_22B7DA498();
        v48 = v47;
        v49 = *(v43 + 8);
        *(v42 + 73) = v49;
        *(v42 + 74) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v49(v41, v44);
        sub_22B7B03A8(&qword_27D8CF4F8, MEMORY[0x277D19648]);
        sub_22B7DACA8();
        v50 = *(v42 + 66);
        sub_22B705E98(v46, v48);
        sub_22B7DB008();
        sub_22B4D2BCC(v42 + 12, *(v42 + 15));
        DynamicType = swift_getDynamicType();
        *(v42 + 75) = DynamicType;
        v52 = *(v42 + 16);
        *(v42 + 76) = v52;

        v53 = sub_22B7DB298();
        v54 = sub_22B7DBCB8();

        v55 = v42;
        if (os_log_type_enabled(v53, v54))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v75[0] = v57;
          *v56 = 136315394;
          *(v55 + 40) = DynamicType;
          *(v55 + 41) = v52;
          sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
          v58 = sub_22B7DB6C8();
          v60 = sub_22B4CFAAC(v58, v59, v75);

          *(v56 + 4) = v60;
          *(v56 + 12) = 2080;
          *(v56 + 14) = sub_22B4CFAAC(v74, v6, v75);
          _os_log_impl(&dword_22B4CC000, v53, v54, "perform[%s][%s]: processing request", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v57, -1, -1);
          MEMORY[0x231898D60](v56, -1, -1);
        }

        v61 = *(v55 + 56);
        sub_22B7DBA38();
        v62 = sub_22B7DBA58();
        (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
        sub_22B4D0DE8((v55 + 1), (v55 + 11));
        sub_22B4D0DE8((v55 + 6), v55 + 216);
        v63 = swift_allocObject();
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        sub_22B4DFB0C(v55 + 11, v63 + 32);
        sub_22B4DFB0C((v55 + 216), v63 + 72);
        v64 = sub_22B7231D8(0, 0, v61, &unk_22B7FDBC8, v63);
        *(v55 + 77) = v64;
        v65 = *(MEMORY[0x277D857C8] + 4);
        v66 = swift_task_alloc();
        *(v55 + 78) = v66;
        v67 = sub_22B6F0AD4(&qword_27D8CE560, &unk_22B7FDBD0);
        v68 = sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
        *v66 = v55;
        v66[1] = sub_22B7AE2F8;
        v69 = MEMORY[0x277D84950];

        return MEMORY[0x282200430](v55 + 136, v64, v67, v68, v69);
      }

      goto LABEL_14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
LABEL_14:
  sub_22B4D0D64(v0 + 56, &qword_27D8CF4E8, &unk_22B7FDBA0);
  if (qword_27D8CCD08 != -1)
  {
    swift_once();
  }

  v13 = sub_22B7DB2B8();
  sub_22B4CFA74(v13, qword_27D8CF950);
  v14 = sub_22B7DB298();
  v15 = sub_22B7DBC98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22B4CC000, v14, v15, "perform[]: dropping intent because there is no object to process the request.", v16, 2u);
    MEMORY[0x231898D60](v16, -1, -1);
  }

  sub_22B796928();
  swift_allocError();
  *v17 = 1;
LABEL_19:
  swift_willThrow();
  v18 = *(v0 + 552);
  v19 = *(v0 + 528);
  v21 = *(v0 + 496);
  v20 = *(v0 + 504);
  v23 = *(v0 + 480);
  v22 = *(v0 + 488);
  v24 = *(v0 + 472);
  v26 = *(v0 + 440);
  v25 = *(v0 + 448);
  v27 = *(v0 + 424);
  v70 = *(v0 + 416);
  v71 = *(v0 + 392);
  v72 = *(v0 + 384);
  v73 = *(v0 + 376);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_22B7AE2F8()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v7 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = *(v2 + 616);

    v5 = sub_22B7AF1A0;
  }

  else
  {
    v5 = sub_22B7AE414;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B7AE414()
{
  v148 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);

  v3 = *(v0 + 168);
  sub_22B4D2BCC((v0 + 136), *(v0 + 160));
  v4 = *(*(v3 + 8) + 8);
  v5 = sub_22B7DAC88();
  if (v1)
  {
    v7 = *(v0 + 528);
    v8 = *(v0 + 520);
    v9 = *(v0 + 512);

    sub_22B796928();
    v10 = swift_allocError();
    *v11 = 2;
    swift_willThrow();
    sub_22B4CFB78((v0 + 96));
    (*(v8 + 8))(v7, v9);
    sub_22B4CFB78((v0 + 136));
    v12 = *(v0 + 576);
    v13 = *(v0 + 568);

    v14 = v10;
    v15 = sub_22B7DB298();
    v16 = sub_22B7DBC98();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v10;
      v18 = *(v0 + 568);
      v19 = *(v0 + 560);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v147[0] = v22;
      *v20 = 136315394;
      v23 = v18;
      v10 = v17;
      *(v20 + 4) = sub_22B4CFAAC(v19, v23, v147);
      *(v20 + 12) = 2112;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v25;
      *v21 = v25;
      _os_log_impl(&dword_22B4CC000, v15, v16, "perform[%s]: unexpected error: %@", v20, 0x16u);
      sub_22B4D0D64(v21, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v21, -1, -1);
      sub_22B4CFB78(v22);
      MEMORY[0x231898D60](v22, -1, -1);
      MEMORY[0x231898D60](v20, -1, -1);
    }

    v26 = sub_22B7DA6E8();
    v27 = [v26 domain];
    v28 = sub_22B7DB6A8();
    v30 = v29;

    v31 = *MEMORY[0x277D23A68];
    if (v28 == sub_22B7DB6A8() && v30 == v32)
    {
      v33 = *(v0 + 568);

LABEL_11:

      swift_willThrow();

      sub_22B4CFB78((v0 + 16));
      v48 = *(v0 + 552);
      v49 = *(v0 + 528);
      v51 = *(v0 + 496);
      v50 = *(v0 + 504);
      v53 = *(v0 + 480);
      v52 = *(v0 + 488);
      v54 = *(v0 + 472);
      v56 = *(v0 + 440);
      v55 = *(v0 + 448);
      v57 = *(v0 + 424);
      v128 = *(v0 + 416);
      v131 = *(v0 + 392);
      v136 = *(v0 + 384);
      v141 = *(v0 + 376);

      v58 = *(v0 + 8);
      goto LABEL_15;
    }

    v46 = sub_22B7DC518();

    if (v46)
    {
      v47 = *(v0 + 568);
      goto LABEL_11;
    }

    v83 = *(v0 + 368);
    v84 = *(v0 + 376);
    v85 = *(v0 + 360);
    v86 = v10;
    sub_22B7DAFC8();
    sub_22B7B03A8(&qword_27D8CF500, MEMORY[0x277D19638]);
    v87 = sub_22B7DAC98();
    v88 = (v83 + 8);
    v123 = *(v0 + 584);
    v125 = *(v0 + 592);
    v89 = *(v0 + 568);
    v90 = *(v0 + 552);
    v91 = *(v0 + 544);
    v102 = *(v0 + 536);
    v134 = *(v0 + 496);
    v139 = *(v0 + 488);
    v119 = *(v0 + 480);
    v121 = *(v0 + 472);
    v143 = *(v0 + 464);
    v146 = v10;
    v92 = *(v0 + 456);
    v93 = *(v0 + 440);
    v104 = *(v0 + 424);
    v106 = *(v0 + 416);
    v108 = *(v0 + 408);
    v110 = *(v0 + 392);
    v112 = *(v0 + 400);
    v114 = *(v0 + 384);
    v127 = *(v0 + 336);
    v130 = *(v0 + 432);
    v94 = v87;
    v96 = v95;
    (*v88)(*(v0 + 376), *(v0 + 360));

    v116 = v94;
    sub_22B705E44(v94, v96);
    sub_22B7DA998();
    sub_22B7DA978();
    (*(v91 + 8))(v90, v102);
    v97 = sub_22B7DB248();
    (*(*(v97 - 8) + 56))(v104, 1, 1, v97);
    sub_22B7DA4A8();
    v98 = *(v143 + 16);
    v98(v139, v134, v92);
    *v93 = 0xD00000000000001DLL;
    v93[1] = 0x800000022B7FDAF0;
    v93[2] = 0xD00000000000001DLL;
    v93[3] = 0x800000022B7FDAF0;
    v99 = *(v130 + 24);
    sub_22B7DA708();
    (*(v108 + 56))(v110, 1, 1, v112);
    v100 = sub_22B7DA5A8();
    (*(*(v100 - 8) + 56))(v114, 1, 1, v100);
    sub_22B7DA5B8();
    v101 = *(v130 + 28);
    sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
    *(v93 + v101) = sub_22B7DA528();
    v98(v119, v139, v92);
    v98(v121, v119, v92);
    sub_22B7DA508();
    v123(v119, v92);
    v123(v139, v92);
    v123(v134, v92);
    sub_22B7B03A8(&qword_27D8CF988, type metadata accessor for DaemonRequestIntentFileOutput);
    sub_22B7DA4F8();

    sub_22B705E98(v116, v96);
    sub_22B4CFB78((v0 + 16));
    sub_22B7B03F0(v93);
  }

  else
  {
    v140 = v6;
    v144 = v5;
    v34 = *(v0 + 576);
    v35 = *(v0 + 568);

    v36 = sub_22B7DB298();
    v37 = sub_22B7DBCB8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 568);
      v39 = *(v0 + 560);
      v135 = *(v0 + 600);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v147[0] = v41;
      *v40 = 136315394;
      *(v0 + 304) = v135;
      sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
      v42 = sub_22B7DB6C8();
      v44 = sub_22B4CFAAC(v42, v43, v147);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = sub_22B4CFAAC(v39, v38, v147);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_22B4CC000, v36, v37, "perform[%s][%s] completed", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v41, -1, -1);
      MEMORY[0x231898D60](v40, -1, -1);
    }

    else
    {
      v59 = *(v0 + 568);
    }

    v118 = *(v0 + 584);
    v120 = *(v0 + 592);
    v60 = *(v0 + 552);
    v61 = *(v0 + 544);
    v103 = *(v0 + 536);
    v124 = *(v0 + 520);
    v126 = *(v0 + 512);
    v129 = *(v0 + 528);
    v132 = *(v0 + 496);
    v137 = *(v0 + 488);
    v115 = *(v0 + 480);
    v117 = *(v0 + 472);
    v63 = *(v0 + 456);
    v62 = *(v0 + 464);
    v64 = *(v0 + 440);
    v65 = *(v0 + 424);
    v105 = *(v0 + 416);
    v107 = *(v0 + 432);
    v66 = *(v0 + 408);
    v109 = *(v0 + 392);
    v111 = *(v0 + 400);
    v113 = *(v0 + 384);
    v122 = *(v0 + 336);
    sub_22B705E44(v144, v140);
    sub_22B7DA998();
    sub_22B7DA978();
    (*(v61 + 8))(v60, v103);
    v67 = sub_22B7DB248();
    (*(*(v67 - 8) + 56))(v65, 1, 1, v67);
    sub_22B7DA4A8();
    v68 = *(v62 + 16);
    v68(v137, v132, v63);
    *v64 = 0xD00000000000001DLL;
    v64[1] = 0x800000022B7FDAF0;
    v64[2] = 0xD00000000000001DLL;
    v64[3] = 0x800000022B7FDAF0;
    v69 = *(v107 + 24);
    sub_22B7DA708();
    (*(v66 + 56))(v109, 1, 1, v111);
    v70 = sub_22B7DA5A8();
    (*(*(v70 - 8) + 56))(v113, 1, 1, v70);
    sub_22B7DA5B8();
    v71 = *(v107 + 28);
    sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
    *(v64 + v71) = sub_22B7DA528();
    v68(v115, v137, v63);
    v68(v117, v115, v63);
    sub_22B7DA508();
    v118(v115, v63);
    v118(v137, v63);
    v118(v132, v63);
    sub_22B7B03A8(&qword_27D8CF988, type metadata accessor for DaemonRequestIntentFileOutput);
    sub_22B7DA4F8();
    sub_22B705E98(v144, v140);
    sub_22B4CFB78((v0 + 96));
    (*(v124 + 8))(v129, v126);
    sub_22B4CFB78((v0 + 16));
    sub_22B7B03F0(v64);
    sub_22B4CFB78((v0 + 136));
  }

  v72 = *(v0 + 552);
  v73 = *(v0 + 528);
  v75 = *(v0 + 496);
  v74 = *(v0 + 504);
  v77 = *(v0 + 480);
  v76 = *(v0 + 488);
  v78 = *(v0 + 472);
  v80 = *(v0 + 440);
  v79 = *(v0 + 448);
  v81 = *(v0 + 424);
  v133 = *(v0 + 416);
  v138 = *(v0 + 392);
  v142 = *(v0 + 384);
  v145 = *(v0 + 376);

  v58 = *(v0 + 8);
LABEL_15:

  return v58();
}

uint64_t sub_22B7AF1A0()
{
  v97 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  sub_22B4CFB78(v0 + 12);
  (*(v2 + 8))(v1, v3);
  v4 = v0[79];
  v5 = v0[72];
  v6 = v0[71];

  v7 = v4;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBC98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[71];
    v11 = v0[70];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v96 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_22B4CFAAC(v11, v10, &v96);
    *(v12 + 12) = 2112;
    v15 = v4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22B4CC000, v8, v9, "perform[%s]: unexpected error: %@", v12, 0x16u);
    sub_22B4D0D64(v13, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v13, -1, -1);
    sub_22B4CFB78(v14);
    MEMORY[0x231898D60](v14, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  v17 = sub_22B7DA6E8();
  v18 = [v17 domain];
  v19 = sub_22B7DB6A8();
  v21 = v20;

  v22 = *MEMORY[0x277D23A68];
  if (v19 == sub_22B7DB6A8() && v21 == v23)
  {
    v27 = v0[71];

    goto LABEL_10;
  }

  v25 = sub_22B7DC518();

  if (v25)
  {
    v26 = v0[71];
LABEL_10:

    swift_willThrow();

    sub_22B4CFB78(v0 + 2);
    v28 = v0[69];
    v29 = v0[66];
    v31 = v0[62];
    v30 = v0[63];
    v33 = v0[60];
    v32 = v0[61];
    v34 = v0[59];
    v36 = v0[55];
    v35 = v0[56];
    v37 = v0[53];
    v83 = v0[52];
    v85 = v0[49];
    v88 = v0[48];
    v91 = v0[47];

    v38 = v0[1];
    goto LABEL_11;
  }

  v40 = v0[46];
  v41 = v0[47];
  v42 = v0[45];
  v43 = v4;
  sub_22B7DAFC8();
  sub_22B7B03A8(&qword_27D8CF500, MEMORY[0x277D19638]);
  v44 = sub_22B7DAC98();
  v45 = v4;
  v46 = (v40 + 8);
  v80 = v0[73];
  v81 = v0[74];
  v47 = v0[71];
  v48 = v0[69];
  v49 = v0[68];
  v70 = v0[67];
  v86 = v0[62];
  v89 = v0[61];
  v78 = v0[60];
  v79 = v0[59];
  v50 = v0[57];
  v92 = v0[58];
  v51 = v0[55];
  v84 = v0[54];
  v71 = v0[53];
  v72 = v0[52];
  v73 = v0[51];
  v74 = v0[49];
  v75 = v0[50];
  v76 = v0[48];
  v94 = v45;
  v82 = v0[42];
  v52 = v44;
  v54 = v53;
  (*v46)(v0[47], v0[45]);

  v77 = v52;
  sub_22B705E44(v52, v54);
  sub_22B7DA998();
  sub_22B7DA978();
  (*(v49 + 8))(v48, v70);
  v55 = sub_22B7DB248();
  (*(*(v55 - 8) + 56))(v71, 1, 1, v55);
  sub_22B7DA4A8();
  v56 = *(v92 + 16);
  v56(v89, v86, v50);
  *v51 = 0xD00000000000001DLL;
  v51[1] = 0x800000022B7FDAF0;
  v51[2] = 0xD00000000000001DLL;
  v51[3] = 0x800000022B7FDAF0;
  v57 = *(v84 + 24);
  sub_22B7DA708();
  (*(v73 + 56))(v74, 1, 1, v75);
  v58 = sub_22B7DA5A8();
  (*(*(v58 - 8) + 56))(v76, 1, 1, v58);
  sub_22B7DA5B8();
  v59 = *(v84 + 28);
  sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
  *(v51 + v59) = sub_22B7DA528();
  v56(v78, v89, v50);
  v56(v79, v78, v50);
  sub_22B7DA508();
  v80(v78, v50);
  v80(v89, v50);
  v80(v86, v50);
  sub_22B7B03A8(&qword_27D8CF988, type metadata accessor for DaemonRequestIntentFileOutput);
  sub_22B7DA4F8();

  sub_22B705E98(v77, v54);
  sub_22B4CFB78(v0 + 2);
  sub_22B7B03F0(v51);
  v60 = v0[69];
  v61 = v0[66];
  v63 = v0[62];
  v62 = v0[63];
  v65 = v0[60];
  v64 = v0[61];
  v66 = v0[59];
  v68 = v0[55];
  v67 = v0[56];
  v69 = v0[53];
  v87 = v0[52];
  v90 = v0[49];
  v93 = v0[48];
  v95 = v0[47];

  v38 = v0[1];
LABEL_11:

  return v38();
}

uint64_t sub_22B7AFA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B7AFA8C, 0, 0);
}

uint64_t sub_22B7AFA8C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_22B4D2BCC(v1, v4);
  v6 = v2[3];
  v7 = v2[4];
  v8 = sub_22B4D2BCC(v2, v6);
  v9 = *(v5 + 8);
  v3[3] = swift_getAssociatedTypeWitness();
  v3[4] = swift_getAssociatedConformanceWitness();
  v10 = sub_22B6FC8CC(v3);
  v14 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_22B7958D4;

  return (v14)(v10, v8, v6, v7, v4, v5);
}

uint64_t sub_22B7AFC84@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_22B4CFA74(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_22B7AFD2C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B7ACECC(a1, v5, v4);
}

uint64_t sub_22B7AFDD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B7AFF18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B7AFE00(uint64_t a1)
{
  v2 = sub_22B7ACE14();

  return MEMORY[0x28210B538](a1, v2);
}

void sub_22B7AFE74()
{
  sub_22B7DA5C8();
  if (v0 <= 0x3F)
  {
    sub_22B795DD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22B7AFF18()
{
  v0 = sub_22B6F0AD4(&qword_27D8CF4A8, &unk_22B7FCD20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v38 = &v31 - v2;
  v37 = sub_22B7DA5F8();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B6F0AD4(&qword_27D8CF4B0, &unk_22B7FDB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_22B6F0AD4(&qword_27D8CF4B8, &unk_22B7FCD30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  v15 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - v17;
  v36 = sub_22B6F0AD4(&qword_27D8CF4C8, &unk_22B7FCD40);
  v31 = sub_22B7DA718();
  v19 = *(v31 - 8);
  v34 = *(v19 + 56);
  v35 = v19 + 56;
  v34(v18, 1, 1, v31);
  v20 = sub_22B7DA4B8();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = sub_22B7DA4E8();
  v22 = *(v21 - 8);
  v32 = *(v22 + 56);
  v33 = v22 + 56;
  v32(v10, 1, 1, v21);
  sub_22B6F0AD4(&qword_27D8CF4D0, &unk_22B7FDB80);
  v23 = *(sub_22B7DB248() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_22B7F93B0;
  sub_22B7DB218();
  v26 = *MEMORY[0x277CBA308];
  v27 = *(v3 + 104);
  v28 = v37;
  v27(v6, v26, v37);
  v36 = sub_22B7DA588();
  sub_22B6F0AD4(&qword_27D8CF4D8, &qword_22B7FCD50);
  v34(v18, 1, 1, v31);
  v29 = sub_22B7DB668();
  v39 = 0;
  v40 = 0;
  (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
  v32(v10, 1, 1, v21);
  v27(v6, v26, v28);
  sub_22B7DA598();
  return v36;
}

uint64_t sub_22B7B03A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B7B03F0(uint64_t a1)
{
  v2 = type metadata accessor for DaemonRequestIntentFileOutput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B7B044C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B7AFA68(a1, v4, v5, v1 + 32, v1 + 72);
}

unint64_t sub_22B7B0514()
{
  result = qword_27D8CFA28;
  if (!qword_27D8CFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFA28);
  }

  return result;
}

uint64_t sub_22B7B0570()
{
  sub_22B7DBA18();
  result = sub_22B7DBA08();
  qword_281420C78 = result;
  return result;
}

uint64_t static DaemonWorkActor.shared.getter()
{
  if (qword_281420C70 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22B7B0618()
{
  if (qword_281420C70 != -1)
  {
    swift_once();
  }
}

id IMDInternalWorkQueue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDInternalWorkQueue.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDInternalWorkQueue();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMDInternalWorkQueue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDInternalWorkQueue();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12IMDaemonCore20IMDInternalWorkQueueC07enqueueD5BlockyyyyYbcFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B7DB348();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B7DB398();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B74D6EC();
  v14 = sub_22B7DBD58();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_22B717740;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1FC40;
  v16 = _Block_copy(aBlock);

  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v13, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22B7B0AC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22B4D1F68(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22B4D7F04(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22B4D7F04(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22B4D7F04(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22B7DC228();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22B4D7F04(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22B7B0D90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22B4D7F04(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22B4D7F04(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22B7DC228();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22B4D7F04(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22B7B1048(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22B4D7F04(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22B4D7F04(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22B7DC228();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22B4D7F04(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_22B7B1314(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&qword_27D8CED00, &unk_22B7FBA10);
    v2 = sub_22B7DC488();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_22B4DA0DC(*(v1 + 48) + 40 * v17, v30);
    sub_22B4D1F68(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_22B4DA0DC(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_22B7B4764(v27);

      goto LABEL_22;
    }

    sub_22B4D1F68(v28 + 8, v26);
    sub_22B7B4764(v27);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_22B723648(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}