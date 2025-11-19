uint64_t sub_2295B1CE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22A4DD07C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B1E14, v2, 0);
}

uint64_t sub_2295B1E14()
{
  v71 = v0;
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight;
  v3 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight);
  if (v3)
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[2];
    v8 = v3;
    v9 = [v8 identifier];
    sub_22A4DB79C();

    sub_2295B2378();
    LOBYTE(v7) = sub_22A4DD58C();
    (*(v5 + 8))(v4, v6);
    if (v7)
    {
      v10 = v0[3];
      v11 = *(v1 + v2);
      *(v1 + v2) = 0;

      v12 = v0[5];
      v13 = v0[6];
      v14 = v0[4];
      if (v10)
      {
        v15 = v0[3];
        (*(v13 + 16))(v0[8], v14 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v12);
        swift_retain_n();
        v16 = v8;
        v17 = v15;
        v18 = sub_22A4DD05C();
        v19 = sub_22A4DDCCC();

        v20 = os_log_type_enabled(v18, v19);
        v21 = v0[8];
        v23 = v0[5];
        v22 = v0[6];
        v24 = v0[4];
        if (v20)
        {
          v68 = v0[5];
          v25 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v70 = v65;
          *v25 = 136315906;
          v66 = v21;
          v26 = sub_22A4DB76C();
          v28 = sub_2295A3E30(v26, v27, &v70);

          *(v25 + 4) = v28;
          *(v25 + 12) = 2080;
          v29 = [v16 shortDescription];
          v30 = sub_22A4DD5EC();
          v63 = v19;
          v31 = v15;
          v33 = v32;

          v34 = sub_2295A3E30(v30, v33, &v70);
          v15 = v31;

          *(v25 + 14) = v34;
          *(v25 + 22) = 2112;
          v35 = v31;
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v25 + 24) = v36;
          *v64 = v36;
          *(v25 + 32) = 2048;
          v37 = *(v24 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount);

          *(v25 + 34) = v37;

          _os_log_impl(&dword_229538000, v18, v63, "[%s] Failed to send %s with error: %@. Sent: %lu times.", v25, 0x2Au);
          sub_22953EAE4(v64, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v64, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v65, -1, -1);
          MEMORY[0x22AAD4E50](v25, -1, -1);

          (*(v22 + 8))(v66, v68);
        }

        else
        {
          v56 = v0[4];

          (*(v22 + 8))(v21, v23);
        }

        v57 = v0[4];
        sub_2295B16A0(v16);
      }

      else
      {
        (*(v13 + 16))(v0[7], v14 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v12);
        v38 = v8;

        v39 = sub_22A4DD05C();
        v40 = sub_22A4DDCCC();

        v41 = os_log_type_enabled(v39, v40);
        v43 = v0[6];
        v42 = v0[7];
        v44 = v0[5];
        if (v41)
        {
          v69 = v0[7];
          v45 = v0[4];
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v70 = v47;
          *v46 = 136315394;
          v48 = sub_22A4DB76C();
          v50 = sub_2295A3E30(v48, v49, &v70);

          *(v46 + 4) = v50;
          *(v46 + 12) = 2080;
          v51 = [v38 shortDescription];
          v52 = sub_22A4DD5EC();
          v67 = v44;
          v54 = v53;

          v55 = sub_2295A3E30(v52, v54, &v70);

          *(v46 + 14) = v55;
          _os_log_impl(&dword_229538000, v39, v40, "[%s] Successfully sent %s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v47, -1, -1);
          MEMORY[0x22AAD4E50](v46, -1, -1);

          (*(v43 + 8))(v69, v67);
        }

        else
        {

          (*(v43 + 8))(v42, v44);
        }
      }
    }

    else
    {
    }
  }

  v58 = v0[11];
  v59 = v0[7];
  v60 = v0[8];

  v61 = v0[1];

  return v61();
}

unint64_t sub_2295B2378()
{
  result = qword_281403870;
  if (!qword_281403870)
  {
    sub_22A4DB7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403870);
  }

  return result;
}

uint64_t sub_2295B23D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA00, &qword_22A579B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295B2440()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_2295B0E78(v0);
}

uint64_t sub_2295B24D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2295B1014();
}

uint64_t HMDAccessorySetupMetricDispatcher.releaseDiscoveryAssertion(assertionHandle:)()
{
  type metadata accessor for AssertionHandle();
  swift_unknownObjectRetain();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(v1 + 16);
      v4 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

      os_unfair_lock_lock((v4 + 24));
      sub_2295B2DD4((v4 + 16), &v7);
      os_unfair_lock_unlock((v4 + 24));
      v5 = v7;

      sub_229714B54(v3);
      if (v5)
      {
        sub_2297145E4();
      }

      swift_unknownObjectRelease();
    }

    *(v1 + 32) = 0;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

id sub_2295B295C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *, uint64_t), char *a6, void *a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, char a16)
{
  v53 = a8;
  v51 = a4;
  v52 = a7;
  v54 = a5;
  v50 = a3;
  v18 = sub_22A4DB7DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v19 + 16);
  v55 = v24;
  v23(v22, a15);
  sub_229801D68();
  v26 = v25;
  v28 = v27;
  v29 = sub_229711EE0();
  v30 = *(a1 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);

  os_unfair_lock_lock((v30 + 24));
  v31 = *(v30 + 16);

  os_unfair_lock_unlock((v30 + 24));

  v32 = *(v31 + 16);
  if (!v32)
  {
    goto LABEL_4;
  }

  v33 = sub_229714F44(*(v31 + 16), 0);
  v34 = *(sub_22A4DBB4C() - 8);
  v35 = sub_22971528C(v59, (v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80))), v32, v31);
  sub_22953EE84();
  if (v35 != v32)
  {
    __break(1u);
LABEL_4:

    v33 = MEMORY[0x277D84F90];
  }

  sub_2297D06C8(v50, v51, 0, v52, v53, v26, v28, v54, v59, a6, v29, v33, a9, a10, v54, a6, a11, a12, a13, a14, a16 & 1);

  v58[3] = &type metadata for Metric.Setup.NetworkInfo;
  v58[4] = &off_283CE5B70;
  v36 = swift_allocObject();
  v58[0] = v36;
  v37 = v59[13];
  *(v36 + 208) = v59[12];
  *(v36 + 224) = v37;
  *(v36 + 240) = v60;
  v38 = v59[9];
  *(v36 + 144) = v59[8];
  *(v36 + 160) = v38;
  v39 = v59[11];
  *(v36 + 176) = v59[10];
  *(v36 + 192) = v39;
  v40 = v59[5];
  *(v36 + 80) = v59[4];
  *(v36 + 96) = v40;
  v41 = v59[7];
  *(v36 + 112) = v59[6];
  *(v36 + 128) = v41;
  v42 = v59[1];
  *(v36 + 16) = v59[0];
  *(v36 + 32) = v42;
  v43 = v59[3];
  *(v36 + 48) = v59[2];
  *(v36 + 64) = v43;
  v44 = type metadata accessor for Metric.LogEventAdaptor();
  v45 = objc_allocWithZone(v44);
  v46 = &v45[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_name];
  *v46 = 0xD000000000000035;
  *(v46 + 1) = 0x800000022A58C0C0;
  sub_22957F1C4(v58, &v45[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event]);
  *&v45[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_coreAnalyticsEventOptions] = 2;
  sub_2295B2DF0(v59, &v57);
  v47 = sub_22A4DB77C();
  v56.receiver = v45;
  v56.super_class = v44;
  v48 = objc_msgSendSuper2(&v56, sel_initWithHomeUUID_, v47);

  sub_2295B2E4C(v59);
  (*(v19 + 8))(v22, v55);
  __swift_destroy_boxed_opaque_existential_0(v58);
  return v48;
}

uint64_t _sSo33HMDAccessorySetupMetricDispatcherC13HomeKitDaemonE24obtainDiscoveryAssertionyXlyF_0()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2297B3744();

  if (v1)
  {
    type metadata accessor for AssertionHandle();
    v2 = swift_allocObject();
    sub_2297B9494(v1, 0xD000000000000014, 0x800000022A58C0A0, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D840, &qword_22A578DC8);
  v3 = sub_22A4DDF8C();

  return v3;
}

uint64_t sub_2295B3164(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DB7DC();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v44 - v12;
  v14 = sub_22A4DD07C();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2297A46D4();
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = v5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v47 = v2;
    v45 = v22;
    v53 = v22;
    *v21 = 136315138;
    v23 = sub_2295B8B7C();
    v46 = v6;
    v25 = ObjectType;
    v26 = a1;
    v27 = v13;
    v28 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = sub_2295A3E30(v23, v24, &v53);
    v6 = v46;

    *(v21 + 4) = v29;
    v8 = v28;
    v13 = v27;
    a1 = v26;
    ObjectType = v25;
    _os_log_impl(&dword_229538000, v18, v19, "%s Received request to clear local activity history", v21, 0xCu);
    v30 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    v2 = v47;
    MEMORY[0x22AAD4E50](v30, -1, -1);
    v31 = v21;
    v5 = v48;
    MEMORY[0x22AAD4E50](v31, -1, -1);
  }

  (*(v49 + 8))(v17, v50);
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = ObjectType;
  v33 = sub_22A4DD9DC();
  (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
  v34 = a1;
  v35 = [v2 spiClientIdentifier];
  v36 = v51;
  sub_22A4DB79C();

  v38 = v52 + 32;
  v37 = *(v52 + 32);
  v37(v8, v36, v5);
  v39 = (*(v38 + 48) + 32) & ~*(v38 + 48);
  v40 = v39 + v6;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v37((v41 + v39), v8, v5);
  *(v41 + v40) = 0;
  v42 = v41 + (v40 & 0xFFFFFFFFFFFFFFF8);
  *(v42 + 8) = sub_2295B980C;
  *(v42 + 16) = v32;
  sub_22957F3C0(0, 0, v13, &unk_22A578F38, v41);
}

void sub_2295B357C(void *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  if (a1)
  {
    v12 = a1;
    sub_2297A46D4();
    v13 = a1;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v37 = a2;
      v38 = v19;
      v20 = v19;
      *v16 = 136315394;
      v21 = sub_2295B8B7C();
      v23 = sub_2295A3E30(v21, v22, &v38);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2112;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v25;
      *v18 = v25;
      _os_log_impl(&dword_229538000, v14, v15, "%s Failed to clear local activity history: %@", v16, 0x16u);
      sub_22953EAE4(v18, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v26 = v20;
      a2 = v37;
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);

      (*(v5 + 8))(v11, v36);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    v34 = sub_22A4DB3DC();
    [a2 respondWithError_];
  }

  else
  {
    sub_2297A46D4();
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDD0C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      v31 = sub_2295B8B7C();
      v33 = sub_2295A3E30(v31, v32, &v38);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_229538000, v27, v28, "%s Successfully cleared local activity history", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    [a2 respondWithSuccess];
  }
}

void sub_2295B3974()
{
  v1 = [v0 hindsightCloudShareManager];
  [v1 synchronize];

  v2 = [v0 swiftExtensions];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *&v3[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager];
  swift_unknownObjectRelease();
  [v4 synchronize];
}

void sub_2295B3A98()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v62 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  v13 = sub_22A4DB7DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v1 currentUser];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 accountHandle];
    if (v20)
    {
      v21 = v20;
      v65 = v19;
      v66 = v3;
      v22 = [v1 uuid];
      sub_22A4DB79C();

      v23 = objc_allocWithZone(HMDRemoteAccountMessageDestination);
      v24 = v21;
      v25 = sub_22A4DB77C();
      v26 = ObjectType;
      v27 = [v23 initWithTarget:v25 handle:v24 multicast:1];

      (*(v14 + 8))(v17, v13);
      v28 = objc_opt_self();
      v29 = @"HMDHome.ActivityHistory.Clear.Broadcast";
      sub_22956AC5C(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v30 = sub_22A4DD47C();

      v64 = v27;
      v31 = v27;
      v32 = v26;
      v33 = [v28 secureMessageWithName:v29 qualityOfService:25 destination:v31 messagePayload:v30];

      sub_2297A46D4();
      v34 = sub_22A4DD05C();
      v35 = sub_22A4DDCCC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v63 = v24;
        v38 = v37;
        aBlock[0] = v37;
        *v36 = 136315138;
        v39 = sub_2295B8B7C();
        v41 = sub_2295A3E30(v39, v40, aBlock);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_229538000, v34, v35, "%s Broadcasting to clear activity history on other devices", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        v42 = v38;
        v24 = v63;
        MEMORY[0x22AAD4E50](v42, -1, -1);
        MEMORY[0x22AAD4E50](v36, -1, -1);
      }

      (*(v67 + 8))(v12, v66);
      v43 = [v1 msgDispatcher];
      v44 = v65;
      if (v43)
      {
        v45 = v43;
        v46 = swift_allocObject();
        *(v46 + 16) = v32;
        aBlock[4] = sub_2295B9804;
        aBlock[5] = v46;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2295AAF60;
        aBlock[3] = &block_descriptor_35;
        v47 = _Block_copy(aBlock);

        [v45 sendMessage:v33 completionHandler:v47];
        _Block_release(v47);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_2297A46D4();
      v55 = sub_22A4DD05C();
      v56 = sub_22A4DDCEC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock[0] = v58;
        *v57 = 136315138;
        v59 = sub_2295B8B7C();
        v61 = sub_2295A3E30(v59, v60, aBlock);

        *(v57 + 4) = v61;
        _os_log_impl(&dword_229538000, v55, v56, "%s Cannot broadcast to clear activity history on other devices, no account handle for current user", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x22AAD4E50](v58, -1, -1);
        MEMORY[0x22AAD4E50](v57, -1, -1);
      }

      (*(v67 + 8))(v10, v3);
    }
  }

  else
  {
    sub_2297A46D4();
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCEC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136315138;
      v52 = sub_2295B8B7C();
      v54 = sub_2295A3E30(v52, v53, aBlock);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_229538000, v48, v49, "%s Cannot broadcast to clear activity history on other devices, no current user", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v50, -1, -1);
    }

    (*(v67 + 8))(v7, v3);
  }
}

uint64_t sub_2295B4150(void *a1)
{
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  if (a1)
  {
    v10 = a1;
    sub_2297A46D4();
    v11 = a1;
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = v2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v34 = v17;
      *v14 = 136315394;
      v18 = sub_2295B8B7C();
      v20 = sub_2295A3E30(v18, v19, &v34);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v22;
      *v16 = v22;
      _os_log_impl(&dword_229538000, v12, v13, "%s Failed to send clear broadcast to other devices: %@", v14, 0x16u);
      sub_22953EAE4(v16, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);

      return (*(v3 + 8))(v9, v33);
    }

    v31 = *(v3 + 8);
    v32 = v9;
  }

  else
  {
    sub_2297A46D4();
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDD0C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315138;
      v28 = sub_2295B8B7C();
      v30 = sub_2295A3E30(v28, v29, &v34);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_229538000, v24, v25, "%s Successfully sent clear broadcast to other devices", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    v31 = *(v3 + 8);
    v32 = v7;
  }

  return v31(v32, v2);
}

uint64_t sub_2295B44E4()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v13)
  {
    if ([v0 didOnboardEventLog])
    {
      sub_2297A46D4();
      v14 = sub_22A4DD05C();
      v15 = sub_22A4DDCDC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v33 = v17;
        *v16 = 136315138;
        v18 = sub_2295B8B7C();
        v20 = sub_2295A3E30(v18, v19, &v33);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_229538000, v14, v15, "%s Already onboarded", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x22AAD4E50](v17, -1, -1);
        MEMORY[0x22AAD4E50](v16, -1, -1);
      }

      return (*(v2 + 8))(v8, v1);
    }

    else
    {
      v29 = sub_22A4DD9DC();
      (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v0;
      v31 = v0;
      sub_22957F3C0(0, 0, v12, &unk_22A578EF0, v30);
    }
  }

  else
  {
    sub_2297A46D4();
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCCC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = sub_2295B8B7C();
      v28 = sub_2295A3E30(v26, v27, &v33);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_229538000, v22, v23, "%s Skipping onboarding check, feature flag disabled", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }
}

uint64_t sub_2295B48C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_2295B4954();
}

uint64_t sub_2295B4954()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_2295B4A4C;

  return sub_2295B6B8C();
}

uint64_t sub_2295B4A4C(char a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_2295B4B4C, 0, 0);
}

uint64_t sub_2295B4B4C()
{
  v24 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 80) == 1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 48);
    sub_2297A46D4();
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDD0C();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    if (v6)
    {
      v10 = *(v0 + 24);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      v13 = sub_2295B8B7C();
      v15 = sub_2295A3E30(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_229538000, v4, v5, "%s Fixing onboarding flag", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AAD4E50](v12, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
    v16 = swift_task_alloc();
    *(v0 + 64) = v16;
    *(v16 + 16) = *(v0 + 16);
    v17 = *(MEMORY[0x277D859E0] + 4);
    v18 = swift_task_alloc();
    *(v0 + 72) = v18;
    *v18 = v0;
    v18[1] = sub_2295B4DA8;
    v19 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v18, 0, 0, 0xD00000000000002CLL, 0x800000022A58C1D0, sub_2295B957C, v16, v19);
  }

  else
  {
    v20 = *(v0 + 48);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2295B4DA8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295B4EC0, 0, 0);
}

uint64_t sub_2295B4EC0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295B4F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DB74C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B509C, 0, 0);
}

uint64_t sub_2295B509C()
{
  v1 = v0[11];
  v2 = v0[3];
  sub_2297A46D4();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_229538000, v3, v4, "Writing fake event into newly created cloud zone", v5, 2u);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v6 = v0[11];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[6];

  v10 = *(v8 + 8);
  v0[12] = v10;
  v10(v6, v7);
  sub_22A4DB71C();
  v11 = *(MEMORY[0x277D17640] + 4);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_2295B51FC;
  v13 = v0[6];
  v14 = v0[2];

  return MEMORY[0x282171BF8](v13, v14, 1);
}

uint64_t sub_2295B51FC()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2295B5490;
  }

  else
  {
    v6 = sub_2295B536C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2295B536C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  sub_2297A46D4();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_229538000, v3, v4, "Successfully wrote fake event", v5, 2u);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = *(v0 + 64) + 8;
  (*(v0 + 96))(*(v0 + 80), *(v0 + 56));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2295B5490()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  sub_2297A46D4();
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_229538000, v5, v6, "Failed to write fake event: %@", v9, 0xCu);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 80);
  v15 = *(v0 + 48);
  v16 = *(v0 + 64) + 8;
  (*(v0 + 96))(*(v0 + 72), *(v0 + 56));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2295B587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = *(MEMORY[0x277D17630] + 4);
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_2295B5920;

  return MEMORY[0x282171BE8](a4, a5);
}

uint64_t sub_2295B5920()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2295B5A9C;
  }

  else
  {
    v3 = sub_2295B5A34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295B5A34()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295B5A9C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2295B5B28()
{
  *(v1 + 72) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0) - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B5BC4, 0, 0);
}

uint64_t sub_2295B5BC4()
{
  v1 = v0[9];
  v2 = [objc_allocWithZone(type metadata accessor for ResidentDiscoveryListener()) init];
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D918, &unk_22A578F20);
  *v5 = v0;
  v5[1] = sub_2295B5CEC;

  return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD000000000000019, 0x800000022A58C2C0, sub_2295B978C, v3, v6);
}

uint64_t sub_2295B5CEC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_2295B5F00;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_2295B5E08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2295B5E08()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  swift_beginAccess();
  sub_2295B9794(v1, v2 + v5);
  swift_endAccess();

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_2295B5F00()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  swift_beginAccess();
  sub_2295B9794(v3, v2 + v5);
  swift_endAccess();

  v6 = v0[1];
  v7 = v0[14];

  return v6();
}

