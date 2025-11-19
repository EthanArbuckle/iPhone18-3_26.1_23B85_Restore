uint64_t sub_2489ACEE8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2489AD014, 0, 0);
}

uint64_t sub_2489AD014()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4(v2);
}

uint64_t sub_2489AD0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_248A12D20();
  v5[10] = sub_248A12D10();
  v7 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489AD14C, v7, v6);
}

uint64_t sub_2489AD14C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v7 = v3 + OBJC_IVAR___DSNotificationController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v9, v8, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  v12 = v0[1];

  return v12();
}

uint64_t NotificationController.postGuestUserModeUnavailableNotification(with:)(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v2[50] = swift_getObjectType();
  v3 = *(*(sub_248A11BE0() - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v4 = *(*(sub_248A12B20() - 8) + 64) + 15;
  v2[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489AD314, 0, 0);
}

uint64_t sub_2489AD314()
{
  v51 = v0;
  if (qword_27EEB5190 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9D98);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 400);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v50 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v50);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD00000000000002FLL, 0x8000000248A19900, &v50);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14B40;
  result = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(v0 + 408);
  v13 = *(v0 + 416);
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v14;
  sub_248A12B10();
  _s30DeviceSharingFrameworkSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  sub_248A11BD0();
  v18 = sub_248A12B70();
  v19 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = *(v0 + 384);
  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v22;
  v23 = sub_2489AE718(v21);
  *(inited + 120) = v19;
  *(inited + 96) = v23;
  *(inited + 104) = v24;
  result = *MEMORY[0x277CBF1B0];
  if (!*MEMORY[0x277CBF1B0])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 128) = sub_248A12B60();
  *(inited + 136) = v25;
  v26 = MEMORY[0x277D839B0];
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  v27 = sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  result = *MEMORY[0x277D67338];
  if (!*MEMORY[0x277D67338])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = sub_248A12B60();
  v30 = v29;
  *(v0 + 216) = v26;
  *(v0 + 192) = 1;
  sub_248983794((v0 + 192), (v0 + 224));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v27;
  sub_2489B04B4((v0 + 224), v28, v30, isUniquelyReferenced_nonNull_native);

  result = *MEMORY[0x277D67360];
  if (!*MEMORY[0x277D67360])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v50;
  v33 = sub_248A12B60();
  v35 = v34;
  *(v0 + 280) = v26;
  *(v0 + 256) = 1;
  sub_248983794((v0 + 256), (v0 + 288));
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v32;
  sub_2489B04B4((v0 + 288), v33, v35, v36);

  result = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v37 = v50;
  v39 = *(v0 + 408);
  v38 = *(v0 + 416);
  v40 = sub_248A12B60();
  v42 = v41;
  sub_248A12B10();
  v43 = [v16 bundleForClass_];
  sub_248A11BD0();
  v44 = sub_248A12B70();
  *(v0 + 344) = v19;
  *(v0 + 320) = v44;
  *(v0 + 328) = v45;
  sub_248983794((v0 + 320), (v0 + 352));
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v37;
  sub_2489B04B4((v0 + 352), v40, v42, v46);

  v47 = v50;
  *(v0 + 424) = v50;
  v48 = swift_task_alloc();
  *(v0 + 432) = v48;
  *v48 = v0;
  v48[1] = sub_2489AD858;
  v49 = *(v0 + 392);

  return sub_2489AC93C(v47, 3, 0.0);
}

uint64_t sub_2489AD858(uint64_t a1)
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 440) = a1;

  return MEMORY[0x2822009F8](sub_2489AD978, 0, 0);
}

uint64_t sub_2489AD978()
{
  v2 = v0[51];
  v1 = v0[52];

  v3 = v0[1];
  v4 = v0[55];

  return v3(v4);
}

uint64_t NotificationController.postUnableToPlayProtectedContent()()
{
  v1[46] = v0;
  v1[47] = swift_getObjectType();
  v2 = *(*(sub_248A11BE0() - 8) + 64) + 15;
  v1[48] = swift_task_alloc();
  v3 = *(*(sub_248A12B20() - 8) + 64) + 15;
  v1[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489ADAAC, 0, 0);
}

uint64_t sub_2489ADAAC()
{
  v49 = v0;
  if (qword_27EEB5190 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9D98);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 376);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v48 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v48);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000022, 0x8000000248A19970, &v48);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A16300;
  result = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(v0 + 384);
  v13 = *(v0 + 392);
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v14;
  sub_248A12B10();
  _s30DeviceSharingFrameworkSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  sub_248A11BD0();
  v18 = sub_248A12B70();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v19;
  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = *(v0 + 384);
  v20 = *(v0 + 392);
  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v22;
  sub_248A12B10();
  v23 = [v16 bundleForClass_];
  sub_248A11BD0();
  v24 = sub_248A12B70();
  v25 = MEMORY[0x277D837D0];
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v24;
  *(inited + 104) = v26;
  result = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = *(v0 + 384);
  v27 = *(v0 + 392);
  *(inited + 128) = sub_248A12B60();
  *(inited + 136) = v29;
  sub_248A12B10();
  v30 = [v16 bundleForClass_];
  sub_248A11BD0();
  v31 = sub_248A12B70();
  *(inited + 168) = v25;
  *(inited + 144) = v31;
  *(inited + 152) = v32;
  result = *MEMORY[0x277CBF1B0];
  if (!*MEMORY[0x277CBF1B0])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 176) = sub_248A12B60();
  *(inited + 184) = v33;
  v34 = MEMORY[0x277D839B0];
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  v35 = sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  result = *MEMORY[0x277D67338];
  if (!*MEMORY[0x277D67338])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = sub_248A12B60();
  v38 = v37;
  *(v0 + 264) = v34;
  *(v0 + 240) = 1;
  sub_248983794((v0 + 240), (v0 + 272));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v35;
  sub_2489B04B4((v0 + 272), v36, v38, isUniquelyReferenced_nonNull_native);

  result = *MEMORY[0x277D67360];
  if (!*MEMORY[0x277D67360])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v40 = v48;
  v41 = sub_248A12B60();
  v43 = v42;
  *(v0 + 328) = v34;
  *(v0 + 304) = 1;
  sub_248983794((v0 + 304), (v0 + 336));
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v40;
  sub_2489B04B4((v0 + 336), v41, v43, v44);

  v45 = v48;
  *(v0 + 400) = v48;
  v46 = swift_task_alloc();
  *(v0 + 408) = v46;
  *v46 = v0;
  v46[1] = sub_2489AE018;
  v47 = *(v0 + 368);

  return sub_2489AC93C(v45, 3, 0.0);
}

uint64_t sub_2489AE018(uint64_t a1)
{
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 416) = a1;

  return MEMORY[0x2822009F8](sub_2489AE138, 0, 0);
}

uint64_t sub_2489AE138()
{
  v2 = v0[48];
  v1 = v0[49];

  v3 = v0[1];
  v4 = v0[52];

  return v3(v4);
}

id NotificationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationController.init()()
{
  *&v0[OBJC_IVAR___DSNotificationController_activeNotification] = 0;
  *&v0[OBJC_IVAR___DSNotificationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NotificationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall NotificationController.cancelNotificationIfNecessary()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  if (qword_27EEB5190 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9D98);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446466;
    v11 = sub_248A13570();
    v13 = sub_24897BC00(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_24897BC00(0xD00000000000001FLL, 0x8000000248A199A0, &v20);
    _os_log_impl(&dword_248975000, v7, v8, "%{public}s %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  v14 = sub_248A12D40();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_248A12D20();
  v15 = v1;
  v16 = sub_248A12D10();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_2489AC334(0, 0, v5, &unk_248A16338, v17);
}

uint64_t sub_2489AE5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_248A12D20();
  *(v4 + 48) = sub_248A12D10();
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489AE63C, v6, v5);
}

uint64_t sub_2489AE63C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    CFUserNotificationCancel(v4);
    v5 = *(v2 + v3);
    *(v2 + v3) = 0;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_2489AE718(uint64_t a1)
{
  v2 = sub_248A11BE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_248A12B20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  result = 0x6E776F6E6B6E55;
  if (a1 <= 1)
  {
    if (a1 > 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a1 == 2 || a1 == 3)
  {
LABEL_6:
    sub_248A12B10();
    _s30DeviceSharingFrameworkSentinelCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_248A11BD0();
    return sub_248A12B70();
  }

  return result;
}

uint64_t DSSGuestUserModeAppUnavailable.description.getter(uint64_t a1)
{
  v1 = 0x616E6F73726550;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v2 = 0x656D697465636146;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 42;
  }
}

uint64_t sub_2489AEA00()
{
  v1 = *v0;
  v2 = 0x616E6F73726550;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 2)
  {
    v3 = 0x656D697465636146;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 42;
  }
}

uint64_t DSSGuestUserModeUnavailableReason.description.getter(uint64_t a1)
{
  v1 = 0x616E6F73726550;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v2 = 0x656D697465636146;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6B73696420776F4CLL;
  }
}

uint64_t sub_2489AEAF4()
{
  v1 = *v0;
  v2 = 0x616E6F73726550;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 2)
  {
    v3 = 0x656D697465636146;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6B73696420776F4CLL;
  }
}

uint64_t sub_2489AEB7C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489AEC74;

  return v7(a1);
}

uint64_t sub_2489AEC74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2489AED6C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_248A12480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A20, &qword_248A15358);
  v43 = a2;
  result = sub_248A13230();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2489B1D88(&unk_27EEB61C0, MEMORY[0x277D04ED0]);
      result = sub_248A12AE0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2489AF148(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56B8, &unk_248A16440);
  v36 = a2;
  result = sub_248A13230();
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
        sub_248983794(v25, v37);
      }

      else
      {
        sub_24897C864(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_248A13430();
      sub_248A12BB0();
      result = sub_248A13460();
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
      result = sub_248983794(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_2489AF400(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB56F0, &unk_248A15360);
  v44 = a2;
  result = sub_248A13230();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v2;
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
    v42 = result;
    v43 = v5;
    while (1)
    {
      if (!v13)
      {
        v21 = v9;
        while (1)
        {
          v9 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_45;
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
            v46 = (v22 - 1) & v22;
            goto LABEL_17;
          }
        }

        if ((v44 & 1) == 0)
        {

          v3 = v41;
          goto LABEL_43;
        }

        v40 = 1 << *(v5 + 32);
        v3 = v41;
        if (v40 >= 64)
        {
          bzero(v10, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v40;
        }

        *(v5 + 16) = 0;
        break;
      }

      v20 = __clz(__rbit64(v13));
      v46 = (v13 - 1) & v13;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 32 * v23;
      v26 = *v24;
      v25 = *(v24 + 8);
      v27 = *(v24 + 24);
      v28 = (*(v5 + 56) + 24 * v23);
      v29 = v28[1];
      v45 = *v28;
      v47 = v28[2];
      v48 = *(v24 + 16);
      if ((v44 & 1) == 0)
      {
        sub_2489837A4(v26, v25, v48, v27);

        v30 = v47;
      }

      v31 = *(v8 + 40);
      sub_248A13430();
      if (v27)
      {
        if (v27 != 1)
        {
          sub_248A12BB0();

          goto LABEL_27;
        }

        sub_248A12BB0();
        v32 = v25;
      }

      else
      {
        sub_248A12BB0();
        v32 = v48;
      }

      if (v32)
      {
        sub_2489837A4(v26, v25, v48, v27);
        sub_248A12BB0();
      }

      sub_248A12BB0();
      sub_2489837C4(v26, v25, v48, v27);
      v8 = v42;
      v5 = v43;
LABEL_27:
      result = sub_248A13460();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v17 = v29;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v17 = v29;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 32 * v16;
      *v18 = v26;
      *(v18 + 8) = v25;
      *(v18 + 16) = v48;
      *(v18 + 24) = v27;
      v19 = (*(v8 + 56) + 24 * v16);
      v13 = v46;
      *v19 = v45;
      v19[1] = v17;
      v19[2] = v47;
      ++*(v8 + 16);
    }
  }

LABEL_43:
  *v3 = v8;
  return result;
}

uint64_t sub_2489AF8C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A40, &qword_248A16410);
  result = sub_248A13230();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_248978948(v22, v33);
      }

      else
      {
        sub_248997228(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_248A13420();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_248978948(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

uint64_t sub_2489AFB40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56A0, &unk_248A15320);
  result = sub_248A13230();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_248A13430();
      sub_248A12BB0();

      result = sub_248A13460();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
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

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2489AFE38(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_248A11BC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A28, qword_248A163F8);
  v52 = a2;
  result = sub_248A13230();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_2489B1D88(&unk_27EEB5A30, MEMORY[0x277CC95F0]);
      result = sub_248A12AE0();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2489B02E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248A12480();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2489A7DFC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2489B0F1C();
      goto LABEL_7;
    }

    sub_2489AED6C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2489A7DFC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2489B0C8C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_248A13380();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_2489B04B4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2489A7D40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2489B119C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2489AF148(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2489A7D40(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_248A13380();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_248983794(a1, v23);
  }

  else
  {
    sub_2489B0D44(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2489B0604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, char a8)
{
  v9 = v8;
  v17 = *v8;
  v18 = sub_2489A7ED0(a4, a5, a6, a7);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a8 & 1) == 0)
  {
    if (v25 < v23 || (a8 & 1) != 0)
    {
      sub_2489AF400(v23, a8 & 1);
      v27 = *v9;
      v18 = sub_2489A7ED0(a4, a5, a6, a7);
      if ((v24 & 1) != (v28 & 1))
      {
LABEL_18:
        result = sub_248A13380();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      sub_2489B1340();
      v18 = v26;
    }
  }

  v29 = *v9;
  if (v24)
  {
    v30 = (v29[7] + 24 * v18);
    v32 = v30[1];
    v31 = v30[2];
    *v30 = a1;
    v30[1] = a2;
    v30[2] = a3;
  }

  v29[(v18 >> 6) + 8] |= 1 << v18;
  v34 = v29[6] + 32 * v18;
  *v34 = a4;
  *(v34 + 8) = a5;
  *(v34 + 16) = a6;
  *(v34 + 24) = a7;
  v35 = (v29[7] + 24 * v18);
  *v35 = a1;
  v35[1] = a2;
  v35[2] = a3;
  v36 = v29[2];
  v22 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29[2] = v37;

  return sub_2489837A4(a4, a5, a6, a7);
}

uint64_t sub_2489B07EC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2489A86D0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2489B14E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2489AF8C0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_2489A86D0(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_248A13380();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_0(v21);

    return sub_248978948(a1, v21);
  }

  else
  {

    return sub_2489B0DB0(v9, a2, a1, v20);
  }
}

unint64_t sub_2489B091C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2489A8714(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2489AFB40(v16, a4 & 1);
      v20 = *v5;
      result = sub_2489A8714(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_248A13380();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2489B1664();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_2489B0A7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248A11BC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2489A881C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2489B17C8();
      goto LABEL_7;
    }

    sub_2489AFE38(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_2489A881C(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2489B0E1C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_248A13380();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_2489B0C8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_248A12480();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_2489B0D44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_248983794(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2489B0DB0(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_248978948(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2489B0E1C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_248A11BC0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_2489B0F1C()
{
  v1 = v0;
  v34 = sub_248A12480();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A20, &qword_248A15358);
  v4 = *v0;
  v5 = sub_248A13220();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2489B119C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56B8, &unk_248A16440);
  v2 = *v0;
  v3 = sub_248A13220();
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
        sub_24897C864(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_248983794(v25, (*(v4 + 56) + v22));
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

id sub_2489B1340()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB56F0, &unk_248A15360);
  v2 = *v0;
  v3 = sub_248A13220();
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v17 *= 24;
        v23 = (*(v2 + 56) + v17);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = *(v4 + 48) + v18;
        v28 = *(v19 + 24);
        *v27 = *v19;
        *(v27 + 8) = v21;
        *(v27 + 16) = v22;
        *(v27 + 24) = v28;
        v29 = (*(v4 + 56) + v17);
        *v29 = v24;
        v29[1] = v25;
        v29[2] = v26;
        sub_2489837A4(v20, v21, v22, v28);

        result = v26;
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

void *sub_2489B14E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A40, &qword_248A16410);
  v2 = *v0;
  v3 = sub_248A13220();
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
        sub_248997228(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_248978948(v19, *(v4 + 56) + 40 * v17);
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

void *sub_2489B1664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56A0, &unk_248A15320);
  v2 = *v0;
  v3 = sub_248A13220();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

char *sub_2489B17C8()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_248A11BC0();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A28, qword_248A163F8);
  v6 = *v0;
  v7 = sub_248A13220();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2489B1B48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_2489AE5A4(a1, v4, v5, v6);
}

uint64_t sub_2489B1D88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2489B1DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489B1E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2489B1EA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_2489AEB7C(a1, v5);
}

uint64_t sub_2489B1F60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248978D74;

  return sub_2489AEB7C(a1, v5);
}

uint64_t sub_2489B2018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489AD0B4(a1, v4, v5, v7, v6);
}

