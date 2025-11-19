id sub_229817ED0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  if (*(v2 + OBJC_IVAR___HMDAccountChangeObserver_isHomePod) == 1)
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v13 = a1;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDD0C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_229538000, v14, v15, "IDSAccount change %@", v16, 0xCu);
      sub_2295A1C40(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    return [*(v2 + OBJC_IVAR___HMDAccountChangeObserver_notificationCenter) postNotificationName:@"HMDHomeManagerIDMSAccountUsernameDidUpdateNotification" object:0];
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCDC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_229538000, v20, v21, "Ignoring IDSAccount change on non-HomePod", v22, 2u);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    return (*(v6 + 8))(v10, v5);
  }
}

id sub_22981818C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_229818260(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Account.ChangeObserver();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber] = a1;
  *&v9[OBJC_IVAR___HMDAccountChangeObserver_notificationCenter] = a4;
  v10 = a4;
  v11 = [a2 productClass] == 6;
  v9[OBJC_IVAR___HMDAccountChangeObserver_isHomePod] = v11;
  v12 = [a3 isSharedIPad];
  v9[OBJC_IVAR___HMDAccountChangeObserver_isSharediPad] = v12;
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_22981834C()
{
  sub_2296792B0(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter9PineBoard_updateStream);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s9PineBoardCMa()
{
  result = qword_27D8817C8;
  if (!qword_27D8817C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229818420(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA8, &qword_22A5809C0);
  return sub_22A4DD8FC();
}

uint64_t sub_22981847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA8, &qword_22A5809C0);
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981854C, 0, 0);
}

uint64_t sub_22981854C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  v8 = v1[20];
  v14 = v1[21];
  v9 = v1[19];
  v13 = objc_opt_self();
  v10 = sub_22A4DD5AC();
  v1[25] = v10;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_229818724;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for MADownloadResult(0);
  sub_22A4DD8DC();
  (*(v5 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229818420;
  v1[13] = &block_descriptor_44;
  [v13 startCatalogDownload:v10 options:v14 then:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_229818724()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229818804, 0, 0);
}

uint64_t sub_229818804()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

BOOL sub_229818890(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_22A4DE1EC();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_229818988()
{
  v0 = sub_22A4DCDAC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_22A4DCC4C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22A4DCD0C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22A4DCDFC();
  __swift_allocate_value_buffer(v6, qword_27D8817E0);
  __swift_project_value_buffer(v6, qword_27D8817E0);
  sub_22A4DCCDC();
  sub_22A4DCC2C();
  sub_22A4DCD8C();
  return sub_22A4DCE1C();
}

uint64_t sub_229818AE4()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8817F8);
  __swift_project_value_buffer(v0, qword_27D8817F8);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_229818BAC()
{
  v1 = v0;
  v2 = sub_22A4DCDAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DCC4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_msgSend(v1 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = [v1 valenciaMatterEndpoint];
    if (v13)
    {
      v14 = v13;
      v15 = [v1 matterAdapter];
      if (v15)
      {
        v16 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_22A576190;
        v18 = v14;
        sub_22A4DCC2C();
        sub_22A4DCC3C();
        (*(v8 + 8))(v11, v7);
        v19 = sub_22A4DE7DC();
        sub_22A4DCD6C();
        sub_22A4DCD9C();
        (*(v3 + 8))(v6, v2);
        v20 = sub_22A4DE7DC();
        v21 = [objc_opt_self() attributePathWithEndpointID:v18 clusterID:v19 attributeID:v20];

        *(v17 + 32) = v21;
        sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
        v22 = sub_22A4DD81C();

        v23 = [v16 isImplementingAttributePaths_];

        if (v23)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

void sub_229818EDC(void (*a1)(void), uint64_t a2)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - v12;
  v14 = [v2 home];
  if (v14)
  {
    v15 = v14;
    if ([v14 isCurrentDeviceConfirmedPrimaryResident])
    {
      v16 = [objc_msgSend(v15 featuresDataSource)];
      swift_unknownObjectRelease();
      if (v16)
      {
        v17 = sub_22A4DD9DC();
        (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = v2;
        v18[5] = v15;
        v18[6] = a1;
        v18[7] = a2;
        v19 = v2;
        sub_2295A1C30(a1);
        sub_22957F3C0(0, 0, v13, &unk_22A585680, v18);

        return;
      }
    }
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v20 = sub_22A4DD07C();
  __swift_project_value_buffer(v20, qword_27D8817F8);
  v21 = v2;
  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCEC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315394;
    v27 = [v21 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v28 = sub_22A4DE5CC();
    v30 = v29;
    (*(v6 + 8))(v9, v5);
    v31 = sub_2295A3E30(v28, v30, &v33);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2295A3E30(0xD000000000000032, 0x800000022A5983C0, &v33);
    _os_log_impl(&dword_229538000, v22, v23, "[%s] %s Not evaluating adaptive temperature automations support, feature is not enabled", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v25, -1, -1);
  }

  if (a1)
  {
    a1();
  }
}

uint64_t sub_2298192FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_22A4DB7DC();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298193C0, 0, 0);
}

uint64_t sub_2298193C0()
{
  *(v0 + 144) = [*(v0 + 56) matterDeviceSupportsValencia];
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_229819468;
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_229819FEC(v2);
}

uint64_t sub_229819468(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 145) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_229819CF8;
  }

  else
  {
    v5 = sub_229819580;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229819580()
{
  v26 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = *(v0 + 144);
    v24 = *(v0 + 145);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315906;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v25);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000032, 0x800000022A5983C0, &v25);
    *(v10 + 22) = 1024;
    *(v10 + 24) = v23;
    *(v10 + 28) = 1024;
    *(v10 + 30) = v24;
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s Found currentDeviceSupportStatus: %{BOOL}d and currentMFiCertificateStatus: %{BOOL}d", v10, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v17 = *(v0 + 145);
  v18 = *(v0 + 144);
  v19 = *(v0 + 56);
  sub_229785F6C((v0 + 16));
  v20 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v21 = swift_task_alloc();
  *(v0 + 128) = v21;
  *v21 = v0;
  v21[1] = sub_22981986C;

  return sub_2296C5BE0(v18 & v17 & 1);
}

uint64_t sub_22981986C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2298199FC;
  }

  else
  {
    v3 = sub_229819980;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229819980()
{
  v1 = v0[9];
  v2 = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1)
  {
    v3 = v0[10];
    (v0[9])(v2);
  }

  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2298199FC()
{
  v28 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[17];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v12 = 136315650;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000032, 0x800000022A5983C0, &v27);
    *(v12 + 22) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v25 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] %s Failed to update supportsAdaptiveTemperatureAutomations with error: %@", v12, 0x20u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v20 = v0[9];
  if (v20)
  {
    v21 = v0[10];
    v20();
  }

  v22 = v0[13];

  v23 = v0[1];

  return v23();
}

uint64_t sub_229819CF8()
{
  v28 = v0;
  v1 = v0[15];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v12 = 136315650;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000032, 0x800000022A5983C0, &v27);
    *(v12 + 22) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v25 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] %s Failed to update supportsAdaptiveTemperatureAutomations with error: %@", v12, 0x20u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v20 = v0[9];
  if (v20)
  {
    v21 = v0[10];
    v20();
  }

  v22 = v0[13];

  v23 = v0[1];

  return v23();
}

uint64_t sub_229819FEC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22A4DD18C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_22A4DD16C();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_22A4DD12C();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = sub_22A4DB7DC();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();
  v15 = sub_22A4DD13C();
  v2[21] = v15;
  v16 = *(v15 - 8);
  v2[22] = v16;
  v17 = *(v16 + 64) + 15;
  v2[23] = swift_task_alloc();
  v18 = sub_22A4DD1AC();
  v2[24] = v18;
  v19 = *(v18 - 8);
  v2[25] = v19;
  v20 = *(v19 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981A278, 0, 0);
}

uint64_t sub_22981A278()
{
  v31 = v0;
  v1 = [objc_msgSend(*(v0 + 56) featuresDataSource)];
  swift_unknownObjectRelease();
  if (v1)
  {
    (*(*(v0 + 176) + 104))(*(v0 + 184), *MEMORY[0x277CCE640], *(v0 + 168));
    v2 = *(MEMORY[0x277CCE650] + 4);
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_22981A604;
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);

    return MEMORY[0x2821211C8](v4, v5);
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 64);
    v7 = sub_22A4DD07C();
    __swift_project_value_buffer(v7, qword_27D8817F8);
    v8 = v6;
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCCC();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 152);
      v11 = *(v0 + 160);
      v13 = *(v0 + 144);
      v14 = *(v0 + 64);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315394;
      v17 = [v14 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v18 = sub_22A4DE5CC();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = sub_2295A3E30(v18, v20, &v30);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, &v30);
      _os_log_impl(&dword_229538000, v9, v10, "[%s] %s Developer profile or feature flag enabled, skipping MFi certificate check", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    v22 = *(v0 + 208);
    v23 = *(v0 + 184);
    v24 = *(v0 + 160);
    v25 = *(v0 + 136);
    v26 = *(v0 + 112);
    v27 = *(v0 + 88);

    v28 = *(v0 + 8);

    return v28(1);
  }
}

uint64_t sub_22981A604()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_22981B24C;
  }

  else
  {
    v3 = sub_22981A718;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_22981A718()
{
  v117 = v0;
  v1 = [*(v0 + 64) bridge];
  if (!v1)
  {
    v1 = *(v0 + 64);
  }

  v2 = [v1 matterVendorID];
  if (v2 && (v3 = v2, v4 = [v2 integerValue], v3, (v5 = objc_msgSend(v1, sel_matterProductID)) != 0))
  {
    v6 = v5;
    v7 = [v5 integerValue];

    v8 = [v1 firmwareVersion];
    if (v8)
    {
      v9 = *(v0 + 224);
      v10 = v8;
      v11 = [v8 rawVersionString];

      v12 = sub_22A4DD5EC();
      v14 = v13;

      *(v0 + 32) = 0;
      LOBYTE(v12) = sub_229818890(v12, v14);

      if (v12)
      {
        v15 = *(v0 + 32);
        if (qword_27D87BA98 != -1)
        {
          swift_once();
        }

        v16 = *(v0 + 64);
        v17 = sub_22A4DD07C();
        __swift_project_value_buffer(v17, qword_27D8817F8);
        v18 = v16;
        v19 = sub_22A4DD05C();
        v20 = sub_22A4DDCDC();

        v111 = v7;
        v113 = v4;
        if (os_log_type_enabled(v19, v20))
        {
          v22 = *(v0 + 152);
          v21 = *(v0 + 160);
          v23 = *(v0 + 144);
          v24 = *(v0 + 64);
          v25 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v116[0] = v108;
          *v25 = 136316162;
          v26 = [v24 uuid];
          sub_22A4DB79C();

          sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
          v27 = sub_22A4DE5CC();
          v29 = v28;
          (*(v22 + 8))(v21, v23);
          v30 = sub_2295A3E30(v27, v29, v116);

          *(v25 + 4) = v30;
          *(v25 + 12) = 2080;
          *(v25 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, v116);
          *(v25 + 22) = 2048;
          *(v25 + 24) = v113;
          *(v25 + 32) = 2048;
          *(v25 + 34) = v111;
          *(v25 + 42) = 2048;
          if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v15 <= -9.22337204e18)
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          if (v15 >= 9.22337204e18)
          {
LABEL_40:
            __break(1u);
            return;
          }

          *(v25 + 44) = v15;
          _os_log_impl(&dword_229538000, v19, v20, "[%s] %s Checking MFi support using matterVendorID %ld, matterProductID %ld, and firmwareVersion %ld", v25, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v108, -1, -1);
          MEMORY[0x22AAD4E50](v25, -1, -1);
        }

        else
        {

          if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
            goto LABEL_36;
          }
        }

        if (v15 > -9.22337204e18)
        {
          if (v15 < 9.22337204e18)
          {
            v90 = *(v0 + 200);
            v91 = *(v0 + 128);
            v92 = *(v0 + 136);
            v93 = *(v0 + 112);
            v105 = *(v0 + 120);
            v94 = *(v0 + 104);
            v107 = *(v0 + 96);
            v110 = *(v0 + 192);
            v96 = *(v0 + 80);
            v95 = *(v0 + 88);
            v103 = *(v0 + 208);
            v104 = *(v0 + 72);
            *v92 = v15;
            (*(v91 + 104))(v92, *MEMORY[0x277CCE628]);
            sub_22A4DD17C();
            sub_22A4DD17C();
            v57 = sub_22A4DD14C();

            (*(v96 + 8))(v95, v104);
            (*(v94 + 8))(v93, v107);
            (*(v91 + 8))(v92, v105);
            (*(v90 + 8))(v103, v110);
            goto LABEL_20;
          }

          goto LABEL_37;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v65 = *(v0 + 64);
    v66 = sub_22A4DD07C();
    __swift_project_value_buffer(v66, qword_27D8817F8);
    v67 = v65;
    v68 = v1;
    v69 = sub_22A4DD05C();
    v70 = sub_22A4DDCEC();

    if (os_log_type_enabled(v69, v70))
    {
      v72 = *(v0 + 152);
      v71 = *(v0 + 160);
      v73 = *(v0 + 144);
      v74 = *(v0 + 64);
      v75 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v116[0] = v115;
      *v75 = 136315650;
      v76 = [v74 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v77 = sub_22A4DE5CC();
      v79 = v78;
      (*(v72 + 8))(v71, v73);
      v80 = sub_2295A3E30(v77, v79, v116);

      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, v116);
      *(v75 + 22) = 2080;
      v81 = [v68 firmwareVersion];
      if (v81)
      {
        v82 = v81;
        v83 = [v81 rawVersionString];

        v84 = sub_22A4DD5EC();
        v86 = v85;
      }

      else
      {
        v84 = 0;
        v86 = 0;
      }

      v98 = *(v0 + 200);
      v97 = *(v0 + 208);
      v99 = *(v0 + 192);
      *(v0 + 16) = v84;
      *(v0 + 24) = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
      v100 = sub_22A4DD64C();
      v102 = sub_2295A3E30(v100, v101, v116);

      *(v75 + 24) = v102;
      _os_log_impl(&dword_229538000, v69, v70, "[%s] %s Failed to parse firmwareVersion from rawVersionString %s", v75, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v115, -1, -1);
      MEMORY[0x22AAD4E50](v75, -1, -1);

      (*(v98 + 8))(v97, v99);
    }

    else
    {
      v88 = *(v0 + 200);
      v87 = *(v0 + 208);
      v89 = *(v0 + 192);

      (*(v88 + 8))(v87, v89);
    }
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 64);
    v32 = sub_22A4DD07C();
    __swift_project_value_buffer(v32, qword_27D8817F8);
    v33 = v31;
    v34 = v1;
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCEC();

    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    v40 = *(v0 + 192);
    if (v37)
    {
      v112 = *(v0 + 192);
      v114 = *(v0 + 208);
      v109 = v36;
      v42 = *(v0 + 152);
      v41 = *(v0 + 160);
      v43 = *(v0 + 144);
      v44 = *(v0 + 64);
      v45 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v116[0] = v106;
      *v45 = 136315906;
      v46 = [v44 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v47 = sub_22A4DE5CC();
      v49 = v48;
      (*(v42 + 8))(v41, v43);
      v50 = sub_2295A3E30(v47, v49, v116);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, v116);
      *(v45 + 22) = 2080;
      *(v0 + 40) = [v34 matterVendorID];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
      v51 = sub_22A4DD64C();
      v53 = sub_2295A3E30(v51, v52, v116);

      *(v45 + 24) = v53;
      *(v45 + 32) = 2080;
      *(v0 + 48) = [v34 matterProductID];
      v54 = sub_22A4DD64C();
      v56 = sub_2295A3E30(v54, v55, v116);

      *(v45 + 34) = v56;
      _os_log_impl(&dword_229538000, v35, v109, "[%s] %s Missing required context: vendorID %s or productID %s", v45, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v106, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);

      (*(v39 + 8))(v114, v112);
    }

    else
    {

      (*(v39 + 8))(v38, v40);
    }
  }

  v57 = 0;
LABEL_20:
  v58 = *(v0 + 208);
  v59 = *(v0 + 184);
  v60 = *(v0 + 160);
  v61 = *(v0 + 136);
  v62 = *(v0 + 112);
  v63 = *(v0 + 88);

  v64 = *(v0 + 8);

  v64(v57 & 1);
}

uint64_t sub_22981B24C()
{
  v33 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[8];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  if (v8)
  {
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[18];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v14 = 136315650;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v32);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, &v32);
    *(v14 + 22) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v21;
    *v30 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] %s Failed to build mobile asset with error: %@", v14, 0x20u);
    sub_22953EAE4(v30, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[11];

  v28 = v0[1];

  return v28(0);
}

void *sub_22981B6D4(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v54 - v8;
  v10 = sub_22A4DB7DC();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DD2FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = [v3 workQueue];
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v19 = sub_22A4DD31C();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = [objc_msgSend(v3 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (v20)
  {
    result = [v3 home];
    if (result)
    {
      v18 = result;
      v55 = a1;
      v56 = v9;
      v57 = a2;
      if (qword_27D87BA98 == -1)
      {
LABEL_5:
        v22 = sub_22A4DD07C();
        __swift_project_value_buffer(v22, qword_27D8817F8);
        v23 = v3;
        v24 = sub_22A4DD05C();
        v25 = sub_22A4DDCCC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v54 = v18;
          v28 = v27;
          v59 = v27;
          *v26 = 136315394;
          v29 = [v23 uuid];
          sub_22A4DB79C();

          sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
          v30 = sub_22A4DE5CC();
          v32 = v31;
          (*(v58 + 8))(v13, v10);
          v33 = sub_2295A3E30(v30, v32, &v59);

          *(v26 + 4) = v33;
          *(v26 + 12) = 2080;
          *(v26 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A598380, &v59);
          _os_log_impl(&dword_229538000, v24, v25, "[%s] %s", v26, 0x16u);
          swift_arrayDestroy();
          v34 = v28;
          v18 = v54;
          MEMORY[0x22AAD4E50](v34, -1, -1);
          MEMORY[0x22AAD4E50](v26, -1, -1);
        }

        v35 = v57;
        v36 = v18;
        v37 = [v18 homeActivityStateManager];
        v38 = v56;
        if (v37)
        {
          v39 = v37;
          [v37 addObserver_];
        }

        else
        {
          v40 = v23;
          v41 = sub_22A4DD05C();
          v42 = sub_22A4DDCEC();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v59 = v54;
            *v43 = 136315394;
            v44 = [v40 uuid];
            sub_22A4DB79C();

            sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
            v45 = sub_22A4DE5CC();
            v47 = v46;
            (*(v58 + 8))(v13, v10);
            v48 = sub_2295A3E30(v45, v47, &v59);

            *(v43 + 4) = v48;
            *(v43 + 12) = 2080;
            *(v43 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A598380, &v59);
            _os_log_impl(&dword_229538000, v41, v42, "[%s] %s missing homeActivityStateManager", v43, 0x16u);
            v49 = v54;
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v49, -1, -1);
            MEMORY[0x22AAD4E50](v43, -1, -1);
          }

          v38 = v56;
          v35 = v57;
        }

        sub_22981BDCC(v36);
        v50 = sub_22A4DD9DC();
        (*(*(v50 - 8) + 56))(v38, 1, 1, v50);
        v51 = swift_allocObject();
        v51[2] = 0;
        v51[3] = 0;
        v51[4] = v23;
        v51[5] = v36;
        v52 = v55;
        v51[6] = v55;
        v51[7] = v35;
        v53 = v23;
        sub_2295A1C30(v52);
        sub_22957F3C0(0, 0, v38, &unk_22A585670, v51);
      }

LABEL_17:
      swift_once();
      goto LABEL_5;
    }
  }

  if (a1)
  {
    return a1(result);
  }

  return result;
}

void sub_22981BDCC(void *a1)
{
  v3 = [a1 notificationCenter];
  [v3 addObserver:v1 selector:sel_handleMatterAttributeChanged_ name:@"HMDMatterAttributeChangedNotification" object:v1];

  v4 = [a1 notificationCenter];
  if (qword_27D87B9F0 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v1 selector:? name:? object:?];

  v5 = [a1 notificationCenter];
  v6 = v5;
  if (qword_27D87B9F8 != -1)
  {
    swift_once();
    v5 = v6;
  }

  [v5 addObserver:v1 selector:? name:? object:?];
}

uint64_t sub_22981BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_22A4DB7DC();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981C018, 0, 0);
}

uint64_t sub_22981C018()
{
  v1 = [objc_msgSend(*(v0 + 16) featuresDataSource)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_22981C148;
    v3 = *(v0 + 16);

    return sub_2297D361C();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_22981CA50;
    v6 = *(v0 + 16);

    return sub_22981D8B4();
  }
}

uint64_t sub_22981C148(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = *v3;
  *(*v3 + 88) = a2;

  if (v2)
  {

    v8 = swift_task_alloc();
    v5[15] = v8;
    *v8 = v7;
    v8[1] = sub_22981CA50;
    v9 = v5[2];

    return sub_22981D8B4();
  }

  else
  {
    v5[12] = a1;

    return MEMORY[0x2822009F8](sub_22981C2D4, 0, 0);
  }
}