uint64_t sub_2295B5FF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  swift_beginAccess();
  sub_2295B9794(v9, a2 + v12);
  swift_endAccess();
  [objc_msgSend(a3 residentDeviceManager)];
  return swift_unknownObjectRelease();
}

uint64_t sub_2295B6168()
{
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B6258, 0, 0);
}

uint64_t sub_2295B6258()
{
  v1 = [objc_msgSend(*(v0 + 24) residentDeviceManager)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    v6 = *(v0 + 8);

    return v6(1);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_2295B6384;
    v9 = *(v0 + 24);

    return sub_2295B5B28();
  }
}

uint64_t sub_2295B6384(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_2295B67E0;
  }

  else
  {
    v5 = sub_2295B6498;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2295B6498()
{
  v45 = v0;
  v1 = v0[12];
  v2 = v0[4];
  if (v1)
  {
    v3 = v0[10];
    sub_2297A46D4();
    v4 = v1;
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();

    if (os_log_type_enabled(v5, v6))
    {
      v42 = v0[10];
      v7 = v0[6];
      v40 = v0[12];
      v41 = v0[5];
      v8 = v0[4];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43 = v1;
      v44 = swift_slowAlloc();
      v11 = v44;
      *v9 = 136315394;
      v12 = sub_2295B8B7C();
      v14 = sub_2295A3E30(v12, v13, &v44);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v4;
      *v10 = v40;
      v15 = v4;
      _os_log_impl(&dword_229538000, v5, v6, "%s Discovery succeeded, found primary resident: %@", v9, 0x16u);
      sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      v16 = v11;
      v1 = v43;
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);

      (*(v7 + 8))(v42, v41);
    }

    else
    {
      v31 = v0[10];
      v32 = v0[5];
      v33 = v0[6];

      (*(v33 + 8))(v31, v32);
    }
  }

  else
  {
    v17 = v0[9];
    sub_2297A46D4();
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCCC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[9];
    v22 = v0[5];
    v23 = v0[6];
    if (v20)
    {
      v24 = v0[4];
      v25 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v26 = v44;
      *v25 = 136315138;
      v27 = sub_2295B8B7C();
      v29 = sub_2295A3E30(v27, v28, &v44);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_229538000, v18, v19, "%s Discovery succeeded, no primary resident found", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v30 = v26;
      v1 = 0;
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
  }

  v35 = v0[9];
  v34 = v0[10];
  v37 = v0[7];
  v36 = v0[8];

  v38 = v0[1];

  return v38(v1 != 0);
}

uint64_t sub_2295B67E0()
{
  v46 = v0;
  v1 = v0[13];
  type metadata accessor for Code(0);
  v0[2] = 91;
  v2 = v1;
  sub_2295B9744(&qword_27D87D910, type metadata accessor for Code);
  v3 = sub_22A4DB32C();

  v4 = v0[13];
  v5 = v0[4];
  if (v3)
  {
    v6 = v0[8];

    sub_2297A46D4();
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[8];
    v12 = v0[5];
    v11 = v0[6];
    if (v9)
    {
      v13 = v0[4];
      v43 = v3;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v45 = v15;
      *v14 = 136315138;
      v16 = sub_2295B8B7C();
      v18 = sub_2295A3E30(v16, v17, &v45);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_229538000, v7, v8, "%s Discovery failed, no primary resident found", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAD4E50](v15, -1, -1);
      v19 = v14;
      v3 = v43;
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }
  }

  else
  {
    v20 = v0[7];
    sub_2297A46D4();
    v21 = v4;
    v7 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    v23 = os_log_type_enabled(v7, v22);
    v24 = v0[13];
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    if (v23)
    {
      v42 = v0[7];
      v25 = v0[4];
      v44 = v3;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v26 = 136315394;
      v29 = sub_2295B8B7C();
      v41 = v12;
      v31 = sub_2295A3E30(v29, v30, &v45);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2112;
      v32 = v24;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_229538000, v7, v22, "%s Discovery failed, there could be a primary resident: %@", v26, 0x16u);
      sub_22953EAE4(v27, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      v34 = v26;
      v3 = v44;
      MEMORY[0x22AAD4E50](v34, -1, -1);

      (*(v11 + 8))(v42, v41);
      goto LABEL_8;
    }
  }

  (*(v11 + 8))(v10, v12);
LABEL_8:
  v36 = v0[9];
  v35 = v0[10];
  v38 = v0[7];
  v37 = v0[8];

  v39 = v0[1];

  return v39((v3 & 1) == 0);
}

uint64_t sub_2295B6B8C()
{
  v1[20] = v0;
  v1[21] = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D900, &qword_22A578F08);
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  v5 = sub_22A4DD07C();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B6D2C, 0, 0);
}

uint64_t sub_2295B6D2C()
{
  v121 = v0;
  v1 = [v0[20] homeManager];
  v0[37] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 appData];
    v0[38] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = [v3 applicationDataForIdentifier_];
      if (v5 && (v6 = v5, v7 = sub_22A4DD49C(), v6, v8 = sub_22976F484(v7), v0[39] = v8, , v8))
      {
        v9 = v0[36];
        v10 = v0[21];
        sub_2297A46D4();

        v11 = sub_22A4DD05C();
        v12 = sub_22A4DDCDC();

        v13 = os_log_type_enabled(v11, v12);
        v14 = v0[36];
        v15 = v0[26];
        v112 = v0[25];
        if (v13)
        {
          v109 = v0[36];
          v16 = v0[21];
          v17 = swift_slowAlloc();
          v115 = v0;
          v120 = swift_slowAlloc();
          v18 = v120;
          *v17 = 136315394;
          v19 = sub_2295B8B7C();
          v21 = sub_2295A3E30(v19, v20, &v120);

          *(v17 + 4) = v21;
          *(v17 + 12) = 2080;
          v22 = sub_22A4DD4AC();
          v24 = sub_2295A3E30(v22, v23, &v120);

          *(v17 + 14) = v24;
          _os_log_impl(&dword_229538000, v11, v12, "%s Home manager app data: %s", v17, 0x16u);
          swift_arrayDestroy();
          v25 = v18;
          v0 = v115;
          MEMORY[0x22AAD4E50](v25, -1, -1);
          MEMORY[0x22AAD4E50](v17, -1, -1);

          v26 = *(v15 + 8);
          v26(v109, v112);
        }

        else
        {

          v26 = *(v15 + 8);
          v26(v14, v112);
        }

        v0[40] = v26;
        v85 = v0[21];
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v87 = sub_22A4DD47C();
        LODWORD(ObjCClassFromMetadata) = [ObjCClassFromMetadata didHomeAppOnboardHindsightWithAppData_];

        if (ObjCClassFromMetadata)
        {
          v88 = [v2 fmfHandler];
          v0[41] = v88;
          if (v88)
          {
            v89 = v88;
            v91 = v0[23];
            v90 = v0[24];
            v92 = v0[22];
            v0[2] = v0;
            v0[7] = v0 + 18;
            v0[3] = sub_2295B7710;
            swift_continuation_init();
            v0[17] = v92;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
            sub_2295B96E0();
            sub_22A4DD8DC();
            (*(v91 + 32))(boxed_opaque_existential_1, v90, v92);
            v0[10] = MEMORY[0x277D85DD0];
            v0[11] = 1107296256;
            v0[12] = sub_2295B819C;
            v0[13] = &block_descriptor_25;
            [v89 queryFMFStatusWithCompletion_];
            (*(v91 + 8))(boxed_opaque_existential_1, v92);
            v88 = v0 + 2;
          }

          else
          {
            __break(1u);
          }

          return MEMORY[0x282200938](v88);
        }

        v94 = v0[30];
        v95 = v0[21];

        sub_2297A46D4();
        v96 = sub_22A4DD05C();
        v97 = sub_22A4DDCCC();
        v98 = os_log_type_enabled(v96, v97);
        v99 = v0[30];
        v100 = v0[25];
        v101 = v0[26];
        if (v98)
        {
          v119 = v0[26];
          v102 = v0[21];
          v114 = v0[25];
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v120 = v104;
          *v103 = 136315138;
          v105 = sub_2295B8B7C();
          v111 = v99;
          v107 = sub_2295A3E30(v105, v106, &v120);

          *(v103 + 4) = v107;
          _os_log_impl(&dword_229538000, v96, v97, "%s Home manager app data indicates onboarding has not happened yet", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v104);
          MEMORY[0x22AAD4E50](v104, -1, -1);
          MEMORY[0x22AAD4E50](v103, -1, -1);

          v26(v111, v114);
        }

        else
        {

          v26(v99, v100);
        }
      }

      else
      {
        v41 = v0[29];
        v42 = v0[21];
        sub_2297A46D4();
        v43 = v4;
        v44 = sub_22A4DD05C();
        v45 = sub_22A4DDCCC();

        v46 = os_log_type_enabled(v44, v45);
        v47 = v0[29];
        v48 = v0[25];
        v49 = v0[26];
        if (v46)
        {
          v113 = v0[25];
          v50 = v0[21];
          v51 = swift_slowAlloc();
          v110 = v47;
          v52 = swift_slowAlloc();
          v116 = v0;
          v120 = swift_slowAlloc();
          v53 = v120;
          *v51 = 136315394;
          v54 = sub_2295B8B7C();
          log = v44;
          v56 = sub_2295A3E30(v54, v55, &v120);

          *(v51 + 4) = v56;
          *(v51 + 12) = 2112;
          *(v51 + 14) = v43;
          *v52 = v4;
          v57 = v43;
          _os_log_impl(&dword_229538000, log, v45, "%s Skipping onboarding check, no app data dictionary: %@", v51, 0x16u);
          sub_22953EAE4(v52, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v52, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v53);
          v58 = v53;
          v0 = v116;
          MEMORY[0x22AAD4E50](v58, -1, -1);
          MEMORY[0x22AAD4E50](v51, -1, -1);

          (*(v49 + 8))(v110, v113);
        }

        else
        {

          (*(v49 + 8))(v47, v48);
        }
      }
    }

    else
    {
      v59 = v0[28];
      v60 = v0[21];
      sub_2297A46D4();
      v61 = sub_22A4DD05C();
      v62 = sub_22A4DDCCC();
      v63 = os_log_type_enabled(v61, v62);
      v64 = v0[28];
      v66 = v0[25];
      v65 = v0[26];
      if (v63)
      {
        v67 = v0[21];
        v117 = v0[28];
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v120 = v69;
        *v68 = 136315138;
        v70 = sub_2295B8B7C();
        v72 = sub_2295A3E30(v70, v71, &v120);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_229538000, v61, v62, "%s Skipping onboarding check, no app data", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x22AAD4E50](v69, -1, -1);
        MEMORY[0x22AAD4E50](v68, -1, -1);

        (*(v65 + 8))(v117, v66);
      }

      else
      {

        (*(v65 + 8))(v64, v66);
      }
    }
  }

  else
  {
    v27 = v0[27];
    v28 = v0[21];
    sub_2297A46D4();
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCFC();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[26];
    v32 = v0[27];
    v34 = v0[25];
    if (v31)
    {
      v35 = v0[21];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v120 = v37;
      *v36 = 136315138;
      v38 = sub_2295B8B7C();
      v40 = sub_2295A3E30(v38, v39, &v120);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_229538000, v29, v30, "%s No home manager", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    (*(v33 + 8))(v32, v34);
  }

  v74 = v0[35];
  v73 = v0[36];
  v76 = v0[33];
  v75 = v0[34];
  v78 = v0[31];
  v77 = v0[32];
  v80 = v0[29];
  v79 = v0[30];
  v82 = v0[27];
  v81 = v0[28];
  v118 = v0[24];

  v83 = v0[1];

  return v83(0);
}

uint64_t sub_2295B7710()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2295B77F0, 0, 0);
}

uint64_t sub_2295B77F0()
{
  v79 = v0;
  v1 = v0[41];
  v2 = v0[18];
  v3 = [v2 value];

  swift_unknownObjectRelease();
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = v0[39];
        v5 = v0[33];
        v6 = v0[21];

        sub_2297A46D4();
        v7 = sub_22A4DD05C();
        v8 = sub_22A4DDCDC();
        v9 = os_log_type_enabled(v7, v8);
        v10 = v0[40];
        v11 = v0[33];
        v12 = v0[25];
        v13 = v0[26];
        if (v9)
        {
          v14 = v0[21];
          v75 = v0[40];
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v78[0] = v16;
          *v15 = 136315138;
          v17 = sub_2295B8B7C();
          v19 = sub_2295A3E30(v17, v18, v78);

          *(v15 + 4) = v19;
          v20 = "%s No designated Find My device";
LABEL_20:
          _os_log_impl(&dword_229538000, v7, v8, v20, v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x22AAD4E50](v16, -1, -1);
          MEMORY[0x22AAD4E50](v15, -1, -1);

          v75(v11, v12);
LABEL_22:
          v71 = swift_task_alloc();
          v0[42] = v71;
          *v71 = v0;
          v71[1] = sub_2295B7E4C;
          v72 = v0[20];

          return sub_2295B6168();
        }

        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v42 = v0[39];
    v43 = v0[35];
    v44 = v0[21];

    sub_2297A46D4();
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCCC();
    v45 = os_log_type_enabled(v24, v25);
    v27 = v0[40];
    v29 = v0[37];
    v28 = v0[38];
    v30 = v0[35];
    v31 = v0[25];
    v46 = v0[26];
    if (v45)
    {
      v76 = v0[35];
      v47 = v0[21];
      v74 = v0[40];
      v34 = swift_slowAlloc();
      v73 = v31;
      v35 = swift_slowAlloc();
      v78[0] = v35;
      *v34 = 136315138;
      v48 = sub_2295B8B7C();
      v50 = sub_2295A3E30(v48, v49, v78);

      *(v34 + 4) = v50;
      v39 = "%s Skipping onboarding fix, Find My status is unknown";
      goto LABEL_13;
    }

LABEL_14:

    v27(v30, v31);
    goto LABEL_15;
  }

  if (v3 == 2)
  {
    v62 = v0[39];
    v63 = v0[32];
    v64 = v0[21];

    sub_2297A46D4();
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCDC();
    v65 = os_log_type_enabled(v7, v8);
    v10 = v0[40];
    v11 = v0[32];
    v12 = v0[25];
    v66 = v0[26];
    if (v65)
    {
      v67 = v0[21];
      v75 = v0[40];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v78[0] = v16;
      *v15 = 136315138;
      v68 = sub_2295B8B7C();
      v70 = sub_2295A3E30(v68, v69, v78);

      *(v15 + 4) = v70;
      v20 = "%s This is the designated Find My device";
      goto LABEL_20;
    }

LABEL_21:

    v10(v11, v12);
    goto LABEL_22;
  }

  if (v3 != 3)
  {
LABEL_10:
    sub_22A4DE1FC();

    v78[0] = 0xD00000000000001ALL;
    v78[1] = 0x800000022A58C2A0;
    v0[19] = v3;
    type metadata accessor for HMDFMFStatus(0);
    v40 = sub_22A4DBA6C();
    MEMORY[0x22AAD08C0](v40);

    return sub_22A4DE39C();
  }

  v21 = v0[39];
  v22 = v0[34];
  v23 = v0[21];

  sub_2297A46D4();
  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCCC();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[40];
  v29 = v0[37];
  v28 = v0[38];
  v30 = v0[34];
  v31 = v0[25];
  v32 = v0[26];
  if (!v26)
  {
    goto LABEL_14;
  }

  v76 = v0[34];
  v33 = v0[21];
  v74 = v0[40];
  v34 = swift_slowAlloc();
  v73 = v31;
  v35 = swift_slowAlloc();
  v78[0] = v35;
  *v34 = 136315138;
  v36 = sub_2295B8B7C();
  v38 = sub_2295A3E30(v36, v37, v78);

  *(v34 + 4) = v38;
  v39 = "%s Skipping onboarding fix, another devices is designated as the Find My device";
LABEL_13:
  _os_log_impl(&dword_229538000, v24, v25, v39, v34, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v35);
  MEMORY[0x22AAD4E50](v35, -1, -1);
  MEMORY[0x22AAD4E50](v34, -1, -1);

  v74(v76, v73);
LABEL_15:
  v52 = v0[35];
  v51 = v0[36];
  v54 = v0[33];
  v53 = v0[34];
  v56 = v0[31];
  v55 = v0[32];
  v58 = v0[29];
  v57 = v0[30];
  v60 = v0[27];
  v59 = v0[28];
  v77 = v0[24];

  v61 = v0[1];

  return v61(0);
}

uint64_t sub_2295B7E4C(char a1)
{
  v2 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_2295B7F4C, 0, 0);
}

uint64_t sub_2295B7F4C()
{
  v37 = v0;
  v35 = *(v0 + 344);
  if (v35 == 1)
  {
    v1 = *(v0 + 248);
    v2 = *(v0 + 168);
    sub_2297A46D4();
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCCC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 320);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 248);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    if (v5)
    {
      v33 = *(v0 + 248);
      v12 = *(v0 + 168);
      v32 = *(v0 + 320);
      v13 = swift_slowAlloc();
      v31 = v10;
      v14 = swift_slowAlloc();
      v36 = v14;
      *v13 = 136315138;
      v15 = sub_2295B8B7C();
      v17 = sub_2295A3E30(v15, v16, &v36);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_229538000, v3, v4, "%s Skipping onboarding fix, home has residents", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);

      v32(v33, v31);
    }

    else
    {

      v6(v9, v10);
    }
  }

  else
  {
    v18 = *(v0 + 296);
  }

  v20 = *(v0 + 280);
  v19 = *(v0 + 288);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  v26 = *(v0 + 232);
  v25 = *(v0 + 240);
  v28 = *(v0 + 216);
  v27 = *(v0 + 224);
  v34 = *(v0 + 192);

  v29 = *(v0 + 8);

  return v29(v35 ^ 1u);
}

uint64_t sub_2295B819C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D900, &qword_22A578F08);
  return sub_22A4DD8FC();
}

uint64_t sub_2295B81FC(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a3;
  v28 = sub_22A4DD26C();
  v31 = *(v28 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD29C();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = [a2 workQueue];
  (*(v13 + 16))(v16, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v16, v12);
  *(v19 + v18) = a2;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_2295B9584;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_3;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  sub_22A4DD28C();
  v32 = MEMORY[0x277D84F90];
  sub_2295B9744(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v22 = v28;
  sub_22A4DE03C();
  v23 = v26;
  MEMORY[0x22AAD0F80](0, v11, v7, v20);
  _Block_release(v20);

  (*(v31 + 8))(v7, v22);
  (*(v29 + 8))(v11, v30);
}

void sub_2295B85AC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = sub_22A4DD5AC();
  v12 = [objc_opt_self() allMessageDestinations];
  v13 = [objc_allocWithZone(MEMORY[0x277D0F848]) initWithName:v11 destination:v12 payload:0];

  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_2295B9628;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_22;
  v16 = _Block_copy(aBlock);

  [v13 setResponseHandler_];
  _Block_release(v16);
  [a2 _setDidOnboardEventLog_message_];
}

uint64_t sub_2295B8808(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  if (!a1)
  {
    sub_2297A46D4();
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDD0C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315138;
      v31 = sub_2295B8B7C();
      v33 = sub_2295A3E30(v31, v32, &v40);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_229538000, v27, v28, "%s Successfully fixed onboarding flag", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    v34 = *(v6 + 8);
    v35 = v10;
    goto LABEL_8;
  }

  v13 = a1;
  sub_2297A46D4();
  v14 = a1;
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v15, v16))
  {

    v34 = *(v6 + 8);
    v35 = v12;
LABEL_8:
    v34(v35, v5);
    goto LABEL_9;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v38 = v5;
  v19 = v18;
  v20 = swift_slowAlloc();
  v39 = a3;
  v40 = v20;
  v21 = v20;
  *v17 = 136315394;
  v22 = sub_2295B8B7C();
  v24 = sub_2295A3E30(v22, v23, &v40);

  *(v17 + 4) = v24;
  *(v17 + 12) = 2112;
  v25 = a1;
  v26 = _swift_stdlib_bridgeErrorToNSError();
  *(v17 + 14) = v26;
  *v19 = v26;
  _os_log_impl(&dword_229538000, v15, v16, "%s Failed to fix onboarding flag: %@", v17, 0x16u);
  sub_22953EAE4(v19, &qword_27D87D7D0, &unk_22A578D90);
  MEMORY[0x22AAD4E50](v19, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v21);
  MEMORY[0x22AAD4E50](v21, -1, -1);
  MEMORY[0x22AAD4E50](v17, -1, -1);

  (*(v6 + 8))(v12, v38);
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  return sub_22A4DD8FC();
}