uint64_t NearbyDevice.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NearbyDevice.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NearbyDevice.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NearbyDevice(0) + 24);
  v4 = sub_248A12540();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbyDevice.init(name:identifier:endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for NearbyDevice(0) + 24);
  v9 = sub_248A12540();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t NearbyDevice.hash(into:)()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  v2 = v0[2];
  v3 = v0[3];
  sub_248A12BB0();
  v4 = *(type metadata accessor for NearbyDevice(0) + 24);
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10]);
  return sub_248A12AF0();
}

uint64_t NearbyDevice.hashValue.getter()
{
  sub_248A13430();
  if (v0[1])
  {
    v1 = *v0;
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  v2 = v0[2];
  v3 = v0[3];
  sub_248A12BB0();
  v4 = *(type metadata accessor for NearbyDevice(0) + 24);
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10]);
  sub_248A12AF0();
  return sub_248A13460();
}

uint64_t sub_2489B241C(uint64_t a1)
{
  sub_248A13430();
  if (v1[1])
  {
    v3 = *v1;
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  v4 = v1[2];
  v5 = v1[3];
  sub_248A12BB0();
  v6 = *(a1 + 24);
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10]);
  sub_248A12AF0();
  return sub_248A13460();
}

uint64_t sub_2489B2508(uint64_t a1, uint64_t a2)
{
  if (v2[1])
  {
    v4 = *v2;
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  v5 = v2[2];
  v6 = v2[3];
  sub_248A12BB0();
  v7 = *(a2 + 24);
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10]);
  return sub_248A12AF0();
}

uint64_t sub_2489B25DC(uint64_t a1, uint64_t a2)
{
  sub_248A13430();
  if (v2[1])
  {
    v4 = *v2;
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  v5 = v2[2];
  v6 = v2[3];
  sub_248A12BB0();
  v7 = *(a2 + 24);
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10]);
  sub_248A12AF0();
  return sub_248A13460();
}

uint64_t static NearbyDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v2 || (sub_248A13340() & 1) != 0)
  {
    v3 = *(type metadata accessor for NearbyDevice(0) + 24);

    JUMPOUT(0x24C1DF1C0);
  }

  return 0;
}

uint64_t NearbyDevice.isRemoteUnlockDevice(_:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = [a1 name];
  v6 = sub_248A12B60();
  v8 = v7;

  if (v4)
  {
    if (v3 == v6 && v4 == v8)
    {
    }

    else
    {
      v10 = sub_248A13340();

      v11 = 0;
      if ((v10 & 1) == 0)
      {
        return v11 & 1;
      }
    }

    v13 = v1[2];
    v12 = v1[3];
    v14 = [a1 uniqueIdentifier];
    v15 = sub_248A12B60();
    v17 = v16;

    if (v13 == v15 && v12 == v17)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_248A13340();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2489B2864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (sub_248A13340() & 1) != 0)
  {
    v5 = *(a3 + 24);

    JUMPOUT(0x24C1DF1C0);
  }

  return 0;
}

uint64_t NearbyDevice.description.getter()
{
  sub_248A13100();
  MEMORY[0x24C1DF8B0](0xD000000000000013, 0x8000000248A19B30);
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v2 = 0xE100000000000000;
    v1 = 45;
  }

  MEMORY[0x24C1DF8B0](v1, v2);

  MEMORY[0x24C1DF8B0](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x24C1DF8B0](v0[2], v0[3]);
  MEMORY[0x24C1DF8B0](0x696F70646E65202CLL, 0xEC000000203A746ELL);
  v3 = *(type metadata accessor for NearbyDevice(0) + 24);
  sub_248A12540();
  sub_248A131F0();
  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return 0;
}

uint64_t NearbyDeviceProviderState.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = type metadata accessor for NearbyDeviceProviderState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2489B711C(v1, v12, type metadata accessor for NearbyDeviceProviderState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x7261745320746F4ELL;
    }

    else
    {
      return 0x656C6C65636E6143;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v17 = *v12;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD000000000000013, 0x8000000248A19B50);
    v18[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    sub_248A131F0();

    return v19;
  }

  else
  {
    sub_2489B7044(v12, v8);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_248A13100();

    v19 = 0x4428207964616552;
    v20 = 0xEF203A6563697665;
    sub_24898D610(v8, v6, &qword_27EEB5A50, &unk_248A16450);
    v14 = sub_248A12B80();
    MEMORY[0x24C1DF8B0](v14);

    v15 = v19;
    sub_248983734(v8, &qword_27EEB5A50, &unk_248A16450);
    return v15;
  }
}

uint64_t NearbyDeviceProvidingError.hashValue.getter()
{
  sub_248A13430();
  MEMORY[0x24C1E0100](0);
  return sub_248A13460();
}

uint64_t sub_2489B2D54()
{
  v1 = sub_248A129A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5AB8, &qword_248A16740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5AC0, &qword_248A16748);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = *v0;
  v33 = *v0 == 0;
  if (v18)
  {
    v19 = v0[1];
    ObjectType = swift_getObjectType();
    (*(v19 + 8))(ObjectType, v19);
    v21 = *(v2 + 56);
    v21(v17, 0, 1, v1);
  }

  else
  {
    v21 = *(v2 + 56);
    v21(&v30 - v16, 1, 1, v1);
  }

  (*(v2 + 104))(v15, *MEMORY[0x277CD9118], v1);
  v21(v15, 0, 1, v1);
  v22 = *(v5 + 48);
  sub_24898D610(v17, v8, &qword_27EEB5AC0, &qword_248A16748);
  sub_24898D610(v15, &v8[v22], &qword_27EEB5AC0, &qword_248A16748);
  v23 = *(v2 + 48);
  if (v23(v8, 1, v1) != 1)
  {
    v24 = v32;
    sub_24898D610(v8, v32, &qword_27EEB5AC0, &qword_248A16748);
    if (v23(&v8[v22], 1, v1) != 1)
    {
      v26 = v31;
      (*(v2 + 32))(v31, &v8[v22], v1);
      sub_2489B70B4(&qword_27EEB5AC8, MEMORY[0x277CD9120]);
      v27 = v24;
      v28 = sub_248A12B00();
      v29 = *(v2 + 8);
      v29(v26, v1);
      sub_248983734(v15, &qword_27EEB5AC0, &qword_248A16748);
      sub_248983734(v17, &qword_27EEB5AC0, &qword_248A16748);
      v29(v27, v1);
      sub_248983734(v8, &qword_27EEB5AC0, &qword_248A16748);
      if (v28)
      {
        return 1;
      }

      return v33;
    }

    sub_248983734(v15, &qword_27EEB5AC0, &qword_248A16748);
    sub_248983734(v17, &qword_27EEB5AC0, &qword_248A16748);
    (*(v2 + 8))(v24, v1);
LABEL_9:
    sub_248983734(v8, &qword_27EEB5AB8, &qword_248A16740);
    return v33;
  }

  sub_248983734(v15, &qword_27EEB5AC0, &qword_248A16748);
  sub_248983734(v17, &qword_27EEB5AC0, &qword_248A16748);
  if (v23(&v8[v22], 1, v1) != 1)
  {
    goto LABEL_9;
  }

  sub_248983734(v8, &qword_27EEB5AC0, &qword_248A16748);
  return 1;
}

uint64_t NearbyDeviceProvider.__allocating_init(sharingInteractionController:browserProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  NearbyDeviceProvider.init(sharingInteractionController:browserProvider:)(a1, a2, a3);
  return v9;
}

uint64_t NearbyDeviceProvider.init(sharingInteractionController:browserProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v19 = sub_248A12EA0();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248A12ED0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_248A12A40();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2489B7884(0, &qword_28150F560, 0x277D85C90);
  sub_248A12A30();
  v23 = MEMORY[0x277D84F90];
  sub_2489B70B4(&unk_28150F570, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v19);
  *(v3 + 72) = sub_248A12EE0();
  sub_248A11DF0();
  v13 = (v3 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state);
  v14 = type metadata accessor for NearbyDeviceProvider.State(0);
  v15 = *(v14 + 20);
  type metadata accessor for NearbyDeviceProviderState(0);
  swift_storeEnumTagMultiPayload();
  *v13 = 0;
  v13[1] = 0;
  *(v13 + *(v14 + 24)) = 0;
  v16 = v21;
  *(v4 + 16) = v20;
  *(v4 + 24) = v16;
  sub_248978948(v22, v4 + 32);
  return v4;
}

uint64_t sub_2489B3540()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_248A129A0();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_27EEB9DB0);
  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  v10 = os_log_type_enabled(v8, v9);
  v37 = v2;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40[0] = v12;
    *v11 = 136446210;
    v13 = sub_248A13570();
    v15 = sub_24897BC00(v13, v14, v40);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Start browsing for nearby devices", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  v16 = v1[3];
  v18 = (v1[2])(v17);
  v20 = v19;
  v21 = sub_248A122B0();
  v22 = sub_248A12E80();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136446210;
    v25 = sub_248A13570();
    v27 = sub_24897BC00(v25, v26, v40);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_248975000, v21, v22, "[%{public}s] Clearing previous browsing state and results", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C1E0A80](v24, -1, -1);
    MEMORY[0x24C1E0A80](v23, -1, -1);
  }

  ObjectType = swift_getObjectType();
  (*(v20 + 8))(ObjectType, v20);
  sub_2489B5C8C(v6);
  (*(v38 + 8))(v6, v39);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *(v20 + 32);

  v30(sub_2489B7B14, v29, ObjectType, v20);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = v18;
  v32[4] = v20;
  v33 = *(v20 + 56);

  swift_unknownObjectRetain();
  v33(sub_2489B7B1C, v32, ObjectType, v20);

  (*(v20 + 72))(v1[9], ObjectType, v20);
  v34 = (v1 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state);
  swift_beginAccess();
  v35 = *v34;
  *v34 = v18;
  v34[1] = v20;
  return swift_unknownObjectRelease();
}

uint64_t sub_2489B39C0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489B5C8C(a1);
  }

  return result;
}

uint64_t sub_2489B3A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_248A129A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(a5 + 8))(ObjectType, a5);
    sub_2489B5C8C(v10);

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_2489B3B4C()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_27EEB9DB0);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136446210;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v26);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Stop browsing for nearby devices", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v11 = (v1 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state);
  swift_beginAccess();
  if (*v11)
  {
    v12 = v11[1];
    v13 = *v11;
    ObjectType = swift_getObjectType();
    v15 = *(v12 + 32);
    swift_unknownObjectRetain();
    v15(0, 0, ObjectType, v12);
    swift_unknownObjectRelease();
    if (*v11)
    {
      v16 = v11[1];
      v17 = *v11;
      v18 = swift_getObjectType();
      v19 = *(v16 + 56);
      swift_unknownObjectRetain();
      v19(0, 0, v18, v16);
      swift_unknownObjectRelease();
      if (*v11)
      {
        v20 = v11[1];
        v21 = *v11;
        v22 = swift_getObjectType();
        v23 = *(v20 + 80);
        swift_unknownObjectRetain();
        v23(v22, v20);
        swift_unknownObjectRelease();
        v24 = *v11;
      }
    }
  }

  *v11 = 0;
  v11[1] = 0;
  return swift_unknownObjectRelease();
}

void sub_2489B3DD4(void *a1)
{
  v2 = v1;
  v4 = *v2;
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_27EEB9DB0);
  v6 = a1;
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136446466;
    v12 = sub_248A13570();
    v14 = sub_24897BC00(v12, v13, &v20);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v6;
    *v10 = v6;
    v15 = v6;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Set trusted device %{public}@", v9, 0x16u);
    sub_248983734(v10, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  v16 = v2 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
  swift_beginAccess();
  v17 = *(type metadata accessor for NearbyDeviceProvider.State(0) + 24);
  v18 = *&v16[v17];
  *&v16[v17] = v6;
  v19 = v6;
}

uint64_t sub_2489B3FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for NearbyDeviceProvider.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v11 = sub_248A122D0();
  __swift_project_value_buffer(v11, qword_27EEB9DB0);
  swift_unknownObjectRetain();
  v12 = sub_248A122B0();
  v13 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136446466;
    v16 = sub_248A13570();
    v18 = sub_24897BC00(v16, v17, v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v25[1] = a1;
    v25[2] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A60, &qword_248A16470);
    v19 = sub_248A12B80();
    v21 = sub_24897BC00(v19, v20, v25);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Add observer %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v15, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  if (sub_248A11D80())
  {
    v22 = OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
    swift_beginAccess();
    sub_2489B711C(v3 + v22, v10, type metadata accessor for NearbyDeviceProvider.State);
    v23 = sub_2489B2D54();
    sub_2489B78CC(v10, type metadata accessor for NearbyDeviceProvider.State);
    sub_248A11DA0();
    if ((v23 & 1) == 0)
    {
      return sub_2489B4748(a1, a2);
    }
  }

  else
  {
    sub_248A11DA0();
  }

  return sub_2489B3540();
}

uint64_t sub_2489B42DC()
{
  v1 = *v0;
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DB0);
  swift_unknownObjectRetain();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A60, &qword_248A16470);
    v10 = sub_248A12B80();
    v12 = sub_24897BC00(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Remove observer %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  sub_248A11DB0();
  result = sub_248A11D80();
  if ((result & 1) == 0)
  {
    return sub_2489B3B4C();
  }

  return result;
}

uint64_t sub_2489B44FC()
{
  v1 = *v0;
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DB0);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Notifying observers", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v10);
  return sub_248A11DC0();
}

uint64_t sub_2489B46CC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    a2(a1, v4);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2489B4748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for NearbyDeviceProviderState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyDeviceProvider.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v15 = sub_248A122D0();
  __swift_project_value_buffer(v15, qword_27EEB9DB0);

  swift_unknownObjectRetain();
  v16 = sub_248A122B0();
  v17 = sub_248A12E80();
  swift_unknownObjectRelease();

  v18 = 0x27EEB5000;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v39 = v11;
    v20 = v19;
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v20 = 136446722;
    v21 = sub_248A13570();
    v23 = a2;
    v24 = sub_24897BC00(v21, v22, v40);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
    swift_beginAccess();
    sub_2489B711C(v3 + v25, v14, type metadata accessor for NearbyDeviceProvider.State);
    v26 = sub_248A12B80();
    v28 = sub_24897BC00(v26, v27, v40);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2082;
    v40[1] = a1;
    v40[2] = v23;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A60, &qword_248A16470);
    v29 = sub_248A12B80();
    v31 = sub_24897BC00(v29, v30, v40);

    *(v20 + 24) = v31;
    a2 = v23;
    v18 = 0x27EEB5000uLL;
    _os_log_impl(&dword_248975000, v16, v17, "[%{public}s] Sending current state %{public}s to observer %{public}s", v20, 0x20u);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v32, -1, -1);
    v33 = v20;
    v11 = v39;
    MEMORY[0x24C1E0A80](v33, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v35 = v3 + *(v18 + 2648);
  swift_beginAccess();
  sub_2489B711C(&v35[*(v11 + 20)], v10, type metadata accessor for NearbyDeviceProviderState);
  (*(a2 + 8))(v3, &protocol witness table for NearbyDeviceProvider, v10, ObjectType, a2);
  return sub_2489B78CC(v10, type metadata accessor for NearbyDeviceProviderState);
}