uint64_t sub_22981C2D4()
{
  v47 = v0;
  v1 = *(v0 + 88);
  if (*(v0 + 96) == 2)
  {
    if (v1)
    {
      v46 = MEMORY[0x277D84F90];
      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = *(v0 + 56);
        v5 = *(v3 + 16);
        v4 = v3 + 16;
        v45 = v5;
        v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
        v7 = *(v4 + 56);
        v44 = MEMORY[0x277D84F90];
        do
        {
          v8 = *(v0 + 72);
          v9 = *(v0 + 48);
          v10 = *(v0 + 24);
          v45(v8, v6, v9);
          v11 = sub_22A4DB77C();
          v12 = [v10 roomWithUUID_];

          v13 = (*(v4 - 8))(v8, v9);
          if (v12)
          {
            MEMORY[0x22AAD09E0](v13);
            if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v14 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22A4DD85C();
            }

            sub_22A4DD87C();
            v44 = v46;
          }

          v6 += v7;
          --v2;
        }

        while (v2);
      }

      else
      {
        v44 = MEMORY[0x277D84F90];
      }

      *(v0 + 104) = v44;

      if (v44 >> 62)
      {
        if (sub_22A4DE0EC())
        {
          goto LABEL_16;
        }
      }

      else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:
        v18 = swift_task_alloc();
        *(v0 + 112) = v18;
        *v18 = v0;
        v18[1] = sub_22981C83C;
        v20 = *(v0 + 16);
        v19 = *(v0 + 24);

        return sub_22981CD4C(v19, v44);
      }
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 16);
    v22 = sub_22A4DD07C();
    __swift_project_value_buffer(v22, qword_27D8817F8);
    v23 = v21;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 56);
      v26 = *(v0 + 64);
      v28 = *(v0 + 48);
      v29 = *(v0 + 16);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136315394;
      v32 = [v29 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v33 = sub_22A4DE5CC();
      v35 = v34;
      (*(v27 + 8))(v26, v28);
      v36 = sub_2295A3E30(v33, v35, &v46);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A598380, &v46);
      _os_log_impl(&dword_229538000, v24, v25, "[%s] %s Adaptive thermostat driver is localPresence but rooms are not configured", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    v37 = *(v0 + 32);
    if (v37)
    {
      v38 = *(v0 + 40);
      v37();
    }

    if ([*(v0 + 16) isConfiguredAsValenciaThermostat])
    {
      v39 = *(v0 + 16);
      v40 = [objc_msgSend(v39 dataSource)];
      swift_unknownObjectRelease();
      [v40 postNotificationName:@"HMDAccessoryConfiguredAsValenciaThermostat" object:v39];
    }

    v42 = *(v0 + 64);
    v41 = *(v0 + 72);

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {

    v15 = swift_task_alloc();
    *(v0 + 120) = v15;
    *v15 = v0;
    v15[1] = sub_22981CA50;
    v16 = *(v0 + 16);

    return sub_22981D8B4();
  }
}

uint64_t sub_22981C83C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22981C954, 0, 0);
}

uint64_t sub_22981C954()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 40);
    v1();
  }

  if ([*(v0 + 16) isConfiguredAsValenciaThermostat])
  {
    v3 = *(v0 + 16);
    v4 = [objc_msgSend(v3 dataSource)];
    swift_unknownObjectRelease();
    [v4 postNotificationName:@"HMDAccessoryConfiguredAsValenciaThermostat" object:v3];
  }

  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22981CA50()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22981CB4C, 0, 0);
}

uint64_t sub_22981CB4C()
{
  v1 = [*(v0 + 16) swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v2 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_configuredAsValenciaThermostat;
  os_unfair_lock_lock(v2);
  *(v2 + 4) = 1;
  os_unfair_lock_unlock(v2);
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_22981CC50;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_22981DFEC(v4, 12);
}

uint64_t sub_22981CC50()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229839A34, 0, 0);
}

uint64_t sub_22981CD4C(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  v3[24] = v4;
  v5 = *(v4 - 8);
  v3[25] = v5;
  v6 = *(v5 + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981CE78, 0, 0);
}

uint64_t (**sub_22981CE78())(uint64_t, uint64_t, id)
{
  v63 = v0;
  v1 = [objc_msgSend(*(v0 + 184) featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v1)
  {
    goto LABEL_15;
  }

  result = [*(v0 + 168) swiftExtensions];
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v4 = result[8](v0 + 136, ObjectType, result);
  v6 = v5;
  os_unfair_lock_lock(v5);
  sub_229564F88(&v6[2], v0 + 56, &qword_27D881140, &qword_22A5855F0);
  os_unfair_lock_unlock(v6);
  v4(v0 + 136, 0);
  swift_unknownObjectRelease();
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D8817F8);
    v10 = v7;

    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCCC();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 224);
      v13 = *(v0 + 232);
      v15 = *(v0 + 216);
      v16 = *(v0 + 184);
      v61 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v62[0] = v18;
      *v17 = 136315650;
      v19 = [v16 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v20 = sub_22A4DE5CC();
      v22 = v21;
      (*(v14 + 8))(v13, v15);
      v23 = sub_2295A3E30(v20, v22, v62);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A5981E0, v62);
      *(v17 + 22) = 2080;
      v24 = sub_229562F68(0, &unk_2814017A0, off_278666308);
      v25 = MEMORY[0x22AAD0A20](v61, v24);
      v27 = sub_2295A3E30(v25, v26, v62);

      *(v17 + 24) = v27;
      _os_log_impl(&dword_229538000, v11, v12, "[%s] %s Configuring local presence observer for rooms: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    v28 = *(v0 + 184);
    v29 = [v28 swiftExtensions];
    *(v0 + 240) = _s15SwiftExtensionsCMa_1();
    v30 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserver);
    os_unfair_lock_lock(v30);
    sub_22983499C(&v30[2], v28, (v0 + 96));
    os_unfair_lock_unlock(v30);
    v51 = *(v0 + 176);
    v50 = *(v0 + 184);
    swift_unknownObjectRelease();
    v52 = [v50 swiftExtensions];
    v53 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_configuredAsValenciaThermostat;
    os_unfair_lock_lock(v53);
    *(v53 + 4) = 1;
    os_unfair_lock_unlock(v53);
    swift_unknownObjectRelease();
    v54 = __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    if (v51 >> 62)
    {
      if (*(v0 + 176) < 0)
      {
        v59 = *(v0 + 176);
      }

      v60 = *(v0 + 176);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
      v55 = sub_22A4DE3AC();
    }

    else
    {

      sub_22A4DE61C();
      v55 = *(v0 + 176);
    }

    *(v0 + 248) = v55;
    v56 = *v54;
    v57 = swift_task_alloc();
    *(v0 + 256) = v57;
    *v57 = v0;
    v57[1] = sub_22981D654;
    v58 = *(v0 + 208);

    return sub_229691DD8(v58, v55, v0 + 16);
  }

  sub_22953EAE4(v0 + 56, &qword_27D881140, &qword_22A5855F0);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 184);
  v32 = sub_22A4DD07C();
  __swift_project_value_buffer(v32, qword_27D8817F8);
  v33 = v31;
  v34 = sub_22A4DD05C();
  v35 = sub_22A4DDCEC();

  if (os_log_type_enabled(v34, v35))
  {
    v37 = *(v0 + 224);
    v36 = *(v0 + 232);
    v38 = *(v0 + 216);
    v39 = *(v0 + 184);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v62[0] = v41;
    *v40 = 136315394;
    v42 = [v39 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v43 = sub_22A4DE5CC();
    v45 = v44;
    (*(v37 + 8))(v36, v38);
    v46 = sub_2295A3E30(v43, v45, v62);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A5981E0, v62);
    _os_log_impl(&dword_229538000, v34, v35, "[%s] %s roomPresencePublisher is nil", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v41, -1, -1);
    MEMORY[0x22AAD4E50](v40, -1, -1);
  }

LABEL_15:
  v47 = *(v0 + 232);
  v48 = *(v0 + 208);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_22981D654()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22981D76C, 0, 0);
}

uint64_t sub_22981D76C()
{
  v1 = *(v0 + 240);
  v2 = [*(v0 + 184) swiftExtensions];
  v3 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserverTask;
  os_unfair_lock_lock(v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
    sub_22A4DDA7C();
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v3 + 8) = sub_229835414(v5);
  os_unfair_lock_unlock(v3);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v5, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v9 = *(v0 + 232);
  v10 = *(v0 + 208);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22981D8B4()
{
  v1[12] = v0;
  v2 = sub_22A4DB7DC();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981D974, 0, 0);
}

uint64_t sub_22981D974()
{
  v34 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v33);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000022, 0x800000022A5982F0, &v33);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v17 = [*(v0 + 96) swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v18 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserverTask;
  os_unfair_lock_lock(v18);
  v19 = *(v18 + 8);
  *(v0 + 128) = v19;
  *(v18 + 8) = 0;
  os_unfair_lock_unlock(v18);
  swift_unknownObjectRelease();
  if (v19)
  {

    sub_22A4DDA7C();
  }

  v20 = [*(v0 + 96) swiftExtensions];
  v21 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserver;
  os_unfair_lock_lock(v21);
  v22 = *(v21 + 8);
  v23 = *(v21 + 24);
  *(v0 + 48) = *(v21 + 40);
  *(v0 + 16) = v22;
  *(v0 + 32) = v23;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0;
  *(v21 + 8) = 0u;
  os_unfair_lock_unlock(v21);
  swift_unknownObjectRelease();
  sub_229564F88(v0 + 16, v0 + 56, &qword_27D880BF0, &unk_22A585580);
  v24 = *(v0 + 80);
  if (v24)
  {
    __swift_project_boxed_opaque_existential_0((v0 + 56), v24);
    v25 = off_283CDF908;
    v26 = _s32DefaultAccessoryPresenceObserverCMa();
    v32 = (v25 + *v25);
    v27 = v25[1];
    v28 = swift_task_alloc();
    *(v0 + 136) = v28;
    *v28 = v0;
    v28[1] = sub_22981DE68;

    return (v32)(v26, &off_283CDF900);
  }

  else
  {
    sub_22953EAE4(v0 + 16, &qword_27D880BF0, &unk_22A585580);

    sub_22953EAE4(v0 + 56, &qword_27D880BF0, &unk_22A585580);
    v30 = *(v0 + 120);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_22981DE68()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22981DF64, 0, 0);
}

uint64_t sub_22981DF64()
{
  v1 = v0[16];

  sub_22953EAE4((v0 + 2), &qword_27D880BF0, &unk_22A585580);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22981DFEC(uint64_t a1, char a2)
{
  *(v3 + 281) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = sub_22A4DB7DC();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881888, &qword_22A5854C0) - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881890, &qword_22A5854C8);
  *(v3 + 144) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v10 = sub_22A4DB74C();
  *(v3 + 160) = v10;
  v11 = *(v10 - 8);
  *(v3 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v13 = sub_22A4DCD0C();
  *(v3 + 192) = v13;
  v14 = *(v13 - 8);
  *(v3 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981E1E8, 0, 0);
}

uint64_t sub_22981E1E8()
{
  v54 = v0;
  v1 = [*(v0 + 104) matterAdapter];
  *(v0 + 216) = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 matterDevice];
  if (!v3)
  {

LABEL_8:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 104);
    v15 = sub_22A4DD07C();
    __swift_project_value_buffer(v15, qword_27D8817F8);
    v16 = v14;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v22 = *(v0 + 104);
      v21 = *(v0 + 112);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53 = v24;
      *v23 = 136315394;
      v25 = [v22 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v26 = sub_22A4DE5CC();
      v28 = v27;
      (*(v20 + 8))(v19, v21);
      v29 = sub_2295A3E30(v26, v28, &v53);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597F00, &v53);
      _os_log_impl(&dword_229538000, v17, v18, "[%s] %s No Matter device", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    goto LABEL_13;
  }

  v4 = v3;
  v5 = *(v0 + 104);
  v6 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
  v7 = MEMORY[0x277D17450];
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 56) = v4;
  sub_229557188((v0 + 56), v0 + 16);
  v8 = [v5 valenciaMatterEndpoint];
  *(v0 + 224) = v8;
  if (v8)
  {
    v9 = *(v0 + 208);
    [v8 unsignedShortValue];
    sub_22A4DCCEC();
    v10 = swift_task_alloc();
    *(v0 + 232) = v10;
    *v10 = v0;
    v10[1] = sub_22981E7AC;
    v11 = *(v0 + 208);
    v12 = *(v0 + 104);

    return sub_229822BCC(v0 + 16, v11);
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 104);
  v38 = sub_22A4DD07C();
  __swift_project_value_buffer(v38, qword_27D8817F8);
  v39 = v37;
  v40 = sub_22A4DD05C();
  v41 = sub_22A4DDCEC();

  if (os_log_type_enabled(v40, v41))
  {
    v43 = *(v0 + 120);
    v42 = *(v0 + 128);
    v45 = *(v0 + 104);
    v44 = *(v0 + 112);
    v46 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v46 = 136315394;
    v47 = [v45 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v48 = sub_22A4DE5CC();
    v50 = v49;
    (*(v43 + 8))(v42, v44);
    v51 = sub_2295A3E30(v48, v50, &v53);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597F00, &v53);
    _os_log_impl(&dword_229538000, v40, v41, "[%s] %s No Valencia Thermostat Endpoints", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v52, -1, -1);
    MEMORY[0x22AAD4E50](v46, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_13:
  v30 = *(v0 + 208);
  v31 = *(v0 + 176);
  v32 = *(v0 + 184);
  v33 = *(v0 + 152);
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_22981E7AC(char a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 282) = a1;

  return MEMORY[0x2822009F8](sub_22981E8AC, 0, 0);
}

uint64_t sub_22981E8AC()
{
  v43 = v0;
  if (*(v0 + 282) == 1)
  {
    if ([*(v0 + 104) isConfiguredAsValenciaThermostat])
    {
      v1 = swift_task_alloc();
      *(v0 + 240) = v1;
      *v1 = v0;
      v1[1] = sub_22981EC74;
      v2 = *(v0 + 136);
      v3 = *(v0 + 96);
      v4 = *(v0 + 104);

      return sub_229823618(v2, v3);
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 104);
    v18 = sub_22A4DD07C();
    __swift_project_value_buffer(v18, qword_27D8817F8);
    v19 = v17;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 224);
    v25 = *(v0 + 200);
    v24 = *(v0 + 208);
    v26 = *(v0 + 192);
    if (v22)
    {
      v41 = *(v0 + 208);
      v28 = *(v0 + 120);
      v27 = *(v0 + 128);
      v30 = *(v0 + 104);
      v29 = *(v0 + 112);
      v39 = *(v0 + 216);
      v40 = *(v0 + 224);
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v31 = 136315394;
      v32 = [v30 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v33 = sub_22A4DE5CC();
      v37 = v26;
      v35 = v34;
      (*(v28 + 8))(v27, v29);
      v36 = sub_2295A3E30(v33, v35, &v42);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597F00, &v42);
      _os_log_impl(&dword_229538000, v20, v21, "[%s] %s Not configured yet", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);

      (*(v25 + 8))(v41, v37);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }
  }

  else
  {
    v6 = *(v0 + 224);
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 192);

    (*(v8 + 8))(v7, v9);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v10 = *(v0 + 208);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 152);
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22981EC74()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22981ED70, 0, 0);
}

uint64_t sub_22981ED70()
{
  v80 = v0;
  v1 = *(v0 + 136);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 224);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_22953EAE4(v1, &qword_27D881888, &qword_22A5854C0);
LABEL_9:
    v60 = *(v0 + 208);
    v61 = *(v0 + 176);
    v62 = *(v0 + 184);
    v63 = *(v0 + 152);
    v65 = *(v0 + 128);
    v64 = *(v0 + 136);

    v66 = *(v0 + 8);

    return v66();
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v2 + 48);
  v13 = *(v11 + 48);
  *v10 = *v1;
  v14 = *(v9 + 32);
  v14(v10 + v13, v1 + v12, v8);
  v15 = *v10;
  *(v0 + 248) = *v10;
  v14(v7, v10 + *(v11 + 48), v8);
  if (![v15 state])
  {
    v53 = *(v0 + 224);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v57 = *(v0 + 184);
    v56 = *(v0 + 192);
    v58 = *(v0 + 160);
    v59 = *(v0 + 168);

    (*(v59 + 8))(v57, v58);
    (*(v55 + 8))(v54, v56);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_9;
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 104);
  v21 = sub_22A4DD07C();
  __swift_project_value_buffer(v21, qword_27D8817F8);
  (*(v19 + 16))(v17, v16, v18);
  v22 = v20;
  v23 = v15;
  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCCC();

  v26 = os_log_type_enabled(v24, v25);
  v28 = *(v0 + 168);
  v27 = *(v0 + 176);
  v29 = *(v0 + 160);
  if (v26)
  {
    v78 = v25;
    v31 = *(v0 + 120);
    v30 = *(v0 + 128);
    v76 = *(v0 + 160);
    v33 = *(v0 + 104);
    v32 = *(v0 + 112);
    v74 = *(v0 + 281);
    v75 = *(v0 + 176);
    v34 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v79 = v77;
    *v34 = 136316162;
    v35 = [v33 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v36 = sub_22A4DE5CC();
    v38 = v37;
    (*(v31 + 8))(v30, v32);
    v39 = sub_2295A3E30(v36, v38, &v79);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597F00, &v79);
    *(v34 + 22) = 2112;
    *(v34 + 24) = v23;
    *v73 = v23;
    *(v34 + 32) = 2080;
    *(v0 + 280) = v74;
    v40 = v23;
    v41 = sub_22A4DD64C();
    v43 = sub_2295A3E30(v41, v42, &v79);

    *(v34 + 34) = v43;
    *(v34 + 42) = 2080;
    v44 = sub_22A4DB6AC();
    v45 = [v44 hmf_localTimeDescription];

    v46 = sub_22A4DD5EC();
    v48 = v47;

    v51 = *(v28 + 8);
    v49 = v28 + 8;
    v50 = v51;
    v51(v75, v76);
    v52 = sub_2295A3E30(v46, v48, &v79);

    *(v34 + 44) = v52;
    _os_log_impl(&dword_229538000, v24, v78, "[%s] %s newState: %@ reason: %s, nextFireDate: %s", v34, 0x34u);
    sub_22953EAE4(v73, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v73, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v77, -1, -1);
    MEMORY[0x22AAD4E50](v34, -1, -1);
  }

  else
  {

    v68 = *(v28 + 8);
    v49 = v28 + 8;
    v50 = v68;
    v68(v27, v29);
  }

  *(v0 + 256) = v49;
  *(v0 + 264) = v50;
  v69 = swift_task_alloc();
  *(v0 + 272) = v69;
  *v69 = v0;
  v69[1] = sub_22981F37C;
  v70 = *(v0 + 208);
  v71 = *(v0 + 104);
  v72 = *(v0 + 281);

  return sub_229825D3C(v23, v0 + 16, v70, v72);
}

uint64_t sub_22981F37C()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22981F478, 0, 0);
}

uint64_t sub_22981F478()
{
  v1 = v0[32];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[25];
  v18 = v0[26];
  v19 = v0[33];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[20];
  v9 = v0[13];
  sub_22982AB44();

  v19(v7, v8);
  (*(v5 + 8))(v18, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v10 = v0[26];
  v11 = v0[22];
  v12 = v0[23];
  v13 = v0[19];
  v15 = v0[16];
  v14 = v0[17];

  v16 = v0[1];

  return v16();
}

void *sub_22981F650()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v57 - v3;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD2FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = [v0 workQueue];
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v15 = sub_22A4DD31C();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  v16 = [objc_msgSend(v0 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (!v16)
  {
    return result;
  }

  result = [v0 home];
  if (!result)
  {
    return result;
  }

  v14 = result;
  if (qword_27D87BA98 != -1)
  {
    goto LABEL_15;
  }

LABEL_5:
  v63 = v9;
  v18 = sub_22A4DD07C();
  v19 = __swift_project_value_buffer(v18, qword_27D8817F8);
  v20 = v0;
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCCC();

  v23 = os_log_type_enabled(v21, v22);
  v60 = v5;
  v61 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v59 = v19;
    v25 = v5;
    v26 = v24;
    v27 = swift_slowAlloc();
    v62 = v14;
    v58 = v27;
    v64 = v27;
    *v26 = 136315394;
    v28 = [v20 uuid];
    v29 = v63;
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v30 = sub_22A4DE5CC();
    LOBYTE(v28) = v22;
    v32 = v31;
    (*(v6 + 8))(v29, v25);
    v33 = sub_2295A3E30(v30, v32, &v64);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A598350, &v64);
    _os_log_impl(&dword_229538000, v21, v28, "[%s] %s", v26, 0x16u);
    v34 = v58;
    swift_arrayDestroy();
    v14 = v62;
    MEMORY[0x22AAD4E50](v34, -1, -1);
    MEMORY[0x22AAD4E50](v26, -1, -1);
  }

  v35 = sub_22A4DD9DC();
  (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v20;
  v37 = v20;
  sub_22957F3C0(0, 0, v4, &unk_22A585660, v36);

  v38 = [v14 notificationCenter];
  [v38 removeObserver_];

  v39 = [v14 homeActivityStateManager];
  if (v39)
  {
    v40 = v39;
    [v39 removeObserver_];
  }

  else
  {
    v41 = v37;
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCEC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v62 = v14;
      v45 = v44;
      v46 = swift_slowAlloc();
      v64 = v46;
      *v45 = 136315394;
      v47 = [v41 uuid];
      v48 = v63;
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v49 = v60;
      v50 = sub_22A4DE5CC();
      v52 = v51;
      (*(v61 + 8))(v48, v49);
      v53 = sub_2295A3E30(v50, v52, &v64);

      *(v45 + 4) = v53;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A598350, &v64);
      _os_log_impl(&dword_229538000, v42, v43, "[%s] %s missing homeActivityStateManager", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v46, -1, -1);
      v54 = v45;
      v14 = v62;
      MEMORY[0x22AAD4E50](v54, -1, -1);
    }
  }

  v55 = [v37 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v56 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_configuredAsValenciaThermostat;
  os_unfair_lock_lock(v56);
  *(v56 + 4) = 0;
  os_unfair_lock_unlock(v56);

  return swift_unknownObjectRelease();
}