uint64_t sub_2295B8B7C()
{
  swift_getObjCClassFromMetadata();
  v0 = +[HMDHome hindsightLogPrefix];
  v1 = sub_22A4DD5EC();

  return v1;
}

id sub_2295B8C74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResidentDiscoveryListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ResidentDiscoveryListener()
{
  result = qword_27D87D860;
  if (!qword_27D87D860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2295B8D34()
{
  sub_2295B8DC4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2295B8DC4()
{
  if (!qword_27D87D870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D878, "6o\b");
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87D870);
    }
  }
}

uint64_t sub_2295B8F44(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  if (a2)
  {
    swift_beginAccess();
    sub_2295B9338(v2 + v12, v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
    v14 = *(v13 - 8);
    result = (*(v14 + 48))(v11, 1, v13);
    if (result != 1)
    {
      v20 = a2;
      v16 = a2;
      sub_22A4DD8EC();
      return (*(v14 + 8))(v11, v13);
    }

    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  sub_2295B9338(v2 + v12, v9);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v9, 1, v17);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v20 = a1;
  v19 = a1;
  sub_22A4DD8FC();
  return (*(v18 + 8))(v9, v17);
}

uint64_t sub_2295B916C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v13 - v5;
  v7 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  swift_beginAccess();
  sub_2295B9338(v1 + v7, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v11 = a1;
    }

    else
    {
      type metadata accessor for HMError(0);
      v13[1] = -1;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_2295B9744(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      v11 = v14;
    }

    v14 = v11;
    v12 = a1;
    sub_22A4DD8EC();
    return (*(v9 + 8))(v6, v8);
  }

  return result;
}

uint64_t sub_2295B9338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295B93A8(uint64_t a1)
{
  v4 = *(sub_22A4DB7DC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2295B4F68(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2295B94C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2295B48C4();
}

void sub_2295B9584()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2295B85AC(v0 + v2, v4, v5);
}

uint64_t sub_2295B9628(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2295B8808(a1, a2, v2 + v6);
}

unint64_t sub_2295B96E0()
{
  result = qword_27D87D908;
  if (!qword_27D87D908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87D908);
  }

  return result;
}

uint64_t sub_2295B9744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2295B9794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295B9814(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + v7);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_2295B587C(a1, v9, v10, v1 + v6, v8, v12, v13);
}

uint64_t objectdestroy_40Tm()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_2295B9A4C()
{
  sub_22A4DE1FC();
  v4 = type metadata accessor for HomeDeviceEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D928, &unk_22A579008);
  v1 = sub_22A4DBA6C();
  MEMORY[0x22AAD08C0](v1);

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  sub_22A4DB7DC();
  sub_2295BEFD0(&qword_281403860, MEMORY[0x277CC95F0]);
  v2 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v2);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v0 + *(v4 + 24)), *(v0 + *(v4 + 24) + 8));
  MEMORY[0x22AAD08C0](0x203A65707974202CLL, 0xE800000000000000);
  LOBYTE(v4) = *(v0 + *(v4 + 28));
  sub_22A4DE31C();
  return 0;
}

uint64_t sub_2295B9BDC(NSObject *a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v145 = a4;
  v157 = a3;
  v149 = a1;
  v150 = a2;
  v6 = sub_22A4DB7DC();
  v153 = *(v6 - 8);
  v7 = *(v153 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v154 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v148 = &v132 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v138 = &v132 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v137 = &v132 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v142 = &v132 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v147 = &v132 - v19;
  MEMORY[0x28223BE20](v18);
  v146 = &v132 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v136 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v139 = &v132 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v132 - v27;
  v160 = type metadata accessor for HomeDeviceEntity();
  v155 = *(v160 - 8);
  v29 = *(v155 + 64);
  v30 = MEMORY[0x28223BE20](v160);
  v133 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v134 = &v132 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v140 = &v132 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v141 = &v132 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v132 = &v132 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = (&v132 - v41);
  v43 = MEMORY[0x28223BE20](v40);
  v45 = (&v132 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v135 = &v132 - v47;
  MEMORY[0x28223BE20](v46);
  v156 = &v132 - v48;
  v161 = MEMORY[0x277D84FA0];
  v49 = [v4 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v50 = sub_22A4DD83C();

  if (v50 >> 62)
  {
    goto LABEL_68;
  }

  v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v143 = v42;
  v144 = v45;
  v151 = v6;
  if (v51)
  {
    v52 = 0;
    v158 = v50 & 0xFFFFFFFFFFFFFF8;
    v159 = v50 & 0xC000000000000001;
    v45 = (v155 + 48);
    v53 = MEMORY[0x277D84F90];
    v54 = (v155 + 56);
    v152 = v5;
    v42 = v51;
    while (1)
    {
      if (v159)
      {
        v55 = MEMORY[0x22AAD13F0](v52, v50);
      }

      else
      {
        if (v52 >= *(v158 + 16))
        {
          goto LABEL_66;
        }

        v55 = *(v50 + 8 * v52 + 32);
      }

      v56 = v55;
      v6 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v51 = sub_22A4DE0EC();
        goto LABEL_3;
      }

      if ([v55 isHidden])
      {

        (*v54)(v28, 1, 1, v160);
      }

      else
      {
        sub_2295BB004(v157, v5, v28);

        if ((*v45)(v28, 1, v160) != 1)
        {
          sub_22957A0B4(v28, v156, type metadata accessor for HomeDeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_22958ADD8(0, v53[2] + 1, 1, v53);
          }

          v58 = v53[2];
          v57 = v53[3];
          if (v58 >= v57 >> 1)
          {
            v53 = sub_22958ADD8(v57 > 1, v58 + 1, 1, v53);
          }

          v53[2] = v58 + 1;
          sub_22957A0B4(v156, v53 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v58, type metadata accessor for HomeDeviceEntity);
          v5 = v152;
          goto LABEL_7;
        }
      }

      sub_22953EAE4(v28, &qword_27D87D930, &qword_22A579018);
LABEL_7:
      ++v52;
      if (v6 == v42)
      {
        goto LABEL_21;
      }
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_21:

  sub_22959D024(v53);

  v59 = [v5 mediaProfile];
  v60 = v151;
  v62 = v143;
  v61 = v144;
  if (v59)
  {
    v63 = v59;
    v64 = v139;
    sub_2295BCE4C(v149, v150, v5, v139);
    if ((*(v155 + 48))(v64, 1, v160) == 1)
    {

      sub_22953EAE4(v64, &qword_27D87D930, &qword_22A579018);
    }

    else
    {
      v65 = v64;
      v66 = v135;
      sub_22957A0B4(v65, v135, type metadata accessor for HomeDeviceEntity);
      sub_22959E67C(v66, v62);
      sub_2295708D8(v61, v62);

      sub_22959E6E0(v61);
      sub_22959E6E0(v66);
    }
  }

  v67 = [v5 cameraProfiles];
  sub_229562F68(0, &qword_27D87D938, off_278666080);
  sub_22959E62C(&qword_27D881EF0, &qword_27D87D938, off_278666080);
  v68 = sub_22A4DDB6C();

  if ((v68 & 0xC000000000000001) != 0)
  {
    v69 = sub_22A4DE0EC();
  }

  else
  {
    v69 = *(v68 + 16);
  }

  if (v69)
  {
    v70 = [v5 cameraProfiles];
    v71 = sub_22A4DDB6C();

    v72 = sub_22962D598(v71);

    if (v72)
    {
      v73 = v136;
      sub_2295BDA18(v149, v150, v5, v136);
      if ((*(v155 + 48))(v73, 1, v160) == 1)
      {

        sub_22953EAE4(v73, &qword_27D87D930, &qword_22A579018);
      }

      else
      {
        v74 = v73;
        v75 = v132;
        sub_22957A0B4(v74, v132, type metadata accessor for HomeDeviceEntity);
        sub_22959E67C(v75, v62);
        sub_2295708D8(v61, v62);

        sub_22959E6E0(v61);
        sub_22959E6E0(v75);
      }
    }
  }

  v76 = [v5 siriEndpointProfile];
  if (v76)
  {
    v77 = v76;
    v78 = [v5 uuid];
    sub_22A4DB79C();

    v79 = [v77 uniqueIdentifier];
    sub_22A4DB79C();

    sub_22965C1A0(&unk_283CDA588);

    v80 = *MEMORY[0x277CCF2A8];
    v81 = [v77 uniqueIdentifier];
    v82 = v142;
    sub_22A4DB79C();

    v83 = sub_22A4DB77C();
    v84 = *(v153 + 8);
    v84(v82, v60);
    v85 = hm_assistantIdentifier();

    if (v85)
    {
      v86 = sub_22A4DD5EC();
      v88 = v87;
    }

    else
    {
      v86 = 0;
      v88 = 0;
    }

    v84(v146, v60);
    v89 = v160;
    v28 = v140;
    v90 = &v140[*(v160 + 20)];
    *v90 = v86;
    v90[1] = v88;
    (*(v153 + 32))(v28, v147, v60);
    v91 = &v28[*(v89 + 24)];
    v92 = v150;
    *v91 = v149;
    *(v91 + 1) = v92;
    v28[*(v89 + 28)] = 41;
    v93 = v141;
    sub_22957A0B4(v28, v141, type metadata accessor for HomeDeviceEntity);
    sub_22959E67C(v93, v62);

    sub_2295708D8(v61, v62);

    sub_22959E6E0(v61);
    sub_22959E6E0(v93);
  }

  v94 = [v5 lightProfiles];
  sub_229562F68(0, &unk_27D880970, off_278666228);
  sub_22959E62C(&unk_27D87E4A0, &unk_27D880970, off_278666228);
  v95 = sub_22A4DDB6C();

  if ((v95 & 0xC000000000000001) != 0)
  {
    v96 = sub_22A4DE0EC();
  }

  else
  {
    v96 = *(v95 + 16);
  }

  if (v96)
  {
    v97 = [v5 lightProfiles];
    v98 = sub_22A4DDB6C();

    v99 = sub_22962D5AC(v98);

    if (v99)
    {
      if ([v99 isNaturalLightingSupported])
      {
        v100 = [v5 uuid];
        sub_22A4DB79C();

        v101 = [v99 uniqueIdentifier];
        sub_22A4DB79C();

        sub_22965C1A0(&unk_283CDA5B0);

        v102 = *MEMORY[0x277CCF2A8];
        v103 = [v99 uniqueIdentifier];
        v104 = v142;
        sub_22A4DB79C();

        v105 = sub_22A4DB77C();
        v106 = *(v153 + 8);
        v106(v104, v60);
        v107 = hm_assistantIdentifier();

        if (v107)
        {
          v108 = sub_22A4DD5EC();
          v110 = v109;
        }

        else
        {
          v108 = 0;
          v110 = 0;
        }

        v106(v137, v60);
        v111 = v160;
        v28 = v133;
        v112 = &v133[*(v160 + 20)];
        *v112 = v108;
        v112[1] = v110;
        (*(v153 + 32))(v28, v138, v60);
        v113 = &v28[*(v111 + 24)];
        v114 = v150;
        *v113 = v149;
        *(v113 + 1) = v114;
        v28[*(v111 + 28)] = 17;
        v115 = v134;
        sub_22957A0B4(v28, v134, type metadata accessor for HomeDeviceEntity);
        sub_22959E67C(v115, v62);

        sub_2295708D8(v61, v62);

        sub_22959E6E0(v61);
        sub_22959E6E0(v115);
      }

      else
      {
      }
    }
  }

  v116 = [v5 bridge];
  if (v116)
  {

    v117 = [v5 identifiersForBridgedAccessories];
    sub_2295BEFD0(&qword_281403880, MEMORY[0x277CC95F0]);
    v6 = v60;
    v118 = sub_22A4DDB6C();

    v119 = 0;
    v45 = 0;
    v5 = (v118 + 56);
    v120 = 1 << *(v118 + 32);
    v121 = -1;
    if (v120 < 64)
    {
      v121 = ~(-1 << v120);
    }

    v50 = v121 & *(v118 + 56);
    v122 = (v120 + 63) >> 6;
    v159 = v153 + 16;
    v160 = v118;
    v158 = v153 + 32;
    v42 = (v153 + 8);
    while (v50)
    {
LABEL_60:
      v124 = v153;
      v125 = v148;
      (*(v153 + 16))(v148, *(v160 + 48) + *(v153 + 72) * (__clz(__rbit64(v50)) | (v119 << 6)), v6);
      v126 = v154;
      (*(v124 + 32))(v154, v125, v6);
      v127 = [v157 accessories];
      sub_229562F68(0, &qword_281401C30, off_278665FE8);
      v128 = sub_22A4DD83C();

      MEMORY[0x28223BE20](v129);
      *(&v132 - 2) = v126;
      v28 = sub_22968FFF0(sub_2295C0F44, (&v132 - 4), v128);

      if (v28)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v130 = sub_2295B9BDC(v149, v150, v157, v145);
          sub_2295948C4(v130);
        }
      }

      v50 &= v50 - 1;
      v6 = v151;
      (*v42)(v154);
    }

    while (1)
    {
      v123 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_67;
      }

      if (v123 >= v122)
      {

        return v161;
      }

      v50 = *(v5 + v123);
      ++v119;
      if (v50)
      {
        v119 = v123;
        goto LABEL_60;
      }
    }
  }

  return v161;
}

uint64_t sub_2295BAC18(NSObject *a1, char *a2)
{
  v3 = v2;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for HomeDeviceEntity();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v3 hasMediaProfile])
  {
    v21 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_2295BED30();
    sub_22A4DD06C();
    v22 = v3;
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_229538000, v23, v24, "Unable to create HomeDeviceEntity for %@ as there is no media profile for it", v25, 0xCu);
      sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    return MEMORY[0x277D84FA0];
  }

  v20 = [v3 mediaProfile];
  sub_2295BCE4C(a1, a2, v3, v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_22953EAE4(v14, &qword_27D87D930, &qword_22A579018);
    return MEMORY[0x277D84FA0];
  }

  sub_22957A0B4(v14, v19, type metadata accessor for HomeDeviceEntity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
  v29 = *(v16 + 72);
  v30 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22A576180;
  sub_22959E67C(v19, v31 + v30);
  v32 = sub_22965C354(v31);
  swift_setDeallocating();
  sub_22959E6E0(v31 + v30);
  swift_deallocClassInstance();
  sub_22959E6E0(v19);
  return v32;
}