void sub_2489B4B00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v5 = *v2;
  v6 = type metadata accessor for NearbyDevice(0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v2 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
  swift_beginAccess();
  v12 = *&v11[*(type metadata accessor for NearbyDeviceProvider.State(0) + 24)];
  if (!v12)
  {
    if (qword_27EEB5198 != -1)
    {
      swift_once();
    }

    v48 = sub_248A122D0();
    __swift_project_value_buffer(v48, qword_27EEB9DB0);
    v49 = sub_248A122B0();
    v50 = sub_248A12E60();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v78 = v52;
      *v51 = 136446210;
      v53 = sub_248A13570();
      v55 = sub_24897BC00(v53, v54, &v78);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_248975000, v49, v50, "[%{public}s] Trusted device is not set", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C1E0A80](v52, -1, -1);
      MEMORY[0x24C1E0A80](v51, -1, -1);
    }

    sub_2489B7AB8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v76 = v5;
  v73 = v6;
  v74 = a2;
  v13 = qword_27EEB5198;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_248A122D0();
  v16 = __swift_project_value_buffer(v15, qword_27EEB9DB0);
  v17 = v14;
  v18 = sub_248A122B0();
  v19 = sub_248A12E80();

  v20 = os_log_type_enabled(v18, v19);
  v75 = v3;
  v71 = v12;
  v72 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v78 = v70;
    *v21 = 136446466;
    v22 = sub_248A13570();
    v24 = sub_24897BC00(v22, v23, &v78);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2114;
    *(v21 + 14) = v17;
    v25 = v69;
    *v69 = v12;
    v26 = v17;
    _os_log_impl(&dword_248975000, v18, v19, "[%{public}s] Trusted device set to: %{public}@", v21, 0x16u);
    sub_248983734(v25, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v25, -1, -1);
    v27 = v70;
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x24C1E0A80](v27, -1, -1);
    MEMORY[0x24C1E0A80](v21, -1, -1);
  }

  v28 = v17;
  v29 = *(v77 + 16);
  if (!v29)
  {
    v56 = 1;
    v57 = v74;
    goto LABEL_32;
  }

  v30 = v7;
  v31 = v77 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v70 = v30;
  v77 = v30[9];
  while (1)
  {
    sub_2489B711C(v31, v10, type metadata accessor for NearbyDevice);
    v32 = *v10;
    v33 = v10[1];
    v34 = v28;
    v35 = [v28 name];
    v36 = sub_248A12B60();
    v38 = v37;

    if (!v33)
    {

      v28 = v34;
      goto LABEL_9;
    }

    if (v32 == v36 && v33 == v38)
    {

      v28 = v34;
    }

    else
    {
      v40 = sub_248A13340();

      v28 = v34;
      if ((v40 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v41 = v10[2];
    v42 = v10[3];
    v43 = [v28 uniqueIdentifier];
    v44 = sub_248A12B60();
    v46 = v45;

    if (v41 == v44 && v42 == v46)
    {
      break;
    }

    v47 = sub_248A13340();

    v28 = v34;
    if (v47)
    {
      goto LABEL_30;
    }

LABEL_9:
    sub_2489B78CC(v10, type metadata accessor for NearbyDevice);
    v31 += v77;
    if (!--v29)
    {
      v56 = 1;
      v57 = v74;
      goto LABEL_31;
    }
  }

  v28 = v34;
LABEL_30:
  v58 = v74;
  sub_2489B7A50(v10, v74, type metadata accessor for NearbyDevice);
  v57 = v58;
  v56 = 0;
LABEL_31:
  v7 = v70;
LABEL_32:
  (v7[7])(v57, v56, 1, v73);
  v59 = v28;
  v60 = sub_248A122B0();
  v61 = sub_248A12E80();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v78 = v64;
    *v62 = 136446466;
    v65 = sub_248A13570();
    v67 = sub_24897BC00(v65, v66, &v78);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2114;
    *(v62 + 14) = v59;
    *v63 = v71;
    v68 = v59;
    _os_log_impl(&dword_248975000, v60, v61, "[%{public}s] Found trusted device: %{public}@", v62, 0x16u);
    sub_248983734(v63, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v63, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x24C1E0A80](v64, -1, -1);
    MEMORY[0x24C1E0A80](v62, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2489B5228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v94 = a2;
  v3 = sub_248A128A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A11BC0();
  v87 = *(v8 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v8);
  v84 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_248A12540();
  v86 = *(v91 - 8);
  v11 = *(v86 + 64);
  v12 = MEMORY[0x28223BE20](v91);
  v90 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v74 - v14;
  v98 = sub_248A129E0();
  v93 = *(v98 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NearbyDevice(0);
  v88 = *(v18 - 8);
  v89 = v18;
  v19 = *(v88 + 64);
  MEMORY[0x28223BE20](v18);
  v92 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v82 = v74 - v23;
  v24 = sub_248A129A0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, a1, v24);
  v29 = (*(v25 + 88))(v28, v24);
  if (v29 == *MEMORY[0x277CD9108])
  {
    (*(v25 + 96))(v28, v24);
    v30 = *(v4 + 32);
    v30(v7, v28, v3);
    sub_2489B70B4(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
    v31 = swift_allocError();
    v30(v32, v7, v3);
    v33 = v94;
    *v94 = v31;
    v34 = type metadata accessor for NearbyDeviceProviderState(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  }

  if (v29 == *MEMORY[0x277CD9110])
  {
    (*(v25 + 8))(v28, v24);
LABEL_6:
    v34 = type metadata accessor for NearbyDeviceProviderState(0);
    v33 = v94;
    goto LABEL_7;
  }

  if (v29 == *MEMORY[0x277CD9100])
  {
    goto LABEL_6;
  }

  if (v29 != *MEMORY[0x277CD90F8])
  {
    goto LABEL_13;
  }

  v76 = v8;
  v36 = (v83 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state);
  swift_beginAccess();
  v24 = *v36;
  if (!*v36)
  {
    sub_2489B79F4();
    swift_allocError();
    return swift_willThrow();
  }

  v37 = v36[1];
  ObjectType = swift_getObjectType();
  v39 = *(v37 + 16);
  swift_unknownObjectRetain();
  v40 = v39(ObjectType, v37);
  v41 = v40;
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = sub_2489B666C(*(v40 + 16), 0);
    v44 = sub_2489B6768(&v97, (v43 + ((*(v93 + 80) + 32) & ~*(v93 + 80))), v42, v41);
    v29 = sub_2489B7A48();
    if (v44 != v42)
    {
      __break(1u);
LABEL_13:
      v45 = *MEMORY[0x277CD9118];
      v46 = v29;
      v47 = type metadata accessor for NearbyDeviceProviderState(0);
      v48 = v47;
      if (v46 == v45)
      {
        v49 = v94;
        swift_storeEnumTagMultiPayload();
        return (*(*(v48 - 8) + 56))(v49, 0, 1, v48);
      }

      else
      {
        (*(*(v47 - 8) + 56))(v94, 1, 1, v47);
        return (*(v25 + 8))(v28, v24);
      }
    }
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v50 = *(v43 + 16);
  if (v50)
  {
    v74[2] = v24;
    v97 = MEMORY[0x277D84F90];
    sub_2489CE5EC(0, v50, 0);
    v51 = v97;
    v80 = *(v93 + 16);
    v52 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v74[1] = v43;
    v53 = v43 + v52;
    v79 = *(v93 + 72);
    v78 = (v86 + 8);
    v75 = (v87 + 8);
    v93 += 16;
    v77 = (v93 - 8);
    v81 = v15;
    do
    {
      v87 = v51;
      v80(v96, v53, v98);
      sub_248A129D0();
      v54 = sub_248A124F0();
      v85 = v55;
      v86 = v54;
      v56 = *v78;
      v57 = v91;
      (*v78)(v15, v91);
      v58 = v90;
      sub_248A129D0();
      v59 = sub_248A12530();
      v61 = v60;
      v56(v58, v57);
      if (!v61)
      {
        v62 = v84;
        sub_248A11BB0();
        v59 = sub_248A11B90();
        v61 = v63;
        (*v75)(v62, v76);
      }

      v64 = v92;
      v51 = v87;
      v65 = &v92[*(v89 + 24)];
      v66 = v96;
      sub_248A129D0();
      (*v77)(v66, v98);
      v67 = v85;
      *v64 = v86;
      v64[1] = v67;
      v64[2] = v59;
      v64[3] = v61;
      v97 = v51;
      v69 = *(v51 + 16);
      v68 = *(v51 + 24);
      v15 = v81;
      if (v69 >= v68 >> 1)
      {
        sub_2489CE5EC(v68 > 1, v69 + 1, 1);
        v51 = v97;
      }

      *(v51 + 16) = v69 + 1;
      sub_2489B7A50(v64, v51 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v69, type metadata accessor for NearbyDevice);
      v53 += v79;
      --v50;
    }

    while (v50);
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v70 = v82;
  v71 = v95;
  sub_2489B4B00(v51, v82);
  v72 = v94;
  swift_unknownObjectRelease();
  if (v71)
  {
  }

  sub_2489B7044(v70, v72);
  v73 = type metadata accessor for NearbyDeviceProviderState(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
}

uint64_t sub_2489B5C8C(uint64_t a1)
{
  v2 = v1;
  v4.isa = v1->isa;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A98, &qword_248A16730);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = (&v59 - v7);
  v8 = type metadata accessor for NearbyDeviceProviderState(0);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v59 - v12);
  v14 = sub_248A129A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v67 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - v19;
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v21 = sub_248A122D0();
  v22 = __swift_project_value_buffer(v21, qword_27EEB9DB0);
  v23 = *(v15 + 16);
  v23(v20, a1, v14);
  v68 = v22;
  v24 = sub_248A122B0();
  v66 = sub_248A12E80();
  if (os_log_type_enabled(v24, v66))
  {
    v25 = swift_slowAlloc();
    v62 = v2;
    v26 = v25;
    v60 = swift_slowAlloc();
    v71[0] = v60;
    *v26 = 136446466;
    v27 = sub_248A13570();
    v61 = a1;
    v29 = sub_24897BC00(v27, v28, v71);
    v59 = v24;
    v30 = v13;
    v31 = v29;

    *(v26 + 4) = v31;
    v13 = v30;
    *(v26 + 12) = 2082;
    v23(v67, v20, v14);
    v32 = sub_248A12B80();
    v34 = v33;
    (*(v15 + 8))(v20, v14);
    v35 = sub_24897BC00(v32, v34, v71);
    a1 = v61;

    *(v26 + 14) = v35;
    v36 = v59;
    _os_log_impl(&dword_248975000, v59, v66, "[%{public}s] Handle browser state update: %{public}s", v26, 0x16u);
    v37 = v60;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v37, -1, -1);
    v38 = v26;
    v2 = v62;
    MEMORY[0x24C1E0A80](v38, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v20, v14);
  }

  v39 = v69;
  sub_2489B5228(a1, v69);
  if ((*(v64 + 48))(v39, 1, v65) == 1)
  {
    return sub_248983734(v39, &qword_27EEB5A98, &qword_248A16730);
  }

  sub_2489B7A50(v39, v13, type metadata accessor for NearbyDeviceProviderState);
  v41 = v2 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
  swift_beginAccess();
  v42 = type metadata accessor for NearbyDeviceProvider.State(0);
  v43 = v63;
  sub_2489B711C(&v41[*(v42 + 20)], v63, type metadata accessor for NearbyDeviceProviderState);
  v44 = _s13DeviceSharing06NearbyA13ProviderStateO2eeoiySbAC_ACtFZ_0(v13, v43);
  sub_2489B78CC(v43, type metadata accessor for NearbyDeviceProviderState);
  v45 = sub_248A122B0();
  v46 = sub_248A12E80();
  v47 = os_log_type_enabled(v45, v46);
  if (v44)
  {
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136446210;
      v50 = sub_248A13570();
      v52 = sub_24897BC00(v50, v51, v70);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_248975000, v45, v46, "[%{public}s] Browser state unchanged", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1E0A80](v49, -1, -1);
      MEMORY[0x24C1E0A80](v48, -1, -1);
    }
  }

  else
  {
    if (v47)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v70[0] = v54;
      *v53 = 136446210;
      v55 = sub_248A13570();
      v57 = sub_24897BC00(v55, v56, v70);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_248975000, v45, v46, "[%{public}s] Browser state changed", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x24C1E0A80](v54, -1, -1);
      MEMORY[0x24C1E0A80](v53, -1, -1);
    }

    swift_beginAccess();
    sub_2489B792C(v13, &v41[*(v42 + 20)]);
    v58 = swift_endAccess();
    MEMORY[0x28223BE20](v58);
    *(&v59 - 2) = v2;
    *(&v59 - 1) = v13;
    sub_2489B44FC();
  }

  return sub_2489B78CC(v13, type metadata accessor for NearbyDeviceProviderState);
}

uint64_t NearbyDeviceProvider.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  v2 = OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_observers;
  v3 = sub_248A11E00();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_2489B78CC(v0 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state, type metadata accessor for NearbyDeviceProvider.State);
  return v0;
}

uint64_t NearbyDeviceProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  v2 = OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_observers;
  v3 = sub_248A11E00();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_2489B78CC(v0 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state, type metadata accessor for NearbyDeviceProvider.State);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

size_t sub_2489B666C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5AA8, &qword_248A16738);
  v4 = *(sub_248A129E0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2489B6768(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_248A129E0();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s13DeviceSharing06NearbyA13ProviderStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyDevice(0);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5AD0, &qword_248A16750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for NearbyDeviceProviderState(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5AD8, &qword_248A16758);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v39 - v26;
  v28 = *(v25 + 56);
  sub_2489B711C(a1, &v39 - v26, type metadata accessor for NearbyDeviceProviderState);
  sub_2489B711C(a2, &v27[v28], type metadata accessor for NearbyDeviceProviderState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    v30 = v27;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2489B711C(v27, v22, type metadata accessor for NearbyDeviceProviderState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_248983734(v22, &qword_27EEB5A50, &unk_248A16450);
LABEL_13:
        sub_248983734(v27, qword_27EEB5AD8, &qword_248A16758);
        v31 = 0;
        return v31 & 1;
      }

      sub_2489B7044(v22, v18);
      sub_2489B7044(&v27[v28], v16);
      v33 = *(v7 + 48);
      v34 = v44;
      sub_24898D610(v18, v44, &qword_27EEB5A50, &unk_248A16450);
      sub_24898D610(v16, v34 + v33, &qword_27EEB5A50, &unk_248A16450);
      v35 = v43;
      v36 = *(v42 + 48);
      if (v36(v34, 1, v43) == 1)
      {
        sub_248983734(v16, &qword_27EEB5A50, &unk_248A16450);
        sub_248983734(v18, &qword_27EEB5A50, &unk_248A16450);
        if (v36(v34 + v33, 1, v35) == 1)
        {
          sub_248983734(v34, &qword_27EEB5A50, &unk_248A16450);
          v31 = 1;
LABEL_26:
          sub_2489B78CC(v27, type metadata accessor for NearbyDeviceProviderState);
          return v31 & 1;
        }
      }

      else
      {
        v37 = v41;
        sub_24898D610(v34, v41, &qword_27EEB5A50, &unk_248A16450);
        if (v36(v34 + v33, 1, v35) != 1)
        {
          v38 = v40;
          sub_2489B7A50(v34 + v33, v40, type metadata accessor for NearbyDevice);
          if (*(v37 + 16) == *(v38 + 16) && *(v37 + 24) == *(v38 + 24) || (v31 = 0, (sub_248A13340() & 1) != 0))
          {
            v31 = MEMORY[0x24C1DF1C0](v37 + *(v35 + 24), v38 + *(v35 + 24));
          }

          sub_248983734(v16, &qword_27EEB5A50, &unk_248A16450);
          sub_248983734(v18, &qword_27EEB5A50, &unk_248A16450);
          sub_2489B78CC(v38, type metadata accessor for NearbyDevice);
          sub_2489B78CC(v37, type metadata accessor for NearbyDevice);
          sub_248983734(v34, &qword_27EEB5A50, &unk_248A16450);
          goto LABEL_26;
        }

        sub_248983734(v16, &qword_27EEB5A50, &unk_248A16450);
        sub_248983734(v18, &qword_27EEB5A50, &unk_248A16450);
        sub_2489B78CC(v37, type metadata accessor for NearbyDevice);
      }

      sub_248983734(v34, &qword_27EEB5AD0, &qword_248A16750);
      v31 = 0;
      goto LABEL_26;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_13;
    }

    sub_2489B78CC(&v27[v28], type metadata accessor for NearbyDeviceProviderState);
    v30 = v27;
  }

  sub_2489B78CC(v30, type metadata accessor for NearbyDeviceProviderState);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_2489B7044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489B70B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2489B711C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2489B71D0()
{
  result = qword_27EEB5A70;
  if (!qword_27EEB5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5A70);
  }

  return result;
}

void sub_2489B724C()
{
  sub_2489B72D8();
  if (v0 <= 0x3F)
  {
    sub_248A12540();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2489B72D8()
{
  if (!qword_28150F588)
  {
    v0 = sub_248A12F20();
    if (!v1)
    {
      atomic_store(v0, &qword_28150F588);
    }
  }
}

void sub_2489B7378()
{
  sub_2489B73EC();
  if (v0 <= 0x3F)
  {
    sub_2489B7444();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2489B73EC()
{
  if (!qword_281510110)
  {
    type metadata accessor for NearbyDevice(255);
    v0 = sub_248A12F20();
    if (!v1)
    {
      atomic_store(v0, &qword_281510110);
    }
  }
}

unint64_t sub_2489B7444()
{
  result = qword_28150F550;
  if (!qword_28150F550)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28150F550);
  }

  return result;
}

uint64_t sub_2489B7530(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2489B7568()
{
  result = sub_248A11E00();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NearbyDeviceProvider.State(319);
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

void sub_2489B771C()
{
  sub_2489B77B8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NearbyDeviceProviderState(319);
    if (v1 <= 0x3F)
    {
      sub_2489B781C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2489B77B8()
{
  if (!qword_27EEB5A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5A80, &qword_248A16728);
    v0 = sub_248A12F20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB5A78);
    }
  }
}

void sub_2489B781C()
{
  if (!qword_27EEB5A88)
  {
    sub_2489B7884(255, &qword_27EEB5A90, 0x277D050E0);
    v0 = sub_248A12F20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB5A88);
    }
  }
}

uint64_t sub_2489B7884(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2489B78CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2489B792C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyDeviceProviderState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489B7990(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(a2 + 8))(v5, &protocol witness table for NearbyDeviceProvider, v4, ObjectType, a2);
}

unint64_t sub_2489B79F4()
{
  result = qword_27EEB5AA0;
  if (!qword_27EEB5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5AA0);
  }

  return result;
}