uint64_t sub_22981FDB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22981D8B4();
}

id sub_22981FE8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_22A4DD2FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = [v0 workQueue];
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v10 = sub_22A4DD31C();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v12 = [objc_msgSend(v0 featuresDataSource)];
    result = swift_unknownObjectRelease();
    if (v12)
    {
      result = [v0 home];
      if (result)
      {
        v13 = result;
        v14 = sub_22A4DD9DC();
        (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v0;
        v15[5] = v13;
        v16 = v0;
        sub_22957F3C0(0, 0, v4, &unk_22A585650, v15);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2298200D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_229586D38;

  return sub_22981DFEC(a5, 1);
}

uint64_t sub_2298201C0()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = sub_22A4DCD0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 matterAdapter];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v9 matterDevice];
  if (!v11)
  {
LABEL_6:

LABEL_7:
    v15 = 0;
    return v15 & 1;
  }

  v12 = v11;
  v19 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
  v20 = MEMORY[0x277D17450];
  *&v18 = v12;
  sub_229557188(&v18, v21);
  v13 = [v0 valenciaMatterEndpoint];
  if (!v13)
  {
    __swift_destroy_boxed_opaque_existential_0(v21);
    goto LABEL_6;
  }

  v14 = v13;
  v17[6] = v2;
  [v13 unsignedShortValue];
  sub_22A4DCCEC();
  v15 = sub_22A4DC92C();

  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v15 & 1;
}

void sub_2298206CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39[-v4];
  v6 = sub_22A4DCDAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v39[-v12];
  v14 = sub_22A4DCC4C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = [v0 home];
  if (v19)
  {
    v43 = v19;
    if ([v19 isCurrentDeviceConfirmedPrimaryResident])
    {
      v20 = sub_22A4DB20C();
      if (v20)
      {
        v21 = v20;
        v44 = sub_22A4DD5EC();
        v45 = v22;
        sub_22A4DE18C();
        if (*(v21 + 16) && (v23 = sub_2295402E8(v46), (v24 & 1) != 0))
        {
          sub_2295404B0(*(v21 + 56) + 32 * v23, v47);
          sub_22954045C(v46);
          v42 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v41 = v44;
          v44 = sub_22A4DD5EC();
          v45 = v25;
          sub_22A4DE18C();
          if (*(v21 + 16))
          {
            v26 = sub_2295402E8(v46);
            if (v27)
            {
              sub_2295404B0(*(v21 + 56) + 32 * v26, v47);
              sub_22954045C(v46);

              if (swift_dynamicCast())
              {
                v42 = v44;
                v40 = [v41 unsignedIntValue];
                sub_22A4DCB6C();
                v28 = sub_22A4DCC3C();
                (*(v15 + 8))(v18, v14);
                if (v40 == v28)
                {
                  v29 = v42;
                  [v42 unsignedIntValue];
                  sub_22A4DCD8C();
                  if (sub_229838694())
                  {
                    (*(v7 + 16))(v11, v13, v6);
                    v30 = sub_229838920(v11);
                    v31 = sub_22A4DD9DC();
                    (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
                    v32 = swift_allocObject();
                    *(v32 + 16) = 0;
                    *(v32 + 24) = 0;
                    *(v32 + 32) = v1;
                    *(v32 + 40) = v43;
                    *(v32 + 48) = v30;
                    v33 = v1;
                    v34 = v43;
                    sub_22957F3C0(0, 0, v5, &unk_22A585640, v32);

                    sub_22A4DCD3C();
                    sub_229839520(&unk_27D881930, MEMORY[0x277D17430]);
                    sub_22A4DD7DC();
                    sub_22A4DD7DC();
                    v35 = *(v7 + 8);
                    v35(v11, v6);
                    v36 = v41;
                    if (v46[0] == v47[0])
                    {
                      v37 = [v34 notificationCenter];
                      [v37 postNotificationName:@"HMDAccessoryValenciaStateEnabledAttributeChanged" object:v33];

                      v35(v13, v6);
                    }

                    else
                    {
                      v35(v13, v6);
                    }
                  }

                  else
                  {
                    (*(v7 + 8))(v13, v6);
                  }
                }

                else
                {
                }
              }

              else
              {
              }

              return;
            }
          }
        }

        else
        {
        }

        sub_22954045C(v46);
        return;
      }
    }

    v38 = v43;
  }
}

uint64_t sub_229820D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229586D38;

  return sub_22981DFEC(a5, a6);
}

uint64_t sub_229820EB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229820F40();
}

uint64_t sub_229820F40()
{
  v1[7] = v0;
  v1[8] = swift_getObjectType();
  v2 = sub_22A4DB7DC();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229821018, 0, 0);
}

uint64_t sub_229821018()
{
  v45 = v0;
  v1 = [*(v0 + 56) home];
  *(v0 + 104) = v1;
  if (v1)
  {
    v2 = v1;
    if ([v1 isCurrentDeviceConfirmedPrimaryResident])
    {
      v3 = *(v0 + 56);
      v4 = [v3 swiftExtensions];
      _s15SwiftExtensionsCMa_1();
      v5 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
      os_unfair_lock_lock(v5);
      sub_22978620C(&v5[2], v3, (v0 + 16));
      os_unfair_lock_unlock(v5);
      swift_unknownObjectRelease();
      v41 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v42 = swift_task_alloc();
      *(v0 + 112) = v42;
      *v42 = v0;
      v42[1] = sub_2298215D4;

      return sub_2296C31A8();
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 56);
    v23 = sub_22A4DD07C();
    __swift_project_value_buffer(v23, qword_27D8817F8);
    v24 = v22;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 96);
      v29 = *(v0 + 72);
      v28 = *(v0 + 80);
      v30 = *(v0 + 56);
      v31 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44[0] = v43;
      *v31 = 136315394;
      v32 = [v30 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v33 = sub_22A4DE5CC();
      v35 = v34;
      (*(v28 + 8))(v27, v29);
      v36 = sub_2295A3E30(v33, v35, v44);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5981A0, v44);
      _os_log_impl(&dword_229538000, v25, v26, "[%s] %s Ignoring notification. Not the primary resident", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v43, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 56);
    v7 = sub_22A4DD07C();
    __swift_project_value_buffer(v7, qword_27D8817F8);
    v8 = v6;
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 96);
      v12 = *(v0 + 72);
      v13 = *(v0 + 80);
      v14 = *(v0 + 56);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44[0] = v16;
      *v15 = 136315394;
      v17 = [v14 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v18 = sub_22A4DE5CC();
      v20 = v19;
      (*(v13 + 8))(v11, v12);
      v21 = sub_2295A3E30(v18, v20, v44);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5981A0, v44);
      _os_log_impl(&dword_229538000, v9, v10, "[%s] %s home is nil", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }
  }

  v38 = *(v0 + 88);
  v37 = *(v0 + 96);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2298215D4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 112);
  v7 = *v3;
  *(*v3 + 120) = a2;

  if (v2)
  {

    v8 = sub_229821C3C;
  }

  else
  {
    *(v5 + 128) = a1;
    v8 = sub_229821704;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_229821704()
{
  v50 = v0;
  v1 = v0[16];
  v2 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = [objc_msgSend(v2 featuresDataSource)];
  swift_unknownObjectRelease();
  v4 = v0[15];
  if (v3)
  {
    v5 = v1 == 2;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {

    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_22982204C;
    v7 = v0[7];

    return sub_22981D8B4();
  }

  if (v4)
  {
    v49 = MEMORY[0x277D84F90];
    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = v0[10];
      v12 = *(v10 + 16);
      v11 = v10 + 16;
      v47 = v12;
      v13 = v4 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v14 = *(v11 + 56);
      v46 = MEMORY[0x277D84F90];
      do
      {
        v15 = v0[13];
        v16 = v0[11];
        v17 = v0[9];
        v47(v16, v13, v17);
        v18 = sub_22A4DB77C();
        v19 = [v15 roomWithUUID_];

        v20 = (*(v11 - 8))(v16, v17);
        if (v19)
        {
          MEMORY[0x22AAD09E0](v20);
          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v21 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22A4DD85C();
          }

          sub_22A4DD87C();
          v46 = v49;
        }

        v13 += v14;
        --v9;
      }

      while (v9);
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
    }

    v0[17] = v46;

    if (v46 >> 62)
    {
      if (sub_22A4DE0EC())
      {
        goto LABEL_19;
      }
    }

    else if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      v22 = swift_task_alloc();
      v0[18] = v22;
      *v22 = v0;
      v22[1] = sub_229821EC4;
      v23 = v0[13];
      v24 = v0[7];

      return sub_22981CD4C(v23, v46);
    }
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = sub_22A4DD07C();
  __swift_project_value_buffer(v26, qword_27D8817F8);
  v27 = v25;
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCEC();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[13];
  if (v30)
  {
    v32 = v0[12];
    v33 = v0[9];
    v34 = v0[10];
    v35 = v0[7];
    v48 = v0[13];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v49 = v37;
    *v36 = 136315394;
    v38 = [v35 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v39 = sub_22A4DE5CC();
    v41 = v40;
    (*(v34 + 8))(v32, v33);
    v42 = sub_2295A3E30(v39, v41, &v49);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5981A0, &v49);
    _os_log_impl(&dword_229538000, v28, v29, "[%s] %s Adaptive thermostat driver is localPresence but rooms are not configured", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v36, -1, -1);
    v31 = v48;
  }

  v44 = v0[11];
  v43 = v0[12];

  v45 = v0[1];

  return v45();
}

uint64_t sub_229821C3C()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[7];
    v23 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315394;
    v14 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v10 + 8))(v8, v9);
    v18 = sub_2295A3E30(v15, v17, &v24);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5981A0, &v24);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s failed to fetch settings", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    v7 = v23;
  }

  v20 = v0[11];
  v19 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_229821EC4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229821FDC, 0, 0);
}

uint64_t sub_229821FDC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22982204C()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[20] = v4;
  *v4 = v3;
  v4[1] = sub_2298221A8;
  v5 = v1[13];
  v6 = v1[7];

  return sub_22981DFEC(v5, 2);
}

uint64_t sub_2298221A8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229839A3C, 0, 0);
}

uint64_t sub_2298222C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22A4DB7DC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229822384, 0, 0);
}

uint64_t sub_229822384()
{
  v41 = v0;
  v1 = [*(v0 + 16) home];
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = v1;
    if ([v1 isCurrentDeviceConfirmedPrimaryResident])
    {
      v3 = swift_task_alloc();
      *(v0 + 56) = v3;
      *v3 = v0;
      v3[1] = sub_229822888;
      v4 = *(v0 + 16);

      return sub_22981DFEC(v2, 11);
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 16);
    v23 = sub_22A4DD07C();
    __swift_project_value_buffer(v23, qword_27D8817F8);
    v24 = v22;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = *(v0 + 32);
      v27 = *(v0 + 40);
      v30 = *(v0 + 16);
      v29 = *(v0 + 24);
      v31 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v31 = 136315394;
      v32 = [v30 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v33 = sub_22A4DE5CC();
      v35 = v34;
      (*(v28 + 8))(v27, v29);
      v36 = sub_2295A3E30(v33, v35, &v40);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A598170, &v40);
      _os_log_impl(&dword_229538000, v25, v26, "[%s] %s Ignoring notification. Not the primary resident", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 16);
    v7 = sub_22A4DD07C();
    __swift_project_value_buffer(v7, qword_27D8817F8);
    v8 = v6;
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 32);
      v11 = *(v0 + 40);
      v14 = *(v0 + 16);
      v13 = *(v0 + 24);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40 = v16;
      *v15 = 136315394;
      v17 = [v14 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v18 = sub_22A4DE5CC();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = sub_2295A3E30(v18, v20, &v40);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A598170, &v40);
      _os_log_impl(&dword_229538000, v9, v10, "[%s] %s home is nil", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }
  }

  v37 = *(v0 + 40);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_229822888()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229822984, 0, 0);
}

uint64_t sub_229822984()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229822A0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_22A4DB21C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  v16 = sub_22A4DD9DC();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v18 = a1;
  sub_22957F3C0(0, 0, v10, a5, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_229822BCC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v6 = sub_22A4DB7DC();
  v3[4] = v6;
  v7 = *(v6 - 8);
  v3[5] = v7;
  v8 = *(v7 + 64) + 15;
  v3[6] = swift_task_alloc();
  v9 = *(MEMORY[0x277D17378] + 4);
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_229822CD4;

  return MEMORY[0x2821716E8](a1, a2);
}

uint64_t sub_229822CD4(__int16 a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_229823364;
  }

  else
  {
    v5 = sub_229822DEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229822DEC()
{
  v51 = v0;
  v1 = *(v0 + 16);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  if (qword_27D87BA90 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 64);
  v4 = sub_22A4DCDFC();
  __swift_project_value_buffer(v4, qword_27D8817E0);
  sub_22A4DC7CC();
  if (!v3)
  {
    v23 = *(v0 + 76);
    v24 = *(v0 + 72);
    if ((v24 & 0x100) == 0 && v23 == v24)
    {
      v25 = 1;
      goto LABEL_18;
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 24);
    v27 = sub_22A4DD07C();
    __swift_project_value_buffer(v27, qword_27D8817F8);
    v28 = v26;
    v9 = sub_22A4DD05C();
    v29 = sub_22A4DDCCC();

    if (os_log_type_enabled(v9, v29))
    {
      v47 = *(v0 + 72);
      v31 = *(v0 + 40);
      v30 = *(v0 + 48);
      v33 = *(v0 + 24);
      v32 = *(v0 + 32);
      v34 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50[0] = v49;
      *v34 = 136315650;
      v35 = [v33 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v36 = sub_22A4DE5CC();
      v38 = v37;
      (*(v31 + 8))(v30, v32);
      v39 = sub_2295A3E30(v36, v38, v50);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      *(v0 + 74) = v47;
      *(v0 + 75) = HIBYTE(v47) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881908, &qword_22A585590);
      v40 = sub_22A4DBA6C();
      v42 = sub_2295A3E30(v40, v41, v50);

      *(v34 + 14) = v42;
      *(v34 + 22) = 256;
      *(v34 + 24) = v23;
      _os_log_impl(&dword_229538000, v9, v29, "[%s] We're not the fabric suggesting preset. fabricIndexSuggestingPresets: %s, fabricIndex: %hhu", v34, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    goto LABEL_16;
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 24);
  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D8817F8);
  v7 = v5;
  v8 = v3;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v14 = *(v0 + 24);
    v13 = *(v0 + 32);
    v15 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50[0] = v48;
    *v15 = 136315394;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_2295A3E30(v17, v19, v50);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v3;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v46 = v22;
    _os_log_impl(&dword_229538000, v9, v10, "[%s] Failed to read primary fabric with error %@", v15, 0x16u);
    sub_22953EAE4(v46, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

LABEL_16:
    goto LABEL_17;
  }

LABEL_17:
  v25 = 0;
LABEL_18:
  v43 = *(v0 + 48);

  v44 = *(v0 + 8);

  return v44(v25);
}

uint64_t sub_229823364()
{
  v26 = v0;
  v1 = v0[8];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[5];
    v8 = v0[6];
    v11 = v0[3];
    v10 = v0[4];
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read primary fabric with error %@", v12, 0x16u);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = v0[6];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_229823618(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_22A4DB91C();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v8 = sub_22A4DB74C();
  v3[23] = v8;
  v9 = *(v8 - 8);
  v3[24] = v9;
  v10 = *(v9 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v11 = sub_22A4DB7DC();
  v3[32] = v11;
  v12 = *(v11 - 8);
  v3[33] = v12;
  v13 = *(v12 + 64) + 15;
  v3[34] = swift_task_alloc();
  v14 = *(*(_s13PresenceStateOMa() - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229823864, 0, 0);
}

uint64_t sub_229823864()
{
  v89 = v0;
  [*(v0 + 136) swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v1 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserver);
  os_unfair_lock_lock(v1);
  sub_229564F88(&v1[2], v0 + 56, &qword_27D880BF0, &unk_22A585580);
  os_unfair_lock_unlock(v1);
  swift_unknownObjectRelease();
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    v2 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 304) = v2;
    v3 = *v2;

    return MEMORY[0x2822009F8](sub_229824184, v3, 0);
  }

  v4 = *(v0 + 128);
  sub_22953EAE4(v0 + 56, &qword_27D880BF0, &unk_22A585580);
  v5 = [v4 homeActivityStateManager];
  *(v0 + 312) = v5;
  if (v5)
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v10 = *(v0 + 136);
    v11 = [v5 currentHomeActivityStateDetails];
    *(v0 + 320) = v11;
    v12 = [objc_msgSend(v10 dataSource)];
    swift_unknownObjectRelease();
    sub_22A4DB70C();

    sub_22A4DB6DC();
    v13 = *(v9 + 8);
    *(v0 + 328) = v13;
    *(v0 + 336) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v6, v8);
    if ([v11 isHomeOccupied])
    {
      v14 = swift_task_alloc();
      *(v0 + 344) = v14;
      *v14 = v0;
      v14[1] = sub_2298247A0;
      v15 = *(v0 + 136);

      return sub_2297D39D4();
    }

    if ([*(v0 + 320) state] == 3 || objc_msgSend(*(v0 + 320), sel_state) == 5)
    {
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 320);
      v35 = *(v0 + 136);
      v36 = sub_22A4DD07C();
      __swift_project_value_buffer(v36, qword_27D8817F8);
      v37 = v35;
      v38 = v34;
      v39 = sub_22A4DD05C();
      v40 = sub_22A4DDCCC();

      if (os_log_type_enabled(v39, v40))
      {
        v86 = *(v0 + 320);
        v42 = *(v0 + 264);
        v41 = *(v0 + 272);
        v43 = *(v0 + 256);
        v44 = *(v0 + 136);
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v88 = v46;
        *v45 = 136315650;
        v47 = [v44 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
        v48 = sub_22A4DE5CC();
        v50 = v49;
        (*(v42 + 8))(v41, v43);
        v51 = sub_2295A3E30(v48, v50, &v88);

        *(v45 + 4) = v51;
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v88);
        *(v45 + 22) = 2080;
        [v86 state];
        v52 = HMHomeActivityStateToString();
        v53 = sub_22A4DD5EC();
        v55 = v54;

        v56 = sub_2295A3E30(v53, v55, &v88);

        *(v45 + 24) = v56;
        _os_log_impl(&dword_229538000, v39, v40, "[%s] %s overridden homeActivityState: %s because SleepAS is not supported for thermostat", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v46, -1, -1);
        MEMORY[0x22AAD4E50](v45, -1, -1);
      }

      v58 = *(v0 + 312);
      v57 = *(v0 + 320);
      v59 = *(v0 + 240);
      v60 = *(v0 + 184);
      v61 = *(v0 + 192);
      v62 = *(v0 + 120);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
      v64 = *(v63 + 48);
      v65 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];

      *v62 = v65;
      (*(v61 + 32))(&v62[v64], v59, v60);
    }

    else
    {
      v66 = *(v0 + 320);
      v67 = *(v0 + 240);
      v68 = *(v0 + 184);
      v69 = *(v0 + 192);
      v62 = *(v0 + 120);

      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
      v70 = *(v63 + 48);
      *v62 = v66;
      (*(v69 + 32))(&v62[v70], v67, v68);
    }

    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 136);
    v17 = sub_22A4DD07C();
    __swift_project_value_buffer(v17, qword_27D8817F8);
    v18 = v16;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 264);
      v21 = *(v0 + 272);
      v23 = *(v0 + 256);
      v24 = *(v0 + 136);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v88 = v26;
      *v25 = 136315394;
      v27 = [v24 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v28 = sub_22A4DE5CC();
      v30 = v29;
      (*(v22 + 8))(v21, v23);
      v31 = sub_2295A3E30(v28, v30, &v88);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v88);
      _os_log_impl(&dword_229538000, v19, v20, "[%s] %s Home Activity State Manager is nil", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    v32 = *(v0 + 120);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  }

  v72 = *(v0 + 288);
  v71 = *(v0 + 296);
  v74 = *(v0 + 272);
  v73 = *(v0 + 280);
  v76 = *(v0 + 240);
  v75 = *(v0 + 248);
  v78 = *(v0 + 224);
  v77 = *(v0 + 232);
  v80 = *(v0 + 208);
  v79 = *(v0 + 216);
  v83 = *(v0 + 200);
  v84 = *(v0 + 176);
  v85 = *(v0 + 168);
  v87 = *(v0 + 160);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_229824184()
{
  v1 = *(v0 + 296);
  v2 = **(v0 + 304);
  v3 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  swift_beginAccess();
  sub_229696298(v2 + v3, v1);

  return MEMORY[0x2822009F8](sub_22982421C, 0, 0);
}