uint64_t sub_2295BB004@<X0>(void *a1@<X2>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v4 = v3;
  v197 = a2;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v196 = &v186 - v14;
  MEMORY[0x28223BE20](v13);
  v199 = &v186 - v15;
  v16 = sub_22A4DD07C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v201 = &v186 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v198 = &v186 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v200 = &v186 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v186 - v28;
  v204 = v4;
  v30 = [v4 name];
  if (!v30)
  {
    goto LABEL_12;
  }

  v192 = a1;
  v193 = v12;
  v194 = v8;
  v31 = v30;
  v32 = sub_22A4DD5EC();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  v195 = v32;
  v202 = v34;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35 || (v205 = [objc_opt_self() getSharedInstance]) == 0)
  {

LABEL_12:
    v53 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v39 = type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    sub_22A4DD06C();
    v54 = v204;
    v55 = sub_22A4DD05C();
    v56 = sub_22A4DDCEC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      *(v57 + 4) = v54;
      *v58 = v54;
      v59 = v54;
      _os_log_impl(&dword_229538000, v55, v56, "Service does not have a name. %@", v57, 0xCu);
      sub_22953EAE4(v58, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v57, -1, -1);
    }

    (*(v17 + 8))(v21, v16);
    return (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
  }

  v189 = v7;
  v190 = v16;
  v36 = [v204 type];
  if (!v36)
  {
    sub_22A4DD5EC();
    v36 = sub_22A4DD5AC();
  }

  v37 = [v205 shouldFilterServiceOfType_];

  v191 = v17;
  if (v37)
  {
    v38 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v39 = type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    sub_22A4DD06C();
    v40 = v204;
    v41 = v202;

    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCCC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v207[0] = v204;
      *v44 = 136315394;
      v45 = [v40 type];
      v46 = sub_22A4DD5EC();
      v47 = a3;
      v49 = v48;

      v50 = sub_2295A3E30(v46, v49, v207);
      a3 = v47;

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      v51 = sub_2295A3E30(v195, v41, v207);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_229538000, v42, v43, "Siri does not support %s. Ignoring %s.", v44, 0x16u);
      v52 = v204;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);
    }

    else
    {
    }

    (*(v191 + 8))(v29, v190);
    return (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
  }

  v188 = a3;
  v61 = [v204 characteristics];
  v187 = sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v62 = sub_22A4DD83C();

  v207[0] = MEMORY[0x277D84F90];
  if (v62 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v64 = 0;
    v17 = v62 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x22AAD13F0](v64, v62);
      }

      else
      {
        if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v65 = *(v62 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      v206 = v65;
      if (sub_2295BC4FC(&v206, v205))
      {
        sub_22A4DE27C();
        v68 = *(v207[0] + 16);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v64;
      if (v67 == i)
      {
        v69 = v207[0];
        v17 = v191;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v69 = MEMORY[0x277D84F90];
LABEL_35:

  if (v69 < 0 || (v69 & 0x4000000000000000) != 0)
  {
    goto LABEL_94;
  }

  for (j = *(v69 + 16); j; j = sub_22A4DE0EC())
  {
    v207[0] = MEMORY[0x277D84FA0];
    if (qword_27D87B8E0 != -1)
    {
      swift_once();
    }

    v70 = qword_27D8AB670;
    v71 = [v204 serviceType];
    v72 = sub_22A4DD5EC();
    v74 = v73;

    if (*(v70 + 16))
    {
      v75 = sub_229543DBC(v72, v74);
      v77 = v76;

      if (v77)
      {
        sub_229570E00(&v206, *(*(v70 + 56) + v75));
      }
    }

    else
    {
    }

    v78 = [v204 serviceType];
    if (!v78)
    {
      sub_22A4DD5EC();
      v78 = sub_22A4DD5AC();
    }

    v79 = [v205 getServiceTypeAlias_];

    if (v79)
    {
      v80 = sub_22A4DD5EC();
      v82 = v81;

      if (*(v70 + 16))
      {
        v83 = sub_229543DBC(v80, v82);
        v85 = v84;

        if (v85)
        {
          sub_229570E00(&v206, *(*(v70 + 56) + v83));
        }
      }

      else
      {
      }
    }

    v86 = [v204 associatedServiceType];
    if (v86)
    {
      v87 = v86;
      v88 = sub_22A4DD5EC();
      v90 = v89;

      if (*(v70 + 16))
      {
        v91 = sub_229543DBC(v88, v90);
        v93 = v92;

        if (v93)
        {
          sub_229570E00(&v206, *(*(v70 + 56) + v91));
        }
      }

      else
      {
      }
    }

    v94 = 0;
    v17 = v69 & 0xC000000000000001;
    v95 = MEMORY[0x277D84F90];
LABEL_57:
    v200 = v95;
    v96 = v94;
    while (1)
    {
      if (v17)
      {
        v97 = MEMORY[0x22AAD13F0](v96, v69);
      }

      else
      {
        if (v96 >= *(v69 + 16))
        {
          goto LABEL_93;
        }

        v97 = *(v69 + 8 * v96 + 32);
      }

      v98 = v97;
      v94 = v96 + 1;
      if (__OFADD__(v96, 1))
      {
        break;
      }

      if (qword_27D87B8D0 != -1)
      {
        swift_once();
      }

      v99 = qword_27D8AB660;
      v100 = [v98 type];
      v101 = sub_22A4DD5EC();
      v103 = v102;

      if (*(v99 + 16))
      {
        v104 = sub_229543DBC(v101, v103);
        v106 = v105;

        if (v106)
        {
          v107 = *(*(v99 + 56) + v104);

          v95 = v200;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v95 = sub_22958AE28(0, *(v95 + 2) + 1, 1, v95);
          }

          v110 = *(v95 + 2);
          v109 = *(v95 + 3);
          if (v110 >= v109 >> 1)
          {
            v95 = sub_22958AE28((v109 > 1), v110 + 1, 1, v95);
          }

          *(v95 + 2) = v110 + 1;
          v95[v110 + 32] = v107;
          if (v94 == j)
          {
LABEL_77:
            v111 = v207[0];

            v113 = sub_22962D5C0(v112);

            if (v113 == 43)
            {

              v114 = v201;
              goto LABEL_83;
            }

            v114 = v201;
            if (*(v95 + 2))
            {
              LODWORD(v201) = v113;
              j = v111;

              sub_22967229C(v95);

              v115 = *MEMORY[0x277D0F1A8];
              sub_22A4DD5EC();
              v116 = type metadata accessor for HomeDeviceEntity();
              sub_2295BED30();
              v117 = v198;
              sub_22A4DD06C();
              v118 = v204;
              v119 = v197;

              v120 = sub_22A4DD05C();
              v121 = sub_22A4DDCDC();

              if (os_log_type_enabled(v120, v121))
              {
                v122 = swift_slowAlloc();
                v123 = swift_slowAlloc();
                v200 = swift_slowAlloc();
                v206 = v200;
                *v122 = 138413314;
                v124 = [v119 category];
                *(v122 + 4) = v124;
                *v123 = v124;
                *(v122 + 12) = 2080;
                sub_2295C0F64();
                v204 = v119;
                LODWORD(v197) = v121;

                v125 = sub_22A4DDB7C();
                v127 = v126;

                v128 = sub_2295A3E30(v125, v127, &v206);

                *(v122 + 14) = v128;
                *(v122 + 22) = 2080;
                sub_2295C0FB8();
                v129 = sub_22A4DDB7C();
                v131 = v130;

                v132 = sub_2295A3E30(v129, v131, &v206);

                *(v122 + 24) = v132;
                *(v122 + 32) = 2080;
                v133 = [v118 &selRef_shouldShowProvideFeedbackButton];
                v134 = v199;
                sub_22A4DB79C();

                sub_2295BEFD0(&qword_281403860, MEMORY[0x277CC95F0]);
                v135 = v189;
                v136 = sub_22A4DE5CC();
                v138 = v137;
                (*(v194 + 8))(v134, v135);
                v139 = sub_2295A3E30(v136, v138, &v206);

                *(v122 + 34) = v139;
                v119 = v204;
                *(v122 + 42) = 2112;
                *(v122 + 44) = v118;
                v123[1] = v118;
                v140 = v118;
                _os_log_impl(&dword_229538000, v120, v197, "Found %@, %s and %s for %s, %@", v122, 0x34u);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
                swift_arrayDestroy();
                MEMORY[0x22AAD4E50](v123, -1, -1);
                v141 = v200;
                swift_arrayDestroy();
                MEMORY[0x22AAD4E50](v141, -1, -1);
                MEMORY[0x22AAD4E50](v122, -1, -1);

                (*(v191 + 8))(v198, v190);
              }

              else
              {

                (*(v191 + 8))(v117, v190);
              }

              v165 = v188;
              v166 = v196;
              v167 = [v119 uuid];
              sub_22A4DB79C();

              v168 = [v118 spiClientIdentifier];
              sub_22A4DB79C();

              v169 = [v118 urlString];
              v170 = v202;
              if (v169)
              {
                v171 = v169;
                v172 = sub_22A4DD5EC();
                v174 = v173;
              }

              else
              {
                v172 = 0;
                v174 = 0;
              }

              v175 = sub_2295BC924(v192);
              sub_229672310(v175);

              v176 = v194;
              v177 = v189;
              (*(v194 + 8))(v166, v189);
              v178 = (v165 + v116[5]);
              *v178 = v172;
              v178[1] = v174;
              (*(v176 + 32))(v165, v193, v177);
              v179 = (v165 + v116[6]);
              *v179 = v195;
              v179[1] = v170;
              *(v165 + v116[7]) = v201;
              (*(*(v116 - 1) + 56))(v165, 0, 1, v116);
            }

            else
            {

LABEL_83:

              v142 = *MEMORY[0x277D0F1A8];
              sub_22A4DD5EC();
              v143 = type metadata accessor for HomeDeviceEntity();
              sub_2295BED30();
              sub_22A4DD06C();
              v144 = v204;

              v145 = sub_22A4DD05C();
              v146 = sub_22A4DDCEC();

              if (!os_log_type_enabled(v145, v146))
              {

                (*(v191 + 8))(v114, v190);
                (*(*(v143 - 8) + 56))(v188, 1, 1, v143);
              }

              v147 = swift_slowAlloc();
              v204 = swift_slowAlloc();
              v206 = v204;
              *v147 = 136315650;
              v148 = [v144 spiClientIdentifier];
              v149 = v199;
              sub_22A4DB79C();

              sub_2295BEFD0(&qword_281403860, MEMORY[0x277CC95F0]);
              j = v111;
              v150 = v189;
              v151 = sub_22A4DE5CC();
              v153 = v152;
              (*(v194 + 8))(v149, v150);
              v154 = sub_2295A3E30(v151, v153, &v206);

              *(v147 + 4) = v154;
              *(v147 + 12) = 2080;
              v155 = [v144 serviceType];
              v156 = sub_22A4DD5EC();
              v158 = v157;

              v159 = sub_2295A3E30(v156, v158, &v206);

              *(v147 + 14) = v159;
              *(v147 + 22) = 2080;
              v160 = MEMORY[0x22AAD0A20](v69, v187);
              v162 = v161;

              v163 = sub_2295A3E30(v160, v162, &v206);

              *(v147 + 24) = v163;
              _os_log_impl(&dword_229538000, v145, v146, "Could not figure out device type or capabilities for %s, %s, %s", v147, 0x20u);
              v164 = v204;
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v164, -1, -1);
              MEMORY[0x22AAD4E50](v147, -1, -1);

              (*(v191 + 8))(v201, v190);
              (*(*(v143 - 8) + 56))(v188, 1, 1, v143);
            }
          }

          goto LABEL_57;
        }
      }

      else
      {
      }

      ++v96;
      if (v94 == j)
      {
        v95 = v200;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  v180 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  v181 = type metadata accessor for HomeDeviceEntity();
  sub_2295BED30();
  v182 = v200;
  sub_22A4DD06C();
  v183 = sub_22A4DD05C();
  v184 = sub_22A4DDCDC();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    *v185 = 0;
    _os_log_impl(&dword_229538000, v183, v184, "Only consider the services that have one or more Siri controllable attributes", v185, 2u);
    MEMORY[0x22AAD4E50](v185, -1, -1);
  }

  (*(v17 + 8))(v182, v190);
  return (*(*(v181 - 8) + 56))(v188, 1, 1, v181);
}

uint64_t sub_2295BC4FC(id *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = *a1;
  v13 = [*a1 type];
  if (!v13)
  {
    sub_22A4DD5EC();
    v13 = sub_22A4DD5AC();
  }

  v14 = sub_22A4DD5EC();
  v16 = v15;
  v17 = [a2 shouldFilterCharacteristicOfTypeFromApp_];

  if (v17)
  {

    v18 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    sub_22A4DD06C();
    v19 = v12;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCDC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_229538000, v20, v21, "Skipping %@ as it is not controllable by Siri", v22, 0xCu);
      sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_27D87B8D0 != -1)
    {
      swift_once();
    }

    if (*(qword_27D8AB660 + 16))
    {
      sub_229543DBC(v14, v16);
      if (v25)
      {

        return 1;
      }
    }

    v27 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    sub_22A4DD06C();

    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCDC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v30 = 136315138;
      v32 = sub_2295A3E30(v14, v16, &v34);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_229538000, v28, v29, "Did not find mapping of %s to a HomeCapability", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v9, v4);
  }

  return 0;
}

void *sub_2295BC924(void *a1)
{
  v58 = sub_22A4DB7DC();
  v2 = *(v58 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HomeGroupEntity();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v48 - v10;
  MEMORY[0x28223BE20](v9);
  v56 = &v48 - v11;
  v12 = [a1 serviceGroups];
  sub_229562F68(0, &unk_281401B60, off_278666318);
  v13 = sub_22A4DD83C();

  if (v13 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v15 = 0;
    v54 = v13 & 0xFFFFFFFFFFFFFF8;
    v55 = v13 & 0xC000000000000001;
    v52 = v2 + 1;
    v60 = MEMORY[0x277D84F90];
    v53 = i;
    while (1)
    {
      if (v55)
      {
        v17 = MEMORY[0x22AAD13F0](v15, v13);
      }

      else
      {
        if (v15 >= *(v54 + 16))
        {
          goto LABEL_21;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      v2 = v17;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = v13;
      v20 = [v17 serviceUUIDs];
      v21 = sub_22A4DD83C();

      v22 = [v59 uuid];
      v23 = v57;
      sub_22A4DB79C();

      v24 = sub_22A4DB76C();
      v26 = v25;
      v27 = (*v52)(v23, v58);
      v61[0] = v24;
      v61[1] = v26;
      MEMORY[0x28223BE20](v27);
      *(&v48 - 2) = v61;
      LOBYTE(v24) = sub_22986A5E0(sub_22959E60C, (&v48 - 4), v21);

      if (v24)
      {
        v28 = [v2 urlString];
        if (v28)
        {
          v29 = v28;
          v30 = sub_22A4DD5EC();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        v33 = v49;
        *v49 = v30;
        v33[1] = v32;
        v34 = [v2 spiClientIdentifier];
        v35 = v51;
        v36 = v33 + *(v51 + 20);
        sub_22A4DB79C();

        v37 = [v2 name];
        v38 = sub_22A4DD5EC();
        v40 = v39;

        v41 = (v33 + *(v35 + 24));
        *v41 = v38;
        v41[1] = v40;
        v42 = v33;
        v43 = v48;
        sub_22957A0B4(v42, v48, type metadata accessor for HomeGroupEntity);
        sub_22957A0B4(v43, v56, type metadata accessor for HomeGroupEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_22958AE00(0, v60[2] + 1, 1, v60);
        }

        v13 = v19;
        v45 = v60[2];
        v44 = v60[3];
        v2 = (v45 + 1);
        v16 = v53;
        if (v45 >= v44 >> 1)
        {
          v60 = sub_22958AE00(v44 > 1, v45 + 1, 1, v60);
        }

        v46 = v60;
        v60[2] = v2;
        sub_22957A0B4(v56, v46 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v45, type metadata accessor for HomeGroupEntity);
      }

      else
      {

        v13 = v19;
        v16 = v53;
      }

      ++v15;
      if (v18 == v16)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_24:

  return v60;
}

uint64_t sub_2295BCE4C@<X0>(NSObject *a1@<X0>, char *a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v108 = a1;
  v109 = a2;
  v118 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v116 = v7;
  v117 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v114 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v105 = &v104 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v104 - v14);
  v16 = sub_22A4DB7DC();
  v111 = *(v16 - 8);
  v112 = v16;
  v17 = *(v111 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v107 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v104 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v104 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v104 - v27;
  v29 = [a3 category];
  v30 = [v29 categoryType];

  v31 = sub_22A4DD5EC();
  v33 = v32;

  v34 = [v5 uniqueIdentifier];
  sub_22A4DB79C();

  v35 = [a3 spiClientIdentifier];
  v113 = v22;
  sub_22A4DB79C();

  v36 = [v5 urlString];
  if (v36)
  {
    v37 = v36;
    v106 = sub_22A4DD5EC();
    v39 = v38;
  }

  else
  {
    v106 = 0;
    v39 = 0;
  }

  if (qword_27D87B8D8 != -1)
  {
    swift_once();
  }

  v115 = v28;
  v40 = qword_27D8AB668;
  if (!*(qword_27D8AB668 + 16) || (v41 = sub_229543DBC(v31, v33), (v42 & 1) == 0))
  {

    v47 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v48 = type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    sub_22A4DD06C();

    v49 = sub_22A4DD05C();
    v50 = sub_22A4DDCEC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v119 = v52;
      *v51 = 136315138;
      v53 = sub_2295A3E30(v31, v33, &v119);
      v108 = v15;
      v109 = v24;
      v55 = v111;
      v54 = v112;
      v56 = v5;
      v57 = v53;

      *(v51 + 4) = v57;
      v5 = v56;
      _os_log_impl(&dword_229538000, v49, v50, "Unable to map accessory category %s to a device type.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v58 = v116;
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v51, -1, -1);

      (*(v117 + 8))(v108, v58);
LABEL_14:
      v59 = *(v55 + 8);
      v59(v113, v54);
      v59(v109, v54);
LABEL_17:
      v62 = v115;
      (*(*(v48 - 1) + 56))(v115, 1, 1, v48);
      goto LABEL_21;
    }

    (*(v117 + 8))(v15, v116);
LABEL_16:
    v60 = v112;
    v61 = *(v111 + 8);
    v61(v113, v112);
    v61(v24, v60);
    goto LABEL_17;
  }

  v43 = *(*(v40 + 56) + v41);
  v44 = *MEMORY[0x277CCE8B0];
  if (v31 != sub_22A4DD5EC() || v33 != v45)
  {
    v63 = sub_22A4DE60C();

    if (v63)
    {
      v46 = &unk_283CDA448;
      goto LABEL_20;
    }

    v81 = *MEMORY[0x277CCE870];
    if (v31 == sub_22A4DD5EC() && v33 == v82)
    {
      v46 = &unk_283CDA470;
      goto LABEL_11;
    }

    v83 = sub_22A4DE60C();

    if (v83)
    {
      v46 = &unk_283CDA470;
      goto LABEL_20;
    }

    v84 = *MEMORY[0x277CCE860];
    if (v31 == sub_22A4DD5EC() && v33 == v85)
    {
LABEL_34:
      v46 = &unk_283CDA498;
      goto LABEL_11;
    }

    v86 = sub_22A4DE60C();

    if (v86)
    {
      goto LABEL_36;
    }

    v87 = *MEMORY[0x277CCE900];
    if (v31 == sub_22A4DD5EC() && v33 == v88)
    {
      goto LABEL_34;
    }

    v89 = sub_22A4DE60C();

    if (v89)
    {
LABEL_36:
      v46 = &unk_283CDA498;
      goto LABEL_20;
    }

    v90 = *MEMORY[0x277CCE8B8];
    if (v31 == sub_22A4DD5EC() && v33 == v91)
    {
      v46 = &unk_283CDA4C0;
      goto LABEL_11;
    }

    v92 = sub_22A4DE60C();

    if (v92)
    {
      v46 = &unk_283CDA4C0;
      goto LABEL_20;
    }

    v93 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v48 = type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    v94 = v105;
    sub_22A4DD06C();

    v95 = sub_22A4DD05C();
    v96 = sub_22A4DDCEC();

    v108 = v95;
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v119 = v98;
      *v97 = 136315138;
      v99 = sub_2295A3E30(v31, v33, &v119);
      v109 = v24;
      v55 = v111;
      v54 = v112;
      v100 = v5;
      v101 = v99;

      *(v97 + 4) = v101;
      v5 = v100;
      v102 = v108;
      _os_log_impl(&dword_229538000, v108, v96, "Please add support for %s to HomeDeviceEntity.", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      v103 = v116;
      MEMORY[0x22AAD4E50](v98, -1, -1);
      MEMORY[0x22AAD4E50](v97, -1, -1);

      (*(v117 + 8))(v105, v103);
      goto LABEL_14;
    }

    (*(v117 + 8))(v94, v116);
    goto LABEL_16;
  }

  v46 = &unk_283CDA448;
LABEL_11:

LABEL_20:

  sub_22965C1A0(v46);

  v65 = v111;
  v64 = v112;
  v66 = v107;
  (*(v111 + 16))(v107, v24, v112);
  v67 = *(v65 + 8);
  v67(v113, v64);
  v67(v24, v64);
  v48 = type metadata accessor for HomeDeviceEntity();
  v68 = v115;
  v69 = &v115[v48[5]];
  *v69 = v106;
  v69[1] = v39;
  (*(v65 + 32))(v68, v66, v64);
  v70 = (v68 + v48[6]);
  v71 = v109;
  *v70 = v108;
  v70[1] = v71;
  *(v68 + v48[7]) = v43;
  v62 = v68;
  (*(*(v48 - 1) + 56))(v68, 0, 1, v48);

LABEL_21:
  type metadata accessor for HomeDeviceEntity();
  v72 = *(v48 - 1);
  if ((*(v72 + 48))(v62, 1, v48) == 1)
  {
    sub_22953EAE4(v62, &qword_27D87D930, &qword_22A579018);
    sub_22A4DDBFC();
    v73 = v5;
    v74 = sub_22A4DD05C();
    v75 = sub_22A4DDCEC();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      *(v76 + 4) = v73;
      *v77 = v73;
      v78 = v73;
      _os_log_impl(&dword_229538000, v74, v75, "Unable to create HomeDeviceEntity for %@", v76, 0xCu);
      sub_22953EAE4(v77, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v77, -1, -1);
      MEMORY[0x22AAD4E50](v76, -1, -1);
    }

    (*(v117 + 8))(v114, v116);
    v79 = 1;
  }

  else
  {
    sub_22957A0B4(v62, v118, type metadata accessor for HomeDeviceEntity);
    v79 = 0;
  }

  return (*(v72 + 56))(v118, v79, 1, v48);
}

uint64_t sub_2295BDA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v97 = a1;
  v98 = a2;
  v107 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v105 = *(v7 - 8);
  v8 = *(v105 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v104 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v94[0] = v94 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v94 - v13;
  v15 = sub_22A4DB7DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v96 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v94 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v94 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v103 = v94 - v27;
  v94[1] = *MEMORY[0x277CCE8B8];
  v106 = sub_22A4DD5EC();
  v29 = v28;
  v30 = [v5 uniqueIdentifier];
  v102 = v24;
  v31 = v22;
  sub_22A4DB79C();

  v32 = [a3 spiClientIdentifier];
  sub_22A4DB79C();

  v101 = v5;
  v33 = [v5 urlString];
  if (v33)
  {
    v34 = v33;
    v95 = sub_22A4DD5EC();
    v36 = v35;
  }

  else
  {
    v95 = 0;
    v36 = 0;
  }

  v37 = v29;
  v38 = v106;
  if (qword_27D87B8D8 != -1)
  {
    swift_once();
  }

  v39 = qword_27D8AB668;
  if (!*(qword_27D8AB668 + 16) || (v40 = sub_229543DBC(v38, v29), (v41 & 1) == 0))
  {

    v46 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v47 = type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    sub_22A4DD06C();

    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCEC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v99 = v7;
      v52 = v51;
      v108 = v51;
      *v50 = 136315138;
      v53 = sub_2295A3E30(v106, v37, &v108);
      v106 = v31;
      v54 = v53;

      *(v50 + 4) = v54;
      _os_log_impl(&dword_229538000, v48, v49, "Unable to map accessory category %s to a device type.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v55 = v52;
      v7 = v99;
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v50, -1, -1);

      (*(v105 + 8))(v14, v7);
      v56 = *(v16 + 8);
      v56(v106, v15);
LABEL_16:
      v56(v102, v15);
      v57 = v103;
      (*(*(v47 - 1) + 56))(v103, 1, 1, v47);
      goto LABEL_20;
    }

    (*(v105 + 8))(v14, v7);
LABEL_15:
    v56 = *(v16 + 8);
    v56(v31, v15);
    goto LABEL_16;
  }

  v99 = v7;
  v42 = *(*(v39 + 56) + v40);
  v43 = *MEMORY[0x277CCE8B0];
  if (v38 != sub_22A4DD5EC() || v29 != v44)
  {
    v58 = sub_22A4DE60C();

    if (v58)
    {
      v45 = &unk_283CDA4E8;
      goto LABEL_19;
    }

    v76 = *MEMORY[0x277CCE870];
    if (v38 == sub_22A4DD5EC() && v29 == v77)
    {
      v45 = &unk_283CDA510;
      goto LABEL_11;
    }

    v78 = sub_22A4DE60C();

    if (v78)
    {
      v45 = &unk_283CDA510;
      goto LABEL_19;
    }

    v79 = *MEMORY[0x277CCE860];
    if (v38 == sub_22A4DD5EC() && v29 == v80)
    {
LABEL_33:
      v45 = &unk_283CDA538;
      goto LABEL_11;
    }

    v81 = sub_22A4DE60C();

    if (v81)
    {
      goto LABEL_35;
    }

    v82 = *MEMORY[0x277CCE900];
    if (v38 == sub_22A4DD5EC() && v29 == v83)
    {
      goto LABEL_33;
    }

    v84 = sub_22A4DE60C();

    if (v84)
    {
LABEL_35:
      v45 = &unk_283CDA538;
      goto LABEL_19;
    }

    if (v38 == sub_22A4DD5EC() && v29 == v85)
    {
      v45 = &unk_283CDA560;
      goto LABEL_11;
    }

    v86 = sub_22A4DE60C();

    if (v86)
    {
      v45 = &unk_283CDA560;
      goto LABEL_19;
    }

    v87 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v47 = type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    v88 = v94[0];
    sub_22A4DD06C();

    v89 = sub_22A4DD05C();
    v90 = sub_22A4DDCEC();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v108 = v92;
      *v91 = 136315138;
      v93 = sub_2295A3E30(v106, v37, &v108);

      *(v91 + 4) = v93;
      _os_log_impl(&dword_229538000, v89, v90, "Please add support for %s to HomeDeviceEntity.", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x22AAD4E50](v92, -1, -1);
      MEMORY[0x22AAD4E50](v91, -1, -1);
    }

    else
    {
    }

    v7 = v99;
    (*(v105 + 8))(v88, v99);
    goto LABEL_15;
  }

  v45 = &unk_283CDA4E8;
LABEL_11:

LABEL_19:

  sub_22965C1A0(v45);

  v59 = v96;
  v60 = v102;
  (*(v16 + 16))(v96, v102, v15);
  v61 = *(v16 + 8);
  v61(v31, v15);
  v61(v60, v15);
  v47 = type metadata accessor for HomeDeviceEntity();
  v57 = v103;
  v62 = &v103[v47[5]];
  *v62 = v95;
  v62[1] = v36;
  (*(v16 + 32))(v57, v59, v15);
  v63 = (v57 + v47[6]);
  v64 = v98;
  *v63 = v97;
  v63[1] = v64;
  *(v57 + v47[7]) = v42;
  (*(*(v47 - 1) + 56))(v57, 0, 1, v47);

  v7 = v99;
LABEL_20:
  type metadata accessor for HomeDeviceEntity();
  v65 = *(v47 - 1);
  if ((*(v65 + 48))(v57, 1, v47) == 1)
  {
    sub_22953EAE4(v57, &qword_27D87D930, &qword_22A579018);
    sub_22A4DDBFC();
    v66 = v101;
    v67 = sub_22A4DD05C();
    v68 = sub_22A4DDCEC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = v7;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      *(v70 + 4) = v66;
      *v71 = v66;
      v72 = v66;
      _os_log_impl(&dword_229538000, v67, v68, "Unable to create HomeDeviceEntity for %@", v70, 0xCu);
      sub_22953EAE4(v71, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v71, -1, -1);
      v73 = v70;
      v7 = v69;
      MEMORY[0x22AAD4E50](v73, -1, -1);
    }

    (*(v105 + 8))(v104, v7);
    v74 = 1;
  }

  else
  {
    sub_22957A0B4(v57, v107, type metadata accessor for HomeDeviceEntity);
    v74 = 0;
  }

  return (*(v65 + 56))(v107, v74, 1, v47);
}

uint64_t sub_2295BE544(id *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

char *sub_2295BE650()
{
  v1 = [v0 accessoryProfiles];
  if (v1)
  {
    v2 = v1;
    sub_229562F68(0, &qword_27D87D950, off_278665FF0);
    v3 = sub_22A4DD83C();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_22A4DE0EC();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        v7 = &selRef_markChangedForMessage_triggerModel_;
        do
        {
          v8 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x22AAD13F0](v8, v3);
            }

            else
            {
              if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v9 = *(v3 + 8 * v8 + 32);
            }

            v10 = v9;
            v5 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            objc_opt_self();
            v11 = swift_dynamicCastObjCClass();
            if (v11)
            {
              break;
            }

            ++v8;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v12 = [v11 v7[310]];
          v13 = sub_22A4DD5EC();
          v19 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_22958A53C(0, *(v6 + 2) + 1, 1, v6);
          }

          v16 = *(v6 + 2);
          v15 = *(v6 + 3);
          if (v16 >= v15 >> 1)
          {
            v6 = sub_22958A53C((v15 > 1), v16 + 1, 1, v6);
          }

          *(v6 + 2) = v16 + 1;
          v17 = &v6[16 * v16];
          *(v17 + 4) = v13;
          *(v17 + 5) = v19;
          v7 = &selRef_markChangedForMessage_triggerModel_;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_25:

    return v6;
  }

  return MEMORY[0x277D84F90];
}