uint64_t sub_2489B7A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2489B7AB8()
{
  result = qword_27EEB5AB0;
  if (!qword_27EEB5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5AB0);
  }

  return result;
}

uint64_t sub_2489B7B98()
{
  v0 = swift_allocObject();
  sub_2489BA4BC();
  return v0;
}

void sub_2489B7BD0()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F30, &qword_248A16958);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v9 = sub_248A12520();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v11 = sub_248A122D0();
  __swift_project_value_buffer(v11, qword_27EEB9DC8);
  v12 = sub_248A122B0();
  v13 = sub_248A12E80();
  v14 = os_log_type_enabled(v12, v13);
  v39 = v4;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v15 = 136446210;
    v16 = sub_248A13570();
    v18 = sub_24897BC00(v16, v17, &v40);

    *(v15 + 4) = v18;
    v2 = v1;
    _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Activate", v15, 0xCu);
    v19 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x24C1E0A80](v19, -1, -1);
    MEMORY[0x24C1E0A80](v15, -1, -1);
  }

  v20 = *(v3 + 40);
  if ((v20 & 0xC0) == 0x80 && v20 == 128 && *(v3 + 3) == 0)
  {
    sub_248A116D0();

    sub_248A12510();
    v21 = sub_248A125F0();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_248A125A0();
    if (v2)
    {
    }

    else
    {
      v25 = v24;
      sub_248A125C0();
      v26 = sub_248A125D0();
      (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
      sub_248A125E0();
      v38 = 0;
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      v29 = v39;
      v30 = *(v39 + 80);
      v28[2] = v30;
      v31 = *(v29 + 88);
      v28[3] = v31;
      v28[4] = v27;

      sub_2489789C8(sub_2489BA944);
      sub_248A12550();

      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      v33[2] = v30;
      v33[3] = v31;
      v33[4] = v32;

      sub_2489789C8(sub_2489BA950);
      sub_248A12560();

      v34 = v3[2];
      sub_248A12590();

      v35 = v3[3];
      v36 = v3[4];
      v3[3] = v25;
      v3[4] = 0;
      v37 = *(v3 + 40);
      *(v3 + 40) = 0;
      sub_2489BA88C(v35, v36, v37);
    }
  }
}

uint64_t sub_2489B8038(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489B8934(a1);
  }

  return result;
}

uint64_t sub_2489B8098(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489B9F0C(a1, &protocol witness table for NWConnection);
  }

  return result;
}

uint64_t sub_2489B8100()
{
  v1[6] = v0;
  v1[7] = *v0;
  v1[8] = *v0;
  return MEMORY[0x2822009F8](sub_2489B8170, 0, 0);
}

uint64_t sub_2489B8170()
{
  v42 = v0;
  v1 = sub_2489B869C(*(v0 + 48));
  if (v3 == -1)
  {
    v9 = *(MEMORY[0x277D857E8] + 4);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v10[1] = sub_2489B856C;

    return MEMORY[0x282200480](500000000);
  }

  else
  {
    v4 = *(v0 + 48);
    sub_2489BA8B8(v1, v2, v3);
    v5 = sub_2489B869C(v4);
    if (v7 == -1)
    {
      if (qword_28150F5F0 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 48);
      v12 = sub_248A122D0();
      __swift_project_value_buffer(v12, qword_2815105C0);

      v13 = sub_248A122B0();
      v14 = sub_248A12E60();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 56);
        v16 = *(v0 + 64);
        v17 = *(v0 + 48);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v41[0] = v19;
        *v18 = 136446466;
        v20 = *(v16 + 80);
        v21 = *(v16 + 88);
        v22 = sub_248A13570();
        v24 = sub_24897BC00(v22, v23, v41);

        *(v18 + 4) = v24;
        *(v18 + 12) = 2082;
        v25 = *(v17 + 24);
        v26 = *(v17 + 32);
        v27 = *(v17 + 40);
        *(v0 + 16) = v25;
        *(v0 + 24) = v26;
        *(v0 + 32) = v27;
        sub_2489BA918(v25, v26, v27);
        type metadata accessor for PeerListener.State();
        v28 = sub_248A12B80();
        v30 = sub_24897BC00(v28, v29, v41);

        *(v18 + 14) = v30;
        _os_log_impl(&dword_248975000, v13, v14, "[%{public}s] Peer Listener expected result in state %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v19, -1, -1);
        MEMORY[0x24C1E0A80](v18, -1, -1);
      }

      v31 = sub_248A12150();
      sub_2489BA8D0(qword_27EEB5470, MEMORY[0x277D05138]);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D05118], v31);
      swift_willThrow();
      goto LABEL_13;
    }

    v8 = v5;
    if (v7)
    {
      *(v0 + 40) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      swift_willThrowTypedImpl();
LABEL_13:
      v33 = *(v0 + 8);

      return v33();
    }

    v34 = *(v0 + 64);
    v36 = *(v34 + 80);
    v35 = *(v34 + 88);
    v37 = v6;
    type metadata accessor for PeerConnection();
    v38 = PeerConnection.__allocating_init(networkConnection:)(v8, v37);
    v39 = *(v0 + 8);

    return v39(v38);
  }
}

uint64_t sub_2489B856C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489BA95C, 0, 0);
  }
}

void *sub_2489B869C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 & 0xC0) != 0x40)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 40) & 1;
  sub_2489BA938(v2, *(a1 + 32), v1 & 1);
  return v2;
}

void sub_2489B8704()
{
  v1 = *(v0 + 40);
  if (v1 <= 0x3F)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 40);

    sub_2489B8784();
    sub_2489BA88C(v3, v2, v4);
    LOBYTE(v1) = *(v0 + 40);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 24) = xmmword_248A167C0;
  *(v0 + 40) = 0x80;

  sub_2489BA88C(v5, v6, v1);
}

uint64_t sub_2489B8784()
{
  v1 = *v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Cleaning up listener", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  sub_2489789C8(0);
  sub_248A12550();
  sub_2489789C8(0);
  sub_248A12560();
  return sub_248A125B0();
}

void sub_2489B8934(uint64_t a1)
{
  v147 = *v1;
  v3 = sub_248A128A0();
  v4 = *(v3 - 8);
  v148 = v3;
  v149 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v144 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v143 = &v137 - v9;
  MEMORY[0x28223BE20](v8);
  v146 = &v137 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BF0, &qword_248A16948);
  v11 = *(*(v140 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v140);
  v139 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v141 = &v137 - v15;
  MEMORY[0x28223BE20](v14);
  v142 = &v137 - v16;
  v17 = sub_248A12580();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v145 = &v137 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v138 = &v137 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v137 - v27;
  v29 = sub_248A12A50();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v1 + 2);
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x277D85200], v29);
  v35 = v34;
  v36 = sub_248A12A60();
  (*(v30 + 8))(v33, v29);
  if ((v36 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    swift_once();
LABEL_5:
    v38 = sub_248A122D0();
    __swift_project_value_buffer(v38, qword_27EEB9DC8);
    (v36)(v22, a1, v17);
    v39 = sub_248A122B0();
    v40 = sub_248A12E80();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v149 = v36;
      v150 = v42;
      v43 = v42;
      *v41 = 136446466;
      v44 = sub_248A13570();
      v46 = sub_24897BC00(v44, v45, &v150);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2082;
      (v149)(v145, v22, v17);
      v47 = sub_248A12B80();
      v49 = v48;
      (*(v18 + 8))(v22, v17);
      v50 = sub_24897BC00(v47, v49, &v150);

      *(v41 + 14) = v50;
      _os_log_impl(&dword_248975000, v39, v40, "%{public}s listener state %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v43, -1, -1);
      MEMORY[0x24C1E0A80](v41, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v22, v17);
    }

    return;
  }

  v36 = *(v18 + 16);
  (v36)(v28, a1, v17);
  v37 = (*(v18 + 88))(v28, v17);
  if (v37 == *MEMORY[0x277CD8B40])
  {
    (*(v18 + 8))(v28, v17);
    goto LABEL_4;
  }

  if (v37 == *MEMORY[0x277CD8B38])
  {
    v142 = v1;
    (*(v18 + 96))(v28, v17);
    v51 = v148;
    v52 = v146;
    (*(v149 + 32))(v146, v28, v148);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v53 = sub_248A122D0();
    __swift_project_value_buffer(v53, qword_27EEB9DC8);
    v54 = sub_248A122B0();
    v55 = sub_248A12E60();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v150 = v57;
      *v56 = 136446210;
      v58 = sub_248A13570();
      v60 = sub_24897BC00(v58, v59, &v150);
      v52 = v146;

      *(v56 + 4) = v60;
      _os_log_impl(&dword_248975000, v54, v55, " %{public}s !!! PEER LISTENER FAILED !!!", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      v61 = v57;
      v51 = v148;
      MEMORY[0x24C1E0A80](v61, -1, -1);
      MEMORY[0x24C1E0A80](v56, -1, -1);
    }

    v62 = v144;
    v63 = sub_2489B9AA4();
    v64 = *(v149 + 16);
    if (v63)
    {
      v65 = v143;
      v64(v143, v52, v51);
      v66 = sub_248A122B0();
      v67 = sub_248A12E60();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v150 = v70;
        *v68 = 136446466;
        v71 = sub_248A13570();
        v73 = sub_24897BC00(v71, v72, &v150);

        *(v68 + 4) = v73;
        *(v68 + 12) = 2114;
        sub_2489BA8D0(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
        swift_allocError();
        v64(v74, v65, v148);
        v75 = _swift_stdlib_bridgeErrorToNSError();
        v76 = *(v149 + 8);
        v76(v65, v148);
        *(v68 + 14) = v75;
        *v69 = v75;
        v52 = v146;
        _os_log_impl(&dword_248975000, v66, v67, "%{public}s listener failed with %{public}@; restarting", v68, 0x16u);
        sub_248983734(v69, &qword_27EEB5600, &unk_248A15210);
        v77 = v69;
        v51 = v148;
        MEMORY[0x24C1E0A80](v77, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x24C1E0A80](v70, -1, -1);
        MEMORY[0x24C1E0A80](v68, -1, -1);
      }

      else
      {

        v76 = *(v149 + 8);
        v76(v65, v51);
      }

      sub_2489BA07C();
    }

    else
    {
      v64(v62, v52, v51);
      v83 = sub_248A122B0();
      v84 = sub_248A12E60();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v150 = v87;
        *v85 = 136446466;
        v88 = sub_248A13570();
        v90 = sub_24897BC00(v88, v89, &v150);

        *(v85 + 4) = v90;
        *(v85 + 12) = 2114;
        sub_2489BA8D0(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
        swift_allocError();
        v64(v91, v62, v148);
        v92 = _swift_stdlib_bridgeErrorToNSError();
        v76 = *(v149 + 8);
        v76(v62, v148);
        *(v85 + 14) = v92;
        *v86 = v92;
        v52 = v146;
        _os_log_impl(&dword_248975000, v83, v84, "%{public}s listener failed with %{public}@; stopping", v85, 0x16u);
        sub_248983734(v86, &qword_27EEB5600, &unk_248A15210);
        v93 = v86;
        v51 = v148;
        MEMORY[0x24C1E0A80](v93, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x24C1E0A80](v87, -1, -1);
        MEMORY[0x24C1E0A80](v85, -1, -1);
      }

      else
      {

        v76 = *(v149 + 8);
        v76(v62, v51);
      }

      v109 = v142;
      sub_2489BA8D0(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
      v110 = swift_allocError();
      v64(v111, v52, v51);
      v112 = *(v109 + 3);
      v113 = *(v109 + 4);
      *(v109 + 3) = v110;
      *(v109 + 4) = 0;
      v114 = v109[40];
      v109[40] = 65;
      sub_2489BA88C(v112, v113, v114);
      sub_2489B8704();
    }

    v76(v52, v51);
  }

  else
  {
    if (v37 == *MEMORY[0x277CD8B30])
    {
LABEL_4:
      if (qword_27EEB51A0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_47;
    }

    if (v37 == *MEMORY[0x277CD8B28])
    {
      v78 = v1[40];
      if (v78 > 0x3F)
      {
        v115 = sub_248A12520();
        v82 = v142;
        (*(*(v115 - 8) + 56))(v142, 1, 1, v115);
      }

      else
      {
        v81 = v1 + 24;
        v80 = *(v1 + 3);
        v79 = *(v81 + 1);

        v82 = v142;
        sub_248A12570();
        sub_2489BA88C(v80, v79, v78);
      }

      v116 = v141;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v117 = sub_248A122D0();
      __swift_project_value_buffer(v117, qword_27EEB9DC8);
      sub_24898D610(v82, v116, &qword_27EEB5BF0, &qword_248A16948);
      v118 = sub_248A122B0();
      v119 = sub_248A12E80();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v150 = v121;
        *v120 = 136446466;
        v122 = sub_248A13570();
        v124 = sub_24897BC00(v122, v123, &v150);

        *(v120 + 4) = v124;
        *(v120 + 12) = 2082;
        sub_24898D610(v116, v139, &qword_27EEB5BF0, &qword_248A16948);
        v125 = sub_248A12B80();
        v127 = v126;
        sub_248983734(v116, &qword_27EEB5BF0, &qword_248A16948);
        v128 = sub_24897BC00(v125, v127, &v150);

        *(v120 + 14) = v128;
        _os_log_impl(&dword_248975000, v118, v119, "%{public}s listener state ready on port %{public}s", v120, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v121, -1, -1);
        MEMORY[0x24C1E0A80](v120, -1, -1);
      }

      else
      {

        sub_248983734(v116, &qword_27EEB5BF0, &qword_248A16948);
      }

      sub_248983734(v82, &qword_27EEB5BF0, &qword_248A16948);
    }

    else if (v37 == *MEMORY[0x277CD8B48])
    {
      v142 = v1;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v94 = sub_248A122D0();
      __swift_project_value_buffer(v94, qword_27EEB9DC8);
      v95 = v138;
      (v36)(v138, a1, v17);
      v96 = sub_248A122B0();
      v97 = sub_248A12E80();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v149 = v36;
        v150 = v99;
        v100 = v99;
        *v98 = 136446466;
        v101 = sub_248A13570();
        v102 = v95;
        v104 = sub_24897BC00(v101, v103, &v150);

        *(v98 + 4) = v104;
        *(v98 + 12) = 2082;
        (v149)(v145, v95, v17);
        v105 = sub_248A12B80();
        v107 = v106;
        (*(v18 + 8))(v102, v17);
        v108 = sub_24897BC00(v105, v107, &v150);

        *(v98 + 14) = v108;
        _os_log_impl(&dword_248975000, v96, v97, "%{public}s listener state %{public}s; invalidating", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v100, -1, -1);
        MEMORY[0x24C1E0A80](v98, -1, -1);
      }

      else
      {

        (*(v18 + 8))(v95, v17);
      }

      sub_2489B8704();
    }

    else
    {
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v129 = sub_248A122D0();
      __swift_project_value_buffer(v129, qword_27EEB9DC8);
      v130 = sub_248A122B0();
      v131 = sub_248A12E70();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v150 = v133;
        *v132 = 136446210;
        v134 = sub_248A13570();
        v136 = sub_24897BC00(v134, v135, &v150);

        *(v132 + 4) = v136;
        _os_log_impl(&dword_248975000, v130, v131, "%{public}s found unexpected NWListener.State type", v132, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v133);
        MEMORY[0x24C1E0A80](v133, -1, -1);
        MEMORY[0x24C1E0A80](v132, -1, -1);
      }

      (*(v18 + 8))(v28, v17);
    }
  }
}

uint64_t sub_2489B9AA4()
{
  v1 = v0;
  v2 = sub_248A128A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BF8, &qword_248A16950);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  (*(v3 + 16))(&v28 - v18, v1, v2);
  v20 = *(v3 + 56);
  v20(v19, 0, 1, v2);
  *v17 = -65569;
  (*(v3 + 104))(v17, *MEMORY[0x277CD8FA0], v2);
  v20(v17, 0, 1, v2);
  v21 = *(v7 + 56);
  sub_24898D610(v19, v10, &qword_27EEB5608, &qword_248A15110);
  sub_24898D610(v17, &v10[v21], &qword_27EEB5608, &qword_248A15110);
  v22 = *(v3 + 48);
  if (v22(v10, 1, v2) != 1)
  {
    v24 = v29;
    sub_24898D610(v10, v29, &qword_27EEB5608, &qword_248A15110);
    if (v22(&v10[v21], 1, v2) != 1)
    {
      v25 = v28;
      (*(v3 + 32))(v28, &v10[v21], v2);
      sub_2489BA8D0(&qword_27EEB5C00, MEMORY[0x277CD8FC0]);
      v23 = sub_248A12B00();
      v26 = *(v3 + 8);
      v26(v25, v2);
      sub_248983734(v17, &qword_27EEB5608, &qword_248A15110);
      v26(v24, v2);
      sub_248983734(v10, &qword_27EEB5608, &qword_248A15110);
      goto LABEL_8;
    }

    sub_248983734(v17, &qword_27EEB5608, &qword_248A15110);
    (*(v3 + 8))(v24, v2);
    goto LABEL_6;
  }

  sub_248983734(v17, &qword_27EEB5608, &qword_248A15110);
  if (v22(&v10[v21], 1, v2) != 1)
  {
LABEL_6:
    sub_248983734(v10, &qword_27EEB5BF8, &qword_248A16950);
    v23 = 0;
    goto LABEL_8;
  }

  sub_248983734(v10, &qword_27EEB5608, &qword_248A15110);
  v23 = 1;