uint64_t sub_22982421C()
{
  v61 = v0;
  v1 = v0[36];
  sub_229696298(v0[37], v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v3 = (*(*(v2 - 8) + 48))(v1, 2, v2);
  if (v3)
  {
    v4 = v3 != 1;
  }

  else
  {
    (*(v0[24] + 8))(v0[36], v0[23]);
    v4 = 2;
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v5 = v0[37];
  v6 = v0[35];
  v7 = v0[17];
  v8 = sub_22A4DD07C();
  __swift_project_value_buffer(v8, qword_27D8817F8);
  sub_229696298(v5, v6);
  v9 = v7;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[35];
  if (v12)
  {
    v58 = v11;
    v15 = v0[33];
    v14 = v0[34];
    v16 = v0[32];
    v17 = v0[17];
    v18 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60 = v56;
    *v18 = 136315906;
    v19 = [v17 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v20 = sub_22A4DE5CC();
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_2295A3E30(v20, v22, &v60);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v60);
    *(v18 + 22) = 2080;
    v24 = HMHomeActivityStateToString();
    v25 = sub_22A4DD5EC();
    v27 = v26;

    v28 = sub_2295A3E30(v25, v27, &v60);

    *(v18 + 24) = v28;
    *(v18 + 32) = 2080;
    v29 = sub_229698D5C();
    v31 = v30;
    sub_229839118(v13, _s13PresenceStateOMa);
    v32 = sub_2295A3E30(v29, v31, &v60);

    *(v18 + 34) = v32;
    _os_log_impl(&dword_229538000, v10, v58, "[%s] %s homeActivityState: %s from presenceState: %s", v18, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v56, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  else
  {

    sub_229839118(v13, _s13PresenceStateOMa);
  }

  v33 = v0[37];
  v34 = v0[31];
  v35 = v0[23];
  v36 = v0[24];
  v37 = v0[17];
  v38 = v0[15];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
  v40 = *(v39 + 48);
  *v38 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];
  v41 = [objc_msgSend(v37 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();

  sub_22A4DB6DC();
  (*(v36 + 8))(v34, v35);
  sub_229839118(v33, _s13PresenceStateOMa);
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v43 = v0[36];
  v42 = v0[37];
  v45 = v0[34];
  v44 = v0[35];
  v47 = v0[30];
  v46 = v0[31];
  v49 = v0[28];
  v48 = v0[29];
  v51 = v0[26];
  v50 = v0[27];
  v54 = v0[25];
  v55 = v0[22];
  v57 = v0[21];
  v59 = v0[20];

  v52 = v0[1];

  return v52();
}

uint64_t sub_2298247A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_2298256AC;
  }

  else
  {
    v5 = sub_2298248B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_2298248B4()
{
  v155 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 224);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = objc_allocWithZone(MEMORY[0x277CD1F18]);
  sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
  v6 = sub_22A4DD81C();
  v148 = [v5 initWithScheduleRules_];

  v7 = [objc_msgSend(v4 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();
  result = [v3 timeZone];
  if (!result)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v9 = result;
  v137 = *(v0 + 328);
  v140 = *(v0 + 336);
  v10 = *(v0 + 224);
  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v14 = *(v0 + 168);
  v13 = *(v0 + 176);
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);

  sub_22A4DB8FC();
  sub_22989B2B4(v10, v14, v13);
  v136 = *(v15 + 8);
  v136(v14, v16);
  v137(v10, v12);
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    sub_22953EAE4(*(v0 + 176), &unk_27D881AA0, &qword_22A57BC20);
    v17 = &selRef_credential;
    v18 = &selRef_credential;
  }

  else
  {
    v19 = *(v0 + 336);
    v20 = *(v0 + 248);
    v134 = *(v0 + 328);
    v135 = *(v0 + 240);
    v21 = *(v0 + 232);
    v22 = *(v0 + 208);
    v23 = *(v0 + 184);
    v24 = *(v0 + 136);
    v138 = *(*(v0 + 192) + 32);
    v141 = *(v0 + 216);
    v138(v21, *(v0 + 176), v23);
    v25 = [objc_msgSend(v24 dataSource)];
    swift_unknownObjectRelease();
    sub_22A4DB70C();

    v17 = &selRef_credential;
    sub_22A4DB6DC();
    v134(v20, v23);
    sub_229839520(&unk_27D87EBD0, MEMORY[0x277CC9578]);
    v26 = sub_22A4DD52C();
    v134(v135, v23);
    if (v26)
    {
      v27 = v21;
    }

    else
    {
      v27 = v22;
    }

    if (v26)
    {
      v28 = v22;
    }

    else
    {
      v28 = v21;
    }

    v134(v27, v23);
    v138(v141, v28, v23);
    v18 = &selRef_credential;
    v138(v135, v141, v23);
  }

  v29 = *(v0 + 200);
  v30 = *(v0 + 128);
  v31 = [objc_msgSend(*(v0 + 136) v17[248])];
  swift_unknownObjectRelease();
  sub_22A4DB70C();
  result = [v30 timeZone];
  if (!result)
  {
    goto LABEL_36;
  }

  v32 = result;
  v33 = *(v0 + 352);
  v34 = *(v0 + 360);
  v35 = *(v0 + 328);
  v142 = *(v0 + 336);
  v36 = *(v0 + 200);
  v37 = *(v0 + 184);
  v38 = *(v0 + 160);
  v39 = *(v0 + 144);

  sub_22A4DB8FC();
  v40 = [v148 scheduleRules];
  v41 = sub_22A4DD83C();

  v42 = swift_task_alloc();
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  LOBYTE(v34) = sub_2298906AC(sub_2298390F8, v42, v41);

  v35(v36, v37);
  v136(v38, v39);
  v43 = &OBJC_IVAR___HMCRedirectorChange__context;
  if (v34)
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 136);
    v45 = sub_22A4DD07C();
    __swift_project_value_buffer(v45, qword_27D8817F8);
    v46 = v44;
    v47 = v148;
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCCC();

    if (os_log_type_enabled(v48, v49))
    {
      v51 = *(v0 + 264);
      v50 = *(v0 + 272);
      v52 = *(v0 + 256);
      v53 = *(v0 + 136);
      v54 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v154[0] = v149;
      *v54 = 136315650;
      v55 = [v53 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v56 = sub_22A4DE5CC();
      v58 = v57;
      (*(v51 + 8))(v50, v52);
      v59 = sub_2295A3E30(v56, v58, v154);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, v154);
      *(v54 + 22) = 2112;
      *(v54 + 24) = v47;
      *v145 = v47;
      v60 = v47;
      _os_log_impl(&dword_229538000, v48, v49, "[%s] %s In Sleep with schedule: %@", v54, 0x20u);
      sub_22953EAE4(v145, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v145, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v149, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);
    }

    v61 = v47;
    v63 = *(v0 + 312);
    v62 = *(v0 + 320);
    v150 = *(v0 + 240);
    v64 = *(v0 + 184);
    v65 = *(v0 + 192);
    v66 = *(v0 + 120);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
    v68 = *(v67 + 48);
    v69 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];

    *v66 = v69;
    (*(v65 + 32))(&v66[v68], v150, v64);
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v70 = *(v0 + 136);
    v71 = sub_22A4DD07C();
    __swift_project_value_buffer(v71, qword_27D8817F8);
    v72 = v70;
    v73 = v148;
    v74 = sub_22A4DD05C();
    v75 = sub_22A4DDCCC();

    if (os_log_type_enabled(v74, v75))
    {
      v151 = v71;
      v77 = *(v0 + 264);
      v76 = *(v0 + 272);
      v78 = *(v0 + 256);
      v79 = *(v0 + 136);
      v80 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v154[0] = v146;
      *v80 = 136315650;
      v81 = [v79 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v82 = sub_22A4DE5CC();
      v84 = v83;
      (*(v77 + 8))(v76, v78);
      v71 = v151;
      v85 = sub_2295A3E30(v82, v84, v154);
      v43 = &OBJC_IVAR___HMCRedirectorChange__context;

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      *(v80 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, v154);
      *(v80 + 22) = 2112;
      *(v80 + 24) = v73;
      *v143 = v73;
      v86 = v73;
      _os_log_impl(&dword_229538000, v74, v75, "[%s] %s Not in Sleep with schedule: %@", v80, 0x20u);
      sub_22953EAE4(v143, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v143, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v146, -1, -1);
      MEMORY[0x22AAD4E50](v80, -1, -1);
    }

    else
    {
    }

    if ([*(v0 + 320) state] == 3 || objc_msgSend(*(v0 + 320), sel_state) == 5)
    {
      if (*(v43 + 339) != -1)
      {
        swift_once();
      }

      v87 = *(v0 + 320);
      v88 = *(v0 + 136);
      __swift_project_value_buffer(v71, qword_27D8817F8);
      v89 = v88;
      v90 = v87;
      v91 = sub_22A4DD05C();
      v92 = sub_22A4DDCCC();

      if (os_log_type_enabled(v91, v92))
      {
        v152 = *(v0 + 320);
        v94 = *(v0 + 264);
        v93 = *(v0 + 272);
        v95 = *(v0 + 256);
        v96 = *(v0 + 136);
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v154[0] = v98;
        *v97 = 136315650;
        v99 = [v96 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
        v100 = sub_22A4DE5CC();
        v102 = v101;
        (*(v94 + 8))(v93, v95);
        v103 = sub_2295A3E30(v100, v102, v154);

        *(v97 + 4) = v103;
        *(v97 + 12) = 2080;
        *(v97 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, v154);
        *(v97 + 22) = 2080;
        [v152 state];
        v104 = HMHomeActivityStateToString();
        v105 = sub_22A4DD5EC();
        v107 = v106;

        v108 = sub_2295A3E30(v105, v107, v154);

        *(v97 + 24) = v108;
        _os_log_impl(&dword_229538000, v91, v92, "[%s] %s overridden homeActivityState: %s because SleepAS is not supported for thermostat", v97, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v98, -1, -1);
        MEMORY[0x22AAD4E50](v97, -1, -1);
      }

      v110 = *(v0 + 312);
      v109 = *(v0 + 320);
      v111 = *(v0 + 240);
      v112 = *(v0 + 184);
      v113 = *(v0 + 192);
      v114 = *(v0 + 120);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
      v116 = *(v115 + 48);
      v117 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];

      *v114 = v117;
      (*(v113 + 32))(&v114[v116], v111, v112);
    }

    else
    {
      v118 = *(v0 + 320);
      v119 = *(v0 + 240);
      v120 = *(v0 + 184);
      v121 = *(v0 + 192);
      v114 = *(v0 + 120);

      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
      v122 = *(v115 + 48);
      *v114 = v118;
      (*(v121 + 32))(&v114[v122], v119, v120);
    }

    (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
  }

  v124 = *(v0 + 288);
  v123 = *(v0 + 296);
  v126 = *(v0 + 272);
  v125 = *(v0 + 280);
  v128 = *(v0 + 240);
  v127 = *(v0 + 248);
  v130 = *(v0 + 224);
  v129 = *(v0 + 232);
  v132 = *(v0 + 208);
  v131 = *(v0 + 216);
  v139 = *(v0 + 200);
  v144 = *(v0 + 176);
  v147 = *(v0 + 168);
  v153 = *(v0 + 160);

  v133 = *(v0 + 8);

  return v133();
}

uint64_t sub_2298256AC()
{
  v79 = v0;
  v1 = &OBJC_IVAR___HMCRedirectorChange__context;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 136);
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 360);
  if (v7)
  {
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 256);
    v12 = *(v0 + 136);
    v73 = *(v0 + 360);
    v13 = swift_slowAlloc();
    v75 = v3;
    v78 = swift_slowAlloc();
    v14 = v78;
    *v13 = 136315394;
    v15 = [v12 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v10 + 8))(v9, v11);
    v19 = sub_2295A3E30(v16, v18, &v78);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v78);
    _os_log_impl(&dword_229538000, v5, v6, "[%s] %s failed to read sleep schedule", v13, 0x16u);
    swift_arrayDestroy();
    v20 = v14;
    v3 = v75;
    MEMORY[0x22AAD4E50](v20, -1, -1);
    v21 = v13;
    v1 = &OBJC_IVAR___HMCRedirectorChange__context;
    MEMORY[0x22AAD4E50](v21, -1, -1);
    v22 = v73;
  }

  else
  {
    v22 = *(v0 + 360);
  }

  if ([*(v0 + 320) state] == 3 || objc_msgSend(*(v0 + 320), sel_state) == 5)
  {
    if (*(v1 + 339) != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 320);
    v24 = *(v0 + 136);
    __swift_project_value_buffer(v3, qword_27D8817F8);
    v25 = v24;
    v26 = v23;
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();

    if (os_log_type_enabled(v27, v28))
    {
      v76 = *(v0 + 320);
      v30 = *(v0 + 264);
      v29 = *(v0 + 272);
      v31 = *(v0 + 256);
      v32 = *(v0 + 136);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v78 = v34;
      *v33 = 136315650;
      v35 = [v32 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v36 = sub_22A4DE5CC();
      v38 = v37;
      (*(v30 + 8))(v29, v31);
      v39 = sub_2295A3E30(v36, v38, &v78);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v78);
      *(v33 + 22) = 2080;
      [v76 state];
      v40 = HMHomeActivityStateToString();
      v41 = sub_22A4DD5EC();
      v43 = v42;

      v44 = sub_2295A3E30(v41, v43, &v78);

      *(v33 + 24) = v44;
      _os_log_impl(&dword_229538000, v27, v28, "[%s] %s overridden homeActivityState: %s because SleepAS is not supported for thermostat", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    v46 = *(v0 + 312);
    v45 = *(v0 + 320);
    v47 = *(v0 + 240);
    v48 = *(v0 + 184);
    v49 = *(v0 + 192);
    v50 = *(v0 + 120);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
    v52 = *(v51 + 48);
    v53 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];

    *v50 = v53;
    (*(v49 + 32))(&v50[v52], v47, v48);
  }

  else
  {
    v54 = *(v0 + 320);
    v55 = *(v0 + 240);
    v56 = *(v0 + 184);
    v57 = *(v0 + 192);
    v50 = *(v0 + 120);

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
    v58 = *(v51 + 48);
    *v50 = v54;
    (*(v57 + 32))(&v50[v58], v55, v56);
  }

  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v60 = *(v0 + 288);
  v59 = *(v0 + 296);
  v62 = *(v0 + 272);
  v61 = *(v0 + 280);
  v64 = *(v0 + 240);
  v63 = *(v0 + 248);
  v66 = *(v0 + 224);
  v65 = *(v0 + 232);
  v68 = *(v0 + 208);
  v67 = *(v0 + 216);
  v71 = *(v0 + 200);
  v72 = *(v0 + 176);
  v74 = *(v0 + 168);
  v77 = *(v0 + 160);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_229825D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 536) = a4;
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v8 = sub_22A4DCD0C();
  *(v5 + 88) = v8;
  v9 = *(v8 - 8);
  *(v5 + 96) = v9;
  *(v5 + 104) = *(v9 + 64);
  *(v5 + 112) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B0, &qword_22A5854F8);
  *(v5 + 128) = v11;
  v12 = *(v11 - 8);
  *(v5 + 136) = v12;
  *(v5 + 144) = *(v12 + 64);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B8, &unk_22A585500) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v14 = sub_22A4DCA9C();
  *(v5 + 184) = v14;
  v15 = *(v14 - 8);
  *(v5 + 192) = v15;
  *(v5 + 200) = *(v15 + 64);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v16 = sub_22A4DB7DC();
  *(v5 + 232) = v16;
  v17 = *(v16 - 8);
  *(v5 + 240) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0) - 8);
  *(v5 + 256) = v19;
  *(v5 + 264) = *(v19 + 64);
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  v20 = *(MEMORY[0x277D17300] + 4);
  v21 = swift_task_alloc();
  *(v5 + 304) = v21;
  *v21 = v5;
  v21[1] = sub_2298260B4;

  return MEMORY[0x2821715D0](a2, a3);
}

uint64_t sub_2298260B4(char a1)
{
  v3 = *(*v2 + 304);
  v4 = *v2;
  *(v4 + 537) = a1;
  *(v4 + 312) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_229828DB4, 0, 0);
  }

  else
  {
    v5 = *(MEMORY[0x277D17360] + 4);
    v6 = swift_task_alloc();
    *(v4 + 320) = v6;
    *v6 = v4;
    v6[1] = sub_22982622C;
    v7 = *(v4 + 72);
    v8 = *(v4 + 64);

    return MEMORY[0x2821716A8](v8, v7);
  }
}

uint64_t sub_22982622C(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 320);
  v5 = *v3;
  v5[41] = a1;
  v5[42] = a2;
  v5[43] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_2298290F8, 0, 0);
  }

  else
  {
    v6 = *(MEMORY[0x277D17320] + 4);
    v7 = swift_task_alloc();
    v5[44] = v7;
    *v7 = v5;
    v7[1] = sub_2298263A8;
    v8 = v5[36];
    v9 = v5[8];
    v10 = v5[9];

    return MEMORY[0x282171618](v8, v9, v10);
  }
}

uint64_t sub_2298263A8()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_22982943C;
  }

  else
  {
    v3 = sub_2298264BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2298264BC()
{
  v1 = *(v0 + 537);
  sub_22957F2F8(*(v0 + 288), *(v0 + 296), &qword_27D8818C0, &unk_22A5820B0);
  if (v1)
  {
    v2 = *(MEMORY[0x277D17268] + 4);
    v3 = swift_task_alloc();
    *(v0 + 408) = v3;
    *v3 = v0;
    v3[1] = sub_229826DB0;
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);

    return MEMORY[0x282171560](v5, v4);
  }

  else if (*(v0 + 336) >> 60 == 15)
  {
    v6 = *(v0 + 280);
    sub_229564F88(*(v0 + 296), v6, &qword_27D8818C0, &unk_22A5820B0);
    v7 = sub_22A4DCA3C();
    v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
    sub_22953EAE4(v6, &qword_27D8818C0, &unk_22A5820B0);
    if (v8 == 1)
    {
      v9 = swift_task_alloc();
      *(v0 + 400) = v9;
      *v9 = v0;
      v9[1] = sub_229826B84;
      v10 = *(v0 + 80);
      v11 = *(v0 + 536);

      return sub_22982AFA8(v11);
    }

    else
    {
      v16 = *(MEMORY[0x277D17380] + 4);
      v17 = swift_task_alloc();
      *(v0 + 384) = v17;
      *v17 = v0;
      v17[1] = sub_229826A10;
      v19 = *(v0 + 64);
      v18 = *(v0 + 72);

      return MEMORY[0x2821716F0](v19, v18);
    }
  }

  else
  {
    v12 = *(MEMORY[0x277D17368] + 4);
    v13 = swift_task_alloc();
    *(v0 + 368) = v13;
    *v13 = v0;
    v13[1] = sub_229826768;
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);

    return MEMORY[0x2821716B8](v15, v14);
  }
}

uint64_t sub_229826768()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_22982979C;
  }

  else
  {
    v3 = sub_22982687C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22982687C()
{
  v1 = *(v0 + 280);
  sub_229564F88(*(v0 + 296), v1, &qword_27D8818C0, &unk_22A5820B0);
  v2 = sub_22A4DCA3C();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_22953EAE4(v1, &qword_27D8818C0, &unk_22A5820B0);
  if (v3 == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 400) = v4;
    *v4 = v0;
    v4[1] = sub_229826B84;
    v5 = *(v0 + 80);
    v6 = *(v0 + 536);

    return sub_22982AFA8(v6);
  }

  else
  {
    v8 = *(MEMORY[0x277D17380] + 4);
    v9 = swift_task_alloc();
    *(v0 + 384) = v9;
    *v9 = v0;
    v9[1] = sub_229826A10;
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);

    return MEMORY[0x2821716F0](v11, v10);
  }
}

uint64_t sub_229826A10()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  *(v3 + 392) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229829A88, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v3 + 400) = v4;
    *v4 = v3;
    v4[1] = sub_229826B84;
    v5 = *(v3 + 80);
    v6 = *(v3 + 536);

    return sub_22982AFA8(v6);
  }
}

uint64_t sub_229826B84()
{
  v1 = *(*v0 + 400);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229826C80, 0, 0);
}