id sub_2295BE854(void *a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  result = [a2 mediaGroupsAggregateConsumer];
  if (result)
  {
    v16 = result;
    v17 = [a1 audioGroupIdentifier];
    if (v17)
    {
      v18 = v17;
      sub_22A4DB79C();

      (*(v5 + 32))(v14, v12, v4);
      v19 = [a1 parentIdentifier];
      sub_22A4DB79C();

      LOBYTE(v19) = sub_22A4DB78C();
      v20 = *(v5 + 8);
      v20(v9, v4);
      if ((v19 & 1) == 0)
      {
        v21 = sub_22A4DB77C();
        v22 = [v16 groupWithIdentifier_];

        if (v22)
        {
          v23 = sub_2295BEB54(v22, a2);

          v20(v14, v4);
          return v23;
        }

        v24 = sub_22A4DB77C();
        v25 = [v16 destinationControllerDataWithIdentifier_];

        if (v25)
        {
          v26 = [v25 identifier];
          sub_22A4DB79C();

          v27 = sub_22A4DB76C();
          v20(v9, v4);
          v20(v14, v4);
          return v27;
        }
      }

      v20(v14, v4);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2295BEB54(void *a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 mediaGroupsAggregateConsumer];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [a1 identifier];
  sub_22A4DB79C();

  v12 = sub_22A4DB77C();
  (*(v5 + 8))(v8, v4);
  v13 = [v10 destinationWithParentIdentifier_];

  if (!v13)
  {

LABEL_6:
    v17 = [a1 identifier];
    sub_22A4DB79C();

    v14 = sub_22A4DB76C();
    (*(v5 + 8))(v8, v4);
    return v14;
  }

  v14 = sub_2295BE854(v13, a2);
  v16 = v15;

  if (!v16)
  {
    goto LABEL_6;
  }

  return v14;
}

uint64_t sub_2295BED30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D928, &unk_22A579008);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295BEDA8()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295BEFD0(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295BEE30()
{
  sub_22A4DB7DC();
  sub_2295BEFD0(&qword_281403880, MEMORY[0x277CC95F0]);

  return sub_22A4DD4FC();
}

uint64_t sub_2295BEEB4()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295BEFD0(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t type metadata accessor for HomeDeviceEntity()
{
  result = qword_281403610;
  if (!qword_281403610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295BEFD0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2295BF018()
{
  v1 = v0;
  v80[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeDeviceEntity();
  v3 = *(*(v2 - 1) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v77 - v7;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v77 - v15;
  if (qword_27D87B8E8 != -1)
  {
    swift_once();
  }

  v17 = qword_27D8AB678;
  if (*(qword_27D8AB678 + 16) && (v18 = sub_2296DBDF0(*(v1 + v2[7])), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 4 * v18);
    v21 = (v1 + v2[6]);
    v22 = *v21;
    v23 = v21[1];
    v24 = objc_allocWithZone(MEMORY[0x277D21000]);
    v25 = sub_22A4DD5AC();
    v80[0] = 0;
    v26 = [v24 initWithName:v25 deviceType:v20 error:v80];

    v27 = v80[0];
    if (v26)
    {
      v28 = objc_allocWithZone(MEMORY[0x277D20FE0]);
      v80[0] = 0;
      v29 = v26;
      v30 = v27;
      v31 = [v28 initWithEntity:v29 entityType:4 error:v80];
      if (v31)
      {
        v78 = v31;
        v79 = v10;
        v32 = v80[0];

        v33 = sub_22A4DB76C();
        v77 = v29;
        v34 = v33;
        v36 = v35;
        v37 = (v1 + v2[5]);
        v38 = *v37;
        v39 = v37[1];
        v40 = objc_allocWithZone(MEMORY[0x277D20FE8]);

        v69 = sub_2295C3654(v34, v36, v38, v39);
        v70 = v77;
        v71 = objc_allocWithZone(MEMORY[0x277CF94C8]);
        v80[0] = 0;
        v72 = v78;
        v73 = [v71 initWithContent:v78 metaContent:v69 error:v80];
        v74 = v80[0];
        if (v73)
        {

          result = v73;
          goto LABEL_13;
        }

        v75 = v74;
        v76 = v72;
        v53 = sub_22A4DB3EC();

        swift_willThrow();
        v10 = v79;
      }

      else
      {
        v54 = v80[0];
        v53 = sub_22A4DB3EC();

        swift_willThrow();
      }
    }

    else
    {
      v52 = v80[0];
      v53 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v55 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_2295BED30();
    sub_22A4DD06C();
    sub_22959E67C(v1, v6);
    v56 = v53;
    v57 = sub_22A4DD05C();
    v58 = sub_22A4DDCEC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v79 = v10;
      v61 = v60;
      v62 = swift_slowAlloc();
      v80[0] = v62;
      *v59 = 136315394;
      v63 = sub_2295B9A4C();
      v78 = v9;
      v65 = v64;
      sub_22959E6E0(v6);
      v66 = sub_2295A3E30(v63, v65, v80);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2112;
      v67 = v53;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 14) = v68;
      *v61 = v68;
      _os_log_impl(&dword_229538000, v57, v58, "Failed to create CCHomeService for %s: %@", v59, 0x16u);
      sub_22953EAE4(v61, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v61, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AAD4E50](v62, -1, -1);
      MEMORY[0x22AAD4E50](v59, -1, -1);

      (*(v79 + 8))(v14, v78);
    }

    else
    {

      sub_22959E6E0(v6);
      (*(v10 + 8))(v14, v9);
    }
  }

  else
  {
    v41 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_2295BED30();
    sub_22A4DD06C();
    sub_22959E67C(v1, v8);
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCEC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v80[0] = v45;
      *v44 = 136315138;
      v46 = sub_2295B9A4C();
      v48 = v47;
      sub_22959E6E0(v8);
      v49 = sub_2295A3E30(v46, v48, v80);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_229538000, v42, v43, "Failed to create CCHomeService for %s as there is no cascade device type for it", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);
    }

    else
    {

      sub_22959E6E0(v8);
    }

    (*(v10 + 8))(v16, v9);
  }

  result = 0;
LABEL_13:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2295BF710(void *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = [a1 destinationIdentifier];
  if (v11)
  {
    v12 = v11;
    sub_22A4DB79C();

    (*(v3 + 32))(v10, v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
    sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);
    v13 = [a1 identifier];
    sub_22A4DB79C();

    v14 = sub_22A4DB76C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
    sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);
    return 0;
  }

  return v14;
}

uint64_t sub_2295BF928(uint64_t a1, _BYTE *a2, void *a3)
{
  v4 = v3;
  v120 = a1;
  v121 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v128 = *(v7 - 8);
  v129 = v7;
  v8 = *(v128 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v123 = &v113[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v118 = &v113[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v113[-v13];
  v15 = sub_22A4DB7DC();
  v124 = *(v15 - 8);
  v125 = v15;
  v16 = *(v124 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v119 = &v113[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v113[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v113[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v113[-v26];
  v28 = type metadata accessor for HomeDeviceEntity();
  v126 = *(v28 - 8);
  v29 = *(v126 + 64);
  MEMORY[0x28223BE20](v28);
  v122 = &v113[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = [v3 audioDestination];
  if (v31)
  {
    v32 = v31;
    sub_2295BE854(v31, a3);
  }

  else
  {
    v33 = [v3 audioDestinationControllerData];
    if (!v33)
    {
      goto LABEL_6;
    }

    v32 = v33;
    sub_2295BF710(v33);
  }

LABEL_6:
  v130 = v28;
  v127 = v27;
  v34 = [v3 category];
  v35 = [v34 categoryType];

  v36 = sub_22A4DD5EC();
  v38 = v37;

  v39 = [v4 spiClientIdentifier];
  sub_22A4DB79C();

  v40 = [v4 uuid];
  sub_22A4DB79C();

  v41 = [v4 urlString];
  if (v41)
  {
    v42 = v41;
    v43 = sub_22A4DD5EC();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  sub_2295BE650();

  if (qword_27D87B8D8 != -1)
  {
    swift_once();
  }

  v46 = qword_27D8AB668;
  if (!*(qword_27D8AB668 + 16) || (v47 = sub_229543DBC(v36, v38), (v48 & 1) == 0))
  {

    v56 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_2295BED30();
    sub_22A4DD06C();

    v57 = sub_22A4DD05C();
    v58 = sub_22A4DDCEC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v121 = v23;
      v61 = v60;
      v131 = v60;
      *v59 = 136315138;
      v62 = sub_2295A3E30(v36, v38, &v131);

      *(v59 + 4) = v62;
      _os_log_impl(&dword_229538000, v57, v58, "Unable to map accessory category %s to a device type.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      v64 = v128;
      v63 = v129;
      MEMORY[0x22AAD4E50](v61, -1, -1);
      MEMORY[0x22AAD4E50](v59, -1, -1);

      (*(v64 + 8))(v14, v63);
      v65 = v125;
      v66 = *(v124 + 8);
      v66(v21, v125);
      v66(v121, v65);
    }

    else
    {

      (*(v128 + 8))(v14, v129);
      v67 = v125;
      v68 = *(v124 + 8);
      v68(v21, v125);
      v68(v23, v67);
    }

    goto LABEL_20;
  }

  v117 = ObjectType;
  v114 = *(*(v46 + 56) + v47);
  v49 = *MEMORY[0x277CCE8B0];
  v50 = sub_22A4DD5EC();
  v115 = v43;
  v116 = v21;
  if (v36 != v50 || v38 != v51)
  {
    v70 = v23;
    v71 = sub_22A4DE60C();

    if (v71)
    {
      v52 = v70;
      v53 = &unk_283CDA5D8;
LABEL_23:
      v54 = v127;
      v55 = v130;
      goto LABEL_24;
    }

    v91 = *MEMORY[0x277CCE870];
    if (v36 == sub_22A4DD5EC() && v38 == v92)
    {
      v52 = v70;
      v53 = &unk_283CDA600;
      goto LABEL_16;
    }

    v93 = sub_22A4DE60C();

    if (v93)
    {
      v52 = v70;
      v53 = &unk_283CDA600;
      goto LABEL_23;
    }

    v94 = *MEMORY[0x277CCE860];
    if (v36 == sub_22A4DD5EC() && v38 == v95)
    {
LABEL_37:
      v52 = v70;
      v53 = &unk_283CDA628;
      goto LABEL_16;
    }

    v96 = sub_22A4DE60C();

    if (v96)
    {
      goto LABEL_39;
    }

    v97 = *MEMORY[0x277CCE900];
    if (v36 == sub_22A4DD5EC() && v38 == v98)
    {
      goto LABEL_37;
    }

    v99 = sub_22A4DE60C();

    if (v99)
    {
LABEL_39:
      v52 = v70;
      v53 = &unk_283CDA628;
      goto LABEL_23;
    }

    v100 = *MEMORY[0x277CCE8B8];
    if (v36 == sub_22A4DD5EC() && v38 == v101)
    {
      v52 = v70;
      v53 = &unk_283CDA650;
      goto LABEL_16;
    }

    v102 = sub_22A4DE60C();

    v103 = v38;
    if (v102)
    {
      v52 = v70;
      v53 = &unk_283CDA650;
      goto LABEL_23;
    }

    v104 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_2295BED30();
    v105 = v118;
    sub_22A4DD06C();

    v106 = sub_22A4DD05C();
    v107 = sub_22A4DDCEC();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v131 = v109;
      *v108 = 136315138;
      v110 = sub_2295A3E30(v36, v103, &v131);

      *(v108 + 4) = v110;
      _os_log_impl(&dword_229538000, v106, v107, "Please add support for %s to HomeDeviceEntity.", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x22AAD4E50](v109, -1, -1);
      MEMORY[0x22AAD4E50](v108, -1, -1);
    }

    else
    {
    }

    (*(v128 + 8))(v105, v129);
    v111 = v125;
    v112 = *(v124 + 8);
    v112(v21, v125);
    v112(v70, v111);
LABEL_20:
    v69 = v126;
    v54 = v127;
    v55 = v130;
    (*(v126 + 56))(v127, 1, 1, v130);
    goto LABEL_25;
  }

  v52 = v23;
  v53 = &unk_283CDA5D8;
LABEL_16:
  v54 = v127;
  v55 = v130;

LABEL_24:

  sub_22965C1A0(v53);

  v73 = v124;
  v72 = v125;
  v74 = v119;
  (*(v124 + 16))(v119, v52, v125);
  v75 = *(v73 + 8);
  v75(v116, v72);
  v75(v52, v72);
  v76 = (v54 + v55[5]);
  *v76 = v115;
  v76[1] = v45;
  (*(v73 + 32))(v54, v74, v72);
  v77 = (v54 + v55[6]);
  v78 = v121;
  *v77 = v120;
  v77[1] = v78;
  *(v54 + v55[7]) = v114;
  v69 = v126;
  (*(v126 + 56))(v54, 0, 1, v55);

LABEL_25:
  if ((*(v69 + 48))(v54, 1, v55) == 1)
  {
    sub_22953EAE4(v54, &qword_27D87D930, &qword_22A579018);
    sub_22A4DDBFC();
    v79 = v4;
    v80 = sub_22A4DD05C();
    v81 = sub_22A4DDCEC();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412290;
      *(v82 + 4) = v79;
      *v83 = v79;
      v84 = v79;
      _os_log_impl(&dword_229538000, v80, v81, "Unable to create HomeDeviceEntity for %@", v82, 0xCu);
      sub_22953EAE4(v83, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v83, -1, -1);
      MEMORY[0x22AAD4E50](v82, -1, -1);
    }

    (*(v128 + 8))(v123, v129);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    v86 = v122;
    sub_22957A0B4(v54, v122, type metadata accessor for HomeDeviceEntity);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
    v87 = *(v69 + 72);
    v88 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_22A576180;
    sub_22959E67C(v86, v89 + v88);
    v90 = sub_22965C354(v89);
    swift_setDeallocating();
    sub_22959E6E0(v89 + v88);
    swift_deallocClassInstance();
    sub_22959E6E0(v86);
    return v90;
  }
}

uint64_t sub_2295C05F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = [v2 matterAdapter];
  v15 = [v14 supportsRVC];

  if (!v15)
  {
    return MEMORY[0x277D84FA0];
  }

  v33 = a1;
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
  v16 = type metadata accessor for HomeDeviceEntity();
  v17 = *(*(v16 - 1) + 72);
  v18 = (*(*(v16 - 1) + 80) + 32) & ~*(*(v16 - 1) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22A576180;
  v20 = v19 + v18;
  v21 = [v3 uuid];
  sub_22A4DB79C();

  v22 = [v3 spiClientIdentifier];
  sub_22A4DB79C();

  sub_22965C1A0(&unk_283CDA678);

  v23 = [v3 urlString];
  if (v23)
  {
    v24 = v23;
    v25 = sub_22A4DD5EC();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  (*(v7 + 8))(v13, v6);
  v29 = (v20 + v16[5]);
  *v29 = v25;
  v29[1] = v27;
  (*(v7 + 32))(v20, v11, v6);
  v30 = (v20 + v16[6]);
  v31 = v34;
  *v30 = v33;
  v30[1] = v31;
  *(v20 + v16[7]) = 24;

  v32 = sub_22965C354(v19);
  swift_setDeallocating();
  sub_22959E6E0(v20);
  swift_deallocClassInstance();
  return v32;
}

uint64_t sub_2295C08E4(void *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v15 = [a1 name];
  v16 = sub_22A4DD5EC();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    v24 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    sub_22A4DD06C();
    v25 = a1;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_229538000, v26, v27, "No name found for accessory or it is empty: %@", v28, 0xCu);
      sub_22953EAE4(v29, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    (*(v5 + 8))(v14, v4);
    return MEMORY[0x277D84FA0];
  }

  if (!a2)
  {

    v31 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    type metadata accessor for HomeDeviceEntity();
    sub_2295BED30();
    sub_22A4DD06C();
    v32 = a1;
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_229538000, v33, v34, "Accessory does not belong to a home: %@", v35, 0xCu);
      sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return MEMORY[0x277D84FA0];
  }

  v20 = a2;
  v21 = [a1 room];
  v50 = MEMORY[0x277D84FA0];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v22 = a1;
    v23 = sub_2295B9BDC(v16, v18, v20, v21);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v22 = a1;
      v23 = sub_2295BAC18(v16, v18);
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v40 = a1;
          v41 = sub_2295C05F0(v16, v18);

          sub_2295948C4(v41);
        }

        else
        {

          v42 = *MEMORY[0x277D0F1A8];
          sub_22A4DD5EC();
          type metadata accessor for HomeDeviceEntity();
          sub_2295BED30();
          sub_22A4DD06C();
          v43 = a1;
          v44 = sub_22A4DD05C();
          v45 = sub_22A4DDCEC();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *v46 = 138412290;
            *(v46 + 4) = v43;
            *v47 = v43;
            v48 = v43;
            _os_log_impl(&dword_229538000, v44, v45, "Unknown type of accessory found: %@", v46, 0xCu);
            sub_22953EAE4(v47, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v47, -1, -1);
            MEMORY[0x22AAD4E50](v46, -1, -1);
          }

          (*(v5 + 8))(v12, v4);
        }

        return v50;
      }

      v22 = a1;
      v23 = sub_2295BF928(v16, v18, v20);
    }
  }

  v39 = v23;

  sub_2295948C4(v39);

  return v50;
}

unint64_t sub_2295C0F64()
{
  result = qword_27D87D940;
  if (!qword_27D87D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D940);
  }

  return result;
}

unint64_t sub_2295C0FB8()
{
  result = qword_27D87D948;
  if (!qword_27D87D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D948);
  }

  return result;
}

void sub_2295C1034()
{
  sub_22A4DB7DC();
  if (v0 <= 0x3F)
  {
    sub_2295C10D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2295C10D0()
{
  if (!qword_281401CE0)
  {
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281401CE0);
    }
  }
}

uint64_t sub_2295C1120(uint64_t a1)
{
  sub_22A4DE77C();
  v2 = *(a1 + 20);
  sub_22A4DB7DC();
  sub_2295C153C(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C11BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_22A4DB7DC();
  sub_2295C153C(&qword_281403880, MEMORY[0x277CC95F0]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295C123C(uint64_t a1, uint64_t a2)
{
  sub_22A4DE77C();
  v3 = *(a2 + 20);
  sub_22A4DB7DC();
  sub_2295C153C(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C12E4()
{
  v1 = v0;
  sub_22A4DE1FC();
  v2 = type metadata accessor for HomeEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D960, &qword_22A579120);
  v3 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  v4 = *(v2 + 20);
  sub_22A4DB7DC();
  sub_2295C153C(&qword_281403860, MEMORY[0x277CC95F0]);
  v5 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v3;
}

uint64_t sub_2295C142C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D960, &qword_22A579120);
  v0 = sub_22A4DBA6C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t type metadata accessor for HomeEntity()
{
  result = qword_2814032A8;
  if (!qword_2814032A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295C153C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2295C1584()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD07C();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D20FD0]);
  v14 = sub_22A4DD5AC();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:1 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = v1 + *(v2 + 20);
      v24 = sub_22A4DB76C();
      v26 = v25;
      v28 = *v1;
      v27 = v1[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_2295C3654(v24, v26, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_22A4DB3EC();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_22A4DB3EC();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_2295C142C();
  sub_22A4DD06C();
  sub_2295C1A64(v1, v5);
  v34 = v31;
  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCEC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_2295C12E4();
    v42 = v41;
    sub_2295C1AC8(v5);
    v43 = sub_2295A3E30(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_229538000, v35, v36, "Failed to create CCHome for %s: %@", v37, 0x16u);
    sub_2295A1C40(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_2295C1AC8(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2295C1A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C1AC8(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2295C1B4C()
{
  sub_2295C10D0();
  if (v0 <= 0x3F)
  {
    sub_22A4DB7DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for HomeGroupEntity()
{
  result = qword_2814036A8;
  if (!qword_2814036A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2295C1C6C(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22A4DD5EC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = [a1 spiClientIdentifier];
  v12 = type metadata accessor for HomeGroupEntity();
  v13 = a3 + *(v12 + 20);
  sub_22A4DB79C();

  v14 = [a1 name];
  v15 = sub_22A4DD5EC();
  v17 = v16;

  v18 = (a3 + *(v12 + 24));
  *v18 = v15;
  v18[1] = v17;
}

uint64_t sub_2295C1D64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 home];
  if (v9)
  {
    sub_2295C1C6C(a1, v9, a2);
    v10 = type metadata accessor for HomeGroupEntity();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 0, 1, v10);
  }

  else
  {
    v13 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v14 = type metadata accessor for HomeGroupEntity();
    sub_2295C215C();
    sub_22A4DD06C();
    v15 = a1;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_229538000, v16, v17, "serviceGroup %@ does not have a home", v18, 0xCu);
      sub_2295A1C40(v19);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_2295C2014()
{
  v1 = v0;
  sub_22A4DE1FC();
  v2 = type metadata accessor for HomeGroupEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D968, &qword_22A579200);
  v3 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  v4 = *(v2 + 20);
  sub_22A4DB7DC();
  sub_2295C238C(&qword_281403860, MEMORY[0x277CC95F0]);
  v5 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v3;
}

uint64_t sub_2295C215C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D968, &qword_22A579200);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C21D8(uint64_t a1)
{
  sub_22A4DE77C();
  v2 = *(a1 + 20);
  sub_22A4DB7DC();
  sub_2295C238C(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C2274(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_22A4DB7DC();
  sub_2295C238C(&qword_281403880, MEMORY[0x277CC95F0]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295C22F4(uint64_t a1, uint64_t a2)
{
  sub_22A4DE77C();
  v3 = *(a2 + 20);
  sub_22A4DB7DC();
  sub_2295C238C(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C238C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2295C23D4()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeGroupEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD07C();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D21028]);
  v14 = sub_22A4DD5AC();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:5 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = v1 + *(v2 + 20);
      v24 = sub_22A4DB76C();
      v26 = v25;
      v28 = *v1;
      v27 = v1[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_2295C3654(v24, v26, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_22A4DB3EC();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_22A4DB3EC();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_2295C215C();
  sub_22A4DD06C();
  sub_2295C28B4(v1, v5);
  v34 = v31;
  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCEC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_2295C2014();
    v42 = v41;
    sub_2295C2918(v5);
    v43 = sub_2295A3E30(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_229538000, v35, v36, "Failed to create CCHomeRoom for %s: %@", v37, 0x16u);
    sub_2295A1C40(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_2295C2918(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2295C28B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeGroupEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C2918(uint64_t a1)
{
  v2 = type metadata accessor for HomeGroupEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2295C299C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22A4DD5EC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = type metadata accessor for RoomEntity();
  v12 = (a3 + *(v11 + 20));
  *v12 = v8;
  v12[1] = v10;
  v13 = [a1 spiClientIdentifier];
  sub_22A4DB79C();

  v14 = [a1 name];
  v15 = sub_22A4DD5EC();
  v17 = v16;

  v18 = (a3 + *(v11 + 24));
  *v18 = v15;
  v18[1] = v17;
}

uint64_t sub_2295C2A94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 home];
  if (v9)
  {
    sub_2295C299C(a1, v9, a2);
    v10 = type metadata accessor for RoomEntity();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 0, 1, v10);
  }

  else
  {
    v13 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v14 = type metadata accessor for RoomEntity();
    sub_2295C2E88();
    sub_22A4DD06C();
    v15 = a1;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_229538000, v16, v17, "room %@ has no home", v18, 0xCu);
      sub_2295A1C40(v19);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_2295C2D44()
{
  sub_22A4DE1FC();
  v1 = type metadata accessor for RoomEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D978, &qword_22A5792E0);
  v2 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  sub_22A4DB7DC();
  sub_2295C3128(&qword_281403860, MEMORY[0x277CC95F0]);
  v3 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v3);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_2295C2E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D978, &qword_22A5792E0);
  v0 = sub_22A4DBA6C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C2F04()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C3128(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C2F8C()
{
  sub_22A4DB7DC();
  sub_2295C3128(&qword_281403880, MEMORY[0x277CC95F0]);

  return sub_22A4DD4FC();
}

uint64_t sub_2295C3010()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C3128(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t type metadata accessor for RoomEntity()
{
  result = qword_281403050;
  if (!qword_281403050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295C3128(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2295C3170()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for RoomEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD07C();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D20FF0]);
  v14 = sub_22A4DD5AC();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:3 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = sub_22A4DB76C();
      v25 = v24;
      v26 = (v1 + *(v2 + 20));
      v28 = *v26;
      v27 = v26[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_2295C3654(v23, v25, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_22A4DB3EC();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_22A4DB3EC();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_2295C2E88();
  sub_22A4DD06C();
  sub_2295C375C(v1, v5);
  v34 = v31;
  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCEC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_2295C2D44();
    v42 = v41;
    sub_2295C37C0(v5);
    v43 = sub_2295A3E30(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_229538000, v35, v36, "Failed to create CCHomeRoom for %s: %@", v37, 0x16u);
    sub_2295A1C40(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_2295C37C0(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2295C3654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = sub_22A4DD5AC();

  if (a4)
  {
    v7 = sub_22A4DD5AC();
  }

  else
  {
    v7 = 0;
  }

  v13[0] = 0;
  v8 = [v4 initWithSourceItemIdentifier:v6 assistantHomeKitIdentifier:v7 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_22A4DB3EC();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2295C375C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C37C0(uint64_t a1)
{
  v2 = type metadata accessor for RoomEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2295C3844()
{
  sub_22A4DB7DC();
  if (v0 <= 0x3F)
  {
    sub_2295C10D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2295C38D0(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22A4DD5EC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = [a1 spiClientIdentifier];
  v12 = type metadata accessor for SceneEntity();
  v13 = a3 + *(v12 + 20);
  sub_22A4DB79C();

  v14 = [a1 name];
  v15 = sub_22A4DD5EC();
  v17 = v16;

  v18 = (a3 + *(v12 + 24));
  *v18 = v15;
  v18[1] = v17;
}

uint64_t sub_2295C39C8()
{
  v1 = v0;
  sub_22A4DE1FC();
  v2 = type metadata accessor for SceneEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D988, &qword_22A5793C0);
  v3 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  v4 = *(v2 + 20);
  sub_22A4DB7DC();
  sub_2295C4084(&qword_281403860, MEMORY[0x277CC95F0]);
  v5 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v3;
}

uint64_t sub_2295C3B10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D988, &qword_22A5793C0);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C3B8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 home];
  if (v9)
  {
    sub_2295C38D0(a1, v9, a2);
    v10 = type metadata accessor for SceneEntity();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 0, 1, v10);
  }

  else
  {
    v13 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v14 = type metadata accessor for SceneEntity();
    sub_2295C3B10();
    sub_22A4DD06C();
    v15 = a1;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_229538000, v16, v17, "Scene does not have valid home reference: %@", v18, 0xCu);
      sub_2295A1C40(v19);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_2295C3E3C(uint64_t a1)
{
  sub_22A4DE77C();
  v2 = *(a1 + 20);
  sub_22A4DB7DC();
  sub_2295C4084(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C3ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_22A4DB7DC();
  sub_2295C4084(&qword_281403880, MEMORY[0x277CC95F0]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295C3F58(uint64_t a1, uint64_t a2)
{
  sub_22A4DE77C();
  v3 = *(a2 + 20);
  sub_22A4DB7DC();
  sub_2295C4084(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t type metadata accessor for SceneEntity()
{
  result = qword_281402DE8;
  if (!qword_281402DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295C4084(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2295C40CC()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for SceneEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD07C();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D20FF8]);
  v14 = sub_22A4DD5AC();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:6 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = v1 + *(v2 + 20);
      v24 = sub_22A4DB76C();
      v26 = v25;
      v28 = *v1;
      v27 = v1[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_2295C3654(v24, v26, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_22A4DB3EC();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_22A4DB3EC();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_2295C3B10();
  sub_22A4DD06C();
  sub_2295C45AC(v1, v5);
  v34 = v31;
  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCEC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_2295C39C8();
    v42 = v41;
    sub_2295C4610(v5);
    v43 = sub_2295A3E30(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_229538000, v35, v36, "Failed to create CCHomeScene for %s: %@", v37, 0x16u);
    sub_2295A1C40(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_2295C4610(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2295C45AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C4610(uint64_t a1)
{
  v2 = type metadata accessor for SceneEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295C4694()
{
  v1 = v0;
  sub_22A4DE1FC();
  v2 = type metadata accessor for ZoneEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D990, &qword_22A5794A0);
  v3 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  v4 = *(v2 + 20);
  sub_22A4DB7DC();
  sub_2295C4AA0(&qword_281403860, MEMORY[0x277CC95F0]);
  v5 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v3;
}

uint64_t sub_2295C47DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D990, &qword_22A5794A0);
  v0 = sub_22A4DBA6C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C4858(uint64_t a1)
{
  sub_22A4DE77C();
  v2 = *(a1 + 20);
  sub_22A4DB7DC();
  sub_2295C4AA0(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C48F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_22A4DB7DC();
  sub_2295C4AA0(&qword_281403880, MEMORY[0x277CC95F0]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295C4974(uint64_t a1, uint64_t a2)
{
  sub_22A4DE77C();
  v3 = *(a2 + 20);
  sub_22A4DB7DC();
  sub_2295C4AA0(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t type metadata accessor for ZoneEntity()
{
  result = qword_281402FA8;
  if (!qword_281402FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295C4AA0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2295C4AE8()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for ZoneEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD07C();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D21038]);
  v14 = sub_22A4DD5AC();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:2 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = v1 + *(v2 + 20);
      v24 = sub_22A4DB76C();
      v26 = v25;
      v28 = *v1;
      v27 = v1[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_2295C3654(v24, v26, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_22A4DB3EC();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_22A4DB3EC();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_2295C47DC();
  sub_22A4DD06C();
  sub_2295C4FC8(v1, v5);
  v34 = v31;
  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCEC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_2295C4694();
    v42 = v41;
    sub_2295C502C(v5);
    v43 = sub_2295A3E30(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_229538000, v35, v36, "Failed to create CCHomeZone for %s: %@", v37, 0x16u);
    sub_2295A1C40(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_2295C502C(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2295C4FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C502C(uint64_t a1)
{
  v2 = type metadata accessor for ZoneEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295C50B0(char a1)
{
  result = 0x7265776F70;
  switch(a1)
  {
    case 1:
      return 0x6669727550726961;
    case 2:
    case 13:
    case 39:
      return 0xD000000000000010;
    case 3:
      return 0x676E696772616863;
    case 4:
      return 0x5379726574746162;
    case 5:
    case 11:
    case 17:
    case 30:
    case 38:
      return 0xD000000000000012;
    case 6:
      return 0xD000000000000011;
    case 7:
      v4 = 1635020658;
      return v4 | 0x6E6F697400000000;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0x646F4D676E697773;
    case 10:
      return 0x65646F4D6E6166;
    case 12:
      return 0xD000000000000011;
    case 14:
      return 1801678700;
    case 15:
      return 0x6573696172;
    case 16:
      v4 = 1769172848;
      return v4 | 0x6E6F697400000000;
    case 18:
    case 29:
      return 0xD000000000000013;
    case 19:
      return 0x656E746867697262;
    case 20:
      return 0x726F6C6F63;
    case 21:
      return 0x4C6C61727574616ELL;
    case 22:
      return 0x696C617551726961;
    case 23:
      return 0x6E6544656E6F7A6FLL;
    case 24:
    case 33:
    case 34:
    case 43:
      return 0xD000000000000016;
    case 25:
    case 44:
      return 0xD000000000000015;
    case 26:
      v3 = 892489040;
      goto LABEL_42;
    case 27:
      v3 = 808537424;
LABEL_42:
      result = v3 | 0x736E654400000000;
      break;
    case 28:
    case 31:
    case 32:
      result = 0xD000000000000017;
      break;
    case 35:
      result = 0x6576654C6B616570;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 37:
      result = 0x657465446B61656CLL;
      break;
    case 40:
      result = 0x79746964696D7568;
      break;
    case 41:
      result = 0x74536E6F69746F6DLL;
      break;
    case 42:
      result = 0x746544656B6F6D73;
      break;
    case 45:
      result = 0x69666964696D7568;
      break;
    case 46:
      result = 0xD000000000000011;
      break;
    case 47:
      result = 0x6573556E69;
      break;
    case 48:
      result = 1886352499;
      break;
    case 49:
      result = 0x656D75736572;
      break;
    case 50:
      result = 0x6573756170;
      break;
    case 51:
      result = 0x676E696E61656C63;
      break;
    case 52:
      result = 0x7274536F65646976;
      break;
    case 53:
      result = 0x696C436F65646976;
      break;
    case 54:
      result = 0xD000000000000011;
      break;
    case 55:
      result = 0x4579616C70726961;
      break;
    case 56:
      result = 0x616964656DLL;
      break;
    case 57:
      result = 0x6D6F637265746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2295C5640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D998, &qword_22A5794E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22A5794D0;
  v1 = *MEMORY[0x277CCF9F0];
  *(v0 + 32) = sub_22A4DD5EC();
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  v3 = *MEMORY[0x277CCF7F8];
  *(v0 + 56) = sub_22A4DD5EC();
  *(v0 + 64) = v4;
  *(v0 + 72) = 2;
  v5 = *MEMORY[0x277CCFB00];
  *(v0 + 80) = sub_22A4DD5EC();
  *(v0 + 88) = v6;
  *(v0 + 96) = 1;
  v7 = *MEMORY[0x277CCF7D0];
  *(v0 + 104) = sub_22A4DD5EC();
  *(v0 + 112) = v8;
  *(v0 + 120) = 3;
  v9 = *MEMORY[0x277CCF780];
  *(v0 + 128) = sub_22A4DD5EC();
  *(v0 + 136) = v10;
  *(v0 + 144) = 4;
  v11 = *MEMORY[0x277CCFAA8];
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v12;
  *(v0 + 168) = 4;
  v13 = *MEMORY[0x277CCF818];
  *(v0 + 176) = sub_22A4DD5EC();
  *(v0 + 184) = v14;
  *(v0 + 192) = 5;
  v15 = *MEMORY[0x277CCFB20];
  *(v0 + 200) = sub_22A4DD5EC();
  *(v0 + 208) = v16;
  *(v0 + 216) = 6;
  v17 = *MEMORY[0x277CCFA20];
  *(v0 + 224) = sub_22A4DD5EC();
  *(v0 + 232) = v18;
  *(v0 + 240) = 7;
  v19 = *MEMORY[0x277CCFA18];
  *(v0 + 248) = sub_22A4DD5EC();
  *(v0 + 256) = v20;
  *(v0 + 264) = 8;
  v21 = *MEMORY[0x277CCFAF8];
  *(v0 + 272) = sub_22A4DD5EC();
  *(v0 + 280) = v22;
  *(v0 + 288) = 9;
  v23 = *MEMORY[0x277CCFB10];
  *(v0 + 296) = sub_22A4DD5EC();
  *(v0 + 304) = v24;
  *(v0 + 312) = 10;
  v25 = *MEMORY[0x277CCF868];
  *(v0 + 320) = sub_22A4DD5EC();
  *(v0 + 328) = v26;
  *(v0 + 336) = 11;
  v27 = *MEMORY[0x277CCFB68];
  *(v0 + 344) = sub_22A4DD5EC();
  *(v0 + 352) = v28;
  *(v0 + 360) = 12;
  v29 = *MEMORY[0x277CCF7F0];
  *(v0 + 368) = sub_22A4DD5EC();
  *(v0 + 376) = v30;
  *(v0 + 384) = 13;
  v31 = *MEMORY[0x277CCF8C8];
  *(v0 + 392) = sub_22A4DD5EC();
  *(v0 + 400) = v32;
  *(v0 + 408) = 13;
  v33 = *MEMORY[0x277CCF838];
  *(v0 + 416) = sub_22A4DD5EC();
  *(v0 + 424) = v34;
  *(v0 + 432) = 14;
  v35 = *MEMORY[0x277CCFB40];
  *(v0 + 440) = sub_22A4DD5EC();
  *(v0 + 448) = v36;
  *(v0 + 456) = 14;
  v37 = *MEMORY[0x277CCF800];
  *(v0 + 464) = sub_22A4DD5EC();
  *(v0 + 472) = v38;
  *(v0 + 480) = 15;
  v39 = *MEMORY[0x277CCFB08];
  *(v0 + 488) = sub_22A4DD5EC();
  *(v0 + 496) = v40;
  *(v0 + 504) = 15;
  v41 = *MEMORY[0x277CCF848];
  *(v0 + 512) = sub_22A4DD5EC();
  *(v0 + 520) = v42;
  *(v0 + 528) = 16;
  v43 = *MEMORY[0x277CCFB50];
  *(v0 + 536) = sub_22A4DD5EC();
  *(v0 + 544) = v44;
  *(v0 + 552) = 16;
  v45 = *MEMORY[0x277CCF858];
  *(v0 + 560) = sub_22A4DD5EC();
  *(v0 + 568) = v46;
  *(v0 + 576) = 17;
  v47 = *MEMORY[0x277CCFB60];
  *(v0 + 584) = sub_22A4DD5EC();
  *(v0 + 592) = v48;
  *(v0 + 600) = 17;
  v49 = *MEMORY[0x277CCF958];
  *(v0 + 608) = sub_22A4DD5EC();
  *(v0 + 616) = v50;
  *(v0 + 624) = 18;
  v51 = *MEMORY[0x277CCF788];
  *(v0 + 632) = sub_22A4DD5EC();
  *(v0 + 640) = v52;
  *(v0 + 648) = 19;
  v53 = *MEMORY[0x277CCFA30];
  *(v0 + 656) = sub_22A4DD5EC();
  *(v0 + 664) = v54;
  *(v0 + 672) = 20;
  v55 = *MEMORY[0x277CCF8D8];
  *(v0 + 680) = sub_22A4DD5EC();
  *(v0 + 688) = v56;
  *(v0 + 696) = 20;
  v57 = *MEMORY[0x277CCF770];
  *(v0 + 704) = sub_22A4DD5EC();
  *(v0 + 712) = v58;
  *(v0 + 720) = 22;
  v59 = *MEMORY[0x277CCF9C8];
  *(v0 + 728) = sub_22A4DD5EC();
  *(v0 + 736) = v60;
  *(v0 + 744) = 23;
  v61 = *MEMORY[0x277CCF998];
  *(v0 + 752) = sub_22A4DD5EC();
  *(v0 + 760) = v62;
  *(v0 + 768) = 24;
  v63 = *MEMORY[0x277CCFAC0];
  *(v0 + 776) = sub_22A4DD5EC();
  *(v0 + 784) = v64;
  *(v0 + 792) = 25;
  v65 = *MEMORY[0x277CCF9D8];
  *(v0 + 800) = sub_22A4DD5EC();
  *(v0 + 808) = v66;
  *(v0 + 816) = 26;
  v67 = *MEMORY[0x277CCF9D0];
  *(v0 + 824) = sub_22A4DD5EC();
  *(v0 + 832) = v68;
  *(v0 + 840) = 27;
  v69 = *MEMORY[0x277CCFBA0];
  *(v0 + 848) = sub_22A4DD5EC();
  *(v0 + 856) = v70;
  *(v0 + 864) = 28;
  v71 = *MEMORY[0x277CCF7A0];
  *(v0 + 872) = sub_22A4DD5EC();
  *(v0 + 880) = v72;
  *(v0 + 888) = 34;
  v73 = *MEMORY[0x277CCF7A8];
  *(v0 + 896) = sub_22A4DD5EC();
  *(v0 + 904) = v74;
  *(v0 + 912) = 30;
  v75 = *MEMORY[0x277CCF7B0];
  *(v0 + 920) = sub_22A4DD5EC();
  *(v0 + 928) = v76;
  *(v0 + 936) = 33;
  v77 = *MEMORY[0x277CCF7B8];
  *(v0 + 944) = sub_22A4DD5EC();
  *(v0 + 952) = v78;
  *(v0 + 960) = 31;
  v79 = *MEMORY[0x277CCF7C0];
  *(v0 + 968) = sub_22A4DD5EC();
  *(v0 + 976) = v80;
  *(v0 + 984) = 29;
  v81 = *MEMORY[0x277CCF7C8];
  *(v0 + 992) = sub_22A4DD5EC();
  *(v0 + 1000) = v82;
  *(v0 + 1008) = 32;
  v83 = *MEMORY[0x277CCF938];
  *(v0 + 1016) = sub_22A4DD5EC();
  *(v0 + 1024) = v84;
  *(v0 + 1032) = 37;
  v85 = *MEMORY[0x277CCF9A8];
  *(v0 + 1040) = sub_22A4DD5EC();
  *(v0 + 1048) = v86;
  *(v0 + 1056) = 38;
  v87 = *MEMORY[0x277CCF7E8];
  *(v0 + 1064) = sub_22A4DD5EC();
  *(v0 + 1072) = v88;
  *(v0 + 1080) = 39;
  v89 = *MEMORY[0x277CCF830];
  *(v0 + 1088) = sub_22A4DD5EC();
  *(v0 + 1096) = v90;
  *(v0 + 1104) = 36;
  v91 = *MEMORY[0x277CCF850];
  *(v0 + 1112) = sub_22A4DD5EC();
  *(v0 + 1120) = v92;
  *(v0 + 1128) = 40;
  v93 = *MEMORY[0x277CCF978];
  *(v0 + 1136) = sub_22A4DD5EC();
  *(v0 + 1144) = v94;
  *(v0 + 1152) = 41;
  v95 = *MEMORY[0x277CCFA80];
  *(v0 + 1160) = sub_22A4DD5EC();
  *(v0 + 1168) = v96;
  *(v0 + 1176) = 42;
  v97 = *MEMORY[0x277CCF828];
  *(v0 + 1184) = sub_22A4DD5EC();
  *(v0 + 1192) = v98;
  *(v0 + 1200) = 43;
  v99 = *MEMORY[0x277CCFB30];
  *(v0 + 1208) = sub_22A4DD5EC();
  *(v0 + 1216) = v100;
  *(v0 + 1224) = 44;
  v101 = *MEMORY[0x277CCF8E0];
  *(v0 + 1232) = sub_22A4DD5EC();
  *(v0 + 1240) = v102;
  *(v0 + 1248) = 45;
  v103 = *MEMORY[0x277CCF888];
  *(v0 + 1256) = sub_22A4DD5EC();
  *(v0 + 1264) = v104;
  *(v0 + 1272) = 46;
  v105 = *MEMORY[0x277CCF9B8];
  *(v0 + 1280) = sub_22A4DD5EC();
  *(v0 + 1288) = v106;
  *(v0 + 1296) = 47;
  v107 = *MEMORY[0x277CCFA08];
  *(v0 + 1304) = sub_22A4DD5EC();
  *(v0 + 1312) = v108;
  *(v0 + 1320) = 54;
  v109 = sub_22956AEF8(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9A0, &qword_22A5794E8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27D8AB660 = v109;
  return result;
}

uint64_t sub_2295C5D3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2295C50B0(*a1);
  v5 = v4;
  if (v3 == sub_2295C50B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22A4DE60C();
  }

  return v8 & 1;
}

uint64_t sub_2295C5DC4()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_2295C50B0(v1);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_2295C5E28()
{
  sub_2295C50B0(*v0);
  sub_22A4DD6BC();
}

uint64_t sub_2295C5E7C()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_2295C50B0(v1);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_2295C5EDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2295C60E0();
  *a2 = result;
  return result;
}

uint64_t sub_2295C5F0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2295C50B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeCapability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC7)
  {
    goto LABEL_17;
  }

  if (a2 + 57 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 57) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 57;
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

      return (*a1 | (v4 << 8)) - 57;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 57;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v8 = v6 - 58;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeCapability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC7)
  {
    v4 = 0;
  }

  if (a2 > 0xC6)
  {
    v5 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
    *result = a2 + 57;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2295C608C()
{
  result = qword_2814036C0;
  if (!qword_2814036C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814036C0);
  }

  return result;
}

uint64_t sub_2295C60E0()
{
  v0 = sub_22A4DE62C();

  if (v0 >= 0x3A)
  {
    return 58;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2295C6134(char a1)
{
  result = 0x6669727550726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x79726574746162;
      break;
    case 3:
      result = 0x6172656D6163;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x53746361746E6F63;
      break;
    case 7:
      result = 0x6C6C6542726F6F64;
      break;
    case 8:
      result = 0x6B636F4C726F6F64;
      break;
    case 9:
      result = 7233894;
      break;
    case 10:
      result = 0x746563756166;
      break;
    case 11:
      result = 0x7265746C6966;
      break;
    case 12:
      result = 0x6F44656761726167;
      break;
    case 13:
      result = 0x6F43726574616568;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x79746964696D7568;
      break;
    case 16:
      result = 0x736E65536B61656CLL;
      break;
    case 17:
      result = 0x6C7562746867696CLL;
      break;
    case 18:
      v3 = 0x53746867696CLL;
      goto LABEL_42;
    case 19:
      result = 0x65536E6F69746F6DLL;
      break;
    case 20:
    case 21:
      result = 0x657A69726F746F6DLL;
      break;
    case 22:
      result = 0x636E61707563636FLL;
      break;
    case 23:
      result = 0x74656C74756FLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x7974697275636573;
      break;
    case 26:
      result = 0x7265776F6873;
      break;
    case 27:
      result = 1802398067;
      break;
    case 28:
      result = 1952541811;
      break;
    case 29:
      v3 = 0x53656B6F6D73;
LABEL_42:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 30:
      result = 0x656C6B6E69727073;
      break;
    case 31:
      result = 0x686374697773;
      break;
    case 32:
      result = 0x69736976656C6574;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0x74736F6D72656874;
      break;
    case 35:
      result = 0x65766C6176;
      break;
    case 36:
      result = 0x6F43776F646E6977;
      break;
    case 37:
      result = 0x706F4D746F626F72;
      break;
    case 38:
      result = 0x646F50656D6F68;
      break;
    case 39:
      result = 0x5654656C707061;
      break;
    case 40:
      result = 0x72656B61657073;
      break;
    case 41:
      result = 0x6B63696B65646973;
      break;
    case 42:
      result = 0x736564616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2295C65C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9A8, &qword_22A5795D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5795B0;
  v1 = *MEMORY[0x277CCE8E8];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v2;
  *(inited + 48) = 25;
  v3 = *MEMORY[0x277CCE888];
  *(inited + 56) = sub_22A4DD5EC();
  *(inited + 64) = v4;
  *(inited + 72) = 20;
  v5 = *MEMORY[0x277CCE890];
  *(inited + 80) = sub_22A4DD5EC();
  *(inited + 88) = v6;
  *(inited + 96) = 8;
  v7 = *MEMORY[0x277CCE898];
  *(inited + 104) = sub_22A4DD5EC();
  *(inited + 112) = v8;
  *(inited + 120) = 9;
  v9 = *MEMORY[0x277CCE8A8];
  *(inited + 128) = sub_22A4DD5EC();
  *(inited + 136) = v10;
  *(inited + 144) = 12;
  v11 = *MEMORY[0x277CCE8B8];
  *(inited + 152) = sub_22A4DD5EC();
  *(inited + 160) = v12;
  *(inited + 168) = 3;
  v13 = *MEMORY[0x277CCE8C0];
  *(inited + 176) = sub_22A4DD5EC();
  *(inited + 184) = v14;
  *(inited + 192) = 17;
  v15 = *MEMORY[0x277CCE8D0];
  *(inited + 200) = sub_22A4DD5EC();
  *(inited + 208) = v16;
  *(inited + 216) = 23;
  v17 = *MEMORY[0x277CCE8D8];
  *(inited + 224) = sub_22A4DD5EC();
  *(inited + 232) = v18;
  *(inited + 240) = 31;
  v19 = *MEMORY[0x277CCE910];
  *(inited + 248) = sub_22A4DD5EC();
  *(inited + 256) = v20;
  *(inited + 264) = 31;
  v21 = *MEMORY[0x277CCE940];
  *(inited + 272) = sub_22A4DD5EC();
  *(inited + 280) = v22;
  *(inited + 288) = 34;
  v23 = *MEMORY[0x277CCE948];
  *(inited + 296) = sub_22A4DD5EC();
  *(inited + 304) = v24;
  *(inited + 312) = 7;
  v25 = *MEMORY[0x277CCE958];
  *(inited + 320) = sub_22A4DD5EC();
  *(inited + 328) = v26;
  *(inited + 336) = 21;
  v27 = *MEMORY[0x277CCE960];
  *(inited + 344) = sub_22A4DD5EC();
  *(inited + 352) = v28;
  *(inited + 360) = 36;
  v29 = *MEMORY[0x277CCE848];
  *(inited + 368) = sub_22A4DD5EC();
  *(inited + 376) = v30;
  *(inited + 384) = 14;
  v31 = *MEMORY[0x277CCE850];
  *(inited + 392) = sub_22A4DD5EC();
  *(inited + 400) = v32;
  *(inited + 408) = 13;
  v33 = *MEMORY[0x277CCE840];
  *(inited + 416) = sub_22A4DD5EC();
  *(inited + 424) = v34;
  *(inited + 432) = 13;
  v35 = *MEMORY[0x277CCE858];
  *(inited + 440) = sub_22A4DD5EC();
  *(inited + 448) = v36;
  *(inited + 456) = 14;
  v37 = *MEMORY[0x277CCE868];
  *(inited + 464) = sub_22A4DD5EC();
  *(inited + 472) = v38;
  *(inited + 480) = 0;
  v39 = *MEMORY[0x277CCE870];
  *(inited + 488) = sub_22A4DD5EC();
  *(inited + 496) = v40;
  *(inited + 504) = 39;
  v41 = *MEMORY[0x277CCE8B0];
  *(inited + 512) = sub_22A4DD5EC();
  *(inited + 520) = v42;
  *(inited + 528) = 38;
  v43 = *MEMORY[0x277CCE900];
  *(inited + 536) = sub_22A4DD5EC();
  *(inited + 544) = v44;
  *(inited + 552) = 40;
  v45 = *MEMORY[0x277CCE860];
  *(inited + 560) = sub_22A4DD5EC();
  *(inited + 568) = v46;
  *(inited + 576) = 40;
  v47 = *MEMORY[0x277CCE908];
  *(inited + 584) = sub_22A4DD5EC();
  *(inited + 592) = v48;
  *(inited + 600) = 30;
  v49 = *MEMORY[0x277CCE8F8];
  *(inited + 608) = sub_22A4DD5EC();
  *(inited + 616) = v50;
  *(inited + 624) = 26;
  v51 = *MEMORY[0x277CCE8A0];
  *(inited + 632) = sub_22A4DD5EC();
  *(inited + 640) = v52;
  *(inited + 648) = 27;
  v53 = *MEMORY[0x277CCE920];
  *(inited + 656) = sub_22A4DD5EC();
  *(inited + 664) = v54;
  *(inited + 672) = 32;
  v55 = *MEMORY[0x277CCE930];
  *(inited + 680) = sub_22A4DD5EC();
  *(inited + 688) = v56;
  *(inited + 696) = 32;
  v57 = *MEMORY[0x277CCE938];
  *(inited + 704) = sub_22A4DD5EC();
  *(inited + 712) = v58;
  *(inited + 720) = 32;
  v59 = sub_22956AEE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9B0, &qword_22A5795D8);
  result = swift_arrayDestroy();
  qword_27D8AB668 = v59;
  return result;
}

uint64_t sub_2295C69A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9A8, &qword_22A5795D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22A5795C0;
  v1 = *MEMORY[0x277CD0DD8];
  *(v0 + 32) = sub_22A4DD5EC();
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  v3 = *MEMORY[0x277CD0DE0];
  *(v0 + 56) = sub_22A4DD5EC();
  *(v0 + 64) = v4;
  *(v0 + 72) = 1;
  v5 = *MEMORY[0x277CD0DE8];
  *(v0 + 80) = sub_22A4DD5EC();
  *(v0 + 88) = v6;
  *(v0 + 96) = 2;
  v7 = *MEMORY[0x277CD0E10];
  *(v0 + 104) = sub_22A4DD5EC();
  *(v0 + 112) = v8;
  *(v0 + 120) = 4;
  v9 = *MEMORY[0x277CD0E18];
  *(v0 + 128) = sub_22A4DD5EC();
  *(v0 + 136) = v10;
  *(v0 + 144) = 5;
  v11 = *MEMORY[0x277CD0E20];
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v12;
  *(v0 + 168) = 6;
  v13 = *MEMORY[0x277CD0E38];
  *(v0 + 176) = sub_22A4DD5EC();
  *(v0 + 184) = v14;
  *(v0 + 192) = 7;
  v15 = *MEMORY[0x277CD0EB0];
  *(v0 + 200) = sub_22A4DD5EC();
  *(v0 + 208) = v16;
  *(v0 + 216) = 8;
  v17 = *MEMORY[0x277CD0E40];
  *(v0 + 224) = sub_22A4DD5EC();
  *(v0 + 232) = v18;
  *(v0 + 240) = 9;
  v19 = *MEMORY[0x277CD0F40];
  *(v0 + 248) = sub_22A4DD5EC();
  *(v0 + 256) = v20;
  *(v0 + 264) = 9;
  v21 = *MEMORY[0x277CD0E48];
  *(v0 + 272) = sub_22A4DD5EC();
  *(v0 + 280) = v22;
  *(v0 + 288) = 10;
  v23 = *MEMORY[0x277CD0E50];
  *(v0 + 296) = sub_22A4DD5EC();
  *(v0 + 304) = v24;
  *(v0 + 312) = 11;
  v25 = *MEMORY[0x277CD0E58];
  *(v0 + 320) = sub_22A4DD5EC();
  *(v0 + 328) = v26;
  *(v0 + 336) = 12;
  v27 = *MEMORY[0x277CD0E60];
  *(v0 + 344) = sub_22A4DD5EC();
  *(v0 + 352) = v28;
  *(v0 + 360) = 13;
  v29 = *MEMORY[0x277CD0E68];
  *(v0 + 368) = sub_22A4DD5EC();
  *(v0 + 376) = v30;
  *(v0 + 384) = 14;
  v31 = *MEMORY[0x277CD0E70];
  *(v0 + 392) = sub_22A4DD5EC();
  *(v0 + 400) = v32;
  *(v0 + 408) = 15;
  v33 = *MEMORY[0x277CD0E90];
  *(v0 + 416) = sub_22A4DD5EC();
  *(v0 + 424) = v34;
  *(v0 + 432) = 16;
  v35 = *MEMORY[0x277CD0EA0];
  *(v0 + 440) = sub_22A4DD5EC();
  *(v0 + 448) = v36;
  *(v0 + 456) = 17;
  v37 = *MEMORY[0x277CD0E98];
  *(v0 + 464) = sub_22A4DD5EC();
  *(v0 + 472) = v38;
  *(v0 + 480) = 18;
  v39 = *MEMORY[0x277CD0EC0];
  *(v0 + 488) = sub_22A4DD5EC();
  *(v0 + 496) = v40;
  *(v0 + 504) = 19;
  v41 = *MEMORY[0x277CD0E30];
  *(v0 + 512) = sub_22A4DD5EC();
  *(v0 + 520) = v42;
  *(v0 + 528) = 20;
  v43 = *MEMORY[0x277CD0F58];
  *(v0 + 536) = sub_22A4DD5EC();
  *(v0 + 544) = v44;
  *(v0 + 552) = 21;
  v45 = *MEMORY[0x277CD0EC8];
  *(v0 + 560) = sub_22A4DD5EC();
  *(v0 + 568) = v46;
  *(v0 + 576) = 22;
  v47 = *MEMORY[0x277CD0ED0];
  *(v0 + 584) = sub_22A4DD5EC();
  *(v0 + 592) = v48;
  *(v0 + 600) = 23;
  v49 = *MEMORY[0x277CD0ED8];
  *(v0 + 608) = sub_22A4DD5EC();
  *(v0 + 616) = v50;
  *(v0 + 624) = 25;
  v51 = *MEMORY[0x277CD0EE0];
  *(v0 + 632) = sub_22A4DD5EC();
  *(v0 + 640) = v52;
  *(v0 + 648) = 28;
  v53 = *MEMORY[0x277CD0EE8];
  *(v0 + 656) = sub_22A4DD5EC();
  *(v0 + 664) = v54;
  *(v0 + 672) = 29;
  v55 = *MEMORY[0x277CD0EF0];
  *(v0 + 680) = sub_22A4DD5EC();
  *(v0 + 688) = v56;
  *(v0 + 696) = 40;
  v57 = *MEMORY[0x277CD0E80];
  *(v0 + 704) = sub_22A4DD5EC();
  *(v0 + 712) = v58;
  *(v0 + 720) = 30;
  v59 = *MEMORY[0x277CD0F08];
  *(v0 + 728) = sub_22A4DD5EC();
  *(v0 + 736) = v60;
  *(v0 + 744) = 31;
  v61 = *MEMORY[0x277CD0F28];
  *(v0 + 752) = sub_22A4DD5EC();
  *(v0 + 760) = v62;
  *(v0 + 768) = 33;
  v63 = *MEMORY[0x277CD0F30];
  *(v0 + 776) = sub_22A4DD5EC();
  *(v0 + 784) = v64;
  *(v0 + 792) = 34;
  v65 = *MEMORY[0x277CD0F38];
  *(v0 + 800) = sub_22A4DD5EC();
  *(v0 + 808) = v66;
  *(v0 + 816) = 35;
  v67 = *MEMORY[0x277CD0F60];
  *(v0 + 824) = sub_22A4DD5EC();
  *(v0 + 832) = v68;
  *(v0 + 840) = 36;
  v69 = *MEMORY[0x277CD0F20];
  *(v0 + 848) = sub_22A4DD5EC();
  *(v0 + 856) = v70;
  *(v0 + 864) = 32;
  v71 = *MEMORY[0x277CD0DA8];
  *(v0 + 872) = sub_22A4DD5EC();
  *(v0 + 880) = v72;
  *(v0 + 888) = 30;
  v73 = *MEMORY[0x277CD0DA0];
  *(v0 + 896) = sub_22A4DD5EC();
  *(v0 + 904) = v74;
  *(v0 + 912) = 30;
  v75 = *MEMORY[0x277CD0DC0];
  *(v0 + 920) = sub_22A4DD5EC();
  *(v0 + 928) = v76;
  *(v0 + 936) = 10;
  v77 = *MEMORY[0x277CD0DB0];
  *(v0 + 944) = sub_22A4DD5EC();
  *(v0 + 952) = v78;
  *(v0 + 960) = 26;
  v79 = *MEMORY[0x277CD0DB8];
  *(v0 + 968) = sub_22A4DD5EC();
  *(v0 + 976) = v80;
  *(v0 + 984) = 30;
  v81 = *MEMORY[0x277CD0E00];
  *(v0 + 992) = sub_22A4DD5EC();
  *(v0 + 1000) = v82;
  *(v0 + 1008) = 3;
  v83 = *MEMORY[0x277CD0DF0];
  *(v0 + 1016) = sub_22A4DD5EC();
  *(v0 + 1024) = v84;
  *(v0 + 1032) = 3;
  v85 = *MEMORY[0x277CD0E08];
  *(v0 + 1040) = sub_22A4DD5EC();
  *(v0 + 1048) = v86;
  *(v0 + 1056) = 3;
  v87 = *MEMORY[0x277CD0DF8];
  *(v0 + 1064) = sub_22A4DD5EC();
  *(v0 + 1072) = v88;
  *(v0 + 1080) = 3;
  v89 = sub_22956AEE4(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9B0, &qword_22A5795D8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27D8AB670 = v89;
  return result;
}

unint64_t sub_2295C6F5C()
{
  result = sub_22956B000(&unk_283CDA6A0);
  qword_27D8AB678 = result;
  return result;
}

uint64_t sub_2295C6F84(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2295C6134(*a1);
  v5 = v4;
  if (v3 == sub_2295C6134(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22A4DE60C();
  }

  return v8 & 1;
}

uint64_t sub_2295C700C()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_2295C6134(v1);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_2295C7070()
{
  sub_2295C6134(*v0);
  sub_22A4DD6BC();
}

uint64_t sub_2295C70C4()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_2295C6134(v1);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_2295C7124@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2295C7328();
  *a2 = result;
  return result;
}

uint64_t sub_2295C7154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2295C6134(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2295C72D4()
{
  result = qword_27D87D9B8;
  if (!qword_27D87D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D9B8);
  }

  return result;
}

uint64_t sub_2295C7328()
{
  v0 = sub_22A4DE62C();

  if (v0 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for HomeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2295C74CC(char a1)
{
  result = 0x6544737365636361;
  switch(a1)
  {
    case 1:
    case 16:
    case 22:
      return 0xD000000000000016;
    case 2:
    case 15:
    case 23:
    case 30:
      v3 = 5;
      goto LABEL_27;
    case 3:
      v3 = 11;
      goto LABEL_27;
    case 4:
    case 32:
    case 42:
    case 46:
      return 0xD00000000000001CLL;
    case 5:
      return 0x6F4C656369766564;
    case 6:
      return 0x4D6E696274737564;
    case 7:
      return 0x466E696274737564;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0x6574746142776F6CLL;
    case 10:
      return 0x694D646150706F6DLL;
    case 11:
    case 20:
      return 0xD000000000000014;
    case 12:
      return 0xD000000000000013;
    case 13:
      return 0xD000000000000010;
    case 14:
    case 24:
    case 25:
      return 0xD000000000000011;
    case 17:
    case 40:
    case 41:
    case 48:
      return 0xD000000000000017;
    case 18:
    case 19:
    case 29:
      return 0xD000000000000012;
    case 21:
      return 0xD000000000000010;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x6E61547265746177;
    case 28:
      return 0xD000000000000010;
    case 31:
    case 34:
    case 37:
      return 0xD00000000000002ELL;
    case 33:
      return 0xD000000000000018;
    case 35:
      return 0xD00000000000001FLL;
    case 36:
      return 0xD000000000000020;
    case 38:
      return 0xD000000000000025;
    case 39:
      return 0xD000000000000028;
    case 43:
      v3 = 9;
LABEL_27:
      result = v3 | 0xD000000000000010;
      break;
    case 44:
      result = 0x6C616E7265746E69;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2295C7954(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2295C74CC(*a1);
  v5 = v4;
  if (v3 == sub_2295C74CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22A4DE60C();
  }

  return v8 & 1;
}

uint64_t sub_2295C79DC()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_2295C74CC(v1);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_2295C7A40()
{
  sub_2295C74CC(*v0);
  sub_22A4DD6BC();
}

uint64_t sub_2295C7A94()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_2295C74CC(v1);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_2295C7AF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2295C7BB4();
  *a2 = result;
  return result;
}

unint64_t sub_2295C7B24@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2295C74CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2295C7B54()
{
  result = qword_27D87D9C0;
  if (!qword_27D87D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D9C0);
  }

  return result;
}

uint64_t sub_2295C7BB4()
{
  v0 = sub_22A4DE62C();

  if (v0 >= 0x31)
  {
    return 49;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2295C7C08()
{
  result = sub_22A4DD5AC();
  qword_2814050B8 = result;
  return result;
}

uint64_t sub_2295C7C40()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  sub_22953EAE4((v0 + 24), &qword_27D87EA00, &qword_22A579B80);
  v2 = v0[29];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2295C7D04()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = sub_22A4DD07C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v1[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = sub_22A4DCFCC();
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295C7E90, v0, 0);
}

uint64_t sub_2295C7E90()
{
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_22A4DCFFC();
  __swift_project_value_buffer(v2, qword_2814050D0);
  sub_22A4DCFBC();
  v3 = sub_22A4DCFEC();
  v4 = sub_22A4DDE0C();
  if (sub_22A4DDF5C())
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22A4DCFAC();
    _os_signpost_emit_with_name_impl(&dword_229538000, v3, v4, v7, "CascadeIndexer.indexAllHomes.signpost", "", v6, 2u);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];

  (*(v11 + 16))(v8, v9, v10);
  v12 = sub_22A4DD03C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[19] = sub_22A4DD02C();
  (*(v11 + 8))(v9, v10);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_2295C8074;
  v16 = v0[14];

  return sub_2295C8C2C(v16);
}

uint64_t sub_2295C8074()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_2295C8764;
  }

  else
  {
    v6 = sub_2295C81A0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2295C81A0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[7];
  v4 = *(v3 + 136);
  v5 = __swift_project_boxed_opaque_existential_0((v3 + 112), v4);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v4);
  v9 = *v8;
  v0[22] = *v8;
  v10 = *(v6 + 8);
  v11 = v9;
  v10(v8, v4);

  v0[5] = v2;
  v0[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2295D1ED0(v1, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v13 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_2295C8360;

  return sub_2295D18BC(v11, v13);
}

uint64_t sub_2295C8360()
{
  v1 = *v0;
  v2 = (*v0)[23];
  v3 = (*v0)[22];
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  v5 = swift_task_alloc();
  v1[24] = v5;
  *v5 = v4;
  v5[1] = sub_2295C84C0;
  v6 = v1[14];

  return sub_2295C9168();
}

uint64_t sub_2295C84C0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295C85D0, v2, 0);
}

uint64_t sub_2295C85D0()
{
  v1 = v0[12];
  sub_229541CB0(v0[8], &off_283CDDA20);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Finished marking the cascade donation as complete", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v8 + 8))(v6, v7);
  sub_2295D1E70(v5, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[17];
  v13 = v0[14];
  v15 = v0[11];
  v14 = v0[12];
  sub_2295C8950("CascadeIndexer.indexAllHomes.signpost", 37, 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_2295C8764()
{
  v1 = v0[21];
  v2 = v0[11];
  sub_229541CB0(v0[8], &off_283CDDA20);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Error occurred during cascade donation: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v12 = v0[18];
  v13 = v0[19];
  v14 = v0[17];
  v15 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  sub_2295C8950("CascadeIndexer.indexAllHomes.signpost", 37, 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2295C8950(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_22A4DD00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DCFCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v14 = sub_22A4DCFFC();
  __swift_project_value_buffer(v14, qword_2814050D0);
  v15 = sub_22A4DCFEC();
  sub_22A4DD01C();
  v20 = sub_22A4DDDFC();
  result = sub_22A4DDF5C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_22A4DD04C();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_22A4DCFAC();
      _os_signpost_emit_with_name_impl(&dword_229538000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x22AAD4E50](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2295C8C2C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9E8, &qword_22A579918);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295C8CF8, 0, 0);
}

uint64_t sub_2295C8CF8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  v10 = objc_opt_self();
  sub_229562F68(0, &qword_281401B98, 0x277CF9500);
  v7 = sub_22A4DD81C();
  v1[23] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_2295C8F08;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_229562F68(0, &qword_281401B18, 0x277CF94B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v4 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2295CA908;
  v1[13] = &block_descriptor_4;
  [v10 fullSetDonationWithItemType:7690 descriptors:v7 completion:?];
  (*(v4 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2295C8F08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_2295C90EC;
  }

  else
  {
    v3 = sub_2295C9018;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295C9018()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  *v3 = v2;
  v4 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
  v5 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  type metadata accessor for CascadeIndexer();
  sub_2295C9454();
  sub_22A4DD06C();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2295C90EC()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_2295C9168()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 24) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2295C91F8, 0, 0);
}

uint64_t sub_2295C91F8()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = **(v0 + 24);
  *(v0 + 16) = 0;
  v2 = [v1 finish_];
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v2)
  {
    v5 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
    v6 = v3;
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_229538000, v7, v8, "Successfully finished donating items to Cascade", v9, 2u);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    goto LABEL_6;
  }

  v10 = v3;
  v11 = sub_22A4DB3EC();

  swift_willThrow();
  v12 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
  v13 = v11;
  v7 = sub_22A4DD05C();
  v14 = sub_22A4DDCEC();

  if (os_log_type_enabled(v7, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_229538000, v7, v14, "Error occurred while trying to finish the cascade indexing session: %@", v15, 0xCu);
    sub_22953EAE4(v16, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

LABEL_6:
    goto LABEL_8;
  }

LABEL_8:
  v19 = *(v0 + 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t sub_2295C9454()
{
  swift_getMetatypeMetadata();
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C94C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8[-v3];
  if (v0[29])
  {

    sub_22A4DDA7C();
  }

  sub_2295C9C1C();
  v5 = v0[23];
  __swift_project_boxed_opaque_existential_0(v0 + 19, v0[22]);
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v9[3] = swift_getAssociatedTypeWitness();
  v9[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v9);

  sub_22A4DBAFC();

  sub_22953EAE4(v4, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_22953ED1C(v9, (v0 + 24));
  return swift_endAccess();
}

uint64_t sub_2295C96C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22953ED8C;

  return sub_2295C7D04();
}

uint64_t sub_2295C9750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_22A4DD07C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295C9810, 0, 0);
}

uint64_t sub_2295C9810()
{
  v1 = v0[9];
  sub_229541CB0(v0[6], &off_283CDDA20);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Full donation of the home graph requested", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2295C9994, Strong, 0);
  }

  else
  {
    v10 = v0[9];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2295C9994()
{
  v1 = v0[10];
  sub_2295C94C0();

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2295C9C1C()
{
  v1 = (v0 + 24);
  v2 = *v0;
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_2295B23D0(v1, &v13);
  if (!*(&v14 + 1))
  {
    return sub_22953EAE4(&v13, &qword_27D87EA00, &qword_22A579B80);
  }

  sub_229557188(&v13, v16);
  sub_229541CB0(v2, &off_283CDDA20);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_229538000, v8, v9, "Cancelling the debounce timer", v10, 2u);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  __swift_project_boxed_opaque_existential_0(v16, v16[3]);
  sub_22A4DBC8C();
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  swift_beginAccess();
  sub_22953ED1C(&v13, v1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_2295C9E64()
{
  v1 = *(v0 + 16);
  sub_2295C9C1C();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2295C9EFC;
  v3 = *(v0 + 16);

  return sub_2295C9FF0();
}

uint64_t sub_2295C9EFC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2295C9FF0()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295CA08C, v0, 0);
}

uint64_t sub_2295CA08C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_22A4DD9DC();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_22957F3C0(0, 0, v1, &unk_22A579840, v5);
  v0[4] = v6;
  v7 = *(v2 + 232);
  *(v2 + 232) = v6;

  v8 = *(MEMORY[0x277D857D0] + 4);
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_2295CA214;
  v10 = MEMORY[0x277D84A98];
  v11 = MEMORY[0x277D84AC0];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v0 + 6, v6, v12, v10, v11);
}

uint64_t sub_2295CA214()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2295CA324, v2, 0);
}

uint64_t sub_2295CA324()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + 232);
  *(v3 + 232) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_2295CA3BC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2295CA474, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2295CA474()
{
  v1 = v0[6];
  v2 = *(v1 + 136);
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[7] = *(v6 + 8);
  v7 = *(v4 + 8);

  v7(v6, v2);

  v8 = *(MEMORY[0x277D0EF80] + 4);
  v13 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_2295CA610;
  v10 = v0[6];
  v11 = MEMORY[0x277D84F78] + 8;

  return v13(&unk_22A579850, v10, v11);
}

uint64_t sub_2295CA610()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2295CA758, 0, 0);
}

uint64_t sub_2295CA758()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295CA7B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_2295CA39C(a1, v4, v5, v6);
}

uint64_t sub_2295CA86C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_2295C96C0();
}

void sub_2295CA908(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9E8, &qword_22A579918);
    sub_22A4DD8EC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9E8, &qword_22A579918);
    sub_22A4DD8FC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2295CA9B8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for RoomEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2295CAAB0, 0, 0);
}

uint64_t sub_2295CAAB0()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for RoomEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD768;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for RoomEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C3170();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for RoomEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_22A4DD05C();
          v40 = sub_22A4DDCEC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_229538000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v42, -1, -1);
            MEMORY[0x22AAD4E50](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for RoomEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2295D1ED0(v17, v18, type metadata accessor for RoomEntity);
        v21 = sub_22A4DD05C();
        v22 = sub_22A4DDCEC();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_22A4DBA6C();
          v31 = v30;
          sub_2295D1E70(v25, type metadata accessor for RoomEntity);
          v32 = sub_2295A3E30(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_229538000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x22AAD4E50](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x22AAD4E50](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_2295D1E70(v25, type metadata accessor for RoomEntity);
          v6 = v24;
        }

        sub_2295D1E70(v6, type metadata accessor for RoomEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_2295CAF38(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for ZoneEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2295CB030, 0, 0);
}

uint64_t sub_2295CB030()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for ZoneEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD7C8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for ZoneEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C4AE8();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for ZoneEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_22A4DD05C();
          v40 = sub_22A4DDCEC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_229538000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v42, -1, -1);
            MEMORY[0x22AAD4E50](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for ZoneEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2295D1ED0(v17, v18, type metadata accessor for ZoneEntity);
        v21 = sub_22A4DD05C();
        v22 = sub_22A4DDCEC();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_22A4DBA6C();
          v31 = v30;
          sub_2295D1E70(v25, type metadata accessor for ZoneEntity);
          v32 = sub_2295A3E30(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_229538000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x22AAD4E50](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x22AAD4E50](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_2295D1E70(v25, type metadata accessor for ZoneEntity);
          v6 = v24;
        }

        sub_2295D1E70(v6, type metadata accessor for ZoneEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}