LABEL_8:
  sub_248983734(v19, &qword_27EEB5608, &qword_248A15110);
  return v23 & 1;
}

void sub_2489B9F0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_248A12A50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_248A12A60();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v12 = *(v2 + 40);
    if (v12 <= 0x3F)
    {
      v14 = *(v2 + 24);
      v13 = *(v2 + 32);

      sub_2489B8784();
      sub_2489BA88C(v14, v13, v12);
      LOBYTE(v12) = *(v2 + 40);
    }

    v15 = *(v2 + 24);
    v16 = *(v2 + 32);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 64;
    swift_unknownObjectRetain();
    sub_2489BA88C(v15, v16, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2489BA07C()
{
  v1 = *v0;
  sub_2489B8704();
  v2 = v0[3];
  v3 = v0[4];
  v0[3] = 0;
  v0[4] = 0;
  v4 = *(v0 + 40);
  *(v0 + 40) = 0x80;
  sub_2489BA88C(v2, v3, v4);
  return sub_2489B7BD0();
}

uint64_t sub_2489BA2C8()
{
  sub_2489B8704();

  sub_2489BA88C(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t sub_2489BA2F8()
{
  sub_2489BA2C8();

  return swift_deallocClassInstance();
}

uint64_t sub_2489BA344()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13DeviceSharing12PeerListenerC5State33_26B84ACC0C36B2854C5996939FED1525LLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2489BA3C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2489BA414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2489BA478(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_2489BA4BC()
{
  v11[0] = sub_248A12EA0();
  v1 = *(v11[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v11[0]);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A12E90();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_248A12A40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2489BA7DC();
  sub_248A12A20();
  v11[1] = MEMORY[0x277D84F90];
  sub_2489BA8D0(&unk_27EEB5F40, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BE8, &qword_248A16940);
  sub_2489BA828();
  sub_248A12FA0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v11[0]);
  v9 = sub_248A12EB0();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v9;
  *(v0 + 40) = 0x80;
  return v0;
}

uint64_t sub_2489BA728()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24898283C;

  return sub_2489B8100();
}

unint64_t sub_2489BA7DC()
{
  result = qword_27EEB5BE0;
  if (!qword_27EEB5BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB5BE0);
  }

  return result;
}

unint64_t sub_2489BA828()
{
  result = qword_27EEB5F50;
  if (!qword_27EEB5F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5BE8, &qword_248A16940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5F50);
  }

  return result;
}

void sub_2489BA88C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    sub_2489BA8AC(a1, a2, a3 & 1);
  }

  else if (!(a3 >> 6))
  {
  }
}

void sub_2489BA8AC(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_2489BA8B8(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2489BA8AC(a1, a2, a3 & 1);
  }
}

uint64_t sub_2489BA8D0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2489BA918(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    return sub_2489BA938(result, a2, a3 & 1);
  }

  if (!(a3 >> 6))
  {
  }

  return result;
}

id sub_2489BA938(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2489BA944(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2489B8038(a1);
}

uint64_t sub_2489BA950(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2489B8098(a1);
}

uint64_t PeerBrowser.__allocating_init(nearbyDeviceProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  PeerBrowser.init(nearbyDeviceProvider:)(a1, a2);
  return v7;
}

uint64_t sub_2489BA9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for PeerBrowser.State();
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t sub_2489BAA70(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for PeerBrowser.State();
  (*(*(v7 - 8) + 40))(v1 + v4, a1, v7);
  return swift_endAccess();
}

char *PeerBrowser.init(nearbyDeviceProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 104);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 3, v6);
  *(v2 + 2) = a1;
  *(v2 + 3) = a2;
  return v2;
}

char *PeerBrowser.deinit()
{
  v1 = *v0;
  sub_2489BBA60();
  v2 = *(v0 + 2);
  swift_unknownObjectRelease();
  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = type metadata accessor for PeerBrowser.State();
  (*(*(v6 - 8) + 8))(&v0[v3], v6);
  return v0;
}

uint64_t PeerBrowser.__deallocating_deinit()
{
  PeerBrowser.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2489BACD0()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for PeerBrowser.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_27EEB9DC8);
  v13 = sub_248A122B0();
  v14 = sub_248A12E80();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446210;
    v18 = sub_248A13570();
    v20 = sub_24897BC00(v18, v19, &v30);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_248975000, v13, v14, "[%{public}s] Activate", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1E0A80](v17, -1, -1);
    v21 = v16;
    v9 = v29;
    MEMORY[0x24C1E0A80](v21, -1, -1);
  }

  sub_2489BA9B0(v11);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v11, 3, v22);
  result = (*(v5 + 8))(v11, v4);
  if (v24 == 1)
  {
    v26 = *(v1 + 16);
    v27 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v27 + 16))(v1, &protocol witness table for PeerBrowser<A>, ObjectType, v27);
    (*(v23 + 56))(v9, 2, 3, v22);
    return sub_2489BAA70(v9);
  }

  return result;
}

uint64_t sub_2489BB00C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = *v0;
  v1[5] = *(*v0 + 80);
  v1[6] = *(v2 + 88);
  v3 = type metadata accessor for PeerBrowser.State();
  v1[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_248A12540();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for NearbyDevice(0);
  v1[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F10, &qword_248A16988) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489BB1D8, 0, 0);
}

uint64_t sub_2489BB1D8()
{
  v52 = v0;
  v1 = v0[16];
  sub_2489BB8A8(v0[3], v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[16];
  if (v4 == 1)
  {
    sub_248983734(v5, &unk_27EEB5F10, &qword_248A16988);
    v6 = *(MEMORY[0x277D857E8] + 4);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_2489BB724;

    return MEMORY[0x282200480](500000000);
  }

  v8 = v0[15];
  v9 = v0[3];
  sub_248983734(v5, &unk_27EEB5F10, &qword_248A16988);
  sub_2489BB8A8(v9, v8);
  v10 = v3(v8, 1, v2);
  v11 = v0[15];
  if (v10 == 1)
  {
    sub_248983734(v0[15], &unk_27EEB5F10, &qword_248A16988);
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v12 = v0[3];
    v13 = sub_248A122D0();
    __swift_project_value_buffer(v13, qword_2815105C0);

    v14 = sub_248A122B0();
    v15 = sub_248A12E60();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[7];
      v16 = v0[8];
      v18 = v0[3];
      v19 = v0[4];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51[0] = v21;
      *v20 = 136446466;
      v22 = sub_248A13570();
      v24 = sub_24897BC00(v22, v23, v51);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      sub_2489BA9B0(v16);
      v25 = sub_248A12B80();
      v27 = sub_24897BC00(v25, v26, v51);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_248975000, v14, v15, "[%{public}s] Peer Browser expected result in state is %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v21, -1, -1);
      MEMORY[0x24C1E0A80](v20, -1, -1);
    }

    v28 = sub_248A12150();
    sub_2489BCB48();
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D05118], v28);
    swift_willThrow();
    goto LABEL_13;
  }

  v30 = v0[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[2] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    swift_willThrowTypedImpl();
LABEL_13:
    v32 = v0[15];
    v31 = v0[16];
    v34 = v0[13];
    v33 = v0[14];
    v35 = v0[11];
    v36 = v0[8];

    v37 = v0[1];

    return v37();
  }

  v38 = v0[13];
  v39 = v0[14];
  v41 = v0[11];
  v40 = v0[12];
  v42 = v0[9];
  v43 = v0[10];
  v49 = v0[16];
  v50 = v0[8];
  v45 = v0[5];
  v44 = v0[6];
  sub_2489BCBA0(v11, v38);
  sub_2489BCBA0(v38, v39);
  type metadata accessor for PeerConnection();
  (*(v43 + 16))(v41, v39 + *(v40 + 24), v42);
  v46 = PeerConnection.__allocating_init(endpoint:)(v41);
  sub_2489BD908(v39, type metadata accessor for NearbyDevice);

  v47 = v0[1];

  return v47(v46);
}

uint64_t sub_2489BB724()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[15];
    v5 = v2[16];
    v8 = v2[13];
    v7 = v2[14];
    v9 = v2[11];
    v10 = v2[8];

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489BDB10, 0, 0);
  }
}

uint64_t sub_2489BB8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = type metadata accessor for PeerBrowser.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_2489BA9B0(&v14 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  if ((*(*(v10 - 8) + 48))(v9, 3, v10))
  {
    (*(v6 + 8))(v9, v5);
    v11 = 1;
  }

  else
  {
    sub_2489BDAA8(v9, a2, qword_27EEB5C10, &unk_248A16990);
    v11 = 0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
  return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
}

uint64_t sub_2489BBA60()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for PeerBrowser.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_2489BA9B0(&v19 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 3, v12);
  (*(v5 + 8))(v11, v4);
  if (v14 == 2)
  {
    v15 = *(v1 + 16);
    v16 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 24))(v1, &protocol witness table for PeerBrowser<A>, ObjectType, v16);
  }

  (*(v13 + 56))(v9, 3, 3, v12);
  return sub_2489BAA70(v9);
}

uint64_t sub_2489BBC64()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for PeerBrowser.State();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_2489BBA60();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  (*(*(v7 - 8) + 56))(v6, 1, 3, v7);
  sub_2489BAA70(v6);
  return sub_2489BACD0();
}

uint64_t sub_2489BBD4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for PeerBrowser.State();
  v2[5] = v5;
  v6 = *(v5 - 8);
  v2[6] = v6;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for NearbyDevice(0);
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489BBF0C, 0, 0);
}

uint64_t sub_2489BBF0C()
{
  v51 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_2489BD830(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_248983734(v0[9], &qword_27EEB5A50, &unk_248A16450);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_27EEB9DC8);
    v5 = sub_248A122B0();
    v6 = sub_248A12E80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[4];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v50 = v9;
      *v8 = 136446210;
      v10 = sub_248A13570();
      v12 = sub_24897BC00(v10, v11, &v50);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] Device not available", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1E0A80](v9, -1, -1);
      MEMORY[0x24C1E0A80](v8, -1, -1);
    }
  }

  else
  {
    sub_2489BCBA0(v0[9], v0[13]);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v13 = v0[12];
    v14 = v0[13];
    v15 = sub_248A122D0();
    __swift_project_value_buffer(v15, qword_27EEB9DC8);
    sub_2489BD8A0(v14, v13, type metadata accessor for NearbyDevice);
    v16 = sub_248A122B0();
    v17 = sub_248A12E80();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[12];
    if (v18)
    {
      v20 = v0[4];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v21 = 136446466;
      v23 = sub_248A13570();
      v25 = sub_24897BC00(v23, v24, &v50);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = NearbyDevice.description.getter();
      v28 = v27;
      sub_2489BD908(v19, type metadata accessor for NearbyDevice);
      v29 = sub_24897BC00(v26, v28, &v50);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_248975000, v16, v17, "[%{public}s] Connecting to %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v22, -1, -1);
      MEMORY[0x24C1E0A80](v21, -1, -1);
    }

    else
    {

      sub_2489BD908(v19, type metadata accessor for NearbyDevice);
    }

    v30 = v0[8];
    v31 = v0[5];
    v32 = v0[6];
    v33 = v0[3];
    sub_2489BA9B0(v30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
    v35 = *(v34 - 8);
    LODWORD(v33) = (*(v35 + 48))(v30, 3, v34);
    (*(v32 + 8))(v30, v31);
    if (v33 == 2)
    {
      v36 = v0[3];
      v37 = *(v36 + 16);
      v38 = *(v36 + 24);
      ObjectType = swift_getObjectType();
      (*(v38 + 24))(v36, &protocol witness table for PeerBrowser<A>, ObjectType, v38);
    }

    v40 = v0[13];
    v41 = v0[7];
    v42 = v0[3];
    sub_2489BD8A0(v40, v41, type metadata accessor for NearbyDevice);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
    swift_storeEnumTagMultiPayload();
    (*(v35 + 56))(v41, 0, 3, v34);
    sub_2489BAA70(v41);
    sub_2489BD908(v40, type metadata accessor for NearbyDevice);
  }

  v44 = v0[12];
  v43 = v0[13];
  v46 = v0[8];
  v45 = v0[9];
  v47 = v0[7];

  v48 = v0[1];

  return v48();
}

uint64_t sub_2489BC470()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24898283C;

  return sub_2489BB00C();
}

uint64_t sub_2489BC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*a4 + 80);
  v8 = *(*a4 + 88);
  v9 = type metadata accessor for PeerBrowser.State();
  v6[5] = v9;
  v10 = *(v9 - 8);
  v6[6] = v10;
  v11 = *(v10 + 64) + 15;
  v6[7] = swift_task_alloc();
  v12 = *(MEMORY[0x277D857E8] + 4);
  v13 = swift_task_alloc();
  v6[8] = v13;
  *v13 = v6;
  v13[1] = sub_2489BC654;

  return MEMORY[0x282200480](100000000);
}

uint64_t sub_2489BC654()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489BC7A0, 0, 0);
  }
}

uint64_t sub_2489BC7A0()
{
  v22 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  sub_2489BA9B0(v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v1, 3, v5);
  (*(v2 + 8))(v1, v3);
  if (v4 == 2)
  {
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v6 = sub_248A122D0();
    __swift_project_value_buffer(v6, qword_27EEB9DC8);
    v7 = sub_248A122B0();
    v8 = sub_248A12E80();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446210;
      v12 = sub_248A13570();
      v14 = sub_24897BC00(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Current peer browser state is connecting", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1E0A80](v11, -1, -1);
      MEMORY[0x24C1E0A80](v10, -1, -1);
    }

    v15 = swift_task_alloc();
    v0[9] = v15;
    *v15 = v0;
    v15[1] = sub_2489BCA28;
    v17 = v0[2];
    v16 = v0[3];

    return sub_2489BBD4C(v16);
  }

  else
  {
    v19 = v0[7];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_2489BCA28()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_2489BCB48()
{
  result = qword_27EEB5470[0];
  if (!qword_27EEB5470[0])
  {
    sub_248A12150();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEB5470);
  }

  return result;
}

uint64_t sub_2489BCBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2489BCC04(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v84 = *(*v1 + 88);
  v6 = type metadata accessor for PeerBrowser.State();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = (&v75 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  v80 = *(v12 - 8);
  v13 = *(v80 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v75 - v15;
  v85 = type metadata accessor for NearbyDeviceProviderState(0);
  v16 = *(*(v85 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v85);
  v19 = (&v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v75 - v20;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v22 = sub_248A122D0();
  v23 = __swift_project_value_buffer(v22, qword_27EEB9DC8);
  sub_2489BD8A0(a1, v21, type metadata accessor for NearbyDeviceProviderState);
  v79 = v23;
  v24 = sub_248A122B0();
  v25 = sub_248A12E80();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v76 = v5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v77 = v2;
    v29 = v28;
    v86[0] = v28;
    *v27 = 136446466;
    v30 = sub_248A13570();
    v32 = sub_24897BC00(v30, v31, v86);
    v75 = v13;
    v33 = a1;
    v34 = v4;
    v35 = v32;

    *(v27 + 4) = v35;
    *(v27 + 12) = 2082;
    v36 = NearbyDeviceProviderState.description.getter();
    v38 = v37;
    sub_2489BD908(v21, type metadata accessor for NearbyDeviceProviderState);
    v39 = sub_24897BC00(v36, v38, v86);
    v4 = v34;
    a1 = v33;
    v13 = v75;

    *(v27 + 14) = v39;
    _os_log_impl(&dword_248975000, v24, v25, "[%{public}s] Nearby device provider state update %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    v40 = v29;
    v2 = v77;
    MEMORY[0x24C1E0A80](v40, -1, -1);
    v41 = v27;
    v5 = v76;
    MEMORY[0x24C1E0A80](v41, -1, -1);
  }

  else
  {

    sub_2489BD908(v21, type metadata accessor for NearbyDeviceProviderState);
  }

  sub_2489BD8A0(a1, v19, type metadata accessor for NearbyDeviceProviderState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2489BBA60();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v50 = *v19;
    swift_getErrorValue();
    v51 = sub_2489F4ED0(v86[2]);
    v52 = v50;
    v53 = sub_248A122B0();
    v54 = sub_248A12E60();

    v55 = os_log_type_enabled(v53, v54);
    if (v51)
    {
      if (v55)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v86[0] = v58;
        *v56 = 136446466;
        v59 = sub_248A13570();
        v61 = sub_24897BC00(v59, v60, v86);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2114;
        v62 = v50;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 14) = v63;
        *v57 = v63;
        _os_log_impl(&dword_248975000, v53, v54, "[%{public}s] Browser failed with %{public}@; restarting", v56, 0x16u);
        sub_248983734(v57, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v57, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x24C1E0A80](v58, -1, -1);
        MEMORY[0x24C1E0A80](v56, -1, -1);
      }

      sub_2489BBC64();
    }

    else
    {
      if (v55)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v86[0] = v66;
        *v64 = 136446466;
        v67 = sub_248A13570();
        v69 = sub_24897BC00(v67, v68, v86);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2114;
        v70 = v50;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 14) = v71;
        *v65 = v71;
        _os_log_impl(&dword_248975000, v53, v54, "[%{public}s] Browser failed with %{public}@; stopping", v64, 0x16u);
        sub_248983734(v65, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v65, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x24C1E0A80](v66, -1, -1);
        MEMORY[0x24C1E0A80](v64, -1, -1);
      }

      v72 = v78;
      *v78 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
      swift_storeEnumTagMultiPayload();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
      (*(*(v73 - 8) + 56))(v72, 0, 3, v73);
      v74 = v50;
      sub_2489BAA70(v72);
      sub_2489BBA60();
    }
  }

  else
  {
    v43 = v82;
    sub_2489BDAA8(v19, v82, &qword_27EEB5A50, &unk_248A16450);
    v44 = sub_248A12D40();
    v45 = v83;
    (*(*(v44 - 8) + 56))(v83, 1, 1, v44);
    v46 = v81;
    sub_2489BD830(v43, v81);
    v47 = (*(v80 + 80) + 56) & ~*(v80 + 80);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v49 = v84;
    v48[4] = v5;
    v48[5] = v49;
    v48[6] = v2;
    sub_2489BDAA8(v46, v48 + v47, &qword_27EEB5A50, &unk_248A16450);
    *(v48 + ((v13 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;

    sub_2489E5FD4(0, 0, v45, &unk_248A16A48, v48);

    sub_248983734(v43, &qword_27EEB5A50, &unk_248A16450);
  }
}

uint64_t sub_2489BD4B0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for PeerBrowser.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of PeerBrowser.peerConnection()()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24898314C;

  return v6();
}

uint64_t sub_2489BD6EC()
{
  sub_2489BD76C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2489BD76C()
{
  if (!qword_27EEB5D18)
  {
    sub_2489BD7B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB5D18);
    }
  }
}

void sub_2489BD7B4()
{
  if (!qword_27EEB5D20)
  {
    type metadata accessor for NearbyDevice(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EEB5EB0, &qword_248A15C20);
    v0 = sub_248A13470();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB5D20);
    }
  }
}