uint64_t sub_229826C80()
{
  v1 = v0[37];
  sub_229590D18(v0[41], v0[42]);
  sub_22953EAE4(v1, &qword_27D8818C0, &unk_22A5820B0);
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[26];
  v11 = v0[21];
  v10 = v0[22];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[15];
  v17 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_229826DB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v7 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v5 = sub_229829D74;
  }

  else
  {
    v5 = sub_229826EC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229826EC4()
{
  v31 = v0;
  v1 = v0[52];
  v2 = qword_27D87BA98;

  if (v2 != -1)
  {
    swift_once();
    v27 = v0[52];
  }

  v3 = v0[10];
  v4 = sub_22A4DD07C();
  v0[54] = __swift_project_value_buffer(v4, qword_27D8817F8);
  v5 = v3;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();

  if (os_log_type_enabled(v6, v7))
  {
    v29 = v0[52];
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    v11 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315394;
    v14 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v9 + 8))(v8, v10);
    v18 = sub_2295A3E30(v15, v17, &v30);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = sub_22A4DC85C();
    v20 = MEMORY[0x22AAD0A20](v29, v19);
    v22 = sub_2295A3E30(v20, v21, &v30);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] presetStructs: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v23 = *(MEMORY[0x277D172B0] + 4);
  v24 = swift_task_alloc();
  v0[55] = v24;
  *v24 = v0;
  v24[1] = sub_229827194;
  v26 = v0[8];
  v25 = v0[9];

  return MEMORY[0x282171590](v26, v25);
}

uint64_t sub_229827194(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v8 = *v2;
  v3[56] = a1;
  v3[57] = v1;

  if (v1)
  {
    v5 = v3[52];

    v6 = sub_22982A108;
  }

  else
  {
    v6 = sub_2298272B0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2298272B0()
{
  v28 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 80);

  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v26 = *(v0 + 448);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 232);
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v27);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = sub_22A4DC8AC();
    v18 = MEMORY[0x22AAD0A20](v26, v17);
    v20 = sub_2295A3E30(v18, v19, &v27);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_229538000, v4, v5, "[%s] presetTypeStructs: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v21 = *(MEMORY[0x277D17308] + 4);
  v22 = swift_task_alloc();
  *(v0 + 464) = v22;
  *v22 = v0;
  v22[1] = sub_229827534;
  v24 = *(v0 + 64);
  v23 = *(v0 + 72);

  return MEMORY[0x2821715E0](v24, v23);
}

uint64_t sub_229827534(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 464);
  v9 = *v2;
  v3[59] = a1;
  v3[60] = v1;

  if (v1)
  {
    v5 = v3[56];
    v6 = v3[52];

    v7 = sub_22982A458;
  }

  else
  {
    v7 = sub_22982765C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22982765C()
{
  v84 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 432);
  v3 = *(v0 + 80);

  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v80 = *(v0 + 472);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 232);
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v83 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v83);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = sub_22A4DC96C();
    v18 = MEMORY[0x22AAD0A20](v80, v17);
    v20 = sub_2295A3E30(v18, v19, &v83);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_229538000, v4, v5, "[%s] presetsAdditionalInfo: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v21 = *(v0 + 472);
  v22 = *(v0 + 448);
  v23 = *(v0 + 416);
  v24 = *(v0 + 184);
  v25 = *(v0 + 192);
  v26 = *(v0 + 176);
  v27 = *(v0 + 56);

  sub_22982B6F0(v27, v23, v22, v21, v26);
  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    v28 = *(v0 + 432);
    v29 = *(v0 + 416);
    v30 = *(v0 + 176);
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    sub_22953EAE4(v30, &qword_27D8818B8, &unk_22A585500);
    v33 = v31;
    v34 = v32;
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCEC();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 296);
    if (v37)
    {
      v78 = *(v0 + 336);
      v81 = *(v0 + 296);
      v40 = *(v0 + 240);
      v39 = *(v0 + 248);
      v41 = *(v0 + 232);
      v42 = *(v0 + 80);
      v43 = *(v0 + 56);
      v76 = *(v0 + 328);
      v44 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v83 = v74;
      *v44 = 136315394;
      v45 = [v42 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v46 = sub_22A4DE5CC();
      v48 = v47;
      (*(v40 + 8))(v39, v41);
      v49 = sub_2295A3E30(v46, v48, &v83);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2112;
      *(v44 + 14) = v43;
      *v73 = v43;
      v50 = v43;
      _os_log_impl(&dword_229538000, v35, v36, "[%s] Failed to create AppleSetCurrentSuggestedPresetCommand from %@", v44, 0x16u);
      sub_22953EAE4(v73, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v73, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x22AAD4E50](v74, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);

      sub_229590D18(v76, v78);
      v51 = v81;
    }

    else
    {
      sub_229590D18(*(v0 + 328), *(v0 + 336));

      v51 = v38;
    }

    sub_22953EAE4(v51, &qword_27D8818C0, &unk_22A5820B0);
    v62 = *(v0 + 288);
    v61 = *(v0 + 296);
    v64 = *(v0 + 272);
    v63 = *(v0 + 280);
    v65 = *(v0 + 248);
    v67 = *(v0 + 216);
    v66 = *(v0 + 224);
    v68 = *(v0 + 208);
    v70 = *(v0 + 168);
    v69 = *(v0 + 176);
    v75 = *(v0 + 160);
    v77 = *(v0 + 152);
    v79 = *(v0 + 120);
    v82 = *(v0 + 112);

    v71 = *(v0 + 8);

    return v71();
  }

  else
  {
    v52 = *(v0 + 224);
    v53 = *(v0 + 184);
    v54 = *(v0 + 192);
    v55 = *(v0 + 176);
    v56 = *(v54 + 32);
    *(v0 + 488) = v56;
    *(v0 + 496) = (v54 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v56(v52, v55, v53);
    v57 = *(MEMORY[0x277D17310] + 4);
    v58 = swift_task_alloc();
    *(v0 + 504) = v58;
    *v58 = v0;
    v58[1] = sub_229827C80;
    v60 = *(v0 + 64);
    v59 = *(v0 + 72);

    return MEMORY[0x2821715F0](v60, v59);
  }
}

uint64_t sub_229827C80(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v7 = *(v4 + 416);

    v8 = sub_22982A7A8;
  }

  else
  {
    *(v4 + 538) = a1 & 1;
    v8 = sub_229827DB4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_229827DB4()
{
  v32 = v0;
  if (*(v0 + 538))
  {
    v1 = *(v0 + 432);
    v2 = *(v0 + 80);
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCCC();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v7 = *(v0 + 232);
      v8 = *(v0 + 80);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136315138;
      v11 = [v8 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v12 = sub_22A4DE5CC();
      v14 = v13;
      (*(v6 + 8))(v5, v7);
      v15 = sub_2295A3E30(v12, v14, &v31);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_229538000, v3, v4, "[%s] Not suggesting predicted preset because ignorePredictedPresets is true", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    v16 = *(v0 + 168);
    v17 = sub_22A4DCB1C();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

  else
  {
    v18 = *(v0 + 416);
    v19 = *(v0 + 168);
    v20 = *(v0 + 56);

    sub_22982C2F8(v20, v18, v19);
  }

  v21 = swift_task_alloc();
  *(v0 + 520) = v21;
  *v21 = v0;
  v21[1] = sub_229828058;
  v22 = *(v0 + 328);
  v23 = *(v0 + 336);
  v24 = *(v0 + 296);
  v25 = *(v0 + 224);
  v26 = *(v0 + 168);
  v27 = *(v0 + 72);
  v28 = *(v0 + 80);
  v29 = *(v0 + 64);

  return sub_22982C848(v29, v27, v25, v26, v22, v23, v24);
}

uint64_t sub_229828058(char a1)
{
  v2 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 539) = a1;

  return MEMORY[0x2822009F8](sub_229828158, 0, 0);
}

uint64_t sub_229828158()
{
  v134 = v0;
  v1 = *(v0 + 432);
  if (*(v0 + 539) == 1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 80);
    v4 = v2;
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 240);
      v7 = *(v0 + 248);
      v9 = *(v0 + 232);
      v10 = *(v0 + 80);
      v129 = *(v0 + 56);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v133 = v12;
      *v11 = 136315394;
      v13 = [v10 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v14 = sub_22A4DE5CC();
      v16 = v15;
      (*(v8 + 8))(v7, v9);
      v17 = sub_2295A3E30(v14, v16, &v133);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2080;
      [v129 state];
      v18 = HMHomeActivityStateToString();
      v19 = sub_22A4DD5EC();
      v21 = v20;

      v22 = sub_2295A3E30(v19, v21, &v133);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_229538000, v5, v6, "[%s] Setting suggested preset for state %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v12, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    v123 = *(v0 + 488);
    v126 = *(v0 + 496);
    v105 = *(v0 + 296);
    v130 = *(v0 + 272);
    v112 = *(v0 + 256);
    v114 = *(v0 + 264);
    v23 = *(v0 + 216);
    v103 = v23;
    v24 = *(v0 + 192);
    v25 = *(v0 + 184);
    v101 = v25;
    v26 = *(v0 + 160);
    v99 = *(v0 + 224);
    v100 = *(v0 + 168);
    v108 = *(v0 + 200);
    v110 = *(v0 + 144);
    v106 = *(v0 + 136);
    v27 = *(v0 + 112);
    v28 = *(v0 + 120);
    v120 = v28;
    v29 = *(v0 + 96);
    v102 = *(v0 + 104);
    v30 = *(v0 + 88);
    v104 = v30;
    v118 = *(v0 + 80);
    v116 = *(v0 + 536);
    v31 = *(v0 + 64);
    v98 = *(v0 + 72);
    v32 = sub_22A4DD9DC();
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
    sub_22957F1C4(v31, v0 + 16);
    (*(v29 + 16))(v27, v98, v30);
    (*(v24 + 16))(v23, v99, v25);
    sub_229564F88(v100, v26, &qword_27D8818B0, &qword_22A5854F8);
    sub_229564F88(v105, v130, &qword_27D8818C0, &unk_22A5820B0);
    v33 = (*(v29 + 80) + 72) & ~*(v29 + 80);
    v34 = (v102 + *(v24 + 80) + v33) & ~*(v24 + 80);
    v35 = (v34 + v108) & 0xFFFFFFFFFFFFFFF8;
    v36 = (*(v106 + 80) + v35 + 16) & ~*(v106 + 80);
    v37 = (v110 + *(v112 + 80) + v36) & ~*(v112 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    sub_229557188((v0 + 16), v38 + 32);
    (*(v29 + 32))(v38 + v33, v27, v104);
    v123(v38 + v34, v103, v101);
    *(v38 + v34 + v108) = v116;
    *(v38 + v35 + 8) = v118;
    sub_22957F2F8(v26, v38 + v36, &qword_27D8818B0, &qword_22A5854F8);
    sub_22957F2F8(v130, v38 + v37, &qword_27D8818C0, &unk_22A5820B0);
    v39 = v118;
    sub_22957F3C0(0, 0, v120, &unk_22A585528, v38);

    v40 = swift_task_alloc();
    *(v0 + 528) = v40;
    *v40 = v0;
    v40[1] = sub_229828B30;
    v41 = *(v0 + 416);
    v42 = *(v0 + 224);
    v43 = *(v0 + 168);
    v44 = *(v0 + 80);
    v45 = *(v0 + 536);

    return sub_229830A04(v42, v43, v41, v45);
  }

  else
  {
    v47 = *(v0 + 416);
    v48 = *(v0 + 224);
    v49 = *(v0 + 208);
    v50 = *(v0 + 184);
    v51 = *(v0 + 192);
    v52 = *(v0 + 168);
    v53 = *(v0 + 152);
    v54 = *(v0 + 80);

    (*(v51 + 16))(v49, v48, v50);
    sub_229564F88(v52, v53, &qword_27D8818B0, &qword_22A5854F8);
    v55 = v54;
    v56 = sub_22A4DD05C();
    v57 = sub_22A4DDCCC();

    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 336);
    v127 = *(v0 + 328);
    v131 = *(v0 + 296);
    if (v58)
    {
      v61 = *(v0 + 240);
      v60 = *(v0 + 248);
      v119 = *(v0 + 336);
      v62 = *(v0 + 232);
      v121 = *(v0 + 224);
      v107 = *(v0 + 208);
      v63 = *(v0 + 184);
      v124 = *(v0 + 192);
      v117 = *(v0 + 168);
      v109 = *(v0 + 152);
      v111 = *(v0 + 160);
      v113 = *(v0 + 128);
      v64 = *(v0 + 80);
      v65 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v133 = v115;
      *v65 = 136315650;
      v66 = [v64 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v67 = sub_22A4DE5CC();
      v69 = v68;
      (*(v61 + 8))(v60, v62);
      v70 = sub_2295A3E30(v67, v69, &v133);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      sub_229839520(&qword_27D8818C8, MEMORY[0x277D17350]);
      v71 = sub_22A4DE5CC();
      v73 = v72;
      v74 = *(v124 + 8);
      v74(v107, v63);
      v75 = sub_2295A3E30(v71, v73, &v133);

      *(v65 + 14) = v75;
      *(v65 + 22) = 2080;
      sub_229564F88(v109, v111, &qword_27D8818B0, &qword_22A5854F8);
      v76 = sub_22A4DD64C();
      v78 = v77;
      sub_22953EAE4(v109, &qword_27D8818B0, &qword_22A5854F8);
      v79 = sub_2295A3E30(v76, v78, &v133);

      *(v65 + 24) = v79;
      _os_log_impl(&dword_229538000, v56, v57, "[%s] No update needed: currentSuggestedPreset: %s, predictedSuggestedPreset: %s", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v115, -1, -1);
      MEMORY[0x22AAD4E50](v65, -1, -1);

      sub_229590D18(v127, v119);
      sub_22953EAE4(v117, &qword_27D8818B0, &qword_22A5854F8);
      v74(v121, v63);
    }

    else
    {
      v80 = *(v0 + 224);
      v81 = *(v0 + 208);
      v82 = *(v0 + 184);
      v83 = *(v0 + 192);
      v84 = *(v0 + 168);
      v85 = *(v0 + 152);

      sub_229590D18(v127, v59);
      sub_22953EAE4(v85, &qword_27D8818B0, &qword_22A5854F8);
      v86 = *(v83 + 8);
      v86(v81, v82);
      sub_22953EAE4(v84, &qword_27D8818B0, &qword_22A5854F8);
      v86(v80, v82);
    }

    sub_22953EAE4(v131, &qword_27D8818C0, &unk_22A5820B0);
    v88 = *(v0 + 288);
    v87 = *(v0 + 296);
    v90 = *(v0 + 272);
    v89 = *(v0 + 280);
    v91 = *(v0 + 248);
    v93 = *(v0 + 216);
    v92 = *(v0 + 224);
    v94 = *(v0 + 208);
    v96 = *(v0 + 168);
    v95 = *(v0 + 176);
    v122 = *(v0 + 160);
    v125 = *(v0 + 152);
    v128 = *(v0 + 120);
    v132 = *(v0 + 112);

    v97 = *(v0 + 8);

    return v97();
  }
}

uint64_t sub_229828B30()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 416);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229828C48, 0, 0);
}

uint64_t sub_229828C48()
{
  v1 = v0[37];
  v2 = v0[28];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  sub_229590D18(v0[41], v0[42]);
  sub_22953EAE4(v5, &qword_27D8818B0, &qword_22A5854F8);
  (*(v4 + 8))(v2, v3);
  sub_22953EAE4(v1, &qword_27D8818C0, &unk_22A5820B0);
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[31];
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[26];
  v15 = v0[21];
  v14 = v0[22];
  v18 = v0[20];
  v19 = v0[19];
  v20 = v0[15];
  v21 = v0[14];

  v16 = v0[1];

  return v16();
}

uint64_t sub_229828DB4()
{
  v41 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = v0[10];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[39];
  if (v8)
  {
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v14 = 136315394;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v40);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v36 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read valenciaStateEnabled: %@", v14, 0x16u);
    sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v23 = v0[36];
  v22 = v0[37];
  v25 = v0[34];
  v24 = v0[35];
  v26 = v0[31];
  v28 = v0[27];
  v27 = v0[28];
  v29 = v0[26];
  v31 = v0[21];
  v30 = v0[22];
  v34 = v0[20];
  v35 = v0[19];
  v37 = v0[15];
  v39 = v0[14];

  v32 = v0[1];

  return v32();
}

uint64_t sub_2298290F8()
{
  v41 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = v0[10];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[43];
  if (v8)
  {
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v14 = 136315394;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v40);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v36 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read currentSuggestedPresetHandle: %@", v14, 0x16u);
    sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v23 = v0[36];
  v22 = v0[37];
  v25 = v0[34];
  v24 = v0[35];
  v26 = v0[31];
  v28 = v0[27];
  v27 = v0[28];
  v29 = v0[26];
  v31 = v0[21];
  v30 = v0[22];
  v34 = v0[20];
  v35 = v0[19];
  v37 = v0[15];
  v39 = v0[14];

  v32 = v0[1];

  return v32();
}

uint64_t sub_22982943C()
{
  v44 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = v0[10];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[45];
  v10 = v0[41];
  if (v8)
  {
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];
    v14 = v0[10];
    v39 = v0[41];
    v41 = v0[42];
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v15 = 136315394;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_2295A3E30(v17, v19, &v43);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v35 = v22;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read predictedSuggestedPreset: %@", v15, 0x16u);
    sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    sub_229590D18(v39, v41);
  }

  else
  {
    sub_229590D18(v0[41], v0[42]);
  }

  v24 = v0[36];
  v23 = v0[37];
  v26 = v0[34];
  v25 = v0[35];
  v27 = v0[31];
  v29 = v0[27];
  v28 = v0[28];
  v30 = v0[26];
  v32 = v0[21];
  v31 = v0[22];
  v36 = v0[20];
  v38 = v0[19];
  v40 = v0[15];
  v42 = v0[14];

  v33 = v0[1];

  return v33();
}

uint64_t sub_22982979C()
{
  v27 = v0;
  v1 = *(v0 + 376);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v10 = *(v0 + 232);
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v26);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v24 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to clear suggested preset or predicted preset: %@", v12, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = swift_task_alloc();
  *(v0 + 400) = v20;
  *v20 = v0;
  v20[1] = sub_229826B84;
  v21 = *(v0 + 80);
  v22 = *(v0 + 536);

  return sub_22982AFA8(v22);
}

uint64_t sub_229829A88()
{
  v27 = v0;
  v1 = *(v0 + 392);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v10 = *(v0 + 232);
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v26);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v24 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to clear suggested preset or predicted preset: %@", v12, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = swift_task_alloc();
  *(v0 + 400) = v20;
  *v20 = v0;
  v20[1] = sub_229826B84;
  v21 = *(v0 + 80);
  v22 = *(v0 + 536);

  return sub_22982AFA8(v22);
}

uint64_t sub_229829D74()
{
  v46 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = v0[10];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[53];
  v10 = v0[37];
  if (v8)
  {
    v41 = v0[42];
    v43 = v0[37];
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];
    v14 = v0[10];
    v39 = v0[41];
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v15 = 136315394;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_2295A3E30(v17, v19, &v45);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v36 = v22;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read presets: %@", v15, 0x16u);
    sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    sub_229590D18(v39, v41);
    v23 = v43;
  }

  else
  {
    sub_229590D18(v0[41], v0[42]);

    v23 = v10;
  }

  sub_22953EAE4(v23, &qword_27D8818C0, &unk_22A5820B0);
  v25 = v0[36];
  v24 = v0[37];
  v27 = v0[34];
  v26 = v0[35];
  v28 = v0[31];
  v30 = v0[27];
  v29 = v0[28];
  v31 = v0[26];
  v33 = v0[21];
  v32 = v0[22];
  v38 = v0[20];
  v40 = v0[19];
  v42 = v0[15];
  v44 = v0[14];

  v34 = v0[1];

  return v34();
}