uint64_t sub_2489BD830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489BD8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2489BD908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2489BD968(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_248978D74;

  return sub_2489BC52C(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_2489BDAA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2489BDB14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_2489BDE7C(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_248A122B0();
  v7 = sub_248A12E80();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_24897BC00(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_248975000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2489BDE04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_248A122D0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_248A122C0();
}

uint64_t sub_2489BDE7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2489835B8();
  v8 = (sub_248A12F30() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_2489BE0D8(46, 0xE100000000000000, a1, a2);
  v10 = sub_248A12C40();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x24C1DF860](v10, v12, v14, v16);
  v19 = v18;

  sub_2489BE0D8(40, 0xE100000000000000, a3, a4);
  v20 = sub_248A12C40();
  v21 = MEMORY[0x24C1DF860](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v25);

  MEMORY[0x24C1DF8B0](8285, 0xE200000000000000);
  MEMORY[0x24C1DF8B0](v17, v19);

  MEMORY[0x24C1DF8B0](14906, 0xE200000000000000);
  MEMORY[0x24C1DF8B0](v21, v23);

  return 91;
}

unint64_t sub_2489BE0D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_248A12C30() != a1 || v9 != a2)
  {
    v10 = sub_248A13340();

    if (v10)
    {
      return v8;
    }

    v8 = sub_248A12BD0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_2489BE1C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_248978948(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_2489B07EC(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_248983734(a1, &unk_27EEB5D70, &unk_248A16A50);
    v8 = *v2;
    v9 = sub_2489A86D0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_2489B14E4();
        v14 = v16;
      }

      sub_248978948((*(v14 + 56) + 40 * v11), v17);
      sub_2489DD3A0(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_248983734(v17, &unk_27EEB5D70, &unk_248A16A50);
  }

  return result;
}

uint64_t sub_2489BE2D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_248983734(a1, &qword_27EEB5450, qword_248A14E30);
    sub_2489DD1E4(a2);
    v14 = sub_248A11BC0();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_248983734(v8, &qword_27EEB5450, qword_248A14E30);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2489B0A7C(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_248A11BC0();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t Dependencies.DependenciesError.hashValue.getter()
{
  sub_248A13430();
  MEMORY[0x24C1E0100](0);
  return sub_248A13460();
}

uint64_t Dependencies.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_2489918CC(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_2489BE5E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v6);
  v10[3] = type metadata accessor for Dependencies.Dependency();
  v10[4] = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
  (*(v3 + 32))(boxed_opaque_existential_1Tm, v6, a2);
  swift_beginAccess();
  sub_2489BE1C8(v10, a2);
  return swift_endAccess();
}

uint64_t sub_2489BE720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_248A12F20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  swift_beginAccess();
  v10 = *(v2 + 16);
  if (*(v10 + 16) && (v11 = sub_2489A86D0(a1), (v12 & 1) != 0))
  {
    sub_248997228(*(v10 + 56) + 40 * v11, &v29);
    if (*(&v30 + 1))
    {
      v13 = *(&v30 + 1);
      v14 = v31;
      v15 = __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
      v28 = &v25;
      v16 = *(v13 - 8);
      v34 = a2;
      v17 = v16;
      v18 = *(v16 + 64);
      MEMORY[0x28223BE20](v15);
      v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20);
      sub_248983734(&v29, &unk_27EEB5D70, &unk_248A16A50);
      v26 = v14;
      v27 = *(v14 + 16);
      *(&v33 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v32);
      v27(v13, v26);
      (*(v17 + 8))(v20, v13);
      a2 = v34;
      goto LABEL_7;
    }
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  sub_248983734(&v29, &unk_27EEB5D70, &unk_248A16A50);
  v32 = 0u;
  v33 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  v21 = swift_dynamicCast();
  v22 = *(*(a1 - 8) + 56);
  if (v21)
  {
    v23 = *(a1 - 8);
    v22(v9, 0, 1, a1);
    return (*(v23 + 32))(a2, v9, a1);
  }

  else
  {
    v22(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
    sub_2489BEB30();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t Dependencies.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Dependencies.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_2489BEB30()
{
  result = qword_27EEB5D80;
  if (!qword_27EEB5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5D80);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2489BEBEC()
{
  result = qword_27EEB5D28;
  if (!qword_27EEB5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5D28);
  }

  return result;
}

uint64_t sub_2489BECFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2489BED6C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2489BEEAC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2489BF0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2489BF0D8, 0, 0);
}

uint64_t sub_2489BF0D8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v0[5] = swift_getObjectType();
  v4 = *(v2 + 24);
  v2 += 24;
  v0[6] = v4;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0xCD1A000000000000;
  v5 = *(v2 - 8);

  v7 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489BF18C, v7, v6);
}

uint64_t sub_2489BF18C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  (*(v0 + 48))(&unk_248A16D30, *(v0 + 32), *(v0 + 40), *(v0 + 24));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2489BF214(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489BF2C8;

  return sub_2489BF5A0(1, a1);
}

uint64_t sub_2489BF2C8()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489BF3FC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2489BF3FC()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_248975000, v4, v5, "Error initiating peer connection: %@", v8, 0xCu);
    sub_248983734(v9, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2489BF5A0(char a1, uint64_t a2)
{
  *(v3 + 400) = a2;
  *(v3 + 408) = v2;
  *(v3 + 73) = a1;
  *(v3 + 416) = *v2;
  v4 = sub_248A131D0();
  *(v3 + 424) = v4;
  v5 = *(v4 - 8);
  *(v3 + 432) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 440) = swift_task_alloc();
  v7 = sub_248A134B0();
  *(v3 + 448) = v7;
  v8 = *(v7 - 8);
  *(v3 + 456) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 464) = swift_task_alloc();
  v10 = sub_248A13310();
  *(v3 + 472) = v10;
  v11 = *(v10 - 8);
  *(v3 + 480) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 488) = swift_task_alloc();
  v13 = sub_248A134D0();
  *(v3 + 496) = v13;
  v14 = *(v13 - 8);
  *(v3 + 504) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 512) = swift_task_alloc();
  v16 = sub_248A13510();
  *(v3 + 520) = v16;
  v17 = *(v16 - 8);
  *(v3 + 528) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 536) = swift_task_alloc();
  v19 = sub_248A13520();
  *(v3 + 544) = v19;
  v20 = *(v19 - 8);
  *(v3 + 552) = v20;
  v21 = *(v20 + 64) + 15;
  *(v3 + 560) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489BF858, v2, 0);
}

uint64_t sub_2489BF858()
{
  v17 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  *(v0 + 76) = *MEMORY[0x277D84680];
  *(v0 + 568) = 1;
  v1 = sub_248A122D0();
  *(v0 + 576) = __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 416);
    if (*(v0 + 73))
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (*(v0 + 73))
    {
      v6 = 0x72656E657473696CLL;
    }

    else
    {
      v6 = 0x726573776F7262;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446722;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_24897BC00(v6, v5, &v16);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2050;
    *(v7 + 24) = 1;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Initiating peer connection with role %{public}s (attempt #: %{public}ld)", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v13 = swift_task_alloc();
  *(v0 + 584) = v13;
  *v13 = v0;
  v13[1] = sub_2489BFACC;
  v14 = *(v0 + 408);

  return sub_248999F68();
}

uint64_t sub_2489BFACC()
{
  v2 = *(*v1 + 584);
  v3 = *v1;
  v3[74] = v0;

  if (v0)
  {
    v4 = v3[70];
    v5 = v3[67];
    v6 = v3[64];
    v7 = v3[61];
    v8 = v3[58];
    v9 = v3[55];

    v10 = v3[1];

    return v10();
  }

  else
  {
    v12 = v3[51];

    return MEMORY[0x2822009F8](sub_2489BFC5C, v12, 0);
  }
}

uint64_t sub_2489BFC5C()
{
  v38 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 73);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = *(v0 + 416);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v37[0] = v8;
      *v7 = 136446210;
      v9 = sub_248A13570();
      v11 = sub_24897BC00(v9, v10, v37);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Initializing listener", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1E0A80](v8, -1, -1);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    v12 = *(v0 + 592);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5EA8, &qword_248A16D40);
    swift_allocObject();
    *(v0 + 696) = sub_2489C3E34();
    sub_2489C2324();
    if (v12)
    {

      v13 = *(v0 + 560);
      v14 = *(v0 + 536);
      v15 = *(v0 + 512);
      v16 = *(v0 + 488);
      v17 = *(v0 + 464);
      v18 = *(v0 + 440);

      v19 = *(v0 + 8);

      return v19();
    }

    else
    {

      return MEMORY[0x2822009F8](sub_2489C1B28, 0, 0);
    }
  }

  else
  {
    if (v5)
    {
      v21 = *(v0 + 416);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136446210;
      v24 = sub_248A13570();
      v26 = sub_24897BC00(v24, v25, v37);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Initializing browser", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1E0A80](v23, -1, -1);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

    v27 = *(v0 + 408);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EF0, &qword_248A16D48);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    v31 = swift_allocObject();
    v32 = *v31;
    v36 = *(v27 + 184);
    *(v0 + 600) = v31;
    v33 = *(v32 + 104);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
    (*(*(v34 - 8) + 56))(v31 + v33, 1, 3, v34);
    *(v31 + 16) = v36;
    swift_unknownObjectRetain();
    sub_2489C40B8();
    v35 = swift_task_alloc();
    *(v0 + 608) = v35;
    *v35 = v0;
    v35[1] = sub_2489C0050;

    return sub_2489C43FC();
  }
}

uint64_t sub_2489C0050(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 608);
  v13 = *v2;
  *(*v2 + 616) = v1;

  if (v1)
  {
    v6 = *(v4 + 408);
    v7 = sub_2489C05A4;
    v8 = 0;
  }

  else
  {
    *(v4 + 624) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_2489CBBD8(&qword_27EEB5EC0, &qword_27EEB5898, &qword_248A15C28);
    v9 = sub_248A12CD0();
    v11 = v10;
    v7 = sub_2489C01E8;
    v6 = v9;
    v8 = v11;
  }

  return MEMORY[0x2822009F8](v7, v6, v8);
}

uint64_t sub_2489C01E8()
{
  v1 = *(v0 + 408);
  sub_248A030F0(v1, *(v0 + 624));

  return MEMORY[0x2822009F8](sub_2489C0264, v1, 0);
}

uint64_t sub_2489C0264()
{
  v29 = v0;
  v1 = v0[75];
  sub_2489C55C0();
  v2 = v0[78];
  v3 = v0[75];
  v0[79] = v2;
  v4 = v0[51];

  v5 = *(v4 + 200);
  v0[80] = v5;
  v0[81] = *(v4 + 208);
  if (v5)
  {
    sub_2489789C8(v5);

    v27 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[82] = v7;
    *v7 = v0;
    v7[1] = sub_2489C065C;

    return (v27)(v0 + 26, v2);
  }

  else
  {
    v9 = v0[72];
    v10 = sub_248A122B0();
    v11 = sub_248A12E70();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[52];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136446210;
      v15 = sub_248A13570();
      v17 = sub_24897BC00(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_248975000, v10, v11, "[%{public}s] Peer connection service provider not set", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1E0A80](v14, -1, -1);
      MEMORY[0x24C1E0A80](v13, -1, -1);
    }

    v18 = sub_248A12150();
    sub_2489CBB90(qword_27EEB5470, MEMORY[0x277D05138]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D05130], v18);
    swift_willThrow();

    v20 = v0[70];
    v21 = v0[67];
    v22 = v0[64];
    v23 = v0[61];
    v24 = v0[58];
    v25 = v0[55];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_2489C05A4()
{
  v1 = v0[75];

  v2 = v0[77];
  v3 = v0[70];
  v4 = v0[67];
  v5 = v0[64];
  v6 = v0[61];
  v7 = v0[58];
  v8 = v0[55];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2489C065C()
{
  v1 = *(*v0 + 656);
  v2 = *(*v0 + 408);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2489C076C, v2, 0);
}

uint64_t sub_2489C076C()
{
  v32 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 576);
  sub_248997228(v0 + 208, v0 + 248);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 632);
    v6 = *(v0 + 416);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446722;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v31);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_248997228(v0 + 248, v0 + 288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
    v12 = sub_248A12B80();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    v15 = sub_24897BC00(v12, v14, &v31);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2082;
    v16 = sub_2489FA2C8();
    v18 = v17;

    v19 = sub_24897BC00(v16, v18, &v31);

    *(v7 + 24) = v19;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Created peer connection service %{public}s with peer connection %{public}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
    v20 = *(v0 + 632);

    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  }

  v21 = *(v0 + 632);
  v22 = *(v0 + 408);
  *(v0 + 16) = *(v0 + 73) & 1;
  *(v0 + 24) = v21;
  sub_248997228(v0 + 208, v0 + 32);
  *(v0 + 72) = 0;
  swift_beginAccess();

  sub_24898D194(v0 + 16, v22 + 112, &unk_27EEB5ED0, &qword_248A15BE0);
  swift_endAccess();
  v23 = *(v0 + 232);
  v24 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v23);
  v25 = *(v24 + 8);
  v30 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 664) = v27;
  *v27 = v0;
  v27[1] = sub_2489C0AD4;
  v28 = *(v0 + 400);

  return v30(v28, v23, v24);
}