uint64_t sub_22982A108()
{
  v45 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 432);
  v3 = *(v0 + 80);
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 456);
  v9 = *(v0 + 296);
  if (v7)
  {
    v40 = *(v0 + 336);
    v42 = *(v0 + 296);
    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = *(v0 + 232);
    v13 = *(v0 + 80);
    v38 = *(v0 + 328);
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v14 = 136315394;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v44);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v35 = v21;
    _os_log_impl(&dword_229538000, v5, v6, "[%s] Failed to read presetTypes: %@", v14, 0x16u);
    sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    sub_229590D18(v38, v40);
    v22 = v42;
  }

  else
  {
    sub_229590D18(*(v0 + 328), *(v0 + 336));

    v22 = v9;
  }

  sub_22953EAE4(v22, &qword_27D8818C0, &unk_22A5820B0);
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  v26 = *(v0 + 272);
  v25 = *(v0 + 280);
  v27 = *(v0 + 248);
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v30 = *(v0 + 208);
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);
  v37 = *(v0 + 160);
  v39 = *(v0 + 152);
  v41 = *(v0 + 120);
  v43 = *(v0 + 112);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22982A458()
{
  v45 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 432);
  v3 = *(v0 + 80);
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 480);
  v9 = *(v0 + 296);
  if (v7)
  {
    v40 = *(v0 + 336);
    v42 = *(v0 + 296);
    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = *(v0 + 232);
    v13 = *(v0 + 80);
    v38 = *(v0 + 328);
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v14 = 136315394;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v44);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v35 = v21;
    _os_log_impl(&dword_229538000, v5, v6, "[%s] Failed to read applePresetsAdditionalInfo: %@", v14, 0x16u);
    sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    sub_229590D18(v38, v40);
    v22 = v42;
  }

  else
  {
    sub_229590D18(*(v0 + 328), *(v0 + 336));

    v22 = v9;
  }

  sub_22953EAE4(v22, &qword_27D8818C0, &unk_22A5820B0);
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  v26 = *(v0 + 272);
  v25 = *(v0 + 280);
  v27 = *(v0 + 248);
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v30 = *(v0 + 208);
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);
  v37 = *(v0 + 160);
  v39 = *(v0 + 152);
  v41 = *(v0 + 120);
  v43 = *(v0 + 112);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22982A7A8()
{
  v53 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 432);
  v3 = *(v0 + 80);
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 512);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v11 = *(v0 + 296);
  if (v7)
  {
    v43 = *(v0 + 328);
    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    v14 = *(v0 + 232);
    v44 = *(v0 + 192);
    v46 = *(v0 + 184);
    v48 = *(v0 + 224);
    v50 = *(v0 + 296);
    v15 = *(v0 + 80);
    v42 = *(v0 + 336);
    v16 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v52 = v41;
    *v16 = 136315394;
    v17 = [v15 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v18 = sub_22A4DE5CC();
    v20 = v19;
    (*(v13 + 8))(v12, v14);
    v21 = sub_2295A3E30(v18, v20, &v52);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v8;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v40 = v23;
    _os_log_impl(&dword_229538000, v5, v6, "[%s] Failed to read appleIgnorePredictedPresets: %@", v16, 0x16u);
    sub_22953EAE4(v40, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AAD4E50](v41, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);

    sub_229590D18(v43, v42);
    (*(v44 + 8))(v48, v46);
    v24 = v50;
  }

  else
  {
    v25 = *(v0 + 224);
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);

    sub_229590D18(v10, v9);
    (*(v27 + 8))(v25, v26);
    v24 = v11;
  }

  sub_22953EAE4(v24, &qword_27D8818C0, &unk_22A5820B0);
  v29 = *(v0 + 288);
  v28 = *(v0 + 296);
  v31 = *(v0 + 272);
  v30 = *(v0 + 280);
  v32 = *(v0 + 248);
  v34 = *(v0 + 216);
  v33 = *(v0 + 224);
  v35 = *(v0 + 208);
  v37 = *(v0 + 168);
  v36 = *(v0 + 176);
  v45 = *(v0 + 160);
  v47 = *(v0 + 152);
  v49 = *(v0 + 120);
  v51 = *(v0 + 112);

  v38 = *(v0 + 8);

  return v38();
}

void sub_22982AB44()
{
  v1 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_msgSend(v0 dataSource)];
  swift_unknownObjectRelease();
  sub_2298321A0();
  v8 = sub_22A4DD5AC();

  v9 = sub_22A4DB6AC();
  v33[0] = 0;
  v10 = [v7 scheduleTaskWithIdentifier:v8 fireDate:v9 onObserver:v1 selector:sel_handleValenciaTimerFiredWithNotification_ error:v33];

  v11 = v33[0];
  if (v10)
  {
    v12 = *MEMORY[0x277D85DE8];

    v13 = v11;
  }

  else
  {
    v32 = v33[0];
    v14 = v33[0];
    v15 = sub_22A4DB3EC();

    swift_willThrow();
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v16 = sub_22A4DD07C();
    __swift_project_value_buffer(v16, qword_27D8817F8);
    v17 = v1;
    v18 = v15;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v21 = 136315650;
      v23 = [v17 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v24 = sub_22A4DE5CC();
      v26 = v25;
      (*(v3 + 8))(v6, v2);
      v27 = sub_2295A3E30(v24, v26, v33);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A597F30, v33);
      *(v21 + 22) = 2112;
      v28 = v15;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v29;
      *v22 = v29;
      _os_log_impl(&dword_229538000, v19, v20, "[%s] %s Failed schedule suggested preset refresh timer: %@", v21, 0x20u);
      sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v22, -1, -1);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    else
    {
    }

    v31 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_22982AFA8(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 128) = a1;
  *(v2 + 64) = swift_getObjectType();
  v3 = sub_22A4DB7DC();
  *(v2 + 72) = v3;
  v4 = *(v3 - 8);
  *(v2 + 80) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v6 = type metadata accessor for ThermostatSuggestedPreset.Current(0);
  *(v2 + 96) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22982B0A8, 0, 0);
}

uint64_t sub_22982B0A8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v4 = *(v0 + 128);
  v5 = [objc_msgSend(v3 dataSource)];
  swift_unknownObjectRelease();
  v6 = &v1[*(v2 + 24)];
  sub_22A4DB70C();

  *v1 = 0;
  v1[1] = v4;
  v7 = [v3 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v8 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v8);
  sub_22978620C(&v8[2], v3, (v0 + 16));
  os_unfair_lock_unlock(v8);
  swift_unknownObjectRelease();
  v9 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_22982B264;
  v11 = *(v0 + 104);

  return sub_2296C7160(v11);
}

uint64_t sub_22982B264()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_22982B408;
  }

  else
  {
    v3 = sub_22982B378;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22982B378()
{
  sub_229839118(v0[13], type metadata accessor for ThermostatSuggestedPreset.Current);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22982B408()
{
  v29 = v0;
  sub_229839118(v0[13], type metadata accessor for ThermostatSuggestedPreset.Current);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[7];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  if (v8)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 136315394;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v28);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v26 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed unset thermostat suggested preset with error %@", v14, 0x16u);
    sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v22 = v0[13];
  v23 = v0[11];

  v24 = v0[1];

  return v24();
}

uint64_t sub_22982B6F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v106 = a4;
  v107 = a3;
  v105 = a2;
  v103 = a5;
  v6 = sub_22A4DC8AC();
  v7 = *(v6 - 8);
  v101 = v6;
  v102 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v100 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v92 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v93 = &v86 - v15;
  MEMORY[0x28223BE20](v14);
  v95 = (&v86 - v16);
  v96 = sub_22A4DC85C();
  v98 = *(v96 - 8);
  v17 = v98[8];
  v18 = MEMORY[0x28223BE20](v96);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v94 = &v86 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881900, &unk_22A576E70);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v86 - v26;
  v28 = sub_22A4DC8EC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v99 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v97 = &v86 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v86 - v35;
  v37 = sub_22A4DCA9C();
  v104 = *(v37 - 8);
  v38 = *(v104 + 64);
  MEMORY[0x28223BE20](v37);
  v91 = &v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229837B28([a1 state], v27);
  v40 = *(v29 + 48);
  if (v40(v27, 1, v28) == 1)
  {

    sub_22953EAE4(v27, &qword_27D881900, &unk_22A576E70);
    v41 = v103;
    return (*(v104 + 56))(v41, 1, 1, v37);
  }

  v87 = a1;
  v88 = v37;
  v42 = *(v29 + 32);
  v42(v36, v27, v28);
  v43 = HMHomeActivityStateToTopLevelState();
  sub_229837B28(v43, v25);
  if (v40(v25, 1, v28) == 1)
  {

    sub_22953EAE4(v25, &qword_27D881900, &unk_22A576E70);
    (*(v29 + 8))(v36, v28);
LABEL_7:
    v41 = v103;
    v37 = v88;
    return (*(v104 + 56))(v41, 1, 1, v37);
  }

  v86 = v29;
  v89 = v36;
  v44 = v97;
  v45 = (v42)(v97, v25, v28);
  MEMORY[0x28223BE20](v45);
  *(&v86 - 2) = v44;
  v46 = v95;
  v47 = v105;
  sub_229685338(sub_229839A18, v105, v95);
  v48 = v98;
  v49 = v98[6];
  v50 = v96;
  v51 = v28;
  if (v49(v46, 1, v96) == 1)
  {

    sub_22953EAE4(v46, &unk_27D8818D0, &qword_22A57A448);
    v52 = *(v86 + 8);
    v52(v44, v28);
    v52(v89, v28);
    goto LABEL_7;
  }

  v95 = v48[4];
  v54 = (v95)(v94, v46, v50);
  MEMORY[0x28223BE20](v54);
  *(&v86 - 2) = v89;
  v55 = v93;
  sub_229685338(sub_2298390D8, v47, v93);

  v56 = v55;
  v57 = v55;
  v58 = v92;
  sub_229564F88(v57, v92, &unk_27D8818D0, &qword_22A57A448);
  v59 = v49(v58, 1, v50);
  v60 = v106;
  if (v59 == 1)
  {

    sub_22953EAE4(v58, &unk_27D8818D0, &qword_22A57A448);
    v61 = v104;
    v62 = v87;
    v63 = v98;
    goto LABEL_26;
  }

  v64 = v90;
  (v95)(v90, v58, v50);
  v65 = sub_229837E30(v60);

  v66 = v107;
  if ((v65 & 1) != 0 && (v106 = *(v107 + 16)) != 0)
  {
    v56 = 0;
    v105 = v107 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v95 = (v102 + 16);
    v50 = (v86 + 8);
    v67 = (v102 + 8);
    v92 = (v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v56 < *(v66 + 16))
    {
      v64 = v101;
      v68 = v100;
      (*(v102 + 16))(v100, v105 + *(v102 + 72) * v56, v101);
      v69 = v99;
      sub_22A4DC89C();
      sub_229839520(&qword_27D87C398, MEMORY[0x277D172F0]);
      sub_22A4DD7DC();
      sub_22A4DD7DC();
      v70 = *v50;
      (*v50)(v69, v51);
      if (v109 == v108)
      {
        v71 = sub_22A4DC88C();
        (*v67)(v68, v64);
        if (v71)
        {

          v72 = v90;
          sub_22A4DC82C();
          v73 = v87;
          [v87 isHoldActive];
          v74 = v91;
          sub_22A4DCA8C();

          v75 = v98[1];
          v76 = v96;
          v75(v72, v96);
          sub_22953EAE4(v93, &unk_27D8818D0, &qword_22A57A448);
          v75(v94, v76);
          v77 = v103;
          v61 = v104;
          goto LABEL_27;
        }
      }

      else
      {
        (*v67)(v68, v64);
      }

      if (v106 == ++v56)
      {

        v50 = v96;
        v56 = v93;
        v64 = v90;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    if (qword_27D87BA98 == -1)
    {
      goto LABEL_23;
    }
  }

  swift_once();
LABEL_23:
  v78 = sub_22A4DD07C();
  __swift_project_value_buffer(v78, qword_27D8817F8);
  v79 = sub_22A4DD05C();
  v80 = sub_22A4DDCCC();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v109 = v82;
    *v81 = 136315138;
    *(v81 + 4) = sub_2295A3E30(0xD000000000000041, 0x800000022A598080, &v109);
    _os_log_impl(&dword_229538000, v79, v80, "%s Either presetTypeFeatures is false or automation is not enabled for the preset", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x22AAD4E50](v82, -1, -1);
    MEMORY[0x22AAD4E50](v81, -1, -1);
  }

  v63 = v98;
  (v98[1])(v64, v50);
  v61 = v104;
  v62 = v87;
LABEL_26:
  v83 = v50;
  v84 = v94;
  sub_22A4DC82C();
  [v62 isHoldActive];
  v74 = v91;
  sub_22A4DCA8C();

  sub_22953EAE4(v56, &unk_27D8818D0, &qword_22A57A448);
  (v63[1])(v84, v83);
  v70 = *(v86 + 8);
  v77 = v103;
LABEL_27:
  v70(v97, v51);
  v70(v89, v51);
  v85 = v88;
  (*(v61 + 32))(v77, v74, v88);
  return (*(v61 + 56))(v77, 0, 1, v85);
}

uint64_t sub_22982C2F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22A4DC70C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22A4DB74C();
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  v10 = MEMORY[0x28223BE20](v49);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v44 - v20;
  v22 = sub_22A4DC8EC();
  v50 = *(v22 - 8);
  v23 = *(v50 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v44 - v27;
  v29 = [a1 state];
  if (v29 > 3 && (v29 - 6) < 2)
  {
    v45 = v12;
    v46 = a3;
    v33 = v50;
    (*(v50 + 104))(v26, *MEMORY[0x277D172E0], v22);
    v34 = (*(v33 + 32))(v28, v26, v22);
    MEMORY[0x28223BE20](v34);
    *(&v44 - 2) = v28;
    sub_229685338(sub_2298390B8, a2, v21);

    v35 = sub_22A4DC85C();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v21, 1, v35) == 1)
    {

      sub_22953EAE4(v21, &unk_27D8818D0, &qword_22A57A448);
      (*(v33 + 8))(v28, v22);
      v30 = 1;
      a3 = v46;
      goto LABEL_5;
    }

    v37 = sub_22A4DC82C();
    v44 = v38;
    (*(v36 + 8))(v21, v35);
    v39 = [a1 transitionalStateEndDate];
    a3 = v46;
    if (v39)
    {
      v40 = v39;
      sub_22A4DB70C();

      v41 = v47;
      v42 = v15;
      v43 = v49;
      (*(v47 + 32))(v17, v42, v49);
      (*(v41 + 16))(v45, v17, v43);
      sub_22A4DC71C();
      sub_22A4DCAFC();

      (*(v41 + 8))(v17, v43);
      (*(v50 + 8))(v28, v22);
      v30 = 0;
      goto LABEL_5;
    }

    sub_2295798D4(v37, v44);

    (*(v50 + 8))(v28, v22);
  }

  else
  {
  }

  v30 = 1;
LABEL_5:
  v31 = sub_22A4DCB1C();
  return (*(*(v31 - 8) + 56))(a3, v30, 1, v31);
}

uint64_t sub_22982C848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v8[14] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v13 = sub_22A4DB7DC();
  v8[16] = v13;
  v14 = *(v13 - 8);
  v8[17] = v14;
  v15 = *(v14 + 64) + 15;
  v8[18] = swift_task_alloc();
  v16 = sub_22A4DB74C();
  v8[19] = v16;
  v17 = *(v16 - 8);
  v8[20] = v17;
  v18 = *(v17 + 64) + 15;
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818E0, &qword_22A585558);
  v8[24] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B0, &qword_22A5854F8) - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0) - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v23 = sub_22A4DC70C();
  v8[33] = v23;
  v24 = *(v23 - 8);
  v8[34] = v24;
  v25 = *(v24 + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818E8, &unk_22A585560) - 8) + 64) + 15;
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v27 = swift_task_alloc();
  v8[42] = v27;
  v8[43] = swift_task_alloc();
  v28 = *(MEMORY[0x277D17388] + 4);
  v29 = swift_task_alloc();
  v8[44] = v29;
  *v29 = v8;
  v29[1] = sub_22982CBE4;

  return MEMORY[0x2821716F8](v27, a1, a2);
}