uint64_t sub_2489C0AD4()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 408);
  if (v0)
  {
    v6 = sub_2489C0F04;
  }

  else
  {
    v6 = sub_2489C0C00;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2489C0C00()
{
  v32 = v0;
  *(v0 + 80) = *(v0 + 73) & 1;
  v1 = *(v0 + 576);
  v2 = *(v0 + 408);
  *(v0 + 88) = *(v0 + 632);
  sub_248997228(v0 + 208, v0 + 96);
  *(v0 + 136) = 1;
  swift_beginAccess();

  sub_24898D194(v0 + 80, v2 + 112, &unk_27EEB5ED0, &qword_248A15BE0);
  swift_endAccess();
  swift_retain_n();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v29 = *(v0 + 640);
    v30 = *(v0 + 648);
    v28 = *(v0 + 632);
    v6 = *(v0 + 408);
    v5 = *(v0 + 416);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446466;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v31);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_24898D610(v6 + 112, v0 + 144, &unk_27EEB5ED0, &qword_248A15BE0);

    v12 = sub_248999A58();
    v14 = v13;

    sub_248983734(v0 + 144, &unk_27EEB5ED0, &qword_248A15BE0);
    v15 = sub_24897BC00(v12, v14, &v31);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Peer connection initiated: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);

    sub_248996A48(v29);
  }

  else
  {
    v16 = *(v0 + 648);
    v17 = *(v0 + 640);
    v18 = *(v0 + 632);
    v19 = *(v0 + 408);

    sub_248996A48(v17);
  }

  v20 = *(v0 + 560);
  v21 = *(v0 + 536);
  v22 = *(v0 + 512);
  v23 = *(v0 + 488);
  v24 = *(v0 + 464);
  v25 = *(v0 + 440);
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2489C0F04()
{
  v73 = v0;
  v1 = *(v0 + 568);
  if (v1 == 5)
  {
    v2 = *(v0 + 672);
    v3 = *(v0 + 576);
    v4 = v2;
    v5 = sub_248A122B0();
    v6 = sub_248A12E60();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 672);
      v8 = *(v0 + 416);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v72[0] = v11;
      *v9 = 136446466;
      v12 = sub_248A13570();
      v14 = sub_24897BC00(v12, v13, v72);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2114;
      v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] Failed to initiate peer connection with error: %{public}@; out of retries", v9, 0x16u);
      sub_248983734(v10, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1E0A80](v11, -1, -1);
      MEMORY[0x24C1E0A80](v9, -1, -1);
    }

    v17 = *(v0 + 672);
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v20 = *(v0 + 632);
    [objc_opt_self() dss:140 errorWithCode:0 userInfo:1 retryable:?];
    swift_willThrow();

    sub_248996A48(v19);

    __swift_destroy_boxed_opaque_existential_0((v0 + 208));
    v21 = *(v0 + 560);
    v22 = *(v0 + 536);
    v23 = *(v0 + 512);
    v24 = *(v0 + 488);
    v25 = *(v0 + 464);
    v26 = *(v0 + 440);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v68 = *(v0 + 672);
    v69 = *(v0 + 576);
    v59 = *(v0 + 76);
    v60 = *(v0 + 560);
    v66 = *(v0 + 544);
    v67 = *(v0 + 552);
    v64 = *(v0 + 528);
    v65 = *(v0 + 520);
    v57 = *(v0 + 536);
    v58 = *(v0 + 512);
    v62 = *(v0 + 504);
    v29 = *(v0 + 488);
    v63 = *(v0 + 496);
    v30 = *(v0 + 480);
    v56 = *(v0 + 472);
    v32 = *(v0 + 456);
    v31 = *(v0 + 464);
    v71 = 1000000000000000000 * v1;
    v61 = *(v0 + 448);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5788, &qword_248A155B8);
    v33 = sub_248A134F0();
    v34 = *(v33 - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_248A14B30;
    sub_248A134E0();
    sub_24899728C(v37);
    swift_setDeallocating();
    (*(v34 + 8))(v37 + v36, v33);
    swift_deallocClassInstance();
    sub_248A13500();
    (*(v30 + 104))(v29, v59, v56);
    sub_248A134C0();
    (*(v30 + 8))(v29, v56);
    sub_248A134A0();
    sub_248A11970();

    (*(v32 + 8))(v31, v61);
    (*(v62 + 8))(v58, v63);
    (*(v64 + 8))(v57, v65);
    sub_2489CBB90(&unk_27EEB5EE0, MEMORY[0x277CC9FF0]);
    sub_248A13530();
    (*(v67 + 8))(v60, v66);
    v39 = *(v0 + 376);
    v38 = *(v0 + 384);
    v40 = v68;

    v41 = sub_248A122B0();
    v42 = sub_248A12E60();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 672);
      v44 = *(v0 + 416);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72[0] = v70;
      *v45 = 136446722;
      v47 = sub_248A13570();
      v49 = sub_24897BC00(v47, v48, v72);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2114;
      v50 = v43;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v51;
      *v46 = v51;
      *(v45 + 22) = 2082;
      v52 = sub_24897BC00(v39, v38, v72);

      *(v45 + 24) = v52;
      _os_log_impl(&dword_248975000, v41, v42, "[%{public}s] Failed to initiate peer connection with error: %{public}@; will re-attempt to initiate peer connection after %{public}s delay", v45, 0x20u);
      sub_248983734(v46, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v46, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v70, -1, -1);
      MEMORY[0x24C1E0A80](v45, -1, -1);
    }

    else
    {
    }

    v53 = *(v0 + 440);
    sub_248A133B0();
    v54 = swift_task_alloc();
    *(v0 + 680) = v54;
    *v54 = v0;
    v54[1] = sub_2489C1668;
    v55 = *(v0 + 440);

    return sub_248996414(v71, 0, 0, 0, 1);
  }
}

uint64_t sub_2489C1668()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v4 = *v1;
  *(*v1 + 688) = v0;

  v5 = v2[55];
  v6 = v2[54];
  v7 = v2[53];
  v8 = v2[51];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_2489C1A48;
  }

  else
  {
    v9 = sub_2489C17E4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_2489C17E4()
{
  v23 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 568);

  sub_248996A48(v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v6 = v5 + 1;
  *(v0 + 568) = v5 + 1;
  v7 = sub_248A122D0();
  *(v0 + 576) = __swift_project_value_buffer(v7, qword_27EEB9DC8);
  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 416);
    if (*(v0 + 73))
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    if (*(v0 + 73))
    {
      v12 = 0x72656E657473696CLL;
    }

    else
    {
      v12 = 0x726573776F7262;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446722;
    v15 = sub_248A13570();
    v17 = sub_24897BC00(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = sub_24897BC00(v12, v11, &v22);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2050;
    *(v13 + 24) = v6;
    _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Initiating peer connection with role %{public}s (attempt #: %{public}ld)", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  v19 = swift_task_alloc();
  *(v0 + 584) = v19;
  *v19 = v0;
  v19[1] = sub_2489BFACC;
  v20 = *(v0 + 408);

  return sub_248999F68();
}

uint64_t sub_2489C1A48()
{
  v1 = v0[84];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];

  sub_248996A48(v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  v5 = v0[86];
  v6 = v0[70];
  v7 = v0[67];
  v8 = v0[64];
  v9 = v0[61];
  v10 = v0[58];
  v11 = v0[55];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2489C1B28()
{
  v1 = v0[87];
  if ((*(v1 + 40) & 0xC0) == 0x40)
  {
    v2 = *(v1 + 24);
    if (*(v1 + 40))
    {
      v0[49] = v2;
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      swift_willThrowTypedImpl();
      v0[90] = v2;
      v4 = v0[51];
      v5 = sub_2489C226C;
      v6 = 0;
    }

    else
    {
      v9 = *(v1 + 32);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      ObjectType = swift_getObjectType();
      v15 = swift_unknownObjectRetain();
      v0[89] = sub_24898BF28(v15, v13, ObjectType, v9);
      sub_2489CBBD8(&qword_27EEB5EC0, &qword_27EEB5898, &qword_248A15C28);

      v16 = sub_248A12CD0();
      v18 = v17;
      v5 = sub_2489C1E60;
      v4 = v16;
      v6 = v18;
    }

    return MEMORY[0x2822009F8](v5, v4, v6);
  }

  else
  {
    v7 = *(MEMORY[0x277D857E8] + 4);
    v8 = swift_task_alloc();
    v0[88] = v8;
    *v8 = v0;
    v8[1] = sub_2489C1D34;

    return MEMORY[0x282200480](500000000);
  }
}

uint64_t sub_2489C1D34()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 720) = v0;
    v5 = *(v2 + 408);
    v6 = sub_2489C226C;
  }

  else
  {
    v6 = sub_2489CBC20;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2489C1E60()
{
  v1 = *(v0 + 408);
  sub_248A030F0(v1, *(v0 + 712));

  return MEMORY[0x2822009F8](sub_2489C1EDC, v1, 0);
}

uint64_t sub_2489C1EDC()
{
  v35 = v0;
  v1 = v0[87];
  v2 = *(v1 + 40);
  if (v2 < 0x40)
  {
    v4 = *(v1 + 24);
    v3 = *(v1 + 32);
    v5 = *(v1 + 40);

    sub_2489C27D4();
    sub_2489BA88C(v4, v3, v5);
    LOBYTE(v2) = *(v1 + 40);
    v1 = v0[87];
  }

  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *(v1 + 24) = xmmword_248A167C0;
  *(v1 + 40) = 0x80;
  sub_2489BA88C(v6, v7, v2);
  v8 = v0[89];
  v9 = v0[87];
  v0[79] = v8;
  v10 = v0[51];

  v11 = *(v10 + 200);
  v0[80] = v11;
  v0[81] = *(v10 + 208);
  if (v11)
  {
    sub_2489789C8(v11);

    v33 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[82] = v13;
    *v13 = v0;
    v13[1] = sub_2489C065C;

    return (v33)(v0 + 26, v8);
  }

  else
  {
    v15 = v0[72];
    v16 = sub_248A122B0();
    v17 = sub_248A12E70();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[52];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446210;
      v21 = sub_248A13570();
      v23 = sub_24897BC00(v21, v22, &v34);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_248975000, v16, v17, "[%{public}s] Peer connection service provider not set", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1E0A80](v20, -1, -1);
      MEMORY[0x24C1E0A80](v19, -1, -1);
    }

    v24 = sub_248A12150();
    sub_2489CBB90(qword_27EEB5470, MEMORY[0x277D05138]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D05130], v24);
    swift_willThrow();

    v26 = v0[70];
    v27 = v0[67];
    v28 = v0[64];
    v29 = v0[61];
    v30 = v0[58];
    v31 = v0[55];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_2489C226C()
{
  v1 = v0[87];

  v2 = v0[90];
  v3 = v0[70];
  v4 = v0[67];
  v5 = v0[64];
  v6 = v0[61];
  v7 = v0[58];
  v8 = v0[55];

  v9 = v0[1];

  return v9();
}

void sub_2489C2324()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F30, &qword_248A16958);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = sub_248A12520();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v11 = sub_248A122D0();
  __swift_project_value_buffer(v11, qword_27EEB9DC8);
  v12 = sub_248A122B0();
  v13 = sub_248A12E80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136446210;
    v17 = sub_248A13570();
    v19 = sub_24897BC00(v17, v18, &v34);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Activate", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1E0A80](v16, -1, -1);
    v20 = v15;
    v2 = v33;
    MEMORY[0x24C1E0A80](v20, -1, -1);
  }

  v21 = *(v3 + 40);
  if ((v21 & 0xC0) == 0x80 && v21 == 128 && *(v3 + 3) == 0)
  {
    sub_248A116D0();

    sub_248A12510();
    v22 = sub_248A125F0();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_248A125A0();
    if (v2)
    {
    }

    else
    {
      v26 = v25;
      sub_248A125C0();
      v27 = sub_248A125D0();
      (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
      sub_248A125E0();
      swift_allocObject();
      swift_weakInit();

      sub_2489789C8(sub_2489CBB80);
      sub_248A12550();

      swift_allocObject();
      swift_weakInit();

      sub_2489789C8(sub_2489CBB88);
      sub_248A12560();

      v28 = v3[2];
      sub_248A12590();

      v29 = v3[3];
      v30 = v3[4];
      v3[3] = v26;
      v3[4] = 0;
      v31 = *(v3 + 40);
      *(v3 + 40) = 0;
      sub_2489BA88C(v29, v30, v31);
    }
  }
}

uint64_t sub_2489C2710(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489C2984(a1);
  }

  return result;
}

uint64_t sub_2489C2770(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489CA494(a1, result);
  }

  return result;
}

uint64_t sub_2489C27D4()
{
  v1 = *v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Cleaning up listener", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  sub_2489789C8(0);
  sub_248A12550();
  sub_2489789C8(0);
  sub_248A12560();
  return sub_248A125B0();
}

void sub_2489C2984(uint64_t a1)
{
  v154 = *v1;
  v155 = sub_248A128A0();
  v151 = *(v155 - 1);
  v3 = *(v151 + 64);
  v4 = MEMORY[0x28223BE20](v155);
  v150 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v149 = &v143 - v7;
  MEMORY[0x28223BE20](v6);
  v153 = &v143 - v8;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BF0, &qword_248A16948);
  v9 = *(*(v146 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v146);
  v145 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v147 = &v143 - v13;
  MEMORY[0x28223BE20](v12);
  v148 = &v143 - v14;
  v15 = sub_248A12580();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v152 = (&v143 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v144 = &v143 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v143 - v25;
  v27 = sub_248A12A50();
  v28 = *(v27 - 1);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v1 + 2);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v33 = v32;
  LOBYTE(v32) = sub_248A12A60();
  (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_49:
    swift_once();
LABEL_5:
    v35 = sub_248A122D0();
    __swift_project_value_buffer(v35, qword_27EEB9DC8);
    v27(v20, a1, v15);
    v36 = sub_248A122B0();
    v37 = sub_248A12E80();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v155 = v27;
      v156 = v39;
      v40 = v16;
      v41 = v39;
      *v38 = 136446466;
      v42 = sub_248A13570();
      v44 = sub_24897BC00(v42, v43, &v156);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2082;
      v155(v152, v20, v15);
      v45 = sub_248A12B80();
      v47 = v46;
      (*(v40 + 8))(v20, v15);
      v48 = sub_24897BC00(v45, v47, &v156);

      *(v38 + 14) = v48;
      _os_log_impl(&dword_248975000, v36, v37, "%{public}s listener state %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v41, -1, -1);
      MEMORY[0x24C1E0A80](v38, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v20, v15);
    }

    return;
  }

  v27 = *(v16 + 16);
  v27(v26, a1, v15);
  v34 = (*(v16 + 88))(v26, v15);
  if (v34 == *MEMORY[0x277CD8B40])
  {
    (*(v16 + 8))(v26, v15);
    goto LABEL_4;
  }

  if (v34 == *MEMORY[0x277CD8B38])
  {
    v148 = v1;
    (*(v16 + 96))(v26, v15);
    v49 = v151;
    v50 = v153;
    v51 = v155;
    (*(v151 + 32))(v153, v26, v155);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v52 = sub_248A122D0();
    __swift_project_value_buffer(v52, qword_27EEB9DC8);
    v53 = sub_248A122B0();
    v54 = sub_248A12E60();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v156 = v56;
      *v55 = 136446210;
      v57 = sub_248A13570();
      v59 = sub_24897BC00(v57, v58, &v156);
      v51 = v155;

      *(v55 + 4) = v59;
      _os_log_impl(&dword_248975000, v53, v54, " %{public}s !!! PEER LISTENER FAILED !!!", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x24C1E0A80](v56, -1, -1);
      MEMORY[0x24C1E0A80](v55, -1, -1);
    }

    v60 = v150;
    v61 = sub_2489B9AA4();
    v62 = *(v49 + 16);
    if (v61)
    {
      v63 = v149;
      v62(v149, v50, v51);
      v64 = sub_248A122B0();
      v65 = sub_248A12E60();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v156 = v152;
        *v66 = 136446466;
        v67 = sub_248A13570();
        v69 = sub_24897BC00(v67, v68, &v156);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2114;
        sub_2489CBB90(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
        swift_allocError();
        v62(v70, v63, v155);
        v71 = _swift_stdlib_bridgeErrorToNSError();
        v72 = *(v49 + 8);
        v72(v63, v155);
        *(v66 + 14) = v71;
        v73 = v150;
        *v150 = v71;
        v51 = v155;
        _os_log_impl(&dword_248975000, v64, v65, "%{public}s listener failed with %{public}@; restarting", v66, 0x16u);
        sub_248983734(v73, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v73, -1, -1);
        v74 = v152;
        __swift_destroy_boxed_opaque_existential_0(v152);
        MEMORY[0x24C1E0A80](v74, -1, -1);
        MEMORY[0x24C1E0A80](v66, -1, -1);
      }

      else
      {

        v72 = *(v49 + 8);
        v72(v63, v51);
      }

      sub_2489C3BB4();
      v72(v153, v51);
      return;
    }

    v62(v60, v50, v51);
    v80 = sub_248A122B0();
    v81 = sub_248A12E60();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = v60;
      v84 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v156 = v152;
      *v82 = 136446466;
      v85 = sub_248A13570();
      v87 = sub_24897BC00(v85, v86, &v156);

      *(v82 + 4) = v87;
      *(v82 + 12) = 2114;
      sub_2489CBB90(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v62(v88, v83, v155);
      v89 = _swift_stdlib_bridgeErrorToNSError();
      v90 = v83;
      v91 = *(v49 + 8);
      v91(v90, v155);
      *(v82 + 14) = v89;
      *v84 = v89;
      v51 = v155;
      _os_log_impl(&dword_248975000, v80, v81, "%{public}s listener failed with %{public}@; stopping", v82, 0x16u);
      sub_248983734(v84, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v84, -1, -1);
      v92 = v152;
      __swift_destroy_boxed_opaque_existential_0(v152);
      MEMORY[0x24C1E0A80](v92, -1, -1);
      MEMORY[0x24C1E0A80](v82, -1, -1);
    }

    else
    {

      v91 = *(v49 + 8);
      v91(v60, v51);
    }

    v106 = v148;
    sub_2489CBB90(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
    v107 = swift_allocError();
    v108 = v153;
    v62(v109, v153, v51);
    v110 = *(v106 + 3);
    v111 = *(v106 + 4);
    *(v106 + 3) = v107;
    *(v106 + 4) = 0;
    v112 = v106[40];
    v106[40] = 65;
    v113 = v107;
    sub_2489BA88C(v110, v111, v112);

    v91(v108, v51);
    v114 = *(v106 + 3);
    v115 = *(v106 + 4);
    *(v106 + 24) = xmmword_248A167C0;
    LOBYTE(v116) = v106[40];
    v106[40] = 0x80;
LABEL_31:
    sub_2489BA88C(v114, v115, v116);
    return;
  }

  if (v34 == *MEMORY[0x277CD8B30])
  {
LABEL_4:
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

  if (v34 == *MEMORY[0x277CD8B28])
  {
    v75 = v1[40];
    if (v75 > 0x3F)
    {
      v117 = sub_248A12520();
      v79 = v148;
      (*(*(v117 - 8) + 56))(v148, 1, 1, v117);
    }

    else
    {
      v78 = v1 + 24;
      v77 = *(v1 + 3);
      v76 = *(v78 + 1);

      v79 = v148;
      sub_248A12570();
      sub_2489BA88C(v77, v76, v75);
    }

    v118 = v147;
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v119 = sub_248A122D0();
    __swift_project_value_buffer(v119, qword_27EEB9DC8);
    sub_24898D610(v79, v118, &qword_27EEB5BF0, &qword_248A16948);
    v120 = sub_248A122B0();
    v121 = sub_248A12E80();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v156 = v123;
      *v122 = 136446466;
      v124 = sub_248A13570();
      v126 = sub_24897BC00(v124, v125, &v156);

      *(v122 + 4) = v126;
      *(v122 + 12) = 2082;
      sub_24898D610(v118, v145, &qword_27EEB5BF0, &qword_248A16948);
      v127 = sub_248A12B80();
      v129 = v128;
      sub_248983734(v118, &qword_27EEB5BF0, &qword_248A16948);
      v130 = sub_24897BC00(v127, v129, &v156);

      *(v122 + 14) = v130;
      _os_log_impl(&dword_248975000, v120, v121, "%{public}s listener state ready on port %{public}s", v122, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v123, -1, -1);
      MEMORY[0x24C1E0A80](v122, -1, -1);
    }

    else
    {

      sub_248983734(v118, &qword_27EEB5BF0, &qword_248A16948);
    }

    sub_248983734(v79, &qword_27EEB5BF0, &qword_248A16948);
  }

  else
  {
    if (v34 == *MEMORY[0x277CD8B48])
    {
      v148 = v1;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v93 = sub_248A122D0();
      __swift_project_value_buffer(v93, qword_27EEB9DC8);
      v94 = v144;
      v27(v144, a1, v15);
      v95 = sub_248A122B0();
      v96 = sub_248A12E80();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v156 = v155;
        *v97 = 136446466;
        v98 = sub_248A13570();
        v100 = sub_24897BC00(v98, v99, &v156);

        *(v97 + 4) = v100;
        *(v97 + 12) = 2082;
        v27(v152, v94, v15);
        v101 = sub_248A12B80();
        v103 = v102;
        (*(v16 + 8))(v94, v15);
        v104 = sub_24897BC00(v101, v103, &v156);

        *(v97 + 14) = v104;
        _os_log_impl(&dword_248975000, v95, v96, "%{public}s listener state %{public}s; invalidating", v97, 0x16u);
        v105 = v155;
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v105, -1, -1);
        MEMORY[0x24C1E0A80](v97, -1, -1);
      }

      else
      {

        (*(v16 + 8))(v94, v15);
      }

      v139 = v148;
      v116 = v148[40];
      if (v116 <= 0x3F)
      {
        v141 = *(v148 + 3);
        v140 = *(v148 + 4);
        v142 = v148[40];

        sub_2489C27D4();
        v139 = v148;
        sub_2489BA88C(v141, v140, v142);
        LOBYTE(v116) = v139[40];
      }

      v114 = *(v139 + 3);
      v115 = *(v139 + 4);
      *(v139 + 24) = xmmword_248A167C0;
      v139[40] = 0x80;
      goto LABEL_31;
    }

    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v131 = sub_248A122D0();
    __swift_project_value_buffer(v131, qword_27EEB9DC8);
    v132 = sub_248A122B0();
    v133 = sub_248A12E70();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v156 = v135;
      *v134 = 136446210;
      v136 = sub_248A13570();
      v138 = sub_24897BC00(v136, v137, &v156);

      *(v134 + 4) = v138;
      _os_log_impl(&dword_248975000, v132, v133, "%{public}s found unexpected NWListener.State type", v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v135);
      MEMORY[0x24C1E0A80](v135, -1, -1);
      MEMORY[0x24C1E0A80](v134, -1, -1);
    }

    (*(v16 + 8))(v26, v15);
  }
}