uint64_t sub_22982CBE4()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_22982EC78;
  }

  else
  {
    v3 = sub_22982CCF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22982CCF8()
{
  v332 = v0;
  v1 = v0;
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[41];
  v5 = v1[33];
  v6 = v1[34];
  sub_22957F2F8(v2, v3, &unk_27D8818E8, &unk_22A585560);
  sub_229564F88(v3, v4, &unk_27D8818E8, &unk_22A585560);
  v7 = *(v6 + 48);
  v8 = v7(v4, 1, v5);
  v9 = v1[41];
  if (v8 == 1)
  {
    sub_22953EAE4(v1[41], &unk_27D8818E8, &unk_22A585560);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v10 = v1[13];
    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8817F8);
    v12 = v10;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[43];
    if (v15)
    {
      v18 = v1[17];
      v17 = v1[18];
      v19 = v1[16];
      v20 = v1[13];
      v322 = v1;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v331[0] = v22;
      *v21 = 136315394;
      v23 = [v20 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v24 = sub_22A4DE5CC();
      v26 = v25;
      (*(v18 + 8))(v17, v19);
      v27 = sub_2295A3E30(v24, v26, v331);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v331);
      _os_log_impl(&dword_229538000, v13, v14, "[%s] %s -> YES currentSuggestedPresetExpiration is nil", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v22, -1, -1);
      v28 = v21;
      v1 = v322;
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    v29 = v16;
    goto LABEL_64;
  }

  v30 = v1[11];
  v31 = v1[8];
  v32 = *(v1[34] + 32);
  v32(v1[37], v1[41], v1[33]);
  v34 = sub_22A4DCA7C();
  v35 = v33;
  v36 = v30 >> 60;
  if (v30 >> 60 == 15)
  {
    if (v33 >> 60 == 15)
    {
      v38 = v1[10];
      v37 = v1[11];
      sub_2295AEF1C(v38, v37);
      sub_229590D18(v38, v37);
      goto LABEL_17;
    }

LABEL_11:
    v39 = v1[10];
    v40 = v1[11];
    sub_2295AEF1C(v39, v40);
    sub_229590D18(v39, v40);
    sub_229590D18(v34, v35);
    if (v36 > 0xE)
    {
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v41 = v1[13];
      v42 = sub_22A4DD07C();
      __swift_project_value_buffer(v42, qword_27D8817F8);
      v43 = v41;
      v44 = sub_22A4DD05C();
      v45 = sub_22A4DDCCC();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v1[43];
      v48 = v1[37];
      v49 = v1[33];
      v50 = v1[34];
      if (!v46)
      {
LABEL_40:

        (*(v50 + 8))(v48, v49);
LABEL_63:
        v29 = v47;
        goto LABEL_64;
      }

      v323 = v1[37];
      v328 = v1[43];
      v52 = v1[17];
      v51 = v1[18];
      v53 = v1[16];
      v54 = v1[13];
      v55 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v331[0] = v316;
      *v55 = 136315394;
      v56 = [v54 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v57 = sub_22A4DE5CC();
      v309 = v49;
      v59 = v58;
      (*(v52 + 8))(v51, v53);
      v60 = sub_2295A3E30(v57, v59, v331);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v331);
      _os_log_impl(&dword_229538000, v44, v45, "[%s] %s -> YES currentSuggestedPresetHandle is nil", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v316, -1, -1);
      MEMORY[0x22AAD4E50](v55, -1, -1);

      (*(v50 + 8))(v323, v309);
      goto LABEL_45;
    }

LABEL_19:
    sub_22956C148(v1[10], v1[11]);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v70 = v1[13];
    v71 = v1[10];
    v72 = v1[11];
    v73 = sub_22A4DD07C();
    __swift_project_value_buffer(v73, qword_27D8817F8);
    sub_2295AEF1C(v71, v72);
    v74 = v70;
    v75 = sub_22A4DD05C();
    v76 = sub_22A4DDCCC();

    sub_229590D18(v71, v72);
    if (!os_log_type_enabled(v75, v76))
    {
      v47 = v1[43];
      v101 = v1[37];
      v102 = v1[33];
      v103 = v1[34];
      v104 = v1;
      v107 = v1 + 10;
      v106 = v1[10];
      v105 = v107[1];

      v108 = v106;
      v1 = v104;
      sub_229590D18(v108, v105);
      goto LABEL_62;
    }

    v328 = v1[43];
    v297 = v1[45];
    v303 = v1[34];
    v311 = v1[33];
    v317 = v1[37];
    v78 = v1[17];
    v77 = v1[18];
    v79 = v1[16];
    v80 = v1[13];
    v81 = v1[10];
    v293 = v1[11];
    v82 = swift_slowAlloc();
    v324 = v1;
    v83 = swift_slowAlloc();
    v331[0] = v83;
    *v82 = 136315650;
    v84 = [v80 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v85 = sub_22A4DE5CC();
    v87 = v86;
    (*(v78 + 8))(v77, v79);
    v88 = sub_2295A3E30(v85, v87, v331);

    *(v82 + 4) = v88;
    *(v82 + 12) = 2080;
    *(v82 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v331);
    *(v82 + 22) = 2080;
    v89 = v81;
    v324[6] = sub_22966BC74(v81, v293);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_229590C00(&qword_281401CA8, &qword_27D87E400, "ll\b");
    v90 = sub_22A4DD50C();
    v92 = v91;

    v93 = sub_2295A3E30(v90, v92, v331);

    *(v82 + 24) = v93;
    _os_log_impl(&dword_229538000, v75, v76, "[%s] %s -> YES currentSuggestedPresetHandle is 0x%s", v82, 0x20u);
    swift_arrayDestroy();
    v94 = v83;
    v1 = v324;
    MEMORY[0x22AAD4E50](v94, -1, -1);
    MEMORY[0x22AAD4E50](v82, -1, -1);

    sub_229590D18(v89, v293);
    (*(v303 + 8))(v317, v311);
LABEL_45:
    v29 = v328;
LABEL_64:
    sub_22953EAE4(v29, &unk_27D8818E8, &unk_22A585560);
    v330 = 1;
    goto LABEL_65;
  }

  if (v33 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v61 = v1[10];
  v62 = v1[11];
  sub_2295AEF1C(v61, v62);
  sub_22956C148(v34, v35);
  v63 = sub_2297B7550(v61, v62, v34, v35);
  sub_229590D18(v34, v35);
  sub_2295798D4(v34, v35);
  sub_229590D18(v61, v62);
  if ((v63 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v64 = v1[32];
  sub_229564F88(v1[12], v64, &qword_27D8818C0, &unk_22A5820B0);
  v65 = sub_22A4DCA3C();
  v66 = *(v65 - 8);
  v310 = *(v66 + 48);
  v67 = (v310)(v64, 1, v65);
  v68 = v1[32];
  v292 = v66;
  if (v67 == 1)
  {
    sub_22953EAE4(v68, &qword_27D8818C0, &unk_22A5820B0);
    v302 = 0;
    v69 = 0xF000000000000000;
  }

  else
  {
    v302 = sub_22A4DCA1C();
    v69 = v95;
    (*(v66 + 8))(v68, v65);
  }

  v283 = v32;
  v329 = v65;
  v96 = v1[27];
  sub_229564F88(v1[9], v96, &qword_27D8818B0, &qword_22A5854F8);
  v97 = sub_22A4DCB1C();
  v98 = *(v97 - 8);
  v286 = *(v98 + 48);
  v325 = v1;
  if (v286(v96, 1, v97) == 1)
  {
    sub_22953EAE4(v1[27], &qword_27D8818B0, &qword_22A5854F8);
    if (v69 >> 60 != 15)
    {
      v99 = 0;
      v100 = 0xF000000000000000;
LABEL_34:
      sub_229590D18(v302, v69);
      sub_229590D18(v99, v100);
LABEL_35:
      v114 = v1[28];
      sub_229564F88(v1[12], v114, &qword_27D8818C0, &unk_22A5820B0);
      v115 = (v310)(v114, 1, v329);
      v116 = v1[28];
      if (v115 == 1)
      {
        sub_22953EAE4(v1[28], &qword_27D8818C0, &unk_22A5820B0);
        if (qword_27D87BA98 != -1)
        {
          swift_once();
        }

        v117 = v1[13];
        v118 = sub_22A4DD07C();
        __swift_project_value_buffer(v118, qword_27D8817F8);
        v119 = v117;
        v44 = sub_22A4DD05C();
        v120 = sub_22A4DDCCC();

        v121 = os_log_type_enabled(v44, v120);
        v47 = v1[43];
        v48 = v1[37];
        v49 = v1[33];
        v50 = v1[34];
        if (v121)
        {
          v328 = v1[43];
          v122 = v1[18];
          v123 = v1[17];
          v124 = v325[16];
          v318 = v48;
          v125 = v325[13];
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v331[0] = v127;
          *v126 = 136315394;
          v128 = [v125 uuid];
          sub_22A4DB79C();

          sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
          v129 = sub_22A4DE5CC();
          v312 = v49;
          v131 = v130;
          (*(v123 + 8))(v122, v124);
          v1 = v325;
          v132 = sub_2295A3E30(v129, v131, v331);

          *(v126 + 4) = v132;
          *(v126 + 12) = 2080;
          *(v126 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v331);
          _os_log_impl(&dword_229538000, v44, v120, "[%s] %s -> YES predictedSuggestedPreset.presetHandle is nil", v126, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v127, -1, -1);
          MEMORY[0x22AAD4E50](v126, -1, -1);

          (*(v50 + 8))(v318, v312);
          goto LABEL_45;
        }

        goto LABEL_40;
      }

      v133 = sub_22A4DCA1C();
      v135 = v134;
      (*(v292 + 8))(v116, v329);
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v136 = v1[13];
      v137 = sub_22A4DD07C();
      __swift_project_value_buffer(v137, qword_27D8817F8);
      v138 = v136;
      sub_22956C148(v133, v135);
      v139 = sub_22A4DD05C();
      v140 = sub_22A4DDCCC();

      sub_2295798D4(v133, v135);
      if (os_log_type_enabled(v139, v140))
      {
        v141 = v1[45];
        v328 = v1[43];
        v304 = v1[34];
        v313 = v1[33];
        v319 = v1[37];
        v299 = v140;
        v143 = v1[17];
        v142 = v1[18];
        v144 = v1[16];
        v145 = v1[13];
        v146 = swift_slowAlloc();
        v294 = swift_slowAlloc();
        v331[0] = v294;
        *v146 = 136315650;
        v147 = [v145 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
        v148 = sub_22A4DE5CC();
        log = v139;
        v150 = v149;
        (*(v143 + 8))(v142, v144);
        v151 = sub_2295A3E30(v148, v150, v331);

        *(v146 + 4) = v151;
        *(v146 + 12) = 2080;
        *(v146 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v331);
        *(v146 + 22) = 2080;
        v1[7] = sub_22966BC74(v133, v135);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
        sub_229590C00(&qword_281401CA8, &qword_27D87E400, "ll\b");
        v152 = sub_22A4DD50C();
        v154 = v153;

        v155 = sub_2295A3E30(v152, v154, v331);

        *(v146 + 24) = v155;
        _os_log_impl(&dword_229538000, log, v299, "[%s] %s -> YES predictedSuggestedPreset.presetHandle is 0x%s", v146, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v294, -1, -1);
        MEMORY[0x22AAD4E50](v146, -1, -1);

        sub_2295798D4(v133, v135);
        (*(v304 + 8))(v319, v313);
        goto LABEL_45;
      }

      v47 = v1[43];
      v101 = v1[37];
      v102 = v1[33];
      v103 = v1[34];

      sub_2295798D4(v133, v135);
LABEL_62:
      (*(v103 + 8))(v101, v102);
      goto LABEL_63;
    }

    goto LABEL_30;
  }

  v298 = v97;
  v109 = v1[27];
  v99 = sub_22A4DCA1C();
  v100 = v110;
  v111 = v109;
  v97 = v298;
  (*(v98 + 8))(v111, v298);
  if (v69 >> 60 == 15)
  {
    if (v100 >> 60 != 15)
    {
      goto LABEL_34;
    }

LABEL_30:
    v298 = v97;
    sub_229590D18(v302, v69);
    goto LABEL_31;
  }

  if (v100 >> 60 == 15)
  {
    goto LABEL_34;
  }

  sub_2295AEF1C(v302, v69);
  sub_2295AEF1C(v99, v100);
  v218 = sub_2297B7550(v302, v69, v99, v100);
  sub_229590D18(v99, v100);
  sub_229590D18(v99, v100);
  sub_229590D18(v302, v69);
  sub_229590D18(v302, v69);
  if ((v218 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  v112 = v1[31];
  sub_229564F88(v1[12], v112, &qword_27D8818C0, &unk_22A5820B0);
  if ((v310)(v112, 1, v329) == 1)
  {
    sub_22953EAE4(v1[31], &qword_27D8818C0, &unk_22A5820B0);
    v113 = 1;
  }

  else
  {
    v156 = v1[40];
    v157 = v1[31];
    sub_22A4DCA2C();
    (*(v292 + 8))(v157, v329);
    v113 = 0;
  }

  v158 = v1[26];
  v159 = v1[9];
  v160 = *(v1[34] + 56);
  v160(v1[40], v113, 1, v1[33]);
  sub_229564F88(v159, v158, &qword_27D8818B0, &qword_22A5854F8);
  if (v286(v158, 1, v298) == 1)
  {
    sub_22953EAE4(v1[26], &qword_27D8818B0, &qword_22A5854F8);
    v161 = 1;
  }

  else
  {
    v162 = v1[39];
    v163 = v1[26];
    sub_22A4DCA2C();
    (*(v98 + 8))(v163, v298);
    v161 = 0;
  }

  v164 = v1[39];
  v165 = v1[40];
  v166 = v1[33];
  v167 = v1[24];
  v168 = v1[25];
  v160(v164, v161, 1, v166);
  v169 = *(v167 + 48);
  sub_229564F88(v165, v168, &unk_27D8818E8, &unk_22A585560);
  sub_229564F88(v164, v168 + v169, &unk_27D8818E8, &unk_22A585560);
  v170 = v7(v168, 1, v166);
  v171 = v1[33];
  if (v170 == 1)
  {
    v172 = v1[40];
    v173 = v1;
    sub_22953EAE4(v1[39], &unk_27D8818E8, &unk_22A585560);
    sub_22953EAE4(v172, &unk_27D8818E8, &unk_22A585560);
    if (v7(v168 + v169, 1, v171) == 1)
    {
      sub_22953EAE4(v1[25], &unk_27D8818E8, &unk_22A585560);
      v174 = v1;
      goto LABEL_72;
    }

    goto LABEL_55;
  }

  sub_229564F88(v1[25], v1[38], &unk_27D8818E8, &unk_22A585560);
  v175 = v7(v168 + v169, 1, v171);
  v173 = v1;
  v176 = v1[39];
  v177 = v325[40];
  v178 = v325[38];
  if (v175 == 1)
  {
    v180 = v325[33];
    v179 = v325[34];
    sub_22953EAE4(v176, &unk_27D8818E8, &unk_22A585560);
    sub_22953EAE4(v177, &unk_27D8818E8, &unk_22A585560);
    (*(v179 + 8))(v178, v180);
LABEL_55:
    sub_22953EAE4(v173[25], &qword_27D8818E0, &qword_22A585558);
    v174 = v173;
LABEL_56:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v181 = v174[30];
    v183 = v174[12];
    v182 = v174[13];
    v184 = sub_22A4DD07C();
    __swift_project_value_buffer(v184, qword_27D8817F8);
    sub_229564F88(v183, v181, &qword_27D8818C0, &unk_22A5820B0);
    v185 = v182;
    v186 = sub_22A4DD05C();
    v187 = sub_22A4DDCCC();

    if (os_log_type_enabled(v186, v187))
    {
      v326 = v187;
      v188 = v174[29];
      v189 = v174[30];
      v190 = v174[17];
      v191 = v174[18];
      v192 = v174[16];
      v193 = v174[13];
      v1 = v174;
      v194 = swift_slowAlloc();
      v305 = swift_slowAlloc();
      v331[0] = v305;
      *v194 = 136315650;
      v195 = [v193 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v196 = sub_22A4DE5CC();
      v198 = v197;
      (*(v190 + 8))(v191, v192);
      v199 = sub_2295A3E30(v196, v198, v331);

      *(v194 + 4) = v199;
      *(v194 + 12) = 2080;
      *(v194 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v331);
      *(v194 + 22) = 2080;
      sub_229564F88(v189, v188, &qword_27D8818C0, &unk_22A5820B0);
      if ((v310)(v188, 1, v329) == 1)
      {
        sub_22953EAE4(v1[29], &qword_27D8818C0, &unk_22A5820B0);
        v200 = 1;
      }

      else
      {
        v264 = v1[36];
        v266 = v1[33];
        v265 = v1[34];
        v267 = v1[29];
        v268 = v1[15];
        sub_22A4DCA2C();
        (*(v292 + 8))(v267, v329);
        sub_22A4DC6FC();
        (*(v265 + 8))(v264, v266);
        v200 = 0;
      }

      v269 = v1[43];
      v270 = v1[37];
      v272 = v1[33];
      v271 = v1[34];
      v273 = v1[30];
      v274 = v1[14];
      v330 = 1;
      (*(v1[20] + 56))(v1[15], v200, 1, v1[19]);
      v275 = sub_22A4DD64C();
      v277 = v276;
      sub_22953EAE4(v273, &qword_27D8818C0, &unk_22A5820B0);
      v278 = sub_2295A3E30(v275, v277, v331);

      *(v194 + 24) = v278;
      _os_log_impl(&dword_229538000, v186, v326, "[%s] %s -> YES predictedSuggestedPreset.predictedTime is %s", v194, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v305, -1, -1);
      MEMORY[0x22AAD4E50](v194, -1, -1);

      (*(v271 + 8))(v270, v272);
      sub_22953EAE4(v269, &unk_27D8818E8, &unk_22A585560);
      goto LABEL_65;
    }

    v47 = v174[43];
    v214 = v174[37];
    v215 = v325[34];
    v216 = v325[33];
    v217 = v325[30];

    sub_22953EAE4(v217, &qword_27D8818C0, &unk_22A5820B0);
    (*(v215 + 8))(v214, v216);
    v1 = v325;
    goto LABEL_63;
  }

  v219 = v325[36];
  v220 = v325[33];
  v221 = v325[34];
  v307 = v325[25];
  v283(v219, v168 + v169, v220);
  sub_229839520(&qword_27D8818F8, MEMORY[0x277D171F8]);
  v222 = sub_22A4DD58C();
  v223 = *(v221 + 8);
  v223(v219, v220);
  sub_22953EAE4(v176, &unk_27D8818E8, &unk_22A585560);
  sub_22953EAE4(v177, &unk_27D8818E8, &unk_22A585560);
  v223(v178, v220);
  sub_22953EAE4(v307, &unk_27D8818E8, &unk_22A585560);
  v174 = v325;
  if ((v222 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_72:
  v224 = v174[37];
  v226 = v174[22];
  v225 = v174[23];
  v228 = v174[20];
  v227 = v174[21];
  v229 = v174[19];
  v230 = v174[13];
  sub_22A4DC6FC();
  v231 = [objc_msgSend(v230 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();

  sub_22A4DB6DC();
  v232 = *(v228 + 8);
  v232(v227, v229);
  LOBYTE(v224) = sub_22A4DB6BC();
  v232(v226, v229);
  v232(v225, v229);
  if ((v224 & 1) == 0)
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v1 = v325;
    v234 = v325[37];
    v236 = v325[34];
    v235 = v325[35];
    v237 = v325[33];
    v238 = v325[13];
    v239 = sub_22A4DD07C();
    __swift_project_value_buffer(v239, qword_27D8817F8);
    (*(v236 + 16))(v235, v234, v237);
    v240 = v238;
    v241 = sub_22A4DD05C();
    v242 = sub_22A4DDCCC();

    v243 = os_log_type_enabled(v241, v242);
    v244 = v325[43];
    v245 = v325[37];
    v246 = v325[34];
    v247 = v325[35];
    v248 = v325[33];
    if (!v243)
    {

      v279 = *(v246 + 8);
      v279(v247, v248);
      v279(v245, v248);
      v29 = v244;
      goto LABEL_64;
    }

    v288 = v325[23];
    logb = v325[19];
    v315 = v241;
    v321 = v325[37];
    v250 = v325[17];
    v249 = v325[18];
    v296 = v325[33];
    v251 = v325[16];
    v328 = v325[43];
    v252 = v325[13];
    v301 = v242;
    v253 = swift_slowAlloc();
    v308 = swift_slowAlloc();
    v331[0] = v308;
    *v253 = 136315906;
    v254 = [v252 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v255 = sub_22A4DE5CC();
    v285 = v247;
    v257 = v256;
    (*(v250 + 8))(v249, v251);
    v258 = sub_2295A3E30(v255, v257, v331);

    *(v253 + 4) = v258;
    *(v253 + 12) = 2080;
    *(v253 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v331);
    *(v253 + 22) = 2080;
    sub_22A4DC6FC();
    sub_229839520(&qword_281403890, MEMORY[0x277CC9578]);
    v259 = sub_22A4DE5CC();
    v261 = v260;
    v232(v288, logb);
    v262 = *(v246 + 8);
    v262(v285, v296);
    v263 = sub_2295A3E30(v259, v261, v331);

    *(v253 + 24) = v263;
    *(v253 + 32) = 2048;
    *(v253 + 34) = 0x40AC200000000000;
    _os_log_impl(&dword_229538000, v315, v301, "[%s] %s -> YES currentSuggestedPresetExpiration: %s, is within the refresh interval: %f", v253, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v308, -1, -1);
    MEMORY[0x22AAD4E50](v253, -1, -1);

    v262(v321, v296);
    goto LABEL_45;
  }

  v233 = v174[43];
  (*(v174[34] + 8))(v174[37], v174[33]);
  sub_22953EAE4(v233, &unk_27D8818E8, &unk_22A585560);
  v330 = 0;
  v1 = v174;
LABEL_65:
  v202 = v1[42];
  v201 = v1[43];
  v204 = v1[40];
  v203 = v1[41];
  v205 = v1;
  v206 = v1[39];
  v208 = v205[37];
  v207 = v205[38];
  v210 = v205[35];
  v209 = v205[36];
  v211 = v205[32];
  v280 = v205[31];
  v281 = v205[30];
  v282 = v205[29];
  v284 = v205[28];
  v287 = v205[27];
  loga = v205[26];
  v295 = v205[25];
  v300 = v205[23];
  v306 = v205[22];
  v314 = v205[21];
  v320 = v205[18];
  v327 = v205[15];

  v212 = v205[1];

  return v212(v330);
}

uint64_t sub_22982EC78()
{
  v53 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = v0[13];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[45];
  if (v8)
  {
    v50 = v0[45];
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[16];
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = v15;
    *v14 = 136315394;
    v16 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = sub_2295A3E30(v17, v19, &v52);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v22 = v0[2];
    v21 = v0[3];
    v23 = v0[4];
    v24 = sub_22A4DE6DC();
    v26 = sub_2295A3E30(v24, v25, &v52);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read currentSuggestedPresetExpiration with error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v28 = v0[42];
  v27 = v0[43];
  v30 = v0[40];
  v29 = v0[41];
  v32 = v0[38];
  v31 = v0[39];
  v34 = v0[36];
  v33 = v0[37];
  v35 = v0[35];
  v36 = v0[32];
  v39 = v0[31];
  v40 = v0[30];
  v41 = v0[29];
  v42 = v0[28];
  v43 = v0[27];
  v44 = v0[26];
  v45 = v0[25];
  v46 = v0[23];
  v47 = v0[22];
  v48 = v0[21];
  v49 = v0[18];
  v51 = v0[15];

  v37 = v0[1];

  return v37(0);
}

uint64_t sub_22982F020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = v14;
  *(v8 + 56) = v15;
  *(v8 + 120) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = sub_22A4DB7DC();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22982F0F4, 0, 0);
}

uint64_t sub_22982F0F4()
{
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_22982F1B0;
  v6 = v0[3];
  v5 = v0[4];

  return sub_22982FA40(v6, v5, v3, v2);
}

uint64_t sub_22982F1B0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_22982F4D8;
  }

  else
  {
    v3 = sub_22982F2C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22982F2C4()
{
  v1 = *(v0 + 120);
  if (v1 == 5 || v1 == 3)
  {
    v3 = *(v0 + 40);
    sub_22982FCF0();
  }

  v4 = *(v0 + 16);
  v6 = v4[3];
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v6);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_22982F39C;
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 24);

  return sub_22983023C(v10, v8, v9, v6, v5);
}

uint64_t sub_22982F39C()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22982F78C, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22982F4D8()
{
  v26 = v0;
  v1 = v0[12];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed command with error %@", v12, 0x16u);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = v0[10];

  v21 = v0[1];

  return v21();
}

uint64_t sub_22982F78C()
{
  v26 = v0;
  v1 = v0[14];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed command with error %@", v12, 0x16u);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = v0[10];

  v21 = v0[1];

  return v21();
}

uint64_t sub_22982FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_22982FA68, 0, 0);
}

uint64_t sub_22982FA68()
{
  v1 = *(v0 + 88);
  v8 = *(v0 + 72);
  *(v0 + 40) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v1);
  v3 = *(MEMORY[0x277D17348] + 4);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_22982FB50;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  return MEMORY[0x282171680](v0 + 16, v5, v6);
}

uint64_t sub_22982FB50()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22982FC8C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_22982FC8C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

void sub_22982FCF0()
{
  v1 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DB7DC();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = [objc_msgSend(v1 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();

  sub_22A4DB6DC();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v16 = [objc_msgSend(v1 dataSource)];
  swift_unknownObjectRelease();
  sub_229832324();
  v17 = sub_22A4DD5AC();

  v18 = sub_22A4DB6AC();
  v43[0] = 0;
  v19 = [v16 scheduleTaskWithIdentifier:v17 fireDate:v18 onObserver:v1 selector:sel_handleValenciaTimerFiredWithNotification_ error:v43];

  if (v19)
  {
    v20 = v43[0];
    v15(v13, v6);
  }

  else
  {
    v21 = v43[0];
    v22 = sub_22A4DB3EC();

    swift_willThrow();
    v15(v13, v6);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v23 = sub_22A4DD07C();
    __swift_project_value_buffer(v23, qword_27D8817F8);
    v24 = v1;
    v25 = v22;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43[0] = v30;
      *v28 = 136315650;
      v31 = [v24 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v32 = v42;
      v33 = sub_22A4DE5CC();
      v35 = v34;
      (*(v41 + 8))(v5, v32);
      v36 = sub_2295A3E30(v33, v35, v43);

      *(v28 + 4) = v36;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2295A3E30(0xD000000000000026, 0x800000022A597FB0, v43);
      *(v28 + 22) = 2112;
      v37 = v22;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v38;
      *v29 = v38;
      _os_log_impl(&dword_229538000, v26, v27, "[%s] %s Failed to start automation failure detection timer: %@", v28, 0x20u);
      sub_22953EAE4(v29, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    else
    {
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22983023C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B0, &qword_22A5854F8) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v8 = sub_22A4DCB1C();
  v6[19] = v8;
  v9 = *(v8 - 8);
  v6[20] = v9;
  v10 = *(v9 + 64) + 15;
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22983033C, 0, 0);
}

uint64_t sub_22983033C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  sub_229564F88(*(v0 + 104), v3, &qword_27D8818B0, &qword_22A5854F8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 112);
    sub_22953EAE4(*(v0 + 144), &qword_27D8818B0, &qword_22A5854F8);
    v5 = sub_22A4DCA3C();
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      v6 = *(v0 + 168);
      v7 = *(v0 + 144);

      v8 = *(v0 + 8);

      return v8();
    }

    else
    {
      v16 = *(v0 + 136);
      v22 = *(v0 + 120);
      *(v0 + 40) = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v16);
      v18 = *(MEMORY[0x277D17380] + 4);
      v19 = swift_task_alloc();
      *(v0 + 192) = v19;
      *v19 = v0;
      v19[1] = sub_2298307A8;
      v20 = *(v0 + 96);

      return MEMORY[0x2821716F0](v0 + 16, v20);
    }
  }

  else
  {
    v10 = *(v0 + 136);
    v21 = *(v0 + 120);
    (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
    *(v0 + 80) = v21;
    v11 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v21 - 8) + 16))(v11, v10);
    v12 = *(MEMORY[0x277D17370] + 4);
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_229830604;
    v14 = *(v0 + 168);
    v15 = *(v0 + 96);

    return MEMORY[0x2821716C0](v0 + 56, v15, v14);
  }
}

uint64_t sub_229830604()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_2298308FC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v4 = sub_229830720;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229830720()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2298307A8()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22983098C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v4 = v3[21];
    v5 = v3[18];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2298308FC()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22983098C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_229830A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 256) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  *(v5 + 128) = swift_getObjectType();
  v6 = sub_22A4DB7DC();
  *(v5 + 136) = v6;
  v7 = *(v6 - 8);
  *(v5 + 144) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v9 = *(*(sub_22A4DC8EC() - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448) - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v11 = sub_22A4DC85C();
  *(v5 + 176) = v11;
  v12 = *(v11 - 8);
  *(v5 + 184) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v14 = type metadata accessor for ThermostatSuggestedPreset.Current(0);
  *(v5 + 200) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229830BD4, 0, 0);
}

uint64_t sub_229830BD4()
{
  v57 = v0;
  v1 = *(v0 + 104);
  v2 = sub_22A4DCB1C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 168);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    *(swift_task_alloc() + 16) = v7;
    sub_229685338(sub_229839098, v6, v5);

    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_22953EAE4(*(v0 + 168), &unk_27D8818D0, &qword_22A57A448);
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 120);
      v9 = sub_22A4DD07C();
      __swift_project_value_buffer(v9, qword_27D8817F8);
      v10 = v8;
      v11 = sub_22A4DD05C();
      v12 = sub_22A4DDCEC();

      if (os_log_type_enabled(v11, v12))
      {
        v14 = *(v0 + 144);
        v13 = *(v0 + 152);
        v15 = *(v0 + 136);
        v16 = *(v0 + 120);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v56[0] = v18;
        *v17 = 136315394;
        v19 = [v16 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
        v20 = sub_22A4DE5CC();
        v22 = v21;
        (*(v14 + 8))(v13, v15);
        v23 = sub_2295A3E30(v20, v22, v56);

        *(v17 + 4) = v23;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_2295A3E30(0xD000000000000046, 0x800000022A597F60, v56);
        _os_log_impl(&dword_229538000, v11, v12, "[%s] %s Unable to find preset struct to log", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v18, -1, -1);
        MEMORY[0x22AAD4E50](v17, -1, -1);
      }

      v25 = *(v0 + 208);
      v24 = *(v0 + 216);
      v26 = *(v0 + 192);
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);
      v29 = *(v0 + 152);

      v30 = *(v0 + 8);

      return v30();
    }

    v44 = *(v0 + 200);
    v43 = *(v0 + 208);
    v45 = *(v0 + 160);
    v47 = *(v0 + 120);
    v46 = *(v0 + 128);
    v48 = *(v0 + 256);
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    sub_22A4DC83C();
    v49 = sub_2296F027C(v45, v48 == 5);
    v50 = [objc_msgSend(v47 dataSource)];
    swift_unknownObjectRelease();
    v51 = &v43[*(v44 + 24)];
    sub_22A4DB70C();

    *v43 = v49;
    v43[1] = v48;
    v52 = [v47 swiftExtensions];
    _s15SwiftExtensionsCMa_1();
    v53 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
    os_unfair_lock_lock(v53);
    sub_22978620C(&v53[2], v47, (v0 + 16));
    os_unfair_lock_unlock(v53);
    swift_unknownObjectRelease();
    v54 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v55 = swift_task_alloc();
    *(v0 + 240) = v55;
    *v55 = v0;
    v55[1] = sub_229831774;
    v42 = *(v0 + 208);
  }

  else
  {
    v32 = *(v0 + 216);
    v33 = *(v0 + 200);
    v34 = *(v0 + 120);
    v35 = *(v0 + 256);
    v36 = [objc_msgSend(v34 dataSource)];
    swift_unknownObjectRelease();
    v37 = &v32[*(v33 + 24)];
    sub_22A4DB70C();

    *v32 = 6;
    v32[1] = v35;
    v38 = [v34 swiftExtensions];
    _s15SwiftExtensionsCMa_1();
    v39 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
    os_unfair_lock_lock(v39);
    sub_22978620C(&v39[2], v34, (v0 + 56));
    os_unfair_lock_unlock(v39);
    swift_unknownObjectRelease();
    v40 = *__swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v41 = swift_task_alloc();
    *(v0 + 224) = v41;
    *v41 = v0;
    v41[1] = sub_229831250;
    v42 = *(v0 + 216);
  }

  return sub_2296C7160(v42);
}