uint64_t sub_2489C3BB4()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (v2 <= 0x3F)
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = *(v0 + 40);

    sub_2489C27D4();
    sub_2489BA88C(v4, v3, v5);
    LOBYTE(v2) = *(v0 + 40);
  }

  v6 = v0[3];
  v7 = v0[4];
  v0[3] = 0;
  v0[4] = 0;
  *(v0 + 40) = 0x80;
  sub_2489BA88C(v6, v7, v2);
  return sub_2489C2324();
}

uint64_t sub_2489C3E34()
{
  v13 = sub_248A12EA0();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A12E90();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_248A12A40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2489B7884(0, &qword_27EEB5BE0, 0x277D85C78);
  v12[0] = "rProvider";
  v12[1] = v9;
  sub_248A12A20();
  v14 = MEMORY[0x277D84F90];
  sub_2489CBB90(&unk_27EEB5F40, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BE8, &qword_248A16940);
  sub_2489CBBD8(&qword_27EEB5F50, &qword_27EEB5BE8, &qword_248A16940);
  sub_248A12FA0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v13);
  v10 = sub_248A12EB0();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v10;
  *(v0 + 40) = 0x80;
  return v0;
}

uint64_t sub_2489C40B8()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F00, &qword_248A16D58);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_27EEB9DC8);
  v11 = sub_248A122B0();
  v12 = sub_248A12E80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136446210;
    v15 = sub_248A13570();
    v17 = sub_24897BC00(v15, v16, &v27);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_248975000, v11, v12, "[%{public}s] Activate", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  v18 = *(*v1 + 104);
  swift_beginAccess();
  sub_24898D610(v1 + v18, v9, &unk_27EEB5F00, &qword_248A16D58);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 3, v19);
  result = sub_248983734(v9, &unk_27EEB5F00, &qword_248A16D58);
  if (v21 == 1)
  {
    v23 = v1[2];
    v24 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v24 + 16))(v1, &protocol witness table for PeerBrowser<A>, ObjectType, v24);
    (*(v20 + 56))(v7, 2, 3, v19);
    swift_beginAccess();
    sub_24898D194(v7, v1 + v18, &unk_27EEB5F00, &qword_248A16D58);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2489C43FC()
{
  v1[6] = v0;
  v1[7] = *v0;
  v2 = sub_248A12540();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = type metadata accessor for NearbyDevice(0);
  v1[15] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F00, &qword_248A16D58);
  v1[18] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F10, &qword_248A16988) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489C4620, 0, 0);
}

uint64_t sub_2489C4620()
{
  v71 = v0;
  *(v0 + 184) = *(**(v0 + 48) + 104);
  swift_beginAccess();
  v1 = *(v0 + 168);
  sub_24898D610(*(v0 + 48) + *(v0 + 184), v1, &unk_27EEB5F00, &qword_248A16D58);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v3 = *(*(v2 - 8) + 48);
  if (v3(v1, 3, v2))
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    sub_248983734(*(v0 + 168), &unk_27EEB5F00, &qword_248A16D58);
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_248983734(v4, &unk_27EEB5F10, &qword_248A16988);
    v7 = *(MEMORY[0x277D857E8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_2489C4D2C;

    return MEMORY[0x282200480](500000000);
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  v11 = *(v0 + 160);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = *(v0 + 48);
  sub_2489CBAB4(*(v0 + 168), v9);
  (*(v13 + 56))(v9, 0, 1, v12);
  sub_248983734(v9, &unk_27EEB5F10, &qword_248A16988);
  sub_24898D610(v14 + v10, v11, &unk_27EEB5F00, &qword_248A16D58);
  v15 = v3(v11, 3, v2);
  v16 = *(v0 + 160);
  if (v15)
  {
    sub_248983734(v16, &unk_27EEB5F00, &qword_248A16D58);
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 48);
    v18 = sub_248A122D0();
    __swift_project_value_buffer(v18, qword_2815105C0);

    v19 = sub_248A122B0();
    v20 = sub_248A12E60();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 184);
      v22 = *(v0 + 152);
      v69 = *(v0 + 144);
      v23 = *(v0 + 48);
      v24 = *(v0 + 56);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v70[0] = v26;
      *v25 = 136446466;
      v27 = sub_248A13570();
      v29 = sub_24897BC00(v27, v28, v70);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      sub_24898D610(v23 + v21, v22, &unk_27EEB5F00, &qword_248A16D58);
      v30 = sub_248A12B80();
      v32 = sub_24897BC00(v30, v31, v70);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_248975000, v19, v20, "[%{public}s] Peer Browser expected result in state is %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v26, -1, -1);
      MEMORY[0x24C1E0A80](v25, -1, -1);
    }

    v33 = sub_248A12150();
    sub_2489CBB90(qword_27EEB5470, MEMORY[0x277D05138]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D05118], v33);
    swift_willThrow();
    goto LABEL_13;
  }

  v35 = *(v0 + 96);
  sub_2489CBAB4(v16, *(v0 + 112));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v0 + 40) = **(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    swift_willThrowTypedImpl();
LABEL_13:
    v37 = *(v0 + 168);
    v36 = *(v0 + 176);
    v39 = *(v0 + 152);
    v38 = *(v0 + 160);
    v41 = *(v0 + 128);
    v40 = *(v0 + 136);
    v42 = *(v0 + 112);
    v44 = *(v0 + 80);
    v43 = *(v0 + 88);

    v45 = *(v0 + 8);

    return v45();
  }

  v65 = *(v0 + 176);
  v66 = *(v0 + 168);
  v67 = *(v0 + 160);
  v68 = *(v0 + 152);
  v46 = *(v0 + 128);
  v47 = *(v0 + 136);
  v48 = *(v0 + 120);
  v49 = *(v0 + 80);
  v50 = *(v0 + 88);
  v52 = *(v0 + 64);
  v51 = *(v0 + 72);
  sub_2489BCBA0(*(v0 + 112), v46);
  sub_2489BCBA0(v46, v47);
  v53 = *(v51 + 16);
  v53(v50, v47 + *(v48 + 24), v52);
  sub_248A116D0();
  v53(v49, v50, v52);
  v54 = sub_248A12720();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();

  v57 = sub_248A126D0();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = sub_2489C9FB0(v57, v61);

  (*(v51 + 8))(v50, v52);
  sub_2489CBB24(v47);

  v63 = *(v0 + 8);

  return v63(v62);
}

uint64_t sub_2489C4D2C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[21];
    v5 = v2[22];
    v8 = v2[19];
    v7 = v2[20];
    v10 = v2[16];
    v9 = v2[17];
    v11 = v2[14];
    v14 = v2 + 10;
    v12 = v2[10];
    v13 = v14[1];

    v15 = *(v4 + 8);

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489C4EE4, 0, 0);
  }
}

uint64_t sub_2489C4EE4()
{
  v71 = v0;
  v1 = v0[21];
  sub_24898D610(v0[6] + v0[23], v1, &unk_27EEB5F00, &qword_248A16D58);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v3 = *(*(v2 - 8) + 48);
  if (v3(v1, 3, v2))
  {
    v4 = v0[22];
    v5 = v0[12];
    v6 = v0[13];
    sub_248983734(v0[21], &unk_27EEB5F00, &qword_248A16D58);
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_248983734(v4, &unk_27EEB5F10, &qword_248A16988);
    v7 = *(MEMORY[0x277D857E8] + 4);
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_2489C4D2C;

    return MEMORY[0x282200480](500000000);
  }

  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[20];
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[6];
  sub_2489CBAB4(v0[21], v9);
  (*(v13 + 56))(v9, 0, 1, v12);
  sub_248983734(v9, &unk_27EEB5F10, &qword_248A16988);
  sub_24898D610(v14 + v10, v11, &unk_27EEB5F00, &qword_248A16D58);
  v15 = v3(v11, 3, v2);
  v16 = v0[20];
  if (v15)
  {
    sub_248983734(v16, &unk_27EEB5F00, &qword_248A16D58);
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v17 = v0[6];
    v18 = sub_248A122D0();
    __swift_project_value_buffer(v18, qword_2815105C0);

    v19 = sub_248A122B0();
    v20 = sub_248A12E60();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[23];
      v22 = v0[19];
      v69 = v0[18];
      v23 = v0[6];
      v24 = v0[7];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v70[0] = v26;
      *v25 = 136446466;
      v27 = sub_248A13570();
      v29 = sub_24897BC00(v27, v28, v70);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      sub_24898D610(v23 + v21, v22, &unk_27EEB5F00, &qword_248A16D58);
      v30 = sub_248A12B80();
      v32 = sub_24897BC00(v30, v31, v70);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_248975000, v19, v20, "[%{public}s] Peer Browser expected result in state is %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v26, -1, -1);
      MEMORY[0x24C1E0A80](v25, -1, -1);
    }

    v33 = sub_248A12150();
    sub_2489CBB90(qword_27EEB5470, MEMORY[0x277D05138]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D05118], v33);
    swift_willThrow();
    goto LABEL_13;
  }

  v35 = v0[12];
  sub_2489CBAB4(v16, v0[14]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[5] = *v0[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    swift_willThrowTypedImpl();
LABEL_13:
    v37 = v0[21];
    v36 = v0[22];
    v39 = v0[19];
    v38 = v0[20];
    v41 = v0[16];
    v40 = v0[17];
    v42 = v0[14];
    v44 = v0[10];
    v43 = v0[11];

    v45 = v0[1];

    return v45();
  }

  v65 = v0[22];
  v66 = v0[21];
  v67 = v0[20];
  v68 = v0[19];
  v46 = v0[16];
  v47 = v0[17];
  v48 = v0[15];
  v49 = v0[10];
  v50 = v0[11];
  v52 = v0[8];
  v51 = v0[9];
  sub_2489BCBA0(v0[14], v46);
  sub_2489BCBA0(v46, v47);
  v53 = *(v51 + 16);
  v53(v50, v47 + *(v48 + 24), v52);
  sub_248A116D0();
  v53(v49, v50, v52);
  v54 = sub_248A12720();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();

  v57 = sub_248A126D0();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = sub_2489C9FB0(v57, v61);

  (*(v51 + 8))(v50, v52);
  sub_2489CBB24(v47);

  v63 = v0[1];

  return v63(v62);
}

uint64_t sub_2489C55C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F00, &qword_248A16D58);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7];
  v9 = *(*v0 + 104);
  swift_beginAccess();
  sub_24898D610(v0 + v9, v8, &unk_27EEB5F00, &qword_248A16D58);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 3, v10);
  sub_248983734(v8, &unk_27EEB5F00, &qword_248A16D58);
  if (v12 == 2)
  {
    v13 = v0[2];
    v14 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v14 + 24))(v1, &protocol witness table for PeerBrowser<A>, ObjectType, v14);
  }

  (*(v11 + 56))(v6, 3, 3, v10);
  swift_beginAccess();
  sub_24898D194(v6, v1 + v9, &unk_27EEB5F00, &qword_248A16D58);
  return swift_endAccess();
}

uint64_t sub_2489C57C4(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_2489A86D0(v3), (v6 & 1) != 0))
  {
    sub_248997228(*(v4 + 56) + 40 * v5, &v16);
    if (*(&v17 + 1))
    {
      v7 = *(&v17 + 1);
      v8 = v18;
      v9 = __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      v10 = *(v7 - 8);
      v11 = *(v10 + 64);
      MEMORY[0x28223BE20](v9);
      v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13);
      sub_248983734(&v16, &unk_27EEB5D70, &unk_248A16A50);
      v14 = *(v8 + 16);
      *(&v20 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v19);
      v14(v7, v8);
      (*(v10 + 8))(v13, v7);
      goto LABEL_7;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  sub_248983734(&v16, &unk_27EEB5D70, &unk_248A16A50);
  v19 = 0u;
  v20 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  if (swift_dynamicCast())
  {
    return v16;
  }

  sub_2489BEB30();
  swift_allocError();
  return swift_willThrow();
}