uint64_t sub_229831250()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_22983142C;
  }

  else
  {
    v3 = sub_229831364;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229831364()
{
  sub_229839118(v0[27], type metadata accessor for ThermostatSuggestedPreset.Current);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22983142C()
{
  v31 = v0;
  sub_229839118(v0[27], type metadata accessor for ThermostatSuggestedPreset.Current);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[29];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[17];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 136315650;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000046, 0x800000022A597F60, &v30);
    *(v12 + 22) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v28 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] %s Failed save thermostat suggested preset with error %@", v12, 0x20u);
    sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v21 = v0[26];
  v20 = v0[27];
  v22 = v0[24];
  v24 = v0[20];
  v23 = v0[21];
  v25 = v0[19];

  v26 = v0[1];

  return v26();
}

uint64_t sub_229831774()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_229831970;
  }

  else
  {
    v3 = sub_229831888;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229831888()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_229839118(v0[26], type metadata accessor for ThermostatSuggestedPreset.Current);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];

  v10 = v0[1];

  return v10();
}

uint64_t sub_229831970()
{
  v34 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_229839118(v0[26], type metadata accessor for ThermostatSuggestedPreset.Current);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[31];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v5 = v0[15];
  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D8817F8);
  v7 = v5;
  v8 = v4;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];
    v14 = v0[15];
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v15 = 136315650;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_2295A3E30(v17, v19, &v33);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD000000000000046, 0x800000022A597F60, &v33);
    *(v15 + 22) = 2112;
    v21 = v4;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v22;
    *v31 = v22;
    _os_log_impl(&dword_229538000, v9, v10, "[%s] %s Failed save thermostat suggested preset with error %@", v15, 0x20u);
    sub_22953EAE4(v31, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v32, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  else
  {
  }

  v24 = v0[26];
  v23 = v0[27];
  v25 = v0[24];
  v27 = v0[20];
  v26 = v0[21];
  v28 = v0[19];

  v29 = v0[1];

  return v29();
}

uint64_t sub_229831CD8()
{
  v0 = sub_22A4DC82C();
  v2 = v1;
  v3 = sub_22A4DCA7C();
  v5 = v4;
  v6 = sub_2297B7550(v0, v2, v3, v4);
  sub_2295798D4(v3, v5);
  sub_2295798D4(v0, v2);
  return v6 & 1;
}

id HMDHAPAccessory.delegateQueue.getter()
{
  v1 = [v0 workQueue];

  return v1;
}

Swift::Void __swiftcall HMDHAPAccessory.homeActivityStateManager(_:didMoveToState:)(HMDHomeActivityStateManager *_, HMDHomeActivityStateDetails *didMoveToState)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = [v2 home];
  if (v7)
  {
    v8 = v7;
    v9 = sub_22A4DD9DC();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v2;
    v10[5] = v8;
    v11 = v2;
    sub_22957F3C0(0, 0, v6, &unk_22A585370, v10);
  }
}

uint64_t sub_229831EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_229569B30;

  return sub_22981DFEC(a5, 3);
}

uint64_t sub_229831F98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229831EF8(a1, v4, v5, v7, v6);
}

unint64_t sub_2298321A0()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_22A4DE1FC();

  v9 = 0xD00000000000001FLL;
  v10 = 0x800000022A5980F0;
  v6 = [v0 uuid];
  sub_22A4DB79C();

  sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
  v7 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v7);

  (*(v2 + 8))(v5, v1);
  return v9;
}

unint64_t sub_229832324()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_22A4DE1FC();

  v9 = 0xD000000000000029;
  v10 = 0x800000022A598140;
  v6 = [v0 uuid];
  sub_22A4DB79C();

  sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
  v7 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v7);

  (*(v2 + 8))(v5, v1);
  return v9;
}

void sub_2298324A8(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v46 - v11;
  v13 = [a1 userInfo];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  v15 = sub_22A4DD49C();

  v46[1] = sub_22A4DD5EC();
  v46[2] = v16;
  sub_22A4DE18C();
  if (!*(v15 + 16) || (v17 = sub_2295402E8(v47), (v18 & 1) == 0))
  {

    sub_22954045C(v47);
LABEL_11:
    v48 = 0u;
    v49 = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v15 + 56) + 32 * v17, &v48);
  sub_22954045C(v47);

  if (!*(&v49 + 1))
  {
LABEL_12:
    sub_22953EAE4(&v48, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v24 = sub_22A4DD07C();
    __swift_project_value_buffer(v24, qword_27D8817F8);
    v25 = v2;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47[0] = v29;
      *v28 = 136315394;
      v30 = [v25 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v31 = sub_22A4DE5CC();
      v33 = v32;
      (*(v5 + 8))(v8, v4);
      v34 = sub_2295A3E30(v31, v33, v47);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A597ED0, v47);
      _os_log_impl(&dword_229538000, v26, v27, "[%s] %s Missing identifier from Background Task Manager payload", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    return;
  }

  v20 = v47[0];
  v19 = v47[1];
  v21 = [v2 home];
  if (v21)
  {
    v22 = v21;
    if (v20 == sub_2298321A0() && v19 == v23)
    {
    }

    else
    {
      v35 = sub_22A4DE60C();

      if ((v35 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v36 = sub_22A4DD9DC();
    (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v2;
    v37[5] = v22;
    v38 = v2;
    sub_22957F3C0(0, 0, v12, &unk_22A5854B0, v37);
  }

LABEL_21:
  v39 = [v2 home];
  if (!v39)
  {

    return;
  }

  v40 = v39;
  if (v20 == sub_229832324() && v19 == v41)
  {

LABEL_27:
    v43 = sub_22A4DD9DC();
    (*(*(v43 - 8) + 56))(v12, 1, 1, v43);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v2;
    v44[5] = v40;
    v45 = v2;
    sub_22957F3C0(0, 0, v12, &unk_22A5854A0, v44);

    return;
  }

  v42 = sub_22A4DE60C();

  if (v42)
  {
    goto LABEL_27;
  }
}

uint64_t sub_229832AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DB7DC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229832B80, 0, 0);
}

uint64_t sub_229832B80()
{
  v22 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v21);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A597ED0, &v21);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s Valencia refresh timer fired", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_229839A40;
  v19 = v0[2];
  v18 = v0[3];

  return sub_22981DFEC(v18, 4);
}

uint64_t sub_229832E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DB7DC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229832EE0, 0, 0);
}

uint64_t sub_229832EE0()
{
  v22 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v21);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A597ED0, &v21);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s Valencia automation failure detection timer fired", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_22983317C;
  v19 = v0[2];
  v18 = v0[3];

  return sub_22983328C(v18);
}

uint64_t sub_22983317C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22983328C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_22A4DB7DC();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881910, &qword_22A5855A0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = sub_22A4DCA4C();
  v2[27] = v7;
  v8 = *(v7 - 8);
  v2[28] = v8;
  v9 = *(v8 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v10 = sub_22A4DCD0C();
  v2[33] = v10;
  v11 = *(v10 - 8);
  v2[34] = v11;
  v12 = *(v11 + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229833460, 0, 0);
}

uint64_t sub_229833460()
{
  v57 = v0;
  v1 = [*(v0 + 176) matterAdapter];
  *(v0 + 288) = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 matterDevice];
  *(v0 + 296) = v3;
  if (!v3)
  {

LABEL_8:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 176);
    v15 = sub_22A4DD07C();
    __swift_project_value_buffer(v15, qword_27D8817F8);
    v16 = v14;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 192);
      v19 = *(v0 + 200);
      v22 = *(v0 + 176);
      v21 = *(v0 + 184);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v56 = v24;
      *v23 = 136315394;
      v25 = [v22 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
      v26 = sub_22A4DE5CC();
      v28 = v27;
      (*(v20 + 8))(v19, v21);
      v29 = sub_2295A3E30(v26, v28, &v56);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A598110, &v56);
      _os_log_impl(&dword_229538000, v17, v18, "[[%s]] %s Invalid matter accessory", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    goto LABEL_13;
  }

  v4 = v3;
  v5 = [*(v0 + 176) valenciaMatterEndpoint];
  *(v0 + 304) = v5;
  if (v5)
  {
    v6 = *(v0 + 280);
    [v5 unsignedShortValue];
    sub_22A4DCCEC();
    v7 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    v8 = MEMORY[0x277D17450];
    *(v0 + 120) = v7;
    *(v0 + 128) = v8;
    *(v0 + 96) = v4;
    v9 = *(MEMORY[0x277D17390] + 4);
    v10 = v4;
    v11 = swift_task_alloc();
    *(v0 + 312) = v11;
    *v11 = v0;
    v11[1] = sub_229833A34;
    v12 = *(v0 + 280);
    v13 = *(v0 + 208);

    return MEMORY[0x282171700](v13, v0 + 96, v12);
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 176);
  v39 = sub_22A4DD07C();
  __swift_project_value_buffer(v39, qword_27D8817F8);
  v40 = v38;
  v41 = sub_22A4DD05C();
  v42 = sub_22A4DDCEC();

  if (os_log_type_enabled(v41, v42))
  {
    v54 = v42;
    v44 = *(v0 + 192);
    v43 = *(v0 + 200);
    v46 = *(v0 + 176);
    v45 = *(v0 + 184);
    v47 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = v55;
    *v47 = 136315394;
    v48 = [v46 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v49 = sub_22A4DE5CC();
    v51 = v50;
    (*(v44 + 8))(v43, v45);
    v52 = sub_2295A3E30(v49, v51, &v56);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A598110, &v56);
    _os_log_impl(&dword_229538000, v41, v54, "[%s] %s No Valencia Thermostat Endpoints", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v55, -1, -1);
    MEMORY[0x22AAD4E50](v47, -1, -1);
  }

LABEL_13:
  v30 = *(v0 + 280);
  v31 = *(v0 + 248);
  v32 = *(v0 + 256);
  v34 = *(v0 + 232);
  v33 = *(v0 + 240);
  v36 = *(v0 + 200);
  v35 = *(v0 + 208);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_229833A34()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v6 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_229834434;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
    v4 = sub_229833B50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229833B50()
{
  v103 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v6 = *(v0 + 288);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    sub_22953EAE4(v3, &qword_27D881910, &qword_22A5855A0);
  }

  else
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    (*(v2 + 32))(v7, v3, v1);
    v9 = *(v2 + 16);
    v9(v8, v7, v1);
    v10 = (*(v2 + 88))(v8, v1);
    v11 = *MEMORY[0x277D17340];
    if (v10 == *MEMORY[0x277D17340] || v10 == *MEMORY[0x277D17338])
    {
      v13 = v10;
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 176);
      v15 = sub_22A4DD07C();
      __swift_project_value_buffer(v15, qword_27D8817F8);
      v16 = v14;
      v17 = sub_22A4DD05C();
      v18 = sub_22A4DDCCC();

      if (os_log_type_enabled(v17, v18))
      {
        v99 = v18;
        v20 = *(v0 + 192);
        v19 = *(v0 + 200);
        v22 = *(v0 + 176);
        v21 = *(v0 + 184);
        v23 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v102 = v96;
        *v23 = 136315650;
        v24 = [v22 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
        v25 = sub_22A4DE5CC();
        v27 = v26;
        (*(v20 + 8))(v19, v21);
        v28 = sub_2295A3E30(v25, v27, &v102);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A598110, &v102);
        *(v23 + 22) = 2080;
        *(v0 + 328) = v13 == v11;
        v29 = sub_22A4DD64C();
        v31 = sub_2295A3E30(v29, v30, &v102);

        *(v23 + 24) = v31;
        _os_log_impl(&dword_229538000, v17, v99, "[%s] %s Posting notification with reason: %s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v96, -1, -1);
        MEMORY[0x22AAD4E50](v23, -1, -1);
      }

      v88 = *(v0 + 304);
      v32 = v13 == v11;
      v94 = *(v0 + 296);
      v33 = *(v0 + 288);
      v100 = *(v0 + 280);
      v34 = *(v0 + 272);
      v97 = *(v0 + 264);
      v35 = *(v0 + 224);
      v90 = *(v0 + 216);
      v92 = *(v0 + 256);
      v36 = *(v0 + 176);
      v37 = [*(v0 + 168) notificationCenter];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 40) = v39;
      *(inited + 48) = v32;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      v40 = sub_22A4DD47C();

      logAndPostNotificationWithNotificationCenter(v37, @"HMDAccessoryAdaptiveTemperatureAutomationFailureDetected", v36, v40);

      (*(v35 + 8))(v92, v90);
      (*(v34 + 8))(v100, v97);
    }

    else
    {
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 256);
      v42 = *(v0 + 240);
      v43 = *(v0 + 216);
      v44 = *(v0 + 176);
      v45 = sub_22A4DD07C();
      __swift_project_value_buffer(v45, qword_27D8817F8);
      v9(v42, v41, v43);
      v46 = v44;
      v47 = sub_22A4DD05C();
      v48 = sub_22A4DDCCC();

      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 296);
      v98 = *(v0 + 304);
      v51 = *(v0 + 280);
      v53 = *(v0 + 264);
      v52 = *(v0 + 272);
      v101 = *(v0 + 256);
      v95 = *(v0 + 240);
      if (v49)
      {
        v83 = *(v0 + 224);
        v81 = *(v0 + 232);
        v82 = *(v0 + 216);
        v87 = v48;
        v93 = *(v0 + 280);
        v55 = *(v0 + 192);
        v54 = *(v0 + 200);
        log = v47;
        v56 = *(v0 + 176);
        v57 = *(v0 + 184);
        v89 = *(v0 + 288);
        v91 = *(v0 + 264);
        v58 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v102 = v85;
        *v58 = 136315650;
        v59 = [v56 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
        v60 = sub_22A4DE5CC();
        v84 = v50;
        v62 = v61;
        (*(v55 + 8))(v54, v57);
        v63 = sub_2295A3E30(v60, v62, &v102);

        *(v58 + 4) = v63;
        *(v58 + 12) = 2080;
        *(v58 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A598110, &v102);
        *(v58 + 22) = 2080;
        v9(v81, v95, v82);
        v64 = sub_22A4DD64C();
        v66 = v65;
        v67 = *(v83 + 8);
        v67(v95, v82);
        v68 = sub_2295A3E30(v64, v66, &v102);

        *(v58 + 24) = v68;
        _os_log_impl(&dword_229538000, log, v87, "[%s] %s Not handling notFollowingReason %s.", v58, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v85, -1, -1);
        MEMORY[0x22AAD4E50](v58, -1, -1);

        v67(v101, v82);
        (*(v52 + 8))(v93, v91);
        v67(*(v0 + 248), *(v0 + 216));
      }

      else
      {
        v69 = *(v0 + 216);
        v70 = *(v0 + 224);

        v71 = *(v70 + 8);
        v71(v95, v69);
        v71(v101, v69);
        (*(v52 + 8))(v51, v53);
        v71(*(v0 + 248), *(v0 + 216));
      }
    }
  }

  v72 = *(v0 + 280);
  v73 = *(v0 + 248);
  v74 = *(v0 + 256);
  v76 = *(v0 + 232);
  v75 = *(v0 + 240);
  v78 = *(v0 + 200);
  v77 = *(v0 + 208);

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_229834434()
{
  v49 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 176);
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 320);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  v12 = *(v0 + 280);
  v13 = *(v0 + 264);
  v14 = *(v0 + 272);
  if (v8)
  {
    v46 = *(v0 + 264);
    v47 = *(v0 + 280);
    v43 = *(v0 + 288);
    v44 = *(v0 + 304);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v45 = *(v0 + 296);
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v19 = 136315394;
    v20 = [v17 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0]);
    v21 = sub_22A4DE5CC();
    v41 = v7;
    v22 = v9;
    v24 = v23;
    (*(v16 + 8))(v15, v18);
    v25 = sub_2295A3E30(v21, v24, &v48);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    v28 = *(v0 + 152);
    v29 = sub_22A4DE6DC();
    v31 = sub_2295A3E30(v29, v30, &v48);

    *(v19 + 14) = v31;
    _os_log_impl(&dword_229538000, v6, v41, "[%s] Failed to read Valencia not following reason or hold context: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v42, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);

    (*(v14 + 8))(v47, v46);
  }

  else
  {

    (*(v14 + 8))(v12, v13);
  }

  v32 = *(v0 + 280);
  v33 = *(v0 + 248);
  v34 = *(v0 + 256);
  v36 = *(v0 + 232);
  v35 = *(v0 + 240);
  v38 = *(v0 + 200);
  v37 = *(v0 + 208);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t _s27UpdateSuggestedPresetReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s27UpdateSuggestedPresetReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}